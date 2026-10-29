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
#>     Threshold    -0.45183616554370665
#>     Node 2    2.009008389141435
#>     Node 3    1.947929916281279
#>     Node 4    1.361791884264676
#>     Node 5    -1.085965520906939
#>     Node 6    0.8922488921898557
#>     Node 7    2.4068868863361526
#>     Node 8    0.9470466524441137
#>     Node 9    3.0993170352309614
#>     Node 10    -0.44794336883906705
#>     Node 11    1.64032797681966
#>     Node 12    1.644163863959487
#>     Node 13    -0.45254152358439553
#>     Node 14    1.3107191498269446
#>     Node 15    -2.7695094401724654
#>     Node 16    -0.6067582485253838
#>     Node 17    1.5616117112582928
#>     Node 18    -0.371435525049947
#>     Node 19    1.34259594929984
#>     Node 20    2.131677800200931
#>     Node 21    -3.0287652780471026
#>     Node 22    1.6232027619204956
#>     Node 23    0.9263250618422013
#>     Node 24    -1.7468890762659608
#>     Node 25    4.037865638748666
#>     Node 26    0.07802149582231453
#>     Node 27    2.3478675256218025
#>     Node 28    -2.7595080542815427
#>     Node 29    1.1481076444266993
#>     Node 30    -1.7683291460776063
#>     Node 31    1.9629230088102692
#>     Node 32    0.7186523299976451
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.450020865078501
#>     Node 2    -2.0618054292311045
#>     Node 3    -1.9253421932718562
#>     Node 4    -1.3141424590591588
#>     Node 5    1.0932389722238425
#>     Node 6    -0.8557842362679722
#>     Node 7    -2.3983933899220746
#>     Node 8    -0.9715556220604501
#>     Node 9    -3.1071634123472234
#>     Node 10    0.3871535598379426
#>     Node 11    -1.6013924741770618
#>     Node 12    -1.7121808988410985
#>     Node 13    0.5113846270152783
#>     Node 14    -1.2456581512713467
#>     Node 15    2.73936390018135
#>     Node 16    0.5954870684679606
#>     Node 17    -1.5188769990929218
#>     Node 18    0.41764326288000286
#>     Node 19    -1.3394835264254235
#>     Node 20    -2.1267447250184097
#>     Node 21    3.0696791220849593
#>     Node 22    -1.6653626889473572
#>     Node 23    -0.9581049788050936
#>     Node 24    1.7160871040130001
#>     Node 25    -4.042987438057184
#>     Node 26    -0.14869176447305665
#>     Node 27    -2.396032258554582
#>     Node 28    2.70578004907114
#>     Node 29    -1.1739657025876538
#>     Node 30    1.8281647414364404
#>     Node 31    -1.8977460927267915
#>     Node 32    -0.7233960050746092
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.10495917294612543
#>     Attrib V1    -0.02367678609388462
#>     Attrib V10    0.11018203223913152
#>     Attrib V11    0.37156259128839497
#>     Attrib V12    0.5624460539628071
#>     Attrib V13    0.359947491713942
#>     Attrib V14    -0.35951594359446704
#>     Attrib V15    -0.623203190809945
#>     Attrib V16    -0.3111082718705262
#>     Attrib V17    -0.04445044960633095
#>     Attrib V18    0.31102349929618284
#>     Attrib V19    0.8917739367871538
#>     Attrib V2    0.03740870135517891
#>     Attrib V20    0.24550531709597645
#>     Attrib V21    0.08083036484122949
#>     Attrib V22    0.9014654164589322
#>     Attrib V23    0.861200395424737
#>     Attrib V24    0.4826904684582523
#>     Attrib V25    0.3090625211449025
#>     Attrib V26    0.3301203624371994
#>     Attrib V27    0.16480435604485885
#>     Attrib V28    0.8293534288305239
#>     Attrib V29    0.15558037031854632
#>     Attrib V3    -0.19712400062390398
#>     Attrib V30    0.3317114053747473
#>     Attrib V31    -1.0067037888882433
#>     Attrib V32    -0.29432237815699175
#>     Attrib V33    -0.20220992909556118
#>     Attrib V34    -0.10759013916791108
#>     Attrib V35    0.3311093004642279
#>     Attrib V36    -0.2616399618169109
#>     Attrib V37    -0.6464612372061794
#>     Attrib V38    0.45218456218866243
#>     Attrib V39    0.5067473661273395
#>     Attrib V4    0.24980046718116933
#>     Attrib V40    0.07855929131907412
#>     Attrib V41    0.5438291699481204
#>     Attrib V42    0.13139066569840352
#>     Attrib V43    0.9331539660380024
#>     Attrib V44    1.0043143053976935
#>     Attrib V45    0.36224704063856955
#>     Attrib V46    0.08570525619871962
#>     Attrib V47    0.3775620998400373
#>     Attrib V48    0.37370648129274386
#>     Attrib V49    0.5504135363895997
#>     Attrib V5    0.23941953591946208
#>     Attrib V50    -0.9613548396845232
#>     Attrib V51    0.5635734803617863
#>     Attrib V52    0.7020648448510597
#>     Attrib V53    0.3879741301736461
#>     Attrib V54    0.6278129907708455
#>     Attrib V55    -0.5986732525633035
#>     Attrib V56    0.7206042812335517
#>     Attrib V57    -0.6208238124985078
#>     Attrib V58    0.09397262809740832
#>     Attrib V59    -0.09562613934305775
#>     Attrib V6    -0.21052190720777542
#>     Attrib V60    0.35384834568856544
#>     Attrib V7    -0.8697354016616379
#>     Attrib V8    0.002598567756410059
#>     Attrib V9    0.7426605915643676
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.02329844381411173
#>     Attrib V1    0.36652450732016706
#>     Attrib V10    -0.255281536958817
#>     Attrib V11    -0.07986437804331327
#>     Attrib V12    -0.23582745977816869
#>     Attrib V13    -0.2969679356304204
#>     Attrib V14    -0.34564933806841214
#>     Attrib V15    0.004097313098760019
#>     Attrib V16    0.39272641532547475
#>     Attrib V17    0.1365457776306793
#>     Attrib V18    -0.12487968619703584
#>     Attrib V19    0.5302376167791083
#>     Attrib V2    0.24749589149107656
#>     Attrib V20    0.48405367879372224
#>     Attrib V21    0.35565195151076434
#>     Attrib V22    0.4792247339762925
#>     Attrib V23    0.06810817734070855
#>     Attrib V24    -0.131010835008895
#>     Attrib V25    -0.4126332732506965
#>     Attrib V26    -0.8762782033615546
#>     Attrib V27    -1.013272853253914
#>     Attrib V28    -0.25827572412928157
#>     Attrib V29    -0.4508482450550577
#>     Attrib V3    -0.11179718511241311
#>     Attrib V30    0.15519035908968448
#>     Attrib V31    -0.7946718318383565
#>     Attrib V32    0.09815139795963675
#>     Attrib V33    0.3356440174081655
#>     Attrib V34    -0.3239268777620948
#>     Attrib V35    -0.5472546366461984
#>     Attrib V36    -0.7488271393258036
#>     Attrib V37    -0.8506968437146963
#>     Attrib V38    0.18034570626876828
#>     Attrib V39    0.1790674212511015
#>     Attrib V4    0.4248911473802111
#>     Attrib V40    -0.2989062523249664
#>     Attrib V41    0.10558342200446223
#>     Attrib V42    0.3779325922302762
#>     Attrib V43    0.5531291759846343
#>     Attrib V44    0.6011434669714502
#>     Attrib V45    0.18537211261265119
#>     Attrib V46    -0.12068519312265735
#>     Attrib V47    -0.13671910259877676
#>     Attrib V48    -0.1461169067899889
#>     Attrib V49    0.05123116264523296
#>     Attrib V5    0.0995574079602226
#>     Attrib V50    -0.6158233529123135
#>     Attrib V51    0.060243659309918596
#>     Attrib V52    0.07839268048548349
#>     Attrib V53    0.04882816131393679
#>     Attrib V54    0.6745641211746672
#>     Attrib V55    -0.021769955179413474
#>     Attrib V56    0.6849964067544293
#>     Attrib V57    0.3395080473362142
#>     Attrib V58    0.46113467554223814
#>     Attrib V59    0.22989773848221298
#>     Attrib V6    -0.2923913552906364
#>     Attrib V60    0.25944843390528394
#>     Attrib V7    -0.1924029419185121
#>     Attrib V8    0.7120689878417397
#>     Attrib V9    0.46806177640623453
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.013434675564156022
#>     Attrib V1    0.2305851946400155
#>     Attrib V10    -0.19772736334544253
#>     Attrib V11    -0.00434997066371149
#>     Attrib V12    -0.13171761094819265
#>     Attrib V13    -0.21000772537807263
#>     Attrib V14    -0.258994636130565
#>     Attrib V15    -0.04081088854143521
#>     Attrib V16    0.2602142201113966
#>     Attrib V17    0.10213203928058498
#>     Attrib V18    -0.05531087479206436
#>     Attrib V19    0.40197083402869405
#>     Attrib V2    0.143045071879226
#>     Attrib V20    0.3452155136815835
#>     Attrib V21    0.3000138407779867
#>     Attrib V22    0.33519978088173946
#>     Attrib V23    0.08976887931105927
#>     Attrib V24    -0.09405510859529512
#>     Attrib V25    -0.36270560726437207
#>     Attrib V26    -0.643442895651974
#>     Attrib V27    -0.7751587745665252
#>     Attrib V28    -0.12235068331853649
#>     Attrib V29    -0.23346300842527762
#>     Attrib V3    -0.09875538459450793
#>     Attrib V30    0.11922013327376373
#>     Attrib V31    -0.6287033185639956
#>     Attrib V32    0.03743822026903276
#>     Attrib V33    0.22755855154430546
#>     Attrib V34    -0.22146396588617515
#>     Attrib V35    -0.3593993245137092
#>     Attrib V36    -0.5534994200036385
#>     Attrib V37    -0.6342018949175878
#>     Attrib V38    0.15030364256515782
#>     Attrib V39    0.16662071259998404
#>     Attrib V4    0.291359644516978
#>     Attrib V40    -0.22078393316387462
#>     Attrib V41    0.06694729720508526
#>     Attrib V42    0.2408264907915653
#>     Attrib V43    0.39170592049582587
#>     Attrib V44    0.4819062839151279
#>     Attrib V45    0.23993479366229953
#>     Attrib V46    -0.11999904644996028
#>     Attrib V47    -0.13472624239663653
#>     Attrib V48    -0.04215260773306188
#>     Attrib V49    0.09991880021042297
#>     Attrib V5    0.11434805842966193
#>     Attrib V50    -0.5553031151846736
#>     Attrib V51    0.127525581179091
#>     Attrib V52    0.12807197284639538
#>     Attrib V53    0.11785448313292322
#>     Attrib V54    0.4323921648431398
#>     Attrib V55    -0.046939237080478244
#>     Attrib V56    0.4929477826339078
#>     Attrib V57    0.2077215792113508
#>     Attrib V58    0.3029040444679799
#>     Attrib V59    0.1515326878436507
#>     Attrib V6    -0.22574698791366418
#>     Attrib V60    0.22226324060905908
#>     Attrib V7    -0.19233194795711175
#>     Attrib V8    0.47114597256050583
#>     Attrib V9    0.4491853595203979
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.20263428014033893
#>     Attrib V1    0.0343101694570512
#>     Attrib V10    0.03476296833856369
#>     Attrib V11    -0.23559355472567425
#>     Attrib V12    -0.35903937984232287
#>     Attrib V13    -0.1425914845874273
#>     Attrib V14    0.3483058456914943
#>     Attrib V15    0.4079627744942005
#>     Attrib V16    0.23602057731707432
#>     Attrib V17    0.45293925351225056
#>     Attrib V18    0.35029702775384086
#>     Attrib V19    -0.28904031382514633
#>     Attrib V2    0.04388009369894767
#>     Attrib V20    -0.15433192522760605
#>     Attrib V21    0.003303507290528483
#>     Attrib V22    -0.21478904279012376
#>     Attrib V23    -0.04340198037920287
#>     Attrib V24    -0.05605131323148159
#>     Attrib V25    0.14971067251954176
#>     Attrib V26    0.16347405100817186
#>     Attrib V27    0.1965793225194268
#>     Attrib V28    -0.2525096144700486
#>     Attrib V29    0.08813489926842638
#>     Attrib V3    0.31068958460386564
#>     Attrib V30    0.06290637143026477
#>     Attrib V31    0.6515033714893176
#>     Attrib V32    0.1414699908717099
#>     Attrib V33    0.08539401674886819
#>     Attrib V34    0.1181374230141703
#>     Attrib V35    0.16462987988657773
#>     Attrib V36    0.5148541078137397
#>     Attrib V37    0.5687218948175383
#>     Attrib V38    -0.15536031669055028
#>     Attrib V39    -0.24587503691436738
#>     Attrib V4    -0.08157828931377223
#>     Attrib V40    0.17646389773512638
#>     Attrib V41    -0.06886258572696195
#>     Attrib V42    0.19539637380737188
#>     Attrib V43    -0.2659748280774972
#>     Attrib V44    -0.2195063477172566
#>     Attrib V45    -0.11578702281097353
#>     Attrib V46    -0.0560246985157237
#>     Attrib V47    -0.09388898917539273
#>     Attrib V48    -0.15634599342648983
#>     Attrib V49    -0.21854521810131897
#>     Attrib V5    0.07796198698198605
#>     Attrib V50    0.6255666201643948
#>     Attrib V51    -0.13103726005404429
#>     Attrib V52    -0.4253690609956034
#>     Attrib V53    -0.058878307654390276
#>     Attrib V54    -0.2449784529043245
#>     Attrib V55    0.07735165575086586
#>     Attrib V56    -0.11338963618203385
#>     Attrib V57    0.037793785840335874
#>     Attrib V58    -0.31094404506905376
#>     Attrib V59    0.185465710199185
#>     Attrib V6    0.2928766497289393
#>     Attrib V60    0.0269565894763581
#>     Attrib V7    0.4792779753632184
#>     Attrib V8    -0.09098922369056359
#>     Attrib V9    -0.41270681854230834
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.020009228543145127
#>     Attrib V1    0.21358561812894766
#>     Attrib V10    -0.16208656179088257
#>     Attrib V11    -0.03165824118741144
#>     Attrib V12    -0.0799682090131869
#>     Attrib V13    -0.19451622543132616
#>     Attrib V14    -0.1664364202834694
#>     Attrib V15    -0.011697343336629296
#>     Attrib V16    0.26629427588901755
#>     Attrib V17    0.07845099122701281
#>     Attrib V18    0.01916971656922453
#>     Attrib V19    0.24010776871911
#>     Attrib V2    0.1290880236049266
#>     Attrib V20    0.24162424470244653
#>     Attrib V21    0.184483763301808
#>     Attrib V22    0.1447131730838881
#>     Attrib V23    0.029159038585099682
#>     Attrib V24    0.016367510113579363
#>     Attrib V25    -0.15055893825316655
#>     Attrib V26    -0.420078187270232
#>     Attrib V27    -0.49951850167566125
#>     Attrib V28    -0.23159484595256236
#>     Attrib V29    -0.2793897915072755
#>     Attrib V3    -0.02994429919524877
#>     Attrib V30    0.0028037832046102825
#>     Attrib V31    -0.4115160546988776
#>     Attrib V32    0.04798204459350902
#>     Attrib V33    0.15470808156897436
#>     Attrib V34    -0.16800721027845472
#>     Attrib V35    -0.2102199782757345
#>     Attrib V36    -0.3546302135943271
#>     Attrib V37    -0.3682219724566803
#>     Attrib V38    0.07703919332544762
#>     Attrib V39    0.049464399882074794
#>     Attrib V4    0.2519438906823372
#>     Attrib V40    -0.19796175374549715
#>     Attrib V41    0.0702637287699828
#>     Attrib V42    0.15706587156027793
#>     Attrib V43    0.20944019777777148
#>     Attrib V44    0.2317099188768002
#>     Attrib V45    0.0904721171227621
#>     Attrib V46    -0.056648023617403835
#>     Attrib V47    -0.1085561015927682
#>     Attrib V48    -0.13228806294880446
#>     Attrib V49    -0.024468767112235133
#>     Attrib V5    0.06537234189093442
#>     Attrib V50    -0.2931251694788722
#>     Attrib V51    0.07349846073213054
#>     Attrib V52    0.01071783175922811
#>     Attrib V53    0.12457203861773712
#>     Attrib V54    0.3120318188961976
#>     Attrib V55    0.03157558987582512
#>     Attrib V56    0.324163530382544
#>     Attrib V57    0.21825011919916829
#>     Attrib V58    0.22984887756328307
#>     Attrib V59    0.17114271384637506
#>     Attrib V6    -0.07302089526226511
#>     Attrib V60    0.16773550911997823
#>     Attrib V7    -0.06126689154795417
#>     Attrib V8    0.3935712464263506
#>     Attrib V9    0.3062396977903905
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.2145868020327723
#>     Attrib V1    0.30989500295666966
#>     Attrib V10    0.6923987609377111
#>     Attrib V11    1.050035712833654
#>     Attrib V12    0.89364102548168
#>     Attrib V13    0.6403324530494325
#>     Attrib V14    -0.1389728013202254
#>     Attrib V15    -0.2933438304263994
#>     Attrib V16    -0.3992170310926875
#>     Attrib V17    -0.8094256031919336
#>     Attrib V18    -0.7100072733247949
#>     Attrib V19    -0.226859593647612
#>     Attrib V2    0.34348592788659515
#>     Attrib V20    -0.40687161975817443
#>     Attrib V21    -0.22825475418018631
#>     Attrib V22    0.19595762247148274
#>     Attrib V23    0.31697485095788924
#>     Attrib V24    0.06791933193814685
#>     Attrib V25    0.03388752426026756
#>     Attrib V26    0.6224500078215568
#>     Attrib V27    0.7598393160025267
#>     Attrib V28    1.5894585485459387
#>     Attrib V29    1.079917674345943
#>     Attrib V3    -0.10512026881038958
#>     Attrib V30    0.4282636475679854
#>     Attrib V31    -0.33992973878140564
#>     Attrib V32    -0.05216604167081554
#>     Attrib V33    -0.3269743917187052
#>     Attrib V34    -0.08073850345588818
#>     Attrib V35    0.5031570181581146
#>     Attrib V36    -0.2830708632516228
#>     Attrib V37    0.017113439297635303
#>     Attrib V38    0.18373825363787974
#>     Attrib V39    0.38757388428085726
#>     Attrib V4    0.05560263913589347
#>     Attrib V40    0.10685512101058048
#>     Attrib V41    0.48661684543617056
#>     Attrib V42    -0.41650985910817245
#>     Attrib V43    -0.061336355984582126
#>     Attrib V44    0.1209477571549967
#>     Attrib V45    0.4297356314366754
#>     Attrib V46    0.6263897905652183
#>     Attrib V47    0.6712663266741906
#>     Attrib V48    0.40359651105772215
#>     Attrib V49    0.3306565661580215
#>     Attrib V5    0.29005944258760147
#>     Attrib V50    -0.8183695646893795
#>     Attrib V51    0.5265153198797499
#>     Attrib V52    1.032843205160171
#>     Attrib V53    0.1922128830012582
#>     Attrib V54    0.17254229744103622
#>     Attrib V55    0.2180384656207498
#>     Attrib V56    -0.3145192101312835
#>     Attrib V57    -0.43870823439391055
#>     Attrib V58    0.47586441224891124
#>     Attrib V59    -0.45549984681962996
#>     Attrib V6    0.056501160441648476
#>     Attrib V60    0.24872434508299707
#>     Attrib V7    -0.41200990368356033
#>     Attrib V8    0.03553159180373426
#>     Attrib V9    1.0367289525499308
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.18320754051803678
#>     Attrib V1    0.0978325345092393
#>     Attrib V10    -0.038312774081551884
#>     Attrib V11    0.19667467102350505
#>     Attrib V12    0.07266508998192861
#>     Attrib V13    -0.01101528159003497
#>     Attrib V14    -0.18834173962173845
#>     Attrib V15    -0.1314536740478801
#>     Attrib V16    0.07804501408492678
#>     Attrib V17    -0.14361079951939446
#>     Attrib V18    -0.15432786772518725
#>     Attrib V19    0.2194314259641002
#>     Attrib V2    0.09038385591962826
#>     Attrib V20    0.06222338634271986
#>     Attrib V21    0.037114600120475384
#>     Attrib V22    0.06972030493261071
#>     Attrib V23    -0.029890142240125383
#>     Attrib V24    -0.038095382198528885
#>     Attrib V25    -0.12579481780075863
#>     Attrib V26    -0.07326412045781758
#>     Attrib V27    -0.07456708370845785
#>     Attrib V28    0.345683835635561
#>     Attrib V29    0.17829192272657474
#>     Attrib V3    -0.17510943543702234
#>     Attrib V30    0.24023192174147776
#>     Attrib V31    -0.40031824015884865
#>     Attrib V32    -0.10980592409719485
#>     Attrib V33    -0.010717347583565745
#>     Attrib V34    -0.0930693148953386
#>     Attrib V35    0.0403115670215153
#>     Attrib V36    -0.12279293995130831
#>     Attrib V37    -0.2539470916135666
#>     Attrib V38    0.24827839897697532
#>     Attrib V39    0.1842390389974445
#>     Attrib V4    0.19977179769817374
#>     Attrib V40    -0.1348989636456997
#>     Attrib V41    0.01737895211546996
#>     Attrib V42    -0.10802313993647573
#>     Attrib V43    0.3364895573046436
#>     Attrib V44    0.5491596571479018
#>     Attrib V45    0.3414153034570368
#>     Attrib V46    0.09422844067202372
#>     Attrib V47    0.0827530393005024
#>     Attrib V48    0.17604313770474492
#>     Attrib V49    0.1816772403128258
#>     Attrib V5    0.017403463539667333
#>     Attrib V50    -0.4966350577808797
#>     Attrib V51    0.049409290715699626
#>     Attrib V52    0.3358751446046924
#>     Attrib V53    0.25975157760728407
#>     Attrib V54    0.3604208666602775
#>     Attrib V55    0.06363607907419122
#>     Attrib V56    0.12063187926166172
#>     Attrib V57    0.09412070869703304
#>     Attrib V58    0.23082282919664543
#>     Attrib V59    0.16967080971352624
#>     Attrib V6    -0.2086877818327755
#>     Attrib V60    0.20523355241999658
#>     Attrib V7    -0.27776468851886293
#>     Attrib V8    0.25804427794588586
#>     Attrib V9    0.3420303797773042
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.06831820763452913
#>     Attrib V1    0.04669498148442191
#>     Attrib V10    1.1875672043004069
#>     Attrib V11    1.4246664913173717
#>     Attrib V12    1.4432489025864674
#>     Attrib V13    0.9225267003833929
#>     Attrib V14    -0.5635212052235825
#>     Attrib V15    -0.7937708358944516
#>     Attrib V16    -0.6757288745849269
#>     Attrib V17    -0.7909864961040723
#>     Attrib V18    -0.4529307730946257
#>     Attrib V19    -0.0681787555369657
#>     Attrib V2    0.1528432542541084
#>     Attrib V20    -0.6473337411360336
#>     Attrib V21    -0.40738136057337665
#>     Attrib V22    0.5263321139244265
#>     Attrib V23    0.8088916443545072
#>     Attrib V24    0.5829969207314604
#>     Attrib V25    0.7039828028754271
#>     Attrib V26    1.0863676152751283
#>     Attrib V27    0.7427230677139499
#>     Attrib V28    1.2733763209072915
#>     Attrib V29    0.049145192055245944
#>     Attrib V3    -0.3915721546874886
#>     Attrib V30    -0.04138612344550401
#>     Attrib V31    -0.44564336452199416
#>     Attrib V32    0.2216380722879916
#>     Attrib V33    -0.13396004729201194
#>     Attrib V34    0.2899101560404178
#>     Attrib V35    0.9071426972843006
#>     Attrib V36    -0.3132029888534215
#>     Attrib V37    -0.5450906157652056
#>     Attrib V38    -0.2180855561662422
#>     Attrib V39    0.38243384886004217
#>     Attrib V4    -0.11569823832008985
#>     Attrib V40    0.23198023786620994
#>     Attrib V41    0.6364053911341842
#>     Attrib V42    -0.6985128990838022
#>     Attrib V43    -0.08824155861757306
#>     Attrib V44    0.03326680164794703
#>     Attrib V45    0.40627497141893193
#>     Attrib V46    0.6401857059612666
#>     Attrib V47    0.9763766083954813
#>     Attrib V48    0.8486243407776385
#>     Attrib V49    0.7290979749161791
#>     Attrib V5    0.16477374415941182
#>     Attrib V50    -1.0000098113939513
#>     Attrib V51    0.9005700826795526
#>     Attrib V52    1.2163053840510405
#>     Attrib V53    0.13366920327005088
#>     Attrib V54    0.03471156090736696
#>     Attrib V55    0.11787267066197717
#>     Attrib V56    -0.2932679566563032
#>     Attrib V57    -0.8586887920580311
#>     Attrib V58    0.4762901999423705
#>     Attrib V59    -0.9975292899395428
#>     Attrib V6    0.0767784171841278
#>     Attrib V60    0.18038755562831243
#>     Attrib V7    -0.4195157157142618
#>     Attrib V8    0.046968172464023634
#>     Attrib V9    1.5082309270457843
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.1837702661464082
#>     Attrib V1    0.08393934231163613
#>     Attrib V10    0.03430915931916038
#>     Attrib V11    -0.08038728616961516
#>     Attrib V12    -0.02747575828420427
#>     Attrib V13    0.023495250535129655
#>     Attrib V14    0.15905507610199685
#>     Attrib V15    0.07628771560582844
#>     Attrib V16    0.06612973362088445
#>     Attrib V17    0.0541862852794803
#>     Attrib V18    0.1199144847580925
#>     Attrib V19    -0.07665358555374925
#>     Attrib V2    0.05805417069897266
#>     Attrib V20    -0.05862560215623842
#>     Attrib V21    -0.014656340308206615
#>     Attrib V22    -0.05328300940147105
#>     Attrib V23    0.019625955615716957
#>     Attrib V24    -0.07644354694346166
#>     Attrib V25    -0.08261023629600502
#>     Attrib V26    -0.03699075739920447
#>     Attrib V27    -0.030696498231803163
#>     Attrib V28    -0.15483456037204493
#>     Attrib V29    -0.0806108374540386
#>     Attrib V3    0.14780416569715518
#>     Attrib V30    -0.001610043778875075
#>     Attrib V31    0.2312221919857943
#>     Attrib V32    0.07295488185790924
#>     Attrib V33    0.16197407433166397
#>     Attrib V34    0.19334342604920712
#>     Attrib V35    0.1756242738008817
#>     Attrib V36    0.22233064269647207
#>     Attrib V37    0.24319217716120103
#>     Attrib V38    0.07010923322066677
#>     Attrib V39    0.011137552207906356
#>     Attrib V4    0.03728107647396348
#>     Attrib V40    0.22981026536124483
#>     Attrib V41    0.209734292010388
#>     Attrib V42    0.12865581047631122
#>     Attrib V43    -0.035460529642317516
#>     Attrib V44    -0.0499237145260033
#>     Attrib V45    0.01751722273259594
#>     Attrib V46    0.03639946926899107
#>     Attrib V47    0.025212103731009263
#>     Attrib V48    -0.045230435686736736
#>     Attrib V49    -0.030997357114232498
#>     Attrib V5    0.09973499493195698
#>     Attrib V50    0.2632858682238825
#>     Attrib V51    0.019576923755113333
#>     Attrib V52    -0.06003331013343749
#>     Attrib V53    0.06069947243275503
#>     Attrib V54    -0.06199921944383961
#>     Attrib V55    0.008985978497525016
#>     Attrib V56    -0.04227800065343342
#>     Attrib V57    0.05762834908398727
#>     Attrib V58    -0.047021933658925034
#>     Attrib V59    0.015746678530429572
#>     Attrib V6    0.23748811801579525
#>     Attrib V60    -0.010189698893239228
#>     Attrib V7    0.1840720935861098
#>     Attrib V8    -1.132316518815703E-4
#>     Attrib V9    -0.10241715881831574
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.2385041749400412
#>     Attrib V1    0.05278396160283145
#>     Attrib V10    0.14936912090706844
#>     Attrib V11    0.3988445611926541
#>     Attrib V12    0.3419289608113126
#>     Attrib V13    0.13990458127267366
#>     Attrib V14    -0.3686784047304575
#>     Attrib V15    -0.38962180389035855
#>     Attrib V16    -0.08924241675259217
#>     Attrib V17    -0.09327502752684357
#>     Attrib V18    0.05542257230677544
#>     Attrib V19    0.5679038594380906
#>     Attrib V2    -0.0036496199880663603
#>     Attrib V20    0.2864308464877563
#>     Attrib V21    0.15667916406198806
#>     Attrib V22    0.6214978324085474
#>     Attrib V23    0.5220078584536785
#>     Attrib V24    0.23586546656243118
#>     Attrib V25    0.16934707857849438
#>     Attrib V26    0.20689203779521598
#>     Attrib V27    0.0622880083388836
#>     Attrib V28    0.7028373836126941
#>     Attrib V29    0.1447025252914213
#>     Attrib V3    -0.38634478661525323
#>     Attrib V30    0.35067962174400474
#>     Attrib V31    -0.8349925887424577
#>     Attrib V32    -0.2787034490908923
#>     Attrib V33    -0.13361062202997467
#>     Attrib V34    -0.09757730535703489
#>     Attrib V35    0.3631475991096214
#>     Attrib V36    -0.06307424880122772
#>     Attrib V37    -0.32199331696966355
#>     Attrib V38    0.4838740259671147
#>     Attrib V39    0.39024632705915735
#>     Attrib V4    0.11840636870563541
#>     Attrib V40    -0.08887267246120376
#>     Attrib V41    0.19298815034342798
#>     Attrib V42    -0.05005260846667503
#>     Attrib V43    0.6834593559064189
#>     Attrib V44    0.9333442703088743
#>     Attrib V45    0.5141004646523408
#>     Attrib V46    0.11300365626376989
#>     Attrib V47    0.27125092484708924
#>     Attrib V48    0.2635476397679143
#>     Attrib V49    0.37185816460831395
#>     Attrib V5    0.048582348382047634
#>     Attrib V50    -0.8218963834161582
#>     Attrib V51    0.38029987198028214
#>     Attrib V52    0.4974779162284567
#>     Attrib V53    0.2534820576885852
#>     Attrib V54    0.6534142137025473
#>     Attrib V55    -0.2724980388192666
#>     Attrib V56    0.3621495198864064
#>     Attrib V57    -0.4039954379295394
#>     Attrib V58    0.2406416547548065
#>     Attrib V59    -0.1307455458078863
#>     Attrib V6    -0.2657728624927891
#>     Attrib V60    0.2715257073613263
#>     Attrib V7    -0.615235059467269
#>     Attrib V8    0.2669011306302917
#>     Attrib V9    0.7563866358619005
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.16293074924757997
#>     Attrib V1    0.24283169880968908
#>     Attrib V10    -0.2881117516056033
#>     Attrib V11    0.06413511623103803
#>     Attrib V12    -0.15756072265582172
#>     Attrib V13    -0.25060113818073626
#>     Attrib V14    -0.30949945672671964
#>     Attrib V15    -0.1433030842651955
#>     Attrib V16    0.3154471894318996
#>     Attrib V17    0.0954287617429964
#>     Attrib V18    -0.03515365244847743
#>     Attrib V19    0.5633686693520144
#>     Attrib V2    0.21717578167092724
#>     Attrib V20    0.3722255553192313
#>     Attrib V21    0.27493686538407996
#>     Attrib V22    0.4615120668347595
#>     Attrib V23    0.10209710709629892
#>     Attrib V24    -0.17578321498865612
#>     Attrib V25    -0.4572254037050899
#>     Attrib V26    -0.6988345971650516
#>     Attrib V27    -0.689472069722925
#>     Attrib V28    -0.01004966572552279
#>     Attrib V29    -0.12807872059733083
#>     Attrib V3    -0.2326479494671669
#>     Attrib V30    0.21562610819871555
#>     Attrib V31    -0.856906665676388
#>     Attrib V32    -0.06736175127723953
#>     Attrib V33    0.22497295850639787
#>     Attrib V34    -0.26502091560039803
#>     Attrib V35    -0.4212124754839081
#>     Attrib V36    -0.6488276868032937
#>     Attrib V37    -0.786648093941126
#>     Attrib V38    0.2850151613722896
#>     Attrib V39    0.203736414365185
#>     Attrib V4    0.3872043704728852
#>     Attrib V40    -0.22486300287785596
#>     Attrib V41    0.10856744658829295
#>     Attrib V42    0.21429678825560908
#>     Attrib V43    0.5976434688069087
#>     Attrib V44    0.5954295757647462
#>     Attrib V45    0.2999345740193215
#>     Attrib V46    -0.053311224453323855
#>     Attrib V47    -0.13605381042681866
#>     Attrib V48    -0.011355862857578215
#>     Attrib V49    0.0921051515251595
#>     Attrib V5    0.0913167203119053
#>     Attrib V50    -0.7831863422018276
#>     Attrib V51    0.08189590462502931
#>     Attrib V52    0.27379443398730324
#>     Attrib V53    0.1902196220922678
#>     Attrib V54    0.5764177166203963
#>     Attrib V55    -0.11204855584016565
#>     Attrib V56    0.5876498332131845
#>     Attrib V57    0.1935863947245455
#>     Attrib V58    0.396316940111934
#>     Attrib V59    0.2289151697566663
#>     Attrib V6    -0.2742204132237957
#>     Attrib V60    0.2980102108301991
#>     Attrib V7    -0.29381579333117014
#>     Attrib V8    0.6163176631287796
#>     Attrib V9    0.5348722074971258
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.21507913887567176
#>     Attrib V1    0.037474885766998686
#>     Attrib V10    0.015231696484767241
#>     Attrib V11    -0.11948090369291026
#>     Attrib V12    -0.12618801313132388
#>     Attrib V13    0.018063347002662166
#>     Attrib V14    0.1425391337918494
#>     Attrib V15    0.11877405271456888
#>     Attrib V16    0.04095913857807464
#>     Attrib V17    0.13339372089021861
#>     Attrib V18    0.09462579091756562
#>     Attrib V19    -0.15143829715057402
#>     Attrib V2    0.03422422161753841
#>     Attrib V20    -0.04821533216164144
#>     Attrib V21    -0.018610405323171594
#>     Attrib V22    -0.10630299645417994
#>     Attrib V23    0.027046920700828925
#>     Attrib V24    -0.006827395255966465
#>     Attrib V25    0.012478836101207973
#>     Attrib V26    -0.050475213869015
#>     Attrib V27    0.03554946481001926
#>     Attrib V28    -0.18331653726413746
#>     Attrib V29    -0.035794630397955995
#>     Attrib V3    0.24013989875290703
#>     Attrib V30    -0.022847434752940553
#>     Attrib V31    0.21713160912628796
#>     Attrib V32    0.15113187240056963
#>     Attrib V33    0.13884029893437916
#>     Attrib V34    0.21358017241227298
#>     Attrib V35    0.15643098247625808
#>     Attrib V36    0.2450620731261491
#>     Attrib V37    0.3135474835925378
#>     Attrib V38    0.033949514472647505
#>     Attrib V39    0.05078270961641784
#>     Attrib V4    0.05874424765651887
#>     Attrib V40    0.22421033520939906
#>     Attrib V41    0.17364395193600138
#>     Attrib V42    0.18763066379716498
#>     Attrib V43    -0.07248006200926413
#>     Attrib V44    -0.0745009260157004
#>     Attrib V45    -0.04014728199651691
#>     Attrib V46    0.08804710464494635
#>     Attrib V47    0.0451532032171322
#>     Attrib V48    -0.0814765003905769
#>     Attrib V49    -0.025010070494824455
#>     Attrib V5    0.13495709214643598
#>     Attrib V50    0.22411280376935114
#>     Attrib V51    -0.008169633456256193
#>     Attrib V52    -0.12393206163898511
#>     Attrib V53    0.008819230242318555
#>     Attrib V54    -0.12564000018485247
#>     Attrib V55    0.0036795547003024374
#>     Attrib V56    -0.028031865180701443
#>     Attrib V57    0.09753811381333671
#>     Attrib V58    -0.052422369874219825
#>     Attrib V59    0.08327008189951648
#>     Attrib V6    0.23134555513792848
#>     Attrib V60    0.04719181786246224
#>     Attrib V7    0.2540926687137129
#>     Attrib V8    -0.03727340649384645
#>     Attrib V9    -0.10175529385943818
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.3381990451710483
#>     Attrib V1    0.06813005846344951
#>     Attrib V10    0.09509697051903145
#>     Attrib V11    0.4439772890465568
#>     Attrib V12    0.3403009090284287
#>     Attrib V13    0.03076465564171803
#>     Attrib V14    -0.39262119748501295
#>     Attrib V15    -0.2488358375847245
#>     Attrib V16    -0.07999293667670981
#>     Attrib V17    -0.2818577983619896
#>     Attrib V18    -0.26021104881105905
#>     Attrib V19    0.1532080988901377
#>     Attrib V2    0.03273482341682548
#>     Attrib V20    -0.12018463424865641
#>     Attrib V21    -0.14593757749784717
#>     Attrib V22    0.12345842892399425
#>     Attrib V23    0.04349945528640818
#>     Attrib V24    -0.11233197894201515
#>     Attrib V25    -0.17616139538625866
#>     Attrib V26    -0.09720064327322633
#>     Attrib V27    -0.09909337695495982
#>     Attrib V28    0.4810819756661223
#>     Attrib V29    0.09632420238339373
#>     Attrib V3    -0.40913704582131893
#>     Attrib V30    0.2750227262067031
#>     Attrib V31    -0.4920721105613018
#>     Attrib V32    0.016110742866324208
#>     Attrib V33    0.05094310049559817
#>     Attrib V34    -0.07049837025572266
#>     Attrib V35    0.06797188481855584
#>     Attrib V36    -0.45395523508550556
#>     Attrib V37    -0.5644506439824335
#>     Attrib V38    0.0371475363471723
#>     Attrib V39    0.17837373772770235
#>     Attrib V4    0.05813592761179397
#>     Attrib V40    -0.1665923234851148
#>     Attrib V41    0.08546021893342279
#>     Attrib V42    -0.22038350211489152
#>     Attrib V43    0.29817544772704735
#>     Attrib V44    0.4796077796992449
#>     Attrib V45    0.22301425769701078
#>     Attrib V46    0.06919114497486514
#>     Attrib V47    0.12226326897577194
#>     Attrib V48    0.32355732878913934
#>     Attrib V49    0.28842785782171493
#>     Attrib V5    -0.021847446772100293
#>     Attrib V50    -0.8264951533269256
#>     Attrib V51    0.14303356072957607
#>     Attrib V52    0.6133425534071321
#>     Attrib V53    0.08939205640234227
#>     Attrib V54    0.28890836601142605
#>     Attrib V55    0.023249478804255586
#>     Attrib V56    0.1432740768055791
#>     Attrib V57    -0.0834211347953059
#>     Attrib V58    0.4648542412732405
#>     Attrib V59    -0.14547125496256608
#>     Attrib V6    -0.1897209522302925
#>     Attrib V60    0.16982137633621516
#>     Attrib V7    -0.4166534618168218
#>     Attrib V8    0.2980192248717199
#>     Attrib V9    0.6256515560923004
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.08842721539328938
#>     Attrib V1    -0.11219018045543071
#>     Attrib V10    0.1220213500523588
#>     Attrib V11    -0.3400133319670151
#>     Attrib V12    -0.569181324990433
#>     Attrib V13    -0.09850966409479678
#>     Attrib V14    0.7138710058974042
#>     Attrib V15    0.6201113539649401
#>     Attrib V16    -0.03074151637914126
#>     Attrib V17    -0.005314244305620725
#>     Attrib V18    0.04509060335571176
#>     Attrib V19    -0.7623508031970375
#>     Attrib V2    -0.14841441251351442
#>     Attrib V20    0.042434302381645625
#>     Attrib V21    0.29824234018544565
#>     Attrib V22    -0.4876566247288607
#>     Attrib V23    -0.357063742383805
#>     Attrib V24    -0.17252949741615242
#>     Attrib V25    0.13429281350163444
#>     Attrib V26    0.6377327682303785
#>     Attrib V27    0.755418619365188
#>     Attrib V28    -0.09283854113463084
#>     Attrib V29    0.618068224841009
#>     Attrib V3    0.3186655413660574
#>     Attrib V30    -0.05313366896229537
#>     Attrib V31    0.9057280537059897
#>     Attrib V32    -0.5004419378649562
#>     Attrib V33    -0.48612259153723875
#>     Attrib V34    0.2260061493377604
#>     Attrib V35    0.8665550446669837
#>     Attrib V36    1.7921804699028627
#>     Attrib V37    2.272998051649075
#>     Attrib V38    0.41064819679500625
#>     Attrib V39    -0.1235014478856895
#>     Attrib V4    -0.44948931206718207
#>     Attrib V40    0.06947709206244494
#>     Attrib V41    -0.8155772115080173
#>     Attrib V42    -0.5830805055903185
#>     Attrib V43    -0.6355746925889721
#>     Attrib V44    -0.11404855154147452
#>     Attrib V45    0.33186648064433844
#>     Attrib V46    0.33263180034524026
#>     Attrib V47    -0.1582832631181213
#>     Attrib V48    -0.40438995616595863
#>     Attrib V49    -0.4434857107049129
#>     Attrib V5    -0.3343003545976575
#>     Attrib V50    1.3830978577200361
#>     Attrib V51    -0.5870746841723883
#>     Attrib V52    -0.7785807058241859
#>     Attrib V53    -0.046207615071219066
#>     Attrib V54    -0.3202754721372173
#>     Attrib V55    0.562433612330459
#>     Attrib V56    -0.99264217141935
#>     Attrib V57    -0.06926448379608682
#>     Attrib V58    -0.5485823126912084
#>     Attrib V59    0.33073773987795446
#>     Attrib V6    0.020142452677096037
#>     Attrib V60    -0.27795673872021787
#>     Attrib V7    0.5472311526148916
#>     Attrib V8    -0.4368546110220626
#>     Attrib V9    -0.8371920100266873
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.19725092232062236
#>     Attrib V1    0.032642156698147386
#>     Attrib V10    0.051917096790369946
#>     Attrib V11    -0.17307039361454296
#>     Attrib V12    -0.18863738085611023
#>     Attrib V13    -0.04800564145580812
#>     Attrib V14    0.1190478843017969
#>     Attrib V15    0.14891530889014898
#>     Attrib V16    0.1497795738153178
#>     Attrib V17    0.2156623769542741
#>     Attrib V18    0.182455746961261
#>     Attrib V19    -0.1608079655866115
#>     Attrib V2    -0.005462908441469726
#>     Attrib V20    -0.12976417420057565
#>     Attrib V21    -0.062297704470085924
#>     Attrib V22    -0.09844252177063502
#>     Attrib V23    -0.02222992062888855
#>     Attrib V24    0.02273751544143062
#>     Attrib V25    0.025042041582964587
#>     Attrib V26    -0.008316069003568193
#>     Attrib V27    -0.008577060330219549
#>     Attrib V28    -0.18119590228023197
#>     Attrib V29    -0.05517338917344978
#>     Attrib V3    0.23110278415412078
#>     Attrib V30    -0.08276245126446578
#>     Attrib V31    0.3036077628097404
#>     Attrib V32    0.19748691080626934
#>     Attrib V33    0.14916876217044067
#>     Attrib V34    0.21569457943836493
#>     Attrib V35    0.18594621865333286
#>     Attrib V36    0.33251607678764206
#>     Attrib V37    0.43453593174343474
#>     Attrib V38    0.030496429845880312
#>     Attrib V39    -0.025794838389469523
#>     Attrib V4    0.044784835267166624
#>     Attrib V40    0.20044457908821078
#>     Attrib V41    0.21322640389136993
#>     Attrib V42    0.2549144726590229
#>     Attrib V43    -0.08030699564693977
#>     Attrib V44    -0.14285437540648113
#>     Attrib V45    -0.020409118156060835
#>     Attrib V46    0.08941580767536192
#>     Attrib V47    0.0051794280258703786
#>     Attrib V48    -0.11214154120251348
#>     Attrib V49    -0.11436509346179886
#>     Attrib V5    0.1282799642808218
#>     Attrib V50    0.34949818515671316
#>     Attrib V51    0.055361735652449416
#>     Attrib V52    -0.11323490315932816
#>     Attrib V53    0.053500190689784954
#>     Attrib V54    -0.16471416424940186
#>     Attrib V55    0.012813602311205138
#>     Attrib V56    -0.04091936858190102
#>     Attrib V57    0.11696634675844607
#>     Attrib V58    -0.006844753788866718
#>     Attrib V59    0.033769744037801926
#>     Attrib V6    0.24267666942023133
#>     Attrib V60    0.007666751162870181
#>     Attrib V7    0.22728730327501928
#>     Attrib V8    -0.07018772557876139
#>     Attrib V9    -0.10973431770753664
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.03473892154107097
#>     Attrib V1    0.33464107390363684
#>     Attrib V10    -0.20548312169741076
#>     Attrib V11    -0.03950192685584529
#>     Attrib V12    -0.2553879424987474
#>     Attrib V13    -0.31795159402625456
#>     Attrib V14    -0.3054509906673978
#>     Attrib V15    0.03866079833026763
#>     Attrib V16    0.3666798631773918
#>     Attrib V17    0.14878574511679696
#>     Attrib V18    -0.05456920917522807
#>     Attrib V19    0.4195866184432891
#>     Attrib V2    0.2469479341956724
#>     Attrib V20    0.3758116605707145
#>     Attrib V21    0.2880872925381065
#>     Attrib V22    0.3707278091910549
#>     Attrib V23    0.021392161713391433
#>     Attrib V24    -0.04915567789142431
#>     Attrib V25    -0.3631747198858567
#>     Attrib V26    -0.7247483683333551
#>     Attrib V27    -0.8436274632800637
#>     Attrib V28    -0.28925233523819904
#>     Attrib V29    -0.3952611578335609
#>     Attrib V3    -0.10245324276483647
#>     Attrib V30    0.09225300120835346
#>     Attrib V31    -0.6203994716827352
#>     Attrib V32    0.012493979739915331
#>     Attrib V33    0.29305517054956803
#>     Attrib V34    -0.2800582429375592
#>     Attrib V35    -0.3884819670259792
#>     Attrib V36    -0.5757569160472
#>     Attrib V37    -0.6487788079734312
#>     Attrib V38    0.220232720233044
#>     Attrib V39    0.13998920877547064
#>     Attrib V4    0.3633249322220036
#>     Attrib V40    -0.32226740344798244
#>     Attrib V41    0.06791964857154961
#>     Attrib V42    0.25296493890017097
#>     Attrib V43    0.4659280533469603
#>     Attrib V44    0.4913601237920252
#>     Attrib V45    0.2042681412281454
#>     Attrib V46    -0.11451446136452212
#>     Attrib V47    -0.19649684059801514
#>     Attrib V48    -0.08827690601558741
#>     Attrib V49    0.003303131305317412
#>     Attrib V5    0.08411986717215833
#>     Attrib V50    -0.4831489017085685
#>     Attrib V51    0.09287323784443541
#>     Attrib V52    -0.006389457523675336
#>     Attrib V53    0.06164554333404833
#>     Attrib V54    0.530011704854537
#>     Attrib V55    0.05314775370797078
#>     Attrib V56    0.5469917004221994
#>     Attrib V57    0.3327841395616943
#>     Attrib V58    0.2989454718638421
#>     Attrib V59    0.15510655617882313
#>     Attrib V6    -0.19042589330794793
#>     Attrib V60    0.22142173122024994
#>     Attrib V7    -0.15098791164777497
#>     Attrib V8    0.590447897112271
#>     Attrib V9    0.40306249451507337
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.2198416445486397
#>     Attrib V1    0.03780770606064642
#>     Attrib V10    0.039795515694486826
#>     Attrib V11    -0.11819092433763599
#>     Attrib V12    -0.14224214248374809
#>     Attrib V13    -0.050467702586962156
#>     Attrib V14    0.1292186953427371
#>     Attrib V15    0.10160431542086905
#>     Attrib V16    0.07097504534269515
#>     Attrib V17    0.07596773399849062
#>     Attrib V18    0.130671298827374
#>     Attrib V19    -0.16068331072308625
#>     Attrib V2    0.06261819688902051
#>     Attrib V20    -0.05856370266530617
#>     Attrib V21    -0.007603220779179283
#>     Attrib V22    -0.07874677271012442
#>     Attrib V23    -0.016628476755554303
#>     Attrib V24    -0.04491968385939074
#>     Attrib V25    0.008027949161552021
#>     Attrib V26    0.022866248091650953
#>     Attrib V27    0.02186226720320801
#>     Attrib V28    -0.14830142328199275
#>     Attrib V29    -0.056214514223855046
#>     Attrib V3    0.2321147400422469
#>     Attrib V30    -0.0845724071632753
#>     Attrib V31    0.2024918502307993
#>     Attrib V32    0.10019562579172393
#>     Attrib V33    0.09586349545709806
#>     Attrib V34    0.1559933190117123
#>     Attrib V35    0.12317296905328316
#>     Attrib V36    0.3014827073040846
#>     Attrib V37    0.26512627921799453
#>     Attrib V38    0.007800858808221339
#>     Attrib V39    0.02430650303180233
#>     Attrib V4    0.02158462028226914
#>     Attrib V40    0.1484523330445523
#>     Attrib V41    0.09728834030330848
#>     Attrib V42    0.13933540003558154
#>     Attrib V43    -0.05423729279301172
#>     Attrib V44    -0.044620749129452866
#>     Attrib V45    -0.05746732058939951
#>     Attrib V46    0.034512637132412115
#>     Attrib V47    0.05573257824083847
#>     Attrib V48    -0.04355435089300618
#>     Attrib V49    -0.01383649776792615
#>     Attrib V5    0.11143108096588009
#>     Attrib V50    0.19181335572351615
#>     Attrib V51    0.0672011015910343
#>     Attrib V52    -0.0850573519290535
#>     Attrib V53    0.04119924116685435
#>     Attrib V54    -0.11693922798247519
#>     Attrib V55    0.04093916400710372
#>     Attrib V56    -0.0021595364081472518
#>     Attrib V57    0.04664701275612493
#>     Attrib V58    -0.03687521988949823
#>     Attrib V59    0.0741835503353071
#>     Attrib V6    0.15484073109916846
#>     Attrib V60    0.04611517654207965
#>     Attrib V7    0.2030361055958843
#>     Attrib V8    0.021778966398762093
#>     Attrib V9    -0.08286632066071506
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.3211991863876172
#>     Attrib V1    0.01619755837103391
#>     Attrib V10    0.11267724288448071
#>     Attrib V11    0.4366232818633583
#>     Attrib V12    0.4839553118787438
#>     Attrib V13    0.20052854487905353
#>     Attrib V14    -0.24321374348365613
#>     Attrib V15    -0.23705560536525047
#>     Attrib V16    -0.16991978242104674
#>     Attrib V17    -0.362204418834802
#>     Attrib V18    -0.2945654870556815
#>     Attrib V19    0.15457130683543305
#>     Attrib V2    0.09136069433422868
#>     Attrib V20    -0.21275953003015358
#>     Attrib V21    -0.22826236833482
#>     Attrib V22    0.1279800193929495
#>     Attrib V23    0.038804303950241335
#>     Attrib V24    -0.027271423330109176
#>     Attrib V25    -0.06266190171874542
#>     Attrib V26    0.08837749294285935
#>     Attrib V27    0.19385295508969344
#>     Attrib V28    0.838334114188108
#>     Attrib V29    0.40498319903528873
#>     Attrib V3    -0.3174725268139295
#>     Attrib V30    0.31371082771595893
#>     Attrib V31    -0.4967462496519038
#>     Attrib V32    -0.13010762793137337
#>     Attrib V33    -0.07688854632581604
#>     Attrib V34    -0.042263759618973995
#>     Attrib V35    0.2347935713576563
#>     Attrib V36    -0.29320136937182434
#>     Attrib V37    -0.4421359489810222
#>     Attrib V38    0.13037902670168766
#>     Attrib V39    0.26688834467478184
#>     Attrib V4    0.11601076131110201
#>     Attrib V40    -0.024321015302215483
#>     Attrib V41    0.18097588852033747
#>     Attrib V42    -0.16789119216210985
#>     Attrib V43    0.3045650462293205
#>     Attrib V44    0.42085424133767374
#>     Attrib V45    0.3838287874078266
#>     Attrib V46    0.20382104574096835
#>     Attrib V47    0.20788222603388093
#>     Attrib V48    0.31986256767035354
#>     Attrib V49    0.3610910894082234
#>     Attrib V5    0.07635497732111038
#>     Attrib V50    -0.8441678427343322
#>     Attrib V51    0.19130311370552602
#>     Attrib V52    0.7324978827008857
#>     Attrib V53    0.24704323398947123
#>     Attrib V54    0.3062685651761822
#>     Attrib V55    0.07987618424885089
#>     Attrib V56    -0.0012345912944438631
#>     Attrib V57    -0.1672933683792792
#>     Attrib V58    0.4727623832878977
#>     Attrib V59    -0.1075551398535907
#>     Attrib V6    -0.13380909753125123
#>     Attrib V60    0.1753906676438476
#>     Attrib V7    -0.41150189696401807
#>     Attrib V8    0.23043882287150852
#>     Attrib V9    0.6050902982122072
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.2644305854596832
#>     Attrib V1    0.24545530750430697
#>     Attrib V10    0.5936161516200928
#>     Attrib V11    0.8191074810241068
#>     Attrib V12    0.7972298770710519
#>     Attrib V13    0.5695124526133409
#>     Attrib V14    -0.12656627462386202
#>     Attrib V15    -0.273847813260638
#>     Attrib V16    -0.38041074616402243
#>     Attrib V17    -0.6334368110082639
#>     Attrib V18    -0.44177482331969853
#>     Attrib V19    0.06927851680784912
#>     Attrib V2    0.21229242162485312
#>     Attrib V20    -0.2421519833816542
#>     Attrib V21    -0.1104270955021777
#>     Attrib V22    0.4000238447147814
#>     Attrib V23    0.4561863795113992
#>     Attrib V24    0.2206634942416875
#>     Attrib V25    0.17064251257098836
#>     Attrib V26    0.6245922983364453
#>     Attrib V27    0.6671313940449646
#>     Attrib V28    1.3805490360508614
#>     Attrib V29    0.9218722891758097
#>     Attrib V3    -0.27979510194119167
#>     Attrib V30    0.5214095645745837
#>     Attrib V31    -0.4508375736350516
#>     Attrib V32    -0.1728412868203545
#>     Attrib V33    -0.3529952646429588
#>     Attrib V34    -0.17767066016354463
#>     Attrib V35    0.4262441861683705
#>     Attrib V36    -0.19803764736713556
#>     Attrib V37    -0.11104948618765986
#>     Attrib V38    0.290996480289817
#>     Attrib V39    0.4518203686030082
#>     Attrib V4    0.052630856549417765
#>     Attrib V40    0.10412575571443905
#>     Attrib V41    0.4649089391196772
#>     Attrib V42    -0.35307748401309913
#>     Attrib V43    0.225498780708072
#>     Attrib V44    0.4264779882758755
#>     Attrib V45    0.44740672786925756
#>     Attrib V46    0.4144179024289209
#>     Attrib V47    0.5078133461967324
#>     Attrib V48    0.41231443219136327
#>     Attrib V49    0.4065308643455148
#>     Attrib V5    0.2670358484880168
#>     Attrib V50    -0.879870694019433
#>     Attrib V51    0.5782250230941007
#>     Attrib V52    0.964383463262482
#>     Attrib V53    0.2703132956778366
#>     Attrib V54    0.33689982888604136
#>     Attrib V55    0.09245727796465372
#>     Attrib V56    -0.10366364658034329
#>     Attrib V57    -0.5594015755446216
#>     Attrib V58    0.41284397886581964
#>     Attrib V59    -0.24903079594988764
#>     Attrib V6    -0.05914056327772418
#>     Attrib V60    0.25271168699751084
#>     Attrib V7    -0.44128199634063187
#>     Attrib V8    0.06083447821641264
#>     Attrib V9    0.9332186772575366
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.17798957388037856
#>     Attrib V1    0.031942255282179234
#>     Attrib V10    0.09979250625471404
#>     Attrib V11    -0.44465765723173445
#>     Attrib V12    -0.9241826825590294
#>     Attrib V13    -0.28944844296913835
#>     Attrib V14    0.7394984251589207
#>     Attrib V15    0.590848029833826
#>     Attrib V16    -0.05546129983446727
#>     Attrib V17    -0.14784215275302093
#>     Attrib V18    -0.048286062232388814
#>     Attrib V19    -0.8741903647039309
#>     Attrib V2    -0.1004544908347567
#>     Attrib V20    0.18435787225792816
#>     Attrib V21    0.5466738848789879
#>     Attrib V22    -0.5672992873825242
#>     Attrib V23    -0.4618166284329905
#>     Attrib V24    -0.22421668713709345
#>     Attrib V25    0.21583780874672784
#>     Attrib V26    0.6346332751230376
#>     Attrib V27    0.7796477718924701
#>     Attrib V28    -0.1879531027573301
#>     Attrib V29    0.553343227643523
#>     Attrib V3    0.34486727253645266
#>     Attrib V30    -0.08083012362906684
#>     Attrib V31    0.895874052807957
#>     Attrib V32    -0.6505247342909766
#>     Attrib V33    -0.4788880026689207
#>     Attrib V34    0.17798517835268984
#>     Attrib V35    0.9966078123481531
#>     Attrib V36    2.086805678083903
#>     Attrib V37    2.5199268762722107
#>     Attrib V38    0.5401609260365634
#>     Attrib V39    -0.08200796988520248
#>     Attrib V4    -0.36839703435011195
#>     Attrib V40    0.07371717566397795
#>     Attrib V41    -0.9417943442968612
#>     Attrib V42    -0.6314952290824131
#>     Attrib V43    -0.6217735900421091
#>     Attrib V44    0.07644008962092583
#>     Attrib V45    0.41832375018725887
#>     Attrib V46    0.23396266871372132
#>     Attrib V47    -0.3781085015291144
#>     Attrib V48    -0.6393962223326334
#>     Attrib V49    -0.5859292245171362
#>     Attrib V5    -0.41910495696334754
#>     Attrib V50    1.5566916503958539
#>     Attrib V51    -0.7530604919944857
#>     Attrib V52    -0.99498047168222
#>     Attrib V53    -0.09975250025035147
#>     Attrib V54    -0.2090430074296915
#>     Attrib V55    0.6704756243084761
#>     Attrib V56    -1.0758736072826327
#>     Attrib V57    0.02535316510699373
#>     Attrib V58    -0.5288068103042142
#>     Attrib V59    0.5148820139460957
#>     Attrib V6    -0.06280719312825489
#>     Attrib V60    -0.04510362282242746
#>     Attrib V7    0.7517448667057786
#>     Attrib V8    -0.36614936899229206
#>     Attrib V9    -0.8900471882540248
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.05821551839490065
#>     Attrib V1    0.380346672355907
#>     Attrib V10    -0.254874145821372
#>     Attrib V11    -0.07820616225314983
#>     Attrib V12    -0.2555218476326875
#>     Attrib V13    -0.33714056477929993
#>     Attrib V14    -0.2802662866120537
#>     Attrib V15    -0.029753099949767305
#>     Attrib V16    0.4499858689798221
#>     Attrib V17    0.17121869889975483
#>     Attrib V18    -0.07809010302134085
#>     Attrib V19    0.36758016527315734
#>     Attrib V2    0.21788261256764646
#>     Attrib V20    0.4271073411518319
#>     Attrib V21    0.30401840063421404
#>     Attrib V22    0.2730984976433179
#>     Attrib V23    -0.0342217822022731
#>     Attrib V24    -0.06736482621201217
#>     Attrib V25    -0.3959881360428725
#>     Attrib V26    -0.7974858355997305
#>     Attrib V27    -0.9402575663000093
#>     Attrib V28    -0.40481935936132735
#>     Attrib V29    -0.39528936108554524
#>     Attrib V3    -0.10873717619649545
#>     Attrib V30    0.032994509525571265
#>     Attrib V31    -0.61443457776931
#>     Attrib V32    0.06684443518052367
#>     Attrib V33    0.25476031649193026
#>     Attrib V34    -0.24664277291705047
#>     Attrib V35    -0.45590497437634053
#>     Attrib V36    -0.5964520241696709
#>     Attrib V37    -0.6417049826838847
#>     Attrib V38    0.15184491378971485
#>     Attrib V39    0.08131823295666302
#>     Attrib V4    0.38047892545522144
#>     Attrib V40    -0.2771627914488847
#>     Attrib V41    -0.008653961569797187
#>     Attrib V42    0.2762802906367338
#>     Attrib V43    0.49874506281042413
#>     Attrib V44    0.4574675911314803
#>     Attrib V45    0.09302668837079849
#>     Attrib V46    -0.06634795265868211
#>     Attrib V47    -0.20061049293167757
#>     Attrib V48    -0.10473667912076388
#>     Attrib V49    0.01791603376559104
#>     Attrib V5    0.10548542419557227
#>     Attrib V50    -0.4744232196841503
#>     Attrib V51    0.05852101987672771
#>     Attrib V52    -0.009284584921063075
#>     Attrib V53    0.06355193811823899
#>     Attrib V54    0.5815004620918296
#>     Attrib V55    0.03574968868500952
#>     Attrib V56    0.6117700856689956
#>     Attrib V57    0.34584835468711084
#>     Attrib V58    0.39874338150210736
#>     Attrib V59    0.21113028985145063
#>     Attrib V6    -0.1926055493542552
#>     Attrib V60    0.2511304940570688
#>     Attrib V7    -0.08693663874625766
#>     Attrib V8    0.529318543236413
#>     Attrib V9    0.4014854169822651
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.009148862628759668
#>     Attrib V1    0.2164409576083978
#>     Attrib V10    -0.20469491194096928
#>     Attrib V11    0.008147272210039407
#>     Attrib V12    -0.06236714890013398
#>     Attrib V13    -0.14757953317105896
#>     Attrib V14    -0.1733224797722106
#>     Attrib V15    -0.04542839889999134
#>     Attrib V16    0.18354885289295408
#>     Attrib V17    0.14944135541358988
#>     Attrib V18    0.006039340922222493
#>     Attrib V19    0.2929352303092147
#>     Attrib V2    0.09148047345999326
#>     Attrib V20    0.22605240592526363
#>     Attrib V21    0.1371128329152349
#>     Attrib V22    0.19155683741115764
#>     Attrib V23    0.06649266678824563
#>     Attrib V24    -0.04735148728707987
#>     Attrib V25    -0.20290787716038183
#>     Attrib V26    -0.3996274569472345
#>     Attrib V27    -0.5713709772649593
#>     Attrib V28    -0.24662854119709177
#>     Attrib V29    -0.31359616005264634
#>     Attrib V3    -0.0372523079653709
#>     Attrib V30    0.005237383517919483
#>     Attrib V31    -0.46852498546334037
#>     Attrib V32    -0.004751454628364863
#>     Attrib V33    0.14382106134357675
#>     Attrib V34    -0.175511558419281
#>     Attrib V35    -0.18111855533798865
#>     Attrib V36    -0.31932897660925935
#>     Attrib V37    -0.34340418777060716
#>     Attrib V38    0.12300196925999483
#>     Attrib V39    0.0693350964038279
#>     Attrib V4    0.2820448346826274
#>     Attrib V40    -0.22363147842548725
#>     Attrib V41    0.006506914120172835
#>     Attrib V42    0.10298372427942033
#>     Attrib V43    0.31244282297513165
#>     Attrib V44    0.31080834049359424
#>     Attrib V45    0.13672840112289314
#>     Attrib V46    -0.08265419686104179
#>     Attrib V47    -0.07932730625977397
#>     Attrib V48    -0.12845679028100157
#>     Attrib V49    0.004640856841638353
#>     Attrib V5    0.062177959418272456
#>     Attrib V50    -0.3909784827418605
#>     Attrib V51    0.03833989696060779
#>     Attrib V52    0.09288153757939023
#>     Attrib V53    0.12342348508185153
#>     Attrib V54    0.3858470251290314
#>     Attrib V55    0.0547730068343587
#>     Attrib V56    0.39856593879295177
#>     Attrib V57    0.1547130558910091
#>     Attrib V58    0.2080016063968583
#>     Attrib V59    0.19382258726611723
#>     Attrib V6    -0.11709170620819005
#>     Attrib V60    0.15460247030440888
#>     Attrib V7    -0.08687607667282851
#>     Attrib V8    0.3526361229435784
#>     Attrib V9    0.2795234837545611
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.23582507951163506
#>     Attrib V1    -0.045545739729813996
#>     Attrib V10    -0.10892753303579507
#>     Attrib V11    -0.5323960935471893
#>     Attrib V12    -0.6439875490198566
#>     Attrib V13    -0.2906199652444591
#>     Attrib V14    0.6261133919190202
#>     Attrib V15    0.5834281838778775
#>     Attrib V16    0.08075917846894497
#>     Attrib V17    0.16565346070757475
#>     Attrib V18    0.08317034169656393
#>     Attrib V19    -0.6127608096201596
#>     Attrib V2    -0.08151006247897731
#>     Attrib V20    -0.03843280572236962
#>     Attrib V21    0.03335550117378664
#>     Attrib V22    -0.776033348921491
#>     Attrib V23    -0.5090756837325372
#>     Attrib V24    -0.20011837899989984
#>     Attrib V25    0.20122441463242033
#>     Attrib V26    0.4591059689916883
#>     Attrib V27    0.5422070793756576
#>     Attrib V28    -0.25996965274396705
#>     Attrib V29    0.2589982202437222
#>     Attrib V3    0.3642848687167015
#>     Attrib V30    -0.17855737686961182
#>     Attrib V31    0.9230939758519141
#>     Attrib V32    -0.15954744504243643
#>     Attrib V33    -0.26123663171325334
#>     Attrib V34    0.15201142635949735
#>     Attrib V35    0.272520045077584
#>     Attrib V36    0.9204196175497177
#>     Attrib V37    1.1278592786347237
#>     Attrib V38    -0.1215265356735411
#>     Attrib V39    -0.32666240139809616
#>     Attrib V4    -0.2277234553602745
#>     Attrib V40    0.12718283175374742
#>     Attrib V41    -0.47930971505865966
#>     Attrib V42    -0.08731451575246876
#>     Attrib V43    -0.4925384749993804
#>     Attrib V44    -0.41705972786753565
#>     Attrib V45    -0.08028975836338675
#>     Attrib V46    0.08994199558786758
#>     Attrib V47    -0.11200940723304006
#>     Attrib V48    -0.23792259100248278
#>     Attrib V49    -0.3781602074558219
#>     Attrib V5    -0.19376108568915426
#>     Attrib V50    1.23952247464658
#>     Attrib V51    -0.43564966376480335
#>     Attrib V52    -0.6361838111448648
#>     Attrib V53    0.048645252393888255
#>     Attrib V54    -0.3861613665446284
#>     Attrib V55    0.38604495905899955
#>     Attrib V56    -0.5210055176622653
#>     Attrib V57    0.21761801062397357
#>     Attrib V58    -0.4808131964067123
#>     Attrib V59    0.3068534130011805
#>     Attrib V6    0.14980024000609374
#>     Attrib V60    -0.21315481301626255
#>     Attrib V7    0.4473433935617668
#>     Attrib V8    -0.33797518251870745
#>     Attrib V9    -0.7996531260719161
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.017723086196818682
#>     Attrib V1    -0.2375587666506739
#>     Attrib V10    1.159802258808894
#>     Attrib V11    1.5015453833721952
#>     Attrib V12    1.7660558442757839
#>     Attrib V13    1.0496464427629872
#>     Attrib V14    -0.5269629076431106
#>     Attrib V15    -1.2152597721237655
#>     Attrib V16    -1.014120881130888
#>     Attrib V17    -0.6026733655000245
#>     Attrib V18    0.06314715728427941
#>     Attrib V19    0.36100273015846757
#>     Attrib V2    0.04005600108557263
#>     Attrib V20    -0.79225309456767
#>     Attrib V21    -0.7388569945431653
#>     Attrib V22    0.7542337740102374
#>     Attrib V23    1.3744595057863367
#>     Attrib V24    1.1076363892117718
#>     Attrib V25    1.1972361997405
#>     Attrib V26    1.577862100999766
#>     Attrib V27    1.2111975419949825
#>     Attrib V28    1.4892272447001131
#>     Attrib V29    0.029938213325438685
#>     Attrib V3    -0.24726726519155867
#>     Attrib V30    -0.08843530969160981
#>     Attrib V31    -0.48664932213903195
#>     Attrib V32    0.09862834037866718
#>     Attrib V33    -0.4987421542395759
#>     Attrib V34    0.17032807465319214
#>     Attrib V35    0.883752791547318
#>     Attrib V36    -0.4086266373547114
#>     Attrib V37    -0.9105271917467206
#>     Attrib V38    -0.2783581136994102
#>     Attrib V39    0.7314374413281433
#>     Attrib V4    0.016962228970328008
#>     Attrib V40    0.5721628749144081
#>     Attrib V41    1.029684875574004
#>     Attrib V42    -0.4709185282547664
#>     Attrib V43    -0.001457569414263088
#>     Attrib V44    0.2318005472068057
#>     Attrib V45    0.28209971177775606
#>     Attrib V46    0.49744025758253974
#>     Attrib V47    1.0666140088769598
#>     Attrib V48    1.18252082774845
#>     Attrib V49    1.2028836030247192
#>     Attrib V5    0.4491485475885476
#>     Attrib V50    -1.073037834511606
#>     Attrib V51    1.3246355024666905
#>     Attrib V52    1.7151569837394829
#>     Attrib V53    0.3757439697927574
#>     Attrib V54    -0.16590533810297628
#>     Attrib V55    -0.22658172661967443
#>     Attrib V56    -0.04979436854441262
#>     Attrib V57    -0.8100443108986233
#>     Attrib V58    0.5356210904424114
#>     Attrib V59    -1.0269303620250358
#>     Attrib V6    0.33944133039808677
#>     Attrib V60    0.05667117938066211
#>     Attrib V7    -0.5680823788369792
#>     Attrib V8    -0.33997486410258193
#>     Attrib V9    1.5086978958788977
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.20287685153554788
#>     Attrib V1    0.101575833793022
#>     Attrib V10    0.005376083421664788
#>     Attrib V11    -0.0070626293282706025
#>     Attrib V12    0.02868744343716554
#>     Attrib V13    -0.012136365593622902
#>     Attrib V14    0.08749485795099951
#>     Attrib V15    0.03154194501963329
#>     Attrib V16    0.058685121172836086
#>     Attrib V17    0.06367984752336166
#>     Attrib V18    -0.031209092772879057
#>     Attrib V19    0.09249411907416635
#>     Attrib V2    0.11973117587149482
#>     Attrib V20    0.020002669753460885
#>     Attrib V21    0.001502144552158733
#>     Attrib V22    -0.005458799586630218
#>     Attrib V23    -0.02628622622768476
#>     Attrib V24    -0.03914504306143279
#>     Attrib V25    -0.036900491888805176
#>     Attrib V26    -0.09138058856833335
#>     Attrib V27    -0.0538326239590822
#>     Attrib V28    2.4417394002353615E-4
#>     Attrib V29    -0.032946447861209094
#>     Attrib V3    0.06562690459243288
#>     Attrib V30    -0.005686044255487009
#>     Attrib V31    -0.08494422996937998
#>     Attrib V32    -0.031154349644732068
#>     Attrib V33    0.04131501682148898
#>     Attrib V34    -0.018354408434735354
#>     Attrib V35    0.08205872211374754
#>     Attrib V36    0.055705655401665805
#>     Attrib V37    0.04596365245466908
#>     Attrib V38    0.04198384740106531
#>     Attrib V39    0.06350797671562974
#>     Attrib V4    0.1659960384915655
#>     Attrib V40    1.8686960014305788E-4
#>     Attrib V41    0.03247165966852809
#>     Attrib V42    0.039665331353796865
#>     Attrib V43    0.05570035355037165
#>     Attrib V44    0.08470905288251715
#>     Attrib V45    0.07379988087795439
#>     Attrib V46    0.014942760452394753
#>     Attrib V47    0.011198306324155494
#>     Attrib V48    0.06164146019243306
#>     Attrib V49    0.0389623071117605
#>     Attrib V5    0.061283883552155236
#>     Attrib V50    0.009611682125291897
#>     Attrib V51    0.04717266614504683
#>     Attrib V52    0.0524729519793696
#>     Attrib V53    0.08870378869896053
#>     Attrib V54    0.10146064355718248
#>     Attrib V55    0.07569632278298338
#>     Attrib V56    0.10893535921286783
#>     Attrib V57    0.14183067803587335
#>     Attrib V58    0.07196627419532771
#>     Attrib V59    0.08446943104756897
#>     Attrib V6    0.09551817710162064
#>     Attrib V60    0.12634514546793726
#>     Attrib V7    0.0028509370427615833
#>     Attrib V8    0.12468858108639683
#>     Attrib V9    0.09027693549646183
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.2447017046935413
#>     Attrib V1    0.30625591067400737
#>     Attrib V10    0.7386250272737881
#>     Attrib V11    1.0145731390719288
#>     Attrib V12    0.9279951534647398
#>     Attrib V13    0.6564637393131251
#>     Attrib V14    -0.19920422758253914
#>     Attrib V15    -0.2790527199222105
#>     Attrib V16    -0.42465066341000557
#>     Attrib V17    -0.8247234932697403
#>     Attrib V18    -0.6688317108304904
#>     Attrib V19    -0.26318046484588103
#>     Attrib V2    0.29945501268160696
#>     Attrib V20    -0.5058397442844991
#>     Attrib V21    -0.2460711966058487
#>     Attrib V22    0.19930213374557654
#>     Attrib V23    0.2383704805254711
#>     Attrib V24    0.0794951777060433
#>     Attrib V25    0.028846913097216213
#>     Attrib V26    0.6511356676704604
#>     Attrib V27    0.7278029321534024
#>     Attrib V28    1.4810882515005295
#>     Attrib V29    0.9333404321181518
#>     Attrib V3    -0.18995789543873315
#>     Attrib V30    0.41169756714535455
#>     Attrib V31    -0.36695838276159987
#>     Attrib V32    -0.03905886101803799
#>     Attrib V33    -0.331910507391937
#>     Attrib V34    -0.045132330762552436
#>     Attrib V35    0.5236474236837936
#>     Attrib V36    -0.25971918858644705
#>     Attrib V37    -0.0650932598127356
#>     Attrib V38    0.14909008332795942
#>     Attrib V39    0.41753718328209743
#>     Attrib V4    0.06119998489816845
#>     Attrib V40    0.0035768764822072083
#>     Attrib V41    0.40993873005686277
#>     Attrib V42    -0.49184888100474844
#>     Attrib V43    -0.07561317720533807
#>     Attrib V44    0.1811153414834951
#>     Attrib V45    0.49372467339187237
#>     Attrib V46    0.5519059648339553
#>     Attrib V47    0.5969452034093469
#>     Attrib V48    0.4625201227260432
#>     Attrib V49    0.33335942926333345
#>     Attrib V5    0.2671551916485603
#>     Attrib V50    -0.8053687284712575
#>     Attrib V51    0.5370652893064523
#>     Attrib V52    1.0236950190357281
#>     Attrib V53    0.2113637621918127
#>     Attrib V54    0.1581602443602953
#>     Attrib V55    0.2911225213850532
#>     Attrib V56    -0.3449542463625766
#>     Attrib V57    -0.4372745262356807
#>     Attrib V58    0.5267085213282288
#>     Attrib V59    -0.42138570448702684
#>     Attrib V6    0.0850130376138803
#>     Attrib V60    0.23053124045234683
#>     Attrib V7    -0.440413528547209
#>     Attrib V8    0.08135227404448278
#>     Attrib V9    1.0080877535090011
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.21024394493168924
#>     Attrib V1    0.28925143168134865
#>     Attrib V10    -0.3302243032352802
#>     Attrib V11    -0.6971849420933737
#>     Attrib V12    -1.2519408845646234
#>     Attrib V13    -0.8881115894618433
#>     Attrib V14    0.5223335401755037
#>     Attrib V15    1.025615723102612
#>     Attrib V16    0.7724426205143794
#>     Attrib V17    0.2519853823993558
#>     Attrib V18    -0.17335182731657514
#>     Attrib V19    -0.9098948658837508
#>     Attrib V2    0.03835560827611308
#>     Attrib V20    0.3137597790765365
#>     Attrib V21    0.44168339220786257
#>     Attrib V22    -0.9326652650986499
#>     Attrib V23    -1.025791229575745
#>     Attrib V24    -0.49178412459376025
#>     Attrib V25    -0.24723583279159966
#>     Attrib V26    -0.30341245292081737
#>     Attrib V27    -0.4398081723737724
#>     Attrib V28    -1.3854057901947952
#>     Attrib V29    -0.4061217700789078
#>     Attrib V3    0.23318400972837824
#>     Attrib V30    -0.29168626899225003
#>     Attrib V31    0.90180017893238
#>     Attrib V32    0.1359198086659737
#>     Attrib V33    0.2399365819042688
#>     Attrib V34    0.016475032615821086
#>     Attrib V35    -0.3630292000256203
#>     Attrib V36    0.7647756701082751
#>     Attrib V37    1.2484363594032493
#>     Attrib V38    -0.03830373762774313
#>     Attrib V39    -0.4636741285139279
#>     Attrib V4    -0.2912849734785191
#>     Attrib V40    -0.19046687727801945
#>     Attrib V41    -1.0073466811450793
#>     Attrib V42    -0.1281911403530143
#>     Attrib V43    -0.9428274185973394
#>     Attrib V44    -0.7674430472153404
#>     Attrib V45    -0.13438059358987423
#>     Attrib V46    -0.18334765571105457
#>     Attrib V47    -0.7796657826880651
#>     Attrib V48    -0.7499963136215521
#>     Attrib V49    -0.8522783466222632
#>     Attrib V5    -0.5875890568881014
#>     Attrib V50    1.3196404850925025
#>     Attrib V51    -0.9077625807522287
#>     Attrib V52    -1.1245536768971705
#>     Attrib V53    -0.16282822219942528
#>     Attrib V54    -0.1475741527556956
#>     Attrib V55    1.0347830112941985
#>     Attrib V56    -0.6395461672327479
#>     Attrib V57    0.7516210568809387
#>     Attrib V58    -0.3913647756467624
#>     Attrib V59    0.6061122705622328
#>     Attrib V6    -0.21547616520724683
#>     Attrib V60    -0.27217837329347694
#>     Attrib V7    1.1182611672317948
#>     Attrib V8    0.3037867765878934
#>     Attrib V9    -0.9606847512283603
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.22768871253675657
#>     Attrib V1    0.05107644938322587
#>     Attrib V10    -0.08334703161521194
#>     Attrib V11    0.25869259867008054
#>     Attrib V12    0.17316975429816045
#>     Attrib V13    -0.0014551110109120098
#>     Attrib V14    -0.2582938248616695
#>     Attrib V15    -0.2456256732375116
#>     Attrib V16    0.004968614321496749
#>     Attrib V17    -0.09748139186684061
#>     Attrib V18    -0.04052169263063706
#>     Attrib V19    0.37998425901313954
#>     Attrib V2    0.03817024884365912
#>     Attrib V20    0.22412962302389816
#>     Attrib V21    0.1476114760067694
#>     Attrib V22    0.42055646524671136
#>     Attrib V23    0.17165433581808792
#>     Attrib V24    0.05388842437699491
#>     Attrib V25    -0.060616748252170484
#>     Attrib V26    -0.13462566776750085
#>     Attrib V27    -0.1444328431434414
#>     Attrib V28    0.41959295835751015
#>     Attrib V29    0.1606786002957579
#>     Attrib V3    -0.24966434388865233
#>     Attrib V30    0.21663589627525107
#>     Attrib V31    -0.6392020169156878
#>     Attrib V32    -0.12617311534121556
#>     Attrib V33    -0.01428014022759492
#>     Attrib V34    -0.12768267368486774
#>     Attrib V35    0.08602387957074874
#>     Attrib V36    -0.20688953947644742
#>     Attrib V37    -0.30828378447585125
#>     Attrib V38    0.32697838731159234
#>     Attrib V39    0.29867304243504483
#>     Attrib V4    0.11750003087510216
#>     Attrib V40    -0.13660527146728513
#>     Attrib V41    0.11439443421178948
#>     Attrib V42    -0.052483983987673184
#>     Attrib V43    0.5518765445161048
#>     Attrib V44    0.6269650652439843
#>     Attrib V45    0.3824996674370688
#>     Attrib V46    0.04407957063651668
#>     Attrib V47    0.10084694330195103
#>     Attrib V48    0.13670553632745697
#>     Attrib V49    0.2162529243319909
#>     Attrib V5    -0.030677485539041066
#>     Attrib V50    -0.6722626530715434
#>     Attrib V51    0.15751910209163522
#>     Attrib V52    0.4160756970509629
#>     Attrib V53    0.16839902632035805
#>     Attrib V54    0.4376744492666881
#>     Attrib V55    -0.09896102740266018
#>     Attrib V56    0.3238485383183274
#>     Attrib V57    -0.10078863547034998
#>     Attrib V58    0.22739247509153196
#>     Attrib V59    0.01750306719362237
#>     Attrib V6    -0.24245843625377664
#>     Attrib V60    0.2288532577835797
#>     Attrib V7    -0.44858861975680503
#>     Attrib V8    0.2781886184563261
#>     Attrib V9    0.4813544339430253
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.1273335147217779
#>     Attrib V1    -0.08786131764588173
#>     Attrib V10    0.048198268424399136
#>     Attrib V11    -0.3753160763516561
#>     Attrib V12    -0.4094096685933467
#>     Attrib V13    -0.020049259952797452
#>     Attrib V14    0.5625454518893181
#>     Attrib V15    0.4363225565830971
#>     Attrib V16    -0.05853142928493316
#>     Attrib V17    0.044214635933151634
#>     Attrib V18    0.030324653766403482
#>     Attrib V19    -0.6021945272055299
#>     Attrib V2    -0.06676827207914601
#>     Attrib V20    -0.1254748023136296
#>     Attrib V21    0.030096611839359726
#>     Attrib V22    -0.5488048294139521
#>     Attrib V23    -0.31739445745434647
#>     Attrib V24    -0.11902209009725048
#>     Attrib V25    0.2152561818130222
#>     Attrib V26    0.5540228257966275
#>     Attrib V27    0.7337278646610744
#>     Attrib V28    0.067539397768564
#>     Attrib V29    0.4904456175394193
#>     Attrib V3    0.280119380384993
#>     Attrib V30    -0.017538504550478576
#>     Attrib V31    0.9313842834025404
#>     Attrib V32    -0.21964560355990564
#>     Attrib V33    -0.35376611910332795
#>     Attrib V34    0.12260262688998931
#>     Attrib V35    0.4508463534538674
#>     Attrib V36    0.9387500942602122
#>     Attrib V37    1.3230850811802313
#>     Attrib V38    -0.0031806284565415004
#>     Attrib V39    -0.14458083638248734
#>     Attrib V4    -0.2878597594497827
#>     Attrib V40    0.15813338529790105
#>     Attrib V41    -0.37202928975623056
#>     Attrib V42    -0.14482760364913946
#>     Attrib V43    -0.5232215935862683
#>     Attrib V44    -0.39367924995169457
#>     Attrib V45    -0.018743186857407095
#>     Attrib V46    0.14819983646779777
#>     Attrib V47    -0.07510114250358861
#>     Attrib V48    -0.16927026041410015
#>     Attrib V49    -0.3095318799972218
#>     Attrib V5    -0.16022892470692424
#>     Attrib V50    0.9983873801513171
#>     Attrib V51    -0.3647040534876695
#>     Attrib V52    -0.4925831404805566
#>     Attrib V53    0.019036793195748865
#>     Attrib V54    -0.4072798550692336
#>     Attrib V55    0.23860527087411115
#>     Attrib V56    -0.57405077542866
#>     Attrib V57    -0.030703317455327898
#>     Attrib V58    -0.46850138519898016
#>     Attrib V59    0.18055251095463662
#>     Attrib V6    0.13947982371804002
#>     Attrib V60    -0.2629332779716924
#>     Attrib V7    0.28310335472920156
#>     Attrib V8    -0.5311418265605276
#>     Attrib V9    -0.7693488777746437
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.04337638280829091
#>     Attrib V1    0.39451799779003527
#>     Attrib V10    -0.3079215069798332
#>     Attrib V11    -0.041358847001985666
#>     Attrib V12    -0.30616801494817214
#>     Attrib V13    -0.30711978235634513
#>     Attrib V14    -0.3206083961216693
#>     Attrib V15    -0.014938241749937341
#>     Attrib V16    0.41881008198155506
#>     Attrib V17    0.17186789261090574
#>     Attrib V18    -0.06862158281943648
#>     Attrib V19    0.46786199424059804
#>     Attrib V2    0.2740386841348375
#>     Attrib V20    0.5101326704472117
#>     Attrib V21    0.32963861718835774
#>     Attrib V22    0.4492414423699792
#>     Attrib V23    0.11393490426720086
#>     Attrib V24    -0.04789882805500172
#>     Attrib V25    -0.4336630188596687
#>     Attrib V26    -0.8186894985676868
#>     Attrib V27    -1.020803170430323
#>     Attrib V28    -0.32938119214420014
#>     Attrib V29    -0.44239470332003566
#>     Attrib V3    -0.16769911750437605
#>     Attrib V30    0.08310122502921917
#>     Attrib V31    -0.8081458771004382
#>     Attrib V32    0.016424637249589025
#>     Attrib V33    0.33860649549616506
#>     Attrib V34    -0.277703645323464
#>     Attrib V35    -0.501253178916429
#>     Attrib V36    -0.7182230308297112
#>     Attrib V37    -0.7884783767164651
#>     Attrib V38    0.26667889248204174
#>     Attrib V39    0.1186274004600723
#>     Attrib V4    0.4465583899694782
#>     Attrib V40    -0.3575108062539265
#>     Attrib V41    0.01998628002054626
#>     Attrib V42    0.35217660703838977
#>     Attrib V43    0.6108802939202694
#>     Attrib V44    0.6448605222098582
#>     Attrib V45    0.20786477103826614
#>     Attrib V46    -0.08538877012091513
#>     Attrib V47    -0.17482016343249723
#>     Attrib V48    -0.12207566600704058
#>     Attrib V49    0.06991735541187635
#>     Attrib V5    0.06323125987156382
#>     Attrib V50    -0.5809062811743317
#>     Attrib V51    0.0680611051651233
#>     Attrib V52    0.03306519397281549
#>     Attrib V53    0.12257567618126533
#>     Attrib V54    0.7487229115845949
#>     Attrib V55    0.008266166963155158
#>     Attrib V56    0.6347045310472518
#>     Attrib V57    0.3060758897471176
#>     Attrib V58    0.3483360464618415
#>     Attrib V59    0.20170685918142128
#>     Attrib V6    -0.27072128301637943
#>     Attrib V60    0.29013511184534563
#>     Attrib V7    -0.10790606566765158
#>     Attrib V8    0.678952233554641
#>     Attrib V9    0.4998612765128068
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.06337431710925977
#>     Attrib V1    0.19217606785406627
#>     Attrib V10    -0.16865901747832515
#>     Attrib V11    -0.004763013163709116
#>     Attrib V12    -0.09382358631762838
#>     Attrib V13    -0.1674566939972989
#>     Attrib V14    -0.06965046065394377
#>     Attrib V15    0.016126366956961777
#>     Attrib V16    0.20173665088249454
#>     Attrib V17    0.030536710659707415
#>     Attrib V18    0.01536151531896163
#>     Attrib V19    0.154581380397581
#>     Attrib V2    0.09510690477273065
#>     Attrib V20    0.19028746241167893
#>     Attrib V21    0.1433855266525355
#>     Attrib V22    0.1107238580175981
#>     Attrib V23    0.032989930535759195
#>     Attrib V24    -0.04339730708149923
#>     Attrib V25    -0.2276109947987436
#>     Attrib V26    -0.3730400587409117
#>     Attrib V27    -0.4274737610387685
#>     Attrib V28    -0.12215928847491266
#>     Attrib V29    -0.1853214868932466
#>     Attrib V3    -0.0018048284668741928
#>     Attrib V30    0.04915125768316466
#>     Attrib V31    -0.38272320117223163
#>     Attrib V32    -0.03872765071848539
#>     Attrib V33    0.1056147949662694
#>     Attrib V34    -0.12901836764012872
#>     Attrib V35    -0.16698123925168457
#>     Attrib V36    -0.21310759186883066
#>     Attrib V37    -0.28816114046637664
#>     Attrib V38    0.06333681873334027
#>     Attrib V39    0.07530196326531192
#>     Attrib V4    0.17490105238523246
#>     Attrib V40    -0.1782891435204708
#>     Attrib V41    -0.032572077619596414
#>     Attrib V42    0.10031934945397775
#>     Attrib V43    0.14956410564534434
#>     Attrib V44    0.24211603357387937
#>     Attrib V45    0.1345273361077981
#>     Attrib V46    -0.03842063283522945
#>     Attrib V47    -0.0793727544068908
#>     Attrib V48    -0.09253121155909093
#>     Attrib V49    0.04458727070972055
#>     Attrib V5    0.060079641252385935
#>     Attrib V50    -0.2953988162302416
#>     Attrib V51    0.07072915672929084
#>     Attrib V52    0.08493491263990073
#>     Attrib V53    0.09806255093632983
#>     Attrib V54    0.2545516251559984
#>     Attrib V55    0.054002814817075646
#>     Attrib V56    0.24363138801381337
#>     Attrib V57    0.16955896508370574
#>     Attrib V58    0.23740950517733786
#>     Attrib V59    0.11350063411727643
#>     Attrib V6    -0.06856273831646217
#>     Attrib V60    0.12791395651689774
#>     Attrib V7    -0.06599061308922237
#>     Attrib V8    0.33332691113026214
#>     Attrib V9    0.2523183251922978
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
#>  0.1449275 
```
