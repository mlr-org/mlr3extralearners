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
#>     Threshold    -1.5952886489004354
#>     Node 2    3.196906868827866
#>     Node 3    1.1885763940309273
#>     Node 4    1.0514842330210514
#>     Node 5    -1.75322921147658
#>     Node 6    1.4139088184048476
#>     Node 7    2.9396917494239974
#>     Node 8    1.0470305714885464
#>     Node 9    3.560972515043968
#>     Node 10    0.38297704330748455
#>     Node 11    1.3690140558097237
#>     Node 12    1.2270272119263725
#>     Node 13    0.9236002498236162
#>     Node 14    1.2020872823350282
#>     Node 15    -2.446021104583473
#>     Node 16    0.6736936455060136
#>     Node 17    1.137193563837124
#>     Node 18    -1.1073284408501662
#>     Node 19    1.8791288771293624
#>     Node 20    1.7592613622483482
#>     Node 21    -2.5023253460798442
#>     Node 22    1.2799610102610641
#>     Node 23    1.5185143965377714
#>     Node 24    -2.171216148731211
#>     Node 25    4.428188945809578
#>     Node 26    0.2885457805560972
#>     Node 27    1.8951771305994862
#>     Node 28    -2.0513142762972447
#>     Node 29    1.3288734707082794
#>     Node 30    0.4317888807865049
#>     Node 31    1.9740433218341247
#>     Node 32    1.129194328000933
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    1.5940046355692605
#>     Node 2    -3.2412338104309457
#>     Node 3    -1.1844569543003238
#>     Node 4    -1.009433210682963
#>     Node 5    1.7583111055808538
#>     Node 6    -1.404218098377136
#>     Node 7    -2.918510936785116
#>     Node 8    -1.0579489207071786
#>     Node 9    -3.5582138113778186
#>     Node 10    -0.4476319685524302
#>     Node 11    -1.3354565356247572
#>     Node 12    -1.3074693113711893
#>     Node 13    -0.8736629678028052
#>     Node 14    -1.1375881721582861
#>     Node 15    2.427193697343196
#>     Node 16    -0.690080173130621
#>     Node 17    -1.111707345497741
#>     Node 18    1.1460196378283842
#>     Node 19    -1.8559796456098903
#>     Node 20    -1.7458099064679642
#>     Node 21    2.5568684338537864
#>     Node 22    -1.3404072301423713
#>     Node 23    -1.5767104281904583
#>     Node 24    2.147211058336268
#>     Node 25    -4.418736173059507
#>     Node 26    -0.3632233255594608
#>     Node 27    -1.9059963654168455
#>     Node 28    2.0000408853951135
#>     Node 29    -1.3354446182433708
#>     Node 30    -0.34770801147881325
#>     Node 31    -1.9343646380406467
#>     Node 32    -1.1566121123602484
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.5829237274066936
#>     Attrib V1    0.33027899214135803
#>     Attrib V10    0.5807166783754788
#>     Attrib V11    1.2157237635444986
#>     Attrib V12    1.459644832849896
#>     Attrib V13    0.43117956868329715
#>     Attrib V14    -0.5465473997743483
#>     Attrib V15    -0.5829549470933264
#>     Attrib V16    -1.0175599873629098
#>     Attrib V17    -0.4095596346429421
#>     Attrib V18    0.16414734852080717
#>     Attrib V19    -0.13386385693446062
#>     Attrib V2    0.39976980346125546
#>     Attrib V20    -0.28636176972863825
#>     Attrib V21    -0.21689863018220076
#>     Attrib V22    0.4109586539518931
#>     Attrib V23    1.4470616704513133
#>     Attrib V24    0.8090678790894414
#>     Attrib V25    0.23613045504758234
#>     Attrib V26    0.5993360438338473
#>     Attrib V27    0.8513623394528053
#>     Attrib V28    1.2166263576363787
#>     Attrib V29    1.2046485731417351
#>     Attrib V3    0.22060629377768323
#>     Attrib V30    0.6729275371935242
#>     Attrib V31    -1.0008935458493466
#>     Attrib V32    0.09894608639125631
#>     Attrib V33    -0.3493929985599403
#>     Attrib V34    -0.533438214071198
#>     Attrib V35    0.19349334648695793
#>     Attrib V36    -0.929153739145454
#>     Attrib V37    -0.008127654354078572
#>     Attrib V38    -0.389871753674638
#>     Attrib V39    0.5267649501208098
#>     Attrib V4    0.3724771454965526
#>     Attrib V40    0.4410849589709718
#>     Attrib V41    1.0502738979061506
#>     Attrib V42    0.17072267154627901
#>     Attrib V43    0.1865884860257092
#>     Attrib V44    0.20160065805179778
#>     Attrib V45    0.46785530724232355
#>     Attrib V46    0.7629425912365562
#>     Attrib V47    0.5561782495220616
#>     Attrib V48    0.28141560308318425
#>     Attrib V49    0.821723221198244
#>     Attrib V5    1.011744032242661
#>     Attrib V50    -0.5481149774835812
#>     Attrib V51    0.6165278446598469
#>     Attrib V52    1.2058674011299453
#>     Attrib V53    1.2245571533026143
#>     Attrib V54    0.10596640311205127
#>     Attrib V55    -0.8928690514546234
#>     Attrib V56    -0.9061265458810329
#>     Attrib V57    -0.2777761663794144
#>     Attrib V58    -0.034562310784125305
#>     Attrib V59    -0.1340806900887422
#>     Attrib V6    0.5591293041018585
#>     Attrib V60    -0.015076954390341681
#>     Attrib V7    -0.5676385736230151
#>     Attrib V8    -0.9714362158416125
#>     Attrib V9    0.7120821012240293
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.12179587895607695
#>     Attrib V1    0.5804372082049608
#>     Attrib V10    -0.12138896411361051
#>     Attrib V11    0.03350036901839442
#>     Attrib V12    0.04982826743700114
#>     Attrib V13    -0.1276675576575906
#>     Attrib V14    0.09351285836850479
#>     Attrib V15    0.25874024152646563
#>     Attrib V16    0.048576250724421455
#>     Attrib V17    0.2038080603936981
#>     Attrib V18    0.23318801327221064
#>     Attrib V19    0.023273007482996388
#>     Attrib V2    0.1034711165088549
#>     Attrib V20    0.3551913286811404
#>     Attrib V21    0.4253879784150707
#>     Attrib V22    0.36529388904618487
#>     Attrib V23    0.25050932487895833
#>     Attrib V24    -0.02965134709171474
#>     Attrib V25    -0.18259220185063266
#>     Attrib V26    -0.5210605777593789
#>     Attrib V27    -0.38214083623905887
#>     Attrib V28    -0.1122745945626042
#>     Attrib V29    0.10214100948828995
#>     Attrib V3    0.0189921720962179
#>     Attrib V30    0.22191644164022165
#>     Attrib V31    -0.6439030159265937
#>     Attrib V32    0.0918129770153849
#>     Attrib V33    0.2536201830517011
#>     Attrib V34    -0.1323327473732612
#>     Attrib V35    0.09545376988321294
#>     Attrib V36    -0.07623345437992099
#>     Attrib V37    0.08142402929676444
#>     Attrib V38    0.26679814343740454
#>     Attrib V39    0.35643289789415805
#>     Attrib V4    0.12270561831684361
#>     Attrib V40    -0.20066882850718154
#>     Attrib V41    -0.16556417763487544
#>     Attrib V42    -0.011865808927311743
#>     Attrib V43    0.0034979791221480022
#>     Attrib V44    0.06570076544849729
#>     Attrib V45    0.19814624269479097
#>     Attrib V46    0.08096336837809283
#>     Attrib V47    0.02541211593118669
#>     Attrib V48    0.1941921886226857
#>     Attrib V49    0.1906135703480673
#>     Attrib V5    0.25774618995610893
#>     Attrib V50    -0.41441529796933835
#>     Attrib V51    0.17070944933185353
#>     Attrib V52    0.38612205847448267
#>     Attrib V53    0.10201947208951259
#>     Attrib V54    0.41678344788119553
#>     Attrib V55    -0.29152524719205003
#>     Attrib V56    -0.05962607383647625
#>     Attrib V57    -0.16917476011862476
#>     Attrib V58    0.06467684651876585
#>     Attrib V59    0.41986424051581184
#>     Attrib V6    0.10352822237901928
#>     Attrib V60    0.10637119769190015
#>     Attrib V7    -0.5085390847480811
#>     Attrib V8    -0.567388261889631
#>     Attrib V9    0.07845466065724344
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.18010504268525618
#>     Attrib V1    0.4450684895656513
#>     Attrib V10    0.028930566984957662
#>     Attrib V11    0.18697023556063552
#>     Attrib V12    0.18694706144373346
#>     Attrib V13    -0.049915775408980505
#>     Attrib V14    0.01830816894697499
#>     Attrib V15    0.11129438254674195
#>     Attrib V16    -0.11071028242563351
#>     Attrib V17    0.031031337796814294
#>     Attrib V18    0.06006817066136459
#>     Attrib V19    -0.15228791051433035
#>     Attrib V2    0.08097832622670559
#>     Attrib V20    0.1790615864819562
#>     Attrib V21    0.31199962082639277
#>     Attrib V22    0.12884824794248362
#>     Attrib V23    0.17698980577548729
#>     Attrib V24    -0.07753861887828824
#>     Attrib V25    -0.2679587324324504
#>     Attrib V26    -0.3866602247726756
#>     Attrib V27    -0.2516326174535803
#>     Attrib V28    0.08189409601447177
#>     Attrib V29    0.2914940680403197
#>     Attrib V3    0.036022548689392676
#>     Attrib V30    0.2733150539590966
#>     Attrib V31    -0.4818110870060044
#>     Attrib V32    0.14168978217641634
#>     Attrib V33    0.23028634019450112
#>     Attrib V34    -0.030984215629102307
#>     Attrib V35    0.169928087158519
#>     Attrib V36    -0.16263301024330032
#>     Attrib V37    0.05972261512325726
#>     Attrib V38    0.13813533522210472
#>     Attrib V39    0.2961568398788905
#>     Attrib V4    0.09682266706225486
#>     Attrib V40    -0.1691240677838241
#>     Attrib V41    -0.1212181358077808
#>     Attrib V42    -0.10605975382796692
#>     Attrib V43    -0.045025068406355284
#>     Attrib V44    0.08515547070616261
#>     Attrib V45    0.3584900952618212
#>     Attrib V46    0.13743607736358893
#>     Attrib V47    0.018301551044347077
#>     Attrib V48    0.2758418918697619
#>     Attrib V49    0.3226236046014389
#>     Attrib V5    0.2973249324486438
#>     Attrib V50    -0.3725167864708862
#>     Attrib V51    0.17032696853536528
#>     Attrib V52    0.31618979415785703
#>     Attrib V53    0.06335770891244072
#>     Attrib V54    0.13827210859048755
#>     Attrib V55    -0.37597491349920875
#>     Attrib V56    -0.15641051606035533
#>     Attrib V57    -0.15263522861225504
#>     Attrib V58    -0.042599405515068356
#>     Attrib V59    0.20932697467255565
#>     Attrib V6    0.14827584860626203
#>     Attrib V60    0.009531302019925072
#>     Attrib V7    -0.42483401277427735
#>     Attrib V8    -0.5612638157564322
#>     Attrib V9    0.2601507081390451
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.3774647412281463
#>     Attrib V1    -0.5906505820395775
#>     Attrib V10    0.09016238502932986
#>     Attrib V11    -0.2125570565355737
#>     Attrib V12    -0.3362193469068249
#>     Attrib V13    0.06961704636883974
#>     Attrib V14    0.03744757326406652
#>     Attrib V15    -0.14486050006851028
#>     Attrib V16    0.10565977603356698
#>     Attrib V17    -0.03782210246815788
#>     Attrib V18    -0.21096179340612783
#>     Attrib V19    0.1507230570007362
#>     Attrib V2    0.027790274075895783
#>     Attrib V20    -0.17128675374064614
#>     Attrib V21    -0.2582136829173655
#>     Attrib V22    -0.30537643467433023
#>     Attrib V23    -0.40946697926071846
#>     Attrib V24    -0.09433211535489935
#>     Attrib V25    0.21433863592907323
#>     Attrib V26    0.37125151766237086
#>     Attrib V27    0.20958920912712176
#>     Attrib V28    -0.06434524080502549
#>     Attrib V29    -0.3444210596784683
#>     Attrib V3    0.1456899624272948
#>     Attrib V30    -0.28297587097231874
#>     Attrib V31    0.9120668458785589
#>     Attrib V32    -0.1838127547431734
#>     Attrib V33    -0.3647797861281487
#>     Attrib V34    0.15346674358469517
#>     Attrib V35    -0.10746705608087348
#>     Attrib V36    0.42793131296245135
#>     Attrib V37    -0.023958911110001903
#>     Attrib V38    -0.18615652146028483
#>     Attrib V39    -0.4229598219146118
#>     Attrib V4    -0.10027326837405479
#>     Attrib V40    0.12141467179014993
#>     Attrib V41    -0.13101336126745336
#>     Attrib V42    0.026512306979244032
#>     Attrib V43    0.02068573880660336
#>     Attrib V44    0.041561513323134965
#>     Attrib V45    -0.33198737326325256
#>     Attrib V46    -0.29943259178376896
#>     Attrib V47    -0.06682910002054995
#>     Attrib V48    -0.2596198970518065
#>     Attrib V49    -0.3655054903742521
#>     Attrib V5    -0.3816623881234606
#>     Attrib V50    0.7642253714998944
#>     Attrib V51    -0.29685091476590564
#>     Attrib V52    -0.5569497401995133
#>     Attrib V53    -0.32668642125522573
#>     Attrib V54    -0.16870301564050919
#>     Attrib V55    0.688812672729363
#>     Attrib V56    0.3651323309263448
#>     Attrib V57    0.3374687537610605
#>     Attrib V58    0.012913461782339937
#>     Attrib V59    -0.32212459589161757
#>     Attrib V6    -0.34003615483758337
#>     Attrib V60    -0.09637963383859115
#>     Attrib V7    0.4127717979790813
#>     Attrib V8    0.8786523100893096
#>     Attrib V9    -0.31416514787163485
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.10310925227071688
#>     Attrib V1    0.7171404577365476
#>     Attrib V10    -0.26298698603886506
#>     Attrib V11    -0.11232547667378469
#>     Attrib V12    -0.08834348690680129
#>     Attrib V13    -0.2989606617387554
#>     Attrib V14    0.1483718781549122
#>     Attrib V15    0.3225894743277552
#>     Attrib V16    0.2644762109992302
#>     Attrib V17    0.30646169812046303
#>     Attrib V18    0.39830832129959864
#>     Attrib V19    0.03293956759795332
#>     Attrib V2    0.08214635836791195
#>     Attrib V20    0.412933686539614
#>     Attrib V21    0.5155358930573886
#>     Attrib V22    0.32140046912808967
#>     Attrib V23    0.15307504640625808
#>     Attrib V24    -0.07102566846073433
#>     Attrib V25    -0.2600334034719827
#>     Attrib V26    -0.6558034259040532
#>     Attrib V27    -0.445360073192329
#>     Attrib V28    -0.3042841421474027
#>     Attrib V29    -0.006210622720063502
#>     Attrib V3    0.02367770737066411
#>     Attrib V30    0.05377172405187708
#>     Attrib V31    -0.7473290070519766
#>     Attrib V32    0.08817195267263657
#>     Attrib V33    0.3280561819673673
#>     Attrib V34    -0.08392184397738477
#>     Attrib V35    0.09825910072699005
#>     Attrib V36    -0.010288346684180563
#>     Attrib V37    0.10869142818139987
#>     Attrib V38    0.33643566462094254
#>     Attrib V39    0.29784539621005096
#>     Attrib V4    0.18708850235130148
#>     Attrib V40    -0.28009067997354214
#>     Attrib V41    -0.18165514532678037
#>     Attrib V42    0.04564287706929623
#>     Attrib V43    -0.0042564952932499
#>     Attrib V44    -3.657393496418947E-6
#>     Attrib V45    0.1542573038035062
#>     Attrib V46    0.05518349441988484
#>     Attrib V47    -0.06473540383370945
#>     Attrib V48    0.2081652944388307
#>     Attrib V49    0.16925612719093638
#>     Attrib V5    0.2743347953901547
#>     Attrib V50    -0.34395191415641685
#>     Attrib V51    0.21250962043715946
#>     Attrib V52    0.33543042323357286
#>     Attrib V53    0.1952975964048217
#>     Attrib V54    0.44766026009789467
#>     Attrib V55    -0.35962080142705305
#>     Attrib V56    0.0031964165863592564
#>     Attrib V57    -0.12817243229013286
#>     Attrib V58    0.08745321400352528
#>     Attrib V59    0.6027034462788622
#>     Attrib V6    0.23879377393455511
#>     Attrib V60    0.3505144660486558
#>     Attrib V7    -0.34944341337318363
#>     Attrib V8    -0.5849830822972906
#>     Attrib V9    0.08936996053163551
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5799963172304855
#>     Attrib V1    0.47982491817002587
#>     Attrib V10    0.6828093764561246
#>     Attrib V11    1.2538048775304496
#>     Attrib V12    1.4295455901480383
#>     Attrib V13    0.586249034566336
#>     Attrib V14    -0.4383718549109801
#>     Attrib V15    -0.5084375198401059
#>     Attrib V16    -1.0594625866502103
#>     Attrib V17    -0.7476235097968765
#>     Attrib V18    -0.29539000809768484
#>     Attrib V19    -0.4473178624052209
#>     Attrib V2    0.5397383454087973
#>     Attrib V20    -0.4882034430554353
#>     Attrib V21    -0.31842425820640896
#>     Attrib V22    0.12013799288073816
#>     Attrib V23    1.0709694541798735
#>     Attrib V24    0.6206763510393631
#>     Attrib V25    0.08217646908408813
#>     Attrib V26    0.6887617328425099
#>     Attrib V27    0.7823032256537048
#>     Attrib V28    0.8732355895596543
#>     Attrib V29    0.9794329090745774
#>     Attrib V3    0.3286197589652999
#>     Attrib V30    0.5588199040827401
#>     Attrib V31    -0.533235702796512
#>     Attrib V32    0.23450736490585247
#>     Attrib V33    -0.2851914294643854
#>     Attrib V34    -0.43717653631626074
#>     Attrib V35    0.11766014340316652
#>     Attrib V36    -1.1258531295353376
#>     Attrib V37    -0.2439601592287073
#>     Attrib V38    -0.6451866338081494
#>     Attrib V39    0.22350148581002424
#>     Attrib V4    0.3528794342500214
#>     Attrib V40    0.34526945482968835
#>     Attrib V41    1.0057964569407847
#>     Attrib V42    0.038346937174847565
#>     Attrib V43    0.07673961954404675
#>     Attrib V44    0.038201180104698106
#>     Attrib V45    0.4498994681432856
#>     Attrib V46    0.7710802812759703
#>     Attrib V47    0.4675583934254426
#>     Attrib V48    0.14077448753382643
#>     Attrib V49    0.6789659751612326
#>     Attrib V5    0.8711405851337982
#>     Attrib V50    -0.41491829237112754
#>     Attrib V51    0.49704780793889075
#>     Attrib V52    0.9691321191063956
#>     Attrib V53    0.9307708855910998
#>     Attrib V54    0.026436115577022096
#>     Attrib V55    -0.6678875922255708
#>     Attrib V56    -0.7797658821733676
#>     Attrib V57    -0.21886738877524867
#>     Attrib V58    0.14159362680492235
#>     Attrib V59    -0.0582173412211518
#>     Attrib V6    0.638475884668898
#>     Attrib V60    0.1150393113953008
#>     Attrib V7    -0.4065634640434093
#>     Attrib V8    -0.7132314718661855
#>     Attrib V9    0.9393723035038766
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.22836320493817408
#>     Attrib V1    0.4486536798213698
#>     Attrib V10    0.2146221322245268
#>     Attrib V11    0.32465118461788545
#>     Attrib V12    0.29166352327956324
#>     Attrib V13    0.011428074960092561
#>     Attrib V14    -0.10561603555018546
#>     Attrib V15    -0.04847403574406317
#>     Attrib V16    -0.18745569771890472
#>     Attrib V17    -0.1602400953636315
#>     Attrib V18    -0.1316909942230483
#>     Attrib V19    -0.2890019835610118
#>     Attrib V2    0.13326980512209088
#>     Attrib V20    -0.024946942598130916
#>     Attrib V21    0.12247792893460009
#>     Attrib V22    0.00872793113799406
#>     Attrib V23    0.13649770349875393
#>     Attrib V24    0.040526000672410745
#>     Attrib V25    -0.07761830594240117
#>     Attrib V26    -0.09880941962751068
#>     Attrib V27    0.043793716912586565
#>     Attrib V28    0.23798908956142192
#>     Attrib V29    0.29931290414332307
#>     Attrib V3    0.04722627082271896
#>     Attrib V30    0.2572440969692553
#>     Attrib V31    -0.45332980378708176
#>     Attrib V32    0.17596611704779766
#>     Attrib V33    0.1896004038962275
#>     Attrib V34    -0.018033297591191738
#>     Attrib V35    0.24607949476305988
#>     Attrib V36    -0.009225820640452367
#>     Attrib V37    0.21215397335047834
#>     Attrib V38    0.26195165278210764
#>     Attrib V39    0.2593755684568426
#>     Attrib V4    0.2127840029291787
#>     Attrib V40    -0.14538410534638477
#>     Attrib V41    -0.03952018976912646
#>     Attrib V42    -0.25478731800169097
#>     Attrib V43    -0.04006138316651678
#>     Attrib V44    0.1341610648379045
#>     Attrib V45    0.3756712819185334
#>     Attrib V46    0.2858503495605045
#>     Attrib V47    0.10731329337050952
#>     Attrib V48    0.3087061624849078
#>     Attrib V49    0.3685601264494394
#>     Attrib V5    0.2787596219239338
#>     Attrib V50    -0.3078495477838729
#>     Attrib V51    0.11735749902226053
#>     Attrib V52    0.28712501322670625
#>     Attrib V53    0.053585204252777144
#>     Attrib V54    0.19050474613420765
#>     Attrib V55    -0.3919967549123765
#>     Attrib V56    -0.25033128269667904
#>     Attrib V57    -0.03798750008483078
#>     Attrib V58    -0.01206858774459133
#>     Attrib V59    0.24475782420581987
#>     Attrib V6    0.15331577227710905
#>     Attrib V60    0.18170057651253002
#>     Attrib V7    -0.3286361701020576
#>     Attrib V8    -0.47186617975373735
#>     Attrib V9    0.3565285301480183
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.6099495791832767
#>     Attrib V1    0.5064052158097491
#>     Attrib V10    0.9206435848013961
#>     Attrib V11    1.318350077300462
#>     Attrib V12    1.6354176876102025
#>     Attrib V13    0.7582196294561462
#>     Attrib V14    -0.4959813167239215
#>     Attrib V15    -0.5065503198008854
#>     Attrib V16    -1.1491448607596217
#>     Attrib V17    -0.8734717803578417
#>     Attrib V18    -0.41312730873538583
#>     Attrib V19    -0.570375477931876
#>     Attrib V2    0.6624260559167009
#>     Attrib V20    -0.6391481592391406
#>     Attrib V21    -0.4867539919797247
#>     Attrib V22    -0.03709318278617761
#>     Attrib V23    1.0217540976187969
#>     Attrib V24    0.6300132498847074
#>     Attrib V25    -0.041173073515858014
#>     Attrib V26    0.7532304040556258
#>     Attrib V27    0.8144766590965846
#>     Attrib V28    0.665080702686077
#>     Attrib V29    0.8680211146991944
#>     Attrib V3    0.399333569866529
#>     Attrib V30    0.783163017306325
#>     Attrib V31    -0.08274701814073088
#>     Attrib V32    0.6324668281515331
#>     Attrib V33    -0.24176568298273854
#>     Attrib V34    -0.49795204409816446
#>     Attrib V35    -0.23661424992859706
#>     Attrib V36    -1.746300620253207
#>     Attrib V37    -0.9236643741806819
#>     Attrib V38    -1.1164769370497545
#>     Attrib V39    0.11942688847236198
#>     Attrib V4    0.3344812110682277
#>     Attrib V40    0.497062064965475
#>     Attrib V41    1.2496049384728876
#>     Attrib V42    0.17344564730203696
#>     Attrib V43    0.17229641596660317
#>     Attrib V44    -0.1100856968481757
#>     Attrib V45    0.32619948016046696
#>     Attrib V46    0.749933184726578
#>     Attrib V47    0.47083540577602384
#>     Attrib V48    0.07421602795157575
#>     Attrib V49    0.7902063905242164
#>     Attrib V5    0.9368842520296333
#>     Attrib V50    -0.24495373015789898
#>     Attrib V51    0.560343161746791
#>     Attrib V52    1.102612833505282
#>     Attrib V53    1.330293124117197
#>     Attrib V54    0.05080611202006335
#>     Attrib V55    -0.6686904686296319
#>     Attrib V56    -0.6794920198960438
#>     Attrib V57    -0.4008654503556818
#>     Attrib V58    0.20474266793445423
#>     Attrib V59    -0.1492470828143694
#>     Attrib V6    0.7686801075610209
#>     Attrib V60    -0.0880047649338659
#>     Attrib V7    -0.27887260056111707
#>     Attrib V8    -0.3860638881838815
#>     Attrib V9    1.1488373661446207
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.14594848105981098
#>     Attrib V1    0.32731270502257986
#>     Attrib V10    0.003763039378579796
#>     Attrib V11    0.03498157349593528
#>     Attrib V12    0.07105384878543602
#>     Attrib V13    0.019732791720419696
#>     Attrib V14    0.13588324800728385
#>     Attrib V15    0.08689400690793475
#>     Attrib V16    0.07728404362366864
#>     Attrib V17    0.040117435361074795
#>     Attrib V18    0.11006041047169574
#>     Attrib V19    -0.012581244928067418
#>     Attrib V2    0.1468563299701269
#>     Attrib V20    0.07076535286216262
#>     Attrib V21    0.09281939537136383
#>     Attrib V22    -0.04061007681011117
#>     Attrib V23    -0.0691856903973724
#>     Attrib V24    -0.15433600443420947
#>     Attrib V25    -0.16183427602027478
#>     Attrib V26    -0.2132261261137149
#>     Attrib V27    -0.19648871724838163
#>     Attrib V28    -0.16665262527475969
#>     Attrib V29    -0.12196718038654475
#>     Attrib V3    0.11887950065100221
#>     Attrib V30    -0.022369717418524716
#>     Attrib V31    -0.17389182321536412
#>     Attrib V32    -0.019915705085350774
#>     Attrib V33    0.11813534572813696
#>     Attrib V34    0.044259187760809025
#>     Attrib V35    0.08468838635867525
#>     Attrib V36    0.029705862347632915
#>     Attrib V37    0.05439328008208212
#>     Attrib V38    0.13732260221032705
#>     Attrib V39    0.10860237375386851
#>     Attrib V4    0.13537629186314917
#>     Attrib V40    -0.02476553306294475
#>     Attrib V41    -0.036807025722401014
#>     Attrib V42    -0.06669400484172656
#>     Attrib V43    -0.044768744605316164
#>     Attrib V44    0.019090075181201826
#>     Attrib V45    0.07042518297705744
#>     Attrib V46    0.012397673738930559
#>     Attrib V47    0.009932447848297218
#>     Attrib V48    0.09285546750246737
#>     Attrib V49    0.09482607148631632
#>     Attrib V5    0.14029122727916968
#>     Attrib V50    0.01493823560336902
#>     Attrib V51    0.09771096285710962
#>     Attrib V52    0.09390073820300578
#>     Attrib V53    0.11212307478812943
#>     Attrib V54    0.18971258870999433
#>     Attrib V55    -0.013644339429977148
#>     Attrib V56    0.04641972700083567
#>     Attrib V57    0.040108232824881955
#>     Attrib V58    0.06974003479716268
#>     Attrib V59    0.18256449520603782
#>     Attrib V6    0.10356687369844426
#>     Attrib V60    0.161321865388346
#>     Attrib V7    -0.11256798026969068
#>     Attrib V8    -0.1231563721639332
#>     Attrib V9    0.05960472503530824
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.12451142626998285
#>     Attrib V1    0.5521323170561631
#>     Attrib V10    -0.11839131484049054
#>     Attrib V11    0.1336496359246861
#>     Attrib V12    0.1190255434859802
#>     Attrib V13    -0.21237816325961076
#>     Attrib V14    0.018408810845918847
#>     Attrib V15    0.1539557370502134
#>     Attrib V16    0.05558943190822184
#>     Attrib V17    0.2857288530547753
#>     Attrib V18    0.3505516051694654
#>     Attrib V19    0.0020902980637430477
#>     Attrib V2    0.016446256395804947
#>     Attrib V20    0.4191138285210861
#>     Attrib V21    0.45561560642265514
#>     Attrib V22    0.38432650264994017
#>     Attrib V23    0.34560598495501155
#>     Attrib V24    0.010870385126906053
#>     Attrib V25    -0.12962811074683278
#>     Attrib V26    -0.5080094004519026
#>     Attrib V27    -0.2822318779436011
#>     Attrib V28    0.012708141166450112
#>     Attrib V29    0.20932076813291642
#>     Attrib V3    -0.08389085057541747
#>     Attrib V30    0.20792081743490382
#>     Attrib V31    -0.8295054752404933
#>     Attrib V32    0.04011598244213566
#>     Attrib V33    0.2645435357528198
#>     Attrib V34    -0.04437389443905104
#>     Attrib V35    0.2713292636774836
#>     Attrib V36    0.11985999716130386
#>     Attrib V37    0.27407702323203714
#>     Attrib V38    0.49310800154264883
#>     Attrib V39    0.40509541241398667
#>     Attrib V4    0.12563488611828372
#>     Attrib V40    -0.28258390131377104
#>     Attrib V41    -0.27860112044375335
#>     Attrib V42    -0.11622716430123296
#>     Attrib V43    0.02745701961380587
#>     Attrib V44    0.1924712717027219
#>     Attrib V45    0.4055132946474797
#>     Attrib V46    0.15202243977222302
#>     Attrib V47    0.03317445553859914
#>     Attrib V48    0.2563295689861327
#>     Attrib V49    0.24826249307570178
#>     Attrib V5    0.31386414710886
#>     Attrib V50    -0.4779438877027054
#>     Attrib V51    0.258493768739241
#>     Attrib V52    0.3641143252252417
#>     Attrib V53    0.06366410830690465
#>     Attrib V54    0.4160367643174402
#>     Attrib V55    -0.41330360226005025
#>     Attrib V56    -0.16386882880479206
#>     Attrib V57    -0.19575880367552057
#>     Attrib V58    0.01428936921321814
#>     Attrib V59    0.3230132466119005
#>     Attrib V6    0.16508010163876327
#>     Attrib V60    0.12152910393384357
#>     Attrib V7    -0.563549021945633
#>     Attrib V8    -0.6639102689852704
#>     Attrib V9    0.15401421241730756
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.21179116998052167
#>     Attrib V1    0.5508422014969756
#>     Attrib V10    -0.15884548106199423
#>     Attrib V11    0.16437487913030976
#>     Attrib V12    0.06459168652512866
#>     Attrib V13    -0.16581153247738625
#>     Attrib V14    0.052743473570754595
#>     Attrib V15    0.154923612554275
#>     Attrib V16    0.06498831806934843
#>     Attrib V17    0.22581382679192286
#>     Attrib V18    0.30570224536494955
#>     Attrib V19    0.03793626875681999
#>     Attrib V2    0.09459059492935949
#>     Attrib V20    0.311146747749918
#>     Attrib V21    0.43236167587778945
#>     Attrib V22    0.4237111300913537
#>     Attrib V23    0.3521809455305148
#>     Attrib V24    0.009072618707647693
#>     Attrib V25    -0.14966590433057544
#>     Attrib V26    -0.4284145455136747
#>     Attrib V27    -0.21931167491590803
#>     Attrib V28    -0.03323792109209142
#>     Attrib V29    0.23481960073320998
#>     Attrib V3    -0.08291958916960686
#>     Attrib V30    0.16744060190199142
#>     Attrib V31    -0.8282417557335093
#>     Attrib V32    0.0011522751345642963
#>     Attrib V33    0.2472540362505634
#>     Attrib V34    -0.10092789550943147
#>     Attrib V35    0.20391502493100283
#>     Attrib V36    0.05891612537925094
#>     Attrib V37    0.2463309142155831
#>     Attrib V38    0.41356736628031315
#>     Attrib V39    0.3525267063331543
#>     Attrib V4    0.15439958644732182
#>     Attrib V40    -0.20365423051919518
#>     Attrib V41    -0.19281348905192103
#>     Attrib V42    -0.11071792656028845
#>     Attrib V43    0.05830011469190557
#>     Attrib V44    0.06220529660090412
#>     Attrib V45    0.3025283387833975
#>     Attrib V46    0.18079641880088831
#>     Attrib V47    -0.014392983118243757
#>     Attrib V48    0.22877404710334254
#>     Attrib V49    0.19231581476587198
#>     Attrib V5    0.28916410277610743
#>     Attrib V50    -0.5103083379233017
#>     Attrib V51    0.2179853945195357
#>     Attrib V52    0.3988894913131853
#>     Attrib V53    0.15824571030602272
#>     Attrib V54    0.37184746544184116
#>     Attrib V55    -0.42775208835714346
#>     Attrib V56    -0.14183811548646966
#>     Attrib V57    -0.16529163544448539
#>     Attrib V58    0.029664065828843043
#>     Attrib V59    0.4467219412506953
#>     Attrib V6    0.11499785606877469
#>     Attrib V60    0.17618816318312974
#>     Attrib V7    -0.4754933505430714
#>     Attrib V8    -0.6374347667146171
#>     Attrib V9    0.14287121035582476
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.041715914376595144
#>     Attrib V1    0.471733187176053
#>     Attrib V10    -0.14641750960299998
#>     Attrib V11    -0.04688237343772497
#>     Attrib V12    -0.030080247447527523
#>     Attrib V13    -0.06182216363670487
#>     Attrib V14    0.1301363291604213
#>     Attrib V15    0.20168781377376083
#>     Attrib V16    0.10109848364217111
#>     Attrib V17    0.2079983179183402
#>     Attrib V18    0.233208979562408
#>     Attrib V19    0.003242672644690703
#>     Attrib V2    0.0809331268755845
#>     Attrib V20    0.26936430328350847
#>     Attrib V21    0.31608202291541
#>     Attrib V22    0.13356167478659453
#>     Attrib V23    0.057004578368045865
#>     Attrib V24    -0.0954754285739521
#>     Attrib V25    -0.17828991734367378
#>     Attrib V26    -0.47556548604173005
#>     Attrib V27    -0.31927206931202695
#>     Attrib V28    -0.2699724435791772
#>     Attrib V29    -0.04920257570046664
#>     Attrib V3    0.1069538433842699
#>     Attrib V30    -0.003427571794352916
#>     Attrib V31    -0.5021801117951545
#>     Attrib V32    0.059828121599840696
#>     Attrib V33    0.18545880545412075
#>     Attrib V34    0.025087459143818342
#>     Attrib V35    0.0911660544413073
#>     Attrib V36    -6.962165530095101E-4
#>     Attrib V37    0.07990920044672424
#>     Attrib V38    0.21003693687448927
#>     Attrib V39    0.2523437700550098
#>     Attrib V4    0.14604243181292265
#>     Attrib V40    -0.13022646404598617
#>     Attrib V41    -0.13861994961296448
#>     Attrib V42    -0.044335701282162
#>     Attrib V43    -0.08098331505862305
#>     Attrib V44    -0.023323808599388176
#>     Attrib V45    0.05565224877002549
#>     Attrib V46    0.0556162883795763
#>     Attrib V47    7.242487322609384E-4
#>     Attrib V48    0.14245952051809666
#>     Attrib V49    0.15910504095653166
#>     Attrib V5    0.21514508171059354
#>     Attrib V50    -0.2353414218261405
#>     Attrib V51    0.1085093530798196
#>     Attrib V52    0.16985328244302172
#>     Attrib V53    0.08850038060811191
#>     Attrib V54    0.28987497274370977
#>     Attrib V55    -0.1872801711494642
#>     Attrib V56    0.021288899553167373
#>     Attrib V57    -0.04083973133805005
#>     Attrib V58    0.05118737799657412
#>     Attrib V59    0.4167792248242631
#>     Attrib V6    0.14347748182977316
#>     Attrib V60    0.2878948905390486
#>     Attrib V7    -0.20827390621135256
#>     Attrib V8    -0.41961301771240944
#>     Attrib V9    0.05923483541286385
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.032730503547045486
#>     Attrib V1    0.6305468145599799
#>     Attrib V10    -0.1391324499709835
#>     Attrib V11    -0.02691229158138362
#>     Attrib V12    -0.038985703410090854
#>     Attrib V13    -0.19109062561416026
#>     Attrib V14    0.128759837903759
#>     Attrib V15    0.3016368303734635
#>     Attrib V16    0.1264327012839151
#>     Attrib V17    0.24066269175704136
#>     Attrib V18    0.2661025503218567
#>     Attrib V19    -0.004132483499699359
#>     Attrib V2    0.1115725122108025
#>     Attrib V20    0.30644864915784004
#>     Attrib V21    0.35582403192551787
#>     Attrib V22    0.18400672892279007
#>     Attrib V23    0.07082219035243087
#>     Attrib V24    -0.176266305688615
#>     Attrib V25    -0.3055517326165484
#>     Attrib V26    -0.560202922356527
#>     Attrib V27    -0.4815930092436508
#>     Attrib V28    -0.33538087155690344
#>     Attrib V29    -0.09357158036509595
#>     Attrib V3    0.003615835117973247
#>     Attrib V30    0.033440542288275685
#>     Attrib V31    -0.523433804321048
#>     Attrib V32    0.05520654935485027
#>     Attrib V33    0.2595617768581567
#>     Attrib V34    -0.03299422030341521
#>     Attrib V35    0.14337087146781924
#>     Attrib V36    -0.03525190308883674
#>     Attrib V37    0.044641997167732164
#>     Attrib V38    0.19742348249891492
#>     Attrib V39    0.23650399977372757
#>     Attrib V4    0.14582077616971845
#>     Attrib V40    -0.2266455822750507
#>     Attrib V41    -0.2262940862621984
#>     Attrib V42    -0.09538139258884788
#>     Attrib V43    -0.04903533198165814
#>     Attrib V44    0.04215054711097378
#>     Attrib V45    0.10132688348492341
#>     Attrib V46    0.0639143180998582
#>     Attrib V47    -0.040842715388559804
#>     Attrib V48    0.2659659187034418
#>     Attrib V49    0.20968279890942507
#>     Attrib V5    0.1970034209045892
#>     Attrib V50    -0.27534199326831826
#>     Attrib V51    0.1306825595249725
#>     Attrib V52    0.24377337379293795
#>     Attrib V53    0.02768318225323523
#>     Attrib V54    0.3961945736405392
#>     Attrib V55    -0.18912108383272222
#>     Attrib V56    0.043853280008243796
#>     Attrib V57    -0.07478803819033439
#>     Attrib V58    0.0946152710252985
#>     Attrib V59    0.46134681117523396
#>     Attrib V6    0.15457362198157845
#>     Attrib V60    0.3107103541788318
#>     Attrib V7    -0.3095714269669217
#>     Attrib V8    -0.5131775576885151
#>     Attrib V9    0.06911263584888112
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.3214118186670041
#>     Attrib V1    -0.7918394453826528
#>     Attrib V10    0.1892429455462004
#>     Attrib V11    -0.38008834898427074
#>     Attrib V12    -0.3554598378951521
#>     Attrib V13    0.15670736640613286
#>     Attrib V14    0.07572880311007142
#>     Attrib V15    -0.12596510469083352
#>     Attrib V16    0.19776948290925983
#>     Attrib V17    -0.25071419548570945
#>     Attrib V18    -0.5877631909146005
#>     Attrib V19    0.027939141791872384
#>     Attrib V2    0.034129299046105364
#>     Attrib V20    -0.17628325409991646
#>     Attrib V21    -0.39464442081863904
#>     Attrib V22    -0.6322049559438703
#>     Attrib V23    -0.7976876922309041
#>     Attrib V24    -0.17875793568130605
#>     Attrib V25    0.044915409352547016
#>     Attrib V26    0.3312977631614386
#>     Attrib V27    0.05200829332036639
#>     Attrib V28    -0.08275743111114978
#>     Attrib V29    -0.48275497774758513
#>     Attrib V3    0.1633756966169553
#>     Attrib V30    -0.4213021018502184
#>     Attrib V31    1.4419342913325635
#>     Attrib V32    -0.06241802599245763
#>     Attrib V33    -0.4086031167297639
#>     Attrib V34    0.4142805796426827
#>     Attrib V35    -0.11298521380745136
#>     Attrib V36    0.3016222048775747
#>     Attrib V37    -0.07188024889489589
#>     Attrib V38    -0.42885748709396654
#>     Attrib V39    -0.5543766379369633
#>     Attrib V4    -0.2372732979130942
#>     Attrib V40    0.23808007300006356
#>     Attrib V41    -0.12228187526421992
#>     Attrib V42    -0.1671666809711938
#>     Attrib V43    -0.1593265480523144
#>     Attrib V44    -0.12113847909470342
#>     Attrib V45    -0.23725349643719382
#>     Attrib V46    -0.18819854863923424
#>     Attrib V47    0.012590409555062342
#>     Attrib V48    -0.10422379274863967
#>     Attrib V49    -0.24993463825682516
#>     Attrib V5    -0.6446185783646805
#>     Attrib V50    1.1110688827549955
#>     Attrib V51    -0.4743025028903783
#>     Attrib V52    -0.80033929468576
#>     Attrib V53    -0.5192465317767134
#>     Attrib V54    -0.3738521623607064
#>     Attrib V55    0.9048369173211561
#>     Attrib V56    0.5418435730577682
#>     Attrib V57    0.516309982278333
#>     Attrib V58    -0.006769354285961489
#>     Attrib V59    -0.6441598863578838
#>     Attrib V6    -0.4989192223234518
#>     Attrib V60    -0.38714421470680865
#>     Attrib V7    0.4185522610279824
#>     Attrib V8    1.2655223936939286
#>     Attrib V9    -0.24739059957646525
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.056889871204310084
#>     Attrib V1    0.38489824065695594
#>     Attrib V10    -0.05260261553198667
#>     Attrib V11    -0.028530568622006394
#>     Attrib V12    -0.006103424540489839
#>     Attrib V13    -0.04035654475862838
#>     Attrib V14    0.0794589891871754
#>     Attrib V15    0.14729712433965
#>     Attrib V16    0.14932057292053832
#>     Attrib V17    0.16558897633622027
#>     Attrib V18    0.19482037165292496
#>     Attrib V19    0.026895111021206713
#>     Attrib V2    0.06873616868258063
#>     Attrib V20    0.14310169576566553
#>     Attrib V21    0.17471149713762424
#>     Attrib V22    0.03622660455563006
#>     Attrib V23    -0.08740741103850887
#>     Attrib V24    -0.08388048982931971
#>     Attrib V25    -0.15754404607743236
#>     Attrib V26    -0.36396966384894447
#>     Attrib V27    -0.30761016586356543
#>     Attrib V28    -0.2199835394200404
#>     Attrib V29    -0.12085169830690194
#>     Attrib V3    0.10441845098343683
#>     Attrib V30    -0.09394795849944446
#>     Attrib V31    -0.35884037898461285
#>     Attrib V32    0.07156695848115191
#>     Attrib V33    0.12555762245363639
#>     Attrib V34    0.03229618692296177
#>     Attrib V35    0.07710574242721163
#>     Attrib V36    -0.011425407490348594
#>     Attrib V37    0.051197899593827895
#>     Attrib V38    0.1581008927990079
#>     Attrib V39    0.15962812806845555
#>     Attrib V4    0.1414073159775344
#>     Attrib V40    -0.13976754755977158
#>     Attrib V41    -0.10069435615614099
#>     Attrib V42    -0.02206914670264669
#>     Attrib V43    -0.05144270731081237
#>     Attrib V44    -0.04912476874024329
#>     Attrib V45    0.08034852415493098
#>     Attrib V46    0.04772419490148998
#>     Attrib V47    -0.013976936854169796
#>     Attrib V48    0.12170899980140622
#>     Attrib V49    0.0801095299031469
#>     Attrib V5    0.17053012725394212
#>     Attrib V50    -0.08903320714461856
#>     Attrib V51    0.15076547806995585
#>     Attrib V52    0.174911641926599
#>     Attrib V53    0.13125835788903337
#>     Attrib V54    0.24740645139054948
#>     Attrib V55    -0.07321672200295748
#>     Attrib V56    0.07389145623696955
#>     Attrib V57    0.02050770469880119
#>     Attrib V58    0.12272054670469354
#>     Attrib V59    0.27398052625161384
#>     Attrib V6    0.10599429979076906
#>     Attrib V60    0.22739004102030194
#>     Attrib V7    -0.1941124983519744
#>     Attrib V8    -0.2939113364561151
#>     Attrib V9    0.10744288927450604
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.04643740745613522
#>     Attrib V1    0.5953070291979796
#>     Attrib V10    -0.10201018144578629
#>     Attrib V11    -0.02148298173585683
#>     Attrib V12    -0.07993894324036455
#>     Attrib V13    -0.19867671862204023
#>     Attrib V14    0.10906251339981711
#>     Attrib V15    0.3058610511132931
#>     Attrib V16    0.14807901670770282
#>     Attrib V17    0.2253591483959229
#>     Attrib V18    0.24668831869062255
#>     Attrib V19    0.04214158119957713
#>     Attrib V2    0.16968234113835848
#>     Attrib V20    0.31302838368394165
#>     Attrib V21    0.36706097812678073
#>     Attrib V22    0.2611297341919268
#>     Attrib V23    0.04017995464544307
#>     Attrib V24    -0.13773192574856605
#>     Attrib V25    -0.35939172148907683
#>     Attrib V26    -0.6176370560634026
#>     Attrib V27    -0.44801391722463735
#>     Attrib V28    -0.26547764055632855
#>     Attrib V29    -0.03328121500743105
#>     Attrib V3    0.045773908203212726
#>     Attrib V30    0.08479459107181811
#>     Attrib V31    -0.4742304446217909
#>     Attrib V32    0.07092323389090507
#>     Attrib V33    0.31180865811453756
#>     Attrib V34    -0.029196082374834956
#>     Attrib V35    0.12437258802382933
#>     Attrib V36    -0.06510335628485593
#>     Attrib V37    -0.004794712554740212
#>     Attrib V38    0.2731345309199221
#>     Attrib V39    0.266055515479224
#>     Attrib V4    0.16753595749211242
#>     Attrib V40    -0.2719066979060801
#>     Attrib V41    -0.20147287607668668
#>     Attrib V42    -0.08808918863851549
#>     Attrib V43    0.009919442811579558
#>     Attrib V44    0.05225037108061572
#>     Attrib V45    0.202248654256591
#>     Attrib V46    0.03459069714104478
#>     Attrib V47    -0.05952419793604778
#>     Attrib V48    0.28274617527275625
#>     Attrib V49    0.17803786648654182
#>     Attrib V5    0.22405837762051078
#>     Attrib V50    -0.2706317939788996
#>     Attrib V51    0.17187616050775334
#>     Attrib V52    0.2583298339850662
#>     Attrib V53    0.01702853996802097
#>     Attrib V54    0.2916750731922615
#>     Attrib V55    -0.18808935118072456
#>     Attrib V56    0.030062415968685315
#>     Attrib V57    -0.06235178562741966
#>     Attrib V58    0.019467234254133076
#>     Attrib V59    0.36382777346037704
#>     Attrib V6    0.15509946929821122
#>     Attrib V60    0.23044944928521777
#>     Attrib V7    -0.39345464819687204
#>     Attrib V8    -0.4724031117061792
#>     Attrib V9    0.0842347699113292
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.31497756411864186
#>     Attrib V1    -0.36142792170798566
#>     Attrib V10    -0.02401833328664913
#>     Attrib V11    -0.21450831363521145
#>     Attrib V12    -0.3030873427574647
#>     Attrib V13    -0.02026164885792937
#>     Attrib V14    0.02351799994330988
#>     Attrib V15    -0.15445208485135586
#>     Attrib V16    0.07568642948831143
#>     Attrib V17    -0.03098306622080938
#>     Attrib V18    -0.012733140292034721
#>     Attrib V19    0.10796380901657983
#>     Attrib V2    -0.05298551771199482
#>     Attrib V20    7.123859449002032E-4
#>     Attrib V21    -0.04454382309971515
#>     Attrib V22    -0.060673531191296
#>     Attrib V23    -0.20772385056828876
#>     Attrib V24    -0.0309454699502523
#>     Attrib V25    0.2136507890038506
#>     Attrib V26    0.25632897811406885
#>     Attrib V27    0.13844549263269973
#>     Attrib V28    -0.03637474153874246
#>     Attrib V29    -0.2323739927341091
#>     Attrib V3    0.1025379541591781
#>     Attrib V30    -0.2546179516565932
#>     Attrib V31    0.3777337561866592
#>     Attrib V32    -0.2227381643347322
#>     Attrib V33    -0.2420273857546424
#>     Attrib V34    0.06270931771987907
#>     Attrib V35    -0.13858556806619213
#>     Attrib V36    0.41043418488485617
#>     Attrib V37    0.04675693032810609
#>     Attrib V38    0.013323669451961354
#>     Attrib V39    -0.12915829663464987
#>     Attrib V4    -0.05350679586961302
#>     Attrib V40    0.05471093648082775
#>     Attrib V41    -0.14245944203574287
#>     Attrib V42    0.024113921358609437
#>     Attrib V43    0.011261561420190514
#>     Attrib V44    0.06050105889048061
#>     Attrib V45    -0.24906926873160515
#>     Attrib V46    -0.22166484394754168
#>     Attrib V47    -0.03015257831933992
#>     Attrib V48    -0.1922753662094981
#>     Attrib V49    -0.2281086435506286
#>     Attrib V5    -0.24131310446563836
#>     Attrib V50    0.3631392897416513
#>     Attrib V51    -0.1393163352670632
#>     Attrib V52    -0.3504723606892993
#>     Attrib V53    -0.19478146433047536
#>     Attrib V54    -0.11156486344133076
#>     Attrib V55    0.37502414825237607
#>     Attrib V56    0.1979378290908107
#>     Attrib V57    0.1708122666552713
#>     Attrib V58    0.010874080506753694
#>     Attrib V59    -0.1287573499320746
#>     Attrib V6    -0.2787306581542541
#>     Attrib V60    -0.022585848359509563
#>     Attrib V7    0.23023062784755546
#>     Attrib V8    0.5103350049705329
#>     Attrib V9    -0.23604721662625625
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.37955987726932183
#>     Attrib V1    0.41195413935012337
#>     Attrib V10    0.43444391210776556
#>     Attrib V11    0.7208824423263971
#>     Attrib V12    1.0093842713473606
#>     Attrib V13    0.32803659094310583
#>     Attrib V14    -0.23274799718422146
#>     Attrib V15    -0.23019507778441725
#>     Attrib V16    -0.7717305329786268
#>     Attrib V17    -0.5950297296984391
#>     Attrib V18    -0.3839110652158551
#>     Attrib V19    -0.5065545310383548
#>     Attrib V2    0.29172501819900043
#>     Attrib V20    -0.453008168987782
#>     Attrib V21    -0.2787992687548525
#>     Attrib V22    0.02353598760392299
#>     Attrib V23    0.5323811993376975
#>     Attrib V24    0.3874305352028798
#>     Attrib V25    0.1426673164392247
#>     Attrib V26    0.28889262345385935
#>     Attrib V27    0.5043622718797878
#>     Attrib V28    0.6736024830751716
#>     Attrib V29    0.6075397152820576
#>     Attrib V3    0.11800925837902303
#>     Attrib V30    0.3556014929918425
#>     Attrib V31    -0.4626535237356325
#>     Attrib V32    0.18716174089226748
#>     Attrib V33    0.01423729727170603
#>     Attrib V34    -0.16017976364653233
#>     Attrib V35    0.2731660129127323
#>     Attrib V36    -0.5445820466834534
#>     Attrib V37    0.002568998379102392
#>     Attrib V38    -0.22636291758822072
#>     Attrib V39    0.1810920785846665
#>     Attrib V4    0.33177285505479404
#>     Attrib V40    0.04225747164870689
#>     Attrib V41    0.459716184713233
#>     Attrib V42    -0.07574098084072636
#>     Attrib V43    -0.019752517525560027
#>     Attrib V44    -0.03939276766712229
#>     Attrib V45    0.36556949716345044
#>     Attrib V46    0.5186997424916276
#>     Attrib V47    0.2346491776640196
#>     Attrib V48    0.23817047105692613
#>     Attrib V49    0.5319654938461877
#>     Attrib V5    0.642666296303548
#>     Attrib V50    -0.47696368550984314
#>     Attrib V51    0.30392291763681456
#>     Attrib V52    0.6445077404256335
#>     Attrib V53    0.4342245279521441
#>     Attrib V54    0.1084256120108009
#>     Attrib V55    -0.48603978081140714
#>     Attrib V56    -0.5800617977214617
#>     Attrib V57    -0.11673321894530081
#>     Attrib V58    0.11365054615011157
#>     Attrib V59    0.19908178716754799
#>     Attrib V6    0.4243245789624698
#>     Attrib V60    0.3546248132841569
#>     Attrib V7    -0.3382276668101743
#>     Attrib V8    -0.7319863668099376
#>     Attrib V9    0.561223714781411
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.21378472724217223
#>     Attrib V1    0.7379646542750221
#>     Attrib V10    -0.14454040187655182
#>     Attrib V11    0.16958491954153435
#>     Attrib V12    0.16675214610062233
#>     Attrib V13    -0.23430411826779385
#>     Attrib V14    0.043761043990587584
#>     Attrib V15    0.23958810744138054
#>     Attrib V16    0.05585646779146261
#>     Attrib V17    0.300971304627765
#>     Attrib V18    0.44377367716901217
#>     Attrib V19    0.026171782347711215
#>     Attrib V2    -3.588959567312631E-4
#>     Attrib V20    0.44852380374778206
#>     Attrib V21    0.650855786245915
#>     Attrib V22    0.6834863104710163
#>     Attrib V23    0.6292360314068708
#>     Attrib V24    0.21687455022003507
#>     Attrib V25    -0.010785752578225007
#>     Attrib V26    -0.3779813274804972
#>     Attrib V27    -0.13548985854519305
#>     Attrib V28    0.06817317411120871
#>     Attrib V29    0.3929668019299972
#>     Attrib V3    -0.17259520921135318
#>     Attrib V30    0.2919233069572311
#>     Attrib V31    -1.0738126497066816
#>     Attrib V32    -0.06710352993758013
#>     Attrib V33    0.2236750774522379
#>     Attrib V34    -0.2329192490145588
#>     Attrib V35    0.24847041168043163
#>     Attrib V36    0.26093084338466993
#>     Attrib V37    0.5452341378582094
#>     Attrib V38    0.6993751599635912
#>     Attrib V39    0.5278538636751499
#>     Attrib V4    0.13216334216795603
#>     Attrib V40    -0.2580520931043949
#>     Attrib V41    -0.22771411366313948
#>     Attrib V42    -0.15892022226606137
#>     Attrib V43    0.07558911060272634
#>     Attrib V44    0.19587926559122953
#>     Attrib V45    0.32771564226809297
#>     Attrib V46    0.14094584355181422
#>     Attrib V47    -0.08786594327282919
#>     Attrib V48    0.14823483783710706
#>     Attrib V49    0.2244155438320711
#>     Attrib V5    0.3813600114093356
#>     Attrib V50    -0.6585901703659376
#>     Attrib V51    0.3538827267389275
#>     Attrib V52    0.5094157272031516
#>     Attrib V53    0.18633224195302894
#>     Attrib V54    0.6283812034951639
#>     Attrib V55    -0.48330937363790927
#>     Attrib V56    -0.2659564568053672
#>     Attrib V57    -0.3174431809653518
#>     Attrib V58    0.06541826930625087
#>     Attrib V59    0.63601171900241
#>     Attrib V6    0.19089537072756987
#>     Attrib V60    0.2826666113003975
#>     Attrib V7    -0.563284121171247
#>     Attrib V8    -0.8848756445509527
#>     Attrib V9    0.17556343986484943
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.2479861354827243
#>     Attrib V1    -0.6202823276303585
#>     Attrib V10    0.21857213505742423
#>     Attrib V11    -0.4407604260000186
#>     Attrib V12    -0.5753523462635399
#>     Attrib V13    0.018728758342657328
#>     Attrib V14    0.15300030059252162
#>     Attrib V15    -0.13660073305979745
#>     Attrib V16    0.2969448427190358
#>     Attrib V17    -0.16037198103095485
#>     Attrib V18    -0.5137452853519514
#>     Attrib V19    -0.03800421369472675
#>     Attrib V2    -0.012446092589996814
#>     Attrib V20    0.013889697645208577
#>     Attrib V21    -0.07578239567495133
#>     Attrib V22    -0.6695021082072958
#>     Attrib V23    -1.010768165880658
#>     Attrib V24    -0.38250920276443917
#>     Attrib V25    -0.0021551439587780166
#>     Attrib V26    0.35366082423896683
#>     Attrib V27    0.06868714426850116
#>     Attrib V28    -0.18401087563875682
#>     Attrib V29    -0.5929574790166168
#>     Attrib V3    0.07152677222479108
#>     Attrib V30    -0.4739151311722287
#>     Attrib V31    1.2903057490172447
#>     Attrib V32    -0.2347279058731277
#>     Attrib V33    -0.4508413336812314
#>     Attrib V34    0.3567249467213503
#>     Attrib V35    -0.05764903321993751
#>     Attrib V36    0.5948747549234245
#>     Attrib V37    0.13104689728179572
#>     Attrib V38    -0.1628339756648716
#>     Attrib V39    -0.43943716317999953
#>     Attrib V4    -0.21481817517584678
#>     Attrib V40    0.27103355674014556
#>     Attrib V41    -0.2663728548609776
#>     Attrib V42    -0.31933981289632696
#>     Attrib V43    -0.1680356409555076
#>     Attrib V44    -0.03767165161642719
#>     Attrib V45    -0.19508035227051787
#>     Attrib V46    -0.2658616953920388
#>     Attrib V47    -0.07865611044624021
#>     Attrib V48    -0.04790486711733684
#>     Attrib V49    -0.22734995991049936
#>     Attrib V5    -0.7422541743836061
#>     Attrib V50    1.2867978280459698
#>     Attrib V51    -0.5744080651422571
#>     Attrib V52    -0.9246698636400561
#>     Attrib V53    -0.7071801132777267
#>     Attrib V54    -0.24274090622074704
#>     Attrib V55    0.8591829856020035
#>     Attrib V56    0.5414865978821667
#>     Attrib V57    0.6748326643372808
#>     Attrib V58    0.0028107408493339156
#>     Attrib V59    -0.5113957139018037
#>     Attrib V6    -0.5550426981642927
#>     Attrib V60    -0.3311249826117778
#>     Attrib V7    0.5749773145757845
#>     Attrib V8    1.4223109827155915
#>     Attrib V9    -0.18448826357229664
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.011998898661044059
#>     Attrib V1    0.6745541139429834
#>     Attrib V10    -0.19293969977871742
#>     Attrib V11    -0.17394752104329092
#>     Attrib V12    -0.1629318197857446
#>     Attrib V13    -0.23045953642016415
#>     Attrib V14    0.21852897308729405
#>     Attrib V15    0.3271316776631896
#>     Attrib V16    0.3120407507160471
#>     Attrib V17    0.3085536319568162
#>     Attrib V18    0.2967979137277023
#>     Attrib V19    0.03980598254911073
#>     Attrib V2    0.12368866370386435
#>     Attrib V20    0.3792593708701401
#>     Attrib V21    0.3991021738064934
#>     Attrib V22    0.1804794838554503
#>     Attrib V23    -0.03709971930147736
#>     Attrib V24    -0.15428978243002262
#>     Attrib V25    -0.4167638193487382
#>     Attrib V26    -0.735375345108897
#>     Attrib V27    -0.5991137440681775
#>     Attrib V28    -0.48845429267252516
#>     Attrib V29    -0.13654115155565827
#>     Attrib V3    0.041035132768632375
#>     Attrib V30    -0.07692872092523532
#>     Attrib V31    -0.4910467838111704
#>     Attrib V32    0.08369648113382074
#>     Attrib V33    0.2677958681233903
#>     Attrib V34    0.019868953343234744
#>     Attrib V35    0.10859594547969752
#>     Attrib V36    -0.00552396851216694
#>     Attrib V37    0.015120755438866332
#>     Attrib V38    0.1879940846616866
#>     Attrib V39    0.16033726845848378
#>     Attrib V4    0.16665398096287717
#>     Attrib V40    -0.20273527877569528
#>     Attrib V41    -0.23997207170859086
#>     Attrib V42    -0.04462299289657563
#>     Attrib V43    0.009264193164404645
#>     Attrib V44    -0.04162614237554777
#>     Attrib V45    0.03682521950075903
#>     Attrib V46    0.03769595587852485
#>     Attrib V47    -0.08842819938514994
#>     Attrib V48    0.2664437282564721
#>     Attrib V49    0.16506671037802592
#>     Attrib V5    0.25119900920712507
#>     Attrib V50    -0.23652522053312236
#>     Attrib V51    0.16132209220057528
#>     Attrib V52    0.25513974133370027
#>     Attrib V53    0.04400378427835397
#>     Attrib V54    0.42076989929057623
#>     Attrib V55    -0.15735069199527413
#>     Attrib V56    0.13552573822264474
#>     Attrib V57    -0.050957111488069695
#>     Attrib V58    0.14867573786852867
#>     Attrib V59    0.5485143227687973
#>     Attrib V6    0.22856005888456138
#>     Attrib V60    0.3844518961213614
#>     Attrib V7    -0.2399749979569289
#>     Attrib V8    -0.5308641613942043
#>     Attrib V9    0.051030270163728096
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.011063654127008129
#>     Attrib V1    0.7428215595797152
#>     Attrib V10    -0.3187365129156244
#>     Attrib V11    -0.17895495221546293
#>     Attrib V12    -0.1714646924988112
#>     Attrib V13    -0.26228388085649806
#>     Attrib V14    0.2387241584641129
#>     Attrib V15    0.40819788246649596
#>     Attrib V16    0.2804915541468151
#>     Attrib V17    0.4225949213741855
#>     Attrib V18    0.40473279267320356
#>     Attrib V19    0.08150018877102956
#>     Attrib V2    0.057753331432318165
#>     Attrib V20    0.4143004868162899
#>     Attrib V21    0.4673625745637524
#>     Attrib V22    0.3361953873208804
#>     Attrib V23    0.13203859214012031
#>     Attrib V24    -0.17935566635034852
#>     Attrib V25    -0.3836721674705154
#>     Attrib V26    -0.7404018285361093
#>     Attrib V27    -0.6030774501591136
#>     Attrib V28    -0.4436312368082648
#>     Attrib V29    -0.14883823669318674
#>     Attrib V3    0.06415749432480593
#>     Attrib V30    -0.09385235421711262
#>     Attrib V31    -0.7464528575898943
#>     Attrib V32    0.03920780819672306
#>     Attrib V33    0.35387032787319006
#>     Attrib V34    0.0039766728959877195
#>     Attrib V35    0.2171869948055037
#>     Attrib V36    0.14830004809287464
#>     Attrib V37    0.22477629050567316
#>     Attrib V38    0.35916306423360994
#>     Attrib V39    0.2342364180137694
#>     Attrib V4    0.21640677141206713
#>     Attrib V40    -0.3177607372194875
#>     Attrib V41    -0.2655057949535858
#>     Attrib V42    -0.03604049986437469
#>     Attrib V43    0.026510121064621257
#>     Attrib V44    -0.0026332415829749974
#>     Attrib V45    0.15387320586111472
#>     Attrib V46    0.018454987574756002
#>     Attrib V47    -0.05005380193576034
#>     Attrib V48    0.1763004140085668
#>     Attrib V49    0.13659920104241147
#>     Attrib V5    0.271345551652927
#>     Attrib V50    -0.3513855149464181
#>     Attrib V51    0.18352528689341885
#>     Attrib V52    0.3685610239913611
#>     Attrib V53    0.12652830668975001
#>     Attrib V54    0.48778066430736755
#>     Attrib V55    -0.24072987806322935
#>     Attrib V56    0.08879526551546736
#>     Attrib V57    -0.1380065866011912
#>     Attrib V58    0.10609933108912266
#>     Attrib V59    0.6703799668712718
#>     Attrib V6    0.2498761922647444
#>     Attrib V60    0.3987401910515945
#>     Attrib V7    -0.30447428409759064
#>     Attrib V8    -0.6059925012427919
#>     Attrib V9    0.01958563522366679
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.29995978362510395
#>     Attrib V1    -0.7405885850697976
#>     Attrib V10    0.11319533015910581
#>     Attrib V11    -0.295986677871963
#>     Attrib V12    -0.29740883680215685
#>     Attrib V13    0.15798076097806266
#>     Attrib V14    0.049675305622181275
#>     Attrib V15    -0.1638044547777463
#>     Attrib V16    0.06239169852191107
#>     Attrib V17    -0.18685027481656405
#>     Attrib V18    -0.46290600379590985
#>     Attrib V19    0.03009288913388295
#>     Attrib V2    0.018826244837706972
#>     Attrib V20    -0.2696318042726546
#>     Attrib V21    -0.40992851775205635
#>     Attrib V22    -0.5868562806424197
#>     Attrib V23    -0.6211342799992622
#>     Attrib V24    -0.1581350199783878
#>     Attrib V25    0.10459330479795834
#>     Attrib V26    0.3984972302142943
#>     Attrib V27    0.127683835427619
#>     Attrib V28    -0.050367956212366734
#>     Attrib V29    -0.4208383593224052
#>     Attrib V3    0.14579662056834497
#>     Attrib V30    -0.3361074633981242
#>     Attrib V31    1.2197586093953257
#>     Attrib V32    -0.06549589434194257
#>     Attrib V33    -0.4126457907756994
#>     Attrib V34    0.2773496101168853
#>     Attrib V35    -0.17550727739320285
#>     Attrib V36    0.21945250547671172
#>     Attrib V37    -0.2413157068356888
#>     Attrib V38    -0.4486914101916226
#>     Attrib V39    -0.5644979407904746
#>     Attrib V4    -0.10285315486665135
#>     Attrib V40    0.2289101019618776
#>     Attrib V41    0.023347334100204956
#>     Attrib V42    -0.03948587939879611
#>     Attrib V43    -0.007011351047072021
#>     Attrib V44    -0.10357073757876946
#>     Attrib V45    -0.3682744649339041
#>     Attrib V46    -0.22528103648382872
#>     Attrib V47    0.012824705941491958
#>     Attrib V48    -0.2047663094203663
#>     Attrib V49    -0.3491032933115785
#>     Attrib V5    -0.5211085977424247
#>     Attrib V50    0.9119392150456848
#>     Attrib V51    -0.38390180181025846
#>     Attrib V52    -0.6019081377326889
#>     Attrib V53    -0.43951369648455735
#>     Attrib V54    -0.36267164084522857
#>     Attrib V55    0.7998142059074179
#>     Attrib V56    0.41525640304632017
#>     Attrib V57    0.48097687875023865
#>     Attrib V58    0.02042250080261333
#>     Attrib V59    -0.5362573851110624
#>     Attrib V6    -0.36232259379557324
#>     Attrib V60    -0.28387058515947483
#>     Attrib V7    0.43996798657277003
#>     Attrib V8    1.0709899914089982
#>     Attrib V9    -0.21679695585920408
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.49622361322400665
#>     Attrib V1    0.25897966398349737
#>     Attrib V10    0.6406231165569944
#>     Attrib V11    1.3246139327790902
#>     Attrib V12    1.6017939959660337
#>     Attrib V13    0.40491351595351205
#>     Attrib V14    -0.37901789914686007
#>     Attrib V15    -0.8256756854414105
#>     Attrib V16    -1.1733958784093657
#>     Attrib V17    -0.3922371088824873
#>     Attrib V18    0.2573947451036214
#>     Attrib V19    -0.31401821115269873
#>     Attrib V2    0.4740724334432046
#>     Attrib V20    -0.47067133558800833
#>     Attrib V21    -0.27442312295349025
#>     Attrib V22    0.5038527678361594
#>     Attrib V23    1.2864099051232467
#>     Attrib V24    0.5394522700638704
#>     Attrib V25    0.5939758802928646
#>     Attrib V26    1.260218320146142
#>     Attrib V27    1.3899463785350001
#>     Attrib V28    1.5474090139037617
#>     Attrib V29    1.580264431114575
#>     Attrib V3    0.3613294623788956
#>     Attrib V30    1.1586471881357634
#>     Attrib V31    -0.5847799445309662
#>     Attrib V32    -0.03491414762445079
#>     Attrib V33    -0.818760618359639
#>     Attrib V34    -1.2042415607549326
#>     Attrib V35    -0.7553436400283627
#>     Attrib V36    -1.2066183677517055
#>     Attrib V37    -0.44645595931292775
#>     Attrib V38    -0.403334014075514
#>     Attrib V39    1.1227900191897726
#>     Attrib V4    0.5531202515496122
#>     Attrib V40    0.780720420588125
#>     Attrib V41    0.8481981866136458
#>     Attrib V42    0.34714075598600996
#>     Attrib V43    0.15818741658687907
#>     Attrib V44    0.2574289886102465
#>     Attrib V45    0.3951971169360164
#>     Attrib V46    0.7392336691426988
#>     Attrib V47    0.8101722473943187
#>     Attrib V48    0.6799877080720234
#>     Attrib V49    1.3549822635068474
#>     Attrib V5    0.8218167437763684
#>     Attrib V50    -0.014924464628502198
#>     Attrib V51    0.7233107802304077
#>     Attrib V52    1.3027862201777516
#>     Attrib V53    1.2438765903342226
#>     Attrib V54    -0.09859172655053168
#>     Attrib V55    -1.239869072562525
#>     Attrib V56    -0.9310634079665167
#>     Attrib V57    -0.12149601782443696
#>     Attrib V58    -0.1198590992803839
#>     Attrib V59    -0.442469492643993
#>     Attrib V6    0.3485413671477051
#>     Attrib V60    -0.3261703072224112
#>     Attrib V7    -0.5624741902641884
#>     Attrib V8    -0.6805979383060851
#>     Attrib V9    0.8328641879526228
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.16706882629881553
#>     Attrib V1    0.22687281195522438
#>     Attrib V10    0.027871399639010065
#>     Attrib V11    0.024499464401041518
#>     Attrib V12    0.07400066606475497
#>     Attrib V13    -0.013227410055951959
#>     Attrib V14    0.11172437565242634
#>     Attrib V15    0.07135041022779179
#>     Attrib V16    0.03421378287835519
#>     Attrib V17    0.0636797623310588
#>     Attrib V18    -0.002053780575823203
#>     Attrib V19    -0.005006968958146719
#>     Attrib V2    0.14357866677015
#>     Attrib V20    0.020903079297089858
#>     Attrib V21    0.041449614344116655
#>     Attrib V22    -0.044952494269414764
#>     Attrib V23    -0.0820801951258625
#>     Attrib V24    -0.10946942117608219
#>     Attrib V25    -0.08351041239111553
#>     Attrib V26    -0.1647643788876647
#>     Attrib V27    -0.09220245316882063
#>     Attrib V28    -0.06121915594616477
#>     Attrib V29    -0.04382002402792006
#>     Attrib V3    0.09460713271658464
#>     Attrib V30    -0.04431587399839017
#>     Attrib V31    -0.17505678369976024
#>     Attrib V32    4.9436010958312815E-5
#>     Attrib V33    0.08665775675447346
#>     Attrib V34    -0.00802927007395745
#>     Attrib V35    0.10466935118392273
#>     Attrib V36    0.08193951181066282
#>     Attrib V37    0.1179727012512124
#>     Attrib V38    0.07632779091141455
#>     Attrib V39    0.11623558862311041
#>     Attrib V4    0.18194836425531097
#>     Attrib V40    -0.0341268668287601
#>     Attrib V41    -0.04567815517665478
#>     Attrib V42    -0.018987583997864713
#>     Attrib V43    -0.004555692842697472
#>     Attrib V44    0.03198616084548513
#>     Attrib V45    0.05600347093545786
#>     Attrib V46    0.03759047226973385
#>     Attrib V47    0.020512813840453174
#>     Attrib V48    0.14285932457928244
#>     Attrib V49    0.09137331964186034
#>     Attrib V5    0.0998887420575002
#>     Attrib V50    0.018846799486561976
#>     Attrib V51    0.07727807551312622
#>     Attrib V52    0.08556606477346644
#>     Attrib V53    0.05876665927501331
#>     Attrib V54    0.14440378484069014
#>     Attrib V55    0.01337847848289237
#>     Attrib V56    0.08076189579758111
#>     Attrib V57    0.11374180755464704
#>     Attrib V58    0.10011838075106211
#>     Attrib V59    0.18942588189292744
#>     Attrib V6    0.08514715662370828
#>     Attrib V60    0.2252658023389481
#>     Attrib V7    -0.11049196168900001
#>     Attrib V8    -0.05003617941252068
#>     Attrib V9    0.08480206697110682
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.49975090045991233
#>     Attrib V1    0.7194706359460262
#>     Attrib V10    0.6206255951003772
#>     Attrib V11    0.811249151543725
#>     Attrib V12    0.85945047535367
#>     Attrib V13    0.26359404754682275
#>     Attrib V14    -0.2748792104278313
#>     Attrib V15    -0.2681917730608848
#>     Attrib V16    -0.7850459048094205
#>     Attrib V17    -0.7682350275573184
#>     Attrib V18    -0.5284361854391553
#>     Attrib V19    -0.7688072462137383
#>     Attrib V2    0.30031510202748424
#>     Attrib V20    -0.332884658119442
#>     Attrib V21    0.041774013942833484
#>     Attrib V22    -0.04753931120889775
#>     Attrib V23    0.26020778455333454
#>     Attrib V24    0.19673362551740484
#>     Attrib V25    -0.009659749189944875
#>     Attrib V26    0.2892966029797349
#>     Attrib V27    0.3623095336450434
#>     Attrib V28    0.5153719277833508
#>     Attrib V29    0.58668889142217
#>     Attrib V3    0.09635446976328474
#>     Attrib V30    0.41701068141132247
#>     Attrib V31    -0.605034359463337
#>     Attrib V32    0.1512943829201748
#>     Attrib V33    -0.025266477468543498
#>     Attrib V34    -0.08169686587083543
#>     Attrib V35    0.35491881191912034
#>     Attrib V36    -0.3763187427756262
#>     Attrib V37    0.18913228413776698
#>     Attrib V38    -0.012145698270081346
#>     Attrib V39    0.32053795834581505
#>     Attrib V4    0.2521688450695738
#>     Attrib V40    -0.11685188465519691
#>     Attrib V41    0.22531676123498923
#>     Attrib V42    -0.3379336899745028
#>     Attrib V43    -0.14614474615040046
#>     Attrib V44    -0.004450595556947584
#>     Attrib V45    0.5371650282962273
#>     Attrib V46    0.5103614216976694
#>     Attrib V47    0.18168484151766337
#>     Attrib V48    0.33485757715523573
#>     Attrib V49    0.5431745609439556
#>     Attrib V5    0.4784350951732534
#>     Attrib V50    -0.3012510873358244
#>     Attrib V51    0.2722572107635268
#>     Attrib V52    0.5050009452323025
#>     Attrib V53    0.16114203247758338
#>     Attrib V54    0.20161650308504273
#>     Attrib V55    -0.47421707799168217
#>     Attrib V56    -0.5800150681103577
#>     Attrib V57    -0.1269001961661547
#>     Attrib V58    0.10984362587768777
#>     Attrib V59    0.25507383646006526
#>     Attrib V6    0.41749354043949993
#>     Attrib V60    0.22289078821533728
#>     Attrib V7    -0.46658256997708525
#>     Attrib V8    -0.5209735739716305
#>     Attrib V9    0.7882240114207447
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.33199549345715074
#>     Attrib V1    -0.5233251268770047
#>     Attrib V10    0.13215649547688446
#>     Attrib V11    -0.34677333081188305
#>     Attrib V12    -0.5341326711991792
#>     Attrib V13    0.0021241490406324007
#>     Attrib V14    0.08607415741728318
#>     Attrib V15    -0.13032711660667676
#>     Attrib V16    0.2428047752200183
#>     Attrib V17    -0.1396121902613158
#>     Attrib V18    -0.2854831989756832
#>     Attrib V19    0.0206308042893459
#>     Attrib V2    -0.059861424117644356
#>     Attrib V20    0.002976747338197132
#>     Attrib V21    -0.051913582689083825
#>     Attrib V22    -0.38469830568570856
#>     Attrib V23    -0.762297166170135
#>     Attrib V24    -0.2551207854849268
#>     Attrib V25    0.08815438100843553
#>     Attrib V26    0.3695493647007031
#>     Attrib V27    0.16963047356641311
#>     Attrib V28    -0.12783920029765183
#>     Attrib V29    -0.47140692214157986
#>     Attrib V3    0.08793601439443408
#>     Attrib V30    -0.37714788925537945
#>     Attrib V31    0.8548529356165577
#>     Attrib V32    -0.24178998757784084
#>     Attrib V33    -0.43778540906747454
#>     Attrib V34    0.24887448250453167
#>     Attrib V35    9.476384330739504E-4
#>     Attrib V36    0.708026051934262
#>     Attrib V37    0.16891024354565803
#>     Attrib V38    0.07935824685895684
#>     Attrib V39    -0.2919814698787702
#>     Attrib V4    -0.10454057642181051
#>     Attrib V40    0.137166074687116
#>     Attrib V41    -0.2721749735715363
#>     Attrib V42    -0.20377379341038324
#>     Attrib V43    -0.06927223620228465
#>     Attrib V44    0.006038377770763636
#>     Attrib V45    -0.14224200925284886
#>     Attrib V46    -0.26583696636154086
#>     Attrib V47    -0.15884427358976097
#>     Attrib V48    -0.21356913205388364
#>     Attrib V49    -0.3035158513455162
#>     Attrib V5    -0.6351250288327425
#>     Attrib V50    1.00830611427066
#>     Attrib V51    -0.48929997698396255
#>     Attrib V52    -0.7195697097822241
#>     Attrib V53    -0.584097268278002
#>     Attrib V54    -0.07901026083511883
#>     Attrib V55    0.717998791219199
#>     Attrib V56    0.4329652151535693
#>     Attrib V57    0.4236416674726963
#>     Attrib V58    0.06171565664251151
#>     Attrib V59    -0.3435039319644796
#>     Attrib V6    -0.4634993811359963
#>     Attrib V60    -0.2564906138977133
#>     Attrib V7    0.4215378064894331
#>     Attrib V8    1.206269587011475
#>     Attrib V9    -0.1287874836470174
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.29686089970709134
#>     Attrib V1    0.4860166616219165
#>     Attrib V10    0.31182451516208304
#>     Attrib V11    0.584672445846135
#>     Attrib V12    0.5688269103185591
#>     Attrib V13    0.08025813352438317
#>     Attrib V14    -0.11441600956260281
#>     Attrib V15    -0.13251168038917033
#>     Attrib V16    -0.4470776185332124
#>     Attrib V17    -0.34077939575689675
#>     Attrib V18    -0.22315638616486355
#>     Attrib V19    -0.4665727718501617
#>     Attrib V2    0.15959863555536924
#>     Attrib V20    -0.0333123303438424
#>     Attrib V21    0.12675971171082323
#>     Attrib V22    0.09205166633388773
#>     Attrib V23    0.2714320642072232
#>     Attrib V24    0.19949413591895349
#>     Attrib V25    0.0537643599432577
#>     Attrib V26    -0.016508902612853718
#>     Attrib V27    0.19625224925103102
#>     Attrib V28    0.41847351025211343
#>     Attrib V29    0.5546943804001243
#>     Attrib V3    0.07234798355602003
#>     Attrib V30    0.35358920137965216
#>     Attrib V31    -0.5223967544441197
#>     Attrib V32    0.20088838061954803
#>     Attrib V33    0.13332588424220457
#>     Attrib V34    -0.04947493934997153
#>     Attrib V35    0.29431335622933535
#>     Attrib V36    -0.18022083099938802
#>     Attrib V37    0.26248038338875745
#>     Attrib V38    0.19091692049894238
#>     Attrib V39    0.3466469921413992
#>     Attrib V4    0.1550614613855163
#>     Attrib V40    -0.09971482993247036
#>     Attrib V41    0.07255330562240696
#>     Attrib V42    -0.2600591476043643
#>     Attrib V43    0.021348237995937432
#>     Attrib V44    0.042521429517816484
#>     Attrib V45    0.4732423273927991
#>     Attrib V46    0.3852552415737052
#>     Attrib V47    0.1642975143628659
#>     Attrib V48    0.2598344096613614
#>     Attrib V49    0.4167963646909008
#>     Attrib V5    0.3532710933302852
#>     Attrib V50    -0.3455372943530046
#>     Attrib V51    0.20866369114493516
#>     Attrib V52    0.4819339755006241
#>     Attrib V53    0.08818694458066335
#>     Attrib V54    0.2128380833177969
#>     Attrib V55    -0.3789488863497627
#>     Attrib V56    -0.331261316272344
#>     Attrib V57    -0.15700123512586667
#>     Attrib V58    0.01955420566349038
#>     Attrib V59    0.16112501484942876
#>     Attrib V6    0.2631916473298046
#>     Attrib V60    0.1077039164046442
#>     Attrib V7    -0.46459598686157016
#>     Attrib V8    -0.49568387336547715
#>     Attrib V9    0.5255686772183926
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.105957868115743
#>     Attrib V1    0.28665094575533334
#>     Attrib V10    0.08298090096636251
#>     Attrib V11    0.0645433573068961
#>     Attrib V12    0.09582711659238904
#>     Attrib V13    0.045834947273626504
#>     Attrib V14    0.07393628087296647
#>     Attrib V15    0.10393093835373413
#>     Attrib V16    0.03218631528749525
#>     Attrib V17    0.06129651249483326
#>     Attrib V18    0.022697663329223353
#>     Attrib V19    -0.09097246303372848
#>     Attrib V2    0.15634808839420153
#>     Attrib V20    -1.805030053140064E-4
#>     Attrib V21    0.07053822081019492
#>     Attrib V22    -0.03954783999854102
#>     Attrib V23    -0.0809214845909054
#>     Attrib V24    -0.12393766559802692
#>     Attrib V25    -0.06669229580302434
#>     Attrib V26    -0.12034943640058367
#>     Attrib V27    -0.13404540865597647
#>     Attrib V28    -0.08575724766243689
#>     Attrib V29    -0.10844327630372826
#>     Attrib V3    0.10881988556204324
#>     Attrib V30    -0.025177370625871998
#>     Attrib V31    -0.11788278363326365
#>     Attrib V32    0.01773749338165003
#>     Attrib V33    0.03615012383564341
#>     Attrib V34    -0.014970469764490268
#>     Attrib V35    0.09086134304373468
#>     Attrib V36    0.014101801156312137
#>     Attrib V37    0.09417763229401291
#>     Attrib V38    0.06752795785806967
#>     Attrib V39    0.16397880324799696
#>     Attrib V4    0.17871457264585242
#>     Attrib V40    -0.019116653617714485
#>     Attrib V41    -0.03670846244385714
#>     Attrib V42    -0.014712983933902237
#>     Attrib V43    -0.045841991602460865
#>     Attrib V44    -0.03604894673231532
#>     Attrib V45    0.05102232210793399
#>     Attrib V46    0.049881477534966294
#>     Attrib V47    0.0107085674661394
#>     Attrib V48    0.13587014855657217
#>     Attrib V49    0.08655552289137684
#>     Attrib V5    0.10385515345495988
#>     Attrib V50    -0.027557856450160838
#>     Attrib V51    0.08263467006127731
#>     Attrib V52    0.1157807085293863
#>     Attrib V53    0.08390254380869962
#>     Attrib V54    0.17706797020672807
#>     Attrib V55    -0.027217608973709714
#>     Attrib V56    0.1012656264024947
#>     Attrib V57    0.04921777149870902
#>     Attrib V58    0.12246642196326347
#>     Attrib V59    0.2296128143980513
#>     Attrib V6    0.061755986243024766
#>     Attrib V60    0.20271673328137846
#>     Attrib V7    -0.15103142271844422
#>     Attrib V8    -0.12343407741928937
#>     Attrib V9    0.0881413163684562
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.025089028445178838
#>     Attrib V1    0.8543923989006332
#>     Attrib V10    -0.34190112975918524
#>     Attrib V11    -0.27143894502831817
#>     Attrib V12    -0.36029593858303993
#>     Attrib V13    -0.33574272547919587
#>     Attrib V14    0.29915575529151694
#>     Attrib V15    0.5543267722483773
#>     Attrib V16    0.4319207146065183
#>     Attrib V17    0.48991046211158046
#>     Attrib V18    0.4563870543902321
#>     Attrib V19    0.12129798808114661
#>     Attrib V2    0.14549342284617964
#>     Attrib V20    0.5809136665298333
#>     Attrib V21    0.5325402437568124
#>     Attrib V22    0.38717004477843897
#>     Attrib V23    0.14152427518599126
#>     Attrib V24    -0.15508105884673806
#>     Attrib V25    -0.589458890848387
#>     Attrib V26    -1.0248246830926702
#>     Attrib V27    -0.7678525450908796
#>     Attrib V28    -0.552986947950934
#>     Attrib V29    -0.17750040126274844
#>     Attrib V3    0.006222665060791415
#>     Attrib V30    -0.12484302798377249
#>     Attrib V31    -0.7753363980697784
#>     Attrib V32    0.07417772764734694
#>     Attrib V33    0.502180582391363
#>     Attrib V34    0.1165565903987289
#>     Attrib V35    0.22105198719701555
#>     Attrib V36    0.07287786938251728
#>     Attrib V37    0.1707916426028608
#>     Attrib V38    0.4530604118415944
#>     Attrib V39    0.22889859061499654
#>     Attrib V4    0.19296191035353547
#>     Attrib V40    -0.3138604177049783
#>     Attrib V41    -0.272955054172388
#>     Attrib V42    0.024334928938768652
#>     Attrib V43    0.024464966710514527
#>     Attrib V44    0.02822098756093912
#>     Attrib V45    0.1212317972471577
#>     Attrib V46    0.019417333481678612
#>     Attrib V47    -0.10327280823788144
#>     Attrib V48    0.27702969250991333
#>     Attrib V49    0.155270294763306
#>     Attrib V5    0.30241908892186314
#>     Attrib V50    -0.4073142455998968
#>     Attrib V51    0.21472616550415322
#>     Attrib V52    0.3879839481667836
#>     Attrib V53    0.11546438330427902
#>     Attrib V54    0.6077359325368441
#>     Attrib V55    -0.22906947513451034
#>     Attrib V56    0.06442316555728232
#>     Attrib V57    -0.1344748512675163
#>     Attrib V58    0.10250570207597129
#>     Attrib V59    0.7832543800646994
#>     Attrib V6    0.3436511148031764
#>     Attrib V60    0.5222594520240412
#>     Attrib V7    -0.313346930652502
#>     Attrib V8    -0.706284042395543
#>     Attrib V9    0.04624043260413511
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.034159076183669194
#>     Attrib V1    0.5919516815773487
#>     Attrib V10    -0.23851374910085146
#>     Attrib V11    -0.10839649253843786
#>     Attrib V12    -0.11204001715278826
#>     Attrib V13    -0.2180003115374818
#>     Attrib V14    0.2128046795261175
#>     Attrib V15    0.3208476937664373
#>     Attrib V16    0.23883736244624382
#>     Attrib V17    0.2395045805830039
#>     Attrib V18    0.3363071655623719
#>     Attrib V19    0.007032263046684731
#>     Attrib V2    0.10112373336778162
#>     Attrib V20    0.335538609669986
#>     Attrib V21    0.40758329033156315
#>     Attrib V22    0.21171210183904385
#>     Attrib V23    0.06103210236947073
#>     Attrib V24    -0.1718603974940319
#>     Attrib V25    -0.367946140004846
#>     Attrib V26    -0.6031804804778926
#>     Attrib V27    -0.47893429704061097
#>     Attrib V28    -0.32289898076528106
#>     Attrib V29    -0.09727234045232856
#>     Attrib V3    0.09552629816985896
#>     Attrib V30    0.0032462289396196172
#>     Attrib V31    -0.5487612136744882
#>     Attrib V32    0.040671451029736204
#>     Attrib V33    0.27186754512399963
#>     Attrib V34    0.010728793471415237
#>     Attrib V35    0.11411492356431524
#>     Attrib V36    0.07151566076721202
#>     Attrib V37    0.07019941727262163
#>     Attrib V38    0.19538808422138512
#>     Attrib V39    0.2258880642177316
#>     Attrib V4    0.13797184414411362
#>     Attrib V40    -0.22908037850898016
#>     Attrib V41    -0.24282668047446831
#>     Attrib V42    -0.0177594714481584
#>     Attrib V43    -0.06432889120517361
#>     Attrib V44    0.025354750517398588
#>     Attrib V45    0.1441315426867058
#>     Attrib V46    0.03458451903715778
#>     Attrib V47    -0.04429334102825366
#>     Attrib V48    0.1673562220182829
#>     Attrib V49    0.19101498542409828
#>     Attrib V5    0.2147070575248976
#>     Attrib V50    -0.2522879420592095
#>     Attrib V51    0.17768923248545226
#>     Attrib V52    0.27260362404875854
#>     Attrib V53    0.08659847528102964
#>     Attrib V54    0.31114382479411884
#>     Attrib V55    -0.19720752182761822
#>     Attrib V56    0.054481515580356445
#>     Attrib V57    -0.07595176437670202
#>     Attrib V58    0.13496366919994227
#>     Attrib V59    0.4232271108007604
#>     Attrib V6    0.17923309672025556
#>     Attrib V60    0.2796023192285542
#>     Attrib V7    -0.2669454308546754
#>     Attrib V8    -0.4171187236985131
#>     Attrib V9    0.05714534352839237
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
#>  0.2028986 
```
