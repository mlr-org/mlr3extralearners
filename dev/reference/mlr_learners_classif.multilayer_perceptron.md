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
#>     Threshold    -0.05083879775385921
#>     Node 2    1.936474674298059
#>     Node 3    1.9276868883435008
#>     Node 4    1.086510828216627
#>     Node 5    -1.897532124240844
#>     Node 6    1.3957468161279363
#>     Node 7    1.729587878121171
#>     Node 8    1.501436298866671
#>     Node 9    1.6878602604095467
#>     Node 10    -4.099297787232818
#>     Node 11    1.9293116595322457
#>     Node 12    2.0514025189677763
#>     Node 13    0.13892937711894035
#>     Node 14    1.741252800720884
#>     Node 15    -1.7158293219839353
#>     Node 16    0.0354512487426556
#>     Node 17    0.5901686871924953
#>     Node 18    -0.7349974127387547
#>     Node 19    2.124707793330565
#>     Node 20    1.836772207198562
#>     Node 21    -2.1391866420172096
#>     Node 22    1.9438147022471766
#>     Node 23    1.2823505498165388
#>     Node 24    -0.22738575049603357
#>     Node 25    5.366286412597977
#>     Node 26    -0.17219375265696593
#>     Node 27    1.6177008799864125
#>     Node 28    -2.4833965589689475
#>     Node 29    0.4350282290657566
#>     Node 30    0.24134578282488936
#>     Node 31    1.6798223732815019
#>     Node 32    0.014492174240587042
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.042617242667520316
#>     Node 2    -1.9776512395789045
#>     Node 3    -1.9054528208128707
#>     Node 4    -1.0361653842659984
#>     Node 5    1.9190327688153064
#>     Node 6    -1.3718528064570954
#>     Node 7    -1.7165815676822103
#>     Node 8    -1.5286671123877273
#>     Node 9    -1.7006206956969372
#>     Node 10    4.041419725457021
#>     Node 11    -1.898703861014546
#>     Node 12    -2.1050749593733324
#>     Node 13    -0.08274109935422828
#>     Node 14    -1.684962801148024
#>     Node 15    1.7136752633238814
#>     Node 16    -0.05065746390075534
#>     Node 17    -0.5521559512376745
#>     Node 18    0.7653889344896108
#>     Node 19    -2.1280359542744205
#>     Node 20    -1.8218043450276766
#>     Node 21    2.205656730898634
#>     Node 22    -1.9795312102872544
#>     Node 23    -1.3237323078576697
#>     Node 24    0.21392077482444832
#>     Node 25    -5.390903638473368
#>     Node 26    0.08862027481504263
#>     Node 27    -1.655828638158903
#>     Node 28    2.447991271133389
#>     Node 29    -0.46596178896466706
#>     Node 30    -0.1615270167814927
#>     Node 31    -1.6239508558031173
#>     Node 32    -0.02931590944734555
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.2811642255583473
#>     Attrib V1    0.10490926737205855
#>     Attrib V10    -0.12142390098809298
#>     Attrib V11    -0.18083640914709986
#>     Attrib V12    0.06943644543088076
#>     Attrib V13    -0.4392059699621183
#>     Attrib V14    -0.15065606815244342
#>     Attrib V15    0.2538836775367655
#>     Attrib V16    0.4606854354033373
#>     Attrib V17    0.13520329340482123
#>     Attrib V18    0.08633283616939535
#>     Attrib V19    0.5299476401043705
#>     Attrib V2    -0.17476130653525035
#>     Attrib V20    0.470390551957866
#>     Attrib V21    0.24377845862107816
#>     Attrib V22    -0.11620196622679499
#>     Attrib V23    -0.04604554835609709
#>     Attrib V24    0.3776062850385948
#>     Attrib V25    -0.27391064596549064
#>     Attrib V26    -0.7388603086839116
#>     Attrib V27    -0.8053416892002311
#>     Attrib V28    -0.2614985163491423
#>     Attrib V29    -0.3200400867540282
#>     Attrib V3    -0.5913217689142849
#>     Attrib V30    -0.013478886219074813
#>     Attrib V31    -0.5157838808721306
#>     Attrib V32    0.3546645659329704
#>     Attrib V33    0.4822056316260536
#>     Attrib V34    0.4828835011888725
#>     Attrib V35    0.4225288026066612
#>     Attrib V36    -0.467169163357661
#>     Attrib V37    -0.9598656339326903
#>     Attrib V38    0.07544267340308636
#>     Attrib V39    0.1981005621152221
#>     Attrib V4    0.5308024206100401
#>     Attrib V40    -0.5200306494787845
#>     Attrib V41    -0.4100897965757318
#>     Attrib V42    0.1709168610584563
#>     Attrib V43    0.5031204981446553
#>     Attrib V44    0.730743564546666
#>     Attrib V45    0.2956472927741522
#>     Attrib V46    0.22161837852800542
#>     Attrib V47    -0.0180384670380697
#>     Attrib V48    0.4742191984041403
#>     Attrib V49    0.3215177312320805
#>     Attrib V5    -0.21457587679491585
#>     Attrib V50    -0.7400949691548455
#>     Attrib V51    0.0836329805773072
#>     Attrib V52    0.1571318012896653
#>     Attrib V53    0.22940387816557284
#>     Attrib V54    0.48813068157858297
#>     Attrib V55    0.05682542608771519
#>     Attrib V56    0.4299032060604983
#>     Attrib V57    -0.4962785596017743
#>     Attrib V58    0.463702522565981
#>     Attrib V59    0.9472811012706793
#>     Attrib V6    -0.3813020000173084
#>     Attrib V60    0.4861470607736329
#>     Attrib V7    -0.3803790530349919
#>     Attrib V8    0.009060318258525867
#>     Attrib V9    0.37238546879753254
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.38068208957035976
#>     Attrib V1    0.13407630162216116
#>     Attrib V10    -0.09500864167773904
#>     Attrib V11    -0.1690761233167972
#>     Attrib V12    0.12944046259660627
#>     Attrib V13    -0.4022136841554079
#>     Attrib V14    -0.2168020090136805
#>     Attrib V15    0.3177168731480317
#>     Attrib V16    0.4172201311366689
#>     Attrib V17    0.08380005665734296
#>     Attrib V18    -0.027177200153230177
#>     Attrib V19    0.49020984958025177
#>     Attrib V2    -0.0719116907019831
#>     Attrib V20    0.3523761413184301
#>     Attrib V21    0.1310171663375401
#>     Attrib V22    -0.10436085669554217
#>     Attrib V23    -0.0131416185350857
#>     Attrib V24    0.43091646710700826
#>     Attrib V25    -0.1829685031617882
#>     Attrib V26    -0.7298988197054449
#>     Attrib V27    -0.8309012720260633
#>     Attrib V28    -0.35681965525047027
#>     Attrib V29    -0.47767503787839916
#>     Attrib V3    -0.5901036440253093
#>     Attrib V30    -0.02425766473086917
#>     Attrib V31    -0.3401284234954326
#>     Attrib V32    0.4511656850089527
#>     Attrib V33    0.5016076051845677
#>     Attrib V34    0.3926337082892313
#>     Attrib V35    0.32955195884158983
#>     Attrib V36    -0.5926957333694154
#>     Attrib V37    -1.0071841446378034
#>     Attrib V38    -0.07703313213046947
#>     Attrib V39    0.12671745247560515
#>     Attrib V4    0.5083514454552936
#>     Attrib V40    -0.5013004165958352
#>     Attrib V41    -0.37285027750443145
#>     Attrib V42    0.18197500443875586
#>     Attrib V43    0.44183374406231674
#>     Attrib V44    0.6175728849541782
#>     Attrib V45    0.20740598856854545
#>     Attrib V46    0.17311671954783633
#>     Attrib V47    0.05195580806498213
#>     Attrib V48    0.5152734636195516
#>     Attrib V49    0.3473102379810046
#>     Attrib V5    -0.26477904043873585
#>     Attrib V50    -0.6975179678772361
#>     Attrib V51    0.0538389939619017
#>     Attrib V52    0.1586797890116333
#>     Attrib V53    0.18763526652887155
#>     Attrib V54    0.6017295060283512
#>     Attrib V55    0.07049874479052991
#>     Attrib V56    0.42066186414678236
#>     Attrib V57    -0.43254897250248414
#>     Attrib V58    0.5137358641923377
#>     Attrib V59    0.8575268131937246
#>     Attrib V6    -0.323291077766704
#>     Attrib V60    0.4210829747891528
#>     Attrib V7    -0.3444451304208147
#>     Attrib V8    0.02649501266829645
#>     Attrib V9    0.32842314721361954
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.01848498124616379
#>     Attrib V1    0.05793370183579791
#>     Attrib V10    -0.16168850449188427
#>     Attrib V11    -0.1736376281372795
#>     Attrib V12    0.010206214364727585
#>     Attrib V13    -0.19916827764807013
#>     Attrib V14    0.012561518280574512
#>     Attrib V15    0.25341428949594785
#>     Attrib V16    0.2668803983004472
#>     Attrib V17    0.1052881608376162
#>     Attrib V18    0.06346564806499663
#>     Attrib V19    0.26669035091972787
#>     Attrib V2    -0.10145400510347365
#>     Attrib V20    0.22109316039889543
#>     Attrib V21    0.11574845639076281
#>     Attrib V22    -0.15376299497347534
#>     Attrib V23    -0.1035014390702506
#>     Attrib V24    0.1340262620974808
#>     Attrib V25    -0.18213248168622687
#>     Attrib V26    -0.4344015883852621
#>     Attrib V27    -0.549196655914981
#>     Attrib V28    -0.2592461784828888
#>     Attrib V29    -0.26976558107415416
#>     Attrib V3    -0.2886358472204591
#>     Attrib V30    -0.09630658052548177
#>     Attrib V31    -0.18323150041169217
#>     Attrib V32    0.20633803461905995
#>     Attrib V33    0.307913943790021
#>     Attrib V34    0.30623614516823167
#>     Attrib V35    0.2616988829628713
#>     Attrib V36    -0.26485201874988384
#>     Attrib V37    -0.5137842329824265
#>     Attrib V38    -0.042198332904557136
#>     Attrib V39    0.0892441249043539
#>     Attrib V4    0.24756377407388896
#>     Attrib V40    -0.22952270193492127
#>     Attrib V41    -0.2511361882588814
#>     Attrib V42    0.06459944762944997
#>     Attrib V43    0.18062378924546493
#>     Attrib V44    0.2673771740656105
#>     Attrib V45    0.14927404677769546
#>     Attrib V46    0.06774008300076186
#>     Attrib V47    -0.03097318091828764
#>     Attrib V48    0.24413036075915454
#>     Attrib V49    0.1455495778276175
#>     Attrib V5    -0.06724521602795638
#>     Attrib V50    -0.304527933586929
#>     Attrib V51    0.11024000624087188
#>     Attrib V52    0.08282098749430962
#>     Attrib V53    0.20443316160001254
#>     Attrib V54    0.2827658701818037
#>     Attrib V55    0.1481226130155736
#>     Attrib V56    0.3289641512521707
#>     Attrib V57    -0.13165147406312958
#>     Attrib V58    0.2599196104966667
#>     Attrib V59    0.52906278113637
#>     Attrib V6    -0.1699389853137169
#>     Attrib V60    0.3233590674051167
#>     Attrib V7    -0.15006437795277763
#>     Attrib V8    -0.05411263208206217
#>     Attrib V9    0.16463726584735408
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.39947657612800397
#>     Attrib V1    0.15062492059975652
#>     Attrib V10    -0.553455936360834
#>     Attrib V11    -0.551262264692997
#>     Attrib V12    -0.9286015295635378
#>     Attrib V13    0.061132425295351095
#>     Attrib V14    0.6102439338463327
#>     Attrib V15    0.41231248800390163
#>     Attrib V16    0.21035841967934613
#>     Attrib V17    0.2103742036443451
#>     Attrib V18    0.14783570758412948
#>     Attrib V19    -0.1366663638740467
#>     Attrib V2    0.2513281837551104
#>     Attrib V20    -0.027270504361287334
#>     Attrib V21    -0.32967711280807327
#>     Attrib V22    -0.35775240729551955
#>     Attrib V23    -0.587370723819267
#>     Attrib V24    -1.0383691596922529
#>     Attrib V25    -0.3430609111112846
#>     Attrib V26    -0.1798728345133387
#>     Attrib V27    -0.249844869931918
#>     Attrib V28    -0.6844640629075316
#>     Attrib V29    -0.30186554751494193
#>     Attrib V3    0.43612966866932845
#>     Attrib V30    -0.15523056551301861
#>     Attrib V31    0.4282357059807679
#>     Attrib V32    -0.07338998435773354
#>     Attrib V33    0.2498567320739223
#>     Attrib V34    -0.04700503011832552
#>     Attrib V35    -0.43439967962098575
#>     Attrib V36    0.7006863081518525
#>     Attrib V37    0.5304594836191191
#>     Attrib V38    0.023294217300699374
#>     Attrib V39    -0.15501235061728416
#>     Attrib V4    -0.24668938526343423
#>     Attrib V40    0.39121667692418227
#>     Attrib V41    -0.29480219322239387
#>     Attrib V42    -0.15368799655764667
#>     Attrib V43    -0.40098545054506896
#>     Attrib V44    -0.4903529585491991
#>     Attrib V45    -0.04479283038513165
#>     Attrib V46    -0.7427718884001161
#>     Attrib V47    -0.863580194086772
#>     Attrib V48    -1.0827320814184906
#>     Attrib V49    -0.6739396144859985
#>     Attrib V5    -0.1151056262246288
#>     Attrib V50    0.6786451361933035
#>     Attrib V51    -0.7135164717016769
#>     Attrib V52    -0.44805660908659767
#>     Attrib V53    -0.27036107733467896
#>     Attrib V54    -0.3629982193396848
#>     Attrib V55    0.5129711485513649
#>     Attrib V56    0.18693527298876006
#>     Attrib V57    0.8619678190317923
#>     Attrib V58    -0.4497669050205363
#>     Attrib V59    -0.20643121347693016
#>     Attrib V6    -0.06439951986643287
#>     Attrib V60    -0.10463379601228716
#>     Attrib V7    0.6338751400648819
#>     Attrib V8    0.2830799802227912
#>     Attrib V9    -0.978466200980667
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.08763641084341033
#>     Attrib V1    0.07791356350689904
#>     Attrib V10    -0.17267492846632151
#>     Attrib V11    -0.17022663794481696
#>     Attrib V12    0.09838660951528885
#>     Attrib V13    -0.31608013169204535
#>     Attrib V14    -0.11934824392764477
#>     Attrib V15    0.17027257681252198
#>     Attrib V16    0.3759821792645898
#>     Attrib V17    0.11173597076356893
#>     Attrib V18    0.13770714553739602
#>     Attrib V19    0.3295617548929215
#>     Attrib V2    -0.17355011144117302
#>     Attrib V20    0.24622429285057768
#>     Attrib V21    0.05276095743832432
#>     Attrib V22    -0.19546568835728906
#>     Attrib V23    -0.10350842627132027
#>     Attrib V24    0.3058194794242781
#>     Attrib V25    -0.007841027867442422
#>     Attrib V26    -0.47462206338368357
#>     Attrib V27    -0.6473313167822123
#>     Attrib V28    -0.5340012500006375
#>     Attrib V29    -0.6803656395864782
#>     Attrib V3    -0.445633394637751
#>     Attrib V30    -0.23551387779238728
#>     Attrib V31    -0.1668855391242526
#>     Attrib V32    0.3759629551920067
#>     Attrib V33    0.4449207869641393
#>     Attrib V34    0.4387744575991727
#>     Attrib V35    0.40081269077070425
#>     Attrib V36    -0.3142113699030479
#>     Attrib V37    -0.6824150848601801
#>     Attrib V38    -0.053078768670234186
#>     Attrib V39    0.06471607726865695
#>     Attrib V4    0.1899200087528224
#>     Attrib V40    -0.2915093598419222
#>     Attrib V41    -0.2948428953318569
#>     Attrib V42    0.02789235478202259
#>     Attrib V43    0.2324564010685936
#>     Attrib V44    0.25162172205389205
#>     Attrib V45    0.10799840222831719
#>     Attrib V46    0.11714162858755038
#>     Attrib V47    -0.0340774594961799
#>     Attrib V48    0.26605677318460924
#>     Attrib V49    0.1464457455975831
#>     Attrib V5    -0.22299597173474642
#>     Attrib V50    -0.34618767727949135
#>     Attrib V51    0.0697307602382656
#>     Attrib V52    0.06773105181330996
#>     Attrib V53    0.21594206328378876
#>     Attrib V54    0.36255046703332655
#>     Attrib V55    0.18030034726377522
#>     Attrib V56    0.4178388678314744
#>     Attrib V57    -0.19744516443117333
#>     Attrib V58    0.31453801785350344
#>     Attrib V59    0.6124246462317283
#>     Attrib V6    -0.1384739004948837
#>     Attrib V60    0.4637642123567128
#>     Attrib V7    -0.09519442404418266
#>     Attrib V8    0.031170689499181465
#>     Attrib V9    0.2548441495859218
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.6214874744346713
#>     Attrib V1    0.16393946942281817
#>     Attrib V10    0.1308006959041656
#>     Attrib V11    0.2771042050169221
#>     Attrib V12    0.4466780963265662
#>     Attrib V13    -0.1198273472545034
#>     Attrib V14    -0.25386005330037886
#>     Attrib V15    0.09714015940428408
#>     Attrib V16    0.011845078165506938
#>     Attrib V17    -0.3045304178722744
#>     Attrib V18    -0.37223412439731723
#>     Attrib V19    -0.17230476365408653
#>     Attrib V2    0.18717070005015604
#>     Attrib V20    -0.04055332102759387
#>     Attrib V21    0.30340708307769015
#>     Attrib V22    -0.014750402800506001
#>     Attrib V23    -0.03268449239025821
#>     Attrib V24    0.26939901386571624
#>     Attrib V25    -0.2777470205544892
#>     Attrib V26    -0.09950815867143627
#>     Attrib V27    0.3195466321843239
#>     Attrib V28    0.869326991720896
#>     Attrib V29    0.9773013978827461
#>     Attrib V3    -0.23248934612506164
#>     Attrib V30    0.354772565420556
#>     Attrib V31    -0.5781901777235684
#>     Attrib V32    -0.2885447694303215
#>     Attrib V33    -0.41054436154397184
#>     Attrib V34    -0.2408342810489905
#>     Attrib V35    0.1573292709821821
#>     Attrib V36    -0.5000810378826152
#>     Attrib V37    -0.02935537577084848
#>     Attrib V38    0.23762288234714524
#>     Attrib V39    0.18083955774035984
#>     Attrib V4    0.6505403211160153
#>     Attrib V40    -0.42708052985771255
#>     Attrib V41    0.06759721568747923
#>     Attrib V42    0.06208451843993378
#>     Attrib V43    0.28458551481367406
#>     Attrib V44    0.5603625015092327
#>     Attrib V45    0.052490634985584275
#>     Attrib V46    0.4993356029026121
#>     Attrib V47    0.4277456707317695
#>     Attrib V48    0.47697979773733845
#>     Attrib V49    0.12135280420246822
#>     Attrib V5    0.2983078569322398
#>     Attrib V50    -0.6408849510788973
#>     Attrib V51    0.3601942201622629
#>     Attrib V52    0.2034615096135088
#>     Attrib V53    0.28108756576383187
#>     Attrib V54    0.6724097659049372
#>     Attrib V55    -0.2023704544036807
#>     Attrib V56    -0.17869574554861345
#>     Attrib V57    -0.4611484525714859
#>     Attrib V58    0.3545265816951874
#>     Attrib V59    0.537481815202968
#>     Attrib V6    -0.024836923516195306
#>     Attrib V60    0.27186560876544097
#>     Attrib V7    -0.5242898281611061
#>     Attrib V8    -0.38498388878092715
#>     Attrib V9    0.4856432148554203
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.18525358285012783
#>     Attrib V1    0.054697990961566904
#>     Attrib V10    -0.14637473527770548
#>     Attrib V11    -0.14282496293400684
#>     Attrib V12    0.08283484969528257
#>     Attrib V13    -0.29900544203880086
#>     Attrib V14    -0.18287767692049298
#>     Attrib V15    0.19293719521803396
#>     Attrib V16    0.4070838428244726
#>     Attrib V17    0.12512750471042838
#>     Attrib V18    0.0554183713572319
#>     Attrib V19    0.3945707976309296
#>     Attrib V2    -0.14530401206414514
#>     Attrib V20    0.2647571949982054
#>     Attrib V21    0.11184439553285158
#>     Attrib V22    -0.14391120568182017
#>     Attrib V23    -0.08111375821873357
#>     Attrib V24    0.32622552412600875
#>     Attrib V25    -0.12432082000081875
#>     Attrib V26    -0.5169381509995294
#>     Attrib V27    -0.683200553000723
#>     Attrib V28    -0.40255733675804295
#>     Attrib V29    -0.5032522604755799
#>     Attrib V3    -0.5011724490460728
#>     Attrib V30    -0.13800683630498334
#>     Attrib V31    -0.2793722929087193
#>     Attrib V32    0.2844363241762034
#>     Attrib V33    0.40993471204600485
#>     Attrib V34    0.42890722510616636
#>     Attrib V35    0.3754149995610528
#>     Attrib V36    -0.3027685195047919
#>     Attrib V37    -0.7269498602161313
#>     Attrib V38    0.061676705097073105
#>     Attrib V39    0.12824803413570351
#>     Attrib V4    0.3619490333553715
#>     Attrib V40    -0.35884015014187354
#>     Attrib V41    -0.3743438661373238
#>     Attrib V42    -0.04622630451192043
#>     Attrib V43    0.30145878655052183
#>     Attrib V44    0.47876645500815107
#>     Attrib V45    0.20176426627193705
#>     Attrib V46    0.18697437545270076
#>     Attrib V47    0.008869329295420522
#>     Attrib V48    0.3796040240316649
#>     Attrib V49    0.20783254922057218
#>     Attrib V5    -0.2046601370559455
#>     Attrib V50    -0.5342394038714472
#>     Attrib V51    0.056503963230535824
#>     Attrib V52    0.08118812785999505
#>     Attrib V53    0.22971156299249393
#>     Attrib V54    0.4633377948496643
#>     Attrib V55    0.12930147969024922
#>     Attrib V56    0.36494964548312797
#>     Attrib V57    -0.23604181110795502
#>     Attrib V58    0.30355895792162746
#>     Attrib V59    0.7080477012115441
#>     Attrib V6    -0.2521373295478439
#>     Attrib V60    0.4798872936741468
#>     Attrib V7    -0.2014923931840527
#>     Attrib V8    -0.083260887906086
#>     Attrib V9    0.2440713550809204
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.4267309299327953
#>     Attrib V1    -0.13955423714992096
#>     Attrib V10    0.292395895357392
#>     Attrib V11    0.34401191120298885
#>     Attrib V12    0.7039756370908095
#>     Attrib V13    -0.1009972694713993
#>     Attrib V14    -0.5060171679145542
#>     Attrib V15    -0.05798170160760776
#>     Attrib V16    0.143800969393833
#>     Attrib V17    0.01734794024196536
#>     Attrib V18    -0.026226548031853907
#>     Attrib V19    0.1830878158432086
#>     Attrib V2    -0.15593443655473888
#>     Attrib V20    0.08376405395033824
#>     Attrib V21    0.18984220250353198
#>     Attrib V22    -0.019385277315143213
#>     Attrib V23    0.25630522482383383
#>     Attrib V24    0.7498120200656986
#>     Attrib V25    0.12797836749600508
#>     Attrib V26    -0.1713174324296781
#>     Attrib V27    -0.1551665924476702
#>     Attrib V28    0.2573642872657149
#>     Attrib V29    -0.04659928356731549
#>     Attrib V3    -0.5215234555525454
#>     Attrib V30    0.0406950933489914
#>     Attrib V31    -0.3164372462012728
#>     Attrib V32    0.34318537033426794
#>     Attrib V33    0.019623993127745397
#>     Attrib V34    0.05255427735816223
#>     Attrib V35    0.1999383516407423
#>     Attrib V36    -0.8635668497144131
#>     Attrib V37    -0.8176001044901594
#>     Attrib V38    -0.0952254110544885
#>     Attrib V39    0.11590271909704408
#>     Attrib V4    0.1776037831697853
#>     Attrib V40    -0.5021559648677876
#>     Attrib V41    -0.10192717356757652
#>     Attrib V42    0.07737016393701879
#>     Attrib V43    0.41670998679055044
#>     Attrib V44    0.3577990915069652
#>     Attrib V45    -0.07340611287820493
#>     Attrib V46    0.442633699982868
#>     Attrib V47    0.45107795186655814
#>     Attrib V48    0.7302683182725079
#>     Attrib V49    0.47376776209755256
#>     Attrib V5    -0.13672127443255075
#>     Attrib V50    -0.5877322476401086
#>     Attrib V51    0.4475384960965708
#>     Attrib V52    0.35663353304307205
#>     Attrib V53    0.37972088339323923
#>     Attrib V54    0.4646995065496203
#>     Attrib V55    -0.09236602528896172
#>     Attrib V56    0.16047179866944433
#>     Attrib V57    -0.7952666674437238
#>     Attrib V58    0.42233537590378545
#>     Attrib V59    0.32946358524145103
#>     Attrib V6    -0.0945017852013099
#>     Attrib V60    0.02328772147649916
#>     Attrib V7    -0.49820343598679
#>     Attrib V8    -0.1241087603387533
#>     Attrib V9    0.6684760585709638
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.5061064122518607
#>     Attrib V1    -0.009652703571731765
#>     Attrib V10    -1.0499209151140538
#>     Attrib V11    -0.8335169082360241
#>     Attrib V12    -0.6820913637621647
#>     Attrib V13    -0.08160028325890678
#>     Attrib V14    0.5240123509079117
#>     Attrib V15    0.08979195527317073
#>     Attrib V16    0.3937230146554637
#>     Attrib V17    0.2594533924357795
#>     Attrib V18    0.3645431705877545
#>     Attrib V19    0.19067683486352305
#>     Attrib V2    -0.6046326401370324
#>     Attrib V20    0.04276734576238975
#>     Attrib V21    -1.0039333642919512
#>     Attrib V22    -0.9407175900220639
#>     Attrib V23    -1.1643004429318347
#>     Attrib V24    -1.051182512251589
#>     Attrib V25    0.1955217405482192
#>     Attrib V26    -0.22960249143367442
#>     Attrib V27    -1.0119935347576055
#>     Attrib V28    -2.080408129353468
#>     Attrib V29    -2.5692964011780575
#>     Attrib V3    -0.20325444416869962
#>     Attrib V30    -1.080390268754233
#>     Attrib V31    0.90518232122047
#>     Attrib V32    0.39019455479786513
#>     Attrib V33    1.011435644580615
#>     Attrib V34    0.48443474811141407
#>     Attrib V35    -0.27011384874174876
#>     Attrib V36    1.2280357414420613
#>     Attrib V37    0.22994366595422988
#>     Attrib V38    0.26312186805721655
#>     Attrib V39    0.07468314171692708
#>     Attrib V4    -0.45766236126793775
#>     Attrib V40    0.5171373305372846
#>     Attrib V41    -1.0793477904633575
#>     Attrib V42    -0.43631497183853013
#>     Attrib V43    -0.5073703092004959
#>     Attrib V44    -0.9523964087663829
#>     Attrib V45    -0.2207477524624558
#>     Attrib V46    -1.3280271561710109
#>     Attrib V47    -1.495736920471981
#>     Attrib V48    -1.2211034316001936
#>     Attrib V49    -0.8361022310043114
#>     Attrib V5    -0.8034473322601439
#>     Attrib V50    0.5341722592818032
#>     Attrib V51    -1.4147876485800386
#>     Attrib V52    -0.8411064856254225
#>     Attrib V53    -0.555704406184042
#>     Attrib V54    -0.4724427690871508
#>     Attrib V55    0.8361015701694902
#>     Attrib V56    0.6364547954497235
#>     Attrib V57    1.2638016708130906
#>     Attrib V58    -0.8735889577218963
#>     Attrib V59    0.1484667505912715
#>     Attrib V6    -0.6205661454863202
#>     Attrib V60    0.42692250534851456
#>     Attrib V7    0.8011202021666025
#>     Attrib V8    0.4027973918419182
#>     Attrib V9    -1.405654869110556
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.13129270747815003
#>     Attrib V1    0.010744706187194555
#>     Attrib V10    -0.12781741429855617
#>     Attrib V11    -0.14820065331014037
#>     Attrib V12    0.16312316526308646
#>     Attrib V13    -0.4345496114802239
#>     Attrib V14    -0.22486718756153362
#>     Attrib V15    0.1681326002913057
#>     Attrib V16    0.4390791145960855
#>     Attrib V17    0.21430932379530648
#>     Attrib V18    0.15041107785261712
#>     Attrib V19    0.5005509197542837
#>     Attrib V2    -0.3001412796992299
#>     Attrib V20    0.4080335700048987
#>     Attrib V21    0.02574357162995898
#>     Attrib V22    -0.2196570117594406
#>     Attrib V23    -0.04839484072626291
#>     Attrib V24    0.42166093849346237
#>     Attrib V25    -0.013407909783356379
#>     Attrib V26    -0.6283601045020774
#>     Attrib V27    -0.8785198286684958
#>     Attrib V28    -0.5984716546574179
#>     Attrib V29    -0.8844216163674787
#>     Attrib V3    -0.6570952910133815
#>     Attrib V30    -0.27362513669587785
#>     Attrib V31    -0.31964730131509655
#>     Attrib V32    0.38274456457567513
#>     Attrib V33    0.5499548969030096
#>     Attrib V34    0.6595440258742877
#>     Attrib V35    0.5879795820481438
#>     Attrib V36    -0.3377301522008975
#>     Attrib V37    -0.9500243404592512
#>     Attrib V38    0.021410730457710775
#>     Attrib V39    0.12236700324546852
#>     Attrib V4    0.2383408799571341
#>     Attrib V40    -0.39631363803105
#>     Attrib V41    -0.5245239747277882
#>     Attrib V42    0.013679771522580944
#>     Attrib V43    0.3624004647053062
#>     Attrib V44    0.5182423433866619
#>     Attrib V45    0.26735209522437964
#>     Attrib V46    0.18172121878948816
#>     Attrib V47    0.016814738463713282
#>     Attrib V48    0.4583328252415064
#>     Attrib V49    0.26903460967269766
#>     Attrib V5    -0.2909217640135495
#>     Attrib V50    -0.5367776408012099
#>     Attrib V51    0.11780054568663242
#>     Attrib V52    0.09080763139738021
#>     Attrib V53    0.19350831176703695
#>     Attrib V54    0.5107030488138534
#>     Attrib V55    0.20167242904282065
#>     Attrib V56    0.5074847195001171
#>     Attrib V57    -0.32919926674615496
#>     Attrib V58    0.4218008655903025
#>     Attrib V59    0.7215828731892656
#>     Attrib V6    -0.2632131961829659
#>     Attrib V60    0.49700388467123185
#>     Attrib V7    -0.21116753763294874
#>     Attrib V8    0.05889522447731976
#>     Attrib V9    0.3764351607353945
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.2930729330461698
#>     Attrib V1    0.25768505064884223
#>     Attrib V10    -0.4220594845981935
#>     Attrib V11    -0.3749670022220228
#>     Attrib V12    -0.20554873208504612
#>     Attrib V13    -0.43613009781643186
#>     Attrib V14    0.07561860965215188
#>     Attrib V15    0.5109218577899524
#>     Attrib V16    0.5823173496487997
#>     Attrib V17    0.12090116295370043
#>     Attrib V18    0.032531023980330635
#>     Attrib V19    0.5264699476904707
#>     Attrib V2    0.026725398563271687
#>     Attrib V20    0.45253284212079736
#>     Attrib V21    0.18764239491936544
#>     Attrib V22    -0.16472375277694656
#>     Attrib V23    -0.1833496369818733
#>     Attrib V24    0.09600631588016946
#>     Attrib V25    -0.5729424428182814
#>     Attrib V26    -0.9543644653725951
#>     Attrib V27    -0.8849773363683738
#>     Attrib V28    -0.363583872073815
#>     Attrib V29    -0.046117872412565944
#>     Attrib V3    -0.49855563547871595
#>     Attrib V30    0.0439622684954326
#>     Attrib V31    -0.396749672675198
#>     Attrib V32    0.2327947090772331
#>     Attrib V33    0.5420200957233037
#>     Attrib V34    0.5014386046175969
#>     Attrib V35    0.32822924434902717
#>     Attrib V36    -0.4217674051318288
#>     Attrib V37    -0.8652789744490484
#>     Attrib V38    0.05308586489384988
#>     Attrib V39    0.12034631035787063
#>     Attrib V4    0.745257580555375
#>     Attrib V40    -0.4793872157540333
#>     Attrib V41    -0.40216833651095046
#>     Attrib V42    0.13909234480402874
#>     Attrib V43    0.43802685501959804
#>     Attrib V44    0.5384431184262028
#>     Attrib V45    0.3003060190387454
#>     Attrib V46    0.18548659828532982
#>     Attrib V47    -0.1411672892147204
#>     Attrib V48    0.2867375493203894
#>     Attrib V49    0.12372540672417902
#>     Attrib V5    -0.12783204239484047
#>     Attrib V50    -0.6420184687431519
#>     Attrib V51    0.04463954519862969
#>     Attrib V52    0.12158105679357203
#>     Attrib V53    0.264788340578574
#>     Attrib V54    0.558068477993131
#>     Attrib V55    0.21480713999819134
#>     Attrib V56    0.5253140664745394
#>     Attrib V57    -0.13452650168764288
#>     Attrib V58    0.5158734529268596
#>     Attrib V59    1.1177989144580682
#>     Attrib V6    -0.29928444870350923
#>     Attrib V60    0.5672953386343529
#>     Attrib V7    -0.26480149382227275
#>     Attrib V8    -0.002829379578308498
#>     Attrib V9    0.10582686833535498
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.2165827071672911
#>     Attrib V1    0.014433455729006056
#>     Attrib V10    -5.794867072315813E-4
#>     Attrib V11    -0.006388051922713651
#>     Attrib V12    -0.004839026844118652
#>     Attrib V13    0.058120548365069385
#>     Attrib V14    0.05622194020926456
#>     Attrib V15    0.017204474456627733
#>     Attrib V16    0.014487150426798759
#>     Attrib V17    0.047621047765736634
#>     Attrib V18    0.02134813479472147
#>     Attrib V19    -0.013241259897373315
#>     Attrib V2    0.0182769035860295
#>     Attrib V20    0.0047050907454181
#>     Attrib V21    -0.045513720607346105
#>     Attrib V22    -0.14291503083856252
#>     Attrib V23    -0.07877074068815186
#>     Attrib V24    -0.06937838930373288
#>     Attrib V25    -0.0371181345876222
#>     Attrib V26    -0.1111453125462723
#>     Attrib V27    -0.045718695669269276
#>     Attrib V28    -0.09456871656136637
#>     Attrib V29    -0.06780341525411748
#>     Attrib V3    0.08987447886725582
#>     Attrib V30    -0.0487070818884083
#>     Attrib V31    -0.0647215243415506
#>     Attrib V32    0.035286880730451255
#>     Attrib V33    0.01687350279467965
#>     Attrib V34    0.06701907521761544
#>     Attrib V35    0.04475160859886026
#>     Attrib V36    0.020773116399431375
#>     Attrib V37    0.05857035790642492
#>     Attrib V38    0.06688898820245813
#>     Attrib V39    0.13132065136384205
#>     Attrib V4    0.046302926863008576
#>     Attrib V40    0.08583846533058284
#>     Attrib V41    0.04896600912559843
#>     Attrib V42    0.023830816137770033
#>     Attrib V43    -0.00958925205566049
#>     Attrib V44    0.011479988996239586
#>     Attrib V45    0.007541218194380389
#>     Attrib V46    0.08207899687310385
#>     Attrib V47    0.08815443419313419
#>     Attrib V48    0.030702300646007957
#>     Attrib V49    0.0562085399758167
#>     Attrib V5    0.08134559270705406
#>     Attrib V50    0.04366132384218425
#>     Attrib V51    0.0697015911348669
#>     Attrib V52    0.05977843803645277
#>     Attrib V53    0.10520003574541746
#>     Attrib V54    -0.0010756700515738332
#>     Attrib V55    0.08570599311903572
#>     Attrib V56    0.12208654845936208
#>     Attrib V57    0.07373211792779288
#>     Attrib V58    0.07460289174393082
#>     Attrib V59    0.13776821735046269
#>     Attrib V6    0.103975529230213
#>     Attrib V60    0.1736573499399602
#>     Attrib V7    0.09097193755889081
#>     Attrib V8    0.002518237496267351
#>     Attrib V9    0.04935015623802214
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.4895691883500902
#>     Attrib V1    0.0785399198726318
#>     Attrib V10    0.0281053887979582
#>     Attrib V11    0.11956005265562672
#>     Attrib V12    0.4392183084839937
#>     Attrib V13    -0.34886751849656916
#>     Attrib V14    -0.41329166284917096
#>     Attrib V15    0.14877065374825144
#>     Attrib V16    0.2543107336946901
#>     Attrib V17    0.033616260447264325
#>     Attrib V18    -0.044304391176826906
#>     Attrib V19    0.2769167991426898
#>     Attrib V2    -0.09207516383109113
#>     Attrib V20    0.169341511528426
#>     Attrib V21    0.08814841684129848
#>     Attrib V22    -0.14643288680723315
#>     Attrib V23    -0.01820351231433909
#>     Attrib V24    0.4516144248088597
#>     Attrib V25    -0.05218314575822829
#>     Attrib V26    -0.4497514431773632
#>     Attrib V27    -0.5361483410157134
#>     Attrib V28    -0.20847394518281595
#>     Attrib V29    -0.45595239426345796
#>     Attrib V3    -0.6588667134382706
#>     Attrib V30    -0.04610072417223994
#>     Attrib V31    -0.3098390599032838
#>     Attrib V32    0.3148458478925255
#>     Attrib V33    0.26303758149015655
#>     Attrib V34    0.24768138894629635
#>     Attrib V35    0.3378973382201323
#>     Attrib V36    -0.632184571731726
#>     Attrib V37    -0.7922462985293306
#>     Attrib V38    -0.025100266238035
#>     Attrib V39    0.1486074563330678
#>     Attrib V4    0.4334593422399575
#>     Attrib V40    -0.48525186483497174
#>     Attrib V41    -0.3562595749112171
#>     Attrib V42    0.0177999647641637
#>     Attrib V43    0.3648748278781496
#>     Attrib V44    0.5659992571374725
#>     Attrib V45    0.04724936964414649
#>     Attrib V46    0.23814649702053756
#>     Attrib V47    0.1489296218774038
#>     Attrib V48    0.6862876335734212
#>     Attrib V49    0.38664997901765674
#>     Attrib V5    -0.18371721189388907
#>     Attrib V50    -0.7177702783784452
#>     Attrib V51    0.13310101863478097
#>     Attrib V52    0.1296429326843801
#>     Attrib V53    0.197636944008354
#>     Attrib V54    0.6601544121153676
#>     Attrib V55    -0.005483674831423166
#>     Attrib V56    0.2981781040738837
#>     Attrib V57    -0.48917941554642713
#>     Attrib V58    0.3989394909230608
#>     Attrib V59    0.6688285436791679
#>     Attrib V6    -0.23334621766895697
#>     Attrib V60    0.40087500145804833
#>     Attrib V7    -0.37235519911133697
#>     Attrib V8    -0.17430360784780152
#>     Attrib V9    0.4441261625648233
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.4536528206880016
#>     Attrib V1    0.06681799889674586
#>     Attrib V10    -0.43570883333576926
#>     Attrib V11    -0.43786764538398354
#>     Attrib V12    -0.6290863502745371
#>     Attrib V13    0.17144864222516595
#>     Attrib V14    0.6175515113402871
#>     Attrib V15    0.4473084194245569
#>     Attrib V16    0.2625964747788575
#>     Attrib V17    0.26022533609156095
#>     Attrib V18    0.20090516585686252
#>     Attrib V19    -0.02098842256825381
#>     Attrib V2    0.27064305418830503
#>     Attrib V20    0.021744745438716788
#>     Attrib V21    -0.3176906911468396
#>     Attrib V22    -0.24411731499115533
#>     Attrib V23    -0.5367362113497416
#>     Attrib V24    -0.8769142778167002
#>     Attrib V25    -0.2582728465358829
#>     Attrib V26    0.003995750895863044
#>     Attrib V27    -0.13519383571363966
#>     Attrib V28    -0.5833636866747607
#>     Attrib V29    -0.4005493750106031
#>     Attrib V3    0.4858174019558067
#>     Attrib V30    -0.3849358393525014
#>     Attrib V31    0.1991227530938612
#>     Attrib V32    -0.25907944780224457
#>     Attrib V33    -0.0872880506402737
#>     Attrib V34    -0.25467851543897974
#>     Attrib V35    -0.5717704761721838
#>     Attrib V36    0.5889040295314052
#>     Attrib V37    0.6590966832908157
#>     Attrib V38    0.07512591389381237
#>     Attrib V39    -0.046096591994606216
#>     Attrib V4    -0.22384067658232074
#>     Attrib V40    0.39143908285869
#>     Attrib V41    -0.28644302381673464
#>     Attrib V42    -0.2969338200769136
#>     Attrib V43    -0.4975942318629913
#>     Attrib V44    -0.6340203401927117
#>     Attrib V45    -0.10557357038785915
#>     Attrib V46    -0.6108564209566607
#>     Attrib V47    -0.6607628952263896
#>     Attrib V48    -0.8620833958051173
#>     Attrib V49    -0.512067608586322
#>     Attrib V5    -0.06368483365060412
#>     Attrib V50    0.7550937847252387
#>     Attrib V51    -0.5140744935286055
#>     Attrib V52    -0.34305989038543666
#>     Attrib V53    -0.07945831831851673
#>     Attrib V54    -0.3145730648443029
#>     Attrib V55    0.49258397366582
#>     Attrib V56    0.2952541920170444
#>     Attrib V57    0.8382670073320411
#>     Attrib V58    -0.33959791637385917
#>     Attrib V59    -0.29559423136057633
#>     Attrib V6    0.030184737328064877
#>     Attrib V60    -0.12652345897099398
#>     Attrib V7    0.5407498142861189
#>     Attrib V8    0.26903461363830605
#>     Attrib V9    -0.8009996112281157
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.19549796626019011
#>     Attrib V1    0.011285514665908035
#>     Attrib V10    0.049234099991923894
#>     Attrib V11    -0.00631556010045963
#>     Attrib V12    -0.00936707380371585
#>     Attrib V13    0.04146841913633308
#>     Attrib V14    0.016330775306422383
#>     Attrib V15    0.004009961436409413
#>     Attrib V16    0.08423732551638911
#>     Attrib V17    0.0853794791441529
#>     Attrib V18    0.07405102730520183
#>     Attrib V19    0.011125594016302188
#>     Attrib V2    -0.0028752508831464325
#>     Attrib V20    -0.06710747833595272
#>     Attrib V21    -0.09891012501680609
#>     Attrib V22    -0.11182542086581312
#>     Attrib V23    -0.13024846466426454
#>     Attrib V24    -0.06860898023410389
#>     Attrib V25    -0.043854528938918134
#>     Attrib V26    -0.0870581317264761
#>     Attrib V27    -0.08917215976241448
#>     Attrib V28    -0.05306162709582856
#>     Attrib V29    -0.08712711585846056
#>     Attrib V3    0.0865877591092053
#>     Attrib V30    -0.08697564352125212
#>     Attrib V31    -0.02577201709651359
#>     Attrib V32    0.04440484147653828
#>     Attrib V33    0.0038285142702196655
#>     Attrib V34    0.038417238056178374
#>     Attrib V35    0.031234798379533694
#>     Attrib V36    0.049450480877752064
#>     Attrib V37    0.10772425136334184
#>     Attrib V38    0.0785871550972541
#>     Attrib V39    0.0794984085232699
#>     Attrib V4    0.032921005899217586
#>     Attrib V40    0.05867622539531079
#>     Attrib V41    0.07733661595368575
#>     Attrib V42    0.05724033916790951
#>     Attrib V43    0.0032383596640168386
#>     Attrib V44    -0.034356050403191965
#>     Attrib V45    0.04276864307703905
#>     Attrib V46    0.06532727007867296
#>     Attrib V47    0.055329106600986194
#>     Attrib V48    0.018684221206900026
#>     Attrib V49    -4.0984957441633465E-4
#>     Attrib V5    0.07060757072661243
#>     Attrib V50    0.13546054908820304
#>     Attrib V51    0.12570069581445953
#>     Attrib V52    0.10872906481051135
#>     Attrib V53    0.1335307709850577
#>     Attrib V54    -0.02929685513792056
#>     Attrib V55    0.09512661509579362
#>     Attrib V56    0.11626511505122876
#>     Attrib V57    0.1059791307913254
#>     Attrib V58    0.10600285174959723
#>     Attrib V59    0.020837837491981658
#>     Attrib V6    0.10819743803224116
#>     Attrib V60    0.11527955008713404
#>     Attrib V7    0.06139344634144346
#>     Attrib V8    0.016587183435609068
#>     Attrib V9    0.08290443875667095
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.02178925425548648
#>     Attrib V1    0.07224681059339556
#>     Attrib V10    -0.030755257371107268
#>     Attrib V11    -0.03328452974584953
#>     Attrib V12    0.02281283855192184
#>     Attrib V13    -0.12968384063449243
#>     Attrib V14    -0.02155806394475021
#>     Attrib V15    0.15224218128905026
#>     Attrib V16    0.1209438708691256
#>     Attrib V17    0.023369767505543503
#>     Attrib V18    0.0059069658224283955
#>     Attrib V19    0.10942991709228618
#>     Attrib V2    0.02765726451865103
#>     Attrib V20    0.03639777616801137
#>     Attrib V21    -0.025493890546666703
#>     Attrib V22    -0.08856230081579908
#>     Attrib V23    -0.15092932991562558
#>     Attrib V24    0.06462592297041966
#>     Attrib V25    -0.10790119739531245
#>     Attrib V26    -0.21586575577533426
#>     Attrib V27    -0.2198236610857901
#>     Attrib V28    -0.15642989988115508
#>     Attrib V29    -0.21036028898838993
#>     Attrib V3    -0.15875963233309792
#>     Attrib V30    -0.06255370405006551
#>     Attrib V31    -0.07294086693837155
#>     Attrib V32    0.046288984416840054
#>     Attrib V33    0.13665927660684013
#>     Attrib V34    0.10719501607409881
#>     Attrib V35    0.18783829622108814
#>     Attrib V36    -0.13974782770557398
#>     Attrib V37    -0.2422250221557728
#>     Attrib V38    0.06813920149235708
#>     Attrib V39    0.10264074907793712
#>     Attrib V4    0.1311701656245215
#>     Attrib V40    -0.13156729134770995
#>     Attrib V41    -0.0886777633706762
#>     Attrib V42    -0.034645941977105674
#>     Attrib V43    0.13480414811128055
#>     Attrib V44    0.1353351893172985
#>     Attrib V45    0.07980968311657793
#>     Attrib V46    0.054343299724345845
#>     Attrib V47    -0.0059445679744539286
#>     Attrib V48    0.17788336820214753
#>     Attrib V49    0.01977115870369651
#>     Attrib V5    -0.0035230824718984538
#>     Attrib V50    -0.1297664226713053
#>     Attrib V51    0.10721449492951289
#>     Attrib V52    0.061700343120839725
#>     Attrib V53    0.13191781843967698
#>     Attrib V54    0.185686379679832
#>     Attrib V55    0.1674734607428457
#>     Attrib V56    0.2105941944318468
#>     Attrib V57    -0.01691970859797164
#>     Attrib V58    0.12553286693083854
#>     Attrib V59    0.264424004265607
#>     Attrib V6    -0.026440078819523784
#>     Attrib V60    0.2615512110824814
#>     Attrib V7    -0.12233608800137205
#>     Attrib V8    -0.022444004285072722
#>     Attrib V9    0.08799549181969599
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.3413097574204553
#>     Attrib V1    0.01417765946339274
#>     Attrib V10    -0.15687093980495453
#>     Attrib V11    -0.27553998960898646
#>     Attrib V12    -0.5167809033173383
#>     Attrib V13    -0.028050184609054
#>     Attrib V14    0.208259396106661
#>     Attrib V15    0.017051200180312875
#>     Attrib V16    0.004382746815363328
#>     Attrib V17    0.033796346673387635
#>     Attrib V18    0.13708216174337975
#>     Attrib V19    -0.1150099490268868
#>     Attrib V2    0.14156789464017475
#>     Attrib V20    -0.0509428541536214
#>     Attrib V21    -0.13718145114361477
#>     Attrib V22    -0.08514984222582342
#>     Attrib V23    -0.16025184987127183
#>     Attrib V24    -0.41516637911172305
#>     Attrib V25    -0.03582244606220784
#>     Attrib V26    0.09538537565021185
#>     Attrib V27    0.06530201430896984
#>     Attrib V28    -0.16841426277898264
#>     Attrib V29    -0.004296740638262842
#>     Attrib V3    0.3059661217913577
#>     Attrib V30    -0.05834597413788663
#>     Attrib V31    0.1892816816533879
#>     Attrib V32    -0.05993159018320467
#>     Attrib V33    0.003352823413279093
#>     Attrib V34    -0.08738638235789087
#>     Attrib V35    -0.19941596974534234
#>     Attrib V36    0.4645061621969285
#>     Attrib V37    0.4234361213669431
#>     Attrib V38    0.013404251390008663
#>     Attrib V39    -0.05993236723632187
#>     Attrib V4    -0.29501944307759304
#>     Attrib V40    0.22706690129206591
#>     Attrib V41    0.003944594641753798
#>     Attrib V42    -0.019512957879595734
#>     Attrib V43    -0.17532903300873037
#>     Attrib V44    -0.15810612750237385
#>     Attrib V45    -0.04922739502411661
#>     Attrib V46    -0.27317871026080126
#>     Attrib V47    -0.19307708420735695
#>     Attrib V48    -0.37468238420110417
#>     Attrib V49    -0.19195458980682426
#>     Attrib V5    -0.1048771362129166
#>     Attrib V50    0.36600874318270626
#>     Attrib V51    -0.15737588181140102
#>     Attrib V52    -0.11063504549275086
#>     Attrib V53    -0.06314627275997237
#>     Attrib V54    -0.33167181017913705
#>     Attrib V55    0.07524313950850169
#>     Attrib V56    0.09511060771415698
#>     Attrib V57    0.3232310072503196
#>     Attrib V58    -0.1785008572943093
#>     Attrib V59    -0.159773741316295
#>     Attrib V6    0.012938564843442331
#>     Attrib V60    -0.016273347840648645
#>     Attrib V7    0.27159455188686604
#>     Attrib V8    0.07844423778702501
#>     Attrib V9    -0.3338377687727474
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.8262948902719393
#>     Attrib V1    0.23776730611516433
#>     Attrib V10    0.1091675404622991
#>     Attrib V11    0.24010701985603913
#>     Attrib V12    0.648349445152197
#>     Attrib V13    -0.13559040487066126
#>     Attrib V14    -0.27783851894853656
#>     Attrib V15    0.27293396172569434
#>     Attrib V16    -0.021743710754653405
#>     Attrib V17    -0.39120806711103345
#>     Attrib V18    -0.5243746226246689
#>     Attrib V19    -0.32953010739945293
#>     Attrib V2    0.34687721277520045
#>     Attrib V20    -0.2678846990474409
#>     Attrib V21    0.1826351036002226
#>     Attrib V22    -0.11581757339363911
#>     Attrib V23    -0.2553239805431087
#>     Attrib V24    0.20514883426224043
#>     Attrib V25    -0.44489713828128963
#>     Attrib V26    -0.31074506119419076
#>     Attrib V27    0.37634007842189876
#>     Attrib V28    1.0216298816547198
#>     Attrib V29    1.1112908445963279
#>     Attrib V3    -0.2451032483547384
#>     Attrib V30    0.40865479836276253
#>     Attrib V31    -0.6412430584271861
#>     Attrib V32    -0.2804472795651599
#>     Attrib V33    -0.4211937627560412
#>     Attrib V34    -0.3453697541169306
#>     Attrib V35    0.08395548767123276
#>     Attrib V36    -0.7275458093156512
#>     Attrib V37    -0.19180280450835274
#>     Attrib V38    0.09436023226879663
#>     Attrib V39    0.1163473552334121
#>     Attrib V4    0.8867784414626332
#>     Attrib V40    -0.5173778591596554
#>     Attrib V41    0.1303499624376788
#>     Attrib V42    0.18517978156607737
#>     Attrib V43    0.30592220179451646
#>     Attrib V44    0.501062022468373
#>     Attrib V45    0.024224887258205898
#>     Attrib V46    0.49418689645037644
#>     Attrib V47    0.41430312629433474
#>     Attrib V48    0.6135062395149464
#>     Attrib V49    0.19134662575458167
#>     Attrib V5    0.4530604587858988
#>     Attrib V50    -0.8355655802008686
#>     Attrib V51    0.36148095462459845
#>     Attrib V52    0.22943714504037382
#>     Attrib V53    0.4422201933341785
#>     Attrib V54    0.8287097374309393
#>     Attrib V55    -0.22324930029377438
#>     Attrib V56    -0.34089763268489226
#>     Attrib V57    -0.4343935670731689
#>     Attrib V58    0.4961892207354316
#>     Attrib V59    0.6225636756746172
#>     Attrib V6    0.03786602746356204
#>     Attrib V60    0.25358431244336266
#>     Attrib V7    -0.6445931404530213
#>     Attrib V8    -0.43819198397779374
#>     Attrib V9    0.41197534324843915
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.27019803989127855
#>     Attrib V1    -0.03374804069554601
#>     Attrib V10    -0.06533423021695124
#>     Attrib V11    -0.1024718588110985
#>     Attrib V12    0.2149009318505923
#>     Attrib V13    -0.3880915995560737
#>     Attrib V14    -0.2267214995866097
#>     Attrib V15    0.11905583455476691
#>     Attrib V16    0.34782937633883687
#>     Attrib V17    0.1498607816477723
#>     Attrib V18    0.11593224009321253
#>     Attrib V19    0.5353484324312286
#>     Attrib V2    -0.28188538672555763
#>     Attrib V20    0.41797734775221324
#>     Attrib V21    0.24155856857846889
#>     Attrib V22    0.00923399499170164
#>     Attrib V23    0.03804291406869525
#>     Attrib V24    0.3956106403165778
#>     Attrib V25    -0.1192521518581736
#>     Attrib V26    -0.47175487558797524
#>     Attrib V27    -0.6040294297859514
#>     Attrib V28    -0.29825910618499524
#>     Attrib V29    -0.4441719804021856
#>     Attrib V3    -0.6976150736997797
#>     Attrib V30    -0.07007033191331782
#>     Attrib V31    -0.48680317676977414
#>     Attrib V32    0.1413562509091916
#>     Attrib V33    0.32536128483122734
#>     Attrib V34    0.451742857937659
#>     Attrib V35    0.5870885490202533
#>     Attrib V36    -0.19948852600376893
#>     Attrib V37    -0.6816354943117915
#>     Attrib V38    0.23579422660638122
#>     Attrib V39    0.2800869643686412
#>     Attrib V4    0.37539678923871306
#>     Attrib V40    -0.45936620441476783
#>     Attrib V41    -0.4967717144689707
#>     Attrib V42    -0.07249201668561589
#>     Attrib V43    0.5137512752290015
#>     Attrib V44    0.8463433374649347
#>     Attrib V45    0.3773526956912768
#>     Attrib V46    0.28094079178513803
#>     Attrib V47    -0.007037131133319306
#>     Attrib V48    0.46816389826362254
#>     Attrib V49    0.3292774268509853
#>     Attrib V5    -0.20471118905971186
#>     Attrib V50    -0.7144579847293043
#>     Attrib V51    0.1324818097502949
#>     Attrib V52    0.1453000607547971
#>     Attrib V53    0.15426251907128796
#>     Attrib V54    0.5057224630234382
#>     Attrib V55    0.08305390700556095
#>     Attrib V56    0.4188044180360924
#>     Attrib V57    -0.5525414282594107
#>     Attrib V58    0.4374586692527268
#>     Attrib V59    0.8046735426036965
#>     Attrib V6    -0.33916690176453596
#>     Attrib V60    0.45124027727636884
#>     Attrib V7    -0.3315736159591584
#>     Attrib V8    -0.16064867419817916
#>     Attrib V9    0.44852887854632534
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.24918983036124998
#>     Attrib V1    0.22293307891103814
#>     Attrib V10    -0.7516110136452211
#>     Attrib V11    -0.756287542165743
#>     Attrib V12    -0.9168421282522118
#>     Attrib V13    0.01925680551416895
#>     Attrib V14    0.6191972197574803
#>     Attrib V15    0.3957779714046708
#>     Attrib V16    0.21128697052398945
#>     Attrib V17    0.12962137160952739
#>     Attrib V18    0.08433232819821608
#>     Attrib V19    -0.24430537711795447
#>     Attrib V2    0.1559271914170706
#>     Attrib V20    -0.1271913387830659
#>     Attrib V21    -0.3932847378098193
#>     Attrib V22    -0.474733039288346
#>     Attrib V23    -0.8185144749827683
#>     Attrib V24    -1.0769796295865555
#>     Attrib V25    -0.3654179839117949
#>     Attrib V26    -0.18482334214524906
#>     Attrib V27    -0.22795085745601693
#>     Attrib V28    -0.755152297031389
#>     Attrib V29    -0.3829131639995181
#>     Attrib V3    0.40472373717688054
#>     Attrib V30    -0.2391153481942182
#>     Attrib V31    0.4661416602753035
#>     Attrib V32    -0.13529101139682156
#>     Attrib V33    0.29864989212165116
#>     Attrib V34    0.02863850892204838
#>     Attrib V35    -0.494821447888121
#>     Attrib V36    0.7485466826297719
#>     Attrib V37    0.6239496355152415
#>     Attrib V38    0.039539207707251466
#>     Attrib V39    -0.11086085683267095
#>     Attrib V4    5.979248399899162E-4
#>     Attrib V40    0.5207113598752853
#>     Attrib V41    -0.14583388962312813
#>     Attrib V42    -0.20729151077173494
#>     Attrib V43    -0.4241333617734121
#>     Attrib V44    -0.575558471336597
#>     Attrib V45    -0.12378444078044919
#>     Attrib V46    -0.8139203314703547
#>     Attrib V47    -0.9920165532726111
#>     Attrib V48    -1.127758731885326
#>     Attrib V49    -0.8066469195135016
#>     Attrib V5    0.013753969463795451
#>     Attrib V50    0.6165055392502765
#>     Attrib V51    -0.8452269673881467
#>     Attrib V52    -0.5657362404478661
#>     Attrib V53    -0.2575532652956625
#>     Attrib V54    -0.35930954861086084
#>     Attrib V55    0.43408235774819737
#>     Attrib V56    0.10669686580561831
#>     Attrib V57    1.1441245757195053
#>     Attrib V58    -0.51864002009952
#>     Attrib V59    0.03745880445246361
#>     Attrib V6    -0.08076418274011835
#>     Attrib V60    0.19525236825746747
#>     Attrib V7    0.6704135647484714
#>     Attrib V8    0.13212277448910775
#>     Attrib V9    -1.1156222551549677
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.21662668417261138
#>     Attrib V1    0.26812900663030226
#>     Attrib V10    -0.2924897537669718
#>     Attrib V11    -0.29596980699491043
#>     Attrib V12    -0.007603454290878029
#>     Attrib V13    -0.41123484616887934
#>     Attrib V14    -0.05621220271603323
#>     Attrib V15    0.33496388347043804
#>     Attrib V16    0.5189795239574123
#>     Attrib V17    0.10972609381639654
#>     Attrib V18    0.026893402590557253
#>     Attrib V19    0.39981612596227617
#>     Attrib V2    -0.0893976752088563
#>     Attrib V20    0.37890541905971675
#>     Attrib V21    0.0703806949491756
#>     Attrib V22    -0.2552700882489627
#>     Attrib V23    -0.2084595783171542
#>     Attrib V24    0.2843225936823199
#>     Attrib V25    -0.303602430886519
#>     Attrib V26    -0.8112650395919929
#>     Attrib V27    -0.9390404426781636
#>     Attrib V28    -0.6114312593524954
#>     Attrib V29    -0.4931405658446003
#>     Attrib V3    -0.5485597722943701
#>     Attrib V30    -0.11924025982354435
#>     Attrib V31    -0.1615849322811451
#>     Attrib V32    0.3597371493698512
#>     Attrib V33    0.5164061086358035
#>     Attrib V34    0.5424746988960503
#>     Attrib V35    0.3956708639310518
#>     Attrib V36    -0.3978938712410909
#>     Attrib V37    -0.8733079701369976
#>     Attrib V38    -0.03778777013069425
#>     Attrib V39    0.09377074800800511
#>     Attrib V4    0.5146105546657883
#>     Attrib V40    -0.40006423120192075
#>     Attrib V41    -0.4719180702139532
#>     Attrib V42    0.04979038001162836
#>     Attrib V43    0.4005015586684787
#>     Attrib V44    0.4223619989661555
#>     Attrib V45    0.13634056387306887
#>     Attrib V46    0.11563395061979295
#>     Attrib V47    -0.16708268443617388
#>     Attrib V48    0.32399919041799435
#>     Attrib V49    0.15987910386298618
#>     Attrib V5    -0.18522113648535887
#>     Attrib V50    -0.5608216639228883
#>     Attrib V51    2.179219428645235E-5
#>     Attrib V52    0.057076193235333646
#>     Attrib V53    0.17242288296947844
#>     Attrib V54    0.5984193262183727
#>     Attrib V55    0.2742129049409403
#>     Attrib V56    0.5322383504778466
#>     Attrib V57    -0.17903991368310165
#>     Attrib V58    0.4372994935439548
#>     Attrib V59    0.9246524477189645
#>     Attrib V6    -0.23555010482686356
#>     Attrib V60    0.6040987618462488
#>     Attrib V7    -0.16964306583164576
#>     Attrib V8    -0.09379314168986039
#>     Attrib V9    0.13649561955052844
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.08622145860117678
#>     Attrib V1    0.08414159000145727
#>     Attrib V10    -0.21408435653810481
#>     Attrib V11    -0.10385795405134694
#>     Attrib V12    0.1654073186280756
#>     Attrib V13    -0.21213783449766666
#>     Attrib V14    -0.0811723708601702
#>     Attrib V15    0.15839165795393362
#>     Attrib V16    0.2547268572172945
#>     Attrib V17    0.14620384171902354
#>     Attrib V18    0.08521633478019697
#>     Attrib V19    0.2897000434255872
#>     Attrib V2    -0.19133716458454936
#>     Attrib V20    0.16959184288717877
#>     Attrib V21    -0.02655865262352636
#>     Attrib V22    -0.19282916714722143
#>     Attrib V23    -0.12068979811136067
#>     Attrib V24    0.20849454042034582
#>     Attrib V25    -0.04993751002653479
#>     Attrib V26    -0.3920742655155994
#>     Attrib V27    -0.6198534590186808
#>     Attrib V28    -0.5179059809729745
#>     Attrib V29    -0.6361673840875253
#>     Attrib V3    -0.4069354339038117
#>     Attrib V30    -0.22344863556535857
#>     Attrib V31    -0.15899101184395661
#>     Attrib V32    0.265709868711254
#>     Attrib V33    0.3573672734297688
#>     Attrib V34    0.3982468801221053
#>     Attrib V35    0.41550223723210794
#>     Attrib V36    -0.21169238104586285
#>     Attrib V37    -0.5298804158817721
#>     Attrib V38    -0.003654578220022037
#>     Attrib V39    0.09846237100843572
#>     Attrib V4    0.248329369197365
#>     Attrib V40    -0.2864059409609295
#>     Attrib V41    -0.352059844916977
#>     Attrib V42    -0.06780179906218671
#>     Attrib V43    0.2583785722695148
#>     Attrib V44    0.26775836650415885
#>     Attrib V45    0.12728224395720159
#>     Attrib V46    0.08771262788786456
#>     Attrib V47    -0.013606993042176661
#>     Attrib V48    0.2072273561235237
#>     Attrib V49    0.09616217570438483
#>     Attrib V5    -0.16997358101893253
#>     Attrib V50    -0.4086995095557736
#>     Attrib V51    0.027725169599452253
#>     Attrib V52    0.11217768939646125
#>     Attrib V53    0.20307682079177505
#>     Attrib V54    0.43469421716025225
#>     Attrib V55    0.25298917633009127
#>     Attrib V56    0.42207375855770635
#>     Attrib V57    -0.20191153898631176
#>     Attrib V58    0.2586119457973382
#>     Attrib V59    0.6263263712626024
#>     Attrib V6    -0.1736972685815936
#>     Attrib V60    0.41629025965185384
#>     Attrib V7    -0.13498477482596094
#>     Attrib V8    -0.09287059980534788
#>     Attrib V9    0.14334788014185912
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.18362451672268085
#>     Attrib V1    -0.018512972771445625
#>     Attrib V10    0.058944816286014015
#>     Attrib V11    0.0019767119415449556
#>     Attrib V12    -0.045413832069673574
#>     Attrib V13    0.03449890786454767
#>     Attrib V14    0.0788764961909429
#>     Attrib V15    0.0684500381855168
#>     Attrib V16    0.049597073974074944
#>     Attrib V17    0.1745341518400649
#>     Attrib V18    0.09609592813043372
#>     Attrib V19    -0.004919625542510043
#>     Attrib V2    0.04496582003947098
#>     Attrib V20    -0.03320182432764935
#>     Attrib V21    -0.07211128645142806
#>     Attrib V22    -0.0895128226815388
#>     Attrib V23    -0.05713479156334732
#>     Attrib V24    -0.21694198767686268
#>     Attrib V25    -0.10259652688953076
#>     Attrib V26    -0.025503333579188967
#>     Attrib V27    -0.10041014802622497
#>     Attrib V28    -0.09803769725091813
#>     Attrib V29    -0.13660253813517015
#>     Attrib V3    0.145667412430684
#>     Attrib V30    -0.08807738062212424
#>     Attrib V31    0.020822441132312984
#>     Attrib V32    0.030855110029446745
#>     Attrib V33    -0.05678801335717454
#>     Attrib V34    -0.05902712463063033
#>     Attrib V35    -0.019208167889266964
#>     Attrib V36    0.1842808198575637
#>     Attrib V37    0.19211409870810728
#>     Attrib V38    0.09219293976383795
#>     Attrib V39    0.04177280729306156
#>     Attrib V4    0.001734617626285045
#>     Attrib V40    0.1981652187608877
#>     Attrib V41    0.1509896709965221
#>     Attrib V42    -0.009242100917700375
#>     Attrib V43    0.007353349759032348
#>     Attrib V44    -0.08990668963206427
#>     Attrib V45    -0.040958861112986016
#>     Attrib V46    -0.00845165115588217
#>     Attrib V47    0.04354276792090896
#>     Attrib V48    -0.05268796464832174
#>     Attrib V49    -0.03969801251782301
#>     Attrib V5    0.0564477689435901
#>     Attrib V50    0.23053421180369404
#>     Attrib V51    0.05909289097724597
#>     Attrib V52    0.10225240268909651
#>     Attrib V53    0.009854137378412162
#>     Attrib V54    -0.13882813596652094
#>     Attrib V55    0.07091621003693557
#>     Attrib V56    0.12118710244923361
#>     Attrib V57    0.21581242878512644
#>     Attrib V58    0.016430958670732666
#>     Attrib V59    -0.04904492476136317
#>     Attrib V6    0.1850603829074305
#>     Attrib V60    -0.003492152627041849
#>     Attrib V7    0.14140174620689966
#>     Attrib V8    0.13805281201077854
#>     Attrib V9    0.0892857102619869
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.653977488437326
#>     Attrib V1    -0.04776265760736072
#>     Attrib V10    1.1491282515012302
#>     Attrib V11    0.9048853556053765
#>     Attrib V12    0.6924798345572437
#>     Attrib V13    0.13196523367307644
#>     Attrib V14    -0.4848014364806813
#>     Attrib V15    -0.07712614358212869
#>     Attrib V16    -0.4386515323987362
#>     Attrib V17    -0.26773378940652093
#>     Attrib V18    -0.3844089520438484
#>     Attrib V19    -0.45102616763864667
#>     Attrib V2    0.8723441139278194
#>     Attrib V20    -0.20413047524408895
#>     Attrib V21    1.160368086090726
#>     Attrib V22    1.1205843116784167
#>     Attrib V23    1.4941455540638124
#>     Attrib V24    1.152656600167859
#>     Attrib V25    -0.4309939813074096
#>     Attrib V26    0.26863618301299064
#>     Attrib V27    1.2764478257504188
#>     Attrib V28    2.3797865583214888
#>     Attrib V29    3.0995101334390145
#>     Attrib V3    0.475752782509674
#>     Attrib V30    1.411846487645948
#>     Attrib V31    -1.072723789675442
#>     Attrib V32    -0.571417665462992
#>     Attrib V33    -1.1709611267644606
#>     Attrib V34    -0.4964827436339408
#>     Attrib V35    0.26697375761834374
#>     Attrib V36    -1.5373843299269594
#>     Attrib V37    -0.17437822026223831
#>     Attrib V38    -0.3575759433849829
#>     Attrib V39    -0.20858785079827732
#>     Attrib V4    0.5102405870284317
#>     Attrib V40    -0.46396217364190895
#>     Attrib V41    1.478630782881867
#>     Attrib V42    0.4581825076125613
#>     Attrib V43    0.5504594781428862
#>     Attrib V44    1.2222050191149754
#>     Attrib V45    0.35011234651993645
#>     Attrib V46    1.5103740725855999
#>     Attrib V47    1.559581594163386
#>     Attrib V48    1.139474651120949
#>     Attrib V49    0.8987534216057504
#>     Attrib V5    1.2470330058241825
#>     Attrib V50    -0.5655086639468913
#>     Attrib V51    1.6412951257871107
#>     Attrib V52    0.9730251650286734
#>     Attrib V53    0.7602397291945253
#>     Attrib V54    0.6142683649088732
#>     Attrib V55    -0.9538003140487535
#>     Attrib V56    -0.8128666483386469
#>     Attrib V57    -1.4750610197496017
#>     Attrib V58    1.0047171148185807
#>     Attrib V59    -0.2626607400756747
#>     Attrib V6    0.9456524522084232
#>     Attrib V60    -0.5906748560500386
#>     Attrib V7    -0.894529410372842
#>     Attrib V8    -0.6440478664295375
#>     Attrib V9    1.428451489703079
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.23914316619944
#>     Attrib V1    -0.004163524939801879
#>     Attrib V10    0.035862701945380694
#>     Attrib V11    -0.04187145482035811
#>     Attrib V12    -0.03992850178777417
#>     Attrib V13    0.01961558688044497
#>     Attrib V14    0.10997097868693331
#>     Attrib V15    0.006628540594360404
#>     Attrib V16    0.04249855712038113
#>     Attrib V17    0.11769470243351467
#>     Attrib V18    0.04496917746803343
#>     Attrib V19    0.03656336577301791
#>     Attrib V2    0.06750162632873428
#>     Attrib V20    -0.03570460645123807
#>     Attrib V21    -0.06898270269888059
#>     Attrib V22    -0.08691088339389902
#>     Attrib V23    -0.0950009245982598
#>     Attrib V24    -0.1709811569962134
#>     Attrib V25    -0.0696763032625227
#>     Attrib V26    -0.07093288908655547
#>     Attrib V27    -0.03829728975748852
#>     Attrib V28    -0.0645231014290208
#>     Attrib V29    -0.08847252298519989
#>     Attrib V3    0.09378082924856398
#>     Attrib V30    -0.07765633252832545
#>     Attrib V31    0.013972028304706894
#>     Attrib V32    -0.01106757302316064
#>     Attrib V33    0.027382990737781405
#>     Attrib V34    -0.04536450693161136
#>     Attrib V35    0.053814634646723654
#>     Attrib V36    0.17303769516362766
#>     Attrib V37    0.22541513324407553
#>     Attrib V38    0.05788894401961849
#>     Attrib V39    0.06303525565864979
#>     Attrib V4    -0.014599947883379585
#>     Attrib V40    0.13784276004960683
#>     Attrib V41    0.0888568253260912
#>     Attrib V42    0.03843519877839298
#>     Attrib V43    -0.010769498170568029
#>     Attrib V44    -0.04965428742675621
#>     Attrib V45    0.0029698569018654993
#>     Attrib V46    -0.029460943043003885
#>     Attrib V47    -0.014261320771062656
#>     Attrib V48    -0.0010370547918981878
#>     Attrib V49    -0.023072690736270437
#>     Attrib V5    0.02621111848085728
#>     Attrib V50    0.1826516162414584
#>     Attrib V51    0.011444836553597751
#>     Attrib V52    0.02982740512749263
#>     Attrib V53    0.04592419115679406
#>     Attrib V54    -0.10360854518221241
#>     Attrib V55    0.07048281441183694
#>     Attrib V56    0.1196312037078516
#>     Attrib V57    0.17188859563121459
#>     Attrib V58    0.025363651258546786
#>     Attrib V59    -0.009247820272400271
#>     Attrib V6    0.1658756358684964
#>     Attrib V60    0.09619022205371769
#>     Attrib V7    0.10954670537958287
#>     Attrib V8    0.11561567423043402
#>     Attrib V9    0.00890144123913244
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.4806048616774417
#>     Attrib V1    0.09596770644256039
#>     Attrib V10    -0.06516242901173885
#>     Attrib V11    -0.018191093593241038
#>     Attrib V12    0.27109745959423387
#>     Attrib V13    -0.31576532413023184
#>     Attrib V14    -0.3136165356682932
#>     Attrib V15    0.15998891740000348
#>     Attrib V16    0.3006448237233278
#>     Attrib V17    0.03690089050218176
#>     Attrib V18    0.04848111651967859
#>     Attrib V19    0.343789444858896
#>     Attrib V2    -0.08799851614850704
#>     Attrib V20    0.22719555495419294
#>     Attrib V21    0.21178289566962982
#>     Attrib V22    -0.052131176966122975
#>     Attrib V23    -0.07507067603141582
#>     Attrib V24    0.38710287228788076
#>     Attrib V25    -0.17865659937996115
#>     Attrib V26    -0.4289318303647706
#>     Attrib V27    -0.48388351667373425
#>     Attrib V28    -0.12215815799637839
#>     Attrib V29    -0.1781680479303839
#>     Attrib V3    -0.6033554671342528
#>     Attrib V30    0.03442862855813005
#>     Attrib V31    -0.4240287414963129
#>     Attrib V32    0.15564339791756684
#>     Attrib V33    0.1794175239698484
#>     Attrib V34    0.2880317557191816
#>     Attrib V35    0.36750906442065306
#>     Attrib V36    -0.4162123229406095
#>     Attrib V37    -0.6446795504390894
#>     Attrib V38    0.15262888650969952
#>     Attrib V39    0.2563094387857203
#>     Attrib V4    0.49647872087637346
#>     Attrib V40    -0.5283430784588199
#>     Attrib V41    -0.375431980394686
#>     Attrib V42    0.003995903927950217
#>     Attrib V43    0.36903125136067405
#>     Attrib V44    0.6985168594305208
#>     Attrib V45    0.2762108099077008
#>     Attrib V46    0.20542121989979434
#>     Attrib V47    0.03632250879340808
#>     Attrib V48    0.5258122307088153
#>     Attrib V49    0.26249078718783814
#>     Attrib V5    -0.14507972735085498
#>     Attrib V50    -0.6655513865861569
#>     Attrib V51    0.12284849557324949
#>     Attrib V52    0.12020756080843599
#>     Attrib V53    0.23819114012229378
#>     Attrib V54    0.6189773031001875
#>     Attrib V55    0.0348175003454401
#>     Attrib V56    0.24030412289826228
#>     Attrib V57    -0.4522176440376091
#>     Attrib V58    0.39151632875764414
#>     Attrib V59    0.7703155440965732
#>     Attrib V6    -0.24456054638675553
#>     Attrib V60    0.38818470152841617
#>     Attrib V7    -0.4429880189781382
#>     Attrib V8    -0.1757689527058621
#>     Attrib V9    0.3783911706867594
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.2430237165679126
#>     Attrib V1    0.2571641051962063
#>     Attrib V10    -0.9444739191446896
#>     Attrib V11    -0.8389422193616013
#>     Attrib V12    -1.0183329106068515
#>     Attrib V13    0.03178363927176557
#>     Attrib V14    0.6859657576031727
#>     Attrib V15    0.5604504976460393
#>     Attrib V16    0.3537115391249034
#>     Attrib V17    0.1253463255235785
#>     Attrib V18    0.12975229261568932
#>     Attrib V19    -0.22826563757363685
#>     Attrib V2    0.13846694541056287
#>     Attrib V20    -0.09112494458616456
#>     Attrib V21    -0.4519543955407217
#>     Attrib V22    -0.5101873318393872
#>     Attrib V23    -0.9195900694933137
#>     Attrib V24    -1.1475534847137385
#>     Attrib V25    -0.5087092807670305
#>     Attrib V26    -0.36732674539715915
#>     Attrib V27    -0.36323856439227076
#>     Attrib V28    -0.8727003477407624
#>     Attrib V29    -0.440656026661711
#>     Attrib V3    0.38617016645928065
#>     Attrib V30    -0.22024173882386316
#>     Attrib V31    0.4341931379088197
#>     Attrib V32    -0.020415724385508066
#>     Attrib V33    0.37139077590183067
#>     Attrib V34    0.026735462839909508
#>     Attrib V35    -0.5465843616925068
#>     Attrib V36    0.8061732986316892
#>     Attrib V37    0.5453924112957281
#>     Attrib V38    0.16247288525817352
#>     Attrib V39    -0.025238200324071845
#>     Attrib V4    0.05315229365099454
#>     Attrib V40    0.4241801180169035
#>     Attrib V41    -0.32290824097036797
#>     Attrib V42    -0.1666589863458348
#>     Attrib V43    -0.37366612910134867
#>     Attrib V44    -0.5704612451962064
#>     Attrib V45    -0.0446423706231002
#>     Attrib V46    -0.9034001907932344
#>     Attrib V47    -1.1864053525805647
#>     Attrib V48    -1.2833625872285903
#>     Attrib V49    -0.883965251129207
#>     Attrib V5    -0.1109635996259999
#>     Attrib V50    0.564323995209215
#>     Attrib V51    -1.0387632611633593
#>     Attrib V52    -0.6106491329372883
#>     Attrib V53    -0.3210927581540314
#>     Attrib V54    -0.26750144090964817
#>     Attrib V55    0.5531325427154825
#>     Attrib V56    0.24266596696142528
#>     Attrib V57    1.1160434565797566
#>     Attrib V58    -0.5157519798604675
#>     Attrib V59    0.07829164415745013
#>     Attrib V6    -0.1796486517346634
#>     Attrib V60    0.09160821663364026
#>     Attrib V7    0.6341789453916187
#>     Attrib V8    0.22148560113637394
#>     Attrib V9    -1.2427591528164648
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.0571750048182942
#>     Attrib V1    0.0053789997864111755
#>     Attrib V10    -0.05873820449861377
#>     Attrib V11    0.03200064674699049
#>     Attrib V12    0.11124450687010481
#>     Attrib V13    -0.05905952153465013
#>     Attrib V14    0.0478677467587703
#>     Attrib V15    0.06573834366570061
#>     Attrib V16    0.05522267416914622
#>     Attrib V17    -0.011960258168473134
#>     Attrib V18    -0.006909061629544836
#>     Attrib V19    0.016226565214979893
#>     Attrib V2    -0.0384187277106051
#>     Attrib V20    0.05787741719502158
#>     Attrib V21    0.00370322057080871
#>     Attrib V22    -0.09610085711419558
#>     Attrib V23    -0.15484685983843316
#>     Attrib V24    0.06461506519960603
#>     Attrib V25    0.003041323407538572
#>     Attrib V26    -0.1515089206649636
#>     Attrib V27    -0.15194142473742112
#>     Attrib V28    -0.11083624949950936
#>     Attrib V29    -0.10094557558016447
#>     Attrib V3    -0.08273205747146628
#>     Attrib V30    -0.12638567743842102
#>     Attrib V31    -0.08189235433568952
#>     Attrib V32    0.075791462818624
#>     Attrib V33    0.06942439604400512
#>     Attrib V34    0.10253442171581253
#>     Attrib V35    0.14851405709231272
#>     Attrib V36    -0.09615627423020184
#>     Attrib V37    -0.12644570359926596
#>     Attrib V38    0.026322225747106118
#>     Attrib V39    0.08862842986794882
#>     Attrib V4    0.08079637379872215
#>     Attrib V40    -0.05858239347269862
#>     Attrib V41    -0.061311667117436096
#>     Attrib V42    -0.058125532718204635
#>     Attrib V43    0.11679924974381524
#>     Attrib V44    0.03560986238490691
#>     Attrib V45    0.06354497569125032
#>     Attrib V46    0.09065110577958066
#>     Attrib V47    0.08266109806477795
#>     Attrib V48    0.1164136698817375
#>     Attrib V49    0.024031278956600025
#>     Attrib V5    -0.009876265038670201
#>     Attrib V50    -0.06053219181323991
#>     Attrib V51    0.12461965626049502
#>     Attrib V52    0.12075548017645699
#>     Attrib V53    0.1342941554553029
#>     Attrib V54    0.1543615438477504
#>     Attrib V55    0.15890123271993242
#>     Attrib V56    0.1687185144800342
#>     Attrib V57    -0.02909887292253123
#>     Attrib V58    0.12080565614887982
#>     Attrib V59    0.20977825789802054
#>     Attrib V6    0.003355875109371016
#>     Attrib V60    0.22772274739899354
#>     Attrib V7    -0.06893475301898518
#>     Attrib V8    -0.03199875523517296
#>     Attrib V9    0.08366817885197443
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.1520137601819052
#>     Attrib V1    0.06346530562813857
#>     Attrib V10    0.05656341604164287
#>     Attrib V11    0.003119601939901821
#>     Attrib V12    0.056403600772727186
#>     Attrib V13    0.03331870543195581
#>     Attrib V14    0.044617656763228306
#>     Attrib V15    0.057447633826098944
#>     Attrib V16    0.05621838577278736
#>     Attrib V17    0.062286559435807916
#>     Attrib V18    3.320479233601117E-4
#>     Attrib V19    -0.028323610003198534
#>     Attrib V2    0.04889350339741958
#>     Attrib V20    -0.05301841937709981
#>     Attrib V21    -0.03740299941826885
#>     Attrib V22    -0.12356235606782519
#>     Attrib V23    -0.1184144987154368
#>     Attrib V24    -0.08967241967279693
#>     Attrib V25    -0.03866939586814543
#>     Attrib V26    -0.041734462359074125
#>     Attrib V27    -0.09340048176630068
#>     Attrib V28    -0.05813505434853987
#>     Attrib V29    -0.13067282887001352
#>     Attrib V3    -0.009896776256714354
#>     Attrib V30    -0.044314123614329994
#>     Attrib V31    0.01712846907371978
#>     Attrib V32    0.007749266925714808
#>     Attrib V33    -0.008768649497528829
#>     Attrib V34    0.01646218323088783
#>     Attrib V35    0.09900640589696313
#>     Attrib V36    0.006810965848785991
#>     Attrib V37    0.04998739657538866
#>     Attrib V38    0.034386038444812805
#>     Attrib V39    0.13741547583086472
#>     Attrib V4    0.08212966528296356
#>     Attrib V40    0.05347208525265769
#>     Attrib V41    0.023428127502556816
#>     Attrib V42    0.03498693118830616
#>     Attrib V43    0.015241960064835717
#>     Attrib V44    -0.01561765373387454
#>     Attrib V45    0.03535584905559169
#>     Attrib V46    0.058770922878362865
#>     Attrib V47    0.029944990732430964
#>     Attrib V48    0.08932534359900508
#>     Attrib V49    0.00754992709145285
#>     Attrib V5    0.008857673710183546
#>     Attrib V50    0.01892717718035678
#>     Attrib V51    0.07836638593362284
#>     Attrib V52    0.08986597353100431
#>     Attrib V53    0.1255311273598698
#>     Attrib V54    0.06100571430568398
#>     Attrib V55    0.0819575200780597
#>     Attrib V56    0.16856738363654794
#>     Attrib V57    0.018421833400694292
#>     Attrib V58    0.12795177815962355
#>     Attrib V59    0.17692437686509016
#>     Attrib V6    0.06353972117435355
#>     Attrib V60    0.18502838208171202
#>     Attrib V7    -0.026785812310453166
#>     Attrib V8    -0.011717375477550801
#>     Attrib V9    0.04006561033685371
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.04851781840928539
#>     Attrib V1    0.06613157689872734
#>     Attrib V10    -0.17379157169606943
#>     Attrib V11    -0.1406212084768874
#>     Attrib V12    0.05992643266956611
#>     Attrib V13    -0.295142446337136
#>     Attrib V14    -0.11113692274854649
#>     Attrib V15    0.20143859849086856
#>     Attrib V16    0.37639271108137
#>     Attrib V17    0.17600995399875013
#>     Attrib V18    0.133945171192019
#>     Attrib V19    0.38015171120835634
#>     Attrib V2    -0.1782033037602041
#>     Attrib V20    0.29033337860892305
#>     Attrib V21    -0.06906683890586365
#>     Attrib V22    -0.1965715812137582
#>     Attrib V23    -0.07955178788364062
#>     Attrib V24    0.3574680894650594
#>     Attrib V25    -0.04768078809690701
#>     Attrib V26    -0.5029423852483954
#>     Attrib V27    -0.81734236596561
#>     Attrib V28    -0.6896844214597706
#>     Attrib V29    -0.8823751013061902
#>     Attrib V3    -0.5620528961707193
#>     Attrib V30    -0.32520897574237306
#>     Attrib V31    -0.1270930699738814
#>     Attrib V32    0.36281205427924074
#>     Attrib V33    0.5188287485198756
#>     Attrib V34    0.5839582786280124
#>     Attrib V35    0.5256059076368594
#>     Attrib V36    -0.28587996875584853
#>     Attrib V37    -0.7530373325977021
#>     Attrib V38    0.006095778719542737
#>     Attrib V39    0.05889401125796277
#>     Attrib V4    0.19797388843975144
#>     Attrib V40    -0.30059862677743415
#>     Attrib V41    -0.45206489423140256
#>     Attrib V42    -0.05032390385966486
#>     Attrib V43    0.3027052222825643
#>     Attrib V44    0.34345098236352845
#>     Attrib V45    0.1007014372732867
#>     Attrib V46    0.10938137811398141
#>     Attrib V47    -0.052331640609120746
#>     Attrib V48    0.3255080343276183
#>     Attrib V49    0.1733632357843644
#>     Attrib V5    -0.2862164496357233
#>     Attrib V50    -0.4390354087363436
#>     Attrib V51    0.024984280380760712
#>     Attrib V52    0.07997545182024335
#>     Attrib V53    0.21148321769934703
#>     Attrib V54    0.5005667338936506
#>     Attrib V55    0.29467670921394623
#>     Attrib V56    0.43822801419782476
#>     Attrib V57    -0.22170576255463084
#>     Attrib V58    0.2833019096406374
#>     Attrib V59    0.6523984805843953
#>     Attrib V6    -0.21352424857117683
#>     Attrib V60    0.5101550170890147
#>     Attrib V7    -0.08025325020360582
#>     Attrib V8    0.0019001451302611081
#>     Attrib V9    0.2613687659487805
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.17869528120172856
#>     Attrib V1    0.045050288026461736
#>     Attrib V10    -0.002541839529694889
#>     Attrib V11    0.022602232108804403
#>     Attrib V12    3.3773546954927005E-4
#>     Attrib V13    -0.015869067627143477
#>     Attrib V14    0.10033674204428455
#>     Attrib V15    0.04332288001735972
#>     Attrib V16    0.06966967100490501
#>     Attrib V17    0.02667032775140361
#>     Attrib V18    0.09233101421668405
#>     Attrib V19    -0.04671734615041087
#>     Attrib V2    0.02231620144216237
#>     Attrib V20    -0.021008932836382638
#>     Attrib V21    -0.04995818498284952
#>     Attrib V22    -0.10823192336209116
#>     Attrib V23    -0.06241328777912166
#>     Attrib V24    -0.1033662674911228
#>     Attrib V25    -0.11732404317157685
#>     Attrib V26    -0.09489535988438036
#>     Attrib V27    -0.08933835807063448
#>     Attrib V28    -0.055172799744029215
#>     Attrib V29    -0.09030844896883
#>     Attrib V3    0.09923858832179229
#>     Attrib V30    -0.033968840915374644
#>     Attrib V31    -0.031784984063389955
#>     Attrib V32    0.004021199960409424
#>     Attrib V33    0.02711161556799625
#>     Attrib V34    0.01837522282724404
#>     Attrib V35    0.055439315938156354
#>     Attrib V36    0.12506909848129827
#>     Attrib V37    0.10031223025585537
#>     Attrib V38    0.03723770850231963
#>     Attrib V39    0.08585144857742749
#>     Attrib V4    -0.006359957504283022
#>     Attrib V40    0.07006485915116364
#>     Attrib V41    0.02809425223184966
#>     Attrib V42    0.0314767068099708
#>     Attrib V43    -0.02659666727995033
#>     Attrib V44    0.012037376670374895
#>     Attrib V45    0.057382692206149964
#>     Attrib V46    0.04010201253828026
#>     Attrib V47    0.03490001863777028
#>     Attrib V48    -0.012460756032910263
#>     Attrib V49    0.05156629781484951
#>     Attrib V5    0.08192022810629526
#>     Attrib V50    0.07434343025274431
#>     Attrib V51    0.09122423192693367
#>     Attrib V52    0.11775811973694737
#>     Attrib V53    0.10319982390419614
#>     Attrib V54    -0.05561809011119017
#>     Attrib V55    0.06643120787325825
#>     Attrib V56    0.11210676266803164
#>     Attrib V57    0.07926301318784837
#>     Attrib V58    0.11702575103072513
#>     Attrib V59    0.03956794436614749
#>     Attrib V6    0.13866898123335253
#>     Attrib V60    0.09737096808800462
#>     Attrib V7    0.09155237990145441
#>     Attrib V8    0.09859665046101582
#>     Attrib V9    0.08074910238031328
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
#>   0.173913 
```
