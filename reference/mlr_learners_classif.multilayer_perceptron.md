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
#>     Threshold    -0.5894701242828663
#>     Node 2    2.6390009326254136
#>     Node 3    1.914876793995945
#>     Node 4    1.1131554433651882
#>     Node 5    -1.989482018927043
#>     Node 6    1.771883070704819
#>     Node 7    1.9793052772293578
#>     Node 8    1.742422182467741
#>     Node 9    1.4974182483136254
#>     Node 10    -1.126694946070072
#>     Node 11    1.2906442746552724
#>     Node 12    2.0750940372002957
#>     Node 13    0.4473158097150289
#>     Node 14    2.0637755738726904
#>     Node 15    -2.663772484378027
#>     Node 16    -0.27451125973226165
#>     Node 17    0.8609064908376789
#>     Node 18    0.028742842923090556
#>     Node 19    1.9214849860531804
#>     Node 20    2.575023162180803
#>     Node 21    -1.3896724533569316
#>     Node 22    1.6908605239323917
#>     Node 23    1.7914217240476584
#>     Node 24    -3.3075586554208383
#>     Node 25    4.245523569752236
#>     Node 26    -0.09942992511727301
#>     Node 27    2.5168600197408737
#>     Node 28    -2.3504796418303253
#>     Node 29    0.42881934459622073
#>     Node 30    -0.299384800454063
#>     Node 31    1.5100000218714156
#>     Node 32    0.8549396915128521
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.6096392259405252
#>     Node 2    -2.6833674711565245
#>     Node 3    -1.89431915068579
#>     Node 4    -1.0740969743527324
#>     Node 5    2.001405291070909
#>     Node 6    -1.7556404233055551
#>     Node 7    -1.9634813471118246
#>     Node 8    -1.7730104784706555
#>     Node 9    -1.4957073382603283
#>     Node 10    1.0632823868142194
#>     Node 11    -1.256285999632627
#>     Node 12    -2.147102841117623
#>     Node 13    -0.40052823124289655
#>     Node 14    -1.9978050896960462
#>     Node 15    2.66622514428802
#>     Node 16    0.25491649205627487
#>     Node 17    -0.8324335480127288
#>     Node 18    0.008637826263604514
#>     Node 19    -1.9185204601334025
#>     Node 20    -2.558661380430385
#>     Node 21    1.4477751118702251
#>     Node 22    -1.7402119363051796
#>     Node 23    -1.838986881585426
#>     Node 24    3.300841119741996
#>     Node 25    -4.217552585108916
#>     Node 26    0.013514586048134762
#>     Node 27    -2.55825309276889
#>     Node 28    2.303805629164291
#>     Node 29    -0.46622816792404215
#>     Node 30    0.3718102606533165
#>     Node 31    -1.4577456548695789
#>     Node 32    -0.8776581558778928
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.24123605804432893
#>     Attrib V1    -0.46734303127273874
#>     Attrib V10    -0.05704828400162847
#>     Attrib V11    0.5768779154389698
#>     Attrib V12    0.26507085593368046
#>     Attrib V13    -0.6976156720783617
#>     Attrib V14    -0.9081082964908264
#>     Attrib V15    -0.5733801502075819
#>     Attrib V16    -0.09119389877111149
#>     Attrib V17    0.22920800768256938
#>     Attrib V18    0.323161994163225
#>     Attrib V19    0.4478078721279906
#>     Attrib V2    -0.09928743112285576
#>     Attrib V20    0.5979598096324313
#>     Attrib V21    1.0944113687932997
#>     Attrib V22    1.1290830934484768
#>     Attrib V23    0.4817764184363303
#>     Attrib V24    0.48799856393118757
#>     Attrib V25    -0.23316696124004643
#>     Attrib V26    -0.5488661349101481
#>     Attrib V27    -0.2010285692951622
#>     Attrib V28    -0.1543522462195776
#>     Attrib V29    -0.9092531463385299
#>     Attrib V3    0.283199120881845
#>     Attrib V30    0.858230296498289
#>     Attrib V31    -0.6451528057916059
#>     Attrib V32    -0.7301841806200843
#>     Attrib V33    0.14323942505314335
#>     Attrib V34    0.042027044933665006
#>     Attrib V35    0.3923604699885235
#>     Attrib V36    -0.2522323541199373
#>     Attrib V37    0.0016294084835907301
#>     Attrib V38    1.2851966637840202
#>     Attrib V39    0.5806532885550104
#>     Attrib V4    0.22475656198012461
#>     Attrib V40    -0.4085756722518808
#>     Attrib V41    -0.4728232504568732
#>     Attrib V42    -0.1670512836037628
#>     Attrib V43    0.09187617485427897
#>     Attrib V44    1.3565617217873112
#>     Attrib V45    1.0996394884722527
#>     Attrib V46    0.20831724659386225
#>     Attrib V47    -0.12572260808098593
#>     Attrib V48    0.6667012513222215
#>     Attrib V49    1.245416963834174
#>     Attrib V5    -0.009414889028423046
#>     Attrib V50    -1.431555597934352
#>     Attrib V51    0.19646209275750365
#>     Attrib V52    0.09876041974646585
#>     Attrib V53    0.11952822352025941
#>     Attrib V54    0.8067083151716714
#>     Attrib V55    -0.6874357346582559
#>     Attrib V56    0.7176726577904593
#>     Attrib V57    -0.3791742546190594
#>     Attrib V58    0.13931997644064192
#>     Attrib V59    0.3908102668253092
#>     Attrib V6    -0.2857929147448624
#>     Attrib V60    0.051929543902070115
#>     Attrib V7    0.05045487183227767
#>     Attrib V8    -0.45896449652531945
#>     Attrib V9    0.7367106352010965
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.06647082675279686
#>     Attrib V1    0.093826585108395
#>     Attrib V10    -0.5373651576504427
#>     Attrib V11    -0.022151126418294694
#>     Attrib V12    0.03338624493049618
#>     Attrib V13    -0.4105363917717953
#>     Attrib V14    -0.007291477941348131
#>     Attrib V15    0.2558741869156682
#>     Attrib V16    0.23881581996673937
#>     Attrib V17    0.24036591793816472
#>     Attrib V18    0.1710849732860904
#>     Attrib V19    0.08675897156263206
#>     Attrib V2    0.22252528382611825
#>     Attrib V20    0.33037489481101306
#>     Attrib V21    0.7795358795092581
#>     Attrib V22    0.5089270540011752
#>     Attrib V23    -0.11196561518828975
#>     Attrib V24    -0.09961823707682813
#>     Attrib V25    -0.9050542312817946
#>     Attrib V26    -1.0693735252185035
#>     Attrib V27    -0.499759758288592
#>     Attrib V28    -0.40322821266766606
#>     Attrib V29    -0.6384072785687407
#>     Attrib V3    0.3604276170299659
#>     Attrib V30    0.4626809368158229
#>     Attrib V31    -0.40034933398849093
#>     Attrib V32    -0.36634773695539036
#>     Attrib V33    0.17472062431675361
#>     Attrib V34    -0.306733418906295
#>     Attrib V35    -0.35431850139946997
#>     Attrib V36    -0.8327718356791516
#>     Attrib V37    -0.5893249925156056
#>     Attrib V38    0.345471033794692
#>     Attrib V39    0.2819252058349249
#>     Attrib V4    0.23839621410167963
#>     Attrib V40    -0.12951970641182578
#>     Attrib V41    -0.10765857242968253
#>     Attrib V42    0.3039001933605262
#>     Attrib V43    0.29068985914458345
#>     Attrib V44    0.6980078534713933
#>     Attrib V45    0.40992459805723314
#>     Attrib V46    -0.16761624322401708
#>     Attrib V47    -0.43980133825983414
#>     Attrib V48    0.041839173684999495
#>     Attrib V49    0.5157760531629919
#>     Attrib V5    -0.06363249997028966
#>     Attrib V50    -0.8348948915522939
#>     Attrib V51    -0.2944015018664007
#>     Attrib V52    -0.03624231087830477
#>     Attrib V53    0.40690380545475835
#>     Attrib V54    0.6818786760819726
#>     Attrib V55    -0.23320018719888397
#>     Attrib V56    0.5317698265717892
#>     Attrib V57    0.3147579291069919
#>     Attrib V58    0.4257088742269577
#>     Attrib V59    0.9404505345220892
#>     Attrib V6    -0.17768500330089199
#>     Attrib V60    0.28682871652853476
#>     Attrib V7    0.03322545618460435
#>     Attrib V8    -0.13644152340965993
#>     Attrib V9    0.11449246070904806
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.022514514873801517
#>     Attrib V1    -0.10548577235866129
#>     Attrib V10    -0.2455669946780349
#>     Attrib V11    0.11989460718091216
#>     Attrib V12    0.1109747384864942
#>     Attrib V13    -0.26129420195254743
#>     Attrib V14    -0.12504624376294604
#>     Attrib V15    -4.3641813498732866E-4
#>     Attrib V16    0.03505990616398521
#>     Attrib V17    0.10442426632165117
#>     Attrib V18    0.1561186601528909
#>     Attrib V19    0.10639079190372792
#>     Attrib V2    0.06004033034862821
#>     Attrib V20    0.15980623033082883
#>     Attrib V21    0.5157337422850384
#>     Attrib V22    0.33445082574691354
#>     Attrib V23    -0.041408083674045575
#>     Attrib V24    -2.910085105280413E-4
#>     Attrib V25    -0.49112503235488886
#>     Attrib V26    -0.5780999353758348
#>     Attrib V27    -0.26684939530390195
#>     Attrib V28    -0.15222051915837048
#>     Attrib V29    -0.35128969653633474
#>     Attrib V3    0.21088882044743468
#>     Attrib V30    0.35561152707755994
#>     Attrib V31    -0.2534650193662456
#>     Attrib V32    -0.2971154077537624
#>     Attrib V33    0.11796558465761538
#>     Attrib V34    -0.11151073341716834
#>     Attrib V35    -0.0856502504039535
#>     Attrib V36    -0.4539853267895071
#>     Attrib V37    -0.2762765151265782
#>     Attrib V38    0.35102572423430733
#>     Attrib V39    0.2440395640084913
#>     Attrib V4    0.12850712982141155
#>     Attrib V40    -0.08238862401231291
#>     Attrib V41    -0.10619376961744742
#>     Attrib V42    0.06964722729709456
#>     Attrib V43    0.09057982307599005
#>     Attrib V44    0.5222739228318869
#>     Attrib V45    0.4216265612222739
#>     Attrib V46    -0.09501703389251545
#>     Attrib V47    -0.26413744889471835
#>     Attrib V48    0.1943416975970266
#>     Attrib V49    0.5259677052471564
#>     Attrib V5    0.028423663568329156
#>     Attrib V50    -0.6391355134947602
#>     Attrib V51    -0.03195183237743418
#>     Attrib V52    3.9642648414847583E-4
#>     Attrib V53    0.27669492267156864
#>     Attrib V54    0.34188498180671983
#>     Attrib V55    -0.23959976310077774
#>     Attrib V56    0.31992576512576043
#>     Attrib V57    0.12402148220450766
#>     Attrib V58    0.20641095814353524
#>     Attrib V59    0.4693935937727653
#>     Attrib V6    -0.14897843324023335
#>     Attrib V60    0.11959243202476992
#>     Attrib V7    -0.04104153812213977
#>     Attrib V8    -0.2165429037221073
#>     Attrib V9    0.2595935481885939
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5392210161659061
#>     Attrib V1    0.46848760560097646
#>     Attrib V10    -0.2232335175469353
#>     Attrib V11    -0.8555691213068054
#>     Attrib V12    -0.9751232861179198
#>     Attrib V13    0.11422323964015325
#>     Attrib V14    0.47006598368028174
#>     Attrib V15    0.44889541045946824
#>     Attrib V16    0.24306220473593038
#>     Attrib V17    0.49568511838552254
#>     Attrib V18    0.16397433255838878
#>     Attrib V19    0.01953559698188933
#>     Attrib V2    0.039292589284195496
#>     Attrib V20    0.32088476225105506
#>     Attrib V21    -0.13026899029211353
#>     Attrib V22    -0.3264511777172531
#>     Attrib V23    0.11509977607711354
#>     Attrib V24    -0.25261255990813686
#>     Attrib V25    0.6561053827854325
#>     Attrib V26    0.7648331976877124
#>     Attrib V27    0.19903094464877796
#>     Attrib V28    -0.15874024819062918
#>     Attrib V29    0.365202272530372
#>     Attrib V3    0.11506750973727958
#>     Attrib V30    -0.6716780236538764
#>     Attrib V31    0.35227455775609523
#>     Attrib V32    0.12614171115461306
#>     Attrib V33    -0.5942033592599877
#>     Attrib V34    -0.2204188827875279
#>     Attrib V35    0.07198708288872412
#>     Attrib V36    1.2232112417060326
#>     Attrib V37    0.8353320739758495
#>     Attrib V38    -0.1527103232583012
#>     Attrib V39    -0.1864516022040368
#>     Attrib V4    -0.005195361561127495
#>     Attrib V40    -0.020128028744500013
#>     Attrib V41    -0.399177688380498
#>     Attrib V42    0.35138388110843466
#>     Attrib V43    0.473874274045321
#>     Attrib V44    -0.21839249427113394
#>     Attrib V45    -0.4557764948520516
#>     Attrib V46    0.2931359966830167
#>     Attrib V47    0.5537854818587382
#>     Attrib V48    -0.4675988561493748
#>     Attrib V49    -1.296832168610733
#>     Attrib V5    -0.09863710644402639
#>     Attrib V50    1.6087247411987202
#>     Attrib V51    -0.22900810877105723
#>     Attrib V52    -0.3637412455973686
#>     Attrib V53    -0.44723907265264107
#>     Attrib V54    -0.23151219415717644
#>     Attrib V55    0.7352113989927571
#>     Attrib V56    -0.19312129267049655
#>     Attrib V57    0.11544322738950029
#>     Attrib V58    -0.49482695617032946
#>     Attrib V59    -0.45554186767028343
#>     Attrib V6    -0.16202588765796258
#>     Attrib V60    0.02330431717310296
#>     Attrib V7    0.13229123510691976
#>     Attrib V8    0.2880433852843003
#>     Attrib V9    -0.95994196414107
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.09469680463725229
#>     Attrib V1    -0.0025357090106020858
#>     Attrib V10    -0.42554388841662394
#>     Attrib V11    0.13516714686740042
#>     Attrib V12    0.1532168444146182
#>     Attrib V13    -0.4892676047212701
#>     Attrib V14    -0.22928065286511345
#>     Attrib V15    0.001788123569374154
#>     Attrib V16    0.2015907400182948
#>     Attrib V17    0.1803307276898756
#>     Attrib V18    0.25771790497614017
#>     Attrib V19    0.10137665460061336
#>     Attrib V2    0.10781740495608966
#>     Attrib V20    0.27083306437486454
#>     Attrib V21    0.7784583602237665
#>     Attrib V22    0.5040559072755018
#>     Attrib V23    -0.02699904034250044
#>     Attrib V24    0.1519294455933843
#>     Attrib V25    -0.584035664845823
#>     Attrib V26    -0.8203001385957851
#>     Attrib V27    -0.3826020609892487
#>     Attrib V28    -0.5068441656354687
#>     Attrib V29    -0.8339770710949772
#>     Attrib V3    0.30919474655758883
#>     Attrib V30    0.39534652462793474
#>     Attrib V31    -0.3840619867833041
#>     Attrib V32    -0.29304239666180937
#>     Attrib V33    0.25011645376235586
#>     Attrib V34    -0.22521577255985792
#>     Attrib V35    -0.2858470147920516
#>     Attrib V36    -0.8753373164444767
#>     Attrib V37    -0.6624306173642734
#>     Attrib V38    0.33434717465349567
#>     Attrib V39    0.18329459562639866
#>     Attrib V4    0.2637495205346338
#>     Attrib V40    -0.2139155253695926
#>     Attrib V41    -0.066346085598825
#>     Attrib V42    0.27420704316339756
#>     Attrib V43    0.23306295340264918
#>     Attrib V44    0.6092711928235077
#>     Attrib V45    0.3946128468899033
#>     Attrib V46    -0.14238130834496585
#>     Attrib V47    -0.4298662142229217
#>     Attrib V48    0.17369749540842314
#>     Attrib V49    0.6641162058687016
#>     Attrib V5    -0.03287779918670376
#>     Attrib V50    -0.8537286629421297
#>     Attrib V51    -0.1628790119458245
#>     Attrib V52    -0.03553249089902572
#>     Attrib V53    0.4919348286234989
#>     Attrib V54    0.6576230873806966
#>     Attrib V55    -0.3341597959882594
#>     Attrib V56    0.5275335253780975
#>     Attrib V57    0.27006204182325505
#>     Attrib V58    0.4019420656102535
#>     Attrib V59    0.8673369336177332
#>     Attrib V6    -0.11515994028139023
#>     Attrib V60    0.3228987223056951
#>     Attrib V7    0.09999042618291906
#>     Attrib V8    -0.07963643022808642
#>     Attrib V9    0.34951260741303114
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.1446371961377301
#>     Attrib V1    -0.26392657296093264
#>     Attrib V10    0.16783678282024045
#>     Attrib V11    0.7942358124236666
#>     Attrib V12    0.6064643238902849
#>     Attrib V13    -0.1954411549680475
#>     Attrib V14    -0.5652682717695413
#>     Attrib V15    -0.49854372357647003
#>     Attrib V16    -0.21730511822550186
#>     Attrib V17    -0.02580118200283383
#>     Attrib V18    0.33294009920292406
#>     Attrib V19    0.3411638455399729
#>     Attrib V2    0.03615908099011979
#>     Attrib V20    0.2506364265838764
#>     Attrib V21    0.8405471808146784
#>     Attrib V22    1.110664007475555
#>     Attrib V23    0.7638880818780763
#>     Attrib V24    0.7837876229502282
#>     Attrib V25    0.30516300554253656
#>     Attrib V26    0.16070323582228277
#>     Attrib V27    0.24907332021240577
#>     Attrib V28    0.17202136808610946
#>     Attrib V29    -0.24333525729486036
#>     Attrib V3    0.20562352971739759
#>     Attrib V30    0.5981128288663741
#>     Attrib V31    -0.5055638662554517
#>     Attrib V32    -0.6751923392399405
#>     Attrib V33    -0.11589443740531663
#>     Attrib V34    -0.21501784673068755
#>     Attrib V35    0.18870850667898184
#>     Attrib V36    -0.24189541173238016
#>     Attrib V37    0.25628653645319827
#>     Attrib V38    0.8852615713846655
#>     Attrib V39    0.4139808258037521
#>     Attrib V4    0.11215770859913726
#>     Attrib V40    0.062261751616127424
#>     Attrib V41    0.12710552061637478
#>     Attrib V42    -0.2401751419707765
#>     Attrib V43    0.02385989377606847
#>     Attrib V44    0.929103881719103
#>     Attrib V45    0.6245890498010938
#>     Attrib V46    0.16190653819130496
#>     Attrib V47    -0.016163468531847736
#>     Attrib V48    0.40321527889066455
#>     Attrib V49    1.0233959188312827
#>     Attrib V5    0.17738405226261134
#>     Attrib V50    -0.8655700443679559
#>     Attrib V51    0.20443927024305586
#>     Attrib V52    0.2558343369283777
#>     Attrib V53    0.40028329183675865
#>     Attrib V54    0.5290873845243882
#>     Attrib V55    -0.7026838030888042
#>     Attrib V56    0.3778806481026343
#>     Attrib V57    -0.1388541198170981
#>     Attrib V58    0.20177642274717913
#>     Attrib V59    0.42048138118814465
#>     Attrib V6    -0.025839416191446318
#>     Attrib V60    0.2934819484650945
#>     Attrib V7    -0.0888464728761335
#>     Attrib V8    -0.5066642809946938
#>     Attrib V9    0.7684437372433365
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.3234137373945996
#>     Attrib V1    -0.3452475457611305
#>     Attrib V10    0.5850139479256119
#>     Attrib V11    0.8939052897334568
#>     Attrib V12    0.9081772872192815
#>     Attrib V13    0.20838079921638952
#>     Attrib V14    -0.36626755320600507
#>     Attrib V15    -0.5169598039388666
#>     Attrib V16    -0.47645960810275284
#>     Attrib V17    -0.6215069623584574
#>     Attrib V18    -0.08325535745914935
#>     Attrib V19    0.0358994416998358
#>     Attrib V2    0.12743127245173252
#>     Attrib V20    -0.4346990475358163
#>     Attrib V21    0.19577045311812577
#>     Attrib V22    0.6251881885643403
#>     Attrib V23    0.3002708602688203
#>     Attrib V24    0.5486767299288869
#>     Attrib V25    0.39933992089676495
#>     Attrib V26    0.45719234416031507
#>     Attrib V27    0.527959932961531
#>     Attrib V28    0.5620324776063964
#>     Attrib V29    0.20476649950445852
#>     Attrib V3    0.01507305949774703
#>     Attrib V30    0.5349233897092639
#>     Attrib V31    -0.30513376003852755
#>     Attrib V32    -0.3694641371923786
#>     Attrib V33    0.043825478240108184
#>     Attrib V34    -0.01700007507947634
#>     Attrib V35    0.1650930152129805
#>     Attrib V36    -0.46442235669486553
#>     Attrib V37    -0.14683224228401695
#>     Attrib V38    0.16164807678740895
#>     Attrib V39    0.1797513318005312
#>     Attrib V4    0.13852332519544802
#>     Attrib V40    0.32455394599794146
#>     Attrib V41    0.6184946175892645
#>     Attrib V42    -0.3974308358096325
#>     Attrib V43    -0.27825906955102775
#>     Attrib V44    0.33035555360536206
#>     Attrib V45    0.3674054927139053
#>     Attrib V46    0.07007041553705404
#>     Attrib V47    0.10643337512469941
#>     Attrib V48    0.6468561242641869
#>     Attrib V49    1.1244355984977532
#>     Attrib V5    0.411138557625028
#>     Attrib V50    -0.7455212476339347
#>     Attrib V51    0.42266029093642177
#>     Attrib V52    0.35002080331284635
#>     Attrib V53    0.5689897116216989
#>     Attrib V54    0.13624728467557232
#>     Attrib V55    -0.735377575614296
#>     Attrib V56    -0.03819078888584699
#>     Attrib V57    -0.14019479557756226
#>     Attrib V58    0.11287121992218763
#>     Attrib V59    0.08888837441759878
#>     Attrib V6    0.1817878247237287
#>     Attrib V60    0.14914677296196244
#>     Attrib V7    -0.18852282307646026
#>     Attrib V8    -0.4283276364729666
#>     Attrib V9    0.8238491272965622
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.18954999132136086
#>     Attrib V1    -0.3022708310259635
#>     Attrib V10    0.28265485839622406
#>     Attrib V11    0.7170136621798212
#>     Attrib V12    0.7695942929022799
#>     Attrib V13    0.0682381405607243
#>     Attrib V14    -0.45951630050521053
#>     Attrib V15    -0.4647332965114905
#>     Attrib V16    -0.3174744546659965
#>     Attrib V17    -0.25450599050259
#>     Attrib V18    0.12375626577128937
#>     Attrib V19    0.1444736476439602
#>     Attrib V2    0.01899793242556627
#>     Attrib V20    -0.05037484260084991
#>     Attrib V21    0.5107387200223602
#>     Attrib V22    0.7471008157870116
#>     Attrib V23    0.40164857028772677
#>     Attrib V24    0.6210908742918999
#>     Attrib V25    0.278706602333598
#>     Attrib V26    0.1454765946943629
#>     Attrib V27    0.2551290866944954
#>     Attrib V28    0.14080816701217122
#>     Attrib V29    -0.2847967486715281
#>     Attrib V3    0.10177835185386641
#>     Attrib V30    0.47799426008475454
#>     Attrib V31    -0.35601664841656155
#>     Attrib V32    -0.37297373144475515
#>     Attrib V33    0.12140846085035305
#>     Attrib V34    -0.002544639919364303
#>     Attrib V35    0.1251128922898826
#>     Attrib V36    -0.4437266965787437
#>     Attrib V37    -0.09360168752478
#>     Attrib V38    0.5304847764869088
#>     Attrib V39    0.35972212249533986
#>     Attrib V4    0.06738841455470397
#>     Attrib V40    0.10834728184047519
#>     Attrib V41    0.2987829530869089
#>     Attrib V42    -0.21947303368129956
#>     Attrib V43    -0.023376162870718982
#>     Attrib V44    0.5147435297338956
#>     Attrib V45    0.41988170466188607
#>     Attrib V46    0.02732732007879927
#>     Attrib V47    -0.11622007486995334
#>     Attrib V48    0.39673633756873994
#>     Attrib V49    0.9846221969695316
#>     Attrib V5    0.1487236192347631
#>     Attrib V50    -0.9181729833409531
#>     Attrib V51    0.2000229978314589
#>     Attrib V52    0.24806205360393066
#>     Attrib V53    0.46551707742744824
#>     Attrib V54    0.3067067663059602
#>     Attrib V55    -0.6043059365400257
#>     Attrib V56    0.2628426598574756
#>     Attrib V57    -0.19154913550976366
#>     Attrib V58    0.17717795515159282
#>     Attrib V59    0.32005921135766935
#>     Attrib V6    0.012497572716559319
#>     Attrib V60    0.15220478929996997
#>     Attrib V7    -0.12841534759071369
#>     Attrib V8    -0.4110370497569875
#>     Attrib V9    0.6709538111686622
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.36247443161971016
#>     Attrib V1    0.30805513271798357
#>     Attrib V10    -0.03669661476470719
#>     Attrib V11    -0.48560297233072447
#>     Attrib V12    -0.5160779074025564
#>     Attrib V13    0.065383778698955
#>     Attrib V14    0.3425539627706046
#>     Attrib V15    0.21690988117009405
#>     Attrib V16    0.16166561987370098
#>     Attrib V17    0.14556088026284972
#>     Attrib V18    0.09530394104236901
#>     Attrib V19    0.0418725780492552
#>     Attrib V2    0.0487611428248851
#>     Attrib V20    0.1634756115199272
#>     Attrib V21    -0.09416068525088214
#>     Attrib V22    -0.26157865443168477
#>     Attrib V23    -0.0999378621070073
#>     Attrib V24    -0.31492193561222054
#>     Attrib V25    0.2383383182777376
#>     Attrib V26    0.3925012117119696
#>     Attrib V27    0.08040282042605772
#>     Attrib V28    -0.14855409233074043
#>     Attrib V29    0.1071181482182392
#>     Attrib V3    0.008335150678578629
#>     Attrib V30    -0.3945709877597691
#>     Attrib V31    0.27323291614561124
#>     Attrib V32    0.16007823002498514
#>     Attrib V33    -0.13603635830818764
#>     Attrib V34    0.00919630054422835
#>     Attrib V35    0.044022052033971755
#>     Attrib V36    0.639538705416832
#>     Attrib V37    0.43392703410470335
#>     Attrib V38    -0.08608577208112554
#>     Attrib V39    -0.1423798057879189
#>     Attrib V4    0.04040005740418599
#>     Attrib V40    0.049221888623661336
#>     Attrib V41    -0.10138735663817529
#>     Attrib V42    0.2268077141283837
#>     Attrib V43    0.22650879342101476
#>     Attrib V44    -0.18474845004949017
#>     Attrib V45    -0.2790911782147263
#>     Attrib V46    0.09527432765998203
#>     Attrib V47    0.26360513708093447
#>     Attrib V48    -0.2552588194553876
#>     Attrib V49    -0.7134267215021087
#>     Attrib V5    -0.055251759676159036
#>     Attrib V50    0.9473179933853222
#>     Attrib V51    -0.1378690864143076
#>     Attrib V52    -0.24091915583606577
#>     Attrib V53    -0.30343564189193767
#>     Attrib V54    -0.1959226907100197
#>     Attrib V55    0.3271226302050325
#>     Attrib V56    -0.17453801432239188
#>     Attrib V57    0.014217275246471622
#>     Attrib V58    -0.3537998192663389
#>     Attrib V59    -0.4173375223483176
#>     Attrib V6    -0.04347925074748843
#>     Attrib V60    -0.0451475802437437
#>     Attrib V7    0.051918224407404956
#>     Attrib V8    0.1291681898603754
#>     Attrib V9    -0.5114701853775473
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.010147019120201193
#>     Attrib V1    -0.24309479009862942
#>     Attrib V10    -0.24768297698644537
#>     Attrib V11    0.18236720099695267
#>     Attrib V12    0.15090128764704813
#>     Attrib V13    -0.4331739385206652
#>     Attrib V14    -0.37953311519412253
#>     Attrib V15    -0.19835162881237628
#>     Attrib V16    0.009637731770251992
#>     Attrib V17    0.15320907783819876
#>     Attrib V18    0.2212302109001948
#>     Attrib V19    0.15157635620953525
#>     Attrib V2    -0.029453546880483836
#>     Attrib V20    0.2181968287221339
#>     Attrib V21    0.4847976104384035
#>     Attrib V22    0.4085241293909107
#>     Attrib V23    -0.0034151897809117588
#>     Attrib V24    0.08066733647717289
#>     Attrib V25    -0.3469182415234978
#>     Attrib V26    -0.554995513816939
#>     Attrib V27    -0.186671400777892
#>     Attrib V28    -0.1349511888632198
#>     Attrib V29    -0.5063110210725426
#>     Attrib V3    0.07801469696458954
#>     Attrib V30    0.3908970366562288
#>     Attrib V31    -0.3927283709844214
#>     Attrib V32    -0.42749156743044947
#>     Attrib V33    0.0916091064738797
#>     Attrib V34    -0.008349515396669737
#>     Attrib V35    0.12812539466809433
#>     Attrib V36    -0.26879903559717916
#>     Attrib V37    -0.1351697966859757
#>     Attrib V38    0.6385012108157362
#>     Attrib V39    0.29912353157722427
#>     Attrib V4    0.08509048381778536
#>     Attrib V40    -0.14553762402581105
#>     Attrib V41    -0.23397287264394578
#>     Attrib V42    -0.05499742210846661
#>     Attrib V43    0.08735350815892495
#>     Attrib V44    0.7444646129155499
#>     Attrib V45    0.6318921091623662
#>     Attrib V46    0.0456247245770353
#>     Attrib V47    -0.14044050825031146
#>     Attrib V48    0.30671051199020394
#>     Attrib V49    0.6162114729637155
#>     Attrib V5    -0.02475172683932024
#>     Attrib V50    -0.7488442316946958
#>     Attrib V51    0.002805222531194806
#>     Attrib V52    -0.055009102047466736
#>     Attrib V53    0.1577775419894589
#>     Attrib V54    0.4881535638080154
#>     Attrib V55    -0.28964553963099615
#>     Attrib V56    0.3227809216045858
#>     Attrib V57    0.05594970573801959
#>     Attrib V58    0.18935807645265337
#>     Attrib V59    0.342936179249949
#>     Attrib V6    -0.17099270109159917
#>     Attrib V60    0.06930907286279349
#>     Attrib V7    -0.0961473823558894
#>     Attrib V8    -0.23715599136183987
#>     Attrib V9    0.30364186399233994
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.171921271436957
#>     Attrib V1    -0.004257070727343803
#>     Attrib V10    -0.6477851333260047
#>     Attrib V11    0.10787052397230669
#>     Attrib V12    0.009143052205672198
#>     Attrib V13    -0.5555805773827346
#>     Attrib V14    -0.10086429505049219
#>     Attrib V15    0.12194303370448614
#>     Attrib V16    0.26987131327933617
#>     Attrib V17    0.23505730567788624
#>     Attrib V18    0.20650562100448697
#>     Attrib V19    0.11350227681090913
#>     Attrib V2    0.21824157906924205
#>     Attrib V20    0.32033431073287477
#>     Attrib V21    0.8943768141849432
#>     Attrib V22    0.6234440517902343
#>     Attrib V23    -0.11073016631181676
#>     Attrib V24    -0.12487928307984725
#>     Attrib V25    -1.0230551846373577
#>     Attrib V26    -1.1247723285672053
#>     Attrib V27    -0.38897879598814994
#>     Attrib V28    -0.321615437129044
#>     Attrib V29    -0.5265484436838366
#>     Attrib V3    0.27858148464674065
#>     Attrib V30    0.5479651032696254
#>     Attrib V31    -0.5561468596956631
#>     Attrib V32    -0.5908214418631452
#>     Attrib V33    0.12697483131442375
#>     Attrib V34    -0.2790238395763454
#>     Attrib V35    -0.3102229166216485
#>     Attrib V36    -0.8128993414109599
#>     Attrib V37    -0.5378199491519996
#>     Attrib V38    0.592185437022218
#>     Attrib V39    0.34631708499416214
#>     Attrib V4    0.27435445859150903
#>     Attrib V40    -0.14262640848018338
#>     Attrib V41    -0.18859809569157787
#>     Attrib V42    0.22574272066869286
#>     Attrib V43    0.3399378752945521
#>     Attrib V44    0.8302732446266937
#>     Attrib V45    0.6066255141763177
#>     Attrib V46    -0.0457482565338026
#>     Attrib V47    -0.4594073635397729
#>     Attrib V48    0.20109354504028218
#>     Attrib V49    0.6762211235479799
#>     Attrib V5    -0.07293307017924135
#>     Attrib V50    -0.9976499014756645
#>     Attrib V51    -0.2611182214960621
#>     Attrib V52    -0.06241851326852804
#>     Attrib V53    0.47197226779870044
#>     Attrib V54    0.7375161198694117
#>     Attrib V55    -0.38667372466877126
#>     Attrib V56    0.5666381530608541
#>     Attrib V57    0.3164321857635932
#>     Attrib V58    0.38549339009069766
#>     Attrib V59    0.9976222033447549
#>     Attrib V6    -0.2679036788479877
#>     Attrib V60    0.30009033036507593
#>     Attrib V7    0.04588887003327219
#>     Attrib V8    -0.22305541370575926
#>     Attrib V9    0.17819455915612534
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.13015139907886933
#>     Attrib V1    -0.006888181707660237
#>     Attrib V10    -0.06389829615216201
#>     Attrib V11    0.09703963467035796
#>     Attrib V12    0.09881178074485339
#>     Attrib V13    0.010555825887381614
#>     Attrib V14    -0.029359461255821503
#>     Attrib V15    -0.033342092966109516
#>     Attrib V16    -0.03481501082833802
#>     Attrib V17    0.029226553491058134
#>     Attrib V18    0.07867399785362036
#>     Attrib V19    0.04346133252622526
#>     Attrib V2    0.06294643636940774
#>     Attrib V20    0.0668042337356611
#>     Attrib V21    0.17742311606416855
#>     Attrib V22    0.11383679238460236
#>     Attrib V23    0.04699632516960849
#>     Attrib V24    0.08489394533050569
#>     Attrib V25    -0.06280348449747579
#>     Attrib V26    -0.21005384227130108
#>     Attrib V27    -0.03980051777898446
#>     Attrib V28    -0.11037482795882161
#>     Attrib V29    -0.1495423188457476
#>     Attrib V3    0.18756560266499378
#>     Attrib V30    0.1328938652099209
#>     Attrib V31    -0.11674903655730033
#>     Attrib V32    -0.07117940356840469
#>     Attrib V33    0.05260660662608819
#>     Attrib V34    0.00471015627980482
#>     Attrib V35    -0.035388137796115424
#>     Attrib V36    -0.19623613482234326
#>     Attrib V37    -0.09784898471236964
#>     Attrib V38    0.12996277163437553
#>     Attrib V39    0.11692965930357589
#>     Attrib V4    0.13592136625533716
#>     Attrib V40    0.008595129993568203
#>     Attrib V41    0.02941221774870589
#>     Attrib V42    0.015166076006464064
#>     Attrib V43    -0.01460806947011799
#>     Attrib V44    0.14695665419339698
#>     Attrib V45    0.101938609705005
#>     Attrib V46    0.017560738971700875
#>     Attrib V47    -0.025305618123573133
#>     Attrib V48    0.08521430252322783
#>     Attrib V49    0.23739255532916592
#>     Attrib V5    0.09637711896925502
#>     Attrib V50    -0.25847196601587685
#>     Attrib V51    0.010169914949661825
#>     Attrib V52    0.03676017421004892
#>     Attrib V53    0.16431413685173188
#>     Attrib V54    0.14679814509520284
#>     Attrib V55    -0.06401451637827436
#>     Attrib V56    0.15577272035018075
#>     Attrib V57    0.1008694135784307
#>     Attrib V58    0.12188669995300241
#>     Attrib V59    0.2528290453792555
#>     Attrib V6    0.026197366441339326
#>     Attrib V60    0.14119099191326465
#>     Attrib V7    0.04290898025400141
#>     Attrib V8    -0.07584897350390386
#>     Attrib V9    0.14982865879973864
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.07398943610452612
#>     Attrib V1    -0.2077844041359386
#>     Attrib V10    -0.38492255327475156
#>     Attrib V11    0.33982675411252294
#>     Attrib V12    0.22198392424051858
#>     Attrib V13    -0.6571962844570045
#>     Attrib V14    -0.5264445936294326
#>     Attrib V15    -0.17176838080409235
#>     Attrib V16    0.03966933484622265
#>     Attrib V17    0.18707291744011223
#>     Attrib V18    0.2304219271480014
#>     Attrib V19    0.096160797465515
#>     Attrib V2    0.035697475761235574
#>     Attrib V20    0.22333290138031275
#>     Attrib V21    0.781309239303235
#>     Attrib V22    0.6510311621906364
#>     Attrib V23    0.016184652855486786
#>     Attrib V24    0.09366010398568718
#>     Attrib V25    -0.6311054331555614
#>     Attrib V26    -0.7740358609654349
#>     Attrib V27    -0.33627347446544864
#>     Attrib V28    -0.4082557274274706
#>     Attrib V29    -0.9600363124268588
#>     Attrib V3    0.1770602439467957
#>     Attrib V30    0.5474037091554231
#>     Attrib V31    -0.5058606500141979
#>     Attrib V32    -0.6013144468114691
#>     Attrib V33    0.15943161033176864
#>     Attrib V34    -0.18930364727112586
#>     Attrib V35    -0.06282118243289976
#>     Attrib V36    -0.7072585163952158
#>     Attrib V37    -0.4367276356441007
#>     Attrib V38    0.6481184005877997
#>     Attrib V39    0.3639399559352608
#>     Attrib V4    0.18368486053514677
#>     Attrib V40    -0.27291219661181
#>     Attrib V41    -0.35358392653808873
#>     Attrib V42    -0.005710198127263542
#>     Attrib V43    0.17292081884847474
#>     Attrib V44    1.036983400164583
#>     Attrib V45    0.6938993727634091
#>     Attrib V46    0.022376178519864266
#>     Attrib V47    -0.34151665175347096
#>     Attrib V48    0.4544316210712527
#>     Attrib V49    1.005225539821662
#>     Attrib V5    -0.1511556179297923
#>     Attrib V50    -1.1481552359284373
#>     Attrib V51    -0.18124271862150534
#>     Attrib V52    -0.07197116374908163
#>     Attrib V53    0.3058587588658571
#>     Attrib V54    0.8100089131326474
#>     Attrib V55    -0.4405386187459483
#>     Attrib V56    0.5583450285391749
#>     Attrib V57    0.11629268171487867
#>     Attrib V58    0.3363553736962659
#>     Attrib V59    0.723726341134921
#>     Attrib V6    -0.3076736259693935
#>     Attrib V60    0.25752315781041524
#>     Attrib V7    0.0053688752845134175
#>     Attrib V8    -0.31042780299574
#>     Attrib V9    0.40363513134001966
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.6623452267212757
#>     Attrib V1    0.45068203869835377
#>     Attrib V10    -0.9497563692721747
#>     Attrib V11    -1.5044571259287343
#>     Attrib V12    -1.6214563980822103
#>     Attrib V13    -0.3561960241529679
#>     Attrib V14    0.31394537012869894
#>     Attrib V15    0.6776958269217784
#>     Attrib V16    0.7176094550293141
#>     Attrib V17    1.0309246412650686
#>     Attrib V18    0.20124884136281843
#>     Attrib V19    0.1324398233814186
#>     Attrib V2    -0.08836758702607539
#>     Attrib V20    0.8585787474744793
#>     Attrib V21    -0.007085379938614242
#>     Attrib V22    -0.3084448476167587
#>     Attrib V23    0.19931070283264163
#>     Attrib V24    -0.4906620027195575
#>     Attrib V25    -0.18371752844487652
#>     Attrib V26    -0.172569457955139
#>     Attrib V27    -0.3564956375055377
#>     Attrib V28    -0.03324945810702905
#>     Attrib V29    0.5083529720603026
#>     Attrib V3    0.10973382098252055
#>     Attrib V30    -0.4962331610022878
#>     Attrib V31    0.16017171539913877
#>     Attrib V32    -0.09850674592589738
#>     Attrib V33    -0.6059011206791931
#>     Attrib V34    -0.126037477771065
#>     Attrib V35    0.08494370978456191
#>     Attrib V36    1.5076557640324642
#>     Attrib V37    1.3072176385180083
#>     Attrib V38    0.48348654897667875
#>     Attrib V39    0.20538134235085698
#>     Attrib V4    -0.13787173194887034
#>     Attrib V40    -0.2792548329367565
#>     Attrib V41    -0.9429550241590428
#>     Attrib V42    0.2963791319923782
#>     Attrib V43    0.35660154086571444
#>     Attrib V44    0.011164131415738519
#>     Attrib V45    -0.058816070038143944
#>     Attrib V46    0.4240937545090232
#>     Attrib V47    0.40077454733690526
#>     Attrib V48    -0.7124026243908567
#>     Attrib V49    -1.5118378021385341
#>     Attrib V5    -0.4155803530253866
#>     Attrib V50    1.2226989642447088
#>     Attrib V51    -0.42994672473779383
#>     Attrib V52    -0.4502766554612437
#>     Attrib V53    -0.8001895062928671
#>     Attrib V54    -0.31224013386746663
#>     Attrib V55    0.6918031459894
#>     Attrib V56    0.05556220569445046
#>     Attrib V57    0.06914077163689687
#>     Attrib V58    -0.5291387430030059
#>     Attrib V59    -0.2611346495455325
#>     Attrib V6    -0.2989185893391824
#>     Attrib V60    -0.2696980432949048
#>     Attrib V7    0.09103565849116176
#>     Attrib V8    0.13094350405947638
#>     Attrib V9    -1.3512952530602504
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1853507409123131
#>     Attrib V1    0.08702941281989662
#>     Attrib V10    0.06804680533680267
#>     Attrib V11    -0.06067786394869744
#>     Attrib V12    -0.0793954439838818
#>     Attrib V13    0.05140981691018836
#>     Attrib V14    0.02025716766083174
#>     Attrib V15    0.047016625217791076
#>     Attrib V16    0.10698492298616545
#>     Attrib V17    0.09976159293520531
#>     Attrib V18    0.08386246808955251
#>     Attrib V19    0.004098243036494114
#>     Attrib V2    0.03685229532666269
#>     Attrib V20    -0.05364076519978907
#>     Attrib V21    -0.05986891812144585
#>     Attrib V22    -0.025340050922963743
#>     Attrib V23    -0.019612794586077474
#>     Attrib V24    -0.029953882335009386
#>     Attrib V25    0.027167037396453115
#>     Attrib V26    -0.04000289551350412
#>     Attrib V27    -0.09816534813303793
#>     Attrib V28    -0.07375623553152601
#>     Attrib V29    -0.04880121608853738
#>     Attrib V3    0.08416437291670818
#>     Attrib V30    -0.13278641742313482
#>     Attrib V31    0.03774708548886627
#>     Attrib V32    0.13776011922166542
#>     Attrib V33    0.07821472202276222
#>     Attrib V34    0.1368585709214751
#>     Attrib V35    0.10903710023447236
#>     Attrib V36    0.20641097036031877
#>     Attrib V37    0.22518293200204367
#>     Attrib V38    0.04000405421906569
#>     Attrib V39    0.031465312878508754
#>     Attrib V4    0.08686497101257805
#>     Attrib V40    0.0976477306522758
#>     Attrib V41    0.1550387037377838
#>     Attrib V42    0.18786732418597307
#>     Attrib V43    0.10298227024792571
#>     Attrib V44    -0.027564415084619303
#>     Attrib V45    -0.006687229496543348
#>     Attrib V46    0.104338279295217
#>     Attrib V47    0.12014856161079482
#>     Attrib V48    -0.0020857113100937867
#>     Attrib V49    -0.08870567176255827
#>     Attrib V5    0.07941166902994194
#>     Attrib V50    0.25784466975499964
#>     Attrib V51    0.1044194448409444
#>     Attrib V52    0.05598701580236145
#>     Attrib V53    0.019831755597389367
#>     Attrib V54    -0.04550361243560605
#>     Attrib V55    0.07034367123698235
#>     Attrib V56    0.033820219247798676
#>     Attrib V57    0.10085523450479511
#>     Attrib V58    0.03012831198853171
#>     Attrib V59    -0.06711165580561365
#>     Attrib V6    0.0762274941955544
#>     Attrib V60    0.06620528346516431
#>     Attrib V7    0.02591849139333333
#>     Attrib V8    0.01990553019320716
#>     Attrib V9    0.01202258836279591
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.023424051087896306
#>     Attrib V1    -0.06790431741134244
#>     Attrib V10    -0.09464682709794181
#>     Attrib V11    0.1735417476035435
#>     Attrib V12    0.10334586315794611
#>     Attrib V13    -0.2525729108147716
#>     Attrib V14    -0.19544717063564884
#>     Attrib V15    -0.017899927017778806
#>     Attrib V16    0.02235205785271889
#>     Attrib V17    0.0611029192241031
#>     Attrib V18    0.13511736276468062
#>     Attrib V19    0.12740041963532686
#>     Attrib V2    0.11624291953979923
#>     Attrib V20    0.07705797368623903
#>     Attrib V21    0.3262448192408704
#>     Attrib V22    0.3275576688041383
#>     Attrib V23    -0.04340776825469945
#>     Attrib V24    0.08100661325974644
#>     Attrib V25    -0.3308651432576795
#>     Attrib V26    -0.43277564838429206
#>     Attrib V27    -0.16276760751379285
#>     Attrib V28    -0.17403576503325158
#>     Attrib V29    -0.39144468464404375
#>     Attrib V3    0.12858276950997696
#>     Attrib V30    0.29070827186425763
#>     Attrib V31    -0.14184822314449091
#>     Attrib V32    -0.22173259927079964
#>     Attrib V33    0.161518379060926
#>     Attrib V34    -0.07927609165686555
#>     Attrib V35    0.004115548857841401
#>     Attrib V36    -0.37598858716083283
#>     Attrib V37    -0.24901712672139478
#>     Attrib V38    0.33685685030200674
#>     Attrib V39    0.19126958172064792
#>     Attrib V4    0.12240603907559333
#>     Attrib V40    -0.10036603454556928
#>     Attrib V41    -0.0374039172458786
#>     Attrib V42    -0.03953227605737068
#>     Attrib V43    0.08314034313231439
#>     Attrib V44    0.40585886107189134
#>     Attrib V45    0.3253709985855896
#>     Attrib V46    -0.07058255292224828
#>     Attrib V47    -0.22295380461985928
#>     Attrib V48    0.20655827227322363
#>     Attrib V49    0.3932123536150239
#>     Attrib V5    0.017423062669146422
#>     Attrib V50    -0.54210137391082
#>     Attrib V51    -0.024895654659552995
#>     Attrib V52    6.0763244410142374E-5
#>     Attrib V53    0.17114173738354588
#>     Attrib V54    0.27749076858229704
#>     Attrib V55    -0.14525508383901564
#>     Attrib V56    0.2473938829776265
#>     Attrib V57    0.12367605802615235
#>     Attrib V58    0.14949573021066456
#>     Attrib V59    0.3029098869732447
#>     Attrib V6    -0.059026739546817295
#>     Attrib V60    0.09652156110514018
#>     Attrib V7    -0.0696335481020586
#>     Attrib V8    -0.11620977144019681
#>     Attrib V9    0.2579606177934614
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.20982018224913584
#>     Attrib V1    0.06136257335278637
#>     Attrib V10    0.05541909719372126
#>     Attrib V11    0.023584169794516784
#>     Attrib V12    -0.019110691959138212
#>     Attrib V13    -0.007347792858446055
#>     Attrib V14    0.014615460888120222
#>     Attrib V15    0.005260768434978083
#>     Attrib V16    0.026011731803880663
#>     Attrib V17    -0.011189180982309768
#>     Attrib V18    0.06646697838451039
#>     Attrib V19    -0.035144712718027694
#>     Attrib V2    0.09976277481581612
#>     Attrib V20    0.005362984949854671
#>     Attrib V21    0.03010086671337581
#>     Attrib V22    -0.0017021320300072778
#>     Attrib V23    8.695227224793819E-4
#>     Attrib V24    -0.03628593252295851
#>     Attrib V25    -0.01271993210871035
#>     Attrib V26    -0.03011927265395869
#>     Attrib V27    -0.033449015142310454
#>     Attrib V28    -0.0634945108119668
#>     Attrib V29    -0.07524347339238409
#>     Attrib V3    0.16361564326386008
#>     Attrib V30    -0.050532641842789425
#>     Attrib V31    -0.004832909354571164
#>     Attrib V32    0.017533836183162642
#>     Attrib V33    0.05078437562860867
#>     Attrib V34    0.07740129527529796
#>     Attrib V35    0.04698419256702332
#>     Attrib V36    0.12827353118486515
#>     Attrib V37    0.06606344307791856
#>     Attrib V38    0.05019683126475239
#>     Attrib V39    0.07487172688182155
#>     Attrib V4    0.08429158694032542
#>     Attrib V40    0.03581515831274232
#>     Attrib V41    0.02766454851180179
#>     Attrib V42    0.04944905800391443
#>     Attrib V43    0.04577124210940412
#>     Attrib V44    0.07980677267163601
#>     Attrib V45    0.0013120098360873671
#>     Attrib V46    0.047836583640409124
#>     Attrib V47    0.11070104393161966
#>     Attrib V48    0.06313816128393773
#>     Attrib V49    0.06830327431332621
#>     Attrib V5    0.09999310832290437
#>     Attrib V50    0.014653831042061494
#>     Attrib V51    0.12116789165161086
#>     Attrib V52    0.05594816759089022
#>     Attrib V53    0.06225060393967191
#>     Attrib V54    0.006731261315231594
#>     Attrib V55    0.07026101628230283
#>     Attrib V56    0.11507466996833987
#>     Attrib V57    0.050585841395012605
#>     Attrib V58    0.06154195408966251
#>     Attrib V59    0.07733225249663632
#>     Attrib V6    0.03125419116107371
#>     Attrib V60    0.10536354795834665
#>     Attrib V7    0.060752192706216734
#>     Attrib V8    0.06656115047599019
#>     Attrib V9    0.07132097442038773
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.11746767920012782
#>     Attrib V1    -0.11484789755893493
#>     Attrib V10    -0.4473458440080341
#>     Attrib V11    0.21471405897953313
#>     Attrib V12    0.25776322240557886
#>     Attrib V13    -0.5104840779882488
#>     Attrib V14    -0.2658248954175646
#>     Attrib V15    7.479636860701902E-4
#>     Attrib V16    0.1091381323737993
#>     Attrib V17    0.1804428786007102
#>     Attrib V18    0.21831510737611187
#>     Attrib V19    0.10151805758372581
#>     Attrib V2    0.11518745716258587
#>     Attrib V20    0.21775720513342997
#>     Attrib V21    0.7914494836336867
#>     Attrib V22    0.6603594104535414
#>     Attrib V23    -0.018533933548736076
#>     Attrib V24    0.11619077241989094
#>     Attrib V25    -0.6613356725943005
#>     Attrib V26    -0.8752474290817114
#>     Attrib V27    -0.3675449050737085
#>     Attrib V28    -0.38834986631622676
#>     Attrib V29    -0.7983560458368755
#>     Attrib V3    0.23264628787092723
#>     Attrib V30    0.4881989289570579
#>     Attrib V31    -0.4792344242888425
#>     Attrib V32    -0.5065839134919644
#>     Attrib V33    0.20084151299195238
#>     Attrib V34    -0.24559090623703622
#>     Attrib V35    -0.2161760831539375
#>     Attrib V36    -0.8104026183382781
#>     Attrib V37    -0.6197504712764068
#>     Attrib V38    0.4813170014493216
#>     Attrib V39    0.2610601024039724
#>     Attrib V4    0.25961665203492956
#>     Attrib V40    -0.1948878045889348
#>     Attrib V41    -0.20065647896968952
#>     Attrib V42    0.201102499773957
#>     Attrib V43    0.23656947655790286
#>     Attrib V44    0.7967680829606669
#>     Attrib V45    0.6125332129245429
#>     Attrib V46    -0.06952276485926918
#>     Attrib V47    -0.4462047057991558
#>     Attrib V48    0.2809252901011801
#>     Attrib V49    0.8817606031336193
#>     Attrib V5    -0.06456233499042056
#>     Attrib V50    -1.055567932525494
#>     Attrib V51    -0.19680338725549631
#>     Attrib V52    0.0017324734929674874
#>     Attrib V53    0.45926375323876334
#>     Attrib V54    0.8076051285967057
#>     Attrib V55    -0.3812310494953868
#>     Attrib V56    0.4793171610132591
#>     Attrib V57    0.15499284889611536
#>     Attrib V58    0.40564061169601456
#>     Attrib V59    0.8272335260118563
#>     Attrib V6    -0.23408979917326972
#>     Attrib V60    0.3298575407924365
#>     Attrib V7    0.07957282446792048
#>     Attrib V8    -0.23331293031743267
#>     Attrib V9    0.3194369933334837
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.5782574876969354
#>     Attrib V1    -0.25083760537601185
#>     Attrib V10    0.7655503008992962
#>     Attrib V11    1.1440623237202396
#>     Attrib V12    1.3312286664994668
#>     Attrib V13    0.46522817293657
#>     Attrib V14    -0.21881833945528803
#>     Attrib V15    -0.5804578025158906
#>     Attrib V16    -0.7951255965784669
#>     Attrib V17    -0.8333624081311845
#>     Attrib V18    0.02937202009046151
#>     Attrib V19    0.10489100884117038
#>     Attrib V2    0.19628011878260723
#>     Attrib V20    -0.4272096314554244
#>     Attrib V21    0.39522932341813716
#>     Attrib V22    0.9724566013748984
#>     Attrib V23    0.5601371887035422
#>     Attrib V24    0.6298858614165277
#>     Attrib V25    0.35336946288253007
#>     Attrib V26    0.558042931789267
#>     Attrib V27    0.777041949645095
#>     Attrib V28    0.854855517940233
#>     Attrib V29    0.6700288765607672
#>     Attrib V3    -0.017365876664403243
#>     Attrib V30    0.8595925546303272
#>     Attrib V31    -0.43805224959097555
#>     Attrib V32    -0.8202807193739202
#>     Attrib V33    -0.23333242530676676
#>     Attrib V34    -0.22620470075873575
#>     Attrib V35    0.1511075196765769
#>     Attrib V36    -0.5809883510554864
#>     Attrib V37    0.01859986895016135
#>     Attrib V38    0.17475160367247558
#>     Attrib V39    0.30948629961293445
#>     Attrib V4    0.07371537855353778
#>     Attrib V40    0.587010025762044
#>     Attrib V41    1.0312114049274124
#>     Attrib V42    -0.3209529744704861
#>     Attrib V43    -0.17942525989823396
#>     Attrib V44    0.42660000219409755
#>     Attrib V45    0.3327766157540576
#>     Attrib V46    -0.09714335464391778
#>     Attrib V47    0.007440709067945109
#>     Attrib V48    0.6843368566248422
#>     Attrib V49    1.336267338878755
#>     Attrib V5    0.6884678910040911
#>     Attrib V50    -0.8456883463090473
#>     Attrib V51    0.7300394453011594
#>     Attrib V52    0.6087341453143349
#>     Attrib V53    0.9147828953088214
#>     Attrib V54    0.12541597240178082
#>     Attrib V55    -1.083773810183883
#>     Attrib V56    -0.08097666341501669
#>     Attrib V57    -0.3247144657494588
#>     Attrib V58    0.126505910612944
#>     Attrib V59    0.16853351317679224
#>     Attrib V6    0.4351228052804955
#>     Attrib V60    0.31641431061434566
#>     Attrib V7    -0.17770015107485743
#>     Attrib V8    -0.6233516005826216
#>     Attrib V9    0.9509455554472819
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.3130811746541076
#>     Attrib V1    0.2923905730804449
#>     Attrib V10    -0.1723109877378832
#>     Attrib V11    -0.6405426812518179
#>     Attrib V12    -0.7111835590158271
#>     Attrib V13    -0.00799952514733955
#>     Attrib V14    0.2615119506174771
#>     Attrib V15    0.2643158220473644
#>     Attrib V16    0.16902853595633535
#>     Attrib V17    0.31124109489321333
#>     Attrib V18    0.07773588237333723
#>     Attrib V19    0.0059910694601710435
#>     Attrib V2    -0.04622085213544199
#>     Attrib V20    0.27796122313635546
#>     Attrib V21    -0.06590528966063194
#>     Attrib V22    -0.25356446674899474
#>     Attrib V23    0.06662227830421834
#>     Attrib V24    -0.18814392188275395
#>     Attrib V25    0.40667293457765685
#>     Attrib V26    0.5882330984020943
#>     Attrib V27    0.14856575554343054
#>     Attrib V28    -0.09211992201934685
#>     Attrib V29    0.2608236414627766
#>     Attrib V3    0.005596201589622904
#>     Attrib V30    -0.4959985480350973
#>     Attrib V31    0.19736387149334142
#>     Attrib V32    -0.055633464370334236
#>     Attrib V33    -0.5006228673893333
#>     Attrib V34    -0.1317685271525653
#>     Attrib V35    0.08943482335620681
#>     Attrib V36    0.9622563880220367
#>     Attrib V37    0.7906324957186441
#>     Attrib V38    -0.05059845792018508
#>     Attrib V39    -0.09886007566246481
#>     Attrib V4    0.05638799880124924
#>     Attrib V40    0.0070859025799447535
#>     Attrib V41    -0.24510901479213526
#>     Attrib V42    0.11634452559906616
#>     Attrib V43    0.2684256478878326
#>     Attrib V44    -0.1136461078413303
#>     Attrib V45    -0.266781187325619
#>     Attrib V46    0.215354837759216
#>     Attrib V47    0.37718009125514346
#>     Attrib V48    -0.29586728923373357
#>     Attrib V49    -0.9178654309312735
#>     Attrib V5    -0.07269347419486769
#>     Attrib V50    1.1107084911037308
#>     Attrib V51    -0.10871533509355329
#>     Attrib V52    -0.17044581353740076
#>     Attrib V53    -0.32581394130541086
#>     Attrib V54    -0.26762407452917936
#>     Attrib V55    0.4068774186134343
#>     Attrib V56    -0.19811062747311114
#>     Attrib V57    0.1151595872874863
#>     Attrib V58    -0.36386268435836655
#>     Attrib V59    -0.34000099214456964
#>     Attrib V6    -0.1180341898263662
#>     Attrib V60    0.006051659039685004
#>     Attrib V7    0.0770097455108714
#>     Attrib V8    0.14514301517760714
#>     Attrib V9    -0.6372771923858116
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.04571480661666807
#>     Attrib V1    0.1211333305465371
#>     Attrib V10    -0.48657184189045605
#>     Attrib V11    0.0013235870722736992
#>     Attrib V12    0.007808017483201126
#>     Attrib V13    -0.42356642678733314
#>     Attrib V14    -0.04635252539064893
#>     Attrib V15    0.129513390408974
#>     Attrib V16    0.2840713530313247
#>     Attrib V17    0.2548116132229172
#>     Attrib V18    0.20094154219137197
#>     Attrib V19    0.03833910285444748
#>     Attrib V2    0.20300077764511715
#>     Attrib V20    0.2976794933130512
#>     Attrib V21    0.704785615571152
#>     Attrib V22    0.3905425853622804
#>     Attrib V23    -0.17478388942489034
#>     Attrib V24    -0.05342467503996
#>     Attrib V25    -0.8540652270031044
#>     Attrib V26    -0.995610855037897
#>     Attrib V27    -0.48039363535227075
#>     Attrib V28    -0.4700686212368557
#>     Attrib V29    -0.5704778306182665
#>     Attrib V3    0.2824838342995962
#>     Attrib V30    0.3581908435942059
#>     Attrib V31    -0.31865258344589686
#>     Attrib V32    -0.35236346394002466
#>     Attrib V33    0.13159352144230954
#>     Attrib V34    -0.22628019687244194
#>     Attrib V35    -0.28806903469348005
#>     Attrib V36    -0.7274004594010935
#>     Attrib V37    -0.5132880038030291
#>     Attrib V38    0.3328764666687805
#>     Attrib V39    0.20170643861375925
#>     Attrib V4    0.22333321399552736
#>     Attrib V40    -0.13288593222549347
#>     Attrib V41    -0.18640781817666482
#>     Attrib V42    0.21268268160046017
#>     Attrib V43    0.30549178454741494
#>     Attrib V44    0.6091416054260703
#>     Attrib V45    0.34317834049511836
#>     Attrib V46    -0.09769031647163388
#>     Attrib V47    -0.4519363351105518
#>     Attrib V48    0.11580719982473066
#>     Attrib V49    0.507621949996243
#>     Attrib V5    -0.04282116213310782
#>     Attrib V50    -0.7704818809922509
#>     Attrib V51    -0.25953627292212295
#>     Attrib V52    -0.06628844364646604
#>     Attrib V53    0.3577493680580205
#>     Attrib V54    0.6084153964223596
#>     Attrib V55    -0.2126374112859524
#>     Attrib V56    0.51048290102416
#>     Attrib V57    0.2927993376487209
#>     Attrib V58    0.3931803735103333
#>     Attrib V59    0.8202023696360143
#>     Attrib V6    -0.12105300472919871
#>     Attrib V60    0.2931246959417615
#>     Attrib V7    0.07310420241942829
#>     Attrib V8    -0.22597662629792015
#>     Attrib V9    0.16091297184061873
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.07236363074341504
#>     Attrib V1    -0.05165006803413234
#>     Attrib V10    -0.46320681181136064
#>     Attrib V11    0.1936978186116823
#>     Attrib V12    0.1621078569139918
#>     Attrib V13    -0.4771879304007638
#>     Attrib V14    -0.2828498234543309
#>     Attrib V15    -0.045058197613259986
#>     Attrib V16    0.09961774152366872
#>     Attrib V17    0.2591472665987835
#>     Attrib V18    0.23123875269529817
#>     Attrib V19    0.10805019634660874
#>     Attrib V2    0.06708492967967883
#>     Attrib V20    0.25922315642633326
#>     Attrib V21    0.761931681730328
#>     Attrib V22    0.5801690388635726
#>     Attrib V23    -0.0018559617777394058
#>     Attrib V24    0.041628102754998786
#>     Attrib V25    -0.7033011050700392
#>     Attrib V26    -0.8282266907685523
#>     Attrib V27    -0.40550730272354063
#>     Attrib V28    -0.4467145260420901
#>     Attrib V29    -0.8167597840904198
#>     Attrib V3    0.31008480534640503
#>     Attrib V30    0.4658653896940325
#>     Attrib V31    -0.42882669371756826
#>     Attrib V32    -0.46116412399957524
#>     Attrib V33    0.15958149973873717
#>     Attrib V34    -0.2267829099988038
#>     Attrib V35    -0.16444302543257758
#>     Attrib V36    -0.718791696024193
#>     Attrib V37    -0.47134656351648996
#>     Attrib V38    0.5034167322423975
#>     Attrib V39    0.25237879018729
#>     Attrib V4    0.26508332854811495
#>     Attrib V40    -0.28088093278857496
#>     Attrib V41    -0.25447130277275165
#>     Attrib V42    0.14346175935614647
#>     Attrib V43    0.2852440655592311
#>     Attrib V44    0.7765433821087065
#>     Attrib V45    0.5621349396927188
#>     Attrib V46    -0.06851642221967283
#>     Attrib V47    -0.34359080950861637
#>     Attrib V48    0.2112776859850822
#>     Attrib V49    0.7239923237943142
#>     Attrib V5    -0.0799650776097509
#>     Attrib V50    -0.974954406754345
#>     Attrib V51    -0.1975111087474905
#>     Attrib V52    -0.007347413765684588
#>     Attrib V53    0.4050306072870573
#>     Attrib V54    0.7082682887481503
#>     Attrib V55    -0.3333609569272688
#>     Attrib V56    0.5764745978959657
#>     Attrib V57    0.1451697339671338
#>     Attrib V58    0.328868082445598
#>     Attrib V59    0.8037753718784936
#>     Attrib V6    -0.21568497398388514
#>     Attrib V60    0.2571063163992295
#>     Attrib V7    0.058267581076834454
#>     Attrib V8    -0.22466746042457336
#>     Attrib V9    0.3032716361109102
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.5015964678656939
#>     Attrib V1    0.671989631660879
#>     Attrib V10    -1.2188841519033766
#>     Attrib V11    -1.562208630133785
#>     Attrib V12    -1.7649333376233656
#>     Attrib V13    -0.6657018841195516
#>     Attrib V14    0.6062630791598771
#>     Attrib V15    1.0089120952294837
#>     Attrib V16    0.9743531974463501
#>     Attrib V17    1.1633569712030765
#>     Attrib V18    -0.01310601859982704
#>     Attrib V19    -0.19824271675113841
#>     Attrib V2    -0.05360511886359387
#>     Attrib V20    0.7558429358051056
#>     Attrib V21    0.07440012343195536
#>     Attrib V22    -0.8433968949831459
#>     Attrib V23    -0.47847802830765307
#>     Attrib V24    -1.0714989532370498
#>     Attrib V25    -1.1783047452398192
#>     Attrib V26    -1.0008469502125241
#>     Attrib V27    -0.7974059085724032
#>     Attrib V28    -0.7036556673296475
#>     Attrib V29    -0.032239200172908336
#>     Attrib V3    0.13135358162086752
#>     Attrib V30    -0.4236561434648179
#>     Attrib V31    0.4386549401159891
#>     Attrib V32    0.5250590013102224
#>     Attrib V33    -0.13554999126296569
#>     Attrib V34    -0.22411897395283623
#>     Attrib V35    -0.5902841745585238
#>     Attrib V36    0.688947248494358
#>     Attrib V37    0.284083676605672
#>     Attrib V38    0.11121624906968612
#>     Attrib V39    -0.12757175558208492
#>     Attrib V4    0.04213585621472286
#>     Attrib V40    -0.6333165083490837
#>     Attrib V41    -1.2014017918361541
#>     Attrib V42    0.6435762683440526
#>     Attrib V43    0.6368601395023133
#>     Attrib V44    -0.1828721558569896
#>     Attrib V45    -0.5049242035672815
#>     Attrib V46    -0.05887081632063882
#>     Attrib V47    -0.21085322038135887
#>     Attrib V48    -1.003888172348854
#>     Attrib V49    -1.7817112221801525
#>     Attrib V5    -0.7216645737936382
#>     Attrib V50    0.9628124093892907
#>     Attrib V51    -0.9432004032667285
#>     Attrib V52    -0.6948860953093028
#>     Attrib V53    -1.058949005007226
#>     Attrib V54    -0.17555651259973185
#>     Attrib V55    1.0293342906673557
#>     Attrib V56    0.1707048510292013
#>     Attrib V57    0.48777549755608596
#>     Attrib V58    -0.3141998876753962
#>     Attrib V59    0.21008059575650206
#>     Attrib V6    -0.5548749975690644
#>     Attrib V60    -0.334541134557909
#>     Attrib V7    0.11383927604185644
#>     Attrib V8    0.5028309917361184
#>     Attrib V9    -1.372126874207397
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.838822360284998
#>     Attrib V1    -0.41528479148047837
#>     Attrib V10    1.3396349078399585
#>     Attrib V11    1.7316466236660861
#>     Attrib V12    2.028591417259185
#>     Attrib V13    0.9004638961613612
#>     Attrib V14    -0.3323837835952994
#>     Attrib V15    -0.9618189333691798
#>     Attrib V16    -1.1522774440280603
#>     Attrib V17    -1.2653820243740945
#>     Attrib V18    0.03737214266272372
#>     Attrib V19    0.3217946571470232
#>     Attrib V2    0.19002247170764655
#>     Attrib V20    -0.5663195143423535
#>     Attrib V21    0.14877721666578378
#>     Attrib V22    1.0391086924425363
#>     Attrib V23    0.8141463637072813
#>     Attrib V24    1.0109477053661946
#>     Attrib V25    0.9892217568406309
#>     Attrib V26    1.218492951749732
#>     Attrib V27    1.1110748299870523
#>     Attrib V28    1.356762242242215
#>     Attrib V29    1.0258111553632254
#>     Attrib V3    -0.023555284913687545
#>     Attrib V30    0.792695979329891
#>     Attrib V31    -0.4989880784297331
#>     Attrib V32    -0.8202831564970308
#>     Attrib V33    -0.26523484277015047
#>     Attrib V34    0.1732735619515952
#>     Attrib V35    0.6640666036333007
#>     Attrib V36    -0.5988736919939007
#>     Attrib V37    -0.11578262250859703
#>     Attrib V38    -0.27003969530220806
#>     Attrib V39    0.544757557818041
#>     Attrib V4    -0.01189516909904411
#>     Attrib V40    1.2232265312265176
#>     Attrib V41    1.774955162513883
#>     Attrib V42    -0.552803900146928
#>     Attrib V43    -0.4887502065376189
#>     Attrib V44    0.21437091874333952
#>     Attrib V45    0.4052993150605925
#>     Attrib V46    0.00917376990033072
#>     Attrib V47    0.2643857563347086
#>     Attrib V48    0.997505447528434
#>     Attrib V49    1.9331566412966223
#>     Attrib V5    1.0051355450352317
#>     Attrib V50    -0.7910537980420862
#>     Attrib V51    1.1700245949236354
#>     Attrib V52    1.0619753102784726
#>     Attrib V53    1.4368763108868003
#>     Attrib V54    -0.45357940456805507
#>     Attrib V55    -1.4160785076394298
#>     Attrib V56    -0.472686533488883
#>     Attrib V57    -0.3019821838707043
#>     Attrib V58    0.20039696447005337
#>     Attrib V59    -0.00836722958081661
#>     Attrib V6    0.8594633393224183
#>     Attrib V60    0.3705177210010928
#>     Attrib V7    -0.338702541312038
#>     Attrib V8    -0.6789143038299368
#>     Attrib V9    1.3546176517010906
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.20647683806559583
#>     Attrib V1    0.08329739590537553
#>     Attrib V10    0.04008231510193651
#>     Attrib V11    -0.01655386740508389
#>     Attrib V12    0.014523099989012484
#>     Attrib V13    -0.004346193859529321
#>     Attrib V14    0.06728942820337358
#>     Attrib V15    0.025617799958101737
#>     Attrib V16    0.026588052499058774
#>     Attrib V17    0.05634229934042744
#>     Attrib V18    -0.010398791177814816
#>     Attrib V19    0.05609223825463368
#>     Attrib V2    0.10736421513418964
#>     Attrib V20    0.001743268722844084
#>     Attrib V21    0.0066171329294368725
#>     Attrib V22    -0.007455700849860556
#>     Attrib V23    -2.0593674471323792E-4
#>     Attrib V24    -0.038679913881022744
#>     Attrib V25    -0.01431067889411159
#>     Attrib V26    -0.06412628887572239
#>     Attrib V27    -0.02806140266456553
#>     Attrib V28    -0.02758434501129408
#>     Attrib V29    -0.03449087936747217
#>     Attrib V3    0.07578691721514721
#>     Attrib V30    -0.038816375636767486
#>     Attrib V31    -0.0049398324801853116
#>     Attrib V32    0.01865561480344352
#>     Attrib V33    0.0815060138305041
#>     Attrib V34    0.04381486832232002
#>     Attrib V35    0.12414694655973844
#>     Attrib V36    0.14192255282909685
#>     Attrib V37    0.14857820812254355
#>     Attrib V38    0.037658361575178864
#>     Attrib V39    0.05367031946771352
#>     Attrib V4    0.14252632696028983
#>     Attrib V40    0.05896223397404618
#>     Attrib V41    0.06602202926300854
#>     Attrib V42    0.08708177072924578
#>     Attrib V43    0.07477736156367003
#>     Attrib V44    0.046097626822533225
#>     Attrib V45    0.028781325618494474
#>     Attrib V46    0.045942870141665225
#>     Attrib V47    0.05892752927824118
#>     Attrib V48    0.08673272783206824
#>     Attrib V49    0.005770621173652803
#>     Attrib V5    0.055877347450774564
#>     Attrib V50    0.10883665183818753
#>     Attrib V51    0.04571823878708015
#>     Attrib V52    0.04155107851307503
#>     Attrib V53    0.029440388142214762
#>     Attrib V54    0.021318369620110366
#>     Attrib V55    0.053941008374150445
#>     Attrib V56    0.1003487629946153
#>     Attrib V57    0.12190051317317219
#>     Attrib V58    0.05692561531881943
#>     Attrib V59    0.057225112535510575
#>     Attrib V6    0.09558565683800672
#>     Attrib V60    0.11917743368095862
#>     Attrib V7    0.0038564389549961206
#>     Attrib V8    0.05783014115148036
#>     Attrib V9    0.030724290526821935
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.4741107379763049
#>     Attrib V1    -0.4116847464748492
#>     Attrib V10    0.9079742793589319
#>     Attrib V11    1.2286254763784143
#>     Attrib V12    1.3581703138381724
#>     Attrib V13    0.4340026392730581
#>     Attrib V14    -0.4911808200886631
#>     Attrib V15    -0.7743407720403735
#>     Attrib V16    -0.8285903469343624
#>     Attrib V17    -0.9061413486246473
#>     Attrib V18    0.051053468183768554
#>     Attrib V19    0.0787158417141566
#>     Attrib V2    0.11681517918992107
#>     Attrib V20    -0.6151194759563393
#>     Attrib V21    0.1690617969548737
#>     Attrib V22    0.8506654510304137
#>     Attrib V23    0.45329288548302016
#>     Attrib V24    0.8051918633317438
#>     Attrib V25    0.8028601412321513
#>     Attrib V26    0.8462925248043952
#>     Attrib V27    0.659329851027805
#>     Attrib V28    0.6228041021780091
#>     Attrib V29    0.16330018395763773
#>     Attrib V3    -0.07594805055786333
#>     Attrib V30    0.5366218637295003
#>     Attrib V31    -0.38964422525798564
#>     Attrib V32    -0.5544990421437227
#>     Attrib V33    -0.03548847251675074
#>     Attrib V34    0.06787402958857165
#>     Attrib V35    0.34717609749972894
#>     Attrib V36    -0.5556140126440734
#>     Attrib V37    -0.166301593596235
#>     Attrib V38    0.013223140729196859
#>     Attrib V39    0.22698407910337312
#>     Attrib V4    0.0749629371048102
#>     Attrib V40    0.4951767621105556
#>     Attrib V41    0.9436669629221957
#>     Attrib V42    -0.4713070554029805
#>     Attrib V43    -0.4651389818248398
#>     Attrib V44    0.2772691990768754
#>     Attrib V45    0.4462766002001434
#>     Attrib V46    0.022328980474560774
#>     Attrib V47    0.17209207561595669
#>     Attrib V48    0.8981984231256036
#>     Attrib V49    1.4514045632758978
#>     Attrib V5    0.60954919445232
#>     Attrib V50    -0.7564158178916096
#>     Attrib V51    0.7409870558955639
#>     Attrib V52    0.5662351162565831
#>     Attrib V53    0.8224735255976783
#>     Attrib V54    0.17769546252587035
#>     Attrib V55    -0.9836207204142876
#>     Attrib V56    -0.11773549790194195
#>     Attrib V57    -0.3640297408141909
#>     Attrib V58    0.13075425048800163
#>     Attrib V59    -0.07120156146090233
#>     Attrib V6    0.43927513330096407
#>     Attrib V60    0.2453938787405458
#>     Attrib V7    -0.19046219478306745
#>     Attrib V8    -0.492305076745071
#>     Attrib V9    1.1438972779709164
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.5339781115081759
#>     Attrib V1    0.44289027089687705
#>     Attrib V10    -0.8105204575384198
#>     Attrib V11    -1.2998213525593583
#>     Attrib V12    -1.4833742365883875
#>     Attrib V13    -0.2597824694414181
#>     Attrib V14    0.29793634112922557
#>     Attrib V15    0.6053530039102873
#>     Attrib V16    0.6291527656699502
#>     Attrib V17    0.8800362800398877
#>     Attrib V18    0.296124600959421
#>     Attrib V19    0.12175990244536075
#>     Attrib V2    -0.11813738762079076
#>     Attrib V20    0.7720059443317547
#>     Attrib V21    0.11000448421115572
#>     Attrib V22    -0.18520905900632287
#>     Attrib V23    0.26612183710435094
#>     Attrib V24    -0.26888121806773213
#>     Attrib V25    0.006720433328365444
#>     Attrib V26    -0.043311360486380276
#>     Attrib V27    -0.20883531628836774
#>     Attrib V28    -0.06847778484693172
#>     Attrib V29    0.4282377176475396
#>     Attrib V3    0.10165772362621063
#>     Attrib V30    -0.4443620121898013
#>     Attrib V31    0.09560670130966405
#>     Attrib V32    -0.10623869474726512
#>     Attrib V33    -0.6325484222072653
#>     Attrib V34    -0.22349512665944746
#>     Attrib V35    0.06926947092930355
#>     Attrib V36    1.3420165107865856
#>     Attrib V37    1.1206197510105813
#>     Attrib V38    0.4218107795609907
#>     Attrib V39    0.1587946422985406
#>     Attrib V4    -0.10235350281674067
#>     Attrib V40    -0.2270776009222892
#>     Attrib V41    -0.7330251796423072
#>     Attrib V42    0.30024646156224877
#>     Attrib V43    0.39453656568360357
#>     Attrib V44    0.033476825874184594
#>     Attrib V45    -0.11503335459270732
#>     Attrib V46    0.299685326764816
#>     Attrib V47    0.2980522584956856
#>     Attrib V48    -0.6743488180792966
#>     Attrib V49    -1.3893657279773526
#>     Attrib V5    -0.35473216673164076
#>     Attrib V50    1.134430166926153
#>     Attrib V51    -0.408368862097345
#>     Attrib V52    -0.28343970860736667
#>     Attrib V53    -0.6071368147437747
#>     Attrib V54    -0.2236561279672087
#>     Attrib V55    0.5097420681761995
#>     Attrib V56    -0.001578342163816553
#>     Attrib V57    0.11109582267488169
#>     Attrib V58    -0.43267592546547146
#>     Attrib V59    -0.20229522775696662
#>     Attrib V6    -0.1638249440151338
#>     Attrib V60    -0.18749465893721637
#>     Attrib V7    0.167541344648222
#>     Attrib V8    0.13873809448816632
#>     Attrib V9    -1.1150032757980652
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.0669754222806149
#>     Attrib V1    -0.05178968805858748
#>     Attrib V10    -0.06885120901905806
#>     Attrib V11    0.17895431420238386
#>     Attrib V12    0.17254062489399613
#>     Attrib V13    -0.05358000247949036
#>     Attrib V14    -0.0019646366771755453
#>     Attrib V15    -0.02957016889843013
#>     Attrib V16    -0.036058121946992185
#>     Attrib V17    -0.0107338806403242
#>     Attrib V18    0.06715453642363678
#>     Attrib V19    0.017713993839562618
#>     Attrib V2    0.06032621930854664
#>     Attrib V20    0.07390837314320813
#>     Attrib V21    0.207626371459981
#>     Attrib V22    0.18641368121907864
#>     Attrib V23    -0.037073030584441155
#>     Attrib V24    0.08654843580102757
#>     Attrib V25    -0.09162280326069146
#>     Attrib V26    -0.23255242991994088
#>     Attrib V27    -0.08857344113394816
#>     Attrib V28    -0.12466323341011379
#>     Attrib V29    -0.1612988847115678
#>     Attrib V3    0.1655991351933082
#>     Attrib V30    0.08986174514326614
#>     Attrib V31    -0.08793597786140138
#>     Attrib V32    -0.08664838323514003
#>     Attrib V33    0.06860569847597975
#>     Attrib V34    -0.03428851216888733
#>     Attrib V35    -0.007357814224124195
#>     Attrib V36    -0.22188531247985038
#>     Attrib V37    -0.10341796200000004
#>     Attrib V38    0.15805526366298828
#>     Attrib V39    0.09000960753194794
#>     Attrib V4    0.10038664336314863
#>     Attrib V40    -0.03272970426595076
#>     Attrib V41    0.022334865938932504
#>     Attrib V42    -0.03357306967239311
#>     Attrib V43    0.07098467202508019
#>     Attrib V44    0.1393462867571514
#>     Attrib V45    0.20235833517864982
#>     Attrib V46    -0.005412361627951163
#>     Attrib V47    -0.05182885908866992
#>     Attrib V48    0.10631185506126853
#>     Attrib V49    0.20905885618735542
#>     Attrib V5    0.037101441287131824
#>     Attrib V50    -0.2600102985834182
#>     Attrib V51    0.04879957549476316
#>     Attrib V52    0.0981875338411734
#>     Attrib V53    0.14785875521366562
#>     Attrib V54    0.18367922800900363
#>     Attrib V55    -0.014412547751346939
#>     Attrib V56    0.19204336379305537
#>     Attrib V57    0.09836926100204775
#>     Attrib V58    0.12324383611344503
#>     Attrib V59    0.19976643274207642
#>     Attrib V6    0.005944955538825955
#>     Attrib V60    0.12199482149054547
#>     Attrib V7    -0.02424789533567773
#>     Attrib V8    -0.045807916278693864
#>     Attrib V9    0.17887909892651813
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.17059237876876607
#>     Attrib V1    0.13259148204895457
#>     Attrib V10    0.11001758162656629
#>     Attrib V11    -0.05465651559973642
#>     Attrib V12    -0.053037551045875646
#>     Attrib V13    0.08480763195125293
#>     Attrib V14    0.08120543765977346
#>     Attrib V15    0.12297867456066786
#>     Attrib V16    0.12573542089496614
#>     Attrib V17    0.1665783543636997
#>     Attrib V18    0.0862545517083482
#>     Attrib V19    -0.03235220936802639
#>     Attrib V2    0.10205859779381304
#>     Attrib V20    -0.048728035816870845
#>     Attrib V21    -0.010626200051012679
#>     Attrib V22    -0.01798240222028157
#>     Attrib V23    -0.008979055063050965
#>     Attrib V24    -0.12144247761636669
#>     Attrib V25    0.05619672757156458
#>     Attrib V26    0.051293038398408056
#>     Attrib V27    -0.0814912201105167
#>     Attrib V28    -0.08939416649748472
#>     Attrib V29    -0.07546370626231262
#>     Attrib V3    0.0320514696124756
#>     Attrib V30    -0.09070734479847417
#>     Attrib V31    0.14839935611293537
#>     Attrib V32    0.13612844890545642
#>     Attrib V33    0.08362396837061525
#>     Attrib V34    0.10569660532402798
#>     Attrib V35    0.15119018986784888
#>     Attrib V36    0.2436759336097512
#>     Attrib V37    0.2708645280729173
#>     Attrib V38    -0.021300851086580582
#>     Attrib V39    0.06635614183042614
#>     Attrib V4    0.09907208864000515
#>     Attrib V40    0.16996967135968138
#>     Attrib V41    0.17994710898785277
#>     Attrib V42    0.23821623459302416
#>     Attrib V43    0.12397581229994173
#>     Attrib V44    -0.03843451981944309
#>     Attrib V45    -0.021870719363224007
#>     Attrib V46    0.09701793193617418
#>     Attrib V47    0.11446614410743589
#>     Attrib V48    0.036136329522855434
#>     Attrib V49    -0.1214046574585626
#>     Attrib V5    0.030753286107393064
#>     Attrib V50    0.2351717216947643
#>     Attrib V51    0.01636408868855275
#>     Attrib V52    -0.013381785844209711
#>     Attrib V53    -0.06690664052314349
#>     Attrib V54    -0.038770552977185
#>     Attrib V55    0.05073665330626407
#>     Attrib V56    0.05675129380510936
#>     Attrib V57    0.05520793325497022
#>     Attrib V58    -0.010624454548244611
#>     Attrib V59    -0.01536940597827015
#>     Attrib V6    0.06335966142642352
#>     Attrib V60    0.05962741536240163
#>     Attrib V7    -0.011858372105981056
#>     Attrib V8    0.047782506818594216
#>     Attrib V9    -0.05610990608940073
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.019220364707600635
#>     Attrib V1    -0.033735663279019876
#>     Attrib V10    -0.35319491616975707
#>     Attrib V11    0.15171529853036916
#>     Attrib V12    0.048023422893119345
#>     Attrib V13    -0.378071554184259
#>     Attrib V14    -0.21600849463612562
#>     Attrib V15    -0.0016270285101686452
#>     Attrib V16    0.1329447079592783
#>     Attrib V17    0.23111918817176852
#>     Attrib V18    0.2221796970724369
#>     Attrib V19    0.09839666098026786
#>     Attrib V2    0.15045699342201133
#>     Attrib V20    0.2622578491095428
#>     Attrib V21    0.5761271616028788
#>     Attrib V22    0.4612198262074476
#>     Attrib V23    0.001061481071421014
#>     Attrib V24    0.10883568232426515
#>     Attrib V25    -0.6001998512523309
#>     Attrib V26    -0.7372237124054491
#>     Attrib V27    -0.3984476041555238
#>     Attrib V28    -0.46463899128187297
#>     Attrib V29    -0.7598521983680159
#>     Attrib V3    0.23017762179560214
#>     Attrib V30    0.3234385952765677
#>     Attrib V31    -0.3010216262759528
#>     Attrib V32    -0.3365670443002227
#>     Attrib V33    0.22078956959154936
#>     Attrib V34    -0.1065878458954883
#>     Attrib V35    -0.12981044650630674
#>     Attrib V36    -0.6496737469366303
#>     Attrib V37    -0.4504086853400739
#>     Attrib V38    0.4339202467262816
#>     Attrib V39    0.16820691708982982
#>     Attrib V4    0.22395986605374218
#>     Attrib V40    -0.1931746343646048
#>     Attrib V41    -0.19645693769748332
#>     Attrib V42    0.12476706484153764
#>     Attrib V43    0.21271723299090278
#>     Attrib V44    0.6266843622693896
#>     Attrib V45    0.3836355008293394
#>     Attrib V46    -0.08130443390794417
#>     Attrib V47    -0.3331374597371035
#>     Attrib V48    0.19045960930200911
#>     Attrib V49    0.5663221937013727
#>     Attrib V5    -0.06002186675373325
#>     Attrib V50    -0.8182042195177954
#>     Attrib V51    -0.1621202902778798
#>     Attrib V52    -0.025836620620899926
#>     Attrib V53    0.3365609772885562
#>     Attrib V54    0.6344798709946864
#>     Attrib V55    -0.20865259546916487
#>     Attrib V56    0.41688193258337725
#>     Attrib V57    0.16767609669819097
#>     Attrib V58    0.26874135255397746
#>     Attrib V59    0.6419303214041683
#>     Attrib V6    -0.14149825957722018
#>     Attrib V60    0.23306490131034016
#>     Attrib V7    0.07235103465667388
#>     Attrib V8    -0.1509138945901477
#>     Attrib V9    0.3127162195936965
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.030476047620878327
#>     Attrib V1    4.166575266472225E-4
#>     Attrib V10    -0.24578952671758006
#>     Attrib V11    0.08907592993450664
#>     Attrib V12    0.08185932689748436
#>     Attrib V13    -0.2301199898748192
#>     Attrib V14    -0.06448695563969313
#>     Attrib V15    0.0069182761755005795
#>     Attrib V16    0.08243876688520642
#>     Attrib V17    0.0726377995867531
#>     Attrib V18    0.21734934002097492
#>     Attrib V19    0.06268008199527154
#>     Attrib V2    0.07263150236744975
#>     Attrib V20    0.13673950240966254
#>     Attrib V21    0.3937004333376619
#>     Attrib V22    0.2612568746212656
#>     Attrib V23    -0.021352650197592825
#>     Attrib V24    0.011392129935417435
#>     Attrib V25    -0.39520891571144534
#>     Attrib V26    -0.48831757913425206
#>     Attrib V27    -0.21971841265217204
#>     Attrib V28    -0.17568255421008144
#>     Attrib V29    -0.34264969731943484
#>     Attrib V3    0.1926379287646774
#>     Attrib V30    0.27627084446218253
#>     Attrib V31    -0.22838908365620364
#>     Attrib V32    -0.22689052005312849
#>     Attrib V33    0.12246092694948463
#>     Attrib V34    -0.0811830598038946
#>     Attrib V35    -0.06016695090487881
#>     Attrib V36    -0.30556636275522514
#>     Attrib V37    -0.22434114640282923
#>     Attrib V38    0.2607745240973489
#>     Attrib V39    0.17109865609952957
#>     Attrib V4    0.11930546489667422
#>     Attrib V40    -0.10713810491415772
#>     Attrib V41    -0.09861300570865876
#>     Attrib V42    0.06612832575112036
#>     Attrib V43    0.055152730048195805
#>     Attrib V44    0.39032746260010887
#>     Attrib V45    0.3138147258346947
#>     Attrib V46    -0.037655632255772106
#>     Attrib V47    -0.19017940465640898
#>     Attrib V48    0.10080110654351665
#>     Attrib V49    0.40433303423329
#>     Attrib V5    0.02212567939420427
#>     Attrib V50    -0.50904494193218
#>     Attrib V51    -0.04033085078233178
#>     Attrib V52    0.02620574717879095
#>     Attrib V53    0.21282803132212064
#>     Attrib V54    0.2964239993381526
#>     Attrib V55    -0.16189837532331075
#>     Attrib V56    0.24853984951584943
#>     Attrib V57    0.11087301921798419
#>     Attrib V58    0.24076059855311477
#>     Attrib V59    0.36934227744541054
#>     Attrib V6    -0.04837954526689844
#>     Attrib V60    0.12402490757525793
#>     Attrib V7    0.005858619336209601
#>     Attrib V8    -0.10731872609698674
#>     Attrib V9    0.20682838027901365
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
