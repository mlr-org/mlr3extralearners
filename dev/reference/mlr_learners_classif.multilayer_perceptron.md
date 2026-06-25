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
#>     Threshold    -0.29836480239009405
#>     Node 2    2.1511987370936567
#>     Node 3    1.8798586016263878
#>     Node 4    1.4990888391842694
#>     Node 5    -2.319137377732558
#>     Node 6    1.6775701699516645
#>     Node 7    2.447468692339656
#>     Node 8    1.4513746798888214
#>     Node 9    3.689531225659336
#>     Node 10    -1.9425078703154615
#>     Node 11    1.5578532185714402
#>     Node 12    2.2192310054044113
#>     Node 13    0.5895868582585406
#>     Node 14    2.1860084259509724
#>     Node 15    -1.4843527492556772
#>     Node 16    0.9166163866903612
#>     Node 17    0.6143994904364735
#>     Node 18    0.20891369359861411
#>     Node 19    2.6599575811408904
#>     Node 20    1.9938594553061721
#>     Node 21    -2.3360449436585995
#>     Node 22    1.3848388913160061
#>     Node 23    1.705133331452933
#>     Node 24    -1.1289692396862536
#>     Node 25    4.518653860033896
#>     Node 26    -0.8652247664453443
#>     Node 27    1.8162008440607307
#>     Node 28    -3.001768180510293
#>     Node 29    1.3874148039949132
#>     Node 30    0.43000653685379875
#>     Node 31    1.2459707420789214
#>     Node 32    0.13116982602983945
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.3242909927881295
#>     Node 2    -2.1832537525581994
#>     Node 3    -1.850684401805943
#>     Node 4    -1.4745365539680029
#>     Node 5    2.34502275970007
#>     Node 6    -1.6473347848998507
#>     Node 7    -2.4440862402389
#>     Node 8    -1.5058679835240132
#>     Node 9    -3.6969136542168686
#>     Node 10    1.896047479052825
#>     Node 11    -1.5332042286300616
#>     Node 12    -2.2854014259348396
#>     Node 13    -0.5467825913612394
#>     Node 14    -2.114633474786785
#>     Node 15    1.4889874910641567
#>     Node 16    -0.9454848130920734
#>     Node 17    -0.5971444397696665
#>     Node 18    -0.17929490820199576
#>     Node 19    -2.6574525754345792
#>     Node 20    -1.957132842028147
#>     Node 21    2.4069157776865966
#>     Node 22    -1.4421627325285644
#>     Node 23    -1.7327712063488658
#>     Node 24    1.130049474459088
#>     Node 25    -4.516011452629776
#>     Node 26    0.7943573361317002
#>     Node 27    -1.849047243415732
#>     Node 28    2.961134281197212
#>     Node 29    -1.4305420228550316
#>     Node 30    -0.3653030965861282
#>     Node 31    -1.1951225146443134
#>     Node 32    -0.15905244803779814
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.41592997296009226
#>     Attrib V1    0.8959921935794233
#>     Attrib V10    -0.6568616261166705
#>     Attrib V11    0.015701263482516416
#>     Attrib V12    -0.0788991118327466
#>     Attrib V13    -0.1773761464592657
#>     Attrib V14    0.2503574267520353
#>     Attrib V15    0.5736914760371749
#>     Attrib V16    0.21866525992589758
#>     Attrib V17    0.12494843957503926
#>     Attrib V18    0.3798743929847032
#>     Attrib V19    0.0017685517087330507
#>     Attrib V2    0.16635997128464183
#>     Attrib V20    0.36927283087004603
#>     Attrib V21    0.7745574487137444
#>     Attrib V22    0.39164982183386193
#>     Attrib V23    0.42575717265928387
#>     Attrib V24    0.04923960169909726
#>     Attrib V25    -0.8213992882636025
#>     Attrib V26    -0.5851673903480696
#>     Attrib V27    -0.1469458160335853
#>     Attrib V28    -0.08802747932328872
#>     Attrib V29    -0.07472382987917724
#>     Attrib V3    -0.0757253578917639
#>     Attrib V30    0.02007595724391455
#>     Attrib V31    -1.427804301625888
#>     Attrib V32    -0.3865752439372599
#>     Attrib V33    0.30684317684654255
#>     Attrib V34    -0.05614687203726383
#>     Attrib V35    -0.3277752835359889
#>     Attrib V36    -0.6568140356178156
#>     Attrib V37    -0.2947520928091068
#>     Attrib V38    0.3657656686020908
#>     Attrib V39    0.4055111032733614
#>     Attrib V4    0.05855872314738662
#>     Attrib V40    -0.28129958218578144
#>     Attrib V41    -0.14555083723861376
#>     Attrib V42    0.7946921596039879
#>     Attrib V43    0.7103895132132215
#>     Attrib V44    0.0738125754702967
#>     Attrib V45    -0.2715528655287054
#>     Attrib V46    -0.09981500506409986
#>     Attrib V47    -0.1731593829058825
#>     Attrib V48    0.22710748530750877
#>     Attrib V49    0.3440292377655211
#>     Attrib V5    -0.18903134458888052
#>     Attrib V50    -0.15933475747255646
#>     Attrib V51    0.2400336092576804
#>     Attrib V52    0.3505806752582183
#>     Attrib V53    0.36052579745457336
#>     Attrib V54    0.9182905394532175
#>     Attrib V55    0.32456080085978467
#>     Attrib V56    0.4779369252921471
#>     Attrib V57    0.22170849821960695
#>     Attrib V58    0.7179094231869316
#>     Attrib V59    0.6814146709631729
#>     Attrib V6    -0.4787080183011411
#>     Attrib V60    0.8277949800024135
#>     Attrib V7    -0.36898640957797646
#>     Attrib V8    -0.38316221964702235
#>     Attrib V9    0.053055540560058276
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.39297575411940056
#>     Attrib V1    0.7795921863864125
#>     Attrib V10    -0.5988543220254299
#>     Attrib V11    -0.03849252590275825
#>     Attrib V12    -0.061387827225537386
#>     Attrib V13    -0.0833338498062375
#>     Attrib V14    0.2693474259207381
#>     Attrib V15    0.6284549355243855
#>     Attrib V16    0.1862550810575573
#>     Attrib V17    0.04713491377753114
#>     Attrib V18    0.20664030919246404
#>     Attrib V19    -0.0033251887675088965
#>     Attrib V2    0.19119391725291712
#>     Attrib V20    0.26353355169238174
#>     Attrib V21    0.5752893593747015
#>     Attrib V22    0.31964409160108037
#>     Attrib V23    0.2819306523327854
#>     Attrib V24    -0.01081444879539294
#>     Attrib V25    -0.6850913862118413
#>     Attrib V26    -0.5328860919836482
#>     Attrib V27    -0.2149565906950757
#>     Attrib V28    -0.21061313928687783
#>     Attrib V29    -0.19567865994399897
#>     Attrib V3    -0.07238605302958875
#>     Attrib V30    -0.021988040329750477
#>     Attrib V31    -1.119489783022541
#>     Attrib V32    -0.3061946109401719
#>     Attrib V33    0.2866555947825724
#>     Attrib V34    -0.07547618332244214
#>     Attrib V35    -0.2696429849401353
#>     Attrib V36    -0.5743814101156105
#>     Attrib V37    -0.29976178496648803
#>     Attrib V38    0.1497162477807751
#>     Attrib V39    0.3039520527020305
#>     Attrib V4    0.05630599895119086
#>     Attrib V40    -0.25050281375361755
#>     Attrib V41    -0.1548987866167369
#>     Attrib V42    0.6096263759295246
#>     Attrib V43    0.49144697359305417
#>     Attrib V44    0.016219891664920143
#>     Attrib V45    -0.2031687461058641
#>     Attrib V46    -0.09035537674854201
#>     Attrib V47    -0.10365382083242863
#>     Attrib V48    0.1716302196672807
#>     Attrib V49    0.2988700524431669
#>     Attrib V5    -0.23138995131645063
#>     Attrib V50    -0.09373460378207511
#>     Attrib V51    0.15639019271623983
#>     Attrib V52    0.2779109311493915
#>     Attrib V53    0.26802923265944845
#>     Attrib V54    0.8795731817936893
#>     Attrib V55    0.41291395665354264
#>     Attrib V56    0.49516750417875255
#>     Attrib V57    0.3106683380382454
#>     Attrib V58    0.7090117195382942
#>     Attrib V59    0.6163587658657754
#>     Attrib V6    -0.4053620874010579
#>     Attrib V60    0.6816197061989292
#>     Attrib V7    -0.3142065225840311
#>     Attrib V8    -0.2545811592441173
#>     Attrib V9    -0.02232956765027808
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.34321533807359705
#>     Attrib V1    0.5912687325305264
#>     Attrib V10    -0.16453682160446137
#>     Attrib V11    0.14393393431424276
#>     Attrib V12    -0.01277079427256918
#>     Attrib V13    -0.10061354994481421
#>     Attrib V14    0.1510657545644036
#>     Attrib V15    0.4133126388657195
#>     Attrib V16    0.11128009800358395
#>     Attrib V17    -0.0669878429044127
#>     Attrib V18    -0.13935865540148815
#>     Attrib V19    -0.3181114370820543
#>     Attrib V2    0.05294097993458869
#>     Attrib V20    -0.03475878853039473
#>     Attrib V21    0.1871986479053286
#>     Attrib V22    -0.20461032893390307
#>     Attrib V23    -0.21151513402052802
#>     Attrib V24    -0.4379209445135247
#>     Attrib V25    -0.8920717904085373
#>     Attrib V26    -0.6212573573621948
#>     Attrib V27    -0.2770264256127022
#>     Attrib V28    -0.12129645121201105
#>     Attrib V29    -0.048082220622226446
#>     Attrib V3    -0.014974457822946997
#>     Attrib V30    0.11076481906146336
#>     Attrib V31    -0.6377133563137871
#>     Attrib V32    0.02241697481973898
#>     Attrib V33    0.41287999274366255
#>     Attrib V34    0.09641662139959944
#>     Attrib V35    -0.12319563229152239
#>     Attrib V36    -0.3996248373442009
#>     Attrib V37    -0.18799552325873328
#>     Attrib V38    0.13088762565377218
#>     Attrib V39    0.12968775207418906
#>     Attrib V4    0.029640773155409555
#>     Attrib V40    -0.26815398755446723
#>     Attrib V41    -0.3074549433024663
#>     Attrib V42    0.18055307368893167
#>     Attrib V43    0.12806792517460483
#>     Attrib V44    -0.06242573241766235
#>     Attrib V45    0.01923079899689926
#>     Attrib V46    0.040848313324544076
#>     Attrib V47    -0.037079135116356673
#>     Attrib V48    0.3930146456685007
#>     Attrib V49    0.5367117355388273
#>     Attrib V5    -0.2293275390674222
#>     Attrib V50    -0.027614495787695835
#>     Attrib V51    0.13948565636968724
#>     Attrib V52    0.174034473823942
#>     Attrib V53    -0.03298970825173239
#>     Attrib V54    0.25402772216757824
#>     Attrib V55    0.19765699829430944
#>     Attrib V56    0.25736872458744775
#>     Attrib V57    0.39928592086899345
#>     Attrib V58    0.37069143115614267
#>     Attrib V59    0.3107699140030238
#>     Attrib V6    -0.38420927282517664
#>     Attrib V60    0.3917053982391859
#>     Attrib V7    -0.16626211640496588
#>     Attrib V8    -0.1899342510743846
#>     Attrib V9    0.12897089269873427
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.7494024087992488
#>     Attrib V1    -0.32388758652939986
#>     Attrib V10    -0.573301427290732
#>     Attrib V11    -0.9567521608734268
#>     Attrib V12    -1.0968237693249627
#>     Attrib V13    -0.6131163771450868
#>     Attrib V14    0.3271079028591225
#>     Attrib V15    0.4727888957216333
#>     Attrib V16    0.6576245848585555
#>     Attrib V17    0.4223755265912645
#>     Attrib V18    0.129210680083325
#>     Attrib V19    0.42881549573642247
#>     Attrib V2    0.14707902103818735
#>     Attrib V20    0.34672789759797656
#>     Attrib V21    0.051634816795749855
#>     Attrib V22    -0.046792823078238246
#>     Attrib V23    -0.47673546254809523
#>     Attrib V24    -0.2709055934451253
#>     Attrib V25    0.6361457636849759
#>     Attrib V26    -0.2665689798731569
#>     Attrib V27    -0.901521187877745
#>     Attrib V28    -0.8442503755176216
#>     Attrib V29    -0.551706941341741
#>     Attrib V3    0.12278422075172155
#>     Attrib V30    -0.6072827520132883
#>     Attrib V31    0.5938356697142041
#>     Attrib V32    -0.24182260531599648
#>     Attrib V33    -0.14706442053836793
#>     Attrib V34    -0.027487499620315912
#>     Attrib V35    -0.38018317418941666
#>     Attrib V36    0.6741810027663113
#>     Attrib V37    0.3443857083264891
#>     Attrib V38    0.15413137270592203
#>     Attrib V39    -0.03260481192036457
#>     Attrib V4    0.006078812735272398
#>     Attrib V40    -0.06547551588280817
#>     Attrib V41    -0.40019617850991995
#>     Attrib V42    0.11702225513902036
#>     Attrib V43    -0.20638452222702164
#>     Attrib V44    0.1385514669330681
#>     Attrib V45    0.15797071518988479
#>     Attrib V46    -0.42533354812391544
#>     Attrib V47    -0.3448794787776931
#>     Attrib V48    -0.7148086871807277
#>     Attrib V49    -0.9936039374255883
#>     Attrib V5    -0.11968450647838884
#>     Attrib V50    0.40136628636868216
#>     Attrib V51    -0.7248775661419068
#>     Attrib V52    -1.0043197400502801
#>     Attrib V53    -0.5208223958500331
#>     Attrib V54    -0.1913729233525068
#>     Attrib V55    0.5900730936448779
#>     Attrib V56    0.47600386209377743
#>     Attrib V57    0.4956006457196298
#>     Attrib V58    -0.43365625960004806
#>     Attrib V59    -0.1450531188503766
#>     Attrib V6    -0.4023747132213045
#>     Attrib V60    -0.26572737941382363
#>     Attrib V7    0.13767603904929754
#>     Attrib V8    0.8154692388098561
#>     Attrib V9    -0.7471049269978719
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.36139437337186764
#>     Attrib V1    0.744976135626435
#>     Attrib V10    -0.5392406806447264
#>     Attrib V11    -0.012447522423954856
#>     Attrib V12    -0.06279386623283296
#>     Attrib V13    -0.17890466306528446
#>     Attrib V14    0.18465214702976454
#>     Attrib V15    0.5319254699698694
#>     Attrib V16    0.29855596458570677
#>     Attrib V17    0.052604353965374225
#>     Attrib V18    0.258285170233881
#>     Attrib V19    -0.004180023468867193
#>     Attrib V2    0.15272275516223527
#>     Attrib V20    0.2559160992940854
#>     Attrib V21    0.5090435921012177
#>     Attrib V22    0.1681726884678052
#>     Attrib V23    0.17681083287981436
#>     Attrib V24    0.0339406834880856
#>     Attrib V25    -0.5512106952639736
#>     Attrib V26    -0.5003565951759371
#>     Attrib V27    -0.23826410903461975
#>     Attrib V28    -0.3168946954386092
#>     Attrib V29    -0.25198877930040103
#>     Attrib V3    -0.115088174620838
#>     Attrib V30    -0.08305408003710825
#>     Attrib V31    -1.0498990459143827
#>     Attrib V32    -0.26844703488486565
#>     Attrib V33    0.34447408645173816
#>     Attrib V34    0.0686311025157744
#>     Attrib V35    -0.12004032116712095
#>     Attrib V36    -0.46067483349670496
#>     Attrib V37    -0.18709681574850404
#>     Attrib V38    0.272082926106202
#>     Attrib V39    0.2786869771377732
#>     Attrib V4    0.0380194024414638
#>     Attrib V40    -0.28083766881893474
#>     Attrib V41    -0.17238106806505654
#>     Attrib V42    0.4961865382525063
#>     Attrib V43    0.35663434490111917
#>     Attrib V44    -0.05183105903188044
#>     Attrib V45    -0.1316399539931848
#>     Attrib V46    -0.035247564374318544
#>     Attrib V47    -0.1483603287386014
#>     Attrib V48    0.13269920717546563
#>     Attrib V49    0.1771031422547964
#>     Attrib V5    -0.2611346401363976
#>     Attrib V50    -0.1004615873068448
#>     Attrib V51    0.18801430843991793
#>     Attrib V52    0.19488401992414392
#>     Attrib V53    0.31174786285474426
#>     Attrib V54    0.8015387152830187
#>     Attrib V55    0.4446018079693065
#>     Attrib V56    0.43192621798949893
#>     Attrib V57    0.2611348079207473
#>     Attrib V58    0.6070997806408531
#>     Attrib V59    0.56123342525989
#>     Attrib V6    -0.31618029938687287
#>     Attrib V60    0.7372953198387159
#>     Attrib V7    -0.17371046672959176
#>     Attrib V8    -0.1965532544963152
#>     Attrib V9    0.11693185186414422
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.6218077341648065
#>     Attrib V1    0.4829432504022836
#>     Attrib V10    0.9501663705182004
#>     Attrib V11    1.2682619606305512
#>     Attrib V12    0.8664278380262602
#>     Attrib V13    0.33784020978914076
#>     Attrib V14    -0.839839377433126
#>     Attrib V15    -0.6972892290210925
#>     Attrib V16    -0.6664862946487247
#>     Attrib V17    -0.3032971679204787
#>     Attrib V18    -0.051449083198364824
#>     Attrib V19    -0.26209157916812564
#>     Attrib V2    -0.11037215981558252
#>     Attrib V20    -0.055896429814637084
#>     Attrib V21    0.15687186504815231
#>     Attrib V22    0.17260802048704968
#>     Attrib V23    0.7007421800176943
#>     Attrib V24    0.25467006388512564
#>     Attrib V25    -0.5843380793334059
#>     Attrib V26    0.2577885610085279
#>     Attrib V27    0.5714338993439557
#>     Attrib V28    0.28936604406927807
#>     Attrib V29    -0.05435724805439488
#>     Attrib V3    -0.1578380939784957
#>     Attrib V30    0.6847018793264803
#>     Attrib V31    -0.6204430094329428
#>     Attrib V32    0.2574741244726197
#>     Attrib V33    0.46117957672683346
#>     Attrib V34    0.3018998197776657
#>     Attrib V35    0.70133875120697
#>     Attrib V36    -0.5284787881527242
#>     Attrib V37    -0.0825440055489768
#>     Attrib V38    0.09072787822529049
#>     Attrib V39    0.012063798689600138
#>     Attrib V4    -0.24290517477630832
#>     Attrib V40    -0.06521054940464227
#>     Attrib V41    -0.03375302372200351
#>     Attrib V42    -0.2259772421185754
#>     Attrib V43    0.09597102367640929
#>     Attrib V44    -0.06631522722764832
#>     Attrib V45    -0.02412904507624872
#>     Attrib V46    0.49520556151364303
#>     Attrib V47    0.48493226323155697
#>     Attrib V48    0.7492527490338141
#>     Attrib V49    0.7733502351752307
#>     Attrib V5    -0.05727877449881089
#>     Attrib V50    -0.5012564119090829
#>     Attrib V51    0.8603244879835025
#>     Attrib V52    1.102840389588393
#>     Attrib V53    0.1261971732542295
#>     Attrib V54    0.3140224235179392
#>     Attrib V55    -0.695509096002106
#>     Attrib V56    -0.5186837492756257
#>     Attrib V57    -1.0994426376078965
#>     Attrib V58    0.1823149741684636
#>     Attrib V59    -0.30141458071000515
#>     Attrib V6    0.14844486876862265
#>     Attrib V60    0.177205654814343
#>     Attrib V7    -0.22975767856489415
#>     Attrib V8    -0.9506483617761396
#>     Attrib V9    1.1876461572542945
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.38633380804038664
#>     Attrib V1    0.49630446755436447
#>     Attrib V10    -0.009495733800218316
#>     Attrib V11    0.2538240599010723
#>     Attrib V12    0.08781385833160095
#>     Attrib V13    -0.10641543252122111
#>     Attrib V14    -0.06887625646969937
#>     Attrib V15    0.1875476430664486
#>     Attrib V16    0.10068163291486133
#>     Attrib V17    -0.11089582625846565
#>     Attrib V18    -0.23600982912581667
#>     Attrib V19    -0.3804811670785047
#>     Attrib V2    0.009066024076060617
#>     Attrib V20    -0.2273684677634778
#>     Attrib V21    -0.11700576948325087
#>     Attrib V22    -0.4529349252572545
#>     Attrib V23    -0.392961846901559
#>     Attrib V24    -0.4242393051778993
#>     Attrib V25    -0.7625838431495537
#>     Attrib V26    -0.4743350482848691
#>     Attrib V27    -0.09153976941569367
#>     Attrib V28    0.030150599798524514
#>     Attrib V29    0.03975958964372981
#>     Attrib V3    -0.06967413028934366
#>     Attrib V30    0.2596192370815513
#>     Attrib V31    -0.4462312598042908
#>     Attrib V32    0.1947135758712187
#>     Attrib V33    0.5168863892861248
#>     Attrib V34    0.20247786920664862
#>     Attrib V35    9.426849996185253E-4
#>     Attrib V36    -0.23820431654875712
#>     Attrib V37    -0.11336037442400185
#>     Attrib V38    0.24414177492728367
#>     Attrib V39    0.07835636134781405
#>     Attrib V4    0.091025482082241
#>     Attrib V40    -0.28154185879618826
#>     Attrib V41    -0.26916466337979217
#>     Attrib V42    -0.006587853784588552
#>     Attrib V43    0.046268824433964295
#>     Attrib V44    -0.014814287113331647
#>     Attrib V45    0.09194700724314968
#>     Attrib V46    0.16217650938572148
#>     Attrib V47    0.013001298367914745
#>     Attrib V48    0.4570841168017772
#>     Attrib V49    0.5375104593434915
#>     Attrib V5    -0.2310950680335893
#>     Attrib V50    -0.08921676257779398
#>     Attrib V51    0.10626750327277075
#>     Attrib V52    0.21770874786292788
#>     Attrib V53    -0.01832049508458567
#>     Attrib V54    0.2365942479817936
#>     Attrib V55    0.049360543351120986
#>     Attrib V56    0.00342117603701619
#>     Attrib V57    0.3920151245750771
#>     Attrib V58    0.22122994894093426
#>     Attrib V59    0.23278081864575936
#>     Attrib V6    -0.31171461132993233
#>     Attrib V60    0.39075589501664637
#>     Attrib V7    -0.11462702664867397
#>     Attrib V8    -0.17429406221979837
#>     Attrib V9    0.2017452503635804
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.4427981563670703
#>     Attrib V1    -0.11536237839489319
#>     Attrib V10    0.9618337936944068
#>     Attrib V11    1.1723858403573426
#>     Attrib V12    1.3535535929333558
#>     Attrib V13    1.075517457527182
#>     Attrib V14    -0.9124895287266276
#>     Attrib V15    -1.1786119014529564
#>     Attrib V16    -1.0092872307112895
#>     Attrib V17    0.008007279386448058
#>     Attrib V18    0.4546326698685121
#>     Attrib V19    0.15845330292889057
#>     Attrib V2    -0.27694130643605036
#>     Attrib V20    -0.15580190760482307
#>     Attrib V21    -0.08820924090985026
#>     Attrib V22    0.44175479946390395
#>     Attrib V23    1.43031849783855
#>     Attrib V24    0.9338069752983836
#>     Attrib V25    -0.18691124227236272
#>     Attrib V26    0.7143696200838041
#>     Attrib V27    1.2902622372316144
#>     Attrib V28    0.717938502826963
#>     Attrib V29    0.0432277050864344
#>     Attrib V3    -0.12095400245314235
#>     Attrib V30    0.6858580989733942
#>     Attrib V31    -0.5412618245161728
#>     Attrib V32    0.046356332114283146
#>     Attrib V33    -0.1744267567039521
#>     Attrib V34    -0.0673013504832675
#>     Attrib V35    0.7034458009655914
#>     Attrib V36    -1.0997711158427024
#>     Attrib V37    -0.7188527648151958
#>     Attrib V38    -0.5981224518130877
#>     Attrib V39    0.1584969861971614
#>     Attrib V4    -0.1462448146293284
#>     Attrib V40    0.5338382979434798
#>     Attrib V41    0.873427264060503
#>     Attrib V42    -0.21434536950399335
#>     Attrib V43    0.28706844485334804
#>     Attrib V44    0.06139140209118534
#>     Attrib V45    -0.036856026714215825
#>     Attrib V46    0.601767570318957
#>     Attrib V47    0.9011322419580706
#>     Attrib V48    1.1728297649239356
#>     Attrib V49    1.212639877463783
#>     Attrib V5    0.5274654800308264
#>     Attrib V50    -0.4256748809423468
#>     Attrib V51    1.4310646881343287
#>     Attrib V52    1.8003068828734803
#>     Attrib V53    0.971447960981799
#>     Attrib V54    0.2059989129274944
#>     Attrib V55    -0.9174696809997556
#>     Attrib V56    -0.5308739560272073
#>     Attrib V57    -1.609318294125907
#>     Attrib V58    0.3400555552614139
#>     Attrib V59    -0.1052788836843316
#>     Attrib V6    0.6578484604679783
#>     Attrib V60    -0.017335546121222352
#>     Attrib V7    -0.5594040672316111
#>     Attrib V8    -1.6847138616159882
#>     Attrib V9    0.9520100862069264
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.7365508348955329
#>     Attrib V1    -0.044373025527815815
#>     Attrib V10    -0.3891023443170119
#>     Attrib V11    -0.8367098728019687
#>     Attrib V12    -0.8379809327141309
#>     Attrib V13    -0.3059162102198917
#>     Attrib V14    0.4682699314288642
#>     Attrib V15    0.34898257889030915
#>     Attrib V16    0.5103986688048858
#>     Attrib V17    0.220807599356329
#>     Attrib V18    0.07654035345046839
#>     Attrib V19    0.3692919858921173
#>     Attrib V2    0.22647987528669464
#>     Attrib V20    0.4928553335087505
#>     Attrib V21    0.23342609071978676
#>     Attrib V22    0.06594123100871388
#>     Attrib V23    -0.4519122564774201
#>     Attrib V24    -0.4342408139174222
#>     Attrib V25    0.37473333909519585
#>     Attrib V26    -0.19140586057406123
#>     Attrib V27    -0.6646016612508702
#>     Attrib V28    -0.3810126784899
#>     Attrib V29    -0.021554914115633126
#>     Attrib V3    0.2719201623233831
#>     Attrib V30    -0.2920734396591
#>     Attrib V31    0.5654611636057566
#>     Attrib V32    -0.4273200870422891
#>     Attrib V33    -0.30088880950192165
#>     Attrib V34    -0.1654430191143655
#>     Attrib V35    -0.30836076733850676
#>     Attrib V36    0.7454563365227362
#>     Attrib V37    0.5863127534547767
#>     Attrib V38    0.34739539370163014
#>     Attrib V39    0.041162267555988875
#>     Attrib V4    0.13808955129612172
#>     Attrib V40    0.05075591619830734
#>     Attrib V41    -0.14439192674296378
#>     Attrib V42    0.11875470122548752
#>     Attrib V43    -0.20800241542376816
#>     Attrib V44    0.07202845423160574
#>     Attrib V45    0.18681196141516554
#>     Attrib V46    -0.3402558130271978
#>     Attrib V47    -0.29127623535060865
#>     Attrib V48    -0.7627451880519933
#>     Attrib V49    -0.9633240706107693
#>     Attrib V5    0.016643962581357055
#>     Attrib V50    0.43459736803142135
#>     Attrib V51    -0.6437769785483843
#>     Attrib V52    -0.8603341669834625
#>     Attrib V53    -0.37680317253815926
#>     Attrib V54    -0.340670225055656
#>     Attrib V55    0.32947420286131107
#>     Attrib V56    0.34011654841749445
#>     Attrib V57    0.3753596997187092
#>     Attrib V58    -0.5396610310360291
#>     Attrib V59    -0.10989089704756436
#>     Attrib V6    -0.22712093267261466
#>     Attrib V60    -0.2341746685728496
#>     Attrib V7    0.13415912600757315
#>     Attrib V8    0.7006346209615699
#>     Attrib V9    -0.6809509589677825
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.3124108914095839
#>     Attrib V1    0.6116950838226406
#>     Attrib V10    -0.29719588868936303
#>     Attrib V11    0.11822472334549136
#>     Attrib V12    0.005113195602008499
#>     Attrib V13    -0.22396645726813819
#>     Attrib V14    0.10274993877301444
#>     Attrib V15    0.44971332311925744
#>     Attrib V16    0.27123943574515375
#>     Attrib V17    0.12571091283921113
#>     Attrib V18    0.1139861511730608
#>     Attrib V19    -0.09573778319728063
#>     Attrib V2    0.05834757803952456
#>     Attrib V20    0.160514012103672
#>     Attrib V21    0.2718510507657948
#>     Attrib V22    -0.06006122307812953
#>     Attrib V23    -0.030255679881322446
#>     Attrib V24    -0.19887612554760833
#>     Attrib V25    -0.6945683478641007
#>     Attrib V26    -0.6458088740594599
#>     Attrib V27    -0.3113397799766041
#>     Attrib V28    -0.2658431238065391
#>     Attrib V29    -0.25952857089374626
#>     Attrib V3    -0.13063984718041954
#>     Attrib V30    -0.053617683140473694
#>     Attrib V31    -0.8977153291901743
#>     Attrib V32    -0.0841418337093196
#>     Attrib V33    0.43058657315349674
#>     Attrib V34    0.21126811787079097
#>     Attrib V35    -0.025398632142435876
#>     Attrib V36    -0.3402497241358747
#>     Attrib V37    -0.1911764423084019
#>     Attrib V38    0.30495158472208167
#>     Attrib V39    0.1595410453132366
#>     Attrib V4    0.0015823797075451551
#>     Attrib V40    -0.3374432828670819
#>     Attrib V41    -0.35872727372954294
#>     Attrib V42    0.25884721377800785
#>     Attrib V43    0.2424410702993428
#>     Attrib V44    6.403430022007718E-5
#>     Attrib V45    -0.006176295301997469
#>     Attrib V46    0.03514881371607774
#>     Attrib V47    -0.04316191383415305
#>     Attrib V48    0.3087007677828968
#>     Attrib V49    0.3434362123208039
#>     Attrib V5    -0.25149258196771757
#>     Attrib V50    -0.0984477040330336
#>     Attrib V51    0.20058546154382628
#>     Attrib V52    0.14385463793842218
#>     Attrib V53    -0.0029915483236986895
#>     Attrib V54    0.5848336743854642
#>     Attrib V55    0.39531004389876395
#>     Attrib V56    0.4042143815054348
#>     Attrib V57    0.3835090398469654
#>     Attrib V58    0.48843338431977434
#>     Attrib V59    0.3580722502926312
#>     Attrib V6    -0.3473617889546339
#>     Attrib V60    0.5625381720878776
#>     Attrib V7    -0.2193164802523959
#>     Attrib V8    -0.1948472947235829
#>     Attrib V9    0.1179002156989225
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.5781680310867258
#>     Attrib V1    0.8992423949710182
#>     Attrib V10    -0.6811803203483264
#>     Attrib V11    0.05619593829546719
#>     Attrib V12    -0.15170038141496955
#>     Attrib V13    -0.2156018227104677
#>     Attrib V14    0.2908091645818155
#>     Attrib V15    0.7060151974457365
#>     Attrib V16    0.368004711336337
#>     Attrib V17    0.07308572117191285
#>     Attrib V18    0.2418350251097808
#>     Attrib V19    0.03655122274400137
#>     Attrib V2    0.22603506834100817
#>     Attrib V20    0.3611370164935867
#>     Attrib V21    0.71309203056653
#>     Attrib V22    0.34055364854515563
#>     Attrib V23    0.3094534409701686
#>     Attrib V24    -0.07924006492104317
#>     Attrib V25    -0.9340157087359918
#>     Attrib V26    -0.736631390016588
#>     Attrib V27    -0.2556516501315415
#>     Attrib V28    -0.22536193192253648
#>     Attrib V29    -0.11997681165597834
#>     Attrib V3    -0.19140293622405155
#>     Attrib V30    -0.107916492371721
#>     Attrib V31    -1.4169303289112096
#>     Attrib V32    -0.3828558579750627
#>     Attrib V33    0.4440372619000651
#>     Attrib V34    0.11492291948742686
#>     Attrib V35    -0.20850069749722608
#>     Attrib V36    -0.5657811229512272
#>     Attrib V37    -0.22378519655513185
#>     Attrib V38    0.4006313545232605
#>     Attrib V39    0.3360424022004794
#>     Attrib V4    0.034671423388616854
#>     Attrib V40    -0.2890299770394569
#>     Attrib V41    -0.24060319270769662
#>     Attrib V42    0.661945440268483
#>     Attrib V43    0.6369606278590694
#>     Attrib V44    -0.038567970962807126
#>     Attrib V45    -0.18377361542564985
#>     Attrib V46    -0.001049852528991695
#>     Attrib V47    -0.2016617990484144
#>     Attrib V48    0.2077106186837997
#>     Attrib V49    0.3157187163436682
#>     Attrib V5    -0.3360118585853569
#>     Attrib V50    -0.14309112568235574
#>     Attrib V51    0.1698746160153836
#>     Attrib V52    0.2716408644359148
#>     Attrib V53    0.3179754917793824
#>     Attrib V54    0.9447559729386511
#>     Attrib V55    0.4515269217852746
#>     Attrib V56    0.5534369608580499
#>     Attrib V57    0.40572955494165835
#>     Attrib V58    0.7615260330679463
#>     Attrib V59    0.6570084942614928
#>     Attrib V6    -0.5066878011012498
#>     Attrib V60    0.8159227574580588
#>     Attrib V7    -0.26199403094906
#>     Attrib V8    -0.2545275184861845
#>     Attrib V9    0.06894288562408349
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.08474979626985954
#>     Attrib V1    0.26366780732358375
#>     Attrib V10    -0.04334167055877206
#>     Attrib V11    0.08218358174482308
#>     Attrib V12    0.026434247908251884
#>     Attrib V13    0.03598753892898186
#>     Attrib V14    0.04180116277753572
#>     Attrib V15    0.10638459317410097
#>     Attrib V16    0.026355742110097762
#>     Attrib V17    0.027644180753655608
#>     Attrib V18    0.01713471896132358
#>     Attrib V19    -0.07276938113837121
#>     Attrib V2    0.04376266417075599
#>     Attrib V20    0.017736395063664753
#>     Attrib V21    2.0483562368569735E-4
#>     Attrib V22    -0.15213545428238795
#>     Attrib V23    -0.016475918799853728
#>     Attrib V24    -0.07471347328448201
#>     Attrib V25    -0.21036138846094027
#>     Attrib V26    -0.210679757340065
#>     Attrib V27    -0.044264578990974364
#>     Attrib V28    -0.09148746298137607
#>     Attrib V29    -0.06638774317905242
#>     Attrib V3    0.06694459833885323
#>     Attrib V30    0.05243443016196217
#>     Attrib V31    -0.3214078546472086
#>     Attrib V32    0.007040610151347869
#>     Attrib V33    0.1983848520628207
#>     Attrib V34    0.1727409656061473
#>     Attrib V35    0.07532295706160273
#>     Attrib V36    -0.0744222261613256
#>     Attrib V37    0.03341911550980384
#>     Attrib V38    0.1583384128066432
#>     Attrib V39    0.17544774875813596
#>     Attrib V4    0.08611346821550275
#>     Attrib V40    -0.027558366734543167
#>     Attrib V41    -0.0662165554896299
#>     Attrib V42    0.07273747796479808
#>     Attrib V43    0.021265779067546856
#>     Attrib V44    0.006182222927635609
#>     Attrib V45    -0.005890425338696311
#>     Attrib V46    0.10089374139335923
#>     Attrib V47    0.06938155241411616
#>     Attrib V48    0.13443758965913397
#>     Attrib V49    0.14546808112725076
#>     Attrib V5    -0.013873365337522389
#>     Attrib V50    -0.07114457250794184
#>     Attrib V51    0.13488512514288964
#>     Attrib V52    0.15102250804093117
#>     Attrib V53    0.06640752960693545
#>     Attrib V54    0.18053099114752433
#>     Attrib V55    0.15171177357370438
#>     Attrib V56    0.08577756662694389
#>     Attrib V57    0.12398276084933604
#>     Attrib V58    0.15764435317402323
#>     Attrib V59    0.18624408348119517
#>     Attrib V6    -0.04903301299570304
#>     Attrib V60    0.31934989146515225
#>     Attrib V7    0.013387264586947141
#>     Attrib V8    -0.13153461997765975
#>     Attrib V9    0.11998879510643656
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.5789748011967876
#>     Attrib V1    0.9525735543061981
#>     Attrib V10    -0.5057746767040071
#>     Attrib V11    0.19369076495103085
#>     Attrib V12    -0.02597823082325461
#>     Attrib V13    -0.2207484634542679
#>     Attrib V14    0.19037386761554537
#>     Attrib V15    0.6944615808365772
#>     Attrib V16    0.2579454045966394
#>     Attrib V17    0.034281931307549716
#>     Attrib V18    0.1870979577591959
#>     Attrib V19    -0.12456346428048015
#>     Attrib V2    0.16378134370246292
#>     Attrib V20    0.2501587471681485
#>     Attrib V21    0.6359386058593712
#>     Attrib V22    0.23017213349185928
#>     Attrib V23    0.22660932301422956
#>     Attrib V24    -0.1387618931334188
#>     Attrib V25    -0.9281526376737108
#>     Attrib V26    -0.6829382808454191
#>     Attrib V27    -0.31717914092199445
#>     Attrib V28    -0.36175845323745687
#>     Attrib V29    -0.30217951516554703
#>     Attrib V3    -0.20358196709997017
#>     Attrib V30    -0.03433073358311314
#>     Attrib V31    -1.2233935786000762
#>     Attrib V32    -0.23664688886150662
#>     Attrib V33    0.490426603555793
#>     Attrib V34    0.09502392605545355
#>     Attrib V35    -0.16058133121391857
#>     Attrib V36    -0.6289578656601796
#>     Attrib V37    -0.27195680208164386
#>     Attrib V38    0.29082409657780395
#>     Attrib V39    0.3115320021434645
#>     Attrib V4    -0.03407898704872163
#>     Attrib V40    -0.39450154655959513
#>     Attrib V41    -0.36965913588585836
#>     Attrib V42    0.5064855159618774
#>     Attrib V43    0.5027744910210377
#>     Attrib V44    0.032742474396237904
#>     Attrib V45    -0.22659887150189956
#>     Attrib V46    -0.022585064489183966
#>     Attrib V47    -0.16541344143757072
#>     Attrib V48    0.34085069078595653
#>     Attrib V49    0.5210250223923075
#>     Attrib V5    -0.4291364104129801
#>     Attrib V50    -0.16898768605636041
#>     Attrib V51    0.15108718243619995
#>     Attrib V52    0.19478287076982823
#>     Attrib V53    0.18140886872864911
#>     Attrib V54    0.9125716010035106
#>     Attrib V55    0.5130411947475393
#>     Attrib V56    0.5989510762104897
#>     Attrib V57    0.3300338760899538
#>     Attrib V58    0.7686209087869144
#>     Attrib V59    0.5727879546742473
#>     Attrib V6    -0.4453550501367793
#>     Attrib V60    0.783336503576926
#>     Attrib V7    -0.23708816879925068
#>     Attrib V8    -0.2956726769089597
#>     Attrib V9    0.14640892266258762
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.634638725127207
#>     Attrib V1    -0.2342063671325041
#>     Attrib V10    -0.16465185867586346
#>     Attrib V11    -0.6624846093312057
#>     Attrib V12    -0.5375730610977867
#>     Attrib V13    -0.22886590346612182
#>     Attrib V14    0.3259545055028792
#>     Attrib V15    0.2449751332502279
#>     Attrib V16    0.34862278718468515
#>     Attrib V17    0.14061703969045758
#>     Attrib V18    -0.0696830648955936
#>     Attrib V19    0.22827822563908612
#>     Attrib V2    0.09397213806562431
#>     Attrib V20    0.2699628636576644
#>     Attrib V21    0.013471931687325836
#>     Attrib V22    -0.03310233136370578
#>     Attrib V23    -0.5393626858086362
#>     Attrib V24    -0.4333489095840952
#>     Attrib V25    0.310786476754917
#>     Attrib V26    -0.037650626612773144
#>     Attrib V27    -0.4656355538895537
#>     Attrib V28    -0.24258544791530826
#>     Attrib V29    0.05063268645966533
#>     Attrib V3    0.3126516014326865
#>     Attrib V30    -0.28095309295605414
#>     Attrib V31    0.7115731557079943
#>     Attrib V32    -0.16564999585930285
#>     Attrib V33    -0.31857888183337124
#>     Attrib V34    -0.10219284516129905
#>     Attrib V35    -0.15910313973849752
#>     Attrib V36    0.7467057330930268
#>     Attrib V37    0.4991413757841895
#>     Attrib V38    0.10693335545264027
#>     Attrib V39    -0.09233118994840228
#>     Attrib V4    0.20176003077714164
#>     Attrib V40    0.05559071714633368
#>     Attrib V41    -0.13847457270118185
#>     Attrib V42    -0.11630624553991267
#>     Attrib V43    -0.2695298763024063
#>     Attrib V44    -0.008827960601517967
#>     Attrib V45    0.12875333392443
#>     Attrib V46    -0.20534915944203297
#>     Attrib V47    -0.15669651365329795
#>     Attrib V48    -0.5513945066623454
#>     Attrib V49    -0.7247891296584198
#>     Attrib V5    0.1283042790076957
#>     Attrib V50    0.508444494099682
#>     Attrib V51    -0.47270109035643476
#>     Attrib V52    -0.700996311687959
#>     Attrib V53    -0.1884039451544491
#>     Attrib V54    -0.49750866570105273
#>     Attrib V55    0.2510115969240116
#>     Attrib V56    0.22326547805705915
#>     Attrib V57    0.34408151972483336
#>     Attrib V58    -0.48684481825297926
#>     Attrib V59    -0.09765038377464218
#>     Attrib V6    -0.015009486470045987
#>     Attrib V60    -0.28331606378921315
#>     Attrib V7    0.22925977065527858
#>     Attrib V8    0.6775365317162473
#>     Attrib V9    -0.535461045110685
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    0.060481205586932485
#>     Attrib V1    0.4077160506418963
#>     Attrib V10    -0.09964627780692456
#>     Attrib V11    0.07985126801408221
#>     Attrib V12    -0.006867163158834227
#>     Attrib V13    -0.06507719871024072
#>     Attrib V14    0.04142737486165375
#>     Attrib V15    0.24637347194243475
#>     Attrib V16    0.197864532806544
#>     Attrib V17    0.039880222432576926
#>     Attrib V18    0.019795684476440176
#>     Attrib V19    -0.09374367764033015
#>     Attrib V2    0.03767765776404506
#>     Attrib V20    -0.041743119657785
#>     Attrib V21    -0.01320302945341469
#>     Attrib V22    -0.21945736656280257
#>     Attrib V23    -0.19669354393805752
#>     Attrib V24    -0.14412459317813597
#>     Attrib V25    -0.39945942796634
#>     Attrib V26    -0.37901846408846956
#>     Attrib V27    -0.20772003812461318
#>     Attrib V28    -0.14594923251025071
#>     Attrib V29    -0.1596643667091037
#>     Attrib V3    -0.0020233268813535646
#>     Attrib V30    -0.04963203191468071
#>     Attrib V31    -0.4907070565752946
#>     Attrib V32    -0.0034642769903232224
#>     Attrib V33    0.2836379571221981
#>     Attrib V34    0.20442475013865297
#>     Attrib V35    0.05239800737090529
#>     Attrib V36    -0.14690201252992868
#>     Attrib V37    -0.02075374729617115
#>     Attrib V38    0.20753013638667872
#>     Attrib V39    0.14825000200023894
#>     Attrib V4    0.06598393834270079
#>     Attrib V40    -0.1599368508177429
#>     Attrib V41    -0.1456576156594552
#>     Attrib V42    0.13444020422403802
#>     Attrib V43    0.06158603304876866
#>     Attrib V44    -0.06279127138278374
#>     Attrib V45    0.03224438348369842
#>     Attrib V46    0.09532124665591393
#>     Attrib V47    -0.005567354865988702
#>     Attrib V48    0.1844721367778501
#>     Attrib V49    0.1629042828092454
#>     Attrib V5    -0.12562206256573283
#>     Attrib V50    -0.014968915136771925
#>     Attrib V51    0.1837696902335528
#>     Attrib V52    0.19095133665512148
#>     Attrib V53    0.1147471711118503
#>     Attrib V54    0.30107627305933776
#>     Attrib V55    0.3106308532670359
#>     Attrib V56    0.17511086564242456
#>     Attrib V57    0.2875337996356634
#>     Attrib V58    0.32690045946571344
#>     Attrib V59    0.2264400829593718
#>     Attrib V6    -0.13411081138131814
#>     Attrib V60    0.4138364554534418
#>     Attrib V7    -0.02093004825273295
#>     Attrib V8    -0.10170124313188833
#>     Attrib V9    0.1430991422833025
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.014794536810142304
#>     Attrib V1    0.27144670257680525
#>     Attrib V10    0.06936748988182448
#>     Attrib V11    0.12809053086799044
#>     Attrib V12    0.013485237194972079
#>     Attrib V13    -0.06773146742799814
#>     Attrib V14    -0.002871554136513182
#>     Attrib V15    0.15897260603179184
#>     Attrib V16    0.05387494676429841
#>     Attrib V17    -0.009923234235026725
#>     Attrib V18    -0.05366473374734957
#>     Attrib V19    -0.09820570487008339
#>     Attrib V2    0.11246109074934793
#>     Attrib V20    -0.08906699445505756
#>     Attrib V21    -0.11725301733112642
#>     Attrib V22    -0.16504775503368022
#>     Attrib V23    -0.15895222913497262
#>     Attrib V24    -0.14152142316189173
#>     Attrib V25    -0.30384486023712604
#>     Attrib V26    -0.2147157233292221
#>     Attrib V27    -0.07512746021959806
#>     Attrib V28    -0.05846663293952047
#>     Attrib V29    -0.09271983412014959
#>     Attrib V3    0.015117461644287004
#>     Attrib V30    0.10209860197590107
#>     Attrib V31    -0.15184618354871487
#>     Attrib V32    0.03594972040146492
#>     Attrib V33    0.2742408250505262
#>     Attrib V34    0.13227049385765494
#>     Attrib V35    0.1427117817572563
#>     Attrib V36    -0.05244939387255178
#>     Attrib V37    0.025358800531317796
#>     Attrib V38    0.2103247477353032
#>     Attrib V39    0.146451124956118
#>     Attrib V4    0.08410692814335864
#>     Attrib V40    -0.07193966123929346
#>     Attrib V41    -0.061713072286919
#>     Attrib V42    0.017374878798716274
#>     Attrib V43    0.08086735144932647
#>     Attrib V44    0.05700820225477159
#>     Attrib V45    0.09849480363496106
#>     Attrib V46    0.07320763652431034
#>     Attrib V47    0.007207669735006135
#>     Attrib V48    0.21369052318281953
#>     Attrib V49    0.1156455877144317
#>     Attrib V5    -0.036907375554363346
#>     Attrib V50    -0.0210611205204584
#>     Attrib V51    0.1441717458092709
#>     Attrib V52    0.1505175148017241
#>     Attrib V53    0.007339091167880484
#>     Attrib V54    0.13146816891890833
#>     Attrib V55    0.17961719552405853
#>     Attrib V56    0.08022864034561321
#>     Attrib V57    0.18149198840481615
#>     Attrib V58    0.10992160822909641
#>     Attrib V59    0.07223761198421583
#>     Attrib V6    -0.06558785681550047
#>     Attrib V60    0.24486143538248084
#>     Attrib V7    -0.06838213944921741
#>     Attrib V8    -0.03606987555285358
#>     Attrib V9    0.14771199087593778
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.21817497563890398
#>     Attrib V1    0.08247130170547387
#>     Attrib V10    0.0326315289529851
#>     Attrib V11    0.012740695073065841
#>     Attrib V12    -0.010820961888746093
#>     Attrib V13    -0.005731865363606408
#>     Attrib V14    0.039416877976994766
#>     Attrib V15    0.021124318145205913
#>     Attrib V16    0.05033377162819634
#>     Attrib V17    0.02080090103493704
#>     Attrib V18    0.07380911135921146
#>     Attrib V19    -0.053746458619426916
#>     Attrib V2    0.06230474876211559
#>     Attrib V20    -0.01204219772699519
#>     Attrib V21    -0.027722799311039374
#>     Attrib V22    -0.07720230714114029
#>     Attrib V23    -0.0033156215500852295
#>     Attrib V24    -0.06302332193609422
#>     Attrib V25    -0.06884788921592594
#>     Attrib V26    -0.04061694267446803
#>     Attrib V27    -0.04897259660038519
#>     Attrib V28    -0.09663647428723297
#>     Attrib V29    -0.1095070590711574
#>     Attrib V3    0.12039420515355287
#>     Attrib V30    -0.029571307586587235
#>     Attrib V31    -0.051898417469537536
#>     Attrib V32    0.033800302297366754
#>     Attrib V33    0.09586251914365272
#>     Attrib V34    0.12105447357882522
#>     Attrib V35    0.07637393751164212
#>     Attrib V36    0.127323159044817
#>     Attrib V37    0.08020335750630048
#>     Attrib V38    0.07238500947899318
#>     Attrib V39    0.11831165963837498
#>     Attrib V4    0.06323034775873385
#>     Attrib V40    0.04074795781904529
#>     Attrib V41    -0.012743420552443149
#>     Attrib V42    0.03612889350495445
#>     Attrib V43    0.05272954885932792
#>     Attrib V44    0.10724916988146987
#>     Attrib V45    -0.004030593942414996
#>     Attrib V46    0.0393292268515115
#>     Attrib V47    0.09000519514107264
#>     Attrib V48    0.06199341134337666
#>     Attrib V49    0.03281764593648556
#>     Attrib V5    0.05023328182167312
#>     Attrib V50    -0.03262889591312723
#>     Attrib V51    0.1496539480446421
#>     Attrib V52    0.0998646567486589
#>     Attrib V53    0.04217088448016031
#>     Attrib V54    0.0037440396782858665
#>     Attrib V55    0.12433324536935567
#>     Attrib V56    0.1091103527624748
#>     Attrib V57    0.03831283767962295
#>     Attrib V58    0.08005036130053808
#>     Attrib V59    0.07514315844381432
#>     Attrib V6    -0.0023387166741728354
#>     Attrib V60    0.16130193773664803
#>     Attrib V7    0.02942412336111121
#>     Attrib V8    0.014518473310931878
#>     Attrib V9    0.07089369473681452
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    -0.02239259743730731
#>     Attrib V1    0.20526732034181186
#>     Attrib V10    0.027062874465796534
#>     Attrib V11    0.7122227119568142
#>     Attrib V12    0.9203790982691562
#>     Attrib V13    0.6186166273945028
#>     Attrib V14    -0.25388604755245714
#>     Attrib V15    -0.3773998632340488
#>     Attrib V16    -0.6757630716191214
#>     Attrib V17    0.08068820014557916
#>     Attrib V18    0.7339040697458672
#>     Attrib V19    0.2531878567884635
#>     Attrib V2    0.046352673317784386
#>     Attrib V20    -0.10786423420098648
#>     Attrib V21    0.3387746251149204
#>     Attrib V22    0.9059418630624341
#>     Attrib V23    1.5866143442989986
#>     Attrib V24    1.1992238528902979
#>     Attrib V25    0.16607796411259387
#>     Attrib V26    0.6492797852591826
#>     Attrib V27    0.7948069624144288
#>     Attrib V28    0.02854646246302665
#>     Attrib V29    -0.28044247556409646
#>     Attrib V3    -0.0405911749538038
#>     Attrib V30    0.28138414258057415
#>     Attrib V31    -0.809314644298455
#>     Attrib V32    -0.05210018192716093
#>     Attrib V33    0.1451386882014693
#>     Attrib V34    -0.06834389260630903
#>     Attrib V35    0.10154617844594248
#>     Attrib V36    -0.9293099765205829
#>     Attrib V37    -0.6673347061359909
#>     Attrib V38    -0.10869340213794745
#>     Attrib V39    0.29376478675414774
#>     Attrib V4    0.06327100911972121
#>     Attrib V40    -0.08305655705502561
#>     Attrib V41    0.0325073119332365
#>     Attrib V42    0.31616733004281006
#>     Attrib V43    0.7067626365007689
#>     Attrib V44    0.12332860731286176
#>     Attrib V45    -0.4466413537847353
#>     Attrib V46    0.10410524815835462
#>     Attrib V47    0.3000600994864136
#>     Attrib V48    0.4591809303070229
#>     Attrib V49    0.4158455305115922
#>     Attrib V5    0.13509773855270496
#>     Attrib V50    -0.5664543146375477
#>     Attrib V51    1.133843259785222
#>     Attrib V52    1.08600948389257
#>     Attrib V53    0.6471820853462562
#>     Attrib V54    0.8117579196691899
#>     Attrib V55    0.016193680284748883
#>     Attrib V56    0.20651486167486655
#>     Attrib V57    -1.0639961420646395
#>     Attrib V58    0.7762277589380421
#>     Attrib V59    0.311848978963065
#>     Attrib V6    0.2737281961445928
#>     Attrib V60    0.563214221766655
#>     Attrib V7    -0.5165928539799647
#>     Attrib V8    -1.3909117500987427
#>     Attrib V9    0.6232546651308222
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.19464836023755577
#>     Attrib V1    0.7407502648861317
#>     Attrib V10    -0.5675880235709565
#>     Attrib V11    0.01935206297358226
#>     Attrib V12    0.06759655225798038
#>     Attrib V13    -0.06538229715698263
#>     Attrib V14    0.19277559292293972
#>     Attrib V15    0.39070782886689087
#>     Attrib V16    0.02866052299956289
#>     Attrib V17    0.14157722387015828
#>     Attrib V18    0.4589593917551565
#>     Attrib V19    0.07872866920790265
#>     Attrib V2    0.11402178229984873
#>     Attrib V20    0.24951870193989764
#>     Attrib V21    0.6607456252687949
#>     Attrib V22    0.5553571801410053
#>     Attrib V23    0.6892334930070823
#>     Attrib V24    0.2978099815887954
#>     Attrib V25    -0.5022107353233535
#>     Attrib V26    -0.22968061505640147
#>     Attrib V27    0.07669003658918452
#>     Attrib V28    -0.1466539225084042
#>     Attrib V29    -0.09665302485469561
#>     Attrib V3    -0.07945556233979692
#>     Attrib V30    0.04821250381892702
#>     Attrib V31    -1.1803396720469002
#>     Attrib V32    -0.4325128627633437
#>     Attrib V33    0.16280789158905634
#>     Attrib V34    -0.1952533850990818
#>     Attrib V35    -0.35335843934845884
#>     Attrib V36    -0.5556899516940758
#>     Attrib V37    -0.22206133662704403
#>     Attrib V38    0.3245036855841005
#>     Attrib V39    0.3633192361682584
#>     Attrib V4    0.10920136200840647
#>     Attrib V40    -0.26478918698218856
#>     Attrib V41    -0.11013816266895218
#>     Attrib V42    0.6472604795358498
#>     Attrib V43    0.6820608101348676
#>     Attrib V44    0.12306121999402954
#>     Attrib V45    -0.28121741855812654
#>     Attrib V46    -0.08192194892429157
#>     Attrib V47    -0.09045913894606415
#>     Attrib V48    0.25549057215663307
#>     Attrib V49    0.274259167580166
#>     Attrib V5    -0.023343490029728037
#>     Attrib V50    -0.11107971948809318
#>     Attrib V51    0.46807628271889945
#>     Attrib V52    0.47299549043202066
#>     Attrib V53    0.366416895644056
#>     Attrib V54    0.9694270382665707
#>     Attrib V55    0.22382347943525804
#>     Attrib V56    0.45624796036615867
#>     Attrib V57    0.007559823233652025
#>     Attrib V58    0.6642214682317953
#>     Attrib V59    0.6424440984025119
#>     Attrib V6    -0.2866325281884118
#>     Attrib V60    0.8513286062443238
#>     Attrib V7    -0.3629309654575062
#>     Attrib V8    -0.6307069080445247
#>     Attrib V9    0.12867990640693655
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.524837244951999
#>     Attrib V1    -0.09587044772238337
#>     Attrib V10    -0.7253866485960166
#>     Attrib V11    -1.1005635903376134
#>     Attrib V12    -0.9833228134524103
#>     Attrib V13    -0.5016287491657003
#>     Attrib V14    0.5961114398612312
#>     Attrib V15    0.6533859356712278
#>     Attrib V16    0.702207179605254
#>     Attrib V17    0.24577416096201
#>     Attrib V18    -0.05540778155763971
#>     Attrib V19    0.22119393170413545
#>     Attrib V2    0.13867077018409282
#>     Attrib V20    0.35517985218536985
#>     Attrib V21    0.12379769955330093
#>     Attrib V22    -0.20908051504141276
#>     Attrib V23    -0.8026110926641108
#>     Attrib V24    -0.4763814356404795
#>     Attrib V25    0.3877027396093768
#>     Attrib V26    -0.36796814339134937
#>     Attrib V27    -0.8060536485667024
#>     Attrib V28    -0.4844425679892536
#>     Attrib V29    -0.0181927647702972
#>     Attrib V3    0.16690143157040158
#>     Attrib V30    -0.5001593779644263
#>     Attrib V31    0.606718696663818
#>     Attrib V32    -0.3534263145805232
#>     Attrib V33    -0.25967845754882996
#>     Attrib V34    -0.14657506129450656
#>     Attrib V35    -0.5200323378289113
#>     Attrib V36    0.7539795479170467
#>     Attrib V37    0.5451503372266113
#>     Attrib V38    0.2930801402529622
#>     Attrib V39    0.03615334423349588
#>     Attrib V4    0.18959772176736733
#>     Attrib V40    -0.01561912389509899
#>     Attrib V41    -0.17815890675508714
#>     Attrib V42    0.13340390596658994
#>     Attrib V43    -0.21464105659367888
#>     Attrib V44    0.007688911958740235
#>     Attrib V45    0.08720747948623236
#>     Attrib V46    -0.4603481609186487
#>     Attrib V47    -0.5264177564484277
#>     Attrib V48    -0.8650727345150925
#>     Attrib V49    -1.0521477282552052
#>     Attrib V5    -0.07856620099912501
#>     Attrib V50    0.48427677643197087
#>     Attrib V51    -0.875535368129283
#>     Attrib V52    -1.129778900044199
#>     Attrib V53    -0.4329500982950406
#>     Attrib V54    -0.2643354726196832
#>     Attrib V55    0.5760434533331673
#>     Attrib V56    0.42573479487143606
#>     Attrib V57    0.9559479869978379
#>     Attrib V58    -0.4333481123234907
#>     Attrib V59    0.14482221471461645
#>     Attrib V6    -0.3495067568472078
#>     Attrib V60    -0.06491093029252427
#>     Attrib V7    0.28507397978202387
#>     Attrib V8    0.9284474088277758
#>     Attrib V9    -0.8748837899021894
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.23214395807616794
#>     Attrib V1    0.641777878463397
#>     Attrib V10    -0.28374974023383226
#>     Attrib V11    0.05923150130670975
#>     Attrib V12    -0.0632030689624519
#>     Attrib V13    -0.15419101187452255
#>     Attrib V14    0.22214467623324902
#>     Attrib V15    0.4705956614022844
#>     Attrib V16    0.3223770571116636
#>     Attrib V17    0.05991757753031437
#>     Attrib V18    0.07006097029996936
#>     Attrib V19    -0.08910087724522868
#>     Attrib V2    0.13978883668363415
#>     Attrib V20    0.13612228023651435
#>     Attrib V21    0.2550382305080941
#>     Attrib V22    -0.057099188095084644
#>     Attrib V23    -0.09458833084209464
#>     Attrib V24    -0.1359790613030436
#>     Attrib V25    -0.6193845810738668
#>     Attrib V26    -0.5487245202913156
#>     Attrib V27    -0.3396970654138289
#>     Attrib V28    -0.38180162244643934
#>     Attrib V29    -0.2457696554474988
#>     Attrib V3    -0.10119895770844242
#>     Attrib V30    -0.14037677987564476
#>     Attrib V31    -0.7154632017036122
#>     Attrib V32    -0.11822136891852486
#>     Attrib V33    0.29838063043012986
#>     Attrib V34    0.13683623524541963
#>     Attrib V35    -0.03923189610792708
#>     Attrib V36    -0.2707619058158336
#>     Attrib V37    -0.10907677472459452
#>     Attrib V38    0.20707529622532508
#>     Attrib V39    0.15306259524778318
#>     Attrib V4    0.031957111055569885
#>     Attrib V40    -0.23883375707043838
#>     Attrib V41    -0.32367672796276226
#>     Attrib V42    0.19121796132035865
#>     Attrib V43    0.24182643869399442
#>     Attrib V44    -0.05308992684308492
#>     Attrib V45    -0.12716512183131348
#>     Attrib V46    0.02585909912392504
#>     Attrib V47    -0.1313591788367612
#>     Attrib V48    0.2162112335753054
#>     Attrib V49    0.23504595402378914
#>     Attrib V5    -0.24837371264156083
#>     Attrib V50    -0.0779462961575632
#>     Attrib V51    0.10418804846175574
#>     Attrib V52    0.11999457604607049
#>     Attrib V53    0.07052215703551062
#>     Attrib V54    0.5597860171329327
#>     Attrib V55    0.4961412926149898
#>     Attrib V56    0.42248160276552166
#>     Attrib V57    0.38850105651342925
#>     Attrib V58    0.5272404205838778
#>     Attrib V59    0.3992420736418154
#>     Attrib V6    -0.2766883489256629
#>     Attrib V60    0.5861266602937096
#>     Attrib V7    -0.08133056071924262
#>     Attrib V8    -0.17457484116124014
#>     Attrib V9    0.08581567657282099
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.2727216594965582
#>     Attrib V1    0.6773472540724558
#>     Attrib V10    -0.6581408418132023
#>     Attrib V11    -0.036939924032456016
#>     Attrib V12    -0.02011818949894459
#>     Attrib V13    -0.11363591786309253
#>     Attrib V14    0.1889204744076575
#>     Attrib V15    0.4592803924183239
#>     Attrib V16    0.16452196515943304
#>     Attrib V17    0.17606590816487802
#>     Attrib V18    0.3284462334457722
#>     Attrib V19    0.040019697963976926
#>     Attrib V2    0.09369778998276553
#>     Attrib V20    0.17040300148441614
#>     Attrib V21    0.44441318132665747
#>     Attrib V22    0.2859792884368539
#>     Attrib V23    0.3679568877342671
#>     Attrib V24    0.09918743353793166
#>     Attrib V25    -0.5245379734275258
#>     Attrib V26    -0.38105692371391103
#>     Attrib V27    -0.19525370345158788
#>     Attrib V28    -0.32283705233466925
#>     Attrib V29    -0.3204945985594606
#>     Attrib V3    -0.06853360538659202
#>     Attrib V30    -0.12857568321541266
#>     Attrib V31    -1.0707168159162503
#>     Attrib V32    -0.3353569538168593
#>     Attrib V33    0.22911232393358238
#>     Attrib V34    -0.04477049403709998
#>     Attrib V35    -0.20746870178862115
#>     Attrib V36    -0.5273177446740055
#>     Attrib V37    -0.26816429876677383
#>     Attrib V38    0.1619869350650126
#>     Attrib V39    0.26101959018493687
#>     Attrib V4    0.10186977674682603
#>     Attrib V40    -0.2916589766416759
#>     Attrib V41    -0.16394958886762817
#>     Attrib V42    0.5337669467428546
#>     Attrib V43    0.5005286806374605
#>     Attrib V44    -0.00903778005318913
#>     Attrib V45    -0.1785032921853483
#>     Attrib V46    -0.060638387221659915
#>     Attrib V47    -0.06286203000176878
#>     Attrib V48    0.16534241165695016
#>     Attrib V49    0.22561623233985637
#>     Attrib V5    -0.17388843542018412
#>     Attrib V50    -0.11215741309125428
#>     Attrib V51    0.2315017920145733
#>     Attrib V52    0.33551511191952327
#>     Attrib V53    0.35141066555828715
#>     Attrib V54    0.8264978466293316
#>     Attrib V55    0.3588942958536872
#>     Attrib V56    0.4828565518494197
#>     Attrib V57    0.19962390476627784
#>     Attrib V58    0.6353006783760528
#>     Attrib V59    0.620319111018612
#>     Attrib V6    -0.31931063294823825
#>     Attrib V60    0.7459912496472137
#>     Attrib V7    -0.28508958294720194
#>     Attrib V8    -0.39065540982079644
#>     Attrib V9    0.01611819524980678
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.5368861751082555
#>     Attrib V1    -0.2933783336587303
#>     Attrib V10    -0.2261834028808523
#>     Attrib V11    -0.5657772967609535
#>     Attrib V12    -0.4449867551569208
#>     Attrib V13    -0.18582249032248574
#>     Attrib V14    0.28042198201575763
#>     Attrib V15    0.1399724339239005
#>     Attrib V16    0.2063590881263343
#>     Attrib V17    0.21705201643064548
#>     Attrib V18    0.04011110508963218
#>     Attrib V19    0.18480641465991635
#>     Attrib V2    0.04419040031047666
#>     Attrib V20    0.1803063305828794
#>     Attrib V21    0.01209597791616596
#>     Attrib V22    -0.010138003597098133
#>     Attrib V23    -0.2609191025347064
#>     Attrib V24    -0.28200387028824503
#>     Attrib V25    0.30252864591499007
#>     Attrib V26    0.021784330483434845
#>     Attrib V27    -0.30843871164503905
#>     Attrib V28    -0.19634440585383306
#>     Attrib V29    0.011168431815880685
#>     Attrib V3    0.2466233912947073
#>     Attrib V30    -0.22941487050119871
#>     Attrib V31    0.5711406120930832
#>     Attrib V32    -0.08785966110741084
#>     Attrib V33    -0.33960523002249215
#>     Attrib V34    -0.17935853414652936
#>     Attrib V35    -0.21886097180588082
#>     Attrib V36    0.5195437010228294
#>     Attrib V37    0.2363855708392047
#>     Attrib V38    -0.05337787918772036
#>     Attrib V39    -0.1523993370294895
#>     Attrib V4    0.2297490943665546
#>     Attrib V40    0.09192916649410866
#>     Attrib V41    -0.013428503622961612
#>     Attrib V42    -0.07446875418183352
#>     Attrib V43    -0.09979484831343431
#>     Attrib V44    0.016849931389088395
#>     Attrib V45    -0.02045938227790123
#>     Attrib V46    -0.19131253702829076
#>     Attrib V47    -0.07554592988843069
#>     Attrib V48    -0.40973408468867634
#>     Attrib V49    -0.5707817327857333
#>     Attrib V5    0.11206550060293698
#>     Attrib V50    0.4319486250559777
#>     Attrib V51    -0.3246093520218181
#>     Attrib V52    -0.4093121585611559
#>     Attrib V53    -0.15353041719088492
#>     Attrib V54    -0.4250105051897825
#>     Attrib V55    0.14261045813942222
#>     Attrib V56    0.2123545473024112
#>     Attrib V57    0.3313051819880452
#>     Attrib V58    -0.3271236645374012
#>     Attrib V59    -0.06601585644742149
#>     Attrib V6    0.06997553691011382
#>     Attrib V60    -0.26723000069951913
#>     Attrib V7    0.09048301253659068
#>     Attrib V8    0.44828103180861995
#>     Attrib V9    -0.4246811042429979
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.6254239625780288
#>     Attrib V1    -0.19197387994646864
#>     Attrib V10    0.9379594693953465
#>     Attrib V11    1.3030773636030275
#>     Attrib V12    1.6601262416129312
#>     Attrib V13    1.3401617140246913
#>     Attrib V14    -0.8944750708887993
#>     Attrib V15    -1.3903018058391494
#>     Attrib V16    -1.3002200318565202
#>     Attrib V17    0.0682375908956514
#>     Attrib V18    0.6449198999163946
#>     Attrib V19    0.24566483625104843
#>     Attrib V2    -0.1999769081408432
#>     Attrib V20    -0.1343364247380883
#>     Attrib V21    -0.08202122216166036
#>     Attrib V22    0.6287538592989728
#>     Attrib V23    1.7559404445404798
#>     Attrib V24    0.9711211584916206
#>     Attrib V25    -0.5563924748305925
#>     Attrib V26    0.6487783309339124
#>     Attrib V27    1.5454632630353746
#>     Attrib V28    0.7768882811119412
#>     Attrib V29    0.006103933316814394
#>     Attrib V3    0.07737381306448504
#>     Attrib V30    0.7954261665777326
#>     Attrib V31    -0.5659121698502556
#>     Attrib V32    -0.05607726479226011
#>     Attrib V33    -0.4307292182379505
#>     Attrib V34    -0.20032170683449715
#>     Attrib V35    0.7692353873305979
#>     Attrib V36    -1.4066307971851277
#>     Attrib V37    -0.8495799438833304
#>     Attrib V38    -0.7879937939724873
#>     Attrib V39    0.24865847486348758
#>     Attrib V4    -0.14997071544500304
#>     Attrib V40    0.7135791050682354
#>     Attrib V41    1.1067047047604495
#>     Attrib V42    -0.07908203261527584
#>     Attrib V43    0.40865146067176195
#>     Attrib V44    0.19432056075201423
#>     Attrib V45    -0.10937521515115689
#>     Attrib V46    0.564766010246662
#>     Attrib V47    0.9508266948214843
#>     Attrib V48    1.3620779605896258
#>     Attrib V49    1.5546663403084056
#>     Attrib V5    0.7298626228975429
#>     Attrib V50    -0.5311032598450783
#>     Attrib V51    1.6272037305710725
#>     Attrib V52    2.2157561125455394
#>     Attrib V53    1.2256453915147008
#>     Attrib V54    0.19858015239086196
#>     Attrib V55    -1.2228969742760465
#>     Attrib V56    -0.686625389443895
#>     Attrib V57    -1.8766346972755157
#>     Attrib V58    0.3848473515889837
#>     Attrib V59    -0.14649243949975962
#>     Attrib V6    0.8340895631980461
#>     Attrib V60    -0.15063240458434596
#>     Attrib V7    -0.893158361806117
#>     Attrib V8    -2.2447815546051846
#>     Attrib V9    0.9525767092737517
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.4540309430375711
#>     Attrib V1    -0.2280467490474668
#>     Attrib V10    -0.1607668759140941
#>     Attrib V11    -0.4438196996603071
#>     Attrib V12    -0.3118885292900721
#>     Attrib V13    -0.13346390710344605
#>     Attrib V14    0.2278475778466578
#>     Attrib V15    0.019566648628814028
#>     Attrib V16    0.1355281519965329
#>     Attrib V17    0.17189325090754926
#>     Attrib V18    0.054993146462111175
#>     Attrib V19    0.20827742539657862
#>     Attrib V2    0.030192186999561284
#>     Attrib V20    0.147865850330492
#>     Attrib V21    0.04514605343084574
#>     Attrib V22    0.06806739534408347
#>     Attrib V23    -0.13545402276838064
#>     Attrib V24    -0.15796008023532923
#>     Attrib V25    0.26213085838345834
#>     Attrib V26    0.001365157942134418
#>     Attrib V27    -0.1612887262568469
#>     Attrib V28    -0.12353689139944644
#>     Attrib V29    0.02774404547228818
#>     Attrib V3    0.14882590491287204
#>     Attrib V30    -0.14382845093211247
#>     Attrib V31    0.4179561430155981
#>     Attrib V32    -0.10206803864346013
#>     Attrib V33    -0.18428177125388953
#>     Attrib V34    -0.14841793755460378
#>     Attrib V35    -0.08454857998843887
#>     Attrib V36    0.43354860725254857
#>     Attrib V37    0.2670447678088782
#>     Attrib V38    -0.05968053462020326
#>     Attrib V39    -0.09985366229573972
#>     Attrib V4    0.1736966913741525
#>     Attrib V40    0.049488540039842446
#>     Attrib V41    -0.027499346229688814
#>     Attrib V42    -0.027366848416414426
#>     Attrib V43    -0.09378643888729161
#>     Attrib V44    0.03511604372610341
#>     Attrib V45    -0.005062008157583477
#>     Attrib V46    -0.1837734985904887
#>     Attrib V47    -0.10611675868639914
#>     Attrib V48    -0.2610130555430369
#>     Attrib V49    -0.4140947368403082
#>     Attrib V5    0.06696642240612756
#>     Attrib V50    0.3079606110219967
#>     Attrib V51    -0.26704600843866866
#>     Attrib V52    -0.34272642659332997
#>     Attrib V53    -0.10742291138970095
#>     Attrib V54    -0.321922440771206
#>     Attrib V55    0.027285287492976436
#>     Attrib V56    0.12790937127661728
#>     Attrib V57    0.20562908362385596
#>     Attrib V58    -0.2556810229419147
#>     Attrib V59    -0.05787256818876235
#>     Attrib V6    0.08041588944606505
#>     Attrib V60    -0.1257095861968444
#>     Attrib V7    0.05209830448555476
#>     Attrib V8    0.30512143749862897
#>     Attrib V9    -0.3525801127966001
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.49905156179984955
#>     Attrib V1    0.7899817648846933
#>     Attrib V10    -0.3579258900206623
#>     Attrib V11    0.2843454553252166
#>     Attrib V12    0.04713422857039193
#>     Attrib V13    -0.1715001826316553
#>     Attrib V14    -0.15910205516670456
#>     Attrib V15    0.3029017726713306
#>     Attrib V16    0.07256108657030627
#>     Attrib V17    0.03960042590496082
#>     Attrib V18    0.35880994585987447
#>     Attrib V19    -0.020593313017960087
#>     Attrib V2    0.04254263364886411
#>     Attrib V20    0.1758874236596568
#>     Attrib V21    0.6082267635519597
#>     Attrib V22    0.3785920584465454
#>     Attrib V23    0.508160259691563
#>     Attrib V24    0.30224243203371504
#>     Attrib V25    -0.5173993876332811
#>     Attrib V26    -0.22226265183504137
#>     Attrib V27    -0.07404971718693525
#>     Attrib V28    -0.2821418476231761
#>     Attrib V29    -0.3540957518126446
#>     Attrib V3    -0.2573753890233037
#>     Attrib V30    0.06992632837037004
#>     Attrib V31    -1.2110531637249986
#>     Attrib V32    -0.24531236249880717
#>     Attrib V33    0.4211277531203857
#>     Attrib V34    0.14947968532131783
#>     Attrib V35    -0.010777440606119801
#>     Attrib V36    -0.5288824922926909
#>     Attrib V37    -0.2929181172378765
#>     Attrib V38    0.29072963963424164
#>     Attrib V39    0.3083453283465989
#>     Attrib V4    -0.037420475957867856
#>     Attrib V40    -0.42675920961774144
#>     Attrib V41    -0.3397255797256325
#>     Attrib V42    0.47565396559057976
#>     Attrib V43    0.5050738927186815
#>     Attrib V44    0.10761449379109918
#>     Attrib V45    -0.07828810655633614
#>     Attrib V46    -0.015413107749916983
#>     Attrib V47    -0.0729097446616449
#>     Attrib V48    0.3934408652544437
#>     Attrib V49    0.3825078221345963
#>     Attrib V5    -0.27062481106444475
#>     Attrib V50    -0.22712920370122636
#>     Attrib V51    0.36566193815883913
#>     Attrib V52    0.42190326569213665
#>     Attrib V53    0.2553134327193715
#>     Attrib V54    0.9243902233024502
#>     Attrib V55    0.2852999838784609
#>     Attrib V56    0.295980782602999
#>     Attrib V57    -0.06977609446074466
#>     Attrib V58    0.6663673124453321
#>     Attrib V59    0.5143761992084802
#>     Attrib V6    -0.35455647627967557
#>     Attrib V60    0.7174001945262375
#>     Attrib V7    -0.29404607220538936
#>     Attrib V8    -0.4493359555909089
#>     Attrib V9    0.35265224206532086
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.5052639770774716
#>     Attrib V1    0.07791353510642854
#>     Attrib V10    -0.7245842146993715
#>     Attrib V11    -1.007960576469225
#>     Attrib V12    -1.1762441192180875
#>     Attrib V13    -0.7502217300122868
#>     Attrib V14    0.6629552204961867
#>     Attrib V15    0.9118530088516424
#>     Attrib V16    0.9028947156355848
#>     Attrib V17    0.028610046530418518
#>     Attrib V18    -0.3064405727620268
#>     Attrib V19    -0.052122591220752766
#>     Attrib V2    0.16781227976417618
#>     Attrib V20    0.21267882831183846
#>     Attrib V21    0.058418872929006396
#>     Attrib V22    -0.41139541208184116
#>     Attrib V23    -1.2108154389795847
#>     Attrib V24    -0.6804260043612036
#>     Attrib V25    0.32554504039468796
#>     Attrib V26    -0.5137709267981712
#>     Attrib V27    -1.048647515538902
#>     Attrib V28    -0.6681125640175373
#>     Attrib V29    -0.09260030187306285
#>     Attrib V3    0.14399456517305387
#>     Attrib V30    -0.5360250949157702
#>     Attrib V31    0.5780636576269003
#>     Attrib V32    -0.08757453342525963
#>     Attrib V33    0.024929968839848004
#>     Attrib V34    0.04295538835141094
#>     Attrib V35    -0.488322093665881
#>     Attrib V36    0.9719761369880007
#>     Attrib V37    0.5746152043258074
#>     Attrib V38    0.49329173566351425
#>     Attrib V39    -0.07427787882270818
#>     Attrib V4    0.08720730189607458
#>     Attrib V40    -0.34262391542314824
#>     Attrib V41    -0.5961855458766433
#>     Attrib V42    0.07435297612456081
#>     Attrib V43    -0.32651671858482234
#>     Attrib V44    -0.09297783875814569
#>     Attrib V45    0.1794577430093909
#>     Attrib V46    -0.46733674786421386
#>     Attrib V47    -0.7165171552505271
#>     Attrib V48    -1.026933209383272
#>     Attrib V49    -1.180272282895775
#>     Attrib V5    -0.4710051803966805
#>     Attrib V50    0.44222800511806276
#>     Attrib V51    -1.1579853244959513
#>     Attrib V52    -1.4193982422384521
#>     Attrib V53    -0.7333836069507942
#>     Attrib V54    -0.17891713169731582
#>     Attrib V55    0.9365703472005144
#>     Attrib V56    0.5021577617297792
#>     Attrib V57    1.1366720033649413
#>     Attrib V58    -0.35664203940541034
#>     Attrib V59    0.03742316997629296
#>     Attrib V6    -0.4945536573484338
#>     Attrib V60    -0.14105408679605358
#>     Attrib V7    0.49207734033135575
#>     Attrib V8    1.4825630855274905
#>     Attrib V9    -0.7430268134233804
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.3866067046864087
#>     Attrib V1    0.5956624178342429
#>     Attrib V10    -0.2649862736860964
#>     Attrib V11    0.2120534364941554
#>     Attrib V12    0.020934955287761483
#>     Attrib V13    -0.1153286654016274
#>     Attrib V14    0.16793821512688892
#>     Attrib V15    0.40989700283040836
#>     Attrib V16    0.1529494155040263
#>     Attrib V17    -0.013063436796150315
#>     Attrib V18    0.042884986932753014
#>     Attrib V19    -0.19309320647621817
#>     Attrib V2    0.05946713012999012
#>     Attrib V20    0.10343172230504392
#>     Attrib V21    0.31502413432813337
#>     Attrib V22    0.019569213237761802
#>     Attrib V23    -0.06089343956923409
#>     Attrib V24    -0.16398194677340958
#>     Attrib V25    -0.642076615227858
#>     Attrib V26    -0.5268257883209277
#>     Attrib V27    -0.2225469265345374
#>     Attrib V28    -0.22695193901877936
#>     Attrib V29    -0.10458249402488824
#>     Attrib V3    -0.08223291549384605
#>     Attrib V30    -0.01235178091763711
#>     Attrib V31    -0.7912999696805938
#>     Attrib V32    -0.07499324026752849
#>     Attrib V33    0.37902560914959516
#>     Attrib V34    0.0965858032732711
#>     Attrib V35    -0.0743969983781026
#>     Attrib V36    -0.39305410071119745
#>     Attrib V37    -0.1728039208303663
#>     Attrib V38    0.1913163627972058
#>     Attrib V39    0.1636030643356586
#>     Attrib V4    -0.020871130407863755
#>     Attrib V40    -0.2966685822420889
#>     Attrib V41    -0.2658667315254096
#>     Attrib V42    0.19088544238002306
#>     Attrib V43    0.25502459782256215
#>     Attrib V44    -0.1003996925884918
#>     Attrib V45    -0.015369956865299642
#>     Attrib V46    0.04419297739003679
#>     Attrib V47    -0.019210978113595508
#>     Attrib V48    0.3246737798519032
#>     Attrib V49    0.41294345667274124
#>     Attrib V5    -0.29278791307058855
#>     Attrib V50    -0.08051487477728787
#>     Attrib V51    0.18646168947926592
#>     Attrib V52    0.22229214829044963
#>     Attrib V53    0.04237213754699743
#>     Attrib V54    0.4840730516821588
#>     Attrib V55    0.3778743882239181
#>     Attrib V56    0.3128641919273692
#>     Attrib V57    0.2791065387225305
#>     Attrib V58    0.45597405256319384
#>     Attrib V59    0.3639376440845655
#>     Attrib V6    -0.29632954146087526
#>     Attrib V60    0.5128276425637645
#>     Attrib V7    -0.13956403243432278
#>     Attrib V8    -0.1631677578119128
#>     Attrib V9    0.14151712349289647
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.10275094608961645
#>     Attrib V1    0.21357579115399744
#>     Attrib V10    0.06326094422342211
#>     Attrib V11    0.07339419535527862
#>     Attrib V12    0.07496015939849913
#>     Attrib V13    0.0421379556511908
#>     Attrib V14    0.036191174454201135
#>     Attrib V15    0.093711660400421
#>     Attrib V16    0.04367363959764679
#>     Attrib V17    0.051976111948562644
#>     Attrib V18    -0.005805901313544827
#>     Attrib V19    -0.07626019188315764
#>     Attrib V2    0.0790089369900143
#>     Attrib V20    -0.056409213976473985
#>     Attrib V21    -0.03045041581452262
#>     Attrib V22    -0.11912271652747101
#>     Attrib V23    -0.04215824424684367
#>     Attrib V24    -0.10269155646900249
#>     Attrib V25    -0.14130580789073488
#>     Attrib V26    -0.07669350507565333
#>     Attrib V27    -0.07148887103028807
#>     Attrib V28    -0.05563096092381617
#>     Attrib V29    -0.12086309280130396
#>     Attrib V3    0.022951654189641
#>     Attrib V30    0.05075599778493827
#>     Attrib V31    -0.09793328255159488
#>     Attrib V32    0.0011265920179252152
#>     Attrib V33    0.11558480910294854
#>     Attrib V34    0.08818716699340735
#>     Attrib V35    0.11589898581238989
#>     Attrib V36    -0.014000275721833445
#>     Attrib V37    0.08446628479190163
#>     Attrib V38    0.09229916505993876
#>     Attrib V39    0.1621698985100197
#>     Attrib V4    0.11664353245945241
#>     Attrib V40    0.018925988294081274
#>     Attrib V41    -0.02709518463304089
#>     Attrib V42    0.0673910753732412
#>     Attrib V43    0.02934087852888075
#>     Attrib V44    -0.003218241984955624
#>     Attrib V45    0.03439567050938212
#>     Attrib V46    0.06491184239212176
#>     Attrib V47    0.019778097757704505
#>     Attrib V48    0.13449087010788152
#>     Attrib V49    0.04855949128499696
#>     Attrib V5    -0.03387297347695914
#>     Attrib V50    -0.02655656440239858
#>     Attrib V51    0.11407948772148335
#>     Attrib V52    0.15203461793313675
#>     Attrib V53    0.06359303803786975
#>     Attrib V54    0.11501247530831901
#>     Attrib V55    0.09904803060725037
#>     Attrib V56    0.1095836176945898
#>     Attrib V57    0.06884977880551306
#>     Attrib V58    0.15028006396342897
#>     Attrib V59    0.13706038371334694
#>     Attrib V6    -0.021037982180236805
#>     Attrib V60    0.22704793485514851
#>     Attrib V7    -0.06141958542805782
#>     Attrib V8    -0.08110677466355343
#>     Attrib V9    0.0851319332781657
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.15063656993807972
#>     Attrib V1    0.5401606690735106
#>     Attrib V10    -0.2666414888697752
#>     Attrib V11    0.09747998788291189
#>     Attrib V12    -0.07422733823189333
#>     Attrib V13    -0.09426889260697469
#>     Attrib V14    0.1559047483683647
#>     Attrib V15    0.4115486368681228
#>     Attrib V16    0.22474272975876008
#>     Attrib V17    0.09627620677175526
#>     Attrib V18    0.13930722490504807
#>     Attrib V19    -0.01813563795204191
#>     Attrib V2    0.15517962743860034
#>     Attrib V20    0.1494816223915646
#>     Attrib V21    0.1829251472969983
#>     Attrib V22    0.012628229113821554
#>     Attrib V23    0.02794355528120487
#>     Attrib V24    -0.05569229117722509
#>     Attrib V25    -0.5105056257849041
#>     Attrib V26    -0.4092793777726078
#>     Attrib V27    -0.2834880835418918
#>     Attrib V28    -0.3454339045771333
#>     Attrib V29    -0.30589315515169124
#>     Attrib V3    -0.11219137463575962
#>     Attrib V30    -0.12512230230053184
#>     Attrib V31    -0.6885968066858813
#>     Attrib V32    -0.14325078191398308
#>     Attrib V33    0.3393954630951905
#>     Attrib V34    0.18697291400878213
#>     Attrib V35    0.04471772025426448
#>     Attrib V36    -0.2483706848467822
#>     Attrib V37    -0.059035946145882506
#>     Attrib V38    0.2995435385672055
#>     Attrib V39    0.15352730284640512
#>     Attrib V4    0.03285896298173119
#>     Attrib V40    -0.23631914860707812
#>     Attrib V41    -0.27200439711087243
#>     Attrib V42    0.19649726081742064
#>     Attrib V43    0.21528542715870339
#>     Attrib V44    0.00823102707337124
#>     Attrib V45    -0.08081966524683837
#>     Attrib V46    0.01093241017299194
#>     Attrib V47    -0.07340400057978878
#>     Attrib V48    0.1773307063957
#>     Attrib V49    0.16440692069291274
#>     Attrib V5    -0.24007823857002317
#>     Attrib V50    -0.1258367307333094
#>     Attrib V51    0.13505298500532878
#>     Attrib V52    0.1634730327380915
#>     Attrib V53    0.12354733927483466
#>     Attrib V54    0.5741614149927273
#>     Attrib V55    0.43651138166220416
#>     Attrib V56    0.28382961852560923
#>     Attrib V57    0.23203908729521833
#>     Attrib V58    0.3754715851740766
#>     Attrib V59    0.3481462599945456
#>     Attrib V6    -0.26419445687506016
#>     Attrib V60    0.5407520235587981
#>     Attrib V7    -0.10043266996309734
#>     Attrib V8    -0.17727275598142492
#>     Attrib V9    0.13282761564724363
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.18854951780298834
#>     Attrib V1    0.0883499644590453
#>     Attrib V10    -0.030065292211255944
#>     Attrib V11    0.004926167127371739
#>     Attrib V12    -0.0026326020025017557
#>     Attrib V13    -0.03474718672286661
#>     Attrib V14    0.09337779801270728
#>     Attrib V15    0.05953741997749714
#>     Attrib V16    0.07720053205723544
#>     Attrib V17    0.03400383548418771
#>     Attrib V18    0.08441887508071207
#>     Attrib V19    -0.046378875234635485
#>     Attrib V2    0.03727957479647877
#>     Attrib V20    -0.01843370521217493
#>     Attrib V21    -0.04022824642056664
#>     Attrib V22    -0.06439192055544578
#>     Attrib V23    0.041657900994335306
#>     Attrib V24    -0.033186842936703716
#>     Attrib V25    -0.10541484593463271
#>     Attrib V26    -0.07993291944579307
#>     Attrib V27    -0.08267355912614847
#>     Attrib V28    -0.07426907740478549
#>     Attrib V29    -0.09295606834407424
#>     Attrib V3    0.10910705791104974
#>     Attrib V30    0.03360731242926672
#>     Attrib V31    -0.02204561631780291
#>     Attrib V32    0.026196190595470816
#>     Attrib V33    0.08940564281096984
#>     Attrib V34    0.09093429821628932
#>     Attrib V35    0.1104565580489899
#>     Attrib V36    0.15466155338011062
#>     Attrib V37    0.13046488948325682
#>     Attrib V38    0.04816457572109963
#>     Attrib V39    0.0940511886441244
#>     Attrib V4    0.07331241893995273
#>     Attrib V40    0.061114898856937834
#>     Attrib V41    0.008219899610398831
#>     Attrib V42    0.057302068611435775
#>     Attrib V43    0.021968888349987295
#>     Attrib V44    0.10566898946796827
#>     Attrib V45    0.06766151655599287
#>     Attrib V46    0.04851050838167923
#>     Attrib V47    0.0391176328023016
#>     Attrib V48    -0.0027186061408325706
#>     Attrib V49    0.010517950958016178
#>     Attrib V5    0.060780227142038894
#>     Attrib V50    -0.012976516243052972
#>     Attrib V51    0.09512988077342494
#>     Attrib V52    0.12901690532176735
#>     Attrib V53    0.03653739401629178
#>     Attrib V54    -0.018595481953486852
#>     Attrib V55    0.07564586658255308
#>     Attrib V56    0.09378322788770692
#>     Attrib V57    0.07407297534685776
#>     Attrib V58    0.12048772951500451
#>     Attrib V59    0.026176988292420513
#>     Attrib V6    0.06575171335168065
#>     Attrib V60    0.0909470752685415
#>     Attrib V7    0.011049711794063511
#>     Attrib V8    0.03654025618249499
#>     Attrib V9    0.06713765931965514
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
