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
#>     Threshold    -0.051193294845524345
#>     Node 2    2.205398306570123
#>     Node 3    1.5196927874914574
#>     Node 4    1.1681586768522085
#>     Node 5    -2.2895727832820336
#>     Node 6    0.5225716439881088
#>     Node 7    1.862460576468649
#>     Node 8    1.1792984642220485
#>     Node 9    4.911213373276229
#>     Node 10    -1.2734601805566108
#>     Node 11    1.6010476763013541
#>     Node 12    1.5374788972238635
#>     Node 13    1.186462214157033
#>     Node 14    1.468819814428369
#>     Node 15    -2.0216039643941865
#>     Node 16    -0.3131823687414454
#>     Node 17    0.7298088402123409
#>     Node 18    -0.017462665219676297
#>     Node 19    1.4616506327963534
#>     Node 20    1.8081291465779865
#>     Node 21    -2.056358253803545
#>     Node 22    0.5668363794182489
#>     Node 23    0.932002623975376
#>     Node 24    -1.3591570381923297
#>     Node 25    5.139991127080093
#>     Node 26    -1.0107162626615511
#>     Node 27    1.6907643087526867
#>     Node 28    -2.268681297575361
#>     Node 29    1.0602555616249056
#>     Node 30    -0.12653609735759108
#>     Node 31    0.7865668351362559
#>     Node 32    -0.9481478680252071
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.06087713057941892
#>     Node 2    -2.253998052187776
#>     Node 3    -1.501657449033158
#>     Node 4    -1.1311573187993575
#>     Node 5    2.309827419898177
#>     Node 6    -0.5002781788957431
#>     Node 7    -1.8577908381304442
#>     Node 8    -1.2194158825693708
#>     Node 9    -4.927818000540596
#>     Node 10    1.2383285681786897
#>     Node 11    -1.5615276260496678
#>     Node 12    -1.612023534619985
#>     Node 13    -1.1286912062819214
#>     Node 14    -1.4083345721803664
#>     Node 15    1.9860612051827264
#>     Node 16    0.30666689970408356
#>     Node 17    -0.6960471840640035
#>     Node 18    0.06299447704280815
#>     Node 19    -1.4674787302316699
#>     Node 20    -1.7889663467093782
#>     Node 21    2.087428945459079
#>     Node 22    -0.6207828848332797
#>     Node 23    -0.9747490600936477
#>     Node 24    1.350494103652627
#>     Node 25    -5.129913097184924
#>     Node 26    0.9543088250152598
#>     Node 27    -1.7284188510829255
#>     Node 28    2.259889804494561
#>     Node 29    -1.094650838275025
#>     Node 30    0.21031257015512153
#>     Node 31    -0.7280698600941422
#>     Node 32    0.9540621976423971
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.017310693351149216
#>     Attrib V1    0.29491853228453313
#>     Attrib V10    -0.20079019281871738
#>     Attrib V11    -0.10163649187990856
#>     Attrib V12    -0.2821789778677178
#>     Attrib V13    -0.4158717688577238
#>     Attrib V14    -0.22044033874743557
#>     Attrib V15    0.20351990963691374
#>     Attrib V16    0.44311383443597024
#>     Attrib V17    0.41001065044367524
#>     Attrib V18    -0.13769292253620216
#>     Attrib V19    0.06934983512474975
#>     Attrib V2    -0.07975303576669511
#>     Attrib V20    0.47104089981021263
#>     Attrib V21    0.9038450953029351
#>     Attrib V22    0.16948171731473732
#>     Attrib V23    0.06592259914694218
#>     Attrib V24    0.04638312079072746
#>     Attrib V25    -0.960420849398362
#>     Attrib V26    -0.804736331596949
#>     Attrib V27    -0.7044678996786817
#>     Attrib V28    -0.37281464928373276
#>     Attrib V29    -0.166063341972146
#>     Attrib V3    -0.11197010670374148
#>     Attrib V30    0.39264209974956743
#>     Attrib V31    -1.1767395116996462
#>     Attrib V32    -0.15881898842087613
#>     Attrib V33    0.3965842462698471
#>     Attrib V34    -0.07132480174753277
#>     Attrib V35    -0.4878864731890837
#>     Attrib V36    -0.6960855563793228
#>     Attrib V37    -0.8809577421796281
#>     Attrib V38    0.20027197255819876
#>     Attrib V39    0.18336945921746647
#>     Attrib V4    0.7071607700245822
#>     Attrib V40    -0.6926459868490972
#>     Attrib V41    -0.22062670702515622
#>     Attrib V42    0.40806577041447506
#>     Attrib V43    0.6526743937584565
#>     Attrib V44    1.0426192170629482
#>     Attrib V45    0.6675887453785679
#>     Attrib V46    0.16989932365925922
#>     Attrib V47    -0.2807671080332494
#>     Attrib V48    0.0171784450444981
#>     Attrib V49    0.4439798148631882
#>     Attrib V5    -0.05522079722485813
#>     Attrib V50    -0.6029294492831049
#>     Attrib V51    0.10734556928054248
#>     Attrib V52    -0.29386784248499437
#>     Attrib V53    -0.1748918359956965
#>     Attrib V54    0.7512745498393739
#>     Attrib V55    0.23135123561815452
#>     Attrib V56    0.4246045933810136
#>     Attrib V57    -0.009656942923047567
#>     Attrib V58    0.5377328273153285
#>     Attrib V59    0.7340783961993842
#>     Attrib V6    -0.510822679609254
#>     Attrib V60    0.38053764089562153
#>     Attrib V7    -0.42056747941933625
#>     Attrib V8    0.4112751367092382
#>     Attrib V9    0.3215690310581967
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.034459010526816526
#>     Attrib V1    0.2211877654440466
#>     Attrib V10    -0.19032278401090627
#>     Attrib V11    -0.051468313478129545
#>     Attrib V12    -0.1126153451342632
#>     Attrib V13    -0.2520594659672959
#>     Attrib V14    -0.174389505496614
#>     Attrib V15    0.18287115117059974
#>     Attrib V16    0.2929702752149557
#>     Attrib V17    0.2950137505641342
#>     Attrib V18    -0.10774301242285554
#>     Attrib V19    0.13361222131239367
#>     Attrib V2    -0.016138901566212338
#>     Attrib V20    0.31143874290942813
#>     Attrib V21    0.5525412168690123
#>     Attrib V22    0.13325397586082413
#>     Attrib V23    0.011177673168867565
#>     Attrib V24    0.0024539210836539314
#>     Attrib V25    -0.6439215059910185
#>     Attrib V26    -0.578128287077352
#>     Attrib V27    -0.5766964471580728
#>     Attrib V28    -0.4443096045965817
#>     Attrib V29    -0.29665416050738813
#>     Attrib V3    -0.10528041076118641
#>     Attrib V30    0.27507834629060546
#>     Attrib V31    -0.7273444807677495
#>     Attrib V32    -0.0688390166699329
#>     Attrib V33    0.35326085507530874
#>     Attrib V34    0.0030740596158625026
#>     Attrib V35    -0.25491541665302825
#>     Attrib V36    -0.4555932906896035
#>     Attrib V37    -0.6419218592740312
#>     Attrib V38    0.05806025870875629
#>     Attrib V39    0.1783227257273463
#>     Attrib V4    0.4703762027123091
#>     Attrib V40    -0.41116165848329445
#>     Attrib V41    -0.14136439822802122
#>     Attrib V42    0.2233098562333229
#>     Attrib V43    0.39968510782276123
#>     Attrib V44    0.6173607391371341
#>     Attrib V45    0.40629553895633613
#>     Attrib V46    0.09626843584999124
#>     Attrib V47    -0.14225693463648292
#>     Attrib V48    0.029628523091312906
#>     Attrib V49    0.35579895722077404
#>     Attrib V5    -0.06761310123896287
#>     Attrib V50    -0.3784888325164422
#>     Attrib V51    0.07428313509734195
#>     Attrib V52    -0.21280325255088003
#>     Attrib V53    -0.16094064056801513
#>     Attrib V54    0.6156909510878641
#>     Attrib V55    0.2822969024774004
#>     Attrib V56    0.33002753017512415
#>     Attrib V57    0.038009611599402554
#>     Attrib V58    0.4386059991307328
#>     Attrib V59    0.5767120943539604
#>     Attrib V6    -0.39960087134994476
#>     Attrib V60    0.31228928267104517
#>     Attrib V7    -0.3530295263411523
#>     Attrib V8    0.25500571387544935
#>     Attrib V9    0.1500087920694833
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.06368428977506317
#>     Attrib V1    0.08229725420192084
#>     Attrib V10    -0.1514009953042061
#>     Attrib V11    0.028111082017152164
#>     Attrib V12    -0.03583100388941225
#>     Attrib V13    -0.16601042844095218
#>     Attrib V14    -0.19322070456099352
#>     Attrib V15    0.06321331585059212
#>     Attrib V16    0.1943175291994231
#>     Attrib V17    0.21340795645130164
#>     Attrib V18    -0.07950830201259113
#>     Attrib V19    0.08526082634043368
#>     Attrib V2    -0.10416556651481038
#>     Attrib V20    0.20224928777134607
#>     Attrib V21    0.5043429281726258
#>     Attrib V22    0.08097785539143587
#>     Attrib V23    0.013001417299416108
#>     Attrib V24    0.017509581100641138
#>     Attrib V25    -0.5136225905831496
#>     Attrib V26    -0.3950673370909044
#>     Attrib V27    -0.44579689776344134
#>     Attrib V28    -0.28535188142661966
#>     Attrib V29    -0.13483742613068983
#>     Attrib V3    -0.13648816864414598
#>     Attrib V30    0.2272049939965822
#>     Attrib V31    -0.5774248309032112
#>     Attrib V32    -0.032920659258748354
#>     Attrib V33    0.3263826726793389
#>     Attrib V34    0.07888385445285356
#>     Attrib V35    -0.163359603505679
#>     Attrib V36    -0.3804019507414178
#>     Attrib V37    -0.5458021944998347
#>     Attrib V38    0.005034031852027878
#>     Attrib V39    0.1596370693664124
#>     Attrib V4    0.36131523752268113
#>     Attrib V40    -0.2567498774235555
#>     Attrib V41    0.004265885052951923
#>     Attrib V42    0.21201402304261194
#>     Attrib V43    0.2797971832664391
#>     Attrib V44    0.4226379493937721
#>     Attrib V45    0.386881710665615
#>     Attrib V46    0.08815123926451308
#>     Attrib V47    -0.11977119499880552
#>     Attrib V48    0.10850157359039575
#>     Attrib V49    0.3870951643086257
#>     Attrib V5    0.021452465348136857
#>     Attrib V50    -0.3095171660197864
#>     Attrib V51    0.16255975544679627
#>     Attrib V52    -0.18273595288690606
#>     Attrib V53    -0.029133384621063664
#>     Attrib V54    0.27930291158028614
#>     Attrib V55    0.1436326114138065
#>     Attrib V56    0.2100546878411338
#>     Attrib V57    -0.03431104238333347
#>     Attrib V58    0.24578546654242225
#>     Attrib V59    0.421292322701735
#>     Attrib V6    -0.31442620795021703
#>     Attrib V60    0.2238283359951329
#>     Attrib V7    -0.2809715036322206
#>     Attrib V8    0.1404681787496263
#>     Attrib V9    0.1955329211315768
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.35838257734871015
#>     Attrib V1    0.20989501270761668
#>     Attrib V10    -0.35025102524557367
#>     Attrib V11    -0.7273299416648916
#>     Attrib V12    -0.7281761558173611
#>     Attrib V13    -0.3518069169144045
#>     Attrib V14    0.7596468850028696
#>     Attrib V15    0.3208789451445293
#>     Attrib V16    0.05112882588905659
#>     Attrib V17    0.13254661984593058
#>     Attrib V18    0.5825757350824954
#>     Attrib V19    0.07275039356803398
#>     Attrib V2    0.29117271866724737
#>     Attrib V20    0.16725728418684496
#>     Attrib V21    -0.7483287422533222
#>     Attrib V22    -0.7653874482082789
#>     Attrib V23    -0.8459553948186018
#>     Attrib V24    -0.7716977306647772
#>     Attrib V25    0.5604309426168455
#>     Attrib V26    -0.04322000019823588
#>     Attrib V27    -0.2983844217174716
#>     Attrib V28    -0.49826892161716935
#>     Attrib V29    -0.4946712767504131
#>     Attrib V3    0.3035296372764722
#>     Attrib V30    -0.7867007401749663
#>     Attrib V31    1.1093689987064932
#>     Attrib V32    -0.17755630700636946
#>     Attrib V33    -0.39977311514807173
#>     Attrib V34    0.13566861286053428
#>     Attrib V35    0.6196184798129161
#>     Attrib V36    1.1195666706601684
#>     Attrib V37    0.9115588496644311
#>     Attrib V38    0.20643316341706616
#>     Attrib V39    -0.30106634345597355
#>     Attrib V4    -0.4701349037098198
#>     Attrib V40    0.07621567542522772
#>     Attrib V41    -1.2945957847591614
#>     Attrib V42    -0.45575961768000056
#>     Attrib V43    -0.4968380529082742
#>     Attrib V44    -0.21732921207343783
#>     Attrib V45    -0.273397039890452
#>     Attrib V46    -0.4254565355380321
#>     Attrib V47    -0.07911688898694628
#>     Attrib V48    -0.13744046859384537
#>     Attrib V49    -0.9001006055215713
#>     Attrib V5    -0.4120809197130934
#>     Attrib V50    0.8633351065501027
#>     Attrib V51    -0.9211690634948524
#>     Attrib V52    -0.18112469421823202
#>     Attrib V53    -0.4708685203119284
#>     Attrib V54    0.25344845652779485
#>     Attrib V55    0.32495530413520823
#>     Attrib V56    0.02477793549102234
#>     Attrib V57    0.5892862362247464
#>     Attrib V58    -0.5602012187710843
#>     Attrib V59    -0.6158650733636494
#>     Attrib V6    0.17168585810915557
#>     Attrib V60    -0.39013882391885235
#>     Attrib V7    0.8836476830111069
#>     Attrib V8    0.055901380025617245
#>     Attrib V9    -1.0900329904014558
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.03171688305550328
#>     Attrib V1    0.142471551878849
#>     Attrib V10    -0.12205840623900857
#>     Attrib V11    0.0020860041633289686
#>     Attrib V12    0.051422311297894874
#>     Attrib V13    -0.08676208850784722
#>     Attrib V14    -0.05419024243338617
#>     Attrib V15    0.031135468736273864
#>     Attrib V16    0.13875976220168204
#>     Attrib V17    0.052419648458084465
#>     Attrib V18    0.005744538345663065
#>     Attrib V19    0.021054691111861836
#>     Attrib V2    0.04450848838956083
#>     Attrib V20    0.09237231573467468
#>     Attrib V21    0.18101568708563048
#>     Attrib V22    -0.03855916245667749
#>     Attrib V23    -0.06551624318764239
#>     Attrib V24    -0.007846372187340597
#>     Attrib V25    -0.19868942719662025
#>     Attrib V26    -0.20556537390998883
#>     Attrib V27    -0.2096184806350907
#>     Attrib V28    -0.24142162944138487
#>     Attrib V29    -0.1474540004491817
#>     Attrib V3    -0.027161334225411945
#>     Attrib V30    0.033592599333096156
#>     Attrib V31    -0.27180601591825515
#>     Attrib V32    0.011808521261451781
#>     Attrib V33    0.16252207190560522
#>     Attrib V34    0.05829662834307402
#>     Attrib V35    -0.006423616956866037
#>     Attrib V36    -0.16053490114315538
#>     Attrib V37    -0.2349764236044193
#>     Attrib V38    0.006789632236186972
#>     Attrib V39    0.09397586663135216
#>     Attrib V4    0.17519432860945214
#>     Attrib V40    -0.11497007452169135
#>     Attrib V41    0.03357598799526105
#>     Attrib V42    0.10285239186707798
#>     Attrib V43    0.13493440877288354
#>     Attrib V44    0.10351809216263014
#>     Attrib V45    0.13225664213414046
#>     Attrib V46    0.08429520541845971
#>     Attrib V47    -0.01900964806961479
#>     Attrib V48    0.02202214030530943
#>     Attrib V49    0.11130433146515192
#>     Attrib V5    0.004719588108928761
#>     Attrib V50    -0.07269863126828424
#>     Attrib V51    0.11090590637986249
#>     Attrib V52    -0.049092585261173695
#>     Attrib V53    0.05352363694655736
#>     Attrib V54    0.16869687928720206
#>     Attrib V55    0.12851767422282528
#>     Attrib V56    0.14376520592209602
#>     Attrib V57    0.06258713348467908
#>     Attrib V58    0.1748969629945327
#>     Attrib V59    0.2768641762064921
#>     Attrib V6    -0.0791159149818278
#>     Attrib V60    0.20195204213299237
#>     Attrib V7    -0.1121164509061308
#>     Attrib V8    0.11248319335120147
#>     Attrib V9    0.08484001576226444
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.46320847230507467
#>     Attrib V1    0.06883596713036047
#>     Attrib V10    0.34738358226146004
#>     Attrib V11    0.8051550368781109
#>     Attrib V12    0.5711375894785815
#>     Attrib V13    0.2454656211413121
#>     Attrib V14    -0.5726846430380541
#>     Attrib V15    -0.26396645153155474
#>     Attrib V16    -0.2087287061886717
#>     Attrib V17    -0.4044184615523928
#>     Attrib V18    -0.640371503892431
#>     Attrib V19    -0.47064313420782244
#>     Attrib V2    -0.034698080686470636
#>     Attrib V20    -0.47469208319878914
#>     Attrib V21    0.13273021213402517
#>     Attrib V22    0.058058081545084926
#>     Attrib V23    0.027819358404747026
#>     Attrib V24    0.051934895628733484
#>     Attrib V25    -0.3794265390280812
#>     Attrib V26    0.3993796956121416
#>     Attrib V27    0.7012994597785722
#>     Attrib V28    0.716389630902476
#>     Attrib V29    0.7120949517652823
#>     Attrib V3    -0.24560338999038148
#>     Attrib V30    0.47205599997415343
#>     Attrib V31    -0.7132917939997659
#>     Attrib V32    -0.3114351580004199
#>     Attrib V33    -0.2200468027502769
#>     Attrib V34    -0.26908379218801864
#>     Attrib V35    -0.16111889580985553
#>     Attrib V36    -0.3416409742717414
#>     Attrib V37    0.07542132273787625
#>     Attrib V38    0.12692522888695018
#>     Attrib V39    0.2453044595690664
#>     Attrib V4    0.3015074999839018
#>     Attrib V40    0.1007876631926471
#>     Attrib V41    0.7222198279215909
#>     Attrib V42    0.08573796972383697
#>     Attrib V43    0.24693128811990142
#>     Attrib V44    0.28664297931901295
#>     Attrib V45    0.5099946064231877
#>     Attrib V46    0.6817735606091369
#>     Attrib V47    0.4017244763912557
#>     Attrib V48    0.1895322842623861
#>     Attrib V49    0.44082408969056497
#>     Attrib V5    0.535053017490343
#>     Attrib V50    -0.27607928682294547
#>     Attrib V51    0.6089368827680604
#>     Attrib V52    0.2559143849956714
#>     Attrib V53    0.44278279386521074
#>     Attrib V54    -0.07210611350141663
#>     Attrib V55    -0.07938098718687898
#>     Attrib V56    -0.37073652396161877
#>     Attrib V57    -0.3887963571553221
#>     Attrib V58    0.06415287878418635
#>     Attrib V59    0.2566800763044442
#>     Attrib V6    0.11150845311800468
#>     Attrib V60    0.32027658705844725
#>     Attrib V7    -0.0989440983711305
#>     Attrib V8    -0.2394757233375308
#>     Attrib V9    0.49721949610897054
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.29422944930840217
#>     Attrib V1    0.0329969485299011
#>     Attrib V10    -0.07209691413233216
#>     Attrib V11    0.26378863106480405
#>     Attrib V12    0.11914441235267337
#>     Attrib V13    -0.09608158199198769
#>     Attrib V14    -0.4074776975379698
#>     Attrib V15    -0.1475696035592844
#>     Attrib V16    0.05548034007032777
#>     Attrib V17    0.005335903510559247
#>     Attrib V18    -0.27041277310531386
#>     Attrib V19    -0.102371504810319
#>     Attrib V2    -0.09609284958378432
#>     Attrib V20    -0.08415168402934124
#>     Attrib V21    0.31028588256176526
#>     Attrib V22    -9.186957721459544E-4
#>     Attrib V23    -0.16184853467726346
#>     Attrib V24    -0.0806729549812197
#>     Attrib V25    -0.46438995000155964
#>     Attrib V26    -0.09151745721937221
#>     Attrib V27    0.020965730225961085
#>     Attrib V28    0.06920032580760702
#>     Attrib V29    0.16140241439589992
#>     Attrib V3    -0.25795246738651983
#>     Attrib V30    0.316023347877454
#>     Attrib V31    -0.6758119070860715
#>     Attrib V32    -0.2625962985937361
#>     Attrib V33    0.06265291788075539
#>     Attrib V34    -0.03652893676259113
#>     Attrib V35    -0.06197566874230674
#>     Attrib V36    -0.09217802736843907
#>     Attrib V37    -0.10321705534774121
#>     Attrib V38    0.2957957971393212
#>     Attrib V39    0.32112315514525963
#>     Attrib V4    0.4454707669866786
#>     Attrib V40    -0.1349036940477411
#>     Attrib V41    0.13340585895226356
#>     Attrib V42    0.04249631990940988
#>     Attrib V43    0.3767977386752331
#>     Attrib V44    0.6662949470961735
#>     Attrib V45    0.5803916274683466
#>     Attrib V46    0.36868324586921
#>     Attrib V47    0.12061694066303902
#>     Attrib V48    0.22969522450823943
#>     Attrib V49    0.4277911031580845
#>     Attrib V5    0.12963944975409875
#>     Attrib V50    -0.29948625222206865
#>     Attrib V51    0.17497681030834433
#>     Attrib V52    -0.10972445640746717
#>     Attrib V53    0.0944500245542707
#>     Attrib V54    0.20954394457859343
#>     Attrib V55    0.0426728587718846
#>     Attrib V56    -0.06962116661488385
#>     Attrib V57    -0.023593892231115358
#>     Attrib V58    0.09876934327809028
#>     Attrib V59    0.39200411753700576
#>     Attrib V6    -0.21785915505838813
#>     Attrib V60    0.25555601585418486
#>     Attrib V7    -0.2538778992957304
#>     Attrib V8    -0.03658135988798745
#>     Attrib V9    0.11860232991985613
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.29048132589801823
#>     Attrib V1    -0.24707653286272843
#>     Attrib V10    0.9842701222851775
#>     Attrib V11    1.4785918102284306
#>     Attrib V12    1.5626624036911663
#>     Attrib V13    1.229602637106921
#>     Attrib V14    -1.0539062558083108
#>     Attrib V15    -0.8001436762229615
#>     Attrib V16    -0.33740498006555175
#>     Attrib V17    -0.5921748816092194
#>     Attrib V18    -0.729588299740362
#>     Attrib V19    -0.04449467825171327
#>     Attrib V2    0.001369794649155735
#>     Attrib V20    -0.7911297809462012
#>     Attrib V21    0.4170525736290027
#>     Attrib V22    1.2739809403729998
#>     Attrib V23    1.4748761830567618
#>     Attrib V24    1.1547930633599897
#>     Attrib V25    0.0703505489081749
#>     Attrib V26    1.0352155734241586
#>     Attrib V27    1.5333817698562406
#>     Attrib V28    1.637396545169325
#>     Attrib V29    1.0569356211267844
#>     Attrib V3    -0.49583624749420285
#>     Attrib V30    0.5317322400695033
#>     Attrib V31    -1.126130409320402
#>     Attrib V32    0.20406137833888816
#>     Attrib V33    -0.13336062007108695
#>     Attrib V34    -0.17713807390936517
#>     Attrib V35    -0.11644957516759727
#>     Attrib V36    -0.6028131256335221
#>     Attrib V37    -0.29818888308033986
#>     Attrib V38    -0.3477496456149904
#>     Attrib V39    0.6706424526194816
#>     Attrib V4    -0.28277647070651013
#>     Attrib V40    1.1113052923557347
#>     Attrib V41    2.6609322953657535
#>     Attrib V42    0.09523212028700245
#>     Attrib V43    0.09332481676615399
#>     Attrib V44    -0.47451037539035873
#>     Attrib V45    0.21991736784518082
#>     Attrib V46    1.1736288525829695
#>     Attrib V47    0.8569706665744355
#>     Attrib V48    0.5188667181957308
#>     Attrib V49    1.5548343335214867
#>     Attrib V5    0.9364518672967618
#>     Attrib V50    -0.4247316927557069
#>     Attrib V51    1.9349548530178409
#>     Attrib V52    1.1448127210109809
#>     Attrib V53    1.386664929151207
#>     Attrib V54    -1.4795521616784062
#>     Attrib V55    -0.5035953839958833
#>     Attrib V56    -0.814013282118602
#>     Attrib V57    -1.5265566551404783
#>     Attrib V58    0.1794467569437772
#>     Attrib V59    0.45841529372769185
#>     Attrib V6    0.6126357588509939
#>     Attrib V60    0.8689155754449238
#>     Attrib V7    -0.5562800835277946
#>     Attrib V8    -0.6105405658368002
#>     Attrib V9    1.2640708640574632
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.19748736947386467
#>     Attrib V1    0.11071267588523682
#>     Attrib V10    0.0059073558689432095
#>     Attrib V11    -0.32749801552000396
#>     Attrib V12    -0.28187408918487816
#>     Attrib V13    -0.06103343170853807
#>     Attrib V14    0.46202978575141296
#>     Attrib V15    0.2419441485238469
#>     Attrib V16    0.2222117544781124
#>     Attrib V17    0.1891806889071435
#>     Attrib V18    0.5303803848405105
#>     Attrib V19    0.24458425745948595
#>     Attrib V2    0.32503393034684913
#>     Attrib V20    0.2690919290096415
#>     Attrib V21    -0.17394774327637103
#>     Attrib V22    -0.09543923528824788
#>     Attrib V23    -0.15216003700480568
#>     Attrib V24    -0.3604207596157402
#>     Attrib V25    0.13555341106535143
#>     Attrib V26    -0.0749543484540965
#>     Attrib V27    -0.11771743875000855
#>     Attrib V28    -0.265273425463416
#>     Attrib V29    -0.33362882836381696
#>     Attrib V3    0.29832485120515595
#>     Attrib V30    -0.4440110795861869
#>     Attrib V31    0.6311736541546842
#>     Attrib V32    -0.23986013615210267
#>     Attrib V33    -0.38727521239591794
#>     Attrib V34    -0.0867396912346481
#>     Attrib V35    0.32445287163232495
#>     Attrib V36    0.6041172659023563
#>     Attrib V37    0.6365281479270702
#>     Attrib V38    0.01650112966838948
#>     Attrib V39    -0.37971813685792133
#>     Attrib V4    -0.0996683892621101
#>     Attrib V40    0.15256541938386098
#>     Attrib V41    -0.35536011811965323
#>     Attrib V42    -0.3082890900696537
#>     Attrib V43    -0.38918513664543863
#>     Attrib V44    -0.35774845545664397
#>     Attrib V45    -0.2839352730515144
#>     Attrib V46    -0.2627551738116854
#>     Attrib V47    0.008649196428777164
#>     Attrib V48    -0.11093215002451959
#>     Attrib V49    -0.4893334118778223
#>     Attrib V5    0.09458900418141694
#>     Attrib V50    0.6068516383224104
#>     Attrib V51    -0.2747313596854799
#>     Attrib V52    0.1293322677906496
#>     Attrib V53    0.1119855841093943
#>     Attrib V54    -0.0367119944069281
#>     Attrib V55    0.12217897813038597
#>     Attrib V56    -0.035813298503579505
#>     Attrib V57    0.36063951697777824
#>     Attrib V58    -0.2908078312666832
#>     Attrib V59    -0.3572110393429436
#>     Attrib V6    0.4266130494235124
#>     Attrib V60    -0.16820195916242683
#>     Attrib V7    0.5711431051398121
#>     Attrib V8    0.06578521020426666
#>     Attrib V9    -0.3443895796474729
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.008403902369451014
#>     Attrib V1    0.23770806689188057
#>     Attrib V10    -0.27287050470884167
#>     Attrib V11    -0.10087289447836434
#>     Attrib V12    -0.122155173844183
#>     Attrib V13    -0.32569610801846155
#>     Attrib V14    -0.13570414022342667
#>     Attrib V15    0.195721143766293
#>     Attrib V16    0.34886950240690195
#>     Attrib V17    0.35587597865511156
#>     Attrib V18    -0.04292602730622326
#>     Attrib V19    0.07786050048866223
#>     Attrib V2    -0.010076491169503007
#>     Attrib V20    0.3772461767205232
#>     Attrib V21    0.5377390111770582
#>     Attrib V22    0.03454745635233157
#>     Attrib V23    -0.04956176689963564
#>     Attrib V24    -0.057796720372700186
#>     Attrib V25    -0.6919481714279739
#>     Attrib V26    -0.6673483070617774
#>     Attrib V27    -0.6225934030700246
#>     Attrib V28    -0.47996797506900585
#>     Attrib V29    -0.30104556202616767
#>     Attrib V3    -0.1101853699906614
#>     Attrib V30    0.1805928738866694
#>     Attrib V31    -0.7994463939782189
#>     Attrib V32    -0.19428032120010016
#>     Attrib V33    0.2819994064327392
#>     Attrib V34    0.07659684206363418
#>     Attrib V35    -0.1885036398924272
#>     Attrib V36    -0.3830973049262128
#>     Attrib V37    -0.5959610220896667
#>     Attrib V38    0.16516595034240203
#>     Attrib V39    0.16113857606174484
#>     Attrib V4    0.4323059424695542
#>     Attrib V40    -0.43948190208036375
#>     Attrib V41    -0.2780755336909736
#>     Attrib V42    0.20598429675746177
#>     Attrib V43    0.4132822594910545
#>     Attrib V44    0.6101668289940843
#>     Attrib V45    0.4468618054054296
#>     Attrib V46    0.0887815420242459
#>     Attrib V47    -0.15097645072363375
#>     Attrib V48    0.06318546333027213
#>     Attrib V49    0.3006990756623079
#>     Attrib V5    -0.08340554365701526
#>     Attrib V50    -0.3288626282093997
#>     Attrib V51    0.10267210285711802
#>     Attrib V52    -0.2773430877371963
#>     Attrib V53    -0.15395802181755758
#>     Attrib V54    0.6860696739844592
#>     Attrib V55    0.2887411741631975
#>     Attrib V56    0.40155410958705806
#>     Attrib V57    0.13922853095278087
#>     Attrib V58    0.42265428127473564
#>     Attrib V59    0.5191711711927325
#>     Attrib V6    -0.3541609909332113
#>     Attrib V60    0.33732660733514636
#>     Attrib V7    -0.34329271881971063
#>     Attrib V8    0.2585685350095419
#>     Attrib V9    0.11494900094825491
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.05779494246803909
#>     Attrib V1    0.22849784523202743
#>     Attrib V10    -0.29228294503062174
#>     Attrib V11    -0.06499716798220388
#>     Attrib V12    -0.19985176057191706
#>     Attrib V13    -0.30285796894065137
#>     Attrib V14    -0.11974715005748383
#>     Attrib V15    0.18963022562557363
#>     Attrib V16    0.37520077606201774
#>     Attrib V17    0.3158697508713124
#>     Attrib V18    -0.07566170784571914
#>     Attrib V19    0.1367917698609627
#>     Attrib V2    0.052607563142745055
#>     Attrib V20    0.3102925482760449
#>     Attrib V21    0.5394748941631299
#>     Attrib V22    0.09311713254033142
#>     Attrib V23    -0.04048385937238202
#>     Attrib V24    -0.08703365916150277
#>     Attrib V25    -0.754839512804299
#>     Attrib V26    -0.6547899703337908
#>     Attrib V27    -0.5769812692923197
#>     Attrib V28    -0.48232204229606124
#>     Attrib V29    -0.21982678128564687
#>     Attrib V3    -0.12346163613761896
#>     Attrib V30    0.18251187386257597
#>     Attrib V31    -0.8154977033611878
#>     Attrib V32    -0.2082132609033473
#>     Attrib V33    0.3178139804327122
#>     Attrib V34    0.06233108351278244
#>     Attrib V35    -0.23299580054968777
#>     Attrib V36    -0.4142652613119913
#>     Attrib V37    -0.6031625988541592
#>     Attrib V38    0.1366159867716763
#>     Attrib V39    0.13153472362487312
#>     Attrib V4    0.4973948994835151
#>     Attrib V40    -0.4089382927899621
#>     Attrib V41    -0.23150258650854294
#>     Attrib V42    0.18029005134654094
#>     Attrib V43    0.45778637402138356
#>     Attrib V44    0.5684411938116396
#>     Attrib V45    0.44020261703545427
#>     Attrib V46    0.165696551880241
#>     Attrib V47    -0.18291516691326024
#>     Attrib V48    0.059972150015262425
#>     Attrib V49    0.2709632892437458
#>     Attrib V5    -0.07719887220088535
#>     Attrib V50    -0.38503408020732816
#>     Attrib V51    0.06273396275027751
#>     Attrib V52    -0.21221282302887703
#>     Attrib V53    -0.10732390109941332
#>     Attrib V54    0.6406453220197492
#>     Attrib V55    0.24900625639138824
#>     Attrib V56    0.39268623517846335
#>     Attrib V57    0.1440265057504215
#>     Attrib V58    0.4273645319455295
#>     Attrib V59    0.5936865869488788
#>     Attrib V6    -0.3920633671556577
#>     Attrib V60    0.34771378492750454
#>     Attrib V7    -0.2784212727811327
#>     Attrib V8    0.259238548402736
#>     Attrib V9    0.13345612993896933
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.06898894594284381
#>     Attrib V1    0.19336822355052732
#>     Attrib V10    -0.22383718686878812
#>     Attrib V11    -0.04575613284332533
#>     Attrib V12    -0.07989415275768508
#>     Attrib V13    -0.14323205395963373
#>     Attrib V14    -0.1274750986746826
#>     Attrib V15    0.08267314728824789
#>     Attrib V16    0.21650018037197358
#>     Attrib V17    0.25970010970164
#>     Attrib V18    -0.01642408968889422
#>     Attrib V19    0.1090011685934513
#>     Attrib V2    -0.03534012574173016
#>     Attrib V20    0.2939992879686073
#>     Attrib V21    0.46486972369977014
#>     Attrib V22    0.05118482965564664
#>     Attrib V23    0.025922918823540402
#>     Attrib V24    0.02092302849840455
#>     Attrib V25    -0.4541355470356248
#>     Attrib V26    -0.4923540922813799
#>     Attrib V27    -0.4786320396971289
#>     Attrib V28    -0.46078730627195447
#>     Attrib V29    -0.24431840507694047
#>     Attrib V3    -0.05331749946668318
#>     Attrib V30    0.14197580968706813
#>     Attrib V31    -0.6241546809807184
#>     Attrib V32    -0.056114381209483054
#>     Attrib V33    0.28821798365583673
#>     Attrib V34    0.13819565724759703
#>     Attrib V35    -0.1328421112481748
#>     Attrib V36    -0.316558684968025
#>     Attrib V37    -0.49546514359861843
#>     Attrib V38    0.06868773925338512
#>     Attrib V39    0.20905172340246428
#>     Attrib V4    0.34848607279003496
#>     Attrib V40    -0.2793063722804998
#>     Attrib V41    -0.0989626227473474
#>     Attrib V42    0.1766554619884964
#>     Attrib V43    0.27490967495629015
#>     Attrib V44    0.3816147798720143
#>     Attrib V45    0.2600714475907842
#>     Attrib V46    0.10479858916927733
#>     Attrib V47    -0.08800549923619422
#>     Attrib V48    0.03554121283113112
#>     Attrib V49    0.30549719834289835
#>     Attrib V5    -0.0642386486401607
#>     Attrib V50    -0.299205392951269
#>     Attrib V51    0.07089544084516948
#>     Attrib V52    -0.2180368842191445
#>     Attrib V53    -0.09976540361006134
#>     Attrib V54    0.4245635519197879
#>     Attrib V55    0.22158289607304876
#>     Attrib V56    0.2751040818924517
#>     Attrib V57    0.07371430786961665
#>     Attrib V58    0.3087384066062275
#>     Attrib V59    0.5060796264194771
#>     Attrib V6    -0.27995883255200527
#>     Attrib V60    0.33817821732801673
#>     Attrib V7    -0.22677980776143197
#>     Attrib V8    0.15491651303798284
#>     Attrib V9    0.10599228348753395
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.21106582123947976
#>     Attrib V1    0.19413161362201026
#>     Attrib V10    -0.20960752374748032
#>     Attrib V11    0.17065940126293672
#>     Attrib V12    0.08022255043598032
#>     Attrib V13    -0.2122014075275807
#>     Attrib V14    -0.3204170864989588
#>     Attrib V15    0.037149033128997845
#>     Attrib V16    0.1787476249546568
#>     Attrib V17    0.2585730717902439
#>     Attrib V18    -0.08931247574818806
#>     Attrib V19    0.03549308890437181
#>     Attrib V2    -0.09492504208634236
#>     Attrib V20    0.1981445954025456
#>     Attrib V21    0.5007589087868031
#>     Attrib V22    0.07457851871105393
#>     Attrib V23    -0.03188683440981764
#>     Attrib V24    -0.044565274525063446
#>     Attrib V25    -0.5902215977950597
#>     Attrib V26    -0.39959574730361663
#>     Attrib V27    -0.43561038155280746
#>     Attrib V28    -0.43321980336220406
#>     Attrib V29    -0.25635262295970246
#>     Attrib V3    -0.26881532083762977
#>     Attrib V30    0.27774335221105867
#>     Attrib V31    -0.6901434564768609
#>     Attrib V32    -0.1372593608450716
#>     Attrib V33    0.27780767710435417
#>     Attrib V34    0.0272122477199555
#>     Attrib V35    -0.13348572161808728
#>     Attrib V36    -0.3346818089193151
#>     Attrib V37    -0.42870511206474354
#>     Attrib V38    0.1612311396312297
#>     Attrib V39    0.268845058850422
#>     Attrib V4    0.4635069064681048
#>     Attrib V40    -0.35080178071972185
#>     Attrib V41    -0.12752029248862265
#>     Attrib V42    0.10135518058109336
#>     Attrib V43    0.407715325867531
#>     Attrib V44    0.6678906359052736
#>     Attrib V45    0.4044135562412799
#>     Attrib V46    0.15475204593790082
#>     Attrib V47    -0.14755483253244955
#>     Attrib V48    0.1318091069056862
#>     Attrib V49    0.44348268844236766
#>     Attrib V5    -0.06487893761720454
#>     Attrib V50    -0.3865178895996053
#>     Attrib V51    0.07339016371107027
#>     Attrib V52    -0.27065216835973915
#>     Attrib V53    -0.13487226892038923
#>     Attrib V54    0.5846727716552703
#>     Attrib V55    0.2583265359277631
#>     Attrib V56    0.2381679878042954
#>     Attrib V57    0.010913757771185473
#>     Attrib V58    0.3131806134849441
#>     Attrib V59    0.537712182600418
#>     Attrib V6    -0.4150933093759944
#>     Attrib V60    0.35655908588865565
#>     Attrib V7    -0.3911151929547354
#>     Attrib V8    0.06059320526673254
#>     Attrib V9    0.1128167508529755
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.0435412468072512
#>     Attrib V1    -0.09165152122503772
#>     Attrib V10    -0.0827329557133232
#>     Attrib V11    -0.5123598802760627
#>     Attrib V12    -0.21089475471049454
#>     Attrib V13    0.019114019322207645
#>     Attrib V14    0.5298915888898721
#>     Attrib V15    0.3138984451486826
#>     Attrib V16    -0.08726490237032121
#>     Attrib V17    -0.3265920567590439
#>     Attrib V18    0.12769874153201172
#>     Attrib V19    -0.19975470216844732
#>     Attrib V2    0.37877351295509587
#>     Attrib V20    -0.3623832236588231
#>     Attrib V21    -1.0711898069375625
#>     Attrib V22    -0.6690714267800961
#>     Attrib V23    -0.7196357149201552
#>     Attrib V24    -0.6121542288050301
#>     Attrib V25    0.376274517772154
#>     Attrib V26    0.20367765564164653
#>     Attrib V27    0.2809238254289906
#>     Attrib V28    0.2773215446581295
#>     Attrib V29    0.23215551092070355
#>     Attrib V3    0.3893083454991666
#>     Attrib V30    -0.5365353309149257
#>     Attrib V31    0.9925308369792261
#>     Attrib V32    -0.202689785155708
#>     Attrib V33    -0.6030397357887367
#>     Attrib V34    -0.05517427108019725
#>     Attrib V35    0.2251324103832186
#>     Attrib V36    0.5141100290212961
#>     Attrib V37    0.872943448422073
#>     Attrib V38    -0.15665167595845778
#>     Attrib V39    -0.305788425092587
#>     Attrib V4    -0.5747647792056226
#>     Attrib V40    0.5412766342416191
#>     Attrib V41    -0.31363695866876845
#>     Attrib V42    -0.4855142419093033
#>     Attrib V43    -0.7278946333307006
#>     Attrib V44    -0.8103582725282202
#>     Attrib V45    -0.5121451046162949
#>     Attrib V46    -0.1926475598696862
#>     Attrib V47    0.16081016423903036
#>     Attrib V48    0.023020034145379217
#>     Attrib V49    -0.6954244091142563
#>     Attrib V5    0.0584182322407841
#>     Attrib V50    0.6266136077860313
#>     Attrib V51    -0.4683956325082477
#>     Attrib V52    0.1728920079350274
#>     Attrib V53    0.22114214609737032
#>     Attrib V54    -0.2140310550067782
#>     Attrib V55    -0.020802389684571175
#>     Attrib V56    -0.2053991699534237
#>     Attrib V57    0.3101232503171444
#>     Attrib V58    -0.6006557313735722
#>     Attrib V59    -0.6827993331103674
#>     Attrib V6    0.4588260097233549
#>     Attrib V60    -0.41051732452615175
#>     Attrib V7    0.6681186616265796
#>     Attrib V8    -0.3806680130255409
#>     Attrib V9    -0.6975187998547852
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.194622668367505
#>     Attrib V1    0.05496196104182508
#>     Attrib V10    0.10329893756189877
#>     Attrib V11    -0.013171015316442596
#>     Attrib V12    -0.017017574580303188
#>     Attrib V13    0.036976939404475925
#>     Attrib V14    0.09684205781820981
#>     Attrib V15    0.08933202903118749
#>     Attrib V16    0.1566663515081291
#>     Attrib V17    0.18118994708939481
#>     Attrib V18    0.2200486249243936
#>     Attrib V19    0.10508244301285158
#>     Attrib V2    0.10860539042146461
#>     Attrib V20    0.026319578708465134
#>     Attrib V21    -0.07606875267103756
#>     Attrib V22    -0.05109496907246704
#>     Attrib V23    -0.07147730466994892
#>     Attrib V24    -0.068771927660117
#>     Attrib V25    0.015229745484622852
#>     Attrib V26    -0.12401347783605872
#>     Attrib V27    -0.1083418548709419
#>     Attrib V28    -0.03749456156209676
#>     Attrib V29    -0.06838842891590605
#>     Attrib V3    0.20744313388666913
#>     Attrib V30    -0.07704438973474044
#>     Attrib V31    0.15415945320626026
#>     Attrib V32    0.06337833413355465
#>     Attrib V33    -0.024219077753772175
#>     Attrib V34    0.05818581137218298
#>     Attrib V35    0.11323872588066951
#>     Attrib V36    0.18587539832981373
#>     Attrib V37    0.2796137797113387
#>     Attrib V38    0.10401316468822351
#>     Attrib V39    0.021926320125933124
#>     Attrib V4    0.0981407008712458
#>     Attrib V40    0.08573622628233653
#>     Attrib V41    0.0421707506676329
#>     Attrib V42    0.0682672156919132
#>     Attrib V43    -0.03467370613758586
#>     Attrib V44    -0.06526340522955926
#>     Attrib V45    -0.023597210144785545
#>     Attrib V46    0.009664717500170058
#>     Attrib V47    0.06612380676428962
#>     Attrib V48    -0.011307658621253821
#>     Attrib V49    -0.12501381711815984
#>     Attrib V5    0.1406337227423705
#>     Attrib V50    0.1592834822202793
#>     Attrib V51    0.07688488165089596
#>     Attrib V52    0.16222821665709633
#>     Attrib V53    0.12376480483298274
#>     Attrib V54    -0.024989461223068814
#>     Attrib V55    0.08671402630740989
#>     Attrib V56    0.08973112072751194
#>     Attrib V57    0.1881234750939529
#>     Attrib V58    0.07071999586598667
#>     Attrib V59    -0.058297835516302
#>     Attrib V6    0.20477541937632035
#>     Attrib V60    0.026814008418485885
#>     Attrib V7    0.16361683562715043
#>     Attrib V8    0.06719891643827064
#>     Attrib V9    0.08673485375738275
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.028541140431658153
#>     Attrib V1    0.16351203807527198
#>     Attrib V10    -0.11489527811632842
#>     Attrib V11    0.017179665226148534
#>     Attrib V12    -0.0222578106399567
#>     Attrib V13    -0.12516240210760501
#>     Attrib V14    -0.0831829909659614
#>     Attrib V15    0.12111720844053615
#>     Attrib V16    0.1410959358114081
#>     Attrib V17    0.11899962534926417
#>     Attrib V18    -0.03829261868170388
#>     Attrib V19    0.05863570147582558
#>     Attrib V2    0.08597103276420529
#>     Attrib V20    0.09219169550748176
#>     Attrib V21    0.18843977324169342
#>     Attrib V22    0.020956714456801587
#>     Attrib V23    -0.11870019669656433
#>     Attrib V24    -0.046727796801232895
#>     Attrib V25    -0.36646626861739623
#>     Attrib V26    -0.3107417989011978
#>     Attrib V27    -0.3177951754465493
#>     Attrib V28    -0.3258490750426558
#>     Attrib V29    -0.23543389826457864
#>     Attrib V3    -0.07074319857484211
#>     Attrib V30    0.04760551693480713
#>     Attrib V31    -0.33180385527621103
#>     Attrib V32    -0.1003019256117005
#>     Attrib V33    0.19704606947009917
#>     Attrib V34    0.05480156993296376
#>     Attrib V35    0.012126486676795832
#>     Attrib V36    -0.16224546845636686
#>     Attrib V37    -0.292975070368258
#>     Attrib V38    0.11069424028758838
#>     Attrib V39    0.16969908748416057
#>     Attrib V4    0.19502570054411553
#>     Attrib V40    -0.17563148526086503
#>     Attrib V41    -0.049705113027350104
#>     Attrib V42    0.06353296634699233
#>     Attrib V43    0.23699761282955703
#>     Attrib V44    0.22559633082145572
#>     Attrib V45    0.22244861806668353
#>     Attrib V46    0.06576737085323205
#>     Attrib V47    -0.06999059446995512
#>     Attrib V48    0.10493137246436855
#>     Attrib V49    0.1373438993982739
#>     Attrib V5    -0.019328932117813766
#>     Attrib V50    -0.12529565624006878
#>     Attrib V51    0.11245720454841288
#>     Attrib V52    -0.10070720122789159
#>     Attrib V53    -0.034153746326974196
#>     Attrib V54    0.2936010966585835
#>     Attrib V55    0.24220409231070114
#>     Attrib V56    0.1929577028625873
#>     Attrib V57    0.10844840855951172
#>     Attrib V58    0.16021255532962597
#>     Attrib V59    0.27017876709142685
#>     Attrib V6    -0.174994617935745
#>     Attrib V60    0.24002442941871033
#>     Attrib V7    -0.21073591680132803
#>     Attrib V8    0.10999552832192516
#>     Attrib V9    0.020749547421744806
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.21344087268097803
#>     Attrib V1    0.07301853146838537
#>     Attrib V10    0.04607293660393481
#>     Attrib V11    -0.009399716528061193
#>     Attrib V12    -0.02128893011321006
#>     Attrib V13    -0.011246119092035203
#>     Attrib V14    0.0706758615112867
#>     Attrib V15    0.03108642645761899
#>     Attrib V16    0.05138363980513123
#>     Attrib V17    0.012998902150512063
#>     Attrib V18    0.10006898127341946
#>     Attrib V19    -0.011393184387264922
#>     Attrib V2    0.1249391301740725
#>     Attrib V20    0.052570029374965646
#>     Attrib V21    0.011043892275745006
#>     Attrib V22    -0.06729258141892505
#>     Attrib V23    -0.050798816455652464
#>     Attrib V24    -0.09557802876887908
#>     Attrib V25    -0.04041238524196895
#>     Attrib V26    -0.06859977619223358
#>     Attrib V27    -0.07117970932773506
#>     Attrib V28    -0.05951553623017099
#>     Attrib V29    -0.05566370937981556
#>     Attrib V3    0.1680193542520841
#>     Attrib V30    -0.05048886647922755
#>     Attrib V31    0.04016879493288753
#>     Attrib V32    0.02227112192826627
#>     Attrib V33    0.03092195634059598
#>     Attrib V34    0.07686687298115025
#>     Attrib V35    0.06526270150254614
#>     Attrib V36    0.15610492437374707
#>     Attrib V37    0.08894979478291791
#>     Attrib V38    0.05992193584343616
#>     Attrib V39    0.08492904156433792
#>     Attrib V4    0.05108776733680457
#>     Attrib V40    0.033836259462506
#>     Attrib V41    -0.02958844198002852
#>     Attrib V42    0.03437147683469516
#>     Attrib V43    0.02739092205118895
#>     Attrib V44    0.04417748122476243
#>     Attrib V45    -0.027525217087278786
#>     Attrib V46    0.010466659443663007
#>     Attrib V47    0.09630886059747126
#>     Attrib V48    0.034658058959243156
#>     Attrib V49    9.93327831637337E-4
#>     Attrib V5    0.08540544300271623
#>     Attrib V50    0.03215887051718422
#>     Attrib V51    0.12006951886220883
#>     Attrib V52    0.09167302447945316
#>     Attrib V53    0.08269074839812876
#>     Attrib V54    0.004361005783071401
#>     Attrib V55    0.11642718706858159
#>     Attrib V56    0.11025414093171242
#>     Attrib V57    0.07261882271246639
#>     Attrib V58    0.06336251640722151
#>     Attrib V59    0.068394630487946
#>     Attrib V6    0.06833757848200543
#>     Attrib V60    0.09754497506928017
#>     Attrib V7    0.11411708534191149
#>     Attrib V8    0.1141814873927349
#>     Attrib V9    0.047040559093013426
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.3713368772631808
#>     Attrib V1    -2.0826622015947312E-4
#>     Attrib V10    0.03819964243068624
#>     Attrib V11    0.4465601725726535
#>     Attrib V12    0.38365006466235396
#>     Attrib V13    0.005053721041522176
#>     Attrib V14    -0.41129738832731755
#>     Attrib V15    -0.16050056834782503
#>     Attrib V16    -0.16850875043113092
#>     Attrib V17    -0.22782601790000837
#>     Attrib V18    -0.4956324740549277
#>     Attrib V19    -0.3498338755220029
#>     Attrib V2    -0.07476192680925735
#>     Attrib V20    -0.3837003822821045
#>     Attrib V21    0.04680018927479693
#>     Attrib V22    -0.12221000292350931
#>     Attrib V23    -0.3245267269730037
#>     Attrib V24    -0.1818016836862928
#>     Attrib V25    -0.44360090603364516
#>     Attrib V26    0.04058585052950871
#>     Attrib V27    0.3334476971631207
#>     Attrib V28    0.395497182035665
#>     Attrib V29    0.3669073330413909
#>     Attrib V3    -0.2906736631304019
#>     Attrib V30    0.32186857308251265
#>     Attrib V31    -0.6857686527233384
#>     Attrib V32    -0.3344201068727623
#>     Attrib V33    -0.06332530332349606
#>     Attrib V34    -0.11206497583525482
#>     Attrib V35    -0.024518125182458942
#>     Attrib V36    -0.11386123761683213
#>     Attrib V37    0.009965537947465391
#>     Attrib V38    0.2617353251098422
#>     Attrib V39    0.35880614890531326
#>     Attrib V4    0.4837767310241909
#>     Attrib V40    0.004517259589530859
#>     Attrib V41    0.29105279206609247
#>     Attrib V42    0.0783113190160789
#>     Attrib V43    0.2962862243233358
#>     Attrib V44    0.5219712430722739
#>     Attrib V45    0.6887533822182413
#>     Attrib V46    0.5102387725560779
#>     Attrib V47    0.2027309780126823
#>     Attrib V48    0.2896497100857827
#>     Attrib V49    0.5449521557898701
#>     Attrib V5    0.3156830529531795
#>     Attrib V50    -0.30561770885730116
#>     Attrib V51    0.26485977772819075
#>     Attrib V52    0.05826055532558625
#>     Attrib V53    0.1943516612309738
#>     Attrib V54    0.1490502566455178
#>     Attrib V55    0.0982665966660651
#>     Attrib V56    -0.2654069488633773
#>     Attrib V57    -0.15319354780502695
#>     Attrib V58    0.14915828040783669
#>     Attrib V59    0.28837516670585134
#>     Attrib V6    -0.06326916297695395
#>     Attrib V60    0.21215839283868798
#>     Attrib V7    -0.10930683885828761
#>     Attrib V8    -0.11500440949892463
#>     Attrib V9    0.15394948654764298
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.021874461289078863
#>     Attrib V1    0.3215181298079124
#>     Attrib V10    -0.2542902984313713
#>     Attrib V11    -0.11874360455349353
#>     Attrib V12    -0.18034700971375445
#>     Attrib V13    -0.3435479354396731
#>     Attrib V14    -0.13800717274771163
#>     Attrib V15    0.24114495828656357
#>     Attrib V16    0.37006326646382476
#>     Attrib V17    0.3540159574633297
#>     Attrib V18    -0.08641282804995366
#>     Attrib V19    0.10371313383053923
#>     Attrib V2    0.007436985897127615
#>     Attrib V20    0.38758574585060396
#>     Attrib V21    0.7133625084720994
#>     Attrib V22    0.14786582321476538
#>     Attrib V23    0.02363630498851596
#>     Attrib V24    -0.019057535262237784
#>     Attrib V25    -0.8107179407593066
#>     Attrib V26    -0.6634334646449712
#>     Attrib V27    -0.5980867713049024
#>     Attrib V28    -0.4840009744210374
#>     Attrib V29    -0.1875611959633376
#>     Attrib V3    -0.13093019961025107
#>     Attrib V30    0.2926752220671844
#>     Attrib V31    -0.8882355363106302
#>     Attrib V32    -0.2609977377701281
#>     Attrib V33    0.283038078730164
#>     Attrib V34    -0.04332145861248417
#>     Attrib V35    -0.3206758781952327
#>     Attrib V36    -0.443774622538497
#>     Attrib V37    -0.6152796810986706
#>     Attrib V38    0.1813130122208768
#>     Attrib V39    0.1537198952102792
#>     Attrib V4    0.5129352959256969
#>     Attrib V40    -0.5562330567229448
#>     Attrib V41    -0.2702362101107999
#>     Attrib V42    0.21168252577983737
#>     Attrib V43    0.5515568221360325
#>     Attrib V44    0.8332489193244246
#>     Attrib V45    0.5233741915975291
#>     Attrib V46    0.1134786152954522
#>     Attrib V47    -0.2554590102321488
#>     Attrib V48    0.02234439638890039
#>     Attrib V49    0.3287421198990586
#>     Attrib V5    -0.07166537799917233
#>     Attrib V50    -0.46056302141059585
#>     Attrib V51    0.10112914068662893
#>     Attrib V52    -0.2428133540899743
#>     Attrib V53    -0.17720963593695188
#>     Attrib V54    0.7337970196702287
#>     Attrib V55    0.29876722709158565
#>     Attrib V56    0.4155543878585773
#>     Attrib V57    0.06896506035960324
#>     Attrib V58    0.5052747519591202
#>     Attrib V59    0.6413739107605047
#>     Attrib V6    -0.4055769922943984
#>     Attrib V60    0.36557710180755154
#>     Attrib V7    -0.325764499101514
#>     Attrib V8    0.21692201559498
#>     Attrib V9    0.19102317575441677
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.015315103695125721
#>     Attrib V1    -0.02511199635952835
#>     Attrib V10    -0.12078584798227741
#>     Attrib V11    -0.5659588045606324
#>     Attrib V12    -0.28600900506324306
#>     Attrib V13    -0.03885212481027494
#>     Attrib V14    0.562496563740405
#>     Attrib V15    0.31249488941626613
#>     Attrib V16    -0.058578216381078275
#>     Attrib V17    -0.31388042449590875
#>     Attrib V18    0.15313445678489895
#>     Attrib V19    -0.25994452499743304
#>     Attrib V2    0.4050330327426518
#>     Attrib V20    -0.3896822677312347
#>     Attrib V21    -1.060572017850618
#>     Attrib V22    -0.823113220646912
#>     Attrib V23    -0.834581502514318
#>     Attrib V24    -0.6612255082741308
#>     Attrib V25    0.3608741724653302
#>     Attrib V26    0.12236491209706694
#>     Attrib V27    0.2320985318662822
#>     Attrib V28    0.15653169236732206
#>     Attrib V29    0.16078633524292174
#>     Attrib V3    0.38571398460239364
#>     Attrib V30    -0.5321753425437608
#>     Attrib V31    1.1088802938391127
#>     Attrib V32    -0.1652546976106344
#>     Attrib V33    -0.5607228599652305
#>     Attrib V34    -0.09327271795353441
#>     Attrib V35    0.12269102195574927
#>     Attrib V36    0.35661498473333547
#>     Attrib V37    0.6986924362434603
#>     Attrib V38    -0.29119471049039797
#>     Attrib V39    -0.39801253897047845
#>     Attrib V4    -0.5086483982938854
#>     Attrib V40    0.5861518683123697
#>     Attrib V41    -0.24106797318945966
#>     Attrib V42    -0.4828558377285106
#>     Attrib V43    -0.7494453198633123
#>     Attrib V44    -0.8927330732727538
#>     Attrib V45    -0.6537399569575179
#>     Attrib V46    -0.2957920606478911
#>     Attrib V47    0.09335152905589804
#>     Attrib V48    0.04263405820401188
#>     Attrib V49    -0.7262742611347753
#>     Attrib V5    0.08579565597082138
#>     Attrib V50    0.6293479006953265
#>     Attrib V51    -0.5058484981193827
#>     Attrib V52    0.22711516574658763
#>     Attrib V53    0.2439450587822245
#>     Attrib V54    -0.1571940520898956
#>     Attrib V55    5.055008250544537E-4
#>     Attrib V56    -0.24148038207970154
#>     Attrib V57    0.4641100355630047
#>     Attrib V58    -0.5897231300208877
#>     Attrib V59    -0.603419832676579
#>     Attrib V6    0.4607520168410926
#>     Attrib V60    -0.32121042003713546
#>     Attrib V7    0.7634817598236382
#>     Attrib V8    -0.3934124813258772
#>     Attrib V9    -0.6772136465816129
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.08791734467806551
#>     Attrib V1    0.19219806941431233
#>     Attrib V10    -0.09715487669084344
#>     Attrib V11    0.025196527348532352
#>     Attrib V12    0.037132036009353254
#>     Attrib V13    -0.07336208847959272
#>     Attrib V14    -0.010580081320391429
#>     Attrib V15    0.030789297238707304
#>     Attrib V16    0.15414938848704585
#>     Attrib V17    0.09033914119404253
#>     Attrib V18    -0.04885742832768702
#>     Attrib V19    -0.024963498299946922
#>     Attrib V2    0.08646338233748437
#>     Attrib V20    0.058851891205829565
#>     Attrib V21    0.08728826072417843
#>     Attrib V22    -0.12868372292283722
#>     Attrib V23    -0.20276816469646713
#>     Attrib V24    -0.07222217969499344
#>     Attrib V25    -0.30685117388095523
#>     Attrib V26    -0.2870061535980549
#>     Attrib V27    -0.310012397907676
#>     Attrib V28    -0.333789296377586
#>     Attrib V29    -0.1606730401514882
#>     Attrib V3    -0.03721069013092601
#>     Attrib V30    -0.024457074692911748
#>     Attrib V31    -0.2486796967443128
#>     Attrib V32    -0.07093948838918854
#>     Attrib V33    0.0716558064970139
#>     Attrib V34    0.05703657162127838
#>     Attrib V35    -0.0029487864236937508
#>     Attrib V36    -0.09004407149214706
#>     Attrib V37    -0.18268653906378646
#>     Attrib V38    0.039742499866197635
#>     Attrib V39    0.10891638483126839
#>     Attrib V4    0.18856354974936634
#>     Attrib V40    -0.08787682969277931
#>     Attrib V41    -0.11882490993066432
#>     Attrib V42    0.02257960616740363
#>     Attrib V43    0.20088699258417536
#>     Attrib V44    0.14625993732045328
#>     Attrib V45    0.10436987351548468
#>     Attrib V46    0.12345607638361124
#>     Attrib V47    -0.0314125146401775
#>     Attrib V48    0.10498353472105909
#>     Attrib V49    0.1412176002866707
#>     Attrib V5    0.034291197067250506
#>     Attrib V50    -0.08123140352797392
#>     Attrib V51    0.09166968875405915
#>     Attrib V52    -0.0298024774707104
#>     Attrib V53    0.018809448629265525
#>     Attrib V54    0.33109021330278143
#>     Attrib V55    0.2398559393383304
#>     Attrib V56    0.18737967774236125
#>     Attrib V57    0.11538621515696731
#>     Attrib V58    0.2282217766595071
#>     Attrib V59    0.2765784988857205
#>     Attrib V6    -0.11061883279076423
#>     Attrib V60    0.2555386064610352
#>     Attrib V7    -0.10336794533547768
#>     Attrib V8    0.006869042880656507
#>     Attrib V9    0.01974406121628576
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.038345174550117975
#>     Attrib V1    0.24317475693037882
#>     Attrib V10    -0.2488819783400281
#>     Attrib V11    0.01203547979938341
#>     Attrib V12    0.048423784970830185
#>     Attrib V13    -0.10360716195621629
#>     Attrib V14    -0.0392980063513487
#>     Attrib V15    0.11113830127568694
#>     Attrib V16    0.1602179451952515
#>     Attrib V17    0.23133896873689808
#>     Attrib V18    -0.008814882714616234
#>     Attrib V19    0.07182747925193204
#>     Attrib V2    0.025040812718402788
#>     Attrib V20    0.16828738053423908
#>     Attrib V21    0.25683942396213383
#>     Attrib V22    -0.030018081791664104
#>     Attrib V23    -0.10175623622786148
#>     Attrib V24    -0.10990281476442883
#>     Attrib V25    -0.43762262526038437
#>     Attrib V26    -0.37433657086468913
#>     Attrib V27    -0.4813631074070018
#>     Attrib V28    -0.4787199199826131
#>     Attrib V29    -0.3038067506035838
#>     Attrib V3    -0.03652260539568296
#>     Attrib V30    0.005606131198308037
#>     Attrib V31    -0.4958931309750354
#>     Attrib V32    -0.13623889142514672
#>     Attrib V33    0.16147368533173526
#>     Attrib V34    0.06199143620140326
#>     Attrib V35    0.003149726718327559
#>     Attrib V36    -0.14301742053331587
#>     Attrib V37    -0.2632893293151806
#>     Attrib V38    0.09682822748234958
#>     Attrib V39    0.18248610340624088
#>     Attrib V4    0.29425111510248736
#>     Attrib V40    -0.25661411517653365
#>     Attrib V41    -0.19007266701153921
#>     Attrib V42    0.055869763855786424
#>     Attrib V43    0.300478407492336
#>     Attrib V44    0.29369937244651606
#>     Attrib V45    0.2540007326292745
#>     Attrib V46    0.0805509862600305
#>     Attrib V47    -0.04426040447617335
#>     Attrib V48    0.004767786863349803
#>     Attrib V49    0.1620306923936404
#>     Attrib V5    -0.06432918857941793
#>     Attrib V50    -0.19947542706962074
#>     Attrib V51    0.055237593774243164
#>     Attrib V52    -0.08668518656659774
#>     Attrib V53    -0.025854533628297243
#>     Attrib V54    0.48374121261131564
#>     Attrib V55    0.3083499990394485
#>     Attrib V56    0.3087763862841211
#>     Attrib V57    0.10203651117119147
#>     Attrib V58    0.2664785914218071
#>     Attrib V59    0.4452641077506255
#>     Attrib V6    -0.24028645884639718
#>     Attrib V60    0.27480948244943026
#>     Attrib V7    -0.21340222882480891
#>     Attrib V8    0.08870514995411735
#>     Attrib V9    0.0024255230878122255
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.2246749915158772
#>     Attrib V1    0.08547187616131126
#>     Attrib V10    -0.24933081250893566
#>     Attrib V11    -0.5942855716418458
#>     Attrib V12    -0.5802553385175009
#>     Attrib V13    -0.40641084996743243
#>     Attrib V14    0.3975457332291552
#>     Attrib V15    0.13687517895504245
#>     Attrib V16    -0.03910303550495701
#>     Attrib V17    0.057535162199297975
#>     Attrib V18    0.32385330023220055
#>     Attrib V19    0.0354010162631443
#>     Attrib V2    0.12834206214178395
#>     Attrib V20    0.11439963156502798
#>     Attrib V21    -0.44156501218296074
#>     Attrib V22    -0.4257604528856917
#>     Attrib V23    -0.3993458071061581
#>     Attrib V24    -0.38776846198982556
#>     Attrib V25    0.4507712946189641
#>     Attrib V26    0.15707621985036735
#>     Attrib V27    -0.048973384117691726
#>     Attrib V28    -0.11318562799818743
#>     Attrib V29    -0.1482902780616642
#>     Attrib V3    0.11031018670829788
#>     Attrib V30    -0.43354685628628
#>     Attrib V31    0.6290924800735819
#>     Attrib V32    -0.19567550729504055
#>     Attrib V33    -0.3760647923009378
#>     Attrib V34    -0.011479930531391312
#>     Attrib V35    0.3602902209236803
#>     Attrib V36    0.8531076594986473
#>     Attrib V37    0.7465317463612846
#>     Attrib V38    0.19736442728976458
#>     Attrib V39    -0.2121001066303467
#>     Attrib V4    -0.17604341458326714
#>     Attrib V40    0.12771660684824174
#>     Attrib V41    -0.6276303685863581
#>     Attrib V42    -0.2607624054847419
#>     Attrib V43    -0.19813907477725526
#>     Attrib V44    0.02962324715230695
#>     Attrib V45    -0.10619840236443504
#>     Attrib V46    -0.17734438174327125
#>     Attrib V47    0.06971271185212725
#>     Attrib V48    -0.014067155902343883
#>     Attrib V49    -0.5074929644893513
#>     Attrib V5    -0.2391488047394564
#>     Attrib V50    0.6621204998865603
#>     Attrib V51    -0.4923896336596671
#>     Attrib V52    0.020729482511610532
#>     Attrib V53    -0.26861432573505606
#>     Attrib V54    0.009334619564452806
#>     Attrib V55    0.04487625883039316
#>     Attrib V56    -0.031970678595575105
#>     Attrib V57    0.4362760161434047
#>     Attrib V58    -0.36105598122445953
#>     Attrib V59    -0.3378035415101057
#>     Attrib V6    0.22014464880194087
#>     Attrib V60    -0.25130885031057815
#>     Attrib V7    0.5577620932900211
#>     Attrib V8    0.011756598998847692
#>     Attrib V9    -0.5914485613386886
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.34836550280776685
#>     Attrib V1    -0.21335712834626658
#>     Attrib V10    1.006953054812701
#>     Attrib V11    1.1312296534414117
#>     Attrib V12    1.2254127710700988
#>     Attrib V13    1.2285276626378547
#>     Attrib V14    -0.7908211055277217
#>     Attrib V15    -0.23584788129168727
#>     Attrib V16    -0.03809160449801401
#>     Attrib V17    -0.5119356075490715
#>     Attrib V18    -0.8699018173956325
#>     Attrib V19    -0.2912436537829804
#>     Attrib V2    0.2871035425749397
#>     Attrib V20    -1.0239250855759507
#>     Attrib V21    0.218544428284986
#>     Attrib V22    1.2941117719924633
#>     Attrib V23    1.280477663460482
#>     Attrib V24    0.745322186851624
#>     Attrib V25    -0.5615960024381684
#>     Attrib V26    0.8256719647309347
#>     Attrib V27    1.9531476113701538
#>     Attrib V28    2.287335351211427
#>     Attrib V29    1.9346605796538916
#>     Attrib V3    -0.07105276716149068
#>     Attrib V30    0.8681585698550496
#>     Attrib V31    -1.4316165959469014
#>     Attrib V32    -0.20913004493233125
#>     Attrib V33    -0.5616121156708115
#>     Attrib V34    -0.5472035469972708
#>     Attrib V35    -0.453803773920042
#>     Attrib V36    -0.8466663585408678
#>     Attrib V37    8.820274957338583E-4
#>     Attrib V38    -0.32885362426111947
#>     Attrib V39    0.22718735168436763
#>     Attrib V4    -0.2584395690630726
#>     Attrib V40    0.717625944816584
#>     Attrib V41    2.3874803196072487
#>     Attrib V42    0.13950928589664416
#>     Attrib V43    0.19625884955581216
#>     Attrib V44    0.2522500889325868
#>     Attrib V45    0.7670706544234901
#>     Attrib V46    1.5318844553257371
#>     Attrib V47    0.6948810839168745
#>     Attrib V48    0.03951898125242788
#>     Attrib V49    1.0652293011958758
#>     Attrib V5    1.4389049000430236
#>     Attrib V50    -0.7862576071638591
#>     Attrib V51    1.7069848869602469
#>     Attrib V52    1.3336270371428418
#>     Attrib V53    1.6738978079701239
#>     Attrib V54    -0.9999286372148857
#>     Attrib V55    -0.6952046896672902
#>     Attrib V56    -0.9987796263007033
#>     Attrib V57    -1.440780882477037
#>     Attrib V58    0.15015656916471234
#>     Attrib V59    0.41650160156973853
#>     Attrib V6    0.8865702097493452
#>     Attrib V60    1.0899834652634597
#>     Attrib V7    -0.31303513126126215
#>     Attrib V8    -1.1561644772252408
#>     Attrib V9    1.0495484094364311
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.2077916210492888
#>     Attrib V1    0.057355551573682245
#>     Attrib V10    -0.01772851537773966
#>     Attrib V11    -0.33797620115277455
#>     Attrib V12    -0.2864170501388221
#>     Attrib V13    -0.16334643805950758
#>     Attrib V14    0.37346749757848074
#>     Attrib V15    0.18119504772378056
#>     Attrib V16    0.14334374948452488
#>     Attrib V17    0.21505308116593763
#>     Attrib V18    0.3728606805912601
#>     Attrib V19    0.19435652703409573
#>     Attrib V2    0.24561533946178504
#>     Attrib V20    0.166491294427395
#>     Attrib V21    -0.1958605724858302
#>     Attrib V22    -0.12384013305689906
#>     Attrib V23    -0.12486598107576438
#>     Attrib V24    -0.22301780855112824
#>     Attrib V25    0.22479259563030846
#>     Attrib V26    -0.06700208618639422
#>     Attrib V27    -0.06864092348037625
#>     Attrib V28    -0.13293960519350542
#>     Attrib V29    -0.15969275107416028
#>     Attrib V3    0.21274314253654605
#>     Attrib V30    -0.3021061013742565
#>     Attrib V31    0.527670487369314
#>     Attrib V32    -0.11898053224859931
#>     Attrib V33    -0.2516399237777659
#>     Attrib V34    -0.09408768343389189
#>     Attrib V35    0.2920004146062289
#>     Attrib V36    0.563997821430588
#>     Attrib V37    0.5797436160006767
#>     Attrib V38    -0.014930117997207011
#>     Attrib V39    -0.2762086833722355
#>     Attrib V4    -0.017429038715318722
#>     Attrib V40    0.10041690512680766
#>     Attrib V41    -0.32045411374477045
#>     Attrib V42    -0.1701192823376612
#>     Attrib V43    -0.2784152537865189
#>     Attrib V44    -0.23329104934777906
#>     Attrib V45    -0.2544747621555522
#>     Attrib V46    -0.25618892210556093
#>     Attrib V47    -0.04288962952267197
#>     Attrib V48    -0.06576850244176034
#>     Attrib V49    -0.44883391247843724
#>     Attrib V5    0.015891097605173415
#>     Attrib V50    0.42920508841964133
#>     Attrib V51    -0.25965812353490714
#>     Attrib V52    0.0963376601492098
#>     Attrib V53    0.018329451305570996
#>     Attrib V54    -0.05638316303508911
#>     Attrib V55    0.06994852151598699
#>     Attrib V56    0.019739422692549517
#>     Attrib V57    0.3388291815669936
#>     Attrib V58    -0.20437040298959266
#>     Attrib V59    -0.23431992460530673
#>     Attrib V6    0.3565245448964269
#>     Attrib V60    -0.06648159675819083
#>     Attrib V7    0.47067130413965885
#>     Attrib V8    0.11288371175141687
#>     Attrib V9    -0.26118197879365795
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.15266646372760218
#>     Attrib V1    0.29374903553684345
#>     Attrib V10    -0.20679791526434327
#>     Attrib V11    0.023518290860849264
#>     Attrib V12    -0.09457764832796986
#>     Attrib V13    -0.25380263282727394
#>     Attrib V14    -0.2813879980067797
#>     Attrib V15    0.12411979900663465
#>     Attrib V16    0.31686447911042614
#>     Attrib V17    0.31666889075026305
#>     Attrib V18    -0.04262486615043456
#>     Attrib V19    0.0759587311772734
#>     Attrib V2    -0.06291021881654225
#>     Attrib V20    0.2765572417791328
#>     Attrib V21    0.6885268949845201
#>     Attrib V22    0.15592994065016677
#>     Attrib V23    -9.336667997552982E-5
#>     Attrib V24    0.042608966002145296
#>     Attrib V25    -0.7436947048793084
#>     Attrib V26    -0.5127937920841869
#>     Attrib V27    -0.5457229360547504
#>     Attrib V28    -0.4472824861897011
#>     Attrib V29    -0.18172427796303509
#>     Attrib V3    -0.18910634593163972
#>     Attrib V30    0.3123131816665575
#>     Attrib V31    -0.8753275796290488
#>     Attrib V32    -0.1902401757600384
#>     Attrib V33    0.28137204274613975
#>     Attrib V34    0.006285101737803028
#>     Attrib V35    -0.28231659965727013
#>     Attrib V36    -0.45359980326294597
#>     Attrib V37    -0.6141099058328511
#>     Attrib V38    0.17699838581724797
#>     Attrib V39    0.21464941137365579
#>     Attrib V4    0.563556308931457
#>     Attrib V40    -0.5871492815867133
#>     Attrib V41    -0.21241644831478051
#>     Attrib V42    0.21338689411954093
#>     Attrib V43    0.48372114093519314
#>     Attrib V44    0.8324148598356392
#>     Attrib V45    0.5904973544690839
#>     Attrib V46    0.12334481902631307
#>     Attrib V47    -0.24344213244513296
#>     Attrib V48    0.0575691957610557
#>     Attrib V49    0.37341708871764817
#>     Attrib V5    -0.07736455711664378
#>     Attrib V50    -0.4227581988613514
#>     Attrib V51    0.10366966595370464
#>     Attrib V52    -0.26870711067342673
#>     Attrib V53    -0.12302576066933617
#>     Attrib V54    0.6903450336352362
#>     Attrib V55    0.27490784554663006
#>     Attrib V56    0.27865224913663517
#>     Attrib V57    0.039882754840007965
#>     Attrib V58    0.439761412776681
#>     Attrib V59    0.6468449306150228
#>     Attrib V6    -0.38760975604564374
#>     Attrib V60    0.3724218081718747
#>     Attrib V7    -0.4109465685486637
#>     Attrib V8    0.21050721024238414
#>     Attrib V9    0.20819462047358758
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.21612519357662321
#>     Attrib V1    0.224694416578832
#>     Attrib V10    -0.10745429674215097
#>     Attrib V11    -0.4232662702924579
#>     Attrib V12    -0.2932045493636275
#>     Attrib V13    0.09331330013344953
#>     Attrib V14    0.6914120448594984
#>     Attrib V15    0.45011056125773535
#>     Attrib V16    0.23663334361566926
#>     Attrib V17    0.14378902565004362
#>     Attrib V18    0.6562875557995616
#>     Attrib V19    0.20774192233253808
#>     Attrib V2    0.47923797172659766
#>     Attrib V20    0.41375143191986596
#>     Attrib V21    -0.37862092309455053
#>     Attrib V22    -0.2737906373380236
#>     Attrib V23    -0.43542103226099654
#>     Attrib V24    -0.5477044297097292
#>     Attrib V25    0.1835317057469993
#>     Attrib V26    -0.1751811857321618
#>     Attrib V27    -0.2924052854804356
#>     Attrib V28    -0.6214897184921621
#>     Attrib V29    -0.7628302039361524
#>     Attrib V3    0.4696304115666563
#>     Attrib V30    -1.0163936350566558
#>     Attrib V31    0.9000921456313403
#>     Attrib V32    -0.2771061413575166
#>     Attrib V33    -0.8107283264590495
#>     Attrib V34    -0.12029517267349057
#>     Attrib V35    0.5596461619949014
#>     Attrib V36    0.9527304949064074
#>     Attrib V37    0.8932768171492694
#>     Attrib V38    0.08659371695400106
#>     Attrib V39    -0.42457735754050224
#>     Attrib V4    -0.2580650398348048
#>     Attrib V40    0.037006801797110175
#>     Attrib V41    -1.0001988189076896
#>     Attrib V42    -0.7222628220272732
#>     Attrib V43    -0.66025384665622
#>     Attrib V44    -0.7825309322898962
#>     Attrib V45    -0.5334762022818944
#>     Attrib V46    -0.3872229337121787
#>     Attrib V47    -0.09121713285308494
#>     Attrib V48    -0.20890849560158145
#>     Attrib V49    -0.8035180646392491
#>     Attrib V5    -0.07331604348945706
#>     Attrib V50    0.9003071773504234
#>     Attrib V51    -0.568694398876547
#>     Attrib V52    0.14194476668934866
#>     Attrib V53    -0.07497851515020952
#>     Attrib V54    0.09846993585202694
#>     Attrib V55    0.37676891322927497
#>     Attrib V56    0.039677114440768685
#>     Attrib V57    0.5085996032208824
#>     Attrib V58    -0.45455081354934995
#>     Attrib V59    -0.6526468757082269
#>     Attrib V6    0.4214920095586155
#>     Attrib V60    -0.2998186957447354
#>     Attrib V7    0.8555662374547389
#>     Attrib V8    0.10487412904553187
#>     Attrib V9    -0.6112178681469267
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.08208170433957851
#>     Attrib V1    0.11807582401980114
#>     Attrib V10    -0.1993152612164673
#>     Attrib V11    0.11903130041422491
#>     Attrib V12    0.05057765129085846
#>     Attrib V13    -0.15119905452500634
#>     Attrib V14    -0.14343368571942783
#>     Attrib V15    0.03186750844921233
#>     Attrib V16    0.16875976740586518
#>     Attrib V17    0.19503018791155835
#>     Attrib V18    -0.045311858374744426
#>     Attrib V19    0.04358798581027415
#>     Attrib V2    -0.08860446593025721
#>     Attrib V20    0.21754394381438946
#>     Attrib V21    0.43926583474285125
#>     Attrib V22    0.1061788957703357
#>     Attrib V23    -0.06021084406710253
#>     Attrib V24    0.041273767239169805
#>     Attrib V25    -0.41009585630873135
#>     Attrib V26    -0.4096054498089746
#>     Attrib V27    -0.43094156615621465
#>     Attrib V28    -0.40913712563015975
#>     Attrib V29    -0.19444585959526517
#>     Attrib V3    -0.1455549349667117
#>     Attrib V30    0.10282706368099298
#>     Attrib V31    -0.5547579854413666
#>     Attrib V32    -0.04034948956391897
#>     Attrib V33    0.28379893051936494
#>     Attrib V34    0.0936699726292112
#>     Attrib V35    -0.08702426428825787
#>     Attrib V36    -0.2767470973626469
#>     Attrib V37    -0.42229119593261916
#>     Attrib V38    0.09187904218060165
#>     Attrib V39    0.21608868535126793
#>     Attrib V4    0.29596285592708665
#>     Attrib V40    -0.25228699816991895
#>     Attrib V41    -0.04794699889088999
#>     Attrib V42    0.10487784353686164
#>     Attrib V43    0.35327208487844897
#>     Attrib V44    0.3489026969206792
#>     Attrib V45    0.352343119530698
#>     Attrib V46    0.11369924309524435
#>     Attrib V47    -0.06555419751904754
#>     Attrib V48    0.08295692114298363
#>     Attrib V49    0.2999894333933212
#>     Attrib V5    -0.08114576170339843
#>     Attrib V50    -0.26731216336235575
#>     Attrib V51    0.13627441690299352
#>     Attrib V52    -0.1568991677250272
#>     Attrib V53    -0.10632318229884723
#>     Attrib V54    0.37842854953107014
#>     Attrib V55    0.24921359236880763
#>     Attrib V56    0.21110058366451112
#>     Attrib V57    -2.883877564352977E-4
#>     Attrib V58    0.24315143541687237
#>     Attrib V59    0.4131726572740462
#>     Attrib V6    -0.297747529130065
#>     Attrib V60    0.2828902773950015
#>     Attrib V7    -0.30352017573771245
#>     Attrib V8    0.1345124109406121
#>     Attrib V9    0.10107181460151836
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.17656196899342116
#>     Attrib V1    0.10529532301999603
#>     Attrib V10    0.11281694818745626
#>     Attrib V11    0.019889604253465393
#>     Attrib V12    0.045230437105271165
#>     Attrib V13    0.05968605173559938
#>     Attrib V14    0.11419652904772157
#>     Attrib V15    0.11061339288492766
#>     Attrib V16    0.09918506870019309
#>     Attrib V17    0.14900212634599716
#>     Attrib V18    0.12038353433691805
#>     Attrib V19    0.03855851593962044
#>     Attrib V2    0.15516001948202865
#>     Attrib V20    0.029011640909104207
#>     Attrib V21    0.004809824198463557
#>     Attrib V22    -0.05051219359158768
#>     Attrib V23    -0.0577484701076457
#>     Attrib V24    -0.12598149113980012
#>     Attrib V25    -0.010884878956709755
#>     Attrib V26    -0.05757402658058897
#>     Attrib V27    -0.0925748297183008
#>     Attrib V28    -0.0325473369127582
#>     Attrib V29    -0.08169024402585351
#>     Attrib V3    0.1279603546227991
#>     Attrib V30    0.005224834870891374
#>     Attrib V31    0.16282420986757767
#>     Attrib V32    0.00426512898866694
#>     Attrib V33    -0.02290510652638472
#>     Attrib V34    0.013048854836846655
#>     Attrib V35    0.11992009646696253
#>     Attrib V36    0.12098225940463804
#>     Attrib V37    0.19696263310947154
#>     Attrib V38    0.05697546952274883
#>     Attrib V39    0.09928651437112306
#>     Attrib V4    0.12204892000624641
#>     Attrib V40    0.09565780240318313
#>     Attrib V41    0.01856171035154775
#>     Attrib V42    0.07421414200675627
#>     Attrib V43    -0.003205312166985755
#>     Attrib V44    -0.04129609034289041
#>     Attrib V45    0.007448200195972617
#>     Attrib V46    0.014710939139863002
#>     Attrib V47    0.04442338177988843
#>     Attrib V48    0.05445770526333453
#>     Attrib V49    -0.07420548583266233
#>     Attrib V5    0.06838174010394993
#>     Attrib V50    0.07249612011619415
#>     Attrib V51    0.03444350156282074
#>     Attrib V52    0.11162491747711195
#>     Attrib V53    0.0713974839574891
#>     Attrib V54    0.02646905347273618
#>     Attrib V55    0.07418479292030299
#>     Attrib V56    0.1307324444511319
#>     Attrib V57    0.11377609710548497
#>     Attrib V58    0.081618835501954
#>     Attrib V59    0.06723553378400918
#>     Attrib V6    0.14583421608043606
#>     Attrib V60    0.07048917285616203
#>     Attrib V7    0.08261902761792875
#>     Attrib V8    0.0773071896777301
#>     Attrib V9    0.032238705759264075
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.09626962262684054
#>     Attrib V1    0.19548996733609386
#>     Attrib V10    -0.15490428952035615
#>     Attrib V11    0.04382777134879573
#>     Attrib V12    -0.015573505304322072
#>     Attrib V13    -0.05643597042260305
#>     Attrib V14    -0.0031740810012573836
#>     Attrib V15    0.11325287218561048
#>     Attrib V16    0.1595094177165148
#>     Attrib V17    0.1705937832876678
#>     Attrib V18    0.003434284324321269
#>     Attrib V19    0.04089873822774782
#>     Attrib V2    0.09986966388102925
#>     Attrib V20    0.16791859161922223
#>     Attrib V21    0.16493818757906287
#>     Attrib V22    -0.012028985293112958
#>     Attrib V23    -0.07514684877216427
#>     Attrib V24    -0.03880938288295464
#>     Attrib V25    -0.38237145506802117
#>     Attrib V26    -0.3174827248810147
#>     Attrib V27    -0.4063045594682558
#>     Attrib V28    -0.4212631581191163
#>     Attrib V29    -0.27778325166568374
#>     Attrib V3    -0.08061248913717545
#>     Attrib V30    -0.02357449274592189
#>     Attrib V31    -0.35785519270428134
#>     Attrib V32    -0.09059410625520284
#>     Attrib V33    0.18235388501088173
#>     Attrib V34    0.10476681124858807
#>     Attrib V35    0.0165349005666875
#>     Attrib V36    -0.14610627823180639
#>     Attrib V37    -0.2542799866917655
#>     Attrib V38    0.11083734478291438
#>     Attrib V39    0.11721008231755368
#>     Attrib V4    0.2185894918506996
#>     Attrib V40    -0.17731850240521757
#>     Attrib V41    -0.15126739290897076
#>     Attrib V42    0.047313076452258365
#>     Attrib V43    0.22659379714812183
#>     Attrib V44    0.2339309557405947
#>     Attrib V45    0.1494558472278498
#>     Attrib V46    0.07168118125754946
#>     Attrib V47    -0.040609407244481366
#>     Attrib V48    0.06677761635637507
#>     Attrib V49    0.15724712964040727
#>     Attrib V5    -0.05545566659318236
#>     Attrib V50    -0.14221834869369274
#>     Attrib V51    0.08073822232499428
#>     Attrib V52    -0.07731824633658414
#>     Attrib V53    0.007049357335304907
#>     Attrib V54    0.42637992590029666
#>     Attrib V55    0.27993324254903745
#>     Attrib V56    0.17690433568387143
#>     Attrib V57    0.1011816820488263
#>     Attrib V58    0.1953792747733887
#>     Attrib V59    0.327411501849887
#>     Attrib V6    -0.19910078143073726
#>     Attrib V60    0.2591121591599998
#>     Attrib V7    -0.1657412460062778
#>     Attrib V8    0.1045824435966304
#>     Attrib V9    0.05445418570836801
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.15403623913956155
#>     Attrib V1    0.09086548870887305
#>     Attrib V10    0.05457993338406017
#>     Attrib V11    -0.15759501571845988
#>     Attrib V12    -0.2052220349595657
#>     Attrib V13    -0.14383034724687063
#>     Attrib V14    0.33307615735978485
#>     Attrib V15    0.2738604748770035
#>     Attrib V16    0.2923880185128114
#>     Attrib V17    0.30180114812507514
#>     Attrib V18    0.5007370393018462
#>     Attrib V19    0.09182817993449477
#>     Attrib V2    0.2703824243508666
#>     Attrib V20    0.08797932297002375
#>     Attrib V21    -0.19246229232787024
#>     Attrib V22    -0.08212416544689968
#>     Attrib V23    -0.0031438562561707543
#>     Attrib V24    -0.1572651616597389
#>     Attrib V25    0.1110853985993635
#>     Attrib V26    -0.11515884631622213
#>     Attrib V27    -0.12497532432105926
#>     Attrib V28    -0.1059993463839325
#>     Attrib V29    -0.1457415386526876
#>     Attrib V3    0.3370966352972561
#>     Attrib V30    -0.14564610419223417
#>     Attrib V31    0.49055792756662603
#>     Attrib V32    -0.03128744180607568
#>     Attrib V33    -0.14979207248842422
#>     Attrib V34    0.011605223298376773
#>     Attrib V35    0.3410041443149007
#>     Attrib V36    0.607563740262933
#>     Attrib V37    0.6225339407331918
#>     Attrib V38    -0.015921097083868376
#>     Attrib V39    -0.2036214349393113
#>     Attrib V4    -0.020660205055985637
#>     Attrib V40    0.21356666590048876
#>     Attrib V41    -0.10700309046091927
#>     Attrib V42    -0.07028901450741165
#>     Attrib V43    -0.28032438146306793
#>     Attrib V44    -0.20364384226618515
#>     Attrib V45    -0.206383188258509
#>     Attrib V46    -0.1821228755394611
#>     Attrib V47    -0.015597550713713767
#>     Attrib V48    -0.15512310844968513
#>     Attrib V49    -0.36202366649793827
#>     Attrib V5    0.17517721791130955
#>     Attrib V50    0.2650135547660917
#>     Attrib V51    -0.11170529042625878
#>     Attrib V52    0.2101026371873464
#>     Attrib V53    0.10989573998614509
#>     Attrib V54    -0.12611427449096665
#>     Attrib V55    0.04442669532279379
#>     Attrib V56    0.039376919136018325
#>     Attrib V57    0.28714953932290915
#>     Attrib V58    -0.09333126780294611
#>     Attrib V59    -0.22586674245224875
#>     Attrib V6    0.4262942411398367
#>     Attrib V60    -0.0846682467816064
#>     Attrib V7    0.47635474655751475
#>     Attrib V8    0.18803270894062935
#>     Attrib V9    -0.031675682179344244
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
#>   0.115942 
```
