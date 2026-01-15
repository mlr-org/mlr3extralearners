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
#>     Threshold    -0.28534365063256
#>     Node 2    1.6687583808316333
#>     Node 3    1.3654843246225512
#>     Node 4    0.4723805201774742
#>     Node 5    -2.944407594685386
#>     Node 6    0.7226317560603791
#>     Node 7    3.877317578672554
#>     Node 8    0.3611218905247802
#>     Node 9    4.205373518510917
#>     Node 10    -1.8859198294912687
#>     Node 11    1.0465129984572852
#>     Node 12    1.4255804544725776
#>     Node 13    0.5358815577206937
#>     Node 14    1.7130516338224704
#>     Node 15    -3.6230462845468425
#>     Node 16    -0.8512665492223743
#>     Node 17    0.6042918264001937
#>     Node 18    0.5175883124398599
#>     Node 19    1.9056504126591194
#>     Node 20    1.2834506716192513
#>     Node 21    -2.3604905338950117
#>     Node 22    0.9501339782101506
#>     Node 23    1.8198460122042326
#>     Node 24    -1.30499935490932
#>     Node 25    3.0655926751023808
#>     Node 26    -1.0191911322410316
#>     Node 27    1.7940308324679841
#>     Node 28    -2.875611768770816
#>     Node 29    1.0277003383453687
#>     Node 30    0.20897180407021945
#>     Node 31    1.6931540570737897
#>     Node 32    1.4520295610489613
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.3041866691516585
#>     Node 2    -1.709234619983043
#>     Node 3    -1.3516356839816555
#>     Node 4    -0.4290872977180283
#>     Node 5    2.9532964428361743
#>     Node 6    -0.7043473509539823
#>     Node 7    -3.877935372706651
#>     Node 8    -0.3904805976238026
#>     Node 9    -4.207514645377816
#>     Node 10    1.8463249670503887
#>     Node 11    -1.0148640319393867
#>     Node 12    -1.503336241051433
#>     Node 13    -0.4862282243294503
#>     Node 14    -1.6423030142338828
#>     Node 15    3.6044090432185723
#>     Node 16    0.846295192843283
#>     Node 17    -0.5701068564566837
#>     Node 18    -0.4799228924449425
#>     Node 19    -1.8905533418801659
#>     Node 20    -1.2898583566172344
#>     Node 21    2.4215880631782447
#>     Node 22    -1.0022127355537425
#>     Node 23    -1.8865596160909457
#>     Node 24    1.32546366498525
#>     Node 25    -3.0382556566853376
#>     Node 26    0.9550044614759654
#>     Node 27    -1.8264978701844279
#>     Node 28    2.8468947730758427
#>     Node 29    -1.062154262848654
#>     Node 30    -0.13381658961662174
#>     Node 31    -1.6565184183965402
#>     Node 32    -1.4781344144194473
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.12577321644171946
#>     Attrib V1    0.29539880399206436
#>     Attrib V10    0.49267273000763434
#>     Attrib V11    0.3566339949404628
#>     Attrib V12    0.17919520330475658
#>     Attrib V13    -0.04482256030254946
#>     Attrib V14    -0.012574343762996617
#>     Attrib V15    0.11546935810519264
#>     Attrib V16    -0.13836733909954352
#>     Attrib V17    0.02761930365942225
#>     Attrib V18    0.2898256936700068
#>     Attrib V19    -0.22444893024279033
#>     Attrib V2    0.20532725848542602
#>     Attrib V20    -0.28606808323120025
#>     Attrib V21    0.18460336489510984
#>     Attrib V22    -0.17525389400266286
#>     Attrib V23    -0.4071633281847511
#>     Attrib V24    -0.44149063779299597
#>     Attrib V25    -0.845749492050601
#>     Attrib V26    -0.6792325353585634
#>     Attrib V27    -0.4499132622924065
#>     Attrib V28    0.21906756343279649
#>     Attrib V29    0.3522884960862266
#>     Attrib V3    -0.09384870559999091
#>     Attrib V30    0.4923529242677021
#>     Attrib V31    -0.7962491897231042
#>     Attrib V32    0.1841365351043272
#>     Attrib V33    0.30635539732877337
#>     Attrib V34    -0.368872405332702
#>     Attrib V35    -0.47690480039995026
#>     Attrib V36    -0.9423825702227333
#>     Attrib V37    -0.8088695598426666
#>     Attrib V38    -0.09752665023350222
#>     Attrib V39    0.4173137792996614
#>     Attrib V4    0.20200955029077794
#>     Attrib V40    -0.21655144949335267
#>     Attrib V41    -0.01632474095232315
#>     Attrib V42    0.28040454543663607
#>     Attrib V43    0.21438112383537405
#>     Attrib V44    0.22706632106822036
#>     Attrib V45    0.3590859455826214
#>     Attrib V46    -0.11201736653535364
#>     Attrib V47    -0.27958106078964823
#>     Attrib V48    0.42204810771139445
#>     Attrib V49    0.45980228895397063
#>     Attrib V5    -0.25970986785041883
#>     Attrib V50    -0.7739663010162063
#>     Attrib V51    0.15925467903921628
#>     Attrib V52    0.5271327711013728
#>     Attrib V53    -0.0465596282462302
#>     Attrib V54    0.27106244227248383
#>     Attrib V55    -0.12125601057014317
#>     Attrib V56    -0.23813548735589968
#>     Attrib V57    0.23663636332961646
#>     Attrib V58    0.034909221700660235
#>     Attrib V59    0.020212086965811032
#>     Attrib V6    -0.6135706323964286
#>     Attrib V60    -0.09603569992215273
#>     Attrib V7    -0.15226139604312974
#>     Attrib V8    0.27205738026962695
#>     Attrib V9    0.5997592515385219
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.11714057148360087
#>     Attrib V1    0.1766570643034687
#>     Attrib V10    0.185801167350887
#>     Attrib V11    -0.00791980166956879
#>     Attrib V12    -0.06919294917971049
#>     Attrib V13    -0.1762958529250524
#>     Attrib V14    -0.10610091601137824
#>     Attrib V15    0.13615773614176846
#>     Attrib V16    -0.09804854328899378
#>     Attrib V17    0.1265415699642763
#>     Attrib V18    0.34062142957812863
#>     Attrib V19    0.07785153885896841
#>     Attrib V2    0.05929449538692961
#>     Attrib V20    -0.02756599631816506
#>     Attrib V21    0.3318189252800281
#>     Attrib V22    0.25636004766687404
#>     Attrib V23    0.11247405576051799
#>     Attrib V24    -0.03705549068453968
#>     Attrib V25    -0.32544899215488965
#>     Attrib V26    -0.3425007952003259
#>     Attrib V27    -0.5218570307687342
#>     Attrib V28    -0.46854906096831545
#>     Attrib V29    -0.5054027577002747
#>     Attrib V3    -0.012364780543240623
#>     Attrib V30    0.1456118014808817
#>     Attrib V31    -0.6995955628015078
#>     Attrib V32    -0.12328989454904773
#>     Attrib V33    0.22597224355221618
#>     Attrib V34    -0.2121570415075681
#>     Attrib V35    -0.3786093833419005
#>     Attrib V36    -0.7401969441153229
#>     Attrib V37    -0.78006700749589
#>     Attrib V38    -0.2158065187777684
#>     Attrib V39    0.15741939910154945
#>     Attrib V4    0.1873295159228541
#>     Attrib V40    -0.18677570111321581
#>     Attrib V41    -0.07687105166828043
#>     Attrib V42    0.31624515130014164
#>     Attrib V43    0.3054918892081938
#>     Attrib V44    0.32912174803042077
#>     Attrib V45    0.245397855586083
#>     Attrib V46    -0.2007926746730408
#>     Attrib V47    -0.13777737076415242
#>     Attrib V48    0.25552731961274755
#>     Attrib V49    0.20446926474569233
#>     Attrib V5    -0.23855268021051032
#>     Attrib V50    -0.4376780635093111
#>     Attrib V51    0.09526469674136132
#>     Attrib V52    0.23076671503445492
#>     Attrib V53    -0.014471659389572651
#>     Attrib V54    0.6218985997407276
#>     Attrib V55    -0.07352026041468188
#>     Attrib V56    0.1084334070707437
#>     Attrib V57    0.42491589926475287
#>     Attrib V58    0.18300077728734246
#>     Attrib V59    0.11492281308044969
#>     Attrib V6    -0.37993510035829275
#>     Attrib V60    0.10702986963478014
#>     Attrib V7    0.0652772775861383
#>     Attrib V8    0.2841051882547959
#>     Attrib V9    0.3652942280982022
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.13833233384298918
#>     Attrib V1    0.12007189760511373
#>     Attrib V10    0.0978474204389174
#>     Attrib V11    0.11878915196513526
#>     Attrib V12    0.1126847513459862
#>     Attrib V13    0.08571210189660257
#>     Attrib V14    0.09636168103071302
#>     Attrib V15    0.12099473614343277
#>     Attrib V16    4.4026114916240937E-4
#>     Attrib V17    0.07883248833115962
#>     Attrib V18    0.07223582492589534
#>     Attrib V19    -0.039161893460379196
#>     Attrib V2    0.1277160628683046
#>     Attrib V20    -0.05793981226639787
#>     Attrib V21    0.0722878321643817
#>     Attrib V22    -0.112424506429721
#>     Attrib V23    -0.14378970590121093
#>     Attrib V24    -0.16542165825342214
#>     Attrib V25    -0.24558733917688408
#>     Attrib V26    -0.20215990298037503
#>     Attrib V27    -0.23444561217005855
#>     Attrib V28    -0.045744289201131966
#>     Attrib V29    -0.01403594545682907
#>     Attrib V3    0.12756238348267135
#>     Attrib V30    0.04775402168405536
#>     Attrib V31    -0.24172504979020676
#>     Attrib V32    -0.060188987032283495
#>     Attrib V33    0.06234917699240149
#>     Attrib V34    -0.06233339475403105
#>     Attrib V35    -0.09308021844271802
#>     Attrib V36    -0.2171156459769931
#>     Attrib V37    -0.2109861336385508
#>     Attrib V38    -0.05727301595725014
#>     Attrib V39    0.13058186977574684
#>     Attrib V4    0.1332733613269759
#>     Attrib V40    -0.06403458242826654
#>     Attrib V41    -0.09937376618708439
#>     Attrib V42    0.07499011917304108
#>     Attrib V43    0.03763482666608635
#>     Attrib V44    0.08495476757217947
#>     Attrib V45    0.18439724312934216
#>     Attrib V46    -0.02445092134871983
#>     Attrib V47    -0.029992629812495727
#>     Attrib V48    0.17376588773939372
#>     Attrib V49    0.18478305452179075
#>     Attrib V5    0.025977752243746648
#>     Attrib V50    -0.057997570820309624
#>     Attrib V51    0.11548972697018792
#>     Attrib V52    0.16900228229895548
#>     Attrib V53    0.09236023067362105
#>     Attrib V54    0.1394359942621707
#>     Attrib V55    0.09458595335741068
#>     Attrib V56    0.10124918699926864
#>     Attrib V57    0.24335633084887123
#>     Attrib V58    0.10013366620756338
#>     Attrib V59    0.1620626243985249
#>     Attrib V6    -0.14731512695505672
#>     Attrib V60    0.09818654723686049
#>     Attrib V7    -1.3595293345906032E-4
#>     Attrib V8    0.07984754445865978
#>     Attrib V9    0.17436348978234922
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.12379624009887755
#>     Attrib V1    -0.1113787044392948
#>     Attrib V10    -0.8083849190932693
#>     Attrib V11    -0.7233341189948351
#>     Attrib V12    -0.6079695732647654
#>     Attrib V13    0.0709944124135331
#>     Attrib V14    0.6563921321586794
#>     Attrib V15    -0.04123381473838161
#>     Attrib V16    0.6359967896471436
#>     Attrib V17    0.7308233910263597
#>     Attrib V18    0.6994816975839552
#>     Attrib V19    0.022868472741794137
#>     Attrib V2    -0.0780396380570343
#>     Attrib V20    -0.18765042842453988
#>     Attrib V21    -0.23724992430612
#>     Attrib V22    -0.0067176357200188904
#>     Attrib V23    -0.8187340179625544
#>     Attrib V24    -0.8828447846543614
#>     Attrib V25    0.7354005267522916
#>     Attrib V26    0.09475860934486825
#>     Attrib V27    0.004287590459642983
#>     Attrib V28    -0.30221966924551996
#>     Attrib V29    0.43935684716798884
#>     Attrib V3    0.003627555809707657
#>     Attrib V30    0.3798438956137156
#>     Attrib V31    2.273352880767254
#>     Attrib V32    1.1322575056519797
#>     Attrib V33    0.454201506056473
#>     Attrib V34    -0.23089907318283845
#>     Attrib V35    -0.26784875810831793
#>     Attrib V36    1.3556510300261686
#>     Attrib V37    1.0948873315012804
#>     Attrib V38    0.12692794512818437
#>     Attrib V39    -0.7701506471243231
#>     Attrib V4    0.09505783349432476
#>     Attrib V40    0.746330795344219
#>     Attrib V41    0.46633638489056684
#>     Attrib V42    0.19215926604106673
#>     Attrib V43    -0.15998619294154248
#>     Attrib V44    -0.12089473776566403
#>     Attrib V45    -0.7279227868898857
#>     Attrib V46    -0.48287395777015457
#>     Attrib V47    0.1828776872263327
#>     Attrib V48    0.09211536717066227
#>     Attrib V49    -0.35558795016444017
#>     Attrib V5    0.2486399758101369
#>     Attrib V50    1.4916400239090195
#>     Attrib V51    -0.5294159442969247
#>     Attrib V52    -1.5358256018584906
#>     Attrib V53    -0.12859718371678622
#>     Attrib V54    -0.3505083693497038
#>     Attrib V55    -0.018462689235665655
#>     Attrib V56    0.34257088934466784
#>     Attrib V57    -0.4040735861922027
#>     Attrib V58    -0.36908044032484694
#>     Attrib V59    0.1516971458519295
#>     Attrib V6    0.605648366014679
#>     Attrib V60    0.25558189925571767
#>     Attrib V7    0.36170653689575555
#>     Attrib V8    0.3321493214437395
#>     Attrib V9    -0.8306093414225412
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.02003252054432593
#>     Attrib V1    0.18541789656545637
#>     Attrib V10    0.05838191973848
#>     Attrib V11    0.07323287509010788
#>     Attrib V12    0.10069725063530184
#>     Attrib V13    -0.03877183474348075
#>     Attrib V14    -0.021546089640282977
#>     Attrib V15    0.07074814605715639
#>     Attrib V16    0.03447581083706645
#>     Attrib V17    0.091814084623591
#>     Attrib V18    0.2560646691211203
#>     Attrib V19    0.008253252262878118
#>     Attrib V2    0.10957915566086293
#>     Attrib V20    -0.025923043724779476
#>     Attrib V21    0.18971733837607022
#>     Attrib V22    0.033054104287785636
#>     Attrib V23    -0.02772154512455798
#>     Attrib V24    -0.03385560797354209
#>     Attrib V25    -0.18376278472504234
#>     Attrib V26    -0.22375499126147713
#>     Attrib V27    -0.26045231667402463
#>     Attrib V28    -0.22918342841254377
#>     Attrib V29    -0.20236633416852867
#>     Attrib V3    0.04074102878703748
#>     Attrib V30    0.050748439166913975
#>     Attrib V31    -0.4446841519997099
#>     Attrib V32    -0.09874665068911313
#>     Attrib V33    0.07233726154653938
#>     Attrib V34    -0.1500962055383353
#>     Attrib V35    -0.18708932081794868
#>     Attrib V36    -0.4318476863688508
#>     Attrib V37    -0.4333191661892711
#>     Attrib V38    -0.1297923588648753
#>     Attrib V39    0.08024951467156792
#>     Attrib V4    0.18044676824401898
#>     Attrib V40    -0.18709855092706373
#>     Attrib V41    -0.04577615088659465
#>     Attrib V42    0.15999991220355433
#>     Attrib V43    0.13603606328144677
#>     Attrib V44    0.1270826530268164
#>     Attrib V45    0.16185134922275698
#>     Attrib V46    -0.07719497077362397
#>     Attrib V47    -0.09725892137452107
#>     Attrib V48    0.13114304337576788
#>     Attrib V49    0.13681618494539965
#>     Attrib V5    -0.09226084266469681
#>     Attrib V50    -0.18895885995157122
#>     Attrib V51    0.0924732921100313
#>     Attrib V52    0.17060217946210895
#>     Attrib V53    0.1017482187414577
#>     Attrib V54    0.3117878729678523
#>     Attrib V55    -0.008794542388405626
#>     Attrib V56    0.08947814175702043
#>     Attrib V57    0.300433508107906
#>     Attrib V58    0.13522150421531706
#>     Attrib V59    0.2075564677362007
#>     Attrib V6    -0.16380087813484032
#>     Attrib V60    0.1725684755917255
#>     Attrib V7    0.035929039245917956
#>     Attrib V8    0.16892605607058822
#>     Attrib V9    0.23761164927229209
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.09503811011776536
#>     Attrib V1    0.17347813878065155
#>     Attrib V10    1.101062798793383
#>     Attrib V11    1.6198014698347114
#>     Attrib V12    1.5479219824400996
#>     Attrib V13    0.8355354179308884
#>     Attrib V14    -0.12489539082732098
#>     Attrib V15    -0.2887744677953778
#>     Attrib V16    -0.4717860314180787
#>     Attrib V17    -0.3353395705002008
#>     Attrib V18    0.23816658945558433
#>     Attrib V19    -0.06403824379674061
#>     Attrib V2    0.499964605869516
#>     Attrib V20    -0.3542733483421091
#>     Attrib V21    0.12051340798250222
#>     Attrib V22    0.30474473001283936
#>     Attrib V23    0.9370401438435928
#>     Attrib V24    0.6235881476077287
#>     Attrib V25    0.274942560452498
#>     Attrib V26    1.0847256480365421
#>     Attrib V27    1.2962449265271256
#>     Attrib V28    2.2549833155231114
#>     Attrib V29    1.9222023143753761
#>     Attrib V3    0.05722139519155981
#>     Attrib V30    0.7787315572363858
#>     Attrib V31    -0.8903182591667218
#>     Attrib V32    0.3708610940093281
#>     Attrib V33    -0.05858540642372723
#>     Attrib V34    -0.3697320579028729
#>     Attrib V35    0.262708412910017
#>     Attrib V36    -0.6172298863725939
#>     Attrib V37    0.09558585532353828
#>     Attrib V38    -0.12737392784693197
#>     Attrib V39    0.8308067128211193
#>     Attrib V4    0.13676332494649668
#>     Attrib V40    0.3105055855990358
#>     Attrib V41    0.905810322975715
#>     Attrib V42    0.057607661404343195
#>     Attrib V43    0.3358072790462711
#>     Attrib V44    0.004667299509491949
#>     Attrib V45    0.41318385667844515
#>     Attrib V46    0.874897640576205
#>     Attrib V47    0.22114687519477644
#>     Attrib V48    -0.13508507663157465
#>     Attrib V49    0.6289562153799537
#>     Attrib V5    0.42893177469469457
#>     Attrib V50    -0.7779986163404216
#>     Attrib V51    0.4594868403614624
#>     Attrib V52    1.2640717407772784
#>     Attrib V53    0.6772049897497832
#>     Attrib V54    -0.14656953184552976
#>     Attrib V55    -0.0547131567716068
#>     Attrib V56    -0.7561013498953332
#>     Attrib V57    -0.06447003175053066
#>     Attrib V58    0.3259667663697485
#>     Attrib V59    -0.40259342900418577
#>     Attrib V6    0.039234147670725195
#>     Attrib V60    0.13540186472552365
#>     Attrib V7    -0.3245888128857154
#>     Attrib V8    -0.2633376142159519
#>     Attrib V9    1.065401933959004
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.07114613522863196
#>     Attrib V1    0.11032432093804738
#>     Attrib V10    0.1315822939449935
#>     Attrib V11    0.17034475341973915
#>     Attrib V12    0.12038175290085637
#>     Attrib V13    0.07146141186933717
#>     Attrib V14    -0.00831775964308416
#>     Attrib V15    0.03460713351731623
#>     Attrib V16    0.04364971924731368
#>     Attrib V17    0.05038649522986778
#>     Attrib V18    0.03526979280189649
#>     Attrib V19    -0.02448808306324552
#>     Attrib V2    0.12945604247468354
#>     Attrib V20    -0.10962060133038756
#>     Attrib V21    0.0053730290341063545
#>     Attrib V22    -0.10515140844139942
#>     Attrib V23    -0.1209001885972812
#>     Attrib V24    -0.07308509582289645
#>     Attrib V25    -0.14383588299585326
#>     Attrib V26    -0.09829131295676245
#>     Attrib V27    -0.12926555855059532
#>     Attrib V28    -0.013117433211574537
#>     Attrib V29    -0.004884205052445282
#>     Attrib V3    0.0799326713665666
#>     Attrib V30    0.07637598588380058
#>     Attrib V31    -0.22124024710035095
#>     Attrib V32    -0.022594428395374823
#>     Attrib V33    0.06934865018449592
#>     Attrib V34    -0.058977811107762707
#>     Attrib V35    -0.07657036798809541
#>     Attrib V36    -0.13452918877776335
#>     Attrib V37    -0.17172868405977845
#>     Attrib V38    0.0272213477018874
#>     Attrib V39    0.10357791001401602
#>     Attrib V4    0.18530367745471685
#>     Attrib V40    -0.07945756728176188
#>     Attrib V41    -0.06776479407442099
#>     Attrib V42    -0.01546266981708959
#>     Attrib V43    0.04576111826027805
#>     Attrib V44    0.11329267639176989
#>     Attrib V45    0.1628267363229636
#>     Attrib V46    0.06395144738246392
#>     Attrib V47    0.03307419622174242
#>     Attrib V48    0.19166110598168193
#>     Attrib V49    0.16771663128045186
#>     Attrib V5    0.002786988597909098
#>     Attrib V50    -0.10826930311679554
#>     Attrib V51    0.07254348768130185
#>     Attrib V52    0.15685288282936966
#>     Attrib V53    0.1073038270471892
#>     Attrib V54    0.17110352356661035
#>     Attrib V55    0.057233653994222575
#>     Attrib V56    0.02573473943561408
#>     Attrib V57    0.2538843480959132
#>     Attrib V58    0.07982684888146048
#>     Attrib V59    0.16233516856150557
#>     Attrib V6    -0.1271573640242048
#>     Attrib V60    0.13211919378732548
#>     Attrib V7    0.005071423850318621
#>     Attrib V8    0.06960837812758422
#>     Attrib V9    0.15455937216164986
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.021117125175526098
#>     Attrib V1    0.0815699121233269
#>     Attrib V10    1.232396052546422
#>     Attrib V11    1.6559226654729164
#>     Attrib V12    1.672083144157817
#>     Attrib V13    0.9419167533310843
#>     Attrib V14    -0.14186192972464925
#>     Attrib V15    -0.33227046553964046
#>     Attrib V16    -0.4879038929562807
#>     Attrib V17    -0.26482264465360905
#>     Attrib V18    0.3396218487232381
#>     Attrib V19    -0.05044020424758484
#>     Attrib V2    0.4796832007242679
#>     Attrib V20    -0.40047853021554625
#>     Attrib V21    0.13189951896424978
#>     Attrib V22    0.3628098296832193
#>     Attrib V23    0.9765913607117713
#>     Attrib V24    0.6254670867654385
#>     Attrib V25    0.30346937453477835
#>     Attrib V26    1.1366522960860286
#>     Attrib V27    1.4259363153907654
#>     Attrib V28    2.3613387047368586
#>     Attrib V29    1.9253435708777693
#>     Attrib V3    -0.004577770810360599
#>     Attrib V30    0.801723193076787
#>     Attrib V31    -0.9553375702799733
#>     Attrib V32    0.39788034101885583
#>     Attrib V33    -0.06875067257210095
#>     Attrib V34    -0.39593136126872613
#>     Attrib V35    0.18557703216750357
#>     Attrib V36    -0.643755957915262
#>     Attrib V37    0.01135422032558461
#>     Attrib V38    -0.12345027278935983
#>     Attrib V39    0.9645070035112704
#>     Attrib V4    0.16493919945023605
#>     Attrib V40    0.348065782500192
#>     Attrib V41    0.9280493112788213
#>     Attrib V42    0.020402967151534657
#>     Attrib V43    0.44942034674021447
#>     Attrib V44    0.0349221721512629
#>     Attrib V45    0.4204610283665685
#>     Attrib V46    0.8634242001850003
#>     Attrib V47    0.2057896536943758
#>     Attrib V48    -0.13217974479870268
#>     Attrib V49    0.7474777161198645
#>     Attrib V5    0.4137621511098812
#>     Attrib V50    -0.817453945677168
#>     Attrib V51    0.48477224780672235
#>     Attrib V52    1.3073508497190671
#>     Attrib V53    0.7419242149944707
#>     Attrib V54    -0.28432724987888586
#>     Attrib V55    -0.07286825719636161
#>     Attrib V56    -0.7509380141849464
#>     Attrib V57    -0.17761286671456877
#>     Attrib V58    0.3177806599803515
#>     Attrib V59    -0.39348986777967915
#>     Attrib V6    0.06336417415467024
#>     Attrib V60    0.10858788719386267
#>     Attrib V7    -0.30515172394881585
#>     Attrib V8    -0.18945449241706735
#>     Attrib V9    1.0630460270768456
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    0.1390584711726771
#>     Attrib V1    0.01882914528541799
#>     Attrib V10    -0.661367662652822
#>     Attrib V11    -0.5188527500014384
#>     Attrib V12    -0.356617333839348
#>     Attrib V13    0.05483056545413772
#>     Attrib V14    0.550186910954543
#>     Attrib V15    0.05085040718391555
#>     Attrib V16    0.36430722100016494
#>     Attrib V17    -0.12462473381505117
#>     Attrib V18    -0.49416105936759325
#>     Attrib V19    -0.12764275938594247
#>     Attrib V2    -0.08982585594322208
#>     Attrib V20    0.26380034679088266
#>     Attrib V21    -0.35989923039617994
#>     Attrib V22    -0.6682605166682476
#>     Attrib V23    -0.5667176929216385
#>     Attrib V24    -0.4235072891407882
#>     Attrib V25    0.07472799540158019
#>     Attrib V26    -0.273845404649365
#>     Attrib V27    0.08690209763459776
#>     Attrib V28    0.11008500616979432
#>     Attrib V29    0.2711531568127427
#>     Attrib V3    0.10442618384033864
#>     Attrib V30    -0.3964193101238955
#>     Attrib V31    1.2841762019192708
#>     Attrib V32    0.2575466599134934
#>     Attrib V33    -0.19984012454149594
#>     Attrib V34    -0.034608980627288906
#>     Attrib V35    -0.17898232620728483
#>     Attrib V36    0.6489681328480925
#>     Attrib V37    0.7169949852106775
#>     Attrib V38    0.04901739019571877
#>     Attrib V39    -0.393348387040953
#>     Attrib V4    -0.1205675800195673
#>     Attrib V40    0.40761491183622806
#>     Attrib V41    0.15656355347605008
#>     Attrib V42    -0.22594773680423547
#>     Attrib V43    -0.5954735694075193
#>     Attrib V44    -0.5741508120219687
#>     Attrib V45    -0.6173382891578257
#>     Attrib V46    -0.20780816455311432
#>     Attrib V47    0.05273652519213185
#>     Attrib V48    -0.2465766907566711
#>     Attrib V49    -0.4217886134434101
#>     Attrib V5    0.24902391178505187
#>     Attrib V50    1.0244086831405002
#>     Attrib V51    -0.36859762442515703
#>     Attrib V52    -0.6268224341994352
#>     Attrib V53    0.13916406693985112
#>     Attrib V54    -0.8434263396445102
#>     Attrib V55    0.27217424570283394
#>     Attrib V56    0.2533435188484048
#>     Attrib V57    -0.18725959056694952
#>     Attrib V58    -0.0433023546655349
#>     Attrib V59    0.16008480693073296
#>     Attrib V6    0.6006196404418052
#>     Attrib V60    -0.026456210857657255
#>     Attrib V7    0.028024127731739863
#>     Attrib V8    0.10954460202221715
#>     Attrib V9    -0.8025792950006265
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.0631687431672909
#>     Attrib V1    0.1267845649878635
#>     Attrib V10    0.13722562790153053
#>     Attrib V11    0.0671010081145275
#>     Attrib V12    0.035733129787690866
#>     Attrib V13    -0.1539427072494408
#>     Attrib V14    -0.11981178867592157
#>     Attrib V15    0.04303252037528601
#>     Attrib V16    -0.05199508466439736
#>     Attrib V17    0.1681298240898591
#>     Attrib V18    0.3208150107940739
#>     Attrib V19    0.012985602123289058
#>     Attrib V2    0.017828304223296693
#>     Attrib V20    -0.01661371414950652
#>     Attrib V21    0.2290418376556845
#>     Attrib V22    0.09624922234473172
#>     Attrib V23    0.023224563479295347
#>     Attrib V24    -0.0563717744080112
#>     Attrib V25    -0.26826067117967745
#>     Attrib V26    -0.3259129156910685
#>     Attrib V27    -0.4185157169599015
#>     Attrib V28    -0.3131238125352434
#>     Attrib V29    -0.3314217774828893
#>     Attrib V3    -0.07275910664517242
#>     Attrib V30    0.09446678224528117
#>     Attrib V31    -0.620029052545311
#>     Attrib V32    -0.13157748891397295
#>     Attrib V33    0.14356430652934865
#>     Attrib V34    -0.1012113143688135
#>     Attrib V35    -0.2176277851054899
#>     Attrib V36    -0.5316769859366277
#>     Attrib V37    -0.6192733821583102
#>     Attrib V38    -0.09370027024307555
#>     Attrib V39    0.10871966456945945
#>     Attrib V4    0.12814162833413892
#>     Attrib V40    -0.22208955834589544
#>     Attrib V41    -0.1617411545184477
#>     Attrib V42    0.18239229356472678
#>     Attrib V43    0.21995624996987392
#>     Attrib V44    0.26035266978237565
#>     Attrib V45    0.28937731482656537
#>     Attrib V46    -0.12756418344660114
#>     Attrib V47    -0.09239470236824712
#>     Attrib V48    0.27514262329333794
#>     Attrib V49    0.21065944171200718
#>     Attrib V5    -0.15620888768002586
#>     Attrib V50    -0.3188932916463733
#>     Attrib V51    0.1556082527829977
#>     Attrib V52    0.17251921579156398
#>     Attrib V53    -0.009943251115588062
#>     Attrib V54    0.4856797954614788
#>     Attrib V55    -0.043967386528554905
#>     Attrib V56    0.04577823700091383
#>     Attrib V57    0.3269896105544822
#>     Attrib V58    0.1266799003541058
#>     Attrib V59    0.0589885946557342
#>     Attrib V6    -0.2848227544737309
#>     Attrib V60    0.09077918393200983
#>     Attrib V7    0.011308996998364376
#>     Attrib V8    0.20087365121489414
#>     Attrib V9    0.3155188062568293
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.017488025910047143
#>     Attrib V1    0.18792051020621373
#>     Attrib V10    0.1567680369730524
#>     Attrib V11    0.08118642910635047
#>     Attrib V12    -0.11626681193953334
#>     Attrib V13    -0.23991638704394622
#>     Attrib V14    -0.11481679916908152
#>     Attrib V15    0.07125864864898161
#>     Attrib V16    -0.060224557032257583
#>     Attrib V17    0.14354352266194126
#>     Attrib V18    0.4093450092070715
#>     Attrib V19    0.10339544318110681
#>     Attrib V2    0.07582094998600497
#>     Attrib V20    -0.0458954985662915
#>     Attrib V21    0.39319175918110566
#>     Attrib V22    0.2582624910517269
#>     Attrib V23    0.09162897430836717
#>     Attrib V24    -0.08834520389397407
#>     Attrib V25    -0.4427851135613426
#>     Attrib V26    -0.39249268050535074
#>     Attrib V27    -0.47629681175334987
#>     Attrib V28    -0.4131382496034677
#>     Attrib V29    -0.31576425254417273
#>     Attrib V3    -0.09668158378460691
#>     Attrib V30    0.17409171613217198
#>     Attrib V31    -0.8373158870923972
#>     Attrib V32    -0.18404634241753282
#>     Attrib V33    0.2432088784893179
#>     Attrib V34    -0.2041345366286584
#>     Attrib V35    -0.41314379111726135
#>     Attrib V36    -0.7904838427203132
#>     Attrib V37    -0.8362279420418496
#>     Attrib V38    -0.1337127456940949
#>     Attrib V39    0.18279173262395787
#>     Attrib V4    0.23749498270160072
#>     Attrib V40    -0.18024306167424498
#>     Attrib V41    -0.08089671101381872
#>     Attrib V42    0.31752227701476166
#>     Attrib V43    0.3913249476022715
#>     Attrib V44    0.29936332698115187
#>     Attrib V45    0.3223690976145678
#>     Attrib V46    -0.12746075559516198
#>     Attrib V47    -0.18268827680335673
#>     Attrib V48    0.363455825542647
#>     Attrib V49    0.2623840780400349
#>     Attrib V5    -0.24249537385231681
#>     Attrib V50    -0.5022615790118814
#>     Attrib V51    0.1384856641620409
#>     Attrib V52    0.2924150527267386
#>     Attrib V53    0.09364344514496453
#>     Attrib V54    0.6146749079483292
#>     Attrib V55    -0.15777842980843923
#>     Attrib V56    0.06827358916669325
#>     Attrib V57    0.4802911517466757
#>     Attrib V58    0.1592649793094215
#>     Attrib V59    0.13201652967556765
#>     Attrib V6    -0.4407855378800064
#>     Attrib V60    0.10757309567099381
#>     Attrib V7    0.10644837117777607
#>     Attrib V8    0.30031980533769276
#>     Attrib V9    0.4357317937171631
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.13415416690416324
#>     Attrib V1    0.14626636673114196
#>     Attrib V10    0.06956636733355079
#>     Attrib V11    0.11535435108127215
#>     Attrib V12    0.10937143540786862
#>     Attrib V13    0.10213955968319967
#>     Attrib V14    0.025997533627878273
#>     Attrib V15    0.040178114899007564
#>     Attrib V16    -0.04307099323727891
#>     Attrib V17    0.10371754451505015
#>     Attrib V18    0.16440340247283233
#>     Attrib V19    -0.01273797949707222
#>     Attrib V2    0.10526875514762679
#>     Attrib V20    -0.02554974254661501
#>     Attrib V21    0.11119348379256937
#>     Attrib V22    -0.028614470459746955
#>     Attrib V23    -0.016343191096275158
#>     Attrib V24    -0.048278389234214625
#>     Attrib V25    -0.12732722951119688
#>     Attrib V26    -0.19618371355579414
#>     Attrib V27    -0.1762763249741984
#>     Attrib V28    -0.13885830747807584
#>     Attrib V29    -0.07559704333881939
#>     Attrib V3    0.10871105637618413
#>     Attrib V30    0.0515818548247315
#>     Attrib V31    -0.3957306981021359
#>     Attrib V32    -0.0946894731030453
#>     Attrib V33    0.029689547798478048
#>     Attrib V34    -0.0664811981351072
#>     Attrib V35    -0.1511488871591934
#>     Attrib V36    -0.29339507183282526
#>     Attrib V37    -0.28331454365525055
#>     Attrib V38    -0.06504312922404566
#>     Attrib V39    0.15545264164972397
#>     Attrib V4    0.16292666715953183
#>     Attrib V40    -0.09627787919041177
#>     Attrib V41    -0.06671263112770684
#>     Attrib V42    0.1014858494282823
#>     Attrib V43    0.06234241274024166
#>     Attrib V44    0.0948720422305669
#>     Attrib V45    0.10523726287312732
#>     Attrib V46    -0.008214613848656096
#>     Attrib V47    -0.007091716269116635
#>     Attrib V48    0.12832203612158563
#>     Attrib V49    0.1735716726367425
#>     Attrib V5    -0.016456071410339175
#>     Attrib V50    -0.17195214341626605
#>     Attrib V51    0.07406897888894913
#>     Attrib V52    0.15164232015078372
#>     Attrib V53    0.06844966685628673
#>     Attrib V54    0.23898079409307135
#>     Attrib V55    0.04277205116005032
#>     Attrib V56    0.06338146880850744
#>     Attrib V57    0.24184502524235107
#>     Attrib V58    0.09675266928145475
#>     Attrib V59    0.20553501004805064
#>     Attrib V6    -0.12822449900508873
#>     Attrib V60    0.1798590622353174
#>     Attrib V7    0.050915601608397754
#>     Attrib V8    0.0733827091556668
#>     Attrib V9    0.15974183041766934
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.07084845719607366
#>     Attrib V1    0.29999253764889017
#>     Attrib V10    0.26234808999301257
#>     Attrib V11    0.12443818850978397
#>     Attrib V12    -0.050300588531693446
#>     Attrib V13    -0.2835303185440022
#>     Attrib V14    -0.18601276485101947
#>     Attrib V15    0.12623237962142783
#>     Attrib V16    -0.1441836257569448
#>     Attrib V17    0.11547626472313277
#>     Attrib V18    0.3699656594900117
#>     Attrib V19    -0.05471820635342417
#>     Attrib V2    0.06313747407779434
#>     Attrib V20    -0.09605547190362519
#>     Attrib V21    0.3811838073338382
#>     Attrib V22    0.20403096476069746
#>     Attrib V23    0.0760071136402908
#>     Attrib V24    -0.14004872618196088
#>     Attrib V25    -0.49334617758618826
#>     Attrib V26    -0.43753016324750454
#>     Attrib V27    -0.6263511216627061
#>     Attrib V28    -0.5278553783646894
#>     Attrib V29    -0.5008502732246386
#>     Attrib V3    -0.14209697664898785
#>     Attrib V30    0.15520208735489802
#>     Attrib V31    -0.8571597007481238
#>     Attrib V32    -0.08225620924263799
#>     Attrib V33    0.3490443924473159
#>     Attrib V34    -0.2028484797365604
#>     Attrib V35    -0.40416331369719666
#>     Attrib V36    -0.8580843715308047
#>     Attrib V37    -0.8600833572068586
#>     Attrib V38    -0.18401689925522371
#>     Attrib V39    0.2322478961687553
#>     Attrib V4    0.19427383179637756
#>     Attrib V40    -0.26465375009110587
#>     Attrib V41    -0.1883720113904399
#>     Attrib V42    0.28087973757374857
#>     Attrib V43    0.34653220276188845
#>     Attrib V44    0.4448828375611989
#>     Attrib V45    0.34094485914549805
#>     Attrib V46    -0.19092395230060405
#>     Attrib V47    -0.2575443724014825
#>     Attrib V48    0.3782226033922253
#>     Attrib V49    0.33076722892697413
#>     Attrib V5    -0.3609381355499934
#>     Attrib V50    -0.5785128181251245
#>     Attrib V51    0.07811388681202085
#>     Attrib V52    0.21629110155842743
#>     Attrib V53    -0.10786601930491517
#>     Attrib V54    0.7006154608241119
#>     Attrib V55    -0.08461458308509819
#>     Attrib V56    0.07465477838091185
#>     Attrib V57    0.4394379924917504
#>     Attrib V58    0.1813019880178026
#>     Attrib V59    0.05664547473604305
#>     Attrib V6    -0.47615501216281975
#>     Attrib V60    0.12876280392570108
#>     Attrib V7    0.08025668067405325
#>     Attrib V8    0.28138278622270685
#>     Attrib V9    0.5107777487768104
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.7650891764622288
#>     Attrib V1    -0.48628013941297704
#>     Attrib V10    -0.5244400682255904
#>     Attrib V11    -0.2638349842352725
#>     Attrib V12    -0.5659520489849608
#>     Attrib V13    -0.1165149350118068
#>     Attrib V14    0.8680770092885034
#>     Attrib V15    0.6426153156318501
#>     Attrib V16    1.4165927132693115
#>     Attrib V17    0.8443610954186879
#>     Attrib V18    -0.5517176525333151
#>     Attrib V19    0.39436950730711784
#>     Attrib V2    0.052985306800060465
#>     Attrib V20    0.5633863542447405
#>     Attrib V21    -0.7037464351241199
#>     Attrib V22    -1.2122312679031844
#>     Attrib V23    -1.6242159953818522
#>     Attrib V24    -1.20178735203578
#>     Attrib V25    0.36812191487269474
#>     Attrib V26    0.8611888214491125
#>     Attrib V27    0.8862468278898413
#>     Attrib V28    -0.1459673195314851
#>     Attrib V29    -0.496555492319565
#>     Attrib V3    0.4731455612122785
#>     Attrib V30    -1.2243224400288055
#>     Attrib V31    0.6449929631677672
#>     Attrib V32    -0.6994131745492734
#>     Attrib V33    -1.1722116069200605
#>     Attrib V34    -0.2890867640576083
#>     Attrib V35    -0.3572174751719795
#>     Attrib V36    1.0475868735075853
#>     Attrib V37    1.1428090355194314
#>     Attrib V38    -0.06775386359977228
#>     Attrib V39    -0.8927522593621268
#>     Attrib V4    0.3635548643591456
#>     Attrib V40    -0.3756187079968777
#>     Attrib V41    -1.6040066543681646
#>     Attrib V42    -1.1770825617469225
#>     Attrib V43    -1.301599093976549
#>     Attrib V44    -0.5156729777932272
#>     Attrib V45    -0.6806081330596186
#>     Attrib V46    -0.35284700672965563
#>     Attrib V47    0.29167479380576883
#>     Attrib V48    0.25373637077908306
#>     Attrib V49    -0.2662652692297002
#>     Attrib V5    0.5496686832950093
#>     Attrib V50    1.1910600774556144
#>     Attrib V51    -0.14340455022913645
#>     Attrib V52    -0.5236287823471577
#>     Attrib V53    -0.1843706090803005
#>     Attrib V54    -0.8680508045000914
#>     Attrib V55    0.9954732143495711
#>     Attrib V56    0.8004651628627504
#>     Attrib V57    -0.19969735280141002
#>     Attrib V58    0.25944589409474234
#>     Attrib V59    0.8131731853251662
#>     Attrib V6    0.2290785430677952
#>     Attrib V60    -0.05582040013924542
#>     Attrib V7    -0.4925536009761794
#>     Attrib V8    -0.25260137140754474
#>     Attrib V9    -1.0829120239953354
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.09221265490023738
#>     Attrib V1    -0.013895000338550241
#>     Attrib V10    -0.15312586927264737
#>     Attrib V11    -0.21876858201539476
#>     Attrib V12    -0.13019405524995767
#>     Attrib V13    -0.0012209573612924074
#>     Attrib V14    0.06389092912561037
#>     Attrib V15    -0.12439357931599403
#>     Attrib V16    0.037628832321827434
#>     Attrib V17    -0.05510089365969149
#>     Attrib V18    -0.02900577279404465
#>     Attrib V19    -0.06144669141133679
#>     Attrib V2    -0.07613334144906514
#>     Attrib V20    -0.05947719833325574
#>     Attrib V21    -0.13985826916530958
#>     Attrib V22    -0.05717971459236939
#>     Attrib V23    0.03018742040458784
#>     Attrib V24    -0.02555749943553714
#>     Attrib V25    -0.04128792814242306
#>     Attrib V26    -0.3542602721464791
#>     Attrib V27    -0.3003596219617039
#>     Attrib V28    -0.1679091811490042
#>     Attrib V29    0.028343701898305144
#>     Attrib V3    0.055649623130109294
#>     Attrib V30    -0.09861414529893019
#>     Attrib V31    0.4364928783494117
#>     Attrib V32    0.3567426829048307
#>     Attrib V33    0.2300916796024143
#>     Attrib V34    0.23328508268484002
#>     Attrib V35    0.15426388658864987
#>     Attrib V36    0.45147174338849644
#>     Attrib V37    0.40435143562904097
#>     Attrib V38    0.1259735389181725
#>     Attrib V39    -0.09078294386784559
#>     Attrib V4    0.09738739186711007
#>     Attrib V40    0.31144552562428857
#>     Attrib V41    0.45850030631859645
#>     Attrib V42    0.2657970532915603
#>     Attrib V43    0.09440319213186914
#>     Attrib V44    -0.009318152989446191
#>     Attrib V45    -0.16857619520501146
#>     Attrib V46    -0.013813933309618515
#>     Attrib V47    0.02969385104503284
#>     Attrib V48    -0.1813616424042298
#>     Attrib V49    -0.1830789708285529
#>     Attrib V5    0.17080038956578547
#>     Attrib V50    0.4240795276868863
#>     Attrib V51    0.06890686096039378
#>     Attrib V52    -0.013617504907698351
#>     Attrib V53    0.15871771651372568
#>     Attrib V54    -0.21168545460905558
#>     Attrib V55    0.012085503818624175
#>     Attrib V56    0.1427782050876139
#>     Attrib V57    0.00454191252724335
#>     Attrib V58    0.12621489559512936
#>     Attrib V59    0.11934521639660034
#>     Attrib V6    0.29190694918462995
#>     Attrib V60    0.12589179420304147
#>     Attrib V7    0.1101573396274971
#>     Attrib V8    0.11901171632989477
#>     Attrib V9    -0.13518130752225135
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.0583735693420142
#>     Attrib V1    0.18721891950145378
#>     Attrib V10    0.13630899246909
#>     Attrib V11    0.13405472427392648
#>     Attrib V12    0.06540042267859456
#>     Attrib V13    -0.016030072138799957
#>     Attrib V14    3.2180425514454034E-4
#>     Attrib V15    0.13523653176099773
#>     Attrib V16    0.011840638615375347
#>     Attrib V17    0.09267388206930692
#>     Attrib V18    0.13423722489778406
#>     Attrib V19    3.934619240093845E-6
#>     Attrib V2    0.18518146078768138
#>     Attrib V20    -0.07136285591303149
#>     Attrib V21    0.072518612772493
#>     Attrib V22    0.006908695473269669
#>     Attrib V23    -0.1393092413182315
#>     Attrib V24    -0.1210581567970813
#>     Attrib V25    -0.2809151340378608
#>     Attrib V26    -0.26508449771385034
#>     Attrib V27    -0.2567214932645407
#>     Attrib V28    -0.15628971057425822
#>     Attrib V29    -0.1484297649096763
#>     Attrib V3    0.050685526057892484
#>     Attrib V30    0.0672726905503241
#>     Attrib V31    -0.3018732783965172
#>     Attrib V32    -0.10878954181701304
#>     Attrib V33    0.09538641798825696
#>     Attrib V34    -0.12186293625104606
#>     Attrib V35    -0.09835990914599103
#>     Attrib V36    -0.3049098670621777
#>     Attrib V37    -0.322653363757146
#>     Attrib V38    -0.0026859290322737866
#>     Attrib V39    0.14056557405763584
#>     Attrib V4    0.1519604625046886
#>     Attrib V40    -0.16242924800256936
#>     Attrib V41    -0.09452394160981792
#>     Attrib V42    0.0386179833174994
#>     Attrib V43    0.12446828724875963
#>     Attrib V44    0.1299639977131824
#>     Attrib V45    0.1861256263413783
#>     Attrib V46    -0.06993656751725395
#>     Attrib V47    -0.09918583180747086
#>     Attrib V48    0.19958814359626373
#>     Attrib V49    0.12564595958049757
#>     Attrib V5    -0.0562817630025797
#>     Attrib V50    -0.13283895300548546
#>     Attrib V51    0.08745811850793239
#>     Attrib V52    0.15059413021424126
#>     Attrib V53    0.021980943996824685
#>     Attrib V54    0.22606328123615765
#>     Attrib V55    0.10943363111286916
#>     Attrib V56    0.09827332212292919
#>     Attrib V57    0.289081814713815
#>     Attrib V58    0.0840404692876816
#>     Attrib V59    0.12720698953344775
#>     Attrib V6    -0.15294588442917112
#>     Attrib V60    0.14353374445494102
#>     Attrib V7    -0.04028319545149237
#>     Attrib V8    0.14283212030483852
#>     Attrib V9    0.1859693653946861
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.14509313600381332
#>     Attrib V1    0.17709230379634938
#>     Attrib V10    0.10937353666761479
#>     Attrib V11    0.12041936705746599
#>     Attrib V12    0.09876679443608308
#>     Attrib V13    0.045474471938102404
#>     Attrib V14    0.03354747004612429
#>     Attrib V15    0.05012090355757665
#>     Attrib V16    0.014210052753604437
#>     Attrib V17    0.05879833968207017
#>     Attrib V18    0.17652402474754675
#>     Attrib V19    -0.05731792284451827
#>     Attrib V2    0.15004256669116442
#>     Attrib V20    -0.035272996448182006
#>     Attrib V21    0.10324976377345406
#>     Attrib V22    -0.04944738764394307
#>     Attrib V23    -0.10754383539550828
#>     Attrib V24    -0.13814670792576403
#>     Attrib V25    -0.19008311848663936
#>     Attrib V26    -0.18339226078948037
#>     Attrib V27    -0.21450658738488654
#>     Attrib V28    -0.14469289883918893
#>     Attrib V29    -0.11479150798846621
#>     Attrib V3    0.12997854484066537
#>     Attrib V30    -0.005966894947699733
#>     Attrib V31    -0.32810077400889676
#>     Attrib V32    -0.09358072287482254
#>     Attrib V33    0.04249328764273905
#>     Attrib V34    -0.05074923319243715
#>     Attrib V35    -0.13048149024517475
#>     Attrib V36    -0.1742546399920042
#>     Attrib V37    -0.26412235313040583
#>     Attrib V38    -0.04537875937841152
#>     Attrib V39    0.14361803965991726
#>     Attrib V4    0.12563290917590503
#>     Attrib V40    -0.12924781573370098
#>     Attrib V41    -0.12786083826612377
#>     Attrib V42    0.05666317117348165
#>     Attrib V43    0.07539330476010828
#>     Attrib V44    0.12407183531148522
#>     Attrib V45    0.09913419466660953
#>     Attrib V46    -0.03022851142177956
#>     Attrib V47    0.01570531901371496
#>     Attrib V48    0.15806481083259874
#>     Attrib V49    0.17137768223189417
#>     Attrib V5    -0.01904754563251095
#>     Attrib V50    -0.13697826639108354
#>     Attrib V51    0.13890583698481446
#>     Attrib V52    0.15148193280249503
#>     Attrib V53    0.06676660356327241
#>     Attrib V54    0.18893701488788345
#>     Attrib V55    0.10476650607976419
#>     Attrib V56    0.10783092584720881
#>     Attrib V57    0.184808090005677
#>     Attrib V58    0.1084148728344008
#>     Attrib V59    0.19508098959197437
#>     Attrib V6    -0.1555438498731337
#>     Attrib V60    0.18718117529838857
#>     Attrib V7    0.04634658505586004
#>     Attrib V8    0.13625850846465443
#>     Attrib V9    0.16807034493764414
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.2956540248007028
#>     Attrib V1    0.3622644294935148
#>     Attrib V10    0.4985070322763058
#>     Attrib V11    0.7822966791117142
#>     Attrib V12    0.8439419020213474
#>     Attrib V13    0.34282622381544164
#>     Attrib V14    -0.02366932058905979
#>     Attrib V15    0.044385823235520434
#>     Attrib V16    -0.3267510270795461
#>     Attrib V17    -0.36813151729216376
#>     Attrib V18    -0.26706681714109876
#>     Attrib V19    -0.5598135749514233
#>     Attrib V2    0.46578882569736163
#>     Attrib V20    -0.634114961825337
#>     Attrib V21    -0.43579174549041116
#>     Attrib V22    -0.6254421777402513
#>     Attrib V23    -0.6152838248716287
#>     Attrib V24    -0.26954879263476167
#>     Attrib V25    -0.3406250888718426
#>     Attrib V26    -0.10704482456640246
#>     Attrib V27    0.2052534405614335
#>     Attrib V28    0.8236999850972787
#>     Attrib V29    0.6455431577156873
#>     Attrib V3    0.008470987975845088
#>     Attrib V30    0.39074360002257746
#>     Attrib V31    -0.2060400734027875
#>     Attrib V32    0.3884423600455948
#>     Attrib V33    0.2870942999731445
#>     Attrib V34    -0.0790596970403008
#>     Attrib V35    -0.0963835263805055
#>     Attrib V36    -0.7851862344102503
#>     Attrib V37    -0.5350583930632488
#>     Attrib V38    -0.2854761893714415
#>     Attrib V39    0.5165628441534413
#>     Attrib V4    0.10332697138428792
#>     Attrib V40    0.09913654237606381
#>     Attrib V41    0.16823012883295876
#>     Attrib V42    0.012711986179636266
#>     Attrib V43    -0.11496910010688431
#>     Attrib V44    -0.34267070884823436
#>     Attrib V45    0.3211914890135763
#>     Attrib V46    0.38789765378739943
#>     Attrib V47    0.012461867957007254
#>     Attrib V48    0.41778979812256406
#>     Attrib V49    0.6251506890721358
#>     Attrib V5    -0.014265995094630925
#>     Attrib V50    -0.5629827452271262
#>     Attrib V51    0.047220838784226844
#>     Attrib V52    0.5782255284311301
#>     Attrib V53    0.19737017856051495
#>     Attrib V54    0.07824598160293562
#>     Attrib V55    0.3394291902442194
#>     Attrib V56    -0.448024969216189
#>     Attrib V57    0.2525435868603402
#>     Attrib V58    0.22501778015212218
#>     Attrib V59    -0.1440239313095456
#>     Attrib V6    -0.2034009340863267
#>     Attrib V60    -0.06752463277187341
#>     Attrib V7    -0.20163239595896668
#>     Attrib V8    0.15287601922343583
#>     Attrib V9    0.5480154992241082
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.061214297101496
#>     Attrib V1    0.1079547763556483
#>     Attrib V10    0.30569683405365405
#>     Attrib V11    0.20331387259005496
#>     Attrib V12    0.1789753921737177
#>     Attrib V13    -0.09034212639003303
#>     Attrib V14    -0.22859337167400073
#>     Attrib V15    -0.0016733617191532835
#>     Attrib V16    -0.1550992258514289
#>     Attrib V17    0.1694530685255488
#>     Attrib V18    0.48937418714970315
#>     Attrib V19    0.12369518677696428
#>     Attrib V2    -6.371340403983219E-4
#>     Attrib V20    -0.14174815458761178
#>     Attrib V21    0.29678994413382903
#>     Attrib V22    0.34253541891614947
#>     Attrib V23    0.30661185751112313
#>     Attrib V24    0.16540351374650053
#>     Attrib V25    -0.14117008725559743
#>     Attrib V26    5.780315652400499E-4
#>     Attrib V27    -0.26165974067559533
#>     Attrib V28    -0.3723430446759504
#>     Attrib V29    -0.3636792292215917
#>     Attrib V3    -0.14945732575904527
#>     Attrib V30    0.21291197906312648
#>     Attrib V31    -0.7292409091130678
#>     Attrib V32    -0.1812881372439159
#>     Attrib V33    0.17599813441920834
#>     Attrib V34    -0.14985369399501902
#>     Attrib V35    -0.22739611521417294
#>     Attrib V36    -0.6696105283253795
#>     Attrib V37    -0.7486314936662555
#>     Attrib V38    -0.22035840195356446
#>     Attrib V39    0.07543600287889295
#>     Attrib V4    0.1460059931774023
#>     Attrib V40    -0.2615414201493407
#>     Attrib V41    -0.03030960076995791
#>     Attrib V42    0.24263743008029376
#>     Attrib V43    0.39752051636495145
#>     Attrib V44    0.368514964396878
#>     Attrib V45    0.29619763232963303
#>     Attrib V46    -0.10207382806376114
#>     Attrib V47    -0.12878912704976792
#>     Attrib V48    0.29141765186598084
#>     Attrib V49    0.2713343660969304
#>     Attrib V5    -0.12347809046499233
#>     Attrib V50    -0.5669355303473452
#>     Attrib V51    0.2811211603060411
#>     Attrib V52    0.37948718071015153
#>     Attrib V53    0.009423455870440965
#>     Attrib V54    0.6091009629412669
#>     Attrib V55    -0.1534165767673053
#>     Attrib V56    -0.05115150359650403
#>     Attrib V57    0.2543043498717012
#>     Attrib V58    0.13175132337472106
#>     Attrib V59    0.06048627354717432
#>     Attrib V6    -0.3709339495981472
#>     Attrib V60    0.08488061480243228
#>     Attrib V7    0.06218515284357799
#>     Attrib V8    0.07605266736841333
#>     Attrib V9    0.480653933018632
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.021263326124012407
#>     Attrib V1    -0.17983486760751405
#>     Attrib V10    -0.907765431656405
#>     Attrib V11    -0.7549890364310966
#>     Attrib V12    -0.649377013309873
#>     Attrib V13    -0.05937041616497644
#>     Attrib V14    0.6200851513514516
#>     Attrib V15    0.17926001168984343
#>     Attrib V16    0.6953091804795806
#>     Attrib V17    0.30969062725693114
#>     Attrib V18    -0.35791631545677105
#>     Attrib V19    0.1122116534617099
#>     Attrib V2    -0.09540941541132147
#>     Attrib V20    0.4184457341804624
#>     Attrib V21    -0.467581726320623
#>     Attrib V22    -0.782881547966006
#>     Attrib V23    -0.9319561567831883
#>     Attrib V24    -0.7371938716829523
#>     Attrib V25    0.09076365514511524
#>     Attrib V26    -0.27770047652826907
#>     Attrib V27    3.3633404908606706E-4
#>     Attrib V28    -0.24710788874700845
#>     Attrib V29    -0.011156961832922061
#>     Attrib V3    0.18540285993075198
#>     Attrib V30    -0.6358343276460766
#>     Attrib V31    1.4838179985045918
#>     Attrib V32    0.14682783356848708
#>     Attrib V33    -0.36845399952637226
#>     Attrib V34    -0.09874084558918217
#>     Attrib V35    -0.20227354495517377
#>     Attrib V36    0.975973291908329
#>     Attrib V37    0.9060846413131832
#>     Attrib V38    -0.0014571708051868088
#>     Attrib V39    -0.8244810215043478
#>     Attrib V4    0.057579440533310315
#>     Attrib V40    0.21967501788801047
#>     Attrib V41    -0.30327307669095693
#>     Attrib V42    -0.5947295634257882
#>     Attrib V43    -0.8466312303971906
#>     Attrib V44    -0.5946828265290695
#>     Attrib V45    -0.8354969234549002
#>     Attrib V46    -0.3833571415494953
#>     Attrib V47    0.04530267112912195
#>     Attrib V48    -0.23011790589030318
#>     Attrib V49    -0.5533696320863734
#>     Attrib V5    0.35786003758893836
#>     Attrib V50    1.3866588308448125
#>     Attrib V51    -0.31520188013965333
#>     Attrib V52    -0.588370462447712
#>     Attrib V53    0.15578138359278634
#>     Attrib V54    -0.7419245651323283
#>     Attrib V55    0.4803991230712168
#>     Attrib V56    0.4446991475965115
#>     Attrib V57    -0.22395000619502914
#>     Attrib V58    -0.04113174966050828
#>     Attrib V59    0.40514994290996736
#>     Attrib V6    0.5524046518656979
#>     Attrib V60    0.1307946584088262
#>     Attrib V7    0.060641735431777664
#>     Attrib V8    0.026652345487935266
#>     Attrib V9    -1.0490390481675493
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.07943990662869885
#>     Attrib V1    0.3501592957718249
#>     Attrib V10    0.08842202654619473
#>     Attrib V11    0.08226930465392461
#>     Attrib V12    0.03633824455389919
#>     Attrib V13    -0.04345746016264122
#>     Attrib V14    0.07618296746682647
#>     Attrib V15    0.12290511832191275
#>     Attrib V16    0.07912840877395354
#>     Attrib V17    0.13009178309320546
#>     Attrib V18    0.17122187586542434
#>     Attrib V19    -0.056359811956770124
#>     Attrib V2    0.21860486390125133
#>     Attrib V20    0.002259197515364283
#>     Attrib V21    0.18088310119363246
#>     Attrib V22    -0.08434188233354772
#>     Attrib V23    -0.2656584837800347
#>     Attrib V24    -0.23568104857365957
#>     Attrib V25    -0.48494431091032403
#>     Attrib V26    -0.5066679998238091
#>     Attrib V27    -0.4984540615346861
#>     Attrib V28    -0.3728300518677724
#>     Attrib V29    -0.17738575124180797
#>     Attrib V3    0.07685886927304665
#>     Attrib V30    0.011670261065282116
#>     Attrib V31    -0.43493950028504175
#>     Attrib V32    -0.13690434930326478
#>     Attrib V33    0.05571649277564177
#>     Attrib V34    -0.14154675633974378
#>     Attrib V35    -0.2174614858099002
#>     Attrib V36    -0.3814088149073454
#>     Attrib V37    -0.4096687611219251
#>     Attrib V38    -0.062016308407569644
#>     Attrib V39    0.15389312581072806
#>     Attrib V4    0.21343885507915053
#>     Attrib V40    -0.15371469621647096
#>     Attrib V41    -0.2087792943669682
#>     Attrib V42    0.06497904271335406
#>     Attrib V43    0.16297184826458877
#>     Attrib V44    0.1300229435158779
#>     Attrib V45    0.14660824861075847
#>     Attrib V46    -0.06769824515373002
#>     Attrib V47    -0.15839454472356934
#>     Attrib V48    0.22215646459206131
#>     Attrib V49    0.19088372838688203
#>     Attrib V5    -0.08869086080203896
#>     Attrib V50    -0.16480407294101354
#>     Attrib V51    0.06254459169841316
#>     Attrib V52    0.19622632293556946
#>     Attrib V53    0.024429055399026643
#>     Attrib V54    0.3705783422329708
#>     Attrib V55    0.15081983015828399
#>     Attrib V56    0.16428778751934492
#>     Attrib V57    0.3769808191677704
#>     Attrib V58    0.2250192597327431
#>     Attrib V59    0.25686144735679894
#>     Attrib V6    -0.2028124289322099
#>     Attrib V60    0.23431850186842113
#>     Attrib V7    0.03274081356441056
#>     Attrib V8    0.13513500324442287
#>     Attrib V9    0.22830232550262752
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.18959030869197757
#>     Attrib V1    0.11801024619252184
#>     Attrib V10    0.2928142243529653
#>     Attrib V11    0.13836841432684313
#>     Attrib V12    0.04066501395135937
#>     Attrib V13    -0.2511273161839016
#>     Attrib V14    -0.31314299800424644
#>     Attrib V15    -0.00148175947700771
#>     Attrib V16    -0.16640595885620735
#>     Attrib V17    0.27515607581560053
#>     Attrib V18    0.6094050944904312
#>     Attrib V19    0.1411811456968627
#>     Attrib V2    -0.09924475980968775
#>     Attrib V20    -0.20439045857183694
#>     Attrib V21    0.290990921298948
#>     Attrib V22    0.39912834719012297
#>     Attrib V23    0.3588432168324452
#>     Attrib V24    0.16236237356378366
#>     Attrib V25    -0.1408239946031037
#>     Attrib V26    -0.03624861976850292
#>     Attrib V27    -0.5126205329137301
#>     Attrib V28    -0.7446308056945685
#>     Attrib V29    -0.8423370320509928
#>     Attrib V3    -0.08349244502771916
#>     Attrib V30    0.11968971837766534
#>     Attrib V31    -0.8822636600682714
#>     Attrib V32    -0.18007075384047974
#>     Attrib V33    0.26222762368844194
#>     Attrib V34    -0.19707514533965523
#>     Attrib V35    -0.4036640384758457
#>     Attrib V36    -0.9764014732855236
#>     Attrib V37    -1.0838249424752295
#>     Attrib V38    -0.3401823509205526
#>     Attrib V39    0.02191624153294627
#>     Attrib V4    0.2809040834660038
#>     Attrib V40    -0.34024179192734005
#>     Attrib V41    -0.12157023656890087
#>     Attrib V42    0.38015680901063276
#>     Attrib V43    0.5349324408611329
#>     Attrib V44    0.4871623696466667
#>     Attrib V45    0.373926116233845
#>     Attrib V46    -0.19208948332414033
#>     Attrib V47    -0.06145115537382475
#>     Attrib V48    0.3920829820367372
#>     Attrib V49    0.3258552626587676
#>     Attrib V5    -0.21365021472728246
#>     Attrib V50    -0.6138134901075213
#>     Attrib V51    0.23643797807903244
#>     Attrib V52    0.3433808647410059
#>     Attrib V53    0.0659301987315371
#>     Attrib V54    0.7974334209077893
#>     Attrib V55    -0.27071589425958204
#>     Attrib V56    0.14302068133239298
#>     Attrib V57    0.4242050813791014
#>     Attrib V58    0.17443304063929752
#>     Attrib V59    0.09232353901825466
#>     Attrib V6    -0.3726040581379421
#>     Attrib V60    0.11534896347781047
#>     Attrib V7    0.2156043178748943
#>     Attrib V8    0.2851929753052423
#>     Attrib V9    0.6011964250387611
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.09219034943014845
#>     Attrib V1    -0.030974593245247935
#>     Attrib V10    -0.5071690249636683
#>     Attrib V11    -0.5592048249568142
#>     Attrib V12    -0.44913640427867246
#>     Attrib V13    -0.18274586284405464
#>     Attrib V14    0.21909892321636742
#>     Attrib V15    -0.24636639739860675
#>     Attrib V16    -0.1404895215531049
#>     Attrib V17    -0.27858480142881925
#>     Attrib V18    -0.4620253759777387
#>     Attrib V19    -0.2837704059121451
#>     Attrib V2    -0.09229376138826323
#>     Attrib V20    -0.018928254684812133
#>     Attrib V21    -0.32745294886582604
#>     Attrib V22    -0.3670893835519802
#>     Attrib V23    0.03167549038584837
#>     Attrib V24    -0.08313110709825423
#>     Attrib V25    -0.0207429331431199
#>     Attrib V26    -0.4061369208474675
#>     Attrib V27    -0.25177944133964286
#>     Attrib V28    -0.03420626829895712
#>     Attrib V29    0.10580318034594147
#>     Attrib V3    0.1010618213724589
#>     Attrib V30    -0.16999315824794572
#>     Attrib V31    0.78609413142711
#>     Attrib V32    0.3880402859292303
#>     Attrib V33    -0.03145342747194787
#>     Attrib V34    -0.08997933950446824
#>     Attrib V35    -0.12431138212421737
#>     Attrib V36    0.6807914071485697
#>     Attrib V37    0.48623926051654803
#>     Attrib V38    0.2647081104629957
#>     Attrib V39    -0.2747236698358352
#>     Attrib V4    0.16552318153145165
#>     Attrib V40    0.22020146245098962
#>     Attrib V41    0.14096712082726823
#>     Attrib V42    -0.03098356786628601
#>     Attrib V43    -0.05790007682744484
#>     Attrib V44    -0.06269870013639482
#>     Attrib V45    -0.4070839271903421
#>     Attrib V46    -0.28081841306072286
#>     Attrib V47    -0.09793212505692382
#>     Attrib V48    -0.29287889236367803
#>     Attrib V49    -0.30942924140247136
#>     Attrib V5    0.04759480261020767
#>     Attrib V50    0.8178179112937115
#>     Attrib V51    -0.029045699388122053
#>     Attrib V52    -0.09375555124952423
#>     Attrib V53    0.20592750929501552
#>     Attrib V54    -0.4073050970106228
#>     Attrib V55    0.08457138195514795
#>     Attrib V56    0.3671874402291621
#>     Attrib V57    0.026062698300847405
#>     Attrib V58    0.14007642584372795
#>     Attrib V59    0.3412147814991469
#>     Attrib V6    0.3909715426324643
#>     Attrib V60    0.1643393185959136
#>     Attrib V7    0.20485822477205462
#>     Attrib V8    0.31316812302214675
#>     Attrib V9    -0.37825179188281943
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.48722069942233004
#>     Attrib V1    0.3815178572811504
#>     Attrib V10    0.7696685760315536
#>     Attrib V11    1.3473519635677522
#>     Attrib V12    1.344533983667154
#>     Attrib V13    0.6984092653486597
#>     Attrib V14    0.10279777229113402
#>     Attrib V15    0.02324354901338443
#>     Attrib V16    -0.41262215610388964
#>     Attrib V17    -0.6100676505317585
#>     Attrib V18    -0.4324951796138653
#>     Attrib V19    -0.7619223050699863
#>     Attrib V2    0.7239295235687268
#>     Attrib V20    -0.7189947323682082
#>     Attrib V21    -0.3586817887229636
#>     Attrib V22    -0.5067253885768507
#>     Attrib V23    -0.1856423721596537
#>     Attrib V24    0.052290927667458215
#>     Attrib V25    -0.40298860568766814
#>     Attrib V26    0.014961172300000398
#>     Attrib V27    0.6540086791450019
#>     Attrib V28    1.613197321739398
#>     Attrib V29    1.1549049190142144
#>     Attrib V3    0.17512071892079892
#>     Attrib V30    0.44373913825769923
#>     Attrib V31    -0.30280000875688245
#>     Attrib V32    0.6985168270549198
#>     Attrib V33    0.3163831591260754
#>     Attrib V34    -0.06673242553007283
#>     Attrib V35    -0.10991418826017205
#>     Attrib V36    -1.132100155182001
#>     Attrib V37    -0.6219166936675284
#>     Attrib V38    -0.42762425742347704
#>     Attrib V39    0.8262143764336904
#>     Attrib V4    0.06506363185624685
#>     Attrib V40    0.3437108903149893
#>     Attrib V41    0.5672222606705134
#>     Attrib V42    -0.03822000813069595
#>     Attrib V43    -0.06368329917813656
#>     Attrib V44    -0.43962625223342805
#>     Attrib V45    0.33176857016621764
#>     Attrib V46    0.6373301883608516
#>     Attrib V47    -0.07046904472060357
#>     Attrib V48    0.27527051912777195
#>     Attrib V49    0.871294523348536
#>     Attrib V5    0.11736150404440275
#>     Attrib V50    -0.8963641700242395
#>     Attrib V51    0.009900429235537429
#>     Attrib V52    0.8220540867050187
#>     Attrib V53    0.3311637847799747
#>     Attrib V54    0.08203796972292338
#>     Attrib V55    0.6974183365189561
#>     Attrib V56    -0.6489387680816577
#>     Attrib V57    0.38676310182901175
#>     Attrib V58    0.47243067815692774
#>     Attrib V59    -0.1706624455344523
#>     Attrib V6    -0.15342948627384942
#>     Attrib V60    -0.1543113072006533
#>     Attrib V7    -0.4571572293287208
#>     Attrib V8    0.1737819792145728
#>     Attrib V9    0.8494956404619234
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.12624966606280316
#>     Attrib V1    -0.00907372107034982
#>     Attrib V10    -0.29611490007518365
#>     Attrib V11    -0.3712031748024213
#>     Attrib V12    -0.23071838952293428
#>     Attrib V13    -0.11081546390661658
#>     Attrib V14    0.17344882582828608
#>     Attrib V15    -0.1988948043003377
#>     Attrib V16    -0.07502702502935472
#>     Attrib V17    -0.19024664197696023
#>     Attrib V18    -0.27779813819733623
#>     Attrib V19    -0.11138332268177015
#>     Attrib V2    -0.039714086382553845
#>     Attrib V20    0.003436292463256356
#>     Attrib V21    -0.17392580361702675
#>     Attrib V22    -0.1624997135284797
#>     Attrib V23    0.04176626184955721
#>     Attrib V24    -0.07280037045268145
#>     Attrib V25    -0.049057493344482096
#>     Attrib V26    -0.4046798734483285
#>     Attrib V27    -0.23664845507604107
#>     Attrib V28    -0.09958692742094155
#>     Attrib V29    0.08817589108328491
#>     Attrib V3    0.03357273230378661
#>     Attrib V30    -0.10696908245903164
#>     Attrib V31    0.5705328649146432
#>     Attrib V32    0.30376809541702776
#>     Attrib V33    0.15890874456079812
#>     Attrib V34    0.06730572628381107
#>     Attrib V35    0.09106389747719332
#>     Attrib V36    0.5454079390725941
#>     Attrib V37    0.4216482390633447
#>     Attrib V38    0.11031351320677636
#>     Attrib V39    -0.1860881527651174
#>     Attrib V4    0.1369313607050396
#>     Attrib V40    0.25551314955881566
#>     Attrib V41    0.2733227065859039
#>     Attrib V42    0.12626457751250963
#>     Attrib V43    0.014718377653425744
#>     Attrib V44    -0.018706314777431426
#>     Attrib V45    -0.28909686268938994
#>     Attrib V46    -0.17507708679450107
#>     Attrib V47    -0.060405940627701
#>     Attrib V48    -0.1841432624446289
#>     Attrib V49    -0.22848689374141765
#>     Attrib V5    0.09179918709792007
#>     Attrib V50    0.574706333341498
#>     Attrib V51    -0.02554560164176628
#>     Attrib V52    -0.0900850854702109
#>     Attrib V53    0.16414021432579204
#>     Attrib V54    -0.27571281709824624
#>     Attrib V55    0.032213629308856365
#>     Attrib V56    0.23280758991625422
#>     Attrib V57    0.008094160672208917
#>     Attrib V58    0.11077068038191035
#>     Attrib V59    0.24442155020531692
#>     Attrib V6    0.34176100739986803
#>     Attrib V60    0.20500059716171842
#>     Attrib V7    0.1442665577970617
#>     Attrib V8    0.24153154116804673
#>     Attrib V9    -0.28779087704669465
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.3874861485222323
#>     Attrib V1    0.4308292141053664
#>     Attrib V10    0.5850815565278676
#>     Attrib V11    0.8484587059751769
#>     Attrib V12    0.7711816859826185
#>     Attrib V13    0.2959376255955812
#>     Attrib V14    -0.15069364543360778
#>     Attrib V15    -0.027364597298626777
#>     Attrib V16    -0.3037667459065548
#>     Attrib V17    -0.30477518537289694
#>     Attrib V18    -0.09060589118529128
#>     Attrib V19    -0.5358744728648664
#>     Attrib V2    0.38915820235355136
#>     Attrib V20    -0.6108089137927423
#>     Attrib V21    -0.2513391069969099
#>     Attrib V22    -0.5200957821843734
#>     Attrib V23    -0.6034323667127892
#>     Attrib V24    -0.30722667073596444
#>     Attrib V25    -0.47334868773989885
#>     Attrib V26    -0.11091510395394655
#>     Attrib V27    0.10418238251200723
#>     Attrib V28    0.7001353586599276
#>     Attrib V29    0.6500963781790244
#>     Attrib V3    -0.06702776609220061
#>     Attrib V30    0.439975712673957
#>     Attrib V31    -0.3555652681289247
#>     Attrib V32    0.333367707937076
#>     Attrib V33    0.18381378927346245
#>     Attrib V34    -0.14103158341383598
#>     Attrib V35    -0.11661009710233229
#>     Attrib V36    -0.7132225872473436
#>     Attrib V37    -0.46062182530753765
#>     Attrib V38    -0.19300314364720114
#>     Attrib V39    0.5577262564014972
#>     Attrib V4    0.06123782461039102
#>     Attrib V40    -0.0891783425610587
#>     Attrib V41    0.07986384516562291
#>     Attrib V42    -0.03671680163005357
#>     Attrib V43    -0.06484803381323791
#>     Attrib V44    -0.16669598784508877
#>     Attrib V45    0.39510633851703286
#>     Attrib V46    0.3187185572639336
#>     Attrib V47    -0.0156719051246416
#>     Attrib V48    0.41652694841747295
#>     Attrib V49    0.5231667803629395
#>     Attrib V5    -0.09724769263109892
#>     Attrib V50    -0.5359736681379114
#>     Attrib V51    0.09486762387463543
#>     Attrib V52    0.5613140175340999
#>     Attrib V53    0.11818765980071765
#>     Attrib V54    0.10028697950465358
#>     Attrib V55    0.2593455856230188
#>     Attrib V56    -0.5121312256309393
#>     Attrib V57    0.271876767492891
#>     Attrib V58    0.15517620786959682
#>     Attrib V59    -0.12081038978321937
#>     Attrib V6    -0.2878497695312527
#>     Attrib V60    -0.06757681675139508
#>     Attrib V7    -0.3018991785169271
#>     Attrib V8    0.1643410928818977
#>     Attrib V9    0.6005638512283045
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    0.07145422794907703
#>     Attrib V1    -0.22963623513078749
#>     Attrib V10    -1.2664682268848706
#>     Attrib V11    -0.866553342455843
#>     Attrib V12    -0.5587324727791675
#>     Attrib V13    0.2139481285056417
#>     Attrib V14    0.8008018233801071
#>     Attrib V15    0.40592240814635927
#>     Attrib V16    0.7618962169755901
#>     Attrib V17    0.09547743367004873
#>     Attrib V18    -0.6584357979267369
#>     Attrib V19    -0.17302542678147972
#>     Attrib V2    0.0074550302861220545
#>     Attrib V20    0.07678233184167557
#>     Attrib V21    -0.9398895720463569
#>     Attrib V22    -1.2657083591745721
#>     Attrib V23    -1.4325191558846302
#>     Attrib V24    -0.8611759768187948
#>     Attrib V25    0.012596085088907194
#>     Attrib V26    -0.24434509723191422
#>     Attrib V27    0.20050307056427386
#>     Attrib V28    -0.1287486861837631
#>     Attrib V29    -0.08476369114862597
#>     Attrib V3    0.4083012610585067
#>     Attrib V30    -1.0084801860175814
#>     Attrib V31    1.2128636117473774
#>     Attrib V32    -0.12767803552295748
#>     Attrib V33    -0.5561129718316044
#>     Attrib V34    -0.08302967108019274
#>     Attrib V35    -0.20949263488138395
#>     Attrib V36    0.6801135405577974
#>     Attrib V37    0.6096348856481558
#>     Attrib V38    -0.2610243233274631
#>     Attrib V39    -1.0842650682480566
#>     Attrib V4    -0.08311129102956334
#>     Attrib V40    0.07380286243181497
#>     Attrib V41    -0.28003492173141503
#>     Attrib V42    -0.4108735717434446
#>     Attrib V43    -0.8824050912215466
#>     Attrib V44    -0.9770082634429152
#>     Attrib V45    -0.9544744312693008
#>     Attrib V46    -0.18863241757911423
#>     Attrib V47    0.2551501306720832
#>     Attrib V48    -0.005326288256480985
#>     Attrib V49    -0.5603811016720137
#>     Attrib V5    0.27970763730796255
#>     Attrib V50    1.3688003088005924
#>     Attrib V51    -0.4048707106025634
#>     Attrib V52    -0.5791569015840721
#>     Attrib V53    0.14714171276372429
#>     Attrib V54    -0.7607901748404868
#>     Attrib V55    0.800806598628678
#>     Attrib V56    0.5448929268684057
#>     Attrib V57    -0.19750072259907334
#>     Attrib V58    -0.051354255748556864
#>     Attrib V59    0.5042764919325805
#>     Attrib V6    0.2545801764442953
#>     Attrib V60    0.23946822399587697
#>     Attrib V7    -0.3557975269039106
#>     Attrib V8    -0.259096888140256
#>     Attrib V9    -1.3975479536683142
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.0050208905577525794
#>     Attrib V1    0.1250180881988172
#>     Attrib V10    0.1826911631384121
#>     Attrib V11    0.19885818587560666
#>     Attrib V12    0.11248275118276804
#>     Attrib V13    -0.08381802652826328
#>     Attrib V14    -0.09125455862457127
#>     Attrib V15    0.04601727071216006
#>     Attrib V16    -0.10144727482247942
#>     Attrib V17    0.11348370358981068
#>     Attrib V18    0.3328424440997134
#>     Attrib V19    -0.021734762943827445
#>     Attrib V2    0.04503929713196828
#>     Attrib V20    -0.06511816744754945
#>     Attrib V21    0.27961514732960957
#>     Attrib V22    0.18982438276503577
#>     Attrib V23    0.01706410542884022
#>     Attrib V24    0.009161161094838843
#>     Attrib V25    -0.21543420152472503
#>     Attrib V26    -0.25984838120239157
#>     Attrib V27    -0.37100688278274585
#>     Attrib V28    -0.2761578701336606
#>     Attrib V29    -0.21044493086951735
#>     Attrib V3    -0.04935349275307119
#>     Attrib V30    0.08487793635868429
#>     Attrib V31    -0.6252279302884874
#>     Attrib V32    -0.08489171776402187
#>     Attrib V33    0.16932037467194685
#>     Attrib V34    -0.1619551042384815
#>     Attrib V35    -0.26388995613590516
#>     Attrib V36    -0.63082870182311
#>     Attrib V37    -0.6155170024873389
#>     Attrib V38    -0.16769782236607253
#>     Attrib V39    0.17109992477442387
#>     Attrib V4    0.10250865419117978
#>     Attrib V40    -0.2142271663762023
#>     Attrib V41    -0.08093943972802599
#>     Attrib V42    0.17292103159190841
#>     Attrib V43    0.2746980590455258
#>     Attrib V44    0.1724681402560567
#>     Attrib V45    0.2914414055046684
#>     Attrib V46    -0.10013562265693321
#>     Attrib V47    -0.09139167331766637
#>     Attrib V48    0.2581429262020197
#>     Attrib V49    0.23006437929878806
#>     Attrib V5    -0.23433258922761463
#>     Attrib V50    -0.3974188968715591
#>     Attrib V51    0.14510601418269142
#>     Attrib V52    0.2980945512256623
#>     Attrib V53    -0.004551725478828136
#>     Attrib V54    0.44190202966935954
#>     Attrib V55    -0.03934541423515956
#>     Attrib V56    -0.006239320538485154
#>     Attrib V57    0.31151335730089974
#>     Attrib V58    0.08066739173166697
#>     Attrib V59    0.05041819304513899
#>     Attrib V6    -0.31526878418750487
#>     Attrib V60    0.10768622846731751
#>     Attrib V7    0.01590236715623653
#>     Attrib V8    0.19059488159495752
#>     Attrib V9    0.35803522991237674
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.13910342200657788
#>     Attrib V1    0.1261557926076089
#>     Attrib V10    0.13331394229253885
#>     Attrib V11    0.12119276092683781
#>     Attrib V12    0.14933386667442802
#>     Attrib V13    0.1064922152065068
#>     Attrib V14    0.05210671098911062
#>     Attrib V15    0.04053045776791241
#>     Attrib V16    0.0035620166887364076
#>     Attrib V17    0.06904749683816966
#>     Attrib V18    0.017368085120753045
#>     Attrib V19    -0.07223946786217912
#>     Attrib V2    0.1253856172738795
#>     Attrib V20    -0.10426085685548099
#>     Attrib V21    -0.012486540894094851
#>     Attrib V22    -0.08388145997058134
#>     Attrib V23    -0.0723047149989018
#>     Attrib V24    -0.08953227398457726
#>     Attrib V25    -0.04579795496850335
#>     Attrib V26    -0.022745015438488912
#>     Attrib V27    -0.07103053269975726
#>     Attrib V28    0.006788774737934642
#>     Attrib V29    -0.04656669355899699
#>     Attrib V3    0.06880484029260102
#>     Attrib V30    0.05543515367969621
#>     Attrib V31    -0.06838836958082158
#>     Attrib V32    -0.046809208590390936
#>     Attrib V33    -0.006100706582113536
#>     Attrib V34    -0.047966172506430114
#>     Attrib V35    -9.055712916278795E-4
#>     Attrib V36    -0.0729972120974917
#>     Attrib V37    -0.021111352015937414
#>     Attrib V38    -0.015091284851652306
#>     Attrib V39    0.12062366986948449
#>     Attrib V4    0.15587195155623348
#>     Attrib V40    -0.006378139097619887
#>     Attrib V41    -0.009537328150084099
#>     Attrib V42    0.08755102752965035
#>     Attrib V43    0.04012001148149239
#>     Attrib V44    0.033432746414880476
#>     Attrib V45    0.1086982714295111
#>     Attrib V46    0.04041914501668228
#>     Attrib V47    0.008489942737992402
#>     Attrib V48    0.1317202785148119
#>     Attrib V49    0.07173488652006828
#>     Attrib V5    0.010274784581909913
#>     Attrib V50    -0.031464249890721566
#>     Attrib V51    0.060423151650644776
#>     Attrib V52    0.10215103472605865
#>     Attrib V53    0.07802046014571135
#>     Attrib V54    0.1176023358925219
#>     Attrib V55    0.0636975717498577
#>     Attrib V56    0.1345054956342161
#>     Attrib V57    0.13469333407996759
#>     Attrib V58    0.12514850214595302
#>     Attrib V59    0.16533321323354655
#>     Attrib V6    -0.003883362846360429
#>     Attrib V60    0.12321754157944131
#>     Attrib V7    -0.017422606803727637
#>     Attrib V8    0.05881850659918583
#>     Attrib V9    0.0927732825463367
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.23508209861597126
#>     Attrib V1    0.12108922621839588
#>     Attrib V10    0.23875352665216393
#>     Attrib V11    0.054327852737452165
#>     Attrib V12    -0.1366166504760318
#>     Attrib V13    -0.2693604121070289
#>     Attrib V14    -0.24693643884936725
#>     Attrib V15    0.04136026184787369
#>     Attrib V16    -0.10602336361698853
#>     Attrib V17    0.20270340418697147
#>     Attrib V18    0.4824405239852023
#>     Attrib V19    0.06873071146992084
#>     Attrib V2    -0.007286568483334158
#>     Attrib V20    -0.09384107995129914
#>     Attrib V21    0.2729393145752852
#>     Attrib V22    0.35122300255819106
#>     Attrib V23    0.27821545852129925
#>     Attrib V24    0.16393253662865886
#>     Attrib V25    -0.18895395745511345
#>     Attrib V26    -0.10377852519099037
#>     Attrib V27    -0.5404499086200545
#>     Attrib V28    -0.7776373766055203
#>     Attrib V29    -0.8498699650734319
#>     Attrib V3    -0.10748108305727275
#>     Attrib V30    0.036357578651121304
#>     Attrib V31    -0.7709180121289271
#>     Attrib V32    -0.21542018193189125
#>     Attrib V33    0.2554449147410786
#>     Attrib V34    -0.10450526269765385
#>     Attrib V35    -0.3278841044035466
#>     Attrib V36    -0.8355518289906207
#>     Attrib V37    -0.9331669036475885
#>     Attrib V38    -0.23221570565203947
#>     Attrib V39    -0.007645062917491882
#>     Attrib V4    0.21615749650826716
#>     Attrib V40    -0.27138899789391757
#>     Attrib V41    -0.17246065812521977
#>     Attrib V42    0.306288147251047
#>     Attrib V43    0.4418311608339183
#>     Attrib V44    0.4621860995139851
#>     Attrib V45    0.291504116440769
#>     Attrib V46    -0.1797125781313267
#>     Attrib V47    -0.08354499122113423
#>     Attrib V48    0.4138978135832895
#>     Attrib V49    0.27476989664730045
#>     Attrib V5    -0.2542398377398758
#>     Attrib V50    -0.4768848918909343
#>     Attrib V51    0.191648847225666
#>     Attrib V52    0.21851946451592028
#>     Attrib V53    0.06584236837798431
#>     Attrib V54    0.7820547508694146
#>     Attrib V55    -0.18072853010926687
#>     Attrib V56    0.11730805002694143
#>     Attrib V57    0.4478439234804716
#>     Attrib V58    0.14207729994318485
#>     Attrib V59    0.05964888810679
#>     Attrib V6    -0.350671187623776
#>     Attrib V60    0.15533253613588788
#>     Attrib V7    0.21378183476523643
#>     Attrib V8    0.29140897867274007
#>     Attrib V9    0.5398421067595931
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.15767987345159107
#>     Attrib V1    0.2820298552917985
#>     Attrib V10    0.023599684727827547
#>     Attrib V11    -0.08849461524326807
#>     Attrib V12    -0.19648895415467843
#>     Attrib V13    -0.31452754002701666
#>     Attrib V14    -0.05637395767984806
#>     Attrib V15    0.13502463807873952
#>     Attrib V16    -0.01992666833711082
#>     Attrib V17    0.1434663996553907
#>     Attrib V18    0.47180681005400377
#>     Attrib V19    0.04544874172743014
#>     Attrib V2    0.0326767422844664
#>     Attrib V20    0.04629454363495272
#>     Attrib V21    0.4840490591774057
#>     Attrib V22    0.27906627721060756
#>     Attrib V23    0.15205381084745573
#>     Attrib V24    -0.0663531940706148
#>     Attrib V25    -0.4730969799918842
#>     Attrib V26    -0.42826917786702984
#>     Attrib V27    -0.5539454613314249
#>     Attrib V28    -0.4624871895032552
#>     Attrib V29    -0.37188863054144017
#>     Attrib V3    0.041824189184794955
#>     Attrib V30    0.19206507118871124
#>     Attrib V31    -0.862076483320817
#>     Attrib V32    -0.30141235330392313
#>     Attrib V33    0.14428127296246943
#>     Attrib V34    -0.25684024367376107
#>     Attrib V35    -0.4190940913016577
#>     Attrib V36    -0.6688789781022513
#>     Attrib V37    -0.7417778324455531
#>     Attrib V38    -0.1297220111158533
#>     Attrib V39    0.1967577257567529
#>     Attrib V4    0.21593510955067144
#>     Attrib V40    -0.24965985720211104
#>     Attrib V41    -0.12175025516056752
#>     Attrib V42    0.4021775727760199
#>     Attrib V43    0.35282238802524823
#>     Attrib V44    0.3900912769641446
#>     Attrib V45    0.31488007376640975
#>     Attrib V46    -0.17598826827748512
#>     Attrib V47    -0.16603534573233197
#>     Attrib V48    0.2636568745529491
#>     Attrib V49    0.2706407219172428
#>     Attrib V5    -0.21599016294663467
#>     Attrib V50    -0.3925743615383731
#>     Attrib V51    0.15158013215040383
#>     Attrib V52    0.23970589133307513
#>     Attrib V53    0.1223365216104327
#>     Attrib V54    0.6561814627465989
#>     Attrib V55    -0.12652313355996025
#>     Attrib V56    0.14782776730747332
#>     Attrib V57    0.4886707664688268
#>     Attrib V58    0.2239432984748637
#>     Attrib V59    0.15004927660122028
#>     Attrib V6    -0.3391917464313821
#>     Attrib V60    0.1823942134427296
#>     Attrib V7    0.13018439139930577
#>     Attrib V8    0.28511481054872395
#>     Attrib V9    0.36271002804510183
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
