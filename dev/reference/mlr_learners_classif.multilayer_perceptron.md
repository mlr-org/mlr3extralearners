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
#>     Threshold    -1.119386690623854
#>     Node 2    2.2213719623410015
#>     Node 3    1.4303669572389623
#>     Node 4    1.185346390843958
#>     Node 5    -2.6611019136462426
#>     Node 6    1.4460099621269291
#>     Node 7    3.566287073068036
#>     Node 8    2.091124665732975
#>     Node 9    3.022942948774708
#>     Node 10    -3.2492295789452137
#>     Node 11    0.9233214691183691
#>     Node 12    1.629186130760443
#>     Node 13    0.9557233362335865
#>     Node 14    1.413943735531109
#>     Node 15    -0.5213503371955163
#>     Node 16    0.17102155448602835
#>     Node 17    0.6698061324560207
#>     Node 18    0.2638109244478526
#>     Node 19    3.6242520740790645
#>     Node 20    1.258301538107023
#>     Node 21    -2.553933484875257
#>     Node 22    0.5706352772179247
#>     Node 23    1.28072193418625
#>     Node 24    -1.2615238850963872
#>     Node 25    4.225565995170005
#>     Node 26    -0.9096976940968575
#>     Node 27    2.067706555907284
#>     Node 28    -2.058335101137725
#>     Node 29    1.0780116814593517
#>     Node 30    0.0038971404341235035
#>     Node 31    0.9788817063696046
#>     Node 32    0.01666383806851165
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    1.128274702958211
#>     Node 2    -2.2759350920676047
#>     Node 3    -1.425493841731336
#>     Node 4    -1.1577239072250916
#>     Node 5    2.670286857524385
#>     Node 6    -1.4307934581859139
#>     Node 7    -3.5526989366195236
#>     Node 8    -2.1099723265977524
#>     Node 9    -3.006375543919657
#>     Node 10    3.1890232526291995
#>     Node 11    -0.8971551774778236
#>     Node 12    -1.6730679139775053
#>     Node 13    -0.9075544322142554
#>     Node 14    -1.3628210724254584
#>     Node 15    0.5255075524946138
#>     Node 16    -0.1945018860084336
#>     Node 17    -0.6481729357212408
#>     Node 18    -0.2281842593938526
#>     Node 19    -3.618497296333607
#>     Node 20    -1.2551409517106689
#>     Node 21    2.5965545401287287
#>     Node 22    -0.6397344503349119
#>     Node 23    -1.339847243941856
#>     Node 24    1.284605472336511
#>     Node 25    -4.216268360963666
#>     Node 26    0.8649325885604927
#>     Node 27    -2.100809980449847
#>     Node 28    2.06278923427654
#>     Node 29    -1.1035609619837525
#>     Node 30    0.07245096099569555
#>     Node 31    -0.9373293053590452
#>     Node 32    -0.035894715768880675
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.08938590034932431
#>     Attrib V1    0.8641309680724732
#>     Attrib V10    -0.039148432863556466
#>     Attrib V11    0.21912436385203513
#>     Attrib V12    -0.038227319369077736
#>     Attrib V13    -0.26330974953774616
#>     Attrib V14    -0.3832741277026065
#>     Attrib V15    0.35470473339014646
#>     Attrib V16    0.34863931678530263
#>     Attrib V17    0.2429095579976131
#>     Attrib V18    -0.36376926200013304
#>     Attrib V19    0.19283835633592014
#>     Attrib V2    -5.700771805374716E-4
#>     Attrib V20    1.1144411896952091
#>     Attrib V21    0.577031053632582
#>     Attrib V22    0.3188049993643295
#>     Attrib V23    0.26989445632625886
#>     Attrib V24    0.17831822341596532
#>     Attrib V25    -0.20186823304392287
#>     Attrib V26    -0.5950461036515415
#>     Attrib V27    -0.8680361989169394
#>     Attrib V28    -0.4356726935506796
#>     Attrib V29    -0.8319720510955687
#>     Attrib V3    0.38950053201129436
#>     Attrib V30    -0.461270202933607
#>     Attrib V31    -1.2359430369357378
#>     Attrib V32    0.3770460586852453
#>     Attrib V33    0.5905326840831411
#>     Attrib V34    -0.3268462621954839
#>     Attrib V35    -0.021514266287027038
#>     Attrib V36    -0.8421083529983892
#>     Attrib V37    -1.217241839102048
#>     Attrib V38    0.16558558312969432
#>     Attrib V39    0.4706605759814613
#>     Attrib V4    0.3693212671940162
#>     Attrib V40    -0.07149276719556714
#>     Attrib V41    -0.2090851784353779
#>     Attrib V42    0.43294423791531284
#>     Attrib V43    0.6841677428683618
#>     Attrib V44    0.2794657163999804
#>     Attrib V45    0.32660359460456617
#>     Attrib V46    0.11910528107087891
#>     Attrib V47    0.03590194410984209
#>     Attrib V48    0.4081821918226809
#>     Attrib V49    0.2411243693955992
#>     Attrib V5    0.4598491010018428
#>     Attrib V50    -0.9253083472972852
#>     Attrib V51    0.20064661866572153
#>     Attrib V52    0.02815892719147656
#>     Attrib V53    -0.23850653146502712
#>     Attrib V54    0.4384323173601444
#>     Attrib V55    -0.891318943789669
#>     Attrib V56    0.6464323164242668
#>     Attrib V57    -0.5105387807463125
#>     Attrib V58    0.47835271607643065
#>     Attrib V59    0.7461442711735337
#>     Attrib V6    -0.5560262686975548
#>     Attrib V60    0.07770093072483085
#>     Attrib V7    -0.36387915844399266
#>     Attrib V8    0.17646928904981532
#>     Attrib V9    0.6506255033045026
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.19410869125620045
#>     Attrib V1    0.5477182218264486
#>     Attrib V10    0.17540237364761824
#>     Attrib V11    0.34222274602222225
#>     Attrib V12    0.22290128309901253
#>     Attrib V13    0.03590918681210664
#>     Attrib V14    -0.4182506376501356
#>     Attrib V15    0.10945774242055771
#>     Attrib V16    -0.0031455804266618727
#>     Attrib V17    -0.10048453961160665
#>     Attrib V18    -0.5401902929365066
#>     Attrib V19    0.03417756032487788
#>     Attrib V2    0.06026728633144455
#>     Attrib V20    0.6071926140522542
#>     Attrib V21    0.2246562040088544
#>     Attrib V22    0.18063916046196576
#>     Attrib V23    0.18876078609546773
#>     Attrib V24    0.15355588498085243
#>     Attrib V25    -0.15627060063235046
#>     Attrib V26    -0.26040689728404487
#>     Attrib V27    -0.310208794617603
#>     Attrib V28    0.034451371014778756
#>     Attrib V29    -0.36538708824487703
#>     Attrib V3    0.20902129015721063
#>     Attrib V30    -0.12666682275761348
#>     Attrib V31    -0.6490190129840944
#>     Attrib V32    0.47969729904273134
#>     Attrib V33    0.44135950573186955
#>     Attrib V34    -0.3144684472868516
#>     Attrib V35    0.0052955603121696785
#>     Attrib V36    -0.8337704908314176
#>     Attrib V37    -0.9187684296249023
#>     Attrib V38    0.00931135425422314
#>     Attrib V39    0.215453451489097
#>     Attrib V4    0.15457023141709716
#>     Attrib V40    -0.11301012390179442
#>     Attrib V41    0.03228467885756077
#>     Attrib V42    0.1657074998107309
#>     Attrib V43    0.2996852656686681
#>     Attrib V44    0.06139710711456376
#>     Attrib V45    0.2255651130148194
#>     Attrib V46    0.17279487259791204
#>     Attrib V47    0.08528494280233252
#>     Attrib V48    0.3019859212648453
#>     Attrib V49    0.2759572776537116
#>     Attrib V5    0.2568807652564182
#>     Attrib V50    -0.7352950426173293
#>     Attrib V51    0.22295722275364493
#>     Attrib V52    0.22218122001979268
#>     Attrib V53    -0.10368600353548323
#>     Attrib V54    0.26136707180428614
#>     Attrib V55    -0.6057144536779109
#>     Attrib V56    0.3304499598454315
#>     Attrib V57    -0.5230242368790953
#>     Attrib V58    0.24726729177674495
#>     Attrib V59    0.38226155777285026
#>     Attrib V6    -0.41868901650206275
#>     Attrib V60    0.011489720689539037
#>     Attrib V7    -0.4055915766183046
#>     Attrib V8    -0.06821505942688678
#>     Attrib V9    0.4710354108604875
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.0451460492459318
#>     Attrib V1    0.43785194257276444
#>     Attrib V10    0.04520564409927362
#>     Attrib V11    0.18167678885405977
#>     Attrib V12    0.05984611560200385
#>     Attrib V13    -0.05090734080519546
#>     Attrib V14    -0.300843761142198
#>     Attrib V15    0.12961564944980236
#>     Attrib V16    0.06402614141092723
#>     Attrib V17    0.002812449464862447
#>     Attrib V18    -0.3725510030492676
#>     Attrib V19    0.036945321931620555
#>     Attrib V2    0.007142202899390335
#>     Attrib V20    0.5694188860975165
#>     Attrib V21    0.28348016252015956
#>     Attrib V22    0.08676693268973712
#>     Attrib V23    0.09353543638371606
#>     Attrib V24    0.02198866126880615
#>     Attrib V25    -0.24681803180651013
#>     Attrib V26    -0.3240516229580296
#>     Attrib V27    -0.4133473726526033
#>     Attrib V28    -0.07126610163986857
#>     Attrib V29    -0.304421036428645
#>     Attrib V3    0.21868602758289588
#>     Attrib V30    -0.17245217708343724
#>     Attrib V31    -0.6142938284285149
#>     Attrib V32    0.3148515629873746
#>     Attrib V33    0.40679286372671647
#>     Attrib V34    -0.1560706990715278
#>     Attrib V35    0.04706118478618173
#>     Attrib V36    -0.6036228951486919
#>     Attrib V37    -0.7063210921832253
#>     Attrib V38    0.041872811328299564
#>     Attrib V39    0.21260983622105764
#>     Attrib V4    0.15816615372598236
#>     Attrib V40    -0.07371725435582067
#>     Attrib V41    -0.0616757936904201
#>     Attrib V42    0.17473470164723903
#>     Attrib V43    0.26356785540252287
#>     Attrib V44    0.10555595093179423
#>     Attrib V45    0.29080124131954244
#>     Attrib V46    0.1139680658285325
#>     Attrib V47    0.02284790830474192
#>     Attrib V48    0.2987002075531615
#>     Attrib V49    0.2688730557893594
#>     Attrib V5    0.24673567392951193
#>     Attrib V50    -0.5436137248179178
#>     Attrib V51    0.21117059720045825
#>     Attrib V52    0.12700611910590953
#>     Attrib V53    -0.050688775533797935
#>     Attrib V54    0.16092542482125624
#>     Attrib V55    -0.5208014462471006
#>     Attrib V56    0.3240215475052032
#>     Attrib V57    -0.37759731776083294
#>     Attrib V58    0.17366571242206508
#>     Attrib V59    0.3144420208549056
#>     Attrib V6    -0.3563155759749654
#>     Attrib V60    -0.03872525346759269
#>     Attrib V7    -0.28404042650497746
#>     Attrib V8    -0.09240825444965159
#>     Attrib V9    0.400970375819002
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    7.159449334113156E-4
#>     Attrib V1    -0.8886358925458369
#>     Attrib V10    0.017336564890576896
#>     Attrib V11    -0.345361044262483
#>     Attrib V12    -0.1881602369993526
#>     Attrib V13    0.11330962849425166
#>     Attrib V14    0.543136407202771
#>     Attrib V15    -0.23637682156191459
#>     Attrib V16    -0.3177518662579905
#>     Attrib V17    -0.13387079440294145
#>     Attrib V18    0.55312352306069
#>     Attrib V19    -0.27641264053641046
#>     Attrib V2    0.04698362404150495
#>     Attrib V20    -1.3435985980647576
#>     Attrib V21    -0.6670872832240899
#>     Attrib V22    -0.48103068457591125
#>     Attrib V23    -0.3343673615511003
#>     Attrib V24    -0.24513273215968218
#>     Attrib V25    0.24111543135385732
#>     Attrib V26    0.5557752047232314
#>     Attrib V27    0.7294993787317545
#>     Attrib V28    0.13007007647318264
#>     Attrib V29    0.6612567368520618
#>     Attrib V3    -0.29867712865129253
#>     Attrib V30    0.4850368520806975
#>     Attrib V31    1.4043745764350624
#>     Attrib V32    -0.4716336958003064
#>     Attrib V33    -0.6751734392615262
#>     Attrib V34    0.4577786577924258
#>     Attrib V35    0.03853764862503486
#>     Attrib V36    1.0976256748271196
#>     Attrib V37    1.4226425175525048
#>     Attrib V38    -0.2361434410976096
#>     Attrib V39    -0.6391754895019313
#>     Attrib V4    -0.4215962555548502
#>     Attrib V40    0.05552474822155932
#>     Attrib V41    0.11361679687961969
#>     Attrib V42    -0.38095869839944657
#>     Attrib V43    -0.6989781782973751
#>     Attrib V44    -0.23859490609523745
#>     Attrib V45    -0.4753585220761738
#>     Attrib V46    -0.3031580040057528
#>     Attrib V47    -0.17388547822312808
#>     Attrib V48    -0.6089298833139052
#>     Attrib V49    -0.4650935263313657
#>     Attrib V5    -0.4178926983885174
#>     Attrib V50    1.224358745334026
#>     Attrib V51    -0.3808780982641709
#>     Attrib V52    -0.16849583851075717
#>     Attrib V53    0.2926343682609846
#>     Attrib V54    -0.42333206176177113
#>     Attrib V55    1.1606112215638111
#>     Attrib V56    -0.5419069657182801
#>     Attrib V57    0.6739077086787013
#>     Attrib V58    -0.4781636880534781
#>     Attrib V59    -0.8318372539994309
#>     Attrib V6    0.6153461752561193
#>     Attrib V60    -0.054923083481546196
#>     Attrib V7    0.5299358630343186
#>     Attrib V8    0.006306284566418906
#>     Attrib V9    -0.7971517144268019
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.0030371281860479965
#>     Attrib V1    0.6146875372263255
#>     Attrib V10    -0.08093268778811026
#>     Attrib V11    0.10722061727509398
#>     Attrib V12    -0.003911333290164286
#>     Attrib V13    -0.20587545476953073
#>     Attrib V14    -0.3012248814600658
#>     Attrib V15    0.2370098543975371
#>     Attrib V16    0.3016466468982634
#>     Attrib V17    0.16275387069498365
#>     Attrib V18    -0.21435782827942784
#>     Attrib V19    0.1196648653582752
#>     Attrib V2    0.06680868352685303
#>     Attrib V20    0.7414774915947078
#>     Attrib V21    0.40512817196943807
#>     Attrib V22    0.1963636250360112
#>     Attrib V23    0.16557760862639587
#>     Attrib V24    0.12928321060690678
#>     Attrib V25    -0.15422586716472125
#>     Attrib V26    -0.456933645104641
#>     Attrib V27    -0.5754885532792495
#>     Attrib V28    -0.3600134838943474
#>     Attrib V29    -0.5702832208559644
#>     Attrib V3    0.2647479773310281
#>     Attrib V30    -0.3136668621132541
#>     Attrib V31    -0.8102818500545944
#>     Attrib V32    0.2609826621745945
#>     Attrib V33    0.39574650780446113
#>     Attrib V34    -0.29128826553736814
#>     Attrib V35    -0.04281891892425467
#>     Attrib V36    -0.6261948331949989
#>     Attrib V37    -0.7776364039983785
#>     Attrib V38    0.10134550573291377
#>     Attrib V39    0.27739500226690245
#>     Attrib V4    0.2958345002128758
#>     Attrib V40    -0.10650865000579497
#>     Attrib V41    -0.1163029857175227
#>     Attrib V42    0.26250074875245827
#>     Attrib V43    0.4068007031397728
#>     Attrib V44    0.16826473468342276
#>     Attrib V45    0.24873305158967865
#>     Attrib V46    0.11235987647217127
#>     Attrib V47    0.00453328448290862
#>     Attrib V48    0.2227999073738437
#>     Attrib V49    0.16346463819727075
#>     Attrib V5    0.2932416794868724
#>     Attrib V50    -0.5789500199805766
#>     Attrib V51    0.16192361200556218
#>     Attrib V52    0.02625311777245807
#>     Attrib V53    -0.08155707933509486
#>     Attrib V54    0.31775943424495035
#>     Attrib V55    -0.5667457880450576
#>     Attrib V56    0.46580392558026135
#>     Attrib V57    -0.284060920954876
#>     Attrib V58    0.3454623649880624
#>     Attrib V59    0.5373382374658522
#>     Attrib V6    -0.28490951289955324
#>     Attrib V60    0.11155194431329718
#>     Attrib V7    -0.20599957506142927
#>     Attrib V8    0.10016882539857551
#>     Attrib V9    0.4586507764709532
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.8432329506867539
#>     Attrib V1    0.25947435591691986
#>     Attrib V10    0.9082529686667652
#>     Attrib V11    1.287762918036309
#>     Attrib V12    1.2742053180226027
#>     Attrib V13    1.0406988039598857
#>     Attrib V14    -0.3570657432464609
#>     Attrib V15    -0.33647566509272414
#>     Attrib V16    -0.5157036494306081
#>     Attrib V17    -0.7436021085775797
#>     Attrib V18    -0.8361355707215081
#>     Attrib V19    -0.3245387619049718
#>     Attrib V2    0.4419163627810235
#>     Attrib V20    0.2651668392316457
#>     Attrib V21    0.41514935715996787
#>     Attrib V22    0.2694566161479469
#>     Attrib V23    0.45030673373326296
#>     Attrib V24    0.4647353999916759
#>     Attrib V25    -0.19539761605831218
#>     Attrib V26    0.9276598921633604
#>     Attrib V27    1.2566716678445016
#>     Attrib V28    1.4141932272089415
#>     Attrib V29    0.941573589050153
#>     Attrib V3    0.052711729429182674
#>     Attrib V30    0.30223656077674055
#>     Attrib V31    -0.6727564551487115
#>     Attrib V32    -0.1497051797680546
#>     Attrib V33    -0.2835442243701792
#>     Attrib V34    -0.1330411614629401
#>     Attrib V35    0.5865265038861301
#>     Attrib V36    -0.7150872659627086
#>     Attrib V37    -0.212138944898954
#>     Attrib V38    0.09770198498326124
#>     Attrib V39    -0.06476919294466617
#>     Attrib V4    -0.16947236052576142
#>     Attrib V40    0.1301770432205777
#>     Attrib V41    1.1341426126493854
#>     Attrib V42    -0.40149490342130145
#>     Attrib V43    -0.3156563187760089
#>     Attrib V44    -0.012062351210690634
#>     Attrib V45    0.9017274429237497
#>     Attrib V46    1.0690526780670313
#>     Attrib V47    0.3399241654580705
#>     Attrib V48    0.5079261159824271
#>     Attrib V49    0.9537126030870381
#>     Attrib V5    0.3981430251396611
#>     Attrib V50    -0.2343300285383123
#>     Attrib V51    0.9948198488723655
#>     Attrib V52    1.0963837603361146
#>     Attrib V53    0.7900816375456262
#>     Attrib V54    0.6775663568805222
#>     Attrib V55    -0.011884852050902617
#>     Attrib V56    -0.7287251640253978
#>     Attrib V57    -0.950347297825248
#>     Attrib V58    -0.4090510688509335
#>     Attrib V59    -0.2239620735643552
#>     Attrib V6    0.188340682844052
#>     Attrib V60    0.11390291055508038
#>     Attrib V7    -0.2530573845464277
#>     Attrib V8    -0.6847600085032868
#>     Attrib V9    0.6138136605333612
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.23060146452881528
#>     Attrib V1    0.11211119308150423
#>     Attrib V10    0.7107310915986615
#>     Attrib V11    0.9055371067450312
#>     Attrib V12    0.7952673384870579
#>     Attrib V13    0.473654241915997
#>     Attrib V14    -0.5711715450493741
#>     Attrib V15    -0.4424436496365022
#>     Attrib V16    -0.3239743755545715
#>     Attrib V17    -0.39902373074897884
#>     Attrib V18    -0.5497970413381339
#>     Attrib V19    -0.15533063265294453
#>     Attrib V2    0.09425096493118881
#>     Attrib V20    0.0659548189389742
#>     Attrib V21    -0.11487818357886799
#>     Attrib V22    -0.0812740676060983
#>     Attrib V23    0.3047991689284025
#>     Attrib V24    0.5370725902290889
#>     Attrib V25    0.3006762502886715
#>     Attrib V26    0.7281357871060804
#>     Attrib V27    0.6976793170965837
#>     Attrib V28    0.7259778640336575
#>     Attrib V29    0.11808564278217223
#>     Attrib V3    0.1253315513034843
#>     Attrib V30    0.15547418255621673
#>     Attrib V31    -0.3837640126132244
#>     Attrib V32    0.22213633653971274
#>     Attrib V33    0.24207271164129943
#>     Attrib V34    0.24982555055909034
#>     Attrib V35    0.7364592377696734
#>     Attrib V36    -0.3775005171920345
#>     Attrib V37    -0.5241979066631217
#>     Attrib V38    -0.006232113281343382
#>     Attrib V39    -0.17592285054835127
#>     Attrib V4    0.11379351182154829
#>     Attrib V40    -0.07595766757864934
#>     Attrib V41    0.43421751684209464
#>     Attrib V42    -0.25634392973737036
#>     Attrib V43    -0.02180338111565991
#>     Attrib V44    0.029176694858632887
#>     Attrib V45    0.5827584989493245
#>     Attrib V46    0.6749536773514427
#>     Attrib V47    0.33144930960062907
#>     Attrib V48    0.5698938886380621
#>     Attrib V49    0.5757497434715179
#>     Attrib V5    0.30758580516181844
#>     Attrib V50    -0.40946990964860136
#>     Attrib V51    0.6494311141352532
#>     Attrib V52    0.6871725840448847
#>     Attrib V53    0.4237608496107385
#>     Attrib V54    0.18458746383851476
#>     Attrib V55    -0.19268567711671541
#>     Attrib V56    -0.32370660836977294
#>     Attrib V57    -0.7262749573505206
#>     Attrib V58    -0.15721606535915164
#>     Attrib V59    -0.10013862213571889
#>     Attrib V6    -0.22955337796967845
#>     Attrib V60    -0.028675401281077924
#>     Attrib V7    -0.3986247062212471
#>     Attrib V8    -0.36639722925687074
#>     Attrib V9    0.687647904532757
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.35160869357938435
#>     Attrib V1    0.04524150812701364
#>     Attrib V10    1.038235659271963
#>     Attrib V11    1.2555273240749731
#>     Attrib V12    1.2370647149864813
#>     Attrib V13    0.7613093800776202
#>     Attrib V14    -0.7537091135123157
#>     Attrib V15    -0.6183722473527147
#>     Attrib V16    -0.45724844314284474
#>     Attrib V17    -0.5502667812171964
#>     Attrib V18    -0.6389887261255667
#>     Attrib V19    -0.24172317291602083
#>     Attrib V2    0.17593588133125915
#>     Attrib V20    0.022904232443589037
#>     Attrib V21    -0.021259538117327496
#>     Attrib V22    0.011794275489528482
#>     Attrib V23    0.3470131465675487
#>     Attrib V24    0.5753611317976917
#>     Attrib V25    0.23800417944961672
#>     Attrib V26    0.9261898810934405
#>     Attrib V27    0.9190173493326848
#>     Attrib V28    0.8266287063015967
#>     Attrib V29    0.09344776982742728
#>     Attrib V3    0.052990030337476
#>     Attrib V30    0.1423750029654364
#>     Attrib V31    -0.38280862742656874
#>     Attrib V32    0.23672871257687045
#>     Attrib V33    0.17794012151583605
#>     Attrib V34    0.43282084979789287
#>     Attrib V35    0.926316256022419
#>     Attrib V36    -0.5416648805550254
#>     Attrib V37    -0.5203246539927313
#>     Attrib V38    -0.09222467059765223
#>     Attrib V39    -0.2949143127933601
#>     Attrib V4    -0.08508487034023572
#>     Attrib V40    -0.04157581669212161
#>     Attrib V41    0.7195624007835975
#>     Attrib V42    -0.4519797450868824
#>     Attrib V43    -0.15238399556483603
#>     Attrib V44    -0.07243902536372061
#>     Attrib V45    0.7352720035590844
#>     Attrib V46    0.9914579382070683
#>     Attrib V47    0.44400600887854696
#>     Attrib V48    0.5921219504847975
#>     Attrib V49    0.7629928199391021
#>     Attrib V5    0.20792525364099612
#>     Attrib V50    -0.3848050376958246
#>     Attrib V51    0.9470406409058896
#>     Attrib V52    0.9749154721494537
#>     Attrib V53    0.6438198362669464
#>     Attrib V54    0.22738638074676107
#>     Attrib V55    0.029487982547135666
#>     Attrib V56    -0.4924940141551959
#>     Attrib V57    -1.0885280246618154
#>     Attrib V58    -0.2663570704223512
#>     Attrib V59    -0.32324560913999234
#>     Attrib V6    -0.10656697426660865
#>     Attrib V60    -0.03977394255263954
#>     Attrib V7    -0.38909160177945873
#>     Attrib V8    -0.5555592551055254
#>     Attrib V9    0.777396517977036
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.0360670122047078
#>     Attrib V1    -0.9994352525598696
#>     Attrib V10    -0.03324717400660093
#>     Attrib V11    -0.5172595911684909
#>     Attrib V12    -0.19702598335912358
#>     Attrib V13    0.18392826738883486
#>     Attrib V14    0.7061225335409406
#>     Attrib V15    -0.320488682434575
#>     Attrib V16    -0.3147023601722355
#>     Attrib V17    -0.2333894263283667
#>     Attrib V18    0.6560362683814136
#>     Attrib V19    -0.3071125260172932
#>     Attrib V2    0.042449603308458934
#>     Attrib V20    -1.5215271194989912
#>     Attrib V21    -0.7813140918810788
#>     Attrib V22    -0.5730877957391057
#>     Attrib V23    -0.43288073785198217
#>     Attrib V24    -0.34234962200809976
#>     Attrib V25    0.13928379447660663
#>     Attrib V26    0.6212892875716929
#>     Attrib V27    0.8415644190462614
#>     Attrib V28    0.222574579298952
#>     Attrib V29    0.8445151828611395
#>     Attrib V3    -0.36960779704554714
#>     Attrib V30    0.6442863295861199
#>     Attrib V31    1.6672111212463891
#>     Attrib V32    -0.6077608125297896
#>     Attrib V33    -0.7820023159486098
#>     Attrib V34    0.5283225366735239
#>     Attrib V35    -0.006021826626975648
#>     Attrib V36    1.2383548851908626
#>     Attrib V37    1.7087038498589155
#>     Attrib V38    -0.19815899446085966
#>     Attrib V39    -0.7367308603871973
#>     Attrib V4    -0.44124547979223405
#>     Attrib V40    0.066815040114215
#>     Attrib V41    0.22192763518303377
#>     Attrib V42    -0.508495928403985
#>     Attrib V43    -0.8605720788461961
#>     Attrib V44    -0.302161801401336
#>     Attrib V45    -0.4871718718057857
#>     Attrib V46    -0.31614904508937697
#>     Attrib V47    -0.2165710524793406
#>     Attrib V48    -0.749378083764934
#>     Attrib V49    -0.5388152663963368
#>     Attrib V5    -0.4939506466503795
#>     Attrib V50    1.4165066164153575
#>     Attrib V51    -0.427141002096194
#>     Attrib V52    -0.1324204626902572
#>     Attrib V53    0.4125099991148266
#>     Attrib V54    -0.5138356525129741
#>     Attrib V55    1.313468129723704
#>     Attrib V56    -0.6761601832954037
#>     Attrib V57    0.8417879762570808
#>     Attrib V58    -0.5859591089093276
#>     Attrib V59    -1.044455167258675
#>     Attrib V6    0.7321395827354951
#>     Attrib V60    -0.11772360798894795
#>     Attrib V7    0.5538422518717584
#>     Attrib V8    -0.07469280005468906
#>     Attrib V9    -0.9553305802426686
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.0021321026044577606
#>     Attrib V1    0.3525482717496841
#>     Attrib V10    -0.01404272127290942
#>     Attrib V11    0.10904471479760826
#>     Attrib V12    0.051210007262537785
#>     Attrib V13    -0.11437502040722254
#>     Attrib V14    -0.22472973015534023
#>     Attrib V15    0.11985168860901815
#>     Attrib V16    0.12299570962069938
#>     Attrib V17    0.11322859552521876
#>     Attrib V18    -0.1777930683307227
#>     Attrib V19    0.06816503500732927
#>     Attrib V2    -2.2533700083201167E-4
#>     Attrib V20    0.5308140862584316
#>     Attrib V21    0.23388438297568395
#>     Attrib V22    0.09439796454405877
#>     Attrib V23    0.08868045258657412
#>     Attrib V24    0.048478140879328765
#>     Attrib V25    -0.11368137898612879
#>     Attrib V26    -0.28033063029287186
#>     Attrib V27    -0.3124747458987281
#>     Attrib V28    -0.11469000581060326
#>     Attrib V29    -0.315654187250612
#>     Attrib V3    0.11489905564488959
#>     Attrib V30    -0.17020182440119858
#>     Attrib V31    -0.6085683153894936
#>     Attrib V32    0.11122480550598304
#>     Attrib V33    0.24770599911930852
#>     Attrib V34    -0.11059203935143651
#>     Attrib V35    0.07886964149260264
#>     Attrib V36    -0.35840011758719276
#>     Attrib V37    -0.4985875082130179
#>     Attrib V38    0.1526175367835202
#>     Attrib V39    0.17910493761894594
#>     Attrib V4    0.14872599518556237
#>     Attrib V40    -0.07612960481287159
#>     Attrib V41    -0.1285525399580496
#>     Attrib V42    0.10801542361327958
#>     Attrib V43    0.24095129647275465
#>     Attrib V44    0.1566570928806783
#>     Attrib V45    0.2635987308720401
#>     Attrib V46    0.10364999381853826
#>     Attrib V47    0.05502296017140971
#>     Attrib V48    0.21007736489221582
#>     Attrib V49    0.1389391996868235
#>     Attrib V5    0.22619632338251666
#>     Attrib V50    -0.36845029652744293
#>     Attrib V51    0.20049722602935402
#>     Attrib V52    0.05959037887230257
#>     Attrib V53    -0.03755069128219212
#>     Attrib V54    0.2898513804545233
#>     Attrib V55    -0.34907391828566703
#>     Attrib V56    0.2685318952484331
#>     Attrib V57    -0.25889627520862457
#>     Attrib V58    0.18352693875771323
#>     Attrib V59    0.24176051033139467
#>     Attrib V6    -0.20425454958080547
#>     Attrib V60    0.020565035349004883
#>     Attrib V7    -0.20089099841667118
#>     Attrib V8    0.012335109409397381
#>     Attrib V9    0.2897356579433682
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.3995807541604196
#>     Attrib V1    0.43005205468751145
#>     Attrib V10    0.11785008559309826
#>     Attrib V11    0.5883006738227909
#>     Attrib V12    0.4529755931990189
#>     Attrib V13    0.18995755589674973
#>     Attrib V14    -0.4585938891979245
#>     Attrib V15    -0.10106774610145951
#>     Attrib V16    -0.10406359966767378
#>     Attrib V17    -0.15822684973814954
#>     Attrib V18    -0.5305488912623899
#>     Attrib V19    0.06760956858349929
#>     Attrib V2    0.027043258214180847
#>     Attrib V20    0.5786888810853577
#>     Attrib V21    0.17673159184418724
#>     Attrib V22    0.18189865518481305
#>     Attrib V23    0.4024558436566162
#>     Attrib V24    0.4564679686018067
#>     Attrib V25    0.11692889458008118
#>     Attrib V26    0.212281085283179
#>     Attrib V27    0.28198609346434184
#>     Attrib V28    0.5012140471565931
#>     Attrib V29    0.013589930337237991
#>     Attrib V3    0.1663661588277776
#>     Attrib V30    -0.07649887334444445
#>     Attrib V31    -0.8715183535565135
#>     Attrib V32    0.2518897316792548
#>     Attrib V33    0.3574553395188361
#>     Attrib V34    -0.08153660335911726
#>     Attrib V35    0.5022647911622439
#>     Attrib V36    -0.493162519221602
#>     Attrib V37    -0.6834310348456382
#>     Attrib V38    0.21456346001095575
#>     Attrib V39    0.23863191579937348
#>     Attrib V4    0.1406940885452566
#>     Attrib V40    0.011610712297081062
#>     Attrib V41    0.26854252750633667
#>     Attrib V42    0.18000072158193806
#>     Attrib V43    0.549391801683689
#>     Attrib V44    0.15308209836472825
#>     Attrib V45    0.43717460141718373
#>     Attrib V46    0.386391099168704
#>     Attrib V47    0.08613404542323115
#>     Attrib V48    0.34520123592758123
#>     Attrib V49    0.29982100190168015
#>     Attrib V5    0.34848542496288715
#>     Attrib V50    -0.8475384386702529
#>     Attrib V51    0.2652665497416205
#>     Attrib V52    0.31389228769108835
#>     Attrib V53    0.22879079122770418
#>     Attrib V54    0.3448359585039244
#>     Attrib V55    -0.7535152479149918
#>     Attrib V56    0.2632953265707084
#>     Attrib V57    -0.6792839699967659
#>     Attrib V58    0.0914231503509435
#>     Attrib V59    0.379683222356606
#>     Attrib V6    -0.4875804855843545
#>     Attrib V60    0.05327869494302601
#>     Attrib V7    -0.6074084512529655
#>     Attrib V8    -0.2501153342252905
#>     Attrib V9    0.5143835041928596
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.06323708645063085
#>     Attrib V1    0.3971115651082706
#>     Attrib V10    -0.05422239654741359
#>     Attrib V11    0.09375528436922781
#>     Attrib V12    0.014397050965239008
#>     Attrib V13    -0.008108067657867991
#>     Attrib V14    -0.16813035835818219
#>     Attrib V15    0.15045032237985193
#>     Attrib V16    0.11480149535118236
#>     Attrib V17    0.1142415287281368
#>     Attrib V18    -0.16962680911469502
#>     Attrib V19    0.09153592535899424
#>     Attrib V2    0.0460809503589261
#>     Attrib V20    0.5529599935083025
#>     Attrib V21    0.30801444109839
#>     Attrib V22    0.13164123872446848
#>     Attrib V23    0.16308626917714647
#>     Attrib V24    0.10994911021745753
#>     Attrib V25    -0.08447195925069473
#>     Attrib V26    -0.29731281202024346
#>     Attrib V27    -0.29981749191638896
#>     Attrib V28    -0.18215963140797836
#>     Attrib V29    -0.30569597918901564
#>     Attrib V3    0.23595188121703808
#>     Attrib V30    -0.21925501260782695
#>     Attrib V31    -0.6441090133897899
#>     Attrib V32    0.11826324042786135
#>     Attrib V33    0.20556067641621742
#>     Attrib V34    -0.16896505124102215
#>     Attrib V35    -0.023528532687326627
#>     Attrib V36    -0.41764393972991953
#>     Attrib V37    -0.4884237249556898
#>     Attrib V38    0.10537829083790336
#>     Attrib V39    0.25572183036557977
#>     Attrib V4    0.2060688207523766
#>     Attrib V40    -0.03028628295690951
#>     Attrib V41    -0.07677025607344633
#>     Attrib V42    0.13519765274377682
#>     Attrib V43    0.22454957499310582
#>     Attrib V44    0.11488750200267032
#>     Attrib V45    0.15641661127108855
#>     Attrib V46    0.12355247395538484
#>     Attrib V47    0.058805123666247246
#>     Attrib V48    0.16580347671020024
#>     Attrib V49    0.1815717694566729
#>     Attrib V5    0.24561509953526162
#>     Attrib V50    -0.4190517664587398
#>     Attrib V51    0.1130425593049464
#>     Attrib V52    0.05164410096668962
#>     Attrib V53    -0.005492305269568224
#>     Attrib V54    0.23020548702735089
#>     Attrib V55    -0.3659274350597265
#>     Attrib V56    0.2986823758373573
#>     Attrib V57    -0.2197380542489732
#>     Attrib V58    0.1893796491246031
#>     Attrib V59    0.38027068424117677
#>     Attrib V6    -0.19197811619332053
#>     Attrib V60    0.10562960595694382
#>     Attrib V7    -0.115861960558908
#>     Attrib V8    -0.036245274408974223
#>     Attrib V9    0.26339712527484277
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.2682556326894544
#>     Attrib V1    0.45137581604057037
#>     Attrib V10    0.4028041413515797
#>     Attrib V11    0.6286002040797342
#>     Attrib V12    0.3936277802612214
#>     Attrib V13    0.1199181785588867
#>     Attrib V14    -0.47391260014312137
#>     Attrib V15    -0.06034238491049277
#>     Attrib V16    -0.2264923168601672
#>     Attrib V17    -0.29492636739134487
#>     Attrib V18    -0.5930418674456115
#>     Attrib V19    -0.21659479535808882
#>     Attrib V2    0.035462516939164204
#>     Attrib V20    0.234274685340591
#>     Attrib V21    -0.034019274525363664
#>     Attrib V22    -0.08645620917806167
#>     Attrib V23    0.07195511316837007
#>     Attrib V24    0.10306504663057765
#>     Attrib V25    -0.09736766371898664
#>     Attrib V26    0.09134288731659561
#>     Attrib V27    0.03585164380742958
#>     Attrib V28    0.18595339580685258
#>     Attrib V29    -0.21213831537595385
#>     Attrib V3    0.07912916104584053
#>     Attrib V30    -0.0336836696977196
#>     Attrib V31    -0.4959291933820038
#>     Attrib V32    0.3959341471719997
#>     Attrib V33    0.398997835601718
#>     Attrib V34    -0.0732548280657959
#>     Attrib V35    0.31399248313819006
#>     Attrib V36    -0.6312648131937331
#>     Attrib V37    -0.6681825848426493
#>     Attrib V38    -0.02012037139048247
#>     Attrib V39    0.06077088141868883
#>     Attrib V4    0.06668569592844281
#>     Attrib V40    -0.18416463161667643
#>     Attrib V41    0.04614990442034198
#>     Attrib V42    -0.03906781957902286
#>     Attrib V43    0.16377619698101117
#>     Attrib V44    0.051695778010037906
#>     Attrib V45    0.28065352061857907
#>     Attrib V46    0.29617875141740324
#>     Attrib V47    0.05918335988084066
#>     Attrib V48    0.38451253309366445
#>     Attrib V49    0.3859813044223945
#>     Attrib V5    0.14047765094984493
#>     Attrib V50    -0.5890219874321453
#>     Attrib V51    0.31526697180535745
#>     Attrib V52    0.32284020672148167
#>     Attrib V53    0.004883098799223674
#>     Attrib V54    0.22077253523122814
#>     Attrib V55    -0.458149491983952
#>     Attrib V56    0.07868429212154636
#>     Attrib V57    -0.6320568065214079
#>     Attrib V58    0.17721978420967183
#>     Attrib V59    0.08301995737774683
#>     Attrib V6    -0.364958542593195
#>     Attrib V60    0.02538269073092291
#>     Attrib V7    -0.35080128231696706
#>     Attrib V8    -0.16202967738003815
#>     Attrib V9    0.5791495572623073
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.1349740362199039
#>     Attrib V1    -0.18696288332275954
#>     Attrib V10    -0.05623662820909502
#>     Attrib V11    -0.2175164378097305
#>     Attrib V12    -0.0996367031445557
#>     Attrib V13    -0.07965209875792233
#>     Attrib V14    0.12935687317509842
#>     Attrib V15    0.006227328039777714
#>     Attrib V16    -0.0458871314071837
#>     Attrib V17    -0.038609467231504296
#>     Attrib V18    0.09505622067241767
#>     Attrib V19    -0.0018089201032727687
#>     Attrib V2    -0.030311176623073626
#>     Attrib V20    -0.23240415327983396
#>     Attrib V21    -0.12090367969275495
#>     Attrib V22    -0.033263592876052295
#>     Attrib V23    -0.04800621005663687
#>     Attrib V24    -0.011345364238154989
#>     Attrib V25    0.10294635383897681
#>     Attrib V26    0.1241091202044374
#>     Attrib V27    -0.04483720600926885
#>     Attrib V28    -0.1599469862737513
#>     Attrib V29    -0.06761294935380298
#>     Attrib V3    -0.0046692114175992915
#>     Attrib V30    -0.1088712358654217
#>     Attrib V31    0.19629931561139718
#>     Attrib V32    -0.14815451451590012
#>     Attrib V33    -0.1481888024806613
#>     Attrib V34    0.09667323123581907
#>     Attrib V35    -0.09580609621859135
#>     Attrib V36    0.2674019045656354
#>     Attrib V37    0.3242028321954631
#>     Attrib V38    -0.031060664141030068
#>     Attrib V39    -0.05176770915035658
#>     Attrib V4    -0.028242366279531885
#>     Attrib V40    0.02908750310210181
#>     Attrib V41    -0.05986157760200971
#>     Attrib V42    -0.01564760168457471
#>     Attrib V43    -0.11659858021582224
#>     Attrib V44    -0.08443617368016888
#>     Attrib V45    -0.1381251362359311
#>     Attrib V46    -0.08598733058167449
#>     Attrib V47    -0.018853502742925545
#>     Attrib V48    -0.13382313440836152
#>     Attrib V49    -0.15470684677755947
#>     Attrib V5    -0.05331918099994657
#>     Attrib V50    0.3367937746678114
#>     Attrib V51    -0.08143075884303885
#>     Attrib V52    -0.13824448841834622
#>     Attrib V53    0.05445212608795949
#>     Attrib V54    -0.09503990095187832
#>     Attrib V55    0.251151313949066
#>     Attrib V56    0.021870348493756797
#>     Attrib V57    0.2572648931191289
#>     Attrib V58    -0.032428953807583524
#>     Attrib V59    -0.09024641721420758
#>     Attrib V6    0.14407596649599216
#>     Attrib V60    -0.022065641643304327
#>     Attrib V7    0.12377392719197855
#>     Attrib V8    0.10614003994683782
#>     Attrib V9    -0.1726205473665514
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.14409601095878874
#>     Attrib V1    0.13100072366261664
#>     Attrib V10    0.04773056774730665
#>     Attrib V11    0.039775035951578046
#>     Attrib V12    0.01664736616230559
#>     Attrib V13    0.024210109021948034
#>     Attrib V14    -0.04519519013428994
#>     Attrib V15    0.013446684538200967
#>     Attrib V16    0.06098722325946439
#>     Attrib V17    0.035678414771796806
#>     Attrib V18    -0.009016857325015247
#>     Attrib V19    0.010063707305931762
#>     Attrib V2    0.03935166991540935
#>     Attrib V20    0.03422856355731049
#>     Attrib V21    -0.019877116836039297
#>     Attrib V22    -0.06313255319948158
#>     Attrib V23    -0.07490937695386397
#>     Attrib V24    6.643543841478807E-4
#>     Attrib V25    -0.03231717068155652
#>     Attrib V26    -0.07212590743164228
#>     Attrib V27    -0.07949421217057044
#>     Attrib V28    -0.027010211308084522
#>     Attrib V29    -0.06311683652345078
#>     Attrib V3    0.1303511764226242
#>     Attrib V30    -0.07122237205515201
#>     Attrib V31    -0.1702907495270631
#>     Attrib V32    0.018189029944700032
#>     Attrib V33    0.04532082301960598
#>     Attrib V34    0.02800435546227213
#>     Attrib V35    0.040987165647755126
#>     Attrib V36    -0.06158340732021177
#>     Attrib V37    -0.048817270446145075
#>     Attrib V38    0.04654200407455432
#>     Attrib V39    0.06173029411887766
#>     Attrib V4    0.13513590542312115
#>     Attrib V40    -0.016400032467012673
#>     Attrib V41    0.014430014537674432
#>     Attrib V42    0.06835845124137549
#>     Attrib V43    0.05267910414994393
#>     Attrib V44    0.03322949464087227
#>     Attrib V45    0.11522019820931943
#>     Attrib V46    0.10557148570210856
#>     Attrib V47    0.06702301838977974
#>     Attrib V48    0.085561526159902
#>     Attrib V49    0.05309041487164815
#>     Attrib V5    0.10717837053009492
#>     Attrib V50    0.03190738568704962
#>     Attrib V51    0.15434128210623332
#>     Attrib V52    0.1263094665508983
#>     Attrib V53    0.11796613212739397
#>     Attrib V54    0.07343424582449219
#>     Attrib V55    0.027614662138593093
#>     Attrib V56    0.1216512931146117
#>     Attrib V57    0.019244113883910546
#>     Attrib V58    0.1389805210890072
#>     Attrib V59    0.07344522402809497
#>     Attrib V6    0.010961023501124429
#>     Attrib V60    0.060112289183772774
#>     Attrib V7    -0.012193377615832801
#>     Attrib V8    -0.01108197701138854
#>     Attrib V9    0.12226828332020279
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    7.503316903101638E-4
#>     Attrib V1    0.3265334040117507
#>     Attrib V10    0.045507994025306135
#>     Attrib V11    0.0965426514499851
#>     Attrib V12    -0.029104835496297488
#>     Attrib V13    -0.10293350143522968
#>     Attrib V14    -0.17462517729486388
#>     Attrib V15    0.1508674268504402
#>     Attrib V16    0.08402480203269443
#>     Attrib V17    0.03554547850329633
#>     Attrib V18    -0.16507583428027867
#>     Attrib V19    0.05072311969529158
#>     Attrib V2    0.12170445436751073
#>     Attrib V20    0.31600768352383607
#>     Attrib V21    0.1505706286695285
#>     Attrib V22    0.11119432223694191
#>     Attrib V23    0.02103015850367293
#>     Attrib V24    0.03331309801888021
#>     Attrib V25    -0.16856884429585878
#>     Attrib V26    -0.22776165329213477
#>     Attrib V27    -0.2408138226753548
#>     Attrib V28    -0.14245549483190698
#>     Attrib V29    -0.25304621601581845
#>     Attrib V3    0.12377236109933151
#>     Attrib V30    -0.10771713593581858
#>     Attrib V31    -0.37302217342686433
#>     Attrib V32    0.05811139709559528
#>     Attrib V33    0.22260925918638363
#>     Attrib V34    -0.14181682610699842
#>     Attrib V35    0.04630821508320113
#>     Attrib V36    -0.3144965593145105
#>     Attrib V37    -0.37164486829441135
#>     Attrib V38    0.105651718321742
#>     Attrib V39    0.131264381124265
#>     Attrib V4    0.14890185187721297
#>     Attrib V40    -0.10061935015715873
#>     Attrib V41    -0.05920798284485768
#>     Attrib V42    0.03545821207861176
#>     Attrib V43    0.19474886945207462
#>     Attrib V44    0.11876388532690721
#>     Attrib V45    0.20183389474661043
#>     Attrib V46    0.06535500610736208
#>     Attrib V47    -0.01492085028944095
#>     Attrib V48    0.1907982607012385
#>     Attrib V49    0.09410271713564222
#>     Attrib V5    0.13966118970689237
#>     Attrib V50    -0.244255993017661
#>     Attrib V51    0.13484377269720488
#>     Attrib V52    0.0653094236172463
#>     Attrib V53    -0.02875120309527271
#>     Attrib V54    0.16010476661644568
#>     Attrib V55    -0.18477357950124504
#>     Attrib V56    0.21454995927229983
#>     Attrib V57    -0.12355439265000762
#>     Attrib V58    0.09210822603221974
#>     Attrib V59    0.17203220611845849
#>     Attrib V6    -0.1459754921403763
#>     Attrib V60    0.025759448973148646
#>     Attrib V7    -0.15402307470984355
#>     Attrib V8    0.015184367658375048
#>     Attrib V9    0.20674832967021553
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.15992027990151292
#>     Attrib V1    0.15797141070535037
#>     Attrib V10    0.053714401769288565
#>     Attrib V11    0.05918840078004165
#>     Attrib V12    0.006376078969395194
#>     Attrib V13    -0.01502615645476359
#>     Attrib V14    -0.026878606812461993
#>     Attrib V15    0.017798773232282898
#>     Attrib V16    0.028558329040093127
#>     Attrib V17    -0.0301542678083984
#>     Attrib V18    -0.01341156829637481
#>     Attrib V19    -0.047632624996257894
#>     Attrib V2    0.09487789663017707
#>     Attrib V20    0.10625305486294202
#>     Attrib V21    0.05339894315105581
#>     Attrib V22    -0.047531125825429066
#>     Attrib V23    -0.033105917634763254
#>     Attrib V24    -0.04722513737182449
#>     Attrib V25    -0.051909105343548305
#>     Attrib V26    -0.04524561205370879
#>     Attrib V27    -0.06284106205592038
#>     Attrib V28    -0.05230429860669183
#>     Attrib V29    -0.08208635959963902
#>     Attrib V3    0.1687115719767382
#>     Attrib V30    -0.08403326567760892
#>     Attrib V31    -0.1939641561118008
#>     Attrib V32    2.5402107913957875E-5
#>     Attrib V33    0.06946722320467144
#>     Attrib V34    0.01720013981824568
#>     Attrib V35    0.033197201279195364
#>     Attrib V36    -0.008390182392595546
#>     Attrib V37    -0.10680187280604221
#>     Attrib V38    0.030666715011413576
#>     Attrib V39    0.09297540808800847
#>     Attrib V4    0.10105505022698287
#>     Attrib V40    -0.019901256458462586
#>     Attrib V41    -0.048284580522952064
#>     Attrib V42    0.022998617827482276
#>     Attrib V43    0.06740381000354846
#>     Attrib V44    0.10655567143283863
#>     Attrib V45    0.06858564044416743
#>     Attrib V46    0.06677014209844467
#>     Attrib V47    0.09716563447180245
#>     Attrib V48    0.11307146114537032
#>     Attrib V49    0.11321386928235912
#>     Attrib V5    0.11042873577871563
#>     Attrib V50    -0.07413945722915785
#>     Attrib V51    0.16094889240905846
#>     Attrib V52    0.08748303484253771
#>     Attrib V53    0.07338702990332026
#>     Attrib V54    0.06397199409707073
#>     Attrib V55    0.009710124345312276
#>     Attrib V56    0.1411663937758192
#>     Attrib V57    -0.061415256470911186
#>     Attrib V58    0.0972006259941149
#>     Attrib V59    0.1376936801857316
#>     Attrib V6    -0.05010575230915214
#>     Attrib V60    0.07460687709672707
#>     Attrib V7    0.009705885579406036
#>     Attrib V8    0.04769931979888249
#>     Attrib V9    0.11684427099131241
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.8112305952873271
#>     Attrib V1    0.06895558291336279
#>     Attrib V10    0.9481596580955348
#>     Attrib V11    1.2777682608060221
#>     Attrib V12    1.4806110666245422
#>     Attrib V13    1.1458656299459689
#>     Attrib V14    -0.40746997169855526
#>     Attrib V15    -0.38261998751961845
#>     Attrib V16    -0.6040388594199126
#>     Attrib V17    -0.676891634897292
#>     Attrib V18    -0.7456350827661654
#>     Attrib V19    -0.23813448402866447
#>     Attrib V2    0.3284580468270459
#>     Attrib V20    0.18620409163707008
#>     Attrib V21    0.29611951244448576
#>     Attrib V22    0.3194321570372728
#>     Attrib V23    0.4932161208518835
#>     Attrib V24    0.6102661685330295
#>     Attrib V25    0.029607235578824654
#>     Attrib V26    0.9873334964785134
#>     Attrib V27    1.2576898846369717
#>     Attrib V28    1.3118333587079043
#>     Attrib V29    0.602749514156852
#>     Attrib V3    -0.02984685841795144
#>     Attrib V30    0.16562631095124006
#>     Attrib V31    -0.6507662753276308
#>     Attrib V32    -0.10611513148096051
#>     Attrib V33    -0.23213424760611243
#>     Attrib V34    -0.09486748919029094
#>     Attrib V35    0.715907075485255
#>     Attrib V36    -0.7261106048552791
#>     Attrib V37    -0.3947741044456003
#>     Attrib V38    0.022690952600759123
#>     Attrib V39    -0.09811976621117695
#>     Attrib V4    -0.11857290732905837
#>     Attrib V40    0.11973563581610361
#>     Attrib V41    1.1029710876677965
#>     Attrib V42    -0.371992431195811
#>     Attrib V43    -0.2402487439496966
#>     Attrib V44    0.002710052742579264
#>     Attrib V45    0.932155165612786
#>     Attrib V46    1.0235960062429947
#>     Attrib V47    0.25273486011048923
#>     Attrib V48    0.5146817138734766
#>     Attrib V49    1.0091132990090157
#>     Attrib V5    0.48690240379407684
#>     Attrib V50    -0.3740500395009622
#>     Attrib V51    1.0061582922120915
#>     Attrib V52    1.1487319662112525
#>     Attrib V53    0.9122158554564755
#>     Attrib V54    0.6661000631489478
#>     Attrib V55    -0.039580603590047454
#>     Attrib V56    -0.7780592379076688
#>     Attrib V57    -1.1490559444358575
#>     Attrib V58    -0.29570215240352155
#>     Attrib V59    -0.22840455290637118
#>     Attrib V6    0.18608373914710996
#>     Attrib V60    0.15082931710197137
#>     Attrib V7    -0.25850011619662083
#>     Attrib V8    -0.7140737714369695
#>     Attrib V9    0.630729148489719
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.0017047897147643531
#>     Attrib V1    0.5680532968782825
#>     Attrib V10    -0.0693225136744174
#>     Attrib V11    0.09834887105378205
#>     Attrib V12    0.023508153779954865
#>     Attrib V13    -0.1116083094602882
#>     Attrib V14    -0.16605462950346003
#>     Attrib V15    0.27031346010165247
#>     Attrib V16    0.1948384145718118
#>     Attrib V17    0.15966683888156016
#>     Attrib V18    -0.18509562865105525
#>     Attrib V19    0.16168009157538854
#>     Attrib V2    0.08047860667212624
#>     Attrib V20    0.7184530833755775
#>     Attrib V21    0.45980091873404594
#>     Attrib V22    0.28294778213985133
#>     Attrib V23    0.21047726184944585
#>     Attrib V24    0.11403331192012921
#>     Attrib V25    -0.18709465050427038
#>     Attrib V26    -0.34142144080837933
#>     Attrib V27    -0.4095258226977185
#>     Attrib V28    -0.2484228114280558
#>     Attrib V29    -0.3984108501404304
#>     Attrib V3    0.1987438899559475
#>     Attrib V30    -0.27722417818537937
#>     Attrib V31    -0.8043819887991193
#>     Attrib V32    0.05937489216164843
#>     Attrib V33    0.23130932533090803
#>     Attrib V34    -0.3654304690560034
#>     Attrib V35    -0.06650809143195978
#>     Attrib V36    -0.43243956675547307
#>     Attrib V37    -0.5768054430191522
#>     Attrib V38    0.20443137150206853
#>     Attrib V39    0.28766273919565877
#>     Attrib V4    0.25116556300962906
#>     Attrib V40    -0.05986805509559461
#>     Attrib V41    -0.1226031823297996
#>     Attrib V42    0.15312407002410988
#>     Attrib V43    0.41512106771072504
#>     Attrib V44    0.2387312317449441
#>     Attrib V45    0.2419241784743518
#>     Attrib V46    0.0670821771476676
#>     Attrib V47    -0.0546218344760991
#>     Attrib V48    0.20167961379694246
#>     Attrib V49    0.15283414926667846
#>     Attrib V5    0.33872708088667364
#>     Attrib V50    -0.5353659034985734
#>     Attrib V51    0.19720504667372746
#>     Attrib V52    0.089996130964469
#>     Attrib V53    -0.05733283248454413
#>     Attrib V54    0.42725610772355466
#>     Attrib V55    -0.4579667438723799
#>     Attrib V56    0.3974319717625331
#>     Attrib V57    -0.3127952402895586
#>     Attrib V58    0.3157562249518941
#>     Attrib V59    0.49112991900446823
#>     Attrib V6    -0.2585747977280268
#>     Attrib V60    0.09865047165152073
#>     Attrib V7    -0.12831968801018365
#>     Attrib V8    -0.0023839788313128173
#>     Attrib V9    0.3653410187514926
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.09866325932920766
#>     Attrib V1    -0.8271637997476387
#>     Attrib V10    0.014468752216005076
#>     Attrib V11    -0.3468946877717302
#>     Attrib V12    -0.09283489156445422
#>     Attrib V13    0.1632482931349667
#>     Attrib V14    0.5167251084419753
#>     Attrib V15    -0.2703034695897769
#>     Attrib V16    -0.34720182912263164
#>     Attrib V17    -0.22950617857469963
#>     Attrib V18    0.47262282006234874
#>     Attrib V19    -0.2916639014077064
#>     Attrib V2    0.013367193801276317
#>     Attrib V20    -1.2454610447980088
#>     Attrib V21    -0.5889171680625619
#>     Attrib V22    -0.48563032551445084
#>     Attrib V23    -0.40915409809678016
#>     Attrib V24    -0.23692614594275055
#>     Attrib V25    0.17051770720865567
#>     Attrib V26    0.5939351158612349
#>     Attrib V27    0.7718144352361548
#>     Attrib V28    0.2353663851992939
#>     Attrib V29    0.7585162832688409
#>     Attrib V3    -0.344432765984513
#>     Attrib V30    0.5171572659480282
#>     Attrib V31    1.3777778308183717
#>     Attrib V32    -0.4627998174600482
#>     Attrib V33    -0.6629943143593543
#>     Attrib V34    0.4217975039976905
#>     Attrib V35    -0.0338419037930901
#>     Attrib V36    0.9376254140577707
#>     Attrib V37    1.3793500857083878
#>     Attrib V38    -0.22966248435661588
#>     Attrib V39    -0.588060314106557
#>     Attrib V4    -0.3492206810883848
#>     Attrib V40    0.08687135168184958
#>     Attrib V41    0.2186353739989153
#>     Attrib V42    -0.44906868501699093
#>     Attrib V43    -0.7000960035369375
#>     Attrib V44    -0.2675754231282205
#>     Attrib V45    -0.4351892521234106
#>     Attrib V46    -0.24898129093450522
#>     Attrib V47    -0.16402089928275976
#>     Attrib V48    -0.5241847266547526
#>     Attrib V49    -0.40309985744525734
#>     Attrib V5    -0.4412728653796154
#>     Attrib V50    1.1242657233507847
#>     Attrib V51    -0.32341409620885136
#>     Attrib V52    -0.08616180117004588
#>     Attrib V53    0.3239224483348819
#>     Attrib V54    -0.43856020708453364
#>     Attrib V55    1.0456048565323828
#>     Attrib V56    -0.5890904988241195
#>     Attrib V57    0.6896602944707371
#>     Attrib V58    -0.5178994963995639
#>     Attrib V59    -0.7949342368380911
#>     Attrib V6    0.5582060707947483
#>     Attrib V60    -0.06915811877376526
#>     Attrib V7    0.46921664997043444
#>     Attrib V8    -0.10280717859046318
#>     Attrib V9    -0.7324163176558057
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.04818572311446288
#>     Attrib V1    0.3397604479256328
#>     Attrib V10    0.003218144726889197
#>     Attrib V11    0.05765844749539366
#>     Attrib V12    -0.01362011810956725
#>     Attrib V13    -0.05738456129517672
#>     Attrib V14    -0.045228515858507526
#>     Attrib V15    0.1154224682347348
#>     Attrib V16    0.15499757697771155
#>     Attrib V17    0.0812700170766309
#>     Attrib V18    -0.09567452368149615
#>     Attrib V19    0.027409086328082595
#>     Attrib V2    0.10404830512443916
#>     Attrib V20    0.3205950567792355
#>     Attrib V21    0.156084729109456
#>     Attrib V22    0.012048813971068238
#>     Attrib V23    -0.05142640372606459
#>     Attrib V24    0.0017222944997731936
#>     Attrib V25    -0.17416003861815696
#>     Attrib V26    -0.24897594532217537
#>     Attrib V27    -0.27382236839952445
#>     Attrib V28    -0.20804632308529766
#>     Attrib V29    -0.19148716665062324
#>     Attrib V3    0.11897050967098512
#>     Attrib V30    -0.16425784549519742
#>     Attrib V31    -0.339765244804649
#>     Attrib V32    0.021937315947081475
#>     Attrib V33    0.08538894531253312
#>     Attrib V34    -0.13928100872841107
#>     Attrib V35    -0.01249411133544155
#>     Attrib V36    -0.25165832142318884
#>     Attrib V37    -0.28242424586588794
#>     Attrib V38    0.024151106653957102
#>     Attrib V39    0.07879510843242059
#>     Attrib V4    0.1623813990103004
#>     Attrib V40    -0.03645232745027
#>     Attrib V41    -0.12970285074229512
#>     Attrib V42    0.013595381291278309
#>     Attrib V43    0.17320510254422586
#>     Attrib V44    0.06950655296179177
#>     Attrib V45    0.06940397352820624
#>     Attrib V46    0.08619116147000423
#>     Attrib V47    -0.022899130213280102
#>     Attrib V48    0.14516158636008242
#>     Attrib V49    0.10944388348947488
#>     Attrib V5    0.15437030197777582
#>     Attrib V50    -0.18993547495021335
#>     Attrib V51    0.09655417550025072
#>     Attrib V52    0.07723283705584068
#>     Attrib V53    0.01615533797548395
#>     Attrib V54    0.2138310418024532
#>     Attrib V55    -0.13952588671612803
#>     Attrib V56    0.2468407659130125
#>     Attrib V57    -0.10130121347364834
#>     Attrib V58    0.20665694284448194
#>     Attrib V59    0.21773022694680833
#>     Attrib V6    -0.08577869819535293
#>     Attrib V60    0.10029133742695061
#>     Attrib V7    -0.054761694560816865
#>     Attrib V8    -0.056059833176965765
#>     Attrib V9    0.17279277497794904
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.019554886852792303
#>     Attrib V1    0.5976134303078311
#>     Attrib V10    -0.1544999433998821
#>     Attrib V11    0.06289441666534294
#>     Attrib V12    -0.036395275101906696
#>     Attrib V13    -0.1406508524000924
#>     Attrib V14    -0.17942365224721898
#>     Attrib V15    0.30087777888454903
#>     Attrib V16    0.24292337413338536
#>     Attrib V17    0.24676538547711324
#>     Attrib V18    -0.17165874568684067
#>     Attrib V19    0.13349379639241776
#>     Attrib V2    0.05930158485908095
#>     Attrib V20    0.6628302589119285
#>     Attrib V21    0.3687469222140663
#>     Attrib V22    0.21527316291153573
#>     Attrib V23    0.1359866054032307
#>     Attrib V24    7.805909023453528E-4
#>     Attrib V25    -0.25470473494442114
#>     Attrib V26    -0.46266147522586965
#>     Attrib V27    -0.60977251646926
#>     Attrib V28    -0.36756433790685233
#>     Attrib V29    -0.5089299869024408
#>     Attrib V3    0.26779758407369925
#>     Attrib V30    -0.3175025511998386
#>     Attrib V31    -0.7732805716268821
#>     Attrib V32    0.12526462297691365
#>     Attrib V33    0.277473661229455
#>     Attrib V34    -0.3156265856928829
#>     Attrib V35    -0.031231770044407976
#>     Attrib V36    -0.4772210462354722
#>     Attrib V37    -0.5816584392845228
#>     Attrib V38    0.128745812954095
#>     Attrib V39    0.2883985791318195
#>     Attrib V4    0.3055579657952276
#>     Attrib V40    -0.10077459132587027
#>     Attrib V41    -0.19096502863520012
#>     Attrib V42    0.15315722934854847
#>     Attrib V43    0.4036707109271592
#>     Attrib V44    0.19258491019366766
#>     Attrib V45    0.24258292365262674
#>     Attrib V46    0.06558355724918943
#>     Attrib V47    0.022793507113315948
#>     Attrib V48    0.14858966497508075
#>     Attrib V49    0.13152821089026734
#>     Attrib V5    0.27502179505662283
#>     Attrib V50    -0.5250350734900197
#>     Attrib V51    0.09414857307832065
#>     Attrib V52    0.06593356423246247
#>     Attrib V53    -0.0461144171797169
#>     Attrib V54    0.36453041080673343
#>     Attrib V55    -0.46070743538025755
#>     Attrib V56    0.486521099508753
#>     Attrib V57    -0.2558595380803307
#>     Attrib V58    0.3201893698037071
#>     Attrib V59    0.5048825469139799
#>     Attrib V6    -0.225863769149877
#>     Attrib V60    0.08563343150725401
#>     Attrib V7    -0.1257069353771406
#>     Attrib V8    0.03427420447208098
#>     Attrib V9    0.31509782320411145
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.1331150985720629
#>     Attrib V1    -0.4297463963691288
#>     Attrib V10    -0.07967345099648844
#>     Attrib V11    -0.3669037621839029
#>     Attrib V12    -0.3251020036019059
#>     Attrib V13    -0.13564758697096524
#>     Attrib V14    0.36188997393295014
#>     Attrib V15    -0.11623935146008149
#>     Attrib V16    -0.2517382664359607
#>     Attrib V17    -0.09144423522591534
#>     Attrib V18    0.27832759434867493
#>     Attrib V19    -0.13628140561864702
#>     Attrib V2    -0.09689941305019598
#>     Attrib V20    -0.594935205020555
#>     Attrib V21    -0.32027503534094987
#>     Attrib V22    -0.327867309644843
#>     Attrib V23    -0.1928336766593536
#>     Attrib V24    -0.16475712995976705
#>     Attrib V25    0.21933112820769116
#>     Attrib V26    0.2797764217189167
#>     Attrib V27    0.15137046465478088
#>     Attrib V28    -0.11383043892285634
#>     Attrib V29    0.03614126157626055
#>     Attrib V3    -0.1300978638724594
#>     Attrib V30    -0.06395511152976398
#>     Attrib V31    0.5502248715649015
#>     Attrib V32    -0.29842538995113693
#>     Attrib V33    -0.37776362712574957
#>     Attrib V34    0.160794997690928
#>     Attrib V35    -0.06742943547979675
#>     Attrib V36    0.764282949653801
#>     Attrib V37    0.7335612299253952
#>     Attrib V38    -0.027390231632451804
#>     Attrib V39    -0.16995580134870547
#>     Attrib V4    -0.07340077149785129
#>     Attrib V40    -0.00255212352116284
#>     Attrib V41    -0.1387193365142749
#>     Attrib V42    -0.07311596880986716
#>     Attrib V43    -0.16247685709380766
#>     Attrib V44    -0.07657494180977682
#>     Attrib V45    -0.3327750579830151
#>     Attrib V46    -0.2828537185864613
#>     Attrib V47    -0.12972222547614776
#>     Attrib V48    -0.4096638532013254
#>     Attrib V49    -0.3611703011577423
#>     Attrib V5    -0.23927707894992356
#>     Attrib V50    0.7380500778655936
#>     Attrib V51    -0.2926778950578664
#>     Attrib V52    -0.12988903203178379
#>     Attrib V53    0.051758973290683116
#>     Attrib V54    -0.24586191311004615
#>     Attrib V55    0.5846151057116513
#>     Attrib V56    -0.1431264828474845
#>     Attrib V57    0.6242751053411864
#>     Attrib V58    -0.039702343598188465
#>     Attrib V59    -0.34028936702682566
#>     Attrib V6    0.32535043697056376
#>     Attrib V60    -0.15248781086023427
#>     Attrib V7    0.3023563789830899
#>     Attrib V8    0.22396809178927482
#>     Attrib V9    -0.2932206584368747
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    1.060440174561701
#>     Attrib V1    0.46072633598029833
#>     Attrib V10    1.1690557503350634
#>     Attrib V11    1.5556976967570535
#>     Attrib V12    1.5122331024044504
#>     Attrib V13    1.141125899635297
#>     Attrib V14    -0.45746465024578137
#>     Attrib V15    -0.3580467749900197
#>     Attrib V16    -0.5934524847336722
#>     Attrib V17    -0.8903812425661374
#>     Attrib V18    -1.0388220771930672
#>     Attrib V19    -0.5275893833372646
#>     Attrib V2    0.6646186550241401
#>     Attrib V20    0.2531357442629611
#>     Attrib V21    0.5895769206946512
#>     Attrib V22    0.3344182684547314
#>     Attrib V23    0.22711635698990384
#>     Attrib V24    0.20700648650759873
#>     Attrib V25    -0.5749195929733333
#>     Attrib V26    0.9315620450033609
#>     Attrib V27    1.2854299608528112
#>     Attrib V28    1.4381073222261236
#>     Attrib V29    1.0021288267384827
#>     Attrib V3    0.06538622604917899
#>     Attrib V30    0.37150688396933784
#>     Attrib V31    -0.8142467193319212
#>     Attrib V32    -0.07592209903970153
#>     Attrib V33    -0.2368501570958758
#>     Attrib V34    0.04156736531741574
#>     Attrib V35    0.6953499322108937
#>     Attrib V36    -0.8141614897568016
#>     Attrib V37    -0.14162908693597326
#>     Attrib V38    0.055573312384549475
#>     Attrib V39    -0.1512759619674895
#>     Attrib V4    -0.30125103925794366
#>     Attrib V40    0.027382810713786277
#>     Attrib V41    1.22897748592279
#>     Attrib V42    -0.6180923951689714
#>     Attrib V43    -0.5301420013862118
#>     Attrib V44    -0.04307257791304638
#>     Attrib V45    1.0600350907651612
#>     Attrib V46    1.2387861741552393
#>     Attrib V47    0.25524434529367984
#>     Attrib V48    0.44887469094817767
#>     Attrib V49    1.1176255885686448
#>     Attrib V5    0.12513478288850455
#>     Attrib V50    -0.32021782038539537
#>     Attrib V51    1.1256116953648487
#>     Attrib V52    1.1391634867345022
#>     Attrib V53    0.9318071209084088
#>     Attrib V54    0.6329739073026671
#>     Attrib V55    0.0864707197913407
#>     Attrib V56    -0.8060119823888517
#>     Attrib V57    -1.1106608633789465
#>     Attrib V58    -0.42266328207795667
#>     Attrib V59    -0.32377720305880714
#>     Attrib V6    0.17967202713568922
#>     Attrib V60    0.15227805800394534
#>     Attrib V7    -0.3007889696995728
#>     Attrib V8    -0.8482881138799032
#>     Attrib V9    0.5915339502607591
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.21611979220076072
#>     Attrib V1    -0.2600335976069825
#>     Attrib V10    -0.07349285013027296
#>     Attrib V11    -0.32077233750098066
#>     Attrib V12    -0.2498656695970095
#>     Attrib V13    -0.12400669749039663
#>     Attrib V14    0.29351981794109544
#>     Attrib V15    -0.1464276115244134
#>     Attrib V16    -0.21206797961471194
#>     Attrib V17    -0.1365537331629107
#>     Attrib V18    0.1184863155033099
#>     Attrib V19    -0.05352800968540374
#>     Attrib V2    -0.008121713728620462
#>     Attrib V20    -0.392515282045684
#>     Attrib V21    -0.17026929038580227
#>     Attrib V22    -0.1611031258538358
#>     Attrib V23    -0.09002162201121419
#>     Attrib V24    -0.06464787994943545
#>     Attrib V25    0.18487845295688785
#>     Attrib V26    0.09316990683638518
#>     Attrib V27    0.08450845517552433
#>     Attrib V28    -0.11462640886748114
#>     Attrib V29    -0.029164497228963727
#>     Attrib V3    -0.07720070168308037
#>     Attrib V30    -0.1402844177374923
#>     Attrib V31    0.30720000600419795
#>     Attrib V32    -0.26359863805110567
#>     Attrib V33    -0.20712490909518141
#>     Attrib V34    0.045394724859609194
#>     Attrib V35    -0.09081531475367093
#>     Attrib V36    0.4987815348789722
#>     Attrib V37    0.5001667773283728
#>     Attrib V38    -0.05500864564437156
#>     Attrib V39    -0.07064567884653052
#>     Attrib V4    -0.01601690485412985
#>     Attrib V40    -0.013309410253071812
#>     Attrib V41    -0.15439099804919207
#>     Attrib V42    0.020946643156054
#>     Attrib V43    -0.11741024852266112
#>     Attrib V44    -0.045815111204229736
#>     Attrib V45    -0.2646096528685386
#>     Attrib V46    -0.26797781873788523
#>     Attrib V47    -0.14367317445378908
#>     Attrib V48    -0.2632979880566431
#>     Attrib V49    -0.2778121111323605
#>     Attrib V5    -0.1828200799629856
#>     Attrib V50    0.5031265825281782
#>     Attrib V51    -0.24095735014747854
#>     Attrib V52    -0.16301294863251134
#>     Attrib V53    0.012360036754977852
#>     Attrib V54    -0.13289453689304062
#>     Attrib V55    0.4187452420082405
#>     Attrib V56    -0.04077975909865678
#>     Attrib V57    0.47825444206865164
#>     Attrib V58    0.02288892860241328
#>     Attrib V59    -0.15852089396341557
#>     Attrib V6    0.25557647345795464
#>     Attrib V60    0.009138353254705373
#>     Attrib V7    0.23028454234526174
#>     Attrib V8    0.2005311292512057
#>     Attrib V9    -0.26522141264411014
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.3532647807289399
#>     Attrib V1    0.21180832241974346
#>     Attrib V10    0.7429401387857663
#>     Attrib V11    0.9600057581963766
#>     Attrib V12    0.8475969707171116
#>     Attrib V13    0.5463859042165822
#>     Attrib V14    -0.49604912384674765
#>     Attrib V15    -0.3703474609329862
#>     Attrib V16    -0.4209017146929403
#>     Attrib V17    -0.47180266939881754
#>     Attrib V18    -0.5108347846761078
#>     Attrib V19    -0.19824632851165447
#>     Attrib V2    0.0408880648462972
#>     Attrib V20    0.05465822256911422
#>     Attrib V21    -0.08912161526233667
#>     Attrib V22    -0.08146794932912338
#>     Attrib V23    0.18799396202603677
#>     Attrib V24    0.43856415710076596
#>     Attrib V25    0.2145442346311484
#>     Attrib V26    0.7594466911760983
#>     Attrib V27    0.6941380165642537
#>     Attrib V28    0.6521461043135547
#>     Attrib V29    0.062292888411280854
#>     Attrib V3    0.07807476131387939
#>     Attrib V30    0.08391507690820084
#>     Attrib V31    -0.4182116423149208
#>     Attrib V32    0.18303373601720557
#>     Attrib V33    0.17439072442927378
#>     Attrib V34    0.22528683643866815
#>     Attrib V35    0.7543944293169175
#>     Attrib V36    -0.4320160079198302
#>     Attrib V37    -0.5608795661495495
#>     Attrib V38    -0.021825272976844723
#>     Attrib V39    -0.08187700629377422
#>     Attrib V4    0.03994440510040095
#>     Attrib V40    -0.13934202205083887
#>     Attrib V41    0.36884222030130703
#>     Attrib V42    -0.2134785128583731
#>     Attrib V43    -0.006168745800711714
#>     Attrib V44    0.037532132073013445
#>     Attrib V45    0.6176093229386128
#>     Attrib V46    0.5865585369317485
#>     Attrib V47    0.21545855311289913
#>     Attrib V48    0.5437264233888224
#>     Attrib V49    0.5536625834520403
#>     Attrib V5    0.28623479411077546
#>     Attrib V50    -0.3796922003414849
#>     Attrib V51    0.6353791736833627
#>     Attrib V52    0.6793973570183443
#>     Attrib V53    0.4109874444628214
#>     Attrib V54    0.24639608864159557
#>     Attrib V55    -0.20036021631876963
#>     Attrib V56    -0.3319940761780965
#>     Attrib V57    -0.8641467480860267
#>     Attrib V58    -0.04597756471542519
#>     Attrib V59    -0.10567525005700994
#>     Attrib V6    -0.19756221749779515
#>     Attrib V60    -0.008095086972920116
#>     Attrib V7    -0.42112077320448676
#>     Attrib V8    -0.3282412783909863
#>     Attrib V9    0.7325279522394036
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.06178484804259962
#>     Attrib V1    -0.40578759620661886
#>     Attrib V10    -0.029471860759948513
#>     Attrib V11    -0.5370379374846638
#>     Attrib V12    -0.5635643922995595
#>     Attrib V13    -0.17077945274409337
#>     Attrib V14    0.4509996146042096
#>     Attrib V15    -0.34784260715974213
#>     Attrib V16    -0.5820027467550378
#>     Attrib V17    -0.6222233191800678
#>     Attrib V18    0.005770953697952617
#>     Attrib V19    -0.47844777427426616
#>     Attrib V2    -0.21034380826600033
#>     Attrib V20    -0.8983268362922388
#>     Attrib V21    -0.7402495632361228
#>     Attrib V22    -0.6277357628785337
#>     Attrib V23    -0.3021330067787108
#>     Attrib V24    -0.26178261390999125
#>     Attrib V25    0.14491471278207516
#>     Attrib V26    0.010289097879934365
#>     Attrib V27    0.3834591325224659
#>     Attrib V28    0.47431996605130844
#>     Attrib V29    0.2550273460851486
#>     Attrib V3    -0.1775893240606626
#>     Attrib V30    -0.3318957132120245
#>     Attrib V31    0.5593339041969738
#>     Attrib V32    0.05778111563597158
#>     Attrib V33    -0.15404240482591422
#>     Attrib V34    0.10138869027910062
#>     Attrib V35    0.0761380689262507
#>     Attrib V36    1.4911421706349601
#>     Attrib V37    1.4955707339232265
#>     Attrib V38    0.6692881798564652
#>     Attrib V39    0.326168991861686
#>     Attrib V4    -0.11621864350501467
#>     Attrib V40    0.011332859660747277
#>     Attrib V41    -0.20805710284848777
#>     Attrib V42    0.16999739187702778
#>     Attrib V43    0.036322368096173174
#>     Attrib V44    0.1431328873853263
#>     Attrib V45    -0.3213019988467487
#>     Attrib V46    -0.604021785214189
#>     Attrib V47    -0.5337310654721228
#>     Attrib V48    -0.7277830424957492
#>     Attrib V49    -0.48952488016698964
#>     Attrib V5    -0.2834611607902767
#>     Attrib V50    0.8775706360512798
#>     Attrib V51    -0.5702999017900339
#>     Attrib V52    -0.021117409041676635
#>     Attrib V53    0.10581311044798156
#>     Attrib V54    -0.09223946796082508
#>     Attrib V55    0.5000215375196413
#>     Attrib V56    -0.21334681053637847
#>     Attrib V57    0.8656666960319912
#>     Attrib V58    0.12781186431410846
#>     Attrib V59    -0.4055140240279561
#>     Attrib V6    0.4529171232071335
#>     Attrib V60    -0.2534663325747038
#>     Attrib V7    0.587582945062025
#>     Attrib V8    0.4435883145007297
#>     Attrib V9    -0.2729560092201525
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.21961286940900623
#>     Attrib V1    0.310708099211072
#>     Attrib V10    0.12147783961367649
#>     Attrib V11    0.4200089323720536
#>     Attrib V12    0.3154265870623307
#>     Attrib V13    0.09808474141166873
#>     Attrib V14    -0.2999515819582121
#>     Attrib V15    -0.05831807828506452
#>     Attrib V16    -0.13407041276185191
#>     Attrib V17    -0.18031721125617622
#>     Attrib V18    -0.43133302250814576
#>     Attrib V19    -0.08922351184267127
#>     Attrib V2    -0.012886417449638338
#>     Attrib V20    0.40061301961349766
#>     Attrib V21    0.12484612427294818
#>     Attrib V22    0.05842122038114206
#>     Attrib V23    0.11306582253240642
#>     Attrib V24    0.2572771409603321
#>     Attrib V25    0.06477852077495935
#>     Attrib V26    0.0915737263648593
#>     Attrib V27    0.13872086720859644
#>     Attrib V28    0.2995504468344341
#>     Attrib V29    0.0030988759783096608
#>     Attrib V3    0.14758156391581548
#>     Attrib V30    -0.09911834749016582
#>     Attrib V31    -0.5622909077260613
#>     Attrib V32    0.2149328062892917
#>     Attrib V33    0.2628410398912919
#>     Attrib V34    -0.06000868616313406
#>     Attrib V35    0.3162822588210217
#>     Attrib V36    -0.4146300231338349
#>     Attrib V37    -0.4780974735487507
#>     Attrib V38    0.11840186359945723
#>     Attrib V39    0.1841753967728664
#>     Attrib V4    0.0581114134178302
#>     Attrib V40    -0.06364356493179822
#>     Attrib V41    0.10392006315830835
#>     Attrib V42    0.03000056677015494
#>     Attrib V43    0.29085879195214925
#>     Attrib V44    0.05274292450252258
#>     Attrib V45    0.36337993406944585
#>     Attrib V46    0.2649685700439696
#>     Attrib V47    0.0893146402771767
#>     Attrib V48    0.2393574036749626
#>     Attrib V49    0.24843567022283863
#>     Attrib V5    0.18431728602208347
#>     Attrib V50    -0.49782521709571614
#>     Attrib V51    0.2198240597145058
#>     Attrib V52    0.25774118166217724
#>     Attrib V53    0.08389243197729332
#>     Attrib V54    0.16551920895213962
#>     Attrib V55    -0.40453679216293875
#>     Attrib V56    0.13001192076284332
#>     Attrib V57    -0.5212364828978214
#>     Attrib V58    0.05042643999113224
#>     Attrib V59    0.16188390189566704
#>     Attrib V6    -0.29684134278449154
#>     Attrib V60    0.027295459053255037
#>     Attrib V7    -0.35650049249501664
#>     Attrib V8    -0.18112449057184676
#>     Attrib V9    0.35875876583321825
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.15733775302841277
#>     Attrib V1    0.09852605801979324
#>     Attrib V10    0.09089499403601016
#>     Attrib V11    0.019704891222064872
#>     Attrib V12    0.04447533498859284
#>     Attrib V13    0.03251842864636362
#>     Attrib V14    0.010355970157028074
#>     Attrib V15    0.006636879830390069
#>     Attrib V16    0.00360824522208215
#>     Attrib V17    0.030821148855099418
#>     Attrib V18    -0.013567653809582844
#>     Attrib V19    -0.0579406744958683
#>     Attrib V2    0.11538727140596053
#>     Attrib V20    -0.07972505372547621
#>     Attrib V21    -0.017396743421779378
#>     Attrib V22    -0.05551147016254872
#>     Attrib V23    -0.03250627384941957
#>     Attrib V24    -0.052381687374235104
#>     Attrib V25    0.0037824127128854115
#>     Attrib V26    -0.0021637593447053657
#>     Attrib V27    -0.062249305245944374
#>     Attrib V28    -0.053546102895507014
#>     Attrib V29    -0.09970271882420939
#>     Attrib V3    0.08402263503655719
#>     Attrib V30    -0.0093153282308928
#>     Attrib V31    0.04055492683678751
#>     Attrib V32    -0.013238548079547075
#>     Attrib V33    0.007124648651856674
#>     Attrib V34    0.01810330273743325
#>     Attrib V35    0.0766983414038872
#>     Attrib V36    0.06870391595238846
#>     Attrib V37    0.12113950742914088
#>     Attrib V38    0.036303117513829704
#>     Attrib V39    0.10943692967440587
#>     Attrib V4    0.12916876713861047
#>     Attrib V40    0.08743302830722507
#>     Attrib V41    0.07426419143571124
#>     Attrib V42    0.11030278694820433
#>     Attrib V43    0.054232959403328104
#>     Attrib V44    0.045540875529147505
#>     Attrib V45    0.06776727882528205
#>     Attrib V46    0.06059147385408977
#>     Attrib V47    0.040601389840575285
#>     Attrib V48    0.0799465097203831
#>     Attrib V49    0.008985280657495721
#>     Attrib V5    0.04787620248569374
#>     Attrib V50    0.05608106252708835
#>     Attrib V51    0.050707036348380426
#>     Attrib V52    0.07117394715557963
#>     Attrib V53    0.07438806357304835
#>     Attrib V54    0.04423910083238418
#>     Attrib V55    0.06869604649992872
#>     Attrib V56    0.13882020933089675
#>     Attrib V57    0.08277775837819158
#>     Attrib V58    0.11028275344875185
#>     Attrib V59    0.11487430861065817
#>     Attrib V6    0.08773658702464467
#>     Attrib V60    0.061523297580279565
#>     Attrib V7    0.017436682134192295
#>     Attrib V8    0.045407333890134176
#>     Attrib V9    0.04168264182045453
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.054378829792993535
#>     Attrib V1    0.4492337095547229
#>     Attrib V10    -0.0719047764269346
#>     Attrib V11    0.07646185002693716
#>     Attrib V12    -0.08739483549306114
#>     Attrib V13    -0.08726489443251631
#>     Attrib V14    -0.12210706082040379
#>     Attrib V15    0.23968777603198357
#>     Attrib V16    0.19724223499823954
#>     Attrib V17    0.15781670901516853
#>     Attrib V18    -0.12946094592299104
#>     Attrib V19    0.081488777865478
#>     Attrib V2    0.13312880142765468
#>     Attrib V20    0.5374589274712529
#>     Attrib V21    0.24021718004745282
#>     Attrib V22    0.1586808195552455
#>     Attrib V23    0.08295529023107866
#>     Attrib V24    0.03334461882111427
#>     Attrib V25    -0.23461168146671893
#>     Attrib V26    -0.35070462059917856
#>     Attrib V27    -0.4635068805617271
#>     Attrib V28    -0.31417506652713095
#>     Attrib V29    -0.4087025302367267
#>     Attrib V3    0.14793804296548932
#>     Attrib V30    -0.2605049185384237
#>     Attrib V31    -0.5615214442919952
#>     Attrib V32    0.0725425754695615
#>     Attrib V33    0.23972013516192037
#>     Attrib V34    -0.1866516627358488
#>     Attrib V35    0.005327653103844576
#>     Attrib V36    -0.3899005583907193
#>     Attrib V37    -0.45671404320513076
#>     Attrib V38    0.1402972934459298
#>     Attrib V39    0.17156150160380004
#>     Attrib V4    0.222859975801259
#>     Attrib V40    -0.06827926076193788
#>     Attrib V41    -0.17049566245758363
#>     Attrib V42    0.0874477299168019
#>     Attrib V43    0.2813174122108061
#>     Attrib V44    0.17458892551643107
#>     Attrib V45    0.1535482239164531
#>     Attrib V46    0.06318887876939572
#>     Attrib V47    0.0032756797477282245
#>     Attrib V48    0.16623215252894183
#>     Attrib V49    0.11772557948810797
#>     Attrib V5    0.1750531238329328
#>     Attrib V50    -0.3772477184183677
#>     Attrib V51    0.09495195300460978
#>     Attrib V52    0.045909513930295104
#>     Attrib V53    -0.005103916689101499
#>     Attrib V54    0.3396782029230289
#>     Attrib V55    -0.2910763890329363
#>     Attrib V56    0.2976620205194704
#>     Attrib V57    -0.1879056894394431
#>     Attrib V58    0.19836412140381654
#>     Attrib V59    0.3413977752199369
#>     Attrib V6    -0.18941823707581826
#>     Attrib V60    0.09526401804414679
#>     Attrib V7    -0.08700033474297457
#>     Attrib V8    0.038032869320540855
#>     Attrib V9    0.2799016209712671
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.1500761101856371
#>     Attrib V1    0.11520478257992774
#>     Attrib V10    -0.007067429232090068
#>     Attrib V11    0.03022220326807402
#>     Attrib V12    0.01492585993743747
#>     Attrib V13    -0.0480549494385652
#>     Attrib V14    0.043921547627437885
#>     Attrib V15    0.014717389451370941
#>     Attrib V16    0.025965203880749823
#>     Attrib V17    -0.039490883954294266
#>     Attrib V18    0.026419707381029965
#>     Attrib V19    -0.07463128211616435
#>     Attrib V2    0.06959975543526141
#>     Attrib V20    -0.022081286239373554
#>     Attrib V21    -0.019063140870327663
#>     Attrib V22    -0.07007004432875903
#>     Attrib V23    -0.001441322964182806
#>     Attrib V24    -0.021341809518486667
#>     Attrib V25    -0.07207647403146197
#>     Attrib V26    -0.06584712097584061
#>     Attrib V27    -0.067560712495868
#>     Attrib V28    -0.03192428197502248
#>     Attrib V29    -0.048722461569268745
#>     Attrib V3    0.13021002731563913
#>     Attrib V30    0.006614491123852673
#>     Attrib V31    -0.07200234350169674
#>     Attrib V32    -0.011815316214868246
#>     Attrib V33    0.05844032026723539
#>     Attrib V34    0.04615758078272101
#>     Attrib V35    0.07164753197603828
#>     Attrib V36    0.11010897157321375
#>     Attrib V37    0.05592011029573327
#>     Attrib V38    0.02217435462659176
#>     Attrib V39    0.06365818763584943
#>     Attrib V4    0.08447176394947675
#>     Attrib V40    0.027516870895714408
#>     Attrib V41    0.007337892164765528
#>     Attrib V42    0.07427233878471276
#>     Attrib V43    0.03134175384331725
#>     Attrib V44    0.10520284051504936
#>     Attrib V45    0.10157853917418173
#>     Attrib V46    0.06829976740863417
#>     Attrib V47    0.052303578938840724
#>     Attrib V48    0.02708492097997606
#>     Attrib V49    0.06734857636843614
#>     Attrib V5    0.10167484330291389
#>     Attrib V50    0.025903835815443713
#>     Attrib V51    0.09367134805555334
#>     Attrib V52    0.1126493422001669
#>     Attrib V53    0.08113454724915269
#>     Attrib V54    0.022885448873353535
#>     Attrib V55    0.05394663578718434
#>     Attrib V56    0.09744193318974939
#>     Attrib V57    0.0784456795023212
#>     Attrib V58    0.13686278957025028
#>     Attrib V59    0.0642962247046932
#>     Attrib V6    0.09515725993203555
#>     Attrib V60    0.02875807182671754
#>     Attrib V7    0.05791343103045481
#>     Attrib V8    0.0924324824613565
#>     Attrib V9    0.09232973318999008
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
