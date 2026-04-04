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
#>     Threshold    -0.39453793905433115
#>     Node 2    2.570352225495114
#>     Node 3    1.6282397508240691
#>     Node 4    0.16590004365421174
#>     Node 5    -2.2756869675457865
#>     Node 6    0.8270322409536411
#>     Node 7    3.25338419632198
#>     Node 8    0.7586386580106594
#>     Node 9    2.363849802757253
#>     Node 10    -2.052095181647983
#>     Node 11    0.737836496371736
#>     Node 12    2.270198491817378
#>     Node 13    0.09790054576303894
#>     Node 14    1.9786740251682227
#>     Node 15    -2.772671904875503
#>     Node 16    -0.6700027114011051
#>     Node 17    0.10169920764030702
#>     Node 18    -0.20843998124867555
#>     Node 19    1.5956747349522495
#>     Node 20    2.3632289574342082
#>     Node 21    -2.040560300851014
#>     Node 22    1.4997797958777161
#>     Node 23    2.1060218917333438
#>     Node 24    -1.5783000181526243
#>     Node 25    3.386521194330577
#>     Node 26    -0.00992079585916602
#>     Node 27    1.82016455063298
#>     Node 28    -3.5869561779794275
#>     Node 29    0.42616152105839855
#>     Node 30    0.4112097483042949
#>     Node 31    1.7230366749886543
#>     Node 32    0.7274025577206863
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.4306662629894069
#>     Node 2    -2.6052492897192088
#>     Node 3    -1.6098027857517725
#>     Node 4    -0.13703689010807818
#>     Node 5    2.265174351753097
#>     Node 6    -0.8029367261390659
#>     Node 7    -3.2690858046374256
#>     Node 8    -0.7908576683847812
#>     Node 9    -2.3743311904131876
#>     Node 10    1.9988164090098968
#>     Node 11    -0.705176038349962
#>     Node 12    -2.322067024832933
#>     Node 13    -0.053180995510778005
#>     Node 14    -1.9067647702543982
#>     Node 15    2.779157954938691
#>     Node 16    0.6365860308007686
#>     Node 17    -0.08099978397567431
#>     Node 18    0.23517661876848428
#>     Node 19    -1.5804321807906943
#>     Node 20    -2.338449506181843
#>     Node 21    2.084528486677201
#>     Node 22    -1.5516439767524706
#>     Node 23    -2.14065432601132
#>     Node 24    1.5620665177037496
#>     Node 25    -3.3905489640754114
#>     Node 26    -0.08348313792585606
#>     Node 27    -1.8488495513493695
#>     Node 28    3.5730849205169832
#>     Node 29    -0.46233714929821845
#>     Node 30    -0.3417820518018387
#>     Node 31    -1.6622266730074458
#>     Node 32    -0.7465528837202393
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.10034530857043811
#>     Attrib V1    0.5437266906713986
#>     Attrib V10    0.06943205861408218
#>     Attrib V11    0.6239865712307188
#>     Attrib V12    0.14590678291029902
#>     Attrib V13    0.014616548521256299
#>     Attrib V14    -0.31413881494255985
#>     Attrib V15    0.18210578696909938
#>     Attrib V16    0.12528936626001688
#>     Attrib V17    0.39174602870965886
#>     Attrib V18    0.32019277690497777
#>     Attrib V19    -0.14878908736985832
#>     Attrib V2    -0.006235087169958036
#>     Attrib V20    0.19301899659271105
#>     Attrib V21    0.7361219962601272
#>     Attrib V22    0.9056038369085133
#>     Attrib V23    0.5475895068675234
#>     Attrib V24    0.6216507869221632
#>     Attrib V25    0.08120595429738156
#>     Attrib V26    -0.8021309357829282
#>     Attrib V27    -0.6691818728321813
#>     Attrib V28    -0.2165237930515006
#>     Attrib V29    -0.7228967106224746
#>     Attrib V3    -0.16914918824195307
#>     Attrib V30    0.6741650915158688
#>     Attrib V31    -1.1895780619567728
#>     Attrib V32    0.05120210617082248
#>     Attrib V33    0.48547048669317555
#>     Attrib V34    -0.6701546537596784
#>     Attrib V35    -0.22601795779186126
#>     Attrib V36    -0.636591442082812
#>     Attrib V37    -0.7165535068418284
#>     Attrib V38    0.4167824743878315
#>     Attrib V39    0.2914434286232476
#>     Attrib V4    -0.1795304767878079
#>     Attrib V40    -0.2764603508461312
#>     Attrib V41    -0.27712584171602916
#>     Attrib V42    0.06262349864402626
#>     Attrib V43    0.9255655976387726
#>     Attrib V44    1.1608124379775366
#>     Attrib V45    1.0200426926850246
#>     Attrib V46    0.021174369551199175
#>     Attrib V47    -0.38263030003229453
#>     Attrib V48    0.4224421912573501
#>     Attrib V49    0.3366247102787996
#>     Attrib V5    -0.21136861204304244
#>     Attrib V50    -0.9316338343702156
#>     Attrib V51    0.038706829887575914
#>     Attrib V52    -0.04077334199757895
#>     Attrib V53    -0.42819816341272443
#>     Attrib V54    0.09987824609164611
#>     Attrib V55    -0.5338623216836221
#>     Attrib V56    0.5391400609128479
#>     Attrib V57    -0.09693452419357441
#>     Attrib V58    1.2101179796058978
#>     Attrib V59    0.8976586046206926
#>     Attrib V6    -0.654459511352414
#>     Attrib V60    0.16370334582237134
#>     Attrib V7    0.16159686657728842
#>     Attrib V8    -0.1721293589215627
#>     Attrib V9    0.48429899164651075
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.1572941075766558
#>     Attrib V1    0.5060749494615588
#>     Attrib V10    -0.0046039171782609805
#>     Attrib V11    0.2386780854413674
#>     Attrib V12    -0.008103308650269094
#>     Attrib V13    0.03783141745208812
#>     Attrib V14    0.020054928213726165
#>     Attrib V15    0.4020829494084178
#>     Attrib V16    0.23785316293354342
#>     Attrib V17    0.35771667693981585
#>     Attrib V18    0.2571818008350796
#>     Attrib V19    0.14801830048507378
#>     Attrib V2    0.3234482046473409
#>     Attrib V20    0.3806926677085338
#>     Attrib V21    0.5870849589050442
#>     Attrib V22    0.5424228366253884
#>     Attrib V23    0.16769519745943362
#>     Attrib V24    0.13794587452236268
#>     Attrib V25    -0.23169362264330642
#>     Attrib V26    -0.8209918154585505
#>     Attrib V27    -0.732228756630084
#>     Attrib V28    -0.3443440848720768
#>     Attrib V29    -0.46757280451781585
#>     Attrib V3    0.11551771359027029
#>     Attrib V30    0.33786837837794514
#>     Attrib V31    -0.6867631581087287
#>     Attrib V32    0.013001079882613287
#>     Attrib V33    0.27602718615846705
#>     Attrib V34    -0.48575625431898484
#>     Attrib V35    -0.2412729586004287
#>     Attrib V36    -0.4965148973958542
#>     Attrib V37    -0.46947887761898527
#>     Attrib V38    0.21475329916459426
#>     Attrib V39    0.23963451882012754
#>     Attrib V4    0.09818789729140236
#>     Attrib V40    -0.16484338786715677
#>     Attrib V41    -0.18439006199189636
#>     Attrib V42    0.03974461012022
#>     Attrib V43    0.31233157316165233
#>     Attrib V44    0.48624457880937944
#>     Attrib V45    0.4939105718281344
#>     Attrib V46    -0.037162535590198
#>     Attrib V47    -0.21843728014231065
#>     Attrib V48    0.16856837234280972
#>     Attrib V49    0.19459020275546757
#>     Attrib V5    -0.01573535674468428
#>     Attrib V50    -0.4271484124216288
#>     Attrib V51    0.003918731814727787
#>     Attrib V52    0.04457372758946571
#>     Attrib V53    -0.18421255242741313
#>     Attrib V54    0.19255161642180432
#>     Attrib V55    -0.055871113701181516
#>     Attrib V56    0.5057861111937336
#>     Attrib V57    0.1978128003104718
#>     Attrib V58    0.871429941653515
#>     Attrib V59    0.7354214096369024
#>     Attrib V6    -0.3018480913919117
#>     Attrib V60    0.11834736688029249
#>     Attrib V7    0.16524819289113035
#>     Attrib V8    -0.03300362001593488
#>     Attrib V9    0.23126125961744823
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.17093829325129736
#>     Attrib V1    0.04713451182449451
#>     Attrib V10    0.04831589700026244
#>     Attrib V11    0.08106545862662101
#>     Attrib V12    0.05433620049309825
#>     Attrib V13    0.061748804053474785
#>     Attrib V14    0.06303832919644753
#>     Attrib V15    0.07996415910282123
#>     Attrib V16    0.015927678876737163
#>     Attrib V17    0.06636935917277881
#>     Attrib V18    0.05393224834960892
#>     Attrib V19    0.026542448652936614
#>     Attrib V2    0.033236877310293976
#>     Attrib V20    0.03186195867757955
#>     Attrib V21    0.09477193947912248
#>     Attrib V22    0.028393637016446344
#>     Attrib V23    -9.302078732682966E-4
#>     Attrib V24    -0.017991061416781442
#>     Attrib V25    -0.03902839569509617
#>     Attrib V26    -0.08588544592412871
#>     Attrib V27    -0.11825701530974408
#>     Attrib V28    0.014794771037252649
#>     Attrib V29    -0.018323607918467003
#>     Attrib V3    0.08949009942136459
#>     Attrib V30    0.041983692540179814
#>     Attrib V31    -0.057946466915436916
#>     Attrib V32    0.0020749155290252
#>     Attrib V33    0.06042677987003663
#>     Attrib V34    0.00802103232617125
#>     Attrib V35    0.07073469058652743
#>     Attrib V36    7.251231398141181E-4
#>     Attrib V37    0.014874269911251486
#>     Attrib V38    0.04453672931963146
#>     Attrib V39    0.09170275659990718
#>     Attrib V4    0.038624081309286615
#>     Attrib V40    0.05217524216930928
#>     Attrib V41    0.03394466281914904
#>     Attrib V42    0.07902611072547017
#>     Attrib V43    0.07069062299477051
#>     Attrib V44    0.13885315629669312
#>     Attrib V45    0.20398182566832532
#>     Attrib V46    0.05254120449031606
#>     Attrib V47    0.040369399953321984
#>     Attrib V48    0.1344368734844273
#>     Attrib V49    0.11632651219570336
#>     Attrib V5    0.1116118097497246
#>     Attrib V50    0.018025767982920715
#>     Attrib V51    0.09880724664444747
#>     Attrib V52    0.05718893056093469
#>     Attrib V53    0.09746410752316757
#>     Attrib V54    0.024805400109795445
#>     Attrib V55    0.03295310375612738
#>     Attrib V56    0.11117490792347805
#>     Attrib V57    0.09376107882935909
#>     Attrib V58    0.11435956989046862
#>     Attrib V59    0.10324879343478624
#>     Attrib V6    -0.019835102426900664
#>     Attrib V60    0.011633469208406005
#>     Attrib V7    0.016251160138389925
#>     Attrib V8    -0.014813421361354405
#>     Attrib V9    0.1139671792537725
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.24990383362024243
#>     Attrib V1    -0.18478070864607407
#>     Attrib V10    -0.2665018902898467
#>     Attrib V11    -0.8105306351672105
#>     Attrib V12    -0.7586365067734735
#>     Attrib V13    -0.3593752088802451
#>     Attrib V14    0.5067614027961531
#>     Attrib V15    0.061456360978575354
#>     Attrib V16    0.3726346320912705
#>     Attrib V17    0.6445214208925759
#>     Attrib V18    0.5431418278080783
#>     Attrib V19    0.16317867726636667
#>     Attrib V2    -0.16279835295749445
#>     Attrib V20    -0.15502935680177368
#>     Attrib V21    -0.2622882557504907
#>     Attrib V22    -0.2848959313841626
#>     Attrib V23    -0.07894203979973947
#>     Attrib V24    -0.5762931332206777
#>     Attrib V25    0.11199059806690849
#>     Attrib V26    0.6305700152876308
#>     Attrib V27    -0.0846642953742564
#>     Attrib V28    -0.45272396005601623
#>     Attrib V29    0.542053355194747
#>     Attrib V3    -0.03563572394775668
#>     Attrib V30    -0.001892214730669744
#>     Attrib V31    1.2955984530748565
#>     Attrib V32    0.2680475884694276
#>     Attrib V33    0.07361284839716573
#>     Attrib V34    0.5172525810235936
#>     Attrib V35    0.09237322409997001
#>     Attrib V36    1.1239208425261225
#>     Attrib V37    0.772406396035802
#>     Attrib V38    -0.23564514402161538
#>     Attrib V39    -0.3020351304256049
#>     Attrib V4    0.4314646732878288
#>     Attrib V40    0.25385571808154517
#>     Attrib V41    -0.03899770788993523
#>     Attrib V42    0.35275614626009444
#>     Attrib V43    -0.3225677069858782
#>     Attrib V44    -0.37407893285956506
#>     Attrib V45    -0.8165158884265488
#>     Attrib V46    -0.37165219720174447
#>     Attrib V47    0.10715651336296195
#>     Attrib V48    -0.7007739257260005
#>     Attrib V49    -0.3935681977210214
#>     Attrib V5    -0.05376187088069554
#>     Attrib V50    1.1628423503657752
#>     Attrib V51    0.048528509054298674
#>     Attrib V52    -0.4803365258286353
#>     Attrib V53    -0.06721197287304399
#>     Attrib V54    0.13956282294325587
#>     Attrib V55    0.4593326977034217
#>     Attrib V56    -0.16266005811081674
#>     Attrib V57    0.3199378898331116
#>     Attrib V58    -0.9135573880617865
#>     Attrib V59    -0.3024112856711576
#>     Attrib V6    0.5855792169331175
#>     Attrib V60    0.5221686176539633
#>     Attrib V7    0.3898892590157658
#>     Attrib V8    0.9092341946459934
#>     Attrib V9    -0.5200810030050549
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.05042755454353059
#>     Attrib V1    0.17389004410718015
#>     Attrib V10    -0.005362685945847127
#>     Attrib V11    0.18339206112159145
#>     Attrib V12    0.11623861958438704
#>     Attrib V13    0.009076146192128697
#>     Attrib V14    -0.10484113486379269
#>     Attrib V15    0.05430352381590164
#>     Attrib V16    0.11961499135205537
#>     Attrib V17    0.1811749807191018
#>     Attrib V18    0.28559403414615125
#>     Attrib V19    0.051182734420357985
#>     Attrib V2    -0.017185930234342367
#>     Attrib V20    0.10364067734937071
#>     Attrib V21    0.2779928637885629
#>     Attrib V22    0.29524861057924584
#>     Attrib V23    0.17569092714955897
#>     Attrib V24    0.26332038598022456
#>     Attrib V25    0.13744418180882464
#>     Attrib V26    -0.2713185197029102
#>     Attrib V27    -0.2824666607402031
#>     Attrib V28    -0.24649769864074805
#>     Attrib V29    -0.42441727808657886
#>     Attrib V3    -0.03443022612686654
#>     Attrib V30    0.08120666814028181
#>     Attrib V31    -0.356607329801202
#>     Attrib V32    0.06328644236315656
#>     Attrib V33    0.20223480297623264
#>     Attrib V34    -0.1516055727401447
#>     Attrib V35    0.03808567679549754
#>     Attrib V36    -0.2513210904203482
#>     Attrib V37    -0.283826308700683
#>     Attrib V38    0.021903333352128896
#>     Attrib V39    0.012677669030302919
#>     Attrib V4    -0.020701601795978807
#>     Attrib V40    -0.10914693461344446
#>     Attrib V41    -0.008045899707433437
#>     Attrib V42    0.038466564452078675
#>     Attrib V43    0.2736904292902807
#>     Attrib V44    0.3149138242070308
#>     Attrib V45    0.33154452228527176
#>     Attrib V46    0.03868051899568904
#>     Attrib V47    -0.09309846679934575
#>     Attrib V48    0.160904829926701
#>     Attrib V49    0.10354917830221505
#>     Attrib V5    -0.0017670217064965175
#>     Attrib V50    -0.2566723829678655
#>     Attrib V51    0.0162568543722453
#>     Attrib V52    -0.022001859856910812
#>     Attrib V53    0.0034574602586040517
#>     Attrib V54    0.08200651469703119
#>     Attrib V55    -0.13032998057335146
#>     Attrib V56    0.2046821025098363
#>     Attrib V57    -9.979282145145079E-4
#>     Attrib V58    0.40592996177256313
#>     Attrib V59    0.30651402489360297
#>     Attrib V6    -0.11406627432981022
#>     Attrib V60    0.03571900884608725
#>     Attrib V7    0.07078210957536864
#>     Attrib V8    -0.04554741103950363
#>     Attrib V9    0.2465717707378916
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4633845283459305
#>     Attrib V1    -0.04307048582718883
#>     Attrib V10    0.7802382785812658
#>     Attrib V11    1.3133481870361563
#>     Attrib V12    1.5936238591387573
#>     Attrib V13    0.8908687445286105
#>     Attrib V14    -0.3400760575484668
#>     Attrib V15    -0.21526353158364733
#>     Attrib V16    -0.5459260931504911
#>     Attrib V17    -0.6403167520108608
#>     Attrib V18    -0.23498562617256405
#>     Attrib V19    -0.3883931066046406
#>     Attrib V2    0.8976518881355147
#>     Attrib V20    -0.512756755399872
#>     Attrib V21    0.20857572384582662
#>     Attrib V22    0.635431790575251
#>     Attrib V23    0.4245473757249607
#>     Attrib V24    0.37201457870970095
#>     Attrib V25    -0.05337735896012401
#>     Attrib V26    0.44246501121225823
#>     Attrib V27    1.1635703402537219
#>     Attrib V28    1.7669128479108778
#>     Attrib V29    1.3711523061562578
#>     Attrib V3    0.4130685575015933
#>     Attrib V30    0.7482861434204726
#>     Attrib V31    -0.36068512102488093
#>     Attrib V32    -0.22169984845583332
#>     Attrib V33    -0.3719056561784471
#>     Attrib V34    -0.3431429004602241
#>     Attrib V35    0.22081275563962846
#>     Attrib V36    -0.7442787206614514
#>     Attrib V37    0.22520286749107116
#>     Attrib V38    -0.2980352280169368
#>     Attrib V39    -0.08486254213637356
#>     Attrib V4    -0.14476142758210522
#>     Attrib V40    0.27603606744011683
#>     Attrib V41    1.4127191612545016
#>     Attrib V42    -0.19818488406069976
#>     Attrib V43    0.16237409414874185
#>     Attrib V44    0.11629016224658327
#>     Attrib V45    0.35722225570962357
#>     Attrib V46    0.577087417240717
#>     Attrib V47    0.34576736099823785
#>     Attrib V48    0.8689348027689483
#>     Attrib V49    0.5090279038508659
#>     Attrib V5    0.5508061622321465
#>     Attrib V50    -0.7810143287700413
#>     Attrib V51    0.6320565896528675
#>     Attrib V52    1.2313683642920303
#>     Attrib V53    0.7262274830951839
#>     Attrib V54    -0.14844986387746306
#>     Attrib V55    -0.6248638710919034
#>     Attrib V56    -0.47911944704237536
#>     Attrib V57    -0.08108669343982575
#>     Attrib V58    0.4066260094966288
#>     Attrib V59    0.3089925404379608
#>     Attrib V6    0.31094473282104096
#>     Attrib V60    0.15866406361561688
#>     Attrib V7    -0.7640787484404066
#>     Attrib V8    -0.7651461080785175
#>     Attrib V9    0.8777388371860136
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.0286243339198709
#>     Attrib V1    0.05086789303863339
#>     Attrib V10    0.07759942580236795
#>     Attrib V11    0.264540539323139
#>     Attrib V12    0.13796774350645816
#>     Attrib V13    0.0784940948498868
#>     Attrib V14    -0.2033780154520236
#>     Attrib V15    -0.028589685523550002
#>     Attrib V16    0.03906099984429814
#>     Attrib V17    0.1193000740788673
#>     Attrib V18    0.16967421255871032
#>     Attrib V19    0.054978470487327034
#>     Attrib V2    -0.0017457089092331988
#>     Attrib V20    -6.718218169893639E-4
#>     Attrib V21    0.19781697439538903
#>     Attrib V22    0.2593366403801517
#>     Attrib V23    0.1644319140411225
#>     Attrib V24    0.2661334882080619
#>     Attrib V25    0.11669724114894615
#>     Attrib V26    -0.1466482467029004
#>     Attrib V27    -0.14767572491037842
#>     Attrib V28    -0.025940423938617424
#>     Attrib V29    -0.2400572748226828
#>     Attrib V3    -0.055329525081553844
#>     Attrib V30    0.16788112375952155
#>     Attrib V31    -0.3459567330575712
#>     Attrib V32    3.396853772390733E-4
#>     Attrib V33    0.15878749484152674
#>     Attrib V34    -0.11479032468571516
#>     Attrib V35    0.1030744627885521
#>     Attrib V36    -0.13264295185699262
#>     Attrib V37    -0.18136478556650668
#>     Attrib V38    0.09330565158276918
#>     Attrib V39    0.026079754159244135
#>     Attrib V4    -0.03784438630038976
#>     Attrib V40    -0.07674669592039028
#>     Attrib V41    0.012685201944853517
#>     Attrib V42    -0.098301618440283
#>     Attrib V43    0.273028586017147
#>     Attrib V44    0.4119271099922694
#>     Attrib V45    0.36529280005507897
#>     Attrib V46    0.08994762630486448
#>     Attrib V47    -0.05247832817402866
#>     Attrib V48    0.2640633294796872
#>     Attrib V49    0.13936091478551565
#>     Attrib V5    0.00986800680965849
#>     Attrib V50    -0.37420230425005624
#>     Attrib V51    0.0015003625490998635
#>     Attrib V52    0.04413745099293739
#>     Attrib V53    0.027498258116506916
#>     Attrib V54    0.05804208518389249
#>     Attrib V55    -0.18327313680903592
#>     Attrib V56    0.07915505194382136
#>     Attrib V57    -0.029352904966323198
#>     Attrib V58    0.2780863308665251
#>     Attrib V59    0.2140345959437981
#>     Attrib V6    -0.18066443837969265
#>     Attrib V60    -0.01806589486552336
#>     Attrib V7    -0.02906358807340431
#>     Attrib V8    -0.18494116931286028
#>     Attrib V9    0.22545204539347016
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.22139119596727705
#>     Attrib V1    -0.11135286719360446
#>     Attrib V10    0.6947080831766204
#>     Attrib V11    1.016140733603906
#>     Attrib V12    1.2231613426326722
#>     Attrib V13    0.6313704820624341
#>     Attrib V14    -0.4503179878462924
#>     Attrib V15    -0.303435815798695
#>     Attrib V16    -0.47915354548413847
#>     Attrib V17    -0.5004913816043247
#>     Attrib V18    -0.18348114126338536
#>     Attrib V19    -0.41849343480909695
#>     Attrib V2    0.49525371070540025
#>     Attrib V20    -0.5225871682383048
#>     Attrib V21    0.07397320408833183
#>     Attrib V22    0.4337693035485289
#>     Attrib V23    0.2888560371449342
#>     Attrib V24    0.3851374868633145
#>     Attrib V25    0.1346570260095093
#>     Attrib V26    0.34128516468383346
#>     Attrib V27    0.8043204729214295
#>     Attrib V28    1.1337907053050142
#>     Attrib V29    0.6661897457215865
#>     Attrib V3    0.170283590148551
#>     Attrib V30    0.5144804780239209
#>     Attrib V31    -0.30284397354665854
#>     Attrib V32    -0.05859044444306458
#>     Attrib V33    -0.11885920627273018
#>     Attrib V34    -0.13888925325724338
#>     Attrib V35    0.2660269677096745
#>     Attrib V36    -0.5352337178853379
#>     Attrib V37    0.03580169867432811
#>     Attrib V38    -0.250912228561219
#>     Attrib V39    -0.03252669217900477
#>     Attrib V4    -0.19581541787480963
#>     Attrib V40    0.1313384704287479
#>     Attrib V41    0.9672826263893946
#>     Attrib V42    -0.22281519753599108
#>     Attrib V43    0.2647081145632267
#>     Attrib V44    0.19204748365444738
#>     Attrib V45    0.396126214893395
#>     Attrib V46    0.5269948034053602
#>     Attrib V47    0.3331270665419251
#>     Attrib V48    0.7951794330414541
#>     Attrib V49    0.4577214148342733
#>     Attrib V5    0.31776672402151185
#>     Attrib V50    -0.6665547609848913
#>     Attrib V51    0.5255733707255877
#>     Attrib V52    0.880512261586769
#>     Attrib V53    0.5240009993957571
#>     Attrib V54    -0.036544551833141634
#>     Attrib V55    -0.43695688304384617
#>     Attrib V56    -0.32317086861157784
#>     Attrib V57    -0.20855383550670695
#>     Attrib V58    0.3274797344484136
#>     Attrib V59    0.16350599855235848
#>     Attrib V6    0.12236386653643339
#>     Attrib V60    0.0021267063256407964
#>     Attrib V7    -0.6007647647682175
#>     Attrib V8    -0.5882897932490881
#>     Attrib V9    0.7215817243417401
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.2576057035575412
#>     Attrib V1    -0.03650203916729656
#>     Attrib V10    -0.36235040273883984
#>     Attrib V11    -0.8508334265315433
#>     Attrib V12    -0.7610000626024657
#>     Attrib V13    -0.30917300691873134
#>     Attrib V14    0.6767896157913545
#>     Attrib V15    0.04019496926532167
#>     Attrib V16    0.263529093777779
#>     Attrib V17    0.2451758722251853
#>     Attrib V18    0.13140056603962375
#>     Attrib V19    0.45124150472374386
#>     Attrib V2    -0.30577770939317483
#>     Attrib V20    0.44142057245699284
#>     Attrib V21    -0.08017480724228399
#>     Attrib V22    -0.468690601503949
#>     Attrib V23    -0.14395949552895457
#>     Attrib V24    -0.4035684983134704
#>     Attrib V25    0.06814265450644198
#>     Attrib V26    0.7218078255882981
#>     Attrib V27    0.30532038936076844
#>     Attrib V28    -0.17699729484792984
#>     Attrib V29    0.33816626006084116
#>     Attrib V3    0.039604123205596885
#>     Attrib V30    -0.49633469570420263
#>     Attrib V31    0.7029680524480924
#>     Attrib V32    -0.4407527267823781
#>     Attrib V33    -0.5769986618432433
#>     Attrib V34    0.19802427864135747
#>     Attrib V35    -0.0821381573978907
#>     Attrib V36    0.8637659804942555
#>     Attrib V37    0.5389396811233071
#>     Attrib V38    0.12527814698518244
#>     Attrib V39    -0.07856799121655526
#>     Attrib V4    0.4221352476786007
#>     Attrib V40    0.06660156510159214
#>     Attrib V41    -0.4235196633194418
#>     Attrib V42    0.13366257118645214
#>     Attrib V43    -0.39365208250272027
#>     Attrib V44    -0.388869610278248
#>     Attrib V45    -0.5517925496436318
#>     Attrib V46    -0.2700978633396612
#>     Attrib V47    0.04954194078356198
#>     Attrib V48    -0.8106388089245459
#>     Attrib V49    -0.36282244584658174
#>     Attrib V5    0.03617507743263075
#>     Attrib V50    1.2682254835997782
#>     Attrib V51    -0.21490978783448353
#>     Attrib V52    -0.4361199742891355
#>     Attrib V53    0.14475563662504137
#>     Attrib V54    0.0941549895859499
#>     Attrib V55    0.6842916983315274
#>     Attrib V56    -0.05979324411586016
#>     Attrib V57    0.405452974023876
#>     Attrib V58    -0.8239893112661857
#>     Attrib V59    -0.12495023638755562
#>     Attrib V6    0.42446501302375284
#>     Attrib V60    0.3473459463193846
#>     Attrib V7    0.27558829683398367
#>     Attrib V8    0.7261552861645579
#>     Attrib V9    -0.6982528880392832
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.04884499557192359
#>     Attrib V1    0.052730939794163253
#>     Attrib V10    0.04688731615573829
#>     Attrib V11    0.21597009219352745
#>     Attrib V12    0.1522028844648944
#>     Attrib V13    0.004509620737536094
#>     Attrib V14    -0.14025675213005376
#>     Attrib V15    -0.00560866716103384
#>     Attrib V16    0.02474931804726974
#>     Attrib V17    0.19120059763383232
#>     Attrib V18    0.23543283841156326
#>     Attrib V19    0.05227217978625617
#>     Attrib V2    -0.06449729602146287
#>     Attrib V20    0.10996212738598724
#>     Attrib V21    0.1924271803213136
#>     Attrib V22    0.23210030316036298
#>     Attrib V23    0.1373430746331872
#>     Attrib V24    0.184269019697997
#>     Attrib V25    0.11120789475122245
#>     Attrib V26    -0.239541796258447
#>     Attrib V27    -0.20601831618218713
#>     Attrib V28    -0.08153745465085425
#>     Attrib V29    -0.31573138803163836
#>     Attrib V3    -0.0992860205999292
#>     Attrib V30    0.11963037059944123
#>     Attrib V31    -0.36311777509217513
#>     Attrib V32    -0.016222587337146436
#>     Attrib V33    0.13809377725989583
#>     Attrib V34    -0.05395852717130782
#>     Attrib V35    0.12985414201895917
#>     Attrib V36    -0.1359467616104864
#>     Attrib V37    -0.21060534515188692
#>     Attrib V38    0.10747419359552798
#>     Attrib V39    0.04083282614213125
#>     Attrib V4    -0.07359943297958788
#>     Attrib V40    -0.08405193446595095
#>     Attrib V41    -0.07881758965140061
#>     Attrib V42    -0.02691721671775832
#>     Attrib V43    0.2538880026348838
#>     Attrib V44    0.3659976108300664
#>     Attrib V45    0.3688948088063003
#>     Attrib V46    0.03428966155904915
#>     Attrib V47    -0.042243213452478785
#>     Attrib V48    0.22037128422915478
#>     Attrib V49    0.09096884486625818
#>     Attrib V5    0.04155839614462665
#>     Attrib V50    -0.26974665974254597
#>     Attrib V51    0.07439351547882914
#>     Attrib V52    -0.0029330798028417973
#>     Attrib V53    -0.035311242505839814
#>     Attrib V54    0.1266458117187961
#>     Attrib V55    -0.10369608523577722
#>     Attrib V56    0.14434474957678273
#>     Attrib V57    -0.04241646095381859
#>     Attrib V58    0.3240717388204627
#>     Attrib V59    0.14475921382779175
#>     Attrib V6    -0.13729210472843253
#>     Attrib V60    -0.0423488086764032
#>     Attrib V7    -0.059605797272083705
#>     Attrib V8    -0.09789526749377558
#>     Attrib V9    0.20884550858976558
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.03204951694939705
#>     Attrib V1    0.2802634966321657
#>     Attrib V10    0.06219190418508139
#>     Attrib V11    0.6470308238482441
#>     Attrib V12    0.1809054432658362
#>     Attrib V13    0.027563617141262053
#>     Attrib V14    -0.42707079056797476
#>     Attrib V15    -0.01960267055906333
#>     Attrib V16    0.054718120502432424
#>     Attrib V17    0.3425220008390539
#>     Attrib V18    0.3691382063656642
#>     Attrib V19    -0.004349822714292839
#>     Attrib V2    -0.11721367789644317
#>     Attrib V20    0.03469031628494232
#>     Attrib V21    0.5239389904827625
#>     Attrib V22    0.8909972931927389
#>     Attrib V23    0.5712533930527637
#>     Attrib V24    0.5966573031503215
#>     Attrib V25    0.22477949392940066
#>     Attrib V26    -0.5176104251960485
#>     Attrib V27    -0.4108183486885375
#>     Attrib V28    -0.16042490810204688
#>     Attrib V29    -0.6717065379447883
#>     Attrib V3    -0.3215582371860681
#>     Attrib V30    0.5546457617873859
#>     Attrib V31    -1.0810054773952051
#>     Attrib V32    -0.06615197141337191
#>     Attrib V33    0.4696182791137293
#>     Attrib V34    -0.4325798246930464
#>     Attrib V35    0.10604958922922275
#>     Attrib V36    -0.3128446054262498
#>     Attrib V37    -0.4576053845165678
#>     Attrib V38    0.3993825453571372
#>     Attrib V39    0.17925748074200837
#>     Attrib V4    -0.1649546577193103
#>     Attrib V40    -0.20288688822469858
#>     Attrib V41    -0.1575723430099538
#>     Attrib V42    -0.020043531258224723
#>     Attrib V43    0.9719397711802812
#>     Attrib V44    1.1399327304336417
#>     Attrib V45    1.040110937970913
#>     Attrib V46    0.14995664987766094
#>     Attrib V47    -0.3087119469450187
#>     Attrib V48    0.4320115120463361
#>     Attrib V49    0.2763343415701978
#>     Attrib V5    -0.18355407583382852
#>     Attrib V50    -0.8563921587952068
#>     Attrib V51    0.04718374212082004
#>     Attrib V52    -0.03584493988563046
#>     Attrib V53    -0.32472718258310895
#>     Attrib V54    0.1307863050363925
#>     Attrib V55    -0.5112728319829999
#>     Attrib V56    0.4375058288857774
#>     Attrib V57    -0.1387796779875978
#>     Attrib V58    1.004305932652476
#>     Attrib V59    0.666895972710807
#>     Attrib V6    -0.5900862086375135
#>     Attrib V60    0.04693842535219339
#>     Attrib V7    0.07229654147123409
#>     Attrib V8    -0.19111699866889598
#>     Attrib V9    0.5290611060880787
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.1885070076098169
#>     Attrib V1    0.0732154115154181
#>     Attrib V10    0.029630276143662763
#>     Attrib V11    0.06769462619845484
#>     Attrib V12    0.0323755526182099
#>     Attrib V13    0.07948830755616101
#>     Attrib V14    0.03402052030171019
#>     Attrib V15    0.011971925074354356
#>     Attrib V16    0.004222728847660819
#>     Attrib V17    0.08242248460647521
#>     Attrib V18    0.07350170551700289
#>     Attrib V19    0.01812008419530815
#>     Attrib V2    0.03440387749349693
#>     Attrib V20    0.05239755471432141
#>     Attrib V21    0.05807249638677363
#>     Attrib V22    0.01106845621430767
#>     Attrib V23    0.04254095111610751
#>     Attrib V24    0.025404913991197504
#>     Attrib V25    0.03226495404699905
#>     Attrib V26    -0.10920579513164115
#>     Attrib V27    -0.039883441205633405
#>     Attrib V28    -0.05535707873529809
#>     Attrib V29    -0.03967784862349455
#>     Attrib V3    0.10906452044251481
#>     Attrib V30    0.01616416327076616
#>     Attrib V31    -0.09002784074013119
#>     Attrib V32    0.02071353775993868
#>     Attrib V33    0.036534646361286095
#>     Attrib V34    0.05348060971382521
#>     Attrib V35    0.05016103907141112
#>     Attrib V36    0.02467348587619814
#>     Attrib V37    0.06087079330626932
#>     Attrib V38    0.08148154041890787
#>     Attrib V39    0.12039910534309355
#>     Attrib V4    0.08371337111103182
#>     Attrib V40    0.06454353846614452
#>     Attrib V41    0.06411889760272015
#>     Attrib V42    0.072475945639071
#>     Attrib V43    0.04004043289929856
#>     Attrib V44    0.09982231692299132
#>     Attrib V45    0.09849752253572609
#>     Attrib V46    0.099193224429359
#>     Attrib V47    0.09537515196543497
#>     Attrib V48    0.084836750536774
#>     Attrib V49    0.11141129313227016
#>     Attrib V5    0.11079946115828293
#>     Attrib V50    -0.009093458809996686
#>     Attrib V51    0.04887049384832685
#>     Attrib V52    0.030658979355801794
#>     Attrib V53    0.06825419589816495
#>     Attrib V54    0.04522412668532758
#>     Attrib V55    0.03940217926294221
#>     Attrib V56    0.07527186175497459
#>     Attrib V57    0.07736256316081012
#>     Attrib V58    0.09025116813606444
#>     Attrib V59    0.1269596096576219
#>     Attrib V6    0.06803136020465665
#>     Attrib V60    0.08293478355867993
#>     Attrib V7    0.08220439524509755
#>     Attrib V8    0.008705748825658544
#>     Attrib V9    0.07833171706643494
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.12346520880437474
#>     Attrib V1    0.5256909384281858
#>     Attrib V10    0.03384744920149809
#>     Attrib V11    0.4290543628878908
#>     Attrib V12    0.06373663069247953
#>     Attrib V13    -0.057795489672954135
#>     Attrib V14    -0.2588648166656322
#>     Attrib V15    0.24296306803044457
#>     Attrib V16    0.13016125214847368
#>     Attrib V17    0.3397453371105747
#>     Attrib V18    0.273937337084111
#>     Attrib V19    -0.04867968959700693
#>     Attrib V2    0.13639051502730942
#>     Attrib V20    0.1862995080452008
#>     Attrib V21    0.5239561505148864
#>     Attrib V22    0.6103601789544337
#>     Attrib V23    0.3929128178967692
#>     Attrib V24    0.40749845237683413
#>     Attrib V25    0.01109900480314902
#>     Attrib V26    -0.7037541205656305
#>     Attrib V27    -0.7222440298321943
#>     Attrib V28    -0.45754450640052174
#>     Attrib V29    -0.7799595992009688
#>     Attrib V3    -0.11121286129640534
#>     Attrib V30    0.35854908896613685
#>     Attrib V31    -0.7767314683630465
#>     Attrib V32    0.09027037061279626
#>     Attrib V33    0.46454001087178026
#>     Attrib V34    -0.46323769825934485
#>     Attrib V35    -0.18907512796203169
#>     Attrib V36    -0.64120981584564
#>     Attrib V37    -0.6537138626656823
#>     Attrib V38    0.16450411415691224
#>     Attrib V39    0.17685062288405118
#>     Attrib V4    -0.07469406358868143
#>     Attrib V40    -0.21072295591750062
#>     Attrib V41    -0.24472778142305496
#>     Attrib V42    -0.0038896333980350728
#>     Attrib V43    0.5374113077788993
#>     Attrib V44    0.7445536615648664
#>     Attrib V45    0.6215516383791526
#>     Attrib V46    0.011788752322388631
#>     Attrib V47    -0.27804770951244767
#>     Attrib V48    0.38578193984072423
#>     Attrib V49    0.3282077170247625
#>     Attrib V5    -0.14724277661155238
#>     Attrib V50    -0.632131158539129
#>     Attrib V51    5.067505005576453E-5
#>     Attrib V52    -0.03287302514731217
#>     Attrib V53    -0.32062067101596714
#>     Attrib V54    0.2009607233532249
#>     Attrib V55    -0.27509223183861103
#>     Attrib V56    0.5202574120093422
#>     Attrib V57    0.05673984532529537
#>     Attrib V58    0.9792851504405472
#>     Attrib V59    0.6908083739407507
#>     Attrib V6    -0.40256495164428185
#>     Attrib V60    0.15544096555992734
#>     Attrib V7    0.20363051064913473
#>     Attrib V8    -0.15632163198644405
#>     Attrib V9    0.38531168718604336
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.11337466201431007
#>     Attrib V1    -0.21423823378923126
#>     Attrib V10    -0.575597875523231
#>     Attrib V11    -1.1861272731655075
#>     Attrib V12    -0.7703857975150719
#>     Attrib V13    -0.24911164385140225
#>     Attrib V14    0.8520479333365583
#>     Attrib V15    0.26308966998913225
#>     Attrib V16    0.46745131871429196
#>     Attrib V17    0.4730614562082462
#>     Attrib V18    0.1980914811681069
#>     Attrib V19    0.6141969511303921
#>     Attrib V2    -0.3643886945488303
#>     Attrib V20    0.5510484550536634
#>     Attrib V21    -0.3035095027576718
#>     Attrib V22    -0.783215506854513
#>     Attrib V23    -0.2789291683297045
#>     Attrib V24    -0.5246802183679218
#>     Attrib V25    -0.07291430623307243
#>     Attrib V26    0.7103034954048006
#>     Attrib V27    0.09239329124916842
#>     Attrib V28    -0.38236999319472603
#>     Attrib V29    0.39950990866172087
#>     Attrib V3    0.1802682634575701
#>     Attrib V30    -0.8483732278961132
#>     Attrib V31    0.9626405101436231
#>     Attrib V32    -0.3809263557181348
#>     Attrib V33    -0.7105641071365031
#>     Attrib V34    0.5197523056947975
#>     Attrib V35    0.05618215100166621
#>     Attrib V36    0.9540432435065533
#>     Attrib V37    0.5411371681986981
#>     Attrib V38    0.015281484450594853
#>     Attrib V39    -0.11595882798201772
#>     Attrib V4    0.6228284938615894
#>     Attrib V40    0.03761889331134592
#>     Attrib V41    -0.6233623707823118
#>     Attrib V42    0.041512330823549146
#>     Attrib V43    -0.6313122414110603
#>     Attrib V44    -0.7671235856886468
#>     Attrib V45    -0.922446176930797
#>     Attrib V46    -0.3348498319082468
#>     Attrib V47    -0.07317030318747733
#>     Attrib V48    -1.2475681671721537
#>     Attrib V49    -0.6323113921412213
#>     Attrib V5    0.17214450293190922
#>     Attrib V50    1.4920545032402637
#>     Attrib V51    -0.32727363940910975
#>     Attrib V52    -0.5219595028376681
#>     Attrib V53    0.29171591402337954
#>     Attrib V54    0.11824364952340839
#>     Attrib V55    1.076288144062083
#>     Attrib V56    0.027701035411226486
#>     Attrib V57    0.3798853971052132
#>     Attrib V58    -1.0514372079359375
#>     Attrib V59    -0.05711704370431277
#>     Attrib V6    0.6478541848866969
#>     Attrib V60    0.4763161379466755
#>     Attrib V7    0.40615379008295727
#>     Attrib V8    0.8590944287577843
#>     Attrib V9    -1.0479075310058437
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.13794341498172227
#>     Attrib V1    -0.008061093143692638
#>     Attrib V10    -0.015375699659974179
#>     Attrib V11    -0.25250450074945446
#>     Attrib V12    -0.21210441495298823
#>     Attrib V13    -0.09233015532878618
#>     Attrib V14    0.04206917883724818
#>     Attrib V15    -0.030984150255457185
#>     Attrib V16    0.09502741852043402
#>     Attrib V17    0.07715555293871154
#>     Attrib V18    0.0808472276746238
#>     Attrib V19    0.0910580918892304
#>     Attrib V2    -0.009297936541745305
#>     Attrib V20    -0.007488704648864178
#>     Attrib V21    -0.12882556254379235
#>     Attrib V22    -0.07102902366198023
#>     Attrib V23    0.06910573149186564
#>     Attrib V24    -0.05029804640450274
#>     Attrib V25    -0.09549866505144565
#>     Attrib V26    -0.03711549965005378
#>     Attrib V27    -0.08466336870489334
#>     Attrib V28    -0.10981974740763703
#>     Attrib V29    -0.00632867086705031
#>     Attrib V3    0.12349870699265704
#>     Attrib V30    -0.1867837807275846
#>     Attrib V31    0.26257650633064294
#>     Attrib V32    0.16514697839704115
#>     Attrib V33    0.0871962208088934
#>     Attrib V34    0.2795710873325916
#>     Attrib V35    0.13544507779759166
#>     Attrib V36    0.37330576743185057
#>     Attrib V37    0.3632876632878786
#>     Attrib V38    0.10365884623834154
#>     Attrib V39    0.03625380066664912
#>     Attrib V4    0.1821396479127587
#>     Attrib V40    0.17675208639759432
#>     Attrib V41    0.19972036056054476
#>     Attrib V42    0.2100454646936756
#>     Attrib V43    -0.04298100760170177
#>     Attrib V44    -0.14217744989695663
#>     Attrib V45    -0.19443706302410468
#>     Attrib V46    -0.03596179375402663
#>     Attrib V47    0.046477505902712594
#>     Attrib V48    -0.24031739375838293
#>     Attrib V49    -0.1110390243149427
#>     Attrib V5    0.12311967802374395
#>     Attrib V50    0.3935006599008538
#>     Attrib V51    0.12565198268437394
#>     Attrib V52    0.08274820166451562
#>     Attrib V53    0.1661590957699638
#>     Attrib V54    0.04630185882572955
#>     Attrib V55    0.12715610582159853
#>     Attrib V56    -0.01231088773974265
#>     Attrib V57    0.1433767682502462
#>     Attrib V58    -0.09237574343989213
#>     Attrib V59    -0.08529937070458017
#>     Attrib V6    0.29330306600812023
#>     Attrib V60    0.1839695695849475
#>     Attrib V7    0.15480262766814634
#>     Attrib V8    0.2149967639713658
#>     Attrib V9    -0.06340818801862447
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.10427858434291344
#>     Attrib V1    0.10280532999282563
#>     Attrib V10    0.09001946562406633
#>     Attrib V11    0.08927325324363473
#>     Attrib V12    0.0036984694171972882
#>     Attrib V13    -0.02186726790901326
#>     Attrib V14    4.715062594210706E-4
#>     Attrib V15    0.09449628891630554
#>     Attrib V16    0.04557479688462714
#>     Attrib V17    0.06611884148704766
#>     Attrib V18    0.05746312497725746
#>     Attrib V19    0.043857607200692636
#>     Attrib V2    0.10106647001555205
#>     Attrib V20    -0.005501501191754298
#>     Attrib V21    0.01574502829470728
#>     Attrib V22    0.08203494609147877
#>     Attrib V23    -0.02005397327068836
#>     Attrib V24    0.02970114784808036
#>     Attrib V25    -0.02919887791779747
#>     Attrib V26    -0.10071415401000475
#>     Attrib V27    -0.08176779481802686
#>     Attrib V28    -0.05010102296441933
#>     Attrib V29    -0.09831203892646477
#>     Attrib V3    0.0439327151419206
#>     Attrib V30    0.03326106679679584
#>     Attrib V31    -0.003129735286195073
#>     Attrib V32    -0.017271097357283906
#>     Attrib V33    0.08305734628525502
#>     Attrib V34    -0.007569345173885359
#>     Attrib V35    0.1167190267130357
#>     Attrib V36    0.027429272655558685
#>     Attrib V37    0.02547361427324756
#>     Attrib V38    0.13007798393903955
#>     Attrib V39    0.10262111403237625
#>     Attrib V4    0.0579522705170474
#>     Attrib V40    0.016426723294990637
#>     Attrib V41    0.08469876493328533
#>     Attrib V42    0.0454793691510266
#>     Attrib V43    0.11520482215985892
#>     Attrib V44    0.13154880979381323
#>     Attrib V45    0.1664067344881094
#>     Attrib V46    0.043591598510702274
#>     Attrib V47    0.015186183859307348
#>     Attrib V48    0.13189696081971877
#>     Attrib V49    0.0409703581213853
#>     Attrib V5    0.07930933984958155
#>     Attrib V50    0.019905703787660777
#>     Attrib V51    0.06691385875653669
#>     Attrib V52    0.01863457028518339
#>     Attrib V53    0.03891365045944647
#>     Attrib V54    0.0390985639832498
#>     Attrib V55    0.07240961586121146
#>     Attrib V56    0.0949807464147883
#>     Attrib V57    0.12475799652040656
#>     Attrib V58    0.06270304922069696
#>     Attrib V59    0.04527785184637164
#>     Attrib V6    0.05171851648690563
#>     Attrib V60    0.05173495396101094
#>     Attrib V7    0.004048256992818523
#>     Attrib V8    0.06822023209576682
#>     Attrib V9    0.08885292602722591
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.19088082367912998
#>     Attrib V1    0.05032562181365442
#>     Attrib V10    0.040073902042538884
#>     Attrib V11    -0.05359027292146469
#>     Attrib V12    -0.07309444165637262
#>     Attrib V13    -0.0403776522970848
#>     Attrib V14    0.04649120683932225
#>     Attrib V15    -0.011045960761592763
#>     Attrib V16    0.040887646060574996
#>     Attrib V17    0.008275477939641711
#>     Attrib V18    0.08113648801656737
#>     Attrib V19    -0.0051526241269861705
#>     Attrib V2    0.05823491940212765
#>     Attrib V20    0.02561762786863118
#>     Attrib V21    -0.004533756247334758
#>     Attrib V22    -0.029014384406845048
#>     Attrib V23    0.030972255121785502
#>     Attrib V24    -0.05472561571330131
#>     Attrib V25    -0.035716057463305445
#>     Attrib V26    -0.027230745707247563
#>     Attrib V27    -0.04930434479648013
#>     Attrib V28    -0.07018561685616775
#>     Attrib V29    -0.044130885709125885
#>     Attrib V3    0.13652353683412688
#>     Attrib V30    -0.10601123971622879
#>     Attrib V31    0.07463460490331275
#>     Attrib V32    0.06145161199559914
#>     Attrib V33    0.059987213148013724
#>     Attrib V34    0.13809266922988722
#>     Attrib V35    0.0690259367288595
#>     Attrib V36    0.23439406656366393
#>     Attrib V37    0.1594868416944671
#>     Attrib V38    0.08684275480393949
#>     Attrib V39    0.10843795843433436
#>     Attrib V4    0.08242416061371824
#>     Attrib V40    0.09980212862710837
#>     Attrib V41    0.07724011845183934
#>     Attrib V42    0.11062751005288746
#>     Attrib V43    0.020894258830808952
#>     Attrib V44    0.044735749061116326
#>     Attrib V45    -0.045576095017229444
#>     Attrib V46    0.01546823160161821
#>     Attrib V47    0.10845814754601542
#>     Attrib V48    -0.009522281202441262
#>     Attrib V49    0.05130796653673121
#>     Attrib V5    0.11128643461438516
#>     Attrib V50    0.11673638231077108
#>     Attrib V51    0.12580867064074594
#>     Attrib V52    0.04556134874245079
#>     Attrib V53    0.0987568122393096
#>     Attrib V54    0.03213922122705546
#>     Attrib V55    0.10552331117934274
#>     Attrib V56    0.06562101261511719
#>     Attrib V57    0.04899225882542889
#>     Attrib V58    0.001878322072478193
#>     Attrib V59    0.0465427312952655
#>     Attrib V6    0.11757432356130858
#>     Attrib V60    0.1254688881702498
#>     Attrib V7    0.12443239670533716
#>     Attrib V8    0.15879002703272938
#>     Attrib V9    0.02063889669435693
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    -0.07497939250336833
#>     Attrib V1    0.2799105611309447
#>     Attrib V10    0.045217743951953694
#>     Attrib V11    0.3707396632001838
#>     Attrib V12    0.19392992910361484
#>     Attrib V13    0.024813196538107585
#>     Attrib V14    -0.2504341286642371
#>     Attrib V15    0.09958848272279779
#>     Attrib V16    0.030215870951875553
#>     Attrib V17    0.2709792767439778
#>     Attrib V18    0.3154432352233339
#>     Attrib V19    0.019557475800896135
#>     Attrib V2    0.0077214500930270135
#>     Attrib V20    0.0732616967083912
#>     Attrib V21    0.391841599617959
#>     Attrib V22    0.6069576826148115
#>     Attrib V23    0.3553683444200875
#>     Attrib V24    0.45196620400114057
#>     Attrib V25    0.1815435100541002
#>     Attrib V26    -0.48147358283134056
#>     Attrib V27    -0.49515336611891925
#>     Attrib V28    -0.3021005011414826
#>     Attrib V29    -0.667159629387296
#>     Attrib V3    -0.1584260239717597
#>     Attrib V30    0.3082308132754826
#>     Attrib V31    -0.6280814163059314
#>     Attrib V32    0.03879666309405523
#>     Attrib V33    0.39869648456195494
#>     Attrib V34    -0.31962582341325996
#>     Attrib V35    0.008637588558187949
#>     Attrib V36    -0.42145217478342173
#>     Attrib V37    -0.5593794144493769
#>     Attrib V38    0.12166471455195399
#>     Attrib V39    0.0832887310157958
#>     Attrib V4    -0.07167857408657095
#>     Attrib V40    -0.1370975411271905
#>     Attrib V41    -0.14128986288091708
#>     Attrib V42    0.011708418580710417
#>     Attrib V43    0.5360378118981655
#>     Attrib V44    0.6464557440129521
#>     Attrib V45    0.6798073458307619
#>     Attrib V46    0.0702932252506022
#>     Attrib V47    -0.22166398126654724
#>     Attrib V48    0.35904390089383065
#>     Attrib V49    0.31060251788750254
#>     Attrib V5    -0.08725802471366782
#>     Attrib V50    -0.6065313721552474
#>     Attrib V51    0.02282679262964295
#>     Attrib V52    0.04308146397827822
#>     Attrib V53    -0.15794247177026388
#>     Attrib V54    0.19911415623062464
#>     Attrib V55    -0.25736200541569965
#>     Attrib V56    0.28227189405251335
#>     Attrib V57    -0.12013346386532117
#>     Attrib V58    0.7880411995436676
#>     Attrib V59    0.49282696522934755
#>     Attrib V6    -0.3503227209286134
#>     Attrib V60    0.08433022587475161
#>     Attrib V7    0.13532214490430253
#>     Attrib V8    -0.17770348564471733
#>     Attrib V9    0.3701717555789215
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.31207665156252506
#>     Attrib V1    -0.07819517867959268
#>     Attrib V10    0.3769815181701162
#>     Attrib V11    0.8608985123191172
#>     Attrib V12    0.759681000834498
#>     Attrib V13    0.22335135941177778
#>     Attrib V14    -0.5406982169960198
#>     Attrib V15    -0.32374548896371347
#>     Attrib V16    -0.29524911855014935
#>     Attrib V17    0.07460555991854319
#>     Attrib V18    0.40599490625729834
#>     Attrib V19    -0.013134342040114794
#>     Attrib V2    -0.05746783993645355
#>     Attrib V20    -0.212054422084782
#>     Attrib V21    0.31362204079092176
#>     Attrib V22    0.7448191174453611
#>     Attrib V23    0.8394101917318031
#>     Attrib V24    0.9655968527797687
#>     Attrib V25    0.5138447273984197
#>     Attrib V26    0.23123330387822574
#>     Attrib V27    0.38134867780845316
#>     Attrib V28    0.4292600754453881
#>     Attrib V29    -0.02843732304749835
#>     Attrib V3    -0.2855341154630455
#>     Attrib V30    0.5929525345719482
#>     Attrib V31    -0.5944197342846068
#>     Attrib V32    -0.31111390188993066
#>     Attrib V33    -0.07388978622533804
#>     Attrib V34    -0.3383932481823969
#>     Attrib V35    0.4374823732120939
#>     Attrib V36    -0.24879003723240625
#>     Attrib V37    -0.09035601066411725
#>     Attrib V38    0.0952073481167919
#>     Attrib V39    -0.035729128314033264
#>     Attrib V4    -0.27231779206381845
#>     Attrib V40    -0.04101634121353857
#>     Attrib V41    0.4985530795807583
#>     Attrib V42    -0.2334491811129635
#>     Attrib V43    0.9600172357824623
#>     Attrib V44    1.2923598617004715
#>     Attrib V45    0.9675679040906628
#>     Attrib V46    0.3811204716075763
#>     Attrib V47    0.0225753340861126
#>     Attrib V48    0.7601272234644791
#>     Attrib V49    0.45787373281184945
#>     Attrib V5    0.358651446814197
#>     Attrib V50    -0.7634040023969056
#>     Attrib V51    0.30925505265320974
#>     Attrib V52    0.5886696819200394
#>     Attrib V53    0.16428868911360098
#>     Attrib V54    0.14041912042515334
#>     Attrib V55    -0.3646545765893908
#>     Attrib V56    -0.06383830942200873
#>     Attrib V57    -0.37764525186357056
#>     Attrib V58    0.6049151153542517
#>     Attrib V59    0.5241494494985831
#>     Attrib V6    -0.10713922034901993
#>     Attrib V60    0.034404972133062095
#>     Attrib V7    -0.35506441555421103
#>     Attrib V8    -0.45223652275206977
#>     Attrib V9    0.7359120052228091
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.21059653262656672
#>     Attrib V1    -0.1370871523605551
#>     Attrib V10    -0.29119025192819364
#>     Attrib V11    -0.8385537045032807
#>     Attrib V12    -0.7427900931193583
#>     Attrib V13    -0.4096556232445831
#>     Attrib V14    0.49655523919828787
#>     Attrib V15    0.022085329329284593
#>     Attrib V16    0.29055841808260485
#>     Attrib V17    0.40022311620478
#>     Attrib V18    0.24922971063964228
#>     Attrib V19    0.26334205142658557
#>     Attrib V2    -0.2555526366362705
#>     Attrib V20    0.16808262563117782
#>     Attrib V21    -0.1538141704806411
#>     Attrib V22    -0.4197863676423059
#>     Attrib V23    -0.15933422468717157
#>     Attrib V24    -0.4756948484000704
#>     Attrib V25    0.026798019644334717
#>     Attrib V26    0.6352539598421045
#>     Attrib V27    0.04056342524188187
#>     Attrib V28    -0.3674974146390543
#>     Attrib V29    0.45183255330655925
#>     Attrib V3    -0.0237789679021896
#>     Attrib V30    -0.2995736981305324
#>     Attrib V31    0.9761588507761061
#>     Attrib V32    -0.1335042846094591
#>     Attrib V33    -0.31715409146316703
#>     Attrib V34    0.37238413562904105
#>     Attrib V35    -0.020348423555274286
#>     Attrib V36    0.9593262562984619
#>     Attrib V37    0.7065066862354118
#>     Attrib V38    -0.12947944669548656
#>     Attrib V39    -0.20142023137421045
#>     Attrib V4    0.4752206801086929
#>     Attrib V40    0.1336246519207515
#>     Attrib V41    -0.20265567645162083
#>     Attrib V42    0.13073389547294398
#>     Attrib V43    -0.4602956299123975
#>     Attrib V44    -0.49612714952494746
#>     Attrib V45    -0.7380439554792739
#>     Attrib V46    -0.31116254726119824
#>     Attrib V47    0.061822641833217326
#>     Attrib V48    -0.7264175769195417
#>     Attrib V49    -0.4092885056298883
#>     Attrib V5    -0.011916054656900599
#>     Attrib V50    1.1487467570353627
#>     Attrib V51    -0.00968388430917245
#>     Attrib V52    -0.3381278910305452
#>     Attrib V53    0.03685513222631525
#>     Attrib V54    0.05122255937778292
#>     Attrib V55    0.5466123454673948
#>     Attrib V56    -0.17891624912056117
#>     Attrib V57    0.463749948763566
#>     Attrib V58    -0.8334699004929762
#>     Attrib V59    -0.16689234738294265
#>     Attrib V6    0.47949444800659624
#>     Attrib V60    0.48550096050630864
#>     Attrib V7    0.28753660339759635
#>     Attrib V8    0.7723670338912091
#>     Attrib V9    -0.5480048431947421
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.16476071456680771
#>     Attrib V1    0.5339714649515945
#>     Attrib V10    -0.018308070745701874
#>     Attrib V11    0.2292674008154762
#>     Attrib V12    -0.04163610113140786
#>     Attrib V13    -0.02363557556619554
#>     Attrib V14    0.012326148522388603
#>     Attrib V15    0.30180816316309683
#>     Attrib V16    0.3135643062091817
#>     Attrib V17    0.3740118923887827
#>     Attrib V18    0.2873705924527283
#>     Attrib V19    0.09522873392152102
#>     Attrib V2    0.29187601638412763
#>     Attrib V20    0.35576777492173556
#>     Attrib V21    0.5426028807958347
#>     Attrib V22    0.4417485128344891
#>     Attrib V23    0.12107827699210379
#>     Attrib V24    0.2044371164879291
#>     Attrib V25    -0.21774516332753707
#>     Attrib V26    -0.7787412061093613
#>     Attrib V27    -0.7138618396978106
#>     Attrib V28    -0.4356212351127735
#>     Attrib V29    -0.43292489847475113
#>     Attrib V3    0.06676697875573828
#>     Attrib V30    0.21889937064102605
#>     Attrib V31    -0.6127256594483966
#>     Attrib V32    0.00828846917430968
#>     Attrib V33    0.2324728007071501
#>     Attrib V34    -0.40376818747447163
#>     Attrib V35    -0.21191457236844063
#>     Attrib V36    -0.4540520826519026
#>     Attrib V37    -0.43657379079624853
#>     Attrib V38    0.20007394682902574
#>     Attrib V39    0.16890763583707996
#>     Attrib V4    0.0928826899334191
#>     Attrib V40    -0.15382584556283677
#>     Attrib V41    -0.2466761853864807
#>     Attrib V42    9.87662530923822E-4
#>     Attrib V43    0.34490569837534574
#>     Attrib V44    0.4210891402316164
#>     Attrib V45    0.42036554986909974
#>     Attrib V46    0.008339800121756554
#>     Attrib V47    -0.2563075393453618
#>     Attrib V48    0.23281432764512985
#>     Attrib V49    0.22403679355239267
#>     Attrib V5    0.011761138207008954
#>     Attrib V50    -0.3876682346118697
#>     Attrib V51    0.01807817890504647
#>     Attrib V52    0.009276775795046948
#>     Attrib V53    -0.14874059445341445
#>     Attrib V54    0.2004783781815141
#>     Attrib V55    -0.041316493878240636
#>     Attrib V56    0.5222124720084265
#>     Attrib V57    0.18827445714022786
#>     Attrib V58    0.829462299061725
#>     Attrib V59    0.6677183005797441
#>     Attrib V6    -0.22328770920145963
#>     Attrib V60    0.1587320852628284
#>     Attrib V7    0.22161286017472387
#>     Attrib V8    -0.11175220400374625
#>     Attrib V9    0.260410559297795
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.13325095124599817
#>     Attrib V1    0.629553543479688
#>     Attrib V10    -0.0779099645201844
#>     Attrib V11    0.38290855501736454
#>     Attrib V12    -0.01153718949528038
#>     Attrib V13    -0.02159468888131805
#>     Attrib V14    -0.08194566200593843
#>     Attrib V15    0.3664507800426497
#>     Attrib V16    0.25537542575136496
#>     Attrib V17    0.4667080723602149
#>     Attrib V18    0.29612807149228776
#>     Attrib V19    0.040837028436301305
#>     Attrib V2    0.2089627966124238
#>     Attrib V20    0.33779699734914426
#>     Attrib V21    0.684056990971798
#>     Attrib V22    0.6793784387212765
#>     Attrib V23    0.31467180820427937
#>     Attrib V24    0.2681930969410798
#>     Attrib V25    -0.1948896937694115
#>     Attrib V26    -0.8884047825506574
#>     Attrib V27    -0.8482405381694575
#>     Attrib V28    -0.4161440260746599
#>     Attrib V29    -0.5701399375667343
#>     Attrib V3    0.03849675128883469
#>     Attrib V30    0.40928241094547113
#>     Attrib V31    -0.9483839672898935
#>     Attrib V32    -0.001385232447426156
#>     Attrib V33    0.3907128314735182
#>     Attrib V34    -0.5615478299626345
#>     Attrib V35    -0.23053044179061852
#>     Attrib V36    -0.5764904253404022
#>     Attrib V37    -0.5508874037714764
#>     Attrib V38    0.31828453694860076
#>     Attrib V39    0.2728937673894196
#>     Attrib V4    0.06717732283470648
#>     Attrib V40    -0.276783657569377
#>     Attrib V41    -0.3104938991461098
#>     Attrib V42    0.03401806213556236
#>     Attrib V43    0.5684106461517024
#>     Attrib V44    0.7276814753007592
#>     Attrib V45    0.75983758630612
#>     Attrib V46    0.010302977908663703
#>     Attrib V47    -0.2671933975132707
#>     Attrib V48    0.24912474239894786
#>     Attrib V49    0.2950574251903969
#>     Attrib V5    -0.1107235326239615
#>     Attrib V50    -0.6351899016511794
#>     Attrib V51    -0.011385043403327145
#>     Attrib V52    0.0016305669893555029
#>     Attrib V53    -0.2627254822290598
#>     Attrib V54    0.15133983871083262
#>     Attrib V55    -0.20498194138813502
#>     Attrib V56    0.649474446819043
#>     Attrib V57    0.09836132962194544
#>     Attrib V58    1.0781531083470532
#>     Attrib V59    0.8846274359721088
#>     Attrib V6    -0.4065050510832779
#>     Attrib V60    0.13290476551157865
#>     Attrib V7    0.2522847589212976
#>     Attrib V8    -0.12044909013394861
#>     Attrib V9    0.3343272059414433
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.11902848363457427
#>     Attrib V1    -0.07875061239195061
#>     Attrib V10    -0.2591065403074848
#>     Attrib V11    -0.6646742891408555
#>     Attrib V12    -0.6014849976782821
#>     Attrib V13    -0.31412976692610933
#>     Attrib V14    0.4488791826018307
#>     Attrib V15    0.11430120104387843
#>     Attrib V16    0.214884976126325
#>     Attrib V17    0.2876952169652222
#>     Attrib V18    0.06842306716875864
#>     Attrib V19    0.32153982464608855
#>     Attrib V2    -0.19990602031558277
#>     Attrib V20    0.3309062417536558
#>     Attrib V21    -0.06853334580014829
#>     Attrib V22    -0.3651616830332089
#>     Attrib V23    -0.08973085836526502
#>     Attrib V24    -0.3572988828655944
#>     Attrib V25    -0.024386329560186073
#>     Attrib V26    0.48778261756966884
#>     Attrib V27    0.11820733702799675
#>     Attrib V28    -0.17363232157557548
#>     Attrib V29    0.27939791102915845
#>     Attrib V3    0.02653559347817057
#>     Attrib V30    -0.4068435473208511
#>     Attrib V31    0.5243919626782818
#>     Attrib V32    -0.22024839714374336
#>     Attrib V33    -0.46288247852666037
#>     Attrib V34    0.1797440481363581
#>     Attrib V35    -0.06232416379871058
#>     Attrib V36    0.7114662142839211
#>     Attrib V37    0.42970694482903743
#>     Attrib V38    0.018588770922133728
#>     Attrib V39    -0.11121524167600891
#>     Attrib V4    0.36067833890716666
#>     Attrib V40    0.052886247886686326
#>     Attrib V41    -0.28426110316124353
#>     Attrib V42    0.06227618740451205
#>     Attrib V43    -0.33154961717782244
#>     Attrib V44    -0.415532918938095
#>     Attrib V45    -0.5546724729173785
#>     Attrib V46    -0.2102198430851473
#>     Attrib V47    0.06484663941116148
#>     Attrib V48    -0.6381801959673706
#>     Attrib V49    -0.3443780513484318
#>     Attrib V5    -0.0032582338531206333
#>     Attrib V50    0.964354133260149
#>     Attrib V51    -0.08457382182207117
#>     Attrib V52    -0.21813498095975714
#>     Attrib V53    0.04406276647213783
#>     Attrib V54    0.017319989082907675
#>     Attrib V55    0.5054551543952858
#>     Attrib V56    -0.04617332438059206
#>     Attrib V57    0.3897160498630957
#>     Attrib V58    -0.6158602298136909
#>     Attrib V59    -0.09809885766007793
#>     Attrib V6    0.37251872737106373
#>     Attrib V60    0.3011863089339569
#>     Attrib V7    0.17454841202962504
#>     Attrib V8    0.5986534594599595
#>     Attrib V9    -0.4472291986511139
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.4900924081422313
#>     Attrib V1    -0.10145953691100622
#>     Attrib V10    0.8065588591944939
#>     Attrib V11    1.3333738974922007
#>     Attrib V12    1.729759921558934
#>     Attrib V13    0.9526060813976268
#>     Attrib V14    -0.30894534809824997
#>     Attrib V15    -0.21694964340562417
#>     Attrib V16    -0.579896371406035
#>     Attrib V17    -0.6036776880820035
#>     Attrib V18    -0.16390588196524145
#>     Attrib V19    -0.3567774447962505
#>     Attrib V2    0.9024042731693135
#>     Attrib V20    -0.5309233007299324
#>     Attrib V21    0.1828430915339372
#>     Attrib V22    0.689294990045273
#>     Attrib V23    0.43312868646050284
#>     Attrib V24    0.3663279144487357
#>     Attrib V25    -0.06114785951500722
#>     Attrib V26    0.4495726477438746
#>     Attrib V27    1.2414614713447711
#>     Attrib V28    1.8433470657920865
#>     Attrib V29    1.3447960188062282
#>     Attrib V3    0.4593801718910333
#>     Attrib V30    0.783630145341186
#>     Attrib V31    -0.35858556586956186
#>     Attrib V32    -0.16638636424638048
#>     Attrib V33    -0.3962862445231606
#>     Attrib V34    -0.36397664590178846
#>     Attrib V35    0.1897106801648156
#>     Attrib V36    -0.8042644667440876
#>     Attrib V37    0.15472455186178155
#>     Attrib V38    -0.3076791270006082
#>     Attrib V39    0.010040636181652672
#>     Attrib V4    -0.10627760059068533
#>     Attrib V40    0.20956200266917946
#>     Attrib V41    1.4235306937644523
#>     Attrib V42    -0.17989452880892362
#>     Attrib V43    0.18193056276605216
#>     Attrib V44    0.17519202483475346
#>     Attrib V45    0.382781299789798
#>     Attrib V46    0.5082818813338192
#>     Attrib V47    0.25974039309576896
#>     Attrib V48    0.853363764026463
#>     Attrib V49    0.6102761822110339
#>     Attrib V5    0.6237763862427131
#>     Attrib V50    -0.8673187478811145
#>     Attrib V51    0.6368155406904116
#>     Attrib V52    1.3049291887223282
#>     Attrib V53    0.7805720267247134
#>     Attrib V54    -0.19616154418001475
#>     Attrib V55    -0.6364906463855718
#>     Attrib V56    -0.47392014441063174
#>     Attrib V57    -0.08369409628996428
#>     Attrib V58    0.44527333514568246
#>     Attrib V59    0.35975997949048993
#>     Attrib V6    0.3197531591678296
#>     Attrib V60    0.19668952280130925
#>     Attrib V7    -0.8530398545569963
#>     Attrib V8    -0.8345851937725571
#>     Attrib V9    0.8373343729600851
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.18739166368118182
#>     Attrib V1    0.09294095593102283
#>     Attrib V10    0.03841049904655168
#>     Attrib V11    0.027878640479354094
#>     Attrib V12    0.055045130167680686
#>     Attrib V13    0.00285020348999523
#>     Attrib V14    0.07684117586108453
#>     Attrib V15    0.02278966979753896
#>     Attrib V16    0.039312623410831575
#>     Attrib V17    0.09468658098536575
#>     Attrib V18    0.030988649381820405
#>     Attrib V19    0.0817839788295409
#>     Attrib V2    0.07021836844871912
#>     Attrib V20    0.027951589208342793
#>     Attrib V21    0.040844573786226454
#>     Attrib V22    0.01804200772591463
#>     Attrib V23    -0.0016130248813194944
#>     Attrib V24    -0.015317497077203477
#>     Attrib V25    -0.008125048753295906
#>     Attrib V26    -0.09398274651216482
#>     Attrib V27    -0.05183319022197955
#>     Attrib V28    -0.00787193530025353
#>     Attrib V29    -0.033052388529817775
#>     Attrib V3    0.03521188356008649
#>     Attrib V30    -0.009652638706386432
#>     Attrib V31    -0.06464738841519145
#>     Attrib V32    -0.016129292234175176
#>     Attrib V33    0.06289419365795315
#>     Attrib V34    0.008016541814444993
#>     Attrib V35    0.11610407663861286
#>     Attrib V36    0.10249924479790683
#>     Attrib V37    0.11217138942483436
#>     Attrib V38    0.07106280331697576
#>     Attrib V39    0.0927417710754939
#>     Attrib V4    0.11052358377079263
#>     Attrib V40    0.041579127911532406
#>     Attrib V41    0.04700400971926468
#>     Attrib V42    0.07834282688097444
#>     Attrib V43    0.07650352555476521
#>     Attrib V44    0.10237052210351333
#>     Attrib V45    0.1137099933472019
#>     Attrib V46    0.04887244753387151
#>     Attrib V47    0.04146125567145263
#>     Attrib V48    0.12831179511713664
#>     Attrib V49    0.06655382826970874
#>     Attrib V5    0.05216665118919998
#>     Attrib V50    0.052591525266247226
#>     Attrib V51    0.04793584553741005
#>     Attrib V52    0.03465669157199791
#>     Attrib V53    0.06280310899470151
#>     Attrib V54    0.06051380616777044
#>     Attrib V55    0.05751177964525138
#>     Attrib V56    0.09659231988538458
#>     Attrib V57    0.10912162581917456
#>     Attrib V58    0.10051235648425558
#>     Attrib V59    0.10353009816290078
#>     Attrib V6    0.08821934664424892
#>     Attrib V60    0.10587824255294945
#>     Attrib V7    0.017272204811226984
#>     Attrib V8    0.06642091901328838
#>     Attrib V9    0.05996595864279864
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    -0.028263654055935766
#>     Attrib V1    0.3710954316682623
#>     Attrib V10    0.12446282585711042
#>     Attrib V11    0.5009784306267215
#>     Attrib V12    0.18938994108430388
#>     Attrib V13    0.04870116346467457
#>     Attrib V14    -0.3706754782853776
#>     Attrib V15    0.044979936215032455
#>     Attrib V16    0.04933032756181589
#>     Attrib V17    0.27750164187393933
#>     Attrib V18    0.4007019499182236
#>     Attrib V19    -0.02870637986982916
#>     Attrib V2    -0.042639851765433605
#>     Attrib V20    0.025699057090768317
#>     Attrib V21    0.46907525549822077
#>     Attrib V22    0.6797600022743806
#>     Attrib V23    0.411520222625208
#>     Attrib V24    0.5356717797639088
#>     Attrib V25    0.1666552111448525
#>     Attrib V26    -0.44258100843309867
#>     Attrib V27    -0.519899026632956
#>     Attrib V28    -0.36075818619934213
#>     Attrib V29    -0.7253614789866224
#>     Attrib V3    -0.2125700898905275
#>     Attrib V30    0.385382547628677
#>     Attrib V31    -0.7400461928340626
#>     Attrib V32    0.058307329199623205
#>     Attrib V33    0.38765534344562086
#>     Attrib V34    -0.3602640176291544
#>     Attrib V35    -0.024198780638785725
#>     Attrib V36    -0.4412037542634275
#>     Attrib V37    -0.5397945920156864
#>     Attrib V38    0.2023785991178356
#>     Attrib V39    0.14640272938884122
#>     Attrib V4    -0.13705550410843495
#>     Attrib V40    -0.24794846002113488
#>     Attrib V41    -0.15769752889191654
#>     Attrib V42    -0.03977820098556556
#>     Attrib V43    0.6386787507935826
#>     Attrib V44    0.8707049187475645
#>     Attrib V45    0.8044569407508663
#>     Attrib V46    0.0368981826891403
#>     Attrib V47    -0.25235185100353213
#>     Attrib V48    0.43579509011391565
#>     Attrib V49    0.2574470845139027
#>     Attrib V5    -0.12258376358197462
#>     Attrib V50    -0.6151599097395252
#>     Attrib V51    0.0756276617721258
#>     Attrib V52    0.005266173893121595
#>     Attrib V53    -0.23285087425017398
#>     Attrib V54    0.18430159069569016
#>     Attrib V55    -0.3304791934082886
#>     Attrib V56    0.30934672108010375
#>     Attrib V57    -0.09739398131339742
#>     Attrib V58    0.8419121008002419
#>     Attrib V59    0.5728958441235781
#>     Attrib V6    -0.37894678703925033
#>     Attrib V60    0.08542664285207541
#>     Attrib V7    0.0704529696736491
#>     Attrib V8    -0.16557373872239647
#>     Attrib V9    0.47134590050237146
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.46430664412407496
#>     Attrib V1    0.08298229887653945
#>     Attrib V10    -0.9992161330243866
#>     Attrib V11    -1.581014040242718
#>     Attrib V12    -1.929880824184244
#>     Attrib V13    -1.0277424130561934
#>     Attrib V14    0.3750325804639373
#>     Attrib V15    0.23394598201401173
#>     Attrib V16    0.7091379742366963
#>     Attrib V17    0.6525810641716615
#>     Attrib V18    0.21179563246464822
#>     Attrib V19    0.3126965003159656
#>     Attrib V2    -1.0126151126301777
#>     Attrib V20    0.5501330652491487
#>     Attrib V21    -0.2859902840894627
#>     Attrib V22    -0.831213634128919
#>     Attrib V23    -0.4840987643717137
#>     Attrib V24    -0.3833416524090806
#>     Attrib V25    0.09215916258864905
#>     Attrib V26    -0.2619081613680448
#>     Attrib V27    -1.1427759173734624
#>     Attrib V28    -1.8836229321996394
#>     Attrib V29    -1.3157558416418678
#>     Attrib V3    -0.3961554736776642
#>     Attrib V30    -0.8816016694299148
#>     Attrib V31    0.46683337033696676
#>     Attrib V32    0.1702690619431602
#>     Attrib V33    0.2779489833623329
#>     Attrib V34    0.46268339891546556
#>     Attrib V35    -0.11135952005259472
#>     Attrib V36    0.907243006759047
#>     Attrib V37    -0.18698278150524353
#>     Attrib V38    0.29455705637001073
#>     Attrib V39    -0.034672193401134414
#>     Attrib V4    0.12940063949126196
#>     Attrib V40    -0.2452520965186967
#>     Attrib V41    -1.4335131227800284
#>     Attrib V42    0.2092697317051257
#>     Attrib V43    -0.26109123032788956
#>     Attrib V44    -0.1970123487303428
#>     Attrib V45    -0.3995115632656344
#>     Attrib V46    -0.4987205167846206
#>     Attrib V47    -0.2896302826057906
#>     Attrib V48    -0.9798387751542421
#>     Attrib V49    -0.6693242711541404
#>     Attrib V5    -0.6138041562022755
#>     Attrib V50    1.0703851865019407
#>     Attrib V51    -0.7524402433759564
#>     Attrib V52    -1.3590065517259307
#>     Attrib V53    -0.7369828626293244
#>     Attrib V54    0.299959327389656
#>     Attrib V55    0.732371960026428
#>     Attrib V56    0.510240189335238
#>     Attrib V57    0.10704602782163429
#>     Attrib V58    -0.5371644767423525
#>     Attrib V59    -0.26008260133244504
#>     Attrib V6    -0.17384966693875842
#>     Attrib V60    -0.17120432392098722
#>     Attrib V7    1.0155362490920103
#>     Attrib V8    0.9872643039213876
#>     Attrib V9    -0.9084061997124002
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.06458281588664415
#>     Attrib V1    0.05563368015436847
#>     Attrib V10    0.023826766605868757
#>     Attrib V11    0.2246332664038717
#>     Attrib V12    0.1472637684143366
#>     Attrib V13    0.05159475386832794
#>     Attrib V14    1.8681153324362398E-4
#>     Attrib V15    0.02559032225785366
#>     Attrib V16    -0.0026218353853670424
#>     Attrib V17    0.09288367368051108
#>     Attrib V18    0.14796800692675446
#>     Attrib V19    0.013950198532108918
#>     Attrib V2    5.238646664581013E-4
#>     Attrib V20    0.10010305216642407
#>     Attrib V21    0.18717628351387366
#>     Attrib V22    0.2043613097860638
#>     Attrib V23    0.03633637606969622
#>     Attrib V24    0.1407111780864567
#>     Attrib V25    0.09484074692816247
#>     Attrib V26    -0.17521901478844748
#>     Attrib V27    -0.14045093704926934
#>     Attrib V28    -0.062475650536789926
#>     Attrib V29    -0.12213571205549933
#>     Attrib V3    0.014921638956537399
#>     Attrib V30    0.03318386380531183
#>     Attrib V31    -0.21189420713677426
#>     Attrib V32    0.0014706694798457844
#>     Attrib V33    0.0811579364988784
#>     Attrib V34    -0.07412722891472717
#>     Attrib V35    0.07974026953468967
#>     Attrib V36    -0.11181285142015182
#>     Attrib V37    -0.08093450632218281
#>     Attrib V38    0.06530388346480102
#>     Attrib V39    0.07031634485721454
#>     Attrib V4    -0.02902452604822503
#>     Attrib V40    -0.04333799098890008
#>     Attrib V41    -0.0035832266182346533
#>     Attrib V42    -0.03859989184986169
#>     Attrib V43    0.21941133149566214
#>     Attrib V44    0.1914734220727143
#>     Attrib V45    0.28996833594177107
#>     Attrib V46    0.07154469725380046
#>     Attrib V47    0.010303793581812997
#>     Attrib V48    0.16229608987015792
#>     Attrib V49    0.07703803091454477
#>     Attrib V5    0.009590366892246195
#>     Attrib V50    -0.15225477826512124
#>     Attrib V51    0.056747490216896096
#>     Attrib V52    0.08960878441131079
#>     Attrib V53    0.01815097022819009
#>     Attrib V54    0.053649697359554174
#>     Attrib V55    0.008909531940124985
#>     Attrib V56    0.13190806590770895
#>     Attrib V57    0.014374478151967286
#>     Attrib V58    0.20769796248436953
#>     Attrib V59    0.13764143399196843
#>     Attrib V6    -0.06492492272077938
#>     Attrib V60    0.016597954986367788
#>     Attrib V7    -0.026399845992873868
#>     Attrib V8    -0.06533586119353213
#>     Attrib V9    0.14751735802366894
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.09599351439636802
#>     Attrib V1    0.1331896535331419
#>     Attrib V10    0.08966975542517401
#>     Attrib V11    0.14866018486838847
#>     Attrib V12    0.11990298529866725
#>     Attrib V13    0.09202134446352646
#>     Attrib V14    -0.016581277195931082
#>     Attrib V15    0.05591886844071071
#>     Attrib V16    0.04139015331774335
#>     Attrib V17    0.14439930226319084
#>     Attrib V18    0.1311451554015738
#>     Attrib V19    0.025318154317205126
#>     Attrib V2    0.05427458272945973
#>     Attrib V20    0.03338787964341586
#>     Attrib V21    0.15685971203815985
#>     Attrib V22    0.13895540004503718
#>     Attrib V23    0.05992779410742321
#>     Attrib V24    0.06615034913928107
#>     Attrib V25    0.06012018607367686
#>     Attrib V26    -0.10404221452724573
#>     Attrib V27    -0.1349777696300886
#>     Attrib V28    -0.03911339883162107
#>     Attrib V29    -0.18994569835642905
#>     Attrib V3    -0.004150360415948163
#>     Attrib V30    0.06986161347691591
#>     Attrib V31    -0.13318293086878527
#>     Attrib V32    -0.034085399421517316
#>     Attrib V33    0.027829355062420423
#>     Attrib V34    -0.08635828405336196
#>     Attrib V35    0.0857172702498591
#>     Attrib V36    -0.08093583679579529
#>     Attrib V37    -0.0411857580836464
#>     Attrib V38    0.03990619308377294
#>     Attrib V39    0.10988659169825507
#>     Attrib V4    0.047885760975237036
#>     Attrib V40    -0.014460640161023693
#>     Attrib V41    -0.0016334145361892659
#>     Attrib V42    0.03594255286868496
#>     Attrib V43    0.1227916844405626
#>     Attrib V44    0.14586723809704483
#>     Attrib V45    0.21408780230945762
#>     Attrib V46    0.048424562595959224
#>     Attrib V47    -0.03503720196482532
#>     Attrib V48    0.16751731664050318
#>     Attrib V49    0.0736277860200288
#>     Attrib V5    0.010511092848134321
#>     Attrib V50    -0.14093627234560094
#>     Attrib V51    0.02786643213998181
#>     Attrib V52    0.05969440633649595
#>     Attrib V53    0.054052539806918265
#>     Attrib V54    0.08022661653426069
#>     Attrib V55    -0.02920568231091701
#>     Attrib V56    0.15252734578996063
#>     Attrib V57    -0.004878615447516105
#>     Attrib V58    0.24062179891303667
#>     Attrib V59    0.20327498879313124
#>     Attrib V6    -0.04495751696512248
#>     Attrib V60    0.05202307430941727
#>     Attrib V7    -0.03538785123049403
#>     Attrib V8    -0.06910197390936476
#>     Attrib V9    0.11065036071652237
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.20235277051499434
#>     Attrib V1    0.5251979459476752
#>     Attrib V10    -0.04127376393652424
#>     Attrib V11    0.2972087958641905
#>     Attrib V12    -0.08209308956810685
#>     Attrib V13    0.0019805744659428903
#>     Attrib V14    -0.019077493546315598
#>     Attrib V15    0.3448878949565905
#>     Attrib V16    0.26985122900270164
#>     Attrib V17    0.40383990739557607
#>     Attrib V18    0.29084397151628844
#>     Attrib V19    0.04947467899537089
#>     Attrib V2    0.25778955661043174
#>     Attrib V20    0.3412662068667376
#>     Attrib V21    0.5176443682805443
#>     Attrib V22    0.5389486162775923
#>     Attrib V23    0.22713454349503887
#>     Attrib V24    0.2514439475697072
#>     Attrib V25    -0.18658991701852828
#>     Attrib V26    -0.7732398472695043
#>     Attrib V27    -0.7763582691973018
#>     Attrib V28    -0.4564970346644374
#>     Attrib V29    -0.5629163495622085
#>     Attrib V3    0.007736532001716354
#>     Attrib V30    0.22889207478944806
#>     Attrib V31    -0.7303007500825914
#>     Attrib V32    -0.003255416979289021
#>     Attrib V33    0.3477357364444442
#>     Attrib V34    -0.38767953803769467
#>     Attrib V35    -0.1680268934252583
#>     Attrib V36    -0.5053166995704572
#>     Attrib V37    -0.4985336915502653
#>     Attrib V38    0.27185689849327477
#>     Attrib V39    0.16977384432565176
#>     Attrib V4    0.06849458050525868
#>     Attrib V40    -0.20163966599260605
#>     Attrib V41    -0.2673357954824316
#>     Attrib V42    0.020385271187004218
#>     Attrib V43    0.40201002424681936
#>     Attrib V44    0.5592450202111223
#>     Attrib V45    0.5381457091511294
#>     Attrib V46    0.0011466968319006202
#>     Attrib V47    -0.23650299553779006
#>     Attrib V48    0.24170748164591582
#>     Attrib V49    0.23665307411564793
#>     Attrib V5    -0.07400372221048097
#>     Attrib V50    -0.47218099508367667
#>     Attrib V51    1.3398465097879858E-6
#>     Attrib V52    -0.02919036013176835
#>     Attrib V53    -0.1670774525164767
#>     Attrib V54    0.2162815189541769
#>     Attrib V55    -0.07059264768354193
#>     Attrib V56    0.5029380846016749
#>     Attrib V57    0.14483512921577912
#>     Attrib V58    0.8470803559237319
#>     Attrib V59    0.6924804489486387
#>     Attrib V6    -0.3059434484142154
#>     Attrib V60    0.13504328510923194
#>     Attrib V7    0.24360965877573731
#>     Attrib V8    -0.0593359307752109
#>     Attrib V9    0.3175019905323019
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.08966247240680761
#>     Attrib V1    0.1646597678005799
#>     Attrib V10    -0.024455308190599535
#>     Attrib V11    0.19094568080395016
#>     Attrib V12    0.08038246343785863
#>     Attrib V13    0.0013755821212628409
#>     Attrib V14    -0.04946084565354126
#>     Attrib V15    0.068800339591983
#>     Attrib V16    0.0968045393592132
#>     Attrib V17    0.16545169441152183
#>     Attrib V18    0.2911764869876755
#>     Attrib V19    0.035825083879871385
#>     Attrib V2    -0.025121666121858784
#>     Attrib V20    0.10951361734844928
#>     Attrib V21    0.2642214978092909
#>     Attrib V22    0.28503036025827333
#>     Attrib V23    0.1815233244122659
#>     Attrib V24    0.19139489356947414
#>     Attrib V25    0.0342010662532069
#>     Attrib V26    -0.27137425554918826
#>     Attrib V27    -0.27908829219155623
#>     Attrib V28    -0.1579630189452384
#>     Attrib V29    -0.35192877611473694
#>     Attrib V3    -0.01861252923268519
#>     Attrib V30    0.10910534799107416
#>     Attrib V31    -0.38533033562112456
#>     Attrib V32    -0.009958321239618576
#>     Attrib V33    0.17675940835531254
#>     Attrib V34    -0.11208253359538353
#>     Attrib V35    0.05856873145053005
#>     Attrib V36    -0.11980518773431442
#>     Attrib V37    -0.21181202721585904
#>     Attrib V38    0.03945576594251752
#>     Attrib V39    0.06270323515540485
#>     Attrib V4    -0.06394000608421384
#>     Attrib V40    -0.10136097529472525
#>     Attrib V41    -0.09366079402791044
#>     Attrib V42    0.01766968346508336
#>     Attrib V43    0.2155032976791028
#>     Attrib V44    0.3347648677787134
#>     Attrib V45    0.34565987516463315
#>     Attrib V46    0.03935807498402176
#>     Attrib V47    -0.08313954909502308
#>     Attrib V48    0.14921127801823802
#>     Attrib V49    0.15205998791323508
#>     Attrib V5    0.007087581227350979
#>     Attrib V50    -0.2906648398763086
#>     Attrib V51    0.024056933250860873
#>     Attrib V52    0.017845051014365527
#>     Attrib V53    -0.026590990711031572
#>     Attrib V54    0.06322856898108159
#>     Attrib V55    -0.11101055570775817
#>     Attrib V56    0.16535819486794656
#>     Attrib V57    -0.04022394836798804
#>     Attrib V58    0.39919672977377413
#>     Attrib V59    0.214825206607606
#>     Attrib V6    -0.1254788890016455
#>     Attrib V60    -0.0032164648289580693
#>     Attrib V7    0.04692355642588594
#>     Attrib V8    -0.06558926710044959
#>     Attrib V9    0.20697776887684446
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
