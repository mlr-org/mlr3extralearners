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
#>     Threshold    0.5272907769359192
#>     Node 2    2.315890032304641
#>     Node 3    1.1845344781459142
#>     Node 4    0.7605646925439578
#>     Node 5    -2.7986249506353427
#>     Node 6    1.8597626314523368
#>     Node 7    1.8620228964539849
#>     Node 8    1.2073173257093788
#>     Node 9    3.47004673644664
#>     Node 10    -2.547444757262549
#>     Node 11    1.350080382362028
#>     Node 12    1.780093383339379
#>     Node 13    1.1095841033854763
#>     Node 14    1.604596424208352
#>     Node 15    -2.1256913310015775
#>     Node 16    0.12032308977675683
#>     Node 17    0.2155075557367931
#>     Node 18    0.27702120758595916
#>     Node 19    1.8164957666131323
#>     Node 20    2.1559280305067974
#>     Node 21    -1.5740549167229922
#>     Node 22    1.12066586773375
#>     Node 23    2.0722702694296027
#>     Node 24    -1.7353260641516308
#>     Node 25    4.045940496032297
#>     Node 26    -0.19232412592126674
#>     Node 27    1.941124962116938
#>     Node 28    -4.5159211027473765
#>     Node 29    0.8210666493843619
#>     Node 30    0.7943446677429008
#>     Node 31    1.1083749267060468
#>     Node 32    0.9286324165965423
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.4977613495927697
#>     Node 2    -2.355810579965565
#>     Node 3    -1.1701729064057922
#>     Node 4    -0.7258096659774528
#>     Node 5    2.827610731121828
#>     Node 6    -1.8314539620598977
#>     Node 7    -1.8396761805616275
#>     Node 8    -1.2441813476690646
#>     Node 9    -3.4823399957158236
#>     Node 10    2.497108175877588
#>     Node 11    -1.3196976786425563
#>     Node 12    -1.8556901714327367
#>     Node 13    -1.055796268705361
#>     Node 14    -1.54078074150825
#>     Node 15    2.1157235307048174
#>     Node 16    -0.1437723263388758
#>     Node 17    -0.19259584246693043
#>     Node 18    -0.24428033919394823
#>     Node 19    -1.8041246200693841
#>     Node 20    -2.1321901907105367
#>     Node 21    1.623195822076963
#>     Node 22    -1.179078196298866
#>     Node 23    -2.1070367341883425
#>     Node 24    1.7187358286633978
#>     Node 25    -4.053637661678939
#>     Node 26    0.10053225864993816
#>     Node 27    -1.9789216851609939
#>     Node 28    4.5042601257357635
#>     Node 29    -0.8594965435962149
#>     Node 30    -0.7223382291951523
#>     Node 31    -1.0588710020816094
#>     Node 32    -0.9544996472093568
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.09205704673290675
#>     Attrib V1    -0.12064827918576292
#>     Attrib V10    -0.1109725030278465
#>     Attrib V11    0.35934883652706595
#>     Attrib V12    0.47792883791995827
#>     Attrib V13    -0.10627463801042096
#>     Attrib V14    -0.29086712215731614
#>     Attrib V15    0.053712605142806416
#>     Attrib V16    -0.10778156359849388
#>     Attrib V17    0.2944252222625354
#>     Attrib V18    0.27809791041568527
#>     Attrib V19    0.016465893720350063
#>     Attrib V2    -0.1343513098917166
#>     Attrib V20    0.382227403244855
#>     Attrib V21    0.47787590431840654
#>     Attrib V22    0.43942490672438006
#>     Attrib V23    0.4476345728536502
#>     Attrib V24    0.6523008409780495
#>     Attrib V25    -0.04641537075154386
#>     Attrib V26    -0.45897337218613465
#>     Attrib V27    -0.4801291583627266
#>     Attrib V28    -0.23347991801156268
#>     Attrib V29    -0.7502345182496742
#>     Attrib V3    0.025487166664802486
#>     Attrib V30    0.43033474522129644
#>     Attrib V31    -1.221667985228732
#>     Attrib V32    -0.13940800790688554
#>     Attrib V33    0.8141841785274966
#>     Attrib V34    -0.5659768436287276
#>     Attrib V35    -0.7321298622355236
#>     Attrib V36    -0.7581248991849915
#>     Attrib V37    -1.179854630562822
#>     Attrib V38    -0.20061026930412829
#>     Attrib V39    0.04291526953834568
#>     Attrib V4    0.33290710511954086
#>     Attrib V40    -0.15499283669527258
#>     Attrib V41    0.023143425893283817
#>     Attrib V42    0.7189891614995434
#>     Attrib V43    0.5758354072228671
#>     Attrib V44    0.331080288549224
#>     Attrib V45    0.2915800949149987
#>     Attrib V46    -0.22669560767758345
#>     Attrib V47    -0.4579617358376028
#>     Attrib V48    0.06831863512801681
#>     Attrib V49    0.37893438879875735
#>     Attrib V5    0.21584907504415932
#>     Attrib V50    -0.7959929074086197
#>     Attrib V51    -0.1918119046712103
#>     Attrib V52    0.012525572976356545
#>     Attrib V53    0.7617191852406158
#>     Attrib V54    0.9825195791594702
#>     Attrib V55    -0.8749662865472255
#>     Attrib V56    0.29175078805161475
#>     Attrib V57    0.5322196793080485
#>     Attrib V58    0.669102838391771
#>     Attrib V59    1.0676116981240333
#>     Attrib V6    -0.31432608589875827
#>     Attrib V60    0.6366022176756136
#>     Attrib V7    0.13770750938719656
#>     Attrib V8    -0.06612796495757114
#>     Attrib V9    0.49765563207894703
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.07806926893920843
#>     Attrib V1    0.12893112960877004
#>     Attrib V10    -0.20970673920462726
#>     Attrib V11    0.1008231266847414
#>     Attrib V12    0.2004342332928264
#>     Attrib V13    -0.04874890946989504
#>     Attrib V14    -3.1202975661065614E-4
#>     Attrib V15    0.23772344291261072
#>     Attrib V16    0.012319783950567473
#>     Attrib V17    0.09836551736112678
#>     Attrib V18    0.06934042747952851
#>     Attrib V19    0.07744335531064805
#>     Attrib V2    0.10351876572482396
#>     Attrib V20    0.333428588778332
#>     Attrib V21    0.2665730077557521
#>     Attrib V22    0.1322168001329475
#>     Attrib V23    0.02861899078915778
#>     Attrib V24    0.12304500967125057
#>     Attrib V25    -0.16654307940845392
#>     Attrib V26    -0.42891942642397507
#>     Attrib V27    -0.43328914052112466
#>     Attrib V28    -0.16283808954204504
#>     Attrib V29    -0.363265513590469
#>     Attrib V3    0.049551820990597954
#>     Attrib V30    0.1715750117556588
#>     Attrib V31    -0.6481027378980079
#>     Attrib V32    -0.11975656536783398
#>     Attrib V33    0.4474367468018407
#>     Attrib V34    -0.1935319164092513
#>     Attrib V35    -0.2267823727931374
#>     Attrib V36    -0.27631575067630576
#>     Attrib V37    -0.3774289166140896
#>     Attrib V38    0.04074843244783162
#>     Attrib V39    0.2098001109671417
#>     Attrib V4    0.19731660808717097
#>     Attrib V40    -0.03824019704607281
#>     Attrib V41    -0.07890974111499402
#>     Attrib V42    0.26787610423969205
#>     Attrib V43    0.17800551419211225
#>     Attrib V44    0.11038253592679756
#>     Attrib V45    0.1653036020260825
#>     Attrib V46    -0.11402749128372786
#>     Attrib V47    -0.22494050387291278
#>     Attrib V48    -0.07322996193478454
#>     Attrib V49    0.05399580631444632
#>     Attrib V5    0.10194130456744067
#>     Attrib V50    -0.38374508467995155
#>     Attrib V51    -0.2109729124201399
#>     Attrib V52    0.018270143603274037
#>     Attrib V53    0.3757888291641843
#>     Attrib V54    0.6359671661888128
#>     Attrib V55    -0.0436394769434141
#>     Attrib V56    0.1804709799280627
#>     Attrib V57    0.485759268300188
#>     Attrib V58    0.4045568761734906
#>     Attrib V59    0.6205624152717689
#>     Attrib V6    -0.20951767453507456
#>     Attrib V60    0.34846107826422557
#>     Attrib V7    -0.008109153631743835
#>     Attrib V8    -0.04404481207750112
#>     Attrib V9    0.10149083103967294
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.0011115499599126026
#>     Attrib V1    -0.014547125325877557
#>     Attrib V10    -0.13820644983232414
#>     Attrib V11    0.0973089576001452
#>     Attrib V12    0.13630062302021126
#>     Attrib V13    -0.037487733372052905
#>     Attrib V14    -0.019806106532779855
#>     Attrib V15    0.10686033049721162
#>     Attrib V16    -0.06634872244126762
#>     Attrib V17    -0.009345540580095244
#>     Attrib V18    -0.028460191204396565
#>     Attrib V19    -0.07302919944797855
#>     Attrib V2    0.019089534542381457
#>     Attrib V20    0.10492484738000878
#>     Attrib V21    0.1250711543182305
#>     Attrib V22    -0.08247927084738094
#>     Attrib V23    -0.0704797124384849
#>     Attrib V24    -0.00355240724380161
#>     Attrib V25    -0.15422586668479743
#>     Attrib V26    -0.19412815760849272
#>     Attrib V27    -0.18375455938364949
#>     Attrib V28    0.11672244954778055
#>     Attrib V29    -0.0037695415273555194
#>     Attrib V3    0.02728351227999027
#>     Attrib V30    0.1334369125916951
#>     Attrib V31    -0.3959881096091621
#>     Attrib V32    -0.07570425230894295
#>     Attrib V33    0.27408411661558657
#>     Attrib V34    -0.07241587997110022
#>     Attrib V35    -0.0869131888206736
#>     Attrib V36    -0.17011878913607328
#>     Attrib V37    -0.2125085318669336
#>     Attrib V38    -0.009035806716999193
#>     Attrib V39    0.1538097823844019
#>     Attrib V4    0.11955035716554546
#>     Attrib V40    -0.061866256344026906
#>     Attrib V41    -0.12496107588404058
#>     Attrib V42    0.08653023384737109
#>     Attrib V43    0.006404619981135218
#>     Attrib V44    0.09181732487367121
#>     Attrib V45    0.2331217893637673
#>     Attrib V46    -0.01998044316950832
#>     Attrib V47    -0.08604932298285752
#>     Attrib V48    0.10805591400522456
#>     Attrib V49    0.13090804782784243
#>     Attrib V5    0.1134341292166001
#>     Attrib V50    -0.22405056043846183
#>     Attrib V51    -0.03125866345255775
#>     Attrib V52    0.027333361010852403
#>     Attrib V53    0.19222135960553177
#>     Attrib V54    0.25753426612279484
#>     Attrib V55    -0.01977329341807921
#>     Attrib V56    0.054652352633759047
#>     Attrib V57    0.31893769254191
#>     Attrib V58    0.1885934111738326
#>     Attrib V59    0.3270466175942077
#>     Attrib V6    -0.14623141235777362
#>     Attrib V60    0.1582164061278787
#>     Attrib V7    -0.010512994184022711
#>     Attrib V8    -0.1440301742529739
#>     Attrib V9    0.10181608632572019
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.37569078041737375
#>     Attrib V1    0.5641509091072139
#>     Attrib V10    -1.3856732758959156
#>     Attrib V11    -1.286174001596529
#>     Attrib V12    -0.9416148626903401
#>     Attrib V13    -0.12320657916178673
#>     Attrib V14    0.7343015230489809
#>     Attrib V15    0.33621186628286387
#>     Attrib V16    0.4736294603562123
#>     Attrib V17    0.16557430844528462
#>     Attrib V18    0.1004273148972824
#>     Attrib V19    0.301961647990357
#>     Attrib V2    0.20803058108443762
#>     Attrib V20    -0.14203092897152303
#>     Attrib V21    -0.38275392379472767
#>     Attrib V22    -0.3324409086756285
#>     Attrib V23    -0.4685838239922941
#>     Attrib V24    -0.12985762216271293
#>     Attrib V25    0.34144587614017513
#>     Attrib V26    -0.22741274850867027
#>     Attrib V27    -0.3398074118773208
#>     Attrib V28    -0.9764261739551002
#>     Attrib V29    -0.14024747706633517
#>     Attrib V3    0.58037759336788
#>     Attrib V30    -0.8592915962737872
#>     Attrib V31    1.2818239378533103
#>     Attrib V32    0.39177998471020486
#>     Attrib V33    -0.7260798028041523
#>     Attrib V34    0.3274789249835468
#>     Attrib V35    -0.10764853684928938
#>     Attrib V36    0.24880763214754342
#>     Attrib V37    0.4104831498085754
#>     Attrib V38    0.42848692400049126
#>     Attrib V39    0.2604083602193669
#>     Attrib V4    -0.29380304862272233
#>     Attrib V40    0.8320922704725511
#>     Attrib V41    0.1667374212470791
#>     Attrib V42    0.08072846492525854
#>     Attrib V43    -7.038099826897218E-4
#>     Attrib V44    -0.6199757176979854
#>     Attrib V45    -1.230287433098818
#>     Attrib V46    -0.3083234305765608
#>     Attrib V47    -0.4509047370645893
#>     Attrib V48    -1.2775077490051432
#>     Attrib V49    -1.0863089120373721
#>     Attrib V5    -0.2564197543336072
#>     Attrib V50    0.5783104036398921
#>     Attrib V51    -0.7317384041648919
#>     Attrib V52    -0.4993134546734423
#>     Attrib V53    0.11917210343098514
#>     Attrib V54    -0.3615652137582662
#>     Attrib V55    1.5714136227925388
#>     Attrib V56    0.26071857749869565
#>     Attrib V57    0.2781968667847497
#>     Attrib V58    -0.1827496386458657
#>     Attrib V59    0.13928773023167773
#>     Attrib V6    0.08354992286726956
#>     Attrib V60    -0.08393524425185347
#>     Attrib V7    -0.08546920037064629
#>     Attrib V8    0.466130049246126
#>     Attrib V9    -1.3727450598607378
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.18081350224863385
#>     Attrib V1    0.09323125740902835
#>     Attrib V10    -0.28908282542165237
#>     Attrib V11    0.19945983352069893
#>     Attrib V12    0.3278280764828215
#>     Attrib V13    -0.12397520814952329
#>     Attrib V14    -0.13136160962188997
#>     Attrib V15    0.19353925270320255
#>     Attrib V16    0.06639614515339731
#>     Attrib V17    0.202563874527754
#>     Attrib V18    0.2189929617614158
#>     Attrib V19    0.058447057102859065
#>     Attrib V2    0.04460015307479626
#>     Attrib V20    0.4602935972871587
#>     Attrib V21    0.4620190367039759
#>     Attrib V22    0.28050188801235393
#>     Attrib V23    0.1805730535993505
#>     Attrib V24    0.33648759653180166
#>     Attrib V25    -0.2028055774755908
#>     Attrib V26    -0.5797730392694508
#>     Attrib V27    -0.5257670679252204
#>     Attrib V28    -0.27327040610442027
#>     Attrib V29    -0.5130681721923634
#>     Attrib V3    0.03850722217336893
#>     Attrib V30    0.2656294831780696
#>     Attrib V31    -1.060328237547907
#>     Attrib V32    -0.23270078871993755
#>     Attrib V33    0.6401749324369714
#>     Attrib V34    -0.3788531479319733
#>     Attrib V35    -0.4684321336492487
#>     Attrib V36    -0.5174380078491658
#>     Attrib V37    -0.7019287229161123
#>     Attrib V38    -9.381098379604242E-4
#>     Attrib V39    0.16797052611115665
#>     Attrib V4    0.2822594054224197
#>     Attrib V40    -0.11519035525638142
#>     Attrib V41    -0.019863212586608
#>     Attrib V42    0.5458509892873775
#>     Attrib V43    0.38571895746809987
#>     Attrib V44    0.16215504941559686
#>     Attrib V45    0.24811821149877458
#>     Attrib V46    -0.1494857966821595
#>     Attrib V47    -0.417429713019307
#>     Attrib V48    -0.09324114220134712
#>     Attrib V49    0.18744392949081706
#>     Attrib V5    0.1227985101261607
#>     Attrib V50    -0.5484687059969741
#>     Attrib V51    -0.24481224253099182
#>     Attrib V52    -0.06969885936626498
#>     Attrib V53    0.683072618229303
#>     Attrib V54    0.8789997871418603
#>     Attrib V55    -0.4660936630654543
#>     Attrib V56    0.24331685846362294
#>     Attrib V57    0.5591889354812375
#>     Attrib V58    0.6090797719843811
#>     Attrib V59    0.9465304757264469
#>     Attrib V6    -0.21799498109777862
#>     Attrib V60    0.5984743287882275
#>     Attrib V7    0.07875471270782904
#>     Attrib V8    -0.05577387030985447
#>     Attrib V9    0.3150076398737607
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.26453353719461764
#>     Attrib V1    -0.18763030132690953
#>     Attrib V10    -0.005788466519922334
#>     Attrib V11    0.5930933177887696
#>     Attrib V12    0.5890918002584277
#>     Attrib V13    -0.05288946517312654
#>     Attrib V14    -0.38945316992407725
#>     Attrib V15    -0.06832983792833563
#>     Attrib V16    -0.13575384405032598
#>     Attrib V17    0.18020123867951704
#>     Attrib V18    0.16930710258716786
#>     Attrib V19    0.05688796093236309
#>     Attrib V2    -0.13850696555060926
#>     Attrib V20    0.3206570747192984
#>     Attrib V21    0.3102271642724417
#>     Attrib V22    0.24743980126887832
#>     Attrib V23    0.42357939103136605
#>     Attrib V24    0.5971039720390525
#>     Attrib V25    0.015660068411560143
#>     Attrib V26    -0.22781118485846752
#>     Attrib V27    -0.29311801912411745
#>     Attrib V28    -2.0031286972275455E-4
#>     Attrib V29    -0.39521927295916076
#>     Attrib V3    -0.10994164590714774
#>     Attrib V30    0.4085896843955561
#>     Attrib V31    -1.0692489069166873
#>     Attrib V32    -0.12977467894919797
#>     Attrib V33    0.8115909366106453
#>     Attrib V34    -0.3749992036525867
#>     Attrib V35    -0.4252851080394602
#>     Attrib V36    -0.5712077001853965
#>     Attrib V37    -0.8866178173181409
#>     Attrib V38    -0.20441927190529802
#>     Attrib V39    0.009367017417425042
#>     Attrib V4    0.210094019500374
#>     Attrib V40    -0.22934765368727028
#>     Attrib V41    0.011000240422939086
#>     Attrib V42    0.527611873971693
#>     Attrib V43    0.3989530429781467
#>     Attrib V44    0.319707746010293
#>     Attrib V45    0.45195599821128807
#>     Attrib V46    -0.03550840753195682
#>     Attrib V47    -0.2574456005491973
#>     Attrib V48    0.19020671227990396
#>     Attrib V49    0.38931732183545564
#>     Attrib V5    0.16257699996801644
#>     Attrib V50    -0.7538012022551032
#>     Attrib V51    -0.1039778049357775
#>     Attrib V52    0.12557908132690623
#>     Attrib V53    0.5388198889315379
#>     Attrib V54    0.8245933078773137
#>     Attrib V55    -0.7371240925279084
#>     Attrib V56    0.15338657423714755
#>     Attrib V57    0.3737910129421517
#>     Attrib V58    0.48473110702676353
#>     Attrib V59    0.7451322080806212
#>     Attrib V6    -0.2307214337531981
#>     Attrib V60    0.42421261776467495
#>     Attrib V7    0.10502744234795748
#>     Attrib V8    -0.30710222468498494
#>     Attrib V9    0.5340932176231579
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.27058238776112614
#>     Attrib V1    -0.20877477552701473
#>     Attrib V10    -0.09451592463244453
#>     Attrib V11    0.2995529023767609
#>     Attrib V12    0.31463300502751557
#>     Attrib V13    -0.07368303260255134
#>     Attrib V14    -0.35414088046984327
#>     Attrib V15    -0.07195277128815145
#>     Attrib V16    -0.11998392247784843
#>     Attrib V17    0.004030393012111895
#>     Attrib V18    -0.013096277002844534
#>     Attrib V19    -0.07533324077272659
#>     Attrib V2    -0.07514181689197726
#>     Attrib V20    0.1255577954329604
#>     Attrib V21    0.15797036607681217
#>     Attrib V22    0.0016776363771357017
#>     Attrib V23    0.07466025913722278
#>     Attrib V24    0.24485769424602702
#>     Attrib V25    -0.06086385570154951
#>     Attrib V26    -0.1417605894106834
#>     Attrib V27    -0.12050124478618059
#>     Attrib V28    0.2890548588920253
#>     Attrib V29    -0.017903848739981174
#>     Attrib V3    -0.15906986545151988
#>     Attrib V30    0.3095951338151081
#>     Attrib V31    -0.7717802464232429
#>     Attrib V32    -0.12632539540955046
#>     Attrib V33    0.5155748641086678
#>     Attrib V34    -0.09370571318769144
#>     Attrib V35    0.0156847494306561
#>     Attrib V36    -0.10098554308003872
#>     Attrib V37    -0.3098005664730793
#>     Attrib V38    0.050937133432624564
#>     Attrib V39    0.14918626804760046
#>     Attrib V4    0.12274351622385309
#>     Attrib V40    -0.19745796673042257
#>     Attrib V41    -0.1524698731299398
#>     Attrib V42    0.027523867912941417
#>     Attrib V43    0.05106932614688831
#>     Attrib V44    0.239668284463713
#>     Attrib V45    0.4067606236317434
#>     Attrib V46    0.05878168864273207
#>     Attrib V47    -0.10503413039719807
#>     Attrib V48    0.23288964554367325
#>     Attrib V49    0.239669343714084
#>     Attrib V5    0.030917579463743988
#>     Attrib V50    -0.563089344618709
#>     Attrib V51    -0.1308731711159258
#>     Attrib V52    -0.020053154776793928
#>     Attrib V53    0.22994115653479308
#>     Attrib V54    0.4961277942983699
#>     Attrib V55    -0.27164113527660255
#>     Attrib V56    -0.06765430556112177
#>     Attrib V57    0.3054189334265073
#>     Attrib V58    0.2040145168428276
#>     Attrib V59    0.40438345306648
#>     Attrib V6    -0.2208503153524759
#>     Attrib V60    0.20951524170053332
#>     Attrib V7    0.02814348549477397
#>     Attrib V8    -0.3588843246072426
#>     Attrib V9    0.20275087957576565
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.3740773429700272
#>     Attrib V1    -0.5601549292095533
#>     Attrib V10    1.477632849952617
#>     Attrib V11    1.5041512512826962
#>     Attrib V12    1.1292151724975783
#>     Attrib V13    0.15612557572793026
#>     Attrib V14    -1.0098479577498876
#>     Attrib V15    -0.5768054384574989
#>     Attrib V16    -0.517791587225643
#>     Attrib V17    -0.30902286700823944
#>     Attrib V18    -0.14451554728645297
#>     Attrib V19    -0.32456950868028006
#>     Attrib V2    -0.237047569828848
#>     Attrib V20    -0.17101745585633843
#>     Attrib V21    0.04099560227806851
#>     Attrib V22    -0.1882043519623563
#>     Attrib V23    0.19538864807201678
#>     Attrib V24    0.06833075426079223
#>     Attrib V25    -0.0189704247185091
#>     Attrib V26    0.6054827487275677
#>     Attrib V27    0.5838583124460547
#>     Attrib V28    1.1218185920726746
#>     Attrib V29    0.15902682371619023
#>     Attrib V3    -0.5876718294571464
#>     Attrib V30    0.5019677894423443
#>     Attrib V31    -1.1397725391962006
#>     Attrib V32    -0.12118246985690655
#>     Attrib V33    0.730245711920671
#>     Attrib V34    0.16227846553611056
#>     Attrib V35    0.7609547105772192
#>     Attrib V36    -0.09841519422810663
#>     Attrib V37    -0.41791688220434703
#>     Attrib V38    -0.6507022859341829
#>     Attrib V39    -0.24783457297396713
#>     Attrib V4    0.2192719224828691
#>     Attrib V40    -0.6832093229795503
#>     Attrib V41    -0.04675203157688138
#>     Attrib V42    -0.4867444550835973
#>     Attrib V43    -0.17434201835884383
#>     Attrib V44    0.7097738584710799
#>     Attrib V45    1.4918667899807128
#>     Attrib V46    0.6398954589842331
#>     Attrib V47    0.7347576875633542
#>     Attrib V48    1.4440513626217435
#>     Attrib V49    1.0621331763388147
#>     Attrib V5    0.36258849022033335
#>     Attrib V50    -0.5431853912703887
#>     Attrib V51    0.6789153364544007
#>     Attrib V52    0.5606025400250847
#>     Attrib V53    -0.13261797343383033
#>     Attrib V54    0.2263025063347994
#>     Attrib V55    -0.7770947160027956
#>     Attrib V56    -0.44852427504970216
#>     Attrib V57    -0.20816016241653698
#>     Attrib V58    0.019205901784255578
#>     Attrib V59    -0.28415501504688034
#>     Attrib V6    0.13653699433653219
#>     Attrib V60    -0.09720281430247207
#>     Attrib V7    0.34866367205592624
#>     Attrib V8    -0.4493265737388745
#>     Attrib V9    1.2917968456372857
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.38012956470138115
#>     Attrib V1    0.5516476590661621
#>     Attrib V10    -1.2555330054412275
#>     Attrib V11    -1.1904145226387857
#>     Attrib V12    -0.795951313250995
#>     Attrib V13    -0.05198528015409568
#>     Attrib V14    0.727977706064978
#>     Attrib V15    0.25757417789551573
#>     Attrib V16    0.4458693598898889
#>     Attrib V17    0.09795146753768878
#>     Attrib V18    0.12185222537673682
#>     Attrib V19    0.26518699792415007
#>     Attrib V2    0.18838358273034084
#>     Attrib V20    -0.11149422848194743
#>     Attrib V21    -0.3171014997520772
#>     Attrib V22    -0.2698227887510943
#>     Attrib V23    -0.41030609914488414
#>     Attrib V24    -0.11397386967651577
#>     Attrib V25    0.2684633120453575
#>     Attrib V26    -0.19785241942870638
#>     Attrib V27    -0.35487685210122666
#>     Attrib V28    -0.9273722218531716
#>     Attrib V29    -0.21575068214984425
#>     Attrib V3    0.49823393713889075
#>     Attrib V30    -0.7638753082261445
#>     Attrib V31    1.168091525627638
#>     Attrib V32    0.26102238822526574
#>     Attrib V33    -0.6427479014843542
#>     Attrib V34    0.2794486601747944
#>     Attrib V35    -0.163344748990157
#>     Attrib V36    0.1713961926400743
#>     Attrib V37    0.35213337881317974
#>     Attrib V38    0.3879370476085362
#>     Attrib V39    0.2221389700057793
#>     Attrib V4    -0.2544729762620787
#>     Attrib V40    0.7624666062096084
#>     Attrib V41    0.20435727601017362
#>     Attrib V42    0.06902046054228471
#>     Attrib V43    0.007286096926468635
#>     Attrib V44    -0.5694529955728455
#>     Attrib V45    -1.0976509281657871
#>     Attrib V46    -0.31229589560870513
#>     Attrib V47    -0.43800592948850775
#>     Attrib V48    -1.1899661861668218
#>     Attrib V49    -0.9909701332978661
#>     Attrib V5    -0.2723630230374462
#>     Attrib V50    0.535901471101352
#>     Attrib V51    -0.6441617013055694
#>     Attrib V52    -0.43652829145245226
#>     Attrib V53    0.17448196644463365
#>     Attrib V54    -0.31459818169601783
#>     Attrib V55    1.3172487467484106
#>     Attrib V56    0.21069376943982587
#>     Attrib V57    0.23678252764132965
#>     Attrib V58    -0.14824191713595927
#>     Attrib V59    0.08746779422183816
#>     Attrib V6    0.09292155190945439
#>     Attrib V60    -0.12343691826295036
#>     Attrib V7    -0.12946266792540895
#>     Attrib V8    0.4174688248043114
#>     Attrib V9    -1.2396929352968702
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.0865952259971197
#>     Attrib V1    0.02941540255748108
#>     Attrib V10    -0.22394244322273807
#>     Attrib V11    0.1802888953709196
#>     Attrib V12    0.24749302456859348
#>     Attrib V13    -0.17699513539755626
#>     Attrib V14    -0.19808390858718503
#>     Attrib V15    0.10260496316320764
#>     Attrib V16    0.044356854877796496
#>     Attrib V17    0.19627116886635754
#>     Attrib V18    0.1569267834064149
#>     Attrib V19    0.07715343553101657
#>     Attrib V2    0.00833425165584365
#>     Attrib V20    0.44013044101848847
#>     Attrib V21    0.2978516995479462
#>     Attrib V22    0.09894466330161554
#>     Attrib V23    0.033866079695009974
#>     Attrib V24    0.1972233873815855
#>     Attrib V25    -0.10291949235157201
#>     Attrib V26    -0.4602941466674063
#>     Attrib V27    -0.4826140885825252
#>     Attrib V28    -0.1648258762858911
#>     Attrib V29    -0.4337788677863866
#>     Attrib V3    -0.07806334050462416
#>     Attrib V30    0.1484809651113095
#>     Attrib V31    -0.8706987271799146
#>     Attrib V32    -0.2075727720609488
#>     Attrib V33    0.5428784097189201
#>     Attrib V34    -0.05323597224667413
#>     Attrib V35    -0.08972554182148046
#>     Attrib V36    -0.17160807314308724
#>     Attrib V37    -0.3617391287803452
#>     Attrib V38    0.2130558513172644
#>     Attrib V39    0.23157590459348848
#>     Attrib V4    0.13050693959105497
#>     Attrib V40    -0.08623417377142688
#>     Attrib V41    -0.2111584853482174
#>     Attrib V42    0.2349063259774585
#>     Attrib V43    0.19055838912256687
#>     Attrib V44    0.18616776371159963
#>     Attrib V45    0.3490921742366872
#>     Attrib V46    -0.05263457250049032
#>     Attrib V47    -0.213816228085169
#>     Attrib V48    0.04678432598946329
#>     Attrib V49    0.12239310337879818
#>     Attrib V5    0.08282027718989476
#>     Attrib V50    -0.4443690499271164
#>     Attrib V51    -0.13694295205924964
#>     Attrib V52    -0.07076263016176722
#>     Attrib V53    0.37606965025691
#>     Attrib V54    0.7569965749865216
#>     Attrib V55    -0.13269364678758952
#>     Attrib V56    0.21078006437091557
#>     Attrib V57    0.5047699489034752
#>     Attrib V58    0.3835851950457033
#>     Attrib V59    0.5997793995626146
#>     Attrib V6    -0.2555703492132874
#>     Attrib V60    0.41434370995954517
#>     Attrib V7    -0.033959453213187905
#>     Attrib V8    -0.09091070570725239
#>     Attrib V9    0.22103213366422136
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.2186181999607755
#>     Attrib V1    0.11830282009560462
#>     Attrib V10    -0.3096252415491219
#>     Attrib V11    0.2395399530521715
#>     Attrib V12    0.19910289321216973
#>     Attrib V13    -0.13084717577182856
#>     Attrib V14    -0.08367735879471001
#>     Attrib V15    0.23598276036223959
#>     Attrib V16    0.10179609592828713
#>     Attrib V17    0.20949068520922817
#>     Attrib V18    0.15415322763719938
#>     Attrib V19    0.13431502296759282
#>     Attrib V2    0.10819808815913046
#>     Attrib V20    0.5212137356676025
#>     Attrib V21    0.48067804105429796
#>     Attrib V22    0.30084099788223606
#>     Attrib V23    0.13352936094552045
#>     Attrib V24    0.2050289108601098
#>     Attrib V25    -0.33024703597133803
#>     Attrib V26    -0.6555835253852431
#>     Attrib V27    -0.5850201877546989
#>     Attrib V28    -0.24234599275828297
#>     Attrib V29    -0.4074592008704347
#>     Attrib V3    -0.027250498897557717
#>     Attrib V30    0.26841852810222083
#>     Attrib V31    -1.108829548212256
#>     Attrib V32    -0.33531272076617696
#>     Attrib V33    0.6710056912968876
#>     Attrib V34    -0.250669220988215
#>     Attrib V35    -0.37670893457325716
#>     Attrib V36    -0.388198634040258
#>     Attrib V37    -0.5737435626040034
#>     Attrib V38    0.15434736399933188
#>     Attrib V39    0.2191268302007118
#>     Attrib V4    0.2606913744070682
#>     Attrib V40    -0.041269953618080384
#>     Attrib V41    -0.1116119140483774
#>     Attrib V42    0.4377009188798978
#>     Attrib V43    0.3627736369328012
#>     Attrib V44    0.1003527022022073
#>     Attrib V45    0.29853399974460954
#>     Attrib V46    -0.08466712492917744
#>     Attrib V47    -0.4102879525767657
#>     Attrib V48    -0.060606538546911864
#>     Attrib V49    0.11851413573194042
#>     Attrib V5    0.11386168252131841
#>     Attrib V50    -0.6064946172327769
#>     Attrib V51    -0.2764671886135299
#>     Attrib V52    -0.04603094809519049
#>     Attrib V53    0.6243456448451533
#>     Attrib V54    0.8833389311171537
#>     Attrib V55    -0.353279155056056
#>     Attrib V56    0.23830194119391157
#>     Attrib V57    0.6192595387117197
#>     Attrib V58    0.574413695418626
#>     Attrib V59    0.9253099451327425
#>     Attrib V6    -0.3282456411560261
#>     Attrib V60    0.5602107404032108
#>     Attrib V7    0.08614454450145981
#>     Attrib V8    -0.013466094236003685
#>     Attrib V9    0.28209476307675185
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.009683148741116058
#>     Attrib V1    0.037650979231825664
#>     Attrib V10    -0.2518971977755954
#>     Attrib V11    0.11856244370874576
#>     Attrib V12    0.20085337559154742
#>     Attrib V13    -0.011251268023186909
#>     Attrib V14    -0.0776516815109847
#>     Attrib V15    0.0927942466620581
#>     Attrib V16    -0.01668963133031188
#>     Attrib V17    0.16141548867205785
#>     Attrib V18    0.1486335705521877
#>     Attrib V19    0.04679077771335547
#>     Attrib V2    0.02562818560210608
#>     Attrib V20    0.3110308200578936
#>     Attrib V21    0.2593470189685509
#>     Attrib V22    0.08944755920017647
#>     Attrib V23    0.10190119175937792
#>     Attrib V24    0.19382824785423872
#>     Attrib V25    -0.07308705569005511
#>     Attrib V26    -0.36717890252634133
#>     Attrib V27    -0.2974531868105138
#>     Attrib V28    -0.10904622346886665
#>     Attrib V29    -0.2276656905716184
#>     Attrib V3    0.05913584188193287
#>     Attrib V30    0.13155890518610083
#>     Attrib V31    -0.7298681422466816
#>     Attrib V32    -0.1642744520508566
#>     Attrib V33    0.36822953107941314
#>     Attrib V34    -0.1300377219227378
#>     Attrib V35    -0.19633784212992345
#>     Attrib V36    -0.23080132110386045
#>     Attrib V37    -0.3222681726388133
#>     Attrib V38    0.06465635076845146
#>     Attrib V39    0.22523463616901604
#>     Attrib V4    0.1857705708407357
#>     Attrib V40    -0.04031207673721224
#>     Attrib V41    -0.06971823345288754
#>     Attrib V42    0.23351439423057255
#>     Attrib V43    0.1395799968744752
#>     Attrib V44    0.1310574103242622
#>     Attrib V45    0.18249249323053984
#>     Attrib V46    -0.022484551293163554
#>     Attrib V47    -0.16446546593952857
#>     Attrib V48    -0.004977350788148475
#>     Attrib V49    0.15313960824165757
#>     Attrib V5    0.12969799025679424
#>     Attrib V50    -0.3972462323863507
#>     Attrib V51    -0.15408838330206887
#>     Attrib V52    -0.024083895775814657
#>     Attrib V53    0.37530829933585197
#>     Attrib V54    0.5207738331778528
#>     Attrib V55    -0.17578253417292006
#>     Attrib V56    0.1444182066618266
#>     Attrib V57    0.4079991295861612
#>     Attrib V58    0.311255773665596
#>     Attrib V59    0.5980290975116551
#>     Attrib V6    -0.1320141335986681
#>     Attrib V60    0.3902873539940915
#>     Attrib V7    0.051727443656264624
#>     Attrib V8    -0.16640898440368765
#>     Attrib V9    0.12234307030567976
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.1335923083420321
#>     Attrib V1    0.21957869573572614
#>     Attrib V10    -0.24925766979442843
#>     Attrib V11    0.23469321847444463
#>     Attrib V12    0.2592978122564409
#>     Attrib V13    -0.17972385228725052
#>     Attrib V14    -0.18897692055424195
#>     Attrib V15    0.21462214133114146
#>     Attrib V16    0.02747969514513281
#>     Attrib V17    0.1690499228765853
#>     Attrib V18    0.130677536678245
#>     Attrib V19    0.05032794163666563
#>     Attrib V2    0.10378023132894522
#>     Attrib V20    0.43903145499187873
#>     Attrib V21    0.3506476372581504
#>     Attrib V22    0.13643832370983058
#>     Attrib V23    0.04125872434323035
#>     Attrib V24    0.16994074823480645
#>     Attrib V25    -0.19349810047975252
#>     Attrib V26    -0.5093355051872502
#>     Attrib V27    -0.6443924856558789
#>     Attrib V28    -0.4057693218745546
#>     Attrib V29    -0.6389896116127435
#>     Attrib V3    -0.059079223384729325
#>     Attrib V30    0.12516658871685793
#>     Attrib V31    -0.8613251285932418
#>     Attrib V32    -0.20939876002466876
#>     Attrib V33    0.6427352476586656
#>     Attrib V34    -0.09279823841086232
#>     Attrib V35    -0.13955320907837152
#>     Attrib V36    -0.26687365604662866
#>     Attrib V37    -0.39354075390475474
#>     Attrib V38    0.1444361284254956
#>     Attrib V39    0.2642108477962395
#>     Attrib V4    0.1603785308299505
#>     Attrib V40    -0.0636175526170848
#>     Attrib V41    -0.21098208517602357
#>     Attrib V42    0.25735920124445855
#>     Attrib V43    0.21843255681222112
#>     Attrib V44    0.14570586617559386
#>     Attrib V45    0.2120685052472889
#>     Attrib V46    -0.07986936411534831
#>     Attrib V47    -0.33268668549878616
#>     Attrib V48    0.0035451775258018414
#>     Attrib V49    0.14274950048076493
#>     Attrib V5    0.022061487133149735
#>     Attrib V50    -0.49434696699505243
#>     Attrib V51    -0.2829527200137841
#>     Attrib V52    -0.08395419832510322
#>     Attrib V53    0.4626762317872609
#>     Attrib V54    0.8819894107717055
#>     Attrib V55    -0.06977262538009299
#>     Attrib V56    0.2781472291125709
#>     Attrib V57    0.592928322355325
#>     Attrib V58    0.46721022936870177
#>     Attrib V59    0.7573127594120598
#>     Attrib V6    -0.31422436226458295
#>     Attrib V60    0.5584098301931528
#>     Attrib V7    0.01889743701777304
#>     Attrib V8    -0.137720981571289
#>     Attrib V9    0.19992827962433418
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.537174332642978
#>     Attrib V1    0.31558276578542704
#>     Attrib V10    -0.6656005054102522
#>     Attrib V11    -0.99417191763698
#>     Attrib V12    -0.8192595048500513
#>     Attrib V13    -0.138922065880798
#>     Attrib V14    0.5561443340557971
#>     Attrib V15    0.23639395410149405
#>     Attrib V16    0.44651547841947675
#>     Attrib V17    0.046198869675788255
#>     Attrib V18    -0.0025920777742988056
#>     Attrib V19    0.25483331717319596
#>     Attrib V2    0.09950296501655474
#>     Attrib V20    -0.21341989890541668
#>     Attrib V21    -0.35602298714239566
#>     Attrib V22    -0.20744621332298432
#>     Attrib V23    -0.46431207871405195
#>     Attrib V24    -0.29600661491876934
#>     Attrib V25    0.2490989819716696
#>     Attrib V26    0.12373781943456004
#>     Attrib V27    -0.11292657434423882
#>     Attrib V28    -0.7096918594000559
#>     Attrib V29    -0.12818986237655236
#>     Attrib V3    0.4582076519221912
#>     Attrib V30    -0.7306162322967875
#>     Attrib V31    1.2281560365387243
#>     Attrib V32    0.342236241908474
#>     Attrib V33    -0.7955871121553876
#>     Attrib V34    0.267772689225384
#>     Attrib V35    -0.05192477213907069
#>     Attrib V36    0.29411006146372903
#>     Attrib V37    0.4143608516767816
#>     Attrib V38    0.17480299662245397
#>     Attrib V39    0.06816318243915485
#>     Attrib V4    -0.11050078930823388
#>     Attrib V40    0.5806730844172718
#>     Attrib V41    0.05012325927955247
#>     Attrib V42    -0.22653167094025653
#>     Attrib V43    -0.1948861911995349
#>     Attrib V44    -0.5825048805047602
#>     Attrib V45    -1.021159160383949
#>     Attrib V46    -0.16412764127451057
#>     Attrib V47    -0.17778232867062277
#>     Attrib V48    -0.9027555008673658
#>     Attrib V49    -0.8385525863855545
#>     Attrib V5    -0.19169384232648334
#>     Attrib V50    0.7415523526943949
#>     Attrib V51    -0.26523412422997744
#>     Attrib V52    -0.232346873655022
#>     Attrib V53    -0.04796367485333301
#>     Attrib V54    -0.46674749586374964
#>     Attrib V55    1.3620765080407822
#>     Attrib V56    0.05674300128978626
#>     Attrib V57    -0.032182822268984085
#>     Attrib V58    -0.19445858267221763
#>     Attrib V59    -0.19968966779802694
#>     Attrib V6    0.08433728019726583
#>     Attrib V60    -0.10662965410893635
#>     Attrib V7    -0.06573130715168085
#>     Attrib V8    0.6566190559911157
#>     Attrib V9    -0.8547481031901734
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.19501189345225814
#>     Attrib V1    0.037474413395014984
#>     Attrib V10    -0.0338645624739641
#>     Attrib V11    -0.03402058867017022
#>     Attrib V12    -0.015131296372293726
#>     Attrib V13    0.020893205578887963
#>     Attrib V14    -0.004512780491670263
#>     Attrib V15    0.020673844945737038
#>     Attrib V16    0.076804032993998
#>     Attrib V17    0.06035017493143848
#>     Attrib V18    0.046661646693726876
#>     Attrib V19    -0.016469917292037062
#>     Attrib V2    0.04550372955118724
#>     Attrib V20    -0.082775161780822
#>     Attrib V21    -0.10420642385374884
#>     Attrib V22    -0.11040683039611232
#>     Attrib V23    -0.11830727741699955
#>     Attrib V24    -0.034793606282679516
#>     Attrib V25    -0.02862550799875081
#>     Attrib V26    -0.095440585052291
#>     Attrib V27    -0.09020197752413593
#>     Attrib V28    -0.019422395768563566
#>     Attrib V29    -0.05279588415276335
#>     Attrib V3    0.11749889162761824
#>     Attrib V30    -0.08056516124337584
#>     Attrib V31    -0.04717128078860066
#>     Attrib V32    0.05945141746672061
#>     Attrib V33    0.02756776030069258
#>     Attrib V34    0.03506066350777262
#>     Attrib V35    0.006420269203336881
#>     Attrib V36    7.585900008900316E-4
#>     Attrib V37    0.03349754406659719
#>     Attrib V38    0.028822320689167062
#>     Attrib V39    0.07962951539705353
#>     Attrib V4    0.10930872589722776
#>     Attrib V40    0.023945607159726524
#>     Attrib V41    0.04005174914859475
#>     Attrib V42    0.037775204377866405
#>     Attrib V43    -0.015255824777404293
#>     Attrib V44    -3.704431523679609E-4
#>     Attrib V45    0.021580678184183997
#>     Attrib V46    0.0705826572429073
#>     Attrib V47    0.05522023701519591
#>     Attrib V48    0.0184914711298221
#>     Attrib V49    -0.0022092299870957195
#>     Attrib V5    0.08376462056578245
#>     Attrib V50    0.07541118352790654
#>     Attrib V51    0.11038473524721058
#>     Attrib V52    0.10399938539499436
#>     Attrib V53    0.08037729839543445
#>     Attrib V54    0.025255667619764853
#>     Attrib V55    0.10549434152522826
#>     Attrib V56    0.050942020931281334
#>     Attrib V57    0.11169733127726293
#>     Attrib V58    0.11859305406108009
#>     Attrib V59    0.04176344150270326
#>     Attrib V6    0.06477129778692291
#>     Attrib V60    0.11416341827586399
#>     Attrib V7    0.008779741537896842
#>     Attrib V8    -0.007989237860767811
#>     Attrib V9    0.05470142780683826
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.1246587016265253
#>     Attrib V1    0.06413993690188863
#>     Attrib V10    -0.012537215923592238
#>     Attrib V11    0.011069191472927634
#>     Attrib V12    -0.027296170521760497
#>     Attrib V13    -0.051851169539972035
#>     Attrib V14    -0.004352806401811334
#>     Attrib V15    0.1001881090909919
#>     Attrib V16    0.02115060152392481
#>     Attrib V17    0.001322988629772806
#>     Attrib V18    -0.0199700408517264
#>     Attrib V19    -0.032097504255191825
#>     Attrib V2    0.14689618894241968
#>     Attrib V20    -0.06946825665244458
#>     Attrib V21    -0.08729483655984849
#>     Attrib V22    -0.056615030040985496
#>     Attrib V23    -0.11807728882545573
#>     Attrib V24    -0.045687175260179694
#>     Attrib V25    -0.0903629380160447
#>     Attrib V26    -0.10579430287310494
#>     Attrib V27    -0.07074800860970111
#>     Attrib V28    -0.01858201833516165
#>     Attrib V29    -0.07145153931763674
#>     Attrib V3    0.08507920996345024
#>     Attrib V30    -0.009883078051924997
#>     Attrib V31    -0.004017482069315488
#>     Attrib V32    -2.0544599180508317E-4
#>     Attrib V33    0.09171359780724668
#>     Attrib V34    -0.023957842955309668
#>     Attrib V35    0.056890687433781104
#>     Attrib V36    -0.022250648750271305
#>     Attrib V37    -0.03362646356240081
#>     Attrib V38    0.0698674134629258
#>     Attrib V39    0.11783027412442597
#>     Attrib V4    0.10709739813802877
#>     Attrib V40    0.012674282829313188
#>     Attrib V41    0.03609652469226782
#>     Attrib V42    -0.018302119594949567
#>     Attrib V43    0.03589269824718597
#>     Attrib V44    0.07234151751384651
#>     Attrib V45    0.06691728891581819
#>     Attrib V46    0.027801717088878086
#>     Attrib V47    0.007515539277400784
#>     Attrib V48    0.08044128084618163
#>     Attrib V49    -2.0929305198251716E-4
#>     Attrib V5    0.07810701786027514
#>     Attrib V50    0.01863632120811824
#>     Attrib V51    0.059527693255726453
#>     Attrib V52    0.044894859443752044
#>     Attrib V53    0.011470596852229654
#>     Attrib V54    0.0468557952874199
#>     Attrib V55    0.12753302196179028
#>     Attrib V56    0.05467922511657082
#>     Attrib V57    0.15644343276269226
#>     Attrib V58    0.05224377774513683
#>     Attrib V59    0.06299343883862758
#>     Attrib V6    0.04615171076989371
#>     Attrib V60    0.11894722814382586
#>     Attrib V7    -0.027583775710059495
#>     Attrib V8    0.046132679669841005
#>     Attrib V9    0.036927583695815114
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.1905147280925593
#>     Attrib V1    0.048092169438744496
#>     Attrib V10    -0.04085431605993131
#>     Attrib V11    0.007416047264980281
#>     Attrib V12    0.0013133432126049966
#>     Attrib V13    -0.028155894388078345
#>     Attrib V14    -4.040657203192669E-4
#>     Attrib V15    0.008017140778727793
#>     Attrib V16    0.006300858728774796
#>     Attrib V17    -0.03475335996042929
#>     Attrib V18    0.03078353507259901
#>     Attrib V19    -0.09320714071476903
#>     Attrib V2    0.0978271449190156
#>     Attrib V20    -0.01761030315049351
#>     Attrib V21    -0.02742458108248786
#>     Attrib V22    -0.10938959787155406
#>     Attrib V23    -0.08985095301684952
#>     Attrib V24    -0.07519136340812256
#>     Attrib V25    -0.048170312020472845
#>     Attrib V26    -0.06013387751772314
#>     Attrib V27    -0.05397947918221634
#>     Attrib V28    -0.007059004216941773
#>     Attrib V29    -0.0558794757686526
#>     Attrib V3    0.13331777350488952
#>     Attrib V30    -0.06100312525017331
#>     Attrib V31    -0.11250608008129082
#>     Attrib V32    0.008899961279206637
#>     Attrib V33    0.07286286325563503
#>     Attrib V34    0.027182691237644063
#>     Attrib V35    -0.009672951549300618
#>     Attrib V36    0.046024245133731136
#>     Attrib V37    -0.03888878490733321
#>     Attrib V38    0.010447614934990282
#>     Attrib V39    0.1234425393684052
#>     Attrib V4    0.08350252068441272
#>     Attrib V40    -0.004244931410874427
#>     Attrib V41    -0.053206457108606754
#>     Attrib V42    -0.012701036616340514
#>     Attrib V43    -0.007303296471743614
#>     Attrib V44    0.0910268460066234
#>     Attrib V45    0.01706854056849182
#>     Attrib V46    0.03891045498183006
#>     Attrib V47    0.0813418988249663
#>     Attrib V48    0.06508734814705694
#>     Attrib V49    0.07383533973862154
#>     Attrib V5    0.08785839798936042
#>     Attrib V50    -0.051700337141318754
#>     Attrib V51    0.09950680147968623
#>     Attrib V52    0.06250499672481798
#>     Attrib V53    0.05366443240845483
#>     Attrib V54    0.055491409030913215
#>     Attrib V55    0.10121352419923188
#>     Attrib V56    0.05919482399388356
#>     Attrib V57    0.08914470520643579
#>     Attrib V58    0.09770702143714707
#>     Attrib V59    0.14536164936681847
#>     Attrib V6    -0.010043294125583963
#>     Attrib V60    0.15857395372017197
#>     Attrib V7    0.03671841501801384
#>     Attrib V8    0.024617848101454464
#>     Attrib V9    0.048498169364627905
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.1641428084851781
#>     Attrib V1    -0.08729694699180598
#>     Attrib V10    -0.1341173565357996
#>     Attrib V11    0.3121553092862926
#>     Attrib V12    0.48890771807186617
#>     Attrib V13    -0.0572528790894468
#>     Attrib V14    -0.22750245036095512
#>     Attrib V15    0.12279072541102767
#>     Attrib V16    -0.10380684949899623
#>     Attrib V17    0.19699619120538048
#>     Attrib V18    0.1727739385027118
#>     Attrib V19    0.05866048692659955
#>     Attrib V2    -0.04164760222905474
#>     Attrib V20    0.2944174486357913
#>     Attrib V21    0.2934858191180274
#>     Attrib V22    0.29517326557336543
#>     Attrib V23    0.2776666896580024
#>     Attrib V24    0.49356998572984995
#>     Attrib V25    -0.004452684554615069
#>     Attrib V26    -0.3857718321554965
#>     Attrib V27    -0.42774980112184335
#>     Attrib V28    -0.18649233666241022
#>     Attrib V29    -0.5645764899932059
#>     Attrib V3    -0.08339933651895187
#>     Attrib V30    0.3148273851589612
#>     Attrib V31    -0.9538831113617758
#>     Attrib V32    -0.1466965131403984
#>     Attrib V33    0.7653645348876968
#>     Attrib V34    -0.3563976538103559
#>     Attrib V35    -0.43469663968102157
#>     Attrib V36    -0.545024667003975
#>     Attrib V37    -0.8919425214964751
#>     Attrib V38    -0.16855734830681765
#>     Attrib V39    0.04940994231092941
#>     Attrib V4    0.27388681846766844
#>     Attrib V40    -0.1307589355360407
#>     Attrib V41    -0.058470102132921496
#>     Attrib V42    0.5322287941344218
#>     Attrib V43    0.3820725971158594
#>     Attrib V44    0.18135118308427517
#>     Attrib V45    0.3363449956867709
#>     Attrib V46    -0.12298028721829066
#>     Attrib V47    -0.38429976736178334
#>     Attrib V48    0.06236916552309213
#>     Attrib V49    0.3508302647491316
#>     Attrib V5    0.13886921206578934
#>     Attrib V50    -0.6906983277780726
#>     Attrib V51    -0.19144510498626205
#>     Attrib V52    0.04786315708316954
#>     Attrib V53    0.6216588130996479
#>     Attrib V54    0.8858015505576217
#>     Attrib V55    -0.545012659910422
#>     Attrib V56    0.13704891958919815
#>     Attrib V57    0.40619960479085815
#>     Attrib V58    0.5771756062828428
#>     Attrib V59    0.7899180299531973
#>     Attrib V6    -0.23038927565544073
#>     Attrib V60    0.50278465713551
#>     Attrib V7    0.13510108503384197
#>     Attrib V8    -0.16683674550145344
#>     Attrib V9    0.36607411984903687
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.1161588889669632
#>     Attrib V1    -0.12280165355657316
#>     Attrib V10    -0.09933949810784466
#>     Attrib V11    0.3755723926455822
#>     Attrib V12    0.5457960129830871
#>     Attrib V13    -0.07993751981008612
#>     Attrib V14    -0.30760223769676487
#>     Attrib V15    0.026328376413575782
#>     Attrib V16    -0.13819557970492347
#>     Attrib V17    0.278383222303305
#>     Attrib V18    0.2627110787699369
#>     Attrib V19    0.06044321877951019
#>     Attrib V2    -0.13033439409123146
#>     Attrib V20    0.33244282309250095
#>     Attrib V21    0.4233920757712909
#>     Attrib V22    0.4390695198634618
#>     Attrib V23    0.4852367836082579
#>     Attrib V24    0.6529709167462557
#>     Attrib V25    -6.73239925969367E-4
#>     Attrib V26    -0.358787767712955
#>     Attrib V27    -0.3822306153382575
#>     Attrib V28    -0.2430603996856528
#>     Attrib V29    -0.657775074169726
#>     Attrib V3    -0.07414939977269833
#>     Attrib V30    0.4014958884724064
#>     Attrib V31    -1.1161892218100402
#>     Attrib V32    -0.17856985688481963
#>     Attrib V33    0.7958654286472407
#>     Attrib V34    -0.531932070720914
#>     Attrib V35    -0.6340941339355661
#>     Attrib V36    -0.6236418415681707
#>     Attrib V37    -1.0369316029471294
#>     Attrib V38    -0.1987050811940944
#>     Attrib V39    0.00995872773895696
#>     Attrib V4    0.3041701988993931
#>     Attrib V40    -0.18849089883301
#>     Attrib V41    0.004481213943381874
#>     Attrib V42    0.5774216626928736
#>     Attrib V43    0.5517078780448884
#>     Attrib V44    0.3618141304250597
#>     Attrib V45    0.331381541662184
#>     Attrib V46    -0.20124316846398688
#>     Attrib V47    -0.4386083721057211
#>     Attrib V48    0.10934802987914741
#>     Attrib V49    0.38265687470581317
#>     Attrib V5    0.21728129533235532
#>     Attrib V50    -0.760658393191302
#>     Attrib V51    -0.09552135476113044
#>     Attrib V52    0.05965016594922105
#>     Attrib V53    0.6694136512264272
#>     Attrib V54    0.9559872008818303
#>     Attrib V55    -0.8052037691447406
#>     Attrib V56    0.29740249259147233
#>     Attrib V57    0.4763924534828385
#>     Attrib V58    0.6533885368992455
#>     Attrib V59    0.9844726019053252
#>     Attrib V6    -0.25400712339485226
#>     Attrib V60    0.5899876417703178
#>     Attrib V7    0.13584341589425972
#>     Attrib V8    -0.19857275818674158
#>     Attrib V9    0.4900102788496093
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.5422150417545542
#>     Attrib V1    0.2691757325855958
#>     Attrib V10    -0.2237206212270179
#>     Attrib V11    -0.6951942958962267
#>     Attrib V12    -0.6902741619629557
#>     Attrib V13    -0.023841521049212028
#>     Attrib V14    0.46674108299845624
#>     Attrib V15    0.12863373656199392
#>     Attrib V16    0.3488699426512682
#>     Attrib V17    0.11472484852382024
#>     Attrib V18    0.12127245912487052
#>     Attrib V19    0.15542930125778082
#>     Attrib V2    0.1167808631768148
#>     Attrib V20    -0.19511337401786463
#>     Attrib V21    -0.14933350577831345
#>     Attrib V22    -0.04758378621030374
#>     Attrib V23    -0.2799539701039967
#>     Attrib V24    -0.3658624481614721
#>     Attrib V25    0.20094754989624555
#>     Attrib V26    0.1981165610545432
#>     Attrib V27    -0.011123214959751772
#>     Attrib V28    -0.5488701448363215
#>     Attrib V29    -0.043500279131029704
#>     Attrib V3    0.33308360743570625
#>     Attrib V30    -0.5021554943077071
#>     Attrib V31    1.073211996070504
#>     Attrib V32    0.26778905473575215
#>     Attrib V33    -0.6768629626781637
#>     Attrib V34    0.08878198575051474
#>     Attrib V35    -0.08794350023142242
#>     Attrib V36    0.2982658515165567
#>     Attrib V37    0.44779615881375884
#>     Attrib V38    0.016072210808659133
#>     Attrib V39    -0.10084555882066765
#>     Attrib V4    0.032768594874386985
#>     Attrib V40    0.4030232796978235
#>     Attrib V41    0.1265287366016431
#>     Attrib V42    -0.24833319207817053
#>     Attrib V43    -0.19844441228702558
#>     Attrib V44    -0.44542698899403077
#>     Attrib V45    -0.9196290576146448
#>     Attrib V46    -0.17808134711659943
#>     Attrib V47    -0.015575346708684342
#>     Attrib V48    -0.5554362789567854
#>     Attrib V49    -0.6437012086848553
#>     Attrib V5    -0.11060891825081105
#>     Attrib V50    0.7647946005969274
#>     Attrib V51    0.06681579284489082
#>     Attrib V52    0.019069381066879332
#>     Attrib V53    -0.17214509750115264
#>     Attrib V54    -0.4540922718800982
#>     Attrib V55    0.7148085621204234
#>     Attrib V56    -0.0738648962560784
#>     Attrib V57    -0.17604412948181095
#>     Attrib V58    -0.2577396024358091
#>     Attrib V59    -0.2901380183843737
#>     Attrib V6    0.15652209025100403
#>     Attrib V60    0.007505691029574338
#>     Attrib V7    0.0317264521794978
#>     Attrib V8    0.5172008758721152
#>     Attrib V9    -0.45516528160319225
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.0882160937464645
#>     Attrib V1    0.21612319514668635
#>     Attrib V10    -0.23480648493525935
#>     Attrib V11    0.11815744816975199
#>     Attrib V12    0.16990397391213846
#>     Attrib V13    -0.12941970466538708
#>     Attrib V14    -0.04260624751324537
#>     Attrib V15    0.1251233717119372
#>     Attrib V16    0.08454417475260423
#>     Attrib V17    0.09894337574191828
#>     Attrib V18    0.07880527712947677
#>     Attrib V19    0.01203738434101229
#>     Attrib V2    0.11232793924771764
#>     Attrib V20    0.32033577276572506
#>     Attrib V21    0.24480120764101618
#>     Attrib V22    0.018713460502363752
#>     Attrib V23    -0.09018396708601711
#>     Attrib V24    0.13707233327292792
#>     Attrib V25    -0.18595548750620852
#>     Attrib V26    -0.4317124997827631
#>     Attrib V27    -0.46078612902357713
#>     Attrib V28    -0.27730117249270775
#>     Attrib V29    -0.3396933391340634
#>     Attrib V3    -0.0039441243689309026
#>     Attrib V30    0.0560951758122763
#>     Attrib V31    -0.5833620958843093
#>     Attrib V32    -0.12721703442222954
#>     Attrib V33    0.3987078677356638
#>     Attrib V34    -0.07838052344325866
#>     Attrib V35    -0.14038545316175305
#>     Attrib V36    -0.20541184583368838
#>     Attrib V37    -0.2983200358439544
#>     Attrib V38    0.09152959826973672
#>     Attrib V39    0.1839597388303936
#>     Attrib V4    0.18869000493377494
#>     Attrib V40    -0.03464808834217814
#>     Attrib V41    -0.17929138638194145
#>     Attrib V42    0.16696607408813302
#>     Attrib V43    0.18872840205064545
#>     Attrib V44    0.058708707809211585
#>     Attrib V45    0.12821389969033986
#>     Attrib V46    -0.04297758693238283
#>     Attrib V47    -0.2586679660292223
#>     Attrib V48    0.01909453095227931
#>     Attrib V49    0.07929531979799233
#>     Attrib V5    0.11316684275661326
#>     Attrib V50    -0.3516775480377235
#>     Attrib V51    -0.20104073443982612
#>     Attrib V52    -0.01749133465898073
#>     Attrib V53    0.3583133128433793
#>     Attrib V54    0.6126468938593755
#>     Attrib V55    0.03910085891090087
#>     Attrib V56    0.2090519908629224
#>     Attrib V57    0.5225285625675835
#>     Attrib V58    0.39113173711432475
#>     Attrib V59    0.6113760827106492
#>     Attrib V6    -0.1833733095957357
#>     Attrib V60    0.4165768085950505
#>     Attrib V7    0.008164556751784449
#>     Attrib V8    -0.15997667725360687
#>     Attrib V9    0.11206481812078815
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.16274520113153348
#>     Attrib V1    0.057286236851068296
#>     Attrib V10    -0.29124268366517453
#>     Attrib V11    0.3321775792028425
#>     Attrib V12    0.4502042185879359
#>     Attrib V13    -0.11203830622744936
#>     Attrib V14    -0.26005300070004694
#>     Attrib V15    0.11316862769906037
#>     Attrib V16    -0.07076119130860774
#>     Attrib V17    0.2961251266368586
#>     Attrib V18    0.2165220985253264
#>     Attrib V19    0.06820264254069398
#>     Attrib V2    -0.026122090645129156
#>     Attrib V20    0.42983175607491575
#>     Attrib V21    0.3973060009755207
#>     Attrib V22    0.3458757948141222
#>     Attrib V23    0.2724653150080385
#>     Attrib V24    0.4166632553373145
#>     Attrib V25    -0.15231835870522037
#>     Attrib V26    -0.5502872412522462
#>     Attrib V27    -0.6575819234892292
#>     Attrib V28    -0.43274736145063963
#>     Attrib V29    -0.7915280700149412
#>     Attrib V3    0.02490479809673129
#>     Attrib V30    0.21989975986255203
#>     Attrib V31    -1.1511291081700445
#>     Attrib V32    -0.27841166418482627
#>     Attrib V33    0.7371704115743265
#>     Attrib V34    -0.3427946120036495
#>     Attrib V35    -0.43746093842758993
#>     Attrib V36    -0.5041108840283196
#>     Attrib V37    -0.7578027576144448
#>     Attrib V38    -0.0024233537503440283
#>     Attrib V39    0.16381751626712018
#>     Attrib V4    0.2804909347242573
#>     Attrib V40    -0.1422495074139218
#>     Attrib V41    -0.12923682398369607
#>     Attrib V42    0.526598135225058
#>     Attrib V43    0.49749001771866935
#>     Attrib V44    0.18634659751388355
#>     Attrib V45    0.29084411831370405
#>     Attrib V46    -0.15547380013274711
#>     Attrib V47    -0.38589416757613726
#>     Attrib V48    -0.03408737021006454
#>     Attrib V49    0.26568910864885714
#>     Attrib V5    0.09713528650270205
#>     Attrib V50    -0.6502564635095314
#>     Attrib V51    -0.2778953390931153
#>     Attrib V52    -0.022602020968468
#>     Attrib V53    0.7321323169801708
#>     Attrib V54    1.061626532522632
#>     Attrib V55    -0.49757009230202476
#>     Attrib V56    0.3210033710054256
#>     Attrib V57    0.5896577589090964
#>     Attrib V58    0.6547061726470205
#>     Attrib V59    1.0359908227959997
#>     Attrib V6    -0.3228548462902442
#>     Attrib V60    0.6458256638957047
#>     Attrib V7    0.04577846745176631
#>     Attrib V8    -0.15181486363683647
#>     Attrib V9    0.33683182702001163
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.5449496204037522
#>     Attrib V1    0.2317714388990287
#>     Attrib V10    -0.35169144410042075
#>     Attrib V11    -0.7480688635248901
#>     Attrib V12    -0.7376085593144684
#>     Attrib V13    -0.10468000692151919
#>     Attrib V14    0.5052174807274827
#>     Attrib V15    0.18152181131717718
#>     Attrib V16    0.35940088628417755
#>     Attrib V17    0.0989792165061216
#>     Attrib V18    0.01774684797031942
#>     Attrib V19    0.15623425229383764
#>     Attrib V2    0.10327911990259317
#>     Attrib V20    -0.2210848441625711
#>     Attrib V21    -0.2616624010679055
#>     Attrib V22    -0.16939559697599788
#>     Attrib V23    -0.3368890294712368
#>     Attrib V24    -0.3998164826231973
#>     Attrib V25    0.17653980869672892
#>     Attrib V26    0.18157576677601905
#>     Attrib V27    -0.0013436996522598285
#>     Attrib V28    -0.540548818501062
#>     Attrib V29    -0.10904609982716591
#>     Attrib V3    0.3554551671698996
#>     Attrib V30    -0.6061115598935353
#>     Attrib V31    1.0135232039455626
#>     Attrib V32    0.3117027789620686
#>     Attrib V33    -0.7540854921157861
#>     Attrib V34    0.10874514091199282
#>     Attrib V35    -0.11116321384810837
#>     Attrib V36    0.2948545506702222
#>     Attrib V37    0.33521182404165756
#>     Attrib V38    0.0630346975479891
#>     Attrib V39    -0.0708795519075904
#>     Attrib V4    -0.00857679496456283
#>     Attrib V40    0.43426726987067404
#>     Attrib V41    0.06504635732846427
#>     Attrib V42    -0.24527225223323829
#>     Attrib V43    -0.16017814651070666
#>     Attrib V44    -0.5163593358242397
#>     Attrib V45    -0.9851080027772791
#>     Attrib V46    -0.16310136158860392
#>     Attrib V47    -0.03752161128005615
#>     Attrib V48    -0.6812843152001663
#>     Attrib V49    -0.7071632594458065
#>     Attrib V5    -0.20051939122072412
#>     Attrib V50    0.7751804422560472
#>     Attrib V51    -0.041428569983911624
#>     Attrib V52    9.661795835542269E-4
#>     Attrib V53    -0.17579619259192739
#>     Attrib V54    -0.44249054283402933
#>     Attrib V55    0.988555059299208
#>     Attrib V56    -0.042274649353921986
#>     Attrib V57    -0.06453610432103372
#>     Attrib V58    -0.18426487860115234
#>     Attrib V59    -0.28530441376588206
#>     Attrib V6    0.1258278714158817
#>     Attrib V60    -0.07925105981078386
#>     Attrib V7    -0.07672128537013699
#>     Attrib V8    0.6169965809311876
#>     Attrib V9    -0.527552059393756
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.895830460430807
#>     Attrib V1    0.42114327270924506
#>     Attrib V10    1.2551752119915855
#>     Attrib V11    1.5253271470147496
#>     Attrib V12    1.15873109157618
#>     Attrib V13    0.1803749356202833
#>     Attrib V14    -0.37414699401538093
#>     Attrib V15    -0.4159042986695188
#>     Attrib V16    -0.9249167868734706
#>     Attrib V17    -0.9502233960533164
#>     Attrib V18    -0.8017570005234428
#>     Attrib V19    -0.8287079355447764
#>     Attrib V2    0.2543494491961565
#>     Attrib V20    -0.3749742353804202
#>     Attrib V21    -0.04096889937506101
#>     Attrib V22    -0.5398274780740433
#>     Attrib V23    -0.3287676936571524
#>     Attrib V24    -0.771677629101785
#>     Attrib V25    -1.0399609118038944
#>     Attrib V26    0.3140770000735706
#>     Attrib V27    0.8706416105099043
#>     Attrib V28    1.4031085115238688
#>     Attrib V29    1.0027046341556707
#>     Attrib V3    -0.07454412694250821
#>     Attrib V30    0.8342062435225237
#>     Attrib V31    -0.9470169957692328
#>     Attrib V32    -0.39079129033719556
#>     Attrib V33    0.24792185605009134
#>     Attrib V34    -0.1552931762825351
#>     Attrib V35    0.29417036626524684
#>     Attrib V36    -0.49208378529345653
#>     Attrib V37    -0.3189883584652502
#>     Attrib V38    -0.6532105320512044
#>     Attrib V39    0.0684980136641286
#>     Attrib V4    0.4907900913219931
#>     Attrib V40    -0.4588755953290958
#>     Attrib V41    0.3077580275937313
#>     Attrib V42    -0.22346055159603315
#>     Attrib V43    -0.14743833822586933
#>     Attrib V44    0.543590747906444
#>     Attrib V45    1.4310005455517743
#>     Attrib V46    0.46560316357499654
#>     Attrib V47    0.42292003123386995
#>     Attrib V48    1.1901740171368294
#>     Attrib V49    1.152443381821478
#>     Attrib V5    0.7497592786962859
#>     Attrib V50    -0.3504363215706533
#>     Attrib V51    0.33991880862633783
#>     Attrib V52    0.5481508387467934
#>     Attrib V53    0.17024593120541193
#>     Attrib V54    -0.15575198486983663
#>     Attrib V55    -0.7870845671661164
#>     Attrib V56    -0.7270391731189609
#>     Attrib V57    0.27269611683492134
#>     Attrib V58    0.264771034805557
#>     Attrib V59    -0.12652950308801386
#>     Attrib V6    0.38350315129821105
#>     Attrib V60    -0.29866708804724484
#>     Attrib V7    0.28415337651410183
#>     Attrib V8    -0.4171487424145781
#>     Attrib V9    1.011298249204343
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.25295195961049066
#>     Attrib V1    0.056602215436035115
#>     Attrib V10    -0.06736944834672456
#>     Attrib V11    -0.1537981114679363
#>     Attrib V12    -0.08543617483172554
#>     Attrib V13    0.008342085488019351
#>     Attrib V14    0.1438335703938646
#>     Attrib V15    0.05624811857017025
#>     Attrib V16    0.10897460871351579
#>     Attrib V17    0.1131589190465233
#>     Attrib V18    0.0354275278405305
#>     Attrib V19    0.06306171444548671
#>     Attrib V2    0.09922791757912958
#>     Attrib V20    -0.07218557940253471
#>     Attrib V21    -0.06538048888034646
#>     Attrib V22    -0.04570661228816472
#>     Attrib V23    -0.05763517672867063
#>     Attrib V24    -0.10263019848385534
#>     Attrib V25    -0.022187383670648157
#>     Attrib V26    -0.0894921986089197
#>     Attrib V27    -0.08308521631903375
#>     Attrib V28    -0.12627482183513714
#>     Attrib V29    -0.06278684257802869
#>     Attrib V3    0.0904443993862218
#>     Attrib V30    -0.14609672064183882
#>     Attrib V31    0.12074286093933748
#>     Attrib V32    0.0751685882229039
#>     Attrib V33    -0.01419082662425428
#>     Attrib V34    0.009047624575322112
#>     Attrib V35    0.06527641278118289
#>     Attrib V36    0.12044726307849285
#>     Attrib V37    0.13335026127042196
#>     Attrib V38    -0.031815749496246604
#>     Attrib V39    0.026862435453189913
#>     Attrib V4    0.08864323013748025
#>     Attrib V40    0.10717520518093884
#>     Attrib V41    0.09344982204465767
#>     Attrib V42    0.022516927324780167
#>     Attrib V43    -0.01756139950603263
#>     Attrib V44    -0.02954673086094197
#>     Attrib V45    -0.1540146738962605
#>     Attrib V46    -0.015602009353270833
#>     Attrib V47    0.018428326885024278
#>     Attrib V48    -0.02962545634744562
#>     Attrib V49    -0.09083052105160452
#>     Attrib V5    0.016999020710134354
#>     Attrib V50    0.15437849795540082
#>     Attrib V51    0.052169507147735814
#>     Attrib V52    0.04425806119996885
#>     Attrib V53    -0.01948140236582389
#>     Attrib V54    -0.0621002239350949
#>     Attrib V55    0.14056980666958452
#>     Attrib V56    0.0299390062737943
#>     Attrib V57    0.01814329444968085
#>     Attrib V58    0.013672410320587872
#>     Attrib V59    -0.0128676931100351
#>     Attrib V6    0.1458794033690408
#>     Attrib V60    0.09134233935433318
#>     Attrib V7    0.003777666757864921
#>     Attrib V8    0.12287440902806754
#>     Attrib V9    -0.0567692445645335
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.2865348106576849
#>     Attrib V1    -0.07092280009308287
#>     Attrib V10    0.035172879231465136
#>     Attrib V11    0.5187280022179027
#>     Attrib V12    0.5568143500313206
#>     Attrib V13    -0.060803847943544743
#>     Attrib V14    -0.4088835102745911
#>     Attrib V15    0.013615038967405691
#>     Attrib V16    -0.12144026274529668
#>     Attrib V17    0.15964800375449983
#>     Attrib V18    0.21434355095696667
#>     Attrib V19    0.04035464466978359
#>     Attrib V2    -0.1293504821155507
#>     Attrib V20    0.2889290533124669
#>     Attrib V21    0.34707924269282653
#>     Attrib V22    0.28915151010095125
#>     Attrib V23    0.2895833557512309
#>     Attrib V24    0.5862672195848911
#>     Attrib V25    -0.0024195632554845727
#>     Attrib V26    -0.2635979055221005
#>     Attrib V27    -0.42043679601834166
#>     Attrib V28    -0.19119072826944752
#>     Attrib V29    -0.6015604558600889
#>     Attrib V3    -0.1752435665734135
#>     Attrib V30    0.41689024289300997
#>     Attrib V31    -1.0929034483580073
#>     Attrib V32    -0.10953569723315279
#>     Attrib V33    0.8659071260749341
#>     Attrib V34    -0.3519748004820647
#>     Attrib V35    -0.4687895280509381
#>     Attrib V36    -0.5759081666743386
#>     Attrib V37    -0.9611415301918841
#>     Attrib V38    -0.1784626792808902
#>     Attrib V39    0.07152601172570881
#>     Attrib V4    0.22330062391754252
#>     Attrib V40    -0.28746360223372147
#>     Attrib V41    -0.08543906544521859
#>     Attrib V42    0.5102950126681131
#>     Attrib V43    0.3811242274783516
#>     Attrib V44    0.30955239967305875
#>     Attrib V45    0.45897715295534763
#>     Attrib V46    -0.16883463781823127
#>     Attrib V47    -0.3942435191474982
#>     Attrib V48    0.1879588725442533
#>     Attrib V49    0.3559127653528215
#>     Attrib V5    0.1277864250564715
#>     Attrib V50    -0.7282560920234753
#>     Attrib V51    -0.14665299712236976
#>     Attrib V52    0.033819261447917755
#>     Attrib V53    0.6383294951738931
#>     Attrib V54    0.959605532032075
#>     Attrib V55    -0.6628839759573572
#>     Attrib V56    0.11947816372266128
#>     Attrib V57    0.4601129822416601
#>     Attrib V58    0.5529737200461516
#>     Attrib V59    0.8778579358658681
#>     Attrib V6    -0.2476151440128429
#>     Attrib V60    0.4989708795940052
#>     Attrib V7    0.09137119947461274
#>     Attrib V8    -0.17493084183430477
#>     Attrib V9    0.5338808608897931
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.34172326960665633
#>     Attrib V1    0.6862195615469354
#>     Attrib V10    -2.1451057540248146
#>     Attrib V11    -1.8440743728752111
#>     Attrib V12    -1.2588181815386588
#>     Attrib V13    -0.3408386742733794
#>     Attrib V14    1.0147034858987871
#>     Attrib V15    0.6155232318844805
#>     Attrib V16    0.7429235192324788
#>     Attrib V17    0.3427010564995698
#>     Attrib V18    0.17530326535964968
#>     Attrib V19    0.5493282234898909
#>     Attrib V2    0.15095399359679734
#>     Attrib V20    -0.13097449880045725
#>     Attrib V21    -0.8612775474795216
#>     Attrib V22    -0.4763530886351712
#>     Attrib V23    -0.72508899322848
#>     Attrib V24    0.013142533946408689
#>     Attrib V25    0.19681286802355644
#>     Attrib V26    -0.823682505014083
#>     Attrib V27    -0.5856835903604988
#>     Attrib V28    -1.2595979812103155
#>     Attrib V29    -0.12949929273417152
#>     Attrib V3    0.6342615446483829
#>     Attrib V30    -1.0768897113849074
#>     Attrib V31    1.4627536607540281
#>     Attrib V32    0.5683375695736527
#>     Attrib V33    -0.5870383967972894
#>     Attrib V34    0.5202940635828295
#>     Attrib V35    -0.3676239513167514
#>     Attrib V36    0.3257932911158913
#>     Attrib V37    0.7494588991884176
#>     Attrib V38    1.1002855953276447
#>     Attrib V39    0.4024138895945419
#>     Attrib V4    -0.4728075735227221
#>     Attrib V40    0.8316748184074698
#>     Attrib V41    0.13423549847649321
#>     Attrib V42    0.26588969734254103
#>     Attrib V43    -0.05202422985929092
#>     Attrib V44    -1.1521268930365116
#>     Attrib V45    -1.7387175300330517
#>     Attrib V46    -0.4009900238968513
#>     Attrib V47    -0.795150809534442
#>     Attrib V48    -1.732019802653742
#>     Attrib V49    -1.350454743095111
#>     Attrib V5    -0.35645935140026835
#>     Attrib V50    0.6389858399542969
#>     Attrib V51    -1.1368897502155377
#>     Attrib V52    -0.7546192972851923
#>     Attrib V53    0.24810207329095116
#>     Attrib V54    -0.023713386024391762
#>     Attrib V55    1.7800863536899414
#>     Attrib V56    0.44044453785163723
#>     Attrib V57    0.5940339598682368
#>     Attrib V58    -0.044674478081985824
#>     Attrib V59    0.41731496956604336
#>     Attrib V6    -0.133056266301543
#>     Attrib V60    0.161073687427009
#>     Attrib V7    -0.5205109567555186
#>     Attrib V8    0.09958553145410452
#>     Attrib V9    -1.9226044489770815
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.04295991512414949
#>     Attrib V1    0.057044397108008536
#>     Attrib V10    -0.19752856250073417
#>     Attrib V11    0.16782571189198073
#>     Attrib V12    0.19789962666165575
#>     Attrib V13    -0.08041901693994294
#>     Attrib V14    -0.016803035049735918
#>     Attrib V15    0.09632901675106958
#>     Attrib V16    -0.026371244625246943
#>     Attrib V17    0.028113217419075038
#>     Attrib V18    0.04581123230269358
#>     Attrib V19    -0.03227090487639536
#>     Attrib V2    0.05344518582488317
#>     Attrib V20    0.23219629184540344
#>     Attrib V21    0.17814616120884427
#>     Attrib V22    0.011707820097619913
#>     Attrib V23    -0.10463921665624219
#>     Attrib V24    0.0928114136050011
#>     Attrib V25    -0.06826724044333818
#>     Attrib V26    -0.29091830635862675
#>     Attrib V27    -0.2728051024443808
#>     Attrib V28    -0.07084213963749972
#>     Attrib V29    -0.14213777791841425
#>     Attrib V3    0.029540934950647278
#>     Attrib V30    0.03248937117247717
#>     Attrib V31    -0.49162978264803187
#>     Attrib V32    -0.08680810261238767
#>     Attrib V33    0.31745727742530466
#>     Attrib V34    -0.06923760495414685
#>     Attrib V35    -0.07600518177040368
#>     Attrib V36    -0.16896745875889874
#>     Attrib V37    -0.19496774290739846
#>     Attrib V38    0.09517779938106698
#>     Attrib V39    0.20482344873060693
#>     Attrib V4    0.125066734570989
#>     Attrib V40    -0.05953172425059409
#>     Attrib V41    -0.11182080899786558
#>     Attrib V42    0.06027551585641307
#>     Attrib V43    0.12184559097414878
#>     Attrib V44    0.05075241908593372
#>     Attrib V45    0.2438159241760706
#>     Attrib V46    4.5121962008885986E-4
#>     Attrib V47    -0.09101395817344832
#>     Attrib V48    0.04675496786717049
#>     Attrib V49    0.06369848429397502
#>     Attrib V5    0.05816061881192815
#>     Attrib V50    -0.2523243673774431
#>     Attrib V51    -0.07874169804198684
#>     Attrib V52    0.06463171950724922
#>     Attrib V53    0.25152264073788805
#>     Attrib V54    0.4136455370154095
#>     Attrib V55    0.07068014046234092
#>     Attrib V56    0.13472476008291784
#>     Attrib V57    0.41040311121794365
#>     Attrib V58    0.2322243719089531
#>     Attrib V59    0.41919005614693633
#>     Attrib V6    -0.12437282549680856
#>     Attrib V60    0.29243966506601426
#>     Attrib V7    -0.012157979210595627
#>     Attrib V8    -0.09127339744502176
#>     Attrib V9    0.09707578005945047
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    0.008284027470500503
#>     Attrib V1    0.10447832614551433
#>     Attrib V10    -0.10569679149216711
#>     Attrib V11    0.11466606608691612
#>     Attrib V12    0.19805407938113823
#>     Attrib V13    -0.015419502139149263
#>     Attrib V14    -0.06156613400238405
#>     Attrib V15    0.08535934210571872
#>     Attrib V16    -0.024900260661490564
#>     Attrib V17    0.06446284582303861
#>     Attrib V18    0.03263411427650093
#>     Attrib V19    -0.034174735839220836
#>     Attrib V2    0.08680956693413869
#>     Attrib V20    0.14265054483330253
#>     Attrib V21    0.15806302673227765
#>     Attrib V22    -0.003253424693865552
#>     Attrib V23    -0.02324228518679563
#>     Attrib V24    0.044222322479873545
#>     Attrib V25    -0.08294438645641282
#>     Attrib V26    -0.19568913448011158
#>     Attrib V27    -0.23652805305184477
#>     Attrib V28    -0.04284964016730499
#>     Attrib V29    -0.22420473932759885
#>     Attrib V3    1.3081403926556534E-4
#>     Attrib V30    0.07726124826972437
#>     Attrib V31    -0.40331083378461985
#>     Attrib V32    -0.1093923932409387
#>     Attrib V33    0.24275775037446704
#>     Attrib V34    -0.1012958986369609
#>     Attrib V35    -0.07454431259450427
#>     Attrib V36    -0.16536881623255137
#>     Attrib V37    -0.1852990294358909
#>     Attrib V38    0.030770787864748225
#>     Attrib V39    0.2117948226400531
#>     Attrib V4    0.18497111338718697
#>     Attrib V40    -0.044483664697104644
#>     Attrib V41    -0.09831340943904351
#>     Attrib V42    0.11557388561338638
#>     Attrib V43    0.053054484025281616
#>     Attrib V44    0.038287538369799604
#>     Attrib V45    0.16021273476501852
#>     Attrib V46    -0.02275119122468541
#>     Attrib V47    -0.13521608794597798
#>     Attrib V48    0.06983404590822358
#>     Attrib V49    0.06147783427809337
#>     Attrib V5    0.052463456021499794
#>     Attrib V50    -0.2567787239828643
#>     Attrib V51    -0.08920474947628698
#>     Attrib V52    0.0392116022909669
#>     Attrib V53    0.2376496910473125
#>     Attrib V54    0.3742128446574938
#>     Attrib V55    -0.04074398424661134
#>     Attrib V56    0.13187769947700956
#>     Attrib V57    0.30810557910750036
#>     Attrib V58    0.25753892205671497
#>     Attrib V59    0.4342475335730042
#>     Attrib V6    -0.10563359619024972
#>     Attrib V60    0.2841879990663053
#>     Attrib V7    -0.04615222232553614
#>     Attrib V8    -0.12751808950819316
#>     Attrib V9    0.07223189137878525
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.04741640366288805
#>     Attrib V1    0.16518948888523488
#>     Attrib V10    -0.26063206001895306
#>     Attrib V11    0.12982164624161574
#>     Attrib V12    0.12062775487223168
#>     Attrib V13    -0.07740919131009608
#>     Attrib V14    -0.04548362676227726
#>     Attrib V15    0.16060207849891162
#>     Attrib V16    0.04750478114276886
#>     Attrib V17    0.12465839464305443
#>     Attrib V18    0.10759613251085201
#>     Attrib V19    0.03818443870912219
#>     Attrib V2    0.15420357545954144
#>     Attrib V20    0.32999052872277557
#>     Attrib V21    0.19336802913926532
#>     Attrib V22    0.062235853388560525
#>     Attrib V23    -0.027860597597676014
#>     Attrib V24    0.12857264626597495
#>     Attrib V25    -0.17803736262956493
#>     Attrib V26    -0.3657494020606957
#>     Attrib V27    -0.4559824493798085
#>     Attrib V28    -0.26149066973300444
#>     Attrib V29    -0.38490056324609767
#>     Attrib V3    -0.012539892699142886
#>     Attrib V30    0.013777420525487442
#>     Attrib V31    -0.5884552775789785
#>     Attrib V32    -0.15509850350495327
#>     Attrib V33    0.410461450282661
#>     Attrib V34    -0.03141645834791266
#>     Attrib V35    -0.057057388727280486
#>     Attrib V36    -0.1846165616484734
#>     Attrib V37    -0.24901142723928707
#>     Attrib V38    0.17287760972571561
#>     Attrib V39    0.1917968472229731
#>     Attrib V4    0.18499026204393404
#>     Attrib V40    -0.047703121395878
#>     Attrib V41    -0.176650693738193
#>     Attrib V42    0.138277270478597
#>     Attrib V43    0.16482129359435183
#>     Attrib V44    0.1288089160132833
#>     Attrib V45    0.17400352341958333
#>     Attrib V46    -0.04551317252045316
#>     Attrib V47    -0.19660503042781044
#>     Attrib V48    -0.004515524153210984
#>     Attrib V49    0.060681707345907894
#>     Attrib V5    0.0572893749678393
#>     Attrib V50    -0.3508742134011822
#>     Attrib V51    -0.19349166625412745
#>     Attrib V52    -0.01695662725852
#>     Attrib V53    0.3748015505903578
#>     Attrib V54    0.6323475452117234
#>     Attrib V55    0.08511616387678911
#>     Attrib V56    0.16147445134637775
#>     Attrib V57    0.47479265244695973
#>     Attrib V58    0.2914743481437022
#>     Attrib V59    0.5693026962616032
#>     Attrib V6    -0.20057931933866796
#>     Attrib V60    0.3818925103982859
#>     Attrib V7    0.005487750333413608
#>     Attrib V8    -0.09136638346411306
#>     Attrib V9    0.12503745964929366
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.05302074503357852
#>     Attrib V1    0.12461692487855992
#>     Attrib V10    -0.2586928107269826
#>     Attrib V11    0.09558475522332227
#>     Attrib V12    0.1314204138237721
#>     Attrib V13    -0.11501512414103472
#>     Attrib V14    -0.00552811597794435
#>     Attrib V15    0.13698747397582994
#>     Attrib V16    0.038716806597830236
#>     Attrib V17    0.031380063247420424
#>     Attrib V18    0.1113595479136086
#>     Attrib V19    -0.03312164740904537
#>     Attrib V2    0.06501331767854066
#>     Attrib V20    0.2509634149484419
#>     Attrib V21    0.23471343352315935
#>     Attrib V22    0.016001816885446676
#>     Attrib V23    -0.030742599355171308
#>     Attrib V24    0.029429760519668346
#>     Attrib V25    -0.2229902744385968
#>     Attrib V26    -0.32910121082345445
#>     Attrib V27    -0.2936849836137533
#>     Attrib V28    -0.02700512789919104
#>     Attrib V29    -0.16854849706979924
#>     Attrib V3    0.041544103691016264
#>     Attrib V30    0.1406511601970654
#>     Attrib V31    -0.5972585103516298
#>     Attrib V32    -0.16063869241639997
#>     Attrib V33    0.33974802461242043
#>     Attrib V34    -0.09699218378902351
#>     Attrib V35    -0.1182687050232211
#>     Attrib V36    -0.12602740832294498
#>     Attrib V37    -0.23857093919478614
#>     Attrib V38    0.06130390209963545
#>     Attrib V39    0.20749367085997622
#>     Attrib V4    0.14395786853461914
#>     Attrib V40    -0.09033699675357516
#>     Attrib V41    -0.16549607471274644
#>     Attrib V42    0.15539109080369762
#>     Attrib V43    0.06055188739722297
#>     Attrib V44    0.11847038304796942
#>     Attrib V45    0.2338704248523578
#>     Attrib V46    -0.01885697650800112
#>     Attrib V47    -0.15607010631173882
#>     Attrib V48    -0.00567775583517724
#>     Attrib V49    0.12347545880285776
#>     Attrib V5    0.09555128658088384
#>     Attrib V50    -0.328714311805731
#>     Attrib V51    -0.11693589715324681
#>     Attrib V52    0.02344708994016738
#>     Attrib V53    0.26466473877363206
#>     Attrib V54    0.4144442028624805
#>     Attrib V55    -0.037185384011803976
#>     Attrib V56    0.09607702995200046
#>     Attrib V57    0.36932343449223776
#>     Attrib V58    0.32670222736431914
#>     Attrib V59    0.4580882779614492
#>     Attrib V6    -0.14311129747138066
#>     Attrib V60    0.2844935568246261
#>     Attrib V7    -0.009070597813828091
#>     Attrib V8    -0.07687771654950626
#>     Attrib V9    0.11463585910755061
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
#>  0.2463768 
```
