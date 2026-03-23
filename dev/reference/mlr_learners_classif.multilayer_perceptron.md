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
#>     Threshold    -0.5883641135801164
#>     Node 2    2.769180168940066
#>     Node 3    2.064438506752989
#>     Node 4    1.184883383306861
#>     Node 5    -2.2019158026107015
#>     Node 6    1.5185652725502707
#>     Node 7    1.4039469879914535
#>     Node 8    2.3430151321819728
#>     Node 9    3.637753180216662
#>     Node 10    -2.05203741523785
#>     Node 11    1.9640597891353382
#>     Node 12    1.8978615265138765
#>     Node 13    0.25019527765602984
#>     Node 14    1.588788203543538
#>     Node 15    -1.6390833992124145
#>     Node 16    0.871698571183216
#>     Node 17    0.4393771370964272
#>     Node 18    -2.795594601231283
#>     Node 19    1.7639132192347988
#>     Node 20    1.5252462546480758
#>     Node 21    -2.667678426738478
#>     Node 22    1.5162095678803276
#>     Node 23    1.1202227665208022
#>     Node 24    -0.7821386338579736
#>     Node 25    4.810854825615328
#>     Node 26    -0.3666158184324734
#>     Node 27    2.68714979055285
#>     Node 28    -2.0416742872056046
#>     Node 29    1.28941910049646
#>     Node 30    -1.451018525385482
#>     Node 31    1.7282874539796336
#>     Node 32    0.5845377290715007
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.5974349705365443
#>     Node 2    -2.8121679548028764
#>     Node 3    -2.0588271984911737
#>     Node 4    -1.1532547615235955
#>     Node 5    2.1922177878766336
#>     Node 6    -1.5019373881004339
#>     Node 7    -1.3757706623019244
#>     Node 8    -2.3560977245006884
#>     Node 9    -3.6172835451329974
#>     Node 10    1.9834377913489754
#>     Node 11    -1.9152500322004022
#>     Node 12    -1.9683395542670206
#>     Node 13    -0.18889099253383457
#>     Node 14    -1.5335373657278448
#>     Node 15    1.6221248073594
#>     Node 16    -0.8902481412327634
#>     Node 17    -0.40324061024726127
#>     Node 18    2.811852697973023
#>     Node 19    -1.7492789900365118
#>     Node 20    -1.4964850120519464
#>     Node 21    2.7093729306568948
#>     Node 22    -1.57739699749062
#>     Node 23    -1.1651231361894354
#>     Node 24    0.793542241714766
#>     Node 25    -4.81619527965632
#>     Node 26    0.30235256174315095
#>     Node 27    -2.7147325911517752
#>     Node 28    1.9818575082121332
#>     Node 29    -1.315447592352213
#>     Node 30    1.5270125712298437
#>     Node 31    -1.6729862649236913
#>     Node 32    -0.6036045536527388
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.35133769651146207
#>     Attrib V1    -0.4933405115090995
#>     Attrib V10    0.007558211862950051
#>     Attrib V11    0.011830169874166132
#>     Attrib V12    0.36164018734275993
#>     Attrib V13    0.15334564452471433
#>     Attrib V14    -0.37437031612859833
#>     Attrib V15    -0.36182797008894046
#>     Attrib V16    0.2538485482810358
#>     Attrib V17    0.47499938846986245
#>     Attrib V18    0.5135556240423246
#>     Attrib V19    0.7242063259031277
#>     Attrib V2    -0.29249237152490926
#>     Attrib V20    0.5233953106028023
#>     Attrib V21    0.4573825326095241
#>     Attrib V22    0.524861798741961
#>     Attrib V23    1.2909132634570704
#>     Attrib V24    0.9031586736854933
#>     Attrib V25    -0.011311468621095517
#>     Attrib V26    -0.42843921045219957
#>     Attrib V27    -0.9151006073930631
#>     Attrib V28    0.24409917995381808
#>     Attrib V29    -1.0544045916744338
#>     Attrib V3    -0.11130071813564024
#>     Attrib V30    0.21927624254821546
#>     Attrib V31    -1.4966132524342675
#>     Attrib V32    -0.015085132636077062
#>     Attrib V33    0.9907966991294295
#>     Attrib V34    0.19527337782424883
#>     Attrib V35    -0.21505665796337595
#>     Attrib V36    -1.2426888554022082
#>     Attrib V37    -1.7005567501223842
#>     Attrib V38    0.4634274028238193
#>     Attrib V39    0.3140722431019892
#>     Attrib V4    0.5198806149511791
#>     Attrib V40    -0.6701094691663276
#>     Attrib V41    0.10571726804934967
#>     Attrib V42    0.9522390044741412
#>     Attrib V43    0.8285256217158845
#>     Attrib V44    0.712101705831187
#>     Attrib V45    0.6910056118967122
#>     Attrib V46    0.527373733601769
#>     Attrib V47    -0.08125602785280411
#>     Attrib V48    0.49577103639483094
#>     Attrib V49    1.0251661369951286
#>     Attrib V5    -0.22606139612104648
#>     Attrib V50    -1.0394607039898955
#>     Attrib V51    0.11644875680665054
#>     Attrib V52    0.8739033054192296
#>     Attrib V53    0.0780556799943344
#>     Attrib V54    0.7805254971242406
#>     Attrib V55    -0.441849143822876
#>     Attrib V56    0.45857477585162437
#>     Attrib V57    -0.11197150496108202
#>     Attrib V58    0.2851619031235411
#>     Attrib V59    0.3911208817346022
#>     Attrib V6    -0.44017484580369376
#>     Attrib V60    0.24982621321957327
#>     Attrib V7    -0.21749304404764944
#>     Attrib V8    -0.07258299791007043
#>     Attrib V9    1.0740084038456226
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.33535353781628524
#>     Attrib V1    0.16097538986459137
#>     Attrib V10    -0.4772820330997041
#>     Attrib V11    -0.478061352774522
#>     Attrib V12    -0.06455206195306223
#>     Attrib V13    0.008053180483746685
#>     Attrib V14    0.1644423667583185
#>     Attrib V15    0.21875663179208787
#>     Attrib V16    0.34854885517381407
#>     Attrib V17    0.08957973938808812
#>     Attrib V18    0.0579602355450245
#>     Attrib V19    0.10899727238748379
#>     Attrib V2    0.2221305860283075
#>     Attrib V20    0.44320116142876587
#>     Attrib V21    0.6316996669746381
#>     Attrib V22    0.1830384075262962
#>     Attrib V23    0.23004728874488817
#>     Attrib V24    -0.01372398672723531
#>     Attrib V25    -0.6319184325204896
#>     Attrib V26    -0.8393212041285668
#>     Attrib V27    -0.9665729515953702
#>     Attrib V28    0.08200919184815103
#>     Attrib V29    -0.4869472181049992
#>     Attrib V3    0.15503194356431382
#>     Attrib V30    0.2196209622953479
#>     Attrib V31    -1.084699402042528
#>     Attrib V32    -0.2547746203314339
#>     Attrib V33    0.5134754709117149
#>     Attrib V34    -0.06807631823852993
#>     Attrib V35    -0.40179249359870195
#>     Attrib V36    -0.9354531912785874
#>     Attrib V37    -0.9531432200567932
#>     Attrib V38    0.31600025965115275
#>     Attrib V39    0.2895443639528834
#>     Attrib V4    0.6232132109916421
#>     Attrib V40    -0.3204722404818352
#>     Attrib V41    0.15737508974914632
#>     Attrib V42    0.7297421573580338
#>     Attrib V43    0.36329432752441126
#>     Attrib V44    0.19441755583101888
#>     Attrib V45    0.2766162569261183
#>     Attrib V46    0.1255571048299637
#>     Attrib V47    -0.3760225470690363
#>     Attrib V48    0.042543572369233014
#>     Attrib V49    0.3752842175130428
#>     Attrib V5    -0.17081760941787238
#>     Attrib V50    -0.7859464915202153
#>     Attrib V51    -0.24284528811355469
#>     Attrib V52    0.3551237891486459
#>     Attrib V53    0.12270133916697812
#>     Attrib V54    0.9456849158314984
#>     Attrib V55    -0.25285852491043853
#>     Attrib V56    0.2941562756542501
#>     Attrib V57    0.26772883331992975
#>     Attrib V58    0.31183943486045973
#>     Attrib V59    0.724555035524133
#>     Attrib V6    -0.1977458031249338
#>     Attrib V60    0.26638903148078596
#>     Attrib V7    -0.0843872921641696
#>     Attrib V8    0.2154357585796401
#>     Attrib V9    0.4318887318425176
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.1456898241101937
#>     Attrib V1    -0.16802513959905435
#>     Attrib V10    -0.046487481065263035
#>     Attrib V11    0.05715105972582378
#>     Attrib V12    0.29492569347352626
#>     Attrib V13    0.07383022879580466
#>     Attrib V14    -0.07749939679388991
#>     Attrib V15    -0.13970368919397178
#>     Attrib V16    0.03926027454663745
#>     Attrib V17    -0.04449868217138277
#>     Attrib V18    -0.015518120196498212
#>     Attrib V19    0.03479644538023893
#>     Attrib V2    -0.0748650031573358
#>     Attrib V20    0.14404659945808246
#>     Attrib V21    0.32388209457264155
#>     Attrib V22    0.032554768312279325
#>     Attrib V23    0.3050791696471865
#>     Attrib V24    0.14079442012701493
#>     Attrib V25    -0.17557694463186987
#>     Attrib V26    -0.11225295458236796
#>     Attrib V27    -0.27639635866466705
#>     Attrib V28    0.4036094086898777
#>     Attrib V29    -0.14584775166485484
#>     Attrib V3    -0.11417915916381279
#>     Attrib V30    0.3128750815733487
#>     Attrib V31    -0.683165819687456
#>     Attrib V32    0.01604331055713687
#>     Attrib V33    0.48200289359323156
#>     Attrib V34    0.11610140443452903
#>     Attrib V35    -0.00780725077787066
#>     Attrib V36    -0.4816892020866079
#>     Attrib V37    -0.5438526371004058
#>     Attrib V38    0.16984761077144905
#>     Attrib V39    0.25638628095107563
#>     Attrib V4    0.2710963745058087
#>     Attrib V40    -0.3074331409435983
#>     Attrib V41    -0.013969934106473037
#>     Attrib V42    0.1879874249057854
#>     Attrib V43    0.16463887063023538
#>     Attrib V44    0.13712695606815462
#>     Attrib V45    0.316420965730894
#>     Attrib V46    0.16250574208472796
#>     Attrib V47    -0.17620565429669313
#>     Attrib V48    0.2711566445992013
#>     Attrib V49    0.4579969309873456
#>     Attrib V5    -0.14810171246505138
#>     Attrib V50    -0.7263462586756366
#>     Attrib V51    0.03483843832562871
#>     Attrib V52    0.5064269968426532
#>     Attrib V53    0.033207397902902495
#>     Attrib V54    0.29885955778847345
#>     Attrib V55    -0.2990444013121904
#>     Attrib V56    -0.025978090301976307
#>     Attrib V57    -0.051906943221225646
#>     Attrib V58    0.1184838567029884
#>     Attrib V59    0.2003910615508221
#>     Attrib V6    -0.23328206374195115
#>     Attrib V60    0.028360740784174915
#>     Attrib V7    -0.21701833578177357
#>     Attrib V8    -0.1472988046230702
#>     Attrib V9    0.5355413613351735
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.1194817113111619
#>     Attrib V1    0.5159818357639583
#>     Attrib V10    0.03484082026819442
#>     Attrib V11    -0.09923218346206729
#>     Attrib V12    -0.5689578517231949
#>     Attrib V13    -0.1606983040316384
#>     Attrib V14    0.3324594357304967
#>     Attrib V15    0.4537501611026516
#>     Attrib V16    -0.1024075368555746
#>     Attrib V17    -0.10656135478266061
#>     Attrib V18    -0.2694678475797276
#>     Attrib V19    -0.31829657696819347
#>     Attrib V2    0.32606074544039826
#>     Attrib V20    -0.2361881610688441
#>     Attrib V21    -0.4458749441744843
#>     Attrib V22    -0.406898307417016
#>     Attrib V23    -0.7827145029476962
#>     Attrib V24    -0.4970966149189905
#>     Attrib V25    0.2662948635355201
#>     Attrib V26    0.16981214190711597
#>     Attrib V27    0.4456901932783652
#>     Attrib V28    -0.603344582129112
#>     Attrib V29    0.5703467025972514
#>     Attrib V3    0.2983774452666024
#>     Attrib V30    -0.34021107412560714
#>     Attrib V31    1.4829924274976645
#>     Attrib V32    0.18452431214258602
#>     Attrib V33    -0.8045207340639141
#>     Attrib V34    -0.24825480609384076
#>     Attrib V35    -0.08313948891386574
#>     Attrib V36    0.6024580458776111
#>     Attrib V37    0.8430514642681862
#>     Attrib V38    -0.5991814293911797
#>     Attrib V39    -0.4626898200558694
#>     Attrib V4    -0.6307743685911952
#>     Attrib V40    0.7071069822667228
#>     Attrib V41    -0.0363377592478974
#>     Attrib V42    -0.3715306531955459
#>     Attrib V43    -0.529122548681206
#>     Attrib V44    -0.4074434193742142
#>     Attrib V45    -0.6428781107580721
#>     Attrib V46    -0.6387880287193212
#>     Attrib V47    0.12534927614489944
#>     Attrib V48    -0.359857849906229
#>     Attrib V49    -0.875990292810679
#>     Attrib V5    0.2591674120409569
#>     Attrib V50    1.2618004390568398
#>     Attrib V51    -0.14026316371719674
#>     Attrib V52    -0.9129763086689494
#>     Attrib V53    0.07784617427981579
#>     Attrib V54    -0.5750700714139317
#>     Attrib V55    0.5933843858444703
#>     Attrib V56    0.1426046956381825
#>     Attrib V57    0.16728620184656393
#>     Attrib V58    -0.22373410135131896
#>     Attrib V59    -0.4566700870742111
#>     Attrib V6    0.1460846881504687
#>     Attrib V60    -0.3791599207128027
#>     Attrib V7    0.2197134885990467
#>     Attrib V8    0.3167930998871109
#>     Attrib V9    -0.9020188340241581
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.24835422995276954
#>     Attrib V1    0.1320169512813051
#>     Attrib V10    -0.34490480901037746
#>     Attrib V11    -0.2763800364982706
#>     Attrib V12    0.05866992017714907
#>     Attrib V13    -0.03502798250118838
#>     Attrib V14    0.0260157180084257
#>     Attrib V15    0.03919933010759638
#>     Attrib V16    0.29678525996075344
#>     Attrib V17    0.06310642238252104
#>     Attrib V18    0.13837882445226335
#>     Attrib V19    0.08603509817243442
#>     Attrib V2    0.07839324184334447
#>     Attrib V20    0.34171431512869566
#>     Attrib V21    0.5150910878290805
#>     Attrib V22    0.14866101951895874
#>     Attrib V23    0.2574396520986816
#>     Attrib V24    0.11559800777367545
#>     Attrib V25    -0.34907525346439877
#>     Attrib V26    -0.5556223191337778
#>     Attrib V27    -0.6820583879257244
#>     Attrib V28    0.011447198231953557
#>     Attrib V29    -0.4491496064128074
#>     Attrib V3    0.018451306075645487
#>     Attrib V30    0.1348037551195015
#>     Attrib V31    -0.90077141602345
#>     Attrib V32    -0.18004755309142445
#>     Attrib V33    0.4238339077723814
#>     Attrib V34    -0.025095430366991345
#>     Attrib V35    -0.2360504302949334
#>     Attrib V36    -0.6953229040996938
#>     Attrib V37    -0.7339514533834728
#>     Attrib V38    0.2921161539144987
#>     Attrib V39    0.21367898035704133
#>     Attrib V4    0.4905373289818861
#>     Attrib V40    -0.3616262916521933
#>     Attrib V41    0.12208652299895431
#>     Attrib V42    0.48629630823296005
#>     Attrib V43    0.27527684484899634
#>     Attrib V44    0.11991554787806268
#>     Attrib V45    0.27399823926692785
#>     Attrib V46    0.1729194690062202
#>     Attrib V47    -0.2625049697141461
#>     Attrib V48    0.10990452570337056
#>     Attrib V49    0.36665709812296876
#>     Attrib V5    -0.14276780096135794
#>     Attrib V50    -0.5665053002917759
#>     Attrib V51    -0.09424468233739824
#>     Attrib V52    0.27973588098903623
#>     Attrib V53    0.13461031166654894
#>     Attrib V54    0.7158007430066354
#>     Attrib V55    -0.24280019907745604
#>     Attrib V56    0.20028344611733853
#>     Attrib V57    0.19548990289557375
#>     Attrib V58    0.23439048223089637
#>     Attrib V59    0.6097513071298235
#>     Attrib V6    -0.1436817826170801
#>     Attrib V60    0.3325454568354158
#>     Attrib V7    -0.07504284271152124
#>     Attrib V8    0.09968997418035767
#>     Attrib V9    0.46211750899996656
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.16117846147245532
#>     Attrib V1    -0.15425468292308983
#>     Attrib V10    -0.050089531294156234
#>     Attrib V11    0.20687146618207553
#>     Attrib V12    0.3602894754926192
#>     Attrib V13    0.09538359054802366
#>     Attrib V14    -0.19011766055962456
#>     Attrib V15    -0.274704114713637
#>     Attrib V16    0.13820589977478293
#>     Attrib V17    0.08459629446618343
#>     Attrib V18    0.1701329931137769
#>     Attrib V19    0.21314628135852742
#>     Attrib V2    -0.07489625403761586
#>     Attrib V20    0.26088754782333085
#>     Attrib V21    0.373122426965066
#>     Attrib V22    0.21454947890499554
#>     Attrib V23    0.6024637378814189
#>     Attrib V24    0.37371426253625967
#>     Attrib V25    0.012312193021104553
#>     Attrib V26    0.02002020228386558
#>     Attrib V27    -0.23009151570361075
#>     Attrib V28    0.45019147232290035
#>     Attrib V29    -0.16821130997677525
#>     Attrib V3    -0.19094036796640784
#>     Attrib V30    0.32229477167737614
#>     Attrib V31    -0.8907405998860861
#>     Attrib V32    -0.07340432393791728
#>     Attrib V33    0.5091368634280531
#>     Attrib V34    0.15113396573254834
#>     Attrib V35    0.18347321664654048
#>     Attrib V36    -0.25204327819825556
#>     Attrib V37    -0.32045905148222176
#>     Attrib V38    0.4702935648271772
#>     Attrib V39    0.3136030081343705
#>     Attrib V4    0.2938435700498717
#>     Attrib V40    -0.4105970341696701
#>     Attrib V41    0.01793667638965459
#>     Attrib V42    0.17293039443010086
#>     Attrib V43    0.290258527904463
#>     Attrib V44    0.27231856508395313
#>     Attrib V45    0.4692201210313909
#>     Attrib V46    0.4256473253819867
#>     Attrib V47    -0.05467171806844341
#>     Attrib V48    0.2505199301553015
#>     Attrib V49    0.5170430679242617
#>     Attrib V5    -0.21183075310598345
#>     Attrib V50    -0.7417942168854306
#>     Attrib V51    0.007355666211951169
#>     Attrib V52    0.6260430171840462
#>     Attrib V53    -0.05222224490454151
#>     Attrib V54    0.5222729324265504
#>     Attrib V55    -0.2834944367536528
#>     Attrib V56    -0.07335080216682184
#>     Attrib V57    -0.13315080449883537
#>     Attrib V58    0.13557597251269118
#>     Attrib V59    0.2669767936199897
#>     Attrib V6    -0.24960140783057802
#>     Attrib V60    0.1932114667924367
#>     Attrib V7    -0.2239057005965332
#>     Attrib V8    -0.25306541886762896
#>     Attrib V9    0.6459401799307087
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.2753349628725156
#>     Attrib V1    0.20631253854863849
#>     Attrib V10    0.4439486017790135
#>     Attrib V11    0.7446163177141227
#>     Attrib V12    1.0809583845981217
#>     Attrib V13    0.27348813207462014
#>     Attrib V14    0.18478695556694177
#>     Attrib V15    -0.1974576746044215
#>     Attrib V16    -0.14372440416559182
#>     Attrib V17    -0.6838521684477293
#>     Attrib V18    -0.5809037013806678
#>     Attrib V19    -0.7289490808883234
#>     Attrib V2    0.20109705900360256
#>     Attrib V20    -0.35565056942387735
#>     Attrib V21    0.29555046610361285
#>     Attrib V22    -0.296689716127015
#>     Attrib V23    -0.21825709983535038
#>     Attrib V24    -0.2252344609884706
#>     Attrib V25    -0.1515571291240281
#>     Attrib V26    0.5804935669842888
#>     Attrib V27    0.8431626787229942
#>     Attrib V28    1.363491145185913
#>     Attrib V29    0.7703743133799427
#>     Attrib V3    0.0671672964235442
#>     Attrib V30    0.5858956128153487
#>     Attrib V31    -0.7587512561884824
#>     Attrib V32    0.038884314798807655
#>     Attrib V33    0.30407876799167605
#>     Attrib V34    0.04869493950658083
#>     Attrib V35    0.25115877851057944
#>     Attrib V36    0.008670075174945788
#>     Attrib V37    0.30217395315284157
#>     Attrib V38    0.3125559756834284
#>     Attrib V39    0.46988683114723906
#>     Attrib V4    0.6560950746786157
#>     Attrib V40    -0.315964415402945
#>     Attrib V41    0.04320210032235696
#>     Attrib V42    -0.5168530568166919
#>     Attrib V43    -0.07187175711674287
#>     Attrib V44    -0.1644317115148495
#>     Attrib V45    0.20098325200117498
#>     Attrib V46    0.4341085581378744
#>     Attrib V47    0.05139531657665184
#>     Attrib V48    0.5517374810800734
#>     Attrib V49    0.48980761527991895
#>     Attrib V5    0.0659553765405615
#>     Attrib V50    -0.8583994592719708
#>     Attrib V51    0.3144562604046054
#>     Attrib V52    0.7952944846217928
#>     Attrib V53    -0.06757019062742108
#>     Attrib V54    0.16622156251513806
#>     Attrib V55    -0.270284782076267
#>     Attrib V56    -0.3758408031577427
#>     Attrib V57    -0.03864748783464469
#>     Attrib V58    0.26233124050166
#>     Attrib V59    0.4085938304621302
#>     Attrib V6    0.1494120676203794
#>     Attrib V60    0.507437710040314
#>     Attrib V7    -0.30843899019505444
#>     Attrib V8    -0.3702213163777143
#>     Attrib V9    0.6403791790536755
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.2528244466003629
#>     Attrib V1    0.2789598984618747
#>     Attrib V10    0.8064510353846551
#>     Attrib V11    1.351331070763332
#>     Attrib V12    1.7371671421272568
#>     Attrib V13    0.5879548722664751
#>     Attrib V14    0.32204742977406986
#>     Attrib V15    -0.3052950671230534
#>     Attrib V16    -0.3190388240327246
#>     Attrib V17    -0.9182582224908961
#>     Attrib V18    -0.5298824190860262
#>     Attrib V19    -0.8727917455937897
#>     Attrib V2    0.4005733462310844
#>     Attrib V20    -0.18381024065734747
#>     Attrib V21    0.9230860497249117
#>     Attrib V22    0.07877419152411953
#>     Attrib V23    -0.024647701887939442
#>     Attrib V24    -0.23464832147807035
#>     Attrib V25    0.08012202260415009
#>     Attrib V26    1.1500865560031155
#>     Attrib V27    1.1811915018673593
#>     Attrib V28    1.794789014080674
#>     Attrib V29    1.3021385018184215
#>     Attrib V3    0.04430232073013309
#>     Attrib V30    1.0153469586850106
#>     Attrib V31    -0.9455480697893581
#>     Attrib V32    -0.08082823831740196
#>     Attrib V33    0.2257980628486229
#>     Attrib V34    -0.16958772363650762
#>     Attrib V35    0.09890273286324056
#>     Attrib V36    -0.2693544250634324
#>     Attrib V37    0.37630349983004185
#>     Attrib V38    0.16163340861198536
#>     Attrib V39    0.8402303885061988
#>     Attrib V4    0.8441920342889151
#>     Attrib V40    -0.19077922117276136
#>     Attrib V41    0.1837568490294723
#>     Attrib V42    -0.54205129548347
#>     Attrib V43    0.08661269242330638
#>     Attrib V44    -0.16947588165378516
#>     Attrib V45    0.2989097416234388
#>     Attrib V46    0.534800924966674
#>     Attrib V47    0.12387305807769487
#>     Attrib V48    0.7735054513660795
#>     Attrib V49    0.813722514058989
#>     Attrib V5    -0.0013931520073218711
#>     Attrib V50    -1.0205851515108144
#>     Attrib V51    0.5182042016559232
#>     Attrib V52    1.1859039426680416
#>     Attrib V53    0.032965145350295835
#>     Attrib V54    -0.014713075423777007
#>     Attrib V55    -0.43097038180399455
#>     Attrib V56    -0.44597709110994804
#>     Attrib V57    -0.4996118745924142
#>     Attrib V58    0.4076093084111322
#>     Attrib V59    0.12445509363880441
#>     Attrib V6    0.3960682596143776
#>     Attrib V60    0.14969917463309107
#>     Attrib V7    -0.29733445352009896
#>     Attrib V8    -0.20249713536392985
#>     Attrib V9    0.974837951654341
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.13244786216910046
#>     Attrib V1    0.5901054343455778
#>     Attrib V10    0.11780276914801845
#>     Attrib V11    -0.0631487661409301
#>     Attrib V12    -0.687950773625637
#>     Attrib V13    -0.21257653057650117
#>     Attrib V14    0.25479903166122986
#>     Attrib V15    0.3128303965521762
#>     Attrib V16    0.031026328593604716
#>     Attrib V17    -0.04857695553571591
#>     Attrib V18    -0.13474587842476018
#>     Attrib V19    -0.18147439151660313
#>     Attrib V2    0.20795046088118496
#>     Attrib V20    0.11068418200931225
#>     Attrib V21    -0.07908537183709859
#>     Attrib V22    -0.15867503966414276
#>     Attrib V23    -0.6574140960310983
#>     Attrib V24    -0.4544774313653269
#>     Attrib V25    0.22276706710011504
#>     Attrib V26    0.21759798554926954
#>     Attrib V27    0.31148119199974855
#>     Attrib V28    -0.6494315262133628
#>     Attrib V29    0.3903456747136444
#>     Attrib V3    0.08612377550280292
#>     Attrib V30    -0.2223644445460402
#>     Attrib V31    1.102805503791133
#>     Attrib V32    -0.10024978590945455
#>     Attrib V33    -0.7401714664366232
#>     Attrib V34    -0.15488735522219474
#>     Attrib V35    0.23189529406908738
#>     Attrib V36    1.0879881050608637
#>     Attrib V37    1.246747363712405
#>     Attrib V38    -0.057766258451049525
#>     Attrib V39    -0.34967488881650755
#>     Attrib V4    -0.5273886956871963
#>     Attrib V40    0.5309254763410968
#>     Attrib V41    -0.15764048779208775
#>     Attrib V42    -0.49902578289099553
#>     Attrib V43    -0.42673095204622846
#>     Attrib V44    -0.1606753588152843
#>     Attrib V45    -0.1756654012633323
#>     Attrib V46    -0.43797693040572344
#>     Attrib V47    0.04754724288912968
#>     Attrib V48    -0.48053501770527707
#>     Attrib V49    -0.7750416638901806
#>     Attrib V5    0.09370257231400242
#>     Attrib V50    1.2752987181130206
#>     Attrib V51    -0.2923394567253425
#>     Attrib V52    -1.0244949222699669
#>     Attrib V53    -0.026294385893195337
#>     Attrib V54    -0.3502291795745308
#>     Attrib V55    0.5388511354734239
#>     Attrib V56    0.0038290413603179678
#>     Attrib V57    0.11339254621536884
#>     Attrib V58    -0.23800035314515328
#>     Attrib V59    -0.36035252652771405
#>     Attrib V6    0.003544606785635341
#>     Attrib V60    -0.3509315839345573
#>     Attrib V7    0.20740155577583244
#>     Attrib V8    0.5034505800635835
#>     Attrib V9    -0.6830738316112022
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.029275173616666365
#>     Attrib V1    -0.3378803010370203
#>     Attrib V10    0.6300709191172795
#>     Attrib V11    0.7444949809539115
#>     Attrib V12    0.8610981146595921
#>     Attrib V13    0.08056121720525104
#>     Attrib V14    -0.3555254072358878
#>     Attrib V15    -0.4601372760714915
#>     Attrib V16    -0.06790335228057451
#>     Attrib V17    -0.21970114874676108
#>     Attrib V18    -0.11723841079066775
#>     Attrib V19    -0.12830291141261563
#>     Attrib V2    -0.3605701051804656
#>     Attrib V20    -0.08323511402799949
#>     Attrib V21    0.15691128927816791
#>     Attrib V22    -0.01703195242204522
#>     Attrib V23    0.43689182541790006
#>     Attrib V24    0.31305513271137375
#>     Attrib V25    0.2608999078463798
#>     Attrib V26    0.49757025877786826
#>     Attrib V27    0.3696952395284299
#>     Attrib V28    0.9074665525869969
#>     Attrib V29    -0.06180670478548267
#>     Attrib V3    -0.5030578534355742
#>     Attrib V30    0.5730884532913461
#>     Attrib V31    -0.6298808385026545
#>     Attrib V32    0.2504371929193638
#>     Attrib V33    0.5796557157143853
#>     Attrib V34    0.22138223142806396
#>     Attrib V35    0.2900734082733199
#>     Attrib V36    -0.3591873101435858
#>     Attrib V37    -0.5408684260656895
#>     Attrib V38    0.08875148333418806
#>     Attrib V39    0.23250140252838877
#>     Attrib V4    0.261144023469699
#>     Attrib V40    -0.5167664169361889
#>     Attrib V41    -0.1793372217993278
#>     Attrib V42    -0.31107224929985855
#>     Attrib V43    0.06634512168029696
#>     Attrib V44    0.0660576906085143
#>     Attrib V45    0.40422082745914284
#>     Attrib V46    0.47755451593097725
#>     Attrib V47    0.2967223521881474
#>     Attrib V48    0.7923455448092206
#>     Attrib V49    0.7757330870620222
#>     Attrib V5    -0.1793745023988992
#>     Attrib V50    -0.7770830163668346
#>     Attrib V51    0.5570137669574892
#>     Attrib V52    0.8836771667986791
#>     Attrib V53    -0.18585788592554686
#>     Attrib V54    0.19779278466777192
#>     Attrib V55    -0.2519962838893862
#>     Attrib V56    -0.25989900354574275
#>     Attrib V57    -0.27852608802804246
#>     Attrib V58    0.27304939759527896
#>     Attrib V59    -0.004947011595609468
#>     Attrib V6    -0.23048419166368628
#>     Attrib V60    0.16006297818889922
#>     Attrib V7    -0.2823448895499212
#>     Attrib V8    -0.1017273155127553
#>     Attrib V9    1.040013565775475
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.1071846516250296
#>     Attrib V1    -0.5256648445670061
#>     Attrib V10    0.2039837880177735
#>     Attrib V11    0.42866175157148717
#>     Attrib V12    0.6783560128228733
#>     Attrib V13    0.13740135284196775
#>     Attrib V14    -0.2666277695223324
#>     Attrib V15    -0.42616950701230005
#>     Attrib V16    0.040493111954403915
#>     Attrib V17    -0.05661538408182927
#>     Attrib V18    0.019695357047183587
#>     Attrib V19    0.13077368504540815
#>     Attrib V2    -0.25766154036688993
#>     Attrib V20    -0.09970332159314267
#>     Attrib V21    0.09978025716385738
#>     Attrib V22    0.046662322087481015
#>     Attrib V23    0.6388723437894773
#>     Attrib V24    0.4008837562250105
#>     Attrib V25    0.0036552528424104295
#>     Attrib V26    0.20672936269691083
#>     Attrib V27    0.13591835912784542
#>     Attrib V28    0.9434816815548437
#>     Attrib V29    -0.041467711551895235
#>     Attrib V3    -0.35914418106272866
#>     Attrib V30    0.541923668829227
#>     Attrib V31    -0.8953688438355676
#>     Attrib V32    0.18689585681429
#>     Attrib V33    0.7392290253113456
#>     Attrib V34    0.18100882779618607
#>     Attrib V35    0.1105856902256913
#>     Attrib V36    -0.6486948786627749
#>     Attrib V37    -0.8219624856182857
#>     Attrib V38    0.15164290187451915
#>     Attrib V39    0.27309806163321887
#>     Attrib V4    0.4493005335783863
#>     Attrib V40    -0.5429324571422163
#>     Attrib V41    0.007723343102726243
#>     Attrib V42    0.0745424534813086
#>     Attrib V43    0.3185029067091536
#>     Attrib V44    0.2036428733606285
#>     Attrib V45    0.48164822515083217
#>     Attrib V46    0.5899392205379952
#>     Attrib V47    0.10243735997130822
#>     Attrib V48    0.6794753443044486
#>     Attrib V49    0.8050987327218234
#>     Attrib V5    -0.14428169686003664
#>     Attrib V50    -1.1462966361478215
#>     Attrib V51    0.33658494489287455
#>     Attrib V52    1.1047827263655672
#>     Attrib V53    -0.0039024651935458793
#>     Attrib V54    0.15638870659871965
#>     Attrib V55    -0.47924024355374767
#>     Attrib V56    -0.19894694297518423
#>     Attrib V57    -0.2216569621253617
#>     Attrib V58    0.2528690897275602
#>     Attrib V59    0.12224455732068595
#>     Attrib V6    -0.17357343278614323
#>     Attrib V60    0.14974068809457247
#>     Attrib V7    -0.21103432506769323
#>     Attrib V8    -0.27320949623754065
#>     Attrib V9    0.9069680705142168
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.21581611855906158
#>     Attrib V1    0.128351110718818
#>     Attrib V10    -0.027280748058186696
#>     Attrib V11    0.02508608352686598
#>     Attrib V12    0.03534511739245634
#>     Attrib V13    0.0742519280968437
#>     Attrib V14    0.058106166068162955
#>     Attrib V15    0.015137321775149083
#>     Attrib V16    0.01708097263342959
#>     Attrib V17    0.026283389477438295
#>     Attrib V18    0.01025091564945702
#>     Attrib V19    0.011937084695844456
#>     Attrib V2    0.09135694126899746
#>     Attrib V20    0.0758720557074947
#>     Attrib V21    0.06351125646404653
#>     Attrib V22    -0.05322890619679284
#>     Attrib V23    0.047800503227272785
#>     Attrib V24    0.02352430961270916
#>     Attrib V25    0.020813355913184613
#>     Attrib V26    -0.07611213787319375
#>     Attrib V27    -0.05835521284675336
#>     Attrib V28    -0.03015668023560277
#>     Attrib V29    -0.07141187933256155
#>     Attrib V3    0.12722533450635717
#>     Attrib V30    0.034684239065035385
#>     Attrib V31    -0.17949834827761038
#>     Attrib V32    0.015411382413617083
#>     Attrib V33    0.10958017185123364
#>     Attrib V34    0.09529163639675087
#>     Attrib V35    0.059696806323423876
#>     Attrib V36    -0.0017797502175833596
#>     Attrib V37    0.018205406119233304
#>     Attrib V38    0.13501555620264738
#>     Attrib V39    0.158559707893429
#>     Attrib V4    0.15617222844610476
#>     Attrib V40    -0.018670189379182706
#>     Attrib V41    0.020941522261873794
#>     Attrib V42    0.043061723838943654
#>     Attrib V43    0.04811208911495905
#>     Attrib V44    0.11394950668305313
#>     Attrib V45    0.09721748130812125
#>     Attrib V46    0.08177712237980654
#>     Attrib V47    0.025285541424143257
#>     Attrib V48    0.058644007940707454
#>     Attrib V49    0.1453544703128704
#>     Attrib V5    0.055654014333862876
#>     Attrib V50    -0.0520924350039916
#>     Attrib V51    -0.011389943563324803
#>     Attrib V52    0.07811298218229903
#>     Attrib V53    0.07877026667486509
#>     Attrib V54    0.1839439821352304
#>     Attrib V55    0.0682328831288141
#>     Attrib V56    0.11038024748562773
#>     Attrib V57    0.14326582745353172
#>     Attrib V58    0.1297336405862294
#>     Attrib V59    0.21261174626787546
#>     Attrib V6    -0.02910429081122369
#>     Attrib V60    0.2087618689363153
#>     Attrib V7    0.01305208488893129
#>     Attrib V8    4.298433009717557E-4
#>     Attrib V9    0.12321858219402583
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.42285191433474884
#>     Attrib V1    0.18435430449564869
#>     Attrib V10    0.16015448676069624
#>     Attrib V11    0.3865004740006743
#>     Attrib V12    0.6477497124097549
#>     Attrib V13    0.017854517728940054
#>     Attrib V14    0.09841394431896765
#>     Attrib V15    -0.01710290623706221
#>     Attrib V16    -0.050215716818858426
#>     Attrib V17    -0.4348650068127485
#>     Attrib V18    -0.3984093279954674
#>     Attrib V19    -0.5692416414943287
#>     Attrib V2    0.1309528800866432
#>     Attrib V20    -0.3292298538429621
#>     Attrib V21    0.011464439808936442
#>     Attrib V22    -0.5001797742909823
#>     Attrib V23    -0.3539021921411596
#>     Attrib V24    -0.3388942974177027
#>     Attrib V25    -0.3478501536478297
#>     Attrib V26    -0.012628865562004645
#>     Attrib V27    0.08880406779809392
#>     Attrib V28    0.5205799708040224
#>     Attrib V29    0.046739738056056024
#>     Attrib V3    -0.10300973886029659
#>     Attrib V30    0.4241843974917331
#>     Attrib V31    -0.29056489187716816
#>     Attrib V32    0.1873270891530641
#>     Attrib V33    0.4113953939379453
#>     Attrib V34    0.09103588150171472
#>     Attrib V35    -0.08687869318521325
#>     Attrib V36    -0.5510594957048297
#>     Attrib V37    -0.4097288737844159
#>     Attrib V38    -0.007435788805975326
#>     Attrib V39    0.22613264963170784
#>     Attrib V4    0.47757327374585196
#>     Attrib V40    -0.2717954580955625
#>     Attrib V41    -0.1047165110906349
#>     Attrib V42    -0.24490131008767727
#>     Attrib V43    -0.11054854353347017
#>     Attrib V44    -0.15977406858187326
#>     Attrib V45    -0.004847051021810086
#>     Attrib V46    0.05664839224487975
#>     Attrib V47    -0.16523066418486168
#>     Attrib V48    0.5077336484020387
#>     Attrib V49    0.4207353592808345
#>     Attrib V5    -0.09958839742620845
#>     Attrib V50    -0.678880699674574
#>     Attrib V51    0.2004961954175927
#>     Attrib V52    0.5020765658223881
#>     Attrib V53    -0.0901567680385214
#>     Attrib V54    0.4125058707324123
#>     Attrib V55    -0.06342163320071394
#>     Attrib V56    -0.13286721453012235
#>     Attrib V57    0.12917709245820247
#>     Attrib V58    0.2827083978823981
#>     Attrib V59    0.38566285955195967
#>     Attrib V6    -0.11473782581890868
#>     Attrib V60    0.26953892019345227
#>     Attrib V7    -0.22546264776661074
#>     Attrib V8    -0.04603199196437041
#>     Attrib V9    0.5178689582441017
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.2281783535478002
#>     Attrib V1    0.35045865158674183
#>     Attrib V10    0.05142161244129588
#>     Attrib V11    -0.16166267114453975
#>     Attrib V12    -0.5393237238870393
#>     Attrib V13    -0.16049726955947027
#>     Attrib V14    0.24473227382108315
#>     Attrib V15    0.4200592790678564
#>     Attrib V16    0.08887978739938499
#>     Attrib V17    0.1358392299220662
#>     Attrib V18    -0.028044265830820123
#>     Attrib V19    0.06464143932739369
#>     Attrib V2    0.1264126059193387
#>     Attrib V20    0.08310077112397884
#>     Attrib V21    -0.17944234903501988
#>     Attrib V22    -0.002664663919461749
#>     Attrib V23    -0.47056416621780134
#>     Attrib V24    -0.2802515087056568
#>     Attrib V25    0.22182600699021676
#>     Attrib V26    0.175483205138477
#>     Attrib V27    0.1528791334517594
#>     Attrib V28    -0.6277257195192664
#>     Attrib V29    0.2705328106602994
#>     Attrib V3    0.15974453580185924
#>     Attrib V30    -0.2917110390457736
#>     Attrib V31    0.9934453073558375
#>     Attrib V32    0.018296077717557476
#>     Attrib V33    -0.6072658262092308
#>     Attrib V34    -0.11343861266180433
#>     Attrib V35    0.03365764778648521
#>     Attrib V36    0.7131317234114728
#>     Attrib V37    0.7574586031092752
#>     Attrib V38    -0.2800033744153947
#>     Attrib V39    -0.36474441610739755
#>     Attrib V4    -0.3441891475347673
#>     Attrib V40    0.41592170040065446
#>     Attrib V41    -0.16800069994778855
#>     Attrib V42    -0.31839571046294934
#>     Attrib V43    -0.3334652032756369
#>     Attrib V44    -0.18713383912033504
#>     Attrib V45    -0.28892175642439755
#>     Attrib V46    -0.4128694664987954
#>     Attrib V47    0.1091400400620715
#>     Attrib V48    -0.31817582432635655
#>     Attrib V49    -0.5958049295479433
#>     Attrib V5    0.1766704600903569
#>     Attrib V50    1.1408310993178197
#>     Attrib V51    -0.1218940384062432
#>     Attrib V52    -0.8282642569134109
#>     Attrib V53    0.07325647371041893
#>     Attrib V54    -0.34870764316881775
#>     Attrib V55    0.4808323642904951
#>     Attrib V56    0.22352355979075436
#>     Attrib V57    0.21224989237382616
#>     Attrib V58    -0.14074078485580155
#>     Attrib V59    -0.19062914386614324
#>     Attrib V6    0.0037708402284975227
#>     Attrib V60    -0.17235245041017144
#>     Attrib V7    0.14866335316388607
#>     Attrib V8    0.33716999837565415
#>     Attrib V9    -0.628899907237044
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    0.006631476766589743
#>     Attrib V1    0.20402861130467617
#>     Attrib V10    -0.22650188961352566
#>     Attrib V11    -0.15167274157966504
#>     Attrib V12    0.03126535610471823
#>     Attrib V13    0.020496499528064583
#>     Attrib V14    0.04468630220556449
#>     Attrib V15    0.053915947352218656
#>     Attrib V16    0.19888790746323623
#>     Attrib V17    0.07502710133543516
#>     Attrib V18    0.0951783114171924
#>     Attrib V19    0.06923746836015333
#>     Attrib V2    0.11760488671164394
#>     Attrib V20    0.1813696702718515
#>     Attrib V21    0.2354528994764163
#>     Attrib V22    0.0011810014884061806
#>     Attrib V23    0.03415312534509623
#>     Attrib V24    0.05812379853879191
#>     Attrib V25    -0.1869819300556093
#>     Attrib V26    -0.3679464993360365
#>     Attrib V27    -0.4550396323370152
#>     Attrib V28    -0.07371775363841702
#>     Attrib V29    -0.3238080687862294
#>     Attrib V3    0.10004073646232385
#>     Attrib V30    -0.030949835505979004
#>     Attrib V31    -0.539279701388853
#>     Attrib V32    -0.12463056718103413
#>     Attrib V33    0.18939940768136027
#>     Attrib V34    0.041904993021338495
#>     Attrib V35    -0.09715951906384143
#>     Attrib V36    -0.3022297208936932
#>     Attrib V37    -0.2556762300490345
#>     Attrib V38    0.2917747959707529
#>     Attrib V39    0.19039894985706052
#>     Attrib V4    0.2929465496358237
#>     Attrib V40    -0.21834888431259894
#>     Attrib V41    0.01448188837949135
#>     Attrib V42    0.20242701602576788
#>     Attrib V43    0.13783227604040277
#>     Attrib V44    0.052613565440920336
#>     Attrib V45    0.1721223975929215
#>     Attrib V46    0.06374629704419181
#>     Attrib V47    -0.19617927903150773
#>     Attrib V48    0.016852003120581233
#>     Attrib V49    0.1277967426446777
#>     Attrib V5    -0.05872673149870459
#>     Attrib V50    -0.2710755642864263
#>     Attrib V51    -0.04977479488114305
#>     Attrib V52    0.1920359067901946
#>     Attrib V53    0.17011342842551103
#>     Attrib V54    0.5420933559659622
#>     Attrib V55    0.03144697827469528
#>     Attrib V56    0.162789584348149
#>     Attrib V57    0.22311597112739032
#>     Attrib V58    0.216967566892678
#>     Attrib V59    0.3805199606539885
#>     Attrib V6    -0.13120191923907099
#>     Attrib V60    0.2813834479390937
#>     Attrib V7    -0.1140097694759529
#>     Attrib V8    -0.04231268730721102
#>     Attrib V9    0.2172591980847131
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.09144712125772621
#>     Attrib V1    0.20065403773616264
#>     Attrib V10    0.033750746930218435
#>     Attrib V11    0.0733004436892097
#>     Attrib V12    0.05956792640066428
#>     Attrib V13    -0.01689229721713773
#>     Attrib V14    0.04654378632372187
#>     Attrib V15    0.1029399704149276
#>     Attrib V16    0.07683904161760666
#>     Attrib V17    -0.010107007904718938
#>     Attrib V18    -0.0180380767750952
#>     Attrib V19    0.01661494523554141
#>     Attrib V2    0.18059939197694178
#>     Attrib V20    0.055302234267471564
#>     Attrib V21    0.07922379308083738
#>     Attrib V22    0.006051062157245293
#>     Attrib V23    -0.026450956708552267
#>     Attrib V24    5.925706398709418E-4
#>     Attrib V25    -0.10080081453875207
#>     Attrib V26    -0.11852309130260234
#>     Attrib V27    -0.14664839847930156
#>     Attrib V28    0.004739377366258093
#>     Attrib V29    -0.16023179024972622
#>     Attrib V3    0.06001640167514694
#>     Attrib V30    0.06572531495396251
#>     Attrib V31    -0.19500743717831828
#>     Attrib V32    -0.054799501316201746
#>     Attrib V33    0.1728130008635024
#>     Attrib V34    0.004996369263560875
#>     Attrib V35    0.0684130585788435
#>     Attrib V36    -0.09178034398782252
#>     Attrib V37    -0.09128702032328886
#>     Attrib V38    0.21793910466268512
#>     Attrib V39    0.15466614184596836
#>     Attrib V4    0.20680289664845208
#>     Attrib V40    -0.14181360085868497
#>     Attrib V41    0.003981052657046706
#>     Attrib V42    0.010901246840965289
#>     Attrib V43    0.1347390492055602
#>     Attrib V44    0.14296305256042033
#>     Attrib V45    0.1975234501788986
#>     Attrib V46    0.0363480261599935
#>     Attrib V47    -0.09017215509009797
#>     Attrib V48    0.13950428387492697
#>     Attrib V49    0.12918018444776608
#>     Attrib V5    0.0076973556490899505
#>     Attrib V50    -0.09250167727367513
#>     Attrib V51    0.0038932688671075174
#>     Attrib V52    0.11753660675686912
#>     Attrib V53    0.05867794826435718
#>     Attrib V54    0.29267322754384517
#>     Attrib V55    0.11295193186076478
#>     Attrib V56    0.12907279621767387
#>     Attrib V57    0.20599056911112937
#>     Attrib V58    0.13055040090477052
#>     Attrib V59    0.20350701911231253
#>     Attrib V6    -0.09729975548256344
#>     Attrib V60    0.21373457085149367
#>     Attrib V7    -0.11076208247719628
#>     Attrib V8    0.07388988402531037
#>     Attrib V9    0.20211572864722357
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    0.05461810295352944
#>     Attrib V1    0.7885879070284919
#>     Attrib V10    0.10052957271563678
#>     Attrib V11    -0.13664998309905893
#>     Attrib V12    -0.7206651438551732
#>     Attrib V13    -0.24011452205892464
#>     Attrib V14    0.40804322375163743
#>     Attrib V15    0.5014651462672413
#>     Attrib V16    -0.07126266692541201
#>     Attrib V17    -0.3722859816929155
#>     Attrib V18    -0.4240328555759147
#>     Attrib V19    -0.680840681803776
#>     Attrib V2    0.4009133393751514
#>     Attrib V20    -0.16843985793391703
#>     Attrib V21    -0.31696262124035807
#>     Attrib V22    -0.5719256209341081
#>     Attrib V23    -1.272727429269334
#>     Attrib V24    -0.8345156106962354
#>     Attrib V25    0.14248251696002542
#>     Attrib V26    0.18931543205337617
#>     Attrib V27    0.47919163119425673
#>     Attrib V28    -0.7672122099202121
#>     Attrib V29    0.6716684156234644
#>     Attrib V3    0.32780496238048223
#>     Attrib V30    -0.36026318166419763
#>     Attrib V31    1.7750996863455233
#>     Attrib V32    0.17678123891109665
#>     Attrib V33    -0.9782684560891047
#>     Attrib V34    -0.23643818937079292
#>     Attrib V35    -0.10187914927069591
#>     Attrib V36    0.8829749163680568
#>     Attrib V37    1.226260991713018
#>     Attrib V38    -0.6692230759715878
#>     Attrib V39    -0.44962120314885196
#>     Attrib V4    -0.8021489844860171
#>     Attrib V40    0.8954484547541794
#>     Attrib V41    -0.05146204502849854
#>     Attrib V42    -0.6684720683314496
#>     Attrib V43    -0.8265073241789073
#>     Attrib V44    -0.7292116399387029
#>     Attrib V45    -0.8612175630481147
#>     Attrib V46    -0.7691067559936946
#>     Attrib V47    0.07384278719715337
#>     Attrib V48    -0.5222417154544375
#>     Attrib V49    -1.1164057017300213
#>     Attrib V5    0.17401347212412885
#>     Attrib V50    1.3465420539575452
#>     Attrib V51    -0.17228744183742306
#>     Attrib V52    -1.1415848330719853
#>     Attrib V53    0.088826597771704
#>     Attrib V54    -0.6649290835289808
#>     Attrib V55    0.6751909112860369
#>     Attrib V56    -0.00959918724640189
#>     Attrib V57    0.13058850090565344
#>     Attrib V58    -0.2532399980550444
#>     Attrib V59    -0.4701311512726606
#>     Attrib V6    0.14478106848735486
#>     Attrib V60    -0.4680384919618308
#>     Attrib V7    0.26271785566357664
#>     Attrib V8    0.5818021113055722
#>     Attrib V9    -0.9206392828962863
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.19386222593464256
#>     Attrib V1    -0.3172779146930782
#>     Attrib V10    -0.0560795551433166
#>     Attrib V11    0.10397100578110148
#>     Attrib V12    0.495694117789072
#>     Attrib V13    0.12991269730212693
#>     Attrib V14    -0.22512232543929186
#>     Attrib V15    -0.24853523722689516
#>     Attrib V16    0.1371629673828283
#>     Attrib V17    0.13517804708807493
#>     Attrib V18    0.1643228196711615
#>     Attrib V19    0.2652437738448591
#>     Attrib V2    -0.13364564513038238
#>     Attrib V20    0.19974175181216886
#>     Attrib V21    0.3251288075332282
#>     Attrib V22    0.24712380886636473
#>     Attrib V23    0.6191193065753362
#>     Attrib V24    0.440844083030197
#>     Attrib V25    -0.007668507439027543
#>     Attrib V26    -0.06871982666917831
#>     Attrib V27    -0.33193764659425334
#>     Attrib V28    0.5228115318676074
#>     Attrib V29    -0.3999426203920516
#>     Attrib V3    -0.3200076589871652
#>     Attrib V30    0.3673886508174646
#>     Attrib V31    -1.1087487372582614
#>     Attrib V32    -0.07136582173694596
#>     Attrib V33    0.7254233573735452
#>     Attrib V34    0.23753992338854238
#>     Attrib V35    0.24267998597563425
#>     Attrib V36    -0.3835943964019927
#>     Attrib V37    -0.6601930134334311
#>     Attrib V38    0.4686377290256985
#>     Attrib V39    0.36640706682306917
#>     Attrib V4    0.4131145868883975
#>     Attrib V40    -0.5176559882335081
#>     Attrib V41    -0.039764642890999645
#>     Attrib V42    0.2749328126843623
#>     Attrib V43    0.3417433751907099
#>     Attrib V44    0.27022369673040814
#>     Attrib V45    0.5946659149347904
#>     Attrib V46    0.4713684228598765
#>     Attrib V47    -0.15177720088970773
#>     Attrib V48    0.3447865448981798
#>     Attrib V49    0.729875090979505
#>     Attrib V5    -0.2572675642329895
#>     Attrib V50    -1.0266152799281207
#>     Attrib V51    0.057012829477191586
#>     Attrib V52    0.7342926957646068
#>     Attrib V53    -0.044645223113373295
#>     Attrib V54    0.6102584915851152
#>     Attrib V55    -0.3443126301939385
#>     Attrib V56    -0.09743011050230618
#>     Attrib V57    -0.18018900003379798
#>     Attrib V58    0.19792557644353045
#>     Attrib V59    0.35339761324660984
#>     Attrib V6    -0.272002667674151
#>     Attrib V60    0.2468896646519349
#>     Attrib V7    -0.19721221175782194
#>     Attrib V8    -0.2698594235121897
#>     Attrib V9    0.7132526089840012
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.005441527313676439
#>     Attrib V1    -0.11609289886698371
#>     Attrib V10    -0.033779763114382744
#>     Attrib V11    0.06372734220827839
#>     Attrib V12    0.3088534115770294
#>     Attrib V13    0.08232927452124003
#>     Attrib V14    -0.2088383564615714
#>     Attrib V15    -0.22975561398266478
#>     Attrib V16    0.1375805587189101
#>     Attrib V17    0.21978826504259777
#>     Attrib V18    0.2732810981215691
#>     Attrib V19    0.3363178410824629
#>     Attrib V2    -0.1286674468450813
#>     Attrib V20    0.3471166826206324
#>     Attrib V21    0.4446861115160187
#>     Attrib V22    0.4036710950231776
#>     Attrib V23    0.7032072767131599
#>     Attrib V24    0.43982895634043884
#>     Attrib V25    0.0555458176052126
#>     Attrib V26    -0.010953938440567749
#>     Attrib V27    -0.3177186086932297
#>     Attrib V28    0.2864575214693518
#>     Attrib V29    -0.3925180688584223
#>     Attrib V3    -0.27244139252874966
#>     Attrib V30    0.27623792773444306
#>     Attrib V31    -1.0494716279166412
#>     Attrib V32    -0.16450134545104195
#>     Attrib V33    0.5320519321830901
#>     Attrib V34    0.1423133781776733
#>     Attrib V35    0.22770020665806953
#>     Attrib V36    -0.10663185467600367
#>     Attrib V37    -0.32202630612310673
#>     Attrib V38    0.6177281981866289
#>     Attrib V39    0.3294226893574808
#>     Attrib V4    0.31049912182556777
#>     Attrib V40    -0.47628915831121665
#>     Attrib V41    -0.012687768860980322
#>     Attrib V42    0.22590582493513353
#>     Attrib V43    0.4472124669362875
#>     Attrib V44    0.44221673365242425
#>     Attrib V45    0.5831140513279377
#>     Attrib V46    0.4196167148818696
#>     Attrib V47    -0.1283042054402205
#>     Attrib V48    0.20499072642335003
#>     Attrib V49    0.5481698569236652
#>     Attrib V5    -0.1563191625970867
#>     Attrib V50    -0.705249626239384
#>     Attrib V51    0.036461141782543754
#>     Attrib V52    0.5209655680720344
#>     Attrib V53    -0.06225868664059077
#>     Attrib V54    0.653203243129358
#>     Attrib V55    -0.25214822606478143
#>     Attrib V56    0.009891033266666857
#>     Attrib V57    -0.1690137986561058
#>     Attrib V58    0.1469159267174631
#>     Attrib V59    0.3484401118208604
#>     Attrib V6    -0.28422432038406475
#>     Attrib V60    0.2912648805164936
#>     Attrib V7    -0.18192383828963743
#>     Attrib V8    -0.26726110262338243
#>     Attrib V9    0.5994611375782486
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.14121576361795027
#>     Attrib V1    0.5907701210461677
#>     Attrib V10    0.10811656790407256
#>     Attrib V11    -0.00862306430617104
#>     Attrib V12    -0.490708253962792
#>     Attrib V13    -0.13688373241738508
#>     Attrib V14    0.3425075621381824
#>     Attrib V15    0.3609525723533066
#>     Attrib V16    -0.1763853708609139
#>     Attrib V17    -0.3498857089064471
#>     Attrib V18    -0.4517238145991191
#>     Attrib V19    -0.5905457723505977
#>     Attrib V2    0.30871841278089374
#>     Attrib V20    -0.29499417231605574
#>     Attrib V21    -0.35023188826541596
#>     Attrib V22    -0.47661110353000136
#>     Attrib V23    -1.0862315581842714
#>     Attrib V24    -0.7169771478203314
#>     Attrib V25    0.2241820925634861
#>     Attrib V26    0.5197546585681252
#>     Attrib V27    0.8783450771981087
#>     Attrib V28    -0.11714397603952638
#>     Attrib V29    1.1345415311090425
#>     Attrib V3    0.1062175732673926
#>     Attrib V30    -0.040816915665101094
#>     Attrib V31    1.3930676859048126
#>     Attrib V32    0.04072059515908898
#>     Attrib V33    -0.9443568368851503
#>     Attrib V34    -0.1881195693661227
#>     Attrib V35    0.34744547631401135
#>     Attrib V36    1.364578087828147
#>     Attrib V37    1.8243496435534083
#>     Attrib V38    -0.18698305116183095
#>     Attrib V39    -0.26660148047627696
#>     Attrib V4    -0.6174069742548773
#>     Attrib V40    0.5994105618461831
#>     Attrib V41    -0.10751326536486555
#>     Attrib V42    -0.9401227440294662
#>     Attrib V43    -0.7506437062564646
#>     Attrib V44    -0.5090092915004084
#>     Attrib V45    -0.4683095719693632
#>     Attrib V46    -0.49991661744306953
#>     Attrib V47    0.04011976293326183
#>     Attrib V48    -0.4986234175894253
#>     Attrib V49    -1.0399683491473442
#>     Attrib V5    0.1912674605215862
#>     Attrib V50    1.0798188063539946
#>     Attrib V51    -0.11620085880228646
#>     Attrib V52    -0.8487048379140565
#>     Attrib V53    -0.09870226650790871
#>     Attrib V54    -0.6895471005674654
#>     Attrib V55    0.4486542147313659
#>     Attrib V56    -0.37587051781367753
#>     Attrib V57    -0.0044663658833191885
#>     Attrib V58    -0.36587546540834026
#>     Attrib V59    -0.4709723008503807
#>     Attrib V6    0.16518598685052496
#>     Attrib V60    -0.3037930218884181
#>     Attrib V7    0.1733750175134727
#>     Attrib V8    0.061259898860309796
#>     Attrib V9    -0.9123248928713537
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.2647529005416173
#>     Attrib V1    0.3688453378856271
#>     Attrib V10    -0.48038868099059406
#>     Attrib V11    -0.34186275551751427
#>     Attrib V12    -0.006859392151835962
#>     Attrib V13    -0.06545443040094674
#>     Attrib V14    0.18458577313419683
#>     Attrib V15    0.15972126662377767
#>     Attrib V16    0.3061686131393297
#>     Attrib V17    0.05484764417971044
#>     Attrib V18    0.04167096489553503
#>     Attrib V19    -0.03564658170791014
#>     Attrib V2    0.2875248646376192
#>     Attrib V20    0.310955563944481
#>     Attrib V21    0.4255209676940134
#>     Attrib V22    -0.014759381263499561
#>     Attrib V23    -0.04444303541286321
#>     Attrib V24    -0.06163422406509619
#>     Attrib V25    -0.5156838145279544
#>     Attrib V26    -0.6871208467794311
#>     Attrib V27    -0.7729470870330534
#>     Attrib V28    -0.21090233187509197
#>     Attrib V29    -0.38227500481659327
#>     Attrib V3    0.11879820410541728
#>     Attrib V30    -0.016913338525121106
#>     Attrib V31    -0.7270208812978174
#>     Attrib V32    -0.2539263974756587
#>     Attrib V33    0.2539393265463544
#>     Attrib V34    0.0042271228890105785
#>     Attrib V35    -0.2199352690653089
#>     Attrib V36    -0.509936065544896
#>     Attrib V37    -0.4388143180811247
#>     Attrib V38    0.3464380357912526
#>     Attrib V39    0.2074649186242989
#>     Attrib V4    0.4963714591741133
#>     Attrib V40    -0.2478753743720423
#>     Attrib V41    -0.009611123415737175
#>     Attrib V42    0.3162286616843501
#>     Attrib V43    0.2556847736026457
#>     Attrib V44    0.050976138784572356
#>     Attrib V45    0.09632597143328041
#>     Attrib V46    0.04144594176166791
#>     Attrib V47    -0.3855469203094382
#>     Attrib V48    0.02165331143058696
#>     Attrib V49    0.16770631961214902
#>     Attrib V5    -0.05064762650713844
#>     Attrib V50    -0.5055417728026279
#>     Attrib V51    -0.19900945290846359
#>     Attrib V52    0.1866857848788091
#>     Attrib V53    0.14610279330629372
#>     Attrib V54    0.8486171768185111
#>     Attrib V55    -0.034281734696748195
#>     Attrib V56    0.22702020482034785
#>     Attrib V57    0.3244690895419961
#>     Attrib V58    0.2567463433963649
#>     Attrib V59    0.6643995109518819
#>     Attrib V6    -0.11272940787576505
#>     Attrib V60    0.39110341527955617
#>     Attrib V7    -0.09335830420959983
#>     Attrib V8    -0.08669178131442416
#>     Attrib V9    0.16757262950891474
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.1111723916503222
#>     Attrib V1    0.2906042871173429
#>     Attrib V10    -0.38953478140427245
#>     Attrib V11    -0.16795014064528738
#>     Attrib V12    0.08995145224460953
#>     Attrib V13    0.0341570909510182
#>     Attrib V14    0.0953335940405706
#>     Attrib V15    0.08746384151371243
#>     Attrib V16    0.16127707939102037
#>     Attrib V17    0.13843380440421083
#>     Attrib V18    0.10997377493792017
#>     Attrib V19    0.06315746055780894
#>     Attrib V2    0.19022115726248626
#>     Attrib V20    0.2331658485361306
#>     Attrib V21    0.29651176771027943
#>     Attrib V22    0.0750288317935932
#>     Attrib V23    0.16195129196521854
#>     Attrib V24    0.03403291175716708
#>     Attrib V25    -0.25502487058741474
#>     Attrib V26    -0.3963280624005008
#>     Attrib V27    -0.5815436585465436
#>     Attrib V28    -0.13779796823220766
#>     Attrib V29    -0.41629707355087026
#>     Attrib V3    0.12841309455266975
#>     Attrib V30    -0.015487083568410684
#>     Attrib V31    -0.7114291951221917
#>     Attrib V32    -0.2432117900895522
#>     Attrib V33    0.22733461358206078
#>     Attrib V34    0.0011786567375989543
#>     Attrib V35    -0.027588485172250238
#>     Attrib V36    -0.26922487354414215
#>     Attrib V37    -0.2121863338232133
#>     Attrib V38    0.43139935121714407
#>     Attrib V39    0.23787109230899664
#>     Attrib V4    0.3812442471891104
#>     Attrib V40    -0.2948086435634958
#>     Attrib V41    -0.009086501460017654
#>     Attrib V42    0.2007786638684903
#>     Attrib V43    0.2465222246470738
#>     Attrib V44    0.11420266169751403
#>     Attrib V45    0.2566826820016333
#>     Attrib V46    0.09942255618767755
#>     Attrib V47    -0.2038043803584844
#>     Attrib V48    -0.045483828846746344
#>     Attrib V49    0.18141587610992294
#>     Attrib V5    -0.07566198872495478
#>     Attrib V50    -0.39594045912032727
#>     Attrib V51    -0.14812110596273645
#>     Attrib V52    0.2303187907872029
#>     Attrib V53    0.16754330627548242
#>     Attrib V54    0.7247059806635421
#>     Attrib V55    0.013908894315563579
#>     Attrib V56    0.2065349735073346
#>     Attrib V57    0.1878638602103344
#>     Attrib V58    0.1753811094832413
#>     Attrib V59    0.5576989559818769
#>     Attrib V6    -0.17152268947048432
#>     Attrib V60    0.3094688457587785
#>     Attrib V7    -0.12060754404037176
#>     Attrib V8    -0.09099880555821638
#>     Attrib V9    0.17522991047072728
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.17700526632144264
#>     Attrib V1    0.07274983428649683
#>     Attrib V10    0.027177658280523383
#>     Attrib V11    -0.049075333614992535
#>     Attrib V12    -0.14660814951213666
#>     Attrib V13    -0.0794491775291967
#>     Attrib V14    -0.03878027657758902
#>     Attrib V15    0.043791125795093096
#>     Attrib V16    -0.03827946186156605
#>     Attrib V17    0.1313554073871123
#>     Attrib V18    0.15296974938907024
#>     Attrib V19    0.05123783848915952
#>     Attrib V2    0.06054031899590169
#>     Attrib V20    -0.05065824858042609
#>     Attrib V21    -0.014956566290424035
#>     Attrib V22    0.1281030944996546
#>     Attrib V23    0.0481374722147576
#>     Attrib V24    -0.1593902548889272
#>     Attrib V25    -0.05822835367213823
#>     Attrib V26    -0.09846249657900326
#>     Attrib V27    -0.17051855023945273
#>     Attrib V28    -0.2439248537599474
#>     Attrib V29    0.08272014411644073
#>     Attrib V3    0.08706408617669004
#>     Attrib V30    0.00572915415563608
#>     Attrib V31    0.43268494428646864
#>     Attrib V32    0.35137873371658135
#>     Attrib V33    0.15850794109766522
#>     Attrib V34    0.2531878281998522
#>     Attrib V35    0.27384390628377664
#>     Attrib V36    0.4606557593641471
#>     Attrib V37    0.302434745589834
#>     Attrib V38    -0.110677583640463
#>     Attrib V39    -0.03257584594624756
#>     Attrib V4    0.02776829144173423
#>     Attrib V40    0.4378649414618085
#>     Attrib V41    0.3515354194483308
#>     Attrib V42    0.19464285701627765
#>     Attrib V43    0.21172804234631873
#>     Attrib V44    0.15283552009595694
#>     Attrib V45    -0.1054921179543315
#>     Attrib V46    -0.05301881954119848
#>     Attrib V47    0.14482462148980374
#>     Attrib V48    -0.10100200154942882
#>     Attrib V49    -0.19179526800032964
#>     Attrib V5    0.10905037877257762
#>     Attrib V50    0.41110640722522324
#>     Attrib V51    0.08093818609507326
#>     Attrib V52    -0.03367989017475229
#>     Attrib V53    0.036350407802141806
#>     Attrib V54    -0.18303981461586272
#>     Attrib V55    0.06127318749516915
#>     Attrib V56    0.1469493281776538
#>     Attrib V57    0.12989448819441435
#>     Attrib V58    0.07905605026220597
#>     Attrib V59    -0.13547554876346538
#>     Attrib V6    0.32013724004136523
#>     Attrib V60    -0.10306099863720515
#>     Attrib V7    0.19281481073992893
#>     Attrib V8    0.21138601048101122
#>     Attrib V9    -0.07880204305250808
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    1.162891032272329
#>     Attrib V1    0.11133480076183079
#>     Attrib V10    0.23271568826474656
#>     Attrib V11    0.9256766020338019
#>     Attrib V12    2.1644051470675985
#>     Attrib V13    0.2885933397229026
#>     Attrib V14    0.37484100655400165
#>     Attrib V15    -0.2906622485481493
#>     Attrib V16    -0.34876109614984413
#>     Attrib V17    -1.1303179371253733
#>     Attrib V18    -0.8730416010949669
#>     Attrib V19    -0.984777403784316
#>     Attrib V2    0.6353073757137562
#>     Attrib V20    -0.9530782165365441
#>     Attrib V21    -0.21863797863376977
#>     Attrib V22    -1.2824512394735157
#>     Attrib V23    -0.9259094577036536
#>     Attrib V24    -0.34669642575557463
#>     Attrib V25    -0.33294705956722764
#>     Attrib V26    0.47718321237318645
#>     Attrib V27    1.0811194699431188
#>     Attrib V28    1.1774759047857728
#>     Attrib V29    0.40627164215115125
#>     Attrib V3    0.6634211119279159
#>     Attrib V30    0.3512041830873871
#>     Attrib V31    -0.11492858458189918
#>     Attrib V32    0.2856546028719397
#>     Attrib V33    0.24117202529169013
#>     Attrib V34    0.23618727480128412
#>     Attrib V35    -0.4978620702509934
#>     Attrib V36    -1.7216262246011138
#>     Attrib V37    -1.0208453236840709
#>     Attrib V38    -0.7679476812230756
#>     Attrib V39    0.5034419934671418
#>     Attrib V4    1.0968972065549645
#>     Attrib V40    0.2584917491459446
#>     Attrib V41    0.6028912604560376
#>     Attrib V42    -0.06572685884466244
#>     Attrib V43    -0.2565603078601097
#>     Attrib V44    -0.43808448827067653
#>     Attrib V45    -0.24111316492976925
#>     Attrib V46    0.011510085565412146
#>     Attrib V47    -0.23930977154563607
#>     Attrib V48    1.4513365768817978
#>     Attrib V49    0.8042937201729531
#>     Attrib V5    0.6076318675938105
#>     Attrib V50    -1.4594575066113558
#>     Attrib V51    0.7426159533401908
#>     Attrib V52    1.3660521080160064
#>     Attrib V53    0.3760737073811443
#>     Attrib V54    -0.1607165687484767
#>     Attrib V55    -0.42366082447424624
#>     Attrib V56    -0.16058090821333976
#>     Attrib V57    0.6169624548379202
#>     Attrib V58    0.6325723518792546
#>     Attrib V59    0.5639102441103783
#>     Attrib V6    1.3507770834738406
#>     Attrib V60    0.32843368643010695
#>     Attrib V7    0.05939079047754349
#>     Attrib V8    -0.28439978923881704
#>     Attrib V9    0.6416128149009369
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.22797502966653455
#>     Attrib V1    0.0832444794545617
#>     Attrib V10    0.012495375531583624
#>     Attrib V11    -0.05291895917196813
#>     Attrib V12    -0.0732474791957799
#>     Attrib V13    -0.05202673836273914
#>     Attrib V14    0.024474410085024198
#>     Attrib V15    -0.010393260568499553
#>     Attrib V16    -0.01509513014593432
#>     Attrib V17    0.06329530963389376
#>     Attrib V18    0.030562690384634262
#>     Attrib V19    0.0926245403809622
#>     Attrib V2    0.09137689240800552
#>     Attrib V20    -0.01127953694107509
#>     Attrib V21    -0.0016512850092725289
#>     Attrib V22    0.041997500829261625
#>     Attrib V23    0.006632900164555935
#>     Attrib V24    -0.05852171529183084
#>     Attrib V25    -2.1663760426104766E-4
#>     Attrib V26    -0.07821280144097463
#>     Attrib V27    -0.06810265506861249
#>     Attrib V28    -0.11265812312274114
#>     Attrib V29    0.02632845143889275
#>     Attrib V3    0.05731445938465944
#>     Attrib V30    -0.0013520087591411681
#>     Attrib V31    0.1822542662144495
#>     Attrib V32    0.13249526335023468
#>     Attrib V33    0.1476112174432286
#>     Attrib V34    0.13010010986892306
#>     Attrib V35    0.21250065502558407
#>     Attrib V36    0.2672597986748416
#>     Attrib V37    0.22232583960819877
#>     Attrib V38    -0.022684303703868616
#>     Attrib V39    0.050475546480392076
#>     Attrib V4    0.05281507162084601
#>     Attrib V40    0.19742446047537868
#>     Attrib V41    0.1497081452380193
#>     Attrib V42    0.13524294435748796
#>     Attrib V43    0.11394791446436645
#>     Attrib V44    0.136890821141927
#>     Attrib V45    0.013420305168172032
#>     Attrib V46    -0.030648676572299145
#>     Attrib V47    0.0513232940986301
#>     Attrib V48    0.03396416961329119
#>     Attrib V49    -0.03441675445580854
#>     Attrib V5    0.04452399415595423
#>     Attrib V50    0.22295715868157556
#>     Attrib V51    0.013136376156781109
#>     Attrib V52    -0.05206923276397591
#>     Attrib V53    0.04944047246171195
#>     Attrib V54    -0.05867105292683881
#>     Attrib V55    0.0626484028200376
#>     Attrib V56    0.13484032088725867
#>     Attrib V57    0.10934433335745769
#>     Attrib V58    0.09149430994791291
#>     Attrib V59    -0.00662032594730401
#>     Attrib V6    0.16434228679201243
#>     Attrib V60    0.06324816688259699
#>     Attrib V7    0.09597833372219473
#>     Attrib V8    0.146764225972459
#>     Attrib V9    -0.04852418310350971
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.4679091558274865
#>     Attrib V1    0.28056653614738764
#>     Attrib V10    0.4299633562849897
#>     Attrib V11    0.8561455664096727
#>     Attrib V12    1.3455215164532086
#>     Attrib V13    0.33959185312143625
#>     Attrib V14    0.27423247785578886
#>     Attrib V15    -0.2155733745383721
#>     Attrib V16    -0.28602873210432544
#>     Attrib V17    -0.8294054181321144
#>     Attrib V18    -0.574337328634745
#>     Attrib V19    -0.9136638933484944
#>     Attrib V2    0.27437438299689476
#>     Attrib V20    -0.47562603898330463
#>     Attrib V21    0.4014072648541309
#>     Attrib V22    -0.3128831493644905
#>     Attrib V23    -0.3174657694574883
#>     Attrib V24    -0.32095725451844975
#>     Attrib V25    -0.27254984598401094
#>     Attrib V26    0.661141192368661
#>     Attrib V27    0.8815311498006536
#>     Attrib V28    1.3704981173783901
#>     Attrib V29    0.8241762791704358
#>     Attrib V3    0.11679320227811686
#>     Attrib V30    0.6475168311503456
#>     Attrib V31    -0.8865498166127704
#>     Attrib V32    -0.04879876588205985
#>     Attrib V33    0.26600275999404643
#>     Attrib V34    0.08275886392547194
#>     Attrib V35    0.2674237557667499
#>     Attrib V36    -0.06826934731207342
#>     Attrib V37    0.3274319175884492
#>     Attrib V38    0.25192216479394447
#>     Attrib V39    0.5637116475618391
#>     Attrib V4    0.768456896027802
#>     Attrib V40    -0.37970669731764073
#>     Attrib V41    0.06805349204539045
#>     Attrib V42    -0.4886738123564213
#>     Attrib V43    -0.0671994428773279
#>     Attrib V44    -0.19086960053104904
#>     Attrib V45    0.24043691848537885
#>     Attrib V46    0.3806925079698997
#>     Attrib V47    -0.062402287816353326
#>     Attrib V48    0.6098138758973398
#>     Attrib V49    0.4833592405860232
#>     Attrib V5    0.08869502465450235
#>     Attrib V50    -0.9773033482749199
#>     Attrib V51    0.38553740149956117
#>     Attrib V52    0.9512303001311581
#>     Attrib V53    -0.09307948036290947
#>     Attrib V54    0.2051609932314641
#>     Attrib V55    -0.2627038715609031
#>     Attrib V56    -0.4645145132610377
#>     Attrib V57    -0.09809960497150472
#>     Attrib V58    0.36366080276102436
#>     Attrib V59    0.4812464389390199
#>     Attrib V6    0.2933589292801579
#>     Attrib V60    0.4661072090451094
#>     Attrib V7    -0.401815046307263
#>     Attrib V8    -0.4085490189321863
#>     Attrib V9    0.6601546472307427
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.01562737477781628
#>     Attrib V1    0.5855598817222323
#>     Attrib V10    0.09692336990750655
#>     Attrib V11    -0.09069569301292106
#>     Attrib V12    -0.7013497108681949
#>     Attrib V13    -0.24760121552933625
#>     Attrib V14    0.21083750759610892
#>     Attrib V15    0.39361404358180724
#>     Attrib V16    0.04432156488927827
#>     Attrib V17    -0.11584505559247513
#>     Attrib V18    -0.18763473271489933
#>     Attrib V19    -0.3057203368053876
#>     Attrib V2    0.17334071088318423
#>     Attrib V20    0.052269166231390954
#>     Attrib V21    -0.09061851990494807
#>     Attrib V22    -0.21593319345850157
#>     Attrib V23    -0.7918212589547644
#>     Attrib V24    -0.4506438200458162
#>     Attrib V25    0.19930223185949192
#>     Attrib V26    0.20864804307468654
#>     Attrib V27    0.3399839425327363
#>     Attrib V28    -0.6428524836135859
#>     Attrib V29    0.42016757721118797
#>     Attrib V3    0.11090042843968438
#>     Attrib V30    -0.2551021612432628
#>     Attrib V31    1.0745358294193195
#>     Attrib V32    0.028845984319767332
#>     Attrib V33    -0.7909307094641851
#>     Attrib V34    -0.16775416163037046
#>     Attrib V35    0.2088150365695047
#>     Attrib V36    1.0632656609411462
#>     Attrib V37    1.2194005871153868
#>     Attrib V38    -0.08939730454218288
#>     Attrib V39    -0.3096047069093001
#>     Attrib V4    -0.48142429085880223
#>     Attrib V40    0.5208632907717947
#>     Attrib V41    -0.136395053058083
#>     Attrib V42    -0.513463238672966
#>     Attrib V43    -0.45421306556899343
#>     Attrib V44    -0.27365865318688876
#>     Attrib V45    -0.23861861331412546
#>     Attrib V46    -0.4229873469170093
#>     Attrib V47    0.0013649770550399727
#>     Attrib V48    -0.4562465008893134
#>     Attrib V49    -0.8065498678793177
#>     Attrib V5    0.055620033275277814
#>     Attrib V50    1.2109645132682585
#>     Attrib V51    -0.2839885916984794
#>     Attrib V52    -0.9274104580755556
#>     Attrib V53    -0.05658892096928192
#>     Attrib V54    -0.32776716872781636
#>     Attrib V55    0.5134590891809975
#>     Attrib V56    -0.00918504806804406
#>     Attrib V57    0.10907344394219803
#>     Attrib V58    -0.20563791972093687
#>     Attrib V59    -0.33665087609955185
#>     Attrib V6    0.02157385135422384
#>     Attrib V60    -0.34769400560865243
#>     Attrib V7    0.21826185279585966
#>     Attrib V8    0.5267544083767458
#>     Attrib V9    -0.5938465571511476
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.1558985288190958
#>     Attrib V1    -0.22427547566578954
#>     Attrib V10    0.1556287996320312
#>     Attrib V11    0.38928055900393777
#>     Attrib V12    0.5756944884534546
#>     Attrib V13    0.09473648282054317
#>     Attrib V14    -0.14475084142811687
#>     Attrib V15    -0.2852797136848755
#>     Attrib V16    -0.027974841978498217
#>     Attrib V17    -0.12212043925181049
#>     Attrib V18    -0.03560186679201081
#>     Attrib V19    -0.09179133692725051
#>     Attrib V2    -0.14529401980663564
#>     Attrib V20    0.003114074013807397
#>     Attrib V21    0.20180563989579997
#>     Attrib V22    0.028066869860913543
#>     Attrib V23    0.2569901454015992
#>     Attrib V24    0.24438945645568227
#>     Attrib V25    0.10503317194249884
#>     Attrib V26    0.18059921138727358
#>     Attrib V27    0.0916159388023343
#>     Attrib V28    0.6025089749456214
#>     Attrib V29    0.004206524834373339
#>     Attrib V3    -0.23192543151361508
#>     Attrib V30    0.3902078439359312
#>     Attrib V31    -0.6176041033961982
#>     Attrib V32    0.09971352557610917
#>     Attrib V33    0.45798797833850785
#>     Attrib V34    0.13667228894026057
#>     Attrib V35    0.1650435653658925
#>     Attrib V36    -0.31505156035292664
#>     Attrib V37    -0.32736329604234377
#>     Attrib V38    0.23211455643770723
#>     Attrib V39    0.2845925941667699
#>     Attrib V4    0.22721535660282074
#>     Attrib V40    -0.3861567395347539
#>     Attrib V41    -0.053964077665148616
#>     Attrib V42    -0.12530307138344646
#>     Attrib V43    0.1493141256389393
#>     Attrib V44    0.04155241529690072
#>     Attrib V45    0.35437248479025263
#>     Attrib V46    0.3281211146243524
#>     Attrib V47    0.04026814038580581
#>     Attrib V48    0.43125716848297035
#>     Attrib V49    0.5088892249431183
#>     Attrib V5    -0.1868138886937107
#>     Attrib V50    -0.7108529447688032
#>     Attrib V51    0.21407185773184276
#>     Attrib V52    0.685818288414333
#>     Attrib V53    -0.05687575982797333
#>     Attrib V54    0.28974363404651593
#>     Attrib V55    -0.22191522227832253
#>     Attrib V56    -0.15025741340901058
#>     Attrib V57    -0.16099447592276897
#>     Attrib V58    0.12429169368265461
#>     Attrib V59    0.12438054994769966
#>     Attrib V6    -0.18224019503958025
#>     Attrib V60    0.12209506686296409
#>     Attrib V7    -0.2467153988440336
#>     Attrib V8    -0.19353873328196639
#>     Attrib V9    0.6513547548292725
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.22057378091863677
#>     Attrib V1    0.3213612113250343
#>     Attrib V10    0.06730538044566563
#>     Attrib V11    -0.148225955169645
#>     Attrib V12    -0.5418206740847861
#>     Attrib V13    -0.09592288427761411
#>     Attrib V14    0.22264125738628657
#>     Attrib V15    0.33873055451003403
#>     Attrib V16    0.09627926986328621
#>     Attrib V17    0.23604601413985482
#>     Attrib V18    0.07248908559185156
#>     Attrib V19    -0.0022629402299504985
#>     Attrib V2    0.13671787186271914
#>     Attrib V20    0.007274660458087636
#>     Attrib V21    -0.10570403468281488
#>     Attrib V22    0.04479277933504373
#>     Attrib V23    -0.3535147958077505
#>     Attrib V24    -0.27861686098351934
#>     Attrib V25    0.23961392250909422
#>     Attrib V26    0.11128889785580125
#>     Attrib V27    0.11958654748728584
#>     Attrib V28    -0.5533979189868246
#>     Attrib V29    0.2278511476962109
#>     Attrib V3    0.08272500439444223
#>     Attrib V30    -0.16412593556170196
#>     Attrib V31    1.0109141405178568
#>     Attrib V32    0.05897858450762544
#>     Attrib V33    -0.4886507119635606
#>     Attrib V34    -0.12298061730234519
#>     Attrib V35    0.08941459343827993
#>     Attrib V36    0.6857670787354392
#>     Attrib V37    0.7004554794951815
#>     Attrib V38    -0.3092801791416749
#>     Attrib V39    -0.3147981569820271
#>     Attrib V4    -0.2901422075430272
#>     Attrib V40    0.42592934033512303
#>     Attrib V41    -0.08066209995692261
#>     Attrib V42    -0.16368030925661095
#>     Attrib V43    -0.24814002773729119
#>     Attrib V44    -0.15201547238279647
#>     Attrib V45    -0.2975653813809877
#>     Attrib V46    -0.4308064636810727
#>     Attrib V47    0.05487322718098986
#>     Attrib V48    -0.29301460490121245
#>     Attrib V49    -0.581557842966848
#>     Attrib V5    0.08146902918459115
#>     Attrib V50    0.9901458802986625
#>     Attrib V51    -0.13179957197601339
#>     Attrib V52    -0.7356248742832545
#>     Attrib V53    0.014375417323982391
#>     Attrib V54    -0.3328648369483339
#>     Attrib V55    0.39261361781392723
#>     Attrib V56    0.2296244499778212
#>     Attrib V57    0.20888766121166708
#>     Attrib V58    -0.08618401676922839
#>     Attrib V59    -0.13584421566216026
#>     Attrib V6    0.03455926869304083
#>     Attrib V60    -0.11093991961349951
#>     Attrib V7    0.16170468434515295
#>     Attrib V8    0.31025117400542856
#>     Attrib V9    -0.5825469243024715
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.1807674574847525
#>     Attrib V1    0.28677881293819374
#>     Attrib V10    -0.5086928975481289
#>     Attrib V11    -0.3427779040923558
#>     Attrib V12    -0.08359999408696854
#>     Attrib V13    0.014096266363645709
#>     Attrib V14    0.1266974974947995
#>     Attrib V15    0.18069035620439616
#>     Attrib V16    0.3387809212574165
#>     Attrib V17    0.16933390716551924
#>     Attrib V18    0.14165536085785388
#>     Attrib V19    0.08169915667478626
#>     Attrib V2    0.27669774106290707
#>     Attrib V20    0.39501282707802327
#>     Attrib V21    0.41203784975292185
#>     Attrib V22    0.13946000233532452
#>     Attrib V23    0.21384860682265325
#>     Attrib V24    0.08361905128242932
#>     Attrib V25    -0.4716012517592297
#>     Attrib V26    -0.6814649243561478
#>     Attrib V27    -0.8867809037912803
#>     Attrib V28    -0.15209294493240505
#>     Attrib V29    -0.5381655059528861
#>     Attrib V3    0.06559880859881514
#>     Attrib V30    0.016664221872323373
#>     Attrib V31    -0.9213358501318729
#>     Attrib V32    -0.3136956617583979
#>     Attrib V33    0.41793562741526946
#>     Attrib V34    0.049185479862737164
#>     Attrib V35    -0.17905837675588757
#>     Attrib V36    -0.6141521022441555
#>     Attrib V37    -0.5729217071542267
#>     Attrib V38    0.5218887133891532
#>     Attrib V39    0.2361395693293683
#>     Attrib V4    0.4466735125388032
#>     Attrib V40    -0.33506104459199293
#>     Attrib V41    0.03864339687884843
#>     Attrib V42    0.4596846521628368
#>     Attrib V43    0.32836181621801125
#>     Attrib V44    0.18445752416625383
#>     Attrib V45    0.2780898165016309
#>     Attrib V46    0.1457302786313869
#>     Attrib V47    -0.3289597643461735
#>     Attrib V48    0.01408413083622282
#>     Attrib V49    0.26836853236377417
#>     Attrib V5    -0.15613021979682615
#>     Attrib V50    -0.600824228743547
#>     Attrib V51    -0.22128133645020154
#>     Attrib V52    0.2187477687674907
#>     Attrib V53    0.1983541871707095
#>     Attrib V54    0.9948874122940065
#>     Attrib V55    -0.06587660890307133
#>     Attrib V56    0.21321801561963588
#>     Attrib V57    0.24645869302184295
#>     Attrib V58    0.16113985722101726
#>     Attrib V59    0.6462114486618701
#>     Attrib V6    -0.21292760319383916
#>     Attrib V60    0.38897025291752496
#>     Attrib V7    -0.07844626280298328
#>     Attrib V8    0.011178546010596986
#>     Attrib V9    0.31469771713099115
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.08555684465835652
#>     Attrib V1    0.22051537069588276
#>     Attrib V10    -0.14837212018711
#>     Attrib V11    -0.017876775371939498
#>     Attrib V12    0.047725262439136426
#>     Attrib V13    -0.023615593496814295
#>     Attrib V14    0.12006265128591266
#>     Attrib V15    0.07570134283563751
#>     Attrib V16    0.13223557717165904
#>     Attrib V17    -0.015757985053932198
#>     Attrib V18    0.063142557945996
#>     Attrib V19    -0.022896601690527492
#>     Attrib V2    0.12538078422680551
#>     Attrib V20    0.14622741837729605
#>     Attrib V21    0.19954010427086938
#>     Attrib V22    -3.9860852413642464E-4
#>     Attrib V23    0.07853023787441048
#>     Attrib V24    -0.011263108340776812
#>     Attrib V25    -0.18016391319864394
#>     Attrib V26    -0.193725062292683
#>     Attrib V27    -0.2479518887485598
#>     Attrib V28    0.03175625637959616
#>     Attrib V29    -0.16151603775265644
#>     Attrib V3    0.10503678554258906
#>     Attrib V30    0.07739458629970655
#>     Attrib V31    -0.4051944060677588
#>     Attrib V32    -0.11851997138258988
#>     Attrib V33    0.15496351130925007
#>     Attrib V34    0.012339919059126231
#>     Attrib V35    -8.811326146882737E-4
#>     Attrib V36    -0.08651214603930674
#>     Attrib V37    -0.1286038428426112
#>     Attrib V38    0.18583321151601526
#>     Attrib V39    0.16029276263312964
#>     Attrib V4    0.21409093616891103
#>     Attrib V40    -0.1892141678303246
#>     Attrib V41    -0.060828413667270376
#>     Attrib V42    0.09904934953232954
#>     Attrib V43    0.08693532381349066
#>     Attrib V44    0.13852042709195633
#>     Attrib V45    0.21521504541038766
#>     Attrib V46    0.08403646533984246
#>     Attrib V47    -0.10528460626638456
#>     Attrib V48    0.024051546998360793
#>     Attrib V49    0.19717447037299127
#>     Attrib V5    -0.020150365610033798
#>     Attrib V50    -0.20252651072457278
#>     Attrib V51    -0.030526436507882584
#>     Attrib V52    0.18597432217373805
#>     Attrib V53    0.09487410505836674
#>     Attrib V54    0.34500697168083094
#>     Attrib V55    0.02999041178779251
#>     Attrib V56    0.11009601732396983
#>     Attrib V57    0.15239893868988844
#>     Attrib V58    0.22302391155688045
#>     Attrib V59    0.27387450104099403
#>     Attrib V6    -0.10659426561622212
#>     Attrib V60    0.2193868585751915
#>     Attrib V7    -0.08410708636765113
#>     Attrib V8    0.055616362806307905
#>     Attrib V9    0.21387039853791295
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
