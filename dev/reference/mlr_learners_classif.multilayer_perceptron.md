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
#>     Threshold    -0.0787477508545445
#>     Node 2    2.4123261620313836
#>     Node 3    1.556237158364392
#>     Node 4    0.4004211058010117
#>     Node 5    -1.4894071530538855
#>     Node 6    0.12526344683808993
#>     Node 7    3.9006525344737044
#>     Node 8    0.8324289926658036
#>     Node 9    3.6722362319147592
#>     Node 10    -2.3264304118390315
#>     Node 11    1.3946578044023872
#>     Node 12    1.4511601072897813
#>     Node 13    0.1938052198474893
#>     Node 14    1.609304047292408
#>     Node 15    -2.723116291220944
#>     Node 16    -0.377686243700683
#>     Node 17    0.5290177652110065
#>     Node 18    0.16935289891419467
#>     Node 19    2.690814287444313
#>     Node 20    1.8087934482820283
#>     Node 21    -2.927715338733715
#>     Node 22    0.854693628755864
#>     Node 23    1.5648134317989972
#>     Node 24    -1.4341431970254699
#>     Node 25    3.906445509227414
#>     Node 26    -1.3648061086261603
#>     Node 27    2.6050247608561246
#>     Node 28    -3.482995589377729
#>     Node 29    1.049799651535478
#>     Node 30    -0.3321736089077787
#>     Node 31    1.9294491723687925
#>     Node 32    -0.04372513251293777
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.10200808818602897
#>     Node 2    -2.4486174076353153
#>     Node 3    -1.534649073928293
#>     Node 4    -0.36186701463072807
#>     Node 5    1.5171418477477765
#>     Node 6    -0.10876959373011769
#>     Node 7    -3.899671386337647
#>     Node 8    -0.8615054619468546
#>     Node 9    -3.6728120459395632
#>     Node 10    2.269188328371362
#>     Node 11    -1.3586312033659926
#>     Node 12    -1.5169413141223873
#>     Node 13    -0.1435579120799083
#>     Node 14    -1.5596140286719469
#>     Node 15    2.721957027991821
#>     Node 16    0.35429783221197997
#>     Node 17    -0.49915959208776006
#>     Node 18    -0.13444856337821115
#>     Node 19    -2.692972978778
#>     Node 20    -1.7972204518267272
#>     Node 21    2.9730699115220744
#>     Node 22    -0.9057502545350946
#>     Node 23    -1.6064183344991438
#>     Node 24    1.444351192498424
#>     Node 25    -3.8898465915745204
#>     Node 26    1.3182249124752652
#>     Node 27    -2.6565259589965904
#>     Node 28    3.4511870782696406
#>     Node 29    -1.0798069987141994
#>     Node 30    0.4056608044601624
#>     Node 31    -1.8703048982116928
#>     Node 32    0.01604891388040724
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.01815119340878019
#>     Attrib V1    0.7941544406223628
#>     Attrib V10    -0.09568275478055037
#>     Attrib V11    0.1604253520108197
#>     Attrib V12    -0.04104489958846446
#>     Attrib V13    -0.03192886734934773
#>     Attrib V14    0.22177875180947482
#>     Attrib V15    0.235238405858146
#>     Attrib V16    0.31034385356763505
#>     Attrib V17    0.3817850266244721
#>     Attrib V18    0.4063529006099489
#>     Attrib V19    0.2551926494077023
#>     Attrib V2    0.24999801386253354
#>     Attrib V20    0.8917110114551385
#>     Attrib V21    0.7688255941753653
#>     Attrib V22    0.8393302379366783
#>     Attrib V23    0.45606400234261263
#>     Attrib V24    -0.3472996229297614
#>     Attrib V25    -0.73288356088934
#>     Attrib V26    -1.137589321973953
#>     Attrib V27    -0.9580972092875698
#>     Attrib V28    -0.11803630609751843
#>     Attrib V29    -0.0851642277058782
#>     Attrib V3    0.018532994514848453
#>     Attrib V30    -0.17838806674999438
#>     Attrib V31    -1.7453268373857203
#>     Attrib V32    0.11691455093324364
#>     Attrib V33    0.4488830865404587
#>     Attrib V34    -0.2718359380511019
#>     Attrib V35    -0.18910701521965706
#>     Attrib V36    -0.5688635256184938
#>     Attrib V37    -0.9492725028910293
#>     Attrib V38    0.43734644304539433
#>     Attrib V39    0.8853253123130473
#>     Attrib V4    0.46382669494180867
#>     Attrib V40    0.27168387847669034
#>     Attrib V41    0.16162565646590166
#>     Attrib V42    0.2813143690226059
#>     Attrib V43    0.7653851606484272
#>     Attrib V44    0.2664865382409193
#>     Attrib V45    -0.42572181190883046
#>     Attrib V46    -0.21153891890930873
#>     Attrib V47    -0.029819417036709123
#>     Attrib V48    0.7958875770889732
#>     Attrib V49    0.3091167314051258
#>     Attrib V5    0.3150477907937214
#>     Attrib V50    -0.9893803794331185
#>     Attrib V51    -0.33858485289593
#>     Attrib V52    -0.5154903017608927
#>     Attrib V53    -0.23484126941314445
#>     Attrib V54    0.42309949685037024
#>     Attrib V55    -0.1168835429300403
#>     Attrib V56    0.40787085475623935
#>     Attrib V57    -0.2847716626002909
#>     Attrib V58    0.5250222511874697
#>     Attrib V59    0.9668453592838316
#>     Attrib V6    -0.39473427581917553
#>     Attrib V60    0.6165396487281231
#>     Attrib V7    0.04019410287578461
#>     Attrib V8    -0.34302024745218257
#>     Attrib V9    0.2483268209223524
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.12471686906434308
#>     Attrib V1    0.34390619337350764
#>     Attrib V10    0.005088682371255232
#>     Attrib V11    0.11009955054601749
#>     Attrib V12    0.02084400297270381
#>     Attrib V13    -0.0013847829583851507
#>     Attrib V14    0.008206210977756607
#>     Attrib V15    0.020462883769120307
#>     Attrib V16    0.11733878879710842
#>     Attrib V17    0.260884392503983
#>     Attrib V18    0.2704548002909337
#>     Attrib V19    0.2089418878365134
#>     Attrib V2    0.1002703400287603
#>     Attrib V20    0.4535536403466332
#>     Attrib V21    0.30813240082530324
#>     Attrib V22    0.5800959054722817
#>     Attrib V23    0.40476310104974605
#>     Attrib V24    0.010505514915471501
#>     Attrib V25    -0.0420468960625862
#>     Attrib V26    -0.5255109243259458
#>     Attrib V27    -0.7899173761726059
#>     Attrib V28    -0.488861686695768
#>     Attrib V29    -0.7146034396024433
#>     Attrib V3    0.0020530582782239846
#>     Attrib V30    -0.2915237162922944
#>     Attrib V31    -0.997665301243085
#>     Attrib V32    0.19349983784027236
#>     Attrib V33    0.47622691214830104
#>     Attrib V34    -0.017524552615926517
#>     Attrib V35    0.0594855361407038
#>     Attrib V36    -0.346346631355144
#>     Attrib V37    -0.774032706271123
#>     Attrib V38    0.045951301879297364
#>     Attrib V39    0.39846359428505973
#>     Attrib V4    0.3122026429984488
#>     Attrib V40    0.16260643160400345
#>     Attrib V41    0.12189143658269129
#>     Attrib V42    0.1571622535446164
#>     Attrib V43    0.4490243162464364
#>     Attrib V44    0.18194922673607564
#>     Attrib V45    -0.24123014207437693
#>     Attrib V46    -0.1180631494999964
#>     Attrib V47    0.06669255689617337
#>     Attrib V48    0.605118659209876
#>     Attrib V49    0.21213985458260118
#>     Attrib V5    0.21123784441591567
#>     Attrib V50    -0.6757551813545749
#>     Attrib V51    -0.16320724318466281
#>     Attrib V52    -0.33989371093816134
#>     Attrib V53    -0.1999599486534692
#>     Attrib V54    0.4292887426521749
#>     Attrib V55    -0.014846754075481942
#>     Attrib V56    0.31495628997541286
#>     Attrib V57    -0.24186853093208835
#>     Attrib V58    0.4300190120088862
#>     Attrib V59    0.583420129957377
#>     Attrib V6    -0.2664533282511371
#>     Attrib V60    0.4252581420899326
#>     Attrib V7    0.037936179830693736
#>     Attrib V8    -0.09094935923661428
#>     Attrib V9    0.29869026556624406
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.14082662330310602
#>     Attrib V1    0.15727105449264733
#>     Attrib V10    0.02057404332804733
#>     Attrib V11    0.053557701453628176
#>     Attrib V12    0.005962124505865853
#>     Attrib V13    0.04679906029414129
#>     Attrib V14    0.13500625548728712
#>     Attrib V15    0.11124856701332629
#>     Attrib V16    0.03892154810955326
#>     Attrib V17    0.059624797749144
#>     Attrib V18    0.07233023234146949
#>     Attrib V19    0.022231823080544846
#>     Attrib V2    0.0587821999731359
#>     Attrib V20    0.12211351954505971
#>     Attrib V21    0.11989313227077575
#>     Attrib V22    0.07804153528883999
#>     Attrib V23    0.05870847036312367
#>     Attrib V24    -0.06615266615394101
#>     Attrib V25    -0.10263117846927292
#>     Attrib V26    -0.10905727400072912
#>     Attrib V27    -0.1477202300294764
#>     Attrib V28    -0.0018678853527296364
#>     Attrib V29    -0.03851253760360532
#>     Attrib V3    0.07986516459603671
#>     Attrib V30    -0.03951091236194134
#>     Attrib V31    -0.2846053728415094
#>     Attrib V32    -0.028366620626043657
#>     Attrib V33    0.09408409173593714
#>     Attrib V34    0.008145720766956854
#>     Attrib V35    0.08084082969175903
#>     Attrib V36    -0.06197634275996957
#>     Attrib V37    -0.17703934741759944
#>     Attrib V38    -0.0038517161343623943
#>     Attrib V39    0.13093344690037914
#>     Attrib V4    0.15251062057503753
#>     Attrib V40    0.046788778501614225
#>     Attrib V41    0.03385438481989023
#>     Attrib V42    0.04875203607515628
#>     Attrib V43    0.11464779431425128
#>     Attrib V44    0.10247465004706967
#>     Attrib V45    0.036523302301382614
#>     Attrib V46    -0.011484903111477764
#>     Attrib V47    0.02889254531090877
#>     Attrib V48    0.23363739501040845
#>     Attrib V49    0.13629044010630406
#>     Attrib V5    0.18373179243128296
#>     Attrib V50    -0.10257608125001744
#>     Attrib V51    0.08843400308660754
#>     Attrib V52    -0.04288501581974366
#>     Attrib V53    0.10083044624446934
#>     Attrib V54    0.1557040022588225
#>     Attrib V55    0.053649315634294654
#>     Attrib V56    0.12799125461281202
#>     Attrib V57    0.011206114197037077
#>     Attrib V58    0.1380836467524182
#>     Attrib V59    0.25314557918054775
#>     Attrib V6    -0.06913674962471526
#>     Attrib V60    0.1922416509221729
#>     Attrib V7    -0.001150542303624406
#>     Attrib V8    -0.09697868610383788
#>     Attrib V9    0.1219244723799108
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    0.003623765461115593
#>     Attrib V1    -0.4423645803842657
#>     Attrib V10    -0.2993885758928046
#>     Attrib V11    -0.5667905596273786
#>     Attrib V12    -0.39218561157655846
#>     Attrib V13    0.015417365444341436
#>     Attrib V14    0.4016896036274594
#>     Attrib V15    0.39394457972221997
#>     Attrib V16    -0.01970301311560936
#>     Attrib V17    -0.1520995526761358
#>     Attrib V18    -0.311713899857168
#>     Attrib V19    -0.0873365589513382
#>     Attrib V2    -0.059211596086057486
#>     Attrib V20    -0.32714277769225525
#>     Attrib V21    -0.10492683866175503
#>     Attrib V22    -0.582646027002274
#>     Attrib V23    -0.6283707163099266
#>     Attrib V24    -0.17112994667166767
#>     Attrib V25    0.1319976916947492
#>     Attrib V26    0.3226648655664421
#>     Attrib V27    0.42353233169491
#>     Attrib V28    0.01795705792274232
#>     Attrib V29    0.3532168327122981
#>     Attrib V3    0.21469878469400946
#>     Attrib V30    0.047112259917784005
#>     Attrib V31    0.9976628644774342
#>     Attrib V32    -0.34130802915412184
#>     Attrib V33    -0.47629047757601173
#>     Attrib V34    0.1428606286635739
#>     Attrib V35    0.04319483332056251
#>     Attrib V36    0.5871319505559769
#>     Attrib V37    0.8090899818517945
#>     Attrib V38    -0.16269822261248298
#>     Attrib V39    -0.36153213554618224
#>     Attrib V4    -0.26025581723567337
#>     Attrib V40    0.06202747448537157
#>     Attrib V41    -0.15902359789177684
#>     Attrib V42    -0.030614977860875414
#>     Attrib V43    -0.5770530149991886
#>     Attrib V44    -0.24668238484003235
#>     Attrib V45    0.21732841164408112
#>     Attrib V46    -0.06183544012551055
#>     Attrib V47    -0.207847474454904
#>     Attrib V48    -0.786547879078027
#>     Attrib V49    -0.40041212404046844
#>     Attrib V5    -0.23081055198170178
#>     Attrib V50    1.0000231160895416
#>     Attrib V51    -0.052358134675946966
#>     Attrib V52    0.07788165549368463
#>     Attrib V53    0.07769143005516138
#>     Attrib V54    -0.33019440146842854
#>     Attrib V55    0.14494217658563108
#>     Attrib V56    -0.07739263413493264
#>     Attrib V57    0.530191804954719
#>     Attrib V58    -0.3369963142473315
#>     Attrib V59    -0.2735336240944647
#>     Attrib V6    0.35372067423611186
#>     Attrib V60    -0.1828560903577488
#>     Attrib V7    0.07780527963889805
#>     Attrib V8    0.23868292373987587
#>     Attrib V9    -0.6017392195338168
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.09859953895217495
#>     Attrib V1    0.1377671465345415
#>     Attrib V10    0.0052987545672009365
#>     Attrib V11    0.03226044037879433
#>     Attrib V12    0.05555958621700842
#>     Attrib V13    -0.016860869571752073
#>     Attrib V14    0.07407181402275297
#>     Attrib V15    0.04975738279903696
#>     Attrib V16    0.08358758702719109
#>     Attrib V17    0.013344497309816303
#>     Attrib V18    0.050360719939053285
#>     Attrib V19    -0.03793656415726541
#>     Attrib V2    0.09170371885925076
#>     Attrib V20    0.008045805373579563
#>     Attrib V21    0.0022793523149696113
#>     Attrib V22    -0.05429750105055805
#>     Attrib V23    -0.04211176886271243
#>     Attrib V24    -0.00809541624099481
#>     Attrib V25    0.022486181867503854
#>     Attrib V26    -0.04557008536530397
#>     Attrib V27    -0.035048380843246955
#>     Attrib V28    -0.05419092319701831
#>     Attrib V29    -0.06329428440817259
#>     Attrib V3    0.1012711236716637
#>     Attrib V30    -0.027752816151383974
#>     Attrib V31    -0.1059755278213178
#>     Attrib V32    0.026830513938716757
#>     Attrib V33    0.05480827909401734
#>     Attrib V34    0.008299415515103162
#>     Attrib V35    0.08828403490347352
#>     Attrib V36    -0.009733633001842993
#>     Attrib V37    -0.026343344247723718
#>     Attrib V38    -0.003360202465721599
#>     Attrib V39    0.03927608577031436
#>     Attrib V4    0.157894856550098
#>     Attrib V40    0.00639999883070125
#>     Attrib V41    0.09316970290310321
#>     Attrib V42    0.07627034545490856
#>     Attrib V43    0.0671661317487786
#>     Attrib V44    0.06227981330557653
#>     Attrib V45    0.04415875790974768
#>     Attrib V46    0.05272186948630337
#>     Attrib V47    0.0282409398937473
#>     Attrib V48    0.05658436513930698
#>     Attrib V49    0.03214454349928615
#>     Attrib V5    0.11810230417722435
#>     Attrib V50    0.01564330015959337
#>     Attrib V51    0.053690749460533774
#>     Attrib V52    -0.015760446065635824
#>     Attrib V53    0.1112288213769918
#>     Attrib V54    0.06961488967328643
#>     Attrib V55    0.049957232752012505
#>     Attrib V56    0.12051125156679239
#>     Attrib V57    0.09755161049106446
#>     Attrib V58    0.12073723959556701
#>     Attrib V59    0.17946949323483002
#>     Attrib V6    0.06932420540061557
#>     Attrib V60    0.16728788087143698
#>     Attrib V7    0.026593815756639296
#>     Attrib V8    0.04890907108876304
#>     Attrib V9    0.11646777684683002
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.9315523280105293
#>     Attrib V1    1.5553491774948591
#>     Attrib V10    1.3748462216066384
#>     Attrib V11    1.2432352292571502
#>     Attrib V12    0.8133305849351847
#>     Attrib V13    -0.06223273621821677
#>     Attrib V14    -0.8037166666231701
#>     Attrib V15    -0.5472279249281574
#>     Attrib V16    -0.5087758432038145
#>     Attrib V17    -0.7546600643474044
#>     Attrib V18    -0.2578918887511527
#>     Attrib V19    -1.197523291107768
#>     Attrib V2    0.35916995362176096
#>     Attrib V20    -0.5647216886652471
#>     Attrib V21    -0.015893293298313498
#>     Attrib V22    0.140085129378984
#>     Attrib V23    0.16250540094658963
#>     Attrib V24    -0.4165523069202301
#>     Attrib V25    -1.1714336897327486
#>     Attrib V26    0.6936422200414264
#>     Attrib V27    1.5023249232776519
#>     Attrib V28    1.46921159826758
#>     Attrib V29    0.9865056549316171
#>     Attrib V3    -0.28776127616823083
#>     Attrib V30    0.7427262233076168
#>     Attrib V31    -0.7391048937095089
#>     Attrib V32    -0.49667244050319326
#>     Attrib V33    -0.19116863335569173
#>     Attrib V34    -0.5666533184034439
#>     Attrib V35    0.37478718318135634
#>     Attrib V36    -0.05185614497174704
#>     Attrib V37    0.4363130731609947
#>     Attrib V38    -0.06929532608922243
#>     Attrib V39    -0.4534047300239847
#>     Attrib V4    0.09360800114916848
#>     Attrib V40    -0.5666638487289081
#>     Attrib V41    0.6443024713359609
#>     Attrib V42    -0.35251823563317514
#>     Attrib V43    0.13472066772556035
#>     Attrib V44    0.018871694070200493
#>     Attrib V45    0.05408348755336333
#>     Attrib V46    0.7633892476935495
#>     Attrib V47    0.4569095820974979
#>     Attrib V48    0.7790678193350808
#>     Attrib V49    0.3776363737042881
#>     Attrib V5    0.6202693603105093
#>     Attrib V50    -0.41590269481529585
#>     Attrib V51    1.0668083012500054
#>     Attrib V52    0.6658868355192012
#>     Attrib V53    0.48257393767916434
#>     Attrib V54    0.6714118546574158
#>     Attrib V55    -0.5737620014500142
#>     Attrib V56    -1.0628462416771955
#>     Attrib V57    -0.24595935509362296
#>     Attrib V58    -0.2904476853374084
#>     Attrib V59    0.3028607091861386
#>     Attrib V6    0.2653556250305761
#>     Attrib V60    0.8680071580778633
#>     Attrib V7    0.23800821182692822
#>     Attrib V8    -0.5546828616312448
#>     Attrib V9    1.1076434718375199
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.07248595433887248
#>     Attrib V1    0.18572761414311958
#>     Attrib V10    0.11741975025394859
#>     Attrib V11    0.2168330406425631
#>     Attrib V12    0.08157684520370681
#>     Attrib V13    -0.02842637162470922
#>     Attrib V14    -0.19182847216359364
#>     Attrib V15    -0.18873169013554472
#>     Attrib V16    0.014679257649269436
#>     Attrib V17    0.043217447994642874
#>     Attrib V18    0.15840709150464713
#>     Attrib V19    0.0136326658157788
#>     Attrib V2    0.004425746683190551
#>     Attrib V20    0.10399878921663058
#>     Attrib V21    0.05526273194224635
#>     Attrib V22    0.2541994648571373
#>     Attrib V23    0.30012218535688445
#>     Attrib V24    0.1058423065083844
#>     Attrib V25    0.03869188242161022
#>     Attrib V26    2.3601338599832437E-4
#>     Attrib V27    -0.07158060011591032
#>     Attrib V28    0.14486653107630443
#>     Attrib V29    -0.0828882969961221
#>     Attrib V3    -0.13927265832561464
#>     Attrib V30    0.021402611541921038
#>     Attrib V31    -0.5588081913159831
#>     Attrib V32    0.08835653144715405
#>     Attrib V33    0.260476381888483
#>     Attrib V34    -0.00452863144821659
#>     Attrib V35    0.1757979973283028
#>     Attrib V36    -0.09917919530645242
#>     Attrib V37    -0.3853266369312069
#>     Attrib V38    0.04891229696716322
#>     Attrib V39    0.11928834041578225
#>     Attrib V4    0.1829085072800895
#>     Attrib V40    -0.028506286669070676
#>     Attrib V41    0.08864867328753083
#>     Attrib V42    -0.08452505696695392
#>     Attrib V43    0.25895041941161917
#>     Attrib V44    0.19057649422919154
#>     Attrib V45    -0.0847745612581893
#>     Attrib V46    0.04963852362782291
#>     Attrib V47    0.13559597201156684
#>     Attrib V48    0.544713714749737
#>     Attrib V49    0.22501255950311855
#>     Attrib V5    0.13756761539431359
#>     Attrib V50    -0.5133056982757236
#>     Attrib V51    0.04648269716861257
#>     Attrib V52    -0.07741525521331705
#>     Attrib V53    0.0424202688701301
#>     Attrib V54    0.29630107094322644
#>     Attrib V55    -0.12326064732434029
#>     Attrib V56    0.01022324292308127
#>     Attrib V57    -0.24607499996348187
#>     Attrib V58    0.09722855720864139
#>     Attrib V59    0.3103162030121251
#>     Attrib V6    -0.20419351565781602
#>     Attrib V60    0.3051642738496443
#>     Attrib V7    -0.0728232252100325
#>     Attrib V8    -0.24773531205375482
#>     Attrib V9    0.26938273894625436
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.6429866539328327
#>     Attrib V1    0.989570795998557
#>     Attrib V10    1.2263531043239277
#>     Attrib V11    1.1611510299795298
#>     Attrib V12    0.9032777781684945
#>     Attrib V13    0.32892253028744367
#>     Attrib V14    -0.6557844054852543
#>     Attrib V15    -0.5442611392784127
#>     Attrib V16    -0.3198598661854377
#>     Attrib V17    -0.4306843902844219
#>     Attrib V18    0.21444944346267708
#>     Attrib V19    -0.8083884610095259
#>     Attrib V2    0.23582031135819947
#>     Attrib V20    -0.43804163999798496
#>     Attrib V21    -0.03206073052934869
#>     Attrib V22    0.44732133168831445
#>     Attrib V23    0.830705638100658
#>     Attrib V24    0.06777865761710712
#>     Attrib V25    -0.5764234392931742
#>     Attrib V26    1.0540440240142281
#>     Attrib V27    1.6647690719372625
#>     Attrib V28    1.6640608249322522
#>     Attrib V29    0.8895450905767796
#>     Attrib V3    -0.4834509910406138
#>     Attrib V30    0.5475003418945477
#>     Attrib V31    -0.6957000280590857
#>     Attrib V32    -0.3875464025809645
#>     Attrib V33    -0.19830051850975158
#>     Attrib V34    -0.6432782514195836
#>     Attrib V35    0.19551474130400803
#>     Attrib V36    -0.19523539022166858
#>     Attrib V37    0.1954884003728474
#>     Attrib V38    -0.11558688820543261
#>     Attrib V39    -0.29865651171889385
#>     Attrib V4    0.12969734158685783
#>     Attrib V40    -0.4052364880755548
#>     Attrib V41    0.807192219263682
#>     Attrib V42    -0.21287014665632778
#>     Attrib V43    0.42009941317023963
#>     Attrib V44    0.28246349671752147
#>     Attrib V45    0.0785897894920448
#>     Attrib V46    0.6335517332340412
#>     Attrib V47    0.5127136917297683
#>     Attrib V48    0.8449327657528323
#>     Attrib V49    0.5933361365959902
#>     Attrib V5    0.6414303546993948
#>     Attrib V50    -0.4644100822600441
#>     Attrib V51    1.1935175353576153
#>     Attrib V52    0.660011616198137
#>     Attrib V53    0.6737405498103344
#>     Attrib V54    0.7440166456576114
#>     Attrib V55    -0.20608374068511923
#>     Attrib V56    -0.8367859929217
#>     Attrib V57    -0.620937067386268
#>     Attrib V58    -0.14713081575008646
#>     Attrib V59    0.06898559932069669
#>     Attrib V6    0.2369664280267082
#>     Attrib V60    0.35093186865000864
#>     Attrib V7    0.12977732555540583
#>     Attrib V8    -0.33881057765303013
#>     Attrib V9    1.019301758594396
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    0.14006780052950013
#>     Attrib V1    -0.5101595119571714
#>     Attrib V10    -0.2998510619244205
#>     Attrib V11    -0.7088542522817246
#>     Attrib V12    -0.4218100299075076
#>     Attrib V13    0.051491499457437265
#>     Attrib V14    0.4687252937402474
#>     Attrib V15    0.39008311561187287
#>     Attrib V16    -0.057256285042094394
#>     Attrib V17    -0.3724565786655664
#>     Attrib V18    -0.42732154162020114
#>     Attrib V19    -0.22094189294061278
#>     Attrib V2    -0.17113185923710725
#>     Attrib V20    -0.4526725458221217
#>     Attrib V21    -0.1630249959603665
#>     Attrib V22    -0.8308651127306366
#>     Attrib V23    -0.878382453409335
#>     Attrib V24    -0.25387650363983694
#>     Attrib V25    -0.01979327322417963
#>     Attrib V26    0.49057171019721857
#>     Attrib V27    0.743062500528555
#>     Attrib V28    0.22400972141670147
#>     Attrib V29    0.652590740134677
#>     Attrib V3    0.15260884296878544
#>     Attrib V30    0.2849615084600802
#>     Attrib V31    1.5001886150415147
#>     Attrib V32    -0.5752886032537433
#>     Attrib V33    -0.6616729894613337
#>     Attrib V34    0.2305395827033516
#>     Attrib V35    0.11237270881420756
#>     Attrib V36    0.844761001813128
#>     Attrib V37    1.3479244092411675
#>     Attrib V38    -0.08776767626312872
#>     Attrib V39    -0.5312743644539241
#>     Attrib V4    -0.37103198628578765
#>     Attrib V40    0.004465728201512252
#>     Attrib V41    -0.10944397399560304
#>     Attrib V42    -0.22795751366489167
#>     Attrib V43    -0.9131249105045811
#>     Attrib V44    -0.3752807309375439
#>     Attrib V45    0.42508775390087167
#>     Attrib V46    0.03716777668009565
#>     Attrib V47    -0.2783639659677193
#>     Attrib V48    -1.1124576476181214
#>     Attrib V49    -0.5522900244367828
#>     Attrib V5    -0.3072356193879384
#>     Attrib V50    1.3186912751609559
#>     Attrib V51    0.03583776180217833
#>     Attrib V52    0.2922743655013875
#>     Attrib V53    0.20326666553312145
#>     Attrib V54    -0.5168314492490357
#>     Attrib V55    0.07519527236987962
#>     Attrib V56    -0.38915572846586305
#>     Attrib V57    0.6992864507229292
#>     Attrib V58    -0.5425598822808477
#>     Attrib V59    -0.5300177160945178
#>     Attrib V6    0.5365371113995391
#>     Attrib V60    -0.38678802180344884
#>     Attrib V7    0.07689067132531276
#>     Attrib V8    0.2936378590053206
#>     Attrib V9    -0.7108607406345326
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.09269683531309833
#>     Attrib V1    0.230407457655209
#>     Attrib V10    0.12532683823527818
#>     Attrib V11    0.3105512155108581
#>     Attrib V12    0.16319362832574616
#>     Attrib V13    -0.11473836660019772
#>     Attrib V14    -0.20725508328995035
#>     Attrib V15    -0.24152702267691248
#>     Attrib V16    0.08580750158372298
#>     Attrib V17    0.2878773835002656
#>     Attrib V18    0.3894654946004395
#>     Attrib V19    0.17804298241139235
#>     Attrib V2    -0.010356542944805772
#>     Attrib V20    0.38079291322489967
#>     Attrib V21    0.1436950211264213
#>     Attrib V22    0.49806722375899365
#>     Attrib V23    0.5346810952888872
#>     Attrib V24    0.12350756962463699
#>     Attrib V25    0.08262979790583856
#>     Attrib V26    -0.2927289575068596
#>     Attrib V27    -0.4269226618775583
#>     Attrib V28    -0.06293740053688261
#>     Attrib V29    -0.420081277358334
#>     Attrib V3    -0.18231312730507124
#>     Attrib V30    -0.1770670789154396
#>     Attrib V31    -1.0615702763846016
#>     Attrib V32    0.21739182845204144
#>     Attrib V33    0.45352326973497153
#>     Attrib V34    0.02829710560462708
#>     Attrib V35    0.2272061685221728
#>     Attrib V36    -0.22390876641292706
#>     Attrib V37    -0.6934001864445272
#>     Attrib V38    0.13117356234529556
#>     Attrib V39    0.29763463802693446
#>     Attrib V4    0.20537295878760362
#>     Attrib V40    0.05250486003779282
#>     Attrib V41    0.07791584943082744
#>     Attrib V42    0.06359356618743911
#>     Attrib V43    0.47196011628768947
#>     Attrib V44    0.28286431391120376
#>     Attrib V45    -0.14130766866202238
#>     Attrib V46    -0.06043603969666631
#>     Attrib V47    0.13669573889251624
#>     Attrib V48    0.7392955504081805
#>     Attrib V49    0.2861592262442256
#>     Attrib V5    0.2060076763551076
#>     Attrib V50    -0.7694322428491897
#>     Attrib V51    0.017214248100064836
#>     Attrib V52    -0.24797216805139283
#>     Attrib V53    -0.14066177127911095
#>     Attrib V54    0.47651361881347126
#>     Attrib V55    -0.05976857573324715
#>     Attrib V56    0.23288655060298327
#>     Attrib V57    -0.3790368289908688
#>     Attrib V58    0.32961851760578775
#>     Attrib V59    0.4044497594579051
#>     Attrib V6    -0.273261740733188
#>     Attrib V60    0.37702958839308803
#>     Attrib V7    -0.07721794517244801
#>     Attrib V8    -0.20688710360192947
#>     Attrib V9    0.4230998103554468
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.17054120266047823
#>     Attrib V1    0.20239014801037516
#>     Attrib V10    0.2094580357094733
#>     Attrib V11    0.517456550193092
#>     Attrib V12    0.26769037609319585
#>     Attrib V13    -0.025335429785414636
#>     Attrib V14    -0.3070745422645602
#>     Attrib V15    -0.4411277339014399
#>     Attrib V16    -0.08297545209391262
#>     Attrib V17    0.06574015340110832
#>     Attrib V18    0.37764735628426777
#>     Attrib V19    0.12174471454440451
#>     Attrib V2    -0.015892046181854046
#>     Attrib V20    0.1589912558528548
#>     Attrib V21    -0.051864504321403465
#>     Attrib V22    0.4726183721987511
#>     Attrib V23    0.6671066013485845
#>     Attrib V24    0.12197601177594726
#>     Attrib V25    -0.022103913618805968
#>     Attrib V26    -0.0016230650510047693
#>     Attrib V27    0.1340662526724208
#>     Attrib V28    0.4925481054419252
#>     Attrib V29    0.054054051962044394
#>     Attrib V3    -0.3049470131242775
#>     Attrib V30    0.05398584612001414
#>     Attrib V31    -0.9758049615285863
#>     Attrib V32    0.08905562301498159
#>     Attrib V33    0.3991576228289954
#>     Attrib V34    -0.007523921350912703
#>     Attrib V35    0.31627115760608976
#>     Attrib V36    -0.30305144067527107
#>     Attrib V37    -0.7017490296682871
#>     Attrib V38    -6.07919611840799E-4
#>     Attrib V39    0.1457824003875372
#>     Attrib V4    0.19306605150388143
#>     Attrib V40    0.006705233009496401
#>     Attrib V41    0.24007500984479574
#>     Attrib V42    0.07000071245337226
#>     Attrib V43    0.6516470401613482
#>     Attrib V44    0.23996891120612687
#>     Attrib V45    -0.24557515824165302
#>     Attrib V46    0.09970748217937794
#>     Attrib V47    0.2745418211345621
#>     Attrib V48    0.8956143692943218
#>     Attrib V49    0.35691252329568246
#>     Attrib V5    0.26456274269092134
#>     Attrib V50    -0.8970525556258234
#>     Attrib V51    0.12072891684521951
#>     Attrib V52    0.023415666675527996
#>     Attrib V53    0.06375171584905177
#>     Attrib V54    0.4236271196941108
#>     Attrib V55    -0.17913085379628127
#>     Attrib V56    0.07393399177682587
#>     Attrib V57    -0.5831378348291595
#>     Attrib V58    0.22811665034023818
#>     Attrib V59    0.4359053502239592
#>     Attrib V6    -0.2886424218120495
#>     Attrib V60    0.36114652413302306
#>     Attrib V7    -0.18953738778824042
#>     Attrib V8    -0.35335651800428863
#>     Attrib V9    0.48781683737544607
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.19636332527364952
#>     Attrib V1    0.1094804000408085
#>     Attrib V10    -5.84080778038269E-4
#>     Attrib V11    0.025976694488260583
#>     Attrib V12    0.007396568750356873
#>     Attrib V13    0.07080110595087352
#>     Attrib V14    0.0866596875494304
#>     Attrib V15    0.0337641248894652
#>     Attrib V16    0.003689489711110786
#>     Attrib V17    0.049351883804754915
#>     Attrib V18    0.02942139782198478
#>     Attrib V19    -0.03067509908628027
#>     Attrib V2    0.06235893695326459
#>     Attrib V20    0.03568626164117074
#>     Attrib V21    -0.007635486869970154
#>     Attrib V22    -0.0598642053899601
#>     Attrib V23    -0.00849977159247907
#>     Attrib V24    -0.034088633932997575
#>     Attrib V25    0.015240384112057243
#>     Attrib V26    -0.07782692187520532
#>     Attrib V27    -0.022734273556278096
#>     Attrib V28    -0.04598376195146958
#>     Attrib V29    -0.029075331137323582
#>     Attrib V3    0.1315438604324614
#>     Attrib V30    -0.01933773759881907
#>     Attrib V31    -0.16568506331100757
#>     Attrib V32    -0.006109964399466991
#>     Attrib V33    0.027633286979501934
#>     Attrib V34    0.05860476153688287
#>     Attrib V35    0.06517108371442401
#>     Attrib V36    -0.005090836778982535
#>     Attrib V37    -0.03327549283109632
#>     Attrib V38    0.017510950999453694
#>     Attrib V39    0.11167356056803626
#>     Attrib V4    0.14396836470720598
#>     Attrib V40    0.05472414394006396
#>     Attrib V41    0.053974678098506784
#>     Attrib V42    0.04208014704834411
#>     Attrib V43    0.02939587063277643
#>     Attrib V44    0.0542641961618027
#>     Attrib V45    -0.008019653758390028
#>     Attrib V46    0.06738579688125443
#>     Attrib V47    0.08130715434801768
#>     Attrib V48    0.0989566271289744
#>     Attrib V49    0.09355550028140529
#>     Attrib V5    0.14167643462519466
#>     Attrib V50    -0.03818794433084351
#>     Attrib V51    0.03808767216367579
#>     Attrib V52    -0.03247404707629957
#>     Attrib V53    0.07898732870484186
#>     Attrib V54    0.08789564588739446
#>     Attrib V55    0.06762708147822678
#>     Attrib V56    0.09906535767922561
#>     Attrib V57    0.0788229797031774
#>     Attrib V58    0.0951251559894404
#>     Attrib V59    0.19112427116373806
#>     Attrib V6    0.047866452372693755
#>     Attrib V60    0.20279671478865233
#>     Attrib V7    0.060848785511149625
#>     Attrib V8    -0.03577460164924257
#>     Attrib V9    0.07081869766524242
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.05535480810896437
#>     Attrib V1    0.26131444468725123
#>     Attrib V10    0.6304116011909737
#>     Attrib V11    0.7096786681434556
#>     Attrib V12    0.4109246962009096
#>     Attrib V13    -0.14568105339470938
#>     Attrib V14    -0.5524697847459364
#>     Attrib V15    -0.5519137461855682
#>     Attrib V16    -0.3332476064962696
#>     Attrib V17    -0.2203366193631742
#>     Attrib V18    0.06683262085766947
#>     Attrib V19    -0.28684170175355933
#>     Attrib V2    -0.09652237866534168
#>     Attrib V20    -0.22561704097670202
#>     Attrib V21    -0.35580716754595326
#>     Attrib V22    0.1294751393864607
#>     Attrib V23    0.4500594176815347
#>     Attrib V24    0.05230158367141755
#>     Attrib V25    0.03333794878376613
#>     Attrib V26    0.31739954150478417
#>     Attrib V27    0.36462889610409893
#>     Attrib V28    0.5651556393738464
#>     Attrib V29    -0.026880572756593724
#>     Attrib V3    -0.35511549522825303
#>     Attrib V30    0.2313570781975737
#>     Attrib V31    -0.531460465898296
#>     Attrib V32    0.21642011464865463
#>     Attrib V33    0.39803830107769195
#>     Attrib V34    0.04365061236512639
#>     Attrib V35    0.40923835571272227
#>     Attrib V36    -0.2863819836972106
#>     Attrib V37    -0.5786251512451603
#>     Attrib V38    -0.22307398073206472
#>     Attrib V39    -0.08329484913526257
#>     Attrib V4    0.10502546616105507
#>     Attrib V40    -0.26276792471280785
#>     Attrib V41    0.08613216976316801
#>     Attrib V42    -0.1507637192975779
#>     Attrib V43    0.34921068649962705
#>     Attrib V44    0.18904090506518056
#>     Attrib V45    -0.23725758636725677
#>     Attrib V46    0.18730640179405803
#>     Attrib V47    0.3760654837706048
#>     Attrib V48    0.9688982119035113
#>     Attrib V49    0.44791660900975816
#>     Attrib V5    0.20929670067420217
#>     Attrib V50    -0.6681421201725569
#>     Attrib V51    0.3963764243193346
#>     Attrib V52    0.23835472722960546
#>     Attrib V53    -0.051616212271819874
#>     Attrib V54    0.3712384696664261
#>     Attrib V55    -0.08121239215544061
#>     Attrib V56    -0.13327994704975757
#>     Attrib V57    -0.564437550897203
#>     Attrib V58    0.15298873072684885
#>     Attrib V59    0.18598196223677396
#>     Attrib V6    -0.29229751706816415
#>     Attrib V60    0.44893744061252117
#>     Attrib V7    -0.2504151900547259
#>     Attrib V8    -0.31272915601414136
#>     Attrib V9    0.7037313224803949
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.37580154077541217
#>     Attrib V1    -0.6724288955036881
#>     Attrib V10    -0.3189293364144914
#>     Attrib V11    -0.5591742544798879
#>     Attrib V12    -0.370824347711228
#>     Attrib V13    0.20474021356954578
#>     Attrib V14    0.9080197992943264
#>     Attrib V15    1.0637030860159689
#>     Attrib V16    0.5115106474264202
#>     Attrib V17    0.12495288452005682
#>     Attrib V18    -0.4352093846710068
#>     Attrib V19    -0.02322663822304591
#>     Attrib V2    -0.053608687783998236
#>     Attrib V20    -0.43758527422862326
#>     Attrib V21    -0.33709381621686607
#>     Attrib V22    -1.0097132572316165
#>     Attrib V23    -1.3209696309608416
#>     Attrib V24    -0.35697333805922093
#>     Attrib V25    0.2847941180808209
#>     Attrib V26    0.9415436085650272
#>     Attrib V27    0.5182978155614191
#>     Attrib V28    -0.5017277384254806
#>     Attrib V29    -0.009180049832525631
#>     Attrib V3    0.4787164249503438
#>     Attrib V30    -0.14198482602487425
#>     Attrib V31    1.0855653575629431
#>     Attrib V32    -0.9504272574651705
#>     Attrib V33    -1.0293512052951341
#>     Attrib V34    -0.1492336252930582
#>     Attrib V35    -0.5260893409262448
#>     Attrib V36    0.0753202777077389
#>     Attrib V37    0.628197601725778
#>     Attrib V38    -0.9250731417212792
#>     Attrib V39    -1.0966489773803745
#>     Attrib V4    -0.19398298568699035
#>     Attrib V40    -0.47490276598530295
#>     Attrib V41    -0.4924474193957569
#>     Attrib V42    -0.19186147814359739
#>     Attrib V43    -1.1978100796202715
#>     Attrib V44    -0.8067190911377905
#>     Attrib V45    0.22909391978183005
#>     Attrib V46    -0.004005973703623776
#>     Attrib V47    -0.0507160882169995
#>     Attrib V48    -0.669190118114954
#>     Attrib V49    -0.3360196315089154
#>     Attrib V5    -0.20067354610631094
#>     Attrib V50    1.3659176786739269
#>     Attrib V51    0.49528826792508324
#>     Attrib V52    0.37643615083285065
#>     Attrib V53    0.36404452296172995
#>     Attrib V54    -0.27115937699117215
#>     Attrib V55    0.7763937404373127
#>     Attrib V56    0.015630349737322684
#>     Attrib V57    0.9113226800937276
#>     Attrib V58    -0.16700821982287228
#>     Attrib V59    -0.23964460786739084
#>     Attrib V6    0.09604087538662193
#>     Attrib V60    -0.18684620345051572
#>     Attrib V7    -0.36357199811653385
#>     Attrib V8    0.3964313733007918
#>     Attrib V9    -0.6544799859609083
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.16065373790847665
#>     Attrib V1    -0.09493750111209268
#>     Attrib V10    -0.04559824142972733
#>     Attrib V11    -0.12890505885601444
#>     Attrib V12    -0.06891284147618898
#>     Attrib V13    0.05367306696107531
#>     Attrib V14    0.05116746811985322
#>     Attrib V15    0.0055045020135264956
#>     Attrib V16    0.05042534150074552
#>     Attrib V17    0.05368004274880935
#>     Attrib V18    0.03072771314866433
#>     Attrib V19    0.03308984917881497
#>     Attrib V2    0.015224931949133848
#>     Attrib V20    -0.11443827048464852
#>     Attrib V21    -0.0759539142711494
#>     Attrib V22    -0.1293605385523566
#>     Attrib V23    -0.1357916295411047
#>     Attrib V24    -0.0129579423498908
#>     Attrib V25    0.022701583572195122
#>     Attrib V26    -0.053734853785135255
#>     Attrib V27    -0.07851202895480697
#>     Attrib V28    -0.06288183850861788
#>     Attrib V29    -0.019603513954428227
#>     Attrib V3    0.1462533211619575
#>     Attrib V30    -0.07686924291043569
#>     Attrib V31    0.1909424967797127
#>     Attrib V32    0.01602626775161636
#>     Attrib V33    -0.04363674004611383
#>     Attrib V34    0.09662979029588901
#>     Attrib V35    0.05220854804792089
#>     Attrib V36    0.19331372192343305
#>     Attrib V37    0.2864372391966899
#>     Attrib V38    0.03167911509818715
#>     Attrib V39    -0.014144733683338863
#>     Attrib V4    0.024623496531479383
#>     Attrib V40    0.08974660793571317
#>     Attrib V41    0.11191519631465498
#>     Attrib V42    0.15804975190813225
#>     Attrib V43    -0.03915847347631681
#>     Attrib V44    -0.023608851583737534
#>     Attrib V45    0.07419401912908036
#>     Attrib V46    0.03197460562344192
#>     Attrib V47    -0.01680744462677897
#>     Attrib V48    -0.21706267529229176
#>     Attrib V49    -0.0979938646386318
#>     Attrib V5    5.47137315050299E-4
#>     Attrib V50    0.29941913477280674
#>     Attrib V51    0.049236088158969224
#>     Attrib V52    0.0772337244874081
#>     Attrib V53    0.11298925433285431
#>     Attrib V54    -0.09185602172285268
#>     Attrib V55    0.09422437019399447
#>     Attrib V56    0.10608937606622926
#>     Attrib V57    0.2370114303844532
#>     Attrib V58    0.07425647543533592
#>     Attrib V59    -0.06798243318945306
#>     Attrib V6    0.1740057921466021
#>     Attrib V60    -0.01841059444766749
#>     Attrib V7    0.07441449388940832
#>     Attrib V8    0.14315564034013822
#>     Attrib V9    -0.020133459164482826
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.06299081642023556
#>     Attrib V1    0.21939582690471818
#>     Attrib V10    0.03793517990938194
#>     Attrib V11    0.07604382326992724
#>     Attrib V12    -0.028884141883735438
#>     Attrib V13    -0.04192643980310163
#>     Attrib V14    0.0326857871487843
#>     Attrib V15    0.10100716756033208
#>     Attrib V16    0.08065720278378453
#>     Attrib V17    0.10659266620474195
#>     Attrib V18    0.13222174624054556
#>     Attrib V19    0.06088166804056491
#>     Attrib V2    0.1253886692074735
#>     Attrib V20    0.13387025703078484
#>     Attrib V21    0.0953646506151514
#>     Attrib V22    0.21725950423309656
#>     Attrib V23    0.0904176821720827
#>     Attrib V24    -0.001712691959368676
#>     Attrib V25    -0.08073355404925929
#>     Attrib V26    -0.1923410856097913
#>     Attrib V27    -0.23439992688857594
#>     Attrib V28    -0.13808964578007746
#>     Attrib V29    -0.20720852489974378
#>     Attrib V3    -0.0021176317670874934
#>     Attrib V30    -0.06707456383561926
#>     Attrib V31    -0.3514707817291799
#>     Attrib V32    -0.021810480515050627
#>     Attrib V33    0.1638523198252145
#>     Attrib V34    -0.04191380633103466
#>     Attrib V35    0.10365530723969804
#>     Attrib V36    -0.1105124659804386
#>     Attrib V37    -0.2727541830334029
#>     Attrib V38    0.07173270590769937
#>     Attrib V39    0.15907089715358494
#>     Attrib V4    0.1718439418050555
#>     Attrib V40    -0.004279886690924471
#>     Attrib V41    0.06762013023860053
#>     Attrib V42    -0.003599923912506918
#>     Attrib V43    0.20350775843221294
#>     Attrib V44    0.1176953860834827
#>     Attrib V45    -0.027888084137745944
#>     Attrib V46    -0.04741836650466502
#>     Attrib V47    -0.018715776450720083
#>     Attrib V48    0.2913510083002591
#>     Attrib V49    0.07517880117468548
#>     Attrib V5    0.1299183909349944
#>     Attrib V50    -0.21420785230717598
#>     Attrib V51    0.028133544127631138
#>     Attrib V52    -0.12832884434070768
#>     Attrib V53    0.01241153411169623
#>     Attrib V54    0.19924773935381976
#>     Attrib V55    0.07188885344986834
#>     Attrib V56    0.13936727265330012
#>     Attrib V57    -0.00551441911462004
#>     Attrib V58    0.13389393220395887
#>     Attrib V59    0.2358899037748321
#>     Attrib V6    -0.0646185273098818
#>     Attrib V60    0.24326889022457482
#>     Attrib V7    -0.03290855165722164
#>     Attrib V8    -0.04885142668806127
#>     Attrib V9    0.13330493571766877
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.19898368845689085
#>     Attrib V1    0.11014972571408588
#>     Attrib V10    0.04249369574958
#>     Attrib V11    0.024359822950661813
#>     Attrib V12    -0.011717014553971311
#>     Attrib V13    -1.8991783227780976E-5
#>     Attrib V14    0.07487507326737582
#>     Attrib V15    0.028213275183180318
#>     Attrib V16    0.03911083784514516
#>     Attrib V17    -0.002439542061729784
#>     Attrib V18    0.061144721807993074
#>     Attrib V19    -0.06875497155467641
#>     Attrib V2    0.08635652290104275
#>     Attrib V20    0.008865816625552619
#>     Attrib V21    -0.0021787909205791293
#>     Attrib V22    -0.04939363968859728
#>     Attrib V23    -0.04957019949225712
#>     Attrib V24    -0.07337672504540106
#>     Attrib V25    -0.008757025321361469
#>     Attrib V26    -0.02201318233641149
#>     Attrib V27    -0.0459023783275782
#>     Attrib V28    -0.037984610618792845
#>     Attrib V29    -0.06289710967819565
#>     Attrib V3    0.132745317822512
#>     Attrib V30    -0.06651692093299041
#>     Attrib V31    -0.11798593925758431
#>     Attrib V32    -0.01781966110771995
#>     Attrib V33    0.031309344832576656
#>     Attrib V34    0.05506592710852086
#>     Attrib V35    0.060110662748924064
#>     Attrib V36    0.08132995094649703
#>     Attrib V37    -0.039447139638697636
#>     Attrib V38    0.007811898243842552
#>     Attrib V39    0.09558831813336235
#>     Attrib V4    0.09471157466162825
#>     Attrib V40    0.016887961774083037
#>     Attrib V41    0.005989303631261575
#>     Attrib V42    0.023486547054299183
#>     Attrib V43    0.053764534412733656
#>     Attrib V44    0.09179721393018613
#>     Attrib V45    -0.017413311362993903
#>     Attrib V46    0.02605568250779655
#>     Attrib V47    0.08321474558456977
#>     Attrib V48    0.10605787655048045
#>     Attrib V49    0.08793293016857055
#>     Attrib V5    0.11294180065705625
#>     Attrib V50    -0.0369796868426784
#>     Attrib V51    0.10805407271418635
#>     Attrib V52    -0.020813925294724964
#>     Attrib V53    0.08287681208195434
#>     Attrib V54    0.06203436357777664
#>     Attrib V55    0.10616961215882675
#>     Attrib V56    0.1217290576578747
#>     Attrib V57    0.03565909129555965
#>     Attrib V58    0.10432030280076705
#>     Attrib V59    0.15836269173842873
#>     Attrib V6    0.005834316262750979
#>     Attrib V60    0.18872235831576337
#>     Attrib V7    0.0566479352507476
#>     Attrib V8    0.04262007264760335
#>     Attrib V9    0.08864956672572959
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.45781126694801594
#>     Attrib V1    0.6782714123357567
#>     Attrib V10    1.0623010928798227
#>     Attrib V11    0.8849358706568766
#>     Attrib V12    0.7923235139112181
#>     Attrib V13    -0.021680020996487314
#>     Attrib V14    -0.6694619693257835
#>     Attrib V15    -0.5205756244478914
#>     Attrib V16    -0.42219220727287793
#>     Attrib V17    -0.4873318063759912
#>     Attrib V18    -0.08130675221736783
#>     Attrib V19    -0.6578742392438582
#>     Attrib V2    0.035986951193868126
#>     Attrib V20    -0.5404229630734227
#>     Attrib V21    -0.38769355151432455
#>     Attrib V22    0.10977587389641628
#>     Attrib V23    0.2959558067930766
#>     Attrib V24    -0.0017206309535485415
#>     Attrib V25    -0.2692186487435797
#>     Attrib V26    0.6821243210601022
#>     Attrib V27    1.1251018987985106
#>     Attrib V28    1.1492102872145373
#>     Attrib V29    0.3806592806656583
#>     Attrib V3    -0.41094732255336763
#>     Attrib V30    0.38288763967131817
#>     Attrib V31    -0.4639695516142048
#>     Attrib V32    -0.15469619982350788
#>     Attrib V33    0.11077815413381069
#>     Attrib V34    -0.109879403236405
#>     Attrib V35    0.554294352145269
#>     Attrib V36    -0.009139517042316851
#>     Attrib V37    0.02845859081746303
#>     Attrib V38    -0.17300813316125765
#>     Attrib V39    -0.39576339793237986
#>     Attrib V4    0.17806358903861544
#>     Attrib V40    -0.46399335356215293
#>     Attrib V41    0.36351731322281966
#>     Attrib V42    -0.3361801503396236
#>     Attrib V43    0.0709457856716422
#>     Attrib V44    0.014389490948997554
#>     Attrib V45    0.00950855966071671
#>     Attrib V46    0.49495479574232926
#>     Attrib V47    0.3920420167816256
#>     Attrib V48    0.8416032194248343
#>     Attrib V49    0.4765310882355956
#>     Attrib V5    0.5489982287806088
#>     Attrib V50    -0.5180998942727943
#>     Attrib V51    0.8349492556769783
#>     Attrib V52    0.5824594476954744
#>     Attrib V53    0.3324196339754741
#>     Attrib V54    0.5952856692563473
#>     Attrib V55    -0.2996022266166661
#>     Attrib V56    -0.6968612150255362
#>     Attrib V57    -0.3841876294488004
#>     Attrib V58    -0.16389951930359611
#>     Attrib V59    0.20984195920264515
#>     Attrib V6    0.09829311650795594
#>     Attrib V60    0.7743409627983737
#>     Attrib V7    0.03467928889183734
#>     Attrib V8    -0.5098923648039382
#>     Attrib V9    0.8560605457984292
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.27021707751805357
#>     Attrib V1    0.40589046247989824
#>     Attrib V10    0.611786981412534
#>     Attrib V11    0.6355184327438644
#>     Attrib V12    0.43121036958930764
#>     Attrib V13    0.010994762743367206
#>     Attrib V14    -0.2550864851688154
#>     Attrib V15    -0.3613785570835199
#>     Attrib V16    -0.2782306123907043
#>     Attrib V17    -0.27054038289830684
#>     Attrib V18    0.15403327431275127
#>     Attrib V19    -0.20010678314045036
#>     Attrib V2    -0.04118010476920664
#>     Attrib V20    -0.09716100188399668
#>     Attrib V21    -0.1445223580771589
#>     Attrib V22    0.2303731053846979
#>     Attrib V23    0.49162338191637284
#>     Attrib V24    -0.102643305950057
#>     Attrib V25    -0.4172690617209669
#>     Attrib V26    0.24377917807940291
#>     Attrib V27    0.844188232807423
#>     Attrib V28    1.1688177938855302
#>     Attrib V29    0.7494155602457843
#>     Attrib V3    -0.3716807001300413
#>     Attrib V30    0.49709587800255767
#>     Attrib V31    -0.5865266352979275
#>     Attrib V32    -0.10392425316303783
#>     Attrib V33    0.06695764064883003
#>     Attrib V34    -0.24866808378302072
#>     Attrib V35    0.21658089697458108
#>     Attrib V36    -0.23346894538041402
#>     Attrib V37    -0.4060131108157223
#>     Attrib V38    -0.10828987349723769
#>     Attrib V39    -0.053901225155913425
#>     Attrib V4    0.20565030403923362
#>     Attrib V40    -0.2571552037156401
#>     Attrib V41    0.26160737062365874
#>     Attrib V42    -0.08482018496427203
#>     Attrib V43    0.5202460672558373
#>     Attrib V44    0.2439530645252559
#>     Attrib V45    -0.26807542066132223
#>     Attrib V46    0.07550474158448699
#>     Attrib V47    0.27074433217153665
#>     Attrib V48    0.8140096102066974
#>     Attrib V49    0.41170342054555426
#>     Attrib V5    0.4065102859262987
#>     Attrib V50    -0.5480349003928869
#>     Attrib V51    0.5365307019777223
#>     Attrib V52    0.364954946497983
#>     Attrib V53    0.1889603557076573
#>     Attrib V54    0.41701638364586724
#>     Attrib V55    -0.07096318924641785
#>     Attrib V56    -0.22920244963664174
#>     Attrib V57    -0.5309760411055919
#>     Attrib V58    0.14358215690274154
#>     Attrib V59    0.3830142940937166
#>     Attrib V6    -0.14983531430984626
#>     Attrib V60    0.48779210456869015
#>     Attrib V7    -0.21459489139506857
#>     Attrib V8    -0.4251286787326881
#>     Attrib V9    0.539424975761365
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.21928539607953498
#>     Attrib V1    -1.222968223113989
#>     Attrib V10    -0.5253429774406009
#>     Attrib V11    -1.1266088049478054
#>     Attrib V12    -0.6545508112792915
#>     Attrib V13    0.09274321088069873
#>     Attrib V14    0.5728046523368036
#>     Attrib V15    0.2221682580680078
#>     Attrib V16    6.307055463396043E-4
#>     Attrib V17    0.09190277417726934
#>     Attrib V18    0.33244328826128683
#>     Attrib V19    -0.2917560392091673
#>     Attrib V2    -0.6251069585413255
#>     Attrib V20    -1.0731123164976162
#>     Attrib V21    -0.3038102803852234
#>     Attrib V22    -0.5866062148641207
#>     Attrib V23    -0.9452748661853136
#>     Attrib V24    -0.48005651415321643
#>     Attrib V25    0.08085308369224359
#>     Attrib V26    0.32285971366262817
#>     Attrib V27    0.35399857595635675
#>     Attrib V28    -0.17833420591537572
#>     Attrib V29    0.7427464724957457
#>     Attrib V3    -0.15945896943816007
#>     Attrib V30    0.4793477527493257
#>     Attrib V31    2.1874308279181194
#>     Attrib V32    -0.147681366495499
#>     Attrib V33    -0.2781337873583385
#>     Attrib V34    0.39442025067130543
#>     Attrib V35    0.12304968826338118
#>     Attrib V36    1.4348161398724002
#>     Attrib V37    1.9397013484466794
#>     Attrib V38    -0.5083702539944859
#>     Attrib V39    -1.0570796115996144
#>     Attrib V4    -0.2532748508607637
#>     Attrib V40    0.036424875516761435
#>     Attrib V41    0.25855014370683344
#>     Attrib V42    -0.2637286247514277
#>     Attrib V43    -1.0056468631197983
#>     Attrib V44    -0.39982659731716175
#>     Attrib V45    0.17723644100337427
#>     Attrib V46    -0.26280524761033847
#>     Attrib V47    -0.357703432127322
#>     Attrib V48    -0.8783228837240665
#>     Attrib V49    -0.5549032176458543
#>     Attrib V5    -0.3895321750643127
#>     Attrib V50    1.6979447443402707
#>     Attrib V51    0.3547142482717228
#>     Attrib V52    0.521845804666278
#>     Attrib V53    0.18040841173142497
#>     Attrib V54    -0.25251502036045165
#>     Attrib V55    0.025832985456817545
#>     Attrib V56    -0.57315982533763
#>     Attrib V57    1.1226863921859986
#>     Attrib V58    -0.44191432905368616
#>     Attrib V59    -0.24640095104897822
#>     Attrib V6    0.8480282757770788
#>     Attrib V60    0.019187491036386492
#>     Attrib V7    0.3378589386965125
#>     Attrib V8    0.4389164666138716
#>     Attrib V9    -0.767260963816475
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.08391166101485391
#>     Attrib V1    0.2933529436202598
#>     Attrib V10    -0.04321670458795524
#>     Attrib V11    0.03871440871119491
#>     Attrib V12    -0.010986185491869973
#>     Attrib V13    -0.026156616782078843
#>     Attrib V14    0.05937923388004618
#>     Attrib V15    0.006634731276465313
#>     Attrib V16    0.1640757884215452
#>     Attrib V17    0.20068584934818054
#>     Attrib V18    0.22552853462181618
#>     Attrib V19    0.07273166664896753
#>     Attrib V2    0.08786257382748573
#>     Attrib V20    0.27738949350232034
#>     Attrib V21    0.20129825959840073
#>     Attrib V22    0.29505004332071255
#>     Attrib V23    0.17921873910339134
#>     Attrib V24    0.0518833989566683
#>     Attrib V25    -0.04582032433268943
#>     Attrib V26    -0.3310323923499431
#>     Attrib V27    -0.48789896874512695
#>     Attrib V28    -0.36104415760292263
#>     Attrib V29    -0.35701946152770286
#>     Attrib V3    -0.030532020226922484
#>     Attrib V30    -0.21269440515667784
#>     Attrib V31    -0.5583165325383422
#>     Attrib V32    0.056928463873472425
#>     Attrib V33    0.20662608821009998
#>     Attrib V34    -0.010773408784080748
#>     Attrib V35    0.0699538287619691
#>     Attrib V36    -0.15555183556848068
#>     Attrib V37    -0.39395520835588765
#>     Attrib V38    0.028735032207961683
#>     Attrib V39    0.19474813869189503
#>     Attrib V4    0.22203133602726133
#>     Attrib V40    0.10000096219422405
#>     Attrib V41    0.032794878621153295
#>     Attrib V42    0.02285092756703423
#>     Attrib V43    0.3023290863988024
#>     Attrib V44    0.1052813320888875
#>     Attrib V45    -0.17945095322499924
#>     Attrib V46    -0.030877306773820713
#>     Attrib V47    -0.024115072253939274
#>     Attrib V48    0.3909422356447457
#>     Attrib V49    0.1371901363831171
#>     Attrib V5    0.17609075689430248
#>     Attrib V50    -0.3808627239416499
#>     Attrib V51    -0.07090491512645147
#>     Attrib V52    -0.21628345612104002
#>     Attrib V53    -0.03293043961004817
#>     Attrib V54    0.3095355334437868
#>     Attrib V55    0.01977226957753077
#>     Attrib V56    0.22199858016174331
#>     Attrib V57    -0.09348406878803206
#>     Attrib V58    0.2830014969287332
#>     Attrib V59    0.38297593478003034
#>     Attrib V6    -0.08739014826116988
#>     Attrib V60    0.34668039876270695
#>     Attrib V7    0.06431087101878981
#>     Attrib V8    -0.1751192604565281
#>     Attrib V9    0.1741156653880436
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.11647747062518052
#>     Attrib V1    0.2994271924457054
#>     Attrib V10    -0.07377166558884703
#>     Attrib V11    0.1268096952371469
#>     Attrib V12    0.0730027480759948
#>     Attrib V13    -0.011364062599119385
#>     Attrib V14    -0.008710850437274717
#>     Attrib V15    -0.05619381811421099
#>     Attrib V16    0.1069757776987622
#>     Attrib V17    0.3274372098347696
#>     Attrib V18    0.3297482804354488
#>     Attrib V19    0.1985679213708939
#>     Attrib V2    -0.009805740034907499
#>     Attrib V20    0.3794301745230121
#>     Attrib V21    0.2456886021611174
#>     Attrib V22    0.5250970464341085
#>     Attrib V23    0.42854246805282115
#>     Attrib V24    0.11070242680152395
#>     Attrib V25    0.13774253946511295
#>     Attrib V26    -0.37401912724830727
#>     Attrib V27    -0.8151045517750546
#>     Attrib V28    -0.6203034708941376
#>     Attrib V29    -0.8330318306735566
#>     Attrib V3    -0.007990389563536315
#>     Attrib V30    -0.4073189452997159
#>     Attrib V31    -0.9726533345992652
#>     Attrib V32    0.17778518214345645
#>     Attrib V33    0.4834425108268238
#>     Attrib V34    0.10776398955413198
#>     Attrib V35    0.20024573166097873
#>     Attrib V36    -0.2874477850418712
#>     Attrib V37    -0.7575931603375439
#>     Attrib V38    0.012522763857037161
#>     Attrib V39    0.33477617173134827
#>     Attrib V4    0.3563540315880011
#>     Attrib V40    0.13328626309184133
#>     Attrib V41    0.11127258269362898
#>     Attrib V42    0.08161006412337775
#>     Attrib V43    0.44481849512815264
#>     Attrib V44    0.14313216852134877
#>     Attrib V45    -0.17651890287291835
#>     Attrib V46    -0.0916630490733434
#>     Attrib V47    0.0836934104063424
#>     Attrib V48    0.6251543538141054
#>     Attrib V49    0.2434226215012809
#>     Attrib V5    0.23023960959175335
#>     Attrib V50    -0.6785398866039365
#>     Attrib V51    -0.1512445500539172
#>     Attrib V52    -0.36478530890615135
#>     Attrib V53    -0.11422972732322945
#>     Attrib V54    0.4521668604991547
#>     Attrib V55    0.001856700295018862
#>     Attrib V56    0.37140942210150013
#>     Attrib V57    -0.2785293713225378
#>     Attrib V58    0.39368763296637493
#>     Attrib V59    0.6176221566506043
#>     Attrib V6    -0.181614434902099
#>     Attrib V60    0.48869292956055854
#>     Attrib V7    0.10965986362449054
#>     Attrib V8    -0.1332351347351963
#>     Attrib V9    0.32989090554301725
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.13997101429775397
#>     Attrib V1    -0.456828567074722
#>     Attrib V10    -0.37772322695861504
#>     Attrib V11    -0.5647246761976251
#>     Attrib V12    -0.35034733112352656
#>     Attrib V13    0.06504077059570504
#>     Attrib V14    0.5323620551920637
#>     Attrib V15    0.5259384440807918
#>     Attrib V16    0.124148606870943
#>     Attrib V17    -0.04542420349163405
#>     Attrib V18    -0.2952501507335246
#>     Attrib V19    -0.006304444190725726
#>     Attrib V2    -0.06039757413901009
#>     Attrib V20    -0.2506348524365932
#>     Attrib V21    -0.1013714717802578
#>     Attrib V22    -0.5733407983389394
#>     Attrib V23    -0.679443268552934
#>     Attrib V24    -0.17832623688160598
#>     Attrib V25    0.24899961998699066
#>     Attrib V26    0.521332450778628
#>     Attrib V27    0.3628587968285379
#>     Attrib V28    -0.03831750522673774
#>     Attrib V29    0.19102405719269075
#>     Attrib V3    0.19262523451041094
#>     Attrib V30    -0.11460647172841429
#>     Attrib V31    0.7428676553904073
#>     Attrib V32    -0.40723678659994456
#>     Attrib V33    -0.5830399405118574
#>     Attrib V34    0.0032234626668872714
#>     Attrib V35    -0.13300040646480954
#>     Attrib V36    0.4070486251972648
#>     Attrib V37    0.5022417257589094
#>     Attrib V38    -0.37011412893394174
#>     Attrib V39    -0.46547678933263076
#>     Attrib V4    -0.1543217931422734
#>     Attrib V40    0.004538533204580326
#>     Attrib V41    -0.14812019463890888
#>     Attrib V42    0.00655463749997813
#>     Attrib V43    -0.4698704424188946
#>     Attrib V44    -0.3024170567968945
#>     Attrib V45    0.18474284858586065
#>     Attrib V46    -0.0191561898406795
#>     Attrib V47    -0.05486273528208607
#>     Attrib V48    -0.5968110252633028
#>     Attrib V49    -0.3012538030626721
#>     Attrib V5    -0.3275072038263109
#>     Attrib V50    1.0232700958901633
#>     Attrib V51    0.06372181457545054
#>     Attrib V52    0.08948229430462695
#>     Attrib V53    0.10020922633012641
#>     Attrib V54    -0.23859897602660576
#>     Attrib V55    0.3026810187220104
#>     Attrib V56    0.08373720479417514
#>     Attrib V57    0.6920520211486171
#>     Attrib V58    -0.16413262138490844
#>     Attrib V59    -0.14428313650118343
#>     Attrib V6    0.13023426587987894
#>     Attrib V60    -0.14109735146715724
#>     Attrib V7    -0.13988008764371532
#>     Attrib V8    0.2404514565465748
#>     Attrib V9    -0.5519623583857259
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.7328398201688282
#>     Attrib V1    0.9774508033040651
#>     Attrib V10    1.022540687496357
#>     Attrib V11    1.0603887303459982
#>     Attrib V12    0.9616931885411393
#>     Attrib V13    0.3942397207980285
#>     Attrib V14    -0.4892146448943363
#>     Attrib V15    -0.5041579141498385
#>     Attrib V16    -0.3414683191661793
#>     Attrib V17    -0.3928265366509333
#>     Attrib V18    0.2754225700267106
#>     Attrib V19    -0.7490668825758704
#>     Attrib V2    0.2878299733824373
#>     Attrib V20    -0.40520688954585066
#>     Attrib V21    -0.06198437360339373
#>     Attrib V22    0.5278931942836828
#>     Attrib V23    0.9451354700170282
#>     Attrib V24    -0.049918927216325626
#>     Attrib V25    -0.8427243953354266
#>     Attrib V26    0.9558337375384799
#>     Attrib V27    1.8409987025639167
#>     Attrib V28    1.8919653195816815
#>     Attrib V29    1.1504091437572666
#>     Attrib V3    -0.3730848190947778
#>     Attrib V30    0.6057564640152155
#>     Attrib V31    -0.6767060844712526
#>     Attrib V32    -0.4425984369244359
#>     Attrib V33    -0.33692271424612835
#>     Attrib V34    -0.794621003240949
#>     Attrib V35    0.03472562849175044
#>     Attrib V36    -0.29050532749227786
#>     Attrib V37    0.2330617261873692
#>     Attrib V38    -0.06422573335453248
#>     Attrib V39    -0.24169029975805006
#>     Attrib V4    0.24166339458079933
#>     Attrib V40    -0.39892477720403463
#>     Attrib V41    0.9082153715069444
#>     Attrib V42    0.014917675391934433
#>     Attrib V43    0.5089015246332131
#>     Attrib V44    0.40798684873296026
#>     Attrib V45    0.05530224772787349
#>     Attrib V46    0.5489978903389285
#>     Attrib V47    0.3930179228079422
#>     Attrib V48    0.7395394408570493
#>     Attrib V49    0.6283748187381977
#>     Attrib V5    0.8408669241574686
#>     Attrib V50    -0.45637173850828006
#>     Attrib V51    1.128757508609738
#>     Attrib V52    0.7252258420036211
#>     Attrib V53    0.6861834861745307
#>     Attrib V54    0.7073044224173832
#>     Attrib V55    -0.33880268677144937
#>     Attrib V56    -0.8431165816795343
#>     Attrib V57    -0.5396208212799143
#>     Attrib V58    -0.15290830165803707
#>     Attrib V59    0.19495628900133308
#>     Attrib V6    0.29581638060603876
#>     Attrib V60    0.42682791649088153
#>     Attrib V7    0.03749064416485412
#>     Attrib V8    -0.5215561766866893
#>     Attrib V9    0.8584927013075045
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.15766772411592866
#>     Attrib V1    -0.4371192593922633
#>     Attrib V10    -0.3958280373888793
#>     Attrib V11    -0.6501351617816691
#>     Attrib V12    -0.3676164011990432
#>     Attrib V13    0.003233447414689449
#>     Attrib V14    0.49253928770350125
#>     Attrib V15    0.342492367603475
#>     Attrib V16    0.04341959548510032
#>     Attrib V17    -0.1201168019885418
#>     Attrib V18    -0.3183798589727658
#>     Attrib V19    0.029611805919345223
#>     Attrib V2    -0.06806059396157192
#>     Attrib V20    -0.24271678206922506
#>     Attrib V21    -0.07975086564773803
#>     Attrib V22    -0.4959566914701858
#>     Attrib V23    -0.6173595940955795
#>     Attrib V24    -0.1324452642698148
#>     Attrib V25    0.194529521330967
#>     Attrib V26    0.2945225495256128
#>     Attrib V27    0.352926322362869
#>     Attrib V28    -0.006316453408859064
#>     Attrib V29    0.18107645130846411
#>     Attrib V3    0.15170880682362442
#>     Attrib V30    -0.16482538995781754
#>     Attrib V31    0.6564476087271085
#>     Attrib V32    -0.42986530208867246
#>     Attrib V33    -0.4426993486234513
#>     Attrib V34    0.052330079680912245
#>     Attrib V35    0.02911559920206747
#>     Attrib V36    0.5422046660207628
#>     Attrib V37    0.6698885356940922
#>     Attrib V38    -0.2026203956935872
#>     Attrib V39    -0.3030294763637555
#>     Attrib V4    -0.14071598565716584
#>     Attrib V40    0.0471168505036546
#>     Attrib V41    -0.12113495834832222
#>     Attrib V42    0.05341826537693671
#>     Attrib V43    -0.4362076598341891
#>     Attrib V44    -0.22089591176389348
#>     Attrib V45    0.21384740126596063
#>     Attrib V46    -0.05945399910337704
#>     Attrib V47    -0.17172963760766718
#>     Attrib V48    -0.579448166203145
#>     Attrib V49    -0.3064057923249927
#>     Attrib V5    -0.30708956857191694
#>     Attrib V50    0.9287000123640543
#>     Attrib V51    -0.06499295932261676
#>     Attrib V52    -0.03369592189210871
#>     Attrib V53    0.06582922116987548
#>     Attrib V54    -0.2504696281640395
#>     Attrib V55    0.1812427918911051
#>     Attrib V56    0.03081661582926741
#>     Attrib V57    0.6325050113104401
#>     Attrib V58    -0.18352357715808318
#>     Attrib V59    -0.07517340582884517
#>     Attrib V6    0.17106898841947094
#>     Attrib V60    0.026945743028496092
#>     Attrib V7    -0.09520045448783145
#>     Attrib V8    0.16544722265001588
#>     Attrib V9    -0.6154950067230687
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.5016307186057327
#>     Attrib V1    0.9811779544479359
#>     Attrib V10    1.1061989149442628
#>     Attrib V11    0.9090181886871425
#>     Attrib V12    0.5948400585007689
#>     Attrib V13    -0.11488348940589024
#>     Attrib V14    -0.6141188249128644
#>     Attrib V15    -0.433022940762023
#>     Attrib V16    -0.5254100486892564
#>     Attrib V17    -0.7168187939758681
#>     Attrib V18    -0.3376464232050916
#>     Attrib V19    -0.9407064079633304
#>     Attrib V2    0.12879642199534475
#>     Attrib V20    -0.6244328797239647
#>     Attrib V21    -0.301213301646448
#>     Attrib V22    -0.1309350164502678
#>     Attrib V23    -0.17148886945056005
#>     Attrib V24    -0.36549072167976504
#>     Attrib V25    -0.6931801694828581
#>     Attrib V26    0.44530816792422734
#>     Attrib V27    0.9414238473647396
#>     Attrib V28    0.9567072588737844
#>     Attrib V29    0.49688160101476575
#>     Attrib V3    -0.23719530484386783
#>     Attrib V30    0.5137950838679468
#>     Attrib V31    -0.43227338243213903
#>     Attrib V32    -0.22854625738315565
#>     Attrib V33    -0.036999956280229736
#>     Attrib V34    -0.13689036384364625
#>     Attrib V35    0.43768034365136055
#>     Attrib V36    -0.005707613809716176
#>     Attrib V37    0.11073092383041516
#>     Attrib V38    -0.12330107113748894
#>     Attrib V39    -0.2812697616223103
#>     Attrib V4    0.1596212200916351
#>     Attrib V40    -0.5827168662977792
#>     Attrib V41    0.1787465686331523
#>     Attrib V42    -0.4130098122955984
#>     Attrib V43    -0.00877756783278442
#>     Attrib V44    -0.027069032245442128
#>     Attrib V45    0.021357376677229225
#>     Attrib V46    0.46101996040276977
#>     Attrib V47    0.4009943760630416
#>     Attrib V48    0.8471422218458072
#>     Attrib V49    0.38075936691905343
#>     Attrib V5    0.4406004685988112
#>     Attrib V50    -0.2630195922126184
#>     Attrib V51    0.8080121639058067
#>     Attrib V52    0.5414765087067388
#>     Attrib V53    0.2545943884877591
#>     Attrib V54    0.40415540542579276
#>     Attrib V55    -0.3265494087141028
#>     Attrib V56    -0.7190157833653946
#>     Attrib V57    -0.17069572971394184
#>     Attrib V58    -0.13627766063857408
#>     Attrib V59    0.2501490574083515
#>     Attrib V6    0.10101051830036269
#>     Attrib V60    0.7488275071917412
#>     Attrib V7    -0.005853101203920052
#>     Attrib V8    -0.40759509902994945
#>     Attrib V9    0.8303720431831305
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    0.20444709469145397
#>     Attrib V1    -1.2030956220905726
#>     Attrib V10    -0.4801103343627656
#>     Attrib V11    -1.2391835148466808
#>     Attrib V12    -1.0000017219909965
#>     Attrib V13    -0.03295116716038518
#>     Attrib V14    0.626032439808389
#>     Attrib V15    -0.4094572394218082
#>     Attrib V16    -0.4491351992861559
#>     Attrib V17    -0.30745360046119585
#>     Attrib V18    0.42971826945807906
#>     Attrib V19    -0.31572817702305717
#>     Attrib V2    -0.5980635796846127
#>     Attrib V20    -1.5527939646285884
#>     Attrib V21    -0.910061994774328
#>     Attrib V22    -0.5896459012701298
#>     Attrib V23    -0.5257349684248712
#>     Attrib V24    -0.23728539703021606
#>     Attrib V25    0.20442377978005358
#>     Attrib V26    -0.22163422660039972
#>     Attrib V27    0.3891604621010717
#>     Attrib V28    0.6253916970595238
#>     Attrib V29    0.33423372230292975
#>     Attrib V3    -0.014978146798529197
#>     Attrib V30    -0.34801855130982334
#>     Attrib V31    1.4749852497334899
#>     Attrib V32    0.5060151984515208
#>     Attrib V33    -0.2163844197652952
#>     Attrib V34    -0.3025394269381503
#>     Attrib V35    0.28279544919606436
#>     Attrib V36    2.2464202248462444
#>     Attrib V37    2.0198909808346777
#>     Attrib V38    0.3266799947478357
#>     Attrib V39    -0.3744546307570483
#>     Attrib V4    -0.08824167226141957
#>     Attrib V40    0.4348893094723773
#>     Attrib V41    0.4584727245879577
#>     Attrib V42    0.04537972977696698
#>     Attrib V43    -0.36715285529888153
#>     Attrib V44    0.08190949146828358
#>     Attrib V45    -0.3099101743981152
#>     Attrib V46    -1.1317823665867208
#>     Attrib V47    -0.9989330375973509
#>     Attrib V48    -0.929735542305017
#>     Attrib V49    -0.35181941402588246
#>     Attrib V5    -0.5643804831346416
#>     Attrib V50    1.3694044715281737
#>     Attrib V51    -0.02477761012561271
#>     Attrib V52    0.37299310548342157
#>     Attrib V53    0.2234231349074189
#>     Attrib V54    -0.08476186156508587
#>     Attrib V55    -0.262475451883929
#>     Attrib V56    -0.23974001186803537
#>     Attrib V57    1.188064324255431
#>     Attrib V58    0.3371853637311366
#>     Attrib V59    0.311813821371455
#>     Attrib V6    0.9925213948729976
#>     Attrib V60    0.40988866356368026
#>     Attrib V7    1.0399087841514936
#>     Attrib V8    0.8046583198837819
#>     Attrib V9    -0.6591135529389921
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.015875442512560442
#>     Attrib V1    0.21306137252012217
#>     Attrib V10    0.10712165976066144
#>     Attrib V11    0.34453731862367415
#>     Attrib V12    0.17450035636034789
#>     Attrib V13    -0.027555440521024276
#>     Attrib V14    -0.1361865561957286
#>     Attrib V15    -0.22625928824685093
#>     Attrib V16    -0.018730985500876113
#>     Attrib V17    0.11799321793494721
#>     Attrib V18    0.2941427826619856
#>     Attrib V19    0.056941919656868484
#>     Attrib V2    0.009761786400509677
#>     Attrib V20    0.26578190533430185
#>     Attrib V21    0.14744716240293249
#>     Attrib V22    0.47312180782665736
#>     Attrib V23    0.4400204083524588
#>     Attrib V24    0.15960411651259962
#>     Attrib V25    0.09842913628833323
#>     Attrib V26    -0.12110334346292233
#>     Attrib V27    -0.19910833416228121
#>     Attrib V28    0.04222244792282443
#>     Attrib V29    -0.18322993089706166
#>     Attrib V3    -0.11845388603482643
#>     Attrib V30    -0.12369999295124604
#>     Attrib V31    -0.7805167938849937
#>     Attrib V32    0.17729587733294638
#>     Attrib V33    0.3516404029072203
#>     Attrib V34    -0.034605283500656836
#>     Attrib V35    0.17975354000383903
#>     Attrib V36    -0.2273843701164093
#>     Attrib V37    -0.519956353829706
#>     Attrib V38    0.02021017153930306
#>     Attrib V39    0.2061308556139484
#>     Attrib V4    0.1543148672902431
#>     Attrib V40    0.011972090730028214
#>     Attrib V41    0.14985308677484704
#>     Attrib V42    0.02688013587174515
#>     Attrib V43    0.4501096393534736
#>     Attrib V44    0.17244339197893438
#>     Attrib V45    -0.10219894940007489
#>     Attrib V46    4.499503609960039E-4
#>     Attrib V47    0.1563226871820062
#>     Attrib V48    0.6218663359829336
#>     Attrib V49    0.2529411576168662
#>     Attrib V5    0.15396298003422373
#>     Attrib V50    -0.6302677792997993
#>     Attrib V51    0.055054109881867666
#>     Attrib V52    -0.07537327473133328
#>     Attrib V53    -0.057304881968177485
#>     Attrib V54    0.35719252814528096
#>     Attrib V55    -0.046675343051941875
#>     Attrib V56    0.14277320126723508
#>     Attrib V57    -0.37093788602308553
#>     Attrib V58    0.20680045967186536
#>     Attrib V59    0.34221109993682985
#>     Attrib V6    -0.20064235720985665
#>     Attrib V60    0.3124912525754103
#>     Attrib V7    -0.06271628350684502
#>     Attrib V8    -0.20738207781130855
#>     Attrib V9    0.3511926115014164
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.13833415422156356
#>     Attrib V1    -0.09190650913209507
#>     Attrib V10    -0.034740896993570136
#>     Attrib V11    -0.14233366242088824
#>     Attrib V12    -0.05985991482318096
#>     Attrib V13    0.06038350372151096
#>     Attrib V14    0.11929889659876401
#>     Attrib V15    0.08486119315545614
#>     Attrib V16    0.03704753939857525
#>     Attrib V17    0.065801011534425
#>     Attrib V18    -0.03612546169785939
#>     Attrib V19    -0.019375302020543175
#>     Attrib V2    0.06112018308825579
#>     Attrib V20    -0.11535185803178119
#>     Attrib V21    -0.019253478521311325
#>     Attrib V22    -0.13873764107012584
#>     Attrib V23    -0.1549979557043303
#>     Attrib V24    -0.07903572088534119
#>     Attrib V25    0.06922529095380586
#>     Attrib V26    0.054658811480096575
#>     Attrib V27    -0.028237555304507958
#>     Attrib V28    -0.06186870893990913
#>     Attrib V29    -0.048038006649183174
#>     Attrib V3    0.10658388503415642
#>     Attrib V30    -0.035928194522149084
#>     Attrib V31    0.26789991792734685
#>     Attrib V32    -0.07211744131820468
#>     Attrib V33    -0.10677064209452908
#>     Attrib V34    0.03274530466113695
#>     Attrib V35    0.07053730907391756
#>     Attrib V36    0.19473802971108714
#>     Attrib V37    0.2979409781820427
#>     Attrib V38    -0.03771382152656345
#>     Attrib V39    0.006463059343313322
#>     Attrib V4    0.01921207122323271
#>     Attrib V40    0.12275121824380764
#>     Attrib V41    0.06793070957899199
#>     Attrib V42    0.14165904015381764
#>     Attrib V43    -0.08446667234929874
#>     Attrib V44    -0.057262093471721086
#>     Attrib V45    0.06416067159265362
#>     Attrib V46    -0.008638536804412312
#>     Attrib V47    -0.06854987043784341
#>     Attrib V48    -0.20091772360606303
#>     Attrib V49    -0.12119726560553394
#>     Attrib V5    -0.08039370999604896
#>     Attrib V50    0.24786048430689248
#>     Attrib V51    -0.061426650649147214
#>     Attrib V52    -0.020533616073403642
#>     Attrib V53    0.0421303437353661
#>     Attrib V54    -0.084498897591722
#>     Attrib V55    0.06414988942586801
#>     Attrib V56    0.14040225519693636
#>     Attrib V57    0.21706066538728183
#>     Attrib V58    0.03607915127005211
#>     Attrib V59    0.001521392256058101
#>     Attrib V6    0.13899931100151078
#>     Attrib V60    -0.007844425796629936
#>     Attrib V7    0.013662166417688977
#>     Attrib V8    0.13619428732194053
#>     Attrib V9    -0.11015913451061606
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.1226982232505678
#>     Attrib V1    0.47795477762409894
#>     Attrib V10    -0.14039206938306087
#>     Attrib V11    0.028155666005449338
#>     Attrib V12    -0.1389601722805302
#>     Attrib V13    -0.03337340542874405
#>     Attrib V14    0.12321134537164563
#>     Attrib V15    0.20175816637349003
#>     Attrib V16    0.294521594881606
#>     Attrib V17    0.3496851850533932
#>     Attrib V18    0.2677564927271083
#>     Attrib V19    0.1634575412647739
#>     Attrib V2    0.16602744165840533
#>     Attrib V20    0.6085072760692009
#>     Attrib V21    0.43435993923139665
#>     Attrib V22    0.6185863163275395
#>     Attrib V23    0.3312427915116335
#>     Attrib V24    -0.0064875730112283455
#>     Attrib V25    -0.16170318964329583
#>     Attrib V26    -0.7186160356359372
#>     Attrib V27    -1.06704177753362
#>     Attrib V28    -0.7273641785940608
#>     Attrib V29    -0.7656134425796243
#>     Attrib V3    -0.0324387093056356
#>     Attrib V30    -0.4259294800052004
#>     Attrib V31    -1.145291482051437
#>     Attrib V32    0.07441197575533631
#>     Attrib V33    0.4987313706290044
#>     Attrib V34    0.095033250291195
#>     Attrib V35    0.09657130902823517
#>     Attrib V36    -0.39911057822011015
#>     Attrib V37    -0.7851227185985388
#>     Attrib V38    0.2149357110766855
#>     Attrib V39    0.5016199001247647
#>     Attrib V4    0.37310786941453683
#>     Attrib V40    0.22373836614278883
#>     Attrib V41    0.09536328188179337
#>     Attrib V42    0.11664040962166139
#>     Attrib V43    0.4713037195706499
#>     Attrib V44    0.17417866356382652
#>     Attrib V45    -0.22112515953462145
#>     Attrib V46    -0.0699911926240552
#>     Attrib V47    0.02525254024774121
#>     Attrib V48    0.6717547201656638
#>     Attrib V49    0.21469105540029002
#>     Attrib V5    0.21159612026624194
#>     Attrib V50    -0.6979133081104252
#>     Attrib V51    -0.23289370529888082
#>     Attrib V52    -0.540349981969222
#>     Attrib V53    -0.1696574431291083
#>     Attrib V54    0.509207642034082
#>     Attrib V55    0.03683837147121253
#>     Attrib V56    0.3571505955376759
#>     Attrib V57    -0.14334193039102475
#>     Attrib V58    0.4255555116692147
#>     Attrib V59    0.7098916108286327
#>     Attrib V6    -0.21567041763416817
#>     Attrib V60    0.5768185906645292
#>     Attrib V7    0.1715596753327807
#>     Attrib V8    -0.12190079947729697
#>     Attrib V9    0.3102489330978561
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.15835321780150677
#>     Attrib V1    0.08924218989786907
#>     Attrib V10    -0.028225993171864677
#>     Attrib V11    0.01602805669814293
#>     Attrib V12    0.011668763455211357
#>     Attrib V13    -0.017418052218318842
#>     Attrib V14    0.11804328108717636
#>     Attrib V15    0.06162617687576323
#>     Attrib V16    0.055840393197782875
#>     Attrib V17    -2.593129729529839E-4
#>     Attrib V18    0.04856491901707483
#>     Attrib V19    -0.059625738010224444
#>     Attrib V2    0.06094406771871793
#>     Attrib V20    -0.027113321844093156
#>     Attrib V21    -0.036326299328549104
#>     Attrib V22    -0.09081167902868831
#>     Attrib V23    -0.03483899115636879
#>     Attrib V24    -0.046547720143219944
#>     Attrib V25    -0.06207918716881629
#>     Attrib V26    -0.06751476848486189
#>     Attrib V27    -0.06381690716420574
#>     Attrib V28    -0.009173829317558406
#>     Attrib V29    -0.028101339470930208
#>     Attrib V3    0.13658769051504072
#>     Attrib V30    0.0067039550624298045
#>     Attrib V31    -0.029234043998593105
#>     Attrib V32    -0.01831663312020032
#>     Attrib V33    0.028122463969081274
#>     Attrib V34    0.049325546130666795
#>     Attrib V35    0.08549074344437886
#>     Attrib V36    0.12142242890674018
#>     Attrib V37    0.06894394812443853
#>     Attrib V38    -0.009269562014418439
#>     Attrib V39    0.04983275513311869
#>     Attrib V4    0.07857670470254113
#>     Attrib V40    0.0336543823413794
#>     Attrib V41    0.024338387553426065
#>     Attrib V42    0.07671167429210038
#>     Attrib V43    -0.004416539415292691
#>     Attrib V44    0.07088580502623221
#>     Attrib V45    0.07521287054228215
#>     Attrib V46    0.04365613859207766
#>     Attrib V47    0.02215697518012871
#>     Attrib V48    -0.02491565173787963
#>     Attrib V49    0.055054686668901245
#>     Attrib V5    0.09977609340005399
#>     Attrib V50    0.044447895635682064
#>     Attrib V51    0.05588733267307162
#>     Attrib V52    0.05605371222180645
#>     Attrib V53    0.08799542555971308
#>     Attrib V54    0.010419428859889876
#>     Attrib V55    0.06352427487748928
#>     Attrib V56    0.1034161024657009
#>     Attrib V57    0.11075684646195173
#>     Attrib V58    0.13752958804513252
#>     Attrib V59    0.06865321705734215
#>     Attrib V6    0.11074689894969304
#>     Attrib V60    0.08724799905557261
#>     Attrib V7    0.05279393223236691
#>     Attrib V8    0.10040513158868146
#>     Attrib V9    0.0773228895554945
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
