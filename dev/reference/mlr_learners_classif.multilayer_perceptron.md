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
#>     Threshold    -0.4843649176995891
#>     Node 2    1.7651653220247843
#>     Node 3    1.5868620972368113
#>     Node 4    1.2385884755101868
#>     Node 5    -1.9784207479183318
#>     Node 6    1.3424317498456386
#>     Node 7    2.8539016514162925
#>     Node 8    1.226144480382345
#>     Node 9    3.2464965545479623
#>     Node 10    -2.061059630098071
#>     Node 11    1.1216401599109078
#>     Node 12    1.0647872955758186
#>     Node 13    0.3190560302153739
#>     Node 14    1.3380281298542045
#>     Node 15    -2.3936936420814434
#>     Node 16    -0.8839313630420271
#>     Node 17    1.1640609453584712
#>     Node 18    -0.4812123994233843
#>     Node 19    1.6430810835864624
#>     Node 20    1.3472140731947038
#>     Node 21    -2.2683503814690376
#>     Node 22    0.985977212156978
#>     Node 23    0.8840393704934274
#>     Node 24    -1.701979794570659
#>     Node 25    4.131797510732948
#>     Node 26    -1.1023313696591417
#>     Node 27    1.4387583891999478
#>     Node 28    -3.0552704970004556
#>     Node 29    1.349944084368379
#>     Node 30    -0.7815110253106413
#>     Node 31    1.4225485872519836
#>     Node 32    0.9557189269715152
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.5401695103316573
#>     Node 2    -1.8181905070102955
#>     Node 3    -1.5722969351496734
#>     Node 4    -1.1972650549268127
#>     Node 5    1.9839334612020338
#>     Node 6    -1.3205403248200591
#>     Node 7    -2.8530308732009537
#>     Node 8    -1.2584467475924093
#>     Node 9    -3.2488063640448535
#>     Node 10    2.017970221034936
#>     Node 11    -1.0883863342487488
#>     Node 12    -1.1432758831314271
#>     Node 13    -0.26662397829073714
#>     Node 14    -1.275465631347814
#>     Node 15    2.3867978847541584
#>     Node 16    0.8635348523257602
#>     Node 17    -1.1325165202274619
#>     Node 18    0.5174079440618532
#>     Node 19    -1.6407025605693675
#>     Node 20    -1.3290928697661732
#>     Node 21    2.3284665947562764
#>     Node 22    -1.0405843162896855
#>     Node 23    -0.9295431275031608
#>     Node 24    1.689049681725519
#>     Node 25    -4.127054765983329
#>     Node 26    1.0290738615225061
#>     Node 27    -1.482282895655343
#>     Node 28    3.0335830609454364
#>     Node 29    -1.3806246181437118
#>     Node 30    0.8498831320966779
#>     Node 31    -1.3684104925852905
#>     Node 32    -0.9735189478409532
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.10600130212057067
#>     Attrib V1    0.20975710708211595
#>     Attrib V10    -0.1917356297110144
#>     Attrib V11    0.19708600431503745
#>     Attrib V12    0.3276101613275783
#>     Attrib V13    -0.3072752043951498
#>     Attrib V14    -0.5943973163534187
#>     Attrib V15    0.15444216007090458
#>     Attrib V16    0.4604531209156142
#>     Attrib V17    -0.10275986954228283
#>     Attrib V18    -0.2900811318781014
#>     Attrib V19    -0.05212090651283218
#>     Attrib V2    0.168606573175117
#>     Attrib V20    0.2573084670230044
#>     Attrib V21    0.32649625167269486
#>     Attrib V22    0.4485892767046855
#>     Attrib V23    0.502017972015168
#>     Attrib V24    0.5412029731253141
#>     Attrib V25    -0.3048716548891106
#>     Attrib V26    -0.8154942879309652
#>     Attrib V27    -0.6982902135006469
#>     Attrib V28    0.47905028568465324
#>     Attrib V29    -0.060386373070260006
#>     Attrib V3    -0.25640580648253364
#>     Attrib V30    0.006208847505675611
#>     Attrib V31    -0.762073530274233
#>     Attrib V32    0.7943192039416078
#>     Attrib V33    -0.02129585013776665
#>     Attrib V34    -0.23184524520026906
#>     Attrib V35    0.3499655088256099
#>     Attrib V36    -0.5160948769303096
#>     Attrib V37    -0.628053183437801
#>     Attrib V38    0.25413719832242426
#>     Attrib V39    0.2885823476865679
#>     Attrib V4    -0.28827686718155354
#>     Attrib V40    -0.0701048751002523
#>     Attrib V41    0.03674259480095145
#>     Attrib V42    0.15984327769773657
#>     Attrib V43    0.33353078719800383
#>     Attrib V44    0.7854611560977969
#>     Attrib V45    0.9422690997202953
#>     Attrib V46    0.6312281455978709
#>     Attrib V47    0.09964676692295958
#>     Attrib V48    0.20150507465905623
#>     Attrib V49    0.5707714383023696
#>     Attrib V5    -0.2536171453070277
#>     Attrib V50    -0.5893669889288418
#>     Attrib V51    -0.22889569665857654
#>     Attrib V52    0.5201695467866573
#>     Attrib V53    -0.2947992956630287
#>     Attrib V54    -0.23800600945365544
#>     Attrib V55    0.16766917897187067
#>     Attrib V56    0.36072573932325774
#>     Attrib V57    -0.5208435110680801
#>     Attrib V58    0.38765958678849566
#>     Attrib V59    0.3726695379181743
#>     Attrib V6    -0.8235890731469734
#>     Attrib V60    -0.047639456893368425
#>     Attrib V7    -0.10455638968927826
#>     Attrib V8    -0.22619431258458392
#>     Attrib V9    -0.042351938732069425
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.05044403127208793
#>     Attrib V1    0.2888559242647704
#>     Attrib V10    -0.3158625281980108
#>     Attrib V11    -0.032204206063735336
#>     Attrib V12    0.056093983021189064
#>     Attrib V13    -0.30562391333968775
#>     Attrib V14    -0.3624732524546704
#>     Attrib V15    0.36982601640517015
#>     Attrib V16    0.48649876062699615
#>     Attrib V17    -0.018920745827849243
#>     Attrib V18    -0.24813026882919434
#>     Attrib V19    0.04422001742639805
#>     Attrib V2    0.24962094644796448
#>     Attrib V20    0.27648873423104
#>     Attrib V21    0.26788523517207113
#>     Attrib V22    0.3560512647993091
#>     Attrib V23    0.30011016451364914
#>     Attrib V24    0.27817617375538434
#>     Attrib V25    -0.4131278603889548
#>     Attrib V26    -0.9210636863338516
#>     Attrib V27    -0.8163824397937495
#>     Attrib V28    0.20135180626768573
#>     Attrib V29    -0.1808120857413675
#>     Attrib V3    -0.16342399832778035
#>     Attrib V30    0.021562895772152993
#>     Attrib V31    -0.4817351665503969
#>     Attrib V32    0.6866354702291435
#>     Attrib V33    0.06054341156779866
#>     Attrib V34    -0.2798226167922193
#>     Attrib V35    0.09609419665689402
#>     Attrib V36    -0.5791976259467068
#>     Attrib V37    -0.6501496052365638
#>     Attrib V38    0.09758742547894925
#>     Attrib V39    0.24559457931126724
#>     Attrib V4    -0.14770785884800697
#>     Attrib V40    -0.10469493017448843
#>     Attrib V41    -0.07612965716183144
#>     Attrib V42    0.16019422901135189
#>     Attrib V43    0.19681733396592638
#>     Attrib V44    0.5755549567866858
#>     Attrib V45    0.7154064561550998
#>     Attrib V46    0.4255590103497089
#>     Attrib V47    0.07916348728562668
#>     Attrib V48    0.12105209429864583
#>     Attrib V49    0.4672389267780872
#>     Attrib V5    -0.2314573639269133
#>     Attrib V50    -0.41968656509028335
#>     Attrib V51    -0.22742372787321918
#>     Attrib V52    0.4119655659914413
#>     Attrib V53    -0.2414862264560228
#>     Attrib V54    0.0033064670035991024
#>     Attrib V55    0.3185548819069904
#>     Attrib V56    0.41200415634623155
#>     Attrib V57    -0.22874676355546664
#>     Attrib V58    0.4636727660740262
#>     Attrib V59    0.39252625109293493
#>     Attrib V6    -0.6705382463401943
#>     Attrib V60    0.008165475765288843
#>     Attrib V7    -0.0778176938510602
#>     Attrib V8    -0.08478362995984187
#>     Attrib V9    -0.146449628987249
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.04781045152220413
#>     Attrib V1    0.2268179105847919
#>     Attrib V10    -0.3376316389315521
#>     Attrib V11    -0.1084669902159822
#>     Attrib V12    -0.07812804577266876
#>     Attrib V13    -0.2633556307838821
#>     Attrib V14    -0.20439187903474285
#>     Attrib V15    0.3345590314218735
#>     Attrib V16    0.39140996933728955
#>     Attrib V17    0.029317295581955134
#>     Attrib V18    -0.15139679460728642
#>     Attrib V19    0.03918802837946275
#>     Attrib V2    0.18690910528464308
#>     Attrib V20    0.26493893463767937
#>     Attrib V21    0.31525698111384043
#>     Attrib V22    0.23842711262151955
#>     Attrib V23    0.20642573344117743
#>     Attrib V24    0.14635052899558318
#>     Attrib V25    -0.42270187448698215
#>     Attrib V26    -0.7575298096189221
#>     Attrib V27    -0.705130484994684
#>     Attrib V28    0.14074405250416505
#>     Attrib V29    -0.040516106587912444
#>     Attrib V3    -0.06883247999344608
#>     Attrib V30    0.015219863379874523
#>     Attrib V31    -0.36447362054520477
#>     Attrib V32    0.46232264468195955
#>     Attrib V33    0.057816604297840184
#>     Attrib V34    -0.17966803416336144
#>     Attrib V35    0.05672161948225052
#>     Attrib V36    -0.44192632140144644
#>     Attrib V37    -0.4825640291993656
#>     Attrib V38    0.08417116377163321
#>     Attrib V39    0.21110291585088561
#>     Attrib V4    -0.09682715465755568
#>     Attrib V40    -0.09830278865178096
#>     Attrib V41    -0.13261207301330638
#>     Attrib V42    0.15261336692706304
#>     Attrib V43    0.12540075352590724
#>     Attrib V44    0.4168092586056045
#>     Attrib V45    0.5903166579059976
#>     Attrib V46    0.28249390525083085
#>     Attrib V47    0.0023959114238364457
#>     Attrib V48    0.10512077239960761
#>     Attrib V49    0.3765420928307681
#>     Attrib V5    -0.12012937503398524
#>     Attrib V50    -0.26072280995112096
#>     Attrib V51    -0.10101366949490216
#>     Attrib V52    0.27828546676283356
#>     Attrib V53    -0.10165379045873255
#>     Attrib V54    -0.0038262046094792255
#>     Attrib V55    0.25376129987054596
#>     Attrib V56    0.3665963815380032
#>     Attrib V57    -0.12915435021368407
#>     Attrib V58    0.32625586033511655
#>     Attrib V59    0.32722647047767517
#>     Attrib V6    -0.49990091366418715
#>     Attrib V60    0.01137176186894143
#>     Attrib V7    -0.023114039063078812
#>     Attrib V8    -0.12266400722703509
#>     Attrib V9    -0.10622409474941125
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.464451703719551
#>     Attrib V1    -0.15731736999479598
#>     Attrib V10    -0.3722326809461214
#>     Attrib V11    -0.8214720565607057
#>     Attrib V12    -1.1380876410069687
#>     Attrib V13    -0.1799815807306761
#>     Attrib V14    0.47401633699559775
#>     Attrib V15    -0.2335727883052159
#>     Attrib V16    -0.47732558537273484
#>     Attrib V17    0.2851299666403435
#>     Attrib V18    0.5116408466039167
#>     Attrib V19    0.054871427570408755
#>     Attrib V2    0.06633123388559228
#>     Attrib V20    -0.37953709431791083
#>     Attrib V21    -0.2925226710622516
#>     Attrib V22    -0.35501054723753744
#>     Attrib V23    -0.39546972656949286
#>     Attrib V24    -0.4428763319508662
#>     Attrib V25    0.47561182451028944
#>     Attrib V26    0.540117477046676
#>     Attrib V27    0.4290561068433058
#>     Attrib V28    -0.44554714811983714
#>     Attrib V29    0.4450637604523507
#>     Attrib V3    0.35544370267370035
#>     Attrib V30    0.5105833553967838
#>     Attrib V31    1.0159033836341365
#>     Attrib V32    -0.3022050722544788
#>     Attrib V33    0.33497996047313877
#>     Attrib V34    0.363913495136647
#>     Attrib V35    0.06761491386081024
#>     Attrib V36    1.1145245826974244
#>     Attrib V37    1.1605177398883728
#>     Attrib V38    0.0975993228083523
#>     Attrib V39    -0.274926299913117
#>     Attrib V4    0.24863166522549726
#>     Attrib V40    -0.05130065522068416
#>     Attrib V41    -0.29852195411002364
#>     Attrib V42    0.07598264367677894
#>     Attrib V43    -0.08436503116048669
#>     Attrib V44    -0.21855236516465812
#>     Attrib V45    -0.6534033760298922
#>     Attrib V46    -0.5604127190182258
#>     Attrib V47    0.03935133740899833
#>     Attrib V48    0.038355794780755494
#>     Attrib V49    -0.4627529422114947
#>     Attrib V5    -0.04213850125920872
#>     Attrib V50    0.7057277853886883
#>     Attrib V51    0.2093392660943599
#>     Attrib V52    -0.5755937615333812
#>     Attrib V53    0.09141807169213804
#>     Attrib V54    0.29629461133074886
#>     Attrib V55    -0.06015249019994943
#>     Attrib V56    0.21009756718211042
#>     Attrib V57    0.1489433519850652
#>     Attrib V58    -0.507012189298988
#>     Attrib V59    -0.35579061115389576
#>     Attrib V6    0.46729114153698
#>     Attrib V60    0.027107329537184834
#>     Attrib V7    -0.13209144189960328
#>     Attrib V8    -0.22761214489467124
#>     Attrib V9    -0.38980853130659493
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.0385767792824017
#>     Attrib V1    0.29895917363626523
#>     Attrib V10    -0.3592580131649929
#>     Attrib V11    -0.06510307539260832
#>     Attrib V12    -0.005350683436166652
#>     Attrib V13    -0.3746193200128348
#>     Attrib V14    -0.33780444806184234
#>     Attrib V15    0.2747101242764252
#>     Attrib V16    0.49537676886829013
#>     Attrib V17    0.012099388160667876
#>     Attrib V18    -0.11135285300478766
#>     Attrib V19    0.01963712678916332
#>     Attrib V2    0.21236978677142054
#>     Attrib V20    0.26039769632877996
#>     Attrib V21    0.2818645203888218
#>     Attrib V22    0.2512125593158523
#>     Attrib V23    0.24101477936748578
#>     Attrib V24    0.28334434070896125
#>     Attrib V25    -0.29891414115578624
#>     Attrib V26    -0.782218402944897
#>     Attrib V27    -0.7027252321371444
#>     Attrib V28    0.06369222109911961
#>     Attrib V29    -0.159685032632955
#>     Attrib V3    -0.13548940675448756
#>     Attrib V30    -0.00444409820573254
#>     Attrib V31    -0.43352789731711544
#>     Attrib V32    0.5759101869108714
#>     Attrib V33    0.08826002071082475
#>     Attrib V34    -0.1945157194280803
#>     Attrib V35    0.11050503104637961
#>     Attrib V36    -0.4987598968737353
#>     Attrib V37    -0.5422615648322915
#>     Attrib V38    0.11502460264675955
#>     Attrib V39    0.19023214255237997
#>     Attrib V4    -0.0862697106449155
#>     Attrib V40    -0.1447742031229126
#>     Attrib V41    -0.08561502735807164
#>     Attrib V42    0.17293090262642544
#>     Attrib V43    0.18422391002918004
#>     Attrib V44    0.4724500579802624
#>     Attrib V45    0.6456589609229254
#>     Attrib V46    0.38430791652581675
#>     Attrib V47    0.02679666024626714
#>     Attrib V48    0.08622588737065282
#>     Attrib V49    0.357538841481519
#>     Attrib V5    -0.19561748307288584
#>     Attrib V50    -0.318877424164081
#>     Attrib V51    -0.15629169161216913
#>     Attrib V52    0.30358770918785694
#>     Attrib V53    -0.11509095206162995
#>     Attrib V54    -0.021864717211018816
#>     Attrib V55    0.23312443519207107
#>     Attrib V56    0.4017055733647464
#>     Attrib V57    -0.15929301405141857
#>     Attrib V58    0.3983474074562682
#>     Attrib V59    0.38036687514903533
#>     Attrib V6    -0.5165375105884249
#>     Attrib V60    0.05595821945411085
#>     Attrib V7    -0.025378121149415147
#>     Attrib V8    -0.07211646865849773
#>     Attrib V9    -0.0654426594543233
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4326786842829086
#>     Attrib V1    0.35579821457463456
#>     Attrib V10    0.6494376793772603
#>     Attrib V11    1.0988282685411273
#>     Attrib V12    1.5005954024208723
#>     Attrib V13    0.6352547620964933
#>     Attrib V14    -0.26395731135247896
#>     Attrib V15    -0.0857210690067241
#>     Attrib V16    -0.44735801707092354
#>     Attrib V17    -0.9408020543238719
#>     Attrib V18    -0.5283408950844848
#>     Attrib V19    -0.28308435229199436
#>     Attrib V2    0.4281933771545823
#>     Attrib V20    -0.10104911195898036
#>     Attrib V21    0.2412014458718704
#>     Attrib V22    0.3122785272285997
#>     Attrib V23    0.6024498520191961
#>     Attrib V24    0.5836247429651409
#>     Attrib V25    0.0631432143819984
#>     Attrib V26    0.7952062920804999
#>     Attrib V27    0.9024455648415034
#>     Attrib V28    1.149858692440116
#>     Attrib V29    0.8856352981741334
#>     Attrib V3    0.1714120748460352
#>     Attrib V30    -0.12735278813415926
#>     Attrib V31    -0.9584182611661449
#>     Attrib V32    -0.11729431383202678
#>     Attrib V33    -1.0094838948910445
#>     Attrib V34    -0.47264684045287786
#>     Attrib V35    0.3972814777148304
#>     Attrib V36    -0.6694089438206875
#>     Attrib V37    -0.10218098795207166
#>     Attrib V38    -0.1825895779253222
#>     Attrib V39    0.1409903881845378
#>     Attrib V4    -0.2864402452892776
#>     Attrib V40    0.37646143493849343
#>     Attrib V41    0.9528014009486568
#>     Attrib V42    0.06735601175947876
#>     Attrib V43    0.09597341653607702
#>     Attrib V44    0.024417400866979393
#>     Attrib V45    0.49798758074311633
#>     Attrib V46    1.0492145246673676
#>     Attrib V47    0.7769747007743886
#>     Attrib V48    0.4068233703796841
#>     Attrib V49    0.6690636934739569
#>     Attrib V5    0.2246821401361694
#>     Attrib V50    0.08865833622875761
#>     Attrib V51    0.2863969913064919
#>     Attrib V52    1.1112853011103716
#>     Attrib V53    0.8663600763534849
#>     Attrib V54    -0.41456028035779874
#>     Attrib V55    -0.2851004311601031
#>     Attrib V56    -0.3372760123310739
#>     Attrib V57    -0.8400526256601257
#>     Attrib V58    0.3346809582205789
#>     Attrib V59    -0.17075065718632806
#>     Attrib V6    0.039199375310576975
#>     Attrib V60    0.16791629381429515
#>     Attrib V7    -0.19103614583558212
#>     Attrib V8    -0.44655261822234255
#>     Attrib V9    0.497541236194341
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.2692276789485669
#>     Attrib V1    0.15582171592533822
#>     Attrib V10    -0.010380774617418395
#>     Attrib V11    0.3062035925757687
#>     Attrib V12    0.43501642020852593
#>     Attrib V13    -0.07436205389409117
#>     Attrib V14    -0.4779335973508547
#>     Attrib V15    0.0561665105959032
#>     Attrib V16    0.1875583569767314
#>     Attrib V17    -0.2850485436690528
#>     Attrib V18    -0.343872280470472
#>     Attrib V19    -0.06605516598374671
#>     Attrib V2    0.15387474384953292
#>     Attrib V20    0.055245093006361524
#>     Attrib V21    0.1827765873901451
#>     Attrib V22    0.2608598899218637
#>     Attrib V23    0.3917538196348748
#>     Attrib V24    0.5098743919994951
#>     Attrib V25    -0.0536086879521106
#>     Attrib V26    -0.1675789432051055
#>     Attrib V27    -0.13857858944230209
#>     Attrib V28    0.5041912962327755
#>     Attrib V29    0.13405858621122732
#>     Attrib V3    -0.1483590746663949
#>     Attrib V30    -0.0549365962648737
#>     Attrib V31    -0.5943549263471641
#>     Attrib V32    0.37715974743568054
#>     Attrib V33    -0.18829577540039688
#>     Attrib V34    -0.20328462808639436
#>     Attrib V35    0.24570764584854057
#>     Attrib V36    -0.40914994045996816
#>     Attrib V37    -0.35610125206732696
#>     Attrib V38    0.09972889254763387
#>     Attrib V39    0.18227182138406503
#>     Attrib V4    -0.2142025959136671
#>     Attrib V40    0.05685158530835693
#>     Attrib V41    0.21769837684185195
#>     Attrib V42    0.016767752265489877
#>     Attrib V43    0.14934806976659074
#>     Attrib V44    0.4426716567192787
#>     Attrib V45    0.6227269206940496
#>     Attrib V46    0.59885568547593
#>     Attrib V47    0.23455913386568847
#>     Attrib V48    0.18720631701788848
#>     Attrib V49    0.4358716815495217
#>     Attrib V5    -0.1011181081608944
#>     Attrib V50    -0.360921931350851
#>     Attrib V51    -0.16469913397473882
#>     Attrib V52    0.39977290071861216
#>     Attrib V53    0.0428854653292626
#>     Attrib V54    -0.1869111990988648
#>     Attrib V55    0.044722980735213226
#>     Attrib V56    0.07743251155869564
#>     Attrib V57    -0.35835225230115036
#>     Attrib V58    0.260230231673305
#>     Attrib V59    0.15164158724837007
#>     Attrib V6    -0.4666215424534063
#>     Attrib V60    0.06087966456819915
#>     Attrib V7    -0.1250671336407259
#>     Attrib V8    -0.23876025885735425
#>     Attrib V9    0.06855029612763798
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.33210131826633277
#>     Attrib V1    0.16733955570057002
#>     Attrib V10    0.7718325524012077
#>     Attrib V11    1.1569948967913422
#>     Attrib V12    1.8752231899026368
#>     Attrib V13    0.7496860941132389
#>     Attrib V14    -0.5006601614362591
#>     Attrib V15    -0.27556545157547246
#>     Attrib V16    -0.6069405844606174
#>     Attrib V17    -0.9387097438907726
#>     Attrib V18    -0.415982586948641
#>     Attrib V19    -0.3002210627910476
#>     Attrib V2    0.2969848770293288
#>     Attrib V20    -0.25155692356412884
#>     Attrib V21    0.15055831595595068
#>     Attrib V22    0.41231266300210284
#>     Attrib V23    0.8719030194184345
#>     Attrib V24    1.0602400762014639
#>     Attrib V25    0.5439679096889973
#>     Attrib V26    1.0180312246870793
#>     Attrib V27    0.838712877989956
#>     Attrib V28    0.7523807293743128
#>     Attrib V29    0.23953015093170937
#>     Attrib V3    0.10019848141364225
#>     Attrib V30    -0.44441868907412607
#>     Attrib V31    -0.9745673125242502
#>     Attrib V32    0.0476184592342198
#>     Attrib V33    -0.942879908058754
#>     Attrib V34    -0.20326813197070623
#>     Attrib V35    0.5849252391606904
#>     Attrib V36    -0.7538966371479938
#>     Attrib V37    -0.3242286792251104
#>     Attrib V38    -0.28634458111169275
#>     Attrib V39    0.2037254413195058
#>     Attrib V4    -0.4122199214569536
#>     Attrib V40    0.5076677406229227
#>     Attrib V41    1.047885893859038
#>     Attrib V42    0.041268499955936774
#>     Attrib V43    0.28992691469259635
#>     Attrib V44    0.018034629838409737
#>     Attrib V45    0.5133132104943493
#>     Attrib V46    1.2060431778240066
#>     Attrib V47    0.9590283604843435
#>     Attrib V48    0.618372581809511
#>     Attrib V49    0.8393244752082195
#>     Attrib V5    0.2007256198613893
#>     Attrib V50    0.07909644113947657
#>     Attrib V51    0.4229869274091828
#>     Attrib V52    1.2463430228315404
#>     Attrib V53    1.0268130279421392
#>     Attrib V54    -0.579522453418103
#>     Attrib V55    -0.43142178814897436
#>     Attrib V56    -0.2910016726169589
#>     Attrib V57    -1.0755507103896447
#>     Attrib V58    0.306299372473476
#>     Attrib V59    -0.2985817051237621
#>     Attrib V6    0.0277784229705524
#>     Attrib V60    0.06568458442763438
#>     Attrib V7    -0.29609746304215956
#>     Attrib V8    -0.6440201092603038
#>     Attrib V9    0.5206986392407262
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.3624405840597445
#>     Attrib V1    -0.33204644872372147
#>     Attrib V10    0.1491027686581651
#>     Attrib V11    -0.2938228648117522
#>     Attrib V12    -0.5265478606589741
#>     Attrib V13    0.3140773993082067
#>     Attrib V14    0.7207933221132226
#>     Attrib V15    -0.284786303865292
#>     Attrib V16    -0.3571184616101446
#>     Attrib V17    0.34270006226943905
#>     Attrib V18    0.6022271461601069
#>     Attrib V19    0.21658784557574376
#>     Attrib V2    -0.19288081308991512
#>     Attrib V20    -0.05999493269352146
#>     Attrib V21    -0.027501493913479263
#>     Attrib V22    -0.22199299720409466
#>     Attrib V23    -0.3448907787121288
#>     Attrib V24    -0.45612678404652524
#>     Attrib V25    0.5435840090426352
#>     Attrib V26    0.8752554768725153
#>     Attrib V27    0.7028416724736889
#>     Attrib V28    -0.41368664570515884
#>     Attrib V29    0.0831979363096204
#>     Attrib V3    0.2737332449192182
#>     Attrib V30    0.20215685846518305
#>     Attrib V31    0.6818268136375328
#>     Attrib V32    -0.984321806417685
#>     Attrib V33    0.02527487827520224
#>     Attrib V34    0.1945947472507973
#>     Attrib V35    -0.2057995317035792
#>     Attrib V36    0.9479896541191842
#>     Attrib V37    0.8999664600725336
#>     Attrib V38    0.05063450594265854
#>     Attrib V39    -0.23154018042576194
#>     Attrib V4    0.34917203997898594
#>     Attrib V40    0.05981060969445468
#>     Attrib V41    -0.19620926818571147
#>     Attrib V42    -0.22673827606631766
#>     Attrib V43    -0.26565563095687783
#>     Attrib V44    -0.44704368201260397
#>     Attrib V45    -0.7743295120142796
#>     Attrib V46    -0.7140744170990664
#>     Attrib V47    -0.17191536838676805
#>     Attrib V48    -0.21302064158980405
#>     Attrib V49    -0.6371959837247692
#>     Attrib V5    0.24341812869654905
#>     Attrib V50    0.675406594712254
#>     Attrib V51    0.18701888870953007
#>     Attrib V52    -0.6152484825413261
#>     Attrib V53    0.2196877665063784
#>     Attrib V54    0.5440612076560891
#>     Attrib V55    -0.041439434509690405
#>     Attrib V56    -0.26249714805185087
#>     Attrib V57    0.4776842629507583
#>     Attrib V58    -0.514209797862266
#>     Attrib V59    -0.2571743279192076
#>     Attrib V6    0.7415804340917299
#>     Attrib V60    0.03201376343581137
#>     Attrib V7    0.1449401357980401
#>     Attrib V8    0.27346003448772377
#>     Attrib V9    0.007256158606112007
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.04603139117643579
#>     Attrib V1    0.16079665237954724
#>     Attrib V10    -0.29228275671198395
#>     Attrib V11    -0.05702487324568599
#>     Attrib V12    -0.004934016477436827
#>     Attrib V13    -0.3335755304630794
#>     Attrib V14    -0.2996001489135508
#>     Attrib V15    0.20570247860471239
#>     Attrib V16    0.37560485833697327
#>     Attrib V17    0.08414352371708896
#>     Attrib V18    -0.07895881523210473
#>     Attrib V19    0.048685602252604494
#>     Attrib V2    0.12137921664889971
#>     Attrib V20    0.25637635231482264
#>     Attrib V21    0.18652398786892468
#>     Attrib V22    0.18928821274162072
#>     Attrib V23    0.21186305233756592
#>     Attrib V24    0.23614137509594296
#>     Attrib V25    -0.2113606992091823
#>     Attrib V26    -0.6731945854835742
#>     Attrib V27    -0.6261374565822778
#>     Attrib V28    0.08530592262021977
#>     Attrib V29    -0.14920737453809416
#>     Attrib V3    -0.16721351895295816
#>     Attrib V30    0.0038364692342898366
#>     Attrib V31    -0.3845922547010461
#>     Attrib V32    0.43719269005567574
#>     Attrib V33    0.07238619791976567
#>     Attrib V34    -0.06698163823953356
#>     Attrib V35    0.17585061662984974
#>     Attrib V36    -0.3293701089696973
#>     Attrib V37    -0.4476450943502265
#>     Attrib V38    0.17007705162102468
#>     Attrib V39    0.17511343999907086
#>     Attrib V4    -0.11860202820901215
#>     Attrib V40    -0.1119712103826301
#>     Attrib V41    -0.16213959616593862
#>     Attrib V42    0.09978690582356448
#>     Attrib V43    0.13373193794414545
#>     Attrib V44    0.43431320154474573
#>     Attrib V45    0.5907259759003453
#>     Attrib V46    0.31933354346706644
#>     Attrib V47    0.07682016899315255
#>     Attrib V48    0.1292601099264502
#>     Attrib V49    0.2940409470781367
#>     Attrib V5    -0.12718382820147772
#>     Attrib V50    -0.2615695634731721
#>     Attrib V51    -0.05510270482885172
#>     Attrib V52    0.2322711170564795
#>     Attrib V53    -0.1527796346546837
#>     Attrib V54    0.11146172802766768
#>     Attrib V55    0.2695931379053535
#>     Attrib V56    0.33767543993693816
#>     Attrib V57    -0.145777277465959
#>     Attrib V58    0.3207276029604841
#>     Attrib V59    0.23696723142212855
#>     Attrib V6    -0.43353614033607774
#>     Attrib V60    0.00930171425656242
#>     Attrib V7    -0.05918587563837215
#>     Attrib V8    -0.07265210443967735
#>     Attrib V9    -0.0828837475466251
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.030311894505359246
#>     Attrib V1    0.19755766088957324
#>     Attrib V10    -0.35327792126165053
#>     Attrib V11    -0.03737168668167946
#>     Attrib V12    -0.10809235799404286
#>     Attrib V13    -0.2827147937490075
#>     Attrib V14    -0.21144540111208326
#>     Attrib V15    0.24617109707809953
#>     Attrib V16    0.39700520484330104
#>     Attrib V17    0.03341839393762202
#>     Attrib V18    -0.1158963239968285
#>     Attrib V19    0.09878324626992449
#>     Attrib V2    0.22650603719958295
#>     Attrib V20    0.20506842012629356
#>     Attrib V21    0.20040851586268424
#>     Attrib V22    0.2312441823442223
#>     Attrib V23    0.186974128334076
#>     Attrib V24    0.13076096518114175
#>     Attrib V25    -0.375235144616899
#>     Attrib V26    -0.6998885715323
#>     Attrib V27    -0.5706112328388592
#>     Attrib V28    0.09060076689344249
#>     Attrib V29    -0.0205056569486
#>     Attrib V3    -0.13790287091156522
#>     Attrib V30    0.023075338864115093
#>     Attrib V31    -0.3728241938341686
#>     Attrib V32    0.3999779692715142
#>     Attrib V33    0.08094792989130013
#>     Attrib V34    -0.11910561237052021
#>     Attrib V35    0.0894982933079171
#>     Attrib V36    -0.37293403625760546
#>     Attrib V37    -0.4397407992098049
#>     Attrib V38    0.1258615346934138
#>     Attrib V39    0.14144997816440522
#>     Attrib V4    -0.047441913894151935
#>     Attrib V40    -0.08323812358018186
#>     Attrib V41    -0.12498936321813563
#>     Attrib V42    0.07020007302541606
#>     Attrib V43    0.1519696388105922
#>     Attrib V44    0.3221757389853829
#>     Attrib V45    0.5178130298066045
#>     Attrib V46    0.3310480331943388
#>     Attrib V47    0.012289399900049375
#>     Attrib V48    0.11219428225311318
#>     Attrib V49    0.27145156955862626
#>     Attrib V5    -0.13517866114340588
#>     Attrib V50    -0.3031955130337365
#>     Attrib V51    -0.10860142390143315
#>     Attrib V52    0.3006304789129404
#>     Attrib V53    -0.0937791431250093
#>     Attrib V54    0.05663113419225004
#>     Attrib V55    0.25082611313699554
#>     Attrib V56    0.3349697340121393
#>     Attrib V57    -0.10548759261100815
#>     Attrib V58    0.34719067158526334
#>     Attrib V59    0.3415205800777734
#>     Attrib V6    -0.47222798664788385
#>     Attrib V60    0.025913705089366534
#>     Attrib V7    -0.01561228286447538
#>     Attrib V8    -0.06223218275216189
#>     Attrib V9    -0.10808186918378888
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.15196543572874696
#>     Attrib V1    0.08328183210474377
#>     Attrib V10    -0.10497798560635509
#>     Attrib V11    0.0014218778701120237
#>     Attrib V12    0.017511396560183752
#>     Attrib V13    -0.016053021888991128
#>     Attrib V14    -0.058301908360689964
#>     Attrib V15    0.03938472550621456
#>     Attrib V16    0.02704392819041263
#>     Attrib V17    -0.015973625783723872
#>     Attrib V18    -0.038385484657703375
#>     Attrib V19    -0.02052767856800169
#>     Attrib V2    0.0871644192570516
#>     Attrib V20    0.07241825756267521
#>     Attrib V21    0.07308709384965935
#>     Attrib V22    0.01934848653224583
#>     Attrib V23    0.08890172773771285
#>     Attrib V24    0.09504753315118261
#>     Attrib V25    -0.015880625114481052
#>     Attrib V26    -0.20248644964201037
#>     Attrib V27    -0.11603465209067586
#>     Attrib V28    0.02002948780179134
#>     Attrib V29    0.007235765447553812
#>     Attrib V3    0.08117086830663395
#>     Attrib V30    0.014371198527485512
#>     Attrib V31    -0.1591386771958053
#>     Attrib V32    0.1331321184384158
#>     Attrib V33    -0.019330351373796677
#>     Attrib V34    -0.0013234076923244764
#>     Attrib V35    0.07420786630445128
#>     Attrib V36    -0.09725817460037417
#>     Attrib V37    -0.07969032600421781
#>     Attrib V38    0.05933254886245498
#>     Attrib V39    0.11957366154364421
#>     Attrib V4    0.035906136768517304
#>     Attrib V40    0.0047992370298550234
#>     Attrib V41    -0.027416993008045586
#>     Attrib V42    0.056563220819343486
#>     Attrib V43    0.04877921256559436
#>     Attrib V44    0.13006802584727353
#>     Attrib V45    0.16588220286249825
#>     Attrib V46    0.18067708177226008
#>     Attrib V47    0.122255985136891
#>     Attrib V48    0.06993424904885887
#>     Attrib V49    0.13724251662713916
#>     Attrib V5    0.02042711232395805
#>     Attrib V50    -0.0487793562638376
#>     Attrib V51    -0.009175742107157589
#>     Attrib V52    0.11963789578410852
#>     Attrib V53    0.061977764133311644
#>     Attrib V54    0.034973417914384096
#>     Attrib V55    0.11522392565970896
#>     Attrib V56    0.14849894668152208
#>     Attrib V57    -0.03151515654580078
#>     Attrib V58    0.12734991047368183
#>     Attrib V59    0.17023151259634492
#>     Attrib V6    -0.10838530179394135
#>     Attrib V60    0.08446571655640256
#>     Attrib V7    0.010152388552413781
#>     Attrib V8    -0.08616353005879658
#>     Attrib V9    -0.026453979251524613
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.2584910854999229
#>     Attrib V1    0.24228375796740625
#>     Attrib V10    -0.09692591025247327
#>     Attrib V11    0.28577846263014633
#>     Attrib V12    0.42054586254671317
#>     Attrib V13    -0.1971202003095456
#>     Attrib V14    -0.5176142949130643
#>     Attrib V15    0.12845248825242495
#>     Attrib V16    0.17362105249456575
#>     Attrib V17    -0.2536648003576296
#>     Attrib V18    -0.35312110057385054
#>     Attrib V19    -0.15435023628207184
#>     Attrib V2    0.1642700887268782
#>     Attrib V20    0.04747723693540684
#>     Attrib V21    0.11138951709425489
#>     Attrib V22    0.22146095778281105
#>     Attrib V23    0.3620654123356882
#>     Attrib V24    0.38278529659526883
#>     Attrib V25    -0.1995301527817207
#>     Attrib V26    -0.38552425576365
#>     Attrib V27    -0.352392887675824
#>     Attrib V28    0.3527018079351363
#>     Attrib V29    -0.02934624070258514
#>     Attrib V3    -0.24204357501588022
#>     Attrib V30    -0.047810859506134964
#>     Attrib V31    -0.5161825232350291
#>     Attrib V32    0.49241512906993656
#>     Attrib V33    -0.10647527574472607
#>     Attrib V34    -0.195968026319268
#>     Attrib V35    0.26257981575484746
#>     Attrib V36    -0.5221055196927444
#>     Attrib V37    -0.4139253151028985
#>     Attrib V38    0.027443650425009448
#>     Attrib V39    0.19530930822879775
#>     Attrib V4    -0.2749675895221265
#>     Attrib V40    -0.0012091102231954003
#>     Attrib V41    0.11629074788071835
#>     Attrib V42    0.02277658448060003
#>     Attrib V43    0.12538165249249802
#>     Attrib V44    0.45741502297136016
#>     Attrib V45    0.5727087916553588
#>     Attrib V46    0.5485091225855464
#>     Attrib V47    0.13147264292311595
#>     Attrib V48    0.15700258479115528
#>     Attrib V49    0.4695112454668098
#>     Attrib V5    -0.18335375809321083
#>     Attrib V50    -0.40208060357800995
#>     Attrib V51    -0.2225806782927327
#>     Attrib V52    0.3757249883214776
#>     Attrib V53    -0.11923499745024098
#>     Attrib V54    -0.140395297692694
#>     Attrib V55    0.1565911415098629
#>     Attrib V56    0.15379605014898726
#>     Attrib V57    -0.3879298771856669
#>     Attrib V58    0.33164799614361534
#>     Attrib V59    0.1465831968956948
#>     Attrib V6    -0.5408383492517542
#>     Attrib V60    0.04919828520593351
#>     Attrib V7    -0.14694513736344714
#>     Attrib V8    -0.22472968095024273
#>     Attrib V9    0.010406211411518311
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.6435593994091687
#>     Attrib V1    -0.24634421595088493
#>     Attrib V10    -0.4381879386461148
#>     Attrib V11    -1.0255510913120125
#>     Attrib V12    -1.2861236481452687
#>     Attrib V13    -0.14759967039995947
#>     Attrib V14    0.6751712129934916
#>     Attrib V15    -0.2053536222206503
#>     Attrib V16    -0.49864034774820976
#>     Attrib V17    0.32982812083769286
#>     Attrib V18    0.6326271045898545
#>     Attrib V19    0.18472075434811913
#>     Attrib V2    -0.027662041756963122
#>     Attrib V20    -0.32254548932572197
#>     Attrib V21    -0.33414198590795446
#>     Attrib V22    -0.39436155199943224
#>     Attrib V23    -0.587329735073956
#>     Attrib V24    -0.5701660930852226
#>     Attrib V25    0.5560644091842691
#>     Attrib V26    0.7483090780472714
#>     Attrib V27    0.443118537547812
#>     Attrib V28    -0.681339135550786
#>     Attrib V29    0.48697624954394053
#>     Attrib V3    0.44806321099693935
#>     Attrib V30    0.4626167863575287
#>     Attrib V31    1.1187063287090853
#>     Attrib V32    -0.6179600936618855
#>     Attrib V33    0.31913842671098674
#>     Attrib V34    0.5593731611792232
#>     Attrib V35    0.0500885742631509
#>     Attrib V36    1.3326187452667289
#>     Attrib V37    1.4339494547731317
#>     Attrib V38    0.05331915278049547
#>     Attrib V39    -0.34128387259103177
#>     Attrib V4    0.38428380144129015
#>     Attrib V40    -0.09532999827935416
#>     Attrib V41    -0.40277910185727184
#>     Attrib V42    -0.05892425717115562
#>     Attrib V43    -0.18336214778965695
#>     Attrib V44    -0.4481130691416924
#>     Attrib V45    -0.7785197794821478
#>     Attrib V46    -0.5669955460264443
#>     Attrib V47    0.1093817271717047
#>     Attrib V48    0.012707362839243655
#>     Attrib V49    -0.6648660969516914
#>     Attrib V5    -0.0016595768898102672
#>     Attrib V50    0.8870170736058317
#>     Attrib V51    0.31201758410901315
#>     Attrib V52    -0.7239495493969745
#>     Attrib V53    0.2312004313368641
#>     Attrib V54    0.310998540736578
#>     Attrib V55    -0.05600888507076757
#>     Attrib V56    0.15800746516671238
#>     Attrib V57    0.25420786596127193
#>     Attrib V58    -0.5885984675130631
#>     Attrib V59    -0.4540021622100564
#>     Attrib V6    0.5627684303263002
#>     Attrib V60    0.02173188876102509
#>     Attrib V7    -0.2711517903349904
#>     Attrib V8    -0.25625816118658534
#>     Attrib V9    -0.4231297351726064
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.15872230880095334
#>     Attrib V1    -0.12754127453144773
#>     Attrib V10    0.20552638156865058
#>     Attrib V11    -0.03014324066467774
#>     Attrib V12    -0.15146052885456562
#>     Attrib V13    0.1876748177974051
#>     Attrib V14    0.2167425797069551
#>     Attrib V15    -0.07640734522778887
#>     Attrib V16    0.007589318598121365
#>     Attrib V17    0.31693031140067773
#>     Attrib V18    0.3581693867089291
#>     Attrib V19    0.15256453252397922
#>     Attrib V2    -0.13767965575973165
#>     Attrib V20    -0.04395622352513117
#>     Attrib V21    -0.037712636636486274
#>     Attrib V22    -0.08770045904685861
#>     Attrib V23    -0.23144718090803676
#>     Attrib V24    -0.2489363594723545
#>     Attrib V25    0.10905400123348577
#>     Attrib V26    0.18837235809557998
#>     Attrib V27    0.1534035848717538
#>     Attrib V28    -0.19993189980734657
#>     Attrib V29    -0.09818579223743312
#>     Attrib V3    0.14703139335038784
#>     Attrib V30    0.02237492473277688
#>     Attrib V31    0.3477544399264875
#>     Attrib V32    -0.21259504314636674
#>     Attrib V33    0.13216809465421575
#>     Attrib V34    0.2121082004480851
#>     Attrib V35    -0.07813172688150419
#>     Attrib V36    0.34454108829677077
#>     Attrib V37    0.35946139635737095
#>     Attrib V38    -0.018464177132670075
#>     Attrib V39    -0.08246113143033988
#>     Attrib V4    0.22065829570579198
#>     Attrib V40    0.08307918076533834
#>     Attrib V41    0.042942026200015124
#>     Attrib V42    0.014503525972875837
#>     Attrib V43    -0.10059304984828892
#>     Attrib V44    -0.22300594787745026
#>     Attrib V45    -0.3252842276768246
#>     Attrib V46    -0.2791927013334139
#>     Attrib V47    -0.07986081251398122
#>     Attrib V48    -0.06886375214345584
#>     Attrib V49    -0.20813625577699443
#>     Attrib V5    0.19120994415445258
#>     Attrib V50    0.2380332324911727
#>     Attrib V51    0.10868783918816838
#>     Attrib V52    -0.25095237222495265
#>     Attrib V53    -0.058531305317645874
#>     Attrib V54    0.030609017279602423
#>     Attrib V55    -0.09387949091181674
#>     Attrib V56    -0.09503651261758245
#>     Attrib V57    0.2974119479398705
#>     Attrib V58    -0.1386001886790421
#>     Attrib V59    -0.11840846118171468
#>     Attrib V6    0.4040817857633054
#>     Attrib V60    0.030643179478776504
#>     Attrib V7    0.13998776557090256
#>     Attrib V8    0.18154215298139767
#>     Attrib V9    0.14011820666139654
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.01799476414655099
#>     Attrib V1    0.268922197113402
#>     Attrib V10    -0.28406906675605337
#>     Attrib V11    -0.07419522717867845
#>     Attrib V12    -0.1223458066681579
#>     Attrib V13    -0.34189014415185426
#>     Attrib V14    -0.26534916610129206
#>     Attrib V15    0.31738207283195163
#>     Attrib V16    0.388942577520459
#>     Attrib V17    0.04275914161516262
#>     Attrib V18    -0.11408118235168502
#>     Attrib V19    0.06377135364792495
#>     Attrib V2    0.253265207730258
#>     Attrib V20    0.2078215410379565
#>     Attrib V21    0.21078824982342842
#>     Attrib V22    0.26813257756421555
#>     Attrib V23    0.15806756518213527
#>     Attrib V24    0.1960665174202985
#>     Attrib V25    -0.34178499019593617
#>     Attrib V26    -0.720226692620637
#>     Attrib V27    -0.6615879729938808
#>     Attrib V28    0.008596019846965994
#>     Attrib V29    -0.16663921010386737
#>     Attrib V3    -0.10914201253171023
#>     Attrib V30    0.026673747062681098
#>     Attrib V31    -0.2849287773145331
#>     Attrib V32    0.4140708627684111
#>     Attrib V33    0.11309808100771335
#>     Attrib V34    -0.16676535450260124
#>     Attrib V35    0.11176520220183822
#>     Attrib V36    -0.4022875699294049
#>     Attrib V37    -0.4666708545056917
#>     Attrib V38    0.15871427637234503
#>     Attrib V39    0.19906904349937615
#>     Attrib V4    -0.06529581784849858
#>     Attrib V40    -0.16052941113537975
#>     Attrib V41    -0.13154613160435297
#>     Attrib V42    0.09296554197112473
#>     Attrib V43    0.1844402442059787
#>     Attrib V44    0.41548526232895117
#>     Attrib V45    0.557279230603421
#>     Attrib V46    0.26851430178451596
#>     Attrib V47    -0.013664856251309827
#>     Attrib V48    0.13232000978011424
#>     Attrib V49    0.2625403074844354
#>     Attrib V5    -0.1541001308652928
#>     Attrib V50    -0.2590265755816218
#>     Attrib V51    -0.10586437835274737
#>     Attrib V52    0.2216831664896166
#>     Attrib V53    -0.15370950991532292
#>     Attrib V54    0.05139901579060543
#>     Attrib V55    0.31084171242131037
#>     Attrib V56    0.37502409156930616
#>     Attrib V57    -0.07840464335074582
#>     Attrib V58    0.28459402360335323
#>     Attrib V59    0.27079529288186144
#>     Attrib V6    -0.4435428241432054
#>     Attrib V60    0.04965501141222999
#>     Attrib V7    -0.06560166969754096
#>     Attrib V8    -0.06284011824197903
#>     Attrib V9    -0.11214703271859018
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.17133678609819022
#>     Attrib V1    -0.05460001012400848
#>     Attrib V10    0.19846125243994386
#>     Attrib V11    0.07582233183434647
#>     Attrib V12    -0.004551711262799812
#>     Attrib V13    0.11068275368529479
#>     Attrib V14    0.12397133013223201
#>     Attrib V15    -0.03607482784624493
#>     Attrib V16    0.02342097338978581
#>     Attrib V17    0.14324305201662413
#>     Attrib V18    0.23354006628631968
#>     Attrib V19    0.055452614827449884
#>     Attrib V2    -0.015576017415241849
#>     Attrib V20    0.044357852255913134
#>     Attrib V21    0.06686467677925097
#>     Attrib V22    -0.007352421165293052
#>     Attrib V23    -0.06392089981471605
#>     Attrib V24    -0.16338770334024363
#>     Attrib V25    -0.0037681811981932363
#>     Attrib V26    0.051482565458468604
#>     Attrib V27    0.035620765379029244
#>     Attrib V28    -0.15221635200752087
#>     Attrib V29    -0.1322060375909857
#>     Attrib V3    0.15675044951485428
#>     Attrib V30    -0.062148301160282554
#>     Attrib V31    0.11936605242557738
#>     Attrib V32    -0.1068525091628749
#>     Attrib V33    0.08582939193647522
#>     Attrib V34    0.14989042430775598
#>     Attrib V35    -0.004958263270952075
#>     Attrib V36    0.2469766978316686
#>     Attrib V37    0.16448238902003864
#>     Attrib V38    5.223958371847995E-4
#>     Attrib V39    0.030783327934501035
#>     Attrib V4    0.13343472803228087
#>     Attrib V40    0.08761874239132998
#>     Attrib V41    0.04369532839231796
#>     Attrib V42    -0.00349097880268961
#>     Attrib V43    -0.023580160884975936
#>     Attrib V44    -0.027302884512428877
#>     Attrib V45    -0.16865525647943275
#>     Attrib V46    -0.11717517639797013
#>     Attrib V47    0.02293603600679291
#>     Attrib V48    -0.00292298004521046
#>     Attrib V49    -0.03810281932138117
#>     Attrib V5    0.1881017775662694
#>     Attrib V50    0.06092645699494172
#>     Attrib V51    0.11772271099199459
#>     Attrib V52    -0.09374867842769094
#>     Attrib V53    -0.02736120331201514
#>     Attrib V54    -0.029401505139272366
#>     Attrib V55    -0.021744251794272994
#>     Attrib V56    -0.012774050510221806
#>     Attrib V57    0.13097737381291377
#>     Attrib V58    -0.03461492400513476
#>     Attrib V59    0.027801704190613608
#>     Attrib V6    0.24769162513708445
#>     Attrib V60    0.05362338747361749
#>     Attrib V7    0.17120547015101234
#>     Attrib V8    0.20495333813650643
#>     Attrib V9    0.1457533508247952
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.34674504021029734
#>     Attrib V1    0.16433562692304948
#>     Attrib V10    0.12680914118457504
#>     Attrib V11    0.5461900145488268
#>     Attrib V12    0.9321193596416193
#>     Attrib V13    0.1384060145418539
#>     Attrib V14    -0.42683248989059647
#>     Attrib V15    0.0406591425132256
#>     Attrib V16    -0.04346075456287649
#>     Attrib V17    -0.4630962030864964
#>     Attrib V18    -0.38991812769730855
#>     Attrib V19    -0.11762352014681078
#>     Attrib V2    0.19621484436412154
#>     Attrib V20    -0.0204008296541965
#>     Attrib V21    0.09397588445521025
#>     Attrib V22    0.24600403976213517
#>     Attrib V23    0.43880470814029393
#>     Attrib V24    0.6599438677377794
#>     Attrib V25    0.13912768936563186
#>     Attrib V26    0.1385168237531119
#>     Attrib V27    0.22536130790480227
#>     Attrib V28    0.7174486967554354
#>     Attrib V29    0.13705343694032832
#>     Attrib V3    -0.12250442097204294
#>     Attrib V30    -0.2261012784338219
#>     Attrib V31    -0.7522156280884853
#>     Attrib V32    0.2249548980095846
#>     Attrib V33    -0.40856098154202997
#>     Attrib V34    -0.20877556962473792
#>     Attrib V35    0.46501092205025674
#>     Attrib V36    -0.4612042443708163
#>     Attrib V37    -0.36345309859825026
#>     Attrib V38    -3.230783871778854E-4
#>     Attrib V39    0.19845020074477562
#>     Attrib V4    -0.27145938893786836
#>     Attrib V40    0.24036540994467182
#>     Attrib V41    0.4029227538706762
#>     Attrib V42    0.08550904769098644
#>     Attrib V43    0.17420989176270363
#>     Attrib V44    0.34496953321177837
#>     Attrib V45    0.7080429885184867
#>     Attrib V46    0.7914997607928238
#>     Attrib V47    0.3375112161688623
#>     Attrib V48    0.23782796682447632
#>     Attrib V49    0.6012725653813132
#>     Attrib V5    0.0045242383201211855
#>     Attrib V50    -0.33510597495337674
#>     Attrib V51    -0.16063230314929908
#>     Attrib V52    0.6248324587025369
#>     Attrib V53    0.2737343610647782
#>     Attrib V54    -0.18562113628279303
#>     Attrib V55    0.08388503159354256
#>     Attrib V56    -0.04196720581076708
#>     Attrib V57    -0.567179314881963
#>     Attrib V58    0.3854973595759813
#>     Attrib V59    0.06677720171714507
#>     Attrib V6    -0.40921275771123233
#>     Attrib V60    0.12448062823743841
#>     Attrib V7    -0.16399576023548917
#>     Attrib V8    -0.3108877196452078
#>     Attrib V9    0.15231907055103275
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.19507822563370958
#>     Attrib V1    0.20987620425958578
#>     Attrib V10    -0.11611101636893922
#>     Attrib V11    0.19407939908128963
#>     Attrib V12    0.39097366327893285
#>     Attrib V13    -0.11642045301856078
#>     Attrib V14    -0.3921347449521648
#>     Attrib V15    0.14329788649035677
#>     Attrib V16    0.24916194503014122
#>     Attrib V17    -0.158570389446898
#>     Attrib V18    -0.20165820340072352
#>     Attrib V19    0.05517755242921555
#>     Attrib V2    0.16996618672747588
#>     Attrib V20    0.24975264908127487
#>     Attrib V21    0.3360310595943702
#>     Attrib V22    0.4252902887210242
#>     Attrib V23    0.5031920875517947
#>     Attrib V24    0.5099835886674097
#>     Attrib V25    -0.1273904789499462
#>     Attrib V26    -0.34578262494226625
#>     Attrib V27    -0.24132775966920803
#>     Attrib V28    0.5046051926958948
#>     Attrib V29    0.21044387425902183
#>     Attrib V3    -0.2293864956358121
#>     Attrib V30    0.07171026392219736
#>     Attrib V31    -0.5854985445395549
#>     Attrib V32    0.38211027683532345
#>     Attrib V33    -0.18220843658729502
#>     Attrib V34    -0.25228090095396966
#>     Attrib V35    0.33586491570709376
#>     Attrib V36    -0.3069214821046408
#>     Attrib V37    -0.3207588274396787
#>     Attrib V38    0.20649287449635959
#>     Attrib V39    0.21437002065979122
#>     Attrib V4    -0.24421478108576042
#>     Attrib V40    -0.017081895136828392
#>     Attrib V41    0.12867942678612673
#>     Attrib V42    0.04106098883299994
#>     Attrib V43    0.24969257567957878
#>     Attrib V44    0.6296972573720087
#>     Attrib V45    0.7299277021997329
#>     Attrib V46    0.5151212624587368
#>     Attrib V47    0.0878374677094591
#>     Attrib V48    0.12684582099889902
#>     Attrib V49    0.4467057225719298
#>     Attrib V5    -0.08618915500126646
#>     Attrib V50    -0.39233356416990506
#>     Attrib V51    -0.12576941740297803
#>     Attrib V52    0.4696854396102923
#>     Attrib V53    -0.10595187962674053
#>     Attrib V54    -0.09776094495412063
#>     Attrib V55    0.19526801199780355
#>     Attrib V56    0.2535844360221439
#>     Attrib V57    -0.486199324887014
#>     Attrib V58    0.32679147789886814
#>     Attrib V59    0.27525216595610064
#>     Attrib V6    -0.522393387765846
#>     Attrib V60    0.032744651487620346
#>     Attrib V7    -0.07742941946296783
#>     Attrib V8    -0.30165588511087515
#>     Attrib V9    0.013895439828373218
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.5400349360609136
#>     Attrib V1    -0.2612270834111521
#>     Attrib V10    -0.2651097450916801
#>     Attrib V11    -0.8275338793803684
#>     Attrib V12    -1.1623795881532732
#>     Attrib V13    -0.043897556597311135
#>     Attrib V14    0.6712181074593683
#>     Attrib V15    -0.28267539954157356
#>     Attrib V16    -0.44626397612446594
#>     Attrib V17    0.42832033585343054
#>     Attrib V18    0.7054712573320607
#>     Attrib V19    0.15559223233662442
#>     Attrib V2    -0.0766759309098316
#>     Attrib V20    -0.29452360845813386
#>     Attrib V21    -0.23057102136133006
#>     Attrib V22    -0.40413101207113467
#>     Attrib V23    -0.5707260933210248
#>     Attrib V24    -0.583677489170629
#>     Attrib V25    0.5799766598786236
#>     Attrib V26    0.7532813125244644
#>     Attrib V27    0.5035878504571014
#>     Attrib V28    -0.6723267029683423
#>     Attrib V29    0.36478748444668985
#>     Attrib V3    0.37561046059212133
#>     Attrib V30    0.4518790625531559
#>     Attrib V31    1.1580208196903752
#>     Attrib V32    -0.670519755087329
#>     Attrib V33    0.3144674695246127
#>     Attrib V34    0.47266794985592603
#>     Attrib V35    -0.060062145445033945
#>     Attrib V36    1.2456266773511855
#>     Attrib V37    1.3354715756764741
#>     Attrib V38    2.734366440386159E-4
#>     Attrib V39    -0.36597296233830673
#>     Attrib V4    0.4490844002254649
#>     Attrib V40    -0.04376429613636509
#>     Attrib V41    -0.3076979152156257
#>     Attrib V42    -0.12466707138052667
#>     Attrib V43    -0.16779872924453607
#>     Attrib V44    -0.41482949239073047
#>     Attrib V45    -0.8545414149104754
#>     Attrib V46    -0.6685499898328207
#>     Attrib V47    0.014465969361760436
#>     Attrib V48    -0.015127607352981114
#>     Attrib V49    -0.7027407794205416
#>     Attrib V5    0.09282783199747886
#>     Attrib V50    0.8173980581018269
#>     Attrib V51    0.2767835333384554
#>     Attrib V52    -0.6950897469579427
#>     Attrib V53    0.15460700422084023
#>     Attrib V54    0.35453933577282504
#>     Attrib V55    -0.0781942909849491
#>     Attrib V56    0.023181534296437573
#>     Attrib V57    0.42331966003103916
#>     Attrib V58    -0.5910408265402533
#>     Attrib V59    -0.3958060457924775
#>     Attrib V6    0.626145447555225
#>     Attrib V60    0.056829526966072665
#>     Attrib V7    -0.11247595465230219
#>     Attrib V8    -0.12140521322016967
#>     Attrib V9    -0.2515533489464349
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.040251912432410226
#>     Attrib V1    0.2757382827544864
#>     Attrib V10    -0.28715952599259015
#>     Attrib V11    -0.0882012992723635
#>     Attrib V12    -0.08661162938884082
#>     Attrib V13    -0.28996159724357345
#>     Attrib V14    -0.18949775916907272
#>     Attrib V15    0.20993410679553373
#>     Attrib V16    0.3857773870530238
#>     Attrib V17    0.04837490706312855
#>     Attrib V18    -0.09909652872457325
#>     Attrib V19    0.015984740338751094
#>     Attrib V2    0.20471867198424748
#>     Attrib V20    0.21158024701355654
#>     Attrib V21    0.17484368697329905
#>     Attrib V22    0.13434372124012073
#>     Attrib V23    0.08220422720754593
#>     Attrib V24    0.15930975876789064
#>     Attrib V25    -0.32797581409028964
#>     Attrib V26    -0.675935989395677
#>     Attrib V27    -0.6337950727482858
#>     Attrib V28    -0.05918926351480303
#>     Attrib V29    -0.11140373858829256
#>     Attrib V3    -0.10247794910355673
#>     Attrib V30    -0.014927467420046006
#>     Attrib V31    -0.22370412982986407
#>     Attrib V32    0.39363543437000303
#>     Attrib V33    0.03802362099275722
#>     Attrib V34    -0.12091958295248931
#>     Attrib V35    0.0660191704331296
#>     Attrib V36    -0.34572558437214723
#>     Attrib V37    -0.39815431480844365
#>     Attrib V38    0.06618941880512104
#>     Attrib V39    0.1320264079958786
#>     Attrib V4    -0.040412227265100985
#>     Attrib V40    -0.10002156005793776
#>     Attrib V41    -0.19525277692229032
#>     Attrib V42    0.060833473356167185
#>     Attrib V43    0.1533426827109291
#>     Attrib V44    0.2982220723527792
#>     Attrib V45    0.36967957284729464
#>     Attrib V46    0.25598212986347496
#>     Attrib V47    -0.03243181838705267
#>     Attrib V48    0.09394787392105415
#>     Attrib V49    0.2614456022087924
#>     Attrib V5    -0.10548854173590705
#>     Attrib V50    -0.2367319019453098
#>     Attrib V51    -0.11796655019580761
#>     Attrib V52    0.2243090184911024
#>     Attrib V53    -0.11983790462820666
#>     Attrib V54    0.10651685130228643
#>     Attrib V55    0.2914744672071663
#>     Attrib V56    0.3489286386283268
#>     Attrib V57    -0.08169640722890414
#>     Attrib V58    0.34022686883250136
#>     Attrib V59    0.2838917555975832
#>     Attrib V6    -0.3788096941795217
#>     Attrib V60    0.07800973823821583
#>     Attrib V7    -0.01827172169144925
#>     Attrib V8    -0.1403535172403159
#>     Attrib V9    -0.10931683981522562
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.002954922908892728
#>     Attrib V1    0.19840978414890936
#>     Attrib V10    -0.29984858370188433
#>     Attrib V11    -0.012640733234811201
#>     Attrib V12    0.04438681283969579
#>     Attrib V13    -0.21699643949858616
#>     Attrib V14    -0.23470755310127497
#>     Attrib V15    0.15872943277700727
#>     Attrib V16    0.24473285011796897
#>     Attrib V17    0.060826572588427615
#>     Attrib V18    -0.08098511351903472
#>     Attrib V19    0.034421191545234625
#>     Attrib V2    0.11873341944313051
#>     Attrib V20    0.15181049760047322
#>     Attrib V21    0.1440886069610738
#>     Attrib V22    0.1812073464596872
#>     Attrib V23    0.20292346927963406
#>     Attrib V24    0.1876524744361361
#>     Attrib V25    -0.18735516997383872
#>     Attrib V26    -0.4764394249206888
#>     Attrib V27    -0.5386234318143598
#>     Attrib V28    -0.011442751678973104
#>     Attrib V29    -0.1689254121064877
#>     Attrib V3    -0.06404067893106333
#>     Attrib V30    -0.02398866846490928
#>     Attrib V31    -0.2955668136824539
#>     Attrib V32    0.37520751874907843
#>     Attrib V33    0.05097838710786791
#>     Attrib V34    -0.09564207881146937
#>     Attrib V35    0.19425708329063285
#>     Attrib V36    -0.2658603410328421
#>     Attrib V37    -0.30398860166933217
#>     Attrib V38    0.09751445988787523
#>     Attrib V39    0.14928650090976328
#>     Attrib V4    -0.032840317599975
#>     Attrib V40    -0.12995051205914762
#>     Attrib V41    -0.14417644854271197
#>     Attrib V42    0.04909558574814627
#>     Attrib V43    0.16994938552191627
#>     Attrib V44    0.33141201753251304
#>     Attrib V45    0.4677091391440315
#>     Attrib V46    0.2649873179449705
#>     Attrib V47    0.059784383279589105
#>     Attrib V48    0.03676086882365116
#>     Attrib V49    0.23786793550932012
#>     Attrib V5    -0.12027967169185275
#>     Attrib V50    -0.27875015356030886
#>     Attrib V51    -0.1345343516627146
#>     Attrib V52    0.2741761452118975
#>     Attrib V53    -0.06582025077530991
#>     Attrib V54    0.0454115518927076
#>     Attrib V55    0.23934925760566608
#>     Attrib V56    0.3372237501400502
#>     Attrib V57    -0.17574681133783257
#>     Attrib V58    0.265574335903608
#>     Attrib V59    0.28434088698449383
#>     Attrib V6    -0.38552112653773496
#>     Attrib V60    -0.005651266070476119
#>     Attrib V7    -0.04222004894654132
#>     Attrib V8    -0.14466906391032192
#>     Attrib V9    -0.09583018027676034
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.37966955820888815
#>     Attrib V1    -0.21038239854432594
#>     Attrib V10    -0.16434438725330636
#>     Attrib V11    -0.5941355028993309
#>     Attrib V12    -0.8466445928078398
#>     Attrib V13    -0.023522419554540774
#>     Attrib V14    0.5083279423333747
#>     Attrib V15    -0.17143928323412339
#>     Attrib V16    -0.3388338828006623
#>     Attrib V17    0.3847158146061519
#>     Attrib V18    0.5049322711408895
#>     Attrib V19    0.11012564577180649
#>     Attrib V2    -0.09718310569230705
#>     Attrib V20    -0.23514281210342342
#>     Attrib V21    -0.2340698154774595
#>     Attrib V22    -0.3423099222620292
#>     Attrib V23    -0.4204524866790133
#>     Attrib V24    -0.4901620849036369
#>     Attrib V25    0.43167066456577896
#>     Attrib V26    0.5915354116319089
#>     Attrib V27    0.38783814789183846
#>     Attrib V28    -0.4335903145281836
#>     Attrib V29    0.1852640895341155
#>     Attrib V3    0.2677455107001266
#>     Attrib V30    0.311843462153549
#>     Attrib V31    0.8985491753309806
#>     Attrib V32    -0.40569876900751506
#>     Attrib V33    0.2359668573191743
#>     Attrib V34    0.327131203578937
#>     Attrib V35    -0.11452361065785734
#>     Attrib V36    0.907003046310924
#>     Attrib V37    0.8706401342872657
#>     Attrib V38    -0.01833933127601671
#>     Attrib V39    -0.30317814982388264
#>     Attrib V4    0.33768611661942083
#>     Attrib V40    -0.004176552903171026
#>     Attrib V41    -0.20336303656924107
#>     Attrib V42    -0.05664721996559654
#>     Attrib V43    -0.10748205022413605
#>     Attrib V44    -0.3706814721106716
#>     Attrib V45    -0.722138839863359
#>     Attrib V46    -0.5573327098294054
#>     Attrib V47    0.016487911850632336
#>     Attrib V48    -0.021482316881434982
#>     Attrib V49    -0.5183546944076325
#>     Attrib V5    0.04481948987397223
#>     Attrib V50    0.6226060292638947
#>     Attrib V51    0.2058474955796913
#>     Attrib V52    -0.5314103309273313
#>     Attrib V53    0.027650772926917075
#>     Attrib V54    0.2861515056831066
#>     Attrib V55    -0.07320043366825832
#>     Attrib V56    0.04555375748980708
#>     Attrib V57    0.381129357966169
#>     Attrib V58    -0.4400049111889129
#>     Attrib V59    -0.29029582635663814
#>     Attrib V6    0.5418991324353378
#>     Attrib V60    0.015768990943504643
#>     Attrib V7    -0.08324695687255432
#>     Attrib V8    0.006424426426915158
#>     Attrib V9    -0.1223786661523241
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.5527954471260607
#>     Attrib V1    0.3223681130843555
#>     Attrib V10    0.808049904333563
#>     Attrib V11    1.2789031622532239
#>     Attrib V12    2.116064917912438
#>     Attrib V13    1.0517849213581678
#>     Attrib V14    -0.1348713668102675
#>     Attrib V15    -0.13506092450566903
#>     Attrib V16    -0.7445301787521663
#>     Attrib V17    -1.0912993330373666
#>     Attrib V18    -0.4443314713083393
#>     Attrib V19    -0.30903858589641897
#>     Attrib V2    0.5821526570369738
#>     Attrib V20    -0.25111626982615276
#>     Attrib V21    0.26633720513664316
#>     Attrib V22    0.5354307812390132
#>     Attrib V23    0.8605338133145193
#>     Attrib V24    0.6925001242735834
#>     Attrib V25    -0.003231894941160136
#>     Attrib V26    1.1096114259850356
#>     Attrib V27    1.359815527361765
#>     Attrib V28    1.5519213229316975
#>     Attrib V29    1.4784259941966114
#>     Attrib V3    0.3801319395536955
#>     Attrib V30    -0.03070085332598836
#>     Attrib V31    -1.157493989121709
#>     Attrib V32    -0.15427303550471866
#>     Attrib V33    -1.393669568586681
#>     Attrib V34    -0.6525662087279223
#>     Attrib V35    0.3140178559570637
#>     Attrib V36    -0.9332732293404349
#>     Attrib V37    -0.13216956139703284
#>     Attrib V38    -0.3413020247122665
#>     Attrib V39    0.29895053051047255
#>     Attrib V4    -0.28604577841638484
#>     Attrib V40    0.5004675625327535
#>     Attrib V41    1.4845475786235764
#>     Attrib V42    0.1218645360152172
#>     Attrib V43    0.08811307863272774
#>     Attrib V44    -0.04370908454763708
#>     Attrib V45    0.38027873236986665
#>     Attrib V46    1.1257058485774563
#>     Attrib V47    0.8350828265696171
#>     Attrib V48    0.4198824382895248
#>     Attrib V49    0.9682146615770015
#>     Attrib V5    0.4964680527749722
#>     Attrib V50    0.2411113422288127
#>     Attrib V51    0.5577141893140309
#>     Attrib V52    1.5441672628639085
#>     Attrib V53    1.3881038035892912
#>     Attrib V54    -0.576898116702592
#>     Attrib V55    -0.5018532189019069
#>     Attrib V56    -0.4191534183308346
#>     Attrib V57    -0.9582268176009477
#>     Attrib V58    0.4642878152112989
#>     Attrib V59    -0.15038991444577973
#>     Attrib V6    0.4289565780053761
#>     Attrib V60    0.18748769771684834
#>     Attrib V7    -0.3631360722706153
#>     Attrib V8    -0.7539927939363796
#>     Attrib V9    0.517917800790646
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.21726411640787718
#>     Attrib V1    -0.19166197331425586
#>     Attrib V10    0.11071397938483038
#>     Attrib V11    -0.17861160406324392
#>     Attrib V12    -0.2917076782635291
#>     Attrib V13    0.11128232741776903
#>     Attrib V14    0.35495949396141174
#>     Attrib V15    -0.17510883156760745
#>     Attrib V16    -0.19058879844718726
#>     Attrib V17    0.25640922735870714
#>     Attrib V18    0.27942938625663455
#>     Attrib V19    0.1410800359112032
#>     Attrib V2    -0.12040144981495095
#>     Attrib V20    -0.05098549444392225
#>     Attrib V21    -0.02078133319798087
#>     Attrib V22    -0.11113480762393176
#>     Attrib V23    -0.2114242002257089
#>     Attrib V24    -0.2777188719713619
#>     Attrib V25    0.2594747338096017
#>     Attrib V26    0.3524454599015922
#>     Attrib V27    0.3403326800010761
#>     Attrib V28    -0.1961163179558221
#>     Attrib V29    0.0018460988268582292
#>     Attrib V3    0.10800810643722197
#>     Attrib V30    0.09764665812783173
#>     Attrib V31    0.4182473573781865
#>     Attrib V32    -0.42170495070909164
#>     Attrib V33    0.10337954275395979
#>     Attrib V34    0.09651503123922288
#>     Attrib V35    -0.10667287406079502
#>     Attrib V36    0.507732149616248
#>     Attrib V37    0.4733354629808132
#>     Attrib V38    -0.05149432715466874
#>     Attrib V39    -0.15037001653279766
#>     Attrib V4    0.260092724120191
#>     Attrib V40    0.00997569826907326
#>     Attrib V41    -0.1212213417088616
#>     Attrib V42    -0.06732651899433481
#>     Attrib V43    -0.10738890465424974
#>     Attrib V44    -0.2306176922234112
#>     Attrib V45    -0.44426492164060905
#>     Attrib V46    -0.43441916391769
#>     Attrib V47    -0.12899243206021963
#>     Attrib V48    -0.038608622580680194
#>     Attrib V49    -0.3264747713557158
#>     Attrib V5    0.10153539043368352
#>     Attrib V50    0.3113440235857319
#>     Attrib V51    0.04657253339256974
#>     Attrib V52    -0.382687228499607
#>     Attrib V53    -0.01860723457911053
#>     Attrib V54    0.17597418448954913
#>     Attrib V55    -0.08958874703520729
#>     Attrib V56    -0.10362057454709804
#>     Attrib V57    0.31283046569636364
#>     Attrib V58    -0.2686003097623651
#>     Attrib V59    -0.09755539019669449
#>     Attrib V6    0.40422561022255715
#>     Attrib V60    0.06655253396771176
#>     Attrib V7    0.06144116288587209
#>     Attrib V8    0.20617164906899213
#>     Attrib V9    0.026948581225326635
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.35052973857181224
#>     Attrib V1    0.2654498388034924
#>     Attrib V10    0.14473086870549415
#>     Attrib V11    0.512918230103766
#>     Attrib V12    0.7455913686984375
#>     Attrib V13    0.0993361462698697
#>     Attrib V14    -0.46696296007497584
#>     Attrib V15    0.01810680152605569
#>     Attrib V16    0.01313159582613423
#>     Attrib V17    -0.44396313259066694
#>     Attrib V18    -0.3156971293925378
#>     Attrib V19    -0.1441352795303697
#>     Attrib V2    0.18655987367780008
#>     Attrib V20    -0.02394126070784222
#>     Attrib V21    0.17093534490850681
#>     Attrib V22    0.24532327189425462
#>     Attrib V23    0.3886992684498822
#>     Attrib V24    0.5914540630199081
#>     Attrib V25    0.05232563560616807
#>     Attrib V26    0.11524395635714299
#>     Attrib V27    0.12357140312792345
#>     Attrib V28    0.6328624802887317
#>     Attrib V29    0.19019596627876414
#>     Attrib V3    -0.13595525676674305
#>     Attrib V30    -0.13659279129848265
#>     Attrib V31    -0.6855543197787756
#>     Attrib V32    0.2558393061611088
#>     Attrib V33    -0.4040227113442056
#>     Attrib V34    -0.19926380127201243
#>     Attrib V35    0.3776111309080394
#>     Attrib V36    -0.4248456018256161
#>     Attrib V37    -0.30005798414352775
#>     Attrib V38    0.04948541762081978
#>     Attrib V39    0.23103257917618944
#>     Attrib V4    -0.2744423294803174
#>     Attrib V40    0.09616473708365207
#>     Attrib V41    0.3338008195703869
#>     Attrib V42    0.051003389495492324
#>     Attrib V43    0.14259826942237075
#>     Attrib V44    0.4275554165007777
#>     Attrib V45    0.6853664058539286
#>     Attrib V46    0.6594622133594765
#>     Attrib V47    0.28423657549203984
#>     Attrib V48    0.23061058440882795
#>     Attrib V49    0.47246357522473437
#>     Attrib V5    -0.046193219597026394
#>     Attrib V50    -0.2520298658644025
#>     Attrib V51    -0.12071957881349266
#>     Attrib V52    0.5341470762601224
#>     Attrib V53    0.16249969260465955
#>     Attrib V54    -0.14162601335967126
#>     Attrib V55    0.12404296512194854
#>     Attrib V56    -0.02314099394888177
#>     Attrib V57    -0.48923208630463644
#>     Attrib V58    0.3258310899933387
#>     Attrib V59    0.11688640680322755
#>     Attrib V6    -0.39832020205416296
#>     Attrib V60    0.11283925833625455
#>     Attrib V7    -0.2073734587450081
#>     Attrib V8    -0.24821244934926523
#>     Attrib V9    0.16776584539894476
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.43793197814713847
#>     Attrib V1    -0.1567122568887549
#>     Attrib V10    -0.5855199785171699
#>     Attrib V11    -1.0615944724833208
#>     Attrib V12    -1.7596310795972068
#>     Attrib V13    -0.5402269730694902
#>     Attrib V14    0.5282532831845752
#>     Attrib V15    0.22501585809112612
#>     Attrib V16    0.4674333822696716
#>     Attrib V17    0.7949181643278538
#>     Attrib V18    0.48234879300793154
#>     Attrib V19    0.1852204101209846
#>     Attrib V2    -0.31808286726456747
#>     Attrib V20    0.17405129772416808
#>     Attrib V21    -0.021630843453562743
#>     Attrib V22    -0.32815057320126145
#>     Attrib V23    -0.8752762751378054
#>     Attrib V24    -1.1144648495451237
#>     Attrib V25    -0.4437267355337287
#>     Attrib V26    -0.7054087567051341
#>     Attrib V27    -0.644692268428782
#>     Attrib V28    -0.7985435195310628
#>     Attrib V29    -0.1237994790524381
#>     Attrib V3    -0.059635994568631404
#>     Attrib V30    0.5027686438426571
#>     Attrib V31    1.0003840451963646
#>     Attrib V32    -0.15628310095093847
#>     Attrib V33    0.8048335689861963
#>     Attrib V34    0.23012082767735692
#>     Attrib V35    -0.5888640084454847
#>     Attrib V36    0.8157072055861743
#>     Attrib V37    0.4410602642571506
#>     Attrib V38    0.19835122648939055
#>     Attrib V39    -0.17153228350953467
#>     Attrib V4    0.45374337437523693
#>     Attrib V40    -0.505981270566007
#>     Attrib V41    -0.9695280050397004
#>     Attrib V42    -0.12405777618932093
#>     Attrib V43    -0.25064955763753616
#>     Attrib V44    -0.18016355763895717
#>     Attrib V45    -0.609125973315788
#>     Attrib V46    -1.1545251062431696
#>     Attrib V47    -0.8284046867556325
#>     Attrib V48    -0.550624841223013
#>     Attrib V49    -0.8860642523663599
#>     Attrib V5    -0.20362048107207711
#>     Attrib V50    0.1407622659008702
#>     Attrib V51    -0.2226007291926557
#>     Attrib V52    -1.1294623226721017
#>     Attrib V53    -0.8790721292898293
#>     Attrib V54    0.6643074357955142
#>     Attrib V55    0.2932261900122097
#>     Attrib V56    0.15629736566283656
#>     Attrib V57    0.8798713158967013
#>     Attrib V58    -0.417548737439246
#>     Attrib V59    0.13710222561830387
#>     Attrib V6    0.1750606279729428
#>     Attrib V60    -0.07198489020200753
#>     Attrib V7    0.31114253575416634
#>     Attrib V8    0.637394095450901
#>     Attrib V9    -0.3498098971406287
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.07866978600203267
#>     Attrib V1    0.14891798562749964
#>     Attrib V10    -0.26598885995138694
#>     Attrib V11    0.1229183842224415
#>     Attrib V12    0.20271601135567355
#>     Attrib V13    -0.28662613258366765
#>     Attrib V14    -0.41629421413186896
#>     Attrib V15    0.18467529411912315
#>     Attrib V16    0.38074211141779096
#>     Attrib V17    -0.06570839424069748
#>     Attrib V18    -0.22360288719624122
#>     Attrib V19    -0.04542970663139226
#>     Attrib V2    0.13661930256527405
#>     Attrib V20    0.2250439279163561
#>     Attrib V21    0.24603254846981626
#>     Attrib V22    0.35130121192169145
#>     Attrib V23    0.32297039455424237
#>     Attrib V24    0.42721756185107995
#>     Attrib V25    -0.20101846049790117
#>     Attrib V26    -0.7001670702507632
#>     Attrib V27    -0.6246605765406411
#>     Attrib V28    0.24323722256888694
#>     Attrib V29    -0.07558417307307295
#>     Attrib V3    -0.1816083085628915
#>     Attrib V30    -0.0735744428883614
#>     Attrib V31    -0.49077067007308295
#>     Attrib V32    0.6305844519077057
#>     Attrib V33    0.02867260146590017
#>     Attrib V34    -0.15786020546460747
#>     Attrib V35    0.25935448603551053
#>     Attrib V36    -0.4553365598088437
#>     Attrib V37    -0.49534613796668403
#>     Attrib V38    0.15828908063392455
#>     Attrib V39    0.2434900888368331
#>     Attrib V4    -0.23457389547680993
#>     Attrib V40    -0.07425146214885239
#>     Attrib V41    -0.021795128227177732
#>     Attrib V42    0.06905198335950319
#>     Attrib V43    0.2583903931381839
#>     Attrib V44    0.5027054825645858
#>     Attrib V45    0.758012472741707
#>     Attrib V46    0.5016159877651344
#>     Attrib V47    0.11522216177489499
#>     Attrib V48    0.14079808136578184
#>     Attrib V49    0.4257638869211336
#>     Attrib V5    -0.24414338676985467
#>     Attrib V50    -0.393971294906576
#>     Attrib V51    -0.16165656307463025
#>     Attrib V52    0.40491742865327734
#>     Attrib V53    -0.21680673186610633
#>     Attrib V54    -0.12408280592296217
#>     Attrib V55    0.23744147003323507
#>     Attrib V56    0.3363293274183358
#>     Attrib V57    -0.3060043765526347
#>     Attrib V58    0.335261210643616
#>     Attrib V59    0.2418609232398953
#>     Attrib V6    -0.5771929083737383
#>     Attrib V60    -1.434118253664844E-5
#>     Attrib V7    -0.07027544442073752
#>     Attrib V8    -0.16643964817626888
#>     Attrib V9    -0.057405576771132824
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.12532252845855713
#>     Attrib V1    -0.026752164223968256
#>     Attrib V10    0.35039204026500903
#>     Attrib V11    0.1616455198046818
#>     Attrib V12    0.0949320944073513
#>     Attrib V13    0.24816072576315093
#>     Attrib V14    0.18786240254007222
#>     Attrib V15    0.026410235388695358
#>     Attrib V16    0.09166461359118605
#>     Attrib V17    0.3572255188135879
#>     Attrib V18    0.309598087041479
#>     Attrib V19    0.14555327742638244
#>     Attrib V2    -0.017811974600334454
#>     Attrib V20    0.020712886520003734
#>     Attrib V21    0.06060584975208486
#>     Attrib V22    -0.014809736600363494
#>     Attrib V23    -0.1401619758346046
#>     Attrib V24    -0.28705375455294346
#>     Attrib V25    -0.020521636156580078
#>     Attrib V26    0.09422702680812291
#>     Attrib V27    0.03610844627267217
#>     Attrib V28    -0.19351126612020564
#>     Attrib V29    -0.20271944258506658
#>     Attrib V3    0.11869002851671544
#>     Attrib V30    0.012573398459537637
#>     Attrib V31    0.3055652364837038
#>     Attrib V32    -0.1428401098020581
#>     Attrib V33    0.13797089313436586
#>     Attrib V34    0.20076807372600217
#>     Attrib V35    0.05341668941406249
#>     Attrib V36    0.26480565853200494
#>     Attrib V37    0.30938565148833413
#>     Attrib V38    -0.012665287520677906
#>     Attrib V39    0.04890334568299062
#>     Attrib V4    0.24361300793192073
#>     Attrib V40    0.19857257227905745
#>     Attrib V41    0.166420744937286
#>     Attrib V42    0.04507321885234766
#>     Attrib V43    -0.06182816752738227
#>     Attrib V44    -0.14458406976395494
#>     Attrib V45    -0.18569260181399344
#>     Attrib V46    -0.14717893334997226
#>     Attrib V47    -0.053323556349702796
#>     Attrib V48    0.004589139155803211
#>     Attrib V49    -0.10063662974030768
#>     Attrib V5    0.21941629586445313
#>     Attrib V50    0.11621242864366418
#>     Attrib V51    0.052792716663369425
#>     Attrib V52    -0.163754465865806
#>     Attrib V53    -0.10412084286438388
#>     Attrib V54    -0.021222076973416496
#>     Attrib V55    -0.10604517306211592
#>     Attrib V56    -0.04092674439548656
#>     Attrib V57    0.2253340664271237
#>     Attrib V58    -0.04508162947001955
#>     Attrib V59    0.008105978489417225
#>     Attrib V6    0.427065578003318
#>     Attrib V60    0.042891587710704955
#>     Attrib V7    0.16991471911990458
#>     Attrib V8    0.2421267728857107
#>     Attrib V9    0.19972163622636824
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.0922006831663238
#>     Attrib V1    0.2984755354951032
#>     Attrib V10    -0.3955045147075376
#>     Attrib V11    -0.10133983882319192
#>     Attrib V12    -0.19181760952553864
#>     Attrib V13    -0.3491176359842789
#>     Attrib V14    -0.25497548853537466
#>     Attrib V15    0.3353853664173359
#>     Attrib V16    0.5102864764787375
#>     Attrib V17    0.1356370903123447
#>     Attrib V18    -0.08343134032327712
#>     Attrib V19    0.05683446409042247
#>     Attrib V2    0.2788155414566358
#>     Attrib V20    0.3146718796680462
#>     Attrib V21    0.2128001813250608
#>     Attrib V22    0.28018671459313754
#>     Attrib V23    0.23902244370800646
#>     Attrib V24    0.24805977694602505
#>     Attrib V25    -0.36472262049033594
#>     Attrib V26    -0.8259883812094012
#>     Attrib V27    -0.8457273447657154
#>     Attrib V28    -0.04004050824447983
#>     Attrib V29    -0.2353267836530792
#>     Attrib V3    -0.1670308079612434
#>     Attrib V30    -0.01810426606750125
#>     Attrib V31    -0.3386859602956933
#>     Attrib V32    0.5337506838400566
#>     Attrib V33    0.16646026011018358
#>     Attrib V34    -0.12849411442582015
#>     Attrib V35    0.12358114322031039
#>     Attrib V36    -0.44080732908906467
#>     Attrib V37    -0.5345278363655406
#>     Attrib V38    0.18766960815407688
#>     Attrib V39    0.17641034076022788
#>     Attrib V4    -0.04005119090922444
#>     Attrib V40    -0.16633574964204992
#>     Attrib V41    -0.2502218331506152
#>     Attrib V42    0.1082844159067699
#>     Attrib V43    0.19395857511378428
#>     Attrib V44    0.5125954697434544
#>     Attrib V45    0.5909716465476892
#>     Attrib V46    0.31698059762416625
#>     Attrib V47    0.001639444771757727
#>     Attrib V48    0.1090065184302031
#>     Attrib V49    0.34720872748366255
#>     Attrib V5    -0.20160817377650045
#>     Attrib V50    -0.3455827936835685
#>     Attrib V51    -0.16778155993868
#>     Attrib V52    0.27812411712656904
#>     Attrib V53    -0.16416480606770306
#>     Attrib V54    0.17620383787758398
#>     Attrib V55    0.38336545536332034
#>     Attrib V56    0.41344277914402155
#>     Attrib V57    -0.1067099022022137
#>     Attrib V58    0.34579575596142426
#>     Attrib V59    0.3829527900951294
#>     Attrib V6    -0.5414816366646068
#>     Attrib V60    0.05873955138301522
#>     Attrib V7    0.027290219261253995
#>     Attrib V8    -0.07249907193779198
#>     Attrib V9    -0.1037886793793189
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.06801492211006066
#>     Attrib V1    0.2534727347520706
#>     Attrib V10    -0.3438752561011
#>     Attrib V11    -0.09302381494999919
#>     Attrib V12    -0.0971375161896168
#>     Attrib V13    -0.29348461552188027
#>     Attrib V14    -0.1445970181672387
#>     Attrib V15    0.2534187359418857
#>     Attrib V16    0.3565571636855088
#>     Attrib V17    0.024036459297969104
#>     Attrib V18    -0.0220884240464097
#>     Attrib V19    0.014843548967351475
#>     Attrib V2    0.1668928573254644
#>     Attrib V20    0.2256643807256271
#>     Attrib V21    0.22999247239751747
#>     Attrib V22    0.18375776106180494
#>     Attrib V23    0.18341787336048263
#>     Attrib V24    0.12959625451800652
#>     Attrib V25    -0.33003285941548566
#>     Attrib V26    -0.6099035866160266
#>     Attrib V27    -0.5529008503720404
#>     Attrib V28    0.06546140556801114
#>     Attrib V29    -0.07129959091904907
#>     Attrib V3    -0.036660361259764414
#>     Attrib V30    0.04896558894586989
#>     Attrib V31    -0.3307555397646811
#>     Attrib V32    0.3347032436938259
#>     Attrib V33    0.06306343186023475
#>     Attrib V34    -0.1113536567206271
#>     Attrib V35    0.09431499450583898
#>     Attrib V36    -0.2519143381193295
#>     Attrib V37    -0.34832005040568914
#>     Attrib V38    0.0767813501339087
#>     Attrib V39    0.17060435465987497
#>     Attrib V4    -0.06567552815490443
#>     Attrib V40    -0.14133076847574266
#>     Attrib V41    -0.18210181891452365
#>     Attrib V42    0.11170753578302263
#>     Attrib V43    0.07489679578096559
#>     Attrib V44    0.337426735712638
#>     Attrib V45    0.4624288116627702
#>     Attrib V46    0.24738701596403168
#>     Attrib V47    0.007461225849634873
#>     Attrib V48    0.02686958984213101
#>     Attrib V49    0.27188170187696287
#>     Attrib V5    -0.1067284807968615
#>     Attrib V50    -0.24475629994010872
#>     Attrib V51    -0.07377879765614648
#>     Attrib V52    0.25561187505062255
#>     Attrib V53    -0.07792976762856046
#>     Attrib V54    0.036051915805653444
#>     Attrib V55    0.21568539945985665
#>     Attrib V56    0.30429334462261665
#>     Attrib V57    -0.11988115710526794
#>     Attrib V58    0.33798719773788877
#>     Attrib V59    0.2589730990427131
#>     Attrib V6    -0.34844160128199647
#>     Attrib V60    0.0343648965343663
#>     Attrib V7    -0.019055653610488398
#>     Attrib V8    -0.07144695323061498
#>     Attrib V9    -0.09092960068709463
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
#>  0.2898551 
```
