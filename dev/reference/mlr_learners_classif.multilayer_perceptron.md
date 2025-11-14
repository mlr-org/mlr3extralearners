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
#>     Threshold    -0.37428161154227096
#>     Node 2    2.1085506136971484
#>     Node 3    0.9464214291560891
#>     Node 4    0.5474977377879157
#>     Node 5    -1.1816731591328125
#>     Node 6    1.172365864023979
#>     Node 7    2.7832349686664144
#>     Node 8    1.4787796694562263
#>     Node 9    3.3761239772068667
#>     Node 10    -0.9044582033812271
#>     Node 11    1.0577199287383887
#>     Node 12    1.0070313978657703
#>     Node 13    0.7572970001746729
#>     Node 14    1.1021056539797387
#>     Node 15    -3.125156394469482
#>     Node 16    -0.40921201717903094
#>     Node 17    0.941751765528681
#>     Node 18    0.040890556006143705
#>     Node 19    1.3193268677101722
#>     Node 20    2.4212799349632452
#>     Node 21    -2.8166068868685654
#>     Node 22    0.9932937046066029
#>     Node 23    1.1226536576610797
#>     Node 24    -2.6378329126750777
#>     Node 25    3.7136451102044004
#>     Node 26    -0.5838411403048231
#>     Node 27    2.5599006942344285
#>     Node 28    -2.7123621293936595
#>     Node 29    0.6310841718238418
#>     Node 30    -0.21843088115879786
#>     Node 31    1.8416489973387034
#>     Node 32    1.0621015463969723
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.3702368057908275
#>     Node 2    -2.16517727058699
#>     Node 3    -0.9343692764195245
#>     Node 4    -0.511148810031783
#>     Node 5    1.2182225111823959
#>     Node 6    -1.1573811075661264
#>     Node 7    -2.7632249532308943
#>     Node 8    -1.5042686161384573
#>     Node 9    -3.361283523552873
#>     Node 10    0.8662426754721061
#>     Node 11    -1.032076371601585
#>     Node 12    -1.0919465666354642
#>     Node 13    -0.7093752074911778
#>     Node 14    -1.0437155018929833
#>     Node 15    3.101894676205471
#>     Node 16    0.40410445545385243
#>     Node 17    -0.9136176001954764
#>     Node 18    0.0037168022907621717
#>     Node 19    -1.3236084445399214
#>     Node 20    -2.409856254389745
#>     Node 21    2.861784260022604
#>     Node 22    -1.0455154595103766
#>     Node 23    -1.168935394070811
#>     Node 24    2.622718852401366
#>     Node 25    -3.6877438692420816
#>     Node 26    0.5219563427886815
#>     Node 27    -2.5953941127427624
#>     Node 28    2.705952384649616
#>     Node 29    -0.668092423577378
#>     Node 30    0.29993971657360374
#>     Node 31    -1.7932721906492488
#>     Node 32    -1.0835644148436614
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.1999538906708476
#>     Attrib V1    0.07529542027920283
#>     Attrib V10    0.731758240505205
#>     Attrib V11    0.3719972581162262
#>     Attrib V12    0.2874054019346336
#>     Attrib V13    0.15317200382386273
#>     Attrib V14    -0.337099222749796
#>     Attrib V15    -0.2929743551464639
#>     Attrib V16    -0.4762241972618035
#>     Attrib V17    -0.38326329219782335
#>     Attrib V18    -0.29033408403627897
#>     Attrib V19    0.10624559887691805
#>     Attrib V2    0.07984442601557225
#>     Attrib V20    0.05489570477323658
#>     Attrib V21    0.19814042978818977
#>     Attrib V22    0.10778880529942635
#>     Attrib V23    0.5258568228668782
#>     Attrib V24    1.0029182620717125
#>     Attrib V25    0.5039016398332439
#>     Attrib V26    0.3443300141521408
#>     Attrib V27    0.6686411347674066
#>     Attrib V28    1.1508183441146447
#>     Attrib V29    0.6052802307911643
#>     Attrib V3    -0.07565430149882464
#>     Attrib V30    0.38521700047229956
#>     Attrib V31    -0.3611837379729159
#>     Attrib V32    0.12333283511919821
#>     Attrib V33    -0.09828880233547439
#>     Attrib V34    0.05136480712949889
#>     Attrib V35    0.47746094534736655
#>     Attrib V36    -0.4688746073056337
#>     Attrib V37    -0.4699242416595794
#>     Attrib V38    -0.35353108568522407
#>     Attrib V39    0.3253324601326391
#>     Attrib V4    -0.07196515823836111
#>     Attrib V40    0.29445836677674253
#>     Attrib V41    0.941505649540058
#>     Attrib V42    0.23656820627517783
#>     Attrib V43    -0.12550687198607782
#>     Attrib V44    0.3428302720255616
#>     Attrib V45    0.5545634672795011
#>     Attrib V46    0.497357054202123
#>     Attrib V47    0.4573149920256579
#>     Attrib V48    0.785841315909501
#>     Attrib V49    0.8177545295677873
#>     Attrib V5    0.8285017175607301
#>     Attrib V50    -0.5961452005059148
#>     Attrib V51    0.5021563648284346
#>     Attrib V52    0.5979635111979931
#>     Attrib V53    0.5663161134570286
#>     Attrib V54    0.0815494240484703
#>     Attrib V55    -0.2964567384091332
#>     Attrib V56    -0.4509358445200352
#>     Attrib V57    -0.6529924841639901
#>     Attrib V58    0.19549334811726657
#>     Attrib V59    -0.01737897229935274
#>     Attrib V6    0.24650264856188486
#>     Attrib V60    -0.08064604966652447
#>     Attrib V7    -0.33069465509757306
#>     Attrib V8    -0.39759716988382793
#>     Attrib V9    0.7372531664889709
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.09392142428506946
#>     Attrib V1    0.12814230159728082
#>     Attrib V10    0.23505668143934097
#>     Attrib V11    0.04053666468962297
#>     Attrib V12    -0.01774466172724069
#>     Attrib V13    -0.0634241567956955
#>     Attrib V14    -0.12664860929817345
#>     Attrib V15    0.07957771656107525
#>     Attrib V16    -0.026087216711667145
#>     Attrib V17    0.10015471524379245
#>     Attrib V18    -0.04536366611049018
#>     Attrib V19    0.11373300891435427
#>     Attrib V2    0.11281459364549061
#>     Attrib V20    0.28721153380965536
#>     Attrib V21    0.410871766697676
#>     Attrib V22    0.3414030341409603
#>     Attrib V23    0.3483234903890135
#>     Attrib V24    0.3667673077707481
#>     Attrib V25    -0.08375598442289428
#>     Attrib V26    -0.3566716124253788
#>     Attrib V27    -0.22522270939058303
#>     Attrib V28    -0.09761681122725652
#>     Attrib V29    -0.37936651353626916
#>     Attrib V3    0.032429812835628714
#>     Attrib V30    0.1376010718745025
#>     Attrib V31    -0.6104063100550638
#>     Attrib V32    -0.041904067129521924
#>     Attrib V33    0.06477562640211457
#>     Attrib V34    -0.19055357400129028
#>     Attrib V35    0.055817429460534695
#>     Attrib V36    -0.14280140006253608
#>     Attrib V37    -0.3550649766091593
#>     Attrib V38    0.04223099768712461
#>     Attrib V39    0.30037732565629516
#>     Attrib V4    0.22078506455890268
#>     Attrib V40    -0.07425981270980503
#>     Attrib V41    -0.020548442984066988
#>     Attrib V42    0.12415062815621195
#>     Attrib V43    0.07052332842449938
#>     Attrib V44    0.34251335056910864
#>     Attrib V45    0.22596966151584935
#>     Attrib V46    -0.07762330084199452
#>     Attrib V47    -0.188662635054565
#>     Attrib V48    0.10014828820033146
#>     Attrib V49    0.2709425132532883
#>     Attrib V5    0.27002465487412713
#>     Attrib V50    -0.3989287508935411
#>     Attrib V51    0.08567494878260966
#>     Attrib V52    0.11977686645784538
#>     Attrib V53    -0.1761998028324775
#>     Attrib V54    0.3635098151364893
#>     Attrib V55    0.012777034336112015
#>     Attrib V56    0.21562584660963866
#>     Attrib V57    -0.40636791414554696
#>     Attrib V58    0.23301555544896482
#>     Attrib V59    0.30129706882925217
#>     Attrib V6    -0.11294951452301305
#>     Attrib V60    0.18794350597068557
#>     Attrib V7    0.006916275511078972
#>     Attrib V8    -0.008130229866232361
#>     Attrib V9    0.21852662487092764
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.08077715893146337
#>     Attrib V1    0.048866170417083805
#>     Attrib V10    0.11520595305778608
#>     Attrib V11    0.013756687833214414
#>     Attrib V12    -0.03648474086134143
#>     Attrib V13    -0.035248224658573794
#>     Attrib V14    -0.05975363495713416
#>     Attrib V15    0.03206764339845064
#>     Attrib V16    -0.06579572661313732
#>     Attrib V17    0.017824877811356752
#>     Attrib V18    -0.054481071390322613
#>     Attrib V19    0.043969243903464246
#>     Attrib V2    0.048879500790375764
#>     Attrib V20    0.15939274632416087
#>     Attrib V21    0.27407240586982357
#>     Attrib V22    0.11390732396704213
#>     Attrib V23    0.16490835303756124
#>     Attrib V24    0.16961259950258192
#>     Attrib V25    -0.13132579168487699
#>     Attrib V26    -0.2276851693256059
#>     Attrib V27    -0.13089672165334187
#>     Attrib V28    0.06070297225470194
#>     Attrib V29    -0.054620981500079296
#>     Attrib V3    0.04822877059996829
#>     Attrib V30    0.09846552164486364
#>     Attrib V31    -0.3088998706275658
#>     Attrib V32    -0.025509504945753127
#>     Attrib V33    0.045225697380357276
#>     Attrib V34    -0.039466518155181506
#>     Attrib V35    0.08672120960039789
#>     Attrib V36    -0.1070636156026831
#>     Attrib V37    -0.18372617810997452
#>     Attrib V38    0.015111395981287083
#>     Attrib V39    0.20316578028984877
#>     Attrib V4    0.10309474273678616
#>     Attrib V40    -0.032418447350024464
#>     Attrib V41    -0.013600930460169854
#>     Attrib V42    0.06627384645455822
#>     Attrib V43    -0.0022533487453908307
#>     Attrib V44    0.20014171626221033
#>     Attrib V45    0.23023720041752768
#>     Attrib V46    -0.030631364843746275
#>     Attrib V47    -0.1002129701453766
#>     Attrib V48    0.15281160018187678
#>     Attrib V49    0.23444374750586777
#>     Attrib V5    0.23806436027844405
#>     Attrib V50    -0.21839973096942453
#>     Attrib V51    0.11747849885582189
#>     Attrib V52    0.09410587448934844
#>     Attrib V53    -0.021930324346975075
#>     Attrib V54    0.11061768576036558
#>     Attrib V55    -0.022844575358872733
#>     Attrib V56    0.1112945371276976
#>     Attrib V57    -0.23805704971337835
#>     Attrib V58    0.10690097993111879
#>     Attrib V59    0.1613767439792928
#>     Attrib V6    -0.06858358041234298
#>     Attrib V60    0.05078084532818103
#>     Attrib V7    -0.03514507352782687
#>     Attrib V8    -0.1020310549064435
#>     Attrib V9    0.17438357244035677
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.17088568504419324
#>     Attrib V1    -0.067883218642227
#>     Attrib V10    -0.45639885352247195
#>     Attrib V11    -0.2686587036870525
#>     Attrib V12    -0.32278319166969804
#>     Attrib V13    -0.10665511850351232
#>     Attrib V14    0.3525289422268513
#>     Attrib V15    0.14685991503876622
#>     Attrib V16    0.24960586349225697
#>     Attrib V17    0.20245721329602326
#>     Attrib V18    0.3083266702198284
#>     Attrib V19    0.043712854442973334
#>     Attrib V2    -0.029174040990903132
#>     Attrib V20    -0.1419623459227622
#>     Attrib V21    -0.20980389207775507
#>     Attrib V22    -0.09546859905201235
#>     Attrib V23    -0.16539724791296762
#>     Attrib V24    -0.4251795213204916
#>     Attrib V25    0.23743118075888214
#>     Attrib V26    0.41288871935813887
#>     Attrib V27    0.08977413399074592
#>     Attrib V28    -0.272276502504408
#>     Attrib V29    0.10427820589119018
#>     Attrib V3    0.14329104533301498
#>     Attrib V30    -0.16053177774424324
#>     Attrib V31    0.5469005769248994
#>     Attrib V32    -0.07643931135553006
#>     Attrib V33    -0.12289618127560559
#>     Attrib V34    -0.033199502844813426
#>     Attrib V35    -0.1276830822780277
#>     Attrib V36    0.5078987119956841
#>     Attrib V37    0.5525916931777561
#>     Attrib V38    0.09639171435438623
#>     Attrib V39    -0.4097742861963494
#>     Attrib V4    -0.11727874155851299
#>     Attrib V40    -0.04066216240590299
#>     Attrib V41    -0.26518339251618617
#>     Attrib V42    0.04002787469444205
#>     Attrib V43    0.17719896943362237
#>     Attrib V44    -0.08053129797159032
#>     Attrib V45    -0.307212620067086
#>     Attrib V46    -0.1356768076173879
#>     Attrib V47    0.0768197084849822
#>     Attrib V48    -0.3091469499602328
#>     Attrib V49    -0.46060712119580005
#>     Attrib V5    -0.4486612622462834
#>     Attrib V50    0.7208713782341325
#>     Attrib V51    -0.2046769652045891
#>     Attrib V52    -0.274990918571287
#>     Attrib V53    0.12961387939295538
#>     Attrib V54    -0.11637470429976866
#>     Attrib V55    0.1516330811709633
#>     Attrib V56    0.10820412903918743
#>     Attrib V57    0.6327425563217374
#>     Attrib V58    -0.14807778337501
#>     Attrib V59    -0.0020545096793259123
#>     Attrib V6    0.029466715076668093
#>     Attrib V60    0.058273701752686195
#>     Attrib V7    0.13815705904018521
#>     Attrib V8    0.29617084380048736
#>     Attrib V9    -0.48796568003110696
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.08682404844635266
#>     Attrib V1    0.17057301175632805
#>     Attrib V10    0.24976645833840114
#>     Attrib V11    0.07702417239532151
#>     Attrib V12    -0.01379385470405008
#>     Attrib V13    -0.1897722895970735
#>     Attrib V14    -0.21061423962752898
#>     Attrib V15    0.014043710452897474
#>     Attrib V16    0.06403708614795828
#>     Attrib V17    0.14122426423657128
#>     Attrib V18    0.03952576981516158
#>     Attrib V19    0.08624640367113123
#>     Attrib V2    0.07886833598613634
#>     Attrib V20    0.3387763215001996
#>     Attrib V21    0.5545250424957733
#>     Attrib V22    0.38115863966262287
#>     Attrib V23    0.4295026003907993
#>     Attrib V24    0.5210430990491309
#>     Attrib V25    -0.028600233428285552
#>     Attrib V26    -0.3966292665304046
#>     Attrib V27    -0.27921375786786096
#>     Attrib V28    -0.2507659208141069
#>     Attrib V29    -0.502377024772682
#>     Attrib V3    0.024731979482715685
#>     Attrib V30    0.11191564896498696
#>     Attrib V31    -0.7497353386809037
#>     Attrib V32    -0.02042495277382545
#>     Attrib V33    0.12388603447273969
#>     Attrib V34    -0.18326304287142353
#>     Attrib V35    0.04607846381655971
#>     Attrib V36    -0.19369164088130528
#>     Attrib V37    -0.46822138332308755
#>     Attrib V38    0.047761785504590336
#>     Attrib V39    0.3026514002805437
#>     Attrib V4    0.3061190740801386
#>     Attrib V40    -0.12806340843610856
#>     Attrib V41    -0.0029954938754427783
#>     Attrib V42    0.19027626175206855
#>     Attrib V43    0.0975098773181787
#>     Attrib V44    0.36490958937252466
#>     Attrib V45    0.2651584056068567
#>     Attrib V46    -0.07967860195924226
#>     Attrib V47    -0.2885173850617016
#>     Attrib V48    0.11280340527825386
#>     Attrib V49    0.3402687813263888
#>     Attrib V5    0.29604843972166633
#>     Attrib V50    -0.4369418122993495
#>     Attrib V51    0.13239057002800175
#>     Attrib V52    0.0698193404532453
#>     Attrib V53    -0.1571576462027679
#>     Attrib V54    0.367319988151519
#>     Attrib V55    -0.07954684113893239
#>     Attrib V56    0.2728492947018578
#>     Attrib V57    -0.4496428806537154
#>     Attrib V58    0.25057333125712855
#>     Attrib V59    0.36593231876546006
#>     Attrib V6    -0.016044317526275196
#>     Attrib V60    0.26492848841663774
#>     Attrib V7    0.1669260272168807
#>     Attrib V8    0.07586547262444605
#>     Attrib V9    0.36403324395102393
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.3420302605742463
#>     Attrib V1    0.2144538396258066
#>     Attrib V10    0.6008750188954657
#>     Attrib V11    0.44631770198569976
#>     Attrib V12    0.36880713093091105
#>     Attrib V13    0.32448524649818755
#>     Attrib V14    -0.21044044670896558
#>     Attrib V15    -0.20889529678653018
#>     Attrib V16    -0.40442856979111674
#>     Attrib V17    -0.4634102106822779
#>     Attrib V18    -0.39730919883900495
#>     Attrib V19    0.08795714932265745
#>     Attrib V2    0.2799284493095524
#>     Attrib V20    0.011137426387673803
#>     Attrib V21    0.09051068066597324
#>     Attrib V22    -8.530775183892829E-5
#>     Attrib V23    0.5906782393768345
#>     Attrib V24    1.0169336636937245
#>     Attrib V25    0.4647441369237489
#>     Attrib V26    0.5956220339124403
#>     Attrib V27    1.030314956687665
#>     Attrib V28    1.6898342081336901
#>     Attrib V29    1.2639793395547019
#>     Attrib V3    0.02522892081154081
#>     Attrib V30    0.3449726320528702
#>     Attrib V31    -0.11977957782498354
#>     Attrib V32    0.12210287332444109
#>     Attrib V33    -0.26036344949093077
#>     Attrib V34    -0.06406121463071995
#>     Attrib V35    0.44468413318765454
#>     Attrib V36    -0.5436161108388874
#>     Attrib V37    -0.16971621682906043
#>     Attrib V38    -0.3424323580616588
#>     Attrib V39    0.319344253747128
#>     Attrib V4    -0.1432230314686802
#>     Attrib V40    0.41688964110978166
#>     Attrib V41    1.1654528517301002
#>     Attrib V42    0.08621883294556577
#>     Attrib V43    -0.20583937871931154
#>     Attrib V44    0.1606303955682623
#>     Attrib V45    0.5317865559945342
#>     Attrib V46    0.7534339244590409
#>     Attrib V47    0.7081608371710171
#>     Attrib V48    0.8171868870864184
#>     Attrib V49    0.9104254674934762
#>     Attrib V5    0.9506888915394627
#>     Attrib V50    -0.26293946730802903
#>     Attrib V51    0.6329882754240238
#>     Attrib V52    0.8453545094130817
#>     Attrib V53    0.9765413967018333
#>     Attrib V54    0.009578077258463144
#>     Attrib V55    -0.2647153118604296
#>     Attrib V56    -0.5630983696065534
#>     Attrib V57    -0.3293082281732271
#>     Attrib V58    0.2838114492989257
#>     Attrib V59    -0.04595824102143166
#>     Attrib V6    0.3398345161164013
#>     Attrib V60    -0.06502662133865185
#>     Attrib V7    -0.5165988866557112
#>     Attrib V8    -0.6428601822622121
#>     Attrib V9    0.7316208923837328
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.13443523188242085
#>     Attrib V1    0.06530150453106023
#>     Attrib V10    0.5084652974487929
#>     Attrib V11    0.2903398458493899
#>     Attrib V12    0.15958894147861788
#>     Attrib V13    0.09236536805334833
#>     Attrib V14    -0.3192508050404329
#>     Attrib V15    -0.24169366414547244
#>     Attrib V16    -0.3357644479343583
#>     Attrib V17    -0.34938789375045703
#>     Attrib V18    -0.3641459037102356
#>     Attrib V19    -0.04214374201782429
#>     Attrib V2    0.11818037517358072
#>     Attrib V20    -0.0865619807526185
#>     Attrib V21    0.05338739289315728
#>     Attrib V22    -0.02070465815668714
#>     Attrib V23    0.28095669822999886
#>     Attrib V24    0.6452399626137806
#>     Attrib V25    0.32010823473489286
#>     Attrib V26    0.32568648194520783
#>     Attrib V27    0.5114399897650735
#>     Attrib V28    0.7903524628604573
#>     Attrib V29    0.4377329642583217
#>     Attrib V3    -0.019384020632206157
#>     Attrib V30    0.30876006666917616
#>     Attrib V31    -0.15184759169279824
#>     Attrib V32    0.13301703360899
#>     Attrib V33    0.042456249967054924
#>     Attrib V34    0.1179823205472017
#>     Attrib V35    0.38700960281342456
#>     Attrib V36    -0.25089764858257446
#>     Attrib V37    -0.2563174709639751
#>     Attrib V38    -0.1958749766599053
#>     Attrib V39    0.2190238070410038
#>     Attrib V4    0.03095670747617023
#>     Attrib V40    0.1643205143822745
#>     Attrib V41    0.5695687776654349
#>     Attrib V42    0.030226119054777865
#>     Attrib V43    -0.1037316246649283
#>     Attrib V44    0.251446766896066
#>     Attrib V45    0.42567098854362606
#>     Attrib V46    0.421366009599769
#>     Attrib V47    0.36597824669838075
#>     Attrib V48    0.6124751316632803
#>     Attrib V49    0.6122383571105061
#>     Attrib V5    0.5570464694273648
#>     Attrib V50    -0.409404887927988
#>     Attrib V51    0.34310855296015874
#>     Attrib V52    0.38043876846083347
#>     Attrib V53    0.383723882850633
#>     Attrib V54    0.10405844211767122
#>     Attrib V55    -0.19148870700185255
#>     Attrib V56    -0.3058471685805337
#>     Attrib V57    -0.3550093070111049
#>     Attrib V58    0.15742748438555348
#>     Attrib V59    -0.008574557434871868
#>     Attrib V6    0.15778387704956448
#>     Attrib V60    -0.09893239971093475
#>     Attrib V7    -0.223034389886863
#>     Attrib V8    -0.3276765630610765
#>     Attrib V9    0.5515704776781092
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.35443524518748803
#>     Attrib V1    0.1870999921894009
#>     Attrib V10    0.7818197332223158
#>     Attrib V11    0.5124328300901817
#>     Attrib V12    0.5997692033777917
#>     Attrib V13    0.4679742261575097
#>     Attrib V14    -0.3212398274344882
#>     Attrib V15    -0.28770372068331457
#>     Attrib V16    -0.4739536351203651
#>     Attrib V17    -0.4832442558044209
#>     Attrib V18    -0.4164496790189314
#>     Attrib V19    0.11516929175393859
#>     Attrib V2    0.29358118411525835
#>     Attrib V20    0.027327805693331212
#>     Attrib V21    0.13593721345045326
#>     Attrib V22    0.05818263962473328
#>     Attrib V23    0.6828130851936779
#>     Attrib V24    1.2137732791980096
#>     Attrib V25    0.622077320804318
#>     Attrib V26    0.7263157451865845
#>     Attrib V27    1.1829971842253275
#>     Attrib V28    1.8814247064308887
#>     Attrib V29    1.2897792271079405
#>     Attrib V3    -0.006441492137327493
#>     Attrib V30    0.2809384221661693
#>     Attrib V31    -0.11063692574271371
#>     Attrib V32    0.24591547153046478
#>     Attrib V33    -0.275251526357828
#>     Attrib V34    0.014773297498683469
#>     Attrib V35    0.5030424742395662
#>     Attrib V36    -0.6051866455267657
#>     Attrib V37    -0.22462373541911596
#>     Attrib V38    -0.3976769241876046
#>     Attrib V39    0.4439920178162411
#>     Attrib V4    -0.20649043928222383
#>     Attrib V40    0.5140801557839649
#>     Attrib V41    1.345473846214826
#>     Attrib V42    -0.03864187500232876
#>     Attrib V43    -0.20411435353581447
#>     Attrib V44    0.1238808695858172
#>     Attrib V45    0.58910511519315
#>     Attrib V46    0.8766978304576312
#>     Attrib V47    0.842991568419972
#>     Attrib V48    0.9253928686925343
#>     Attrib V49    1.124209129567117
#>     Attrib V5    1.0631687571489352
#>     Attrib V50    -0.2497958314742406
#>     Attrib V51    0.7823036391520005
#>     Attrib V52    1.006410717232338
#>     Attrib V53    1.242990967633328
#>     Attrib V54    -0.1556235769596298
#>     Attrib V55    -0.3297617922156759
#>     Attrib V56    -0.6278754250260571
#>     Attrib V57    -0.3944386027507924
#>     Attrib V58    0.2913119046749759
#>     Attrib V59    -0.08016651976600729
#>     Attrib V6    0.3829914049439986
#>     Attrib V60    -0.12971488648765855
#>     Attrib V7    -0.7288393523452433
#>     Attrib V8    -0.725484565032133
#>     Attrib V9    0.8204830420239861
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.15419450075404523
#>     Attrib V1    -0.02353989509350927
#>     Attrib V10    -0.3483012435342749
#>     Attrib V11    -0.26312446830984115
#>     Attrib V12    -0.19446242277799294
#>     Attrib V13    -0.02149400738072252
#>     Attrib V14    0.2933151187306527
#>     Attrib V15    0.0335777961959857
#>     Attrib V16    0.15620203876404876
#>     Attrib V17    0.007545373119585578
#>     Attrib V18    0.22321031091808158
#>     Attrib V19    0.046863209819596824
#>     Attrib V2    -0.047176203798215036
#>     Attrib V20    -0.05733637430828665
#>     Attrib V21    -0.11604569797169154
#>     Attrib V22    -0.04629229756418086
#>     Attrib V23    -0.07820296435213897
#>     Attrib V24    -0.2934040658817594
#>     Attrib V25    0.08088728572973275
#>     Attrib V26    0.20303944931966725
#>     Attrib V27    -0.026184039685924903
#>     Attrib V28    -0.23472542124455587
#>     Attrib V29    -0.011639864028021614
#>     Attrib V3    0.06272638794503405
#>     Attrib V30    -0.14536694704651165
#>     Attrib V31    0.40384308897743515
#>     Attrib V32    -0.051984494506083084
#>     Attrib V33    0.03241574947300905
#>     Attrib V34    0.0546030312516911
#>     Attrib V35    -0.05975326194502175
#>     Attrib V36    0.35788601895438
#>     Attrib V37    0.40369823635213764
#>     Attrib V38    0.1180010210825661
#>     Attrib V39    -0.31171925783724164
#>     Attrib V4    -0.07602874623659116
#>     Attrib V40    0.05055755094104104
#>     Attrib V41    -0.013152154030496223
#>     Attrib V42    0.07897295215200636
#>     Attrib V43    0.13834884554317609
#>     Attrib V44    -0.09278123009026974
#>     Attrib V45    -0.22091226869314134
#>     Attrib V46    -0.11103387842726128
#>     Attrib V47    0.03350678855341172
#>     Attrib V48    -0.27986212208882577
#>     Attrib V49    -0.3734987050567537
#>     Attrib V5    -0.34480249719307793
#>     Attrib V50    0.5688775437317745
#>     Attrib V51    -0.157030425173571
#>     Attrib V52    -0.2050469235796017
#>     Attrib V53    0.15510019842699463
#>     Attrib V54    -0.08219615633655744
#>     Attrib V55    0.07713823522813362
#>     Attrib V56    0.03172160766659821
#>     Attrib V57    0.5089052865639423
#>     Attrib V58    -0.10050432994892748
#>     Attrib V59    -0.04040319438185737
#>     Attrib V6    0.05946980194987415
#>     Attrib V60    0.042086013602939495
#>     Attrib V7    0.10327524525713215
#>     Attrib V8    0.2002501178128379
#>     Attrib V9    -0.36543103988428594
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.04218719840672004
#>     Attrib V1    0.04927361769106339
#>     Attrib V10    0.2540490636602657
#>     Attrib V11    0.09092781645184807
#>     Attrib V12    0.031408103278413826
#>     Attrib V13    -0.1541130482438181
#>     Attrib V14    -0.2631398457290082
#>     Attrib V15    -0.07377661269087377
#>     Attrib V16    -0.07839576987299102
#>     Attrib V17    0.11533022877337477
#>     Attrib V18    -0.012021010308625402
#>     Attrib V19    0.09585164887634105
#>     Attrib V2    0.008963635186529956
#>     Attrib V20    0.3480805970029902
#>     Attrib V21    0.4478145523338442
#>     Attrib V22    0.2911014348228789
#>     Attrib V23    0.3533105511267887
#>     Attrib V24    0.4193400305604716
#>     Attrib V25    -0.0599601388706641
#>     Attrib V26    -0.3636745584441341
#>     Attrib V27    -0.16999560994605872
#>     Attrib V28    7.266168926724405E-4
#>     Attrib V29    -0.31233231955441915
#>     Attrib V3    -0.0785719638172932
#>     Attrib V30    0.16817223505929454
#>     Attrib V31    -0.7086965660288554
#>     Attrib V32    -0.09835273974911748
#>     Attrib V33    0.049627716136033444
#>     Attrib V34    -0.05110235276483625
#>     Attrib V35    0.2220536996275746
#>     Attrib V36    -0.05535579122660775
#>     Attrib V37    -0.32446748497852407
#>     Attrib V38    0.19284205056453707
#>     Attrib V39    0.36778202595711423
#>     Attrib V4    0.1696309433896296
#>     Attrib V40    -0.06994314139594965
#>     Attrib V41    -0.05093773835683338
#>     Attrib V42    0.08204020452076957
#>     Attrib V43    0.06827668663837837
#>     Attrib V44    0.4735302692208139
#>     Attrib V45    0.3864695949402978
#>     Attrib V46    -0.024917777002862906
#>     Attrib V47    -0.173808979922117
#>     Attrib V48    0.2162532182031911
#>     Attrib V49    0.3607870262061483
#>     Attrib V5    0.3345003615185905
#>     Attrib V50    -0.4625636041548194
#>     Attrib V51    0.1744026092907751
#>     Attrib V52    0.07086460759725766
#>     Attrib V53    -0.19896877844529776
#>     Attrib V54    0.3462921407821341
#>     Attrib V55    -0.07929623428919268
#>     Attrib V56    0.17223427482804507
#>     Attrib V57    -0.5018251439418954
#>     Attrib V58    0.1784937091887163
#>     Attrib V59    0.1998148896076265
#>     Attrib V6    -0.06311182406721755
#>     Attrib V60    0.11794449300532389
#>     Attrib V7    -0.020047423538039205
#>     Attrib V8    -0.07154093549805905
#>     Attrib V9    0.3144984435638621
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.014855211781964363
#>     Attrib V1    0.09819806937072494
#>     Attrib V10    0.1778276738650012
#>     Attrib V11    0.1054426207511262
#>     Attrib V12    -0.07819093356138831
#>     Attrib V13    -0.11617460134290628
#>     Attrib V14    -0.15230948109936485
#>     Attrib V15    5.820242449012049E-4
#>     Attrib V16    0.013222776443735257
#>     Attrib V17    0.12568968153417764
#>     Attrib V18    -0.0022514205309153473
#>     Attrib V19    0.1396034797597654
#>     Attrib V2    0.117640256144707
#>     Attrib V20    0.2940279701408523
#>     Attrib V21    0.48574884574677524
#>     Attrib V22    0.39434757032103107
#>     Attrib V23    0.3987675754740116
#>     Attrib V24    0.3930243778797282
#>     Attrib V25    -0.13207344939769922
#>     Attrib V26    -0.381258033187254
#>     Attrib V27    -0.1631135392382134
#>     Attrib V28    -0.06520570232298736
#>     Attrib V29    -0.2682320587391006
#>     Attrib V3    -0.04781985082967169
#>     Attrib V30    0.14109257511694315
#>     Attrib V31    -0.7489606750610506
#>     Attrib V32    -0.15869964040630785
#>     Attrib V33    0.04233333180497653
#>     Attrib V34    -0.17461083631658886
#>     Attrib V35    0.07930925432186141
#>     Attrib V36    -0.10377564616293558
#>     Attrib V37    -0.35314575037162277
#>     Attrib V38    0.15065444890160748
#>     Attrib V39    0.31293110764874016
#>     Attrib V4    0.2570390373883486
#>     Attrib V40    -0.057871463544148516
#>     Attrib V41    -0.04003615313446519
#>     Attrib V42    0.10417436653650729
#>     Attrib V43    0.13992825232410927
#>     Attrib V44    0.3668119468937805
#>     Attrib V45    0.3119098791128899
#>     Attrib V46    -0.010510422858254523
#>     Attrib V47    -0.23800457656765206
#>     Attrib V48    0.19078725566045018
#>     Attrib V49    0.3127226621904374
#>     Attrib V5    0.2960408690332805
#>     Attrib V50    -0.4597723012370286
#>     Attrib V51    0.13100474830751058
#>     Attrib V52    0.12388922215271524
#>     Attrib V53    -0.1367189139756043
#>     Attrib V54    0.37172092853543404
#>     Attrib V55    -0.06407753967236389
#>     Attrib V56    0.23088741833557774
#>     Attrib V57    -0.4172948810498863
#>     Attrib V58    0.22459296374965665
#>     Attrib V59    0.36416829868253475
#>     Attrib V6    -0.12420817888533835
#>     Attrib V60    0.24059216064283986
#>     Attrib V7    0.07423253331260841
#>     Attrib V8    -0.009049324716231709
#>     Attrib V9    0.2637953392933844
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.14328404656682558
#>     Attrib V1    0.09709163056888968
#>     Attrib V10    0.13158253456850647
#>     Attrib V11    0.025692156742868
#>     Attrib V12    -0.044113428331765216
#>     Attrib V13    -0.03450104433614061
#>     Attrib V14    -0.11352963509904442
#>     Attrib V15    0.006280418391291511
#>     Attrib V16    -0.027458055612796576
#>     Attrib V17    0.11356585276858533
#>     Attrib V18    0.0137918499019404
#>     Attrib V19    0.07810720662216245
#>     Attrib V2    0.059459895958350925
#>     Attrib V20    0.2606460040129381
#>     Attrib V21    0.36890078856093483
#>     Attrib V22    0.21900932146584962
#>     Attrib V23    0.30203489718544296
#>     Attrib V24    0.31647034860250933
#>     Attrib V25    -0.05640762971689162
#>     Attrib V26    -0.3413599866023339
#>     Attrib V27    -0.16698214851432544
#>     Attrib V28    -0.1318645485512129
#>     Attrib V29    -0.25061633887245255
#>     Attrib V3    0.07610260038994503
#>     Attrib V30    0.07621965797732697
#>     Attrib V31    -0.5268277876702148
#>     Attrib V32    -0.036603533770462424
#>     Attrib V33    0.04454869913382161
#>     Attrib V34    -0.0529351998602546
#>     Attrib V35    0.05359478965487172
#>     Attrib V36    -0.12302857537033382
#>     Attrib V37    -0.2599462718329762
#>     Attrib V38    0.062291591849775986
#>     Attrib V39    0.2767982492818735
#>     Attrib V4    0.19583602758925867
#>     Attrib V40    -0.042757310905569126
#>     Attrib V41    -0.015493423978021824
#>     Attrib V42    0.07764210571601478
#>     Attrib V43    0.0038851547207072205
#>     Attrib V44    0.21898575098229978
#>     Attrib V45    0.14396211111451546
#>     Attrib V46    -0.026285277550198115
#>     Attrib V47    -0.13173747008640313
#>     Attrib V48    0.09316156025416832
#>     Attrib V49    0.2618292186494999
#>     Attrib V5    0.24867890543717325
#>     Attrib V50    -0.32788010134592394
#>     Attrib V51    0.08093776433822616
#>     Attrib V52    0.05771028519494403
#>     Attrib V53    -0.09595127558991312
#>     Attrib V54    0.22403275472974998
#>     Attrib V55    -0.0233628834123958
#>     Attrib V56    0.16982809038641705
#>     Attrib V57    -0.29353306317936634
#>     Attrib V58    0.15147196305447996
#>     Attrib V59    0.2669046971487485
#>     Attrib V6    -0.014797020268263416
#>     Attrib V60    0.20105419986124015
#>     Attrib V7    0.09873734291877857
#>     Attrib V8    -0.06239153956259235
#>     Attrib V9    0.18467334944119582
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.1237533533454577
#>     Attrib V1    0.11233447331260778
#>     Attrib V10    0.3689383647203018
#>     Attrib V11    0.21871186381642313
#>     Attrib V12    0.084295168763445
#>     Attrib V13    -0.08315461907086766
#>     Attrib V14    -0.33244100253720205
#>     Attrib V15    -0.09946771424554098
#>     Attrib V16    -0.22120821908017904
#>     Attrib V17    -0.050294041359824765
#>     Attrib V18    -0.1270890840211513
#>     Attrib V19    0.027262897659026605
#>     Attrib V2    0.04588468215617872
#>     Attrib V20    0.19642311331430545
#>     Attrib V21    0.3323533266711547
#>     Attrib V22    0.2325338862002052
#>     Attrib V23    0.39885323958795205
#>     Attrib V24    0.48821019712617186
#>     Attrib V25    0.06082516113135445
#>     Attrib V26    -0.05736511403309521
#>     Attrib V27    0.11975812467474957
#>     Attrib V28    0.2599670059756305
#>     Attrib V29    -0.08646638155966876
#>     Attrib V3    -0.14079320144394664
#>     Attrib V30    0.2434737310197344
#>     Attrib V31    -0.5373085340008398
#>     Attrib V32    -0.07524855238979423
#>     Attrib V33    0.020089864794283596
#>     Attrib V34    -0.058957967511339325
#>     Attrib V35    0.320065083896369
#>     Attrib V36    -0.10997507007397972
#>     Attrib V37    -0.19733373842830826
#>     Attrib V38    0.04823588328420405
#>     Attrib V39    0.36434702851710227
#>     Attrib V4    0.045471687148540045
#>     Attrib V40    0.017372814688458495
#>     Attrib V41    0.14137260732943588
#>     Attrib V42    0.037536104591585163
#>     Attrib V43    0.030804988088186783
#>     Attrib V44    0.5110675451752099
#>     Attrib V45    0.37033943828450083
#>     Attrib V46    0.12878878515247755
#>     Attrib V47    -0.06104769798989032
#>     Attrib V48    0.3594245620345083
#>     Attrib V49    0.4992325534948894
#>     Attrib V5    0.3345816227050465
#>     Attrib V50    -0.4819330165410148
#>     Attrib V51    0.1083199770551796
#>     Attrib V52    0.160906856516055
#>     Attrib V53    -0.0692239070972476
#>     Attrib V54    0.29788912935917305
#>     Attrib V55    -0.1149483185938214
#>     Attrib V56    0.04984486775176371
#>     Attrib V57    -0.5284501776995012
#>     Attrib V58    0.17650330832088318
#>     Attrib V59    0.14923451869283014
#>     Attrib V6    -0.06519124752310343
#>     Attrib V60    0.10878944209528817
#>     Attrib V7    -0.15488438924695488
#>     Attrib V8    -0.23760536993577075
#>     Attrib V9    0.3960733758505549
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    0.23968581053967758
#>     Attrib V1    -0.21689993443701283
#>     Attrib V10    -1.0220799299292749
#>     Attrib V11    -0.5863573026433032
#>     Attrib V12    -0.15735133145490926
#>     Attrib V13    0.26537335284187474
#>     Attrib V14    0.692528179312106
#>     Attrib V15    0.23213495029661138
#>     Attrib V16    0.1441083320595737
#>     Attrib V17    -0.22582132222462456
#>     Attrib V18    0.09608454203456361
#>     Attrib V19    -0.18710217975498442
#>     Attrib V2    -0.11050733913396993
#>     Attrib V20    -0.6079514951375352
#>     Attrib V21    -1.0488774269526913
#>     Attrib V22    -0.784920925484561
#>     Attrib V23    -0.8135157962976606
#>     Attrib V24    -1.0200971077071719
#>     Attrib V25    0.10010406577015298
#>     Attrib V26    0.9294231493003077
#>     Attrib V27    0.5582665531020049
#>     Attrib V28    0.3956185776060541
#>     Attrib V29    1.3029414950208624
#>     Attrib V3    0.05704616521002407
#>     Attrib V30    -0.33149346733680773
#>     Attrib V31    1.5750634028645412
#>     Attrib V32    -0.02214119003734475
#>     Attrib V33    -0.42625805727038585
#>     Attrib V34    0.2591286687978072
#>     Attrib V35    -0.051512675500887145
#>     Attrib V36    0.4959565212939193
#>     Attrib V37    1.4110706798716863
#>     Attrib V38    -0.023020832708255102
#>     Attrib V39    -0.7539683126995944
#>     Attrib V4    -0.7705201050026756
#>     Attrib V40    0.17142859737245014
#>     Attrib V41    0.009002375159039447
#>     Attrib V42    -0.5141355341632288
#>     Attrib V43    -0.22974473906898873
#>     Attrib V44    -0.9569168152699913
#>     Attrib V45    -0.6838982552978404
#>     Attrib V46    0.17129934282234563
#>     Attrib V47    0.6222362304721805
#>     Attrib V48    -0.4066731044049159
#>     Attrib V49    -0.8871015077355624
#>     Attrib V5    -0.7929455335473148
#>     Attrib V50    1.5120332839574522
#>     Attrib V51    -0.2804400035424994
#>     Attrib V52    -0.23959424871001683
#>     Attrib V53    0.818093079785837
#>     Attrib V54    -0.7528317916113992
#>     Attrib V55    0.2609883962641316
#>     Attrib V56    -0.3837073449138607
#>     Attrib V57    1.4083276150325597
#>     Attrib V58    -0.3513761993398292
#>     Attrib V59    -0.49013617416239275
#>     Attrib V6    0.017205689358444177
#>     Attrib V60    -0.33235182515163303
#>     Attrib V7    -0.6197388634155059
#>     Attrib V8    -0.20031418759577538
#>     Attrib V9    -0.9846159796837289
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.13951471190353443
#>     Attrib V1    -0.016810909831759296
#>     Attrib V10    -0.052821818506362146
#>     Attrib V11    -0.05896599223489658
#>     Attrib V12    -0.03919596819338436
#>     Attrib V13    0.04486278676747356
#>     Attrib V14    0.07812371817714336
#>     Attrib V15    0.05599162569763204
#>     Attrib V16    0.17813347996176107
#>     Attrib V17    0.13695016608450516
#>     Attrib V18    0.15937938652769504
#>     Attrib V19    0.05353294631165164
#>     Attrib V2    -0.02916304394380369
#>     Attrib V20    -0.07712422862403057
#>     Attrib V21    -0.11092092050203643
#>     Attrib V22    -0.04020957257399553
#>     Attrib V23    -0.10372335000001934
#>     Attrib V24    -0.11573253744278353
#>     Attrib V25    0.024603688380757667
#>     Attrib V26    0.005364480236838208
#>     Attrib V27    -0.06689026610822756
#>     Attrib V28    -0.08599019254021902
#>     Attrib V29    -0.026948141668240052
#>     Attrib V3    0.10199347384289202
#>     Attrib V30    -0.08348890781920469
#>     Attrib V31    0.14848082600405374
#>     Attrib V32    0.06807543227330093
#>     Attrib V33    0.061362036995340145
#>     Attrib V34    0.11884867931037209
#>     Attrib V35    0.03752847892814866
#>     Attrib V36    0.17375500885341533
#>     Attrib V37    0.26963654604934006
#>     Attrib V38    0.09365387100985953
#>     Attrib V39    -0.060916821103119745
#>     Attrib V4    0.01572540635337094
#>     Attrib V40    0.08533379033230881
#>     Attrib V41    0.14433602579187163
#>     Attrib V42    0.16286598637732191
#>     Attrib V43    0.07040167130225575
#>     Attrib V44    -0.0667138564457845
#>     Attrib V45    -0.044376359888561014
#>     Attrib V46    0.0594896420509459
#>     Attrib V47    0.09746957842067495
#>     Attrib V48    -0.07165774579212192
#>     Attrib V49    -0.14372122807277518
#>     Attrib V5    -0.050190351486256606
#>     Attrib V50    0.26069345159181373
#>     Attrib V51    0.03974044358402427
#>     Attrib V52    -0.011721687242019373
#>     Attrib V53    0.09961804414001137
#>     Attrib V54    -0.044820042921399426
#>     Attrib V55    0.08583134281243708
#>     Attrib V56    0.08039928048731154
#>     Attrib V57    0.324239244384048
#>     Attrib V58    0.05692181745512039
#>     Attrib V59    -0.03705078646015626
#>     Attrib V6    0.10005125664592256
#>     Attrib V60    0.06817845579161756
#>     Attrib V7    0.07503015106545037
#>     Attrib V8    0.0790440970331822
#>     Attrib V9    -0.024951992045140148
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.06208296353013102
#>     Attrib V1    0.1364725571576505
#>     Attrib V10    0.25808419740071564
#>     Attrib V11    0.08132493214372398
#>     Attrib V12    -0.07295239240279455
#>     Attrib V13    -0.161817925071703
#>     Attrib V14    -0.2122906008989825
#>     Attrib V15    0.04296519249359508
#>     Attrib V16    -0.022618506175230677
#>     Attrib V17    0.09605883064907288
#>     Attrib V18    -0.029429234048046204
#>     Attrib V19    0.10123659838585722
#>     Attrib V2    0.13319557580213243
#>     Attrib V20    0.24989976960244017
#>     Attrib V21    0.3983275351437053
#>     Attrib V22    0.3372261246990757
#>     Attrib V23    0.29159706887845743
#>     Attrib V24    0.3751639760804793
#>     Attrib V25    -0.14750903194379253
#>     Attrib V26    -0.3886327366549096
#>     Attrib V27    -0.24412656109545003
#>     Attrib V28    -0.15106102909857816
#>     Attrib V29    -0.3791023915073791
#>     Attrib V3    -0.0035343420751892713
#>     Attrib V30    0.12614547530979212
#>     Attrib V31    -0.5542052255443528
#>     Attrib V32    -0.0704784183522706
#>     Attrib V33    0.12680334599130968
#>     Attrib V34    -0.12344869578386805
#>     Attrib V35    0.12323645715608077
#>     Attrib V36    -0.13610298577967733
#>     Attrib V37    -0.3591311262292516
#>     Attrib V38    0.12952214140960694
#>     Attrib V39    0.3166683005049802
#>     Attrib V4    0.21726616262334597
#>     Attrib V40    -0.11631848348611676
#>     Attrib V41    -0.0171569471320474
#>     Attrib V42    0.06627043191815093
#>     Attrib V43    0.09597713734572492
#>     Attrib V44    0.3544133359552954
#>     Attrib V45    0.2904627374267298
#>     Attrib V46    -0.07456781368839767
#>     Attrib V47    -0.25058653384346113
#>     Attrib V48    0.1891676974663427
#>     Attrib V49    0.28203966566458216
#>     Attrib V5    0.2687015967364775
#>     Attrib V50    -0.4031959824050815
#>     Attrib V51    0.118199893518524
#>     Attrib V52    0.06246266816979957
#>     Attrib V53    -0.200552586629498
#>     Attrib V54    0.2595451021674852
#>     Attrib V55    -0.012279831981265926
#>     Attrib V56    0.21199589018831685
#>     Attrib V57    -0.3782152699623676
#>     Attrib V58    0.14154105179535392
#>     Attrib V59    0.2071953591050473
#>     Attrib V6    -0.04421589261683913
#>     Attrib V60    0.15752225507166617
#>     Attrib V7    0.028098072320620178
#>     Attrib V8    -0.006017623773116071
#>     Attrib V9    0.27388615063453503
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.19311848816965946
#>     Attrib V1    0.06144836968830607
#>     Attrib V10    0.05212138613136676
#>     Attrib V11    0.012033601351396805
#>     Attrib V12    -0.03369478423238755
#>     Attrib V13    -0.02240958801938548
#>     Attrib V14    0.0321682014524132
#>     Attrib V15    0.0024657707546456163
#>     Attrib V16    0.032485372959723285
#>     Attrib V17    -0.002400921789290633
#>     Attrib V18    0.06338138604326733
#>     Attrib V19    -0.03202329166181598
#>     Attrib V2    0.08352127592421875
#>     Attrib V20    0.010613192898123047
#>     Attrib V21    0.0272707740748688
#>     Attrib V22    -0.02590525616723419
#>     Attrib V23    -0.01823010351428873
#>     Attrib V24    -0.0428823016147791
#>     Attrib V25    -0.009056568367451341
#>     Attrib V26    -0.016747215615615044
#>     Attrib V27    -0.015201168304583007
#>     Attrib V28    -0.022443008271445394
#>     Attrib V29    -0.03394287395609026
#>     Attrib V3    0.14334332488420745
#>     Attrib V30    -0.023740624089407796
#>     Attrib V31    -0.010798919673929765
#>     Attrib V32    0.02327439773320979
#>     Attrib V33    0.0386369119320971
#>     Attrib V34    0.06708076419577011
#>     Attrib V35    0.04470787650720512
#>     Attrib V36    0.11351220325440628
#>     Attrib V37    0.035787831330799685
#>     Attrib V38    0.02892351739498487
#>     Attrib V39    0.08641598177397507
#>     Attrib V4    0.0654268908251132
#>     Attrib V40    0.023011992248896246
#>     Attrib V41    0.014759806190226165
#>     Attrib V42    0.04680755193650429
#>     Attrib V43    0.039594256032778316
#>     Attrib V44    0.08369949788728556
#>     Attrib V45    0.01982050698083465
#>     Attrib V46    0.035216440730089366
#>     Attrib V47    0.105502660214776
#>     Attrib V48    0.08109894358978342
#>     Attrib V49    0.08633978755235348
#>     Attrib V5    0.09431396911701105
#>     Attrib V50    0.01019005815886286
#>     Attrib V51    0.12675213022640652
#>     Attrib V52    0.05060334800864665
#>     Attrib V53    0.06668976363669782
#>     Attrib V54    0.021968596934688178
#>     Attrib V55    0.07663551161394029
#>     Attrib V56    0.10937478631797538
#>     Attrib V57    0.04265751332374605
#>     Attrib V58    0.09403394753439479
#>     Attrib V59    0.09956197259114961
#>     Attrib V6    0.033467991857844534
#>     Attrib V60    0.08929419491057723
#>     Attrib V7    0.08249194831023257
#>     Attrib V8    0.07837664482988373
#>     Attrib V9    0.0637665105673381
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.19281174634645504
#>     Attrib V1    0.03003201312103697
#>     Attrib V10    0.4267843999224714
#>     Attrib V11    0.1906201063782591
#>     Attrib V12    0.19236262982366226
#>     Attrib V13    0.004271016985092045
#>     Attrib V14    -0.31047433361309557
#>     Attrib V15    -0.13553699850923345
#>     Attrib V16    -0.34062669116795485
#>     Attrib V17    -0.22195499424728743
#>     Attrib V18    -0.2543190206845029
#>     Attrib V19    0.04693837293692741
#>     Attrib V2    0.0540113852267141
#>     Attrib V20    0.09252715728109001
#>     Attrib V21    0.22463213735847
#>     Attrib V22    0.1821591317569018
#>     Attrib V23    0.3837349858554462
#>     Attrib V24    0.6774609231597845
#>     Attrib V25    0.23268481873882943
#>     Attrib V26    0.051522732419981926
#>     Attrib V27    0.33676380528815775
#>     Attrib V28    0.6028113837666974
#>     Attrib V29    0.18873109334430288
#>     Attrib V3    -0.1442102153451196
#>     Attrib V30    0.30971983970170514
#>     Attrib V31    -0.4806045757422211
#>     Attrib V32    -0.07607296747850348
#>     Attrib V33    0.008978284084207807
#>     Attrib V34    0.0053299591214017806
#>     Attrib V35    0.426648400644613
#>     Attrib V36    -0.2181911728336503
#>     Attrib V37    -0.3533260768669929
#>     Attrib V38    -0.09118215574491571
#>     Attrib V39    0.35515612320989887
#>     Attrib V4    0.03888959990613316
#>     Attrib V40    0.13446709293868883
#>     Attrib V41    0.39359838046043966
#>     Attrib V42    0.18411936128805026
#>     Attrib V43    0.0074969376131053264
#>     Attrib V44    0.4215033604481662
#>     Attrib V45    0.5427318012887393
#>     Attrib V46    0.2610872459621123
#>     Attrib V47    0.04454462738122828
#>     Attrib V48    0.4402427585599522
#>     Attrib V49    0.6033825164571875
#>     Attrib V5    0.48692281588667613
#>     Attrib V50    -0.5913892436397659
#>     Attrib V51    0.1782553518795292
#>     Attrib V52    0.2926814467519362
#>     Attrib V53    0.14009950518678152
#>     Attrib V54    0.246945086914637
#>     Attrib V55    -0.14998752076056618
#>     Attrib V56    -0.15788293308700885
#>     Attrib V57    -0.6284019472004815
#>     Attrib V58    0.20121295448474857
#>     Attrib V59    0.06493807654316347
#>     Attrib V6    0.06365822139926328
#>     Attrib V60    0.04397387218578394
#>     Attrib V7    -0.13746683182840538
#>     Attrib V8    -0.29994672001032585
#>     Attrib V9    0.4512586201615422
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.29566254307178375
#>     Attrib V1    0.13229606986085546
#>     Attrib V10    0.6528385294674572
#>     Attrib V11    0.3649569196965832
#>     Attrib V12    0.356528792814841
#>     Attrib V13    0.22322955891862914
#>     Attrib V14    -0.25220571970983185
#>     Attrib V15    -0.23600857217922833
#>     Attrib V16    -0.48980294892294735
#>     Attrib V17    -0.43714726982642804
#>     Attrib V18    -0.3306127597212778
#>     Attrib V19    0.1445117986944283
#>     Attrib V2    0.13634741886496296
#>     Attrib V20    -0.005479505821449011
#>     Attrib V21    0.12478886102413149
#>     Attrib V22    0.07230473139286117
#>     Attrib V23    0.5328329671727362
#>     Attrib V24    0.9956167733305143
#>     Attrib V25    0.5091606313339421
#>     Attrib V26    0.5058857122218656
#>     Attrib V27    0.8892873663930095
#>     Attrib V28    1.3571036933122762
#>     Attrib V29    0.9465561948830681
#>     Attrib V3    -0.12502416282159803
#>     Attrib V30    0.442196972972001
#>     Attrib V31    -0.189257381718295
#>     Attrib V32    0.05152966327678922
#>     Attrib V33    -0.20788900058703294
#>     Attrib V34    -0.05984149841926786
#>     Attrib V35    0.44110913134918484
#>     Attrib V36    -0.45717747716720897
#>     Attrib V37    -0.3331540773399478
#>     Attrib V38    -0.3625265984934305
#>     Attrib V39    0.3350124637193367
#>     Attrib V4    -0.09427540000629583
#>     Attrib V40    0.36576470333938016
#>     Attrib V41    1.061034048869736
#>     Attrib V42    0.14098648382599874
#>     Attrib V43    -0.12941512468699667
#>     Attrib V44    0.28950077340875074
#>     Attrib V45    0.5347706455408929
#>     Attrib V46    0.5680854281488186
#>     Attrib V47    0.5543518271533193
#>     Attrib V48    0.8549027071824978
#>     Attrib V49    0.8930706841415531
#>     Attrib V5    0.9241275279444104
#>     Attrib V50    -0.4477630521517907
#>     Attrib V51    0.6352298841211182
#>     Attrib V52    0.731638455890827
#>     Attrib V53    0.7895084436633966
#>     Attrib V54    0.09867182052426453
#>     Attrib V55    -0.2370787501227824
#>     Attrib V56    -0.4860609796311328
#>     Attrib V57    -0.5018666339150054
#>     Attrib V58    0.29221276303107424
#>     Attrib V59    0.007525933434069342
#>     Attrib V6    0.33096902097265035
#>     Attrib V60    -0.07163123999774819
#>     Attrib V7    -0.35323946077855334
#>     Attrib V8    -0.5420131542080955
#>     Attrib V9    0.6935589261067558
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.3010174974721613
#>     Attrib V1    -0.1728849704063588
#>     Attrib V10    -0.9308860718017229
#>     Attrib V11    -0.4990697092745888
#>     Attrib V12    -0.16376268395070737
#>     Attrib V13    0.24627775221253387
#>     Attrib V14    0.6272823991501677
#>     Attrib V15    0.1630786204538309
#>     Attrib V16    0.1087568246160689
#>     Attrib V17    -0.1858124076848883
#>     Attrib V18    0.12737673892674709
#>     Attrib V19    -0.21000837046901857
#>     Attrib V2    -0.10653701895991649
#>     Attrib V20    -0.566580459113961
#>     Attrib V21    -0.9042577896781332
#>     Attrib V22    -0.7785108695456784
#>     Attrib V23    -0.7566302440205354
#>     Attrib V24    -0.9250651852391424
#>     Attrib V25    0.12325619919339745
#>     Attrib V26    0.867606923675444
#>     Attrib V27    0.5984952220288939
#>     Attrib V28    0.41199441547827337
#>     Attrib V29    1.231936266983215
#>     Attrib V3    -0.0037286318467669045
#>     Attrib V30    -0.240103128615146
#>     Attrib V31    1.4637962519212337
#>     Attrib V32    -0.0543693631958537
#>     Attrib V33    -0.42576753408286944
#>     Attrib V34    0.163757564652747
#>     Attrib V35    -0.05179621950793711
#>     Attrib V36    0.45279177790358205
#>     Attrib V37    1.29777550338639
#>     Attrib V38    -0.024359957386486355
#>     Attrib V39    -0.6805705830570464
#>     Attrib V4    -0.6700492260304362
#>     Attrib V40    0.1786729787151645
#>     Attrib V41    0.04683935053396283
#>     Attrib V42    -0.4823440342874939
#>     Attrib V43    -0.16014770840072606
#>     Attrib V44    -0.8107919456270475
#>     Attrib V45    -0.6707166607820261
#>     Attrib V46    0.09593653253512312
#>     Attrib V47    0.5287611959803699
#>     Attrib V48    -0.34209755409170634
#>     Attrib V49    -0.8041881741613987
#>     Attrib V5    -0.6938629270926577
#>     Attrib V50    1.3556612523271858
#>     Attrib V51    -0.2709408910219008
#>     Attrib V52    -0.14967596707748382
#>     Attrib V53    0.7538446926476113
#>     Attrib V54    -0.6544441771813225
#>     Attrib V55    0.20022733596905298
#>     Attrib V56    -0.4385594221979249
#>     Attrib V57    1.325629746178016
#>     Attrib V58    -0.32431350725023783
#>     Attrib V59    -0.4167170179022303
#>     Attrib V6    -0.0019469610630532988
#>     Attrib V60    -0.28466925106746155
#>     Attrib V7    -0.5153623318071664
#>     Attrib V8    -0.23614243228163
#>     Attrib V9    -0.8847202096733311
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.13251624649807187
#>     Attrib V1    0.20863989349208917
#>     Attrib V10    0.19872318849261467
#>     Attrib V11    0.04039056934588549
#>     Attrib V12    -0.07830782454218818
#>     Attrib V13    -0.16089185220669253
#>     Attrib V14    -0.12848824724117477
#>     Attrib V15    0.025521299747478212
#>     Attrib V16    0.09437505473359498
#>     Attrib V17    0.17056339486355157
#>     Attrib V18    0.012380003582559475
#>     Attrib V19    0.05359345899616606
#>     Attrib V2    0.120621547139467
#>     Attrib V20    0.29933253082173106
#>     Attrib V21    0.4409275958006194
#>     Attrib V22    0.2951044333323121
#>     Attrib V23    0.29124234971191226
#>     Attrib V24    0.3811267301108435
#>     Attrib V25    -0.168502090886054
#>     Attrib V26    -0.4475772514487019
#>     Attrib V27    -0.32632614651361463
#>     Attrib V28    -0.27221097830277086
#>     Attrib V29    -0.3938658110309668
#>     Attrib V3    0.01367585227652057
#>     Attrib V30    0.06780341900699799
#>     Attrib V31    -0.605021323176266
#>     Attrib V32    -0.07434387472365094
#>     Attrib V33    0.04185418404073647
#>     Attrib V34    -0.16922581270260967
#>     Attrib V35    0.020443076407949196
#>     Attrib V36    -0.14223975234360856
#>     Attrib V37    -0.3597834145065249
#>     Attrib V38    0.06547509718632274
#>     Attrib V39    0.2509423394344684
#>     Attrib V4    0.26964574792077695
#>     Attrib V40    -0.09164091217213788
#>     Attrib V41    -0.12659474402915846
#>     Attrib V42    0.10925505435077146
#>     Attrib V43    0.14338304723508788
#>     Attrib V44    0.3163594698209314
#>     Attrib V45    0.18224827243256478
#>     Attrib V46    -0.057277469504442645
#>     Attrib V47    -0.28226227369135587
#>     Attrib V48    0.15225530184468855
#>     Attrib V49    0.28889010026291834
#>     Attrib V5    0.2730600333418271
#>     Attrib V50    -0.3877816680980614
#>     Attrib V51    0.09164244651215633
#>     Attrib V52    0.07436031126004516
#>     Attrib V53    -0.19709035955906853
#>     Attrib V54    0.3853958765486957
#>     Attrib V55    0.015502041465377083
#>     Attrib V56    0.3094212869009962
#>     Attrib V57    -0.3674858804763192
#>     Attrib V58    0.25723330205249023
#>     Attrib V59    0.31560169493280527
#>     Attrib V6    -0.05584982705005406
#>     Attrib V60    0.2794881973238126
#>     Attrib V7    0.12166029460795832
#>     Attrib V8    -0.05184423987324512
#>     Attrib V9    0.23818846592507387
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.12356850883289856
#>     Attrib V1    0.17625367143419313
#>     Attrib V10    0.17968618350686485
#>     Attrib V11    0.08217038724078239
#>     Attrib V12    -0.02996931630828319
#>     Attrib V13    -0.16069602507682745
#>     Attrib V14    -0.1779880775721573
#>     Attrib V15    0.021977781286336633
#>     Attrib V16    5.920450971731133E-4
#>     Attrib V17    0.21598162864035697
#>     Attrib V18    0.029436976514519923
#>     Attrib V19    0.09658445908323253
#>     Attrib V2    0.052791093253841605
#>     Attrib V20    0.2993414996724638
#>     Attrib V21    0.48450279883366254
#>     Attrib V22    0.38402149206146374
#>     Attrib V23    0.4105880723752689
#>     Attrib V24    0.3874603766139607
#>     Attrib V25    -0.10566403342206213
#>     Attrib V26    -0.37314375889130963
#>     Attrib V27    -0.3557501778873772
#>     Attrib V28    -0.30978472404670493
#>     Attrib V29    -0.5379258644969321
#>     Attrib V3    0.05702748499389879
#>     Attrib V30    0.08109498979641705
#>     Attrib V31    -0.7224430691746061
#>     Attrib V32    -0.08143288089835868
#>     Attrib V33    0.09660127669341854
#>     Attrib V34    -0.15902709021408562
#>     Attrib V35    0.10893286042187643
#>     Attrib V36    -0.10613870571308498
#>     Attrib V37    -0.3692988848683993
#>     Attrib V38    0.07963177309670878
#>     Attrib V39    0.31154997355063707
#>     Attrib V4    0.32405473864468776
#>     Attrib V40    -0.13369443759234864
#>     Attrib V41    -0.10778996864879706
#>     Attrib V42    0.12046644721389832
#>     Attrib V43    0.15350726583655272
#>     Attrib V44    0.3708516447094386
#>     Attrib V45    0.2772996136692697
#>     Attrib V46    -0.09093312362627154
#>     Attrib V47    -0.23900969188198384
#>     Attrib V48    0.09138352376377591
#>     Attrib V49    0.3117923316048435
#>     Attrib V5    0.26237214896886324
#>     Attrib V50    -0.4584401734904989
#>     Attrib V51    0.08445644352153364
#>     Attrib V52    0.1023987853099969
#>     Attrib V53    -0.19099457231186215
#>     Attrib V54    0.4153566831067767
#>     Attrib V55    -0.0028400133468819764
#>     Attrib V56    0.34298608200439223
#>     Attrib V57    -0.45998758441928495
#>     Attrib V58    0.23337917366053768
#>     Attrib V59    0.36474858719635894
#>     Attrib V6    -0.05843127314904764
#>     Attrib V60    0.23411189126651405
#>     Attrib V7    0.1653268223567061
#>     Attrib V8    0.010311734712346561
#>     Attrib V9    0.26268191732242324
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    0.1893833139929123
#>     Attrib V1    -0.17881178882933155
#>     Attrib V10    -0.9605727317011324
#>     Attrib V11    -0.529905012208218
#>     Attrib V12    -0.2484098294484756
#>     Attrib V13    0.15858101188122878
#>     Attrib V14    0.6349741319407513
#>     Attrib V15    0.20682389644556723
#>     Attrib V16    0.15574738156799722
#>     Attrib V17    -0.09378360597650691
#>     Attrib V18    0.1476297255077699
#>     Attrib V19    -0.17707551332446791
#>     Attrib V2    -0.11544462777039298
#>     Attrib V20    -0.5223677009802232
#>     Attrib V21    -0.8840068926055503
#>     Attrib V22    -0.7182293264675171
#>     Attrib V23    -0.6318477499012003
#>     Attrib V24    -0.9195727048362711
#>     Attrib V25    0.13435391714927888
#>     Attrib V26    0.8330152943112281
#>     Attrib V27    0.4732216870782275
#>     Attrib V28    0.2918583078124449
#>     Attrib V29    1.0159931168637577
#>     Attrib V3    0.061576505785252596
#>     Attrib V30    -0.32447457149960157
#>     Attrib V31    1.3467714495342915
#>     Attrib V32    -0.02427955918630632
#>     Attrib V33    -0.3979472614199028
#>     Attrib V34    0.19732631472926548
#>     Attrib V35    -0.05396695388674533
#>     Attrib V36    0.47979090016714354
#>     Attrib V37    1.1302375775355484
#>     Attrib V38    -0.055911276619059584
#>     Attrib V39    -0.7314342024130286
#>     Attrib V4    -0.6015331556193276
#>     Attrib V40    0.15666225459793895
#>     Attrib V41    -0.004245109530079609
#>     Attrib V42    -0.4019106501587857
#>     Attrib V43    -0.08165276886961667
#>     Attrib V44    -0.7998510934704993
#>     Attrib V45    -0.6895692692505992
#>     Attrib V46    0.1162978508504157
#>     Attrib V47    0.5503838426693507
#>     Attrib V48    -0.3887912613703093
#>     Attrib V49    -0.8271093394719742
#>     Attrib V5    -0.7760150634279946
#>     Attrib V50    1.3784731726887065
#>     Attrib V51    -0.306770733163168
#>     Attrib V52    -0.17063129322909554
#>     Attrib V53    0.6383735629929594
#>     Attrib V54    -0.6369969351999993
#>     Attrib V55    0.257271248709859
#>     Attrib V56    -0.2866622581816574
#>     Attrib V57    1.3580823210070037
#>     Attrib V58    -0.26186682804885353
#>     Attrib V59    -0.38685700519556954
#>     Attrib V6    0.06787053806023755
#>     Attrib V60    -0.26712614490021586
#>     Attrib V7    -0.44350748503857074
#>     Attrib V8    -0.04432581390944
#>     Attrib V9    -0.8382417058638596
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.433418246359355
#>     Attrib V1    0.261201054261699
#>     Attrib V10    0.689589684000608
#>     Attrib V11    0.4922202963487922
#>     Attrib V12    0.5965301036172238
#>     Attrib V13    0.5485087634806124
#>     Attrib V14    -0.14148878012643423
#>     Attrib V15    -0.15129924400324132
#>     Attrib V16    -0.39129114361780265
#>     Attrib V17    -0.4671405971987918
#>     Attrib V18    -0.4554669940508147
#>     Attrib V19    0.014139134818300755
#>     Attrib V2    0.45361747508414646
#>     Attrib V20    -0.012925956867563796
#>     Attrib V21    0.10853306516043908
#>     Attrib V22    0.12624509968995498
#>     Attrib V23    0.7547711163552518
#>     Attrib V24    1.1313449749805458
#>     Attrib V25    0.39535776857019855
#>     Attrib V26    0.6918412167364517
#>     Attrib V27    1.3495800700004663
#>     Attrib V28    2.2043980869805524
#>     Attrib V29    1.6594727376903613
#>     Attrib V3    0.10044041926430929
#>     Attrib V30    0.3144761162676202
#>     Attrib V31    -0.16424130970797476
#>     Attrib V32    0.24820095212090515
#>     Attrib V33    -0.362126320990292
#>     Attrib V34    -0.13692551091809957
#>     Attrib V35    0.41010107515422256
#>     Attrib V36    -0.6914313171732541
#>     Attrib V37    -0.13293042266734087
#>     Attrib V38    -0.38718339037734983
#>     Attrib V39    0.37307461275622816
#>     Attrib V4    -0.22564746620448162
#>     Attrib V40    0.4585267337356252
#>     Attrib V41    1.4293896964254804
#>     Attrib V42    -0.02342949283625952
#>     Attrib V43    -0.2379199305210961
#>     Attrib V44    0.2569332568907417
#>     Attrib V45    0.7428116793961889
#>     Attrib V46    0.9036489877620477
#>     Attrib V47    0.7652710411110514
#>     Attrib V48    0.8536143745866244
#>     Attrib V49    1.1483211182604214
#>     Attrib V5    1.1825293627193532
#>     Attrib V50    -0.24353504542769774
#>     Attrib V51    0.7680095620379096
#>     Attrib V52    1.0456559238982983
#>     Attrib V53    1.2252728707480394
#>     Attrib V54    -0.21606359373236506
#>     Attrib V55    -0.33829563257421125
#>     Attrib V56    -0.6782054050013087
#>     Attrib V57    -0.2974653105366066
#>     Attrib V58    0.3542455391415008
#>     Attrib V59    0.00706806694993741
#>     Attrib V6    0.4142064705248699
#>     Attrib V60    -0.00794979617311806
#>     Attrib V7    -0.8527934834871219
#>     Attrib V8    -0.8559927856191039
#>     Attrib V9    0.7998273203458525
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.14955341636353664
#>     Attrib V1    -0.03490310712443433
#>     Attrib V10    -0.1909145809054157
#>     Attrib V11    -0.1721680618573248
#>     Attrib V12    -0.08718046532469215
#>     Attrib V13    -0.03417562648133362
#>     Attrib V14    0.18560984074108353
#>     Attrib V15    0.02735489639977046
#>     Attrib V16    0.08747140058311521
#>     Attrib V17    0.05228291820285742
#>     Attrib V18    0.06516191235524327
#>     Attrib V19    0.041898699445531096
#>     Attrib V2    -0.003819253608490723
#>     Attrib V20    -0.06286982543747467
#>     Attrib V21    -0.09677261424014215
#>     Attrib V22    -0.044130159637127526
#>     Attrib V23    -0.06580884642545178
#>     Attrib V24    -0.17212251686778549
#>     Attrib V25    0.056708565698824216
#>     Attrib V26    0.05609785634175261
#>     Attrib V27    -0.026348334114206173
#>     Attrib V28    -0.1233893409217114
#>     Attrib V29    -0.0033800756013783587
#>     Attrib V3    0.039086388404045255
#>     Attrib V30    -0.11702164104803198
#>     Attrib V31    0.21139041199028813
#>     Attrib V32    0.014241181109853078
#>     Attrib V33    0.08090665634840459
#>     Attrib V34    0.05123466414734308
#>     Attrib V35    0.04688786330248014
#>     Attrib V36    0.2915833999488786
#>     Attrib V37    0.3374502960894676
#>     Attrib V38    0.061229431597071324
#>     Attrib V39    -0.14902643287392003
#>     Attrib V4    0.010145630219381554
#>     Attrib V40    0.05785217987709926
#>     Attrib V41    0.04626831469528208
#>     Attrib V42    0.1347326944567368
#>     Attrib V43    0.126858175662983
#>     Attrib V44    -0.05026742928882277
#>     Attrib V45    -0.14217542862557192
#>     Attrib V46    -0.0529200144694843
#>     Attrib V47    0.02501007725862465
#>     Attrib V48    -0.11066798645779265
#>     Attrib V49    -0.23365668762916114
#>     Attrib V5    -0.21895400472472232
#>     Attrib V50    0.341657295409827
#>     Attrib V51    -0.0891389416346628
#>     Attrib V52    -0.11602276156534844
#>     Attrib V53    0.06632730613646973
#>     Attrib V54    -0.05657048779940502
#>     Attrib V55    0.06841812363670308
#>     Attrib V56    0.0796210208094112
#>     Attrib V57    0.41053963723966713
#>     Attrib V58    -0.011023940263821523
#>     Attrib V59    0.015269444336044397
#>     Attrib V6    0.08521986000767148
#>     Attrib V60    0.11056562193382338
#>     Attrib V7    0.06465113880191115
#>     Attrib V8    0.171847743995529
#>     Attrib V9    -0.18746686464714013
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.32318857799385303
#>     Attrib V1    0.18092609544201255
#>     Attrib V10    0.7135718770753826
#>     Attrib V11    0.43995494557867104
#>     Attrib V12    0.4212393778605683
#>     Attrib V13    0.3138094007647031
#>     Attrib V14    -0.3277986646377672
#>     Attrib V15    -0.27012082926645037
#>     Attrib V16    -0.4856312071454009
#>     Attrib V17    -0.4682005687332319
#>     Attrib V18    -0.3277184564178581
#>     Attrib V19    0.09242811644074583
#>     Attrib V2    0.2004247295486732
#>     Attrib V20    -0.05020281760881086
#>     Attrib V21    0.09544958269418397
#>     Attrib V22    0.038607868862960255
#>     Attrib V23    0.49976644537917014
#>     Attrib V24    1.0398092354568196
#>     Attrib V25    0.5517465137257825
#>     Attrib V26    0.6310254130568915
#>     Attrib V27    0.8933075492583916
#>     Attrib V28    1.390246456359903
#>     Attrib V29    0.9097804424867694
#>     Attrib V3    -0.0626850233620072
#>     Attrib V30    0.3192300732702633
#>     Attrib V31    -0.12556530057646353
#>     Attrib V32    0.17078829711311425
#>     Attrib V33    -0.18468636252674084
#>     Attrib V34    0.07755429584415274
#>     Attrib V35    0.516876181630981
#>     Attrib V36    -0.49175950849963057
#>     Attrib V37    -0.280705669328798
#>     Attrib V38    -0.3700294616190283
#>     Attrib V39    0.3535441563950253
#>     Attrib V4    -0.11952875843240304
#>     Attrib V40    0.33012087942163654
#>     Attrib V41    1.037090283275705
#>     Attrib V42    0.03548119654013657
#>     Attrib V43    -0.2529670520440949
#>     Attrib V44    0.20191054708696865
#>     Attrib V45    0.5763271253426024
#>     Attrib V46    0.6308428881450834
#>     Attrib V47    0.6128053609756976
#>     Attrib V48    0.8817802620333453
#>     Attrib V49    0.9060953499990864
#>     Attrib V5    0.8988450007484654
#>     Attrib V50    -0.312876540085998
#>     Attrib V51    0.6281877379826262
#>     Attrib V52    0.767125227943443
#>     Attrib V53    0.8938363510906827
#>     Attrib V54    0.0343815133460423
#>     Attrib V55    -0.23670634954076128
#>     Attrib V56    -0.5577419299576678
#>     Attrib V57    -0.4369804453769322
#>     Attrib V58    0.2582079595453854
#>     Attrib V59    -0.05904895674942839
#>     Attrib V6    0.34937560918127264
#>     Attrib V60    -0.13011143866068328
#>     Attrib V7    -0.5356128190761587
#>     Attrib V8    -0.5657645044409951
#>     Attrib V9    0.7755972486864375
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.8735122613397304
#>     Attrib V1    -0.08238854311835761
#>     Attrib V10    -1.4742091249978189
#>     Attrib V11    -1.2236561041641856
#>     Attrib V12    -1.3403563107213297
#>     Attrib V13    -0.6110782923607528
#>     Attrib V14    0.6455538573311286
#>     Attrib V15    -0.17834075864216928
#>     Attrib V16    0.08706324234106659
#>     Attrib V17    -0.25175694867469584
#>     Attrib V18    0.16279298559603303
#>     Attrib V19    -0.2583813106830677
#>     Attrib V2    0.024843869425304522
#>     Attrib V20    -0.25139111486358606
#>     Attrib V21    -0.45944857218932567
#>     Attrib V22    -0.3905478084332885
#>     Attrib V23    -0.16619303495648982
#>     Attrib V24    -0.5297855865282404
#>     Attrib V25    0.251954152517478
#>     Attrib V26    1.0833330984939322
#>     Attrib V27    0.34568964623435533
#>     Attrib V28    -0.4255858504419022
#>     Attrib V29    0.22214510463227655
#>     Attrib V3    0.47296465096318757
#>     Attrib V30    -0.7727242714811245
#>     Attrib V31    0.4849431353521622
#>     Attrib V32    -0.49204533926866506
#>     Attrib V33    -0.34320294484592484
#>     Attrib V34    0.08972726868126052
#>     Attrib V35    0.02448820044651489
#>     Attrib V36    1.4126225513998998
#>     Attrib V37    1.2163310461298211
#>     Attrib V38    0.37900592445311426
#>     Attrib V39    -0.7099927079703068
#>     Attrib V4    0.22744670218371213
#>     Attrib V40    -0.29819457757474505
#>     Attrib V41    -0.7426500976437441
#>     Attrib V42    -0.20504984137222787
#>     Attrib V43    0.4006772705936738
#>     Attrib V44    0.11671602268787767
#>     Attrib V45    -0.2096803171456947
#>     Attrib V46    0.17213711717156868
#>     Attrib V47    0.16417195221619785
#>     Attrib V48    -0.5762238022001415
#>     Attrib V49    -0.5205489858308627
#>     Attrib V5    -1.0474115808821671
#>     Attrib V50    1.7816331266207268
#>     Attrib V51    -0.08056705626138165
#>     Attrib V52    -0.1569826373813272
#>     Attrib V53    0.5491329985947322
#>     Attrib V54    -0.28752622210890383
#>     Attrib V55    0.22024475979776661
#>     Attrib V56    0.1268243074054759
#>     Attrib V57    0.9967437304367691
#>     Attrib V58    -0.10320772463438688
#>     Attrib V59    0.26810979975960464
#>     Attrib V6    -0.31952726217878497
#>     Attrib V60    0.11380424577341078
#>     Attrib V7    0.07724524233610872
#>     Attrib V8    0.42251236495706895
#>     Attrib V9    -1.1828124000888138
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.04189229688266193
#>     Attrib V1    0.07788645975464936
#>     Attrib V10    0.13716226609689622
#>     Attrib V11    0.10524864590869196
#>     Attrib V12    0.02923506377036234
#>     Attrib V13    -0.06980931379601836
#>     Attrib V14    -0.08060170539444682
#>     Attrib V15    0.003161798508138149
#>     Attrib V16    -0.05551800452721044
#>     Attrib V17    0.041716178554290946
#>     Attrib V18    -0.020526690689221187
#>     Attrib V19    0.04228073201471768
#>     Attrib V2    0.06061259713733441
#>     Attrib V20    0.2523837906524674
#>     Attrib V21    0.35392813344894075
#>     Attrib V22    0.24836227373405578
#>     Attrib V23    0.21437993489194276
#>     Attrib V24    0.3265136792322768
#>     Attrib V25    -0.024538990953475386
#>     Attrib V26    -0.28029213891729265
#>     Attrib V27    -0.12796845347060695
#>     Attrib V28    -0.04087194911127273
#>     Attrib V29    -0.15870637747049168
#>     Attrib V3    0.033930785753938694
#>     Attrib V30    0.023596426829685983
#>     Attrib V31    -0.44017304051969386
#>     Attrib V32    -0.034510752982754175
#>     Attrib V33    0.03790073522628582
#>     Attrib V34    -0.06954852346511278
#>     Attrib V35    0.10416793250083653
#>     Attrib V36    -0.12783562538635015
#>     Attrib V37    -0.21852629042725366
#>     Attrib V38    0.06661288342845299
#>     Attrib V39    0.2478054480307483
#>     Attrib V4    0.1219167641454803
#>     Attrib V40    -0.061552024267923285
#>     Attrib V41    -0.0063491120608713605
#>     Attrib V42    0.019528439134113396
#>     Attrib V43    0.08243305418111144
#>     Attrib V44    0.18810045608842008
#>     Attrib V45    0.2404198267102965
#>     Attrib V46    -0.010768440390427887
#>     Attrib V47    -0.10463512311470445
#>     Attrib V48    0.1271867642537339
#>     Attrib V49    0.21725230589649722
#>     Attrib V5    0.20665311553082416
#>     Attrib V50    -0.2780833898213921
#>     Attrib V51    0.11627921368632481
#>     Attrib V52    0.13752379024254116
#>     Attrib V53    -0.08306655365967436
#>     Attrib V54    0.20773384649485171
#>     Attrib V55    0.027822352375917854
#>     Attrib V56    0.15021436922455497
#>     Attrib V57    -0.3149756395742819
#>     Attrib V58    0.12587817273134316
#>     Attrib V59    0.1758160278929436
#>     Attrib V6    -0.022078321968085193
#>     Attrib V60    0.13348962428443134
#>     Attrib V7    -0.010391851009290076
#>     Attrib V8    -0.06151065175389329
#>     Attrib V9    0.19430360984767486
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.13901149766985
#>     Attrib V1    0.04466948101659843
#>     Attrib V10    0.035874325031496145
#>     Attrib V11    -6.952620912271008E-4
#>     Attrib V12    0.02088667977465501
#>     Attrib V13    0.05497199869550476
#>     Attrib V14    0.09447439853626907
#>     Attrib V15    0.08926134605945925
#>     Attrib V16    0.12219149190232183
#>     Attrib V17    0.13939817376780975
#>     Attrib V18    0.0932569549476512
#>     Attrib V19    0.005289689158572303
#>     Attrib V2    0.06169144482157958
#>     Attrib V20    -0.057413217449138604
#>     Attrib V21    -0.02585756141837448
#>     Attrib V22    -0.02362050950999062
#>     Attrib V23    -0.0690458955753746
#>     Attrib V24    -0.14235823768544043
#>     Attrib V25    0.030480976386450177
#>     Attrib V26    0.05862137983267982
#>     Attrib V27    -0.032993470185539095
#>     Attrib V28    -0.043940741134905134
#>     Attrib V29    -0.05321912484407477
#>     Attrib V3    0.07541329948705193
#>     Attrib V30    0.014785607174146502
#>     Attrib V31    0.1870462071365704
#>     Attrib V32    0.02087638174654764
#>     Attrib V33    0.020982460715818416
#>     Attrib V34    0.0416260819303002
#>     Attrib V35    0.07437547422626489
#>     Attrib V36    0.12117255475735773
#>     Attrib V37    0.20687743454513047
#>     Attrib V38    0.03163671263960712
#>     Attrib V39    0.029938559946766932
#>     Attrib V4    0.07385882930812043
#>     Attrib V40    0.10425262884704563
#>     Attrib V41    0.10413215273000997
#>     Attrib V42    0.13127994754193625
#>     Attrib V43    0.046017290644350416
#>     Attrib V44    -0.04737446994177279
#>     Attrib V45    -0.005711639656325657
#>     Attrib V46    0.040565145169420176
#>     Attrib V47    0.06665326891568848
#>     Attrib V48    0.03208689531291998
#>     Attrib V49    -0.06951399445923526
#>     Attrib V5    -0.03669440628635197
#>     Attrib V50    0.12813785935716127
#>     Attrib V51    6.078136383546124E-4
#>     Attrib V52    -0.012013388626304567
#>     Attrib V53    0.052394947216199673
#>     Attrib V54    0.0014367889932123158
#>     Attrib V55    0.0419086973844952
#>     Attrib V56    0.12399494185968032
#>     Attrib V57    0.20512211942672556
#>     Attrib V58    0.07292465772325749
#>     Attrib V59    0.06109997079095342
#>     Attrib V6    0.09561738645538707
#>     Attrib V60    0.06676631319916597
#>     Attrib V7    0.042363363300700854
#>     Attrib V8    0.08119035488214107
#>     Attrib V9    -0.018976209163011445
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.1549144969756433
#>     Attrib V1    0.15467985695429912
#>     Attrib V10    0.4771867428148777
#>     Attrib V11    0.2533848505857458
#>     Attrib V12    -0.01602750786040375
#>     Attrib V13    -0.17227642169098475
#>     Attrib V14    -0.34459820394457835
#>     Attrib V15    -0.04913262056437823
#>     Attrib V16    -0.03695735597385225
#>     Attrib V17    0.232685963855346
#>     Attrib V18    -6.893254813798304E-4
#>     Attrib V19    0.11803249487534308
#>     Attrib V2    0.09246521690671229
#>     Attrib V20    0.48027696578189544
#>     Attrib V21    0.6963022747422021
#>     Attrib V22    0.6187996943308953
#>     Attrib V23    0.6518357745747559
#>     Attrib V24    0.7527353940902647
#>     Attrib V25    -0.025952109416364832
#>     Attrib V26    -0.42165438713354136
#>     Attrib V27    -0.3281317973975978
#>     Attrib V28    -0.24636465658159398
#>     Attrib V29    -0.6899762615918289
#>     Attrib V3    -0.05833385784259561
#>     Attrib V30    0.23132312335969982
#>     Attrib V31    -1.0711602765806916
#>     Attrib V32    -0.148953800373956
#>     Attrib V33    0.13062484831943608
#>     Attrib V34    -0.20348652637344974
#>     Attrib V35    0.17214197419132046
#>     Attrib V36    -0.13756467745742626
#>     Attrib V37    -0.6182835456036743
#>     Attrib V38    0.2037731401813679
#>     Attrib V39    0.49963321964297486
#>     Attrib V4    0.40762864808119126
#>     Attrib V40    -0.13847428661601333
#>     Attrib V41    -0.1342928552547503
#>     Attrib V42    0.19025086664367413
#>     Attrib V43    0.19563200129249647
#>     Attrib V44    0.7216514318621445
#>     Attrib V45    0.4383631701413831
#>     Attrib V46    -0.08495731012595781
#>     Attrib V47    -0.38734351638725867
#>     Attrib V48    0.23563724407116374
#>     Attrib V49    0.5526117396679099
#>     Attrib V5    0.3953814614133099
#>     Attrib V50    -0.7747782967372305
#>     Attrib V51    0.12290726546406125
#>     Attrib V52    0.08605323506425964
#>     Attrib V53    -0.35721158431429395
#>     Attrib V54    0.6117459778184053
#>     Attrib V55    -0.09786931032971993
#>     Attrib V56    0.281074893853008
#>     Attrib V57    -0.7966265658733123
#>     Attrib V58    0.24448435670444355
#>     Attrib V59    0.4103309050314041
#>     Attrib V6    -0.06847864516405565
#>     Attrib V60    0.28753107098180225
#>     Attrib V7    0.28882496962454357
#>     Attrib V8    0.06840489731536405
#>     Attrib V9    0.5548603652659383
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.16461750988054621
#>     Attrib V1    0.17650289685436013
#>     Attrib V10    0.14226017043833236
#>     Attrib V11    0.030515601454193367
#>     Attrib V12    -0.09433638411664812
#>     Attrib V13    -0.20245581197824264
#>     Attrib V14    -0.11930110309334349
#>     Attrib V15    0.058317137988452276
#>     Attrib V16    0.07143943201083329
#>     Attrib V17    0.14190743862999805
#>     Attrib V18    0.0785807719628077
#>     Attrib V19    0.0522296832007077
#>     Attrib V2    0.08007197891217306
#>     Attrib V20    0.3215973024692463
#>     Attrib V21    0.5094875853546037
#>     Attrib V22    0.34073477949137926
#>     Attrib V23    0.3579383417379809
#>     Attrib V24    0.327261607380898
#>     Attrib V25    -0.2185570189625109
#>     Attrib V26    -0.47229113897627306
#>     Attrib V27    -0.34180698275278076
#>     Attrib V28    -0.21033303596043987
#>     Attrib V29    -0.4201573544935781
#>     Attrib V3    0.06666301444537034
#>     Attrib V30    0.13535749309357556
#>     Attrib V31    -0.7136180434226406
#>     Attrib V32    -0.08400806463326933
#>     Attrib V33    0.11931581793706195
#>     Attrib V34    -0.1411488781149431
#>     Attrib V35    0.048137473810835336
#>     Attrib V36    -0.0642308452628011
#>     Attrib V37    -0.3572096171529115
#>     Attrib V38    0.08101996133830587
#>     Attrib V39    0.3265650916203094
#>     Attrib V4    0.26091611085689603
#>     Attrib V40    -0.11606354355737394
#>     Attrib V41    -0.10287495389960316
#>     Attrib V42    0.16442049568013323
#>     Attrib V43    0.05519773751643473
#>     Attrib V44    0.3670543049810676
#>     Attrib V45    0.2845314883563587
#>     Attrib V46    -0.0702029439665671
#>     Attrib V47    -0.26220869568376887
#>     Attrib V48    0.08932355791420286
#>     Attrib V49    0.3360208499379103
#>     Attrib V5    0.2729381857725523
#>     Attrib V50    -0.4364042570884848
#>     Attrib V51    0.1213734859557931
#>     Attrib V52    0.08682668470859643
#>     Attrib V53    -0.21344871458449188
#>     Attrib V54    0.32074148718946316
#>     Attrib V55    -0.040293838983792636
#>     Attrib V56    0.2690986601197607
#>     Attrib V57    -0.40996048213996444
#>     Attrib V58    0.26012450113837227
#>     Attrib V59    0.2860176320757422
#>     Attrib V6    -0.033015059052827936
#>     Attrib V60    0.22722360981577708
#>     Attrib V7    0.15086481729256934
#>     Attrib V8    0.049623268765928714
#>     Attrib V9    0.26705593595268795
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
#>  0.2318841 
```
