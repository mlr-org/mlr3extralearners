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
#>     Threshold    0.19025148455173746
#>     Node 2    1.4221927142628694
#>     Node 3    1.470465581680615
#>     Node 4    0.6885421019476735
#>     Node 5    -0.23677085926745164
#>     Node 6    1.8792049247231164
#>     Node 7    1.3191712627334558
#>     Node 8    1.2910873777839271
#>     Node 9    3.7780639160492058
#>     Node 10    -1.3522638235005844
#>     Node 11    1.505340341525307
#>     Node 12    1.570979670244038
#>     Node 13    1.4753180081552446
#>     Node 14    1.7966023642968638
#>     Node 15    -1.7538760637236086
#>     Node 16    -0.16402219910249438
#>     Node 17    0.3724029413771336
#>     Node 18    0.4946495958883786
#>     Node 19    1.5922444019737838
#>     Node 20    2.173136486550563
#>     Node 21    -2.760997986027659
#>     Node 22    0.9941042626525154
#>     Node 23    2.0351639111433677
#>     Node 24    -3.520104140184945
#>     Node 25    3.7504264122961795
#>     Node 26    0.206593788621615
#>     Node 27    1.3918814689141903
#>     Node 28    -4.387454526669616
#>     Node 29    1.24937721618055
#>     Node 30    0.11541205747452919
#>     Node 31    2.0381049247183127
#>     Node 32    0.6142203654175117
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.17656955493561569
#>     Node 2    -1.4782003812321807
#>     Node 3    -1.457214235897067
#>     Node 4    -0.6438853765085313
#>     Node 5    0.2478737047188503
#>     Node 6    -1.864523037247817
#>     Node 7    -1.2981671398151902
#>     Node 8    -1.3159308492382065
#>     Node 9    -3.791496660015682
#>     Node 10    1.3075396123451017
#>     Node 11    -1.4753972442335825
#>     Node 12    -1.6506416080183162
#>     Node 13    -1.423165595740892
#>     Node 14    -1.7350651285178704
#>     Node 15    1.7721182682597045
#>     Node 16    0.14898852397754264
#>     Node 17    -0.3351195656580159
#>     Node 18    -0.4501430953361649
#>     Node 19    -1.5865208606583032
#>     Node 20    -2.160032978677551
#>     Node 21    2.807636666081266
#>     Node 22    -1.0447884413761435
#>     Node 23    -2.088975573734031
#>     Node 24    3.5165474434073007
#>     Node 25    -3.7457977707597307
#>     Node 26    -0.28620268846453806
#>     Node 27    -1.4294714729638884
#>     Node 28    4.3520620625580255
#>     Node 29    -1.2837625885907487
#>     Node 30    -0.036330309361332344
#>     Node 31    -1.9899258176263015
#>     Node 32    -0.6291395216134407
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.09677708924037477
#>     Attrib V1    0.570916831128967
#>     Attrib V10    -0.3978861548808843
#>     Attrib V11    -0.3228233371619924
#>     Attrib V12    -0.44043726568544983
#>     Attrib V13    -0.13850041890907414
#>     Attrib V14    0.08093563945730761
#>     Attrib V15    0.40175586263128915
#>     Attrib V16    0.33142189644652714
#>     Attrib V17    0.01525472025054654
#>     Attrib V18    1.1483258936613874E-4
#>     Attrib V19    0.2671896629949338
#>     Attrib V2    0.43754990768092455
#>     Attrib V20    0.211000360475546
#>     Attrib V21    0.18452648050742496
#>     Attrib V22    0.12961148062273978
#>     Attrib V23    -0.09804002626087602
#>     Attrib V24    0.20616552953275763
#>     Attrib V25    -0.3724896559582199
#>     Attrib V26    -0.7393549479760734
#>     Attrib V27    -0.8218445354516564
#>     Attrib V28    -0.567629997537087
#>     Attrib V29    -0.28898630060230324
#>     Attrib V3    0.0622405755253321
#>     Attrib V30    0.07210839749875467
#>     Attrib V31    -0.7573470743413996
#>     Attrib V32    0.13383710819382316
#>     Attrib V33    0.35311648902589204
#>     Attrib V34    0.027139548815951195
#>     Attrib V35    -0.3234722509113235
#>     Attrib V36    -0.5985374580656945
#>     Attrib V37    -0.24377932320375229
#>     Attrib V38    0.26138499914868235
#>     Attrib V39    0.05729091606333267
#>     Attrib V4    -0.1668477505353218
#>     Attrib V40    -0.17247530466915015
#>     Attrib V41    0.14014071878693798
#>     Attrib V42    0.2774313641742008
#>     Attrib V43    -0.16034825797299668
#>     Attrib V44    0.14455513097314324
#>     Attrib V45    0.15714191261964863
#>     Attrib V46    -0.010835018966007345
#>     Attrib V47    -0.24213445643982326
#>     Attrib V48    0.045169176948017024
#>     Attrib V49    0.07594662453676129
#>     Attrib V5    -0.3664190818059513
#>     Attrib V50    -0.6750657659047051
#>     Attrib V51    0.11187218946649193
#>     Attrib V52    0.09026400435665997
#>     Attrib V53    0.13726313799768994
#>     Attrib V54    0.4873671987931088
#>     Attrib V55    -0.025735402310005578
#>     Attrib V56    0.48931663177913365
#>     Attrib V57    0.17448233172712796
#>     Attrib V58    0.5940974479864952
#>     Attrib V59    0.6731138069622978
#>     Attrib V6    -0.10514385059633215
#>     Attrib V60    0.41808032219964153
#>     Attrib V7    0.25594945383072026
#>     Attrib V8    -0.036658084896211134
#>     Attrib V9    0.07720777441301054
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.04868182665300857
#>     Attrib V1    0.5328081136609674
#>     Attrib V10    -0.3736751163750132
#>     Attrib V11    -0.3058941688084061
#>     Attrib V12    -0.40724229185619526
#>     Attrib V13    -0.10412570855378252
#>     Attrib V14    0.024259428127433477
#>     Attrib V15    0.44061732063964465
#>     Attrib V16    0.30298893907126306
#>     Attrib V17    -0.01899860794078817
#>     Attrib V18    -0.09664991931731044
#>     Attrib V19    0.29263453757635416
#>     Attrib V2    0.4362036648781478
#>     Attrib V20    0.1632719853754576
#>     Attrib V21    0.11928372242700001
#>     Attrib V22    0.18102819430610362
#>     Attrib V23    -0.06500283160864384
#>     Attrib V24    0.22492246078708497
#>     Attrib V25    -0.31567704014804254
#>     Attrib V26    -0.6815582811940526
#>     Attrib V27    -0.8100366516692447
#>     Attrib V28    -0.6015495344547707
#>     Attrib V29    -0.3818783931001497
#>     Attrib V3    0.0038840111937616124
#>     Attrib V30    0.09797402634144532
#>     Attrib V31    -0.6777220375220206
#>     Attrib V32    0.19769195693021813
#>     Attrib V33    0.4049199654648478
#>     Attrib V34    0.01913206621944197
#>     Attrib V35    -0.28555043695065535
#>     Attrib V36    -0.6164960610905706
#>     Attrib V37    -0.2823648164970071
#>     Attrib V38    0.14894732892552282
#>     Attrib V39    0.04000718183352964
#>     Attrib V4    -0.1757668883126064
#>     Attrib V40    -0.20154066348308108
#>     Attrib V41    0.10715411279415303
#>     Attrib V42    0.21819492585865854
#>     Attrib V43    -0.1976408370630912
#>     Attrib V44    0.18186888766807768
#>     Attrib V45    0.19603609470252698
#>     Attrib V46    0.024571865790276284
#>     Attrib V47    -0.16713064976970773
#>     Attrib V48    0.05200833994072419
#>     Attrib V49    0.11957589354950489
#>     Attrib V5    -0.4206384235936829
#>     Attrib V50    -0.6692852345729831
#>     Attrib V51    0.08935905088056906
#>     Attrib V52    0.09699496059875794
#>     Attrib V53    0.07998319674072689
#>     Attrib V54    0.5543888173387174
#>     Attrib V55    0.015637943147796714
#>     Attrib V56    0.511635323576499
#>     Attrib V57    0.18839801389519456
#>     Attrib V58    0.6928048303484237
#>     Attrib V59    0.6578710819898372
#>     Attrib V6    -0.0912282416398317
#>     Attrib V60    0.3614004854348524
#>     Attrib V7    0.25818593484188007
#>     Attrib V8    -0.015818578980952562
#>     Attrib V9    0.11214634642627953
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.10463302148666036
#>     Attrib V1    0.2718965284625955
#>     Attrib V10    -0.18046074162497602
#>     Attrib V11    -0.12371275457804941
#>     Attrib V12    -0.2015876488818851
#>     Attrib V13    -0.03907337183122783
#>     Attrib V14    0.1009665523247862
#>     Attrib V15    0.25514047531296496
#>     Attrib V16    0.13059589706222755
#>     Attrib V17    -0.03743280371687615
#>     Attrib V18    -0.08487453735689758
#>     Attrib V19    0.07587821562212507
#>     Attrib V2    0.17361787686540106
#>     Attrib V20    0.05033951830766798
#>     Attrib V21    0.050718840037482595
#>     Attrib V22    -0.08084807829799734
#>     Attrib V23    -0.15530781909206012
#>     Attrib V24    0.006501700148292908
#>     Attrib V25    -0.25214948700081163
#>     Attrib V26    -0.2935449310700123
#>     Attrib V27    -0.31978483595108137
#>     Attrib V28    -0.16480589335393186
#>     Attrib V29    -0.04909110568854444
#>     Attrib V3    0.05478740611063321
#>     Attrib V30    0.06024719384351189
#>     Attrib V31    -0.28398831542049285
#>     Attrib V32    0.010136501501616933
#>     Attrib V33    0.1463322280306784
#>     Attrib V34    0.08931989859599544
#>     Attrib V35    0.011425004849777974
#>     Attrib V36    -0.186653551926084
#>     Attrib V37    -0.06057107535052285
#>     Attrib V38    0.08704141012974015
#>     Attrib V39    0.04589465911686592
#>     Attrib V4    -0.04503598611364779
#>     Attrib V40    -0.10850181329296398
#>     Attrib V41    -0.032262343363971394
#>     Attrib V42    0.04319157452864913
#>     Attrib V43    -0.11202714540855242
#>     Attrib V44    0.12150576930883061
#>     Attrib V45    0.21565512463249656
#>     Attrib V46    0.03230302746116611
#>     Attrib V47    -0.07401585413466232
#>     Attrib V48    0.08806038834469947
#>     Attrib V49    0.09455917186438859
#>     Attrib V5    -0.11123134245964211
#>     Attrib V50    -0.2715346167606775
#>     Attrib V51    0.10858553395980235
#>     Attrib V52    0.08421076247234002
#>     Attrib V53    0.16003324524649523
#>     Attrib V54    0.19509157167386576
#>     Attrib V55    0.07154411301127632
#>     Attrib V56    0.20843766884369447
#>     Attrib V57    0.1913761105504972
#>     Attrib V58    0.33286436209812126
#>     Attrib V59    0.37557803174846965
#>     Attrib V6    -0.0945421223893635
#>     Attrib V60    0.2127385034427217
#>     Attrib V7    0.0660917890663418
#>     Attrib V8    -0.04482483982301662
#>     Attrib V9    0.11140377304474346
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.18110658686763442
#>     Attrib V1    0.023608062153162284
#>     Attrib V10    0.07122779475746532
#>     Attrib V11    0.02902410009173357
#>     Attrib V12    -0.04797327706879047
#>     Attrib V13    -0.044079603929299334
#>     Attrib V14    0.08189720338786367
#>     Attrib V15    0.09740315140727741
#>     Attrib V16    0.08640891181259085
#>     Attrib V17    0.19238790823164403
#>     Attrib V18    0.15194689999499614
#>     Attrib V19    -0.031749946281313265
#>     Attrib V2    0.11615427196322403
#>     Attrib V20    -0.03331141612868554
#>     Attrib V21    0.030167722961045054
#>     Attrib V22    0.028471193890542167
#>     Attrib V23    0.08099247878786003
#>     Attrib V24    -0.11987259376307575
#>     Attrib V25    -0.012655908447340236
#>     Attrib V26    -0.07946546017458302
#>     Attrib V27    -0.09933233469013053
#>     Attrib V28    -0.14087621016711205
#>     Attrib V29    -0.05461300012653128
#>     Attrib V3    0.1867806713033257
#>     Attrib V30    0.01349149826139237
#>     Attrib V31    0.14029840647686462
#>     Attrib V32    0.041802090556858205
#>     Attrib V33    0.06338501820477813
#>     Attrib V34    0.06279082006436239
#>     Attrib V35    0.16230590462909958
#>     Attrib V36    0.2716865594728553
#>     Attrib V37    0.1968216837078993
#>     Attrib V38    0.023532743711234618
#>     Attrib V39    -0.002865116469180016
#>     Attrib V4    0.09173641646783152
#>     Attrib V40    0.15762615232442323
#>     Attrib V41    0.06801754289384519
#>     Attrib V42    0.128899258135416
#>     Attrib V43    0.10376097444755064
#>     Attrib V44    0.0021132085162215764
#>     Attrib V45    -0.06506228371261068
#>     Attrib V46    -0.051309983461792434
#>     Attrib V47    0.03287035435519774
#>     Attrib V48    -0.02023173839876694
#>     Attrib V49    -0.048339729211724046
#>     Attrib V5    0.14586234156147676
#>     Attrib V50    0.2142239282119463
#>     Attrib V51    0.01622243969704986
#>     Attrib V52    -0.008831023517507579
#>     Attrib V53    -0.011369327208346103
#>     Attrib V54    -0.028645094714914544
#>     Attrib V55    0.09245631276929664
#>     Attrib V56    0.10171312443162596
#>     Attrib V57    0.09275925356372676
#>     Attrib V58    -0.060263391706788724
#>     Attrib V59    -0.06202209380735839
#>     Attrib V6    0.10681827094851376
#>     Attrib V60    0.04668541195364836
#>     Attrib V7    0.0732205864785618
#>     Attrib V8    0.10407574847566939
#>     Attrib V9    -0.060740137659822904
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.01905603447264564
#>     Attrib V1    0.6071723310371576
#>     Attrib V10    -0.4679021361173365
#>     Attrib V11    -0.3261235709251677
#>     Attrib V12    -0.4579823917314727
#>     Attrib V13    -0.17882025611911653
#>     Attrib V14    -0.08259803522211688
#>     Attrib V15    0.40021278847987035
#>     Attrib V16    0.3940721515740725
#>     Attrib V17    -0.0360731190790436
#>     Attrib V18    -0.03068143426995892
#>     Attrib V19    0.400660854016574
#>     Attrib V2    0.5237256331008411
#>     Attrib V20    0.20200185756332806
#>     Attrib V21    0.1640806732631524
#>     Attrib V22    0.21339567872033804
#>     Attrib V23    0.004611203341848442
#>     Attrib V24    0.47622252008790944
#>     Attrib V25    -0.2157655002459013
#>     Attrib V26    -0.7266294282127553
#>     Attrib V27    -0.9604476387481643
#>     Attrib V28    -0.817078594835526
#>     Attrib V29    -0.5320783482147932
#>     Attrib V3    -0.010279316708293284
#>     Attrib V30    0.0842331984355249
#>     Attrib V31    -0.9371435478840012
#>     Attrib V32    0.23822850948135907
#>     Attrib V33    0.6267239384030845
#>     Attrib V34    0.17030371801445368
#>     Attrib V35    -0.3436347266367161
#>     Attrib V36    -0.8834050960729622
#>     Attrib V37    -0.464828204819463
#>     Attrib V38    0.1556932764918826
#>     Attrib V39    -0.00814525718721511
#>     Attrib V4    -0.2477806268734567
#>     Attrib V40    -0.24901509725087614
#>     Attrib V41    0.2877976070081839
#>     Attrib V42    0.43664283252814406
#>     Attrib V43    -0.2408755701966517
#>     Attrib V44    0.14587987281648676
#>     Attrib V45    0.27763749347080874
#>     Attrib V46    0.08455165943321799
#>     Attrib V47    -0.21814755789330856
#>     Attrib V48    0.1524242924398719
#>     Attrib V49    0.27135784217523884
#>     Attrib V5    -0.5376458318614686
#>     Attrib V50    -0.8563662545065348
#>     Attrib V51    0.17222046610512792
#>     Attrib V52    0.10559110951909409
#>     Attrib V53    0.15783116338023911
#>     Attrib V54    0.6286821539284994
#>     Attrib V55    -0.14040108368853593
#>     Attrib V56    0.6635701939304727
#>     Attrib V57    0.0926434053747538
#>     Attrib V58    0.8056725604404941
#>     Attrib V59    0.8200470495726017
#>     Attrib V6    -0.01716456505897792
#>     Attrib V60    0.49122634359910083
#>     Attrib V7    0.3203797179512924
#>     Attrib V8    -0.04770105994126943
#>     Attrib V9    0.25564582645410233
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.03747911153858853
#>     Attrib V1    0.45691762332395774
#>     Attrib V10    -0.2521722842418684
#>     Attrib V11    0.015115687469669785
#>     Attrib V12    -0.22976496002382302
#>     Attrib V13    0.06623563346278104
#>     Attrib V14    -0.24051952011893718
#>     Attrib V15    0.031882708080403284
#>     Attrib V16    0.01384370375951251
#>     Attrib V17    -0.1505462937938465
#>     Attrib V18    -0.039255800863723773
#>     Attrib V19    0.5137257699223252
#>     Attrib V2    0.34577311495868046
#>     Attrib V20    0.32077225728235204
#>     Attrib V21    0.3008061742028385
#>     Attrib V22    0.4651853279449584
#>     Attrib V23    0.287662908621029
#>     Attrib V24    0.5167174749376632
#>     Attrib V25    -0.11107881123939838
#>     Attrib V26    -0.22563271559265846
#>     Attrib V27    -0.5008825635408063
#>     Attrib V28    -0.37239430472547236
#>     Attrib V29    -0.22851353051633405
#>     Attrib V3    -0.1471109844602476
#>     Attrib V30    0.1629370264898315
#>     Attrib V31    -0.8760838653416979
#>     Attrib V32    0.05149815362964173
#>     Attrib V33    0.3717792462240373
#>     Attrib V34    0.2026490533726339
#>     Attrib V35    -0.00852425578035272
#>     Attrib V36    -0.47849440278408517
#>     Attrib V37    -0.110598648268091
#>     Attrib V38    0.351185790444295
#>     Attrib V39    0.10276957330329224
#>     Attrib V4    -0.2690705617810189
#>     Attrib V40    -0.2678489676758758
#>     Attrib V41    0.2236294977653903
#>     Attrib V42    0.1614709827448328
#>     Attrib V43    -0.180777785797479
#>     Attrib V44    0.43945981778332865
#>     Attrib V45    0.5040268298792158
#>     Attrib V46    0.32185869547673956
#>     Attrib V47    0.07347019253639182
#>     Attrib V48    0.30938647760465887
#>     Attrib V49    0.39751141809796864
#>     Attrib V5    -0.42299294397396664
#>     Attrib V50    -0.8193514982377776
#>     Attrib V51    0.29118131745384795
#>     Attrib V52    0.2816882566594456
#>     Attrib V53    -0.07801178607420386
#>     Attrib V54    0.5072322306437178
#>     Attrib V55    -0.3484600561158673
#>     Attrib V56    0.2628232839551633
#>     Attrib V57    -0.22197707112108953
#>     Attrib V58    0.5849766831353606
#>     Attrib V59    0.6319308145786267
#>     Attrib V6    -0.10227662827452876
#>     Attrib V60    0.3018962544131738
#>     Attrib V7    0.054163271194083186
#>     Attrib V8    -0.3146833808977695
#>     Attrib V9    0.41115193910402026
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.2292314564455449
#>     Attrib V1    0.33621519288685175
#>     Attrib V10    -0.1048228540407673
#>     Attrib V11    0.08507467220331434
#>     Attrib V12    -0.04538510683616813
#>     Attrib V13    0.14068533706279743
#>     Attrib V14    -0.2920076498918381
#>     Attrib V15    -0.08366477155666045
#>     Attrib V16    -0.08510473147192767
#>     Attrib V17    -0.23326782482867595
#>     Attrib V18    -0.200552584972599
#>     Attrib V19    0.24323645170951647
#>     Attrib V2    0.1158908793406119
#>     Attrib V20    0.009911016169919823
#>     Attrib V21    0.059677391146444485
#>     Attrib V22    0.08199533582462228
#>     Attrib V23    -0.13467661060039596
#>     Attrib V24    0.24264328643534966
#>     Attrib V25    -0.15686798931623164
#>     Attrib V26    0.09160134793677024
#>     Attrib V27    0.11608758322659608
#>     Attrib V28    0.31034852844333
#>     Attrib V29    0.2653944646174662
#>     Attrib V3    -0.267084733597944
#>     Attrib V30    0.45783066646345455
#>     Attrib V31    -0.5163937804286648
#>     Attrib V32    -0.039578420098455275
#>     Attrib V33    0.12213206150676009
#>     Attrib V34    0.14829798649552528
#>     Attrib V35    0.2341657863096679
#>     Attrib V36    -0.18954385712137786
#>     Attrib V37    -0.02613470855210266
#>     Attrib V38    0.30213823111789906
#>     Attrib V39    0.07661871915300249
#>     Attrib V4    -0.15909900023562917
#>     Attrib V40    -0.35801336627649816
#>     Attrib V41    0.06757341144218106
#>     Attrib V42    -0.16100992128041938
#>     Attrib V43    -0.13290352700265554
#>     Attrib V44    0.6163708841181903
#>     Attrib V45    0.6101497318912383
#>     Attrib V46    0.3608161025615579
#>     Attrib V47    0.12682529525497435
#>     Attrib V48    0.3733828404150439
#>     Attrib V49    0.34840718080629185
#>     Attrib V5    -0.19425350733502594
#>     Attrib V50    -0.7527027569923489
#>     Attrib V51    0.20334271181477995
#>     Attrib V52    0.2040660472088758
#>     Attrib V53    0.0907788609892423
#>     Attrib V54    0.35189780246311386
#>     Attrib V55    -0.31536210855012614
#>     Attrib V56    -0.08912240356314678
#>     Attrib V57    -0.09687116273813644
#>     Attrib V58    0.3580676296994592
#>     Attrib V59    0.6288467507177126
#>     Attrib V6    -0.0654681531556279
#>     Attrib V60    0.26030124720095005
#>     Attrib V7    -0.13194297214249373
#>     Attrib V8    -0.33534141179977783
#>     Attrib V9    0.40082267947518924
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.04941592541613911
#>     Attrib V1    -0.10198053917334622
#>     Attrib V10    0.5610276839349386
#>     Attrib V11    0.9685625331434485
#>     Attrib V12    1.3213857095541508
#>     Attrib V13    0.8918558355464723
#>     Attrib V14    -0.9350227484423497
#>     Attrib V15    -1.1253043680596582
#>     Attrib V16    -0.8766143823177611
#>     Attrib V17    -0.29285417077086956
#>     Attrib V18    0.06482640052156995
#>     Attrib V19    0.6109239441992238
#>     Attrib V2    -0.1393537841030926
#>     Attrib V20    -0.12331283414076026
#>     Attrib V21    -0.08811001875763663
#>     Attrib V22    0.38807249801349886
#>     Attrib V23    0.8022634034645748
#>     Attrib V24    1.2175708970489805
#>     Attrib V25    0.5738494775159234
#>     Attrib V26    1.115968914810996
#>     Attrib V27    1.2321119896709327
#>     Attrib V28    1.2723355768254865
#>     Attrib V29    0.26812955341304456
#>     Attrib V3    -0.5179879903516826
#>     Attrib V30    0.14413531066009783
#>     Attrib V31    -0.19751949722175088
#>     Attrib V32    0.15887199478508734
#>     Attrib V33    -0.44667167169854227
#>     Attrib V34    0.16012734421190658
#>     Attrib V35    0.77322999261234
#>     Attrib V36    -0.7206413954666253
#>     Attrib V37    -0.4465977639748101
#>     Attrib V38    -0.39437211037891445
#>     Attrib V39    0.04080416724899196
#>     Attrib V4    -0.054937433932256134
#>     Attrib V40    -0.2346086724036411
#>     Attrib V41    0.9254486637472852
#>     Attrib V42    -0.1821784756135266
#>     Attrib V43    0.01804028776823812
#>     Attrib V44    0.7183990569549848
#>     Attrib V45    0.7490704991170704
#>     Attrib V46    1.1900069363857697
#>     Attrib V47    1.3711165694719372
#>     Attrib V48    1.0981461967742834
#>     Attrib V49    0.8765536720453477
#>     Attrib V5    0.5495722285019305
#>     Attrib V50    -0.41489665489495703
#>     Attrib V51    1.3099920893004464
#>     Attrib V52    1.2502684006671556
#>     Attrib V53    0.6879504446992722
#>     Attrib V54    0.5689883595126489
#>     Attrib V55    -0.6025136020104703
#>     Attrib V56    -0.7654014337770862
#>     Attrib V57    -1.086727207018419
#>     Attrib V58    0.1558658033100801
#>     Attrib V59    0.18057084329592607
#>     Attrib V6    0.5679940198249911
#>     Attrib V60    -0.15457264620878125
#>     Attrib V7    -0.9718784644139186
#>     Attrib V8    -0.6823051156986637
#>     Attrib V9    1.0263500552913802
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.28033338497708066
#>     Attrib V1    0.008925396127528101
#>     Attrib V10    -0.01801742690576635
#>     Attrib V11    -0.3060836031394532
#>     Attrib V12    -0.45215240321872374
#>     Attrib V13    -0.44141080930305254
#>     Attrib V14    0.31347620917014507
#>     Attrib V15    0.10935104268547423
#>     Attrib V16    0.0927333596027762
#>     Attrib V17    -0.024542456548708985
#>     Attrib V18    0.05435841194168418
#>     Attrib V19    -0.2709049351222575
#>     Attrib V2    -0.009292191841527834
#>     Attrib V20    0.20890192201214794
#>     Attrib V21    0.1829503436972547
#>     Attrib V22    -0.06546827835700231
#>     Attrib V23    -0.012572367693104195
#>     Attrib V24    -0.5099702929528249
#>     Attrib V25    0.11739286230629951
#>     Attrib V26    0.2684859529841664
#>     Attrib V27    0.29492554153998135
#>     Attrib V28    0.09572345061400114
#>     Attrib V29    0.2529115302472896
#>     Attrib V3    0.27188717783648364
#>     Attrib V30    0.004733149781265977
#>     Attrib V31    0.44379201322942136
#>     Attrib V32    -0.4259711452459726
#>     Attrib V33    -0.28463237816364734
#>     Attrib V34    0.14736133267325066
#>     Attrib V35    0.6696195698748308
#>     Attrib V36    1.3969305520269135
#>     Attrib V37    1.020201252970304
#>     Attrib V38    0.42483007666514444
#>     Attrib V39    0.15939600483186572
#>     Attrib V4    0.16751261863846797
#>     Attrib V40    0.28951338560201584
#>     Attrib V41    -0.5213036382615359
#>     Attrib V42    -0.3193711003348656
#>     Attrib V43    0.24281589245531096
#>     Attrib V44    0.1017920448611134
#>     Attrib V45    0.08823763711261488
#>     Attrib V46    -0.21986154939878802
#>     Attrib V47    -0.14792600363875244
#>     Attrib V48    -0.40338385974467683
#>     Attrib V49    -0.31703998569251185
#>     Attrib V5    -0.06995087072371971
#>     Attrib V50    0.966334661886563
#>     Attrib V51    -0.4252666242661262
#>     Attrib V52    -0.27291737939476446
#>     Attrib V53    0.013093954139335078
#>     Attrib V54    -0.359385793589476
#>     Attrib V55    0.29880121094774353
#>     Attrib V56    0.11529733965411597
#>     Attrib V57    0.1608376054790122
#>     Attrib V58    -0.5118992916996018
#>     Attrib V59    -0.5117185028701101
#>     Attrib V6    -0.480664936328895
#>     Attrib V60    -0.0771281343068104
#>     Attrib V7    -0.13980971714173568
#>     Attrib V8    0.012319902558872399
#>     Attrib V9    -0.5527768990600577
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.04915746978490065
#>     Attrib V1    0.4853677810506773
#>     Attrib V10    -0.3738500092644059
#>     Attrib V11    -0.21917059095594646
#>     Attrib V12    -0.3364035700178861
#>     Attrib V13    -0.12401026292801262
#>     Attrib V14    -0.09771377939818648
#>     Attrib V15    0.29584267903795197
#>     Attrib V16    0.2460480695249655
#>     Attrib V17    0.005690988334238515
#>     Attrib V18    -0.03031078013231845
#>     Attrib V19    0.3298483399589023
#>     Attrib V2    0.37819157273538695
#>     Attrib V20    0.19945214977924944
#>     Attrib V21    0.11709799701811567
#>     Attrib V22    0.18492365612422806
#>     Attrib V23    0.007536614681937195
#>     Attrib V24    0.39337908991447196
#>     Attrib V25    -0.20085880814450427
#>     Attrib V26    -0.6172239155034555
#>     Attrib V27    -0.8188971393479083
#>     Attrib V28    -0.660822739840616
#>     Attrib V29    -0.46367334850381153
#>     Attrib V3    -0.08937480419642148
#>     Attrib V30    0.10471165000187499
#>     Attrib V31    -0.8122987010186965
#>     Attrib V32    0.16752404291158207
#>     Attrib V33    0.4878028864673386
#>     Attrib V34    0.1975114088284679
#>     Attrib V35    -0.20883664709142707
#>     Attrib V36    -0.6713517141796199
#>     Attrib V37    -0.40117857692884645
#>     Attrib V38    0.2064205069894201
#>     Attrib V39    -0.02534863545426031
#>     Attrib V4    -0.241829425278359
#>     Attrib V40    -0.27971307442946
#>     Attrib V41    0.10194335647442138
#>     Attrib V42    0.24583939379899997
#>     Attrib V43    -0.20015686003166897
#>     Attrib V44    0.25536209919345326
#>     Attrib V45    0.35778689106168005
#>     Attrib V46    0.09529631058113833
#>     Attrib V47    -0.11890325097331804
#>     Attrib V48    0.21581800300548393
#>     Attrib V49    0.2463797531112882
#>     Attrib V5    -0.43377586835736154
#>     Attrib V50    -0.7977693891304791
#>     Attrib V51    0.22837973000043557
#>     Attrib V52    0.10595946455227458
#>     Attrib V53    0.07239720970805394
#>     Attrib V54    0.5972668638544784
#>     Attrib V55    -0.1111060280985744
#>     Attrib V56    0.4867320353171427
#>     Attrib V57    0.07113970184795537
#>     Attrib V58    0.7009461353033628
#>     Attrib V59    0.6450613989530012
#>     Attrib V6    -0.06489363289386196
#>     Attrib V60    0.3677160583244761
#>     Attrib V7    0.1981521602657265
#>     Attrib V8    -0.0725831675435387
#>     Attrib V9    0.24337159304221542
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.0010910533132221505
#>     Attrib V1    0.563011520104486
#>     Attrib V10    -0.4802400769016755
#>     Attrib V11    -0.29498953935418815
#>     Attrib V12    -0.5301822071199775
#>     Attrib V13    -0.17442578104586232
#>     Attrib V14    0.05773289128026149
#>     Attrib V15    0.43580857994668615
#>     Attrib V16    0.39579242731700887
#>     Attrib V17    -0.00779778728180075
#>     Attrib V18    -0.0624985705954673
#>     Attrib V19    0.33831491983326506
#>     Attrib V2    0.5001214477821994
#>     Attrib V20    0.17746400196145024
#>     Attrib V21    0.15861822199963901
#>     Attrib V22    0.21188991368913324
#>     Attrib V23    -0.05164509288082484
#>     Attrib V24    0.20597365129292136
#>     Attrib V25    -0.4231196606781889
#>     Attrib V26    -0.7796179929296239
#>     Attrib V27    -0.8363976563293241
#>     Attrib V28    -0.6425995282932379
#>     Attrib V29    -0.2649681007223552
#>     Attrib V3    -0.02973533701514991
#>     Attrib V30    0.08417443705055754
#>     Attrib V31    -0.8041829955362082
#>     Attrib V32    0.11195478086357662
#>     Attrib V33    0.4402530666562706
#>     Attrib V34    0.06592971260112464
#>     Attrib V35    -0.33251303617586964
#>     Attrib V36    -0.6528536024927983
#>     Attrib V37    -0.2819850897226048
#>     Attrib V38    0.24073335593017686
#>     Attrib V39    0.0010184266967334361
#>     Attrib V4    -0.14385546681319253
#>     Attrib V40    -0.18070184759935806
#>     Attrib V41    0.1314261572094141
#>     Attrib V42    0.23719244421804014
#>     Attrib V43    -0.15837058232261605
#>     Attrib V44    0.1264109723308123
#>     Attrib V45    0.23981043674416452
#>     Attrib V46    0.08512111871956046
#>     Attrib V47    -0.23841486122209007
#>     Attrib V48    0.08962821751135738
#>     Attrib V49    0.10568379015461252
#>     Attrib V5    -0.42102995193942977
#>     Attrib V50    -0.7485994378915524
#>     Attrib V51    0.1179551122816178
#>     Attrib V52    0.11137551408167574
#>     Attrib V53    0.14648516338379072
#>     Attrib V54    0.5163449308695593
#>     Attrib V55    -0.06703351017269508
#>     Attrib V56    0.5491332936706302
#>     Attrib V57    0.26071922074028536
#>     Attrib V58    0.7265810327676954
#>     Attrib V59    0.7367139615923394
#>     Attrib V6    -0.09579920537962162
#>     Attrib V60    0.42007005144881704
#>     Attrib V7    0.31780537663466013
#>     Attrib V8    -0.025292276459365427
#>     Attrib V9    0.12427322434247555
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.13032775125077428
#>     Attrib V1    0.508924083880938
#>     Attrib V10    -0.4271900679431233
#>     Attrib V11    -0.31430105273708264
#>     Attrib V12    -0.4459252918191329
#>     Attrib V13    -0.07638262566570904
#>     Attrib V14    0.0070391110823919655
#>     Attrib V15    0.3618349369653793
#>     Attrib V16    0.29085682685097025
#>     Attrib V17    0.027671260612284244
#>     Attrib V18    -0.02093372328672845
#>     Attrib V19    0.3057549262768571
#>     Attrib V2    0.41660665317855605
#>     Attrib V20    0.2175511144405596
#>     Attrib V21    0.16967359994718928
#>     Attrib V22    0.1650064284299679
#>     Attrib V23    0.013780464721054457
#>     Attrib V24    0.295177173615183
#>     Attrib V25    -0.2654352590305492
#>     Attrib V26    -0.7094806742258225
#>     Attrib V27    -0.791915690216395
#>     Attrib V28    -0.6497053038801475
#>     Attrib V29    -0.3358833249518694
#>     Attrib V3    0.06140032827074684
#>     Attrib V30    0.07295957744512402
#>     Attrib V31    -0.8030629963044391
#>     Attrib V32    0.1178724348169111
#>     Attrib V33    0.40510701533907056
#>     Attrib V34    0.11850782493179689
#>     Attrib V35    -0.2995382933158951
#>     Attrib V36    -0.6257074223633241
#>     Attrib V37    -0.2567227679447578
#>     Attrib V38    0.20621774520099884
#>     Attrib V39    0.08315410417950495
#>     Attrib V4    -0.16328771655757346
#>     Attrib V40    -0.17244004657649803
#>     Attrib V41    0.15459930078821277
#>     Attrib V42    0.2881551096319706
#>     Attrib V43    -0.22203974283468061
#>     Attrib V44    0.1276333708200194
#>     Attrib V45    0.1825393101328202
#>     Attrib V46    0.07086425269232773
#>     Attrib V47    -0.15785570874601096
#>     Attrib V48    0.07074944614587646
#>     Attrib V49    0.19087059594047498
#>     Attrib V5    -0.391409117533392
#>     Attrib V50    -0.7008409292313449
#>     Attrib V51    0.10812569691001951
#>     Attrib V52    0.0737382349380494
#>     Attrib V53    0.12112368890618558
#>     Attrib V54    0.4820314462259957
#>     Attrib V55    -0.0794102778947652
#>     Attrib V56    0.5028740185306574
#>     Attrib V57    0.17880671456683864
#>     Attrib V58    0.628561371884266
#>     Attrib V59    0.6895722054943032
#>     Attrib V6    -0.04572282912790025
#>     Attrib V60    0.45145650477404226
#>     Attrib V7    0.2884788952428466
#>     Attrib V8    -0.0992356563443466
#>     Attrib V9    0.11685006891569677
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.0058444395354202445
#>     Attrib V1    0.6575558592699782
#>     Attrib V10    -0.39016044225247337
#>     Attrib V11    -0.18591096124995196
#>     Attrib V12    -0.3932054815388676
#>     Attrib V13    -0.16153914326260846
#>     Attrib V14    -0.12301411152354327
#>     Attrib V15    0.42231135952694354
#>     Attrib V16    0.3086871569124496
#>     Attrib V17    -0.017614272652798132
#>     Attrib V18    -0.08795690327778506
#>     Attrib V19    0.2770219141042442
#>     Attrib V2    0.4397640620908648
#>     Attrib V20    0.11013711253879918
#>     Attrib V21    0.11045903686149235
#>     Attrib V22    0.19489997518873445
#>     Attrib V23    -0.013279629969001694
#>     Attrib V24    0.3572171053923117
#>     Attrib V25    -0.27168696237514756
#>     Attrib V26    -0.6356641717342663
#>     Attrib V27    -0.9186918147784353
#>     Attrib V28    -0.7909018810276295
#>     Attrib V29    -0.5355033634155261
#>     Attrib V3    -0.14226196786257148
#>     Attrib V30    0.09619336548210553
#>     Attrib V31    -0.7735493485165447
#>     Attrib V32    0.28450789513081276
#>     Attrib V33    0.5510347794564853
#>     Attrib V34    0.1333836347525243
#>     Attrib V35    -0.25855125721277156
#>     Attrib V36    -0.7781290406589498
#>     Attrib V37    -0.402296329418743
#>     Attrib V38    0.12619749888605852
#>     Attrib V39    -0.02306119542063504
#>     Attrib V4    -0.26369062693450274
#>     Attrib V40    -0.3205503763502034
#>     Attrib V41    0.07113069868267508
#>     Attrib V42    0.14449528433637718
#>     Attrib V43    -0.2580360906012752
#>     Attrib V44    0.30552039151383553
#>     Attrib V45    0.2770871314865411
#>     Attrib V46    0.12429412113547095
#>     Attrib V47    -0.18512133327464
#>     Attrib V48    0.243954021408433
#>     Attrib V49    0.3081570395918222
#>     Attrib V5    -0.5591841074280723
#>     Attrib V50    -0.8790910964460419
#>     Attrib V51    0.13440370835357654
#>     Attrib V52    0.06681844933152271
#>     Attrib V53    0.027249134177599464
#>     Attrib V54    0.6610201971740179
#>     Attrib V55    -0.037914602255737624
#>     Attrib V56    0.5860474848503613
#>     Attrib V57    0.1342175251559687
#>     Attrib V58    0.8146842773929069
#>     Attrib V59    0.7603280504086263
#>     Attrib V6    -0.09247512303873372
#>     Attrib V60    0.4730105640352545
#>     Attrib V7    0.3420736211011383
#>     Attrib V8    -0.118316139473688
#>     Attrib V9    0.2631752983806755
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.34447421566010644
#>     Attrib V1    0.008652068585494402
#>     Attrib V10    -0.16336017365873343
#>     Attrib V11    -0.5515674666281085
#>     Attrib V12    -0.7076509941184006
#>     Attrib V13    -0.7074196060853405
#>     Attrib V14    0.30412396322890856
#>     Attrib V15    0.251338682513417
#>     Attrib V16    0.05740739868605541
#>     Attrib V17    -0.10030412262517303
#>     Attrib V18    -0.05656140446445054
#>     Attrib V19    -0.2751750811069042
#>     Attrib V2    0.053938717078846135
#>     Attrib V20    0.23616917694829626
#>     Attrib V21    0.13421994136156082
#>     Attrib V22    -0.030179146024333678
#>     Attrib V23    0.06090104912929911
#>     Attrib V24    -0.3488124848769212
#>     Attrib V25    0.22045623207723825
#>     Attrib V26    0.3308237163531263
#>     Attrib V27    0.2792979794810888
#>     Attrib V28    0.07578422124269461
#>     Attrib V29    0.44096677873837925
#>     Attrib V3    0.3761246789436035
#>     Attrib V30    -0.04015333733283504
#>     Attrib V31    0.4523086945898339
#>     Attrib V32    -0.3618511941549439
#>     Attrib V33    -0.4163246524997076
#>     Attrib V34    0.2088023349096337
#>     Attrib V35    0.8395690270663652
#>     Attrib V36    1.6688930912461415
#>     Attrib V37    1.333726175099104
#>     Attrib V38    0.5160805577974862
#>     Attrib V39    0.20278501619543488
#>     Attrib V4    0.2003799304197118
#>     Attrib V40    0.23180185078623497
#>     Attrib V41    -0.6936399359784019
#>     Attrib V42    -0.4064229419680815
#>     Attrib V43    0.25956371421338587
#>     Attrib V44    0.19517538934842218
#>     Attrib V45    0.17067303720492613
#>     Attrib V46    -0.1423624283241613
#>     Attrib V47    -0.11977058589089205
#>     Attrib V48    -0.38671630616255215
#>     Attrib V49    -0.279318093701653
#>     Attrib V5    -0.19869862127771665
#>     Attrib V50    1.069474066405312
#>     Attrib V51    -0.3678026763748943
#>     Attrib V52    -0.19800083569665955
#>     Attrib V53    0.20127850038433034
#>     Attrib V54    -0.4027068514285593
#>     Attrib V55    0.33496805153959236
#>     Attrib V56    0.2854283061218291
#>     Attrib V57    0.07766606519094804
#>     Attrib V58    -0.4389306423539261
#>     Attrib V59    -0.49748661131377364
#>     Attrib V6    -0.6852912416905826
#>     Attrib V60    -0.06612781265055062
#>     Attrib V7    -0.30508976146546546
#>     Attrib V8    -0.1274660317706168
#>     Attrib V9    -0.7138802763550426
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.22763740377167277
#>     Attrib V1    -0.004828050167220794
#>     Attrib V10    0.056038187820918794
#>     Attrib V11    -0.04132267036343626
#>     Attrib V12    -0.0624960331158451
#>     Attrib V13    -0.022108405291277052
#>     Attrib V14    0.0464504541849037
#>     Attrib V15    0.0395372557939698
#>     Attrib V16    0.13614721577177777
#>     Attrib V17    0.1617071532628644
#>     Attrib V18    0.1440858948122605
#>     Attrib V19    -0.016030968702163667
#>     Attrib V2    0.026447744752496175
#>     Attrib V20    -0.03233219139596696
#>     Attrib V21    -0.032402399238486666
#>     Attrib V22    -0.004414663179300993
#>     Attrib V23    9.583599024464795E-4
#>     Attrib V24    -0.05112919325346347
#>     Attrib V25    0.004802618317847688
#>     Attrib V26    -0.07846155013093062
#>     Attrib V27    -0.08858126469775025
#>     Attrib V28    -0.07135854479692973
#>     Attrib V29    -0.06874902231298757
#>     Attrib V3    0.17751754925412555
#>     Attrib V30    -0.03818465174484982
#>     Attrib V31    0.0764396239111741
#>     Attrib V32    0.032188321626336745
#>     Attrib V33    0.03466810156060634
#>     Attrib V34    0.07530757700462197
#>     Attrib V35    0.08571215249631874
#>     Attrib V36    0.21020894105119275
#>     Attrib V37    0.23599965224952688
#>     Attrib V38    0.07789292508186094
#>     Attrib V39    0.0388391897952779
#>     Attrib V4    0.1361049053082363
#>     Attrib V40    0.10971278542542609
#>     Attrib V41    0.09536453306139041
#>     Attrib V42    0.1319014733650786
#>     Attrib V43    0.06133967408000601
#>     Attrib V44    -0.06932848023998862
#>     Attrib V45    -0.0216310582656849
#>     Attrib V46    0.01027284863955476
#>     Attrib V47    0.028714025627228933
#>     Attrib V48    -0.053586752575300316
#>     Attrib V49    -0.07056459473274594
#>     Attrib V5    0.11735003174417202
#>     Attrib V50    0.20852066614982803
#>     Attrib V51    0.060323425529370776
#>     Attrib V52    0.05602580315141605
#>     Attrib V53    0.07075581170034512
#>     Attrib V54    -0.06835011015954291
#>     Attrib V55    0.07036361657488018
#>     Attrib V56    0.08908751340761972
#>     Attrib V57    0.17537526553779928
#>     Attrib V58    0.021109791374899885
#>     Attrib V59    -0.11449478860391087
#>     Attrib V6    0.06866375440261506
#>     Attrib V60    0.04561550539506998
#>     Attrib V7    0.019754392980707438
#>     Attrib V8    0.050839179431603564
#>     Attrib V9    0.015800064340337323
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.11410791267387986
#>     Attrib V1    0.21258793319811845
#>     Attrib V10    -0.029955865118596433
#>     Attrib V11    -0.025949300461025254
#>     Attrib V12    -0.12546821661166258
#>     Attrib V13    -0.08977143939155324
#>     Attrib V14    0.02261514949797924
#>     Attrib V15    0.17717856122265033
#>     Attrib V16    0.08532311019279999
#>     Attrib V17    -0.01862488870297721
#>     Attrib V18    -0.05223889202947321
#>     Attrib V19    0.032980746992133915
#>     Attrib V2    0.1906172489755079
#>     Attrib V20    -0.02332177529371526
#>     Attrib V21    -0.061096007745078985
#>     Attrib V22    -0.04085898964766903
#>     Attrib V23    -0.14460903455921612
#>     Attrib V24    -0.007015314860721914
#>     Attrib V25    -0.16126197219036734
#>     Attrib V26    -0.1899604342166996
#>     Attrib V27    -0.14622600856543402
#>     Attrib V28    -0.11299331158745472
#>     Attrib V29    -0.08344808404785027
#>     Attrib V3    0.06055506915798298
#>     Attrib V30    0.0764911359935043
#>     Attrib V31    -0.07968346031344589
#>     Attrib V32    -0.02035821042197708
#>     Attrib V33    0.11544946890080737
#>     Attrib V34    0.05802328440298326
#>     Attrib V35    0.11446554262208439
#>     Attrib V36    -0.02962595889142542
#>     Attrib V37    0.043263088663345
#>     Attrib V38    0.16774248704709704
#>     Attrib V39    0.08744272091777672
#>     Attrib V4    0.04219461679950876
#>     Attrib V40    -0.06532341459397734
#>     Attrib V41    0.03368667742037555
#>     Attrib V42    0.013838742417582818
#>     Attrib V43    0.014804657803172605
#>     Attrib V44    0.08969882368040151
#>     Attrib V45    0.15340802040147533
#>     Attrib V46    0.036298838897287376
#>     Attrib V47    -0.03827981579277239
#>     Attrib V48    0.08372098500527218
#>     Attrib V49    -0.007131215679152522
#>     Attrib V5    -0.029161396492674404
#>     Attrib V50    -0.11744564454956377
#>     Attrib V51    0.08256936042037201
#>     Attrib V52    0.07518426869224641
#>     Attrib V53    0.07697608078521258
#>     Attrib V54    0.09105548716727517
#>     Attrib V55    0.09167765536084727
#>     Attrib V56    0.13122334036062955
#>     Attrib V57    0.19783942472957206
#>     Attrib V58    0.13895928842540772
#>     Attrib V59    0.15553876241244316
#>     Attrib V6    -0.027600475689480652
#>     Attrib V60    0.179939975685925
#>     Attrib V7    -0.050011768708836925
#>     Attrib V8    0.02872032965369244
#>     Attrib V9    0.06352673134654932
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.18069798177580607
#>     Attrib V1    0.2515956707009526
#>     Attrib V10    -0.0981192333205952
#>     Attrib V11    -0.07982553937979907
#>     Attrib V12    -0.15922877912244507
#>     Attrib V13    -0.06821955264097472
#>     Attrib V14    0.058064330267948425
#>     Attrib V15    0.14255107864640276
#>     Attrib V16    0.12167593345750091
#>     Attrib V17    -0.048091175028803085
#>     Attrib V18    -0.0010992369342368586
#>     Attrib V19    -0.006722997311240357
#>     Attrib V2    0.16884885845131298
#>     Attrib V20    0.02161899130599304
#>     Attrib V21    -0.0028629538481550624
#>     Attrib V22    -0.09489787761439952
#>     Attrib V23    -0.14408587815601628
#>     Attrib V24    -0.04000597393875636
#>     Attrib V25    -0.16570458982725994
#>     Attrib V26    -0.20880137246064345
#>     Attrib V27    -0.19526375287537737
#>     Attrib V28    -0.1619847292837485
#>     Attrib V29    -0.09319352990069317
#>     Attrib V3    0.11003443259019284
#>     Attrib V30    0.008770029584991077
#>     Attrib V31    -0.20543522424569197
#>     Attrib V32    -0.005959451341163823
#>     Attrib V33    0.09556139453306237
#>     Attrib V34    0.11960070923661165
#>     Attrib V35    0.03868624800692865
#>     Attrib V36    3.1107875464828614E-4
#>     Attrib V37    0.01698323973365443
#>     Attrib V38    0.11940294402636402
#>     Attrib V39    0.0915911372958582
#>     Attrib V4    -0.004809245646996612
#>     Attrib V40    -0.08712403926515096
#>     Attrib V41    -0.041867575237845345
#>     Attrib V42    0.011468278682345148
#>     Attrib V43    -0.058269728024877954
#>     Attrib V44    0.09837507969845634
#>     Attrib V45    0.08908572282903453
#>     Attrib V46    0.046930020268031634
#>     Attrib V47    0.02371879502067806
#>     Attrib V48    0.06098931986382034
#>     Attrib V49    0.06491968048927732
#>     Attrib V5    -0.06427097854247651
#>     Attrib V50    -0.21375976179905287
#>     Attrib V51    0.13202559683810447
#>     Attrib V52    0.08431700541586781
#>     Attrib V53    0.11679328156861409
#>     Attrib V54    0.11714010905893076
#>     Attrib V55    0.10754552835918321
#>     Attrib V56    0.17212440747495528
#>     Attrib V57    0.13946118959091805
#>     Attrib V58    0.24183413042281554
#>     Attrib V59    0.29441333828276406
#>     Attrib V6    -0.07344742867917611
#>     Attrib V60    0.2596758933946052
#>     Attrib V7    0.056409360211576255
#>     Attrib V8    0.023526308079464587
#>     Attrib V9    0.07574130752172203
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.017817695347756717
#>     Attrib V1    0.42402049961337385
#>     Attrib V10    -0.17083048592012523
#>     Attrib V11    0.006472341204086096
#>     Attrib V12    -0.15693321842597502
#>     Attrib V13    0.06390878066673089
#>     Attrib V14    -0.3414083700111084
#>     Attrib V15    0.0815479283980025
#>     Attrib V16    -0.006391082385815283
#>     Attrib V17    -0.10381931169648363
#>     Attrib V18    -0.022940588859384586
#>     Attrib V19    0.693990359329713
#>     Attrib V2    0.360287260774687
#>     Attrib V20    0.3465061071671377
#>     Attrib V21    0.3238879486648479
#>     Attrib V22    0.6601432342261365
#>     Attrib V23    0.35609400895800847
#>     Attrib V24    0.6821478906321328
#>     Attrib V25    0.018937036648928172
#>     Attrib V26    -0.21825152284321353
#>     Attrib V27    -0.5719159896741094
#>     Attrib V28    -0.4158482861773735
#>     Attrib V29    -0.3705308364961593
#>     Attrib V3    -0.30439068865029156
#>     Attrib V30    0.19498064409810864
#>     Attrib V31    -1.0358866757431264
#>     Attrib V32    0.21201845098255054
#>     Attrib V33    0.5377703948119855
#>     Attrib V34    0.3231832416116588
#>     Attrib V35    0.10880627218238252
#>     Attrib V36    -0.4915701782368233
#>     Attrib V37    -0.17307878849097447
#>     Attrib V38    0.36249960203574516
#>     Attrib V39    0.19266453169645698
#>     Attrib V4    -0.2526567133978444
#>     Attrib V40    -0.25934749187907113
#>     Attrib V41    0.2873815293371164
#>     Attrib V42    0.18642387865803356
#>     Attrib V43    -0.24237692828255292
#>     Attrib V44    0.5720350355147512
#>     Attrib V45    0.6411631087273547
#>     Attrib V46    0.336423514350312
#>     Attrib V47    0.03233070558295998
#>     Attrib V48    0.38518766295654344
#>     Attrib V49    0.6013979429576384
#>     Attrib V5    -0.4212663216699239
#>     Attrib V50    -1.0843753720756115
#>     Attrib V51    0.3569389837761267
#>     Attrib V52    0.3798190871705253
#>     Attrib V53    -0.02186153028355242
#>     Attrib V54    0.5995448650605483
#>     Attrib V55    -0.46803550820360196
#>     Attrib V56    0.25694931323985337
#>     Attrib V57    -0.47562942853522594
#>     Attrib V58    0.7420535713093407
#>     Attrib V59    0.6765890128854422
#>     Attrib V6    -0.061841847957080386
#>     Attrib V60    0.2434502769386901
#>     Attrib V7    0.051082669117609295
#>     Attrib V8    -0.3580823809690046
#>     Attrib V9    0.509665462873656
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.4520383908676599
#>     Attrib V1    0.4830273562871863
#>     Attrib V10    0.09770381460756696
#>     Attrib V11    0.28268179734889104
#>     Attrib V12    0.23544442286170394
#>     Attrib V13    0.5231751959005561
#>     Attrib V14    -0.1223915497366354
#>     Attrib V15    -0.09957565189614045
#>     Attrib V16    -0.3742184194276208
#>     Attrib V17    -0.46956645680957365
#>     Attrib V18    -0.13453953448255726
#>     Attrib V19    0.5187706938267028
#>     Attrib V2    0.011718454063736004
#>     Attrib V20    0.2192746872601477
#>     Attrib V21    0.2743597620890896
#>     Attrib V22    0.38319427313015786
#>     Attrib V23    0.16703697362665704
#>     Attrib V24    0.46543337885577485
#>     Attrib V25    0.0017454918346343122
#>     Attrib V26    0.5962304646060665
#>     Attrib V27    0.690247691776242
#>     Attrib V28    0.8819198580203796
#>     Attrib V29    0.828129227249714
#>     Attrib V3    -0.5427787488359148
#>     Attrib V30    0.6715172404613022
#>     Attrib V31    -0.6098188282154915
#>     Attrib V32    -0.40421768468786484
#>     Attrib V33    -0.2752963225815238
#>     Attrib V34    0.012388314742923012
#>     Attrib V35    0.41768390851711085
#>     Attrib V36    -0.2316903642676638
#>     Attrib V37    0.13382108452303307
#>     Attrib V38    0.3949463140063214
#>     Attrib V39    0.29049200635664135
#>     Attrib V4    -0.33850484096178685
#>     Attrib V40    -0.20884274456328455
#>     Attrib V41    0.43577751034155604
#>     Attrib V42    -0.12063374114229823
#>     Attrib V43    0.031071321750820596
#>     Attrib V44    0.8738322382696588
#>     Attrib V45    0.7748232509841257
#>     Attrib V46    0.5387183565147986
#>     Attrib V47    0.3267106052577453
#>     Attrib V48    0.46420001459105037
#>     Attrib V49    0.5106000626912751
#>     Attrib V5    0.0056525177392971445
#>     Attrib V50    -0.6527909312373749
#>     Attrib V51    0.5213447318182615
#>     Attrib V52    0.4350886661383099
#>     Attrib V53    0.45732068042321994
#>     Attrib V54    0.7366165450831871
#>     Attrib V55    -0.2792528468082742
#>     Attrib V56    -0.238729863242307
#>     Attrib V57    -0.5283279295905503
#>     Attrib V58    0.46782922177793823
#>     Attrib V59    0.8143208235418397
#>     Attrib V6    0.2413876732001309
#>     Attrib V60    0.2873232953831583
#>     Attrib V7    -0.1911122558786142
#>     Attrib V8    -0.3948106076848693
#>     Attrib V9    0.7190793116712249
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.1538462652495011
#>     Attrib V1    0.4552974921566023
#>     Attrib V10    -0.2410457171477144
#>     Attrib V11    -0.4389987382559762
#>     Attrib V12    -0.556401036406621
#>     Attrib V13    -0.8623086822891728
#>     Attrib V14    0.3047256006582976
#>     Attrib V15    0.6613598235534153
#>     Attrib V16    0.8069467271449718
#>     Attrib V17    0.44230241298246337
#>     Attrib V18    -0.19777741164829324
#>     Attrib V19    -1.0061334397250898
#>     Attrib V2    -0.08739106870141834
#>     Attrib V20    -0.010133086875793285
#>     Attrib V21    0.22367681545689247
#>     Attrib V22    -0.3761997168851308
#>     Attrib V23    -0.8178971979273986
#>     Attrib V24    -1.3256215074572446
#>     Attrib V25    -0.40938015989717025
#>     Attrib V26    -0.6757328759252293
#>     Attrib V27    -0.8623639384814222
#>     Attrib V28    -0.8898835917068288
#>     Attrib V29    -0.4402983147904962
#>     Attrib V3    0.40681574181119246
#>     Attrib V30    -0.3902347462866059
#>     Attrib V31    0.4877841937165436
#>     Attrib V32    -0.0049398690464678464
#>     Attrib V33    0.12968533033850996
#>     Attrib V34    -0.2175184094363791
#>     Attrib V35    -0.303721899335754
#>     Attrib V36    1.3003032076442194
#>     Attrib V37    0.8697611943021296
#>     Attrib V38    0.39653628335749724
#>     Attrib V39    0.11321619270570225
#>     Attrib V4    0.44213932037111564
#>     Attrib V40    0.1373610076141955
#>     Attrib V41    -1.106524595790028
#>     Attrib V42    -0.5715124363701144
#>     Attrib V43    0.017078178956489644
#>     Attrib V44    -0.7277434583445442
#>     Attrib V45    -0.5202192460554756
#>     Attrib V46    -0.753052090540667
#>     Attrib V47    -0.846336917696174
#>     Attrib V48    -1.0520123745171293
#>     Attrib V49    -1.139569334135396
#>     Attrib V5    -0.0057729137199451445
#>     Attrib V50    0.7260007146479008
#>     Attrib V51    -1.0706419997256416
#>     Attrib V52    -1.0132141105254382
#>     Attrib V53    -0.991641581062939
#>     Attrib V54    -0.6677193254341809
#>     Attrib V55    0.5467936409268679
#>     Attrib V56    0.2575895916495134
#>     Attrib V57    1.3182364303473961
#>     Attrib V58    -0.7472774940556715
#>     Attrib V59    -0.33224362381222144
#>     Attrib V6    -0.8633222119666973
#>     Attrib V60    0.4416257331122648
#>     Attrib V7    0.6199883748569687
#>     Attrib V8    0.5049275181355395
#>     Attrib V9    -0.8326884127469845
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.058187145402478574
#>     Attrib V1    0.45394198621188786
#>     Attrib V10    -0.2414663179767432
#>     Attrib V11    -0.16008038540421396
#>     Attrib V12    -0.27682383777234126
#>     Attrib V13    -0.15563881974276833
#>     Attrib V14    0.08652618792250572
#>     Attrib V15    0.27965262016159226
#>     Attrib V16    0.29820913952553635
#>     Attrib V17    -0.013024321301944029
#>     Attrib V18    -0.09761170738979505
#>     Attrib V19    0.02611860439034877
#>     Attrib V2    0.2372478967385299
#>     Attrib V20    0.01804575824984556
#>     Attrib V21    -0.017391684052759922
#>     Attrib V22    -0.11243512861323238
#>     Attrib V23    -0.25824564420829227
#>     Attrib V24    0.06392089260862001
#>     Attrib V25    -0.3141255502021327
#>     Attrib V26    -0.503593422135603
#>     Attrib V27    -0.5260867608437785
#>     Attrib V28    -0.45985047076724217
#>     Attrib V29    -0.1828713333401231
#>     Attrib V3    -0.03819898511345574
#>     Attrib V30    0.003088886779266099
#>     Attrib V31    -0.31490271441375484
#>     Attrib V32    0.1017027899530321
#>     Attrib V33    0.1502208364729605
#>     Attrib V34    0.03499082107132289
#>     Attrib V35    -0.09044248675667571
#>     Attrib V36    -0.2744434260092946
#>     Attrib V37    -0.1095573725673423
#>     Attrib V38    0.09702752984773662
#>     Attrib V39    -0.011196169792471249
#>     Attrib V4    -0.045964613194002336
#>     Attrib V40    -0.17727975461333526
#>     Attrib V41    -0.12237562424477208
#>     Attrib V42    -0.05364292330568433
#>     Attrib V43    -0.10494358754689534
#>     Attrib V44    0.06978976846403813
#>     Attrib V45    0.07530184202328205
#>     Attrib V46    0.039458665371786335
#>     Attrib V47    -0.1713190032693805
#>     Attrib V48    0.07221279164627976
#>     Attrib V49    0.029503107775411333
#>     Attrib V5    -0.2256449491033985
#>     Attrib V50    -0.40770832380371647
#>     Attrib V51    0.0554555643645217
#>     Attrib V52    0.05139064593892155
#>     Attrib V53    0.10282733042751441
#>     Attrib V54    0.31527911596960556
#>     Attrib V55    0.17009422760088147
#>     Attrib V56    0.31570460604244727
#>     Attrib V57    0.30318306789018107
#>     Attrib V58    0.5202809659676367
#>     Attrib V59    0.48543483805233945
#>     Attrib V6    -0.083514116837
#>     Attrib V60    0.3598016008330866
#>     Attrib V7    0.1804263523862429
#>     Attrib V8    -0.047529814777833704
#>     Attrib V9    0.10875660797405556
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.029513404796869473
#>     Attrib V1    0.6483561954008933
#>     Attrib V10    -0.5312558223625724
#>     Attrib V11    -0.32013675752470205
#>     Attrib V12    -0.4860767847980855
#>     Attrib V13    -0.1152034809609988
#>     Attrib V14    -0.07112822185916123
#>     Attrib V15    0.43500807168320366
#>     Attrib V16    0.3376279508267719
#>     Attrib V17    0.026586414667770324
#>     Attrib V18    -0.03810652734350813
#>     Attrib V19    0.48358284394641593
#>     Attrib V2    0.5130005830612618
#>     Attrib V20    0.1855956100180003
#>     Attrib V21    0.1167028763568036
#>     Attrib V22    0.277833920226085
#>     Attrib V23    0.0751949991320901
#>     Attrib V24    0.5096318381992365
#>     Attrib V25    -0.23689127546102787
#>     Attrib V26    -0.7140024192409347
#>     Attrib V27    -1.0857447367513167
#>     Attrib V28    -0.9111344999714852
#>     Attrib V29    -0.6434563847245326
#>     Attrib V3    -0.009479830536508294
#>     Attrib V30    0.0630376416983428
#>     Attrib V31    -1.0617079938451857
#>     Attrib V32    0.17808626263632465
#>     Attrib V33    0.6888421768273892
#>     Attrib V34    0.24398813432830466
#>     Attrib V35    -0.3128007939315374
#>     Attrib V36    -0.9174537212897367
#>     Attrib V37    -0.4755822380291586
#>     Attrib V38    0.1881422517777852
#>     Attrib V39    9.110505261616283E-4
#>     Attrib V4    -0.27976427527288467
#>     Attrib V40    -0.2695363433159542
#>     Attrib V41    0.25934542007067724
#>     Attrib V42    0.4248194637988654
#>     Attrib V43    -0.2000223406603925
#>     Attrib V44    0.20754753829884875
#>     Attrib V45    0.3523027570005252
#>     Attrib V46    0.08910989827889589
#>     Attrib V47    -0.2002480443669164
#>     Attrib V48    0.16201327718726555
#>     Attrib V49    0.32022870192734454
#>     Attrib V5    -0.5964564418765007
#>     Attrib V50    -1.0161716084435974
#>     Attrib V51    0.1437891049665978
#>     Attrib V52    0.16390649571476584
#>     Attrib V53    0.1488232645788502
#>     Attrib V54    0.7250545625950577
#>     Attrib V55    -0.14260172179024586
#>     Attrib V56    0.7623870126373967
#>     Attrib V57    0.035367679264344816
#>     Attrib V58    0.8576925285454056
#>     Attrib V59    0.9015904553961485
#>     Attrib V6    -0.033578865901748634
#>     Attrib V60    0.5024154416826533
#>     Attrib V7    0.37056956961957843
#>     Attrib V8    -0.12637907568310314
#>     Attrib V9    0.23404166424877676
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.08740822939624669
#>     Attrib V1    0.36692594395075756
#>     Attrib V10    -0.4387561429447421
#>     Attrib V11    -0.8034567974096943
#>     Attrib V12    -1.2562875335403476
#>     Attrib V13    -1.0525360504590333
#>     Attrib V14    0.7696529184620121
#>     Attrib V15    1.1795731702070347
#>     Attrib V16    1.0212040900119428
#>     Attrib V17    0.35421379740100156
#>     Attrib V18    -0.2568042835088929
#>     Attrib V19    -1.0347127672640526
#>     Attrib V2    0.051881373097033
#>     Attrib V20    0.05201064605234212
#>     Attrib V21    0.19959097624362407
#>     Attrib V22    -0.4893536104824337
#>     Attrib V23    -0.8205579406759067
#>     Attrib V24    -1.3506023365727986
#>     Attrib V25    -0.588449419194814
#>     Attrib V26    -1.019016873474954
#>     Attrib V27    -1.2437639042844955
#>     Attrib V28    -1.1573030088352765
#>     Attrib V29    -0.22507431452446272
#>     Attrib V3    0.45302671854372567
#>     Attrib V30    -0.19092353434811327
#>     Attrib V31    0.3280812778738069
#>     Attrib V32    0.12636825227466364
#>     Attrib V33    0.3767719272553517
#>     Attrib V34    -0.20131185933575574
#>     Attrib V35    -0.6478913704321754
#>     Attrib V36    0.941820376810933
#>     Attrib V37    0.47833920470818314
#>     Attrib V38    0.2834295685126982
#>     Attrib V39    -0.10383639522896654
#>     Attrib V4    0.26169522194649275
#>     Attrib V40    0.1333791419911246
#>     Attrib V41    -1.0881261378722034
#>     Attrib V42    -0.16733897672076026
#>     Attrib V43    0.1304972078948248
#>     Attrib V44    -0.6484472255409226
#>     Attrib V45    -0.6502162789267774
#>     Attrib V46    -1.033037080026231
#>     Attrib V47    -1.2154353534779019
#>     Attrib V48    -1.1835014656907226
#>     Attrib V49    -1.051873991418326
#>     Attrib V5    -0.46575949898832447
#>     Attrib V50    0.5511719208184659
#>     Attrib V51    -1.3580580270158396
#>     Attrib V52    -1.2610972029404892
#>     Attrib V53    -0.9231575254494471
#>     Attrib V54    -0.7285597632537704
#>     Attrib V55    0.8134431428193584
#>     Attrib V56    0.6965529065678582
#>     Attrib V57    1.2392988933728937
#>     Attrib V58    -0.170547231372514
#>     Attrib V59    -0.2887800993644216
#>     Attrib V6    -0.7940853419257348
#>     Attrib V60    0.05716247426470572
#>     Attrib V7    0.9843383199218122
#>     Attrib V8    0.8535825215847067
#>     Attrib V9    -0.9220242377645061
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.264037324398326
#>     Attrib V1    0.1184169633261791
#>     Attrib V10    0.32379415515138665
#>     Attrib V11    0.8309129118260618
#>     Attrib V12    1.2122907373336833
#>     Attrib V13    0.8636836119337775
#>     Attrib V14    -0.6103998238760857
#>     Attrib V15    -0.8949757007496203
#>     Attrib V16    -0.8302542531222918
#>     Attrib V17    -0.3689304016208555
#>     Attrib V18    -0.04962203802308191
#>     Attrib V19    0.4933809549744569
#>     Attrib V2    -0.011515010053256006
#>     Attrib V20    -0.12300419110532934
#>     Attrib V21    -0.09986074796680047
#>     Attrib V22    0.32162592664505457
#>     Attrib V23    0.6621208454450659
#>     Attrib V24    0.9454910336957141
#>     Attrib V25    0.20128061909626074
#>     Attrib V26    0.8906102251485092
#>     Attrib V27    1.384898300306736
#>     Attrib V28    1.786175435200606
#>     Attrib V29    1.1003257423318824
#>     Attrib V3    -0.33308947276250395
#>     Attrib V30    0.3906949176446005
#>     Attrib V31    -0.2760642706297967
#>     Attrib V32    -0.004388066578036506
#>     Attrib V33    -0.721937998208595
#>     Attrib V34    -0.18348196626888494
#>     Attrib V35    0.5055882994621809
#>     Attrib V36    -0.7481742116565216
#>     Attrib V37    -0.2001052503244135
#>     Attrib V38    -0.1997538121316739
#>     Attrib V39    0.2225127071207314
#>     Attrib V4    0.11168513510396133
#>     Attrib V40    -0.2047218692681619
#>     Attrib V41    1.1129525910581308
#>     Attrib V42    0.047726110128445104
#>     Attrib V43    -0.007761264769411107
#>     Attrib V44    0.8120319548158123
#>     Attrib V45    0.736873532290083
#>     Attrib V46    1.0946270012991204
#>     Attrib V47    1.1469607681595855
#>     Attrib V48    0.8588969946286027
#>     Attrib V49    0.7828262185636929
#>     Attrib V5    0.8548548332085948
#>     Attrib V50    -0.45489486721342154
#>     Attrib V51    1.1266060487812124
#>     Attrib V52    1.215593245864802
#>     Attrib V53    0.7582300523912748
#>     Attrib V54    0.5867423675383674
#>     Attrib V55    -0.5896288556260144
#>     Attrib V56    -0.8227584985992189
#>     Attrib V57    -0.8323673870533944
#>     Attrib V58    0.2955628919450073
#>     Attrib V59    0.4969505894535127
#>     Attrib V6    0.7846616912176911
#>     Attrib V60    -0.07277930881976845
#>     Attrib V7    -0.9922069833033055
#>     Attrib V8    -0.7323234112963923
#>     Attrib V9    0.7866613453598912
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.21080581648724642
#>     Attrib V1    0.1604135528835436
#>     Attrib V10    -0.05009266099186601
#>     Attrib V11    -0.0717438314853607
#>     Attrib V12    -0.059129171840963106
#>     Attrib V13    -0.059525952450719975
#>     Attrib V14    0.09951941677189942
#>     Attrib V15    0.09212367841410539
#>     Attrib V16    0.07632081888427215
#>     Attrib V17    0.038484707963739984
#>     Attrib V18    -0.05126017876752558
#>     Attrib V19    0.054130840762218045
#>     Attrib V2    0.1425939067500903
#>     Attrib V20    0.0026058024551494493
#>     Attrib V21    -0.028485296027223994
#>     Attrib V22    -0.08182552106084033
#>     Attrib V23    -0.09654703819806165
#>     Attrib V24    -0.05997662754861568
#>     Attrib V25    -0.11406297007826012
#>     Attrib V26    -0.15727310175588138
#>     Attrib V27    -0.08399145059297869
#>     Attrib V28    -0.041880008659701436
#>     Attrib V29    -0.021262235662703046
#>     Attrib V3    0.06859753688930906
#>     Attrib V30    0.035936194390918
#>     Attrib V31    -0.11240626489549009
#>     Attrib V32    -0.038054291360563985
#>     Attrib V33    0.081923581269445
#>     Attrib V34    0.054877158989493816
#>     Attrib V35    0.12992265365920175
#>     Attrib V36    0.08851265581883597
#>     Attrib V37    0.160053760772548
#>     Attrib V38    0.11048895571508421
#>     Attrib V39    0.0840605138644067
#>     Attrib V4    0.10179521586435082
#>     Attrib V40    -0.0010410411299632083
#>     Attrib V41    0.022253056871595563
#>     Attrib V42    0.06142955275350366
#>     Attrib V43    0.009078723561381515
#>     Attrib V44    0.054841773957524674
#>     Attrib V45    0.0917907267464691
#>     Attrib V46    0.03479097734091794
#>     Attrib V47    -0.006080056615394181
#>     Attrib V48    0.07195391313652577
#>     Attrib V49    0.007092287232354362
#>     Attrib V5    -0.02161680339057934
#>     Attrib V50    -0.03751863825469835
#>     Attrib V51    0.047679198411363845
#>     Attrib V52    0.07357035763447282
#>     Attrib V53    0.08304658967795495
#>     Attrib V54    0.0663251676620711
#>     Attrib V55    0.05792417116916397
#>     Attrib V56    0.11948658567619785
#>     Attrib V57    0.18982211170913402
#>     Attrib V58    0.13719524491671325
#>     Attrib V59    0.15752077316804733
#>     Attrib V6    0.0260459925027521
#>     Attrib V60    0.20043653711394682
#>     Attrib V7    -0.03610926532443563
#>     Attrib V8    0.03286019096054275
#>     Attrib V9    0.029412470295319147
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.09527267849942775
#>     Attrib V1    0.49574379232202626
#>     Attrib V10    -0.2597223459670128
#>     Attrib V11    -0.057631694031025284
#>     Attrib V12    -0.22298462682041928
#>     Attrib V13    0.07730793549973039
#>     Attrib V14    -0.2861511759265275
#>     Attrib V15    0.09801368870305746
#>     Attrib V16    0.03873057019025024
#>     Attrib V17    -0.11956576117426154
#>     Attrib V18    0.010565856034825528
#>     Attrib V19    0.47290382584489427
#>     Attrib V2    0.32283413759746343
#>     Attrib V20    0.15865241824271453
#>     Attrib V21    0.21924911997276036
#>     Attrib V22    0.412408789182691
#>     Attrib V23    0.11809217808859815
#>     Attrib V24    0.5290342254542386
#>     Attrib V25    -0.15205924989551423
#>     Attrib V26    -0.2553217516230025
#>     Attrib V27    -0.5685345374925647
#>     Attrib V28    -0.4915077115441033
#>     Attrib V29    -0.33072636733906635
#>     Attrib V3    -0.23485515287266678
#>     Attrib V30    0.21823919768910333
#>     Attrib V31    -0.8863943133066718
#>     Attrib V32    0.11256668770278658
#>     Attrib V33    0.4019798086103378
#>     Attrib V34    0.2128828993255391
#>     Attrib V35    -0.05691190559157356
#>     Attrib V36    -0.5602496895371194
#>     Attrib V37    -0.240228860903044
#>     Attrib V38    0.30519819911419577
#>     Attrib V39    0.09640881930764904
#>     Attrib V4    -0.2960579506671848
#>     Attrib V40    -0.39888870103138374
#>     Attrib V41    0.1601853953076627
#>     Attrib V42    0.11109699890287279
#>     Attrib V43    -0.23154640171235719
#>     Attrib V44    0.5018271787685884
#>     Attrib V45    0.5707853836623021
#>     Attrib V46    0.22782407246603636
#>     Attrib V47    -0.04916404607145545
#>     Attrib V48    0.3588532589068168
#>     Attrib V49    0.3905811842365711
#>     Attrib V5    -0.47625404353871564
#>     Attrib V50    -0.9084401821675996
#>     Attrib V51    0.2860416077137855
#>     Attrib V52    0.23233464467408377
#>     Attrib V53    0.007712747381599257
#>     Attrib V54    0.5678953229580977
#>     Attrib V55    -0.26557105496724176
#>     Attrib V56    0.27510779380564565
#>     Attrib V57    -0.15976647419851733
#>     Attrib V58    0.6682007890735242
#>     Attrib V59    0.7334023429315447
#>     Attrib V6    -0.05578096919050197
#>     Attrib V60    0.32468277714471455
#>     Attrib V7    0.04560394798791898
#>     Attrib V8    -0.27544021098377697
#>     Attrib V9    0.40445067294824577
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.009458495142988499
#>     Attrib V1    0.47487913324659886
#>     Attrib V10    -0.6919145093076234
#>     Attrib V11    -1.1167704975581205
#>     Attrib V12    -1.5545158382187299
#>     Attrib V13    -1.1020675152737258
#>     Attrib V14    1.0214091300444044
#>     Attrib V15    1.4443611985677176
#>     Attrib V16    1.187849806274467
#>     Attrib V17    0.23548442302948627
#>     Attrib V18    -0.11307189702650326
#>     Attrib V19    -1.09097305153008
#>     Attrib V2    0.10732805005224508
#>     Attrib V20    0.08746557385552696
#>     Attrib V21    0.29505366550004647
#>     Attrib V22    -0.448753129587133
#>     Attrib V23    -1.111043432655366
#>     Attrib V24    -1.55050831866011
#>     Attrib V25    -0.7292118530048961
#>     Attrib V26    -1.2552007257286304
#>     Attrib V27    -1.414526637304335
#>     Attrib V28    -1.414243704979039
#>     Attrib V29    -0.15546385557151612
#>     Attrib V3    0.5675354420402993
#>     Attrib V30    -0.14780808672222104
#>     Attrib V31    0.24139527561667942
#>     Attrib V32    5.040652815491167E-4
#>     Attrib V33    0.49114355533441795
#>     Attrib V34    -0.26487207482555447
#>     Attrib V35    -0.8733607155621603
#>     Attrib V36    0.9719867766050494
#>     Attrib V37    0.5776805829555998
#>     Attrib V38    0.4106595398706131
#>     Attrib V39    -0.10320251111960586
#>     Attrib V4    0.17651962433342086
#>     Attrib V40    0.11605854956221198
#>     Attrib V41    -1.190616615825063
#>     Attrib V42    0.03210332801530254
#>     Attrib V43    0.16965516976969203
#>     Attrib V44    -0.7004599333348971
#>     Attrib V45    -0.7446370844233499
#>     Attrib V46    -1.3135137976732314
#>     Attrib V47    -1.6559382394861513
#>     Attrib V48    -1.4358422794030206
#>     Attrib V49    -1.2558242137774571
#>     Attrib V5    -0.6477150321908206
#>     Attrib V50    0.4265545111193313
#>     Attrib V51    -1.7146902207311803
#>     Attrib V52    -1.5104635292318551
#>     Attrib V53    -0.8176998736374325
#>     Attrib V54    -0.5992113239679039
#>     Attrib V55    0.7443147171992427
#>     Attrib V56    0.8489814044359484
#>     Attrib V57    1.35401480149315
#>     Attrib V58    -0.1656779698991788
#>     Attrib V59    -0.1615088461927119
#>     Attrib V6    -0.7395588677161034
#>     Attrib V60    0.2428868330762327
#>     Attrib V7    1.2011897600741952
#>     Attrib V8    0.8636958012139088
#>     Attrib V9    -1.2039008280044432
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.014890749732262391
#>     Attrib V1    0.43606804057902654
#>     Attrib V10    -0.35160092307522145
#>     Attrib V11    -0.12562918530664588
#>     Attrib V12    -0.27213418241741677
#>     Attrib V13    -0.04347154190795861
#>     Attrib V14    -0.04177948572980426
#>     Attrib V15    0.25292065370347905
#>     Attrib V16    0.1766068779775767
#>     Attrib V17    -0.049032458065113714
#>     Attrib V18    -0.042910674098440724
#>     Attrib V19    0.28609437470695853
#>     Attrib V2    0.3494694742049104
#>     Attrib V20    0.18845656736006514
#>     Attrib V21    0.1697837432507763
#>     Attrib V22    0.25325498950740655
#>     Attrib V23    -0.013640125222034385
#>     Attrib V24    0.3890078467110088
#>     Attrib V25    -0.16351987520325337
#>     Attrib V26    -0.5185434233302654
#>     Attrib V27    -0.6831135882940944
#>     Attrib V28    -0.5760111243091058
#>     Attrib V29    -0.3255230701944581
#>     Attrib V3    -0.047874661532345895
#>     Attrib V30    0.03148469127958254
#>     Attrib V31    -0.7108374472993673
#>     Attrib V32    0.1690775038380308
#>     Attrib V33    0.41294192757220083
#>     Attrib V34    0.13256471216821802
#>     Attrib V35    -0.17413147268797582
#>     Attrib V36    -0.5999381712478702
#>     Attrib V37    -0.28185270971375187
#>     Attrib V38    0.17705828178143931
#>     Attrib V39    0.03333684707702644
#>     Attrib V4    -0.23696506062109848
#>     Attrib V40    -0.2532851053457935
#>     Attrib V41    0.12263401740554043
#>     Attrib V42    0.13754620208601245
#>     Attrib V43    -0.14078296595670167
#>     Attrib V44    0.17860829706686593
#>     Attrib V45    0.3441671102156934
#>     Attrib V46    0.1281353755805409
#>     Attrib V47    -0.07648184460317617
#>     Attrib V48    0.18497623201246272
#>     Attrib V49    0.23236088894213175
#>     Attrib V5    -0.4446455088303779
#>     Attrib V50    -0.6894153521861245
#>     Attrib V51    0.2017059285927041
#>     Attrib V52    0.17693215105116714
#>     Attrib V53    0.061186628404267154
#>     Attrib V54    0.5066786630198195
#>     Attrib V55    -0.06537558744647456
#>     Attrib V56    0.41656578114979237
#>     Attrib V57    0.030678674469054278
#>     Attrib V58    0.5942681156870291
#>     Attrib V59    0.6002322698113189
#>     Attrib V6    -0.05515765189019244
#>     Attrib V60    0.3485159259388233
#>     Attrib V7    0.18360823642977853
#>     Attrib V8    -0.0990582344799553
#>     Attrib V9    0.23052231051211788
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.18428462730918377
#>     Attrib V1    0.1258373097106526
#>     Attrib V10    0.0458236229158848
#>     Attrib V11    -0.022353416876376438
#>     Attrib V12    -0.029391431068815446
#>     Attrib V13    0.002172665905049415
#>     Attrib V14    0.06344231514506041
#>     Attrib V15    0.09839011368717875
#>     Attrib V16    0.08622841356798665
#>     Attrib V17    0.09467349946656627
#>     Attrib V18    0.02516959072261015
#>     Attrib V19    -0.0334497344331964
#>     Attrib V2    0.12824524340248827
#>     Attrib V20    -0.031823321178759786
#>     Attrib V21    -0.0029114054062244796
#>     Attrib V22    -0.04338971067186544
#>     Attrib V23    -0.044281207618598314
#>     Attrib V24    -0.08253701782193211
#>     Attrib V25    -0.050582763480286286
#>     Attrib V26    -0.06797818970629578
#>     Attrib V27    -0.10631090293789422
#>     Attrib V28    -0.06946689921521709
#>     Attrib V29    -0.09580073425835907
#>     Attrib V3    0.09935146068351455
#>     Attrib V30    0.0397385917338851
#>     Attrib V31    0.03970794016117181
#>     Attrib V32    -0.01942001498418269
#>     Attrib V33    0.021349797797312362
#>     Attrib V34    0.04391743880426668
#>     Attrib V35    0.1187392017456901
#>     Attrib V36    0.09910068158336496
#>     Attrib V37    0.18632878022507282
#>     Attrib V38    0.07778012302870049
#>     Attrib V39    0.11219916470151024
#>     Attrib V4    0.1157603710044923
#>     Attrib V40    0.07796326131630443
#>     Attrib V41    0.06669436736364384
#>     Attrib V42    0.09663480573352691
#>     Attrib V43    0.0019114957449608617
#>     Attrib V44    -0.03026633535419409
#>     Attrib V45    0.04782993420826081
#>     Attrib V46    0.033225963089984586
#>     Attrib V47    0.0033676665327864275
#>     Attrib V48    0.0395649964501424
#>     Attrib V49    -0.019668994543810495
#>     Attrib V5    0.009731062530059478
#>     Attrib V50    0.009755101595971727
#>     Attrib V51    0.034544891264383294
#>     Attrib V52    0.07289759224390806
#>     Attrib V53    0.07067407912747341
#>     Attrib V54    0.024023945701625457
#>     Attrib V55    0.030234200152568433
#>     Attrib V56    0.12390113766126837
#>     Attrib V57    0.11671024439634572
#>     Attrib V58    0.09785107457627888
#>     Attrib V59    0.09098872482960892
#>     Attrib V6    0.02020848658585015
#>     Attrib V60    0.1251912758646709
#>     Attrib V7    -0.04144268713120215
#>     Attrib V8    0.017413326610808532
#>     Attrib V9    0.0067445411657475925
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.08511157005197494
#>     Attrib V1    0.6260553328563975
#>     Attrib V10    -0.4750537351919695
#>     Attrib V11    -0.28837213286318386
#>     Attrib V12    -0.5265183193279953
#>     Attrib V13    -0.09826075875660865
#>     Attrib V14    -0.05006811896059568
#>     Attrib V15    0.4500422838067315
#>     Attrib V16    0.3630641522677391
#>     Attrib V17    -3.839253915311703E-4
#>     Attrib V18    -0.04654802663065424
#>     Attrib V19    0.4230111466749148
#>     Attrib V2    0.5746260514386383
#>     Attrib V20    0.2121709198720945
#>     Attrib V21    0.06743998934894589
#>     Attrib V22    0.2512793647918283
#>     Attrib V23    0.027457907305204216
#>     Attrib V24    0.5078608311182424
#>     Attrib V25    -0.2639086114448856
#>     Attrib V26    -0.7016397583831695
#>     Attrib V27    -1.0557916712836586
#>     Attrib V28    -0.9202935233289439
#>     Attrib V29    -0.6538896803158071
#>     Attrib V3    -0.06623546360949709
#>     Attrib V30    0.03275056313919325
#>     Attrib V31    -0.9682238383627465
#>     Attrib V32    0.19890404878809828
#>     Attrib V33    0.7164500775767891
#>     Attrib V34    0.30043383944069374
#>     Attrib V35    -0.29977364059943007
#>     Attrib V36    -0.9242896642952345
#>     Attrib V37    -0.4910188715231172
#>     Attrib V38    0.21868276513798487
#>     Attrib V39    -0.045012560883462636
#>     Attrib V4    -0.3041828604198482
#>     Attrib V40    -0.2513738400007119
#>     Attrib V41    0.20093264456378845
#>     Attrib V42    0.4043440210795528
#>     Attrib V43    -0.20644372389360902
#>     Attrib V44    0.21766484627932747
#>     Attrib V45    0.2791405022906069
#>     Attrib V46    0.08503439644157529
#>     Attrib V47    -0.22826414769804634
#>     Attrib V48    0.19935280074696968
#>     Attrib V49    0.295704323505637
#>     Attrib V5    -0.6222314553783567
#>     Attrib V50    -0.9762494120642309
#>     Attrib V51    0.14374474160739106
#>     Attrib V52    0.1133453341005359
#>     Attrib V53    0.1435810553727844
#>     Attrib V54    0.7497864907617798
#>     Attrib V55    -0.09471426274146615
#>     Attrib V56    0.6769099725999234
#>     Attrib V57    0.07236633774557524
#>     Attrib V58    0.7860070679425831
#>     Attrib V59    0.7892829564540005
#>     Attrib V6    -0.05185723004765556
#>     Attrib V60    0.5067808228686178
#>     Attrib V7    0.3618983442030382
#>     Attrib V8    -0.10195816589930501
#>     Attrib V9    0.2646316191247624
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.11535876647345424
#>     Attrib V1    0.3066340434719552
#>     Attrib V10    -0.21579803071028963
#>     Attrib V11    -0.11682300941368431
#>     Attrib V12    -0.19701195780033387
#>     Attrib V13    -0.12317941238926158
#>     Attrib V14    0.09888822876615852
#>     Attrib V15    0.2189979376890549
#>     Attrib V16    0.1797531612814607
#>     Attrib V17    -0.045096296814147334
#>     Attrib V18    -0.0079573265370387
#>     Attrib V19    0.011647702903927436
#>     Attrib V2    0.16938002130561783
#>     Attrib V20    0.030017503140997222
#>     Attrib V21    7.415679205072197E-4
#>     Attrib V22    -0.08291054343190735
#>     Attrib V23    -0.11809795505758905
#>     Attrib V24    0.001388322628034858
#>     Attrib V25    -0.25986721787049416
#>     Attrib V26    -0.3324623053848693
#>     Attrib V27    -0.30691047223517537
#>     Attrib V28    -0.18588938393338506
#>     Attrib V29    -0.09316162989505034
#>     Attrib V3    0.06891750462678325
#>     Attrib V30    0.08589398123514207
#>     Attrib V31    -0.2932006041883486
#>     Attrib V32    0.0014368251312886456
#>     Attrib V33    0.13675131956698686
#>     Attrib V34    0.062203674950395006
#>     Attrib V35    -0.007287483551679465
#>     Attrib V36    -0.10337026821183395
#>     Attrib V37    -0.011734165989035988
#>     Attrib V38    0.09950589364862696
#>     Attrib V39    0.052839967495077696
#>     Attrib V4    -0.03155865482980064
#>     Attrib V40    -0.13207586353858777
#>     Attrib V41    -0.04726398459919483
#>     Attrib V42    0.055536231271734966
#>     Attrib V43    -0.12418756968330388
#>     Attrib V44    0.07764051003933016
#>     Attrib V45    0.15551632637352822
#>     Attrib V46    0.04622183825641715
#>     Attrib V47    -0.0651024608497711
#>     Attrib V48    0.011421829222234081
#>     Attrib V49    0.06989481490114785
#>     Attrib V5    -0.1273628928339119
#>     Attrib V50    -0.2780343762274771
#>     Attrib V51    0.0883313619221234
#>     Attrib V52    0.11917372561794264
#>     Attrib V53    0.11734979500242405
#>     Attrib V54    0.1389155478720523
#>     Attrib V55    0.0546069136791855
#>     Attrib V56    0.190603687073458
#>     Attrib V57    0.1963390491505883
#>     Attrib V58    0.3568216740206279
#>     Attrib V59    0.3014234485131659
#>     Attrib V6    -0.04409780228922378
#>     Attrib V60    0.22337420633301155
#>     Attrib V7    0.056271168143994986
#>     Attrib V8    0.02040989205482239
#>     Attrib V9    0.07883033249775967
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
#>  0.1594203 
```
