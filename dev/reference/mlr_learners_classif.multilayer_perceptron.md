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
#>     Threshold    -0.1765509136122055
#>     Node 2    2.2788570600171596
#>     Node 3    1.0270281926007288
#>     Node 4    0.5291451506950757
#>     Node 5    -1.9055806552493224
#>     Node 6    1.619041902213579
#>     Node 7    1.9055230708991304
#>     Node 8    1.0018742282337632
#>     Node 9    2.8998561894483803
#>     Node 10    -2.662029540866431
#>     Node 11    1.3320088746780345
#>     Node 12    2.019594674007709
#>     Node 13    1.2659131402723252
#>     Node 14    1.5725617626065027
#>     Node 15    -2.5217749768726945
#>     Node 16    0.6388217926148335
#>     Node 17    0.6643898902241155
#>     Node 18    0.20209156837909048
#>     Node 19    1.973251929814467
#>     Node 20    1.9510468210994152
#>     Node 21    -1.8774957047892187
#>     Node 22    1.4337168771256772
#>     Node 23    1.6149354673905303
#>     Node 24    -0.36125144005066423
#>     Node 25    3.6738882608794157
#>     Node 26    -1.273699744358762
#>     Node 27    1.7596348909790056
#>     Node 28    -3.8766346011654664
#>     Node 29    0.833660024711757
#>     Node 30    0.5676939426801616
#>     Node 31    1.6492888699006345
#>     Node 32    1.0267586879199182
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.19689437821822314
#>     Node 2    -2.3175087281065916
#>     Node 3    -1.012015274909467
#>     Node 4    -0.49382635112192813
#>     Node 5    1.9269951038053312
#>     Node 6    -1.5925157530254894
#>     Node 7    -1.8942382554359893
#>     Node 8    -1.0405873308664704
#>     Node 9    -2.9195734163193743
#>     Node 10    2.6181827277894274
#>     Node 11    -1.2978793570499831
#>     Node 12    -2.088820964045754
#>     Node 13    -1.2098481432292163
#>     Node 14    -1.5062927776811015
#>     Node 15    2.5249350129702663
#>     Node 16    -0.6602572625723477
#>     Node 17    -0.638017049107301
#>     Node 18    -0.16925822010013508
#>     Node 19    -1.962080496775601
#>     Node 20    -1.9320027776963058
#>     Node 21    1.9431146196144584
#>     Node 22    -1.4843079326124289
#>     Node 23    -1.653544559300159
#>     Node 24    0.3425238909658339
#>     Node 25    -3.684448397956966
#>     Node 26    1.1953249239330153
#>     Node 27    -1.8036516035680967
#>     Node 28    3.8553117239889714
#>     Node 29    -0.8695159013656243
#>     Node 30    -0.49792876684508164
#>     Node 31    -1.587778914696623
#>     Node 32    -1.0469547553968728
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.19429752628270644
#>     Attrib V1    0.1760315526382953
#>     Attrib V10    -0.1510299566471652
#>     Attrib V11    -0.03567852883780816
#>     Attrib V12    -0.006432957499825332
#>     Attrib V13    -0.41683002856686535
#>     Attrib V14    -0.38339473026764403
#>     Attrib V15    -0.11963764617552793
#>     Attrib V16    -0.02579382789193753
#>     Attrib V17    0.06057045188252505
#>     Attrib V18    0.31718074224721843
#>     Attrib V19    -0.11940842660778828
#>     Attrib V2    -0.03777046607720749
#>     Attrib V20    0.62019784062407
#>     Attrib V21    0.6573699523801044
#>     Attrib V22    0.27305714701019923
#>     Attrib V23    0.21172184129170762
#>     Attrib V24    0.2385778493331629
#>     Attrib V25    -0.5291345678717552
#>     Attrib V26    -1.114386864521721
#>     Attrib V27    -0.743135132040471
#>     Attrib V28    -0.34571231120055507
#>     Attrib V29    -0.6223555613659731
#>     Attrib V3    0.28214992956188817
#>     Attrib V30    0.15066072200434505
#>     Attrib V31    -1.2889947991227264
#>     Attrib V32    -0.5675428776267174
#>     Attrib V33    0.5421472138296167
#>     Attrib V34    0.19554632115043893
#>     Attrib V35    0.05337618555602488
#>     Attrib V36    -0.9306124408434642
#>     Attrib V37    -0.9668514003300048
#>     Attrib V38    0.3953541681211979
#>     Attrib V39    0.16165379191463333
#>     Attrib V4    0.6960703162889361
#>     Attrib V40    -0.1417888326258242
#>     Attrib V41    0.17807481542927855
#>     Attrib V42    0.3132308240124749
#>     Attrib V43    0.32810765303956296
#>     Attrib V44    0.101003610371403
#>     Attrib V45    0.17566944760750208
#>     Attrib V46    -0.04009495987518722
#>     Attrib V47    -0.40540775640008647
#>     Attrib V48    0.3166656119989756
#>     Attrib V49    0.46909171556374996
#>     Attrib V5    -0.013703916280349919
#>     Attrib V50    -1.1277833331224016
#>     Attrib V51    -0.27861962707254617
#>     Attrib V52    -0.11469131399846254
#>     Attrib V53    0.6967743411879349
#>     Attrib V54    1.0900711272227068
#>     Attrib V55    -0.44936801301748536
#>     Attrib V56    0.37853102753527623
#>     Attrib V57    0.47250879838820437
#>     Attrib V58    0.19169954937423872
#>     Attrib V59    1.0207781753898897
#>     Attrib V6    -0.08425060589808916
#>     Attrib V60    0.3254897760598134
#>     Attrib V7    0.46912387971534525
#>     Attrib V8    -0.0819978251912244
#>     Attrib V9    0.45053768966330854
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.05994660094863845
#>     Attrib V1    0.10558886392174713
#>     Attrib V10    -0.1226012683496017
#>     Attrib V11    -0.0825913557076623
#>     Attrib V12    0.021174461419750677
#>     Attrib V13    -0.10763626438993656
#>     Attrib V14    -0.07025832193042429
#>     Attrib V15    0.08178871621391616
#>     Attrib V16    0.01411990595893522
#>     Attrib V17    0.017174503916864967
#>     Attrib V18    0.13564652224859552
#>     Attrib V19    0.030807738941374244
#>     Attrib V2    0.06527479794982974
#>     Attrib V20    0.3100175828533669
#>     Attrib V21    0.2565769210664104
#>     Attrib V22    0.06702263249498314
#>     Attrib V23    -0.021554222277131663
#>     Attrib V24    0.03557522859041693
#>     Attrib V25    -0.23717375854604492
#>     Attrib V26    -0.504721967058571
#>     Attrib V27    -0.34074541960679544
#>     Attrib V28    -0.15274545756674618
#>     Attrib V29    -0.3389446190387786
#>     Attrib V3    0.13495904917706497
#>     Attrib V30    0.053597946529221834
#>     Attrib V31    -0.5498337401095603
#>     Attrib V32    -0.2133802591621963
#>     Attrib V33    0.27691007625058617
#>     Attrib V34    0.009621092746049486
#>     Attrib V35    0.007391921337370595
#>     Attrib V36    -0.42767094062028316
#>     Attrib V37    -0.44514991465660986
#>     Attrib V38    0.15552703829528006
#>     Attrib V39    0.10595162218076304
#>     Attrib V4    0.3850725107498927
#>     Attrib V40    -0.05058304000486938
#>     Attrib V41    0.07748383062716606
#>     Attrib V42    0.10974438682880268
#>     Attrib V43    0.11676653334764517
#>     Attrib V44    0.06175211525540126
#>     Attrib V45    0.08797875586170537
#>     Attrib V46    -0.051970304462587325
#>     Attrib V47    -0.203085486591314
#>     Attrib V48    0.05730259218205298
#>     Attrib V49    0.15738357312065818
#>     Attrib V5    0.02644016349762152
#>     Attrib V50    -0.47937414762102226
#>     Attrib V51    -0.13923077965734101
#>     Attrib V52    0.014145919587096469
#>     Attrib V53    0.3640132509258727
#>     Attrib V54    0.5345751791716727
#>     Attrib V55    -0.039670690742499966
#>     Attrib V56    0.20627736626587134
#>     Attrib V57    0.3473178691009962
#>     Attrib V58    0.22614110663069348
#>     Attrib V59    0.5874175843555208
#>     Attrib V6    -0.050752736411244524
#>     Attrib V60    0.19852490822602453
#>     Attrib V7    0.16177863198126155
#>     Attrib V8    0.015763340520342582
#>     Attrib V9    0.1451924623368643
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.1051857174430645
#>     Attrib V1    0.05206412941633382
#>     Attrib V10    -0.015214731426681501
#>     Attrib V11    -6.501366617403629E-5
#>     Attrib V12    0.04030374303816633
#>     Attrib V13    -0.006148482413228546
#>     Attrib V14    0.02609692921600082
#>     Attrib V15    0.05701207657999302
#>     Attrib V16    -0.006981721926985572
#>     Attrib V17    0.009018964098963326
#>     Attrib V18    0.05882523100615699
#>     Attrib V19    -0.02097826043460554
#>     Attrib V2    0.04489419732504888
#>     Attrib V20    0.14056836206843837
#>     Attrib V21    0.15265776462792038
#>     Attrib V22    -0.05834569495387194
#>     Attrib V23    -0.06075511562737447
#>     Attrib V24    -0.03627378172428602
#>     Attrib V25    -0.1721477946807518
#>     Attrib V26    -0.22774304186016217
#>     Attrib V27    -0.15335174263640516
#>     Attrib V28    -1.7158818215413872E-4
#>     Attrib V29    -0.08662384879725256
#>     Attrib V3    0.13532336071768747
#>     Attrib V30    0.017569877776542727
#>     Attrib V31    -0.24660108743092346
#>     Attrib V32    -0.08072056410119799
#>     Attrib V33    0.1593068054187909
#>     Attrib V34    0.03289738485806401
#>     Attrib V35    -0.004089146032106518
#>     Attrib V36    -0.23240167742588178
#>     Attrib V37    -0.21490906909132831
#>     Attrib V38    0.08163214907862748
#>     Attrib V39    0.07633475033906928
#>     Attrib V4    0.24012168870610232
#>     Attrib V40    -0.02334583119743159
#>     Attrib V41    -0.0074039138601316905
#>     Attrib V42    0.04243994700590484
#>     Attrib V43    0.033645462991129166
#>     Attrib V44    0.04683193082291877
#>     Attrib V45    0.11375667612600449
#>     Attrib V46    -0.03268389516201067
#>     Attrib V47    -0.12837231182566683
#>     Attrib V48    0.0691528641783838
#>     Attrib V49    0.1248833741050952
#>     Attrib V5    0.11510045133983973
#>     Attrib V50    -0.18273849255037394
#>     Attrib V51    0.02952412025409328
#>     Attrib V52    0.02766016390158271
#>     Attrib V53    0.24787523373338075
#>     Attrib V54    0.19223093339369418
#>     Attrib V55    0.019352124594336145
#>     Attrib V56    0.1301015193341797
#>     Attrib V57    0.23387473983905332
#>     Attrib V58    0.11937205506441848
#>     Attrib V59    0.3029543142232484
#>     Attrib V6    -0.012891407863829498
#>     Attrib V60    0.131300863172018
#>     Attrib V7    0.10998112946933584
#>     Attrib V8    -0.005615166127670212
#>     Attrib V9    0.17473885293222668
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.38225930428039046
#>     Attrib V1    0.24631485476120557
#>     Attrib V10    -0.5499022545484293
#>     Attrib V11    -0.4639952424188519
#>     Attrib V12    -0.562113800637498
#>     Attrib V13    0.16310203096481615
#>     Attrib V14    0.5879432388804636
#>     Attrib V15    0.5375271028796272
#>     Attrib V16    0.16254991520436085
#>     Attrib V17    0.3536172774723025
#>     Attrib V18    -0.21241991596456958
#>     Attrib V19    0.3083444775494976
#>     Attrib V2    0.28242086010116246
#>     Attrib V20    -0.025856011677947887
#>     Attrib V21    -0.10607241064455178
#>     Attrib V22    -0.05483469052519395
#>     Attrib V23    -0.10434218997953837
#>     Attrib V24    -0.3142965872067455
#>     Attrib V25    0.14458001689526295
#>     Attrib V26    0.060755935966739415
#>     Attrib V27    -0.3810892274941669
#>     Attrib V28    -0.6024043980272625
#>     Attrib V29    0.028081198133760654
#>     Attrib V3    0.3076384308479595
#>     Attrib V30    -0.42694313050891314
#>     Attrib V31    0.5051377819193411
#>     Attrib V32    -0.0417772942144072
#>     Attrib V33    -0.5217894706775783
#>     Attrib V34    0.04483353293799459
#>     Attrib V35    0.3753660541231726
#>     Attrib V36    0.9824514682845022
#>     Attrib V37    0.8706350946955751
#>     Attrib V38    -0.2834410928046166
#>     Attrib V39    -0.06846028922883592
#>     Attrib V4    -0.5658251872300434
#>     Attrib V40    0.2913736504343631
#>     Attrib V41    -0.2649720511208819
#>     Attrib V42    -0.140446589857861
#>     Attrib V43    -0.2745137046241441
#>     Attrib V44    -0.07915982786686528
#>     Attrib V45    -0.14557546587841003
#>     Attrib V46    -0.010111243040134709
#>     Attrib V47    0.10015073796803861
#>     Attrib V48    -0.8646545771372032
#>     Attrib V49    -0.9357963685204299
#>     Attrib V5    0.031109638948654955
#>     Attrib V50    1.0092033179451998
#>     Attrib V51    -0.23206290396454848
#>     Attrib V52    -0.2867982668691353
#>     Attrib V53    -0.28364078806213133
#>     Attrib V54    -0.4714497492379796
#>     Attrib V55    0.6958813098268813
#>     Attrib V56    0.37712315166311555
#>     Attrib V57    -0.14967500190673547
#>     Attrib V58    0.1234921217731988
#>     Attrib V59    -0.22826042319145487
#>     Attrib V6    -0.08893734830377685
#>     Attrib V60    0.2245568821762267
#>     Attrib V7    -0.16977757467358215
#>     Attrib V8    -0.15793780907397723
#>     Attrib V9    -0.9194460896935166
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.14632495477481627
#>     Attrib V1    0.14656388057241862
#>     Attrib V10    -0.2502849796873675
#>     Attrib V11    -0.1190108957694502
#>     Attrib V12    -1.911590349616679E-4
#>     Attrib V13    -0.3013736986667319
#>     Attrib V14    -0.24032245660866602
#>     Attrib V15    -0.025317586526544936
#>     Attrib V16    0.06958960898077467
#>     Attrib V17    0.05454221461535308
#>     Attrib V18    0.26646066540925273
#>     Attrib V19    -0.0481735614023445
#>     Attrib V2    0.020380954242550518
#>     Attrib V20    0.45115652526980987
#>     Attrib V21    0.4413837348082954
#>     Attrib V22    0.11053332117672915
#>     Attrib V23    0.07071525901664188
#>     Attrib V24    0.1982400585396394
#>     Attrib V25    -0.28671203439372306
#>     Attrib V26    -0.7738032109848322
#>     Attrib V27    -0.564089111601486
#>     Attrib V28    -0.3871865438999298
#>     Attrib V29    -0.5365307813614376
#>     Attrib V3    0.20346842407769297
#>     Attrib V30    0.036625700132889766
#>     Attrib V31    -0.8603321650708148
#>     Attrib V32    -0.3821103609091991
#>     Attrib V33    0.43166790442920855
#>     Attrib V34    0.16030271535855622
#>     Attrib V35    0.10392692897933055
#>     Attrib V36    -0.6360109773831965
#>     Attrib V37    -0.649587882000094
#>     Attrib V38    0.25621327147528083
#>     Attrib V39    0.0916802039329538
#>     Attrib V4    0.5580498187927898
#>     Attrib V40    -0.12737961900423753
#>     Attrib V41    0.15160890389920717
#>     Attrib V42    0.19541526214196986
#>     Attrib V43    0.1638362231600249
#>     Attrib V44    0.02466125034193721
#>     Attrib V45    0.1796668715009232
#>     Attrib V46    -0.0023843800882523826
#>     Attrib V47    -0.33845784384440486
#>     Attrib V48    0.11305718318633651
#>     Attrib V49    0.2519191220534065
#>     Attrib V5    0.015350869408060549
#>     Attrib V50    -0.7222817836975247
#>     Attrib V51    -0.1835306292241313
#>     Attrib V52    -0.13517601379280286
#>     Attrib V53    0.5819812857578198
#>     Attrib V54    0.7466497916633248
#>     Attrib V55    -0.24217912923318893
#>     Attrib V56    0.2946128952986775
#>     Attrib V57    0.42589130667522157
#>     Attrib V58    0.2433097256115605
#>     Attrib V59    0.8357837339339665
#>     Attrib V6    0.03877711787146912
#>     Attrib V60    0.3419123214544649
#>     Attrib V7    0.36008188917563033
#>     Attrib V8    -0.017011911368814595
#>     Attrib V9    0.316422222335365
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.32673364969785584
#>     Attrib V1    -0.010695874373257854
#>     Attrib V10    0.2725042897066842
#>     Attrib V11    0.35923148134396937
#>     Attrib V12    0.39623880551218166
#>     Attrib V13    -0.13096222399298488
#>     Attrib V14    -0.5622604945407205
#>     Attrib V15    -0.43416004178257317
#>     Attrib V16    -0.0743805580432546
#>     Attrib V17    -0.07684412888451271
#>     Attrib V18    0.4243584385388043
#>     Attrib V19    0.02035089118151488
#>     Attrib V2    -0.04131021998914125
#>     Attrib V20    0.5764210574329905
#>     Attrib V21    0.5828101889662257
#>     Attrib V22    0.353538930680231
#>     Attrib V23    0.5576957642024377
#>     Attrib V24    0.5856196348601659
#>     Attrib V25    -0.10798725507614274
#>     Attrib V26    -0.3761001008389511
#>     Attrib V27    -0.12751010700925303
#>     Attrib V28    0.15279827982551447
#>     Attrib V29    -0.23221256367197246
#>     Attrib V3    -0.027810347492212513
#>     Attrib V30    0.30965222268053305
#>     Attrib V31    -0.8272091238353282
#>     Attrib V32    -0.17375031401346708
#>     Attrib V33    0.6072019672066223
#>     Attrib V34    0.07636549392092104
#>     Attrib V35    -0.09720813876856466
#>     Attrib V36    -0.9842995652000751
#>     Attrib V37    -0.9030889943761723
#>     Attrib V38    0.5242251339604145
#>     Attrib V39    0.19839931208413192
#>     Attrib V4    0.6326597050427597
#>     Attrib V40    -0.13482651264535786
#>     Attrib V41    0.3417373120661632
#>     Attrib V42    0.2806672597655438
#>     Attrib V43    0.44095821609947583
#>     Attrib V44    0.2811757360587099
#>     Attrib V45    0.3241591753399788
#>     Attrib V46    0.033022343117788
#>     Attrib V47    -0.24231162493128078
#>     Attrib V48    0.6557945246068463
#>     Attrib V49    0.8370747422133719
#>     Attrib V5    0.03360032085284657
#>     Attrib V50    -1.2229510209910435
#>     Attrib V51    -0.010301307791744123
#>     Attrib V52    0.10088282617103313
#>     Attrib V53    0.35737169567447763
#>     Attrib V54    0.663105847444253
#>     Attrib V55    -0.6777482121537001
#>     Attrib V56    0.14714292412183405
#>     Attrib V57    0.1382697720496643
#>     Attrib V58    -0.19155966064230678
#>     Attrib V59    0.5396977241703784
#>     Attrib V6    0.06008916091112045
#>     Attrib V60    -0.12026029858220183
#>     Attrib V7    0.2749104572068976
#>     Attrib V8    -0.09251765660187537
#>     Attrib V9    0.833280113179883
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.11630421629992632
#>     Attrib V1    0.04410004443070124
#>     Attrib V10    -0.055933967959031154
#>     Attrib V11    -0.0064684330436458395
#>     Attrib V12    0.028478369616470232
#>     Attrib V13    -0.13389437101004928
#>     Attrib V14    -0.21078303645607613
#>     Attrib V15    -0.048190749523439665
#>     Attrib V16    0.07215180015078149
#>     Attrib V17    0.04033903402743509
#>     Attrib V18    0.16159870112353392
#>     Attrib V19    0.01833947334279121
#>     Attrib V2    0.008878259877620833
#>     Attrib V20    0.2713582039032149
#>     Attrib V21    0.2673715571246688
#>     Attrib V22    0.018514715594530735
#>     Attrib V23    0.008819847930459694
#>     Attrib V24    0.13823659182388942
#>     Attrib V25    -0.20158552972186503
#>     Attrib V26    -0.41727642796587316
#>     Attrib V27    -0.2849924414341564
#>     Attrib V28    -0.1167071720827005
#>     Attrib V29    -0.2773621680040558
#>     Attrib V3    0.07205496578938408
#>     Attrib V30    0.07122747092712911
#>     Attrib V31    -0.5152691637093421
#>     Attrib V32    -0.15665819751755986
#>     Attrib V33    0.3501499831379223
#>     Attrib V34    0.1103137012996499
#>     Attrib V35    0.026320342542332835
#>     Attrib V36    -0.3874765930961279
#>     Attrib V37    -0.445348788443273
#>     Attrib V38    0.26050457111709324
#>     Attrib V39    0.08264871824944486
#>     Attrib V4    0.4190422880934569
#>     Attrib V40    -0.08433389821616788
#>     Attrib V41    0.048671772442374625
#>     Attrib V42    -4.388609786449318E-4
#>     Attrib V43    0.09649697745614418
#>     Attrib V44    0.0854917833827619
#>     Attrib V45    0.1300636598825647
#>     Attrib V46    -0.0031009328455818296
#>     Attrib V47    -0.21817874559600312
#>     Attrib V48    0.1708416809109554
#>     Attrib V49    0.23711774498865482
#>     Attrib V5    0.022589680890192636
#>     Attrib V50    -0.5743717264947898
#>     Attrib V51    -0.113624207885508
#>     Attrib V52    -0.0406875987869835
#>     Attrib V53    0.37614391493754407
#>     Attrib V54    0.43124124994021185
#>     Attrib V55    -0.1749378294678701
#>     Attrib V56    0.10949763812359864
#>     Attrib V57    0.32828165674442406
#>     Attrib V58    0.0966393150789139
#>     Attrib V59    0.5329361883260212
#>     Attrib V6    -0.015689310347893243
#>     Attrib V60    0.20881891477218978
#>     Attrib V7    0.22247487748535633
#>     Attrib V8    -0.05610890094274538
#>     Attrib V9    0.24970457539993637
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.2802640928404007
#>     Attrib V1    -0.2735749341220655
#>     Attrib V10    1.5644593780671086
#>     Attrib V11    1.1914227066957488
#>     Attrib V12    1.0521321841527607
#>     Attrib V13    0.19421152896717792
#>     Attrib V14    -0.754167206906444
#>     Attrib V15    -0.7630789624996259
#>     Attrib V16    -0.27296703591356175
#>     Attrib V17    -0.5837826038898033
#>     Attrib V18    0.2715728686275541
#>     Attrib V19    -0.21489183720871355
#>     Attrib V2    -0.16539131986699124
#>     Attrib V20    0.10096140087303158
#>     Attrib V21    0.48496589494593106
#>     Attrib V22    0.3431277066279893
#>     Attrib V23    0.36162071063608053
#>     Attrib V24    0.27833662099417456
#>     Attrib V25    -0.007016873417163743
#>     Attrib V26    0.5868709689512844
#>     Attrib V27    0.966590503810661
#>     Attrib V28    0.955275330009784
#>     Attrib V29    -0.03699181158536451
#>     Attrib V3    -0.5365075900317839
#>     Attrib V30    0.5035192193259245
#>     Attrib V31    -0.19588987992380144
#>     Attrib V32    0.38310447428986455
#>     Attrib V33    0.4182195533939881
#>     Attrib V34    -0.10986578617475257
#>     Attrib V35    -0.38004637799296276
#>     Attrib V36    -1.0134634024791462
#>     Attrib V37    -0.9566462849848365
#>     Attrib V38    0.3647114115005675
#>     Attrib V39    0.25895925943022363
#>     Attrib V4    0.5882145870788179
#>     Attrib V40    -0.24883762424548328
#>     Attrib V41    0.23063740002645292
#>     Attrib V42    0.044999873055632106
#>     Attrib V43    0.5477269935435266
#>     Attrib V44    0.37268995627722074
#>     Attrib V45    0.29798351385784316
#>     Attrib V46    0.15516829920676561
#>     Attrib V47    0.22335535979559562
#>     Attrib V48    1.2351308307076503
#>     Attrib V49    1.4110216006671432
#>     Attrib V5    0.05259900814466462
#>     Attrib V50    -0.7678079401969893
#>     Attrib V51    0.6940496372745908
#>     Attrib V52    0.7236788351498803
#>     Attrib V53    -0.11502152890209671
#>     Attrib V54    -0.06462305618301616
#>     Attrib V55    -0.7171329258665418
#>     Attrib V56    -0.5384816621077864
#>     Attrib V57    -0.2844746929566525
#>     Attrib V58    -0.2899180947883092
#>     Attrib V59    -0.4093718133713998
#>     Attrib V6    -0.028617798735568478
#>     Attrib V60    -0.634436339518523
#>     Attrib V7    0.25328758722175154
#>     Attrib V8    0.4240110044320083
#>     Attrib V9    1.4926390795625888
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.4463564571362626
#>     Attrib V1    0.29166991609303383
#>     Attrib V10    -1.3386783962234972
#>     Attrib V11    -1.0840887523019445
#>     Attrib V12    -0.8842538747019532
#>     Attrib V13    -0.011032456382692383
#>     Attrib V14    0.6751702453137409
#>     Attrib V15    0.525507937457543
#>     Attrib V16    0.14365312096995858
#>     Attrib V17    0.5832193844556988
#>     Attrib V18    -0.10415957362074812
#>     Attrib V19    0.2846538557176916
#>     Attrib V2    0.21303357057085803
#>     Attrib V20    -0.02032654866748053
#>     Attrib V21    -0.3656463254207337
#>     Attrib V22    -0.28807904733505457
#>     Attrib V23    -0.1525896378099018
#>     Attrib V24    -0.15113615783237763
#>     Attrib V25    0.09943329778862157
#>     Attrib V26    -0.48990667594902404
#>     Attrib V27    -0.8544590247900873
#>     Attrib V28    -0.900242706306136
#>     Attrib V29    -0.0029178582413694524
#>     Attrib V3    0.5955298746526713
#>     Attrib V30    -0.3816112433770747
#>     Attrib V31    0.23711601333241183
#>     Attrib V32    -0.4267898563043311
#>     Attrib V33    -0.41191743973421824
#>     Attrib V34    0.04123444984365507
#>     Attrib V35    0.2954985925468835
#>     Attrib V36    0.8819557908247848
#>     Attrib V37    0.9109113304014756
#>     Attrib V38    -0.2333723610558058
#>     Attrib V39    -0.14532418569393662
#>     Attrib V4    -0.5050469162713014
#>     Attrib V40    0.2753640863105925
#>     Attrib V41    -0.15628829092380966
#>     Attrib V42    0.012882322273711062
#>     Attrib V43    -0.3232657224353393
#>     Attrib V44    -0.23680063243499666
#>     Attrib V45    -0.2349246442133322
#>     Attrib V46    -0.163220891992592
#>     Attrib V47    -0.22179145428431477
#>     Attrib V48    -1.1791459822722028
#>     Attrib V49    -1.328271710669221
#>     Attrib V5    0.03463254116336986
#>     Attrib V50    0.6535478896806698
#>     Attrib V51    -0.6034737219798688
#>     Attrib V52    -0.5371625302512674
#>     Attrib V53    0.22022818144836032
#>     Attrib V54    -0.05332583473542235
#>     Attrib V55    0.5341377391924328
#>     Attrib V56    0.5537985589711434
#>     Attrib V57    0.09101484020380592
#>     Attrib V58    0.10208777521168341
#>     Attrib V59    0.2511608953607426
#>     Attrib V6    0.14874921691844595
#>     Attrib V60    0.43464423334570307
#>     Attrib V7    -0.259026830988749
#>     Attrib V8    -0.4996577137522841
#>     Attrib V9    -1.3648270058070746
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.08186025551323277
#>     Attrib V1    0.05103550626035381
#>     Attrib V10    -0.13963798970365443
#>     Attrib V11    -0.06410732294009733
#>     Attrib V12    0.02710076991363079
#>     Attrib V13    -0.2824563226468917
#>     Attrib V14    -0.2522498030887031
#>     Attrib V15    -0.06875290640974227
#>     Attrib V16    0.020140088937315746
#>     Attrib V17    0.09398556616518508
#>     Attrib V18    0.2312350153625615
#>     Attrib V19    -0.027041686514559207
#>     Attrib V2    -0.03596794262828284
#>     Attrib V20    0.4150502981517763
#>     Attrib V21    0.3308231204559803
#>     Attrib V22    0.05600192988932871
#>     Attrib V23    0.04801416628447677
#>     Attrib V24    0.14313311552591793
#>     Attrib V25    -0.2430385579462633
#>     Attrib V26    -0.665307248822309
#>     Attrib V27    -0.46715632428368997
#>     Attrib V28    -0.25009752424206905
#>     Attrib V29    -0.46815020354536985
#>     Attrib V3    0.08426920034666743
#>     Attrib V30    0.053073463166398265
#>     Attrib V31    -0.7368133455981857
#>     Attrib V32    -0.29827598571959635
#>     Attrib V33    0.40135037141451596
#>     Attrib V34    0.21615308471867087
#>     Attrib V35    0.12180278588376561
#>     Attrib V36    -0.5026963532003663
#>     Attrib V37    -0.578615205198925
#>     Attrib V38    0.2998025077354029
#>     Attrib V39    0.08277649178442054
#>     Attrib V4    0.4353717861379774
#>     Attrib V40    -0.10780454956664506
#>     Attrib V41    0.024044879777239965
#>     Attrib V42    0.10261604230003823
#>     Attrib V43    0.14302464281969915
#>     Attrib V44    0.09431659151681208
#>     Attrib V45    0.20369953844708086
#>     Attrib V46    -0.032400886692476434
#>     Attrib V47    -0.25768894012839644
#>     Attrib V48    0.18298461316694076
#>     Attrib V49    0.2461342326230205
#>     Attrib V5    0.037012427497812965
#>     Attrib V50    -0.644948931310856
#>     Attrib V51    -0.09177815440959873
#>     Attrib V52    -0.08847912222231369
#>     Attrib V53    0.43128990410700996
#>     Attrib V54    0.6569133375243278
#>     Attrib V55    -0.1837468900872345
#>     Attrib V56    0.23762110661220207
#>     Attrib V57    0.3695393918409018
#>     Attrib V58    0.17854988376903194
#>     Attrib V59    0.609422584223136
#>     Attrib V6    -0.004729593694917666
#>     Attrib V60    0.22510276166064921
#>     Attrib V7    0.23925643644942962
#>     Attrib V8    -0.017680068982654312
#>     Attrib V9    0.3041839910802491
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.23177775878328374
#>     Attrib V1    0.11747769999319481
#>     Attrib V10    -0.3010345931340486
#>     Attrib V11    -0.07253699846500875
#>     Attrib V12    -0.09921107203443774
#>     Attrib V13    -0.3908069863801679
#>     Attrib V14    -0.28536177124631146
#>     Attrib V15    -0.03332143826852502
#>     Attrib V16    0.06246574153854627
#>     Attrib V17    0.06381097335758541
#>     Attrib V18    0.2483858609672959
#>     Attrib V19    -0.03495474516377618
#>     Attrib V2    0.04817518244843492
#>     Attrib V20    0.5228340180758317
#>     Attrib V21    0.5268252143191107
#>     Attrib V22    0.21442286769550503
#>     Attrib V23    0.10974061067293965
#>     Attrib V24    0.13410370457166296
#>     Attrib V25    -0.5112902732975209
#>     Attrib V26    -1.0258761616377274
#>     Attrib V27    -0.674686722215684
#>     Attrib V28    -0.4002197616250615
#>     Attrib V29    -0.5645246014558959
#>     Attrib V3    0.19772274773378548
#>     Attrib V30    0.05399187306014034
#>     Attrib V31    -1.134622122528168
#>     Attrib V32    -0.5414703871229803
#>     Attrib V33    0.5485418624574776
#>     Attrib V34    0.23985300831674777
#>     Attrib V35    0.10405814357163293
#>     Attrib V36    -0.783433077149169
#>     Attrib V37    -0.8432706816958397
#>     Attrib V38    0.33178394245981085
#>     Attrib V39    0.08323216340513495
#>     Attrib V4    0.6690092729164449
#>     Attrib V40    -0.10850081606211961
#>     Attrib V41    0.11048902014087039
#>     Attrib V42    0.18739931371573756
#>     Attrib V43    0.25827396876333963
#>     Attrib V44    0.005338110824191132
#>     Attrib V45    0.2068004790886198
#>     Attrib V46    0.04315307792088946
#>     Attrib V47    -0.38404455237101004
#>     Attrib V48    0.2385686318449161
#>     Attrib V49    0.34856170163972416
#>     Attrib V5    -0.016940783521516862
#>     Attrib V50    -0.9463787882184931
#>     Attrib V51    -0.27708328131811366
#>     Attrib V52    -0.12082534238984743
#>     Attrib V53    0.6907288448686077
#>     Attrib V54    1.0114165961612223
#>     Attrib V55    -0.31023452777103944
#>     Attrib V56    0.36233108138599673
#>     Attrib V57    0.5574129806285067
#>     Attrib V58    0.2811840386559711
#>     Attrib V59    0.9833776831036953
#>     Attrib V6    -0.08847034583009349
#>     Attrib V60    0.33078537866831736
#>     Attrib V7    0.4250227878922351
#>     Attrib V8    -0.0621661789119419
#>     Attrib V9    0.35691527625203384
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.006169998973366028
#>     Attrib V1    0.08918789421748977
#>     Attrib V10    -0.19271872195234488
#>     Attrib V11    -0.09887986444625463
#>     Attrib V12    -0.008871481795527495
#>     Attrib V13    -0.1337373114668736
#>     Attrib V14    -0.1657142994890566
#>     Attrib V15    -0.05441075140253887
#>     Attrib V16    -0.02080973098764161
#>     Attrib V17    0.08787789583262574
#>     Attrib V18    0.23836722320038428
#>     Attrib V19    -6.517926429385984E-4
#>     Attrib V2    0.0025805948894691766
#>     Attrib V20    0.3911371771559498
#>     Attrib V21    0.359996981408783
#>     Attrib V22    0.1032668838127784
#>     Attrib V23    0.14089394985477616
#>     Attrib V24    0.19925615606190847
#>     Attrib V25    -0.16951650829588777
#>     Attrib V26    -0.5892643716245517
#>     Attrib V27    -0.38849094441792403
#>     Attrib V28    -0.28043594197447463
#>     Attrib V29    -0.3807180985566467
#>     Attrib V3    0.2019214107035171
#>     Attrib V30    0.0252152462604486
#>     Attrib V31    -0.7043366618624284
#>     Attrib V32    -0.2862982353023816
#>     Attrib V33    0.31091106912826355
#>     Attrib V34    0.14807671486187074
#>     Attrib V35    0.03895741774562099
#>     Attrib V36    -0.48998489602475376
#>     Attrib V37    -0.5008526887131506
#>     Attrib V38    0.2274508368224881
#>     Attrib V39    0.14194695961638493
#>     Attrib V4    0.4616464278963279
#>     Attrib V40    -0.04289428792279257
#>     Attrib V41    0.11861786462946589
#>     Attrib V42    0.14380584085751155
#>     Attrib V43    0.12580880758484117
#>     Attrib V44    0.04999658574511329
#>     Attrib V45    0.09421764160249595
#>     Attrib V46    6.812996463015182E-4
#>     Attrib V47    -0.2238622501954832
#>     Attrib V48    0.11778548176622661
#>     Attrib V49    0.27425430826556413
#>     Attrib V5    0.06869966138531487
#>     Attrib V50    -0.6095176973796719
#>     Attrib V51    -0.12791254094657253
#>     Attrib V52    -0.09135356901555709
#>     Attrib V53    0.46227381788585786
#>     Attrib V54    0.564074469925065
#>     Attrib V55    -0.2091544251336679
#>     Attrib V56    0.23625230805162598
#>     Attrib V57    0.3405444039349379
#>     Attrib V58    0.16479680748280123
#>     Attrib V59    0.6872203995605771
#>     Attrib V6    0.05154979561742231
#>     Attrib V60    0.3052465683845752
#>     Attrib V7    0.311020623490325
#>     Attrib V8    -0.08153935037063248
#>     Attrib V9    0.21647099547338508
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.1615869363626703
#>     Attrib V1    0.09608050411467382
#>     Attrib V10    -0.09859931456761008
#>     Attrib V11    0.027024231044141672
#>     Attrib V12    0.06499212063089652
#>     Attrib V13    -0.2999265255777224
#>     Attrib V14    -0.3585633686314275
#>     Attrib V15    -0.08286462716685945
#>     Attrib V16    -0.028549242679023142
#>     Attrib V17    0.030849104820819248
#>     Attrib V18    0.2234319347086845
#>     Attrib V19    -0.08418221001852763
#>     Attrib V2    -0.0261977324928375
#>     Attrib V20    0.37357878103143133
#>     Attrib V21    0.3626663799664404
#>     Attrib V22    0.10353313846842287
#>     Attrib V23    0.08747925170928389
#>     Attrib V24    0.14211810155108687
#>     Attrib V25    -0.29291368812062074
#>     Attrib V26    -0.6806397535880786
#>     Attrib V27    -0.5478724707919307
#>     Attrib V28    -0.39435055303715716
#>     Attrib V29    -0.6551384491198791
#>     Attrib V3    0.05076714483228916
#>     Attrib V30    0.025641596707756363
#>     Attrib V31    -0.8055993127905305
#>     Attrib V32    -0.31663230127398906
#>     Attrib V33    0.5166900809861021
#>     Attrib V34    0.22079859348454484
#>     Attrib V35    0.15022931961147726
#>     Attrib V36    -0.6296027188181964
#>     Attrib V37    -0.6773692206879611
#>     Attrib V38    0.21274294882206957
#>     Attrib V39    0.07318331741619571
#>     Attrib V4    0.4912936289493919
#>     Attrib V40    -0.13808959828130674
#>     Attrib V41    0.055377740393228125
#>     Attrib V42    0.07824883425154203
#>     Attrib V43    0.14589722630218105
#>     Attrib V44    0.10644187912821527
#>     Attrib V45    0.13741684905381193
#>     Attrib V46    0.010665304852101593
#>     Attrib V47    -0.30016536479817
#>     Attrib V48    0.2867647806968987
#>     Attrib V49    0.39113095168667705
#>     Attrib V5    -0.05438003966197742
#>     Attrib V50    -0.7832837053809443
#>     Attrib V51    -0.21732128650777122
#>     Attrib V52    -0.09229698859942854
#>     Attrib V53    0.4109365889103979
#>     Attrib V54    0.7655278036692734
#>     Attrib V55    -0.22381742655995457
#>     Attrib V56    0.2496615956786084
#>     Attrib V57    0.36606375856215484
#>     Attrib V58    0.18436112791023096
#>     Attrib V59    0.7108439924377014
#>     Attrib V6    -0.06425710104867918
#>     Attrib V60    0.28253847802192306
#>     Attrib V7    0.3110400643395114
#>     Attrib V8    -0.09044341185839692
#>     Attrib V9    0.36796205221054235
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.3641420389814458
#>     Attrib V1    0.2107953203860468
#>     Attrib V10    -1.3018163967081888
#>     Attrib V11    -0.9992505215283758
#>     Attrib V12    -0.7263016220259677
#>     Attrib V13    0.027143210386835776
#>     Attrib V14    0.6639996295047758
#>     Attrib V15    0.6508107026969285
#>     Attrib V16    0.2240468817766798
#>     Attrib V17    0.5725496644002347
#>     Attrib V18    -0.1941341697144346
#>     Attrib V19    0.26470616435182015
#>     Attrib V2    0.1586626350529264
#>     Attrib V20    -0.13540922353280527
#>     Attrib V21    -0.45017289548569245
#>     Attrib V22    -0.29609449144996935
#>     Attrib V23    -0.3082176538865905
#>     Attrib V24    -0.2118985855368301
#>     Attrib V25    0.15311449434798904
#>     Attrib V26    -0.27340374664048467
#>     Attrib V27    -0.7313841386651131
#>     Attrib V28    -0.7927367141010667
#>     Attrib V29    0.01731788852481931
#>     Attrib V3    0.5025745293006854
#>     Attrib V30    -0.5368852802503764
#>     Attrib V31    0.3721840482546987
#>     Attrib V32    -0.18311364981273184
#>     Attrib V33    -0.49602334428658074
#>     Attrib V34    0.060548162307755664
#>     Attrib V35    0.333900420593643
#>     Attrib V36    1.0009397395065802
#>     Attrib V37    0.9370302267980196
#>     Attrib V38    -0.3651820788432587
#>     Attrib V39    -0.14523231949391033
#>     Attrib V4    -0.5482400215017882
#>     Attrib V40    0.3016028747231723
#>     Attrib V41    -0.26851244043153843
#>     Attrib V42    -0.16867065223342792
#>     Attrib V43    -0.3889772208831028
#>     Attrib V44    -0.27639247908359493
#>     Attrib V45    -0.2535940717236731
#>     Attrib V46    -0.08766104979123188
#>     Attrib V47    -0.13869762322107038
#>     Attrib V48    -1.144666240535401
#>     Attrib V49    -1.2761266536203613
#>     Attrib V5    -0.001970890297194833
#>     Attrib V50    0.8426455880645565
#>     Attrib V51    -0.5665105796579198
#>     Attrib V52    -0.5558198059546778
#>     Attrib V53    0.1506339988967851
#>     Attrib V54    -0.18761562716118255
#>     Attrib V55    0.7337697109448884
#>     Attrib V56    0.6205566400048057
#>     Attrib V57    0.10590225973692229
#>     Attrib V58    0.27831267404392535
#>     Attrib V59    0.22277001557636347
#>     Attrib V6    -0.020311822648003568
#>     Attrib V60    0.4635041023885149
#>     Attrib V7    -0.3066182554044364
#>     Attrib V8    -0.4176000189562386
#>     Attrib V9    -1.3799163271793609
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.05686723439024072
#>     Attrib V1    0.08612946418919616
#>     Attrib V10    -0.05276601397937195
#>     Attrib V11    -0.03356285101962657
#>     Attrib V12    0.026164409327834648
#>     Attrib V13    -0.04442000073753076
#>     Attrib V14    -0.08067837742005653
#>     Attrib V15    -0.009796551533018383
#>     Attrib V16    0.055695240162962664
#>     Attrib V17    0.05169321573017335
#>     Attrib V18    0.14441263619247624
#>     Attrib V19    0.009701734988175751
#>     Attrib V2    0.0068010318841700895
#>     Attrib V20    0.13977880074396773
#>     Attrib V21    0.112422898875303
#>     Attrib V22    -0.05227877318822732
#>     Attrib V23    -0.0978707408097452
#>     Attrib V24    0.059953988166295026
#>     Attrib V25    -0.11411182978241957
#>     Attrib V26    -0.3154702068398025
#>     Attrib V27    -0.20147437756377684
#>     Attrib V28    -0.08114889194806152
#>     Attrib V29    -0.19682084341768244
#>     Attrib V3    0.12185562997143558
#>     Attrib V30    -0.032207817482335345
#>     Attrib V31    -0.35779918926584064
#>     Attrib V32    -0.10554545898328993
#>     Attrib V33    0.1646357153146859
#>     Attrib V34    0.08122279854205004
#>     Attrib V35    0.010545426561915533
#>     Attrib V36    -0.2757032263465663
#>     Attrib V37    -0.2561098774799606
#>     Attrib V38    0.1326379102921795
#>     Attrib V39    0.07540117958473444
#>     Attrib V4    0.2950635639703562
#>     Attrib V40    -0.06551667805933066
#>     Attrib V41    0.027454357620991573
#>     Attrib V42    0.05718308208038498
#>     Attrib V43    0.05213747968188964
#>     Attrib V44    -0.0012360031757415115
#>     Attrib V45    0.0891462506822673
#>     Attrib V46    0.008803813169396098
#>     Attrib V47    -0.14495580930680813
#>     Attrib V48    0.04224599303893063
#>     Attrib V49    0.07557335604849794
#>     Attrib V5    0.06814794868432586
#>     Attrib V50    -0.24942313152584442
#>     Attrib V51    0.0028963198161929566
#>     Attrib V52    0.017696789247617552
#>     Attrib V53    0.31786413707677214
#>     Attrib V54    0.28622425089434483
#>     Attrib V55    0.01957944700251347
#>     Attrib V56    0.15334470785931087
#>     Attrib V57    0.27493436831232376
#>     Attrib V58    0.19797353375571
#>     Attrib V59    0.3593663023247323
#>     Attrib V6    0.03240294031974352
#>     Attrib V60    0.21610980695925003
#>     Attrib V7    0.14604673250797173
#>     Attrib V8    -0.029458333879619186
#>     Attrib V9    0.17253067978551687
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.0022441269070497694
#>     Attrib V1    0.10295883496115081
#>     Attrib V10    0.01176139683090609
#>     Attrib V11    0.021856445323700305
#>     Attrib V12    0.010570575538441504
#>     Attrib V13    -0.10776232336742085
#>     Attrib V14    -0.08500875090121973
#>     Attrib V15    0.049624185562553574
#>     Attrib V16    0.009284897208778795
#>     Attrib V17    0.018636332207520298
#>     Attrib V18    0.09953819010137457
#>     Attrib V19    -0.0036437554085136806
#>     Attrib V2    0.1047910167673304
#>     Attrib V20    0.15416265695246192
#>     Attrib V21    0.1249492871454962
#>     Attrib V22    0.009945618233850094
#>     Attrib V23    -0.08136577326292722
#>     Attrib V24    0.03145442097466778
#>     Attrib V25    -0.1911207375772659
#>     Attrib V26    -0.32417742587127313
#>     Attrib V27    -0.17194177354402346
#>     Attrib V28    -0.0793574795077953
#>     Attrib V29    -0.21261770657274556
#>     Attrib V3    0.0830965650879562
#>     Attrib V30    0.04596248029401581
#>     Attrib V31    -0.28561011135485737
#>     Attrib V32    -0.13351816942601266
#>     Attrib V33    0.24003573069171671
#>     Attrib V34    0.032875256321321926
#>     Attrib V35    0.04879909843105871
#>     Attrib V36    -0.291104662811526
#>     Attrib V37    -0.292623712045003
#>     Attrib V38    0.19072594891391262
#>     Attrib V39    0.09081028639367948
#>     Attrib V4    0.29734452873229594
#>     Attrib V40    -0.09365229275393382
#>     Attrib V41    0.024952023456267503
#>     Attrib V42    -0.009751384970325183
#>     Attrib V43    0.09619993715821142
#>     Attrib V44    0.05900963435245924
#>     Attrib V45    0.10925418770872447
#>     Attrib V46    -0.05331685909262284
#>     Attrib V47    -0.21169728550237246
#>     Attrib V48    0.09168215090223299
#>     Attrib V49    0.07831846588953364
#>     Attrib V5    0.0666955737648781
#>     Attrib V50    -0.2994395919455218
#>     Attrib V51    -0.03081717479314728
#>     Attrib V52    -0.022898411960255202
#>     Attrib V53    0.22574288048269825
#>     Attrib V54    0.26042684069904926
#>     Attrib V55    0.02250193327054398
#>     Attrib V56    0.1257465691415231
#>     Attrib V57    0.2747086066308977
#>     Attrib V58    0.10055154506527327
#>     Attrib V59    0.3298644875090416
#>     Attrib V6    0.03427658517477937
#>     Attrib V60    0.1814934522914957
#>     Attrib V7    0.10637680925362397
#>     Attrib V8    0.04155102014392827
#>     Attrib V9    0.19110006572703134
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.20929816156643072
#>     Attrib V1    0.06301391425756864
#>     Attrib V10    0.023423202817753487
#>     Attrib V11    0.010830193132101956
#>     Attrib V12    0.013506840384628502
#>     Attrib V13    0.008680615047513973
#>     Attrib V14    0.03746388947066408
#>     Attrib V15    -0.006103008948343269
#>     Attrib V16    0.016816564538627274
#>     Attrib V17    0.0024681976404605827
#>     Attrib V18    0.09266879971883046
#>     Attrib V19    -0.05700961730970463
#>     Attrib V2    0.09672752680271507
#>     Attrib V20    0.052363417380140505
#>     Attrib V21    0.04316827668135134
#>     Attrib V22    -0.06606402300994214
#>     Attrib V23    -0.05801810592688184
#>     Attrib V24    -0.05466424573486572
#>     Attrib V25    -0.03529107657119912
#>     Attrib V26    -0.06167005635444078
#>     Attrib V27    -0.03911112281591607
#>     Attrib V28    -0.048703792605852544
#>     Attrib V29    -0.09461520066835355
#>     Attrib V3    0.16202479833151334
#>     Attrib V30    -0.06332906163543575
#>     Attrib V31    -0.11728390891277216
#>     Attrib V32    -0.019872955903375216
#>     Attrib V33    0.06082819894499889
#>     Attrib V34    0.051725296177332646
#>     Attrib V35    -0.0033906406602342153
#>     Attrib V36    -0.0037592209086098854
#>     Attrib V37    -0.06861834970747037
#>     Attrib V38    0.04352578868210093
#>     Attrib V39    0.07885674582681007
#>     Attrib V4    0.14912571112138417
#>     Attrib V40    -0.008745659270627941
#>     Attrib V41    -0.022572823620913385
#>     Attrib V42    0.005440274304021239
#>     Attrib V43    0.03675469845271712
#>     Attrib V44    0.07989825047802285
#>     Attrib V45    0.005788185926674688
#>     Attrib V46    0.011440271261201992
#>     Attrib V47    0.01946146304225442
#>     Attrib V48    0.03317278167504227
#>     Attrib V49    0.07607266734268589
#>     Attrib V5    0.11275008852737689
#>     Attrib V50    -0.07769081273909358
#>     Attrib V51    0.0857565556043463
#>     Attrib V52    -0.0069372927218542945
#>     Attrib V53    0.1099429538158753
#>     Attrib V54    0.05843798960703308
#>     Attrib V55    0.09232445285948129
#>     Attrib V56    0.11268655012552117
#>     Attrib V57    0.07482080832197273
#>     Attrib V58    0.10604115728136536
#>     Attrib V59    0.17520146414831198
#>     Attrib V6    0.017162024444535275
#>     Attrib V60    0.15834380998618544
#>     Attrib V7    0.09893627279902382
#>     Attrib V8    0.06204369765288933
#>     Attrib V9    0.1005303628877427
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.20902234907494216
#>     Attrib V1    0.011467228612020524
#>     Attrib V10    -0.13982618474271016
#>     Attrib V11    -0.01805895085582543
#>     Attrib V12    0.14619196398852086
#>     Attrib V13    -0.3176712860606336
#>     Attrib V14    -0.4098434849602416
#>     Attrib V15    -0.14835395036667892
#>     Attrib V16    -0.06376439010784729
#>     Attrib V17    0.01944179891686341
#>     Attrib V18    0.2745482215415841
#>     Attrib V19    -0.054278589721888995
#>     Attrib V2    -0.057039804788247175
#>     Attrib V20    0.43576332398309675
#>     Attrib V21    0.4420199816889755
#>     Attrib V22    0.24349479496599866
#>     Attrib V23    0.19654000909362732
#>     Attrib V24    0.336713149413154
#>     Attrib V25    -0.2508967994906792
#>     Attrib V26    -0.8264694801815828
#>     Attrib V27    -0.6385332051004218
#>     Attrib V28    -0.4453268429094575
#>     Attrib V29    -0.7706197175157181
#>     Attrib V3    0.11425649330876829
#>     Attrib V30    0.015276906727760447
#>     Attrib V31    -1.0322602770181706
#>     Attrib V32    -0.4603053730470288
#>     Attrib V33    0.599681090382847
#>     Attrib V34    0.25125201655253776
#>     Attrib V35    0.15034754764903083
#>     Attrib V36    -0.8157963240135533
#>     Attrib V37    -0.9842608670995916
#>     Attrib V38    0.2237460025748629
#>     Attrib V39    0.04600804545046983
#>     Attrib V4    0.6571326695854529
#>     Attrib V40    -0.12689930347913672
#>     Attrib V41    0.160623265783579
#>     Attrib V42    0.24370789000060497
#>     Attrib V43    0.24931988229481364
#>     Attrib V44    0.055816532633486605
#>     Attrib V45    0.27133541025900304
#>     Attrib V46    0.018746566524240095
#>     Attrib V47    -0.3625213014084603
#>     Attrib V48    0.37411847365565165
#>     Attrib V49    0.5562337788941957
#>     Attrib V5    -0.020254061323461553
#>     Attrib V50    -1.0296144324259267
#>     Attrib V51    -0.23341226684791927
#>     Attrib V52    -0.07143373980525305
#>     Attrib V53    0.5927003399358745
#>     Attrib V54    0.9998649794377394
#>     Attrib V55    -0.34314859458910485
#>     Attrib V56    0.2676672391932757
#>     Attrib V57    0.3892258567382826
#>     Attrib V58    0.22336195910408807
#>     Attrib V59    0.8308423865841413
#>     Attrib V6    -0.0364459392205746
#>     Attrib V60    0.2765771535636691
#>     Attrib V7    0.44132720203297326
#>     Attrib V8    -0.07824210481783653
#>     Attrib V9    0.4547950910029913
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.17761349532516366
#>     Attrib V1    0.09170683579254764
#>     Attrib V10    -0.024178676282513974
#>     Attrib V11    0.03357998959498503
#>     Attrib V12    0.15619715418083288
#>     Attrib V13    -0.2992777400525389
#>     Attrib V14    -0.4001791632106218
#>     Attrib V15    -0.22352537611728057
#>     Attrib V16    -0.1046590935267194
#>     Attrib V17    0.029994678308609125
#>     Attrib V18    0.34006634738694475
#>     Attrib V19    0.0029489979457143155
#>     Attrib V2    -0.06910016216970924
#>     Attrib V20    0.5493975492130715
#>     Attrib V21    0.5738575186442867
#>     Attrib V22    0.33694048135273386
#>     Attrib V23    0.3860070583318258
#>     Attrib V24    0.4006823518348907
#>     Attrib V25    -0.2972917670567408
#>     Attrib V26    -0.7637015474918236
#>     Attrib V27    -0.492290984589099
#>     Attrib V28    -0.3201235707250355
#>     Attrib V29    -0.5487217938104765
#>     Attrib V3    0.12133269819380463
#>     Attrib V30    0.15270276462291596
#>     Attrib V31    -1.034307232852194
#>     Attrib V32    -0.47142994509966035
#>     Attrib V33    0.5198988909776355
#>     Attrib V34    0.1342355027352024
#>     Attrib V35    0.037442172603363216
#>     Attrib V36    -0.8067315797915328
#>     Attrib V37    -0.8757611539397621
#>     Attrib V38    0.3758687689761833
#>     Attrib V39    0.12370251200071948
#>     Attrib V4    0.6456294934106868
#>     Attrib V40    -0.13024722792774832
#>     Attrib V41    0.21628757951461539
#>     Attrib V42    0.21299838678123562
#>     Attrib V43    0.3762233515450887
#>     Attrib V44    0.1919530543187022
#>     Attrib V45    0.2242174302327843
#>     Attrib V46    -0.05257046942527274
#>     Attrib V47    -0.3747191179196327
#>     Attrib V48    0.41906235803791575
#>     Attrib V49    0.5542097537899556
#>     Attrib V5    0.05344586085694403
#>     Attrib V50    -1.055912742972041
#>     Attrib V51    -0.08237287057026954
#>     Attrib V52    -0.04960396623264449
#>     Attrib V53    0.54967417649578
#>     Attrib V54    0.929006516972491
#>     Attrib V55    -0.4701875247946144
#>     Attrib V56    0.33126216084186955
#>     Attrib V57    0.3223393883699822
#>     Attrib V58    0.11302094428943718
#>     Attrib V59    0.8511633506595384
#>     Attrib V6    0.005535503474932878
#>     Attrib V60    0.23909046402407486
#>     Attrib V7    0.4212526726506994
#>     Attrib V8    -0.16000742029253115
#>     Attrib V9    0.5222823680725381
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.30145643199385175
#>     Attrib V1    0.230098841833588
#>     Attrib V10    -0.8144448859786166
#>     Attrib V11    -0.66496255220145
#>     Attrib V12    -0.5864726951861814
#>     Attrib V13    0.08266030640567454
#>     Attrib V14    0.5536730407994166
#>     Attrib V15    0.49506081908992944
#>     Attrib V16    0.16920174575291613
#>     Attrib V17    0.3927483270207659
#>     Attrib V18    -0.17965177875287325
#>     Attrib V19    0.23528068711616798
#>     Attrib V2    0.18891187624106787
#>     Attrib V20    -0.03141692030253872
#>     Attrib V21    -0.15664615967451928
#>     Attrib V22    -0.16062269833329684
#>     Attrib V23    -0.20431312064404367
#>     Attrib V24    -0.23303163820229716
#>     Attrib V25    0.1401053919322485
#>     Attrib V26    -0.04583039753443556
#>     Attrib V27    -0.47362401339135934
#>     Attrib V28    -0.6351793880450677
#>     Attrib V29    0.013143405584419296
#>     Attrib V3    0.31452225059887207
#>     Attrib V30    -0.4280896645745
#>     Attrib V31    0.44384880929375725
#>     Attrib V32    -0.11812624658936863
#>     Attrib V33    -0.4935575049506399
#>     Attrib V34    0.01962387825582365
#>     Attrib V35    0.2993829211696664
#>     Attrib V36    0.9108821224168294
#>     Attrib V37    0.8774588426178682
#>     Attrib V38    -0.2983540904165139
#>     Attrib V39    -0.07550092747347797
#>     Attrib V4    -0.45864825422342537
#>     Attrib V40    0.30591567632926925
#>     Attrib V41    -0.20039660111306712
#>     Attrib V42    -0.20476417359361312
#>     Attrib V43    -0.27973907705438156
#>     Attrib V44    -0.1359139872190998
#>     Attrib V45    -0.21019535883171564
#>     Attrib V46    -0.06011248636278508
#>     Attrib V47    -0.031583791770920196
#>     Attrib V48    -0.9036795074069363
#>     Attrib V49    -1.019214825514575
#>     Attrib V5    0.013893721479001461
#>     Attrib V50    0.8555990481540545
#>     Attrib V51    -0.3371712849812171
#>     Attrib V52    -0.3380474425480976
#>     Attrib V53    -0.07124319638338635
#>     Attrib V54    -0.3226978408142462
#>     Attrib V55    0.6047937019665417
#>     Attrib V56    0.38982219681237096
#>     Attrib V57    0.028443591016829008
#>     Attrib V58    0.17092287957274574
#>     Attrib V59    -0.02074152194465109
#>     Attrib V6    -0.055266196867028085
#>     Attrib V60    0.3316002578564408
#>     Attrib V7    -0.16667602338687273
#>     Attrib V8    -0.2939995100179975
#>     Attrib V9    -0.9820844162267294
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.1279494428853729
#>     Attrib V1    0.1712369336231492
#>     Attrib V10    -0.1803869255827682
#>     Attrib V11    -0.08776139713368157
#>     Attrib V12    -0.028660106673361847
#>     Attrib V13    -0.2886316737624227
#>     Attrib V14    -0.21143092637253064
#>     Attrib V15    -0.05134458135748807
#>     Attrib V16    0.08091774040917457
#>     Attrib V17    0.06781589465683611
#>     Attrib V18    0.21256216093788471
#>     Attrib V19    -0.05275818942484862
#>     Attrib V2    0.03741647615145921
#>     Attrib V20    0.4223582925197537
#>     Attrib V21    0.37976895856612114
#>     Attrib V22    0.06664425386473324
#>     Attrib V23    -0.024113894872055622
#>     Attrib V24    0.14248850861919046
#>     Attrib V25    -0.3576698192040171
#>     Attrib V26    -0.7517354705086308
#>     Attrib V27    -0.5415102430687146
#>     Attrib V28    -0.36206247992452395
#>     Attrib V29    -0.4579902284847279
#>     Attrib V3    0.12898181275454007
#>     Attrib V30    0.010661568171005241
#>     Attrib V31    -0.74886120862094
#>     Attrib V32    -0.34049602705090626
#>     Attrib V33    0.3822866649714134
#>     Attrib V34    0.16088047685759438
#>     Attrib V35    0.09285083066546629
#>     Attrib V36    -0.5524624698317802
#>     Attrib V37    -0.5843465490399208
#>     Attrib V38    0.23635253107478107
#>     Attrib V39    0.07098844519421793
#>     Attrib V4    0.4964927216426844
#>     Attrib V40    -0.08834735413796953
#>     Attrib V41    0.028447679127172765
#>     Attrib V42    0.10811181464123608
#>     Attrib V43    0.20443459222113539
#>     Attrib V44    0.04191899495629277
#>     Attrib V45    0.1040987951379644
#>     Attrib V46    0.004817619993913705
#>     Attrib V47    -0.3430559156260248
#>     Attrib V48    0.18255943277915287
#>     Attrib V49    0.27702776930456174
#>     Attrib V5    0.016439224486408967
#>     Attrib V50    -0.695007185045961
#>     Attrib V51    -0.2078172974948287
#>     Attrib V52    -0.07231873272303392
#>     Attrib V53    0.4775569647695165
#>     Attrib V54    0.7187995673594522
#>     Attrib V55    -0.17461772477906057
#>     Attrib V56    0.28752310150738913
#>     Attrib V57    0.4108751399187917
#>     Attrib V58    0.24427593168834796
#>     Attrib V59    0.7355131537178088
#>     Attrib V6    -0.01289611067455149
#>     Attrib V60    0.3129937395026107
#>     Attrib V7    0.2979755862671597
#>     Attrib V8    -0.13396027559777857
#>     Attrib V9    0.26581533654873457
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.10849899504910047
#>     Attrib V1    0.1301875218458559
#>     Attrib V10    -0.26650476996990047
#>     Attrib V11    -0.08421766375630207
#>     Attrib V12    0.027388956017257212
#>     Attrib V13    -0.25086156085683337
#>     Attrib V14    -0.23780610971339006
#>     Attrib V15    -0.06528147898280662
#>     Attrib V16    -0.045448167645423
#>     Attrib V17    0.10937283459218868
#>     Attrib V18    0.2562589824665624
#>     Attrib V19    -0.02112524184463613
#>     Attrib V2    -0.030568399511133198
#>     Attrib V20    0.41230526097471076
#>     Attrib V21    0.3891520738430719
#>     Attrib V22    0.1635300142182557
#>     Attrib V23    0.14084974396878422
#>     Attrib V24    0.18850292698511295
#>     Attrib V25    -0.271666689834895
#>     Attrib V26    -0.7138163681128109
#>     Attrib V27    -0.6284585788005974
#>     Attrib V28    -0.4588606028455022
#>     Attrib V29    -0.6266641037902787
#>     Attrib V3    0.22931452049249498
#>     Attrib V30    -0.018852316579243564
#>     Attrib V31    -0.8844011524305173
#>     Attrib V32    -0.440814130544041
#>     Attrib V33    0.4051632556790239
#>     Attrib V34    0.1636447479253352
#>     Attrib V35    0.14254130370017926
#>     Attrib V36    -0.6225667859465838
#>     Attrib V37    -0.6654993768637874
#>     Attrib V38    0.20299787035862146
#>     Attrib V39    0.06517096075270955
#>     Attrib V4    0.587755063286682
#>     Attrib V40    -0.13324959981146725
#>     Attrib V41    0.11246302661856918
#>     Attrib V42    0.15543364556110204
#>     Attrib V43    0.22111464298991473
#>     Attrib V44    0.03256782223702896
#>     Attrib V45    0.1919336648271905
#>     Attrib V46    -0.007404596215809653
#>     Attrib V47    -0.26706191288377734
#>     Attrib V48    0.14767731421846894
#>     Attrib V49    0.2969224006248831
#>     Attrib V5    0.014190018656112694
#>     Attrib V50    -0.7570081146474027
#>     Attrib V51    -0.19885788577470723
#>     Attrib V52    -0.09131889925267941
#>     Attrib V53    0.5828446810727821
#>     Attrib V54    0.8139795919228547
#>     Attrib V55    -0.22614616496116355
#>     Attrib V56    0.34933424154514864
#>     Attrib V57    0.38368552188798477
#>     Attrib V58    0.22750603413006143
#>     Attrib V59    0.85800206183324
#>     Attrib V6    -0.0038346114823641746
#>     Attrib V60    0.32206439552207067
#>     Attrib V7    0.35536790480281316
#>     Attrib V8    -0.09561570800103912
#>     Attrib V9    0.26972178112038175
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.15844870265824082
#>     Attrib V1    0.00928490868515019
#>     Attrib V10    -0.0594770981609073
#>     Attrib V11    -0.055892843401078744
#>     Attrib V12    -0.04371508010654749
#>     Attrib V13    0.045052282580563645
#>     Attrib V14    0.13931889916113935
#>     Attrib V15    0.14162598989497474
#>     Attrib V16    0.07544248355582653
#>     Attrib V17    0.173992898283151
#>     Attrib V18    0.04697810133358273
#>     Attrib V19    0.09722011288794456
#>     Attrib V2    0.06623031296160987
#>     Attrib V20    0.010219962913531118
#>     Attrib V21    -0.00952949567852252
#>     Attrib V22    -0.037586662973468986
#>     Attrib V23    -0.04538321108778313
#>     Attrib V24    -0.17465593511594946
#>     Attrib V25    -0.027384475974308937
#>     Attrib V26    0.03429651575443563
#>     Attrib V27    -0.12931188369602806
#>     Attrib V28    -0.15079358784707805
#>     Attrib V29    -0.07006945161646273
#>     Attrib V3    0.0517311896484802
#>     Attrib V30    -0.15205602899550102
#>     Attrib V31    0.06127860435702697
#>     Attrib V32    0.07776363263173622
#>     Attrib V33    -0.11333571971100742
#>     Attrib V34    0.01615730240236106
#>     Attrib V35    0.053356072883491555
#>     Attrib V36    0.22916512212494775
#>     Attrib V37    0.16087416950033182
#>     Attrib V38    -0.05643134857456163
#>     Attrib V39    -0.0025465232991674865
#>     Attrib V4    0.010519572397962086
#>     Attrib V40    0.12337314917899171
#>     Attrib V41    0.03621296445585528
#>     Attrib V42    -0.0339585495320155
#>     Attrib V43    0.023376956678505593
#>     Attrib V44    -0.014315515418483646
#>     Attrib V45    -0.06923346495948948
#>     Attrib V46    0.028027173438015217
#>     Attrib V47    0.09703172472185116
#>     Attrib V48    -0.10086640813149877
#>     Attrib V49    -0.1390906134889228
#>     Attrib V5    0.05624899594855231
#>     Attrib V50    0.2515147784822377
#>     Attrib V51    0.045035348933189924
#>     Attrib V52    0.019377217686375438
#>     Attrib V53    -0.11850639745567769
#>     Attrib V54    -0.12143095081815124
#>     Attrib V55    0.17167777525709935
#>     Attrib V56    0.08025249642298159
#>     Attrib V57    0.020998463599939822
#>     Attrib V58    0.06737171580601813
#>     Attrib V59    -0.07478409601379356
#>     Attrib V6    0.0680977660845699
#>     Attrib V60    0.002006579700016944
#>     Attrib V7    -0.07607196837364281
#>     Attrib V8    0.018083882501890632
#>     Attrib V9    -0.04519085674794586
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.46716434525159123
#>     Attrib V1    -0.1406396073615394
#>     Attrib V10    1.3946362639640086
#>     Attrib V11    1.2698082047032226
#>     Attrib V12    1.3035106391763567
#>     Attrib V13    0.379819982605386
#>     Attrib V14    -0.21902628197063964
#>     Attrib V15    -0.442548830877816
#>     Attrib V16    -0.09448540110653025
#>     Attrib V17    -0.5341538884553242
#>     Attrib V18    0.40589839335123584
#>     Attrib V19    -0.05049236804351903
#>     Attrib V2    -0.033119084132894806
#>     Attrib V20    0.0622633510822929
#>     Attrib V21    0.32554859052049706
#>     Attrib V22    0.07382521377494557
#>     Attrib V23    0.07338014911529264
#>     Attrib V24    -0.08527752162470861
#>     Attrib V25    -0.42303046939163086
#>     Attrib V26    0.6665501432366377
#>     Attrib V27    1.6274622625805775
#>     Attrib V28    1.787046370168738
#>     Attrib V29    0.8362118473347198
#>     Attrib V3    -0.42634951057248555
#>     Attrib V30    0.6025888059440159
#>     Attrib V31    0.05088017376625995
#>     Attrib V32    0.5884159770783084
#>     Attrib V33    -0.01896851235324428
#>     Attrib V34    -0.7074873075415086
#>     Attrib V35    -0.8009480084149542
#>     Attrib V36    -1.2263379569895547
#>     Attrib V37    -1.0915231990205752
#>     Attrib V38    0.32013983080879627
#>     Attrib V39    0.49943844754131317
#>     Attrib V4    0.6897798152972592
#>     Attrib V40    -0.0866245250327701
#>     Attrib V41    0.3117678058026143
#>     Attrib V42    0.16526895398225247
#>     Attrib V43    0.7415534836498267
#>     Attrib V44    0.6283027097312373
#>     Attrib V45    0.17567273002310255
#>     Attrib V46    -0.048256705115093106
#>     Attrib V47    0.07220082875794823
#>     Attrib V48    1.1949418011980277
#>     Attrib V49    1.693369592729305
#>     Attrib V5    0.16933418277663187
#>     Attrib V50    -0.5334874240446039
#>     Attrib V51    0.6796210024878883
#>     Attrib V52    1.1159272034454504
#>     Attrib V53    0.15128735962553386
#>     Attrib V54    -0.4060642768503738
#>     Attrib V55    -0.5837291335068381
#>     Attrib V56    -0.37991918312161305
#>     Attrib V57    0.02567895670324864
#>     Attrib V58    0.13491795909983034
#>     Attrib V59    -0.25099226277195247
#>     Attrib V6    -0.02911900126214802
#>     Attrib V60    -0.7503025732127252
#>     Attrib V7    -0.09581104361929108
#>     Attrib V8    0.341891122087927
#>     Attrib V9    1.1422684316426217
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.32711840929451
#>     Attrib V1    0.08305824615893492
#>     Attrib V10    -0.20162478145126475
#>     Attrib V11    -0.2507868760658601
#>     Attrib V12    -0.2813374180368761
#>     Attrib V13    0.13457484900874717
#>     Attrib V14    0.4419404825815767
#>     Attrib V15    0.29011536342454075
#>     Attrib V16    0.13868876897617363
#>     Attrib V17    0.21720853068426108
#>     Attrib V18    -0.114264644514894
#>     Attrib V19    0.30638676895232947
#>     Attrib V2    0.1758573718942996
#>     Attrib V20    -1.0577932003566148E-4
#>     Attrib V21    -0.029907959815645507
#>     Attrib V22    0.029750383120192014
#>     Attrib V23    -0.11498392302488754
#>     Attrib V24    -0.3170160522902014
#>     Attrib V25    0.029978605080475056
#>     Attrib V26    0.05845827934373733
#>     Attrib V27    -0.1942239410284253
#>     Attrib V28    -0.3616718818184194
#>     Attrib V29    -0.00345983036119088
#>     Attrib V3    0.07998069216769167
#>     Attrib V30    -0.35845598670503787
#>     Attrib V31    0.3336456058862529
#>     Attrib V32    0.007447259670429537
#>     Attrib V33    -0.3380934100218337
#>     Attrib V34    -8.810313674026882E-4
#>     Attrib V35    0.23430516977698598
#>     Attrib V36    0.7107563927266389
#>     Attrib V37    0.6396130569662675
#>     Attrib V38    -0.2442913725337457
#>     Attrib V39    -0.053406317694398596
#>     Attrib V4    -0.2965099831363515
#>     Attrib V40    0.16265924958966288
#>     Attrib V41    -0.1476713687541742
#>     Attrib V42    -0.10844402693013482
#>     Attrib V43    -0.1804275406620759
#>     Attrib V44    -0.06624859350586475
#>     Attrib V45    -0.09338758637194514
#>     Attrib V46    0.00848475596796967
#>     Attrib V47    0.11156720593177696
#>     Attrib V48    -0.4426440946947959
#>     Attrib V49    -0.5242231712355581
#>     Attrib V5    -3.0200206742439848E-5
#>     Attrib V50    0.7969468486929175
#>     Attrib V51    -0.06264809668665616
#>     Attrib V52    -0.1140853250517086
#>     Attrib V53    -0.29582120526892774
#>     Attrib V54    -0.34790754124760565
#>     Attrib V55    0.47818701545868997
#>     Attrib V56    0.11356373441217285
#>     Attrib V57    -0.08388829806447641
#>     Attrib V58    0.10997928225582196
#>     Attrib V59    -0.28429400307177727
#>     Attrib V6    -0.052567534158118066
#>     Attrib V60    0.13113248880558048
#>     Attrib V7    -0.19829896266771369
#>     Attrib V8    -0.009866180761980651
#>     Attrib V9    -0.484293882099447
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.3191196955820225
#>     Attrib V1    0.05309245836523992
#>     Attrib V10    0.10023282015204278
#>     Attrib V11    0.1457718239455027
#>     Attrib V12    0.1969192529103425
#>     Attrib V13    -0.26199733013844184
#>     Attrib V14    -0.5481202906842493
#>     Attrib V15    -0.28756687102458817
#>     Attrib V16    -0.07622364647006839
#>     Attrib V17    -0.051032637152268995
#>     Attrib V18    0.3499035440869419
#>     Attrib V19    -0.05788094489383062
#>     Attrib V2    -0.10598974037518799
#>     Attrib V20    0.3978725814551727
#>     Attrib V21    0.47675419873106384
#>     Attrib V22    0.20377113250143636
#>     Attrib V23    0.17090912548219894
#>     Attrib V24    0.35046675426737395
#>     Attrib V25    -0.27209668364020495
#>     Attrib V26    -0.6496349720203806
#>     Attrib V27    -0.4767499643485768
#>     Attrib V28    -0.32226882279220825
#>     Attrib V29    -0.6625574667911819
#>     Attrib V3    0.00626681707426573
#>     Attrib V30    0.11130698368164325
#>     Attrib V31    -0.9141532244030358
#>     Attrib V32    -0.29893853674494963
#>     Attrib V33    0.6159351486417528
#>     Attrib V34    0.2837623694716659
#>     Attrib V35    0.10100981391218719
#>     Attrib V36    -0.7972163385604623
#>     Attrib V37    -0.8890249564531663
#>     Attrib V38    0.349080477941528
#>     Attrib V39    0.14001064784044345
#>     Attrib V4    0.5843095561771924
#>     Attrib V40    -0.21029485524388344
#>     Attrib V41    0.1410215917057935
#>     Attrib V42    0.15135232463992745
#>     Attrib V43    0.23897498534157774
#>     Attrib V44    0.16768375477224426
#>     Attrib V45    0.2858346485581065
#>     Attrib V46    -0.05324518126900849
#>     Attrib V47    -0.36117778138121265
#>     Attrib V48    0.4972598211620032
#>     Attrib V49    0.557986194377742
#>     Attrib V5    -0.03390052117105332
#>     Attrib V50    -1.0118709753604516
#>     Attrib V51    -0.16313963650887023
#>     Attrib V52    -0.02790830779797384
#>     Attrib V53    0.4678471317705462
#>     Attrib V54    0.823556756383082
#>     Attrib V55    -0.4108509032653809
#>     Attrib V56    0.14131084057210602
#>     Attrib V57    0.33080347092058715
#>     Attrib V58    0.06515755232656162
#>     Attrib V59    0.7115724765953567
#>     Attrib V6    0.015074904893150115
#>     Attrib V60    0.12973833754407257
#>     Attrib V7    0.355335113441762
#>     Attrib V8    -0.041604161983187476
#>     Attrib V9    0.6253623049844143
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.2363593086329391
#>     Attrib V1    0.36944992531988863
#>     Attrib V10    -1.9767328542268803
#>     Attrib V11    -1.5039761096711461
#>     Attrib V12    -1.2398302227880027
#>     Attrib V13    -0.10689003901014996
#>     Attrib V14    0.8494040197983984
#>     Attrib V15    1.0011074999732534
#>     Attrib V16    0.3724045907109769
#>     Attrib V17    0.7598325090526933
#>     Attrib V18    -0.18242079914574327
#>     Attrib V19    0.16516917851463997
#>     Attrib V2    0.1381208515025613
#>     Attrib V20    -0.20803076780024962
#>     Attrib V21    -0.7247128395138329
#>     Attrib V22    -0.7206520431366663
#>     Attrib V23    -0.7193441056657821
#>     Attrib V24    -0.3238372606090556
#>     Attrib V25    -0.034759183317657524
#>     Attrib V26    -0.9323971999665032
#>     Attrib V27    -1.2373296850920008
#>     Attrib V28    -1.2036984856012067
#>     Attrib V29    -0.014150593406026342
#>     Attrib V3    0.6585742428561002
#>     Attrib V30    -0.5415681569427052
#>     Attrib V31    0.18395295962052635
#>     Attrib V32    -0.342394034100023
#>     Attrib V33    -0.24850331664805225
#>     Attrib V34    0.1593416633412248
#>     Attrib V35    0.3950575339271409
#>     Attrib V36    1.0700814931250593
#>     Attrib V37    0.9871229002753578
#>     Attrib V38    -0.35817470972170223
#>     Attrib V39    -0.3626307232430599
#>     Attrib V4    -0.6398683428479033
#>     Attrib V40    0.16141412123781257
#>     Attrib V41    -0.3124871775258329
#>     Attrib V42    -0.044433047621313046
#>     Attrib V43    -0.5657652683634489
#>     Attrib V44    -0.5498235939442466
#>     Attrib V45    -0.30264463610015024
#>     Attrib V46    -0.255036496408231
#>     Attrib V47    -0.5665442595988852
#>     Attrib V48    -1.5838084092130165
#>     Attrib V49    -1.8089024570650647
#>     Attrib V5    -0.13629479560168664
#>     Attrib V50    0.5948475345287122
#>     Attrib V51    -1.05339477563609
#>     Attrib V52    -0.8618742077311621
#>     Attrib V53    0.3368503555082065
#>     Attrib V54    0.14879028926989285
#>     Attrib V55    0.9670202722235689
#>     Attrib V56    0.6325008837815376
#>     Attrib V57    0.42351160604035176
#>     Attrib V58    0.42333340021048566
#>     Attrib V59    0.711849570620976
#>     Attrib V6    0.07886080567424558
#>     Attrib V60    0.7068145486460309
#>     Attrib V7    -0.311835074421657
#>     Attrib V8    -0.5639964561497125
#>     Attrib V9    -1.7440190154777802
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.03744207383080075
#>     Attrib V1    0.06999896215194366
#>     Attrib V10    -0.11200056386579617
#>     Attrib V11    0.017068077794493014
#>     Attrib V12    0.06046635048019309
#>     Attrib V13    -0.11228099465048695
#>     Attrib V14    -0.05846087461452596
#>     Attrib V15    -0.004132981396395806
#>     Attrib V16    -0.0074184327607110115
#>     Attrib V17    0.005302809949836193
#>     Attrib V18    0.1474564751702602
#>     Attrib V19    -0.03539196908124932
#>     Attrib V2    0.030158236267467286
#>     Attrib V20    0.2978815028414022
#>     Attrib V21    0.2812869625790006
#>     Attrib V22    0.07569105610312454
#>     Attrib V23    -0.050767710067807705
#>     Attrib V24    0.09986599219725797
#>     Attrib V25    -0.13844382925932414
#>     Attrib V26    -0.42780999001604425
#>     Attrib V27    -0.2746286601817566
#>     Attrib V28    -0.15699074280625724
#>     Attrib V29    -0.21760694763738211
#>     Attrib V3    0.12809170893067906
#>     Attrib V30    -0.030729433671189705
#>     Attrib V31    -0.4645848913412375
#>     Attrib V32    -0.17206482595434322
#>     Attrib V33    0.25410187815975754
#>     Attrib V34    0.07320742960634738
#>     Attrib V35    0.03418115332021933
#>     Attrib V36    -0.3866030528496715
#>     Attrib V37    -0.3483991591803637
#>     Attrib V38    0.18574500726641882
#>     Attrib V39    0.0963679449550168
#>     Attrib V4    0.3131240153099229
#>     Attrib V40    -0.06297858204245053
#>     Attrib V41    0.06433457128879166
#>     Attrib V42    0.027033938772252058
#>     Attrib V43    0.13319913993070384
#>     Attrib V44    -0.006175105689375881
#>     Attrib V45    0.14819869103464006
#>     Attrib V46    -0.002968659086163436
#>     Attrib V47    -0.16261967063966354
#>     Attrib V48    0.09226671441831694
#>     Attrib V49    0.14381041018472204
#>     Attrib V5    0.02417549713083646
#>     Attrib V50    -0.3953736305347727
#>     Attrib V51    -0.050639437662349386
#>     Attrib V52    0.029513680032007262
#>     Attrib V53    0.3348218968958447
#>     Attrib V54    0.4020546456601062
#>     Attrib V55    -0.026816661653156704
#>     Attrib V56    0.1882203956619861
#>     Attrib V57    0.28741249527710355
#>     Attrib V58    0.1301800215518866
#>     Attrib V59    0.45431444355736045
#>     Attrib V6    0.03734380085962656
#>     Attrib V60    0.2162652209108096
#>     Attrib V7    0.18440986357158587
#>     Attrib V8    -0.0021148279662701252
#>     Attrib V9    0.20323599708761744
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.0635407206626093
#>     Attrib V1    0.1273482290578934
#>     Attrib V10    0.033947236387077764
#>     Attrib V11    0.022164474649235426
#>     Attrib V12    0.10212306680902328
#>     Attrib V13    0.02013929716114962
#>     Attrib V14    -0.02368503193649714
#>     Attrib V15    0.008295615948464872
#>     Attrib V16    -0.004230719178599563
#>     Attrib V17    0.037364894457242295
#>     Attrib V18    0.08007375748976184
#>     Attrib V19    -0.045155595799407165
#>     Attrib V2    0.08668904358726873
#>     Attrib V20    0.1037744755516321
#>     Attrib V21    0.13107430321550828
#>     Attrib V22    -0.03777851670585335
#>     Attrib V23    -0.04544948736432709
#>     Attrib V24    -0.0019982531780968166
#>     Attrib V25    -0.07832912006392719
#>     Attrib V26    -0.17978681514303257
#>     Attrib V27    -0.12265077863213997
#>     Attrib V28    -0.027908031439958535
#>     Attrib V29    -0.18381667843250835
#>     Attrib V3    0.07991874423361184
#>     Attrib V30    0.018234856984116726
#>     Attrib V31    -0.21678536358907724
#>     Attrib V32    -0.10424055610072708
#>     Attrib V33    0.11047248038101755
#>     Attrib V34    -0.007791755511801859
#>     Attrib V35    0.011548286855679058
#>     Attrib V36    -0.24415552293090204
#>     Attrib V37    -0.19453963698009422
#>     Attrib V38    0.0875726219417951
#>     Attrib V39    0.11422538477715354
#>     Attrib V4    0.2994837155428829
#>     Attrib V40    -0.02673430990675949
#>     Attrib V41    0.02190427259986644
#>     Attrib V42    0.048805723343115844
#>     Attrib V43    0.04103525409924922
#>     Attrib V44    -0.01117925960990599
#>     Attrib V45    0.06257201875469744
#>     Attrib V46    -0.014786874419179552
#>     Attrib V47    -0.14277559065216264
#>     Attrib V48    0.08387360225992808
#>     Attrib V49    0.08250139062850928
#>     Attrib V5    0.038185812011772485
#>     Attrib V50    -0.2367062481783709
#>     Attrib V51    -0.015475342321336854
#>     Attrib V52    0.02409285882745167
#>     Attrib V53    0.23900611520549117
#>     Attrib V54    0.24972305949058968
#>     Attrib V55    -0.014476215121532828
#>     Attrib V56    0.152587040666317
#>     Attrib V57    0.18729531580232123
#>     Attrib V58    0.16246099777234096
#>     Attrib V59    0.37024730532121375
#>     Attrib V6    0.023389364269782206
#>     Attrib V60    0.20400614795455005
#>     Attrib V7    0.08131764581535485
#>     Attrib V8    -0.0028790324073677247
#>     Attrib V9    0.13475591586155328
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.07476661116889989
#>     Attrib V1    0.12908366785507538
#>     Attrib V10    -0.22208292140437724
#>     Attrib V11    -0.08003639147859182
#>     Attrib V12    -0.0889641833704464
#>     Attrib V13    -0.2598553939283881
#>     Attrib V14    -0.22926878295483677
#>     Attrib V15    -0.02162643224566113
#>     Attrib V16    0.005646094834841173
#>     Attrib V17    0.09529533580746667
#>     Attrib V18    0.23493037762291288
#>     Attrib V19    -0.051006566148991926
#>     Attrib V2    0.056213262036018126
#>     Attrib V20    0.46752413536025583
#>     Attrib V21    0.3683418869877741
#>     Attrib V22    0.151341420565533
#>     Attrib V23    0.09621107467141303
#>     Attrib V24    0.18540422909541326
#>     Attrib V25    -0.3631644751177978
#>     Attrib V26    -0.7619740791570847
#>     Attrib V27    -0.6407677706604354
#>     Attrib V28    -0.4552085983622026
#>     Attrib V29    -0.6025377682553053
#>     Attrib V3    0.15685556594820374
#>     Attrib V30    -0.0014404837485466233
#>     Attrib V31    -0.829637435780756
#>     Attrib V32    -0.4420210755483545
#>     Attrib V33    0.45332745063048074
#>     Attrib V34    0.24349828026698703
#>     Attrib V35    0.163157746576776
#>     Attrib V36    -0.6113284868179611
#>     Attrib V37    -0.6253135601137546
#>     Attrib V38    0.2957336427369777
#>     Attrib V39    0.06271020139252047
#>     Attrib V4    0.5400122821343187
#>     Attrib V40    -0.10647637268845675
#>     Attrib V41    0.046567050196457516
#>     Attrib V42    0.11752058737030313
#>     Attrib V43    0.18649539240419552
#>     Attrib V44    0.07594401800267202
#>     Attrib V45    0.15368462982249284
#>     Attrib V46    -0.008159144343191345
#>     Attrib V47    -0.3186448595500736
#>     Attrib V48    0.15200873421067249
#>     Attrib V49    0.25301349231896453
#>     Attrib V5    -0.015545146648419855
#>     Attrib V50    -0.7705481985060618
#>     Attrib V51    -0.22198476448391388
#>     Attrib V52    -0.1374346426026653
#>     Attrib V53    0.5595529720723503
#>     Attrib V54    0.8187314154692205
#>     Attrib V55    -0.18345956586642934
#>     Attrib V56    0.2688168312358511
#>     Attrib V57    0.3861693842346497
#>     Attrib V58    0.1938612920374601
#>     Attrib V59    0.7861616644365264
#>     Attrib V6    -9.675350262433411E-4
#>     Attrib V60    0.33367717943795444
#>     Attrib V7    0.37738382817354044
#>     Attrib V8    -0.05184221646146101
#>     Attrib V9    0.32509284547413836
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.046980643584799205
#>     Attrib V1    0.1522509195333822
#>     Attrib V10    -0.18990657446144646
#>     Attrib V11    -0.06937013661277254
#>     Attrib V12    -0.016608507317740745
#>     Attrib V13    -0.19103634389755833
#>     Attrib V14    -0.06982110680830471
#>     Attrib V15    0.03097484008180985
#>     Attrib V16    0.05368576881418929
#>     Attrib V17    0.0181966269097908
#>     Attrib V18    0.2230690085137528
#>     Attrib V19    -0.036521327125666386
#>     Attrib V2    0.03815931380508568
#>     Attrib V20    0.33529189624464467
#>     Attrib V21    0.3211110294300504
#>     Attrib V22    0.03755871870620221
#>     Attrib V23    0.011398778366119952
#>     Attrib V24    0.04862969279938139
#>     Attrib V25    -0.31245751687520035
#>     Attrib V26    -0.529325765837206
#>     Attrib V27    -0.35665212004758146
#>     Attrib V28    -0.154659276539321
#>     Attrib V29    -0.27885249864668576
#>     Attrib V3    0.15450339476776864
#>     Attrib V30    0.07296752445368018
#>     Attrib V31    -0.5768329985734049
#>     Attrib V32    -0.24137026604636863
#>     Attrib V33    0.3019470144904125
#>     Attrib V34    0.0921657472431508
#>     Attrib V35    0.03624092836310825
#>     Attrib V36    -0.36111619181761007
#>     Attrib V37    -0.39841133521692573
#>     Attrib V38    0.2007663663037093
#>     Attrib V39    0.11725973704705957
#>     Attrib V4    0.3625144516355386
#>     Attrib V40    -0.09980799040440054
#>     Attrib V41    -0.0010857206232631957
#>     Attrib V42    0.10051596922059322
#>     Attrib V43    0.0779823932887588
#>     Attrib V44    0.07248474128274712
#>     Attrib V45    0.1567319621866763
#>     Attrib V46    -0.01964487551392756
#>     Attrib V47    -0.2566613618801718
#>     Attrib V48    0.03750319661926177
#>     Attrib V49    0.21043750447407616
#>     Attrib V5    0.04446582596561251
#>     Attrib V50    -0.5093989837531602
#>     Attrib V51    -0.10001484486330453
#>     Attrib V52    -0.017383814541998454
#>     Attrib V53    0.39496705100163015
#>     Attrib V54    0.4391296572217641
#>     Attrib V55    -0.11127711362184352
#>     Attrib V56    0.18390677391129795
#>     Attrib V57    0.2914584063788405
#>     Attrib V58    0.22676027507716187
#>     Attrib V59    0.5411558487234824
#>     Attrib V6    0.02465242638745918
#>     Attrib V60    0.21407520946765504
#>     Attrib V7    0.22224858520136048
#>     Attrib V8    -0.008141027772945987
#>     Attrib V9    0.20797480562526802
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
