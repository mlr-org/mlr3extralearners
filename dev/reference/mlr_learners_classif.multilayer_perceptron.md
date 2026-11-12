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
#>     Threshold    0.06142742240197029
#>     Node 2    1.8380516055153684
#>     Node 3    1.1132867756453615
#>     Node 4    0.649433598179556
#>     Node 5    -1.7844774239747878
#>     Node 6    1.692016924443215
#>     Node 7    3.241050032441949
#>     Node 8    0.6831714281710625
#>     Node 9    3.938270044270126
#>     Node 10    -0.9581977420698577
#>     Node 11    1.2035925511022159
#>     Node 12    1.2371268698090099
#>     Node 13    0.9104325386227995
#>     Node 14    1.4740817825249073
#>     Node 15    -2.0103344224183606
#>     Node 16    0.11015792180685892
#>     Node 17    0.19179897202840313
#>     Node 18    -0.20391303631068178
#>     Node 19    1.801809641754256
#>     Node 20    2.339204781391017
#>     Node 21    -2.3325514225741477
#>     Node 22    0.9366977074854199
#>     Node 23    1.9914026349750238
#>     Node 24    -1.6974651828267258
#>     Node 25    3.1069898691829905
#>     Node 26    -0.11326927401822373
#>     Node 27    1.4083299973651113
#>     Node 28    -3.7515526006718227
#>     Node 29    1.073737482085734
#>     Node 30    0.5075878178913519
#>     Node 31    1.742915367079551
#>     Node 32    0.82245449615007
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.003974623626737966
#>     Node 2    -1.8694226512799272
#>     Node 3    -1.1003291230882994
#>     Node 4    -0.6151772623883677
#>     Node 5    1.786948110340517
#>     Node 6    -1.6675147093646283
#>     Node 7    -3.259992966144594
#>     Node 8    -0.7251939492220865
#>     Node 9    -3.9403204747290617
#>     Node 10    0.8993145713963752
#>     Node 11    -1.1605855648252146
#>     Node 12    -1.3120545448871495
#>     Node 13    -0.8601651840519848
#>     Node 14    -1.409508159324265
#>     Node 15    1.9950193883653369
#>     Node 16    -0.12855448721889667
#>     Node 17    -0.1612425102710812
#>     Node 18    0.2524536246727249
#>     Node 19    -1.8062375540591458
#>     Node 20    -2.334176541992107
#>     Node 21    2.3718547505978727
#>     Node 22    -0.998907348479087
#>     Node 23    -2.023389738950779
#>     Node 24    1.68006393926407
#>     Node 25    -3.1159577382365673
#>     Node 26    0.03206058915240688
#>     Node 27    -1.4454569242677602
#>     Node 28    3.7310757260321146
#>     Node 29    -1.103702342785365
#>     Node 30    -0.4376650395540275
#>     Node 31    -1.68977390407606
#>     Node 32    -0.8466529811145643
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.19150230830253434
#>     Attrib V1    0.4428948368760852
#>     Attrib V10    0.22474717177551756
#>     Attrib V11    0.2779792564598049
#>     Attrib V12    -0.061198594830307325
#>     Attrib V13    0.14095718401209306
#>     Attrib V14    -0.18177875426053197
#>     Attrib V15    -0.01781531917374975
#>     Attrib V16    -0.15565727248992361
#>     Attrib V17    -0.17146032089182062
#>     Attrib V18    0.34446927302787367
#>     Attrib V19    0.3210433523047768
#>     Attrib V2    -0.17311120701569796
#>     Attrib V20    0.5303099326162083
#>     Attrib V21    0.7339350508973701
#>     Attrib V22    0.9011839947656505
#>     Attrib V23    0.47038625862219485
#>     Attrib V24    0.10318383254101654
#>     Attrib V25    -0.14053587802391615
#>     Attrib V26    -0.57520756973412
#>     Attrib V27    -0.5017700241553213
#>     Attrib V28    0.11857632372576903
#>     Attrib V29    -0.15776208331822536
#>     Attrib V3    -0.18623997758130373
#>     Attrib V30    -0.2910779136771962
#>     Attrib V31    -1.2272543198777017
#>     Attrib V32    0.340997543896921
#>     Attrib V33    0.6765972603843168
#>     Attrib V34    -0.3138602775041303
#>     Attrib V35    0.09994630086301991
#>     Attrib V36    -0.11885258638598564
#>     Attrib V37    -0.8117324725103348
#>     Attrib V38    -0.20940280698392869
#>     Attrib V39    0.16026976750054667
#>     Attrib V4    0.10244743150094172
#>     Attrib V40    -0.24636065049515368
#>     Attrib V41    -0.07797909781361344
#>     Attrib V42    0.08262595620876242
#>     Attrib V43    0.6817387258019681
#>     Attrib V44    0.7090462768461453
#>     Attrib V45    0.4083631813297227
#>     Attrib V46    -0.10972406497906909
#>     Attrib V47    0.13809669492921273
#>     Attrib V48    0.483557365382833
#>     Attrib V49    0.14192211776303168
#>     Attrib V5    0.09098265224917929
#>     Attrib V50    -0.04615522184036338
#>     Attrib V51    0.3559844665801809
#>     Attrib V52    0.13312227976175722
#>     Attrib V53    -0.07303324948226397
#>     Attrib V54    0.6313131607108867
#>     Attrib V55    -0.6034726552321784
#>     Attrib V56    0.428451021072867
#>     Attrib V57    -0.11284516133104515
#>     Attrib V58    0.5466453484874078
#>     Attrib V59    0.38943478004613913
#>     Attrib V6    -0.3672678351653834
#>     Attrib V60    -0.32547416074870184
#>     Attrib V7    -0.5516429739846562
#>     Attrib V8    0.010616409625803156
#>     Attrib V9    0.4235659591192248
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.11910140110797944
#>     Attrib V1    0.4064963051450477
#>     Attrib V10    0.03268330011778295
#>     Attrib V11    0.06301260896013557
#>     Attrib V12    -0.0547518625720494
#>     Attrib V13    0.1188512643409223
#>     Attrib V14    0.0999897518889865
#>     Attrib V15    0.20269119471883368
#>     Attrib V16    -0.02866588474316295
#>     Attrib V17    -0.03729690329337152
#>     Attrib V18    0.19291442444790413
#>     Attrib V19    0.26203240053165316
#>     Attrib V2    0.13040267896927052
#>     Attrib V20    0.3554260229147223
#>     Attrib V21    0.3298029134727161
#>     Attrib V22    0.3533836980287488
#>     Attrib V23    0.07778401954687195
#>     Attrib V24    -0.09858678719873967
#>     Attrib V25    -0.2352692204682948
#>     Attrib V26    -0.5202909085023925
#>     Attrib V27    -0.47221343669458543
#>     Attrib V28    -0.10413249323710935
#>     Attrib V29    -0.11532918988299126
#>     Attrib V3    0.11216270796745792
#>     Attrib V30    -0.09879303350845235
#>     Attrib V31    -0.6291722761385732
#>     Attrib V32    0.04848832618754116
#>     Attrib V33    0.22691618798026103
#>     Attrib V34    -0.3122895918655415
#>     Attrib V35    -0.03471083786235231
#>     Attrib V36    -0.08686841314952029
#>     Attrib V37    -0.3909719952148242
#>     Attrib V38    -0.12193782626406331
#>     Attrib V39    0.12398191419140493
#>     Attrib V4    0.24753442208813342
#>     Attrib V40    -0.13804260464204385
#>     Attrib V41    -0.08611584724037419
#>     Attrib V42    0.028152938934114403
#>     Attrib V43    0.23133409183130108
#>     Attrib V44    0.25415045726779284
#>     Attrib V45    0.1667561914698733
#>     Attrib V46    -0.11740319170970517
#>     Attrib V47    0.04241574836902594
#>     Attrib V48    0.18011532486597198
#>     Attrib V49    0.012076769382074897
#>     Attrib V5    0.2041752495069541
#>     Attrib V50    -0.016022318327364907
#>     Attrib V51    0.09930128135539217
#>     Attrib V52    0.13320938154053694
#>     Attrib V53    -0.028099926285968444
#>     Attrib V54    0.4369072537908108
#>     Attrib V55    -0.0673548277142944
#>     Attrib V56    0.37242205445739857
#>     Attrib V57    0.17725210014807652
#>     Attrib V58    0.3539247682027085
#>     Attrib V59    0.32182380895496226
#>     Attrib V6    -0.11585340014499754
#>     Attrib V60    0.047400340466810964
#>     Attrib V7    -0.2202581275454731
#>     Attrib V8    0.033440775044330254
#>     Attrib V9    0.12135459082252692
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.004552365561258613
#>     Attrib V1    0.22396026601716298
#>     Attrib V10    0.09476746260978841
#>     Attrib V11    0.07170110714951193
#>     Attrib V12    -0.0052461591889021
#>     Attrib V13    0.08861340701990204
#>     Attrib V14    0.019088628790112406
#>     Attrib V15    0.04422474411112265
#>     Attrib V16    -0.0673476374697318
#>     Attrib V17    -0.09779429629216646
#>     Attrib V18    -0.008667067171264834
#>     Attrib V19    -0.008584298817149602
#>     Attrib V2    0.09133413897716977
#>     Attrib V20    0.07641680954884646
#>     Attrib V21    0.10134184205172614
#>     Attrib V22    0.009953367890435232
#>     Attrib V23    -0.09794101967235394
#>     Attrib V24    -0.17718801370948248
#>     Attrib V25    -0.20586495982340658
#>     Attrib V26    -0.24442195521684912
#>     Attrib V27    -0.18390640969673405
#>     Attrib V28    0.1410217202229044
#>     Attrib V29    0.12523128747754447
#>     Attrib V3    0.12678228552627602
#>     Attrib V30    0.03829476115373622
#>     Attrib V31    -0.25800690856885455
#>     Attrib V32    0.07617624010761603
#>     Attrib V33    0.18425168592647184
#>     Attrib V34    -0.02384885685580889
#>     Attrib V35    0.0818100827279691
#>     Attrib V36    -0.047487764371199954
#>     Attrib V37    -0.1718215368131398
#>     Attrib V38    -0.06506862229746252
#>     Attrib V39    0.10543424740353009
#>     Attrib V4    0.11952591736905789
#>     Attrib V40    0.006437871236198058
#>     Attrib V41    -0.01725906194395131
#>     Attrib V42    -0.005327021530130876
#>     Attrib V43    0.05811057113125027
#>     Attrib V44    0.1399304233768469
#>     Attrib V45    0.1947151280074534
#>     Attrib V46    -0.003950928946380681
#>     Attrib V47    0.06695981008499198
#>     Attrib V48    0.2424973844950866
#>     Attrib V49    0.11546938382369365
#>     Attrib V5    0.09352829509980808
#>     Attrib V50    0.059430385322959016
#>     Attrib V51    0.15566432098953079
#>     Attrib V52    0.1131361657647005
#>     Attrib V53    0.03857261151365674
#>     Attrib V54    0.07123832316375339
#>     Attrib V55    -0.10957411954494184
#>     Attrib V56    0.14534478189630579
#>     Attrib V57    0.10727869577672486
#>     Attrib V58    0.09177728967817916
#>     Attrib V59    0.10282866577963572
#>     Attrib V6    -0.09427174101984633
#>     Attrib V60    -0.07472581743916068
#>     Attrib V7    -0.16196531600753553
#>     Attrib V8    -0.08003359253309578
#>     Attrib V9    0.14694613187208067
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.3403378632152402
#>     Attrib V1    -0.40477236996400434
#>     Attrib V10    -0.22261130573964524
#>     Attrib V11    -0.29236991532276785
#>     Attrib V12    -0.10223791767993703
#>     Attrib V13    -0.23841855554866023
#>     Attrib V14    0.23080121662060724
#>     Attrib V15    0.09510921048871675
#>     Attrib V16    0.1975452143872694
#>     Attrib V17    0.26647066109250406
#>     Attrib V18    -0.30170413381951255
#>     Attrib V19    -0.3343717466893046
#>     Attrib V2    0.20618755528032884
#>     Attrib V20    -0.5220567559531808
#>     Attrib V21    -0.713829969386301
#>     Attrib V22    -0.9721999830431031
#>     Attrib V23    -0.4243774835486239
#>     Attrib V24    -0.06434809170181038
#>     Attrib V25    0.23924543132336576
#>     Attrib V26    0.5498549960638176
#>     Attrib V27    0.40321789462193
#>     Attrib V28    -0.29742561164521025
#>     Attrib V29    0.004815382798926749
#>     Attrib V3    0.20961148214944939
#>     Attrib V30    0.29484619765595066
#>     Attrib V31    1.2932691558689637
#>     Attrib V32    -0.2075677120634628
#>     Attrib V33    -0.582682075322869
#>     Attrib V34    0.3315039639978379
#>     Attrib V35    -0.13198778426201588
#>     Attrib V36    0.11273749599800068
#>     Attrib V37    0.7494898738852199
#>     Attrib V38    0.1263363106701405
#>     Attrib V39    -0.24973886671309276
#>     Attrib V4    -0.18580218097501466
#>     Attrib V40    0.2603095642760102
#>     Attrib V41    0.011177245872278443
#>     Attrib V42    -0.02602394971249364
#>     Attrib V43    -0.7157492530431439
#>     Attrib V44    -0.7479682084239684
#>     Attrib V45    -0.5429742191643319
#>     Attrib V46    -0.005031022883875042
#>     Attrib V47    -0.18295701874923898
#>     Attrib V48    -0.49535125895890175
#>     Attrib V49    -0.21563284485861015
#>     Attrib V5    -0.06536392025804942
#>     Attrib V50    0.11709134700206215
#>     Attrib V51    -0.34155643266306707
#>     Attrib V52    -0.1617678970612438
#>     Attrib V53    -0.0036179070815590387
#>     Attrib V54    -0.4664886350532431
#>     Attrib V55    0.7488204829215928
#>     Attrib V56    -0.38582369782769227
#>     Attrib V57    0.14620713212821962
#>     Attrib V58    -0.5106607861240339
#>     Attrib V59    -0.3211154497614444
#>     Attrib V6    0.32355287412618006
#>     Attrib V60    0.3529308822933331
#>     Attrib V7    0.6587958488903666
#>     Attrib V8    0.09794195357778014
#>     Attrib V9    -0.46935839583102396
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.2675480307705739
#>     Attrib V1    0.621751294095047
#>     Attrib V10    -0.03601248928520151
#>     Attrib V11    0.07197508226137751
#>     Attrib V12    -0.24540701603060694
#>     Attrib V13    -0.0016019099656919028
#>     Attrib V14    0.051861568534726586
#>     Attrib V15    0.2120764934582014
#>     Attrib V16    0.03246026674851649
#>     Attrib V17    -0.07998217313251925
#>     Attrib V18    0.325864556838598
#>     Attrib V19    0.3142473062722356
#>     Attrib V2    0.08221695799261698
#>     Attrib V20    0.5514840116498382
#>     Attrib V21    0.630654780166465
#>     Attrib V22    0.5532925157611727
#>     Attrib V23    0.18047786920043055
#>     Attrib V24    -0.042844678457859095
#>     Attrib V25    -0.3368425831653983
#>     Attrib V26    -0.7887173595943171
#>     Attrib V27    -0.6861589268675161
#>     Attrib V28    -0.18569711922780163
#>     Attrib V29    -0.08467565443238938
#>     Attrib V3    0.06905631203883522
#>     Attrib V30    -0.22370036657249562
#>     Attrib V31    -1.013877767302265
#>     Attrib V32    0.07351063522293684
#>     Attrib V33    0.3571407358601255
#>     Attrib V34    -0.48886049478894406
#>     Attrib V35    -0.10153895811606357
#>     Attrib V36    -0.15555663101658965
#>     Attrib V37    -0.6240925364509342
#>     Attrib V38    -0.20973049123991208
#>     Attrib V39    0.07714338393003993
#>     Attrib V4    0.32649581443429654
#>     Attrib V40    -0.3272243105615478
#>     Attrib V41    -0.12492599342441642
#>     Attrib V42    0.14371770520057883
#>     Attrib V43    0.43149186769589887
#>     Attrib V44    0.3966992022208345
#>     Attrib V45    0.32384050120933916
#>     Attrib V46    -0.10809872697054387
#>     Attrib V47    0.01176750435938567
#>     Attrib V48    0.2631000122898979
#>     Attrib V49    0.0793956506406159
#>     Attrib V5    0.285461104037234
#>     Attrib V50    0.02330645776871064
#>     Attrib V51    0.17668722302319925
#>     Attrib V52    0.09173640896761084
#>     Attrib V53    0.03167628303189251
#>     Attrib V54    0.5859707614534768
#>     Attrib V55    -0.2830476221852484
#>     Attrib V56    0.4053036401302637
#>     Attrib V57    0.18650352572971024
#>     Attrib V58    0.5751237627802183
#>     Attrib V59    0.4696252611242894
#>     Attrib V6    -0.1172716208699965
#>     Attrib V60    0.11083864474939356
#>     Attrib V7    -0.2431594827184072
#>     Attrib V8    0.12328200408637335
#>     Attrib V9    0.30377905489381646
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.8193444490824675
#>     Attrib V1    0.5012655088542224
#>     Attrib V10    0.9172140114262658
#>     Attrib V11    0.8366102547870398
#>     Attrib V12    1.4968065480377357
#>     Attrib V13    1.0779015102719236
#>     Attrib V14    -0.3293408536566469
#>     Attrib V15    -0.7547746055497035
#>     Attrib V16    -0.4649888423034816
#>     Attrib V17    -0.5919701432272584
#>     Attrib V18    -0.06441573262089845
#>     Attrib V19    -0.29314703562846905
#>     Attrib V2    0.5734130811344665
#>     Attrib V20    -0.3865885261798042
#>     Attrib V21    0.1405650769345275
#>     Attrib V22    0.47415668899805175
#>     Attrib V23    0.3381737450811985
#>     Attrib V24    0.20926585661880676
#>     Attrib V25    0.2030079454641678
#>     Attrib V26    0.4944311640829975
#>     Attrib V27    1.0837983596385836
#>     Attrib V28    1.7800215823063477
#>     Attrib V29    1.0829736742380909
#>     Attrib V3    0.5119967882832437
#>     Attrib V30    0.26601392349903047
#>     Attrib V31    -0.5951729068546735
#>     Attrib V32    0.13291600687696323
#>     Attrib V33    -0.1680109048454943
#>     Attrib V34    -0.29207249806282487
#>     Attrib V35    0.0412728356708273
#>     Attrib V36    -0.5648501838964796
#>     Attrib V37    -0.39550951332392137
#>     Attrib V38    -0.3220793758514437
#>     Attrib V39    0.25268858326428645
#>     Attrib V4    0.385620163272645
#>     Attrib V40    0.6294983568540308
#>     Attrib V41    0.9169278344925528
#>     Attrib V42    -0.26738234315571846
#>     Attrib V43    -0.03501441450179104
#>     Attrib V44    0.380206970473754
#>     Attrib V45    0.22515937851666531
#>     Attrib V46    0.31533477609180005
#>     Attrib V47    0.5657568454302205
#>     Attrib V48    1.0236571425034862
#>     Attrib V49    0.5257584369309719
#>     Attrib V5    -0.012705652527642344
#>     Attrib V50    0.013055977355179825
#>     Attrib V51    0.607436211584538
#>     Attrib V52    0.8401008911009886
#>     Attrib V53    0.5901471513150967
#>     Attrib V54    -0.08623330346314408
#>     Attrib V55    -1.243646843860149
#>     Attrib V56    -0.46376536296192183
#>     Attrib V57    -0.2288756566736266
#>     Attrib V58    -0.011555615524092828
#>     Attrib V59    0.23895706891726462
#>     Attrib V6    0.49284163910603235
#>     Attrib V60    -0.25333055662952336
#>     Attrib V7    -0.45895880505709785
#>     Attrib V8    -0.5828485454558653
#>     Attrib V9    0.6079961947269698
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.08712935426489873
#>     Attrib V1    0.2943244325860627
#>     Attrib V10    0.181868653992297
#>     Attrib V11    0.1520881545185484
#>     Attrib V12    0.01376617254849883
#>     Attrib V13    0.07571297911774463
#>     Attrib V14    -0.09453303369086713
#>     Attrib V15    -0.05876767847320692
#>     Attrib V16    -0.04787512599271859
#>     Attrib V17    -0.1476986421452213
#>     Attrib V18    -0.08034517564362462
#>     Attrib V19    -0.049789579556005256
#>     Attrib V2    0.17332728533350694
#>     Attrib V20    -0.0209276039742696
#>     Attrib V21    0.0064448609969531764
#>     Attrib V22    -0.047501700640812834
#>     Attrib V23    -0.1500675989184937
#>     Attrib V24    -0.12535091742603324
#>     Attrib V25    -0.1384596841946094
#>     Attrib V26    -0.16485067405385814
#>     Attrib V27    -0.07393790513358958
#>     Attrib V28    0.19380553781441656
#>     Attrib V29    0.1450620044031804
#>     Attrib V3    0.1336232031132599
#>     Attrib V30    0.09916652669621404
#>     Attrib V31    -0.23781244858900763
#>     Attrib V32    0.09737881947224225
#>     Attrib V33    0.1727647153730852
#>     Attrib V34    -0.030546238719128718
#>     Attrib V35    0.0953368497950274
#>     Attrib V36    0.021289664043869064
#>     Attrib V37    -0.14010970452217028
#>     Attrib V38    0.0300463692905556
#>     Attrib V39    0.09708220268183025
#>     Attrib V4    0.20106264445600586
#>     Attrib V40    -0.0019609687077399613
#>     Attrib V41    0.0020811089841359627
#>     Attrib V42    -0.1157117540896522
#>     Attrib V43    0.048143042595872154
#>     Attrib V44    0.18029941633616978
#>     Attrib V45    0.20988642772085875
#>     Attrib V46    0.09021859129167613
#>     Attrib V47    0.13946486313553166
#>     Attrib V48    0.3221561907858668
#>     Attrib V49    0.15895419246289785
#>     Attrib V5    0.042676868173523966
#>     Attrib V50    0.04549250082745059
#>     Attrib V51    0.12455665013990558
#>     Attrib V52    0.1312313628355354
#>     Attrib V53    0.061304162941249726
#>     Attrib V54    0.11165660233642996
#>     Attrib V55    -0.1696673208825173
#>     Attrib V56    0.02192768124897292
#>     Attrib V57    0.15328222636342026
#>     Attrib V58    0.056790270286846314
#>     Attrib V59    0.10409389364737244
#>     Attrib V6    -0.09174599090791828
#>     Attrib V60    -0.014023568172571882
#>     Attrib V7    -0.13210730289908687
#>     Attrib V8    -0.08163284424721191
#>     Attrib V9    0.17024821930715114
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.5002957191498785
#>     Attrib V1    -0.08030509399552065
#>     Attrib V10    1.384823069666886
#>     Attrib V11    1.1078808792529222
#>     Attrib V12    1.9461412911791893
#>     Attrib V13    1.2013238087516256
#>     Attrib V14    -1.0166806325196402
#>     Attrib V15    -1.1653197432377835
#>     Attrib V16    -0.3850823880622369
#>     Attrib V17    -0.38232573991707874
#>     Attrib V18    0.18374907629732273
#>     Attrib V19    -0.11986860266637625
#>     Attrib V2    0.21266682712009463
#>     Attrib V20    -0.6390166465001265
#>     Attrib V21    -0.02043150350793005
#>     Attrib V22    0.7128129414032973
#>     Attrib V23    0.727377478146734
#>     Attrib V24    0.7459752336417917
#>     Attrib V25    0.842586849784978
#>     Attrib V26    0.7923353172634517
#>     Attrib V27    1.2100440175659677
#>     Attrib V28    1.5543997250176327
#>     Attrib V29    0.060425461511923836
#>     Attrib V3    -0.019791746547217146
#>     Attrib V30    -0.22463053158046284
#>     Attrib V31    -0.5457670087742963
#>     Attrib V32    0.5573881398652689
#>     Attrib V33    0.18042810711047785
#>     Attrib V34    0.11528769475017571
#>     Attrib V35    0.3842079968627308
#>     Attrib V36    -0.6648608083250915
#>     Attrib V37    -0.8593017422117416
#>     Attrib V38    -0.5694300179831412
#>     Attrib V39    0.39941899693744465
#>     Attrib V4    -0.02957623771503766
#>     Attrib V40    0.7852926071157598
#>     Attrib V41    1.0968372742192252
#>     Attrib V42    -0.4613510033699115
#>     Attrib V43    0.18304471424366003
#>     Attrib V44    0.6673436657686207
#>     Attrib V45    0.26028419582800283
#>     Attrib V46    0.4031130779114028
#>     Attrib V47    0.8701241449027031
#>     Attrib V48    1.322845535663851
#>     Attrib V49    0.746458169035041
#>     Attrib V5    -0.39187606380810835
#>     Attrib V50    0.168868099287895
#>     Attrib V51    1.094367749426501
#>     Attrib V52    0.9981378344197583
#>     Attrib V53    0.6423305768067584
#>     Attrib V54    0.07349757070485254
#>     Attrib V55    -1.373004879416877
#>     Attrib V56    -0.4230187067954597
#>     Attrib V57    -0.5406766245286774
#>     Attrib V58    0.021260009467886386
#>     Attrib V59    0.22820957752351942
#>     Attrib V6    0.5328418872235005
#>     Attrib V60    -0.6728170314430839
#>     Attrib V7    -0.5874576006522397
#>     Attrib V8    -0.6819626482502048
#>     Attrib V9    0.791099353901014
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.35752841034789057
#>     Attrib V1    -0.16322872117865292
#>     Attrib V10    -0.20009738586240935
#>     Attrib V11    -0.2361155095038064
#>     Attrib V12    -0.24562994318094558
#>     Attrib V13    -0.23863253804324697
#>     Attrib V14    0.13034349699736808
#>     Attrib V15    -0.010897913374074773
#>     Attrib V16    0.08872405231278116
#>     Attrib V17    0.11731772802788216
#>     Attrib V18    -0.1056099390038951
#>     Attrib V19    -0.10489019449310086
#>     Attrib V2    0.047829481686882794
#>     Attrib V20    -0.14137038198526714
#>     Attrib V21    -0.23986072318871843
#>     Attrib V22    -0.39199076686321976
#>     Attrib V23    -0.11140897023501875
#>     Attrib V24    0.008901578749233198
#>     Attrib V25    0.17328133005196086
#>     Attrib V26    0.37278485145019524
#>     Attrib V27    0.19275064304164158
#>     Attrib V28    -0.2646511523704724
#>     Attrib V29    -0.1941474868245024
#>     Attrib V3    0.061273705246275685
#>     Attrib V30    0.0996137527923976
#>     Attrib V31    0.615999796494248
#>     Attrib V32    -0.2356382921883798
#>     Attrib V33    -0.25686585312361476
#>     Attrib V34    0.19020866068819364
#>     Attrib V35    -0.006229823617965491
#>     Attrib V36    0.21156139527394255
#>     Attrib V37    0.4782306796084895
#>     Attrib V38    0.18462625555759363
#>     Attrib V39    -0.13138953396869033
#>     Attrib V4    -0.07585465766545638
#>     Attrib V40    0.09409655518393735
#>     Attrib V41    -0.03254847940507454
#>     Attrib V42    -0.002325717591741353
#>     Attrib V43    -0.3278359803841274
#>     Attrib V44    -0.354922062893139
#>     Attrib V45    -0.2064951703575129
#>     Attrib V46    -0.01933221562279907
#>     Attrib V47    -0.12747022498742178
#>     Attrib V48    -0.37235685736860547
#>     Attrib V49    -0.13480175593839294
#>     Attrib V5    -0.02579450827580594
#>     Attrib V50    0.20084275473428964
#>     Attrib V51    -0.21477218843556575
#>     Attrib V52    -0.1379579989322805
#>     Attrib V53    0.015425867339871427
#>     Attrib V54    -0.1665174307902735
#>     Attrib V55    0.4397823139294734
#>     Attrib V56    -0.212163579285141
#>     Attrib V57    0.1580216478377844
#>     Attrib V58    -0.23536733731110512
#>     Attrib V59    -0.20906466444315225
#>     Attrib V6    0.1017000978796215
#>     Attrib V60    0.16420570440430668
#>     Attrib V7    0.3488653940450881
#>     Attrib V8    0.12129551121964377
#>     Attrib V9    -0.25808726803948623
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.2719696666205351
#>     Attrib V1    0.24980419039382562
#>     Attrib V10    0.263331402045024
#>     Attrib V11    0.21244040176038795
#>     Attrib V12    0.14002172337377228
#>     Attrib V13    0.11687014302634598
#>     Attrib V14    -0.25397183159968767
#>     Attrib V15    -0.1656270252704356
#>     Attrib V16    -0.15056871789289616
#>     Attrib V17    -0.2073156463056914
#>     Attrib V18    0.06872716137387778
#>     Attrib V19    0.014564155726182582
#>     Attrib V2    -0.08030189135811718
#>     Attrib V20    0.17091594056761683
#>     Attrib V21    0.22721865359185103
#>     Attrib V22    0.33285628020425845
#>     Attrib V23    0.09669099644953547
#>     Attrib V24    -0.09533214340027969
#>     Attrib V25    -0.12815833911456553
#>     Attrib V26    -0.33283347621791665
#>     Attrib V27    -0.13589880096607573
#>     Attrib V28    0.3543589500346841
#>     Attrib V29    0.10729824647912863
#>     Attrib V3    -0.15220692384601278
#>     Attrib V30    1.796243251814096E-4
#>     Attrib V31    -0.6523651290677028
#>     Attrib V32    0.2749841327333251
#>     Attrib V33    0.4520544278664933
#>     Attrib V34    0.011254543742866304
#>     Attrib V35    0.24847781255218276
#>     Attrib V36    -0.08744091231447186
#>     Attrib V37    -0.49506608653984135
#>     Attrib V38    -0.14999429611872675
#>     Attrib V39    0.09877415874426845
#>     Attrib V4    0.008220777126437748
#>     Attrib V40    -0.06381704716876768
#>     Attrib V41    0.002340402646060162
#>     Attrib V42    -0.07032990299157321
#>     Attrib V43    0.28747140224585377
#>     Attrib V44    0.44782696749172823
#>     Attrib V45    0.3665146145205446
#>     Attrib V46    -0.005410454494296696
#>     Attrib V47    0.17672898804995532
#>     Attrib V48    0.48059666667223316
#>     Attrib V49    0.1442665655884397
#>     Attrib V5    -0.06781639720357806
#>     Attrib V50    -0.046488670034866945
#>     Attrib V51    0.3160344581983178
#>     Attrib V52    0.1094088330826699
#>     Attrib V53    -0.05407774133568603
#>     Attrib V54    0.2596495449537212
#>     Attrib V55    -0.5696690084377668
#>     Attrib V56    0.10670071504192659
#>     Attrib V57    -0.1074766632848913
#>     Attrib V58    0.21437185918812238
#>     Attrib V59    0.04861595267596604
#>     Attrib V6    -0.13322583895913404
#>     Attrib V60    -0.37361469935244024
#>     Attrib V7    -0.46167263431841954
#>     Attrib V8    -0.12905526284207378
#>     Attrib V9    0.3170280533874236
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.24370887545755454
#>     Attrib V1    0.38846879375740173
#>     Attrib V10    0.020264308858370647
#>     Attrib V11    0.15414779893057057
#>     Attrib V12    -0.15175091504514782
#>     Attrib V13    0.08554990937711128
#>     Attrib V14    -5.035192288502745E-4
#>     Attrib V15    0.07242384242802566
#>     Attrib V16    -0.03485849282630889
#>     Attrib V17    -0.08648661379077492
#>     Attrib V18    0.22619546965349238
#>     Attrib V19    0.28541751770594326
#>     Attrib V2    0.06747432228626442
#>     Attrib V20    0.3589505072362271
#>     Attrib V21    0.4261715725125547
#>     Attrib V22    0.5159959202089374
#>     Attrib V23    0.1967890529546862
#>     Attrib V24    -0.0835596781088408
#>     Attrib V25    -0.2875117781873276
#>     Attrib V26    -0.566093304988786
#>     Attrib V27    -0.4199561618730142
#>     Attrib V28    -0.01147593987444067
#>     Attrib V29    0.004390976115262794
#>     Attrib V3    -0.015984117323790663
#>     Attrib V30    -0.16671862958546177
#>     Attrib V31    -0.8499219899613351
#>     Attrib V32    0.05249173888371688
#>     Attrib V33    0.3562631685834761
#>     Attrib V34    -0.2801207691985726
#>     Attrib V35    -0.0016202867648753788
#>     Attrib V36    -0.08894742576769901
#>     Attrib V37    -0.5084419653546624
#>     Attrib V38    -0.1352905010331909
#>     Attrib V39    0.046871297200766576
#>     Attrib V4    0.2533643866778049
#>     Attrib V40    -0.16991788887571954
#>     Attrib V41    -0.08924955620803723
#>     Attrib V42    0.01097975464883815
#>     Attrib V43    0.37804832608448413
#>     Attrib V44    0.30865198450215264
#>     Attrib V45    0.27839904886986644
#>     Attrib V46    -0.04383274936848037
#>     Attrib V47    0.04766700759674646
#>     Attrib V48    0.327268279293552
#>     Attrib V49    0.04128615888971843
#>     Attrib V5    0.19436718939950481
#>     Attrib V50    -0.07358223399216202
#>     Attrib V51    0.19492968033028027
#>     Attrib V52    0.15401955852916793
#>     Attrib V53    0.00901049654753124
#>     Attrib V54    0.42605666560667965
#>     Attrib V55    -0.30479254250269455
#>     Attrib V56    0.3450155081079711
#>     Attrib V57    0.11265753067478042
#>     Attrib V58    0.40138386195499626
#>     Attrib V59    0.3430346391145703
#>     Attrib V6    -0.1788209925001848
#>     Attrib V60    -0.050399199795265574
#>     Attrib V7    -0.2881714935883822
#>     Attrib V8    0.013173504581627051
#>     Attrib V9    0.2420407509742981
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.05870463367983501
#>     Attrib V1    0.3446343447344982
#>     Attrib V10    0.017381614846801858
#>     Attrib V11    0.09024845173385623
#>     Attrib V12    -0.04563881469873466
#>     Attrib V13    0.14543339168997477
#>     Attrib V14    0.043931241564813525
#>     Attrib V15    0.09074464859694355
#>     Attrib V16    -0.02362063772123987
#>     Attrib V17    -0.004657955021274937
#>     Attrib V18    0.1839034929799157
#>     Attrib V19    0.1571007497142877
#>     Attrib V2    0.0805390735309794
#>     Attrib V20    0.29045727973931035
#>     Attrib V21    0.3042053941861888
#>     Attrib V22    0.2470137680079683
#>     Attrib V23    0.09885054956735234
#>     Attrib V24    -0.04104529126487639
#>     Attrib V25    -0.1456357571279478
#>     Attrib V26    -0.419868467246102
#>     Attrib V27    -0.2818365103873497
#>     Attrib V28    -0.021433457247632234
#>     Attrib V29    0.020195709341790043
#>     Attrib V3    0.1270999715910618
#>     Attrib V30    -0.0797229764908525
#>     Attrib V31    -0.5817744393057903
#>     Attrib V32    0.05008067918060949
#>     Attrib V33    0.18087922248141272
#>     Attrib V34    -0.18209402426027682
#>     Attrib V35    -0.03975129860573167
#>     Attrib V36    -0.09729385339262951
#>     Attrib V37    -0.3029122731501872
#>     Attrib V38    -0.07760970794808006
#>     Attrib V39    0.13972841535897942
#>     Attrib V4    0.21887086883239212
#>     Attrib V40    -0.09903753677769969
#>     Attrib V41    -0.060399562496354614
#>     Attrib V42    0.014509478918833701
#>     Attrib V43    0.15884171983685139
#>     Attrib V44    0.2069009975837169
#>     Attrib V45    0.1416488803051497
#>     Attrib V46    -0.03244758229316027
#>     Attrib V47    0.07769699196855903
#>     Attrib V48    0.21262457399441376
#>     Attrib V49    0.0928015088041111
#>     Attrib V5    0.1795929168327086
#>     Attrib V50    -0.03718957008983244
#>     Attrib V51    0.11052421908760925
#>     Attrib V52    0.08156105755270436
#>     Attrib V53    0.015257183862928929
#>     Attrib V54    0.2813439317322481
#>     Attrib V55    -0.13402455159595786
#>     Attrib V56    0.2864313998598931
#>     Attrib V57    0.14165751287523914
#>     Attrib V58    0.23740702620230494
#>     Attrib V59    0.2979644271632431
#>     Attrib V6    -0.07929291045287742
#>     Attrib V60    0.06071862693716827
#>     Attrib V7    -0.1670115783254094
#>     Attrib V8    -0.054741653625211745
#>     Attrib V9    0.139728786462128
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.21422450407345714
#>     Attrib V1    0.5883869729089413
#>     Attrib V10    0.001765372697751614
#>     Attrib V11    0.15773589271252675
#>     Attrib V12    -0.08734138443844107
#>     Attrib V13    0.029841676078356444
#>     Attrib V14    0.03105733747522936
#>     Attrib V15    0.2149557965947987
#>     Attrib V16    -0.06438376705396757
#>     Attrib V17    -0.02734750360149037
#>     Attrib V18    0.2937339074302871
#>     Attrib V19    0.2812342929182571
#>     Attrib V2    0.12553864321148214
#>     Attrib V20    0.4376357972041175
#>     Attrib V21    0.4334622429423553
#>     Attrib V22    0.4221934014387982
#>     Attrib V23    0.16210102587427797
#>     Attrib V24    -0.07698200738590683
#>     Attrib V25    -0.2770668654313107
#>     Attrib V26    -0.6224580945316692
#>     Attrib V27    -0.6540759604654327
#>     Attrib V28    -0.2796862691355365
#>     Attrib V29    -0.20527763674728264
#>     Attrib V3    0.03427803634481444
#>     Attrib V30    -0.2030585254184637
#>     Attrib V31    -0.8229228835631076
#>     Attrib V32    0.016238480046807027
#>     Attrib V33    0.30273760982228864
#>     Attrib V34    -0.3545104503515909
#>     Attrib V35    -0.0018653541620264511
#>     Attrib V36    -0.0839691517831707
#>     Attrib V37    -0.4762645220526458
#>     Attrib V38    -0.14261313459831634
#>     Attrib V39    0.1395757236439252
#>     Attrib V4    0.27086192602141845
#>     Attrib V40    -0.2257644031204197
#>     Attrib V41    -0.2045289382114497
#>     Attrib V42    -0.020603745660688212
#>     Attrib V43    0.3200270605761011
#>     Attrib V44    0.36100702906106485
#>     Attrib V45    0.2129432730210776
#>     Attrib V46    -0.12370013823125382
#>     Attrib V47    0.0011241446971964784
#>     Attrib V48    0.32858712420773073
#>     Attrib V49    0.10925127625836814
#>     Attrib V5    0.2294815076088818
#>     Attrib V50    0.0011679011430640062
#>     Attrib V51    0.11440102325431835
#>     Attrib V52    0.09941606260426161
#>     Attrib V53    -0.034147290261702615
#>     Attrib V54    0.6188756739434346
#>     Attrib V55    -0.11761058413949027
#>     Attrib V56    0.46697702469008445
#>     Attrib V57    0.2061852515926218
#>     Attrib V58    0.444239509967792
#>     Attrib V59    0.3726635929720826
#>     Attrib V6    -0.12942094655462782
#>     Attrib V60    0.153824766927194
#>     Attrib V7    -0.20630648721639092
#>     Attrib V8    -0.022529611012187437
#>     Attrib V9    0.186273173981502
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.3416729460380508
#>     Attrib V1    -0.5431941388990041
#>     Attrib V10    -0.19175483966548645
#>     Attrib V11    -0.3310815143647119
#>     Attrib V12    0.1321790276373473
#>     Attrib V13    -0.1610929559617513
#>     Attrib V14    0.15914093448849712
#>     Attrib V15    0.03234640658215572
#>     Attrib V16    0.21808781074225747
#>     Attrib V17    0.21129606493875328
#>     Attrib V18    -0.37164054988254375
#>     Attrib V19    -0.3440635851637647
#>     Attrib V2    0.09847508821543909
#>     Attrib V20    -0.5618973664740812
#>     Attrib V21    -0.8106931788722844
#>     Attrib V22    -0.9518358581811949
#>     Attrib V23    -0.4868000367956627
#>     Attrib V24    -0.04810085917721902
#>     Attrib V25    0.25251045093165336
#>     Attrib V26    0.7582828819960525
#>     Attrib V27    0.5786001387831055
#>     Attrib V28    -0.06136817068675967
#>     Attrib V29    0.1386883178638668
#>     Attrib V3    0.14950503367973128
#>     Attrib V30    0.34912311247459393
#>     Attrib V31    1.3858970659055105
#>     Attrib V32    -0.20360700203255822
#>     Attrib V33    -0.6175355976736607
#>     Attrib V34    0.502013985246185
#>     Attrib V35    -0.04865595876094996
#>     Attrib V36    0.1313910670464799
#>     Attrib V37    0.9187339089786059
#>     Attrib V38    0.25210340501750717
#>     Attrib V39    -0.13315649392311033
#>     Attrib V4    -0.2226927360677256
#>     Attrib V40    0.34069398005687823
#>     Attrib V41    0.09963532137402752
#>     Attrib V42    -0.14604960361609284
#>     Attrib V43    -0.7863862297236004
#>     Attrib V44    -0.7943450213999516
#>     Attrib V45    -0.4931691323422611
#>     Attrib V46    0.09725013465074489
#>     Attrib V47    -0.13975395320217215
#>     Attrib V48    -0.4865745366369282
#>     Attrib V49    -0.21760957424641508
#>     Attrib V5    -0.18372118066559667
#>     Attrib V50    0.06581712757388704
#>     Attrib V51    -0.2778967656927773
#>     Attrib V52    -0.18333700758976224
#>     Attrib V53    0.06298684571784507
#>     Attrib V54    -0.6202572516454445
#>     Attrib V55    0.6608857870685048
#>     Attrib V56    -0.3997861836637477
#>     Attrib V57    0.07903602785612066
#>     Attrib V58    -0.6116962643002514
#>     Attrib V59    -0.3815551978650048
#>     Attrib V6    0.29941003173113045
#>     Attrib V60    0.18900314733034226
#>     Attrib V7    0.4924940798324411
#>     Attrib V8    -0.023109245050358655
#>     Attrib V9    -0.47067988785470755
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.16856670093711257
#>     Attrib V1    0.03843914572394968
#>     Attrib V10    0.02919649822466952
#>     Attrib V11    -0.02072903932296414
#>     Attrib V12    -0.05118565324369321
#>     Attrib V13    0.019897782905878722
#>     Attrib V14    -0.023274679554501795
#>     Attrib V15    -0.0058078316216140435
#>     Attrib V16    0.06677294657037815
#>     Attrib V17    0.05985252302986129
#>     Attrib V18    0.04513088011691945
#>     Attrib V19    -0.01569441782513157
#>     Attrib V2    0.018793741011357327
#>     Attrib V20    -0.08449312648341926
#>     Attrib V21    -0.09894776788667728
#>     Attrib V22    -0.09191137221096173
#>     Attrib V23    -0.08992759834026402
#>     Attrib V24    -0.013133090240294472
#>     Attrib V25    0.002147242152661681
#>     Attrib V26    -0.05468398231783302
#>     Attrib V27    -0.067610125381507
#>     Attrib V28    -0.01922415304991866
#>     Attrib V29    -0.03208041755134702
#>     Attrib V3    0.08602586347088373
#>     Attrib V30    -0.021063375181572485
#>     Attrib V31    0.0034476075642760943
#>     Attrib V32    0.05624196813683997
#>     Attrib V33    0.05377612800869735
#>     Attrib V34    0.0819999995868705
#>     Attrib V35    0.04874217680322344
#>     Attrib V36    0.05261868103012121
#>     Attrib V37    0.09762552574093393
#>     Attrib V38    0.05438857382788939
#>     Attrib V39    0.05216644696227625
#>     Attrib V4    0.078046817189095
#>     Attrib V40    0.04654313400147197
#>     Attrib V41    0.07936366604111227
#>     Attrib V42    0.08114015516867679
#>     Attrib V43    -0.0012213812824699855
#>     Attrib V44    -0.033999431948379726
#>     Attrib V45    0.017954085195689504
#>     Attrib V46    0.06258162535868188
#>     Attrib V47    0.05905241582120351
#>     Attrib V48    0.04018593239862466
#>     Attrib V49    0.006692849704922549
#>     Attrib V5    0.04260950764369262
#>     Attrib V50    0.0962428819032009
#>     Attrib V51    0.12374447933329828
#>     Attrib V52    0.09327446236588807
#>     Attrib V53    0.07843310154264423
#>     Attrib V54    0.023273962486435318
#>     Attrib V55    0.10776000033024702
#>     Attrib V56    0.062201022042095724
#>     Attrib V57    0.09209722353864916
#>     Attrib V58    0.10005041759271023
#>     Attrib V59    0.02983928049786996
#>     Attrib V6    0.033810643045890286
#>     Attrib V60    0.051386848406027474
#>     Attrib V7    0.019234233084671173
#>     Attrib V8    0.006700592378310897
#>     Attrib V9    0.05820609551359442
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.10287982056383849
#>     Attrib V1    0.09175103975650865
#>     Attrib V10    0.07110945062124124
#>     Attrib V11    0.02305240843741675
#>     Attrib V12    -0.07955041215663561
#>     Attrib V13    -0.042898075112345266
#>     Attrib V14    -0.018267610037501502
#>     Attrib V15    0.07755627249913033
#>     Attrib V16    0.02356321545586467
#>     Attrib V17    0.005963692135016106
#>     Attrib V18    -0.012623814645435088
#>     Attrib V19    -0.025447049220412986
#>     Attrib V2    0.12925999861762333
#>     Attrib V20    -0.0771073051045097
#>     Attrib V21    -0.08856022001411738
#>     Attrib V22    -0.03465960714900343
#>     Attrib V23    -0.0933456236413078
#>     Attrib V24    -0.03378168459253705
#>     Attrib V25    -0.06499773328104078
#>     Attrib V26    -0.08203112587630162
#>     Attrib V27    -0.06271446034616072
#>     Attrib V28    -0.02929925076204945
#>     Attrib V29    -0.04525076026577063
#>     Attrib V3    0.06435584983832583
#>     Attrib V30    0.04994959563495992
#>     Attrib V31    0.0651267108370826
#>     Attrib V32    0.015479104267168078
#>     Attrib V33    0.12265812556829286
#>     Attrib V34    0.033105268332314926
#>     Attrib V35    0.11330548386925668
#>     Attrib V36    0.04244602208946779
#>     Attrib V37    0.03609563220130493
#>     Attrib V38    0.09477650266174824
#>     Attrib V39    0.0854389093194515
#>     Attrib V4    0.07665933545504257
#>     Attrib V40    0.04672535841412586
#>     Attrib V41    0.0952353901251897
#>     Attrib V42    0.029761519929193025
#>     Attrib V43    0.0606955837078394
#>     Attrib V44    0.040643356911345484
#>     Attrib V45    0.054304722098781795
#>     Attrib V46    0.017561747942792454
#>     Attrib V47    0.017758655240870575
#>     Attrib V48    0.10391114437518387
#>     Attrib V49    9.972377867443754E-4
#>     Attrib V5    0.03968448749304919
#>     Attrib V50    0.05742240404849308
#>     Attrib V51    0.0883632759706651
#>     Attrib V52    0.03956495861800416
#>     Attrib V53    0.007327686900022605
#>     Attrib V54    0.028801556797980743
#>     Attrib V55    0.11685721783140306
#>     Attrib V56    0.07650086530556245
#>     Attrib V57    0.12742444926956836
#>     Attrib V58    0.028029118755554187
#>     Attrib V59    0.04001108519114291
#>     Attrib V6    0.02023665640363894
#>     Attrib V60    0.04177217452230452
#>     Attrib V7    -0.025191916147001128
#>     Attrib V8    0.07110188860354176
#>     Attrib V9    0.046705784243436334
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.23337313435916246
#>     Attrib V1    -0.06945635290242422
#>     Attrib V10    -0.07866046664557326
#>     Attrib V11    -0.13104467561982922
#>     Attrib V12    -0.20416616037982557
#>     Attrib V13    -0.13384157802101868
#>     Attrib V14    0.009639720561964526
#>     Attrib V15    -0.04071765016116353
#>     Attrib V16    1.656014179311987E-4
#>     Attrib V17    -0.003811989244008004
#>     Attrib V18    -0.009442982247487635
#>     Attrib V19    -0.11139588348085186
#>     Attrib V2    0.027836977539137733
#>     Attrib V20    -0.061221984513623436
#>     Attrib V21    -0.05761187882026916
#>     Attrib V22    -0.11594924585037451
#>     Attrib V23    -0.006901871149610309
#>     Attrib V24    0.012605266840278842
#>     Attrib V25    0.09250117616297752
#>     Attrib V26    0.12113510913410247
#>     Attrib V27    0.025004958752789495
#>     Attrib V28    -0.1358870793255927
#>     Attrib V29    -0.11182323814886697
#>     Attrib V3    0.09689933072024629
#>     Attrib V30    -0.04777188905811672
#>     Attrib V31    0.16682432949023265
#>     Attrib V32    -0.020121259345736033
#>     Attrib V33    -0.024491566487691026
#>     Attrib V34    0.09674280532608899
#>     Attrib V35    -0.012128744055390061
#>     Attrib V36    0.16042097308535222
#>     Attrib V37    0.1731739205726393
#>     Attrib V38    0.05207568778667554
#>     Attrib V39    0.011525920517201778
#>     Attrib V4    -0.019612020115140908
#>     Attrib V40    0.033903867260888496
#>     Attrib V41    -0.012922069387308062
#>     Attrib V42    0.04790747149143183
#>     Attrib V43    -0.08776665551012913
#>     Attrib V44    -0.0851214865985538
#>     Attrib V45    -0.1467504600146736
#>     Attrib V46    -0.023965613531652538
#>     Attrib V47    0.006649231208717307
#>     Attrib V48    -0.11095312693417067
#>     Attrib V49    -0.02595080426427739
#>     Attrib V5    0.02303790444045899
#>     Attrib V50    0.0058743655041045935
#>     Attrib V51    0.02005339927563942
#>     Attrib V52    -0.022066117439778734
#>     Attrib V53    0.025020153023388645
#>     Attrib V54    -0.05664587025079401
#>     Attrib V55    0.19019369613573373
#>     Attrib V56    0.004931593953809659
#>     Attrib V57    0.04251888964254176
#>     Attrib V58    -0.014359537761152133
#>     Attrib V59    0.00488596501383312
#>     Attrib V6    -0.004335518957839549
#>     Attrib V60    0.10541890566572336
#>     Attrib V7    0.13508046622683959
#>     Attrib V8    0.0947982610850149
#>     Attrib V9    -0.06474698514497366
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.47973320401623765
#>     Attrib V1    0.4587881195733478
#>     Attrib V10    0.6607196803930782
#>     Attrib V11    0.527607542811938
#>     Attrib V12    0.752184859222013
#>     Attrib V13    0.45200526333654417
#>     Attrib V14    -0.3939504456720621
#>     Attrib V15    -0.4336753483034177
#>     Attrib V16    -0.39654465980564263
#>     Attrib V17    -0.5040582242416712
#>     Attrib V18    -0.20974687952047052
#>     Attrib V19    -0.2682410758424773
#>     Attrib V2    0.3490223993638298
#>     Attrib V20    -0.23091760356269614
#>     Attrib V21    0.04038191168399063
#>     Attrib V22    0.23919130046681358
#>     Attrib V23    -0.007396651838842579
#>     Attrib V24    0.003911628967753303
#>     Attrib V25    0.0825223369056256
#>     Attrib V26    0.11568795305647457
#>     Attrib V27    0.4115905998879762
#>     Attrib V28    0.8254762327468943
#>     Attrib V29    0.2898596630699
#>     Attrib V3    0.12283238044515164
#>     Attrib V30    0.0986772860885717
#>     Attrib V31    -0.46902121094791444
#>     Attrib V32    0.28607360318296043
#>     Attrib V33    0.3082660438041345
#>     Attrib V34    0.05915726114939569
#>     Attrib V35    0.3228471003768454
#>     Attrib V36    -0.19777732958544142
#>     Attrib V37    -0.447349018066451
#>     Attrib V38    -0.3186066120490351
#>     Attrib V39    0.13079852368413888
#>     Attrib V4    0.16262150163309586
#>     Attrib V40    0.2539765831280256
#>     Attrib V41    0.26544325544425634
#>     Attrib V42    -0.2587859474729774
#>     Attrib V43    0.015415660296327351
#>     Attrib V44    0.24158322128224274
#>     Attrib V45    0.32026111475640473
#>     Attrib V46    0.21272360004855378
#>     Attrib V47    0.33748623789435506
#>     Attrib V48    0.7486459800020894
#>     Attrib V49    0.4182671290281542
#>     Attrib V5    -0.1597616969046771
#>     Attrib V50    0.04797267749712951
#>     Attrib V51    0.35350698736405095
#>     Attrib V52    0.3970672048785588
#>     Attrib V53    0.15241050808976978
#>     Attrib V54    0.06983141821299495
#>     Attrib V55    -0.8145993703963506
#>     Attrib V56    -0.3655359545951202
#>     Attrib V57    -0.16812567003482246
#>     Attrib V58    0.1304893320807391
#>     Attrib V59    -0.0016253924431636779
#>     Attrib V6    0.0015834051413972654
#>     Attrib V60    -0.3043786112158434
#>     Attrib V7    -0.3449657275319629
#>     Attrib V8    -0.39241472482148676
#>     Attrib V9    0.46774232807706656
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.4613697610880489
#>     Attrib V1    0.2669415980919007
#>     Attrib V10    0.8240278735728823
#>     Attrib V11    0.62830270697536
#>     Attrib V12    0.9455326312589695
#>     Attrib V13    0.674346518687133
#>     Attrib V14    -0.541476228622442
#>     Attrib V15    -0.6791093433928719
#>     Attrib V16    -0.39467549913722777
#>     Attrib V17    -0.4342541217988367
#>     Attrib V18    0.041287662101245064
#>     Attrib V19    -0.1327359846915412
#>     Attrib V2    0.1786818772757358
#>     Attrib V20    -0.2922488235534467
#>     Attrib V21    0.14080839296633413
#>     Attrib V22    0.5709967899684584
#>     Attrib V23    0.43669018528124265
#>     Attrib V24    0.2690495439611466
#>     Attrib V25    0.2916195487319533
#>     Attrib V26    0.3151003174996683
#>     Attrib V27    0.7304971045529113
#>     Attrib V28    1.106244405424408
#>     Attrib V29    0.274448726389429
#>     Attrib V3    -5.759929671691068E-4
#>     Attrib V30    -0.0052918433352193055
#>     Attrib V31    -0.5969981600184512
#>     Attrib V32    0.39163234097108185
#>     Attrib V33    0.29994107968529427
#>     Attrib V34    -0.11477205683253221
#>     Attrib V35    0.17043688290963405
#>     Attrib V36    -0.39191890283311803
#>     Attrib V37    -0.6954140847015217
#>     Attrib V38    -0.5340519744112779
#>     Attrib V39    0.03286996050544769
#>     Attrib V4    0.12684454494702616
#>     Attrib V40    0.28769006280831905
#>     Attrib V41    0.5574771582221669
#>     Attrib V42    -0.2062889286009867
#>     Attrib V43    0.25278601284865543
#>     Attrib V44    0.5672394721309344
#>     Attrib V45    0.2994314471951161
#>     Attrib V46    0.19301038726117734
#>     Attrib V47    0.4975472586071344
#>     Attrib V48    0.9513001615179172
#>     Attrib V49    0.4991615061135234
#>     Attrib V5    -0.09606968893384674
#>     Attrib V50    0.09644823471763762
#>     Attrib V51    0.6812568489564526
#>     Attrib V52    0.582738178034824
#>     Attrib V53    0.25089521498131456
#>     Attrib V54    0.15409733430181954
#>     Attrib V55    -1.1885854004502114
#>     Attrib V56    -0.47999376302747476
#>     Attrib V57    -0.4135691201935618
#>     Attrib V58    0.17957484207453445
#>     Attrib V59    0.10431976956821143
#>     Attrib V6    0.17006738427471407
#>     Attrib V60    -0.47950678012770176
#>     Attrib V7    -0.43812214231121416
#>     Attrib V8    -0.4284490091303036
#>     Attrib V9    0.6445031399954284
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.2824909458103125
#>     Attrib V1    -0.39936500354485915
#>     Attrib V10    -0.36391378525987816
#>     Attrib V11    -0.47808814047186
#>     Attrib V12    -0.060849272532242045
#>     Attrib V13    -0.2605251406782433
#>     Attrib V14    0.3109808160940186
#>     Attrib V15    0.066858297458069
#>     Attrib V16    0.24359772504540644
#>     Attrib V17    0.26491547329885795
#>     Attrib V18    -0.38308155785564574
#>     Attrib V19    -0.4371468038695683
#>     Attrib V2    0.29637415264772915
#>     Attrib V20    -0.624017566964307
#>     Attrib V21    -0.8969392455767705
#>     Attrib V22    -1.308872725125337
#>     Attrib V23    -0.6872695240578577
#>     Attrib V24    -0.09685748214029097
#>     Attrib V25    0.19225954307558765
#>     Attrib V26    0.6016841238042699
#>     Attrib V27    0.40254095196092515
#>     Attrib V28    -0.42427779687210626
#>     Attrib V29    0.038822664587311546
#>     Attrib V3    0.35189646438141403
#>     Attrib V30    0.38546967502708296
#>     Attrib V31    1.6463538475395216
#>     Attrib V32    -0.36328181976417795
#>     Attrib V33    -0.8311197148072625
#>     Attrib V34    0.37853464509484547
#>     Attrib V35    -0.30471095412120985
#>     Attrib V36    -0.008388499657700867
#>     Attrib V37    0.9129750293436916
#>     Attrib V38    0.09078266466905555
#>     Attrib V39    -0.32130517785808477
#>     Attrib V4    -0.030930463887471556
#>     Attrib V40    0.3849616358719686
#>     Attrib V41    0.12603547126926973
#>     Attrib V42    -0.10075778744679088
#>     Attrib V43    -0.9504525179587684
#>     Attrib V44    -1.0212506099325935
#>     Attrib V45    -0.6970481083804178
#>     Attrib V46    0.017551071810715184
#>     Attrib V47    -0.24436639393186196
#>     Attrib V48    -0.5718417674604589
#>     Attrib V49    -0.28983899322536816
#>     Attrib V5    0.02538501610072656
#>     Attrib V50    0.05043950514532747
#>     Attrib V51    -0.45825611167116903
#>     Attrib V52    -0.11035310443675309
#>     Attrib V53    0.09322067041182568
#>     Attrib V54    -0.6732662400972563
#>     Attrib V55    0.8142048983408282
#>     Attrib V56    -0.5902406123542719
#>     Attrib V57    0.273542645953542
#>     Attrib V58    -0.6587217704958891
#>     Attrib V59    -0.37897672810044025
#>     Attrib V6    0.4402800210421229
#>     Attrib V60    0.5774751892203233
#>     Attrib V7    0.8262484047077944
#>     Attrib V8    -0.006827115557065553
#>     Attrib V9    -0.572135475436738
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.0618998571077385
#>     Attrib V1    0.44802061527552334
#>     Attrib V10    0.02198567715622082
#>     Attrib V11    0.09602696327135915
#>     Attrib V12    -0.03682810504206424
#>     Attrib V13    0.04283370920734335
#>     Attrib V14    0.12550044098687527
#>     Attrib V15    0.15293535719840545
#>     Attrib V16    0.09815460703191939
#>     Attrib V17    0.04935257811949833
#>     Attrib V18    0.20370166708990026
#>     Attrib V19    0.17774520763659984
#>     Attrib V2    0.1765435943571305
#>     Attrib V20    0.30744517010801037
#>     Attrib V21    0.24450989255703048
#>     Attrib V22    0.1443277888035061
#>     Attrib V23    -0.06581120741018763
#>     Attrib V24    -0.06318352600115447
#>     Attrib V25    -0.24424279756996706
#>     Attrib V26    -0.47379836150846116
#>     Attrib V27    -0.45656994791149685
#>     Attrib V28    -0.23940369626302982
#>     Attrib V29    -0.08317695072632081
#>     Attrib V3    0.1165737835469345
#>     Attrib V30    -0.13981531797113708
#>     Attrib V31    -0.4693345701399868
#>     Attrib V32    -0.04224430940271671
#>     Attrib V33    0.09085226772080078
#>     Attrib V34    -0.21040718195390606
#>     Attrib V35    5.666823588499875E-4
#>     Attrib V36    -0.021326575245743135
#>     Attrib V37    -0.23359565032236665
#>     Attrib V38    -0.0340141516362111
#>     Attrib V39    0.08658660726451255
#>     Attrib V4    0.2514865710518349
#>     Attrib V40    -0.1075929605832945
#>     Attrib V41    -0.16399284038142153
#>     Attrib V42    -0.04386480951935272
#>     Attrib V43    0.20165837795942243
#>     Attrib V44    0.14068610752053615
#>     Attrib V45    0.09606173024214786
#>     Attrib V46    -0.050424614303353904
#>     Attrib V47    -0.02568214444507845
#>     Attrib V48    0.22055017981708064
#>     Attrib V49    0.04588251275358828
#>     Attrib V5    0.2252297913301652
#>     Attrib V50    0.01667730043301194
#>     Attrib V51    0.0886405041230649
#>     Attrib V52    0.11088979023524301
#>     Attrib V53    0.011854440538835656
#>     Attrib V54    0.352647051100757
#>     Attrib V55    0.06780895945433063
#>     Attrib V56    0.4263222116823845
#>     Attrib V57    0.24703269084917112
#>     Attrib V58    0.2905626631702714
#>     Attrib V59    0.2881141162925975
#>     Attrib V6    -0.04486620407236462
#>     Attrib V60    0.16562620814072093
#>     Attrib V7    -0.11325804727632123
#>     Attrib V8    -0.04928852360021606
#>     Attrib V9    0.11828842540367836
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.29947796736278476
#>     Attrib V1    0.6364866994110472
#>     Attrib V10    0.022439842670642817
#>     Attrib V11    0.2114754901868396
#>     Attrib V12    -0.21985015320912868
#>     Attrib V13    0.038365543058367646
#>     Attrib V14    -0.1118276571136497
#>     Attrib V15    0.09683253665366254
#>     Attrib V16    -0.16685691128134497
#>     Attrib V17    -0.09525439740929047
#>     Attrib V18    0.34154573159049834
#>     Attrib V19    0.37056245178485875
#>     Attrib V2    -0.07287864066984512
#>     Attrib V20    0.5642460441474001
#>     Attrib V21    0.6777624405778941
#>     Attrib V22    0.8298762264021822
#>     Attrib V23    0.4211694166729598
#>     Attrib V24    0.02316740553507794
#>     Attrib V25    -0.2515883028834257
#>     Attrib V26    -0.7350407564491455
#>     Attrib V27    -0.7564494146619983
#>     Attrib V28    -0.20716112220836347
#>     Attrib V29    -0.28854729539457724
#>     Attrib V3    -0.06463158182424317
#>     Attrib V30    -0.3613842083910979
#>     Attrib V31    -1.2357767174602057
#>     Attrib V32    0.17056965046720945
#>     Attrib V33    0.5578738213607498
#>     Attrib V34    -0.4392410541499563
#>     Attrib V35    0.07362099344191468
#>     Attrib V36    -0.0424200972886398
#>     Attrib V37    -0.7687082519829049
#>     Attrib V38    -0.3128888515126152
#>     Attrib V39    0.06736226071680212
#>     Attrib V4    0.2787895386129525
#>     Attrib V40    -0.3945847266177544
#>     Attrib V41    -0.26385771723087786
#>     Attrib V42    0.056095368746784786
#>     Attrib V43    0.6710185198658757
#>     Attrib V44    0.5986553744461734
#>     Attrib V45    0.46435542278150177
#>     Attrib V46    -0.12880369816389906
#>     Attrib V47    0.12446483955307584
#>     Attrib V48    0.39231434318469083
#>     Attrib V49    0.15092409915221192
#>     Attrib V5    0.2210075123798587
#>     Attrib V50    -0.012243683325518697
#>     Attrib V51    0.20976103523819464
#>     Attrib V52    0.13341186855779086
#>     Attrib V53    -0.05781561477531172
#>     Attrib V54    0.7903612580824811
#>     Attrib V55    -0.4519907163451145
#>     Attrib V56    0.41591163425527705
#>     Attrib V57    -0.009162805875343025
#>     Attrib V58    0.6600514748064567
#>     Attrib V59    0.42720581621521
#>     Attrib V6    -0.2741480450092411
#>     Attrib V60    -0.08771523598171659
#>     Attrib V7    -0.3475856448202554
#>     Attrib V8    0.050984775823946164
#>     Attrib V9    0.37918492813870036
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.3390178551417233
#>     Attrib V1    -0.43273664499823083
#>     Attrib V10    -0.25153572676623154
#>     Attrib V11    -0.33466130508475944
#>     Attrib V12    -0.0653883130846679
#>     Attrib V13    -0.23977970333123952
#>     Attrib V14    0.21493738712369362
#>     Attrib V15    0.09883043399677707
#>     Attrib V16    0.1813177309939241
#>     Attrib V17    0.2489567964629077
#>     Attrib V18    -0.3323199829570097
#>     Attrib V19    -0.33691682968549963
#>     Attrib V2    0.09389876010811167
#>     Attrib V20    -0.4489944880629194
#>     Attrib V21    -0.665771047979616
#>     Attrib V22    -0.9286744752157252
#>     Attrib V23    -0.4087941320824656
#>     Attrib V24    -0.06266316176275041
#>     Attrib V25    0.21253759638458078
#>     Attrib V26    0.5763625121132427
#>     Attrib V27    0.35801355460690537
#>     Attrib V28    -0.2508881727730125
#>     Attrib V29    -0.01612140780559004
#>     Attrib V3    0.11840777239676013
#>     Attrib V30    0.27468182760039683
#>     Attrib V31    1.2341905708706291
#>     Attrib V32    -0.14962302089585872
#>     Attrib V33    -0.5583752313959507
#>     Attrib V34    0.34929709011269067
#>     Attrib V35    -0.15399532753619907
#>     Attrib V36    0.10959358680718607
#>     Attrib V37    0.7014807306907616
#>     Attrib V38    0.16383316166104178
#>     Attrib V39    -0.2156902262562049
#>     Attrib V4    -0.15783059802843166
#>     Attrib V40    0.27324978535849476
#>     Attrib V41    0.06978073033847693
#>     Attrib V42    -0.05871089377642592
#>     Attrib V43    -0.6307345980736817
#>     Attrib V44    -0.7639082894820899
#>     Attrib V45    -0.5378593734595508
#>     Attrib V46    0.05858840679777594
#>     Attrib V47    -0.12738727413825204
#>     Attrib V48    -0.49435924767179423
#>     Attrib V49    -0.2354258418591706
#>     Attrib V5    -0.16097591125595784
#>     Attrib V50    0.11910160104085392
#>     Attrib V51    -0.29463434877137945
#>     Attrib V52    -0.0992990061606464
#>     Attrib V53    -0.019247795523785676
#>     Attrib V54    -0.4810957098747865
#>     Attrib V55    0.6960306963296657
#>     Attrib V56    -0.34716315123567193
#>     Attrib V57    0.2230070493778112
#>     Attrib V58    -0.4464172435200151
#>     Attrib V59    -0.3223335032464128
#>     Attrib V6    0.300154951809535
#>     Attrib V60    0.2581050938171811
#>     Attrib V7    0.56049695284212
#>     Attrib V8    0.11781554393441619
#>     Attrib V9    -0.36075770515033767
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.7294016489951096
#>     Attrib V1    0.44152310981869647
#>     Attrib V10    0.8453666187503746
#>     Attrib V11    0.8105933281146888
#>     Attrib V12    1.6018954631360671
#>     Attrib V13    1.040448967282275
#>     Attrib V14    -0.24867436524525685
#>     Attrib V15    -0.6755383362521021
#>     Attrib V16    -0.45303827363033006
#>     Attrib V17    -0.5788748710743279
#>     Attrib V18    -0.15296978055931812
#>     Attrib V19    -0.36378004949804826
#>     Attrib V2    0.5951940703123026
#>     Attrib V20    -0.45709983646466956
#>     Attrib V21    -0.06788853263525665
#>     Attrib V22    0.3314613736880906
#>     Attrib V23    0.2768635614868602
#>     Attrib V24    0.1766798934719603
#>     Attrib V25    0.17561612519830314
#>     Attrib V26    0.48424236944411564
#>     Attrib V27    1.0709705687501792
#>     Attrib V28    1.6398616351293374
#>     Attrib V29    0.9655195939101435
#>     Attrib V3    0.5468304082506579
#>     Attrib V30    0.30997848170886066
#>     Attrib V31    -0.4025085173354856
#>     Attrib V32    0.20334415391953944
#>     Attrib V33    -0.15482693274974446
#>     Attrib V34    -0.17522163350582864
#>     Attrib V35    0.011943410025583833
#>     Attrib V36    -0.5829360199863303
#>     Attrib V37    -0.4005159118364821
#>     Attrib V38    -0.27461759252938855
#>     Attrib V39    0.30726896271263765
#>     Attrib V4    0.41046305186951687
#>     Attrib V40    0.4968215810856686
#>     Attrib V41    0.7984264191189723
#>     Attrib V42    -0.25750392969948127
#>     Attrib V43    -0.061504019835573395
#>     Attrib V44    0.3532853580272415
#>     Attrib V45    0.18925459492362323
#>     Attrib V46    0.24600711168981032
#>     Attrib V47    0.425748061616416
#>     Attrib V48    0.8838710356855708
#>     Attrib V49    0.5324047980052342
#>     Attrib V5    0.037932931511498014
#>     Attrib V50    -0.07920189458402425
#>     Attrib V51    0.5514329938575179
#>     Attrib V52    0.8128373105100619
#>     Attrib V53    0.5747879534765488
#>     Attrib V54    -0.10209062942722115
#>     Attrib V55    -1.029486569952595
#>     Attrib V56    -0.3472127081614526
#>     Attrib V57    -0.21877417405740024
#>     Attrib V58    -0.048824518711679955
#>     Attrib V59    0.2968344291214837
#>     Attrib V6    0.47654117308034627
#>     Attrib V60    -0.24550891229210145
#>     Attrib V7    -0.5046931737370285
#>     Attrib V8    -0.6111939868891526
#>     Attrib V9    0.4595816199023608
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.21642546171216617
#>     Attrib V1    -0.018600041237251577
#>     Attrib V10    -0.05459292348276853
#>     Attrib V11    -0.10825218419423004
#>     Attrib V12    -0.09622815836758049
#>     Attrib V13    -0.08380193073306959
#>     Attrib V14    0.05048556145621059
#>     Attrib V15    -0.016237392979022217
#>     Attrib V16    0.007210584534769409
#>     Attrib V17    0.053411432757686846
#>     Attrib V18    -0.06201457776731115
#>     Attrib V19    -0.013203905312239264
#>     Attrib V2    0.05356799343282664
#>     Attrib V20    -0.07099877852480067
#>     Attrib V21    -0.07185814565255985
#>     Attrib V22    -0.1005389016360304
#>     Attrib V23    -0.03119878917133177
#>     Attrib V24    -0.014100324889477272
#>     Attrib V25    0.038741154569667764
#>     Attrib V26    0.019104115127546686
#>     Attrib V27    0.007527275371722719
#>     Attrib V28    -0.050846952489350526
#>     Attrib V29    -0.039308166546185526
#>     Attrib V3    0.022298987652423635
#>     Attrib V30    0.004644962010222446
#>     Attrib V31    0.10525635197242943
#>     Attrib V32    -0.003884713251725738
#>     Attrib V33    0.05398496753353134
#>     Attrib V34    0.05263301692365789
#>     Attrib V35    0.08101113932815156
#>     Attrib V36    0.12878071237007496
#>     Attrib V37    0.1816698014686748
#>     Attrib V38    0.034513485450192366
#>     Attrib V39    0.017864676200917067
#>     Attrib V4    0.06719253085028992
#>     Attrib V40    0.05673343608046817
#>     Attrib V41    0.03745992740388502
#>     Attrib V42    0.06349253777170467
#>     Attrib V43    -0.03156206294281224
#>     Attrib V44    -0.06002372185469066
#>     Attrib V45    -0.06640701889535695
#>     Attrib V46    -0.010357644596849755
#>     Attrib V47    -0.01774053398008939
#>     Attrib V48    -7.445271514113917E-4
#>     Attrib V49    -0.0300174816812236
#>     Attrib V5    -0.015601967763704764
#>     Attrib V50    0.05888488268826931
#>     Attrib V51    0.0013969308962447787
#>     Attrib V52    0.0022363795858728872
#>     Attrib V53    0.013821547337361541
#>     Attrib V54    0.006484749167858265
#>     Attrib V55    0.1433335290815057
#>     Attrib V56    0.031394633210555786
#>     Attrib V57    0.10670487088950999
#>     Attrib V58    0.03308149511500847
#>     Attrib V59    0.04573320004174174
#>     Attrib V6    0.06480253225593853
#>     Attrib V60    0.11228819327437424
#>     Attrib V7    0.05141115207690397
#>     Attrib V8    0.07432710099057367
#>     Attrib V9    -0.04438061407954494
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.31773869144774647
#>     Attrib V1    0.5329175870860307
#>     Attrib V10    0.07362152711353454
#>     Attrib V11    0.15170958297320605
#>     Attrib V12    -0.08258748446314984
#>     Attrib V13    0.1070847301640192
#>     Attrib V14    -0.0886799299348459
#>     Attrib V15    0.07298376303944885
#>     Attrib V16    -0.10459274760056576
#>     Attrib V17    -0.13205355975976404
#>     Attrib V18    0.32701622588913104
#>     Attrib V19    0.26794928867592693
#>     Attrib V2    0.03578353875559168
#>     Attrib V20    0.3562479817220126
#>     Attrib V21    0.5038552097259847
#>     Attrib V22    0.5756694103901623
#>     Attrib V23    0.227244411589911
#>     Attrib V24    0.03722853720717153
#>     Attrib V25    -0.21998569202918705
#>     Attrib V26    -0.5103461656924523
#>     Attrib V27    -0.5162607735550352
#>     Attrib V28    -0.09184256805966684
#>     Attrib V29    -0.09500398381424233
#>     Attrib V3    -0.0313700563605627
#>     Attrib V30    -0.21299621660143664
#>     Attrib V31    -0.8922297112497626
#>     Attrib V32    0.11042725791941593
#>     Attrib V33    0.34104633412328544
#>     Attrib V34    -0.33440214405958946
#>     Attrib V35    -5.389191360127869E-4
#>     Attrib V36    -0.07822171482687731
#>     Attrib V37    -0.5753166745456195
#>     Attrib V38    -0.1807655170375935
#>     Attrib V39    0.11172360516998416
#>     Attrib V4    0.2323333154234657
#>     Attrib V40    -0.28871038087662787
#>     Attrib V41    -0.1503228899873156
#>     Attrib V42    -0.004294725811396513
#>     Attrib V43    0.37474247863717836
#>     Attrib V44    0.4498801863535265
#>     Attrib V45    0.35059673748009457
#>     Attrib V46    -0.14749920838529398
#>     Attrib V47    0.015158866195317528
#>     Attrib V48    0.3834126171505847
#>     Attrib V49    0.07400599837462704
#>     Attrib V5    0.1815159715455716
#>     Attrib V50    0.020829957120473933
#>     Attrib V51    0.19536257286369302
#>     Attrib V52    0.12733883169980867
#>     Attrib V53    -0.0010455408517208824
#>     Attrib V54    0.5759621956833029
#>     Attrib V55    -0.29745589706749115
#>     Attrib V56    0.30502778146249354
#>     Attrib V57    0.07663714693886584
#>     Attrib V58    0.4396908067602713
#>     Attrib V59    0.3440880206211381
#>     Attrib V6    -0.1395324643020243
#>     Attrib V60    -0.026983894986985647
#>     Attrib V7    -0.3293561329813454
#>     Attrib V8    -0.02616465442292462
#>     Attrib V9    0.27693548007897445
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.7172594349072758
#>     Attrib V1    0.05715592164204491
#>     Attrib V10    -1.269057021566388
#>     Attrib V11    -0.8969743029488187
#>     Attrib V12    -1.4352204027702653
#>     Attrib V13    -1.2182523536630434
#>     Attrib V14    0.8466281918014078
#>     Attrib V15    1.1875431964091192
#>     Attrib V16    0.4914076642022771
#>     Attrib V17    0.418163377307418
#>     Attrib V18    -0.24810429637215625
#>     Attrib V19    -0.06835905776313733
#>     Attrib V2    -0.16684328245482727
#>     Attrib V20    0.45375013857495705
#>     Attrib V21    -0.25736292241360714
#>     Attrib V22    -1.0280700082288083
#>     Attrib V23    -0.8372495060003073
#>     Attrib V24    -0.41811566877292516
#>     Attrib V25    -0.344051723427218
#>     Attrib V26    -0.30337343766772706
#>     Attrib V27    -1.0582988586766906
#>     Attrib V28    -1.768806120407253
#>     Attrib V29    -0.28083948682146054
#>     Attrib V3    -0.0598472321226895
#>     Attrib V30    0.20460568059179982
#>     Attrib V31    0.9206894391982944
#>     Attrib V32    -0.3993793695584083
#>     Attrib V33    -0.14518571285365198
#>     Attrib V34    0.36418751011491773
#>     Attrib V35    -0.13905071246301942
#>     Attrib V36    0.7684591961178494
#>     Attrib V37    1.1053767960157541
#>     Attrib V38    0.8771277711525954
#>     Attrib V39    -0.10078781990086494
#>     Attrib V4    -0.21718036666834487
#>     Attrib V40    -0.510745475259366
#>     Attrib V41    -1.0731332535446496
#>     Attrib V42    0.12140586829257712
#>     Attrib V43    -0.3489672102855691
#>     Attrib V44    -0.9380927265083252
#>     Attrib V45    -0.431041487493836
#>     Attrib V46    -0.3731051815044782
#>     Attrib V47    -0.8224693963438805
#>     Attrib V48    -1.2307737867291666
#>     Attrib V49    -0.8025037806489407
#>     Attrib V5    -0.0323215075035567
#>     Attrib V50    -0.06718820912157099
#>     Attrib V51    -0.992264725547614
#>     Attrib V52    -0.8888792794963761
#>     Attrib V53    -0.5351436669756313
#>     Attrib V54    0.020954895047360752
#>     Attrib V55    1.9445113208362887
#>     Attrib V56    0.8680562305000892
#>     Attrib V57    0.7749055256662574
#>     Attrib V58    -0.31043305121023707
#>     Attrib V59    -0.15543554000498386
#>     Attrib V6    -0.5958507302723612
#>     Attrib V60    0.514923567548111
#>     Attrib V7    0.5755576414936936
#>     Attrib V8    0.522370072758489
#>     Attrib V9    -0.903661873521159
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.30322448351441955
#>     Attrib V1    0.27475434434043006
#>     Attrib V10    0.2492304569497287
#>     Attrib V11    0.2692796784734224
#>     Attrib V12    0.19015766038298634
#>     Attrib V13    0.17918090532163175
#>     Attrib V14    -0.1699081443409913
#>     Attrib V15    -0.1722879657918185
#>     Attrib V16    -0.21421410845965658
#>     Attrib V17    -0.300667019465811
#>     Attrib V18    -0.007336990132320629
#>     Attrib V19    -0.07107557334247785
#>     Attrib V2    0.02177182486213588
#>     Attrib V20    0.09737035932506838
#>     Attrib V21    0.21400651606423046
#>     Attrib V22    0.3180509595137412
#>     Attrib V23    0.021041852609562595
#>     Attrib V24    -0.041692586207557135
#>     Attrib V25    -0.07351623508510159
#>     Attrib V26    -0.2510187910437119
#>     Attrib V27    -0.045955050966948324
#>     Attrib V28    0.3759500096972151
#>     Attrib V29    0.22724041011098753
#>     Attrib V3    -0.02929874227031886
#>     Attrib V30    -0.018337765131000966
#>     Attrib V31    -0.5282187972995196
#>     Attrib V32    0.27535835290721966
#>     Attrib V33    0.36258923574506974
#>     Attrib V34    -0.062311784672535626
#>     Attrib V35    0.17076494950162932
#>     Attrib V36    -0.13927115801450926
#>     Attrib V37    -0.4021762231609402
#>     Attrib V38    -0.1797679222144129
#>     Attrib V39    0.13538387542796332
#>     Attrib V4    0.022366905221850197
#>     Attrib V40    -0.009294014521584387
#>     Attrib V41    0.07099397032687073
#>     Attrib V42    -0.14103547287314205
#>     Attrib V43    0.2565135072743071
#>     Attrib V44    0.28857947265139394
#>     Attrib V45    0.3077507367341693
#>     Attrib V46    0.026119558731318635
#>     Attrib V47    0.1817640250656604
#>     Attrib V48    0.4424249741321842
#>     Attrib V49    0.14955242029063134
#>     Attrib V5    -0.11441808877955582
#>     Attrib V50    -0.0019141211451764396
#>     Attrib V51    0.2541340235918209
#>     Attrib V52    0.1930848852416694
#>     Attrib V53    -0.020764943702437248
#>     Attrib V54    0.17779324693671814
#>     Attrib V55    -0.49196134818271375
#>     Attrib V56    0.04745304599722222
#>     Attrib V57    -0.07425975841223538
#>     Attrib V58    0.15340226081018213
#>     Attrib V59    0.05949570037054628
#>     Attrib V6    -0.09068490992045994
#>     Attrib V60    -0.2812039698328437
#>     Attrib V7    -0.3643723504428589
#>     Attrib V8    -0.15188598172619186
#>     Attrib V9    0.29174202042172254
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.03529577669394367
#>     Attrib V1    0.26478780203548097
#>     Attrib V10    0.13862839606564972
#>     Attrib V11    0.1058954303523778
#>     Attrib V12    0.0668069138833245
#>     Attrib V13    0.10253349717988486
#>     Attrib V14    0.004645537935911051
#>     Attrib V15    0.03472045655851978
#>     Attrib V16    -0.014635054287989257
#>     Attrib V17    -0.005302929963467255
#>     Attrib V18    0.013326737094608338
#>     Attrib V19    -0.02480028224166283
#>     Attrib V2    0.15515583695769455
#>     Attrib V20    0.016693007763414876
#>     Attrib V21    0.043133744029172354
#>     Attrib V22    -0.01531819997451027
#>     Attrib V23    -0.08188565347145639
#>     Attrib V24    -0.11279761203784351
#>     Attrib V25    -0.05757178110104149
#>     Attrib V26    -0.10654107121586621
#>     Attrib V27    -0.09020427006163394
#>     Attrib V28    0.07184023874468709
#>     Attrib V29    -0.017218685643314958
#>     Attrib V3    0.09250962525046184
#>     Attrib V30    0.02980856852604511
#>     Attrib V31    -0.12955316200247463
#>     Attrib V32    0.025079570558239825
#>     Attrib V33    0.07783102869168482
#>     Attrib V34    -0.0330183079671118
#>     Attrib V35    0.10274054920828425
#>     Attrib V36    -0.0014146221341697369
#>     Attrib V37    -0.035357730037473965
#>     Attrib V38    -0.006626006435322759
#>     Attrib V39    0.15302055868205036
#>     Attrib V4    0.1729873597690121
#>     Attrib V40    0.030817816766326032
#>     Attrib V41    0.006621264423843963
#>     Attrib V42    0.012241355092829132
#>     Attrib V43    0.041377171776668664
#>     Attrib V44    0.05428097141062158
#>     Attrib V45    0.11461862918565979
#>     Attrib V46    0.025280745528033926
#>     Attrib V47    0.04998777716524799
#>     Attrib V48    0.20075435868124628
#>     Attrib V49    0.05703785823790233
#>     Attrib V5    0.03326236920386259
#>     Attrib V50    0.041746877572830625
#>     Attrib V51    0.0912518932908796
#>     Attrib V52    0.11026243674500028
#>     Attrib V53    0.03591080668895494
#>     Attrib V54    0.1307777395255093
#>     Attrib V55    -0.030508553663001852
#>     Attrib V56    0.16625546960507642
#>     Attrib V57    0.08955732294374234
#>     Attrib V58    0.12435013923446943
#>     Attrib V59    0.15415683350669324
#>     Attrib V6    -0.030298848859377676
#>     Attrib V60    0.03265585407044614
#>     Attrib V7    -0.12970408979147577
#>     Attrib V8    -0.038767983176500716
#>     Attrib V9    0.0905233776767741
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.1946188436959095
#>     Attrib V1    0.658250732141794
#>     Attrib V10    -0.07689916333244767
#>     Attrib V11    0.07617717844897678
#>     Attrib V12    -0.3222112992148597
#>     Attrib V13    0.024515699690979314
#>     Attrib V14    0.15840202870058195
#>     Attrib V15    0.30611011297520974
#>     Attrib V16    0.02347556288905536
#>     Attrib V17    0.0053047212221593466
#>     Attrib V18    0.32258233538402625
#>     Attrib V19    0.34971395091313945
#>     Attrib V2    0.18085621820468864
#>     Attrib V20    0.6169523813195131
#>     Attrib V21    0.5432134758777436
#>     Attrib V22    0.5187215319310918
#>     Attrib V23    0.1284771362815178
#>     Attrib V24    -0.10532497533730317
#>     Attrib V25    -0.46317160764827386
#>     Attrib V26    -0.8045091166911811
#>     Attrib V27    -0.8130742787492795
#>     Attrib V28    -0.34396016548038166
#>     Attrib V29    -0.14563016321985509
#>     Attrib V3    0.07252899147254523
#>     Attrib V30    -0.2610043567241775
#>     Attrib V31    -0.9444814209385823
#>     Attrib V32    -0.05983614499598154
#>     Attrib V33    0.2943405372096579
#>     Attrib V34    -0.39205174275657684
#>     Attrib V35    -0.020318617644484414
#>     Attrib V36    -0.06736673444738561
#>     Attrib V37    -0.5178041418241819
#>     Attrib V38    -0.08601229671490954
#>     Attrib V39    0.08699760243126578
#>     Attrib V4    0.35801041776275094
#>     Attrib V40    -0.30247986499878493
#>     Attrib V41    -0.2555791611624296
#>     Attrib V42    0.057794448634661814
#>     Attrib V43    0.4254883100133282
#>     Attrib V44    0.3980727544495773
#>     Attrib V45    0.29375586360498457
#>     Attrib V46    -0.13628125538309246
#>     Attrib V47    -0.0014418561682082414
#>     Attrib V48    0.2854072959417593
#>     Attrib V49    0.07186059950607643
#>     Attrib V5    0.2965933224323569
#>     Attrib V50    -0.021384898417405058
#>     Attrib V51    0.11793200641113985
#>     Attrib V52    0.10653852533191535
#>     Attrib V53    0.02427952636939993
#>     Attrib V54    0.6788857216963167
#>     Attrib V55    -0.09129393153818396
#>     Attrib V56    0.4595059838483003
#>     Attrib V57    0.23369242921850272
#>     Attrib V58    0.4787258371787393
#>     Attrib V59    0.4416428675154133
#>     Attrib V6    -0.15252191124399755
#>     Attrib V60    0.16074479980798353
#>     Attrib V7    -0.21437252848794802
#>     Attrib V8    0.06235186253864331
#>     Attrib V9    0.21906441100204993
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.049398679978220825
#>     Attrib V1    0.3568042254078493
#>     Attrib V10    -0.021254808023334383
#>     Attrib V11    0.06921711322413993
#>     Attrib V12    -0.07916681006991477
#>     Attrib V13    0.02213849532789605
#>     Attrib V14    0.0963161129908501
#>     Attrib V15    0.14314889043344525
#>     Attrib V16    0.06283096857342615
#>     Attrib V17    -0.02575094055791425
#>     Attrib V18    0.21293047819600655
#>     Attrib V19    0.11354024185582208
#>     Attrib V2    0.0881784062162882
#>     Attrib V20    0.2533150476172895
#>     Attrib V21    0.25939233171340803
#>     Attrib V22    0.18326175690470506
#>     Attrib V23    0.02811613689116855
#>     Attrib V24    -0.11132079403819814
#>     Attrib V25    -0.2621236309131195
#>     Attrib V26    -0.4130478943387592
#>     Attrib V27    -0.3446217355578482
#>     Attrib V28    -0.028801805474806076
#>     Attrib V29    -0.014913547082654873
#>     Attrib V3    0.11802631559395871
#>     Attrib V30    -0.05396607911182818
#>     Attrib V31    -0.5209544916333703
#>     Attrib V32    -0.020920291894768708
#>     Attrib V33    0.17108257742619168
#>     Attrib V34    -0.16480250754956086
#>     Attrib V35    0.01982766357682845
#>     Attrib V36    0.0056190807736775684
#>     Attrib V37    -0.2498024791393692
#>     Attrib V38    -0.08897764414505932
#>     Attrib V39    0.08320419346400962
#>     Attrib V4    0.1791905366403111
#>     Attrib V40    -0.14353808252711014
#>     Attrib V41    -0.10809451773373897
#>     Attrib V42    0.026521095233539658
#>     Attrib V43    0.12077120278040944
#>     Attrib V44    0.19303845147759371
#>     Attrib V45    0.1940067356035498
#>     Attrib V46    -0.036019097606848884
#>     Attrib V47    0.027307257883437012
#>     Attrib V48    0.16130365071497865
#>     Attrib V49    0.08729841837618926
#>     Attrib V5    0.15056708860090906
#>     Attrib V50    -0.02564319038670756
#>     Attrib V51    0.13705548930492645
#>     Attrib V52    0.1367980591145471
#>     Attrib V53    0.014172820843401547
#>     Attrib V54    0.2150767587767904
#>     Attrib V55    -0.06643743686014379
#>     Attrib V56    0.2681159664846676
#>     Attrib V57    0.1277652821723461
#>     Attrib V58    0.2728715599758698
#>     Attrib V59    0.2174029968155378
#>     Attrib V6    -0.05806398949147451
#>     Attrib V60    0.02790319826590463
#>     Attrib V7    -0.1643536824487651
#>     Attrib V8    0.02725829097854771
#>     Attrib V9    0.14411502004964213
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
#>  0.2173913 
```
