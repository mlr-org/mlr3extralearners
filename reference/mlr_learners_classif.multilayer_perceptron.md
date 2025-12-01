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
#>     Threshold    -0.09502096993465332
#>     Node 2    2.0718439289131285
#>     Node 3    1.6298490552932616
#>     Node 4    0.745011571947425
#>     Node 5    -1.5938479937177483
#>     Node 6    1.8434284026090437
#>     Node 7    2.7057423170976223
#>     Node 8    1.4498487860604787
#>     Node 9    2.2888414867281934
#>     Node 10    -2.428233875011541
#>     Node 11    1.6319320052429547
#>     Node 12    1.8689103213228
#>     Node 13    0.7680459123040918
#>     Node 14    1.9673024964722399
#>     Node 15    -1.7696827799893888
#>     Node 16    0.1890730285710782
#>     Node 17    0.7612680484427471
#>     Node 18    0.4788221666370587
#>     Node 19    2.1067146449805474
#>     Node 20    1.8849858499572758
#>     Node 21    -2.7462787988362813
#>     Node 22    1.4495890525348614
#>     Node 23    1.806060813890651
#>     Node 24    -1.7664197746476948
#>     Node 25    2.708912031277686
#>     Node 26    -0.87660817299199
#>     Node 27    2.49609566724004
#>     Node 28    -2.9666143809149945
#>     Node 29    1.4030129299597751
#>     Node 30    -0.43553018620600525
#>     Node 31    2.014948380185357
#>     Node 32    0.9083162282232381
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.12991013199114956
#>     Node 2    -2.1200373747365124
#>     Node 3    -1.6117116435654772
#>     Node 4    -0.707282329372707
#>     Node 5    1.610156474371828
#>     Node 6    -1.8211161515435668
#>     Node 7    -2.696386874270271
#>     Node 8    -1.4821959885462384
#>     Node 9    -2.278888843377574
#>     Node 10    2.376428223211054
#>     Node 11    -1.5991794647149848
#>     Node 12    -1.944886974454868
#>     Node 13    -0.7172628373192544
#>     Node 14    -1.9112118173517938
#>     Node 15    1.7641340973076558
#>     Node 16    -0.21429531340970837
#>     Node 17    -0.7315131617621123
#>     Node 18    -0.4427142708056211
#>     Node 19    -2.1043819483962523
#>     Node 20    -1.8746160832084806
#>     Node 21    2.816516452455918
#>     Node 22    -1.5015800395998218
#>     Node 23    -1.850454218381973
#>     Node 24    1.7592276709932981
#>     Node 25    -2.695459312439755
#>     Node 26    0.7964451650716128
#>     Node 27    -2.5377903357084732
#>     Node 28    2.9286125342345386
#>     Node 29    -1.438097163684509
#>     Node 30    0.5029611260762662
#>     Node 31    -1.955613325452818
#>     Node 32    -0.9276897182223127
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.21215163752502114
#>     Attrib V1    0.5285551470653561
#>     Attrib V10    -0.12575908080668002
#>     Attrib V11    -0.15952824110105834
#>     Attrib V12    -0.5781392823137177
#>     Attrib V13    -0.49020266146970826
#>     Attrib V14    -0.037116542691646576
#>     Attrib V15    0.0873450247266441
#>     Attrib V16    0.10049008806142863
#>     Attrib V17    0.33660996265674287
#>     Attrib V18    0.3981288393452014
#>     Attrib V19    -0.08567558246428172
#>     Attrib V2    -0.03230926900495502
#>     Attrib V20    0.5344590956820527
#>     Attrib V21    0.5463446230088009
#>     Attrib V22    0.011488570082292714
#>     Attrib V23    -0.046085577155622164
#>     Attrib V24    0.10477458025077177
#>     Attrib V25    -0.5896253842886233
#>     Attrib V26    -0.6460969946261844
#>     Attrib V27    -0.7684557418716023
#>     Attrib V28    -0.21216976995077202
#>     Attrib V29    -0.5393350458536379
#>     Attrib V3    0.3380083443689248
#>     Attrib V30    0.07057010273515836
#>     Attrib V31    -1.0347476780053178
#>     Attrib V32    -0.2952774325545997
#>     Attrib V33    0.4127323443688826
#>     Attrib V34    -0.06766687119779662
#>     Attrib V35    -0.08886258699539706
#>     Attrib V36    -0.7497357352193426
#>     Attrib V37    -0.7776968149875143
#>     Attrib V38    0.2794778156802784
#>     Attrib V39    0.08428177848643405
#>     Attrib V4    0.6003960422945649
#>     Attrib V40    -0.1868212925690071
#>     Attrib V41    0.1771002335452891
#>     Attrib V42    0.23717508408632418
#>     Attrib V43    0.1802541729249256
#>     Attrib V44    0.14628576740886187
#>     Attrib V45    0.05879737192073684
#>     Attrib V46    -0.15580739134962862
#>     Attrib V47    -0.7686190905662093
#>     Attrib V48    0.016949299993425457
#>     Attrib V49    0.3688970032697607
#>     Attrib V5    0.15185132797340606
#>     Attrib V50    -0.790826594119194
#>     Attrib V51    -0.11547031115136192
#>     Attrib V52    -0.5345793244762533
#>     Attrib V53    0.5629334364830295
#>     Attrib V54    1.0316740157634412
#>     Attrib V55    0.10256533175465583
#>     Attrib V56    0.23084826169505396
#>     Attrib V57    0.04464130583387238
#>     Attrib V58    0.488046389485351
#>     Attrib V59    0.8738620521747162
#>     Attrib V6    -0.1446243929045701
#>     Attrib V60    0.3792049472293155
#>     Attrib V7    0.2070225580584144
#>     Attrib V8    0.4866196709676977
#>     Attrib V9    0.3382938412014993
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.17545027007897795
#>     Attrib V1    0.3672277647562669
#>     Attrib V10    -0.10170635339974436
#>     Attrib V11    -0.11920287116570127
#>     Attrib V12    -0.39419801730681037
#>     Attrib V13    -0.3105125209113699
#>     Attrib V14    -0.005817251374832345
#>     Attrib V15    0.1410480347205594
#>     Attrib V16    0.07461082344265633
#>     Attrib V17    0.2513947187225003
#>     Attrib V18    0.264934663988366
#>     Attrib V19    -0.031057059077022026
#>     Attrib V2    0.007504143005405928
#>     Attrib V20    0.3663933424117667
#>     Attrib V21    0.34105536719293655
#>     Attrib V22    0.027247008551321564
#>     Attrib V23    -0.03022572612294128
#>     Attrib V24    0.08071317105679011
#>     Attrib V25    -0.4239184575865673
#>     Attrib V26    -0.5053840857224611
#>     Attrib V27    -0.6341000391547335
#>     Attrib V28    -0.23390668178193405
#>     Attrib V29    -0.5216316113868047
#>     Attrib V3    0.23217281467787657
#>     Attrib V30    0.060603817319574635
#>     Attrib V31    -0.723022071734408
#>     Attrib V32    -0.16518374312531214
#>     Attrib V33    0.3847889590645018
#>     Attrib V34    -0.0791426452556508
#>     Attrib V35    -0.07167289300957111
#>     Attrib V36    -0.6310390494582192
#>     Attrib V37    -0.6676884281641059
#>     Attrib V38    0.11186569540401328
#>     Attrib V39    0.04868285718928697
#>     Attrib V4    0.4808728448887708
#>     Attrib V40    -0.16207452924258303
#>     Attrib V41    0.1055614189905489
#>     Attrib V42    0.1345360704530572
#>     Attrib V43    0.09911264281188198
#>     Attrib V44    0.10656228964519965
#>     Attrib V45    0.04416532663724203
#>     Attrib V46    -0.1149991735124249
#>     Attrib V47    -0.5525282301132253
#>     Attrib V48    0.0026849346309572313
#>     Attrib V49    0.28972513906390324
#>     Attrib V5    0.10459933215890693
#>     Attrib V50    -0.5907415167627147
#>     Attrib V51    -0.07859815121198428
#>     Attrib V52    -0.37664965110427673
#>     Attrib V53    0.3921271396629946
#>     Attrib V54    0.8837149870973794
#>     Attrib V55    0.20702684994752207
#>     Attrib V56    0.20078225870815408
#>     Attrib V57    0.0721389887841192
#>     Attrib V58    0.4612320041364448
#>     Attrib V59    0.6923965220794496
#>     Attrib V6    -0.14667601353523818
#>     Attrib V60    0.2730203692904784
#>     Attrib V7    0.10960457347128623
#>     Attrib V8    0.37355911732134234
#>     Attrib V9    0.23073857463792832
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.04598693826971226
#>     Attrib V1    0.14037129246596508
#>     Attrib V10    0.006211191099621411
#>     Attrib V11    0.026465314774018325
#>     Attrib V12    -0.09858786853139384
#>     Attrib V13    -0.07902819331514828
#>     Attrib V14    0.058554176096503395
#>     Attrib V15    0.0723138362120971
#>     Attrib V16    -0.0034692686373300687
#>     Attrib V17    0.11435701181573998
#>     Attrib V18    0.1376149304318789
#>     Attrib V19    -0.06162104088976143
#>     Attrib V2    -0.012370613309231037
#>     Attrib V20    0.17233912095955134
#>     Attrib V21    0.18306242081135504
#>     Attrib V22    -0.06659769059257539
#>     Attrib V23    -0.03551214437193596
#>     Attrib V24    -0.023710773413882575
#>     Attrib V25    -0.27757208713022474
#>     Attrib V26    -0.25548986722214456
#>     Attrib V27    -0.3131952385238355
#>     Attrib V28    -0.049036510402819145
#>     Attrib V29    -0.16832113678703353
#>     Attrib V3    0.17059940148548236
#>     Attrib V30    -0.002834607767575904
#>     Attrib V31    -0.3416458416308366
#>     Attrib V32    -0.08164225344331597
#>     Attrib V33    0.1903697015934736
#>     Attrib V34    0.0011847245684765504
#>     Attrib V35    0.014586513294893178
#>     Attrib V36    -0.28692271147161397
#>     Attrib V37    -0.27399433829042025
#>     Attrib V38    0.041780234952036914
#>     Attrib V39    0.01379363789451314
#>     Attrib V4    0.29314285175944765
#>     Attrib V40    -0.11345510143464045
#>     Attrib V41    -0.00273643898827495
#>     Attrib V42    -0.010970171987577092
#>     Attrib V43    -0.016006943344036576
#>     Attrib V44    0.04252065800522484
#>     Attrib V45    0.10009489888498764
#>     Attrib V46    -0.04009144675994984
#>     Attrib V47    -0.26415119047747526
#>     Attrib V48    0.06267500687096886
#>     Attrib V49    0.2151452870059289
#>     Attrib V5    0.1321080513546701
#>     Attrib V50    -0.23172964150528896
#>     Attrib V51    0.011279644788479497
#>     Attrib V52    -0.1406269277794266
#>     Attrib V53    0.22255858178672144
#>     Attrib V54    0.30066532637006566
#>     Attrib V55    0.13738683718369887
#>     Attrib V56    0.07953305717503355
#>     Attrib V57    0.06444318703044653
#>     Attrib V58    0.22077837894625355
#>     Attrib V59    0.31691689982999705
#>     Attrib V6    -0.09939432890304048
#>     Attrib V60    0.16109050252533488
#>     Attrib V7    0.018790992057617112
#>     Attrib V8    0.09677752011721572
#>     Attrib V9    0.19389554818915455
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5087452995366869
#>     Attrib V1    -0.30834271201765834
#>     Attrib V10    -0.28431862124485563
#>     Attrib V11    -0.48647024305945985
#>     Attrib V12    -0.4627938671462724
#>     Attrib V13    -0.08549720400810748
#>     Attrib V14    0.45770116055125415
#>     Attrib V15    0.7692838193444103
#>     Attrib V16    0.6659345748746106
#>     Attrib V17    0.09618091161570304
#>     Attrib V18    -0.28152168314781467
#>     Attrib V19    0.48565274193833435
#>     Attrib V2    0.1591346471596205
#>     Attrib V20    -0.09454382439538221
#>     Attrib V21    -0.19125224312103523
#>     Attrib V22    -0.0746086273439424
#>     Attrib V23    -0.20657995958458344
#>     Attrib V24    -0.3622368500278919
#>     Attrib V25    0.2855709310186744
#>     Attrib V26    0.21553261551431757
#>     Attrib V27    0.17917399224985694
#>     Attrib V28    -0.5856391682171187
#>     Attrib V29    0.0528139183923784
#>     Attrib V3    -0.08507472011312014
#>     Attrib V30    -0.2078144200355312
#>     Attrib V31    0.7163168403381913
#>     Attrib V32    0.04613339524306837
#>     Attrib V33    -0.29959440818135935
#>     Attrib V34    0.21506029190552278
#>     Attrib V35    -0.13185812738041106
#>     Attrib V36    0.6996318166805636
#>     Attrib V37    0.4436559706948787
#>     Attrib V38    -0.1188475283103826
#>     Attrib V39    0.1524041743995722
#>     Attrib V4    -0.6834915942350688
#>     Attrib V40    0.38691898444426076
#>     Attrib V41    -0.6036561341926798
#>     Attrib V42    -0.0020584570157852213
#>     Attrib V43    -0.08580757887159389
#>     Attrib V44    -0.26177489511878244
#>     Attrib V45    -0.4725787645091159
#>     Attrib V46    -0.4675096494465203
#>     Attrib V47    0.20228371981607796
#>     Attrib V48    -0.3414675367750283
#>     Attrib V49    -0.7131770142162416
#>     Attrib V5    -0.11546363323179676
#>     Attrib V50    0.9071040921681561
#>     Attrib V51    -0.11302772754449633
#>     Attrib V52    0.3099763143324945
#>     Attrib V53    -0.1593145284597584
#>     Attrib V54    -0.5871745289317091
#>     Attrib V55    0.3766535620202189
#>     Attrib V56    0.4476610677759921
#>     Attrib V57    0.2878675913547779
#>     Attrib V58    -0.09678014520857557
#>     Attrib V59    -0.13183361324757523
#>     Attrib V6    0.15343760889288485
#>     Attrib V60    -0.012708526585073114
#>     Attrib V7    0.3135740459024563
#>     Attrib V8    -0.009793572493002051
#>     Attrib V9    -0.6667666827619158
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.241685714768712
#>     Attrib V1    0.39980695281950296
#>     Attrib V10    -0.14518867317338413
#>     Attrib V11    -0.12054493805392905
#>     Attrib V12    -0.4156716803370174
#>     Attrib V13    -0.4416127078534159
#>     Attrib V14    -0.11262129693686242
#>     Attrib V15    0.008804721168377057
#>     Attrib V16    0.11649433662067157
#>     Attrib V17    0.27618460716087784
#>     Attrib V18    0.37793842823144047
#>     Attrib V19    -0.09773818527569031
#>     Attrib V2    -0.06691074598691732
#>     Attrib V20    0.3998434882422019
#>     Attrib V21    0.4352417245470724
#>     Attrib V22    0.008637363241612168
#>     Attrib V23    0.032940450494858046
#>     Attrib V24    0.21632370585248414
#>     Attrib V25    -0.3915414725179389
#>     Attrib V26    -0.5295624584243407
#>     Attrib V27    -0.6350489694987119
#>     Attrib V28    -0.25627411162875124
#>     Attrib V29    -0.5472318702651171
#>     Attrib V3    0.2612624633592216
#>     Attrib V30    0.08770163671430267
#>     Attrib V31    -0.8050056995967915
#>     Attrib V32    -0.1644027654140074
#>     Attrib V33    0.4763970520006707
#>     Attrib V34    -0.04412852097795977
#>     Attrib V35    -0.06621360426087733
#>     Attrib V36    -0.7472453001709379
#>     Attrib V37    -0.7598584204357204
#>     Attrib V38    0.1527941070167722
#>     Attrib V39    -0.002825340332722246
#>     Attrib V4    0.5882121374394068
#>     Attrib V40    -0.2180713846697033
#>     Attrib V41    0.22091968817914373
#>     Attrib V42    0.2122846801430325
#>     Attrib V43    0.11528743673322178
#>     Attrib V44    0.07170228380680921
#>     Attrib V45    0.06042954424148662
#>     Attrib V46    -0.10387322209695922
#>     Attrib V47    -0.6793408923079762
#>     Attrib V48    0.01641304917818575
#>     Attrib V49    0.3481178293953882
#>     Attrib V5    0.1216215042621933
#>     Attrib V50    -0.6883871293427452
#>     Attrib V51    -0.09023390502880337
#>     Attrib V52    -0.505513279158521
#>     Attrib V53    0.49802869575260234
#>     Attrib V54    0.8638303002369417
#>     Attrib V55    0.06754568728250171
#>     Attrib V56    0.20858306848359492
#>     Attrib V57    0.04939831801076336
#>     Attrib V58    0.45171219960840175
#>     Attrib V59    0.7859263027009169
#>     Attrib V6    -0.06542441569396339
#>     Attrib V60    0.3876160055268515
#>     Attrib V7    0.20130779017583264
#>     Attrib V8    0.4393279929781445
#>     Attrib V9    0.3849007230722096
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.38610582076999717
#>     Attrib V1    0.4989178674990542
#>     Attrib V10    0.9062709671466886
#>     Attrib V11    1.1205374818971503
#>     Attrib V12    1.076712127748664
#>     Attrib V13    0.47979615695481465
#>     Attrib V14    -0.6180111939263507
#>     Attrib V15    -1.2288799743710672
#>     Attrib V16    -1.1506375558166744
#>     Attrib V17    -0.3930250179165795
#>     Attrib V18    0.20818457415785016
#>     Attrib V19    -0.6775416344466751
#>     Attrib V2    0.08248069803601689
#>     Attrib V20    0.04573135911575847
#>     Attrib V21    0.5027365174811136
#>     Attrib V22    0.43238724912378185
#>     Attrib V23    0.681639048207523
#>     Attrib V24    0.5925628763797611
#>     Attrib V25    0.04107268511363344
#>     Attrib V26    0.21199965182014432
#>     Attrib V27    0.29500813101981904
#>     Attrib V28    0.9922022354524768
#>     Attrib V29    0.2653524953726407
#>     Attrib V3    0.2705059499934759
#>     Attrib V30    0.16284416683256456
#>     Attrib V31    -0.7159002194199564
#>     Attrib V32    0.01977536582490432
#>     Attrib V33    0.14110629612761133
#>     Attrib V34    -0.3691242343987389
#>     Attrib V35    0.36181079039815356
#>     Attrib V36    -0.46599263601659335
#>     Attrib V37    0.006402438503666517
#>     Attrib V38    -0.05527854920817311
#>     Attrib V39    -0.3793560629544314
#>     Attrib V4    0.830727668281755
#>     Attrib V40    -0.38733342548226124
#>     Attrib V41    0.9996514040274105
#>     Attrib V42    -0.14735718163579045
#>     Attrib V43    -0.14172855485791613
#>     Attrib V44    0.25390152992300935
#>     Attrib V45    0.6436919821909655
#>     Attrib V46    0.9955968769250467
#>     Attrib V47    0.45401518343025243
#>     Attrib V48    0.7829079577478448
#>     Attrib V49    0.9917611356318061
#>     Attrib V5    0.38159956981416576
#>     Attrib V50    -0.6090502575431024
#>     Attrib V51    0.597139690917374
#>     Attrib V52    0.034768860444295065
#>     Attrib V53    -0.18735913898366396
#>     Attrib V54    0.37180053121377993
#>     Attrib V55    -0.5940537732098035
#>     Attrib V56    -0.9311149691675524
#>     Attrib V57    -0.5229222716407951
#>     Attrib V58    -0.19780619635236882
#>     Attrib V59    -0.12018398420267207
#>     Attrib V6    0.0616239401647844
#>     Attrib V60    0.3209979873899077
#>     Attrib V7    -0.3804516864533635
#>     Attrib V8    -0.3943227040539589
#>     Attrib V9    1.0588840610721573
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.40635125152428225
#>     Attrib V1    0.2568365811407996
#>     Attrib V10    0.2449452219426086
#>     Attrib V11    0.3876626383346881
#>     Attrib V12    0.2514009929824645
#>     Attrib V13    -0.03486577123100322
#>     Attrib V14    -0.482190928106156
#>     Attrib V15    -0.6148144183615798
#>     Attrib V16    -0.49511568218295676
#>     Attrib V17    -0.026789902065970227
#>     Attrib V18    0.1898098051917587
#>     Attrib V19    -0.42759449721336223
#>     Attrib V2    -0.09368321143159858
#>     Attrib V20    0.0871652094449862
#>     Attrib V21    0.20904806243840277
#>     Attrib V22    0.02176685884777168
#>     Attrib V23    0.20432001039032097
#>     Attrib V24    0.2863357264156966
#>     Attrib V25    -0.2777201197466452
#>     Attrib V26    -0.1951605814363095
#>     Attrib V27    -0.14965832059082035
#>     Attrib V28    0.5084104478456957
#>     Attrib V29    -0.015078045303172515
#>     Attrib V3    0.160963947085651
#>     Attrib V30    0.26158986751263574
#>     Attrib V31    -0.6847042864870533
#>     Attrib V32    -0.06931575626738257
#>     Attrib V33    0.3207700792863769
#>     Attrib V34    -0.1557562983371457
#>     Attrib V35    0.15918814168983397
#>     Attrib V36    -0.521981092199208
#>     Attrib V37    -0.3152898140458628
#>     Attrib V38    0.15648456677975445
#>     Attrib V39    -0.17170148366154164
#>     Attrib V4    0.6453210849499409
#>     Attrib V40    -0.34334543676486673
#>     Attrib V41    0.46085850341908324
#>     Attrib V42    -0.08018495150551495
#>     Attrib V43    0.026519721696018492
#>     Attrib V44    0.2533110033291765
#>     Attrib V45    0.38010175232197935
#>     Attrib V46    0.37744835899053014
#>     Attrib V47    -0.1859125022274106
#>     Attrib V48    0.32863232473657167
#>     Attrib V49    0.6033862543577987
#>     Attrib V5    0.14040210423493585
#>     Attrib V50    -0.8122337541802463
#>     Attrib V51    0.022977013912529657
#>     Attrib V52    -0.31379596230437484
#>     Attrib V53    0.16180895188458988
#>     Attrib V54    0.5224441431322505
#>     Attrib V55    -0.35657659939971886
#>     Attrib V56    -0.36653381692344755
#>     Attrib V57    -0.2074914516894034
#>     Attrib V58    -0.00400678180706731
#>     Attrib V59    0.22743864975519573
#>     Attrib V6    -0.1815335117608335
#>     Attrib V60    0.1315360022219781
#>     Attrib V7    -0.28878851838549313
#>     Attrib V8    -0.03634472407751635
#>     Attrib V9    0.5518590129478073
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.31037707850813845
#>     Attrib V1    0.4490537246053993
#>     Attrib V10    0.8867848194761792
#>     Attrib V11    0.9810442906647914
#>     Attrib V12    0.915638320419957
#>     Attrib V13    0.42303329531141004
#>     Attrib V14    -0.6171247561269132
#>     Attrib V15    -1.054081208166846
#>     Attrib V16    -0.9930192748563254
#>     Attrib V17    -0.30510066915972994
#>     Attrib V18    0.15942484759677922
#>     Attrib V19    -0.7268085713206126
#>     Attrib V2    0.01974794086529139
#>     Attrib V20    -0.008838374676090234
#>     Attrib V21    0.4308713273813674
#>     Attrib V22    0.30156913537031743
#>     Attrib V23    0.46468711483827096
#>     Attrib V24    0.46095110855054544
#>     Attrib V25    -0.0039591360342542655
#>     Attrib V26    0.11421820267856644
#>     Attrib V27    0.209685297202511
#>     Attrib V28    0.8446405405494071
#>     Attrib V29    0.09843533266741229
#>     Attrib V3    0.182721358562795
#>     Attrib V30    0.20740657775472884
#>     Attrib V31    -0.6734742352020721
#>     Attrib V32    0.03172350504957519
#>     Attrib V33    0.22829422855984008
#>     Attrib V34    -0.22886537767411863
#>     Attrib V35    0.3494793177684329
#>     Attrib V36    -0.44283826859854875
#>     Attrib V37    -0.08321194379769133
#>     Attrib V38    0.030985056935684787
#>     Attrib V39    -0.25734864821009645
#>     Attrib V4    0.7435040609300413
#>     Attrib V40    -0.44777844601717703
#>     Attrib V41    0.740356473080047
#>     Attrib V42    -0.23097168211221508
#>     Attrib V43    -0.09149938484526803
#>     Attrib V44    0.2203150384251593
#>     Attrib V45    0.5990670617593826
#>     Attrib V46    0.8496514457026759
#>     Attrib V47    0.30653099685399526
#>     Attrib V48    0.6770428262015472
#>     Attrib V49    0.9274378764216576
#>     Attrib V5    0.23499738222695873
#>     Attrib V50    -0.6591529207281829
#>     Attrib V51    0.5166468498975676
#>     Attrib V52    -0.08618996485959902
#>     Attrib V53    -0.10296863944521167
#>     Attrib V54    0.34877794336749846
#>     Attrib V55    -0.45986571030747986
#>     Attrib V56    -0.7945844251035886
#>     Attrib V57    -0.5486059709193664
#>     Attrib V58    -0.10530218371439333
#>     Attrib V59    -0.08264902023622389
#>     Attrib V6    -0.04474915514278135
#>     Attrib V60    0.21176503683007802
#>     Attrib V7    -0.3106642935092903
#>     Attrib V8    -0.21449030733027194
#>     Attrib V9    0.9710443418965882
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.3719249728980049
#>     Attrib V1    -0.1851765119263341
#>     Attrib V10    -0.7986374130004396
#>     Attrib V11    -0.9522954109134258
#>     Attrib V12    -1.043437739933813
#>     Attrib V13    -0.5215336000620635
#>     Attrib V14    0.5107195249980219
#>     Attrib V15    1.078420279645413
#>     Attrib V16    1.0987953466114913
#>     Attrib V17    0.24714216174342596
#>     Attrib V18    -0.2814463568621076
#>     Attrib V19    0.6318251504469564
#>     Attrib V2    0.05303380688945827
#>     Attrib V20    0.11343401204118102
#>     Attrib V21    -0.3236174627803175
#>     Attrib V22    -0.46309246306012414
#>     Attrib V23    -0.629398589031136
#>     Attrib V24    -0.6231989727495765
#>     Attrib V25    -0.14813268919290362
#>     Attrib V26    -0.23300530756982632
#>     Attrib V27    -0.378212852438649
#>     Attrib V28    -0.9464064688181024
#>     Attrib V29    -0.12298465655674465
#>     Attrib V3    -0.1988122740993245
#>     Attrib V30    -0.06394612809642819
#>     Attrib V31    0.6786529135535837
#>     Attrib V32    -0.09887209330606701
#>     Attrib V33    -0.08767689117909093
#>     Attrib V34    0.395764231235283
#>     Attrib V35    -0.2699300170310851
#>     Attrib V36    0.4992468372255901
#>     Attrib V37    0.19421111991362705
#>     Attrib V38    0.15619204178899965
#>     Attrib V39    0.3728406166786716
#>     Attrib V4    -0.8474087289172662
#>     Attrib V40    0.40311997752873907
#>     Attrib V41    -0.9166697292652989
#>     Attrib V42    0.06632865976423923
#>     Attrib V43    -0.00371607164645862
#>     Attrib V44    -0.31495696166056436
#>     Attrib V45    -0.545105767081124
#>     Attrib V46    -0.8623720789472998
#>     Attrib V47    -0.3628352298133018
#>     Attrib V48    -0.7970375474406344
#>     Attrib V49    -1.0412759694978964
#>     Attrib V5    -0.3725218071011891
#>     Attrib V50    0.6341446905416912
#>     Attrib V51    -0.6150213184927628
#>     Attrib V52    0.023046636893187887
#>     Attrib V53    0.04881541927534873
#>     Attrib V54    -0.34321488177721654
#>     Attrib V55    0.5438196611173788
#>     Attrib V56    0.7502705624330763
#>     Attrib V57    0.464002291460589
#>     Attrib V58    0.06803789708283883
#>     Attrib V59    0.04028038427702678
#>     Attrib V6    -0.009617443795812634
#>     Attrib V60    -0.3119374984604046
#>     Attrib V7    0.3493413780706701
#>     Attrib V8    0.355469892610453
#>     Attrib V9    -0.9274934249789749
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.18375963264143744
#>     Attrib V1    0.2999023968081087
#>     Attrib V10    -0.03288034326707415
#>     Attrib V11    0.041485461922413806
#>     Attrib V12    -0.24463280360818737
#>     Attrib V13    -0.3446154062454122
#>     Attrib V14    -0.15886969094795028
#>     Attrib V15    -0.12059512891236612
#>     Attrib V16    -0.05881545817994018
#>     Attrib V17    0.2884895516745921
#>     Attrib V18    0.3820738450785119
#>     Attrib V19    -0.14059179442648018
#>     Attrib V2    -0.12988307831832924
#>     Attrib V20    0.41589303622197316
#>     Attrib V21    0.40576106264130113
#>     Attrib V22    0.057736211138948515
#>     Attrib V23    0.12036328431353711
#>     Attrib V24    0.2395549057594306
#>     Attrib V25    -0.31927436782717306
#>     Attrib V26    -0.4530169021145462
#>     Attrib V27    -0.5615918570441305
#>     Attrib V28    -0.08345745650584226
#>     Attrib V29    -0.47466823381468204
#>     Attrib V3    0.19853294568120944
#>     Attrib V30    0.14411041730708476
#>     Attrib V31    -0.7948823864518565
#>     Attrib V32    -0.15993457351426307
#>     Attrib V33    0.41321153896462876
#>     Attrib V34    -0.03569759132833522
#>     Attrib V35    -0.017452859054929857
#>     Attrib V36    -0.6743309984433385
#>     Attrib V37    -0.7142330954842318
#>     Attrib V38    0.21143179878601137
#>     Attrib V39    -0.04271327762585085
#>     Attrib V4    0.5805211763018436
#>     Attrib V40    -0.25251477001027883
#>     Attrib V41    0.19114869660817796
#>     Attrib V42    0.13491501835523562
#>     Attrib V43    0.1075980424272698
#>     Attrib V44    0.14858522518684192
#>     Attrib V45    0.17107582279079742
#>     Attrib V46    -0.054279866290038704
#>     Attrib V47    -0.5663415693997894
#>     Attrib V48    0.12551613548786963
#>     Attrib V49    0.43295574099248907
#>     Attrib V5    0.1464738760007945
#>     Attrib V50    -0.734361871716137
#>     Attrib V51    -0.019324584604567787
#>     Attrib V52    -0.4550937663156699
#>     Attrib V53    0.3991506569000141
#>     Attrib V54    0.8472721021133058
#>     Attrib V55    0.057877953846264714
#>     Attrib V56    0.12438468669481477
#>     Attrib V57    -0.055210516376719455
#>     Attrib V58    0.3953776023587786
#>     Attrib V59    0.5897345827908004
#>     Attrib V6    -0.1221991170070693
#>     Attrib V60    0.25339989861303647
#>     Attrib V7    0.0468913388899443
#>     Attrib V8    0.3518709699800009
#>     Attrib V9    0.4079347269984488
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.3099470707270669
#>     Attrib V1    0.40246120333438884
#>     Attrib V10    -0.14352816802685858
#>     Attrib V11    -0.05121128391870674
#>     Attrib V12    -0.5022154204189764
#>     Attrib V13    -0.42192409132146275
#>     Attrib V14    -0.058824993412231366
#>     Attrib V15    0.03360724485357858
#>     Attrib V16    0.08874236946367701
#>     Attrib V17    0.28472411234893497
#>     Attrib V18    0.34098830631258603
#>     Attrib V19    -0.04813026320332442
#>     Attrib V2    -0.0016177091634051294
#>     Attrib V20    0.4177259974757838
#>     Attrib V21    0.45778146936533726
#>     Attrib V22    0.06887323911237751
#>     Attrib V23    0.003105519975504542
#>     Attrib V24    0.11052028362359916
#>     Attrib V25    -0.5338975578556493
#>     Attrib V26    -0.5730433514094601
#>     Attrib V27    -0.6393327655657293
#>     Attrib V28    -0.1991060378529626
#>     Attrib V29    -0.4809476004897265
#>     Attrib V3    0.21810736070792697
#>     Attrib V30    0.04493973753329265
#>     Attrib V31    -0.931097780600287
#>     Attrib V32    -0.24982263415812503
#>     Attrib V33    0.4543349310171368
#>     Attrib V34    -0.0590364069681751
#>     Attrib V35    -0.0879464968258494
#>     Attrib V36    -0.728898486602082
#>     Attrib V37    -0.7551465663668149
#>     Attrib V38    0.21552722279763833
#>     Attrib V39    -0.00505974560814467
#>     Attrib V4    0.6177649190495809
#>     Attrib V40    -0.18568584150551676
#>     Attrib V41    0.1682616757256426
#>     Attrib V42    0.1449150089163133
#>     Attrib V43    0.16675636500979413
#>     Attrib V44    0.07336831876706006
#>     Attrib V45    0.10924842187139702
#>     Attrib V46    -0.05471374105296728
#>     Attrib V47    -0.685934585167316
#>     Attrib V48    0.09605686370723313
#>     Attrib V49    0.37916712826005095
#>     Attrib V5    0.13849736124840542
#>     Attrib V50    -0.767509895865077
#>     Attrib V51    -0.08972899762198537
#>     Attrib V52    -0.4578747007873329
#>     Attrib V53    0.5340654730564579
#>     Attrib V54    0.986054725757704
#>     Attrib V55    0.07896057372400823
#>     Attrib V56    0.21188407263925865
#>     Attrib V57    0.09980729695547999
#>     Attrib V58    0.4859114259222658
#>     Attrib V59    0.819135915385763
#>     Attrib V6    -0.14621169936266576
#>     Attrib V60    0.3348049866547386
#>     Attrib V7    0.1858203709170795
#>     Attrib V8    0.4194687481998822
#>     Attrib V9    0.34269306338496663
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.0764543227593481
#>     Attrib V1    0.1619734078403786
#>     Attrib V10    -0.043406219733396346
#>     Attrib V11    9.165288042203459E-4
#>     Attrib V12    -0.11548364442422644
#>     Attrib V13    -0.06448426598365835
#>     Attrib V14    0.010542442652932906
#>     Attrib V15    0.0019434695912309951
#>     Attrib V16    -0.0052001459436504084
#>     Attrib V17    0.16933663307975882
#>     Attrib V18    0.2189684829299623
#>     Attrib V19    -0.024306114179517654
#>     Attrib V2    -0.023727106196930157
#>     Attrib V20    0.22761968202780597
#>     Attrib V21    0.17926742211026692
#>     Attrib V22    -0.03162109457159185
#>     Attrib V23    0.06120811671969272
#>     Attrib V24    0.07440597921178632
#>     Attrib V25    -0.17256213727732753
#>     Attrib V26    -0.28816951455061107
#>     Attrib V27    -0.2566251888695804
#>     Attrib V28    -0.11968701742375709
#>     Attrib V29    -0.2064421909349908
#>     Attrib V3    0.20423318947335578
#>     Attrib V30    0.009224281658911138
#>     Attrib V31    -0.4083731948710058
#>     Attrib V32    -0.1020617037388834
#>     Attrib V33    0.1629668163478633
#>     Attrib V34    0.03243925595219718
#>     Attrib V35    0.013183191629176253
#>     Attrib V36    -0.2692312508094531
#>     Attrib V37    -0.2381216310226532
#>     Attrib V38    0.10588993482440939
#>     Attrib V39    0.060041831389398594
#>     Attrib V4    0.3367479892350808
#>     Attrib V40    -0.08250735833859489
#>     Attrib V41    0.0567013837076386
#>     Attrib V42    0.0022980437268931902
#>     Attrib V43    -0.00485912149857494
#>     Attrib V44    0.0285379254729316
#>     Attrib V45    -0.007234089846709809
#>     Attrib V46    -0.003211196312253641
#>     Attrib V47    -0.2370136419725971
#>     Attrib V48    -1.9948468080474964E-4
#>     Attrib V49    0.2008661516992055
#>     Attrib V5    0.12801259741360765
#>     Attrib V50    -0.2951872260881858
#>     Attrib V51    -0.05993892050541831
#>     Attrib V52    -0.19428409393219218
#>     Attrib V53    0.2068999214333608
#>     Attrib V54    0.3421637741663689
#>     Attrib V55    0.1096859564849727
#>     Attrib V56    0.07874643225503399
#>     Attrib V57    0.045907338358195264
#>     Attrib V58    0.20585922763049888
#>     Attrib V59    0.3728451378667754
#>     Attrib V6    -0.03221238408504766
#>     Attrib V60    0.2569406435209672
#>     Attrib V7    0.06884408037754225
#>     Attrib V8    0.10186986201818712
#>     Attrib V9    0.16695913241433583
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.45095589330774943
#>     Attrib V1    0.3610694692624099
#>     Attrib V10    0.07067881917417845
#>     Attrib V11    0.244854924354321
#>     Attrib V12    -0.055724918723313005
#>     Attrib V13    -0.23072749747342747
#>     Attrib V14    -0.35074302175005856
#>     Attrib V15    -0.31185222627203574
#>     Attrib V16    -0.2796385169833031
#>     Attrib V17    0.21575928741091652
#>     Attrib V18    0.3785440265681236
#>     Attrib V19    -0.3525889295721594
#>     Attrib V2    -0.20058182273847844
#>     Attrib V20    0.1949274847896762
#>     Attrib V21    0.3797935494220098
#>     Attrib V22    0.14037546583625019
#>     Attrib V23    0.29086627719859304
#>     Attrib V24    0.4740937142470898
#>     Attrib V25    -0.20501441939859166
#>     Attrib V26    -0.30914065594923845
#>     Attrib V27    -0.5470182328015287
#>     Attrib V28    -0.032725494098557836
#>     Attrib V29    -0.5970364566870152
#>     Attrib V3    0.13083902737939293
#>     Attrib V30    0.2270707083645068
#>     Attrib V31    -0.7092821268997056
#>     Attrib V32    0.04880282602397844
#>     Attrib V33    0.574981374356704
#>     Attrib V34    -0.17904169536088238
#>     Attrib V35    -0.09717455608897704
#>     Attrib V36    -1.0395395418736424
#>     Attrib V37    -0.9570898912149993
#>     Attrib V38    -0.01843297016722152
#>     Attrib V39    -0.20425351631959465
#>     Attrib V4    0.6462003318518078
#>     Attrib V40    -0.32230472602251975
#>     Attrib V41    0.4396760597153622
#>     Attrib V42    0.15584208415491793
#>     Attrib V43    0.07864829754516009
#>     Attrib V44    0.12139785122976958
#>     Attrib V45    0.04009175412723662
#>     Attrib V46    0.022610791042545316
#>     Attrib V47    -0.6219165043475279
#>     Attrib V48    0.29572690249408645
#>     Attrib V49    0.6395500311620479
#>     Attrib V5    0.10104771290066634
#>     Attrib V50    -1.0121821403386535
#>     Attrib V51    0.0799522872512611
#>     Attrib V52    -0.5251136429260375
#>     Attrib V53    0.3599647528361495
#>     Attrib V54    0.9824713545886965
#>     Attrib V55    -0.0407139564564833
#>     Attrib V56    0.06951914953747602
#>     Attrib V57    -0.14215020478840892
#>     Attrib V58    0.39908960689027684
#>     Attrib V59    0.7287000095861121
#>     Attrib V6    -0.16668304279968946
#>     Attrib V60    0.31658634194369273
#>     Attrib V7    0.031862753840214204
#>     Attrib V8    0.28316951708403326
#>     Attrib V9    0.5184029907669819
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.5324760463000937
#>     Attrib V1    -0.3986060533740616
#>     Attrib V10    -0.3807242788180243
#>     Attrib V11    -0.5951785276212407
#>     Attrib V12    -0.40014911592200997
#>     Attrib V13    -0.08029923710462443
#>     Attrib V14    0.5106790381046151
#>     Attrib V15    0.8927100885294789
#>     Attrib V16    0.8042963624667132
#>     Attrib V17    0.07619459403592731
#>     Attrib V18    -0.3423108074369033
#>     Attrib V19    0.5486689993486771
#>     Attrib V2    0.069823826187812
#>     Attrib V20    -0.13074091084881617
#>     Attrib V21    -0.32712135232479767
#>     Attrib V22    -0.14764397358262696
#>     Attrib V23    -0.3976911811227219
#>     Attrib V24    -0.4132671932778679
#>     Attrib V25    0.25747103887188016
#>     Attrib V26    0.28008500678996057
#>     Attrib V27    0.16810547343946775
#>     Attrib V28    -0.6182585365518639
#>     Attrib V29    0.03717039447282015
#>     Attrib V3    -0.13368510186642982
#>     Attrib V30    -0.28895490806050583
#>     Attrib V31    0.7662076685796048
#>     Attrib V32    0.04505177083071339
#>     Attrib V33    -0.3205652641590093
#>     Attrib V34    0.2976471440511237
#>     Attrib V35    -0.19876088121684538
#>     Attrib V36    0.7151609244493923
#>     Attrib V37    0.47538698538083796
#>     Attrib V38    -0.14152603695358976
#>     Attrib V39    0.1877793738268592
#>     Attrib V4    -0.707955868067078
#>     Attrib V40    0.4079921958033668
#>     Attrib V41    -0.6891168199131518
#>     Attrib V42    -0.10047512738395299
#>     Attrib V43    -0.1552952878181356
#>     Attrib V44    -0.3784945404779155
#>     Attrib V45    -0.47556494556149453
#>     Attrib V46    -0.4631399963085599
#>     Attrib V47    0.18771151735492328
#>     Attrib V48    -0.3789678779497974
#>     Attrib V49    -0.786841300141153
#>     Attrib V5    -0.1703025616498447
#>     Attrib V50    0.9713347427871751
#>     Attrib V51    -0.1417031855790871
#>     Attrib V52    0.3431852189542107
#>     Attrib V53    -0.06040687884444864
#>     Attrib V54    -0.6636502090179569
#>     Attrib V55    0.45082408777269417
#>     Attrib V56    0.5085663351202436
#>     Attrib V57    0.37876523579230936
#>     Attrib V58    -0.021302650930332828
#>     Attrib V59    -0.09858711679405942
#>     Attrib V6    0.1012190093268821
#>     Attrib V60    -0.01426184252763368
#>     Attrib V7    0.27775383678473087
#>     Attrib V8    0.011165987164639653
#>     Attrib V9    -0.7385702745297232
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.17878003968148404
#>     Attrib V1    0.06866110744923648
#>     Attrib V10    0.04084184282974206
#>     Attrib V11    0.016762606470732272
#>     Attrib V12    -0.009592347169716917
#>     Attrib V13    -5.2596365001368285E-5
#>     Attrib V14    0.007065679829900864
#>     Attrib V15    0.023097570346932435
#>     Attrib V16    0.09446762782182216
#>     Attrib V17    0.11246598811507974
#>     Attrib V18    0.11759837930372281
#>     Attrib V19    0.014513514559410547
#>     Attrib V2    0.013662404874951337
#>     Attrib V20    0.0062434147711197836
#>     Attrib V21    -0.035687254825526024
#>     Attrib V22    -0.07691744751263957
#>     Attrib V23    -0.06270861942860154
#>     Attrib V24    -0.0016447382947575911
#>     Attrib V25    -0.06114673951617003
#>     Attrib V26    -0.11945011111143172
#>     Attrib V27    -0.09602585038642479
#>     Attrib V28    -0.0038102020433806844
#>     Attrib V29    -0.06671564609850188
#>     Attrib V3    0.13064768010540356
#>     Attrib V30    -0.03961087136504556
#>     Attrib V31    -0.10615542908462958
#>     Attrib V32    0.004653639324798855
#>     Attrib V33    0.05199354412710551
#>     Attrib V34    0.06594134370787631
#>     Attrib V35    0.05435700061135207
#>     Attrib V36    -0.022752421422036474
#>     Attrib V37    0.023850145142022383
#>     Attrib V38    0.06463147381139706
#>     Attrib V39    0.03874846508814497
#>     Attrib V4    0.1727351158223724
#>     Attrib V40    -0.027508946181535213
#>     Attrib V41    0.02897021724230311
#>     Attrib V42    0.02211369280075086
#>     Attrib V43    0.004219994249182069
#>     Attrib V44    0.003322508715665281
#>     Attrib V45    0.037395321703169594
#>     Attrib V46    0.03287765203822734
#>     Attrib V47    -0.036016146628465084
#>     Attrib V48    0.014454448188742893
#>     Attrib V49    0.04488945653193524
#>     Attrib V5    0.09502556087854866
#>     Attrib V50    0.030968759193750826
#>     Attrib V51    0.04064463098755444
#>     Attrib V52    0.02790948570052679
#>     Attrib V53    0.1319624832091005
#>     Attrib V54    0.08768455570455412
#>     Attrib V55    0.11064125678089243
#>     Attrib V56    0.0810183388724478
#>     Attrib V57    0.10811769885373153
#>     Attrib V58    0.15639162794153996
#>     Attrib V59    0.08720642619367559
#>     Attrib V6    0.039486718073648217
#>     Attrib V60    0.1426807954483106
#>     Attrib V7    0.017131005749557487
#>     Attrib V8    0.02667379158870137
#>     Attrib V9    0.11306374710159524
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.017097453080417727
#>     Attrib V1    0.19317321891072572
#>     Attrib V10    0.0440307315657875
#>     Attrib V11    0.05558758197680856
#>     Attrib V12    -0.12045045862619462
#>     Attrib V13    -0.15719642448715476
#>     Attrib V14    -0.025635875185958095
#>     Attrib V15    0.07122753593102495
#>     Attrib V16    0.016676197705388755
#>     Attrib V17    0.1304925186663255
#>     Attrib V18    0.17206956696494344
#>     Attrib V19    -0.035265923266456695
#>     Attrib V2    0.05862150453373378
#>     Attrib V20    0.147053710762564
#>     Attrib V21    0.11146684541774765
#>     Attrib V22    -0.0038654900798185403
#>     Attrib V23    -0.03758569471915961
#>     Attrib V24    0.043578318049237834
#>     Attrib V25    -0.26401549634199634
#>     Attrib V26    -0.2848261041142661
#>     Attrib V27    -0.2862806191087726
#>     Attrib V28    -0.10214101557676951
#>     Attrib V29    -0.25191587308890356
#>     Attrib V3    0.12973519982512668
#>     Attrib V30    0.019533127918840317
#>     Attrib V31    -0.3125092966972585
#>     Attrib V32    -0.11076362941033215
#>     Attrib V33    0.22600227291810815
#>     Attrib V34    -0.024031730290339975
#>     Attrib V35    0.05352955191012504
#>     Attrib V36    -0.29409644693165926
#>     Attrib V37    -0.2922404557913631
#>     Attrib V38    0.12927143299808186
#>     Attrib V39    0.028286255044309063
#>     Attrib V4    0.32457101082800976
#>     Attrib V40    -0.1618825174797354
#>     Attrib V41    0.04432411690164232
#>     Attrib V42    -0.05590541994465715
#>     Attrib V43    0.047230727115796456
#>     Attrib V44    0.054464861871098044
#>     Attrib V45    0.07713842319219322
#>     Attrib V46    -0.050201679475942736
#>     Attrib V47    -0.3133089641613445
#>     Attrib V48    0.06606626218385951
#>     Attrib V49    0.14998029038738778
#>     Attrib V5    0.10082651146598288
#>     Attrib V50    -0.2659818377020667
#>     Attrib V51    -0.034449579801583356
#>     Attrib V52    -0.17728190292726748
#>     Attrib V53    0.16208385019921964
#>     Attrib V54    0.33011009626905596
#>     Attrib V55    0.1692391349577264
#>     Attrib V56    0.07344508185312375
#>     Attrib V57    0.07841786228621343
#>     Attrib V58    0.1836867324206803
#>     Attrib V59    0.2813447485594512
#>     Attrib V6    -0.04487736170022865
#>     Attrib V60    0.2053584418228538
#>     Attrib V7    -0.016371072119810013
#>     Attrib V8    0.16045262398535498
#>     Attrib V9    0.18728044308276592
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.15129268495219683
#>     Attrib V1    0.13251874803259972
#>     Attrib V10    0.04522937356610365
#>     Attrib V11    0.04295768343494003
#>     Attrib V12    -0.051570500191126266
#>     Attrib V13    -0.06203753618133639
#>     Attrib V14    0.03540921547180327
#>     Attrib V15    0.019541421294600528
#>     Attrib V16    0.04525142995577563
#>     Attrib V17    0.07444643330274134
#>     Attrib V18    0.18092988586755598
#>     Attrib V19    -0.05888569144449881
#>     Attrib V2    0.04756186079310301
#>     Attrib V20    0.1258225104169518
#>     Attrib V21    0.09439964469504092
#>     Attrib V22    -0.05736575634684541
#>     Attrib V23    -0.017844326773435157
#>     Attrib V24    -0.028882141575550392
#>     Attrib V25    -0.13919597302469947
#>     Attrib V26    -0.14849677675529654
#>     Attrib V27    -0.15491661680702842
#>     Attrib V28    -0.05772392948490426
#>     Attrib V29    -0.14866655126611178
#>     Attrib V3    0.18377744996660117
#>     Attrib V30    -0.048498659509090804
#>     Attrib V31    -0.23142186786993824
#>     Attrib V32    -0.06913731261145788
#>     Attrib V33    0.10866493979493777
#>     Attrib V34    0.047770319323784505
#>     Attrib V35    0.034632467511827025
#>     Attrib V36    -0.06104711919574346
#>     Attrib V37    -0.12231816815654822
#>     Attrib V38    0.06680325310105788
#>     Attrib V39    0.050791650229415376
#>     Attrib V4    0.2171386578944791
#>     Attrib V40    -0.08689222574178959
#>     Attrib V41    -0.030609739181726034
#>     Attrib V42    -0.04630502511592885
#>     Attrib V43    4.5582793811703323E-4
#>     Attrib V44    0.060345260608277225
#>     Attrib V45    -0.014515060169283722
#>     Attrib V46    -0.01862170436777431
#>     Attrib V47    -0.10328528966997884
#>     Attrib V48    0.034603645514750106
#>     Attrib V49    0.15212889350376216
#>     Attrib V5    0.10123060524394308
#>     Attrib V50    -0.16083478081966662
#>     Attrib V51    0.03472534471610477
#>     Attrib V52    -0.08450573166228424
#>     Attrib V53    0.14015017465348725
#>     Attrib V54    0.18236231595985314
#>     Attrib V55    0.15203586180072268
#>     Attrib V56    0.08472636525613812
#>     Attrib V57    0.023933246226208203
#>     Attrib V58    0.1697803766784559
#>     Attrib V59    0.24279136988065458
#>     Attrib V6    -0.04590441604615156
#>     Attrib V60    0.21730300294301258
#>     Attrib V7    0.05763131633744236
#>     Attrib V8    0.12124933726968812
#>     Attrib V9    0.14512182685413302
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.31238257882669196
#>     Attrib V1    0.29926932518461435
#>     Attrib V10    -0.08581419755802175
#>     Attrib V11    0.030183704354271392
#>     Attrib V12    -0.22989731093059587
#>     Attrib V13    -0.31400337304503095
#>     Attrib V14    -0.21651142730554596
#>     Attrib V15    -0.19813973224384196
#>     Attrib V16    -0.16558703291574048
#>     Attrib V17    0.30273767260408335
#>     Attrib V18    0.44486499232674453
#>     Attrib V19    -0.18078173375938916
#>     Attrib V2    -0.1536545626964116
#>     Attrib V20    0.3367160360176133
#>     Attrib V21    0.46955671614557903
#>     Attrib V22    0.2060796107278317
#>     Attrib V23    0.2691057527288553
#>     Attrib V24    0.47436711741820425
#>     Attrib V25    -0.2375825347592969
#>     Attrib V26    -0.3952561961474995
#>     Attrib V27    -0.5793888073447304
#>     Attrib V28    -0.04375508673561641
#>     Attrib V29    -0.5917198002951148
#>     Attrib V3    0.2783522008448586
#>     Attrib V30    0.19639093566421117
#>     Attrib V31    -0.8635001745670492
#>     Attrib V32    -0.10582222328048943
#>     Attrib V33    0.5749575723925407
#>     Attrib V34    -0.15491251105284182
#>     Attrib V35    -0.09427821351629989
#>     Attrib V36    -0.956219088129006
#>     Attrib V37    -1.016002649007008
#>     Attrib V38    0.09598793946666763
#>     Attrib V39    -0.160404770127763
#>     Attrib V4    0.77183347660871
#>     Attrib V40    -0.2902290050434753
#>     Attrib V41    0.36859484762766265
#>     Attrib V42    0.31209342664630496
#>     Attrib V43    0.1909875480777633
#>     Attrib V44    0.1506713699247155
#>     Attrib V45    0.14620027115177545
#>     Attrib V46    -0.08283285359176944
#>     Attrib V47    -0.7912970650942959
#>     Attrib V48    0.1817266404312787
#>     Attrib V49    0.6394941882140196
#>     Attrib V5    0.15174100665276224
#>     Attrib V50    -1.055207332413512
#>     Attrib V51    -0.04804495927314284
#>     Attrib V52    -0.5061733654621487
#>     Attrib V53    0.5477259188111138
#>     Attrib V54    1.1068844689722284
#>     Attrib V55    -0.023676686575079483
#>     Attrib V56    0.1677531573090958
#>     Attrib V57    -0.14757211607981818
#>     Attrib V58    0.5172144410255782
#>     Attrib V59    0.7906145607383108
#>     Attrib V6    -0.15902716995453442
#>     Attrib V60    0.3204263574908864
#>     Attrib V7    0.14519078097774746
#>     Attrib V8    0.39166325323152773
#>     Attrib V9    0.5023693665595907
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.22580017573495798
#>     Attrib V1    0.42490711716931634
#>     Attrib V10    -0.04910487432321132
#>     Attrib V11    -0.011678211517791276
#>     Attrib V12    -0.3245317662186021
#>     Attrib V13    -0.3460901559238399
#>     Attrib V14    -0.12836235028617202
#>     Attrib V15    -0.11573716874013998
#>     Attrib V16    -0.10174733723192855
#>     Attrib V17    0.293347041193179
#>     Attrib V18    0.44752051918693614
#>     Attrib V19    -0.10112975779358738
#>     Attrib V2    -0.09659457746191512
#>     Attrib V20    0.46031281949846337
#>     Attrib V21    0.5848779699115918
#>     Attrib V22    0.21081110652015017
#>     Attrib V23    0.2223966609737306
#>     Attrib V24    0.31661296172330056
#>     Attrib V25    -0.3631078804426381
#>     Attrib V26    -0.37808562905659826
#>     Attrib V27    -0.5098520170301001
#>     Attrib V28    -0.07414298806990162
#>     Attrib V29    -0.44031389261906523
#>     Attrib V3    0.29415673451618923
#>     Attrib V30    0.18460470629425055
#>     Attrib V31    -0.8866430265051176
#>     Attrib V32    -0.25092824051320184
#>     Attrib V33    0.3826973559847599
#>     Attrib V34    -0.22234904696084276
#>     Attrib V35    -0.1064417653213812
#>     Attrib V36    -0.7284677202563864
#>     Attrib V37    -0.7273211248151256
#>     Attrib V38    0.23809375014343845
#>     Attrib V39    -0.06640098120578738
#>     Attrib V4    0.6922612551205833
#>     Attrib V40    -0.2789907011618133
#>     Attrib V41    0.2926756606970114
#>     Attrib V42    0.18468855809950754
#>     Attrib V43    0.22075347076134416
#>     Attrib V44    0.24067289302496792
#>     Attrib V45    0.11559334954631449
#>     Attrib V46    -0.12012615555192083
#>     Attrib V47    -0.7366253557014688
#>     Attrib V48    0.12698125874638339
#>     Attrib V49    0.49731491388130455
#>     Attrib V5    0.20100549281982202
#>     Attrib V50    -0.8715294245031057
#>     Attrib V51    0.011247667857248482
#>     Attrib V52    -0.46356326129977937
#>     Attrib V53    0.49565639938369577
#>     Attrib V54    1.0253899702708094
#>     Attrib V55    -0.008437946700201131
#>     Attrib V56    0.2315050560524948
#>     Attrib V57    -0.11886315369997826
#>     Attrib V58    0.4704766578227668
#>     Attrib V59    0.7729198617765227
#>     Attrib V6    -0.11516758724621957
#>     Attrib V60    0.3248537942791498
#>     Attrib V7    0.1647939493333339
#>     Attrib V8    0.29545373818719844
#>     Attrib V9    0.45097557050315773
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.22985165516158776
#>     Attrib V1    -0.11262961759647706
#>     Attrib V10    -0.846965287198306
#>     Attrib V11    -0.9988652038529566
#>     Attrib V12    -1.0217696138441699
#>     Attrib V13    -0.631643129170833
#>     Attrib V14    0.529667418251178
#>     Attrib V15    1.3353410780236477
#>     Attrib V16    1.2253755476381307
#>     Attrib V17    0.202614761879664
#>     Attrib V18    -0.5500763336895919
#>     Attrib V19    0.47642060173160056
#>     Attrib V2    -0.046672289592056306
#>     Attrib V20    -0.04619352827213634
#>     Attrib V21    -0.4546902783908077
#>     Attrib V22    -0.721735229235812
#>     Attrib V23    -1.0648008066112724
#>     Attrib V24    -0.8008743644210019
#>     Attrib V25    -0.1054291277786385
#>     Attrib V26    -0.17096779849536003
#>     Attrib V27    -0.35849840827661666
#>     Attrib V28    -1.094681083844189
#>     Attrib V29    -0.1484024218855404
#>     Attrib V3    -0.35143904802064246
#>     Attrib V30    -0.21106022150768536
#>     Attrib V31    0.8457121271782211
#>     Attrib V32    0.042631344173221127
#>     Attrib V33    -0.1273000936579758
#>     Attrib V34    0.512154600183414
#>     Attrib V35    -0.1757226933385434
#>     Attrib V36    0.7376675920973752
#>     Attrib V37    0.3547097329630262
#>     Attrib V38    0.1288551813686354
#>     Attrib V39    0.44633991613269125
#>     Attrib V4    -0.9169789561042176
#>     Attrib V40    0.4268191913843806
#>     Attrib V41    -1.156154916103466
#>     Attrib V42    -0.1645723349318882
#>     Attrib V43    -0.11253583538148701
#>     Attrib V44    -0.5204191406123904
#>     Attrib V45    -0.760374245960183
#>     Attrib V46    -0.951266972477432
#>     Attrib V47    -0.3559281676064186
#>     Attrib V48    -0.7784800550050452
#>     Attrib V49    -1.2261915656620845
#>     Attrib V5    -0.44837970073753625
#>     Attrib V50    0.7559545863715212
#>     Attrib V51    -0.582866685388851
#>     Attrib V52    0.008480818558142776
#>     Attrib V53    -0.025145515936692796
#>     Attrib V54    -0.44331072843387903
#>     Attrib V55    0.6837846471878465
#>     Attrib V56    0.8023566725414053
#>     Attrib V57    0.7455359662146761
#>     Attrib V58    0.12102815201843135
#>     Attrib V59    0.30666738266705157
#>     Attrib V6    -0.15213176149328447
#>     Attrib V60    0.0160344937676275
#>     Attrib V7    0.4412301871573895
#>     Attrib V8    0.21536227824905857
#>     Attrib V9    -1.053455879781275
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.16003300707526147
#>     Attrib V1    0.3914663177408279
#>     Attrib V10    -0.08970081930988448
#>     Attrib V11    -0.07287134131500356
#>     Attrib V12    -0.333017966585838
#>     Attrib V13    -0.3338334453813433
#>     Attrib V14    0.010275093560921813
#>     Attrib V15    0.09073233912547007
#>     Attrib V16    0.16812567380202104
#>     Attrib V17    0.2548851559006692
#>     Attrib V18    0.25628647987309483
#>     Attrib V19    -0.08059263873993522
#>     Attrib V2    9.860925497629596E-4
#>     Attrib V20    0.31366437467205105
#>     Attrib V21    0.2544673145174026
#>     Attrib V22    -0.10581065156454893
#>     Attrib V23    -0.15442885899132475
#>     Attrib V24    0.061656950525895864
#>     Attrib V25    -0.44703857685586434
#>     Attrib V26    -0.524977611221048
#>     Attrib V27    -0.6264405691533852
#>     Attrib V28    -0.3431920551619509
#>     Attrib V29    -0.44659463360101886
#>     Attrib V3    0.14040941855446878
#>     Attrib V30    -0.04201890463051416
#>     Attrib V31    -0.6003154535505634
#>     Attrib V32    -0.17942320244156298
#>     Attrib V33    0.29481062381017353
#>     Attrib V34    0.0068068113649723165
#>     Attrib V35    -0.008553498545070353
#>     Attrib V36    -0.49614399842087964
#>     Attrib V37    -0.5306628328636221
#>     Attrib V38    0.1342829592628442
#>     Attrib V39    0.027247842784854336
#>     Attrib V4    0.4350317668492409
#>     Attrib V40    -0.1406934089084576
#>     Attrib V41    -0.0160662388089291
#>     Attrib V42    0.003062044704248693
#>     Attrib V43    0.10087203429351234
#>     Attrib V44    0.015435604202314619
#>     Attrib V45    -0.03193332614085055
#>     Attrib V46    -0.08080722138373389
#>     Attrib V47    -0.56228806131372
#>     Attrib V48    0.057685999718336364
#>     Attrib V49    0.2646805487798444
#>     Attrib V5    0.12088332145233831
#>     Attrib V50    -0.5073715572207171
#>     Attrib V51    -0.08032864255975117
#>     Attrib V52    -0.37950153916054663
#>     Attrib V53    0.3408548395989916
#>     Attrib V54    0.7446860670178421
#>     Attrib V55    0.25062673569160626
#>     Attrib V56    0.20352918581237267
#>     Attrib V57    0.11681245404648247
#>     Attrib V58    0.4275101520181639
#>     Attrib V59    0.6578050230511737
#>     Attrib V6    -0.08052259777421371
#>     Attrib V60    0.37983384519377195
#>     Attrib V7    0.15097186326988535
#>     Attrib V8    0.21555058977598968
#>     Attrib V9    0.21408088501438274
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.24403533845147618
#>     Attrib V1    0.43471604091785454
#>     Attrib V10    -0.1355636568947927
#>     Attrib V11    -0.026107081142624753
#>     Attrib V12    -0.3753792338592299
#>     Attrib V13    -0.3800173980175046
#>     Attrib V14    -0.10868364151765128
#>     Attrib V15    -0.02843504217953582
#>     Attrib V16    -0.006815060262299293
#>     Attrib V17    0.3458365966958514
#>     Attrib V18    0.39207092708549585
#>     Attrib V19    -0.08413332311419891
#>     Attrib V2    -0.09142930124328064
#>     Attrib V20    0.41179784793579965
#>     Attrib V21    0.43648589772124113
#>     Attrib V22    0.06824232114644842
#>     Attrib V23    0.07726214542698935
#>     Attrib V24    0.16558640715900752
#>     Attrib V25    -0.43580252018888593
#>     Attrib V26    -0.47717841093128477
#>     Attrib V27    -0.6783080716972074
#>     Attrib V28    -0.2173155075116893
#>     Attrib V29    -0.5447470424183232
#>     Attrib V3    0.2984655020742953
#>     Attrib V30    0.10863358569060338
#>     Attrib V31    -0.8636152014661068
#>     Attrib V32    -0.2555837472341971
#>     Attrib V33    0.41056285187784575
#>     Attrib V34    -0.07441514264414628
#>     Attrib V35    0.006232768630854128
#>     Attrib V36    -0.6832599210690542
#>     Attrib V37    -0.6815494186930385
#>     Attrib V38    0.21541572281865498
#>     Attrib V39    0.013141730709991358
#>     Attrib V4    0.643403844958224
#>     Attrib V40    -0.27127415255634363
#>     Attrib V41    0.1464248370170534
#>     Attrib V42    0.13046965482607137
#>     Attrib V43    0.17399748890151925
#>     Attrib V44    0.1209954258181846
#>     Attrib V45    0.12548929685182972
#>     Attrib V46    -0.09766683796886168
#>     Attrib V47    -0.6498468803512085
#>     Attrib V48    0.027425921307849734
#>     Attrib V49    0.4204200766738284
#>     Attrib V5    0.10720885203663069
#>     Attrib V50    -0.7836093579611495
#>     Attrib V51    -0.13143231276043482
#>     Attrib V52    -0.47203244771002506
#>     Attrib V53    0.5082871308713836
#>     Attrib V54    0.9407489559515513
#>     Attrib V55    0.10509446497627496
#>     Attrib V56    0.22459556214586252
#>     Attrib V57    -0.03080269857864601
#>     Attrib V58    0.44907609457055536
#>     Attrib V59    0.7937301496407688
#>     Attrib V6    -0.12632741380807555
#>     Attrib V60    0.3299074341882606
#>     Attrib V7    0.1730368333163391
#>     Attrib V8    0.3621224256374007
#>     Attrib V9    0.3710664911845716
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.4244334722718613
#>     Attrib V1    -0.4209712615667358
#>     Attrib V10    -0.4698036163947475
#>     Attrib V11    -0.5853180168394694
#>     Attrib V12    -0.47149563358067337
#>     Attrib V13    -0.1207952916725964
#>     Attrib V14    0.5357718177699354
#>     Attrib V15    0.9108440506669397
#>     Attrib V16    0.8017626457157107
#>     Attrib V17    0.15365658445331723
#>     Attrib V18    -0.31554344038723575
#>     Attrib V19    0.4938210010526614
#>     Attrib V2    0.022926223212401033
#>     Attrib V20    -0.15257397448279136
#>     Attrib V21    -0.3408650849227692
#>     Attrib V22    -0.278670963102403
#>     Attrib V23    -0.4338297369215739
#>     Attrib V24    -0.47557533881818403
#>     Attrib V25    0.19669197323096788
#>     Attrib V26    0.20828273897737745
#>     Attrib V27    0.12021344404897648
#>     Attrib V28    -0.6307053051424828
#>     Attrib V29    -0.028489529594727662
#>     Attrib V3    -0.20547988008429102
#>     Attrib V30    -0.29363856283508705
#>     Attrib V31    0.6949603020545058
#>     Attrib V32    0.07747764879212793
#>     Attrib V33    -0.3169682256387717
#>     Attrib V34    0.2656353422025078
#>     Attrib V35    -0.20602971183063468
#>     Attrib V36    0.6508866908684352
#>     Attrib V37    0.289563715693413
#>     Attrib V38    -0.1347754233069787
#>     Attrib V39    0.18268282498586114
#>     Attrib V4    -0.6887623174686158
#>     Attrib V40    0.4222142917041316
#>     Attrib V41    -0.6890231955004468
#>     Attrib V42    -0.0887616747745411
#>     Attrib V43    -0.04609564810042897
#>     Attrib V44    -0.35169524136013125
#>     Attrib V45    -0.5505184563965762
#>     Attrib V46    -0.5239095331446911
#>     Attrib V47    0.10911279074217958
#>     Attrib V48    -0.42393505266333903
#>     Attrib V49    -0.816071459145061
#>     Attrib V5    -0.25861893365191746
#>     Attrib V50    0.8972090754679499
#>     Attrib V51    -0.1834006777091257
#>     Attrib V52    0.3815604341309897
#>     Attrib V53    -0.0767237856740883
#>     Attrib V54    -0.6232116140716588
#>     Attrib V55    0.5433125850100127
#>     Attrib V56    0.5418069720274994
#>     Attrib V57    0.46170599393703743
#>     Attrib V58    0.08702659340869906
#>     Attrib V59    -0.03587032138114268
#>     Attrib V6    0.057280647513075524
#>     Attrib V60    -0.07718099449663456
#>     Attrib V7    0.25982627275394143
#>     Attrib V8    0.040218797014212986
#>     Attrib V9    -0.7235725760907777
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.3884729928579659
#>     Attrib V1    0.1567406383311655
#>     Attrib V10    0.7541621920215663
#>     Attrib V11    1.0009058652431175
#>     Attrib V12    1.246249043979136
#>     Attrib V13    0.586417904044137
#>     Attrib V14    -0.5201298832080196
#>     Attrib V15    -1.257645420968562
#>     Attrib V16    -1.1635809483256292
#>     Attrib V17    -0.23765434905885174
#>     Attrib V18    0.3943626721915075
#>     Attrib V19    -0.6339147592772113
#>     Attrib V2    -0.067156290456826
#>     Attrib V20    -0.12463878149483423
#>     Attrib V21    0.3217165704692907
#>     Attrib V22    0.49289395827354143
#>     Attrib V23    0.7796414813218602
#>     Attrib V24    0.6683045509486044
#>     Attrib V25    0.1303835213948652
#>     Attrib V26    0.24922182994634343
#>     Attrib V27    0.4608337370119663
#>     Attrib V28    1.0271055038765666
#>     Attrib V29    0.09275084309918333
#>     Attrib V3    0.2969218861909424
#>     Attrib V30    0.05902436203195149
#>     Attrib V31    -0.6721653446284696
#>     Attrib V32    0.06645215546222137
#>     Attrib V33    0.06229258657179236
#>     Attrib V34    -0.3822082184234231
#>     Attrib V35    0.3229218856417627
#>     Attrib V36    -0.6043817655455836
#>     Attrib V37    -0.22976292127748857
#>     Attrib V38    -0.2230122984546869
#>     Attrib V39    -0.4488003220787727
#>     Attrib V4    0.8781937270576095
#>     Attrib V40    -0.438462578880197
#>     Attrib V41    1.0680616729786883
#>     Attrib V42    -0.02138893026476375
#>     Attrib V43    0.005055930213258561
#>     Attrib V44    0.39507073101805396
#>     Attrib V45    0.5943549853212078
#>     Attrib V46    0.8767251916344773
#>     Attrib V47    0.37198120919768213
#>     Attrib V48    0.8566385079768937
#>     Attrib V49    1.1571699206343864
#>     Attrib V5    0.4389563243698046
#>     Attrib V50    -0.6581087950204673
#>     Attrib V51    0.6562286718286473
#>     Attrib V52    0.04559121724594713
#>     Attrib V53    0.028637169512681804
#>     Attrib V54    0.3729518578684418
#>     Attrib V55    -0.6685020813820365
#>     Attrib V56    -0.7725079511454761
#>     Attrib V57    -0.47000195266306927
#>     Attrib V58    -0.09134061459511639
#>     Attrib V59    0.026303837362213686
#>     Attrib V6    0.027086330466902637
#>     Attrib V60    0.3507674218932482
#>     Attrib V7    -0.5405419415537955
#>     Attrib V8    -0.5357641613208769
#>     Attrib V9    0.8786887978431028
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.3488244863348229
#>     Attrib V1    -0.16376948523853116
#>     Attrib V10    -0.15025384333820385
#>     Attrib V11    -0.320719662692759
#>     Attrib V12    -0.23060347511861473
#>     Attrib V13    -0.0700984816483941
#>     Attrib V14    0.24656962495638704
#>     Attrib V15    0.33859592686473233
#>     Attrib V16    0.3543188116019066
#>     Attrib V17    0.08345061391204793
#>     Attrib V18    -0.1585966927942863
#>     Attrib V19    0.31111527044547155
#>     Attrib V2    0.07606468073469637
#>     Attrib V20    -9.871904068257265E-4
#>     Attrib V21    -0.049851100936020375
#>     Attrib V22    0.026692235669490916
#>     Attrib V23    -0.06536312326601776
#>     Attrib V24    -0.16952176824591506
#>     Attrib V25    0.18081487905659696
#>     Attrib V26    0.1278738339231348
#>     Attrib V27    0.16667169876951782
#>     Attrib V28    -0.2286124400159234
#>     Attrib V29    0.05044608469781621
#>     Attrib V3    -0.07800930554359727
#>     Attrib V30    -0.13542156842609882
#>     Attrib V31    0.3317994889498861
#>     Attrib V32    0.005686543670729363
#>     Attrib V33    -0.10273808784888525
#>     Attrib V34    0.12263512515927676
#>     Attrib V35    -0.010908862001841818
#>     Attrib V36    0.44934678741629436
#>     Attrib V37    0.3752154880946841
#>     Attrib V38    -0.0967337889704372
#>     Attrib V39    0.048692789435131875
#>     Attrib V4    -0.2975027647004634
#>     Attrib V40    0.19673810421078594
#>     Attrib V41    -0.25451407456064845
#>     Attrib V42    0.0268204559279237
#>     Attrib V43    -0.07029556048732866
#>     Attrib V44    -0.15874653079815518
#>     Attrib V45    -0.2677702044927443
#>     Attrib V46    -0.2647206741808764
#>     Attrib V47    0.10073085356061282
#>     Attrib V48    -0.14008998811300968
#>     Attrib V49    -0.39686675847681946
#>     Attrib V5    -0.08955942888335533
#>     Attrib V50    0.47033612683227577
#>     Attrib V51    -0.0562976255077985
#>     Attrib V52    0.16869349062018282
#>     Attrib V53    -0.10641086726312718
#>     Attrib V54    -0.3519516554711535
#>     Attrib V55    0.05608767596070458
#>     Attrib V56    0.2048829676682172
#>     Attrib V57    0.18421111645750982
#>     Attrib V58    -0.08436166509205804
#>     Attrib V59    -0.10696498633857593
#>     Attrib V6    0.1575593361568197
#>     Attrib V60    0.02651351329936513
#>     Attrib V7    0.10574821478510607
#>     Attrib V8    -0.013194993610941615
#>     Attrib V9    -0.32445891747895406
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.47409914055107333
#>     Attrib V1    0.6617942573222515
#>     Attrib V10    0.9672994442998504
#>     Attrib V11    1.061608056332311
#>     Attrib V12    0.932422258652623
#>     Attrib V13    0.4073911668179932
#>     Attrib V14    -0.685307651026413
#>     Attrib V15    -1.0962226773653108
#>     Attrib V16    -1.1055316122257874
#>     Attrib V17    -0.3964284088116409
#>     Attrib V18    0.1609612501566716
#>     Attrib V19    -0.8108481276698827
#>     Attrib V2    0.05503333428327115
#>     Attrib V20    -0.03554739467278164
#>     Attrib V21    0.4813346674078872
#>     Attrib V22    0.30834050266107604
#>     Attrib V23    0.38038904370707777
#>     Attrib V24    0.4155802626743851
#>     Attrib V25    -0.1503386690800928
#>     Attrib V26    0.06106066071418073
#>     Attrib V27    0.0723232679987116
#>     Attrib V28    0.8508787986648169
#>     Attrib V29    0.09357014600582918
#>     Attrib V3    0.18257704078629974
#>     Attrib V30    0.2403916585524911
#>     Attrib V31    -0.7622420097023758
#>     Attrib V32    0.04905837446990308
#>     Attrib V33    0.2740346677276151
#>     Attrib V34    -0.22925949659430034
#>     Attrib V35    0.4391865336811894
#>     Attrib V36    -0.4889318990174456
#>     Attrib V37    -0.08322556273776673
#>     Attrib V38    0.044260408952997224
#>     Attrib V39    -0.3074745643680048
#>     Attrib V4    0.8394274749198656
#>     Attrib V40    -0.5736719590716515
#>     Attrib V41    0.7779066300367146
#>     Attrib V42    -0.24803090415643136
#>     Attrib V43    -0.2400328026828988
#>     Attrib V44    0.25702293176328156
#>     Attrib V45    0.7127764702687883
#>     Attrib V46    0.8431632255901422
#>     Attrib V47    0.21721288628249116
#>     Attrib V48    0.730337021859599
#>     Attrib V49    0.9284301848666687
#>     Attrib V5    0.27990315372654134
#>     Attrib V50    -0.8034704035624303
#>     Attrib V51    0.5192573173152244
#>     Attrib V52    -0.20525016733485982
#>     Attrib V53    -0.2193384573667635
#>     Attrib V54    0.4125572535073221
#>     Attrib V55    -0.5448153675445788
#>     Attrib V56    -0.9861220572251926
#>     Attrib V57    -0.58949592522415
#>     Attrib V58    -0.09587353147327654
#>     Attrib V59    -0.012586966243534505
#>     Attrib V6    -0.003115646201994881
#>     Attrib V60    0.30572796335595137
#>     Attrib V7    -0.33939397575995195
#>     Attrib V8    -0.22689797854647042
#>     Attrib V9    1.0965339480725529
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.2616642026235193
#>     Attrib V1    -0.10395178637811794
#>     Attrib V10    -0.8760549412834449
#>     Attrib V11    -1.061132136321429
#>     Attrib V12    -1.3258753695325347
#>     Attrib V13    -0.6924529737863261
#>     Attrib V14    0.561810880212527
#>     Attrib V15    1.440487377486205
#>     Attrib V16    1.3183218438703799
#>     Attrib V17    0.19970945736598855
#>     Attrib V18    -0.48666818559025055
#>     Attrib V19    0.4919222553363371
#>     Attrib V2    -0.02850681121992982
#>     Attrib V20    0.038430008492169154
#>     Attrib V21    -0.40184604138858826
#>     Attrib V22    -0.6486210795005322
#>     Attrib V23    -1.037240931010427
#>     Attrib V24    -0.8313705381454165
#>     Attrib V25    -0.27344252518606726
#>     Attrib V26    -0.30044029907909126
#>     Attrib V27    -0.4558902984047612
#>     Attrib V28    -1.1046864856100065
#>     Attrib V29    -0.12107686466436023
#>     Attrib V3    -0.31465821709868685
#>     Attrib V30    -0.11834569262160646
#>     Attrib V31    0.7130630946174806
#>     Attrib V32    0.07682203285718261
#>     Attrib V33    -0.07871700266467008
#>     Attrib V34    0.4880939682462433
#>     Attrib V35    -0.2436077742816366
#>     Attrib V36    0.6522458920254175
#>     Attrib V37    0.20919962188872962
#>     Attrib V38    0.227237283298094
#>     Attrib V39    0.4704482390660206
#>     Attrib V4    -0.9160026089789448
#>     Attrib V40    0.32808301556023045
#>     Attrib V41    -1.227437087885688
#>     Attrib V42    -0.053980217032719394
#>     Attrib V43    -0.07289675867683897
#>     Attrib V44    -0.4606920669957844
#>     Attrib V45    -0.6345240885855353
#>     Attrib V46    -0.9763857214694618
#>     Attrib V47    -0.4913025393823646
#>     Attrib V48    -0.8885041561507389
#>     Attrib V49    -1.2145968484348129
#>     Attrib V5    -0.5469372719516643
#>     Attrib V50    0.6573235378463634
#>     Attrib V51    -0.7259255797527896
#>     Attrib V52    -0.05329138415081363
#>     Attrib V53    -0.05991130234813291
#>     Attrib V54    -0.3465034306640952
#>     Attrib V55    0.7120675365931761
#>     Attrib V56    0.8404031778551599
#>     Attrib V57    0.5904910568016866
#>     Attrib V58    0.2209373668343325
#>     Attrib V59    0.2057700832380453
#>     Attrib V6    -0.14844991169381241
#>     Attrib V60    -0.27024828826123637
#>     Attrib V7    0.4898889798546446
#>     Attrib V8    0.48283701587109423
#>     Attrib V9    -0.9632664931562156
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.21053325650073543
#>     Attrib V1    0.24879843831732396
#>     Attrib V10    0.03220391635886539
#>     Attrib V11    0.21316304078705797
#>     Attrib V12    -0.07133113032473827
#>     Attrib V13    -0.16397802583360177
#>     Attrib V14    -0.1588045341101832
#>     Attrib V15    -0.2505977365476641
#>     Attrib V16    -0.22077603419301192
#>     Attrib V17    0.17945250394339912
#>     Attrib V18    0.3652183291459028
#>     Attrib V19    -0.2091636440186863
#>     Attrib V2    -0.13479200937988772
#>     Attrib V20    0.3730597387750856
#>     Attrib V21    0.4824481466763725
#>     Attrib V22    0.23911739108050417
#>     Attrib V23    0.2152826336241553
#>     Attrib V24    0.3568151026377907
#>     Attrib V25    -0.18170906938872877
#>     Attrib V26    -0.29453931051311455
#>     Attrib V27    -0.4065090100640876
#>     Attrib V28    0.03326751947628631
#>     Attrib V29    -0.3086173969124921
#>     Attrib V3    0.25306130187582354
#>     Attrib V30    0.14474587519456686
#>     Attrib V31    -0.7024717238973518
#>     Attrib V32    -0.10927022521170872
#>     Attrib V33    0.3633391061314091
#>     Attrib V34    -0.11358108569129757
#>     Attrib V35    0.02626450170212048
#>     Attrib V36    -0.6336920571149257
#>     Attrib V37    -0.5677377785972426
#>     Attrib V38    0.17356868856415006
#>     Attrib V39    -0.0614578976184728
#>     Attrib V4    0.5668668182963464
#>     Attrib V40    -0.269480229567241
#>     Attrib V41    0.29888115396821313
#>     Attrib V42    0.0688645432225119
#>     Attrib V43    0.16805954290049427
#>     Attrib V44    0.11440344308211056
#>     Attrib V45    0.19922401550577568
#>     Attrib V46    0.04296639131451746
#>     Attrib V47    -0.479229038012357
#>     Attrib V48    0.12794340452189953
#>     Attrib V49    0.45727147494896797
#>     Attrib V5    0.08771418953315535
#>     Attrib V50    -0.7241988952786067
#>     Attrib V51    0.02466271348824582
#>     Attrib V52    -0.3710552948419357
#>     Attrib V53    0.30500281826269604
#>     Attrib V54    0.704464818067645
#>     Attrib V55    0.03342187589309731
#>     Attrib V56    0.061328086921830144
#>     Attrib V57    -0.1754648984555063
#>     Attrib V58    0.2888304059737091
#>     Attrib V59    0.4987858615006524
#>     Attrib V6    -0.14928049588939135
#>     Attrib V60    0.2216671844575947
#>     Attrib V7    -0.022540841827739185
#>     Attrib V8    0.22486244794534424
#>     Attrib V9    0.454703600438041
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.23125668123999996
#>     Attrib V1    -0.06311600981097219
#>     Attrib V10    -0.030955695171684013
#>     Attrib V11    -0.1615367370038638
#>     Attrib V12    -0.11934165326776636
#>     Attrib V13    0.007768311416576723
#>     Attrib V14    0.1168771324074931
#>     Attrib V15    0.2451123242385451
#>     Attrib V16    0.2926686935736928
#>     Attrib V17    0.1648073449789484
#>     Attrib V18    0.0021242781273805383
#>     Attrib V19    0.14472941860592484
#>     Attrib V2    0.07680202980177257
#>     Attrib V20    -0.06081218680374196
#>     Attrib V21    -0.03150184261754212
#>     Attrib V22    0.0293496526266965
#>     Attrib V23    -0.035529123029292016
#>     Attrib V24    -0.13877744751994833
#>     Attrib V25    0.11698736216286182
#>     Attrib V26    0.11542951143742412
#>     Attrib V27    0.06622893946863481
#>     Attrib V28    -0.1161112570850814
#>     Attrib V29    -0.015516329954322432
#>     Attrib V3    -0.02575623717345335
#>     Attrib V30    -0.0231011481522175
#>     Attrib V31    0.3055910963142731
#>     Attrib V32    0.043499703223553156
#>     Attrib V33    -0.048632783571395444
#>     Attrib V34    0.11031186566623158
#>     Attrib V35    0.07118072041460918
#>     Attrib V36    0.287601910465232
#>     Attrib V37    0.30801888389353554
#>     Attrib V38    -0.06515727389722162
#>     Attrib V39    0.07797092954147548
#>     Attrib V4    -0.13869457953786826
#>     Attrib V40    0.21175039266935117
#>     Attrib V41    -0.01839535233871524
#>     Attrib V42    0.12002790327544884
#>     Attrib V43    -0.022008678709719984
#>     Attrib V44    -0.09282103460310018
#>     Attrib V45    -0.12836475356067154
#>     Attrib V46    -0.10761420553592368
#>     Attrib V47    0.08188733173605131
#>     Attrib V48    -0.060605666102378546
#>     Attrib V49    -0.22274630521172403
#>     Attrib V5    -0.030376126388701415
#>     Attrib V50    0.25050171526080756
#>     Attrib V51    -0.03568682319740848
#>     Attrib V52    0.11108869091922437
#>     Attrib V53    -0.05067259074951255
#>     Attrib V54    -0.19088052808379294
#>     Attrib V55    0.01131024037800834
#>     Attrib V56    0.1652336834515335
#>     Attrib V57    0.09936495898028774
#>     Attrib V58    -0.009720093267012618
#>     Attrib V59    -0.03556022041456703
#>     Attrib V6    0.12827797573825084
#>     Attrib V60    0.008819252166354076
#>     Attrib V7    0.03791340339868322
#>     Attrib V8    -0.005637290307496858
#>     Attrib V9    -0.17767390207979314
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.23223216941990207
#>     Attrib V1    0.4594535011409265
#>     Attrib V10    -0.12859456483009374
#>     Attrib V11    -0.06805666222042057
#>     Attrib V12    -0.5337189670284195
#>     Attrib V13    -0.4229114854465633
#>     Attrib V14    -0.08663113300304061
#>     Attrib V15    0.05462919124339887
#>     Attrib V16    0.07833865923692784
#>     Attrib V17    0.3404582215126064
#>     Attrib V18    0.3756859909828724
#>     Attrib V19    -0.07970568044595722
#>     Attrib V2    0.006960156689873894
#>     Attrib V20    0.4912798815029475
#>     Attrib V21    0.40839207808150885
#>     Attrib V22    0.026354231858268906
#>     Attrib V23    0.0068233290940987856
#>     Attrib V24    0.1703838057324151
#>     Attrib V25    -0.5506339696446735
#>     Attrib V26    -0.5751008764309147
#>     Attrib V27    -0.7589624836314206
#>     Attrib V28    -0.3109440626481934
#>     Attrib V29    -0.6070375682033093
#>     Attrib V3    0.2396040421425718
#>     Attrib V30    0.06050107367944717
#>     Attrib V31    -0.8601729680926584
#>     Attrib V32    -0.2817168861985604
#>     Attrib V33    0.46818780758733497
#>     Attrib V34    0.0032450190516968534
#>     Attrib V35    -0.013446883487349653
#>     Attrib V36    -0.7468592537399901
#>     Attrib V37    -0.7445226311610309
#>     Attrib V38    0.2724540310467788
#>     Attrib V39    0.03698091283668898
#>     Attrib V4    0.6045691338881712
#>     Attrib V40    -0.20740541377195681
#>     Attrib V41    0.10928963714599255
#>     Attrib V42    0.14182195937266978
#>     Attrib V43    0.15968243993465828
#>     Attrib V44    0.1460922919248625
#>     Attrib V45    0.07268020949733711
#>     Attrib V46    -0.11909089032431364
#>     Attrib V47    -0.7230555171753292
#>     Attrib V48    0.04257744488948175
#>     Attrib V49    0.39421849238761375
#>     Attrib V5    0.09635372082804489
#>     Attrib V50    -0.792263525764772
#>     Attrib V51    -0.15729042105204646
#>     Attrib V52    -0.5404452307851346
#>     Attrib V53    0.5273134800819175
#>     Attrib V54    1.0245108352892733
#>     Attrib V55    0.15617125137534527
#>     Attrib V56    0.19356820779522027
#>     Attrib V57    0.024557235326792243
#>     Attrib V58    0.4578972225445712
#>     Attrib V59    0.8008418072892375
#>     Attrib V6    -0.10460303936411032
#>     Attrib V60    0.3657111425799309
#>     Attrib V7    0.21971656063193537
#>     Attrib V8    0.43453554353538293
#>     Attrib V9    0.3909116922810266
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    1.3676503129318374E-4
#>     Attrib V1    0.2415724155910912
#>     Attrib V10    -0.07999665230464556
#>     Attrib V11    -0.003916878519457926
#>     Attrib V12    -0.17376613315199854
#>     Attrib V13    -0.2005825973131575
#>     Attrib V14    0.06036425366681516
#>     Attrib V15    0.07651567576093006
#>     Attrib V16    0.08448438812743883
#>     Attrib V17    0.1461272176635617
#>     Attrib V18    0.27422627318339443
#>     Attrib V19    -0.06305036988791834
#>     Attrib V2    -0.014459578176956821
#>     Attrib V20    0.23654431392042238
#>     Attrib V21    0.20468725095182252
#>     Attrib V22    -0.04934036126138699
#>     Attrib V23    -0.0019163420854675292
#>     Attrib V24    0.015154593685127846
#>     Attrib V25    -0.337160433292231
#>     Attrib V26    -0.3367186017145714
#>     Attrib V27    -0.373473882310702
#>     Attrib V28    -0.11899240371186195
#>     Attrib V29    -0.26483563430968526
#>     Attrib V3    0.19014461493842147
#>     Attrib V30    0.024541676279268596
#>     Attrib V31    -0.47255079389301113
#>     Attrib V32    -0.1492376920164164
#>     Attrib V33    0.22532214276590562
#>     Attrib V34    -0.004979400818711469
#>     Attrib V35    0.010068441034674478
#>     Attrib V36    -0.27666814678898194
#>     Attrib V37    -0.3244033952291902
#>     Attrib V38    0.08862032794989941
#>     Attrib V39    0.04302857639800258
#>     Attrib V4    0.33916277680384116
#>     Attrib V40    -0.1524470042915884
#>     Attrib V41    -0.010653445139244244
#>     Attrib V42    0.016874796374773838
#>     Attrib V43    0.001259782868496415
#>     Attrib V44    0.0654505983925126
#>     Attrib V45    0.0783695875580335
#>     Attrib V46    -0.033606234266603946
#>     Attrib V47    -0.34294007264141696
#>     Attrib V48    -0.021011283501660778
#>     Attrib V49    0.23216746952436285
#>     Attrib V5    0.11740349870542797
#>     Attrib V50    -0.34962007777356835
#>     Attrib V51    -0.0551827334355198
#>     Attrib V52    -0.1822487749581862
#>     Attrib V53    0.24997907599236194
#>     Attrib V54    0.399143452613018
#>     Attrib V55    0.14613020996611897
#>     Attrib V56    0.09615933070334608
#>     Attrib V57    0.034617708457986
#>     Attrib V58    0.32172139941054045
#>     Attrib V59    0.38373625922563837
#>     Attrib V6    -0.04153257195705894
#>     Attrib V60    0.2209536290059264
#>     Attrib V7    0.061457718447765576
#>     Attrib V8    0.20737877174879027
#>     Attrib V9    0.20776101870609306
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
