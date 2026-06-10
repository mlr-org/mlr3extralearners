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
#>     Threshold    0.08105522931469397
#>     Node 2    2.0920817640001856
#>     Node 3    1.5246705026222171
#>     Node 4    0.9275184440634444
#>     Node 5    -1.0091306655733079
#>     Node 6    0.5305241719123162
#>     Node 7    2.1784966475078824
#>     Node 8    1.248221855708431
#>     Node 9    1.975516568634579
#>     Node 10    -0.8316807715675838
#>     Node 11    1.4273431863277313
#>     Node 12    1.3467613700774907
#>     Node 13    -1.3753581474895273
#>     Node 14    2.329972710467767
#>     Node 15    -2.1575136347668846
#>     Node 16    0.8251792281170682
#>     Node 17    0.9544595595142273
#>     Node 18    -1.6424319517433925
#>     Node 19    2.5661341319932136
#>     Node 20    1.1641690193685295
#>     Node 21    -2.423490476912676
#>     Node 22    1.595977155410601
#>     Node 23    1.0774524111831387
#>     Node 24    -1.2690711929280845
#>     Node 25    4.352141406327626
#>     Node 26    -0.7524434246333517
#>     Node 27    2.911526653318681
#>     Node 28    0.25856796373256663
#>     Node 29    1.020030181046041
#>     Node 30    -2.0564268039063798
#>     Node 31    2.1068126367410325
#>     Node 32    -1.3975248456157758
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.0604834773707312
#>     Node 2    -2.1172182580824357
#>     Node 3    -1.5022739624716392
#>     Node 4    -0.8869070489168503
#>     Node 5    1.0260284556464097
#>     Node 6    -0.496950710831102
#>     Node 7    -2.1651456047989623
#>     Node 8    -1.2804195652525783
#>     Node 9    -1.9600338730450866
#>     Node 10    0.7744849487055299
#>     Node 11    -1.3828980209142727
#>     Node 12    -1.4138541332947963
#>     Node 13    1.4197111554780188
#>     Node 14    -2.273158806694225
#>     Node 15    2.1229655389030935
#>     Node 16    -0.836379311790271
#>     Node 17    -0.9159157531408925
#>     Node 18    1.6698496747598612
#>     Node 19    -2.5694484204031296
#>     Node 20    -1.1468357234937174
#>     Node 21    2.449065787381036
#>     Node 22    -1.6506099905192064
#>     Node 23    -1.1157843585069587
#>     Node 24    1.2443014498991984
#>     Node 25    -4.334124013655578
#>     Node 26    0.6812111503363042
#>     Node 27    -2.957114502342626
#>     Node 28    -0.3017613061814328
#>     Node 29    -1.0442366970165624
#>     Node 30    2.111179422377118
#>     Node 31    -2.049260183439126
#>     Node 32    1.3711221485707357
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.2485449069922954
#>     Attrib V1    0.3005722818335703
#>     Attrib V10    1.1655428705405906
#>     Attrib V11    0.8600501303133935
#>     Attrib V12    0.6848612972256697
#>     Attrib V13    0.4284995432723299
#>     Attrib V14    -0.47271498558065334
#>     Attrib V15    -0.49601630426527377
#>     Attrib V16    -0.7225384697505005
#>     Attrib V17    -0.3664589773319196
#>     Attrib V18    -0.09191345628538204
#>     Attrib V19    0.4542315347289093
#>     Attrib V2    -0.08218377536353881
#>     Attrib V20    0.37951879900422314
#>     Attrib V21    0.22023456767954658
#>     Attrib V22    0.2974080599233223
#>     Attrib V23    0.413066385191621
#>     Attrib V24    0.7391781738685712
#>     Attrib V25    -0.07928962836389833
#>     Attrib V26    0.032354155411533275
#>     Attrib V27    0.8083999763969455
#>     Attrib V28    0.691664235709475
#>     Attrib V29    -0.2521942015217986
#>     Attrib V3    0.17556198879753676
#>     Attrib V30    0.3087486229750208
#>     Attrib V31    -0.6932958308859307
#>     Attrib V32    -0.1682041197293548
#>     Attrib V33    0.002507380965801401
#>     Attrib V34    0.07960363184182505
#>     Attrib V35    0.14615806922105049
#>     Attrib V36    -0.6006545168021863
#>     Attrib V37    -0.37925023433648997
#>     Attrib V38    0.28487405798551135
#>     Attrib V39    0.3536766837266615
#>     Attrib V4    -0.25260128713521185
#>     Attrib V40    -0.100844092642052
#>     Attrib V41    0.5103929794161244
#>     Attrib V42    6.789191873765008E-4
#>     Attrib V43    0.5545024654274949
#>     Attrib V44    0.36430668261546456
#>     Attrib V45    0.20324475725766047
#>     Attrib V46    0.15357369810585167
#>     Attrib V47    0.156130214371348
#>     Attrib V48    0.3509829172747507
#>     Attrib V49    0.8828225215687662
#>     Attrib V5    0.15102192194651656
#>     Attrib V50    -0.9089605899389545
#>     Attrib V51    0.18787016817487084
#>     Attrib V52    0.12035441589507961
#>     Attrib V53    0.4874343891666627
#>     Attrib V54    0.27987975665723247
#>     Attrib V55    -0.4567284665925882
#>     Attrib V56    -0.3040150860670484
#>     Attrib V57    0.10495194151396198
#>     Attrib V58    -0.2709075432797773
#>     Attrib V59    0.16836599788833578
#>     Attrib V6    0.020420914419524316
#>     Attrib V60    0.29443707689061127
#>     Attrib V7    -0.23313618664548166
#>     Attrib V8    -1.1769753290777607
#>     Attrib V9    0.912275859829054
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.3776587226146976
#>     Attrib V1    0.14273622911933845
#>     Attrib V10    0.6651559741024322
#>     Attrib V11    0.5293407530021969
#>     Attrib V12    0.39097822490349826
#>     Attrib V13    0.22240758674446579
#>     Attrib V14    -0.4057943101736043
#>     Attrib V15    -0.24301367920109637
#>     Attrib V16    -0.4121510411608426
#>     Attrib V17    -0.2513858618807524
#>     Attrib V18    -0.1857433480823565
#>     Attrib V19    0.3203772217475942
#>     Attrib V2    -0.07733592323322275
#>     Attrib V20    0.18393987769785694
#>     Attrib V21    0.008646746941564525
#>     Attrib V22    0.004864255943326339
#>     Attrib V23    0.011817684442111558
#>     Attrib V24    0.38706886597624457
#>     Attrib V25    -0.26604432181446047
#>     Attrib V26    -0.22013925149098035
#>     Attrib V27    0.43887757018366547
#>     Attrib V28    0.3654192045983739
#>     Attrib V29    -0.3914664169103898
#>     Attrib V3    0.03778716021277875
#>     Attrib V30    0.20658722609032973
#>     Attrib V31    -0.5777374977448458
#>     Attrib V32    -0.03708074158477613
#>     Attrib V33    0.22067536588553902
#>     Attrib V34    0.10797866736948838
#>     Attrib V35    0.04146263997334187
#>     Attrib V36    -0.6141762198468692
#>     Attrib V37    -0.5288308775831341
#>     Attrib V38    0.05858526237134298
#>     Attrib V39    0.22351375123929404
#>     Attrib V4    -0.09832159094215169
#>     Attrib V40    -0.17862445921991785
#>     Attrib V41    0.3213744997297815
#>     Attrib V42    0.0325426621960449
#>     Attrib V43    0.4111378226409834
#>     Attrib V44    0.2707695658736444
#>     Attrib V45    0.18952125946264647
#>     Attrib V46    0.019295635542442093
#>     Attrib V47    -0.06414195387531238
#>     Attrib V48    0.13952445678427997
#>     Attrib V49    0.6290996389457293
#>     Attrib V5    0.032978305891327116
#>     Attrib V50    -0.8729947884160345
#>     Attrib V51    -0.1012455576343156
#>     Attrib V52    -0.09601902923115814
#>     Attrib V53    0.21000296030062174
#>     Attrib V54    0.3261725356699772
#>     Attrib V55    -0.015860973171961758
#>     Attrib V56    -0.2993609930828906
#>     Attrib V57    0.3775653035845726
#>     Attrib V58    0.01867995909604347
#>     Attrib V59    0.19532739521324982
#>     Attrib V6    -0.0487882364248364
#>     Attrib V60    0.05762432878317415
#>     Attrib V7    -0.1802867558134431
#>     Attrib V8    -0.7166974007184085
#>     Attrib V9    0.6308160409650426
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.09492256491441743
#>     Attrib V1    0.14101857472045665
#>     Attrib V10    0.29689973406128933
#>     Attrib V11    0.22285662379468416
#>     Attrib V12    0.06909297187676185
#>     Attrib V13    0.03350280942891684
#>     Attrib V14    -0.155285072351969
#>     Attrib V15    -0.013115406177484213
#>     Attrib V16    -0.1269358386337205
#>     Attrib V17    -0.07295657045923706
#>     Attrib V18    -0.09697574224632545
#>     Attrib V19    0.10856618647992185
#>     Attrib V2    -0.051908777846466574
#>     Attrib V20    0.14200446222528573
#>     Attrib V21    0.09934772211215696
#>     Attrib V22    -0.08717646873400248
#>     Attrib V23    -0.13319965251905277
#>     Attrib V24    -0.011911392373203891
#>     Attrib V25    -0.4107556818985596
#>     Attrib V26    -0.36373908383984155
#>     Attrib V27    -0.03014098702611987
#>     Attrib V28    0.07546477707711198
#>     Attrib V29    -0.17954240367059202
#>     Attrib V3    -0.0029985035528294723
#>     Attrib V30    0.1281531145965066
#>     Attrib V31    -0.2737691092486658
#>     Attrib V32    -0.014810456072566999
#>     Attrib V33    0.17625245146142143
#>     Attrib V34    0.04079860018402123
#>     Attrib V35    -0.11550043401882946
#>     Attrib V36    -0.44235056005044326
#>     Attrib V37    -0.36180869797060555
#>     Attrib V38    0.028257233846528812
#>     Attrib V39    0.12305501519300423
#>     Attrib V4    0.03749421388903924
#>     Attrib V40    -0.18404654925593303
#>     Attrib V41    0.030347885477045432
#>     Attrib V42    0.032180034139019396
#>     Attrib V43    0.15255013531077366
#>     Attrib V44    0.10319144905347082
#>     Attrib V45    0.15670589169690663
#>     Attrib V46    -0.03699954768693767
#>     Attrib V47    -0.11472723858628614
#>     Attrib V48    0.06997976148974325
#>     Attrib V49    0.3211519127362069
#>     Attrib V5    0.040312865520556296
#>     Attrib V50    -0.4351514328100297
#>     Attrib V51    -0.019435480126765384
#>     Attrib V52    -0.11545914656207507
#>     Attrib V53    0.034000616204833294
#>     Attrib V54    0.09806291824420202
#>     Attrib V55    0.07327587114931962
#>     Attrib V56    -0.166300619232355
#>     Attrib V57    0.29563763223504563
#>     Attrib V58    0.05657234819034544
#>     Attrib V59    0.1396442684812551
#>     Attrib V6    -0.026243686946681798
#>     Attrib V60    0.0604626136053282
#>     Attrib V7    0.0018288955641277765
#>     Attrib V8    -0.3017377618100819
#>     Attrib V9    0.38970691023617016
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.2208096050932661
#>     Attrib V1    -0.15523882567368635
#>     Attrib V10    -0.4333127805801844
#>     Attrib V11    -0.3395189727601087
#>     Attrib V12    -0.24028418883026958
#>     Attrib V13    -0.021990286079257175
#>     Attrib V14    0.3740241731961926
#>     Attrib V15    0.22229824736628503
#>     Attrib V16    0.18987625584788226
#>     Attrib V17    0.16018664867672192
#>     Attrib V18    0.13605480345125892
#>     Attrib V19    -0.25833972897698027
#>     Attrib V2    0.14363536259890597
#>     Attrib V20    -0.2910823539459552
#>     Attrib V21    -0.11110266285451152
#>     Attrib V22    -0.045516415418962994
#>     Attrib V23    -0.02822358977928917
#>     Attrib V24    -0.3186051081681322
#>     Attrib V25    0.37435789979622575
#>     Attrib V26    0.38174179127120594
#>     Attrib V27    -0.06295528956261359
#>     Attrib V28    -0.09088784811572465
#>     Attrib V29    0.39516178507932703
#>     Attrib V3    0.012331416281079938
#>     Attrib V30    -0.046042386971660965
#>     Attrib V31    0.4194325682977257
#>     Attrib V32    0.0031979326170404605
#>     Attrib V33    -0.1481702821111758
#>     Attrib V34    -0.04165652621141878
#>     Attrib V35    0.19959607270858942
#>     Attrib V36    0.658944213047126
#>     Attrib V37    0.5612496509352926
#>     Attrib V38    -0.029450465715892247
#>     Attrib V39    -0.21468568148175
#>     Attrib V4    -0.02383269947581896
#>     Attrib V40    0.21676903835150876
#>     Attrib V41    -0.18404606906209206
#>     Attrib V42    -0.01895547213125827
#>     Attrib V43    -0.2598617827261102
#>     Attrib V44    -0.09001223147240227
#>     Attrib V45    -0.09868042421538102
#>     Attrib V46    -0.019920304240725096
#>     Attrib V47    0.09532389909086236
#>     Attrib V48    -0.07282317224119657
#>     Attrib V49    -0.4481931164360863
#>     Attrib V5    -0.04661498694968911
#>     Attrib V50    0.7450785687094313
#>     Attrib V51    -0.014027830560200872
#>     Attrib V52    -0.023513328022200047
#>     Attrib V53    -0.23935911744240798
#>     Attrib V54    -0.2252559874894896
#>     Attrib V55    0.053363354253294186
#>     Attrib V56    0.18505482592747113
#>     Attrib V57    -0.41409655251217414
#>     Attrib V58    -0.1307455899805516
#>     Attrib V59    -0.16908807869285614
#>     Attrib V6    -0.039215665788565404
#>     Attrib V60    -0.04927071789143819
#>     Attrib V7    0.044417458401267304
#>     Attrib V8    0.4038207701773918
#>     Attrib V9    -0.5553066344960779
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.01022888513153255
#>     Attrib V1    0.1820988605153637
#>     Attrib V10    0.13216365501034272
#>     Attrib V11    0.11718221754036959
#>     Attrib V12    0.06654509292375888
#>     Attrib V13    -0.011250128952106532
#>     Attrib V14    -0.028291268937581517
#>     Attrib V15    0.04394319949077691
#>     Attrib V16    0.05170619056729672
#>     Attrib V17    -0.01919315472883137
#>     Attrib V18    -8.124350770150116E-4
#>     Attrib V19    0.023249545391454577
#>     Attrib V2    0.0247671257992069
#>     Attrib V20    0.06388171393112069
#>     Attrib V21    0.03918181527565718
#>     Attrib V22    -0.09609959397082099
#>     Attrib V23    -0.12299329390989445
#>     Attrib V24    0.005569260215331783
#>     Attrib V25    -0.15720658855186798
#>     Attrib V26    -0.22345613609005766
#>     Attrib V27    -0.04978423135681721
#>     Attrib V28    -0.08295583312926877
#>     Attrib V29    -0.16924575483777882
#>     Attrib V3    0.03867239266621295
#>     Attrib V30    0.049027625388533315
#>     Attrib V31    -0.16357080657214915
#>     Attrib V32    -0.02524874767242743
#>     Attrib V33    0.07600864253980455
#>     Attrib V34    -0.008636600427779485
#>     Attrib V35    -0.03483632782209157
#>     Attrib V36    -0.20363393011092462
#>     Attrib V37    -0.14632099036866036
#>     Attrib V38    0.04697710982102544
#>     Attrib V39    0.06630008842773912
#>     Attrib V4    0.11402954742173121
#>     Attrib V40    -0.12170454837570581
#>     Attrib V41    0.056504902424530414
#>     Attrib V42    0.04521490060828017
#>     Attrib V43    0.07384048166113899
#>     Attrib V44    0.05965311833733034
#>     Attrib V45    0.09011810903935577
#>     Attrib V46    0.03307556982718107
#>     Attrib V47    -0.04016458326524116
#>     Attrib V48    -0.009317790897577886
#>     Attrib V49    0.0875958017264055
#>     Attrib V5    0.0314755362832505
#>     Attrib V50    -0.15441031028812477
#>     Attrib V51    0.021033537129079755
#>     Attrib V52    -0.03369145728571714
#>     Attrib V53    0.0756428676071457
#>     Attrib V54    0.1027717052898785
#>     Attrib V55    0.12341694504281912
#>     Attrib V56    -0.020013087081638025
#>     Attrib V57    0.2716250382094732
#>     Attrib V58    0.1329558977661052
#>     Attrib V59    0.2093569358738623
#>     Attrib V6    0.0870758277628967
#>     Attrib V60    0.1671740772041752
#>     Attrib V7    0.10506541249127299
#>     Attrib V8    0.009409392248066032
#>     Attrib V9    0.2464801521724371
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.3225277553156918
#>     Attrib V1    0.3022681843202206
#>     Attrib V10    0.9555942168564184
#>     Attrib V11    0.8673101230079953
#>     Attrib V12    0.7121008693621719
#>     Attrib V13    0.5210924480516337
#>     Attrib V14    -0.14846379866193352
#>     Attrib V15    -0.22892700153496714
#>     Attrib V16    -0.4957636756416327
#>     Attrib V17    -0.5595616677616111
#>     Attrib V18    -0.3789192961787979
#>     Attrib V19    0.11480227966773683
#>     Attrib V2    0.1776955885863735
#>     Attrib V20    0.1090929680773445
#>     Attrib V21    -0.03606352974228199
#>     Attrib V22    0.015609529448938276
#>     Attrib V23    0.16710145374978105
#>     Attrib V24    0.2980914963268147
#>     Attrib V25    -0.19351354188439668
#>     Attrib V26    0.2183853792655502
#>     Attrib V27    1.052206350299202
#>     Attrib V28    1.3088561263048355
#>     Attrib V29    0.730277781501191
#>     Attrib V3    0.23444658459853013
#>     Attrib V30    0.39485309553873565
#>     Attrib V31    -0.4475947494348833
#>     Attrib V32    -0.049166484062489586
#>     Attrib V33    -0.005920259320283778
#>     Attrib V34    0.16121427667126126
#>     Attrib V35    0.290035083198275
#>     Attrib V36    -0.28654030563241434
#>     Attrib V37    0.06939148494770937
#>     Attrib V38    0.18814667937125068
#>     Attrib V39    0.28449797029113655
#>     Attrib V4    0.011265676576436411
#>     Attrib V40    0.2465780397544924
#>     Attrib V41    0.6819549067001777
#>     Attrib V42    -0.24049302716628246
#>     Attrib V43    0.17139481495489323
#>     Attrib V44    0.10305822106538477
#>     Attrib V45    0.19647809244824965
#>     Attrib V46    0.37967539395303546
#>     Attrib V47    0.28833021647174256
#>     Attrib V48    0.30828227482320397
#>     Attrib V49    0.7669640338611561
#>     Attrib V5    0.22916236907181955
#>     Attrib V50    -0.4959083504266418
#>     Attrib V51    0.14429834748590661
#>     Attrib V52    0.4188741799612408
#>     Attrib V53    0.6479548365873936
#>     Attrib V54    0.10209761362306549
#>     Attrib V55    -0.2820362057917351
#>     Attrib V56    -0.5432935935793778
#>     Attrib V57    -0.06864759335103669
#>     Attrib V58    -0.21104759191505965
#>     Attrib V59    0.14514471293766631
#>     Attrib V6    0.11648226868415865
#>     Attrib V60    0.28983304400741144
#>     Attrib V7    -0.24135485372029286
#>     Attrib V8    -0.960998274514386
#>     Attrib V9    0.6983436576228731
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.22317943305687787
#>     Attrib V1    0.12165771132142529
#>     Attrib V10    0.5403293045332968
#>     Attrib V11    0.49938940947168003
#>     Attrib V12    0.3718595788475728
#>     Attrib V13    0.2314860524433621
#>     Attrib V14    -0.22299289269966172
#>     Attrib V15    -0.15315549409866347
#>     Attrib V16    -0.26520776089806086
#>     Attrib V17    -0.3127970704852805
#>     Attrib V18    -0.29083651848759157
#>     Attrib V19    0.009093839721965818
#>     Attrib V2    0.04361598315385606
#>     Attrib V20    -0.059135669076563806
#>     Attrib V21    -0.10496303814105426
#>     Attrib V22    -0.17322366809693662
#>     Attrib V23    -0.1704547170646929
#>     Attrib V24    0.09204707255969892
#>     Attrib V25    -0.25364869656568184
#>     Attrib V26    -0.036716458148695195
#>     Attrib V27    0.5101350030375064
#>     Attrib V28    0.6162078557333893
#>     Attrib V29    0.21079974400523296
#>     Attrib V3    0.034868274858907373
#>     Attrib V30    0.28731052308231947
#>     Attrib V31    -0.35295960698557977
#>     Attrib V32    -0.004052721837641719
#>     Attrib V33    0.15515576372563347
#>     Attrib V34    0.16659024887892054
#>     Attrib V35    0.1225044176422868
#>     Attrib V36    -0.19883694252303635
#>     Attrib V37    -0.10955197920663243
#>     Attrib V38    0.15008753437955696
#>     Attrib V39    0.15186726924967964
#>     Attrib V4    0.10910061895754576
#>     Attrib V40    -0.03639223008170724
#>     Attrib V41    0.2366268437257848
#>     Attrib V42    -0.21456961883265627
#>     Attrib V43    0.15287378487030912
#>     Attrib V44    0.1625018781429024
#>     Attrib V45    0.21009238975991965
#>     Attrib V46    0.20301439101801924
#>     Attrib V47    0.07371783434766335
#>     Attrib V48    0.21086377503945333
#>     Attrib V49    0.5036235630952585
#>     Attrib V5    0.060335470355740564
#>     Attrib V50    -0.5310430070085832
#>     Attrib V51    -0.05074003425874847
#>     Attrib V52    0.07088723992433243
#>     Attrib V53    0.29921885264735293
#>     Attrib V54    0.08898407264895938
#>     Attrib V55    -0.013076587754760938
#>     Attrib V56    -0.406280384775614
#>     Attrib V57    0.21006666610791455
#>     Attrib V58    -0.058250017408047784
#>     Attrib V59    0.17945938718122578
#>     Attrib V6    -0.027895592996297475
#>     Attrib V60    0.18875317651119514
#>     Attrib V7    -0.15658401518530837
#>     Attrib V8    -0.5435204922324064
#>     Attrib V9    0.43659336661230597
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.22853361695701419
#>     Attrib V1    0.1678827700179062
#>     Attrib V10    1.0041322678228062
#>     Attrib V11    0.7890368914222035
#>     Attrib V12    0.7279296799955554
#>     Attrib V13    0.5062471258813094
#>     Attrib V14    -0.2797520179022506
#>     Attrib V15    -0.2925385363474238
#>     Attrib V16    -0.49465301972876674
#>     Attrib V17    -0.45334320330184724
#>     Attrib V18    -0.27921503506963685
#>     Attrib V19    0.1276425468447806
#>     Attrib V2    0.054393674827446496
#>     Attrib V20    0.0679730404726339
#>     Attrib V21    -0.02353143902817507
#>     Attrib V22    0.075499584495789
#>     Attrib V23    0.19686663160418583
#>     Attrib V24    0.46600329311151134
#>     Attrib V25    0.04132910288750301
#>     Attrib V26    0.28333931175950783
#>     Attrib V27    0.9882984541169736
#>     Attrib V28    1.010976877353321
#>     Attrib V29    0.2698156614114567
#>     Attrib V3    0.14746705254273473
#>     Attrib V30    0.25908234375124806
#>     Attrib V31    -0.43245900248669816
#>     Attrib V32    -0.038375247594738045
#>     Attrib V33    0.017325315371508575
#>     Attrib V34    0.20318907312316264
#>     Attrib V35    0.2748406727339366
#>     Attrib V36    -0.2910641974789227
#>     Attrib V37    -0.09146292376818577
#>     Attrib V38    0.11791608323592605
#>     Attrib V39    0.26692573992244306
#>     Attrib V4    -0.08721951425790564
#>     Attrib V40    0.13628345749987414
#>     Attrib V41    0.5479070811274869
#>     Attrib V42    -0.290775758552593
#>     Attrib V43    0.2516796583694507
#>     Attrib V44    0.1232778854215975
#>     Attrib V45    0.1784622866366406
#>     Attrib V46    0.3360914467476112
#>     Attrib V47    0.2733724884199766
#>     Attrib V48    0.31607012366421267
#>     Attrib V49    0.7861273109309596
#>     Attrib V5    0.1736392276286174
#>     Attrib V50    -0.5190295600645712
#>     Attrib V51    0.166450060554611
#>     Attrib V52    0.3499360268934416
#>     Attrib V53    0.7003598494315438
#>     Attrib V54    0.13668561981033184
#>     Attrib V55    -0.2496038945992542
#>     Attrib V56    -0.45767225066517747
#>     Attrib V57    -0.10162967371864157
#>     Attrib V58    -0.22224242550972875
#>     Attrib V59    0.09534990542191671
#>     Attrib V6    0.11356268234045772
#>     Attrib V60    0.23280513524778376
#>     Attrib V7    -0.2030270763913948
#>     Attrib V8    -0.8769611795891353
#>     Attrib V9    0.6686721523241614
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.24627622787734701
#>     Attrib V1    -0.07741246332675938
#>     Attrib V10    -0.3861236356848573
#>     Attrib V11    -0.3367718830117657
#>     Attrib V12    -0.18388316627144952
#>     Attrib V13    0.0038124927754238903
#>     Attrib V14    0.3575991310265225
#>     Attrib V15    0.13616160212001088
#>     Attrib V16    0.1943356687758046
#>     Attrib V17    0.07144808495747922
#>     Attrib V18    0.14997278007945058
#>     Attrib V19    -0.17244116231843207
#>     Attrib V2    0.08663377443755917
#>     Attrib V20    -0.186256577455106
#>     Attrib V21    -0.06508094563118663
#>     Attrib V22    -0.041961958999314965
#>     Attrib V23    -0.043060518383297594
#>     Attrib V24    -0.25472450920363393
#>     Attrib V25    0.28926653460784
#>     Attrib V26    0.319731997683796
#>     Attrib V27    -0.0727678794639397
#>     Attrib V28    -0.09475959568699625
#>     Attrib V29    0.24680683706821033
#>     Attrib V3    -0.025306137146603278
#>     Attrib V30    -0.014004877010417633
#>     Attrib V31    0.3902235454009189
#>     Attrib V32    -0.05381749031532096
#>     Attrib V33    -0.07267599537305457
#>     Attrib V34    -0.01652447870677582
#>     Attrib V35    0.12324914652983246
#>     Attrib V36    0.4886473240830209
#>     Attrib V37    0.42623958975331777
#>     Attrib V38    0.016370182699441533
#>     Attrib V39    -0.17154031851823093
#>     Attrib V4    -0.016773492696933442
#>     Attrib V40    0.20601902724759988
#>     Attrib V41    -0.09839660014336796
#>     Attrib V42    -0.031118714682883755
#>     Attrib V43    -0.2332764261703928
#>     Attrib V44    -0.10581300699376293
#>     Attrib V45    -0.07358185898118362
#>     Attrib V46    -0.03326129318000812
#>     Attrib V47    0.062384231574542044
#>     Attrib V48    -0.08196904735288214
#>     Attrib V49    -0.37795962908814296
#>     Attrib V5    -0.04818262281323113
#>     Attrib V50    0.6368189389258911
#>     Attrib V51    -0.021806522895657682
#>     Attrib V52    -0.03044124077116342
#>     Attrib V53    -0.12940919704980425
#>     Attrib V54    -0.18251440272499156
#>     Attrib V55    0.02347620872567161
#>     Attrib V56    0.11885578709820818
#>     Attrib V57    -0.2906087199395445
#>     Attrib V58    -0.09944090315655459
#>     Attrib V59    -0.16076312053090291
#>     Attrib V6    5.321446381912784E-4
#>     Attrib V60    -0.06200249044519323
#>     Attrib V7    0.03697762050954138
#>     Attrib V8    0.32946054329667607
#>     Attrib V9    -0.4541572623413517
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.12913914544888894
#>     Attrib V1    0.24240183555676514
#>     Attrib V10    0.5457149166703352
#>     Attrib V11    0.4465554314099846
#>     Attrib V12    0.192617871759247
#>     Attrib V13    -0.0668631732205702
#>     Attrib V14    -0.4861665149436641
#>     Attrib V15    -0.2499643299155932
#>     Attrib V16    -0.2135419880913578
#>     Attrib V17    0.0444548825779864
#>     Attrib V18    0.006809891032490879
#>     Attrib V19    0.3049512823246762
#>     Attrib V2    -0.18841990804894954
#>     Attrib V20    0.3631969333006228
#>     Attrib V21    0.177636280415978
#>     Attrib V22    0.029352388551161564
#>     Attrib V23    -0.018582535916404453
#>     Attrib V24    0.2355021731265668
#>     Attrib V25    -0.4011064787442116
#>     Attrib V26    -0.4950389575984124
#>     Attrib V27    -0.01638476575648071
#>     Attrib V28    -0.09421305627087395
#>     Attrib V29    -0.6701752404803462
#>     Attrib V3    -0.09892237143243547
#>     Attrib V30    0.18850215064147607
#>     Attrib V31    -0.48830367191905105
#>     Attrib V32    -0.061671010610562654
#>     Attrib V33    0.22263460008111155
#>     Attrib V34    0.03607807471251111
#>     Attrib V35    -0.12641485704568403
#>     Attrib V36    -0.6298511409345731
#>     Attrib V37    -0.604974680263644
#>     Attrib V38    0.234091089679994
#>     Attrib V39    0.18602779362119926
#>     Attrib V4    -0.004465861994077604
#>     Attrib V40    -0.4365168199098634
#>     Attrib V41    -0.024599325629923587
#>     Attrib V42    0.0966931543073487
#>     Attrib V43    0.3992324301876156
#>     Attrib V44    0.3123414841874041
#>     Attrib V45    0.28454330184347115
#>     Attrib V46    0.016030859285453027
#>     Attrib V47    -0.09018059259523309
#>     Attrib V48    0.10466101382883512
#>     Attrib V49    0.4717294266520843
#>     Attrib V5    0.03987705297508952
#>     Attrib V50    -0.7589112582661104
#>     Attrib V51    0.0420419655468174
#>     Attrib V52    -0.20749240440137823
#>     Attrib V53    -0.03513893422760367
#>     Attrib V54    0.3491972624074513
#>     Attrib V55    0.037952267652885056
#>     Attrib V56    -0.24510262920086634
#>     Attrib V57    0.44694900377333985
#>     Attrib V58    0.07741317715571704
#>     Attrib V59    0.12767596322006364
#>     Attrib V6    0.07640758879966048
#>     Attrib V60    0.1169182898422663
#>     Attrib V7    0.06271530733939382
#>     Attrib V8    -0.4307109785872492
#>     Attrib V9    0.6682076467788619
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.3729336025410192
#>     Attrib V1    0.12498633472119029
#>     Attrib V10    0.5214845133400959
#>     Attrib V11    0.4952234129799715
#>     Attrib V12    0.22037207106378592
#>     Attrib V13    0.09476983590757496
#>     Attrib V14    -0.4042096518248251
#>     Attrib V15    -0.28706691038815113
#>     Attrib V16    -0.32396851223682765
#>     Attrib V17    -0.2174987634771745
#>     Attrib V18    -0.1535483122535955
#>     Attrib V19    0.2921931250394166
#>     Attrib V2    -0.07276071529547327
#>     Attrib V20    0.19004425005160755
#>     Attrib V21    0.059271532043961496
#>     Attrib V22    0.030215000392790157
#>     Attrib V23    -0.005908166618062502
#>     Attrib V24    0.24761277457805222
#>     Attrib V25    -0.3745661266934322
#>     Attrib V26    -0.2657809476118518
#>     Attrib V27    0.36622538724431797
#>     Attrib V28    0.28624224063869363
#>     Attrib V29    -0.2592316272479367
#>     Attrib V3    -0.07132888438849382
#>     Attrib V30    0.20708169762275097
#>     Attrib V31    -0.5693204942288889
#>     Attrib V32    -0.12184232194668905
#>     Attrib V33    0.23393933502128703
#>     Attrib V34    0.16373908868540402
#>     Attrib V35    0.055937866618137363
#>     Attrib V36    -0.5142800528248609
#>     Attrib V37    -0.4534752979534216
#>     Attrib V38    0.15446873090767055
#>     Attrib V39    0.16856111410226854
#>     Attrib V4    -0.03577294767010184
#>     Attrib V40    -0.1905378640949921
#>     Attrib V41    0.24059953413631643
#>     Attrib V42    6.20672743650311E-4
#>     Attrib V43    0.40639197523674414
#>     Attrib V44    0.20077491790335605
#>     Attrib V45    0.25798283770929076
#>     Attrib V46    0.10973377886079215
#>     Attrib V47    -0.08613823853055164
#>     Attrib V48    0.17962859688399468
#>     Attrib V49    0.5507911120676788
#>     Attrib V5    0.024145187326377503
#>     Attrib V50    -0.8262590998660142
#>     Attrib V51    -0.048713328751867034
#>     Attrib V52    -0.09659107790197911
#>     Attrib V53    0.1500375045689366
#>     Attrib V54    0.20787362207799917
#>     Attrib V55    -0.08461322435283546
#>     Attrib V56    -0.32208950822928456
#>     Attrib V57    0.3669125887907285
#>     Attrib V58    -0.018939183744687692
#>     Attrib V59    0.1858044205976692
#>     Attrib V6    -0.0298649660865508
#>     Attrib V60    0.077027594970499
#>     Attrib V7    -0.07106884890091617
#>     Attrib V8    -0.6321474674858035
#>     Attrib V9    0.5979096954774508
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.28307052354948314
#>     Attrib V1    -0.30691953621616896
#>     Attrib V10    -0.5992119567601075
#>     Attrib V11    -0.5010529004883678
#>     Attrib V12    -0.2327618372834507
#>     Attrib V13    0.15883968169738888
#>     Attrib V14    0.5547599283034722
#>     Attrib V15    0.24201207355592003
#>     Attrib V16    0.16294804952375858
#>     Attrib V17    0.014508152153030095
#>     Attrib V18    -0.0020334100323517487
#>     Attrib V19    -0.41740078142243475
#>     Attrib V2    0.16403779720855294
#>     Attrib V20    -0.3610571348049819
#>     Attrib V21    -0.2585730963348438
#>     Attrib V22    -0.12731615410446237
#>     Attrib V23    -0.01985488587502957
#>     Attrib V24    -0.3776570105430345
#>     Attrib V25    0.4060131738456955
#>     Attrib V26    0.47989749095726986
#>     Attrib V27    0.10776561380571788
#>     Attrib V28    0.15338652171566483
#>     Attrib V29    0.7409400739804259
#>     Attrib V3    0.09777837255877232
#>     Attrib V30    -0.0742030277028529
#>     Attrib V31    0.37056143584938983
#>     Attrib V32    -0.08808573103665719
#>     Attrib V33    -0.24649045258647373
#>     Attrib V34    0.11849883035347482
#>     Attrib V35    0.34392466289092855
#>     Attrib V36    0.8851630065921064
#>     Attrib V37    0.87719666921382
#>     Attrib V38    -0.030613444321502432
#>     Attrib V39    -0.18222129934131884
#>     Attrib V4    -0.03353171937268772
#>     Attrib V40    0.3874282512701936
#>     Attrib V41    -0.07531448015824711
#>     Attrib V42    -0.19534247387085327
#>     Attrib V43    -0.5101515995948566
#>     Attrib V44    -0.2507732435122215
#>     Attrib V45    -0.12361743364134949
#>     Attrib V46    0.09168038383995346
#>     Attrib V47    0.13673685973995336
#>     Attrib V48    -0.1592591704959927
#>     Attrib V49    -0.5278526978647999
#>     Attrib V5    -0.07953689300364142
#>     Attrib V50    0.7281522573490544
#>     Attrib V51    -0.062476007563653235
#>     Attrib V52    0.07846384820939495
#>     Attrib V53    -0.22308494897992875
#>     Attrib V54    -0.4805463589714663
#>     Attrib V55    -0.011709513364522865
#>     Attrib V56    0.11676552857119187
#>     Attrib V57    -0.5932220055554646
#>     Attrib V58    -0.17601319756661513
#>     Attrib V59    -0.20695868627518327
#>     Attrib V6    -0.06140721145400568
#>     Attrib V60    -0.049837275325705054
#>     Attrib V7    -0.06762863937311875
#>     Attrib V8    0.31871427265236424
#>     Attrib V9    -0.7204026089096067
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.3197203011310506
#>     Attrib V1    0.28898423697556413
#>     Attrib V10    1.069892719360799
#>     Attrib V11    0.9520952763285406
#>     Attrib V12    0.8702395838358667
#>     Attrib V13    0.5785217024855961
#>     Attrib V14    -0.22206405997245426
#>     Attrib V15    -0.21720963877146104
#>     Attrib V16    -0.5732895402795825
#>     Attrib V17    -0.5610884078640923
#>     Attrib V18    -0.441506418252887
#>     Attrib V19    0.02748698746207469
#>     Attrib V2    0.2127711663701841
#>     Attrib V20    -0.005730439503877133
#>     Attrib V21    -0.1508697708121823
#>     Attrib V22    -0.03270662880643251
#>     Attrib V23    0.08047714436072792
#>     Attrib V24    0.20432118528020896
#>     Attrib V25    -0.2588199418844201
#>     Attrib V26    0.15703654658584665
#>     Attrib V27    1.0538568568964033
#>     Attrib V28    1.3057892218796217
#>     Attrib V29    0.5933028069819384
#>     Attrib V3    0.15943543098208812
#>     Attrib V30    0.4265848715025102
#>     Attrib V31    -0.4609861325759308
#>     Attrib V32    0.07321029551917453
#>     Attrib V33    0.1283259139571727
#>     Attrib V34    0.24404102371006423
#>     Attrib V35    0.3925115235248184
#>     Attrib V36    -0.2633097221396313
#>     Attrib V37    0.05657624501815174
#>     Attrib V38    0.131221876991282
#>     Attrib V39    0.2952769892018531
#>     Attrib V4    0.03542780367448368
#>     Attrib V40    0.21480924457146583
#>     Attrib V41    0.6198253040764821
#>     Attrib V42    -0.4212267308955076
#>     Attrib V43    0.10821457911410991
#>     Attrib V44    0.1494058065824121
#>     Attrib V45    0.20399009964287773
#>     Attrib V46    0.3635205624568623
#>     Attrib V47    0.2289055854265541
#>     Attrib V48    0.37578277336014404
#>     Attrib V49    0.8800610949320781
#>     Attrib V5    0.21212711995581174
#>     Attrib V50    -0.6179916151333187
#>     Attrib V51    0.10967574455572696
#>     Attrib V52    0.37278652570954873
#>     Attrib V53    0.5969518224625261
#>     Attrib V54    0.10049522632891776
#>     Attrib V55    -0.24831976664939856
#>     Attrib V56    -0.551562406091431
#>     Attrib V57    -0.17613225811208613
#>     Attrib V58    -0.19869423224393953
#>     Attrib V59    0.16947406833031692
#>     Attrib V6    0.10795618237881405
#>     Attrib V60    0.33211138993153505
#>     Attrib V7    -0.3272830174009918
#>     Attrib V8    -1.0270706702426264
#>     Attrib V9    0.7322120879297788
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.20900495494569657
#>     Attrib V1    -0.4287946941967067
#>     Attrib V10    -0.6796974669279225
#>     Attrib V11    -0.5735823325981362
#>     Attrib V12    -0.05107779915724196
#>     Attrib V13    0.34260406244985175
#>     Attrib V14    0.8012810028505711
#>     Attrib V15    0.40818439311355925
#>     Attrib V16    0.2068430758845496
#>     Attrib V17    -0.09134563905782042
#>     Attrib V18    -0.08259181846898367
#>     Attrib V19    -0.49694586230317567
#>     Attrib V2    0.310170678058885
#>     Attrib V20    -0.5180656403528766
#>     Attrib V21    -0.4403018174639125
#>     Attrib V22    -0.0923052227416305
#>     Attrib V23    -0.010700025900382153
#>     Attrib V24    -0.4875312828666328
#>     Attrib V25    0.40617388954669587
#>     Attrib V26    0.7106607140564436
#>     Attrib V27    0.12285317706107796
#>     Attrib V28    0.400926246955761
#>     Attrib V29    1.2084905687229945
#>     Attrib V3    0.1328068593312675
#>     Attrib V30    -0.10978621893504156
#>     Attrib V31    0.5191795026343189
#>     Attrib V32    -0.0571026209399684
#>     Attrib V33    -0.3202590722432504
#>     Attrib V34    0.22918157137244624
#>     Attrib V35    0.5392126294858102
#>     Attrib V36    1.210399207762256
#>     Attrib V37    1.228382656430116
#>     Attrib V38    -0.09458924228421627
#>     Attrib V39    -0.2744662777828766
#>     Attrib V4    -0.04840207833383272
#>     Attrib V40    0.5766233871922631
#>     Attrib V41    0.021733582204845475
#>     Attrib V42    -0.4470859777446076
#>     Attrib V43    -0.7546861387011115
#>     Attrib V44    -0.43825310392034056
#>     Attrib V45    -0.07943675434876982
#>     Attrib V46    0.13379560951748967
#>     Attrib V47    0.15141976727369758
#>     Attrib V48    -0.1708741727192553
#>     Attrib V49    -0.6603424863774181
#>     Attrib V5    -0.11921751442907576
#>     Attrib V50    0.922571614975401
#>     Attrib V51    0.0015220110017964612
#>     Attrib V52    0.19934481588365108
#>     Attrib V53    -0.18821017465980827
#>     Attrib V54    -0.7365299876782113
#>     Attrib V55    -0.020039290000597378
#>     Attrib V56    0.1009970772705409
#>     Attrib V57    -0.9936560274539592
#>     Attrib V58    -0.28685514104576704
#>     Attrib V59    -0.3304220633331488
#>     Attrib V6    -0.11177208759376976
#>     Attrib V60    -0.2069775977817204
#>     Attrib V7    -0.30289144430406395
#>     Attrib V8    0.3539889274951705
#>     Attrib V9    -0.9217072421715441
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.004484490658783554
#>     Attrib V1    0.20488996907414575
#>     Attrib V10    0.20371925908378657
#>     Attrib V11    0.12478422744919039
#>     Attrib V12    -0.01108212708280091
#>     Attrib V13    -0.010053759295144479
#>     Attrib V14    -0.16343302726663636
#>     Attrib V15    0.01236744193498763
#>     Attrib V16    0.0680183629624348
#>     Attrib V17    0.081205511450252
#>     Attrib V18    0.047815880626087014
#>     Attrib V19    0.1566124784156778
#>     Attrib V2    -0.06544866103676779
#>     Attrib V20    0.1382336922033371
#>     Attrib V21    0.07821215778863838
#>     Attrib V22    -0.06477291538835679
#>     Attrib V23    -0.17708287281213125
#>     Attrib V24    0.017954228985813465
#>     Attrib V25    -0.32162632993976
#>     Attrib V26    -0.4352677190521908
#>     Attrib V27    -0.2116563129263124
#>     Attrib V28    -0.177935601198734
#>     Attrib V29    -0.35981309859192445
#>     Attrib V3    -0.003451342739124618
#>     Attrib V30    0.01944925537281925
#>     Attrib V31    -0.2618572041429984
#>     Attrib V32    -0.025215222305923313
#>     Attrib V33    0.12495453563527051
#>     Attrib V34    0.02316303887704683
#>     Attrib V35    -0.164155946998879
#>     Attrib V36    -0.404450816728001
#>     Attrib V37    -0.3421162898796862
#>     Attrib V38    0.07254729711142746
#>     Attrib V39    0.10951506247437916
#>     Attrib V4    0.08737844124904758
#>     Attrib V40    -0.23286886661997622
#>     Attrib V41    -0.004263770872443763
#>     Attrib V42    0.08576540804283474
#>     Attrib V43    0.13443872977931784
#>     Attrib V44    0.04052625758451234
#>     Attrib V45    0.09183945994795707
#>     Attrib V46    -0.00914705762475334
#>     Attrib V47    -0.10108908314556575
#>     Attrib V48    -0.0041241152462335616
#>     Attrib V49    0.14554472878463431
#>     Attrib V5    0.0014511026730501175
#>     Attrib V50    -0.30358988492823785
#>     Attrib V51    0.021845391165865705
#>     Attrib V52    -0.0981783086752097
#>     Attrib V53    0.025257199969325687
#>     Attrib V54    0.1764636888166314
#>     Attrib V55    0.19004679234499847
#>     Attrib V56    -0.05033280418702637
#>     Attrib V57    0.3720926528032383
#>     Attrib V58    0.1770555809612464
#>     Attrib V59    0.16125457124500256
#>     Attrib V6    0.051453125746690864
#>     Attrib V60    0.1631207409982293
#>     Attrib V7    0.12627865517819706
#>     Attrib V8    -0.12146255998249506
#>     Attrib V9    0.33052587657734345
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.03698697332779243
#>     Attrib V1    0.23286967081684762
#>     Attrib V10    0.304751447822417
#>     Attrib V11    0.20963862927311316
#>     Attrib V12    -0.015237820086310047
#>     Attrib V13    -0.08782096679350805
#>     Attrib V14    -0.2079376748410947
#>     Attrib V15    0.045927480845281726
#>     Attrib V16    -0.0020603663395557647
#>     Attrib V17    0.05064744821819997
#>     Attrib V18    -0.0033984704607898874
#>     Attrib V19    0.1771988593049067
#>     Attrib V2    0.0135619780799021
#>     Attrib V20    0.16133324442215075
#>     Attrib V21    0.08632806892925819
#>     Attrib V22    0.016439261075897323
#>     Attrib V23    -0.14714351636626485
#>     Attrib V24    0.008796610954345144
#>     Attrib V25    -0.42275364264463344
#>     Attrib V26    -0.4697437729787037
#>     Attrib V27    -0.18002539052004543
#>     Attrib V28    -0.18739758685433475
#>     Attrib V29    -0.42896222923891136
#>     Attrib V3    -0.047519827224469145
#>     Attrib V30    0.09333338440945055
#>     Attrib V31    -0.20889114863101352
#>     Attrib V32    -0.04713684833058558
#>     Attrib V33    0.2097008634038981
#>     Attrib V34    -0.009907172322703347
#>     Attrib V35    -0.11239324968775292
#>     Attrib V36    -0.45000068581317915
#>     Attrib V37    -0.41539084198619314
#>     Attrib V38    0.11631850770444413
#>     Attrib V39    0.12613233712168126
#>     Attrib V4    0.06270495612764695
#>     Attrib V40    -0.28401615246715306
#>     Attrib V41    -0.011200411339111739
#>     Attrib V42    0.018687489709394843
#>     Attrib V43    0.2108315899026901
#>     Attrib V44    0.14022596879108548
#>     Attrib V45    0.1316183804560955
#>     Attrib V46    -0.04922987155142659
#>     Attrib V47    -0.1570118646580431
#>     Attrib V48    0.0492894242933615
#>     Attrib V49    0.1760880576004963
#>     Attrib V5    0.002712522683823129
#>     Attrib V50    -0.41761395747087904
#>     Attrib V51    -0.008853311903054287
#>     Attrib V52    -0.13713221877490925
#>     Attrib V53    -0.06451096032843893
#>     Attrib V54    0.1464074531816688
#>     Attrib V55    0.17884468926997935
#>     Attrib V56    -0.08043519686259544
#>     Attrib V57    0.37986996563929826
#>     Attrib V58    0.0932891744213746
#>     Attrib V59    0.13858546966755655
#>     Attrib V6    0.0705201047865251
#>     Attrib V60    0.14953904583398123
#>     Attrib V7    0.07031157412109167
#>     Attrib V8    -0.12674550227143142
#>     Attrib V9    0.3747476589785115
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.30102155520851825
#>     Attrib V1    -0.3333877887309506
#>     Attrib V10    -0.6419013918533615
#>     Attrib V11    -0.5393801163482896
#>     Attrib V12    -0.2256932480569305
#>     Attrib V13    0.151458385048908
#>     Attrib V14    0.6423707715503559
#>     Attrib V15    0.2792560438360774
#>     Attrib V16    0.2265280764201355
#>     Attrib V17    -0.03572585732326303
#>     Attrib V18    0.05475494345708419
#>     Attrib V19    -0.48196541008966004
#>     Attrib V2    0.24488408859562028
#>     Attrib V20    -0.39710653010182684
#>     Attrib V21    -0.2704605657463257
#>     Attrib V22    -0.10210066950993962
#>     Attrib V23    -0.0182640947393306
#>     Attrib V24    -0.46000067757108903
#>     Attrib V25    0.410409642452203
#>     Attrib V26    0.5881549607279536
#>     Attrib V27    0.07380160065857354
#>     Attrib V28    0.19578190062890763
#>     Attrib V29    0.8484036955792499
#>     Attrib V3    0.11542611098727185
#>     Attrib V30    -0.14650169018813092
#>     Attrib V31    0.4334887908259769
#>     Attrib V32    -0.1147859853178288
#>     Attrib V33    -0.27212697881323006
#>     Attrib V34    0.14446875154726108
#>     Attrib V35    0.4038795608964799
#>     Attrib V36    1.0900943950564144
#>     Attrib V37    0.9870261973489931
#>     Attrib V38    -0.0462663210546434
#>     Attrib V39    -0.21277629471855922
#>     Attrib V4    -0.08585872636625959
#>     Attrib V40    0.4249931646225785
#>     Attrib V41    -0.10257496600493363
#>     Attrib V42    -0.25866150039230484
#>     Attrib V43    -0.5503718366867311
#>     Attrib V44    -0.2410320527802821
#>     Attrib V45    -0.11517142880949383
#>     Attrib V46    0.08071395667847263
#>     Attrib V47    0.16476155782666962
#>     Attrib V48    -0.16991378742365404
#>     Attrib V49    -0.6014268828187022
#>     Attrib V5    -0.13442345519034646
#>     Attrib V50    0.822765222657944
#>     Attrib V51    0.008267306287194912
#>     Attrib V52    0.14216513442723785
#>     Attrib V53    -0.2244122617351082
#>     Attrib V54    -0.566402780729106
#>     Attrib V55    0.02848700614547043
#>     Attrib V56    0.13684149800714487
#>     Attrib V57    -0.7673634020619471
#>     Attrib V58    -0.19640983014896637
#>     Attrib V59    -0.26382041798671385
#>     Attrib V6    -0.13388602714352046
#>     Attrib V60    -0.0919136950074885
#>     Attrib V7    -0.12276765979950824
#>     Attrib V8    0.4321603886302542
#>     Attrib V9    -0.8174049872842307
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.31589732044852237
#>     Attrib V1    0.14781817482185605
#>     Attrib V10    0.9108804919109983
#>     Attrib V11    0.7259083704048461
#>     Attrib V12    0.8838776173868264
#>     Attrib V13    0.6208130449794991
#>     Attrib V14    -0.10038438798631903
#>     Attrib V15    -0.22195886428426753
#>     Attrib V16    -0.5887195650272938
#>     Attrib V17    -0.5102172319823042
#>     Attrib V18    -0.31551258343186384
#>     Attrib V19    0.19557303157912087
#>     Attrib V2    0.11371877632549386
#>     Attrib V20    -0.03879717772928149
#>     Attrib V21    -0.16655868055375206
#>     Attrib V22    0.15468428436799042
#>     Attrib V23    0.29730908885777285
#>     Attrib V24    0.5221020464579414
#>     Attrib V25    0.03266037832271921
#>     Attrib V26    0.38433919560312124
#>     Attrib V27    1.311036315889783
#>     Attrib V28    1.504721703380992
#>     Attrib V29    0.7340097023512085
#>     Attrib V3    0.3033043134091115
#>     Attrib V30    0.3010226127348974
#>     Attrib V31    -0.5530059983195359
#>     Attrib V32    -0.08421239813052972
#>     Attrib V33    -0.08514473832982165
#>     Attrib V34    0.12338450393119363
#>     Attrib V35    0.3686797564669922
#>     Attrib V36    -0.3194488100122275
#>     Attrib V37    -0.08378867791534805
#>     Attrib V38    0.026651310670461722
#>     Attrib V39    0.26423945667868226
#>     Attrib V4    0.12698094496923193
#>     Attrib V40    0.3634816466646751
#>     Attrib V41    0.9004732683653858
#>     Attrib V42    -0.23739009164166291
#>     Attrib V43    0.17480096959913458
#>     Attrib V44    0.09240624993275674
#>     Attrib V45    0.2283700985969188
#>     Attrib V46    0.3926781421987386
#>     Attrib V47    0.3053338054619956
#>     Attrib V48    0.47306081070120065
#>     Attrib V49    1.0185337096107039
#>     Attrib V5    0.40513836259307356
#>     Attrib V50    -0.481932300734441
#>     Attrib V51    0.24617229196651788
#>     Attrib V52    0.5446605672738142
#>     Attrib V53    0.9750132961742013
#>     Attrib V54    0.13223643151576797
#>     Attrib V55    -0.4195481669536508
#>     Attrib V56    -0.5157226052949009
#>     Attrib V57    -0.06330801888296873
#>     Attrib V58    -0.18595347577508395
#>     Attrib V59    0.2592570612542817
#>     Attrib V6    0.1972409744115083
#>     Attrib V60    0.3503845884914833
#>     Attrib V7    -0.33916261156457794
#>     Attrib V8    -1.1918111002495098
#>     Attrib V9    0.5120041660536823
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.0794877779913967
#>     Attrib V1    0.31171806567146254
#>     Attrib V10    0.3368299932561902
#>     Attrib V11    0.240941933528303
#>     Attrib V12    0.05844304357925973
#>     Attrib V13    -0.09013006430212149
#>     Attrib V14    -0.2770093971429546
#>     Attrib V15    -0.08110680952917161
#>     Attrib V16    -0.09205512230110258
#>     Attrib V17    0.04943099150420864
#>     Attrib V18    0.0432345250063627
#>     Attrib V19    0.2747532166885967
#>     Attrib V2    -0.11292322749888864
#>     Attrib V20    0.29161471052883003
#>     Attrib V21    0.23289939388579525
#>     Attrib V22    0.05428266467805483
#>     Attrib V23    -0.0474330774832734
#>     Attrib V24    0.10295536315360074
#>     Attrib V25    -0.4491528692390596
#>     Attrib V26    -0.47682635013872765
#>     Attrib V27    -0.12765065856555094
#>     Attrib V28    -0.255447251832364
#>     Attrib V29    -0.5282231329578888
#>     Attrib V3    -0.09656749480946317
#>     Attrib V30    0.12495687380285085
#>     Attrib V31    -0.3689796757690241
#>     Attrib V32    -0.09692123658756502
#>     Attrib V33    0.1821136762754424
#>     Attrib V34    -0.06774718180596866
#>     Attrib V35    -0.22019971578967154
#>     Attrib V36    -0.5159039219850247
#>     Attrib V37    -0.47359931116694093
#>     Attrib V38    0.182720208673172
#>     Attrib V39    0.15362622867154568
#>     Attrib V4    0.040935605956515166
#>     Attrib V40    -0.3263260225804001
#>     Attrib V41    0.006971267882412443
#>     Attrib V42    0.0766990194075791
#>     Attrib V43    0.33994182351621544
#>     Attrib V44    0.241599910082519
#>     Attrib V45    0.15251492651279047
#>     Attrib V46    -0.049791700211386375
#>     Attrib V47    -0.1764151164376065
#>     Attrib V48    0.05203173073758814
#>     Attrib V49    0.30191191966206365
#>     Attrib V5    0.03271551780862662
#>     Attrib V50    -0.5655372313377487
#>     Attrib V51    0.03667279232253274
#>     Attrib V52    -0.14849273035331945
#>     Attrib V53    -0.0661611019937954
#>     Attrib V54    0.3340461796592656
#>     Attrib V55    0.1549681939898445
#>     Attrib V56    -0.12973386987027302
#>     Attrib V57    0.4494196617356769
#>     Attrib V58    0.16034078457162204
#>     Attrib V59    0.2592732268165906
#>     Attrib V6    0.044140788821482015
#>     Attrib V60    0.1821288972232126
#>     Attrib V7    0.18513839733026652
#>     Attrib V8    -0.2983517277760891
#>     Attrib V9    0.4865473947138236
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.14744862562516048
#>     Attrib V1    -0.4888465002583385
#>     Attrib V10    -0.8657913602073468
#>     Attrib V11    -0.738009462889539
#>     Attrib V12    -0.12800393986925535
#>     Attrib V13    0.3715078663367645
#>     Attrib V14    0.9845983814110627
#>     Attrib V15    0.5055239764617536
#>     Attrib V16    0.311650579405774
#>     Attrib V17    -0.0783422243257085
#>     Attrib V18    -0.054258053418508256
#>     Attrib V19    -0.6332575962516503
#>     Attrib V2    0.3761948935717223
#>     Attrib V20    -0.6649060026849286
#>     Attrib V21    -0.510824902582193
#>     Attrib V22    -0.24898769140331845
#>     Attrib V23    -0.12235596827720865
#>     Attrib V24    -0.6046770794728473
#>     Attrib V25    0.4550858367405229
#>     Attrib V26    0.7319464921612195
#>     Attrib V27    0.11196371490349245
#>     Attrib V28    0.35474775275722625
#>     Attrib V29    1.2949761581713126
#>     Attrib V3    0.11513874519804784
#>     Attrib V30    -0.17808348399876117
#>     Attrib V31    0.6953496925721837
#>     Attrib V32    -0.00812647701150041
#>     Attrib V33    -0.28705406771233977
#>     Attrib V34    0.2979866346665188
#>     Attrib V35    0.5944910624971552
#>     Attrib V36    1.3125562208006214
#>     Attrib V37    1.2971798502729133
#>     Attrib V38    -0.26060292925316475
#>     Attrib V39    -0.38694875897893916
#>     Attrib V4    -0.015839719850544928
#>     Attrib V40    0.7762538179322575
#>     Attrib V41    0.1276770143289494
#>     Attrib V42    -0.5285767937636222
#>     Attrib V43    -0.894379655688961
#>     Attrib V44    -0.5742762924747447
#>     Attrib V45    -0.2720875402000938
#>     Attrib V46    0.04681872055272308
#>     Attrib V47    0.09817242663960978
#>     Attrib V48    -0.1747407826550938
#>     Attrib V49    -0.7978665753733191
#>     Attrib V5    -0.1240676467938736
#>     Attrib V50    1.026640965910987
#>     Attrib V51    -0.05549256923851529
#>     Attrib V52    0.26907960325873753
#>     Attrib V53    -0.18661076874677335
#>     Attrib V54    -0.8065909847298859
#>     Attrib V55    0.029147962904476236
#>     Attrib V56    0.10696418574219717
#>     Attrib V57    -0.9445136903989894
#>     Attrib V58    -0.2801977885236554
#>     Attrib V59    -0.2898287625646022
#>     Attrib V6    -0.14398086920616485
#>     Attrib V60    -0.13059926726524726
#>     Attrib V7    -0.2903670425728708
#>     Attrib V8    0.3972275522931827
#>     Attrib V9    -1.0642619829247217
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.04654487721579507
#>     Attrib V1    0.4248867052194129
#>     Attrib V10    0.36159163056552346
#>     Attrib V11    0.24397617560487855
#>     Attrib V12    -0.04845200031993008
#>     Attrib V13    -0.15830794433436998
#>     Attrib V14    -0.31316297106777174
#>     Attrib V15    -0.04363854607285835
#>     Attrib V16    0.1001460490114189
#>     Attrib V17    0.14113864155696337
#>     Attrib V18    0.02619688532510694
#>     Attrib V19    0.23536332130124676
#>     Attrib V2    -0.054853726902669896
#>     Attrib V20    0.32512723383960834
#>     Attrib V21    0.22188758640913514
#>     Attrib V22    -0.0561341596253255
#>     Attrib V23    -0.2494897695972725
#>     Attrib V24    0.03195576448093999
#>     Attrib V25    -0.63431023686605
#>     Attrib V26    -0.7981794176136531
#>     Attrib V27    -0.46328914507665686
#>     Attrib V28    -0.5622641814124602
#>     Attrib V29    -0.8130226801140368
#>     Attrib V3    -0.10979354781834622
#>     Attrib V30    0.016369226361313795
#>     Attrib V31    -0.33246792136945236
#>     Attrib V32    0.027613618349609362
#>     Attrib V33    0.3148959112838817
#>     Attrib V34    -0.018275311330855176
#>     Attrib V35    -0.34318869165344595
#>     Attrib V36    -0.7354313344533339
#>     Attrib V37    -0.6873275750505959
#>     Attrib V38    0.10448114175569319
#>     Attrib V39    0.14655341851440773
#>     Attrib V4    0.09944611262331554
#>     Attrib V40    -0.4124523495520409
#>     Attrib V41    -0.12342920802513245
#>     Attrib V42    0.16152296373403546
#>     Attrib V43    0.39151246603091266
#>     Attrib V44    0.20163856204101677
#>     Attrib V45    0.09493027677260403
#>     Attrib V46    -0.06354783430824966
#>     Attrib V47    -0.26709505534108596
#>     Attrib V48    0.026828662247913016
#>     Attrib V49    0.2778368213158974
#>     Attrib V5    0.0023140460050254706
#>     Attrib V50    -0.6464651215039503
#>     Attrib V51    -0.06519651368706245
#>     Attrib V52    -0.3118557197007468
#>     Attrib V53    -0.1963814356807602
#>     Attrib V54    0.3792041175779236
#>     Attrib V55    0.2551906705205479
#>     Attrib V56    0.01589571853759224
#>     Attrib V57    0.6308725392525482
#>     Attrib V58    0.2912326960201364
#>     Attrib V59    0.3172871519941254
#>     Attrib V6    0.0900427138924499
#>     Attrib V60    0.25922942695442647
#>     Attrib V7    0.2594342442267474
#>     Attrib V8    -0.18580125925337934
#>     Attrib V9    0.6119874106576674
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.03837934659635085
#>     Attrib V1    0.29677970014409605
#>     Attrib V10    0.25784723894466904
#>     Attrib V11    0.24287908861122312
#>     Attrib V12    0.051365196523597376
#>     Attrib V13    -0.058888134766442675
#>     Attrib V14    -0.25018743220123735
#>     Attrib V15    -0.05141476288766317
#>     Attrib V16    -0.04168970471771667
#>     Attrib V17    0.124859869022108
#>     Attrib V18    0.041994562372689496
#>     Attrib V19    0.23441246363548168
#>     Attrib V2    -0.1141885887207901
#>     Attrib V20    0.23661387831441502
#>     Attrib V21    0.15082488844838846
#>     Attrib V22    0.006285695682707248
#>     Attrib V23    -0.09703496126315195
#>     Attrib V24    0.02771640286680098
#>     Attrib V25    -0.40030170854148023
#>     Attrib V26    -0.46868128934448033
#>     Attrib V27    -0.2928037988859387
#>     Attrib V28    -0.3742448647527063
#>     Attrib V29    -0.6489080453273828
#>     Attrib V3    -0.04141560681703902
#>     Attrib V30    0.026662864903556304
#>     Attrib V31    -0.32863892214019313
#>     Attrib V32    -0.049533082047270215
#>     Attrib V33    0.19846245311873206
#>     Attrib V34    -0.029905810198087704
#>     Attrib V35    -0.15378045979695096
#>     Attrib V36    -0.5015039045987016
#>     Attrib V37    -0.4459332559040509
#>     Attrib V38    0.10525563265017857
#>     Attrib V39    0.12650092097496918
#>     Attrib V4    0.08514259044060657
#>     Attrib V40    -0.3678236980651911
#>     Attrib V41    -0.07176161021282641
#>     Attrib V42    0.07359696304049726
#>     Attrib V43    0.2850248857464996
#>     Attrib V44    0.1629017814570466
#>     Attrib V45    0.16552072879140653
#>     Attrib V46    -0.02361944913480438
#>     Attrib V47    -0.09877142382951702
#>     Attrib V48    -0.02130088901288697
#>     Attrib V49    0.23812576449670417
#>     Attrib V5    -0.023577177441159846
#>     Attrib V50    -0.51062557454846
#>     Attrib V51    -0.0462683721812987
#>     Attrib V52    -0.14039335678044976
#>     Attrib V53    -0.05383980646379971
#>     Attrib V54    0.28400801778771795
#>     Attrib V55    0.18441749728861434
#>     Attrib V56    -0.03882414463171349
#>     Attrib V57    0.4335377074673004
#>     Attrib V58    0.15065152627420222
#>     Attrib V59    0.266568492940013
#>     Attrib V6    0.05561270614337919
#>     Attrib V60    0.166948033353983
#>     Attrib V7    0.18535500901194868
#>     Attrib V8    -0.17804771658951565
#>     Attrib V9    0.44156138405056927
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.20194752940456273
#>     Attrib V1    -0.2551561189197979
#>     Attrib V10    -0.5895438316789703
#>     Attrib V11    -0.4790576395439425
#>     Attrib V12    -0.2114988603504511
#>     Attrib V13    0.030250290501550366
#>     Attrib V14    0.47682190820080844
#>     Attrib V15    0.2719770012746111
#>     Attrib V16    0.1816164877419623
#>     Attrib V17    0.0807557533237572
#>     Attrib V18    0.017118191631666283
#>     Attrib V19    -0.3703730099459042
#>     Attrib V2    0.15471443501114338
#>     Attrib V20    -0.3543357048990176
#>     Attrib V21    -0.24246337944829396
#>     Attrib V22    -0.14412660459548307
#>     Attrib V23    -0.04735809750666535
#>     Attrib V24    -0.3805731585683293
#>     Attrib V25    0.3557916534554463
#>     Attrib V26    0.4822657981762418
#>     Attrib V27    -0.027980541026594037
#>     Attrib V28    0.0866510724830501
#>     Attrib V29    0.5788829103267062
#>     Attrib V3    0.031009395428959252
#>     Attrib V30    -0.10263510193282116
#>     Attrib V31    0.397381291946642
#>     Attrib V32    -0.04492813391931861
#>     Attrib V33    -0.2590100170705397
#>     Attrib V34    0.03198482485003674
#>     Attrib V35    0.25675709818652115
#>     Attrib V36    0.7951459523792329
#>     Attrib V37    0.6964647253402987
#>     Attrib V38    -0.04444507571725998
#>     Attrib V39    -0.247861045071224
#>     Attrib V4    0.008530717232880172
#>     Attrib V40    0.33727684512489203
#>     Attrib V41    -0.08216940546751095
#>     Attrib V42    -0.1713240206525801
#>     Attrib V43    -0.36596906739150353
#>     Attrib V44    -0.2314324357838602
#>     Attrib V45    -0.12753493708583388
#>     Attrib V46    0.05392099488621649
#>     Attrib V47    0.13612398407751913
#>     Attrib V48    -0.115684352400089
#>     Attrib V49    -0.5525585761217507
#>     Attrib V5    -0.13150116013707266
#>     Attrib V50    0.7846119488937492
#>     Attrib V51    -0.011318349602530123
#>     Attrib V52    0.1210864387882898
#>     Attrib V53    -0.23999566729222777
#>     Attrib V54    -0.3918792276094742
#>     Attrib V55    0.04497051244799467
#>     Attrib V56    0.1957729162415177
#>     Attrib V57    -0.4609751534233875
#>     Attrib V58    -0.12156891974400302
#>     Attrib V59    -0.20850941781368146
#>     Attrib V6    -0.05553900600801207
#>     Attrib V60    -0.11424443232268577
#>     Attrib V7    -0.10230066225921565
#>     Attrib V8    0.40425045755692046
#>     Attrib V9    -0.6140732029041832
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.55231713372719
#>     Attrib V1    0.03855954724558026
#>     Attrib V10    1.1995844073003725
#>     Attrib V11    0.9254806335789205
#>     Attrib V12    1.1168064700375042
#>     Attrib V13    0.678550509495045
#>     Attrib V14    -0.23418477558538006
#>     Attrib V15    -0.5206999514470639
#>     Attrib V16    -0.6928777553278613
#>     Attrib V17    -0.48263258244682605
#>     Attrib V18    -0.07893943847902692
#>     Attrib V19    0.5730655296955248
#>     Attrib V2    0.04088177956378446
#>     Attrib V20    0.0665427642370536
#>     Attrib V21    -0.13226453374797711
#>     Attrib V22    0.4787054721347385
#>     Attrib V23    0.9673117001702515
#>     Attrib V24    0.9632812313530049
#>     Attrib V25    -0.08943140450641475
#>     Attrib V26    0.3654930042213485
#>     Attrib V27    1.8714520633809457
#>     Attrib V28    2.2981579813168076
#>     Attrib V29    1.3077717079208926
#>     Attrib V3    0.6704652045882958
#>     Attrib V30    0.3317981300044445
#>     Attrib V31    -0.9597810757755609
#>     Attrib V32    -0.12943603034518486
#>     Attrib V33    -0.3918319492931244
#>     Attrib V34    0.07502915084273049
#>     Attrib V35    0.4029226668555787
#>     Attrib V36    -0.6559360760212084
#>     Attrib V37    -0.21798929870119155
#>     Attrib V38    -0.08021984761861654
#>     Attrib V39    0.541793680073179
#>     Attrib V4    0.12833563823975191
#>     Attrib V40    0.7662024603232126
#>     Attrib V41    1.6925431799387478
#>     Attrib V42    -0.12754791207909463
#>     Attrib V43    0.39111865928626904
#>     Attrib V44    0.2834303598483782
#>     Attrib V45    -0.04850697021560647
#>     Attrib V46    0.4347751788987395
#>     Attrib V47    0.5527169578656299
#>     Attrib V48    0.7883320668433056
#>     Attrib V49    1.5467761093403352
#>     Attrib V5    0.6890046501718864
#>     Attrib V50    -0.39859540207938077
#>     Attrib V51    0.5781938205893459
#>     Attrib V52    1.0940742972874624
#>     Attrib V53    1.7803593562277293
#>     Attrib V54    0.2328834809845173
#>     Attrib V55    -0.9818204429139555
#>     Attrib V56    -0.4549175471875753
#>     Attrib V57    -0.0011832936204156004
#>     Attrib V58    -0.40543802444011984
#>     Attrib V59    0.39205795719514397
#>     Attrib V6    0.3196790102501526
#>     Attrib V60    0.3930087793724476
#>     Attrib V7    -0.6664792924885765
#>     Attrib V8    -1.9495133619636262
#>     Attrib V9    0.47081764098646695
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.24947667541827273
#>     Attrib V1    -0.11215865491149796
#>     Attrib V10    -0.36395742909982604
#>     Attrib V11    -0.34415881012829336
#>     Attrib V12    -0.18926834962282502
#>     Attrib V13    -0.054879236947662564
#>     Attrib V14    0.3111627286881798
#>     Attrib V15    0.11740402021510926
#>     Attrib V16    0.13158306355554647
#>     Attrib V17    0.09201652121612097
#>     Attrib V18    0.02820586631011809
#>     Attrib V19    -0.1536183831536968
#>     Attrib V2    0.08013413123785036
#>     Attrib V20    -0.18302887710739554
#>     Attrib V21    -0.07495179376516702
#>     Attrib V22    -0.039218894864607085
#>     Attrib V23    -0.040336980387542416
#>     Attrib V24    -0.19789258889101302
#>     Attrib V25    0.28748584083295176
#>     Attrib V26    0.254668513088036
#>     Attrib V27    -0.03168326364568543
#>     Attrib V28    -0.034263171495066636
#>     Attrib V29    0.2624346673572145
#>     Attrib V3    -0.03513764130222853
#>     Attrib V30    -0.07162958769322073
#>     Attrib V31    0.2597456174458979
#>     Attrib V32    -0.06200941717572212
#>     Attrib V33    -0.09938704579559876
#>     Attrib V34    -0.06968916021197037
#>     Attrib V35    0.14468156912225996
#>     Attrib V36    0.48311661689512886
#>     Attrib V37    0.44187958865197163
#>     Attrib V38    -0.02811949294261749
#>     Attrib V39    -0.12759540678210635
#>     Attrib V4    0.026059846789437704
#>     Attrib V40    0.1338903795984856
#>     Attrib V41    -0.13606152430379276
#>     Attrib V42    -0.007838694850296455
#>     Attrib V43    -0.1959860585866955
#>     Attrib V44    -0.09766656548435318
#>     Attrib V45    -0.08296784694551468
#>     Attrib V46    -0.026100344260213456
#>     Attrib V47    0.03339044945529869
#>     Attrib V48    -0.037573144064983355
#>     Attrib V49    -0.36485826443467206
#>     Attrib V5    -0.0800554383808292
#>     Attrib V50    0.513365451640564
#>     Attrib V51    -0.03224785993581193
#>     Attrib V52    -0.01598610949370354
#>     Attrib V53    -0.1766691961092444
#>     Attrib V54    -0.19491130194570636
#>     Attrib V55    0.02696660789487625
#>     Attrib V56    0.14063575139183357
#>     Attrib V57    -0.222811332986117
#>     Attrib V58    -0.04980653212779049
#>     Attrib V59    -0.09845105131362991
#>     Attrib V6    -0.002374427991597923
#>     Attrib V60    0.025000267666237905
#>     Attrib V7    -0.012188908616221503
#>     Attrib V8    0.3024036815417225
#>     Attrib V9    -0.40597122112487743
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.428935435191692
#>     Attrib V1    0.2236643520318114
#>     Attrib V10    1.1417360329621924
#>     Attrib V11    0.8640412534553258
#>     Attrib V12    0.9138380050233685
#>     Attrib V13    0.6509929371734817
#>     Attrib V14    -0.2512416065988792
#>     Attrib V15    -0.36934594930650855
#>     Attrib V16    -0.6710682322788607
#>     Attrib V17    -0.5532682023167959
#>     Attrib V18    -0.17446648312381333
#>     Attrib V19    0.3468041306448141
#>     Attrib V2    0.062623529023692
#>     Attrib V20    0.06598069496917107
#>     Attrib V21    -0.020367195845248747
#>     Attrib V22    0.29648360774778176
#>     Attrib V23    0.5224052780503804
#>     Attrib V24    0.7561474104334638
#>     Attrib V25    0.02793573638170538
#>     Attrib V26    0.4530270456210075
#>     Attrib V27    1.3955764171086915
#>     Attrib V28    1.5240255355267058
#>     Attrib V29    0.7022958784735641
#>     Attrib V3    0.36237448881935086
#>     Attrib V30    0.3075245335864576
#>     Attrib V31    -0.6354643126764647
#>     Attrib V32    -0.10233522546933037
#>     Attrib V33    -0.21570124907497587
#>     Attrib V34    0.07779447226449106
#>     Attrib V35    0.31027890337607344
#>     Attrib V36    -0.4676111978092296
#>     Attrib V37    -0.1335652335758371
#>     Attrib V38    0.03575060752232618
#>     Attrib V39    0.36391563219227496
#>     Attrib V4    0.04380814975163117
#>     Attrib V40    0.36724819147020554
#>     Attrib V41    1.078968256154349
#>     Attrib V42    -0.2561681427938381
#>     Attrib V43    0.23340246120992972
#>     Attrib V44    0.19103599945276034
#>     Attrib V45    0.17233047150321318
#>     Attrib V46    0.34604967668578834
#>     Attrib V47    0.38249511213757353
#>     Attrib V48    0.5985578541773672
#>     Attrib V49    1.10562884726241
#>     Attrib V5    0.456670029818338
#>     Attrib V50    -0.4413441209172071
#>     Attrib V51    0.3766203314645799
#>     Attrib V52    0.6292608437355367
#>     Attrib V53    1.1873850228106562
#>     Attrib V54    0.16210494070048576
#>     Attrib V55    -0.622649958494571
#>     Attrib V56    -0.5318692301486361
#>     Attrib V57    -0.0702095210305497
#>     Attrib V58    -0.30263945870862985
#>     Attrib V59    0.2680673827548921
#>     Attrib V6    0.27504562387459747
#>     Attrib V60    0.356445554375379
#>     Attrib V7    -0.43213839902336465
#>     Attrib V8    -1.371850248313276
#>     Attrib V9    0.643834498272455
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.12296404710913
#>     Attrib V1    0.1252168575520941
#>     Attrib V10    0.06422976992382291
#>     Attrib V11    0.0511515858543942
#>     Attrib V12    -0.013817798621385642
#>     Attrib V13    0.025008315508398663
#>     Attrib V14    0.008162090457115504
#>     Attrib V15    0.09004220356092646
#>     Attrib V16    0.053939761452578894
#>     Attrib V17    -0.01797010551850368
#>     Attrib V18    0.020073237428064116
#>     Attrib V19    -0.03678441821350069
#>     Attrib V2    0.010079717960645482
#>     Attrib V20    -0.03938800681466348
#>     Attrib V21    -0.026040667326973903
#>     Attrib V22    -0.0723242649589585
#>     Attrib V23    -0.14095099600502053
#>     Attrib V24    -0.06396157446676867
#>     Attrib V25    -0.16157452132025585
#>     Attrib V26    -0.1363138713049623
#>     Attrib V27    -0.04921021051030315
#>     Attrib V28    -0.06903652172942323
#>     Attrib V29    -0.07494351235162855
#>     Attrib V3    0.06800587245877686
#>     Attrib V30    0.04815247677421049
#>     Attrib V31    -0.09366009150775041
#>     Attrib V32    -0.0075648729053695175
#>     Attrib V33    -0.004864969144711043
#>     Attrib V34    0.03263557209509183
#>     Attrib V35    0.04865425310680789
#>     Attrib V36    0.015902048788028207
#>     Attrib V37    -0.015580925184110483
#>     Attrib V38    0.11124654256422578
#>     Attrib V39    0.09849234588928253
#>     Attrib V4    0.11983975017369917
#>     Attrib V40    -0.019956081913474387
#>     Attrib V41    0.04862560806199846
#>     Attrib V42    0.004540104409248435
#>     Attrib V43    0.06352568131682758
#>     Attrib V44    0.05051222318530823
#>     Attrib V45    0.10250585337201747
#>     Attrib V46    0.060614178549987116
#>     Attrib V47    0.0031896559716601248
#>     Attrib V48    0.059549714146825646
#>     Attrib V49    0.05679127978026975
#>     Attrib V5    0.02557369140505558
#>     Attrib V50    -0.00976635580517548
#>     Attrib V51    0.02942201704504332
#>     Attrib V52    0.09081262940903287
#>     Attrib V53    0.02679698508723386
#>     Attrib V54    0.09682874641559866
#>     Attrib V55    0.119672775367613
#>     Attrib V56    -0.002053944771543887
#>     Attrib V57    0.129227450963653
#>     Attrib V58    0.10882880438192684
#>     Attrib V59    0.14807191079187687
#>     Attrib V6    0.06947018728566812
#>     Attrib V60    0.11970580777181467
#>     Attrib V7    0.0840044311217293
#>     Attrib V8    0.037678512875773895
#>     Attrib V9    0.16384650618201202
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.13151546118781082
#>     Attrib V1    0.17483297601815873
#>     Attrib V10    0.37270422844066653
#>     Attrib V11    0.35830258583690194
#>     Attrib V12    0.14845648085844007
#>     Attrib V13    0.012360659033989634
#>     Attrib V14    -0.25337144277888995
#>     Attrib V15    -0.11169629156650411
#>     Attrib V16    -0.15504036898828885
#>     Attrib V17    -0.046597862863119496
#>     Attrib V18    -0.05380366059408056
#>     Attrib V19    0.16847698267843686
#>     Attrib V2    -0.09502321840487765
#>     Attrib V20    0.25153680568347614
#>     Attrib V21    0.14868759310611107
#>     Attrib V22    0.03474417252897491
#>     Attrib V23    -0.10423698896609457
#>     Attrib V24    0.15477300775538289
#>     Attrib V25    -0.31651784045912085
#>     Attrib V26    -0.39960700596307624
#>     Attrib V27    -0.004714017833784457
#>     Attrib V28    -0.05921767081616865
#>     Attrib V29    -0.3892344020547771
#>     Attrib V3    -0.017322983572859933
#>     Attrib V30    0.05556904915183377
#>     Attrib V31    -0.3597372042160654
#>     Attrib V32    -0.020107492705632484
#>     Attrib V33    0.18825522331160394
#>     Attrib V34    0.03396198808057267
#>     Attrib V35    -0.10929857463716722
#>     Attrib V36    -0.5198991668517515
#>     Attrib V37    -0.41138032331572083
#>     Attrib V38    0.11758515178020397
#>     Attrib V39    0.15680786959740217
#>     Attrib V4    -0.03688261374220548
#>     Attrib V40    -0.28344958861745295
#>     Attrib V41    0.03142246022830947
#>     Attrib V42    -0.005659208012178498
#>     Attrib V43    0.28987892426097306
#>     Attrib V44    0.11560662765392986
#>     Attrib V45    0.19223116645578656
#>     Attrib V46    0.007991273874838258
#>     Attrib V47    -0.0908099495449618
#>     Attrib V48    0.03691056576126837
#>     Attrib V49    0.31595242200939805
#>     Attrib V5    -0.03630462956250546
#>     Attrib V50    -0.5557002011473257
#>     Attrib V51    -0.02171414149025463
#>     Attrib V52    -0.1135933513426398
#>     Attrib V53    -0.027027268469838047
#>     Attrib V54    0.1937577258892212
#>     Attrib V55    0.09275514081003094
#>     Attrib V56    -0.16728998723616154
#>     Attrib V57    0.3481239323982863
#>     Attrib V58    0.03848591061066066
#>     Attrib V59    0.11382594520406415
#>     Attrib V6    0.049007527989493774
#>     Attrib V60    0.12221093844917777
#>     Attrib V7    0.05603229205605168
#>     Attrib V8    -0.3317809955670559
#>     Attrib V9    0.4826516303356209
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.24289664120912074
#>     Attrib V1    -0.39965994362966095
#>     Attrib V10    -0.6698390123396105
#>     Attrib V11    -0.6062203810451051
#>     Attrib V12    -0.13724833248802787
#>     Attrib V13    0.33444541080866214
#>     Attrib V14    0.8255534995760735
#>     Attrib V15    0.4021535385436211
#>     Attrib V16    0.23863552517992473
#>     Attrib V17    -0.04777065313061863
#>     Attrib V18    -0.07135039844356267
#>     Attrib V19    -0.5626466422698132
#>     Attrib V2    0.3517541480978222
#>     Attrib V20    -0.5561881218407567
#>     Attrib V21    -0.4035292365014974
#>     Attrib V22    -0.14192814943103166
#>     Attrib V23    -0.0315429512454777
#>     Attrib V24    -0.5459021479263746
#>     Attrib V25    0.45730909533726377
#>     Attrib V26    0.6839684124815035
#>     Attrib V27    0.1028932367553694
#>     Attrib V28    0.361813586311997
#>     Attrib V29    1.1062997659339209
#>     Attrib V3    0.09739196762385886
#>     Attrib V30    -0.10455855844015327
#>     Attrib V31    0.6117078842259467
#>     Attrib V32    -0.05864040476066844
#>     Attrib V33    -0.30952426733168387
#>     Attrib V34    0.1920644828610553
#>     Attrib V35    0.5534893252621067
#>     Attrib V36    1.165501212457734
#>     Attrib V37    1.1893751390852219
#>     Attrib V38    -0.16233397618809842
#>     Attrib V39    -0.2550678883275246
#>     Attrib V4    -0.06241991686744199
#>     Attrib V40    0.6131081846009904
#>     Attrib V41    0.015850285108034084
#>     Attrib V42    -0.35762752064335235
#>     Attrib V43    -0.7782460960763115
#>     Attrib V44    -0.4831372739832236
#>     Attrib V45    -0.16085179321629067
#>     Attrib V46    0.07448172954736373
#>     Attrib V47    0.09895118002353642
#>     Attrib V48    -0.1661355026199672
#>     Attrib V49    -0.7309867959882844
#>     Attrib V5    -0.16849386323407195
#>     Attrib V50    0.8893793101937696
#>     Attrib V51    -0.059202006344805276
#>     Attrib V52    0.22742138394711328
#>     Attrib V53    -0.23116446324014642
#>     Attrib V54    -0.7058470454662238
#>     Attrib V55    -0.018349027531027916
#>     Attrib V56    0.1531464404120721
#>     Attrib V57    -0.9402611186282182
#>     Attrib V58    -0.21973645012148915
#>     Attrib V59    -0.294648021813859
#>     Attrib V6    -0.0891068583630459
#>     Attrib V60    -0.1530269618013533
#>     Attrib V7    -0.281992624446149
#>     Attrib V8    0.38045264864596756
#>     Attrib V9    -0.9394144031107239
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.036669158020354656
#>     Attrib V1    0.44750276811206935
#>     Attrib V10    0.5335577579837623
#>     Attrib V11    0.4670430496141848
#>     Attrib V12    0.02318143151527405
#>     Attrib V13    -0.14445266345314137
#>     Attrib V14    -0.5373423679268827
#>     Attrib V15    -0.16339468935621954
#>     Attrib V16    -0.072001680207976
#>     Attrib V17    0.16023525056542653
#>     Attrib V18    0.03218134361024287
#>     Attrib V19    0.32138460809641917
#>     Attrib V2    -0.13919052758881428
#>     Attrib V20    0.403733852937825
#>     Attrib V21    0.2242923531508292
#>     Attrib V22    0.015775156741547676
#>     Attrib V23    -0.13995930879265553
#>     Attrib V24    0.18608123024493411
#>     Attrib V25    -0.6604268046740576
#>     Attrib V26    -0.8100801962286034
#>     Attrib V27    -0.4643391715264322
#>     Attrib V28    -0.6823399825134814
#>     Attrib V29    -1.2499486886114548
#>     Attrib V3    -0.18085985493533496
#>     Attrib V30    0.007660921215553679
#>     Attrib V31    -0.46720181366870217
#>     Attrib V32    0.010207351145075262
#>     Attrib V33    0.45565350632215273
#>     Attrib V34    0.04973394400349614
#>     Attrib V35    -0.35479049521211903
#>     Attrib V36    -0.9463631174808876
#>     Attrib V37    -0.9140384095258238
#>     Attrib V38    0.1964427759887767
#>     Attrib V39    0.1752802553569032
#>     Attrib V4    0.03264442227543525
#>     Attrib V40    -0.6083867075795516
#>     Attrib V41    -0.19603415998761492
#>     Attrib V42    0.21375977841650115
#>     Attrib V43    0.5525446444912498
#>     Attrib V44    0.40305730118964633
#>     Attrib V45    0.22090593306930595
#>     Attrib V46    -0.07556641307558176
#>     Attrib V47    -0.27262844260519886
#>     Attrib V48    0.01143798742804303
#>     Attrib V49    0.3921738937517672
#>     Attrib V5    -0.06488391319691966
#>     Attrib V50    -0.8992858753756229
#>     Attrib V51    -0.09262294347376
#>     Attrib V52    -0.38196918796899865
#>     Attrib V53    -0.22092905001867638
#>     Attrib V54    0.5223155490388373
#>     Attrib V55    0.2526571721462674
#>     Attrib V56    -0.06276976005195005
#>     Attrib V57    0.7402573373056239
#>     Attrib V58    0.24870397403567387
#>     Attrib V59    0.3304469780131108
#>     Attrib V6    0.11200801015436175
#>     Attrib V60    0.26781165202014506
#>     Attrib V7    0.34005977935081283
#>     Attrib V8    -0.2218942150204403
#>     Attrib V9    0.8599701635499816
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.22970006227969417
#>     Attrib V1    -0.23890504892632694
#>     Attrib V10    -0.6126901962049239
#>     Attrib V11    -0.4443663546340252
#>     Attrib V12    -0.20839121458445564
#>     Attrib V13    0.04704564897183244
#>     Attrib V14    0.551807299460651
#>     Attrib V15    0.24930302792422973
#>     Attrib V16    0.21362838748097182
#>     Attrib V17    -0.01660117279766617
#>     Attrib V18    0.06722853467389425
#>     Attrib V19    -0.42630744005489285
#>     Attrib V2    0.16274230153750613
#>     Attrib V20    -0.329368801014843
#>     Attrib V21    -0.203753805024043
#>     Attrib V22    -0.08980302249525363
#>     Attrib V23    -0.007843196881594516
#>     Attrib V24    -0.3727667042136696
#>     Attrib V25    0.34515674531094237
#>     Attrib V26    0.4960102779184091
#>     Attrib V27    0.03468504070696396
#>     Attrib V28    0.15417048314717535
#>     Attrib V29    0.6746747569352057
#>     Attrib V3    0.05942915448838709
#>     Attrib V30    -0.055392561555551036
#>     Attrib V31    0.3567491856878581
#>     Attrib V32    -0.13799190608662917
#>     Attrib V33    -0.23253438599094006
#>     Attrib V34    0.07535896818262132
#>     Attrib V35    0.37814832983836316
#>     Attrib V36    0.9799568751889255
#>     Attrib V37    0.9046751488086779
#>     Attrib V38    0.006122148324340128
#>     Attrib V39    -0.18625088474998208
#>     Attrib V4    -0.05743829401807078
#>     Attrib V40    0.3262102886485478
#>     Attrib V41    -0.14638123899312847
#>     Attrib V42    -0.1700057331297063
#>     Attrib V43    -0.46949893074631555
#>     Attrib V44    -0.16232108844172607
#>     Attrib V45    0.009169632932637402
#>     Attrib V46    0.09460997708803795
#>     Attrib V47    0.10685301020661285
#>     Attrib V48    -0.189594051039744
#>     Attrib V49    -0.5284837906473487
#>     Attrib V5    -0.11805170699573343
#>     Attrib V50    0.7481645008511555
#>     Attrib V51    -0.03839605675575597
#>     Attrib V52    0.1261237912550018
#>     Attrib V53    -0.22362622725211506
#>     Attrib V54    -0.4532274304384156
#>     Attrib V55    -0.0016950162193373635
#>     Attrib V56    0.10162893039041312
#>     Attrib V57    -0.6044067244997559
#>     Attrib V58    -0.11687554733995591
#>     Attrib V59    -0.2724187103076331
#>     Attrib V6    -0.07595032109715996
#>     Attrib V60    -0.1175557332115088
#>     Attrib V7    -0.0768888941173495
#>     Attrib V8    0.43397410900579386
#>     Attrib V9    -0.6728906901900923
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
