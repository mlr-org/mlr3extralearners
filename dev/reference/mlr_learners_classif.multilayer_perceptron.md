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
#>     Threshold    0.26590480848946163
#>     Node 2    2.340925448364717
#>     Node 3    0.6688786084042478
#>     Node 4    0.5104032829410607
#>     Node 5    -2.3832613985737856
#>     Node 6    1.6402142418008012
#>     Node 7    2.0517593194780743
#>     Node 8    0.7032290921927282
#>     Node 9    3.780944470347494
#>     Node 10    -2.2343546526229714
#>     Node 11    1.2509464808237278
#>     Node 12    1.9471593042140247
#>     Node 13    1.6110482067676457
#>     Node 14    1.8160529312582911
#>     Node 15    -2.4707631036573483
#>     Node 16    0.27089724498254036
#>     Node 17    -0.69587357868065
#>     Node 18    0.9522556689847597
#>     Node 19    2.0767753530708273
#>     Node 20    2.5013990259349974
#>     Node 21    -2.66349881701671
#>     Node 22    1.2926998243769592
#>     Node 23    2.264551623638822
#>     Node 24    -1.7703783875472148
#>     Node 25    3.681171274788798
#>     Node 26    0.15587360752177426
#>     Node 27    1.9511730856548009
#>     Node 28    -3.7497161821397316
#>     Node 29    0.7817016092677114
#>     Node 30    0.5617479923808056
#>     Node 31    1.281380356481336
#>     Node 32    0.9484518670411034
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.2521944506411205
#>     Node 2    -2.3817885936192082
#>     Node 3    -0.6538165526291246
#>     Node 4    -0.47415322569791724
#>     Node 5    2.400832195513698
#>     Node 6    -1.613539442337232
#>     Node 7    -2.051358328480816
#>     Node 8    -0.7424426615611259
#>     Node 9    -3.796460464902311
#>     Node 10    2.1729498164162813
#>     Node 11    -1.2199956759142485
#>     Node 12    -2.01728999734751
#>     Node 13    -1.555206003354897
#>     Node 14    -1.7458686352098818
#>     Node 15    2.464367707862416
#>     Node 16    -0.2913656069440652
#>     Node 17    0.7253889685863031
#>     Node 18    -0.9174077086183892
#>     Node 19    -2.067353707325161
#>     Node 20    -2.483648141753328
#>     Node 21    2.7220606885294343
#>     Node 22    -1.3442408121226617
#>     Node 23    -2.300048970143105
#>     Node 24    1.7583709358194455
#>     Node 25    -3.6809697754594954
#>     Node 26    -0.2450449730465688
#>     Node 27    -1.9892011239242602
#>     Node 28    3.7087290667982327
#>     Node 29    -0.8192591929714128
#>     Node 30    -0.4894889150124581
#>     Node 31    -1.2234654179904387
#>     Node 32    -0.9693208208937146
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.2879342346671371
#>     Attrib V1    0.9079156110554081
#>     Attrib V10    -0.2597931736793677
#>     Attrib V11    -0.3304350578291598
#>     Attrib V12    -0.3228005151170511
#>     Attrib V13    -0.12617822290917755
#>     Attrib V14    0.19877176127711718
#>     Attrib V15    0.16665319608655318
#>     Attrib V16    0.30869933211277956
#>     Attrib V17    0.5956303305762429
#>     Attrib V18    0.37264287804087404
#>     Attrib V19    -0.01026670683029494
#>     Attrib V2    0.04447213361377677
#>     Attrib V20    0.5302915791578703
#>     Attrib V21    0.9880079156792785
#>     Attrib V22    0.6128267988680132
#>     Attrib V23    0.104112452538632
#>     Attrib V24    0.08062555059351036
#>     Attrib V25    -0.6959773740817298
#>     Attrib V26    -1.0141608588304378
#>     Attrib V27    -0.8449406981448382
#>     Attrib V28    -0.29989364849094846
#>     Attrib V29    -0.5186324823257024
#>     Attrib V3    0.3194079583161862
#>     Attrib V30    -0.08709618795332334
#>     Attrib V31    -1.2627736328003694
#>     Attrib V32    -0.35143276470338247
#>     Attrib V33    0.5615773671295681
#>     Attrib V34    -0.35453646572935027
#>     Attrib V35    -0.2546938878053969
#>     Attrib V36    -0.5568332707813659
#>     Attrib V37    -0.9695131591967547
#>     Attrib V38    0.2205723937254903
#>     Attrib V39    0.497485145685853
#>     Attrib V4    0.26179751530707285
#>     Attrib V40    0.04645027770080943
#>     Attrib V41    -0.06745267821613614
#>     Attrib V42    0.24825593779650468
#>     Attrib V43    0.45173621588024915
#>     Attrib V44    0.1933582463973952
#>     Attrib V45    0.012681688043663944
#>     Attrib V46    0.011632510365863496
#>     Attrib V47    -0.41126920383079774
#>     Attrib V48    0.26003773877639086
#>     Attrib V49    0.4740146772769728
#>     Attrib V5    0.3455827261857859
#>     Attrib V50    -0.9117304862862564
#>     Attrib V51    0.12825320603339718
#>     Attrib V52    -0.09311590791579293
#>     Attrib V53    0.5449558819272615
#>     Attrib V54    0.4752187704525746
#>     Attrib V55    -0.7975826346149893
#>     Attrib V56    0.5642792855190144
#>     Attrib V57    0.3079149334349667
#>     Attrib V58    0.4320047475933614
#>     Attrib V59    1.114103146293599
#>     Attrib V6    0.016748898674428834
#>     Attrib V60    0.671349229533359
#>     Attrib V7    0.008456485213155509
#>     Attrib V8    -0.2584756020095693
#>     Attrib V9    0.44767246110306064
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.0024921946278201983
#>     Attrib V1    0.25411231701861825
#>     Attrib V10    0.004709733642941551
#>     Attrib V11    -0.05059867748652803
#>     Attrib V12    0.03813011427539122
#>     Attrib V13    0.0633790460995958
#>     Attrib V14    0.0931024067280776
#>     Attrib V15    0.06988352439345535
#>     Attrib V16    -0.0029817939668083365
#>     Attrib V17    0.12440107356076704
#>     Attrib V18    0.02763718898357452
#>     Attrib V19    -0.06340632051369047
#>     Attrib V2    0.07451353741746193
#>     Attrib V20    0.00916661158173714
#>     Attrib V21    0.08451554426750557
#>     Attrib V22    0.06059028340969992
#>     Attrib V23    -0.0508669737233684
#>     Attrib V24    0.017518270974822933
#>     Attrib V25    -0.06452588005016179
#>     Attrib V26    -0.21400157749093376
#>     Attrib V27    -0.2263444634608545
#>     Attrib V28    -0.08721866565560393
#>     Attrib V29    -0.22529684531585006
#>     Attrib V3    0.16900395523552167
#>     Attrib V30    0.024403753870820964
#>     Attrib V31    -0.3095724959144274
#>     Attrib V32    -0.06478034739880827
#>     Attrib V33    0.16089935541672376
#>     Attrib V34    -0.11891700067580292
#>     Attrib V35    -0.018216512760085287
#>     Attrib V36    -0.1494047146732521
#>     Attrib V37    -0.2481653874340318
#>     Attrib V38    0.026298305058885228
#>     Attrib V39    0.1315150443157345
#>     Attrib V4    0.17598304980985188
#>     Attrib V40    0.018226907985815135
#>     Attrib V41    -0.027331395295541117
#>     Attrib V42    -0.05804469637184202
#>     Attrib V43    0.03438317418649347
#>     Attrib V44    0.04677297184888224
#>     Attrib V45    -0.004100603004703969
#>     Attrib V46    0.0021995710845832514
#>     Attrib V47    -0.048306174371236056
#>     Attrib V48    0.10620318280092664
#>     Attrib V49    0.15486398529342157
#>     Attrib V5    0.15834395978652901
#>     Attrib V50    -0.2582341388696459
#>     Attrib V51    0.10100149204263618
#>     Attrib V52    0.04468098712768467
#>     Attrib V53    0.10270574396447638
#>     Attrib V54    0.2499079587534337
#>     Attrib V55    -0.08278129714793415
#>     Attrib V56    0.21212059815403286
#>     Attrib V57    0.14897913857803605
#>     Attrib V58    0.18537770758160987
#>     Attrib V59    0.3473046274590257
#>     Attrib V6    -0.014891919373099758
#>     Attrib V60    0.25463701164648
#>     Attrib V7    -0.03198444179872399
#>     Attrib V8    -0.10868822465104344
#>     Attrib V9    0.14126397622770226
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.08420895107407468
#>     Attrib V1    0.13883323240808093
#>     Attrib V10    0.025216638045307115
#>     Attrib V11    -0.017506039075134816
#>     Attrib V12    0.01822639906061125
#>     Attrib V13    0.031907411485638054
#>     Attrib V14    0.08064439707722891
#>     Attrib V15    0.03914053079604676
#>     Attrib V16    -0.04265708092232889
#>     Attrib V17    0.027520179781015303
#>     Attrib V18    -0.06584298218031814
#>     Attrib V19    -0.17032549353830498
#>     Attrib V2    0.03727297430234829
#>     Attrib V20    -0.09266830968352785
#>     Attrib V21    -0.010766276861883257
#>     Attrib V22    -0.13836848127931903
#>     Attrib V23    -0.1586948160685699
#>     Attrib V24    -0.10563216462485993
#>     Attrib V25    -0.13229508294081352
#>     Attrib V26    -0.14590331597789993
#>     Attrib V27    -0.14458671544792595
#>     Attrib V28    0.058604122207277176
#>     Attrib V29    0.004356165331649537
#>     Attrib V3    0.15036374189333782
#>     Attrib V30    0.048730539032895585
#>     Attrib V31    -0.15274347766174787
#>     Attrib V32    -0.028409986364313276
#>     Attrib V33    0.12305596829285881
#>     Attrib V34    -0.012892260478843494
#>     Attrib V35    0.022400251680622617
#>     Attrib V36    -0.07797572769688187
#>     Attrib V37    -0.10813322247180605
#>     Attrib V38    0.018436436027678815
#>     Attrib V39    0.09001523699345465
#>     Attrib V4    0.12363018527938052
#>     Attrib V40    0.02261725340124542
#>     Attrib V41    -0.05225721972739456
#>     Attrib V42    -0.06646200959483235
#>     Attrib V43    -0.04091746424174733
#>     Attrib V44    0.013744893036886325
#>     Attrib V45    0.08489504036494493
#>     Attrib V46    0.022204913552784894
#>     Attrib V47    -0.004100241886855692
#>     Attrib V48    0.17660064717806806
#>     Attrib V49    0.1953109296717723
#>     Attrib V5    0.1456398289004037
#>     Attrib V50    -0.09022143758178455
#>     Attrib V51    0.15977020721943486
#>     Attrib V52    0.04034324469815888
#>     Attrib V53    0.0838464580094497
#>     Attrib V54    0.036672591173742296
#>     Attrib V55    -0.04704295072677565
#>     Attrib V56    0.14621006545620036
#>     Attrib V57    0.14962646155666443
#>     Attrib V58    0.07282503258785249
#>     Attrib V59    0.19333362840542137
#>     Attrib V6    -0.0214686757702613
#>     Attrib V60    0.1803425173053528
#>     Attrib V7    5.031012056911864E-4
#>     Attrib V8    -0.1253056704923662
#>     Attrib V9    0.14901315434897608
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5370346454129465
#>     Attrib V1    -0.24690439781382162
#>     Attrib V10    -0.8875506478376078
#>     Attrib V11    -0.6401709989043167
#>     Attrib V12    -0.6551662837179121
#>     Attrib V13    -0.5426922762447409
#>     Attrib V14    0.3607824180921109
#>     Attrib V15    0.9541743772055845
#>     Attrib V16    0.506115274545686
#>     Attrib V17    -0.07301686158816004
#>     Attrib V18    0.14190750789438564
#>     Attrib V19    0.4337809197683461
#>     Attrib V2    0.36686869440157543
#>     Attrib V20    0.14028771575422272
#>     Attrib V21    -0.5712717853423454
#>     Attrib V22    -0.6454654973956425
#>     Attrib V23    -0.3866938606718814
#>     Attrib V24    -0.434238844443949
#>     Attrib V25    0.3501142946037472
#>     Attrib V26    0.10587237156566204
#>     Attrib V27    -0.22401601339078434
#>     Attrib V28    -0.7210319705529089
#>     Attrib V29    -0.03965494738038176
#>     Attrib V3    0.029009890242012296
#>     Attrib V30    -0.8029651546702478
#>     Attrib V31    1.1582318399981608
#>     Attrib V32    0.3650143736908833
#>     Attrib V33    -0.711643916386821
#>     Attrib V34    0.051102461022370586
#>     Attrib V35    -0.33885058380264965
#>     Attrib V36    0.5584669651381182
#>     Attrib V37    0.9974717098301441
#>     Attrib V38    -0.2438890951574418
#>     Attrib V39    0.12297160013466768
#>     Attrib V4    -0.23584497925701178
#>     Attrib V40    0.31873629275678655
#>     Attrib V41    0.07954160210001188
#>     Attrib V42    0.43846460844064683
#>     Attrib V43    -0.48104441530042363
#>     Attrib V44    -0.5406344645051685
#>     Attrib V45    -0.5302035731915917
#>     Attrib V46    -0.34325486958936263
#>     Attrib V47    0.1083438477870817
#>     Attrib V48    -0.7801936237276346
#>     Attrib V49    -1.2704351376863006
#>     Attrib V5    -0.165572491376116
#>     Attrib V50    1.2959069342103406
#>     Attrib V51    -1.0018481364722194
#>     Attrib V52    -0.41625452479852026
#>     Attrib V53    0.08301530967611605
#>     Attrib V54    -0.4278503145039444
#>     Attrib V55    0.9306280210574505
#>     Attrib V56    -0.07818870177862494
#>     Attrib V57    0.36557717837061016
#>     Attrib V58    -0.3552814772950643
#>     Attrib V59    -0.3293242208902224
#>     Attrib V6    0.29589985722276146
#>     Attrib V60    0.07868063823144039
#>     Attrib V7    0.8495735704389961
#>     Attrib V8    0.4871611531082751
#>     Attrib V9    -1.4546293379100028
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.2057399396958547
#>     Attrib V1    0.5575810956253989
#>     Attrib V10    -0.26775763932220453
#>     Attrib V11    -0.21696955457347095
#>     Attrib V12    -0.04580399643989544
#>     Attrib V13    0.006559211030105937
#>     Attrib V14    0.12114387656587952
#>     Attrib V15    0.05177855650712051
#>     Attrib V16    0.22766173373001494
#>     Attrib V17    0.4025985340739852
#>     Attrib V18    0.3419161025222355
#>     Attrib V19    0.03786657842978604
#>     Attrib V2    0.021358967881837512
#>     Attrib V20    0.27639366357927125
#>     Attrib V21    0.570794839731377
#>     Attrib V22    0.40324940713692353
#>     Attrib V23    0.1569276238354394
#>     Attrib V24    0.2954254766848891
#>     Attrib V25    -0.1278786767487103
#>     Attrib V26    -0.5309067511663534
#>     Attrib V27    -0.5377146855697983
#>     Attrib V28    -0.3879531406367314
#>     Attrib V29    -0.5966610045381311
#>     Attrib V3    0.23215669959454932
#>     Attrib V30    -0.1643716727797512
#>     Attrib V31    -0.780129740446766
#>     Attrib V32    -0.2127452475819647
#>     Attrib V33    0.3855662318271036
#>     Attrib V34    -0.2523076372765308
#>     Attrib V35    -0.1192180554561607
#>     Attrib V36    -0.43734691197557257
#>     Attrib V37    -0.7690147963832048
#>     Attrib V38    0.011097987089706813
#>     Attrib V39    0.22265471282163574
#>     Attrib V4    0.26902162293280074
#>     Attrib V40    -0.021047996025763564
#>     Attrib V41    0.043521615763335374
#>     Attrib V42    0.1647329244159674
#>     Attrib V43    0.2566177009939137
#>     Attrib V44    0.09146092813063592
#>     Attrib V45    -9.816466698087353E-4
#>     Attrib V46    -0.018910539255684183
#>     Attrib V47    -0.3110949429100895
#>     Attrib V48    0.1465965511859908
#>     Attrib V49    0.28882549258533086
#>     Attrib V5    0.3241642730961678
#>     Attrib V50    -0.6557824924792434
#>     Attrib V51    0.15101471040418046
#>     Attrib V52    -0.056734518660476865
#>     Attrib V53    0.47034084122189707
#>     Attrib V54    0.47926381940583
#>     Attrib V55    -0.49070890482804574
#>     Attrib V56    0.4546852099918431
#>     Attrib V57    0.23670184116075607
#>     Attrib V58    0.34888232558649485
#>     Attrib V59    0.8857103220531093
#>     Attrib V6    0.14861424248867747
#>     Attrib V60    0.5848606085366884
#>     Attrib V7    0.07816293893292046
#>     Attrib V8    -0.16797624595773503
#>     Attrib V9    0.35663892414075193
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.6890442427329827
#>     Attrib V1    0.36245446434612616
#>     Attrib V10    0.3055296711473359
#>     Attrib V11    0.31120617576864346
#>     Attrib V12    0.4367168369006872
#>     Attrib V13    0.5265609229667573
#>     Attrib V14    -0.3014847172730326
#>     Attrib V15    -0.8363968444627722
#>     Attrib V16    -0.5464265013003765
#>     Attrib V17    -0.06221121280679255
#>     Attrib V18    -0.16375274629830297
#>     Attrib V19    -0.3929833880383609
#>     Attrib V2    -0.26916672171865863
#>     Attrib V20    0.08936186236228111
#>     Attrib V21    0.685131297988734
#>     Attrib V22    0.5478931944179148
#>     Attrib V23    0.32794677784139337
#>     Attrib V24    0.4057831102362337
#>     Attrib V25    -0.27339382373326765
#>     Attrib V26    -0.22244322847254913
#>     Attrib V27    0.04357558236093224
#>     Attrib V28    0.5159446868747456
#>     Attrib V29    -0.050331144466607004
#>     Attrib V3    0.08501537567641039
#>     Attrib V30    0.36334590529976696
#>     Attrib V31    -1.0575311185109835
#>     Attrib V32    -0.2180156913745286
#>     Attrib V33    0.7297351806306736
#>     Attrib V34    -0.0723270473760634
#>     Attrib V35    0.3298722005962234
#>     Attrib V36    -0.5428238386455756
#>     Attrib V37    -0.9021601872318992
#>     Attrib V38    0.2140862811828943
#>     Attrib V39    -0.030121359098777716
#>     Attrib V4    0.07340417100011032
#>     Attrib V40    -0.05299519736273955
#>     Attrib V41    0.0064458950765041755
#>     Attrib V42    -0.25173138506966947
#>     Attrib V43    0.44791562267186624
#>     Attrib V44    0.3986285327803483
#>     Attrib V45    0.3716559250635483
#>     Attrib V46    0.2862500944893598
#>     Attrib V47    -0.1753089240082423
#>     Attrib V48    0.5730063256785181
#>     Attrib V49    0.9452996268615118
#>     Attrib V5    0.2106105563462506
#>     Attrib V50    -1.2171283728074522
#>     Attrib V51    0.5463131081756805
#>     Attrib V52    0.1739978147613263
#>     Attrib V53    0.10298763766156302
#>     Attrib V54    0.4532855776027989
#>     Attrib V55    -0.9796720528445283
#>     Attrib V56    0.193865234134584
#>     Attrib V57    -0.18257646713588396
#>     Attrib V58    0.25910402231465346
#>     Attrib V59    0.508644196476612
#>     Attrib V6    -0.1957274286252435
#>     Attrib V60    -0.03216471684693509
#>     Attrib V7    -0.6340934833003251
#>     Attrib V8    -0.7664368582928035
#>     Attrib V9    0.9554621401735971
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.05740346493012298
#>     Attrib V1    0.1892791234224811
#>     Attrib V10    0.09758153225026116
#>     Attrib V11    0.036712135719495984
#>     Attrib V12    0.03905168349015854
#>     Attrib V13    0.016007356168952436
#>     Attrib V14    -0.04736630810092954
#>     Attrib V15    -0.06716967385145478
#>     Attrib V16    -0.046672670637544766
#>     Attrib V17    -0.0016394036020446277
#>     Attrib V18    -0.14218135659330391
#>     Attrib V19    -0.2600249357274248
#>     Attrib V2    0.04808790758744231
#>     Attrib V20    -0.2079156929578114
#>     Attrib V21    -0.09584345418062384
#>     Attrib V22    -0.19119191114636222
#>     Attrib V23    -0.22472217234365188
#>     Attrib V24    -0.06309058402896475
#>     Attrib V25    -0.11019415549416671
#>     Attrib V26    -0.12608449730886317
#>     Attrib V27    -0.07453184149676431
#>     Attrib V28    0.13781082276444295
#>     Attrib V29    0.052647481482465106
#>     Attrib V3    0.11711491618480152
#>     Attrib V30    0.14870995807874635
#>     Attrib V31    -0.20377739430701072
#>     Attrib V32    -0.023312632707517437
#>     Attrib V33    0.1592026275346079
#>     Attrib V34    -0.018757926191544955
#>     Attrib V35    0.05492364380037088
#>     Attrib V36    -0.02998236535305374
#>     Attrib V37    -0.11622414106519006
#>     Attrib V38    0.12034113549295973
#>     Attrib V39    0.05081799338686739
#>     Attrib V4    0.1970734701587146
#>     Attrib V40    -0.026879633454488766
#>     Attrib V41    -0.07399274582825549
#>     Attrib V42    -0.23606189474929531
#>     Attrib V43    -0.06801529118961104
#>     Attrib V44    0.03301308133443511
#>     Attrib V45    0.08884587166319736
#>     Attrib V46    0.10927447721097845
#>     Attrib V47    0.05114797722462717
#>     Attrib V48    0.28451555071591783
#>     Attrib V49    0.27349999920423196
#>     Attrib V5    0.09141276322342469
#>     Attrib V50    -0.20537301013296355
#>     Attrib V51    0.15249695703012325
#>     Attrib V52    0.023976673807975666
#>     Attrib V53    0.052054765023864656
#>     Attrib V54    0.08859871500323913
#>     Attrib V55    -0.14379015555820976
#>     Attrib V56    0.07741906698950163
#>     Attrib V57    0.18789303655533965
#>     Attrib V58    0.041749742782295915
#>     Attrib V59    0.24324820960058688
#>     Attrib V6    -0.05975818637065874
#>     Attrib V60    0.2662391959938046
#>     Attrib V7    -0.029343790239133895
#>     Attrib V8    -0.20897576206247132
#>     Attrib V9    0.1800446073761155
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.45876708974343905
#>     Attrib V1    -0.1477493657489913
#>     Attrib V10    1.4580752206088938
#>     Attrib V11    1.459777600551377
#>     Attrib V12    1.468580922750935
#>     Attrib V13    1.1033039907113518
#>     Attrib V14    -0.7035634096384095
#>     Attrib V15    -1.4349139922136889
#>     Attrib V16    -0.9291956524327317
#>     Attrib V17    -0.2646116328803034
#>     Attrib V18    -0.3960871115807941
#>     Attrib V19    -0.6030502161876553
#>     Attrib V2    -0.27650457307623244
#>     Attrib V20    -0.5740781802282102
#>     Attrib V21    0.3104630249887027
#>     Attrib V22    0.4371806790368438
#>     Attrib V23    0.5909389396703357
#>     Attrib V24    0.9829628991764782
#>     Attrib V25    0.7707414133477732
#>     Attrib V26    1.0277229292634975
#>     Attrib V27    0.8556370243912259
#>     Attrib V28    0.7882612327330173
#>     Attrib V29    -0.011727481697585638
#>     Attrib V3    -0.08149674729046114
#>     Attrib V30    0.9149095942714854
#>     Attrib V31    -0.6404440454621225
#>     Attrib V32    -0.4075610870889685
#>     Attrib V33    0.234273848199299
#>     Attrib V34    0.3832115380546707
#>     Attrib V35    0.9638309594784066
#>     Attrib V36    -0.3185330153512788
#>     Attrib V37    -0.9661724635630138
#>     Attrib V38    -0.19977919306502498
#>     Attrib V39    -0.33281845874390026
#>     Attrib V4    0.12047113950523984
#>     Attrib V40    -0.03468202664143079
#>     Attrib V41    0.15211761204399968
#>     Attrib V42    -0.9835873969120867
#>     Attrib V43    0.2040451273365901
#>     Attrib V44    0.6947906449913098
#>     Attrib V45    1.026200155845168
#>     Attrib V46    0.6341010456250878
#>     Attrib V47    0.32587185081830805
#>     Attrib V48    1.1076008118231606
#>     Attrib V49    1.444081950762363
#>     Attrib V5    0.20819721384505668
#>     Attrib V50    -0.8618783194880746
#>     Attrib V51    1.4025075465320342
#>     Attrib V52    0.6600072929934974
#>     Attrib V53    -0.23098185788468475
#>     Attrib V54    0.48345310479672204
#>     Attrib V55    -0.10718131921378761
#>     Attrib V56    -0.0034023205412033815
#>     Attrib V57    -0.5480277363807483
#>     Attrib V58    0.32398365928565154
#>     Attrib V59    -0.13725000316270983
#>     Attrib V6    -0.027000883791527305
#>     Attrib V60    -0.4890964371889971
#>     Attrib V7    -0.42337195549837214
#>     Attrib V8    -0.1054492324330502
#>     Attrib V9    1.565587021906296
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.5701827289638
#>     Attrib V1    -0.17550366005533855
#>     Attrib V10    -0.8777639317124942
#>     Attrib V11    -0.6384120277873494
#>     Attrib V12    -0.6062276698566904
#>     Attrib V13    -0.34788697463003454
#>     Attrib V14    0.4488318524468774
#>     Attrib V15    0.7738128668683629
#>     Attrib V16    0.449989705507848
#>     Attrib V17    -0.15491933900554908
#>     Attrib V18    0.2049741218485563
#>     Attrib V19    0.5433851904732722
#>     Attrib V2    0.3822097624489904
#>     Attrib V20    0.39617356196294007
#>     Attrib V21    -0.32133601777209153
#>     Attrib V22    -0.443903570293896
#>     Attrib V23    -0.26516351718100944
#>     Attrib V24    -0.39954893828252536
#>     Attrib V25    0.1878345199265116
#>     Attrib V26    0.109769094049867
#>     Attrib V27    -0.2437950174121821
#>     Attrib V28    -0.7366875035820702
#>     Attrib V29    -0.17691791372501364
#>     Attrib V3    0.06507687714719179
#>     Attrib V30    -0.7947312425701428
#>     Attrib V31    0.9439333855556954
#>     Attrib V32    0.20962867434543028
#>     Attrib V33    -0.5882588610804944
#>     Attrib V34    0.012568005405011552
#>     Attrib V35    -0.38302911650086746
#>     Attrib V36    0.3313921079783194
#>     Attrib V37    0.7583945769308688
#>     Attrib V38    -0.23378834757962458
#>     Attrib V39    0.09030207289652081
#>     Attrib V4    -0.21067365242688066
#>     Attrib V40    0.29063556235668797
#>     Attrib V41    0.14609884242805266
#>     Attrib V42    0.46005802020468683
#>     Attrib V43    -0.36263175421764926
#>     Attrib V44    -0.44874612351156923
#>     Attrib V45    -0.3851670019073145
#>     Attrib V46    -0.3152274957574245
#>     Attrib V47    0.04314512665082833
#>     Attrib V48    -0.7725555192142793
#>     Attrib V49    -1.1017372260616471
#>     Attrib V5    -0.18244344883536276
#>     Attrib V50    1.1666346113755521
#>     Attrib V51    -0.8840819494790048
#>     Attrib V52    -0.2874675435673784
#>     Attrib V53    0.22564335008193076
#>     Attrib V54    -0.3014197122357737
#>     Attrib V55    0.7984749063550257
#>     Attrib V56    -0.05893894199612018
#>     Attrib V57    0.23947379269707386
#>     Attrib V58    -0.2628531091747401
#>     Attrib V59    -0.43890502596000264
#>     Attrib V6    0.2755455560525934
#>     Attrib V60    -0.22366355729723816
#>     Attrib V7    0.5975143741004714
#>     Attrib V8    0.45893355338009406
#>     Attrib V9    -1.2687089269607001
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.1310754041523055
#>     Attrib V1    0.418167840819475
#>     Attrib V10    -0.11368978280299498
#>     Attrib V11    -0.11515959214418328
#>     Attrib V12    -0.023925234179212315
#>     Attrib V13    -0.0957379377268262
#>     Attrib V14    -0.027243767823306318
#>     Attrib V15    -0.05211800515252381
#>     Attrib V16    0.11320660753075043
#>     Attrib V17    0.4104678532611543
#>     Attrib V18    0.25186923028873975
#>     Attrib V19    -0.03291988657098145
#>     Attrib V2    -0.03675055102243628
#>     Attrib V20    0.21351081998107455
#>     Attrib V21    0.38408629778059783
#>     Attrib V22    0.22882797231303417
#>     Attrib V23    0.01620496110501911
#>     Attrib V24    0.11287688508634608
#>     Attrib V25    -0.17007985271444934
#>     Attrib V26    -0.5100527292774921
#>     Attrib V27    -0.4956904958887533
#>     Attrib V28    -0.20636556486623822
#>     Attrib V29    -0.4236340268576089
#>     Attrib V3    0.11569087432833591
#>     Attrib V30    -0.01574142255431832
#>     Attrib V31    -0.693053050706933
#>     Attrib V32    -0.16160092543895824
#>     Attrib V33    0.3780099848692331
#>     Attrib V34    -0.06734661082032556
#>     Attrib V35    0.034312629210686424
#>     Attrib V36    -0.25114037388185695
#>     Attrib V37    -0.554692897103075
#>     Attrib V38    0.18285919851649438
#>     Attrib V39    0.2278492989103947
#>     Attrib V4    0.15655312584506723
#>     Attrib V40    -0.033331195705465375
#>     Attrib V41    -0.15934064104148257
#>     Attrib V42    -0.049610625781543904
#>     Attrib V43    0.16923259466168988
#>     Attrib V44    0.13609697260336417
#>     Attrib V45    0.10229953157387957
#>     Attrib V46    0.02142636888246301
#>     Attrib V47    -0.1517225898596747
#>     Attrib V48    0.29310637656690813
#>     Attrib V49    0.3413095645570689
#>     Attrib V5    0.2083294638950761
#>     Attrib V50    -0.5419692020481504
#>     Attrib V51    0.21849134760887962
#>     Attrib V52    -0.042737039046153974
#>     Attrib V53    0.22471388216404128
#>     Attrib V54    0.38238960856950904
#>     Attrib V55    -0.37871209177243537
#>     Attrib V56    0.36024950119703086
#>     Attrib V57    0.2028731660406064
#>     Attrib V58    0.22399055379632035
#>     Attrib V59    0.5256734448936775
#>     Attrib V6    -0.007968233461905776
#>     Attrib V60    0.39139605740678735
#>     Attrib V7    -0.09805977148466583
#>     Attrib V8    -0.2591842908091513
#>     Attrib V9    0.32063217440103686
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.3129918685502978
#>     Attrib V1    0.7120282373428747
#>     Attrib V10    -0.28151612605773557
#>     Attrib V11    -0.23381938953943698
#>     Attrib V12    -0.2798787043070047
#>     Attrib V13    -0.08416311582722265
#>     Attrib V14    0.14180016335806084
#>     Attrib V15    0.0914160336151671
#>     Attrib V16    0.2815928712043405
#>     Attrib V17    0.5295660453812477
#>     Attrib V18    0.3223911303687354
#>     Attrib V19    0.07146320140057155
#>     Attrib V2    0.08698254418357493
#>     Attrib V20    0.40247734832694904
#>     Attrib V21    0.7890526601839464
#>     Attrib V22    0.5578037780278687
#>     Attrib V23    0.11042457178773586
#>     Attrib V24    0.0852411771259135
#>     Attrib V25    -0.5405288082412372
#>     Attrib V26    -0.8411031694215032
#>     Attrib V27    -0.6940854044917728
#>     Attrib V28    -0.3279833341794004
#>     Attrib V29    -0.49133133858658334
#>     Attrib V3    0.21655946951077923
#>     Attrib V30    -0.1111865597286647
#>     Attrib V31    -1.0908202974772685
#>     Attrib V32    -0.3521606402675747
#>     Attrib V33    0.5226996307418831
#>     Attrib V34    -0.2640988949476133
#>     Attrib V35    -0.14102170690551918
#>     Attrib V36    -0.4386567906587627
#>     Attrib V37    -0.8219330087244119
#>     Attrib V38    0.20839464520448386
#>     Attrib V39    0.36837461230354596
#>     Attrib V4    0.2765486817310527
#>     Attrib V40    0.04352828710673262
#>     Attrib V41    -0.0722950934079875
#>     Attrib V42    0.11068986599166722
#>     Attrib V43    0.38286617606071266
#>     Attrib V44    0.11753556576052147
#>     Attrib V45    0.07381479601862234
#>     Attrib V46    0.07014769007801192
#>     Attrib V47    -0.35608689749324257
#>     Attrib V48    0.27528342052601507
#>     Attrib V49    0.4021957814732149
#>     Attrib V5    0.3163288422406737
#>     Attrib V50    -0.8232232898649916
#>     Attrib V51    0.15211006638027808
#>     Attrib V52    -0.03495717391427055
#>     Attrib V53    0.5037894976382602
#>     Attrib V54    0.48889904267975776
#>     Attrib V55    -0.6589401184846443
#>     Attrib V56    0.5292139674176195
#>     Attrib V57    0.3501780400341106
#>     Attrib V58    0.40888582945509044
#>     Attrib V59    0.969007274357189
#>     Attrib V6    0.041862388712481095
#>     Attrib V60    0.5824449554799869
#>     Attrib V7    0.04127975088995974
#>     Attrib V8    -0.24309579560754008
#>     Attrib V9    0.4217827536618172
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.11980429310589612
#>     Attrib V1    0.5298729308212926
#>     Attrib V10    -0.24224700944236363
#>     Attrib V11    -0.197575938066878
#>     Attrib V12    -0.08075717721302007
#>     Attrib V13    0.0961465639178609
#>     Attrib V14    0.126292750554473
#>     Attrib V15    0.028928759123495164
#>     Attrib V16    0.15692624305551706
#>     Attrib V17    0.44882330675477544
#>     Attrib V18    0.3180303496443765
#>     Attrib V19    0.04007459778266867
#>     Attrib V2    -0.007821440192534428
#>     Attrib V20    0.30112602435084496
#>     Attrib V21    0.5752840943180829
#>     Attrib V22    0.403225265204623
#>     Attrib V23    0.18124462394022153
#>     Attrib V24    0.2587002222055585
#>     Attrib V25    -0.1458018584188011
#>     Attrib V26    -0.5720563959349859
#>     Attrib V27    -0.5166175256123369
#>     Attrib V28    -0.3356459123456684
#>     Attrib V29    -0.5157530621672245
#>     Attrib V3    0.26319846240016787
#>     Attrib V30    -0.13176241760935864
#>     Attrib V31    -0.8331363597128091
#>     Attrib V32    -0.2262436626296261
#>     Attrib V33    0.37860294560430235
#>     Attrib V34    -0.17981330531819054
#>     Attrib V35    -0.10663640939604609
#>     Attrib V36    -0.3746049313829597
#>     Attrib V37    -0.6898841475278341
#>     Attrib V38    0.08229865546932183
#>     Attrib V39    0.3060353841143629
#>     Attrib V4    0.2476042430014736
#>     Attrib V40    0.03379304121937928
#>     Attrib V41    -0.0039019414201058784
#>     Attrib V42    0.11473718356945897
#>     Attrib V43    0.23112518857027267
#>     Attrib V44    0.11061712824513247
#>     Attrib V45    -0.02028474329824192
#>     Attrib V46    0.013660686660548978
#>     Attrib V47    -0.24075956192174114
#>     Attrib V48    0.19707642828528746
#>     Attrib V49    0.36749228116466603
#>     Attrib V5    0.32393038634076843
#>     Attrib V50    -0.6957398098719986
#>     Attrib V51    0.14086386619021116
#>     Attrib V52    -0.057417711564713175
#>     Attrib V53    0.43158146052743995
#>     Attrib V54    0.46047054956188666
#>     Attrib V55    -0.4814449477042661
#>     Attrib V56    0.4357511976365718
#>     Attrib V57    0.25024645864589123
#>     Attrib V58    0.307946876159265
#>     Attrib V59    0.8724994913926065
#>     Attrib V6    0.10971164138109711
#>     Attrib V60    0.5900056667401978
#>     Attrib V7    0.07649572271618875
#>     Attrib V8    -0.2618111386416826
#>     Attrib V9    0.3134296348457086
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.23816667411684914
#>     Attrib V1    0.7060424267490142
#>     Attrib V10    -0.19441062275431778
#>     Attrib V11    -0.16689561369471057
#>     Attrib V12    -0.11766131788427507
#>     Attrib V13    -0.08719987568938005
#>     Attrib V14    0.017374900958179458
#>     Attrib V15    0.08106875122485871
#>     Attrib V16    0.178924066210983
#>     Attrib V17    0.5031526129843681
#>     Attrib V18    0.31534887433333664
#>     Attrib V19    0.003059191830740548
#>     Attrib V2    0.035455640810937224
#>     Attrib V20    0.33921163796748127
#>     Attrib V21    0.6330559015911802
#>     Attrib V22    0.4104576594580989
#>     Attrib V23    0.07816338888543356
#>     Attrib V24    0.11806275920923681
#>     Attrib V25    -0.3345449889621578
#>     Attrib V26    -0.6617127206829225
#>     Attrib V27    -0.7398032798430431
#>     Attrib V28    -0.48877918293943573
#>     Attrib V29    -0.7158718450043621
#>     Attrib V3    0.17167884717552817
#>     Attrib V30    -0.11931796122627177
#>     Attrib V31    -0.8869985000102103
#>     Attrib V32    -0.29807652467185236
#>     Attrib V33    0.48037565448855357
#>     Attrib V34    -0.18116161353296847
#>     Attrib V35    -0.004952416778790692
#>     Attrib V36    -0.39271207221935595
#>     Attrib V37    -0.725067485990987
#>     Attrib V38    0.12807448530661986
#>     Attrib V39    0.3370313116791804
#>     Attrib V4    0.19336945919552534
#>     Attrib V40    0.011921399423214806
#>     Attrib V41    -0.12304648808012465
#>     Attrib V42    -0.009479026149873854
#>     Attrib V43    0.23906124465285386
#>     Attrib V44    0.14146063043733192
#>     Attrib V45    0.004701029935145814
#>     Attrib V46    0.012481863149223602
#>     Attrib V47    -0.30887370159544847
#>     Attrib V48    0.34035060208315204
#>     Attrib V49    0.4503985376374307
#>     Attrib V5    0.18922739569328054
#>     Attrib V50    -0.6934126083273763
#>     Attrib V51    0.11212462282828661
#>     Attrib V52    -0.08902933364726212
#>     Attrib V53    0.3487591673154796
#>     Attrib V54    0.5268660066161788
#>     Attrib V55    -0.49221492304468406
#>     Attrib V56    0.5110141750643941
#>     Attrib V57    0.2820782771710401
#>     Attrib V58    0.33305458089713075
#>     Attrib V59    0.8423366637692539
#>     Attrib V6    0.011149562174996117
#>     Attrib V60    0.6176361546783388
#>     Attrib V7    0.03545108892135051
#>     Attrib V8    -0.32718424044277566
#>     Attrib V9    0.36487541288621433
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.5410845458654384
#>     Attrib V1    -0.25348717264334314
#>     Attrib V10    -1.0090339103958645
#>     Attrib V11    -0.8037765732033756
#>     Attrib V12    -0.5983411144195496
#>     Attrib V13    -0.49705417530996715
#>     Attrib V14    0.3675087900578186
#>     Attrib V15    0.9661228534612923
#>     Attrib V16    0.5006310593609565
#>     Attrib V17    -0.1581111642334044
#>     Attrib V18    0.1416998945369846
#>     Attrib V19    0.5383044422214192
#>     Attrib V2    0.3223691755943172
#>     Attrib V20    0.26534365574049984
#>     Attrib V21    -0.5703529118828177
#>     Attrib V22    -0.5929085402026978
#>     Attrib V23    -0.47621294241678863
#>     Attrib V24    -0.4399093530185285
#>     Attrib V25    0.2874021462774824
#>     Attrib V26    0.14405740445431064
#>     Attrib V27    -0.25795878576066766
#>     Attrib V28    -0.731612706432325
#>     Attrib V29    -0.10138449333562861
#>     Attrib V3    0.05903016788814088
#>     Attrib V30    -0.9726431420056766
#>     Attrib V31    1.1085233492366573
#>     Attrib V32    0.37172788558597153
#>     Attrib V33    -0.7038377360664847
#>     Attrib V34    0.10440348150177597
#>     Attrib V35    -0.3800608656232946
#>     Attrib V36    0.520834827367449
#>     Attrib V37    1.0367130020431194
#>     Attrib V38    -0.23735477780321554
#>     Attrib V39    0.12985324548731725
#>     Attrib V4    -0.19006926695747442
#>     Attrib V40    0.3281978917003946
#>     Attrib V41    0.13354907406042185
#>     Attrib V42    0.41014354389920327
#>     Attrib V43    -0.5308939080618582
#>     Attrib V44    -0.6657643939655763
#>     Attrib V45    -0.532717153895529
#>     Attrib V46    -0.30886115132063185
#>     Attrib V47    0.08349382678546108
#>     Attrib V48    -0.8055595753887443
#>     Attrib V49    -1.2933718687019264
#>     Attrib V5    -0.15843132266698426
#>     Attrib V50    1.3391483162953144
#>     Attrib V51    -1.0472218991790587
#>     Attrib V52    -0.45326004390381514
#>     Attrib V53    0.21409902007533455
#>     Attrib V54    -0.36048731415057467
#>     Attrib V55    0.8698620603584287
#>     Attrib V56    -0.05151562252728155
#>     Attrib V57    0.387952182847161
#>     Attrib V58    -0.3553949325675554
#>     Attrib V59    -0.3099404694689006
#>     Attrib V6    0.2961516972367663
#>     Attrib V60    0.09247007419321324
#>     Attrib V7    0.7870314355040638
#>     Attrib V8    0.4191558500297009
#>     Attrib V9    -1.5121214678445254
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.14123848681733406
#>     Attrib V1    0.1013044903928994
#>     Attrib V10    0.029040335962488815
#>     Attrib V11    -0.01013284350264481
#>     Attrib V12    0.01842554744142154
#>     Attrib V13    0.04604789385758663
#>     Attrib V14    0.031148475660829577
#>     Attrib V15    0.012228314486263684
#>     Attrib V16    0.07021360822117856
#>     Attrib V17    0.07729153647641451
#>     Attrib V18    0.039994532298016604
#>     Attrib V19    -0.05734067923308891
#>     Attrib V2    0.03214441858029987
#>     Attrib V20    -0.09081265218836569
#>     Attrib V21    -0.08925958208110274
#>     Attrib V22    -0.11292793076486916
#>     Attrib V23    -0.1437713195486185
#>     Attrib V24    -0.025274733183580173
#>     Attrib V25    -0.015315346851651061
#>     Attrib V26    -0.11466981330424107
#>     Attrib V27    -0.0988379775058004
#>     Attrib V28    -0.01479746496638619
#>     Attrib V29    -0.09007387649631536
#>     Attrib V3    0.13102083999027814
#>     Attrib V30    -0.06306658620828255
#>     Attrib V31    -0.10339782040314106
#>     Attrib V32    0.025496841182363783
#>     Attrib V33    0.04346800228175389
#>     Attrib V34    0.011098875845687091
#>     Attrib V35    0.011294624553581429
#>     Attrib V36    -0.03293712617939128
#>     Attrib V37    -0.02206218333366267
#>     Attrib V38    0.03589460642276735
#>     Attrib V39    0.0661092361863421
#>     Attrib V4    0.13107439986719624
#>     Attrib V40    0.003976084181798918
#>     Attrib V41    0.014017523538067823
#>     Attrib V42    -0.005959658692179082
#>     Attrib V43    -0.023264060814813903
#>     Attrib V44    -0.028089079410490114
#>     Attrib V45    0.02469523339284811
#>     Attrib V46    0.05578702820150238
#>     Attrib V47    0.031140898298797168
#>     Attrib V48    0.0741818361866174
#>     Attrib V49    0.055601376321016464
#>     Attrib V5    0.11321675087313705
#>     Attrib V50    0.008905459928353081
#>     Attrib V51    0.14049697785120627
#>     Attrib V52    0.08723347985073815
#>     Attrib V53    0.12212753428440526
#>     Attrib V54    0.04750797952469533
#>     Attrib V55    0.05348065772713259
#>     Attrib V56    0.12306381521091735
#>     Attrib V57    0.14176412637527835
#>     Attrib V58    0.13069463722886615
#>     Attrib V59    0.10581718603728532
#>     Attrib V6    0.06599456246992481
#>     Attrib V60    0.18343756945439277
#>     Attrib V7    0.045353965752736605
#>     Attrib V8    -0.052303764694485645
#>     Attrib V9    0.11343690894348675
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.21296982062136388
#>     Attrib V1    -0.1575190175281137
#>     Attrib V10    -0.11287341613242997
#>     Attrib V11    -0.12102037775793746
#>     Attrib V12    -0.19880092798347732
#>     Attrib V13    -0.1147030663982102
#>     Attrib V14    0.1345374163295664
#>     Attrib V15    0.3216521663737681
#>     Attrib V16    0.19386970470327533
#>     Attrib V17    -0.002685730977152394
#>     Attrib V18    0.11015821407561792
#>     Attrib V19    0.24433078595074142
#>     Attrib V2    0.1725324637288835
#>     Attrib V20    0.12050542111605758
#>     Attrib V21    -0.1200880874700782
#>     Attrib V22    -0.08891509397644633
#>     Attrib V23    -0.11289058134546504
#>     Attrib V24    -0.1916596590809256
#>     Attrib V25    -0.01225091013078122
#>     Attrib V26    0.019613970853138964
#>     Attrib V27    -0.024180519415676595
#>     Attrib V28    -0.23897669120571965
#>     Attrib V29    -0.09477454431508336
#>     Attrib V3    -0.01380055953976267
#>     Attrib V30    -0.26632148653851306
#>     Attrib V31    0.39470102604565593
#>     Attrib V32    0.1168008463273042
#>     Attrib V33    -0.16368342009691147
#>     Attrib V34    -0.014060920361818156
#>     Attrib V35    -0.06849467271518389
#>     Attrib V36    0.15299312433291318
#>     Attrib V37    0.32751096988918993
#>     Attrib V38    -0.07115660918535045
#>     Attrib V39    -0.0430913391081235
#>     Attrib V4    -0.029371516124304577
#>     Attrib V40    0.015336410933728818
#>     Attrib V41    0.060254907779063435
#>     Attrib V42    0.0616505704333045
#>     Attrib V43    -0.18039051252042193
#>     Attrib V44    -0.21538434485872174
#>     Attrib V45    -0.1832283957483075
#>     Attrib V46    -0.17455077023510795
#>     Attrib V47    -0.014240406058025038
#>     Attrib V48    -0.22768306492023568
#>     Attrib V49    -0.4429440880822406
#>     Attrib V5    -0.030741880181837784
#>     Attrib V50    0.4609295500273401
#>     Attrib V51    -0.2123716918224543
#>     Attrib V52    -0.021690679679880583
#>     Attrib V53    -0.04053057943481382
#>     Attrib V54    -0.1732753197405199
#>     Attrib V55    0.38251276406644674
#>     Attrib V56    -0.10156220134951692
#>     Attrib V57    0.1251572135317219
#>     Attrib V58    -0.16421350522079373
#>     Attrib V59    -0.3027302685810222
#>     Attrib V6    0.12374840932367613
#>     Attrib V60    -0.11024389478286188
#>     Attrib V7    0.17546039552568954
#>     Attrib V8    0.2437631064321967
#>     Attrib V9    -0.3311574966311154
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    0.050812774431054974
#>     Attrib V1    0.35318764002443365
#>     Attrib V10    -0.04176097219820338
#>     Attrib V11    -0.06359850241187351
#>     Attrib V12    -0.01684735596958439
#>     Attrib V13    -0.005627217648763793
#>     Attrib V14    0.029892629312366324
#>     Attrib V15    -0.02373593382375423
#>     Attrib V16    0.07660405509906688
#>     Attrib V17    0.22708807555899913
#>     Attrib V18    0.2059627004327909
#>     Attrib V19    -0.09882997237487677
#>     Attrib V2    0.022995018104218123
#>     Attrib V20    0.0868780475820569
#>     Attrib V21    0.2695394454230313
#>     Attrib V22    0.13573155581151095
#>     Attrib V23    -0.019498747901054422
#>     Attrib V24    0.07728090132277025
#>     Attrib V25    -0.07849732750228958
#>     Attrib V26    -0.28980622959426366
#>     Attrib V27    -0.3397734084428218
#>     Attrib V28    -0.18563961067609527
#>     Attrib V29    -0.31477704921795874
#>     Attrib V3    0.1858252488384654
#>     Attrib V30    -0.06421460846960149
#>     Attrib V31    -0.4904266759382879
#>     Attrib V32    -0.12457164437723808
#>     Attrib V33    0.25837461727390737
#>     Attrib V34    -0.04595632399395667
#>     Attrib V35    -0.009967501695768271
#>     Attrib V36    -0.12401065029637473
#>     Attrib V37    -0.38632303962994985
#>     Attrib V38    0.07774663011805884
#>     Attrib V39    0.19436222118184934
#>     Attrib V4    0.1312124752378609
#>     Attrib V40    -0.034741236963644805
#>     Attrib V41    -0.11882937086998736
#>     Attrib V42    -0.07167699877955959
#>     Attrib V43    0.08644665770621823
#>     Attrib V44    0.0893956784241676
#>     Attrib V45    -0.00899868743467255
#>     Attrib V46    0.004079950525558216
#>     Attrib V47    -0.0902426614958334
#>     Attrib V48    0.2034226795069771
#>     Attrib V49    0.28782236993379184
#>     Attrib V5    0.16178294693277784
#>     Attrib V50    -0.4428749972251455
#>     Attrib V51    0.17957051874045596
#>     Attrib V52    -0.04032970088766347
#>     Attrib V53    0.18202370264238252
#>     Attrib V54    0.20886993060850553
#>     Attrib V55    -0.2337675171596089
#>     Attrib V56    0.27622641434480955
#>     Attrib V57    0.12082308943250765
#>     Attrib V58    0.16351354488724623
#>     Attrib V59    0.46717137180055507
#>     Attrib V6    -0.02264862781305685
#>     Attrib V60    0.3781278094371603
#>     Attrib V7    0.02726835579147827
#>     Attrib V8    -0.17824411874777815
#>     Attrib V9    0.24310750182894522
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.23534890149143892
#>     Attrib V1    0.432476157449722
#>     Attrib V10    -0.17256673611306142
#>     Attrib V11    -0.08618679695616026
#>     Attrib V12    0.1726107013278103
#>     Attrib V13    0.18272594210319432
#>     Attrib V14    -0.002734099369720107
#>     Attrib V15    -0.2089936406548191
#>     Attrib V16    0.03822438256788739
#>     Attrib V17    0.4934399976142773
#>     Attrib V18    0.3430319579741059
#>     Attrib V19    0.02250432710693782
#>     Attrib V2    -0.12989443383757562
#>     Attrib V20    0.13381941285402782
#>     Attrib V21    0.6811849078132702
#>     Attrib V22    0.7737815446273357
#>     Attrib V23    0.5470889299339683
#>     Attrib V24    0.6500593966266475
#>     Attrib V25    0.05089528675647684
#>     Attrib V26    -0.4137939712163194
#>     Attrib V27    -0.3780659706640912
#>     Attrib V28    -0.09139387248294141
#>     Attrib V29    -0.6132838595866444
#>     Attrib V3    0.15477670024431886
#>     Attrib V30    0.09177649462366082
#>     Attrib V31    -0.8038841556146651
#>     Attrib V32    -0.1607041294975629
#>     Attrib V33    0.6424964466087426
#>     Attrib V34    -0.33103435580096574
#>     Attrib V35    -0.13786642066848587
#>     Attrib V36    -0.6601225215461087
#>     Attrib V37    -1.2686886898689962
#>     Attrib V38    -0.05973980458347691
#>     Attrib V39    0.16011342745033852
#>     Attrib V4    0.351952198959432
#>     Attrib V40    -0.05082641301716688
#>     Attrib V41    -0.00953846907052498
#>     Attrib V42    0.21518623474058715
#>     Attrib V43    0.5417937462225972
#>     Attrib V44    0.2697805052703436
#>     Attrib V45    0.045514695149841855
#>     Attrib V46    -0.016997462704265227
#>     Attrib V47    -0.45001046683245305
#>     Attrib V48    0.219315368779292
#>     Attrib V49    0.5470368788108776
#>     Attrib V5    0.4673760339595098
#>     Attrib V50    -1.1871647272510333
#>     Attrib V51    0.3376623386613873
#>     Attrib V52    0.13240412409187186
#>     Attrib V53    0.5364269386223172
#>     Attrib V54    0.6472210493951662
#>     Attrib V55    -0.6994383382532057
#>     Attrib V56    0.46190643693532824
#>     Attrib V57    0.002700673231251938
#>     Attrib V58    0.49971232478354066
#>     Attrib V59    0.950764001226177
#>     Attrib V6    0.0717987241756719
#>     Attrib V60    0.5409932793973885
#>     Attrib V7    -0.08900227655314431
#>     Attrib V8    -0.2975550140413285
#>     Attrib V9    0.6351620568817129
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.3731804888490654
#>     Attrib V1    0.8117465420266178
#>     Attrib V10    -0.3913057336551574
#>     Attrib V11    -0.17701080628925484
#>     Attrib V12    0.06100798128046193
#>     Attrib V13    0.15330702600879875
#>     Attrib V14    0.19432820606542597
#>     Attrib V15    0.1047816473151875
#>     Attrib V16    0.398282055770082
#>     Attrib V17    0.7764024870863326
#>     Attrib V18    0.5606315656982064
#>     Attrib V19    0.1312780648321962
#>     Attrib V2    0.032320573013830414
#>     Attrib V20    0.3696391888777348
#>     Attrib V21    1.017172053144926
#>     Attrib V22    0.8673253838582604
#>     Attrib V23    0.33050621354619314
#>     Attrib V24    0.16354266347403776
#>     Attrib V25    -0.7597619030350261
#>     Attrib V26    -1.1636483896744858
#>     Attrib V27    -0.35014626765611234
#>     Attrib V28    0.40225296039749975
#>     Attrib V29    0.1377896515705367
#>     Attrib V3    0.0857852367297874
#>     Attrib V30    0.580635472947548
#>     Attrib V31    -1.0891744213026968
#>     Attrib V32    -0.5978914734509946
#>     Attrib V33    0.37654203617420146
#>     Attrib V34    -0.6383007475915858
#>     Attrib V35    -0.27753457909497126
#>     Attrib V36    -0.5683127320890444
#>     Attrib V37    -1.1491210877382294
#>     Attrib V38    0.2630133713330962
#>     Attrib V39    0.4641352233970802
#>     Attrib V4    0.2751933558251451
#>     Attrib V40    0.021922152788615007
#>     Attrib V41    -0.08429256490102996
#>     Attrib V42    -0.018676937005500042
#>     Attrib V43    0.4644073901393085
#>     Attrib V44    0.31539120966594814
#>     Attrib V45    0.0234702430852859
#>     Attrib V46    -0.13854655874109836
#>     Attrib V47    -0.5798025275080758
#>     Attrib V48    0.19568520435171896
#>     Attrib V49    0.439449883589025
#>     Attrib V5    0.3651467765968303
#>     Attrib V50    -1.0493757033996876
#>     Attrib V51    0.2908488549571105
#>     Attrib V52    -0.048562260539137606
#>     Attrib V53    0.3804825066473577
#>     Attrib V54    0.7486683241048012
#>     Attrib V55    -0.7153151257688578
#>     Attrib V56    0.535451249356797
#>     Attrib V57    0.0934555849890697
#>     Attrib V58    0.3937960457863647
#>     Attrib V59    1.3234908869381727
#>     Attrib V6    0.12340304283471976
#>     Attrib V60    0.9577629226350303
#>     Attrib V7    0.2022523665524842
#>     Attrib V8    -0.4813751521456962
#>     Attrib V9    0.34305784587407284
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.40970743777235064
#>     Attrib V1    -0.18031580267724595
#>     Attrib V10    -1.1886980238156004
#>     Attrib V11    -0.9589927637570885
#>     Attrib V12    -0.6052271861379315
#>     Attrib V13    -0.5709592740675974
#>     Attrib V14    0.3673926928563407
#>     Attrib V15    0.9780270561009194
#>     Attrib V16    0.5166927223991687
#>     Attrib V17    -0.15359400098530945
#>     Attrib V18    0.18879167068201302
#>     Attrib V19    0.4731814191534745
#>     Attrib V2    0.3126750068025842
#>     Attrib V20    0.19032864390104448
#>     Attrib V21    -0.5749464660584966
#>     Attrib V22    -0.719226473992578
#>     Attrib V23    -0.5716716704681611
#>     Attrib V24    -0.4189777791219135
#>     Attrib V25    0.3822257979647615
#>     Attrib V26    0.013328477092136961
#>     Attrib V27    -0.18858885512874574
#>     Attrib V28    -0.7300026849825484
#>     Attrib V29    -0.20060851875865443
#>     Attrib V3    0.04450229612304412
#>     Attrib V30    -1.1613101185344352
#>     Attrib V31    1.097976340714233
#>     Attrib V32    0.34090769054612824
#>     Attrib V33    -0.7487293040453792
#>     Attrib V34    0.01079952926835346
#>     Attrib V35    -0.4520602246942358
#>     Attrib V36    0.5949429588356003
#>     Attrib V37    1.1569526110554096
#>     Attrib V38    -0.20888688642471223
#>     Attrib V39    0.1785354644486013
#>     Attrib V4    -0.08662431661992961
#>     Attrib V40    0.5085575671092244
#>     Attrib V41    0.28747627430616124
#>     Attrib V42    0.3993704463047244
#>     Attrib V43    -0.6115989759429739
#>     Attrib V44    -0.7936573035680591
#>     Attrib V45    -0.8120892760169541
#>     Attrib V46    -0.4795077300741998
#>     Attrib V47    8.725263727662851E-4
#>     Attrib V48    -0.8299857177768366
#>     Attrib V49    -1.4804348869006105
#>     Attrib V5    -0.022866236394214468
#>     Attrib V50    1.2487761116802794
#>     Attrib V51    -1.2206976760259929
#>     Attrib V52    -0.4769713266240252
#>     Attrib V53    0.37386157301541123
#>     Attrib V54    -0.31665193464025493
#>     Attrib V55    0.6307861614180196
#>     Attrib V56    -0.14757871667560823
#>     Attrib V57    0.6568226691177247
#>     Attrib V58    -0.5112494906316551
#>     Attrib V59    0.012215514052844455
#>     Attrib V6    0.3575171363079584
#>     Attrib V60    0.5641164210834554
#>     Attrib V7    0.9913438667128194
#>     Attrib V8    0.20359089317599705
#>     Attrib V9    -1.7220875749343898
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.14057105249670068
#>     Attrib V1    0.5574152656094016
#>     Attrib V10    -0.17617585678502398
#>     Attrib V11    -0.18226612448417157
#>     Attrib V12    -0.11086287896613808
#>     Attrib V13    -0.08413347823881585
#>     Attrib V14    0.08578256990249614
#>     Attrib V15    0.056532937298719
#>     Attrib V16    0.2253582611545445
#>     Attrib V17    0.3962800987394131
#>     Attrib V18    0.25201999319783547
#>     Attrib V19    -0.013254219432772166
#>     Attrib V2    0.08014486545470118
#>     Attrib V20    0.2465892948141921
#>     Attrib V21    0.40131091157153154
#>     Attrib V22    0.19729769382238033
#>     Attrib V23    -0.08183050768406386
#>     Attrib V24    0.09869490250866195
#>     Attrib V25    -0.2564333038151294
#>     Attrib V26    -0.5508875887251935
#>     Attrib V27    -0.599127211453264
#>     Attrib V28    -0.42250729533404013
#>     Attrib V29    -0.45884935881177363
#>     Attrib V3    0.17049236600434736
#>     Attrib V30    -0.16139340886588247
#>     Attrib V31    -0.6125839894582191
#>     Attrib V32    -0.1906976864085652
#>     Attrib V33    0.2783557235849713
#>     Attrib V34    -0.13525540492799587
#>     Attrib V35    -0.02804817020933687
#>     Attrib V36    -0.24037266627057846
#>     Attrib V37    -0.4666800872742263
#>     Attrib V38    0.0972001590880922
#>     Attrib V39    0.21773477035160013
#>     Attrib V4    0.19068911405493758
#>     Attrib V40    0.029680512498374542
#>     Attrib V41    -0.12588493150771918
#>     Attrib V42    -0.031998865640128805
#>     Attrib V43    0.19205323281012096
#>     Attrib V44    0.04488852559409874
#>     Attrib V45    -0.04663963462944795
#>     Attrib V46    0.013715842225204994
#>     Attrib V47    -0.2552041173333154
#>     Attrib V48    0.22519573113618618
#>     Attrib V49    0.28646929599701426
#>     Attrib V5    0.20945022884420225
#>     Attrib V50    -0.48181519107053833
#>     Attrib V51    0.06970282876148214
#>     Attrib V52    -0.06371369108667234
#>     Attrib V53    0.29108152999280934
#>     Attrib V54    0.38925873330004446
#>     Attrib V55    -0.3146746331992642
#>     Attrib V56    0.41407219826689573
#>     Attrib V57    0.2734219191690121
#>     Attrib V58    0.27445165959860574
#>     Attrib V59    0.6285183221203096
#>     Attrib V6    0.06028449148386818
#>     Attrib V60    0.49097350328514894
#>     Attrib V7    0.05294917903121467
#>     Attrib V8    -0.31604198749598217
#>     Attrib V9    0.21659870251283062
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.30786411596254926
#>     Attrib V1    0.7123441865016212
#>     Attrib V10    -0.32074239504449353
#>     Attrib V11    -0.19876182512649856
#>     Attrib V12    -0.013083671020221494
#>     Attrib V13    0.13391518872669936
#>     Attrib V14    0.15378414838965868
#>     Attrib V15    -0.0020882398103502808
#>     Attrib V16    0.15263540239543233
#>     Attrib V17    0.5725520072681823
#>     Attrib V18    0.3785846400481403
#>     Attrib V19    0.045850967706516595
#>     Attrib V2    -0.09889882892633257
#>     Attrib V20    0.32495435478252543
#>     Attrib V21    0.7837731092590785
#>     Attrib V22    0.7341158419752539
#>     Attrib V23    0.41276821187030893
#>     Attrib V24    0.4029882505842985
#>     Attrib V25    -0.26734929457226975
#>     Attrib V26    -0.6614556323458468
#>     Attrib V27    -0.6427472606956688
#>     Attrib V28    -0.34633044832339677
#>     Attrib V29    -0.7243767490374117
#>     Attrib V3    0.2802146162669379
#>     Attrib V30    -0.13056084303436205
#>     Attrib V31    -1.0529004127375603
#>     Attrib V32    -0.3513472153637237
#>     Attrib V33    0.5346952467420267
#>     Attrib V34    -0.37557923305240803
#>     Attrib V35    -0.1878356727870981
#>     Attrib V36    -0.6006921567831707
#>     Attrib V37    -1.0945179235081626
#>     Attrib V38    0.0177146493938941
#>     Attrib V39    0.3081878668624981
#>     Attrib V4    0.3687237737892332
#>     Attrib V40    -0.07152121492784952
#>     Attrib V41    -0.02042918800328173
#>     Attrib V42    0.2523842582953826
#>     Attrib V43    0.5227363570810912
#>     Attrib V44    0.19073005547556465
#>     Attrib V45    0.037142455751828056
#>     Attrib V46    -0.02075427526612134
#>     Attrib V47    -0.37434010261561923
#>     Attrib V48    0.2151190418007294
#>     Attrib V49    0.4441291093818988
#>     Attrib V5    0.4488216772342968
#>     Attrib V50    -1.0240564834518093
#>     Attrib V51    0.190100250512424
#>     Attrib V52    0.016222346447279715
#>     Attrib V53    0.5922458731038857
#>     Attrib V54    0.6802919878007463
#>     Attrib V55    -0.7755602039140171
#>     Attrib V56    0.6190289080948906
#>     Attrib V57    0.1694998092838307
#>     Attrib V58    0.4617203411270784
#>     Attrib V59    1.2108602449577042
#>     Attrib V6    0.13850549068704704
#>     Attrib V60    0.6971687392029835
#>     Attrib V7    0.0543355008328079
#>     Attrib V8    -0.2609742817472954
#>     Attrib V9    0.5205870478147756
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.5872911022991032
#>     Attrib V1    -0.2519000865487869
#>     Attrib V10    -0.23294278797193163
#>     Attrib V11    -0.19582807536583935
#>     Attrib V12    -0.3342766769242793
#>     Attrib V13    -0.2261543264213324
#>     Attrib V14    0.4312555913839282
#>     Attrib V15    0.7039618707912703
#>     Attrib V16    0.35144628851209125
#>     Attrib V17    -0.04778202819188497
#>     Attrib V18    0.10225891033429729
#>     Attrib V19    0.4375098844807876
#>     Attrib V2    0.3154455173335971
#>     Attrib V20    0.33769676819294375
#>     Attrib V21    -0.36594067985854845
#>     Attrib V22    -0.4790309524657452
#>     Attrib V23    -0.24242574815314671
#>     Attrib V24    -0.5447699746651834
#>     Attrib V25    0.021943374678884235
#>     Attrib V26    0.22374313652356662
#>     Attrib V27    0.08519677915250781
#>     Attrib V28    -0.2705962408754827
#>     Attrib V29    -0.09061497900238094
#>     Attrib V3    0.07542100210315762
#>     Attrib V30    -0.7631958034652424
#>     Attrib V31    0.5792416670204891
#>     Attrib V32    0.2786918031368615
#>     Attrib V33    -0.592094231858993
#>     Attrib V34    -0.047342478397639894
#>     Attrib V35    -0.36396581598609473
#>     Attrib V36    0.3156027151475826
#>     Attrib V37    0.6832884820329017
#>     Attrib V38    -0.2411041682229695
#>     Attrib V39    -0.16887704050515234
#>     Attrib V4    0.09498808456478926
#>     Attrib V40    -0.10552652832102448
#>     Attrib V41    -0.1884400659242198
#>     Attrib V42    -0.09153931411638729
#>     Attrib V43    -0.6672664223477429
#>     Attrib V44    -0.6867575251729628
#>     Attrib V45    -0.5733324014685225
#>     Attrib V46    -0.2915894517905988
#>     Attrib V47    0.12168228858277982
#>     Attrib V48    -0.5004886608368025
#>     Attrib V49    -0.7720438091733133
#>     Attrib V5    -0.09579721314702891
#>     Attrib V50    1.1543493531547637
#>     Attrib V51    -0.39066419504469807
#>     Attrib V52    0.12714361475765923
#>     Attrib V53    -0.021480776242580952
#>     Attrib V54    -0.19040869784030984
#>     Attrib V55    0.8838678713389082
#>     Attrib V56    -0.19396693682521252
#>     Attrib V57    0.2925622032288805
#>     Attrib V58    -0.17476981860350826
#>     Attrib V59    -0.5782291061312499
#>     Attrib V6    0.20234451235839676
#>     Attrib V60    -0.18584215471530224
#>     Attrib V7    0.45037398409054225
#>     Attrib V8    0.4254043774289001
#>     Attrib V9    -0.6562511188088075
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.5530936650229153
#>     Attrib V1    -0.08145643873259252
#>     Attrib V10    1.4671989466055864
#>     Attrib V11    1.4511204686242802
#>     Attrib V12    1.297729866150541
#>     Attrib V13    0.943094019067578
#>     Attrib V14    -0.6291046428566958
#>     Attrib V15    -1.396939301700297
#>     Attrib V16    -0.8526342362259646
#>     Attrib V17    -0.18055406657376047
#>     Attrib V18    -0.3629624952151261
#>     Attrib V19    -0.6166958172546045
#>     Attrib V2    -0.24402880601708662
#>     Attrib V20    -0.5531770516170659
#>     Attrib V21    0.4330870444159006
#>     Attrib V22    0.5984335822164124
#>     Attrib V23    0.6597584569874179
#>     Attrib V24    0.8518131437892446
#>     Attrib V25    0.45909662495233455
#>     Attrib V26    0.80065034578843
#>     Attrib V27    0.801378601520819
#>     Attrib V28    0.8835909396400949
#>     Attrib V29    0.09654540025960615
#>     Attrib V3    -0.027994440494166883
#>     Attrib V30    1.0444320795386797
#>     Attrib V31    -0.7667133942304639
#>     Attrib V32    -0.3779773281720126
#>     Attrib V33    0.30468817590242936
#>     Attrib V34    0.2439725190222189
#>     Attrib V35    0.8968484390468863
#>     Attrib V36    -0.35403715237544336
#>     Attrib V37    -1.0232574412317024
#>     Attrib V38    -0.16142700602244456
#>     Attrib V39    -0.30645397258540047
#>     Attrib V4    0.18687326029421739
#>     Attrib V40    -0.11982577007953656
#>     Attrib V41    0.10556958682387312
#>     Attrib V42    -0.8706162800148096
#>     Attrib V43    0.26356233921971517
#>     Attrib V44    0.8692831637140447
#>     Attrib V45    1.0597216709162036
#>     Attrib V46    0.5844430207994159
#>     Attrib V47    0.1943260782133463
#>     Attrib V48    1.0601181134166573
#>     Attrib V49    1.5106644167985666
#>     Attrib V5    0.26220655778698143
#>     Attrib V50    -1.0118461258811542
#>     Attrib V51    1.3632354131870663
#>     Attrib V52    0.6671278691067584
#>     Attrib V53    -0.3650935605361337
#>     Attrib V54    0.4055319331794492
#>     Attrib V55    -0.20415558762470346
#>     Attrib V56    -0.0435281900173699
#>     Attrib V57    -0.5309887434801183
#>     Attrib V58    0.39119282432072
#>     Attrib V59    -0.13079500751056974
#>     Attrib V6    -0.12365881439990013
#>     Attrib V60    -0.4879526483506527
#>     Attrib V7    -0.5605990911341039
#>     Attrib V8    -0.1557156449893354
#>     Attrib V9    1.6871844049593852
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.19067386149275448
#>     Attrib V1    0.0855693404511768
#>     Attrib V10    -0.0010551280776088985
#>     Attrib V11    -0.03705227826222906
#>     Attrib V12    0.03155120764456201
#>     Attrib V13    -0.003150533128639131
#>     Attrib V14    0.12325225956451151
#>     Attrib V15    0.04698044698696259
#>     Attrib V16    0.04782414283740146
#>     Attrib V17    0.06908114681207428
#>     Attrib V18    -0.029780213559034024
#>     Attrib V19    -0.01595810849086557
#>     Attrib V2    0.10283289513992899
#>     Attrib V20    -0.0552253379604255
#>     Attrib V21    -0.07254058140292005
#>     Attrib V22    -0.12226166353949393
#>     Attrib V23    -0.11657754975026013
#>     Attrib V24    -0.08544106047617778
#>     Attrib V25    -0.032443451415458076
#>     Attrib V26    -0.1106920263586105
#>     Attrib V27    -0.059542633698664284
#>     Attrib V28    -0.012886907260878435
#>     Attrib V29    -0.06260064460948296
#>     Attrib V3    0.08347589765750488
#>     Attrib V30    -0.04001383928987404
#>     Attrib V31    -0.04518041618228503
#>     Attrib V32    0.005818669740754287
#>     Attrib V33    0.06775651142920143
#>     Attrib V34    -0.032229007967716
#>     Attrib V35    0.06888152792886472
#>     Attrib V36    0.048172640448528974
#>     Attrib V37    0.046987464553751086
#>     Attrib V38    0.013123502837365143
#>     Attrib V39    0.07412052275686827
#>     Attrib V4    0.14775448417270357
#>     Attrib V40    0.035990229060820396
#>     Attrib V41    0.0044053273077772495
#>     Attrib V42    -0.010067148234700271
#>     Attrib V43    -0.010286804372634172
#>     Attrib V44    0.009491596385635747
#>     Attrib V45    -0.0033582842827827013
#>     Attrib V46    0.006361334031184571
#>     Attrib V47    0.008147175757241778
#>     Attrib V48    0.08856308865602548
#>     Attrib V49    0.031080221310922335
#>     Attrib V5    0.07130365002526354
#>     Attrib V50    0.013805628672786903
#>     Attrib V51    0.05883967196107987
#>     Attrib V52    0.04941240384852481
#>     Attrib V53    0.07047609426431342
#>     Attrib V54    0.035189038340077465
#>     Attrib V55    0.07442652231926201
#>     Attrib V56    0.12050985116065975
#>     Attrib V57    0.15727949814957928
#>     Attrib V58    0.0905131348228335
#>     Attrib V59    0.1286868080087371
#>     Attrib V6    0.10246819456351314
#>     Attrib V60    0.19366802731292976
#>     Attrib V7    0.04211940234555271
#>     Attrib V8    0.03519962732885474
#>     Attrib V9    0.05218740653572048
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.36204690880472323
#>     Attrib V1    0.7126483143203527
#>     Attrib V10    -0.11348120319585549
#>     Attrib V11    -0.10554183544211647
#>     Attrib V12    -0.03629724505499704
#>     Attrib V13    0.08884237455617576
#>     Attrib V14    -0.016781393043935864
#>     Attrib V15    -0.11692374092049525
#>     Attrib V16    0.12375642929781415
#>     Attrib V17    0.48071921947412627
#>     Attrib V18    0.3604958720225389
#>     Attrib V19    -0.040417169219835694
#>     Attrib V2    -0.05189278171424179
#>     Attrib V20    0.24164499204778797
#>     Attrib V21    0.843868387111485
#>     Attrib V22    0.6880760488479004
#>     Attrib V23    0.26646158758336275
#>     Attrib V24    0.407091931246397
#>     Attrib V25    -0.24252472732091904
#>     Attrib V26    -0.5253263526131495
#>     Attrib V27    -0.5588828193511347
#>     Attrib V28    -0.27272632191369456
#>     Attrib V29    -0.6102372693106688
#>     Attrib V3    0.17728122502258822
#>     Attrib V30    0.022576482461186823
#>     Attrib V31    -1.0264646147959204
#>     Attrib V32    -0.3111847297236052
#>     Attrib V33    0.5324248385350097
#>     Attrib V34    -0.2824696878027801
#>     Attrib V35    -0.0823296362285523
#>     Attrib V36    -0.4847860236088762
#>     Attrib V37    -1.0098910613259198
#>     Attrib V38    0.14370814090982548
#>     Attrib V39    0.3421954465326209
#>     Attrib V4    0.25268500432972024
#>     Attrib V40    -0.09556133273131893
#>     Attrib V41    -0.08327408441376359
#>     Attrib V42    0.07551961260206291
#>     Attrib V43    0.3782896492213825
#>     Attrib V44    0.256033968818059
#>     Attrib V45    0.1417256504400508
#>     Attrib V46    -0.01673438169879633
#>     Attrib V47    -0.42333549011093147
#>     Attrib V48    0.36121483605851834
#>     Attrib V49    0.4863196377003549
#>     Attrib V5    0.3264975111969468
#>     Attrib V50    -0.9363613912833406
#>     Attrib V51    0.2823812507375885
#>     Attrib V52    0.002223437709500024
#>     Attrib V53    0.47260699586541494
#>     Attrib V54    0.6270439043648779
#>     Attrib V55    -0.663757108986117
#>     Attrib V56    0.45287382161823314
#>     Attrib V57    0.19047601930073862
#>     Attrib V58    0.4119336902965764
#>     Attrib V59    0.9881255576853554
#>     Attrib V6    0.06299707006612325
#>     Attrib V60    0.5732335879755038
#>     Attrib V7    -0.060547009037393996
#>     Attrib V8    -0.2687053737901125
#>     Attrib V9    0.6165408123877781
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.5204418822434745
#>     Attrib V1    -0.10619176402432544
#>     Attrib V10    -1.7544513917614868
#>     Attrib V11    -1.2043559215963668
#>     Attrib V12    -0.5376513886402358
#>     Attrib V13    -0.7274077711167174
#>     Attrib V14    0.4785553011402075
#>     Attrib V15    1.3726646805971494
#>     Attrib V16    0.86304119139273
#>     Attrib V17    0.16177275420044554
#>     Attrib V18    0.4605026675293641
#>     Attrib V19    0.41415507892866554
#>     Attrib V2    0.3491021173508552
#>     Attrib V20    -0.06485493677520954
#>     Attrib V21    -1.1466605444966744
#>     Attrib V22    -1.1240301956280578
#>     Attrib V23    -0.7420705436294401
#>     Attrib V24    -0.2249792363696966
#>     Attrib V25    0.8073105977735221
#>     Attrib V26    -0.23955805592848023
#>     Attrib V27    -0.405225928512946
#>     Attrib V28    -0.7866693039175611
#>     Attrib V29    -0.12491934576637945
#>     Attrib V3    0.14459716040038645
#>     Attrib V30    -1.219059183568049
#>     Attrib V31    1.378082307645621
#>     Attrib V32    0.471475252184321
#>     Attrib V33    -0.740186456541733
#>     Attrib V34    0.020843435478925126
#>     Attrib V35    -0.6656947064455577
#>     Attrib V36    0.8566842360486332
#>     Attrib V37    1.5902787447054083
#>     Attrib V38    0.16455633429532268
#>     Attrib V39    0.5502097348033315
#>     Attrib V4    -0.0590880569309353
#>     Attrib V40    0.7278086522028324
#>     Attrib V41    0.26953786953363273
#>     Attrib V42    0.6161757189771861
#>     Attrib V43    -0.7992194036851183
#>     Attrib V44    -1.0975174339982197
#>     Attrib V45    -1.0782571997087758
#>     Attrib V46    -0.6191907273305968
#>     Attrib V47    -0.09174848533165933
#>     Attrib V48    -1.163912872807663
#>     Attrib V49    -2.023854237041784
#>     Attrib V5    -0.009148188774094537
#>     Attrib V50    1.1595946984148862
#>     Attrib V51    -1.66922165653491
#>     Attrib V52    -0.6331109563762362
#>     Attrib V53    0.674118061270223
#>     Attrib V54    -0.4525043627595413
#>     Attrib V55    0.504899359291507
#>     Attrib V56    0.017629543653237992
#>     Attrib V57    0.8144461182633054
#>     Attrib V58    -0.8283139023940087
#>     Attrib V59    0.2559854588186642
#>     Attrib V6    0.45099159268976063
#>     Attrib V60    0.9716191327492772
#>     Attrib V7    1.200296487989008
#>     Attrib V8    0.2033172561739919
#>     Attrib V9    -2.2437166073189267
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.10228326926665525
#>     Attrib V1    0.2678623672108325
#>     Attrib V10    -0.03627740400892688
#>     Attrib V11    0.030624706301560223
#>     Attrib V12    0.08166825420736659
#>     Attrib V13    0.019433528387361006
#>     Attrib V14    0.04950411697934285
#>     Attrib V15    -0.050307706279643566
#>     Attrib V16    -0.0314353248756228
#>     Attrib V17    0.15469088107350742
#>     Attrib V18    0.06546438864682977
#>     Attrib V19    -0.16791647655817635
#>     Attrib V2    -0.003696227159540702
#>     Attrib V20    0.02438601083584693
#>     Attrib V21    0.18611250374982077
#>     Attrib V22    0.1035376723743553
#>     Attrib V23    -0.08786332148585758
#>     Attrib V24    0.11432840730966967
#>     Attrib V25    -0.01982861762469928
#>     Attrib V26    -0.24727598508919754
#>     Attrib V27    -0.23762130141797266
#>     Attrib V28    -0.06725965056774652
#>     Attrib V29    -0.12349678639561489
#>     Attrib V3    0.14867243470736888
#>     Attrib V30    -0.002111453851719462
#>     Attrib V31    -0.40602405901553434
#>     Attrib V32    -0.09930756459187584
#>     Attrib V33    0.21572592073783137
#>     Attrib V34    -0.06290771649627674
#>     Attrib V35    0.030654833236029286
#>     Attrib V36    -0.18414818785382156
#>     Attrib V37    -0.2800193828590977
#>     Attrib V38    0.10228407108778977
#>     Attrib V39    0.15992929402968084
#>     Attrib V4    0.12995808063794073
#>     Attrib V40    -0.00979130093221294
#>     Attrib V41    -0.06485968614664757
#>     Attrib V42    -0.14629698288164317
#>     Attrib V43    0.10278686898784149
#>     Attrib V44    0.007055340663552563
#>     Attrib V45    0.09298626308613783
#>     Attrib V46    0.05341163031643127
#>     Attrib V47    -0.06410768198646509
#>     Attrib V48    0.20620810924889657
#>     Attrib V49    0.25151387937010855
#>     Attrib V5    0.12133269879507286
#>     Attrib V50    -0.34834818856836813
#>     Attrib V51    0.18077902599313433
#>     Attrib V52    0.04283393450371745
#>     Attrib V53    0.1212747321019069
#>     Attrib V54    0.21350728159155263
#>     Attrib V55    -0.17071232778483755
#>     Attrib V56    0.23276437396893232
#>     Attrib V57    0.13162082507063205
#>     Attrib V58    0.11745930350055277
#>     Attrib V59    0.3478330118357234
#>     Attrib V6    0.009228389481246078
#>     Attrib V60    0.3034483194131652
#>     Attrib V7    -0.05224423865824249
#>     Attrib V8    -0.2043628864473185
#>     Attrib V9    0.23096304357039296
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.04258019582254023
#>     Attrib V1    0.2305862888465653
#>     Attrib V10    0.06117593397789718
#>     Attrib V11    0.004171223605546822
#>     Attrib V12    0.08370628406495201
#>     Attrib V13    0.07724204730636419
#>     Attrib V14    0.05690395813958986
#>     Attrib V15    0.01628308046868774
#>     Attrib V16    -0.01036662092384738
#>     Attrib V17    0.09077997183304279
#>     Attrib V18    -0.016542601688883333
#>     Attrib V19    -0.16495635386562071
#>     Attrib V2    0.08835308412481994
#>     Attrib V20    -0.09722185807801319
#>     Attrib V21    0.02072661567707241
#>     Attrib V22    -0.06351844057298248
#>     Attrib V23    -0.10700849397838491
#>     Attrib V24    -0.03768661812689632
#>     Attrib V25    -0.020162127151925325
#>     Attrib V26    -0.09317626339016064
#>     Attrib V27    -0.12485074928800355
#>     Attrib V28    -0.01777386316181117
#>     Attrib V29    -0.1570093430703455
#>     Attrib V3    0.11270777983312784
#>     Attrib V30    -9.258157173210001E-4
#>     Attrib V31    -0.15829800936856536
#>     Attrib V32    -0.07018909705484266
#>     Attrib V33    0.06336693097380529
#>     Attrib V34    -0.06339316483591449
#>     Attrib V35    0.04364546816028595
#>     Attrib V36    -0.0809714409787558
#>     Attrib V37    -0.09361165509579934
#>     Attrib V38    0.02962831755342727
#>     Attrib V39    0.13457734911295982
#>     Attrib V4    0.18547203750430782
#>     Attrib V40    0.01952440012902207
#>     Attrib V41    -0.02982382184846952
#>     Attrib V42    -0.06862006858760633
#>     Attrib V43    -0.03109684413286438
#>     Attrib V44    -0.043469636615736926
#>     Attrib V45    0.012465803414442103
#>     Attrib V46    0.025411876040613568
#>     Attrib V47    -0.047033851563973675
#>     Attrib V48    0.1641840707253194
#>     Attrib V49    0.1320178751363545
#>     Attrib V5    0.08824168809924643
#>     Attrib V50    -0.15442139871161004
#>     Attrib V51    0.10814221012193824
#>     Attrib V52    0.04252771159126198
#>     Attrib V53    0.10503902516856774
#>     Attrib V54    0.14303654181044032
#>     Attrib V55    -0.06439200342938259
#>     Attrib V56    0.18810979993707194
#>     Attrib V57    0.1111682487456024
#>     Attrib V58    0.14054452084759006
#>     Attrib V59    0.29147018218638465
#>     Attrib V6    0.03095847818637917
#>     Attrib V60    0.27397042104161873
#>     Attrib V7    -0.017884287105580272
#>     Attrib V8    -0.12664818266176472
#>     Attrib V9    0.11403645237714805
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.0967297544827234
#>     Attrib V1    0.48762895325887945
#>     Attrib V10    -0.19085336610249543
#>     Attrib V11    -0.12489594460609485
#>     Attrib V12    -0.10560831014958638
#>     Attrib V13    0.013425792724396288
#>     Attrib V14    0.12560122370921778
#>     Attrib V15    0.10427206306017305
#>     Attrib V16    0.16815749558026094
#>     Attrib V17    0.3857195552080952
#>     Attrib V18    0.28017242281207216
#>     Attrib V19    0.030427606339931804
#>     Attrib V2    0.11007949089973164
#>     Attrib V20    0.25415917189057297
#>     Attrib V21    0.3385615885491096
#>     Attrib V22    0.2661733899123245
#>     Attrib V23    0.04081665485543856
#>     Attrib V24    0.1760106207630168
#>     Attrib V25    -0.1643335445121088
#>     Attrib V26    -0.4321468832539336
#>     Attrib V27    -0.5576849869472019
#>     Attrib V28    -0.43037883537675353
#>     Attrib V29    -0.5598686514617291
#>     Attrib V3    0.15403019914899743
#>     Attrib V30    -0.214078201380774
#>     Attrib V31    -0.6239095571178839
#>     Attrib V32    -0.23690023460298815
#>     Attrib V33    0.29184656463152714
#>     Attrib V34    -0.09800052084460224
#>     Attrib V35    0.037410626071436234
#>     Attrib V36    -0.2227587480641088
#>     Attrib V37    -0.4476307342314423
#>     Attrib V38    0.15803063666821188
#>     Attrib V39    0.2203713150900631
#>     Attrib V4    0.19515165579614005
#>     Attrib V40    0.02406350830289645
#>     Attrib V41    -0.08606644564726035
#>     Attrib V42    -0.006228733921733832
#>     Attrib V43    0.17120042115802758
#>     Attrib V44    0.08131094256824378
#>     Attrib V45    -0.0128469609913673
#>     Attrib V46    -0.004909434392801187
#>     Attrib V47    -0.19548597110868576
#>     Attrib V48    0.19247895467025214
#>     Attrib V49    0.24449928206992722
#>     Attrib V5    0.18087578224372675
#>     Attrib V50    -0.4751147812861895
#>     Attrib V51    0.07180827176221989
#>     Attrib V52    -0.057317675921316195
#>     Attrib V53    0.3411760553087664
#>     Attrib V54    0.4552635237626287
#>     Attrib V55    -0.25730186210314454
#>     Attrib V56    0.3372447893466735
#>     Attrib V57    0.23080525103142
#>     Attrib V58    0.21142760478450448
#>     Attrib V59    0.6396782038660587
#>     Attrib V6    0.040613068776730196
#>     Attrib V60    0.4886649276075157
#>     Attrib V7    0.07161525798128225
#>     Attrib V8    -0.2113156651367869
#>     Attrib V9    0.2400212841460496
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.07501701771616878
#>     Attrib V1    0.4100702113546775
#>     Attrib V10    -0.1499260106274814
#>     Attrib V11    -0.10284888611219946
#>     Attrib V12    -0.06559598804093435
#>     Attrib V13    -0.06400690887889096
#>     Attrib V14    0.11378609147843953
#>     Attrib V15    0.06790767221129512
#>     Attrib V16    0.13499169479777084
#>     Attrib V17    0.24268947101547386
#>     Attrib V18    0.22280346861083367
#>     Attrib V19    -0.07656403827102251
#>     Attrib V2    0.035510961862178676
#>     Attrib V20    0.1273441989054858
#>     Attrib V21    0.2992650519700397
#>     Attrib V22    0.13841616673784826
#>     Attrib V23    -0.013028639576150119
#>     Attrib V24    0.043001847468512676
#>     Attrib V25    -0.20342338336941324
#>     Attrib V26    -0.3796449752640125
#>     Attrib V27    -0.39374327461860853
#>     Attrib V28    -0.17181179933738724
#>     Attrib V29    -0.2830884573659658
#>     Attrib V3    0.1821760437209373
#>     Attrib V30    -0.03464350092003015
#>     Attrib V31    -0.5454133482855971
#>     Attrib V32    -0.16076384784901523
#>     Attrib V33    0.24333826221701663
#>     Attrib V34    -0.11608093994311094
#>     Attrib V35    -0.016339015499749598
#>     Attrib V36    -0.13067484021187215
#>     Attrib V37    -0.3462472333908791
#>     Attrib V38    0.0679969137170627
#>     Attrib V39    0.20138464349731297
#>     Attrib V4    0.15075403842495716
#>     Attrib V40    -0.035556353853208926
#>     Attrib V41    -0.11561159649109662
#>     Attrib V42    -0.008606515963348648
#>     Attrib V43    0.07113115165510428
#>     Attrib V44    0.08952766545137135
#>     Attrib V45    0.06835442829246925
#>     Attrib V46    0.02718745483766033
#>     Attrib V47    -0.14421014235196855
#>     Attrib V48    0.13636333876916443
#>     Attrib V49    0.2763162145129884
#>     Attrib V5    0.18481761428531515
#>     Attrib V50    -0.41227244059411106
#>     Attrib V51    0.12462619315614316
#>     Attrib V52    0.005096280088586893
#>     Attrib V53    0.2203508513839752
#>     Attrib V54    0.2192168213901143
#>     Attrib V55    -0.26200904857824503
#>     Attrib V56    0.2632358220338506
#>     Attrib V57    0.18173711261343928
#>     Attrib V58    0.24188572172498427
#>     Attrib V59    0.4458259017127062
#>     Attrib V6    0.04469167646222431
#>     Attrib V60    0.33537103082123504
#>     Attrib V7    0.007965283284886918
#>     Attrib V8    -0.16857040466328274
#>     Attrib V9    0.21737722606275528
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
