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
#>     Threshold    -0.47539037493003233
#>     Node 2    2.575666275068815
#>     Node 3    1.7647559984575663
#>     Node 4    1.3421298188462991
#>     Node 5    -1.5138619762154197
#>     Node 6    1.559396603844545
#>     Node 7    2.742628956010601
#>     Node 8    0.9926830742588468
#>     Node 9    3.0571751193458185
#>     Node 10    0.2485139514454628
#>     Node 11    1.8037105533421074
#>     Node 12    1.504681897494747
#>     Node 13    0.37373656970748864
#>     Node 14    1.6784094865386767
#>     Node 15    -2.458213997166456
#>     Node 16    0.7036318578757017
#>     Node 17    1.2170070772739816
#>     Node 18    -1.934727072652073
#>     Node 19    1.6830079445550428
#>     Node 20    1.3145504734907612
#>     Node 21    -2.802816348920454
#>     Node 22    1.340068290458489
#>     Node 23    0.9607430323404261
#>     Node 24    -0.8818363321897046
#>     Node 25    4.294303440740921
#>     Node 26    0.01633273962449982
#>     Node 27    2.120917479043011
#>     Node 28    -1.8820023765223572
#>     Node 29    1.2177168908533715
#>     Node 30    -1.6474033744019558
#>     Node 31    1.2053061869822028
#>     Node 32    0.6923636061638845
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.46616825227743
#>     Node 2    -2.6322836013279054
#>     Node 3    -1.7612963895364557
#>     Node 4    -1.3019050212137124
#>     Node 5    1.5119385834533223
#>     Node 6    -1.5398108758767939
#>     Node 7    -2.7221239459526405
#>     Node 8    -1.0068000112987496
#>     Node 9    -3.043810127172321
#>     Node 10    -0.3037204817367776
#>     Node 11    -1.7606223874375462
#>     Node 12    -1.582015184623849
#>     Node 13    -0.30701822125811606
#>     Node 14    -1.6159562086651582
#>     Node 15    2.4296384142323175
#>     Node 16    -0.7107709876344138
#>     Node 17    -1.1788302612520285
#>     Node 18    1.9628732417694288
#>     Node 19    -1.6704473500683397
#>     Node 20    -1.3047062472455169
#>     Node 21    2.849233665453437
#>     Node 22    -1.3907956171446296
#>     Node 23    -1.003774059893508
#>     Node 24    0.856149855910642
#>     Node 25    -4.27734544536443
#>     Node 26    -0.08806160252371303
#>     Node 27    -2.148424228887637
#>     Node 28    1.8204079522724248
#>     Node 29    -1.2521528245250815
#>     Node 30    1.7110078796967543
#>     Node 31    -1.1459079219219928
#>     Node 32    -0.6996366505006522
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.4688171266978821
#>     Attrib V1    0.32610952527180653
#>     Attrib V10    1.275995208982417
#>     Attrib V11    0.9905658556867712
#>     Attrib V12    1.1174315601308182
#>     Attrib V13    0.5174210634533022
#>     Attrib V14    -0.2940487248991532
#>     Attrib V15    -0.16119452946496057
#>     Attrib V16    -0.17218196092806765
#>     Attrib V17    -0.8055424690778449
#>     Attrib V18    -0.5266061155207004
#>     Attrib V19    0.18555469949418235
#>     Attrib V2    0.12462733307286247
#>     Attrib V20    -0.04203653525091003
#>     Attrib V21    0.1477190299445498
#>     Attrib V22    0.5014351687816566
#>     Attrib V23    0.36619211413562486
#>     Attrib V24    0.39411559121950307
#>     Attrib V25    -0.280081039809925
#>     Attrib V26    0.601105670752643
#>     Attrib V27    1.2264162920927046
#>     Attrib V28    1.1890270183525644
#>     Attrib V29    0.9967547129380765
#>     Attrib V3    0.01757843165332987
#>     Attrib V30    0.5901208721489516
#>     Attrib V31    -0.6318391854639771
#>     Attrib V32    0.2119710215434273
#>     Attrib V33    -0.42573977190039786
#>     Attrib V34    -0.5112295772961378
#>     Attrib V35    0.2493018672837406
#>     Attrib V36    -0.6233282539694867
#>     Attrib V37    -0.37443852808104305
#>     Attrib V38    0.07588768855012978
#>     Attrib V39    0.20212924873543922
#>     Attrib V4    -0.2787688738728034
#>     Attrib V40    0.0026206753243047795
#>     Attrib V41    1.0986453276123096
#>     Attrib V42    0.06298503056246772
#>     Attrib V43    0.3390922352814864
#>     Attrib V44    0.36392256603851336
#>     Attrib V45    0.47973832601904026
#>     Attrib V46    0.7281879397755412
#>     Attrib V47    0.5850536985247234
#>     Attrib V48    0.2967426113173021
#>     Attrib V49    0.3578451087969998
#>     Attrib V5    0.44723650486505434
#>     Attrib V50    -0.4599701861127147
#>     Attrib V51    0.11303468126143146
#>     Attrib V52    0.8474784758409077
#>     Attrib V53    0.6593785412250277
#>     Attrib V54    -0.41764853283956344
#>     Attrib V55    -0.4890935254187418
#>     Attrib V56    -0.399854880398006
#>     Attrib V57    -0.25801843764715665
#>     Attrib V58    0.2813690923049379
#>     Attrib V59    0.2708288497328681
#>     Attrib V6    0.5820166422407642
#>     Attrib V60    0.12304710525911665
#>     Attrib V7    -0.6494151418614569
#>     Attrib V8    -0.6335289149005188
#>     Attrib V9    0.9724723529305634
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.5427575399431914
#>     Attrib V1    0.277240675218096
#>     Attrib V10    0.48501651740359236
#>     Attrib V11    0.2737722143584291
#>     Attrib V12    0.5220022610194218
#>     Attrib V13    0.05316643905842578
#>     Attrib V14    -0.2529720163718473
#>     Attrib V15    0.30625846517657673
#>     Attrib V16    0.0865936298630611
#>     Attrib V17    -0.5217275105592947
#>     Attrib V18    -0.3884967881896634
#>     Attrib V19    0.4044693583571005
#>     Attrib V2    -0.06145619837254614
#>     Attrib V20    0.21568963221943754
#>     Attrib V21    0.22875310986450714
#>     Attrib V22    0.3570144667103255
#>     Attrib V23    0.07651682306585188
#>     Attrib V24    0.23136005242105528
#>     Attrib V25    -0.44117209006919317
#>     Attrib V26    -0.28557423376855173
#>     Attrib V27    0.18467053189667595
#>     Attrib V28    0.14212148456670837
#>     Attrib V29    -0.39731759573454034
#>     Attrib V3    -0.14982196838928516
#>     Attrib V30    -0.09902062171553448
#>     Attrib V31    -0.7649401585879594
#>     Attrib V32    0.3461801924722353
#>     Attrib V33    0.22635001107947775
#>     Attrib V34    -0.15473638436775336
#>     Attrib V35    0.011351454722011553
#>     Attrib V36    -1.0343448889506954
#>     Attrib V37    -1.3869368387436998
#>     Attrib V38    -0.3381038197559749
#>     Attrib V39    0.13758504085504739
#>     Attrib V4    -0.28110064122270806
#>     Attrib V40    -0.025449736583504256
#>     Attrib V41    0.4897408836632286
#>     Attrib V42    0.36732563411634817
#>     Attrib V43    0.5762340474915453
#>     Attrib V44    0.22598461834822328
#>     Attrib V45    0.19678155537044542
#>     Attrib V46    0.29091420145192803
#>     Attrib V47    0.3235218026569727
#>     Attrib V48    0.1384276733621787
#>     Attrib V49    0.21891321949031267
#>     Attrib V5    0.2142807748442387
#>     Attrib V50    -0.5528749749738396
#>     Attrib V51    -0.477011779238877
#>     Attrib V52    0.17972409828288136
#>     Attrib V53    0.06784390345580131
#>     Attrib V54    0.04531360314590234
#>     Attrib V55    -0.1473104190788129
#>     Attrib V56    0.11779759230036463
#>     Attrib V57    0.058961333753546064
#>     Attrib V58    0.57544694973299
#>     Attrib V59    0.4109300148031428
#>     Attrib V6    0.038667196924977734
#>     Attrib V60    0.17551824647492623
#>     Attrib V7    -0.6391544160175174
#>     Attrib V8    -0.36895234911947605
#>     Attrib V9    0.4533206533013691
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.4184783607062619
#>     Attrib V1    0.19663235066598778
#>     Attrib V10    0.36489375887417436
#>     Attrib V11    0.22446486975843272
#>     Attrib V12    0.3527553215604868
#>     Attrib V13    -0.012895728042528929
#>     Attrib V14    -0.18400218988029515
#>     Attrib V15    0.24624882891511252
#>     Attrib V16    0.09828571643652612
#>     Attrib V17    -0.4029930314075717
#>     Attrib V18    -0.3111530857125159
#>     Attrib V19    0.24903751541907848
#>     Attrib V2    -0.09457894118157924
#>     Attrib V20    0.17419842642749636
#>     Attrib V21    0.25710821799374745
#>     Attrib V22    0.2015150068658051
#>     Attrib V23    -0.017010023166307703
#>     Attrib V24    0.12048494985683068
#>     Attrib V25    -0.4144723177579081
#>     Attrib V26    -0.18604476610897266
#>     Attrib V27    0.17416940238171458
#>     Attrib V28    0.19182405218124893
#>     Attrib V29    -0.1505021772489292
#>     Attrib V3    -0.12192487419796752
#>     Attrib V30    -0.03468415046812181
#>     Attrib V31    -0.6181786861845289
#>     Attrib V32    0.16963903557874735
#>     Attrib V33    0.1444992109819721
#>     Attrib V34    -0.0532581070533178
#>     Attrib V35    0.11154691621129134
#>     Attrib V36    -0.6726422728931148
#>     Attrib V37    -0.8748395977558435
#>     Attrib V38    -0.15600752569419296
#>     Attrib V39    0.12115055904946508
#>     Attrib V4    -0.24052881246639435
#>     Attrib V40    -0.020054646545559662
#>     Attrib V41    0.3620115342200107
#>     Attrib V42    0.23102940326072702
#>     Attrib V43    0.3961171685796673
#>     Attrib V44    0.24454341744567965
#>     Attrib V45    0.31059810221927087
#>     Attrib V46    0.23598555530831508
#>     Attrib V47    0.17333524721907795
#>     Attrib V48    0.14296273702517887
#>     Attrib V49    0.18720887088434193
#>     Attrib V5    0.18667799886717348
#>     Attrib V50    -0.4479565098421839
#>     Attrib V51    -0.32878601865070567
#>     Attrib V52    0.13863395023601294
#>     Attrib V53    0.16370470594027658
#>     Attrib V54    -0.058261758074484145
#>     Attrib V55    -0.16667031543717067
#>     Attrib V56    0.00581954297699895
#>     Attrib V57    0.046259183389244916
#>     Attrib V58    0.35154687168605003
#>     Attrib V59    0.29630189906516374
#>     Attrib V6    0.02758300339784178
#>     Attrib V60    0.15975500924652347
#>     Attrib V7    -0.4411908823600052
#>     Attrib V8    -0.3281197360984057
#>     Attrib V9    0.42465851580734026
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.4656916821071337
#>     Attrib V1    -0.22859880003225486
#>     Attrib V10    -0.3367854746464564
#>     Attrib V11    -0.2044743552806455
#>     Attrib V12    -0.42016787959440705
#>     Attrib V13    -0.029421855977575104
#>     Attrib V14    0.24540402678637618
#>     Attrib V15    -0.19584246916392614
#>     Attrib V16    -0.15790115780911168
#>     Attrib V17    0.35692191949415675
#>     Attrib V18    0.19606996001998842
#>     Attrib V19    -0.42221048093120045
#>     Attrib V2    0.16080389638723327
#>     Attrib V20    -0.33947994626966743
#>     Attrib V21    -0.31717024026184953
#>     Attrib V22    -0.34800315575793495
#>     Attrib V23    -0.09570044913093496
#>     Attrib V24    -0.25428046462564047
#>     Attrib V25    0.3959867147063056
#>     Attrib V26    0.18992582025821472
#>     Attrib V27    -0.18606356752030456
#>     Attrib V28    -0.18533301185082232
#>     Attrib V29    0.312036129811326
#>     Attrib V3    0.17515749050674886
#>     Attrib V30    0.22393511692452225
#>     Attrib V31    0.8924021416130382
#>     Attrib V32    -0.17235471011819864
#>     Attrib V33    -0.23020278475996553
#>     Attrib V34    -0.015895888827269035
#>     Attrib V35    -0.1743531422225266
#>     Attrib V36    0.6485365389939013
#>     Attrib V37    0.9657467566377157
#>     Attrib V38    0.004736292396796801
#>     Attrib V39    -0.27958511862565816
#>     Attrib V4    0.1912404996200964
#>     Attrib V40    -0.0014129559028542322
#>     Attrib V41    -0.4020657488927621
#>     Attrib V42    -0.2859697791240905
#>     Attrib V43    -0.585527885948083
#>     Attrib V44    -0.36340532962969363
#>     Attrib V45    -0.3712353381578166
#>     Attrib V46    -0.35709960422161924
#>     Attrib V47    -0.1951637557078248
#>     Attrib V48    -0.025481343784383652
#>     Attrib V49    -0.2268892780376253
#>     Attrib V5    -0.13929017572888647
#>     Attrib V50    0.49205797849447347
#>     Attrib V51    0.42703122532743043
#>     Attrib V52    -0.09289536923440221
#>     Attrib V53    -0.04773600677535846
#>     Attrib V54    -0.09432781811491091
#>     Attrib V55    0.17544698226566094
#>     Attrib V56    -0.05072392870119327
#>     Attrib V57    -0.046278583528531377
#>     Attrib V58    -0.4897620095989987
#>     Attrib V59    -0.3386538659595571
#>     Attrib V6    0.027980464739220327
#>     Attrib V60    -0.16019650782843095
#>     Attrib V7    0.4437558094055287
#>     Attrib V8    0.32699935545209996
#>     Attrib V9    -0.3885893319149002
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.42891553385837133
#>     Attrib V1    0.327641130815506
#>     Attrib V10    0.12378548718899322
#>     Attrib V11    0.05130878364301701
#>     Attrib V12    0.16180304026238104
#>     Attrib V13    -0.25756971497011194
#>     Attrib V14    -0.1663051261758068
#>     Attrib V15    0.3469885712956781
#>     Attrib V16    0.31350271332588275
#>     Attrib V17    -0.2052816583596226
#>     Attrib V18    -0.08405059455279633
#>     Attrib V19    0.38008233165000554
#>     Attrib V2    -0.12756766364379674
#>     Attrib V20    0.3763429288260628
#>     Attrib V21    0.37306696622719165
#>     Attrib V22    0.1838583884208358
#>     Attrib V23    -0.09598817490347218
#>     Attrib V24    0.09269412864807432
#>     Attrib V25    -0.3752118640575019
#>     Attrib V26    -0.4314378111034579
#>     Attrib V27    -0.14942746497166942
#>     Attrib V28    -0.2474442785316745
#>     Attrib V29    -0.6080834887533464
#>     Attrib V3    -0.15120948333196865
#>     Attrib V30    -0.2570377003134061
#>     Attrib V31    -0.8411317194742636
#>     Attrib V32    0.11650854340868039
#>     Attrib V33    0.3188483516899653
#>     Attrib V34    0.11920621025286164
#>     Attrib V35    0.23928894435991027
#>     Attrib V36    -0.5099439420240977
#>     Attrib V37    -0.9736943813356209
#>     Attrib V38    -0.09461262450748543
#>     Attrib V39    0.16527671006696742
#>     Attrib V4    -0.09488382418090285
#>     Attrib V40    -0.03335985168238966
#>     Attrib V41    0.24058266023144595
#>     Attrib V42    0.32431739667365816
#>     Attrib V43    0.5486852065836172
#>     Attrib V44    0.45010457545804056
#>     Attrib V45    0.39167336558470345
#>     Attrib V46    0.21291897368406829
#>     Attrib V47    0.08713784458220734
#>     Attrib V48    0.045531038844140954
#>     Attrib V49    0.12272904515372321
#>     Attrib V5    0.11993777725929686
#>     Attrib V50    -0.40735246923178225
#>     Attrib V51    -0.5058106554108215
#>     Attrib V52    -0.08813050469629043
#>     Attrib V53    -0.024242856825117398
#>     Attrib V54    0.21309102759212192
#>     Attrib V55    -0.07723250118949058
#>     Attrib V56    0.17036899859269483
#>     Attrib V57    0.1744626807819911
#>     Attrib V58    0.5169283138853207
#>     Attrib V59    0.5298808500936971
#>     Attrib V6    -0.07800488997523639
#>     Attrib V60    0.3602183137772514
#>     Attrib V7    -0.2930279868502652
#>     Attrib V8    -0.1392242780012255
#>     Attrib V9    0.29672316857873265
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5255954073749496
#>     Attrib V1    0.4655139453525259
#>     Attrib V10    1.2410043089025191
#>     Attrib V11    1.1350959244985488
#>     Attrib V12    1.1216918989366782
#>     Attrib V13    0.45482096028167057
#>     Attrib V14    -0.31268031704037597
#>     Attrib V15    -0.10247002535141304
#>     Attrib V16    -0.13143139397811854
#>     Attrib V17    -0.9495246389187224
#>     Attrib V18    -0.7526375474444773
#>     Attrib V19    0.004924325097166128
#>     Attrib V2    0.2529746477429877
#>     Attrib V20    -0.10579530662874877
#>     Attrib V21    0.07067591349497249
#>     Attrib V22    0.34565188608267994
#>     Attrib V23    0.24063738700116702
#>     Attrib V24    0.3494633026103152
#>     Attrib V25    -0.19368160017913733
#>     Attrib V26    0.7980322161462561
#>     Attrib V27    1.3311327924314662
#>     Attrib V28    1.2386684905649694
#>     Attrib V29    1.1061095307372215
#>     Attrib V3    0.025497112320072155
#>     Attrib V30    0.5887934299857158
#>     Attrib V31    -0.405841012845299
#>     Attrib V32    0.08056223496897133
#>     Attrib V33    -0.4637975853138169
#>     Attrib V34    -0.3974279877254858
#>     Attrib V35    0.3177590720945368
#>     Attrib V36    -0.4792161125752346
#>     Attrib V37    0.07318157188124873
#>     Attrib V38    0.25786226945584284
#>     Attrib V39    0.1958351230109025
#>     Attrib V4    -0.28842565153284994
#>     Attrib V40    0.05679677138042681
#>     Attrib V41    1.0143695557141172
#>     Attrib V42    -0.15896158316489073
#>     Attrib V43    0.0806670442039169
#>     Attrib V44    0.09826312938732239
#>     Attrib V45    0.4356398933483753
#>     Attrib V46    0.7763770167762054
#>     Attrib V47    0.5949815021150583
#>     Attrib V48    0.23832908915526607
#>     Attrib V49    0.25125191257769103
#>     Attrib V5    0.30200173287157006
#>     Attrib V50    -0.37307015918897435
#>     Attrib V51    0.174558870573881
#>     Attrib V52    0.861121990331817
#>     Attrib V53    0.781730350545775
#>     Attrib V54    -0.26791975806337015
#>     Attrib V55    -0.31626879551791215
#>     Attrib V56    -0.4848224428378844
#>     Attrib V57    -0.12767706830956554
#>     Attrib V58    0.19015639620047442
#>     Attrib V59    0.17982775519735972
#>     Attrib V6    0.5680557842917213
#>     Attrib V60    0.25678911540124444
#>     Attrib V7    -0.38090098809703615
#>     Attrib V8    -0.537878920529834
#>     Attrib V9    1.0185110751219904
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.31597958106447643
#>     Attrib V1    0.1998667461023318
#>     Attrib V10    0.23330560128301223
#>     Attrib V11    0.2206721466162664
#>     Attrib V12    0.2452185943064468
#>     Attrib V13    -0.07773373737299076
#>     Attrib V14    -0.16246742702873695
#>     Attrib V15    0.11651409270802278
#>     Attrib V16    0.12427648291821386
#>     Attrib V17    -0.3012724870463912
#>     Attrib V18    -0.27410469536807824
#>     Attrib V19    0.06533538799637865
#>     Attrib V2    -0.02671770132085854
#>     Attrib V20    -0.04298816227006509
#>     Attrib V21    0.01680503179156729
#>     Attrib V22    -0.07103260641238716
#>     Attrib V23    -0.25351870029642376
#>     Attrib V24    0.02869104642114767
#>     Attrib V25    -0.2172499483070863
#>     Attrib V26    -0.01654331732866907
#>     Attrib V27    0.1868822886055571
#>     Attrib V28    0.12316805036704434
#>     Attrib V29    -0.027370348867410143
#>     Attrib V3    -0.09945482827747038
#>     Attrib V30    0.10095256132473689
#>     Attrib V31    -0.2945348022973959
#>     Attrib V32    0.09406767757650776
#>     Attrib V33    0.060832094390396704
#>     Attrib V34    -0.027018538302711007
#>     Attrib V35    0.12347500905703204
#>     Attrib V36    -0.22265468786658865
#>     Attrib V37    -0.33535331426461407
#>     Attrib V38    0.1396837055667685
#>     Attrib V39    0.15856807255759559
#>     Attrib V4    -0.04564149426613859
#>     Attrib V40    -0.00565488219545223
#>     Attrib V41    0.21694113935496478
#>     Attrib V42    -0.03291531434357244
#>     Attrib V43    0.2196317642805779
#>     Attrib V44    0.28113570815719696
#>     Attrib V45    0.28623625074427833
#>     Attrib V46    0.21962514660698934
#>     Attrib V47    0.12901386185080327
#>     Attrib V48    0.1759576726733447
#>     Attrib V49    0.1281690567919704
#>     Attrib V5    0.06571871913782627
#>     Attrib V50    -0.3242068251666616
#>     Attrib V51    -0.22294557804274798
#>     Attrib V52    0.12440570196595811
#>     Attrib V53    0.23547632837269256
#>     Attrib V54    0.050490663702173616
#>     Attrib V55    -0.051244468192005684
#>     Attrib V56    -0.12669578169286885
#>     Attrib V57    0.19375648918566626
#>     Attrib V58    0.2189644144424186
#>     Attrib V59    0.33290416906279435
#>     Attrib V6    -0.023511603062776124
#>     Attrib V60    0.2685680456512092
#>     Attrib V7    -0.20588306302708953
#>     Attrib V8    -0.1659203883709761
#>     Attrib V9    0.249870836112028
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.35572939311649815
#>     Attrib V1    0.3421542771444625
#>     Attrib V10    1.34399874032045
#>     Attrib V11    1.1856495486846523
#>     Attrib V12    1.3774332305233188
#>     Attrib V13    0.6551278674998827
#>     Attrib V14    -0.3478081910232968
#>     Attrib V15    -0.19606467930600605
#>     Attrib V16    -0.19856529682163823
#>     Attrib V17    -0.8785901737661805
#>     Attrib V18    -0.701874563170231
#>     Attrib V19    -0.04532882430418693
#>     Attrib V2    0.2845827477589346
#>     Attrib V20    -0.24441320076072556
#>     Attrib V21    -0.03262811037648987
#>     Attrib V22    0.4023557484550733
#>     Attrib V23    0.39009121705967525
#>     Attrib V24    0.5517317419104151
#>     Attrib V25    -0.016666212283952965
#>     Attrib V26    0.9363620028045133
#>     Attrib V27    1.5381141642120153
#>     Attrib V28    1.3461183680260664
#>     Attrib V29    1.1210258575543999
#>     Attrib V3    0.07702823565963199
#>     Attrib V30    0.5929971835571659
#>     Attrib V31    -0.36222410888152085
#>     Attrib V32    0.16830195682701318
#>     Attrib V33    -0.5266428057618502
#>     Attrib V34    -0.4068672058226492
#>     Attrib V35    0.27514271471936586
#>     Attrib V36    -0.5040386109551027
#>     Attrib V37    0.06276275195571868
#>     Attrib V38    0.21815916382290235
#>     Attrib V39    0.2621186366859829
#>     Attrib V4    -0.2557537599172692
#>     Attrib V40    0.08524796624055195
#>     Attrib V41    1.0978203784881044
#>     Attrib V42    -0.24978424524618392
#>     Attrib V43    0.15410361938002232
#>     Attrib V44    0.059036574713307664
#>     Attrib V45    0.3706085063110645
#>     Attrib V46    0.7895297081845881
#>     Attrib V47    0.612244782000994
#>     Attrib V48    0.2257682076073947
#>     Attrib V49    0.3106336229944968
#>     Attrib V5    0.35508272735632196
#>     Attrib V50    -0.3533774124117425
#>     Attrib V51    0.3434506228590473
#>     Attrib V52    1.0132634947472716
#>     Attrib V53    1.0486835086346578
#>     Attrib V54    -0.27935829227551007
#>     Attrib V55    -0.3135959262555222
#>     Attrib V56    -0.4181681868165856
#>     Attrib V57    -0.20871882300027536
#>     Attrib V58    0.1619414303364577
#>     Attrib V59    0.12105695763898004
#>     Attrib V6    0.6433597987601277
#>     Attrib V60    0.1557285493447221
#>     Attrib V7    -0.49678198777246435
#>     Attrib V8    -0.609225507710601
#>     Attrib V9    1.013938867432258
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.14724517105334772
#>     Attrib V1    0.14289005365863036
#>     Attrib V10    0.037794209193690385
#>     Attrib V11    0.03047708143323728
#>     Attrib V12    0.05847080622021835
#>     Attrib V13    -0.013845779311145865
#>     Attrib V14    0.07028611499513553
#>     Attrib V15    0.019956427719927203
#>     Attrib V16    0.0512655381634851
#>     Attrib V17    -0.07394007010713935
#>     Attrib V18    -0.024611082897271833
#>     Attrib V19    -0.01050913387133415
#>     Attrib V2    0.08415208873854335
#>     Attrib V20    -0.045855355946534726
#>     Attrib V21    -0.04626050695598667
#>     Attrib V22    -0.09635312156742884
#>     Attrib V23    -0.09784823076942747
#>     Attrib V24    -0.0878173955269589
#>     Attrib V25    -0.0940437179218798
#>     Attrib V26    -0.032485129902137234
#>     Attrib V27    -0.018110627874837117
#>     Attrib V28    -0.03862563680878474
#>     Attrib V29    -0.06839906582974833
#>     Attrib V3    0.06611136636484512
#>     Attrib V30    0.05964886489931099
#>     Attrib V31    -0.024195460247301903
#>     Attrib V32    -0.04737986743981814
#>     Attrib V33    0.0657447051934209
#>     Attrib V34    0.08092022152923697
#>     Attrib V35    0.1309684981913147
#>     Attrib V36    0.06125902799686363
#>     Attrib V37    0.01732298051452212
#>     Attrib V38    0.0919044524624223
#>     Attrib V39    0.06789107813511046
#>     Attrib V4    0.06975755317649464
#>     Attrib V40    0.09610737024663707
#>     Attrib V41    0.11906941177662567
#>     Attrib V42    0.029088761917613726
#>     Attrib V43    0.08664069610726984
#>     Attrib V44    0.10797095458701741
#>     Attrib V45    0.12198321547556266
#>     Attrib V46    0.05685101333410911
#>     Attrib V47    0.06832940965261679
#>     Attrib V48    0.06580064868330782
#>     Attrib V49    0.036676300621713925
#>     Attrib V5    0.07352757378145065
#>     Attrib V50    0.05147966630234906
#>     Attrib V51    0.02311092925418773
#>     Attrib V52    0.057427096684927646
#>     Attrib V53    0.11919757386037289
#>     Attrib V54    0.06150845018061897
#>     Attrib V55    0.07188298624528931
#>     Attrib V56    0.04098197573131038
#>     Attrib V57    0.10361755881309619
#>     Attrib V58    0.10166606732314626
#>     Attrib V59    0.10801665651241564
#>     Attrib V6    0.05334812424567153
#>     Attrib V60    0.13527279550230759
#>     Attrib V7    -0.014545696891197243
#>     Attrib V8    0.014653899811271867
#>     Attrib V9    0.03815470462852467
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.5061144726702959
#>     Attrib V1    0.2825480637665925
#>     Attrib V10    0.9112681699492878
#>     Attrib V11    0.7361161612483998
#>     Attrib V12    0.8302438668041555
#>     Attrib V13    0.15226640682141016
#>     Attrib V14    -0.3434199243152342
#>     Attrib V15    -0.03915445877497682
#>     Attrib V16    -0.050229084695556994
#>     Attrib V17    -0.6364343534173157
#>     Attrib V18    -0.48359960166896
#>     Attrib V19    0.07756069248466754
#>     Attrib V2    -0.02585714235716505
#>     Attrib V20    6.104615370094887E-4
#>     Attrib V21    0.10446166371424191
#>     Attrib V22    0.25039349795155813
#>     Attrib V23    0.0515033530341042
#>     Attrib V24    0.24130053718283712
#>     Attrib V25    -0.22394486090071858
#>     Attrib V26    0.3358291246949422
#>     Attrib V27    0.8038863524940416
#>     Attrib V28    0.6779530193327763
#>     Attrib V29    0.372462107687048
#>     Attrib V3    -0.1971154636583651
#>     Attrib V30    0.356163793729197
#>     Attrib V31    -0.5105129980108798
#>     Attrib V32    0.1670060867060144
#>     Attrib V33    -0.1620356399675594
#>     Attrib V34    -0.22078063480924368
#>     Attrib V35    0.2843153024408738
#>     Attrib V36    -0.46202290304317734
#>     Attrib V37    -0.41022854228800293
#>     Attrib V38    0.1211084660535478
#>     Attrib V39    0.1587282911083541
#>     Attrib V4    -0.2997008729282326
#>     Attrib V40    -0.05930824504246823
#>     Attrib V41    0.6444843132650084
#>     Attrib V42    0.012193259073662912
#>     Attrib V43    0.2991763913162121
#>     Attrib V44    0.31505661354184306
#>     Attrib V45    0.48517802759437206
#>     Attrib V46    0.5291578481876495
#>     Attrib V47    0.4485892663136608
#>     Attrib V48    0.2752362421311932
#>     Attrib V49    0.25127370335140703
#>     Attrib V5    0.2162999342828379
#>     Attrib V50    -0.4158557358132639
#>     Attrib V51    -0.028019901355849256
#>     Attrib V52    0.4731764860253427
#>     Attrib V53    0.4044410753776957
#>     Attrib V54    -0.17013589134981322
#>     Attrib V55    -0.28241747565413444
#>     Attrib V56    -0.34842051585496514
#>     Attrib V57    -0.06209521239546891
#>     Attrib V58    0.29369175928495556
#>     Attrib V59    0.19489449769456302
#>     Attrib V6    0.3429588416373514
#>     Attrib V60    0.16858426771205215
#>     Attrib V7    -0.47635710632146994
#>     Attrib V8    -0.37893513908706655
#>     Attrib V9    0.7640924197174979
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.6137480733223581
#>     Attrib V1    0.2158714605221965
#>     Attrib V10    0.46335660989598254
#>     Attrib V11    0.3903054598177907
#>     Attrib V12    0.4535157292415957
#>     Attrib V13    -0.009750909984251783
#>     Attrib V14    -0.2715365382619428
#>     Attrib V15    0.1732201170152969
#>     Attrib V16    0.11608080433991137
#>     Attrib V17    -0.5062717265432496
#>     Attrib V18    -0.3666952281502155
#>     Attrib V19    0.30834031153786146
#>     Attrib V2    -0.057122143014978484
#>     Attrib V20    0.10874500456423065
#>     Attrib V21    0.18801176213736873
#>     Attrib V22    0.28410447535351346
#>     Attrib V23    0.006512605747674877
#>     Attrib V24    0.1489285371287121
#>     Attrib V25    -0.47286278996584286
#>     Attrib V26    -0.16856989964866434
#>     Attrib V27    0.34952275036491265
#>     Attrib V28    0.20502756522494803
#>     Attrib V29    -0.15311958545866558
#>     Attrib V3    -0.23622121984355657
#>     Attrib V30    -0.015594987424016068
#>     Attrib V31    -0.7149625190202404
#>     Attrib V32    0.2006215242365623
#>     Attrib V33    0.16840570639557093
#>     Attrib V34    -0.0803301302874286
#>     Attrib V35    0.09581542229905994
#>     Attrib V36    -0.7924940212850192
#>     Attrib V37    -1.0205205671811908
#>     Attrib V38    -0.16402341044748467
#>     Attrib V39    0.053500753649101465
#>     Attrib V4    -0.25201932097226
#>     Attrib V40    -0.019558562099054815
#>     Attrib V41    0.49025283493069655
#>     Attrib V42    0.1989980069464106
#>     Attrib V43    0.4909761117594262
#>     Attrib V44    0.15672007481746883
#>     Attrib V45    0.27048923141126746
#>     Attrib V46    0.3619789161894215
#>     Attrib V47    0.24935548296181828
#>     Attrib V48    0.19989519732398986
#>     Attrib V49    0.16318582475170978
#>     Attrib V5    0.1927908086691476
#>     Attrib V50    -0.5683510529669227
#>     Attrib V51    -0.3651499302159805
#>     Attrib V52    0.24306379977534887
#>     Attrib V53    0.1973929899967783
#>     Attrib V54    -0.06618812992167501
#>     Attrib V55    -0.20342434249190255
#>     Attrib V56    -0.04453334444226623
#>     Attrib V57    0.06557352847798409
#>     Attrib V58    0.4517079791745505
#>     Attrib V59    0.37292127379398754
#>     Attrib V6    0.09864892385323167
#>     Attrib V60    0.19991025268009113
#>     Attrib V7    -0.48594947937282373
#>     Attrib V8    -0.3201988496422085
#>     Attrib V9    0.5212250420579974
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.14780158184450035
#>     Attrib V1    0.10058384677331252
#>     Attrib V10    0.02954102105006882
#>     Attrib V11    0.036302392426498686
#>     Attrib V12    0.03335209121889889
#>     Attrib V13    0.01022695410232282
#>     Attrib V14    0.0327475355696504
#>     Attrib V15    0.04890328071665083
#>     Attrib V16    0.01693982438354062
#>     Attrib V17    -0.03900111758089064
#>     Attrib V18    -0.07183572017868807
#>     Attrib V19    -0.03782495348080273
#>     Attrib V2    0.05743217388765602
#>     Attrib V20    -0.0222138860107395
#>     Attrib V21    -0.0435989921879952
#>     Attrib V22    -0.11601654674073372
#>     Attrib V23    -0.10292895217618526
#>     Attrib V24    -0.034710142883489066
#>     Attrib V25    -0.03445138347484712
#>     Attrib V26    -0.07264648098833254
#>     Attrib V27    0.0431455963116214
#>     Attrib V28    -0.03531936719575348
#>     Attrib V29    -0.021536291490274747
#>     Attrib V3    0.12643303642691725
#>     Attrib V30    0.03444503513888126
#>     Attrib V31    -0.11334905272980793
#>     Attrib V32    0.018154842343973725
#>     Attrib V33    0.024024751278598638
#>     Attrib V34    0.08041750560877997
#>     Attrib V35    0.08967289521003947
#>     Attrib V36    0.006179933101297839
#>     Attrib V37    -0.010605732786913876
#>     Attrib V38    0.04906589443189615
#>     Attrib V39    0.12685173961494844
#>     Attrib V4    0.09635295690166458
#>     Attrib V40    0.07635008137358214
#>     Attrib V41    0.09846129661631937
#>     Attrib V42    0.05002022476448423
#>     Attrib V43    0.060457254219064255
#>     Attrib V44    0.08929191491152322
#>     Attrib V45    0.07670758252074038
#>     Attrib V46    0.11838453739788914
#>     Attrib V47    0.11404830067922533
#>     Attrib V48    0.064128806497229
#>     Attrib V49    0.07283525620454381
#>     Attrib V5    0.11388132527214201
#>     Attrib V50    -0.05112812569468207
#>     Attrib V51    -0.011684591292628894
#>     Attrib V52    0.05580305550094698
#>     Attrib V53    0.08873507223479965
#>     Attrib V54    0.03590747268110932
#>     Attrib V55    0.07316649265571225
#>     Attrib V56    0.05808190039702745
#>     Attrib V57    0.15423080131270778
#>     Attrib V58    0.1334033325972015
#>     Attrib V59    0.19699014952473407
#>     Attrib V6    0.03882460412749407
#>     Attrib V60    0.21762238474247264
#>     Attrib V7    0.014179458117657057
#>     Attrib V8    -0.02237956453627786
#>     Attrib V9    0.08144677561371462
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.4732264870586606
#>     Attrib V1    0.36651388557335635
#>     Attrib V10    0.2833865061638852
#>     Attrib V11    0.23736654673073257
#>     Attrib V12    0.3044706242604777
#>     Attrib V13    -0.19127408486137426
#>     Attrib V14    -0.23131301573759458
#>     Attrib V15    0.3637100806977038
#>     Attrib V16    0.21415205157129394
#>     Attrib V17    -0.24639081292748138
#>     Attrib V18    -0.16135393281291419
#>     Attrib V19    0.3994436233131301
#>     Attrib V2    -0.1506266312187851
#>     Attrib V20    0.37875095181292867
#>     Attrib V21    0.35517080734769224
#>     Attrib V22    0.255437187404797
#>     Attrib V23    0.014551689488931945
#>     Attrib V24    0.12012775536659866
#>     Attrib V25    -0.4008020361448878
#>     Attrib V26    -0.3151024883218032
#>     Attrib V27    -0.07355295767699754
#>     Attrib V28    -0.22445287708858114
#>     Attrib V29    -0.6877411673126161
#>     Attrib V3    -0.25292491128283473
#>     Attrib V30    -0.2527554764451784
#>     Attrib V31    -0.8670073067570074
#>     Attrib V32    0.15007573595462784
#>     Attrib V33    0.3341772381359858
#>     Attrib V34    0.1022190732242917
#>     Attrib V35    0.30397052100475985
#>     Attrib V36    -0.5164444119686132
#>     Attrib V37    -0.9894911756647833
#>     Attrib V38    -0.05878580579591601
#>     Attrib V39    0.23332835405437186
#>     Attrib V4    -0.19339113398293942
#>     Attrib V40    -0.02680895072328304
#>     Attrib V41    0.1976057182614141
#>     Attrib V42    0.2391903139359767
#>     Attrib V43    0.6099057219152132
#>     Attrib V44    0.5649289085787936
#>     Attrib V45    0.37406079380973056
#>     Attrib V46    0.25163872655960373
#>     Attrib V47    0.11699786227633074
#>     Attrib V48    0.12281851236222709
#>     Attrib V49    0.22257795160663968
#>     Attrib V5    0.07467560722457593
#>     Attrib V50    -0.48538219316454007
#>     Attrib V51    -0.5545730553843711
#>     Attrib V52    -0.026997873681701635
#>     Attrib V53    -0.08129664669519326
#>     Attrib V54    0.28921531609646867
#>     Attrib V55    -0.053252101509736145
#>     Attrib V56    0.13758487887733656
#>     Attrib V57    0.12310980992771584
#>     Attrib V58    0.5566371574149074
#>     Attrib V59    0.4963454457370015
#>     Attrib V6    -0.12298402923976919
#>     Attrib V60    0.35272612432672357
#>     Attrib V7    -0.3897325658522192
#>     Attrib V8    -0.26991133670235173
#>     Attrib V9    0.3388455548045026
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.6471846469650935
#>     Attrib V1    -0.37961194565392653
#>     Attrib V10    -0.4021561522540696
#>     Attrib V11    -0.22748818030730958
#>     Attrib V12    -0.20184041689960952
#>     Attrib V13    0.194118024128631
#>     Attrib V14    0.3101951825070421
#>     Attrib V15    -0.3487376670208923
#>     Attrib V16    -0.27626224530371574
#>     Attrib V17    0.31847512378809045
#>     Attrib V18    0.17949605057150916
#>     Attrib V19    -0.5917844530133894
#>     Attrib V2    0.2477659374941388
#>     Attrib V20    -0.5779800736119031
#>     Attrib V21    -0.5783160604677273
#>     Attrib V22    -0.38835811319155505
#>     Attrib V23    -0.1195132820509461
#>     Attrib V24    -0.13948070306055463
#>     Attrib V25    0.6347689702163525
#>     Attrib V26    0.6028323383443248
#>     Attrib V27    0.13887188320181287
#>     Attrib V28    0.17281542565423888
#>     Attrib V29    0.8555914728828732
#>     Attrib V3    0.26290521305656905
#>     Attrib V30    0.45633514627830724
#>     Attrib V31    1.402493144516266
#>     Attrib V32    -0.2038725606627538
#>     Attrib V33    -0.5378842537281684
#>     Attrib V34    -0.11579825699627057
#>     Attrib V35    -0.3340707467168892
#>     Attrib V36    0.7772565162854168
#>     Attrib V37    1.684545919513918
#>     Attrib V38    0.17391728917078592
#>     Attrib V39    -0.324858156512036
#>     Attrib V4    0.2537143504754728
#>     Attrib V40    -0.04936991796788935
#>     Attrib V41    -0.39468944408499196
#>     Attrib V42    -0.6610944246600814
#>     Attrib V43    -1.0075143120162133
#>     Attrib V44    -0.8177120292872853
#>     Attrib V45    -0.5920296804998891
#>     Attrib V46    -0.3503129101555139
#>     Attrib V47    -0.2056296353976625
#>     Attrib V48    -0.06210049044242955
#>     Attrib V49    -0.35106229044726134
#>     Attrib V5    -0.1739573366070218
#>     Attrib V50    0.5982478007260614
#>     Attrib V51    0.7616704983742417
#>     Attrib V52    0.08436294183497035
#>     Attrib V53    0.27323561885558506
#>     Attrib V54    -0.29797137350856706
#>     Attrib V55    0.187526170364939
#>     Attrib V56    -0.2096571372250102
#>     Attrib V57    -0.13954306962548596
#>     Attrib V58    -0.7919674840561457
#>     Attrib V59    -0.6535712930162594
#>     Attrib V6    0.11799634895541983
#>     Attrib V60    -0.30391538323790196
#>     Attrib V7    0.3900018441429393
#>     Attrib V8    0.19311334558886167
#>     Attrib V9    -0.4504986260698835
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    0.05888480419713305
#>     Attrib V1    0.17561141067084712
#>     Attrib V10    0.05208562693187326
#>     Attrib V11    0.03472164365821213
#>     Attrib V12    0.0825478490296903
#>     Attrib V13    -0.0862392060663711
#>     Attrib V14    -0.055447784385773934
#>     Attrib V15    0.147268573816866
#>     Attrib V16    0.1610157773020416
#>     Attrib V17    -0.07081680419324153
#>     Attrib V18    -0.047501240145797465
#>     Attrib V19    0.11451991538318398
#>     Attrib V2    -0.04305827044355179
#>     Attrib V20    0.04245719776686482
#>     Attrib V21    0.015578839988882716
#>     Attrib V22    -0.06794151849931714
#>     Attrib V23    -0.21538859578975528
#>     Attrib V24    0.0024173599577156785
#>     Attrib V25    -0.1503179818514708
#>     Attrib V26    -0.17970655533525876
#>     Attrib V27    -0.06870302816100793
#>     Attrib V28    -0.08436775751211636
#>     Attrib V29    -0.2054329435792509
#>     Attrib V3    0.006786489308350833
#>     Attrib V30    -0.09038449195517698
#>     Attrib V31    -0.31322497195897525
#>     Attrib V32    0.03340194425299234
#>     Attrib V33    0.07749662721627507
#>     Attrib V34    0.10192026406217357
#>     Attrib V35    0.12855728821947338
#>     Attrib V36    -0.15526409193433646
#>     Attrib V37    -0.2685970558688463
#>     Attrib V38    0.05066341103970977
#>     Attrib V39    0.12939874033899723
#>     Attrib V4    0.02631103132459818
#>     Attrib V40    -0.005262221203017005
#>     Attrib V41    0.09914300459222405
#>     Attrib V42    0.09716821834910971
#>     Attrib V43    0.1808426011241861
#>     Attrib V44    0.1474404575964456
#>     Attrib V45    0.18987553366111976
#>     Attrib V46    0.11905703929213023
#>     Attrib V47    0.04528256685490749
#>     Attrib V48    0.0496157309163631
#>     Attrib V49    0.019029655731867174
#>     Attrib V5    0.08981179713735946
#>     Attrib V50    -0.13707325976606075
#>     Attrib V51    -0.1164082704795573
#>     Attrib V52    0.06759078332504176
#>     Attrib V53    0.14059315573508852
#>     Attrib V54    0.13888580368542056
#>     Attrib V55    0.09294843942744237
#>     Attrib V56    0.0774745372806863
#>     Attrib V57    0.191698576232982
#>     Attrib V58    0.28106175039955905
#>     Attrib V59    0.2587070690990902
#>     Attrib V6    -0.038053285634468956
#>     Attrib V60    0.251315961377958
#>     Attrib V7    -0.12864160198792374
#>     Attrib V8    -0.09300374328242433
#>     Attrib V9    0.13426942178450807
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.322192461206759
#>     Attrib V1    0.26671296021405483
#>     Attrib V10    0.1515683615165293
#>     Attrib V11    0.09775843084723762
#>     Attrib V12    0.11191592697941835
#>     Attrib V13    -0.21210396748450183
#>     Attrib V14    -0.13482482427746117
#>     Attrib V15    0.3334646588752203
#>     Attrib V16    0.21690950643759146
#>     Attrib V17    -0.16748770720129172
#>     Attrib V18    -0.12587848778188235
#>     Attrib V19    0.2936866657943622
#>     Attrib V2    -0.03581764225649931
#>     Attrib V20    0.2303451539227958
#>     Attrib V21    0.21635142187178058
#>     Attrib V22    0.1577629480575864
#>     Attrib V23    -0.14901409312795008
#>     Attrib V24    0.05958597143689521
#>     Attrib V25    -0.33857529313276535
#>     Attrib V26    -0.2998664715601334
#>     Attrib V27    -0.07359212800376139
#>     Attrib V28    -0.1765944523807413
#>     Attrib V29    -0.46760613357893416
#>     Attrib V3    -0.13414166645946904
#>     Attrib V30    -0.13435004377457388
#>     Attrib V31    -0.5439954283881853
#>     Attrib V32    0.03017921054592516
#>     Attrib V33    0.22905868612659164
#>     Attrib V34    0.060205966442025284
#>     Attrib V35    0.22187318189273283
#>     Attrib V36    -0.37091286308179855
#>     Attrib V37    -0.6807805585041535
#>     Attrib V38    0.04172397655529075
#>     Attrib V39    0.17418938798020125
#>     Attrib V4    -0.08490768620402199
#>     Attrib V40    -0.04760386988219941
#>     Attrib V41    0.16813995540028795
#>     Attrib V42    0.14434069041852138
#>     Attrib V43    0.44010991698968344
#>     Attrib V44    0.3728460490003772
#>     Attrib V45    0.33923289118446964
#>     Attrib V46    0.1258318693417684
#>     Attrib V47    0.021613525899797727
#>     Attrib V48    0.11232014825760965
#>     Attrib V49    0.061797888405979134
#>     Attrib V5    0.08669865306856717
#>     Attrib V50    -0.34913829274921365
#>     Attrib V51    -0.3580429962542194
#>     Attrib V52    -0.02740866688589725
#>     Attrib V53    8.656975083777238E-4
#>     Attrib V54    0.16722417120674316
#>     Attrib V55    0.028570792204912935
#>     Attrib V56    0.11155498071453643
#>     Attrib V57    0.18770566391284824
#>     Attrib V58    0.3287300674309673
#>     Attrib V59    0.34816402831900845
#>     Attrib V6    -0.10702986208085953
#>     Attrib V60    0.3000397550342899
#>     Attrib V7    -0.31465690228658694
#>     Attrib V8    -0.11793987559392693
#>     Attrib V9    0.20675570413865713
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.6130337604133425
#>     Attrib V1    -0.31322261373550964
#>     Attrib V10    -0.4085937845382288
#>     Attrib V11    -0.28021376605105636
#>     Attrib V12    -0.4341787979000703
#>     Attrib V13    0.04144920268392407
#>     Attrib V14    0.2998281944425258
#>     Attrib V15    -0.3151460569954029
#>     Attrib V16    -0.18340992594943487
#>     Attrib V17    0.3374529159008999
#>     Attrib V18    0.2715338993671086
#>     Attrib V19    -0.5730834198693949
#>     Attrib V2    0.17701333374211098
#>     Attrib V20    -0.40596498842976697
#>     Attrib V21    -0.40853715042764743
#>     Attrib V22    -0.43031853162998346
#>     Attrib V23    -0.14839782151964528
#>     Attrib V24    -0.258153021119486
#>     Attrib V25    0.4907198789501391
#>     Attrib V26    0.3050180673059037
#>     Attrib V27    -0.12542502584188467
#>     Attrib V28    -0.1123932997441818
#>     Attrib V29    0.4658013495464285
#>     Attrib V3    0.2371933199219929
#>     Attrib V30    0.26095283986195533
#>     Attrib V31    1.1431653221318188
#>     Attrib V32    -0.2028843096677321
#>     Attrib V33    -0.31391235579737964
#>     Attrib V34    0.009350950390322176
#>     Attrib V35    -0.2769358765112507
#>     Attrib V36    0.794430740458779
#>     Attrib V37    1.2848041800675827
#>     Attrib V38    0.04349073022683191
#>     Attrib V39    -0.29403666253827265
#>     Attrib V4    0.2323262102992084
#>     Attrib V40    -0.02997695528743688
#>     Attrib V41    -0.4339377980410392
#>     Attrib V42    -0.445993233808691
#>     Attrib V43    -0.8086061943472161
#>     Attrib V44    -0.5491585106799145
#>     Attrib V45    -0.518912745098978
#>     Attrib V46    -0.38220513551615287
#>     Attrib V47    -0.1996815062415475
#>     Attrib V48    -0.06398804636748923
#>     Attrib V49    -0.27718065358436195
#>     Attrib V5    -0.17319927486310946
#>     Attrib V50    0.497350697627864
#>     Attrib V51    0.6115321069271554
#>     Attrib V52    -0.03549328159823002
#>     Attrib V53    0.05991090943856575
#>     Attrib V54    -0.18877092997471243
#>     Attrib V55    0.2073624497627121
#>     Attrib V56    -0.12255249065260565
#>     Attrib V57    -0.07208697694169605
#>     Attrib V58    -0.6120596952897209
#>     Attrib V59    -0.46033914245778734
#>     Attrib V6    0.04060193679229407
#>     Attrib V60    -0.1798734561884729
#>     Attrib V7    0.5396765005918975
#>     Attrib V8    0.36227559682014143
#>     Attrib V9    -0.4177269582995638
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.6182997595595086
#>     Attrib V1    0.21984556746800327
#>     Attrib V10    0.7193465192657342
#>     Attrib V11    0.5364249115918998
#>     Attrib V12    0.7516137217312652
#>     Attrib V13    0.09008225514748612
#>     Attrib V14    -0.3711358684261008
#>     Attrib V15    0.05215410391229461
#>     Attrib V16    -0.013862846660251331
#>     Attrib V17    -0.590194927575008
#>     Attrib V18    -0.42120269745582134
#>     Attrib V19    0.2179195954932389
#>     Attrib V2    -0.05497593187624811
#>     Attrib V20    -0.054407335359906224
#>     Attrib V21    0.05605344979733512
#>     Attrib V22    0.2509740475746721
#>     Attrib V23    -0.008413207377775593
#>     Attrib V24    0.2660327752827687
#>     Attrib V25    -0.3044267538933768
#>     Attrib V26    0.1245061267295629
#>     Attrib V27    0.6093145968841719
#>     Attrib V28    0.41913409438350324
#>     Attrib V29    0.039741765874353144
#>     Attrib V3    -0.24628360932090376
#>     Attrib V30    0.08468134413630767
#>     Attrib V31    -0.5718494595609181
#>     Attrib V32    0.21415864918445282
#>     Attrib V33    0.01849488111394119
#>     Attrib V34    -0.16461947445500427
#>     Attrib V35    0.2519444465526868
#>     Attrib V36    -0.6324127242980416
#>     Attrib V37    -0.7484445741818649
#>     Attrib V38    -0.0955256249507634
#>     Attrib V39    0.0821462502219907
#>     Attrib V4    -0.28979501597368984
#>     Attrib V40    -0.03847588378861986
#>     Attrib V41    0.6098838066004002
#>     Attrib V42    0.11163431396340814
#>     Attrib V43    0.36112105450244186
#>     Attrib V44    0.27561294917903284
#>     Attrib V45    0.4390651039073243
#>     Attrib V46    0.49189621245225773
#>     Attrib V47    0.31759942000210556
#>     Attrib V48    0.23935685021772343
#>     Attrib V49    0.31968243263896956
#>     Attrib V5    0.19620974446622533
#>     Attrib V50    -0.5161800355871993
#>     Attrib V51    -0.27260355739233266
#>     Attrib V52    0.4092804787321321
#>     Attrib V53    0.3724725676448077
#>     Attrib V54    -0.1637202908704551
#>     Attrib V55    -0.23349748479503493
#>     Attrib V56    -0.34628124386946657
#>     Attrib V57    -0.015027882790264846
#>     Attrib V58    0.39940545326425547
#>     Attrib V59    0.2707988340569823
#>     Attrib V6    0.30446998269352743
#>     Attrib V60    0.16362787848065605
#>     Attrib V7    -0.4155711042850894
#>     Attrib V8    -0.44257500379966297
#>     Attrib V9    0.6348010597070082
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.4561800819575101
#>     Attrib V1    0.2673243957767483
#>     Attrib V10    0.4172027073178536
#>     Attrib V11    0.3098408792899112
#>     Attrib V12    0.47041520021359173
#>     Attrib V13    0.002136400841594837
#>     Attrib V14    -0.20894455812849314
#>     Attrib V15    0.14636269312305336
#>     Attrib V16    0.06285727208162677
#>     Attrib V17    -0.3432246801899931
#>     Attrib V18    -0.1985963430296099
#>     Attrib V19    0.3059365708193356
#>     Attrib V2    -0.09725131801099199
#>     Attrib V20    0.21394302359935338
#>     Attrib V21    0.30987106021707295
#>     Attrib V22    0.3398515294163475
#>     Attrib V23    0.0975388855637659
#>     Attrib V24    0.22298602645184656
#>     Attrib V25    -0.2624449572062437
#>     Attrib V26    0.03957721529865883
#>     Attrib V27    0.38346978857900366
#>     Attrib V28    0.18321525070531045
#>     Attrib V29    -0.08347151817721539
#>     Attrib V3    -0.2352445847201605
#>     Attrib V30    0.045403450049867296
#>     Attrib V31    -0.6554390785621177
#>     Attrib V32    0.05820319167401936
#>     Attrib V33    0.01871524032597162
#>     Attrib V34    -0.07769393744763634
#>     Attrib V35    0.3098045827187312
#>     Attrib V36    -0.2617400039552681
#>     Attrib V37    -0.4867964175255186
#>     Attrib V38    0.11810233401945033
#>     Attrib V39    0.20588872876847722
#>     Attrib V4    -0.24375574700471137
#>     Attrib V40    0.011224706697959172
#>     Attrib V41    0.3923261646864205
#>     Attrib V42    0.07251028339393854
#>     Attrib V43    0.517318322825191
#>     Attrib V44    0.49286795730654615
#>     Attrib V45    0.3843142363518317
#>     Attrib V46    0.2799169167192194
#>     Attrib V47    0.14086337914993252
#>     Attrib V48    0.09350374378233318
#>     Attrib V49    0.13525200316799452
#>     Attrib V5    0.15440131773957905
#>     Attrib V50    -0.46412148166155087
#>     Attrib V51    -0.2841963126796359
#>     Attrib V52    0.1820414541343377
#>     Attrib V53    0.11291869589258421
#>     Attrib V54    0.061230563120047946
#>     Attrib V55    -0.14026200587665152
#>     Attrib V56    -0.05973441136703961
#>     Attrib V57    -0.08524012279183339
#>     Attrib V58    0.34886785557736555
#>     Attrib V59    0.3299020400982144
#>     Attrib V6    0.02708894058779815
#>     Attrib V60    0.23840631356441552
#>     Attrib V7    -0.3857136525873833
#>     Attrib V8    -0.4224324276264088
#>     Attrib V9    0.4309559893554643
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.6332161035358921
#>     Attrib V1    -0.3739518896656706
#>     Attrib V10    -0.5057379793663266
#>     Attrib V11    -0.3169201429866761
#>     Attrib V12    -0.29474876908924935
#>     Attrib V13    0.14538924216196933
#>     Attrib V14    0.35824789274435226
#>     Attrib V15    -0.3849945716436046
#>     Attrib V16    -0.2729220010077142
#>     Attrib V17    0.3593666977068485
#>     Attrib V18    0.25184924165874784
#>     Attrib V19    -0.7063667633223651
#>     Attrib V2    0.25361481130157293
#>     Attrib V20    -0.6985357700703049
#>     Attrib V21    -0.6001315123088818
#>     Attrib V22    -0.539397455984328
#>     Attrib V23    -0.28762257003569597
#>     Attrib V24    -0.21378120020529384
#>     Attrib V25    0.7103706045138513
#>     Attrib V26    0.57471885418769
#>     Attrib V27    0.11445102322534245
#>     Attrib V28    0.04978595076146044
#>     Attrib V29    0.850047776705001
#>     Attrib V3    0.21465701045173888
#>     Attrib V30    0.49866058044469436
#>     Attrib V31    1.6984101252303958
#>     Attrib V32    -0.24491999649121227
#>     Attrib V33    -0.5872524269776737
#>     Attrib V34    -0.1451904304980638
#>     Attrib V35    -0.453859487402521
#>     Attrib V36    0.7740964319269841
#>     Attrib V37    1.8744399047743607
#>     Attrib V38    0.15913127003089625
#>     Attrib V39    -0.4407153788592001
#>     Attrib V4    0.32982008522092654
#>     Attrib V40    -0.024662392017376362
#>     Attrib V41    -0.35371973915091404
#>     Attrib V42    -0.7864217202198521
#>     Attrib V43    -1.168603850312058
#>     Attrib V44    -0.9825607026425649
#>     Attrib V45    -0.793545265258052
#>     Attrib V46    -0.48604592151283155
#>     Attrib V47    -0.26824600131214227
#>     Attrib V48    0.019148923186238835
#>     Attrib V49    -0.42389088143194126
#>     Attrib V5    -0.1813554017137841
#>     Attrib V50    0.6447337597770663
#>     Attrib V51    0.8417628261736367
#>     Attrib V52    0.1373526814829688
#>     Attrib V53    0.3410920190934269
#>     Attrib V54    -0.29787969182415075
#>     Attrib V55    0.18369777047598812
#>     Attrib V56    -0.32566823731324307
#>     Attrib V57    0.014651105774353048
#>     Attrib V58    -0.9072015000960388
#>     Attrib V59    -0.6097124675190576
#>     Attrib V6    0.16302093412476504
#>     Attrib V60    -0.11796537662051945
#>     Attrib V7    0.5912389347480376
#>     Attrib V8    0.1888568842043237
#>     Attrib V9    -0.5023512754818666
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.2767031881072823
#>     Attrib V1    0.32820270364301946
#>     Attrib V10    0.0355469816746959
#>     Attrib V11    -0.0062637977660471396
#>     Attrib V12    0.049365704189189626
#>     Attrib V13    -0.2716173266102803
#>     Attrib V14    -0.0920011611114131
#>     Attrib V15    0.3077705826827248
#>     Attrib V16    0.309268680540641
#>     Attrib V17    -0.09432470037087262
#>     Attrib V18    -0.07818266744134302
#>     Attrib V19    0.2887819441615928
#>     Attrib V2    -0.06904864265773894
#>     Attrib V20    0.3184338310256485
#>     Attrib V21    0.247942600012089
#>     Attrib V22    0.0639661105937351
#>     Attrib V23    -0.18143275293895034
#>     Attrib V24    0.06822636349799387
#>     Attrib V25    -0.3508724080978395
#>     Attrib V26    -0.44740843445536893
#>     Attrib V27    -0.29310176088218265
#>     Attrib V28    -0.3969988967446979
#>     Attrib V29    -0.6307886050515619
#>     Attrib V3    -0.13164723770337267
#>     Attrib V30    -0.3049773102087924
#>     Attrib V31    -0.61410390966075
#>     Attrib V32    0.06514502890177432
#>     Attrib V33    0.27392493084275443
#>     Attrib V34    0.19962170354795764
#>     Attrib V35    0.24150553592132562
#>     Attrib V36    -0.3403265449198653
#>     Attrib V37    -0.7451630343456542
#>     Attrib V38    -0.04662776573078668
#>     Attrib V39    0.13384376731188485
#>     Attrib V4    -0.054040965419651046
#>     Attrib V40    0.01924286177815994
#>     Attrib V41    0.03718512228952269
#>     Attrib V42    0.18121080718987956
#>     Attrib V43    0.4880700207564978
#>     Attrib V44    0.34696580193187376
#>     Attrib V45    0.23235201191417593
#>     Attrib V46    0.1422149330840212
#>     Attrib V47    -0.00782001878939749
#>     Attrib V48    0.08780552170039624
#>     Attrib V49    0.09857022501205513
#>     Attrib V5    0.11513493488182443
#>     Attrib V50    -0.3431680085805109
#>     Attrib V51    -0.43222357225315966
#>     Attrib V52    -0.07255625393775511
#>     Attrib V53    -0.03674655548427836
#>     Attrib V54    0.34043957615409814
#>     Attrib V55    0.07535086506934734
#>     Attrib V56    0.2276508302538731
#>     Attrib V57    0.19873325779521747
#>     Attrib V58    0.4831430639356584
#>     Attrib V59    0.4600270936482313
#>     Attrib V6    -0.14144858788415565
#>     Attrib V60    0.375667758308113
#>     Attrib V7    -0.21584358664482917
#>     Attrib V8    -0.1730829774723781
#>     Attrib V9    0.15849356037287707
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.21336711814874626
#>     Attrib V1    0.24318536612554287
#>     Attrib V10    -0.009894875122018122
#>     Attrib V11    0.07901257424252783
#>     Attrib V12    0.15656429184885504
#>     Attrib V13    -0.1422561068362775
#>     Attrib V14    -0.05865212349460178
#>     Attrib V15    0.22069479266658962
#>     Attrib V16    0.13509823126553658
#>     Attrib V17    -0.04848881944598282
#>     Attrib V18    -0.04717365354142037
#>     Attrib V19    0.22702215485713798
#>     Attrib V2    -0.0766007982934554
#>     Attrib V20    0.17873254753511877
#>     Attrib V21    0.14063560566095665
#>     Attrib V22    0.04623430257010071
#>     Attrib V23    -0.11094940781011034
#>     Attrib V24    0.012690259513965834
#>     Attrib V25    -0.2136567142285762
#>     Attrib V26    -0.19772278697055876
#>     Attrib V27    -0.13830098439932645
#>     Attrib V28    -0.2400493714294236
#>     Attrib V29    -0.4358324244460045
#>     Attrib V3    -0.04624476688949513
#>     Attrib V30    -0.1915526913463384
#>     Attrib V31    -0.5187705950345538
#>     Attrib V32    0.004122641846330716
#>     Attrib V33    0.15251579733717255
#>     Attrib V34    0.1171434623899679
#>     Attrib V35    0.2840061811964691
#>     Attrib V36    -0.1436482186182313
#>     Attrib V37    -0.3798767594010382
#>     Attrib V38    0.056488161720104915
#>     Attrib V39    0.1693561169405682
#>     Attrib V4    0.013974185896474204
#>     Attrib V40    -0.020776176839186054
#>     Attrib V41    0.07086395545596468
#>     Attrib V42    0.0811764153518996
#>     Attrib V43    0.3705976895718351
#>     Attrib V44    0.30491412600726037
#>     Attrib V45    0.2779129120640129
#>     Attrib V46    0.11446209995374997
#>     Attrib V47    0.06547271340621492
#>     Attrib V48    -3.432987435218826E-4
#>     Attrib V49    0.05021737622194398
#>     Attrib V5    0.08409064634008623
#>     Attrib V50    -0.2987216549547473
#>     Attrib V51    -0.3206327631451434
#>     Attrib V52    0.036940551157667506
#>     Attrib V53    0.061122577717921345
#>     Attrib V54    0.2352732448985324
#>     Attrib V55    0.0855077899907225
#>     Attrib V56    0.15247244875378255
#>     Attrib V57    0.12360196078794473
#>     Attrib V58    0.32367795290339946
#>     Attrib V59    0.406470478204318
#>     Attrib V6    -0.11776358197527581
#>     Attrib V60    0.2556269121329878
#>     Attrib V7    -0.19812232499704788
#>     Attrib V8    -0.1581651460177603
#>     Attrib V9    0.10707052497124589
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.3054540823476533
#>     Attrib V1    -0.1670631677181916
#>     Attrib V10    -0.32262249382691627
#>     Attrib V11    -0.25020368357881917
#>     Attrib V12    -0.3211266291100127
#>     Attrib V13    -0.06946452583704593
#>     Attrib V14    0.19618408781166197
#>     Attrib V15    -0.05570315366047858
#>     Attrib V16    -0.09994586182274735
#>     Attrib V17    0.23451604247984972
#>     Attrib V18    0.0848262598108777
#>     Attrib V19    -0.25654020209418726
#>     Attrib V2    0.0452098582153716
#>     Attrib V20    -0.14706122166856506
#>     Attrib V21    -0.17445343859326212
#>     Attrib V22    -0.24634029742815847
#>     Attrib V23    -0.06721969080121896
#>     Attrib V24    -0.17472541686027332
#>     Attrib V25    0.23952338226324124
#>     Attrib V26    0.10446743987940309
#>     Attrib V27    -0.21939346260536097
#>     Attrib V28    -0.14366484196922258
#>     Attrib V29    0.09955158825405207
#>     Attrib V3    0.09120308410784493
#>     Attrib V30    0.0694037664470114
#>     Attrib V31    0.44062582949429535
#>     Attrib V32    -0.11967693186266536
#>     Attrib V33    -0.13229221713365372
#>     Attrib V34    0.014269500711398314
#>     Attrib V35    -0.16496211193552252
#>     Attrib V36    0.3747444331507031
#>     Attrib V37    0.42373261109554955
#>     Attrib V38    -0.07328610890746685
#>     Attrib V39    -0.20249721820719482
#>     Attrib V4    0.1928805440783618
#>     Attrib V40    0.030730563126562284
#>     Attrib V41    -0.2395209614545702
#>     Attrib V42    -0.13276675021921872
#>     Attrib V43    -0.2789250913933337
#>     Attrib V44    -0.292989833356808
#>     Attrib V45    -0.29117630917773396
#>     Attrib V46    -0.22339063632647546
#>     Attrib V47    -0.0913170013905032
#>     Attrib V48    -0.03455193007305523
#>     Attrib V49    -0.1873153191501327
#>     Attrib V5    -0.14560324435308733
#>     Attrib V50    0.301381375044962
#>     Attrib V51    0.22401346898007626
#>     Attrib V52    -0.06782838779139791
#>     Attrib V53    -0.12400213233864996
#>     Attrib V54    -0.07246124702206833
#>     Attrib V55    0.12510200370069255
#>     Attrib V56    0.0387973684157693
#>     Attrib V57    0.08967241581810319
#>     Attrib V58    -0.24933862378319874
#>     Attrib V59    -0.16750612441304286
#>     Attrib V6    -0.038508432825714076
#>     Attrib V60    -0.1008276324637257
#>     Attrib V7    0.20779689458820158
#>     Attrib V8    0.22184019313201653
#>     Attrib V9    -0.21735555867352235
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.4093843253661844
#>     Attrib V1    0.24942189329035763
#>     Attrib V10    1.6413756941549205
#>     Attrib V11    1.4774972736644676
#>     Attrib V12    1.7216357897091825
#>     Attrib V13    0.9499294906316421
#>     Attrib V14    -0.2901805926070551
#>     Attrib V15    -0.35923108554899086
#>     Attrib V16    -0.34521950613383134
#>     Attrib V17    -1.02347899552901
#>     Attrib V18    -0.7728459400661125
#>     Attrib V19    0.06311595780545123
#>     Attrib V2    0.42456462927448085
#>     Attrib V20    -0.2544063463945905
#>     Attrib V21    -0.12500934321695326
#>     Attrib V22    0.6703327423588169
#>     Attrib V23    0.8403827266452297
#>     Attrib V24    0.7288376149658544
#>     Attrib V25    -0.14854787919975718
#>     Attrib V26    1.1138221323330286
#>     Attrib V27    1.9510122507945045
#>     Attrib V28    1.7987985668433026
#>     Attrib V29    1.6639713271007344
#>     Attrib V3    0.29361072833623847
#>     Attrib V30    0.7664846166350252
#>     Attrib V31    -0.5432560084417521
#>     Attrib V32    0.21022583599453254
#>     Attrib V33    -0.7201669966421784
#>     Attrib V34    -0.5223215994238647
#>     Attrib V35    0.344621906541561
#>     Attrib V36    -0.7295211742609079
#>     Attrib V37    -0.0071572021367820845
#>     Attrib V38    0.07386391634617592
#>     Attrib V39    0.2470994538259076
#>     Attrib V4    -0.297349344609877
#>     Attrib V40    0.2715636649253696
#>     Attrib V41    1.6329383544527385
#>     Attrib V42    -0.15638414096878445
#>     Attrib V43    0.10023648039514589
#>     Attrib V44    0.17964689073666035
#>     Attrib V45    0.5140415040506361
#>     Attrib V46    0.9514350262235954
#>     Attrib V47    0.6577887778651954
#>     Attrib V48    0.19390642544654874
#>     Attrib V49    0.4707281654610757
#>     Attrib V5    0.5656379962353438
#>     Attrib V50    -0.43638920706945916
#>     Attrib V51    0.5086918383389011
#>     Attrib V52    1.3916005123902895
#>     Attrib V53    1.3697855851526022
#>     Attrib V54    -0.43378696396110933
#>     Attrib V55    -0.4854952574826187
#>     Attrib V56    -0.48970768320630503
#>     Attrib V57    -0.3434578407960139
#>     Attrib V58    0.21248474550076377
#>     Attrib V59    0.032730229943230285
#>     Attrib V6    0.9649795915704119
#>     Attrib V60    0.01019232773986272
#>     Attrib V7    -0.7218046438597883
#>     Attrib V8    -0.8004003610564343
#>     Attrib V9    1.3117772920456763
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.22082762887833488
#>     Attrib V1    0.03162587599555166
#>     Attrib V10    -0.016494146723901478
#>     Attrib V11    -0.051629157338927104
#>     Attrib V12    -0.014232619637352444
#>     Attrib V13    -0.030936726093766492
#>     Attrib V14    0.09392445448459644
#>     Attrib V15    -0.006627918523332543
#>     Attrib V16    -0.003072187335162517
#>     Attrib V17    0.03349576123138669
#>     Attrib V18    -0.06345570349089032
#>     Attrib V19    -0.027176830571594143
#>     Attrib V2    0.1044374177285345
#>     Attrib V20    -0.07090899671918491
#>     Attrib V21    -0.06331636956657676
#>     Attrib V22    -0.07599910295554231
#>     Attrib V23    -0.054726631175726986
#>     Attrib V24    -0.05132858953233443
#>     Attrib V25    0.010607342672792676
#>     Attrib V26    -0.03533448484965087
#>     Attrib V27    -0.007556200144082138
#>     Attrib V28    0.006579502092174554
#>     Attrib V29    0.020673664187063318
#>     Attrib V3    0.06971524210166619
#>     Attrib V30    0.034395202535482165
#>     Attrib V31    0.025437522305281457
#>     Attrib V32    -0.03304273450675582
#>     Attrib V33    0.05265616010633926
#>     Attrib V34    0.035650584379992634
#>     Attrib V35    0.11675282176334925
#>     Attrib V36    0.1544676896453421
#>     Attrib V37    0.13774026671151515
#>     Attrib V38    -0.014630401136289233
#>     Attrib V39    0.023890520205587108
#>     Attrib V4    0.13026687428826364
#>     Attrib V40    0.05038124223066605
#>     Attrib V41    0.025273784913179827
#>     Attrib V42    0.04800696352117258
#>     Attrib V43    0.036963600178417745
#>     Attrib V44    0.010544660749273878
#>     Attrib V45    0.0046840600018847505
#>     Attrib V46    0.0037355469449010213
#>     Attrib V47    0.02445477131331753
#>     Attrib V48    0.07963444059276581
#>     Attrib V49    -0.014446345910767554
#>     Attrib V5    0.01639550790026959
#>     Attrib V50    0.07114859702457942
#>     Attrib V51    0.05066462742379647
#>     Attrib V52    0.026906110245332016
#>     Attrib V53    0.021060900678485383
#>     Attrib V54    -0.0013141614239211424
#>     Attrib V55    0.09004229617221862
#>     Attrib V56    0.09400617614677526
#>     Attrib V57    0.12607322246313632
#>     Attrib V58    0.06480477623374566
#>     Attrib V59    0.049215486055065025
#>     Attrib V6    0.07266931122233761
#>     Attrib V60    0.14519868442656778
#>     Attrib V7    0.009875864066210625
#>     Attrib V8    0.07789079701912364
#>     Attrib V9    0.013411754462049933
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.6037399553073822
#>     Attrib V1    0.4620605109849365
#>     Attrib V10    1.0216317059694686
#>     Attrib V11    0.8822746438768618
#>     Attrib V12    0.9742082882043345
#>     Attrib V13    0.2887523511108799
#>     Attrib V14    -0.3606737519978343
#>     Attrib V15    -0.048545283399483025
#>     Attrib V16    -0.12540442382475572
#>     Attrib V17    -0.8435649758299479
#>     Attrib V18    -0.5953684587891315
#>     Attrib V19    -0.020765327831305688
#>     Attrib V2    0.10887309458875752
#>     Attrib V20    -0.20541536757559006
#>     Attrib V21    0.04183776648961056
#>     Attrib V22    0.21279328475580403
#>     Attrib V23    -0.04868347524803875
#>     Attrib V24    0.2744615214114606
#>     Attrib V25    -0.21955075296370355
#>     Attrib V26    0.6028444946349267
#>     Attrib V27    1.0142682607745166
#>     Attrib V28    0.8287811751343899
#>     Attrib V29    0.6544199804036384
#>     Attrib V3    -0.1297114318753216
#>     Attrib V30    0.4536727822675297
#>     Attrib V31    -0.3849737638312549
#>     Attrib V32    0.13684934267312163
#>     Attrib V33    -0.3207357794755205
#>     Attrib V34    -0.29132052824883503
#>     Attrib V35    0.27552125788367055
#>     Attrib V36    -0.40704731346652817
#>     Attrib V37    -0.10681217578692483
#>     Attrib V38    0.24427854399904586
#>     Attrib V39    0.262853989715579
#>     Attrib V4    -0.2650466518830686
#>     Attrib V40    -0.07451173977841272
#>     Attrib V41    0.7525059254722679
#>     Attrib V42    -0.1348744577163024
#>     Attrib V43    0.14013523395587604
#>     Attrib V44    0.1947875351822826
#>     Attrib V45    0.44506958553566606
#>     Attrib V46    0.5556840373826006
#>     Attrib V47    0.4143176561268304
#>     Attrib V48    0.30432881728577926
#>     Attrib V49    0.2365497167442769
#>     Attrib V5    0.22239454840063425
#>     Attrib V50    -0.3757610424379837
#>     Attrib V51    0.02994690174854084
#>     Attrib V52    0.6174952786348165
#>     Attrib V53    0.6343232228726498
#>     Attrib V54    -0.17653121635099595
#>     Attrib V55    -0.22246689582694568
#>     Attrib V56    -0.47696567068050266
#>     Attrib V57    -0.0183579596704125
#>     Attrib V58    0.24350215853967147
#>     Attrib V59    0.3456279488893131
#>     Attrib V6    0.44583716250626665
#>     Attrib V60    0.31504643060767257
#>     Attrib V7    -0.40042104008329754
#>     Attrib V8    -0.4732081919535254
#>     Attrib V9    0.7876527193834667
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.46900572889113973
#>     Attrib V1    -0.2716875166167735
#>     Attrib V10    -0.4299992813249348
#>     Attrib V11    -0.2745771884446429
#>     Attrib V12    -0.47148889653572973
#>     Attrib V13    -0.030862061645274247
#>     Attrib V14    0.2692876352188405
#>     Attrib V15    -0.20128839981199317
#>     Attrib V16    -0.09796325549236828
#>     Attrib V17    0.3161743902293822
#>     Attrib V18    0.24410513436307693
#>     Attrib V19    -0.5394456753199961
#>     Attrib V2    0.08007866165524176
#>     Attrib V20    -0.3729550153721719
#>     Attrib V21    -0.34805148172313355
#>     Attrib V22    -0.42456488120248265
#>     Attrib V23    -0.27953512916655565
#>     Attrib V24    -0.29093899714985644
#>     Attrib V25    0.3874331824657486
#>     Attrib V26    0.24498354734244154
#>     Attrib V27    -0.17133513980468504
#>     Attrib V28    -0.19167761958878793
#>     Attrib V29    0.3951091732874124
#>     Attrib V3    0.14435210282379757
#>     Attrib V30    0.29853493932979147
#>     Attrib V31    1.012916355499943
#>     Attrib V32    -0.22157360929579378
#>     Attrib V33    -0.3158289891877118
#>     Attrib V34    0.04610498046358313
#>     Attrib V35    -0.12052235188059052
#>     Attrib V36    0.8922795971513681
#>     Attrib V37    1.3353358445767898
#>     Attrib V38    0.2008338710243088
#>     Attrib V39    -0.255300551855637
#>     Attrib V4    0.28179524012061336
#>     Attrib V40    -0.02224361917597275
#>     Attrib V41    -0.40847252398509365
#>     Attrib V42    -0.4620466640838206
#>     Attrib V43    -0.7419722967195994
#>     Attrib V44    -0.4647355013732328
#>     Attrib V45    -0.3319660301911691
#>     Attrib V46    -0.36250507219314027
#>     Attrib V47    -0.30661243286927287
#>     Attrib V48    -0.055279506136746565
#>     Attrib V49    -0.3303095721578093
#>     Attrib V5    -0.25071793045614954
#>     Attrib V50    0.491834452125844
#>     Attrib V51    0.43193589806316096
#>     Attrib V52    -0.02940144787167403
#>     Attrib V53    -0.007873265856809707
#>     Attrib V54    -0.09837796038748188
#>     Attrib V55    0.18964850669009128
#>     Attrib V56    -0.18745010422660346
#>     Attrib V57    -0.012270150593557152
#>     Attrib V58    -0.5708735149981516
#>     Attrib V59    -0.40890624722437097
#>     Attrib V6    0.04012425152914654
#>     Attrib V60    -0.18062538504464978
#>     Attrib V7    0.5616396647287223
#>     Attrib V8    0.41956390394304277
#>     Attrib V9    -0.3362583466621315
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.4028751531693573
#>     Attrib V1    0.19595675853479977
#>     Attrib V10    0.2662382804096292
#>     Attrib V11    0.269003661420252
#>     Attrib V12    0.37005861436327503
#>     Attrib V13    -0.048749051366057436
#>     Attrib V14    -0.15029956739367045
#>     Attrib V15    0.21917199631060164
#>     Attrib V16    0.11944458848677297
#>     Attrib V17    -0.3211202297509513
#>     Attrib V18    -0.2227578354142594
#>     Attrib V19    0.24787683670684105
#>     Attrib V2    -0.10559748754894267
#>     Attrib V20    0.2585331276217343
#>     Attrib V21    0.28461849495900315
#>     Attrib V22    0.2700688699996712
#>     Attrib V23    -0.029135266418012753
#>     Attrib V24    0.2026787903424534
#>     Attrib V25    -0.23888296144426568
#>     Attrib V26    -0.1510044761606088
#>     Attrib V27    0.1895919837166739
#>     Attrib V28    0.08657117505656929
#>     Attrib V29    -0.21876022509490461
#>     Attrib V3    -0.1386239522396256
#>     Attrib V30    -0.143848865020521
#>     Attrib V31    -0.6603564710373773
#>     Attrib V32    0.12550271658005102
#>     Attrib V33    0.1205504453599584
#>     Attrib V34    0.014802957343902969
#>     Attrib V35    0.25770345549304485
#>     Attrib V36    -0.4362870707946297
#>     Attrib V37    -0.6610748348516352
#>     Attrib V38    0.006965173866813245
#>     Attrib V39    0.20277397273637024
#>     Attrib V4    -0.2294281167445904
#>     Attrib V40    -0.013511921527646742
#>     Attrib V41    0.2851248794538379
#>     Attrib V42    0.11390865268622413
#>     Attrib V43    0.49014514569664774
#>     Attrib V44    0.30176789774827784
#>     Attrib V45    0.3583169694770121
#>     Attrib V46    0.25875122599677797
#>     Attrib V47    0.1719951365993545
#>     Attrib V48    0.04877298386444342
#>     Attrib V49    0.08621549350295903
#>     Attrib V5    0.07579582790359081
#>     Attrib V50    -0.4082584782221045
#>     Attrib V51    -0.3512029150791051
#>     Attrib V52    0.11490952400792312
#>     Attrib V53    0.07676045596562445
#>     Attrib V54    0.07628722531312958
#>     Attrib V55    -0.0634996563005812
#>     Attrib V56    0.03125231873165106
#>     Attrib V57    0.04197127290225336
#>     Attrib V58    0.32084553571309454
#>     Attrib V59    0.2786180995576832
#>     Attrib V6    -0.02074029920833571
#>     Attrib V60    0.22920678849188653
#>     Attrib V7    -0.39397518032958506
#>     Attrib V8    -0.2961954062858407
#>     Attrib V9    0.3257931420630667
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.47187582070731715
#>     Attrib V1    -0.25670385376188987
#>     Attrib V10    -0.2924781501162448
#>     Attrib V11    -0.21503282708729218
#>     Attrib V12    -0.2939915031210549
#>     Attrib V13    0.09898440797742776
#>     Attrib V14    0.24302772155343766
#>     Attrib V15    -0.26429147049455765
#>     Attrib V16    -0.20023639843046992
#>     Attrib V17    0.29698114946625437
#>     Attrib V18    0.13795971075622193
#>     Attrib V19    -0.5030750761393362
#>     Attrib V2    0.17153052163368582
#>     Attrib V20    -0.42403718806347784
#>     Attrib V21    -0.37448818211280904
#>     Attrib V22    -0.3528527241342777
#>     Attrib V23    -0.11786396572877156
#>     Attrib V24    -0.21378704635371498
#>     Attrib V25    0.45245623660732165
#>     Attrib V26    0.32298039433424974
#>     Attrib V27    -0.05248338909194758
#>     Attrib V28    0.006499226287152191
#>     Attrib V29    0.44969136319938735
#>     Attrib V3    0.14296188198509618
#>     Attrib V30    0.3196548441735751
#>     Attrib V31    1.050433651744594
#>     Attrib V32    -0.1934171541070218
#>     Attrib V33    -0.32927512973021755
#>     Attrib V34    -0.0508341076630136
#>     Attrib V35    -0.19703153417369218
#>     Attrib V36    0.604242461120985
#>     Attrib V37    1.1464033553881308
#>     Attrib V38    0.029828384505915947
#>     Attrib V39    -0.2152141432112444
#>     Attrib V4    0.2300667643606064
#>     Attrib V40    0.00919809873559154
#>     Attrib V41    -0.31863714738852844
#>     Attrib V42    -0.3522843433105775
#>     Attrib V43    -0.7090734423453212
#>     Attrib V44    -0.5661295304065377
#>     Attrib V45    -0.4263689762539905
#>     Attrib V46    -0.3231298730356232
#>     Attrib V47    -0.2144751604187566
#>     Attrib V48    -0.025961113761235735
#>     Attrib V49    -0.28020635723258525
#>     Attrib V5    -0.19271046016426796
#>     Attrib V50    0.42430310371789676
#>     Attrib V51    0.4574458950513409
#>     Attrib V52    -0.007435902213818637
#>     Attrib V53    0.0589990216297237
#>     Attrib V54    -0.18986464781460408
#>     Attrib V55    0.10723986805865367
#>     Attrib V56    -0.10031248140694426
#>     Attrib V57    -0.06655722166490399
#>     Attrib V58    -0.5005276642081328
#>     Attrib V59    -0.3946400464060837
#>     Attrib V6    0.07611073991535124
#>     Attrib V60    -0.17911843941224131
#>     Attrib V7    0.36063494717011224
#>     Attrib V8    0.23078174866905707
#>     Attrib V9    -0.3662575310722485
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.22297476015021292
#>     Attrib V1    0.2657820784259
#>     Attrib V10    0.018153999386809824
#>     Attrib V11    0.07002439876689849
#>     Attrib V12    0.062476043681610804
#>     Attrib V13    -0.17241146521438164
#>     Attrib V14    -0.05512428163818473
#>     Attrib V15    0.30487812904717065
#>     Attrib V16    0.21200252191975455
#>     Attrib V17    -0.08128362749752323
#>     Attrib V18    -0.05507340307608484
#>     Attrib V19    0.24926409546035908
#>     Attrib V2    -0.02275832727494575
#>     Attrib V20    0.29183321839887166
#>     Attrib V21    0.17492962519352243
#>     Attrib V22    0.10002264231219209
#>     Attrib V23    -0.10222338704500006
#>     Attrib V24    0.06703801828267536
#>     Attrib V25    -0.30092828134969163
#>     Attrib V26    -0.2970666139862179
#>     Attrib V27    -0.2071920337925308
#>     Attrib V28    -0.3132727492509572
#>     Attrib V29    -0.5644475851772763
#>     Attrib V3    -0.143088875645105
#>     Attrib V30    -0.2641086239283388
#>     Attrib V31    -0.5811091865488225
#>     Attrib V32    0.00948095732232751
#>     Attrib V33    0.23682017677293202
#>     Attrib V34    0.19098025402016974
#>     Attrib V35    0.30598545228895646
#>     Attrib V36    -0.22481597815294826
#>     Attrib V37    -0.5436388811730651
#>     Attrib V38    0.08086273233374887
#>     Attrib V39    0.14520180146703704
#>     Attrib V4    -0.029194286625952942
#>     Attrib V40    -0.004189399865031702
#>     Attrib V41    0.040789376583294804
#>     Attrib V42    0.1293866821712224
#>     Attrib V43    0.4333520942404345
#>     Attrib V44    0.39784159689066106
#>     Attrib V45    0.26878727520957924
#>     Attrib V46    0.12087226599734378
#>     Attrib V47    0.02719037460087142
#>     Attrib V48    0.048647948042633914
#>     Attrib V49    0.07146892978064626
#>     Attrib V5    0.05159079760585274
#>     Attrib V50    -0.3191411841192043
#>     Attrib V51    -0.38198478802985
#>     Attrib V52    -0.038920618801332
#>     Attrib V53    0.024893856227973594
#>     Attrib V54    0.3564291279046845
#>     Attrib V55    0.09724924288364356
#>     Attrib V56    0.11209902767476843
#>     Attrib V57    0.1632378756992125
#>     Attrib V58    0.346866077590135
#>     Attrib V59    0.39669639902852444
#>     Attrib V6    -0.1851408580378059
#>     Attrib V60    0.3134556711783386
#>     Attrib V7    -0.2257912395199048
#>     Attrib V8    -0.1330743807361397
#>     Attrib V9    0.1559325995298354
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.061728619709007365
#>     Attrib V1    0.21093434053319057
#>     Attrib V10    0.009798192866486815
#>     Attrib V11    0.05670511703903312
#>     Attrib V12    0.06386272771921027
#>     Attrib V13    -0.1479734451144341
#>     Attrib V14    0.03239600713437423
#>     Attrib V15    0.18844094534833378
#>     Attrib V16    0.15761544557272766
#>     Attrib V17    -0.12335947558765493
#>     Attrib V18    -0.03648142025369202
#>     Attrib V19    0.05845163695519117
#>     Attrib V2    -4.173090501475311E-4
#>     Attrib V20    0.0921758600405929
#>     Attrib V21    0.0880530432891274
#>     Attrib V22    -0.03172944503171605
#>     Attrib V23    -0.13919168751143982
#>     Attrib V24    -0.04443619277550003
#>     Attrib V25    -0.22452639558041773
#>     Attrib V26    -0.16872284344406657
#>     Attrib V27    -0.051049184889529746
#>     Attrib V28    -0.046937746868774895
#>     Attrib V29    -0.15747142598730388
#>     Attrib V3    0.02434702508147099
#>     Attrib V30    -0.006365514323357147
#>     Attrib V31    -0.33215762907675045
#>     Attrib V32    -0.023845116176403787
#>     Attrib V33    0.09140513918347956
#>     Attrib V34    0.06409627912516842
#>     Attrib V35    0.15304436240735828
#>     Attrib V36    -0.05272948408701601
#>     Attrib V37    -0.2325448451023857
#>     Attrib V38    0.030376082766529647
#>     Attrib V39    0.12920352957478257
#>     Attrib V4    0.00807620035320486
#>     Attrib V40    -0.009846344240365417
#>     Attrib V41    0.06296504557827481
#>     Attrib V42    0.09319535388445649
#>     Attrib V43    0.15875049074049902
#>     Attrib V44    0.21794785671245898
#>     Attrib V45    0.23637724507603602
#>     Attrib V46    0.1268348867686222
#>     Attrib V47    0.055796758511656934
#>     Attrib V48    0.04346838540069836
#>     Attrib V49    0.10065900393373425
#>     Attrib V5    0.09778177919849257
#>     Attrib V50    -0.17705447025054197
#>     Attrib V51    -0.13069310578727378
#>     Attrib V52    0.08906413398291656
#>     Attrib V53    0.09919959340325263
#>     Attrib V54    0.11174468551599427
#>     Attrib V55    0.05362255190035828
#>     Attrib V56    0.05568429568111664
#>     Attrib V57    0.15582785708620564
#>     Attrib V58    0.2959164868149552
#>     Attrib V59    0.27292201172558345
#>     Attrib V6    -0.03376075639004713
#>     Attrib V60    0.2351303177866976
#>     Attrib V7    -0.11828472411066421
#>     Attrib V8    -0.018260888327970615
#>     Attrib V9    0.13915427496986882
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
#>   0.173913 
```
