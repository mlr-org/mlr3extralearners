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
#>     Threshold    -0.5575374477030302
#>     Node 2    2.7715375788676577
#>     Node 3    2.299298998073693
#>     Node 4    1.1334828197096634
#>     Node 5    -1.72030633919547
#>     Node 6    1.4287865052936957
#>     Node 7    2.2845317342787963
#>     Node 8    0.38839603776311094
#>     Node 9    2.10533106050594
#>     Node 10    -0.9665799816326174
#>     Node 11    1.6991795413151665
#>     Node 12    1.8357173832515468
#>     Node 13    0.34036787730234
#>     Node 14    2.03681730403977
#>     Node 15    -3.4729544783592563
#>     Node 16    -0.3324996246356527
#>     Node 17    -0.5184087753209604
#>     Node 18    -0.7803402271735805
#>     Node 19    1.4354003932494839
#>     Node 20    2.6192441043430352
#>     Node 21    -1.7332619064610053
#>     Node 22    1.92641301137422
#>     Node 23    1.9328395934933855
#>     Node 24    -0.5907627662871562
#>     Node 25    4.108622378526593
#>     Node 26    -0.409021452818389
#>     Node 27    1.7106991461830878
#>     Node 28    -3.8786230384203884
#>     Node 29    0.9716289849249841
#>     Node 30    -0.07049606930484792
#>     Node 31    0.7785149092808086
#>     Node 32    0.9480084584565036
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.5886655066668501
#>     Node 2    -2.807827295386817
#>     Node 3    -2.270495043394721
#>     Node 4    -1.0888263708807702
#>     Node 5    1.714566659687369
#>     Node 6    -1.402274623687474
#>     Node 7    -2.2762662594081235
#>     Node 8    -0.42396156597049256
#>     Node 9    -2.097262847952364
#>     Node 10    0.8979691090906963
#>     Node 11    -1.6568528989975626
#>     Node 12    -1.904505200851111
#>     Node 13    -0.2891848068788449
#>     Node 14    -1.9627315977170796
#>     Node 15    3.472357364831811
#>     Node 16    0.3146476269883739
#>     Node 17    0.5522772820475825
#>     Node 18    0.8169385983881787
#>     Node 19    -1.4277292246626645
#>     Node 20    -2.622398590217801
#>     Node 21    1.768958890268207
#>     Node 22    -1.973702181438243
#>     Node 23    -1.972501161758192
#>     Node 24    0.5750618189346571
#>     Node 25    -4.115376671722485
#>     Node 26    0.3243415782231239
#>     Node 27    -1.7532536175945463
#>     Node 28    3.8516793569537646
#>     Node 29    -1.0041519572642978
#>     Node 30    0.14446287674881966
#>     Node 31    -0.7237929826972209
#>     Node 32    -0.9640905282477945
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.38141806330595274
#>     Attrib V1    0.852138717205752
#>     Attrib V10    -0.5079186706677997
#>     Attrib V11    -0.41991508687162615
#>     Attrib V12    -0.4603492048491884
#>     Attrib V13    -0.2861942301555653
#>     Attrib V14    0.18722321200244232
#>     Attrib V15    0.42593662173512403
#>     Attrib V16    0.4118116838125152
#>     Attrib V17    0.2377788675045773
#>     Attrib V18    0.03905582300101201
#>     Attrib V19    0.13394753774613616
#>     Attrib V2    0.355477748670782
#>     Attrib V20    0.9937548212788007
#>     Attrib V21    1.1464438833280168
#>     Attrib V22    0.5827485822121784
#>     Attrib V23    -0.05176954824543636
#>     Attrib V24    -0.12760582876247617
#>     Attrib V25    -0.8646975797226188
#>     Attrib V26    -0.9915862307227468
#>     Attrib V27    -1.033701066063787
#>     Attrib V28    -0.661009043592713
#>     Attrib V29    0.013494889362935324
#>     Attrib V3    0.2575737477615965
#>     Attrib V30    0.4947012696908473
#>     Attrib V31    -1.5696566273248573
#>     Attrib V32    0.20152169829598673
#>     Attrib V33    0.32389870578559965
#>     Attrib V34    -0.6359872633722907
#>     Attrib V35    -0.9602939689408926
#>     Attrib V36    -1.1156184112665344
#>     Attrib V37    -0.6948367648380832
#>     Attrib V38    0.1813938580625334
#>     Attrib V39    0.5992637747672278
#>     Attrib V4    0.04819684925101205
#>     Attrib V40    -0.04097053849014625
#>     Attrib V41    -0.1329810305604943
#>     Attrib V42    0.837238807329339
#>     Attrib V43    0.5996718302440156
#>     Attrib V44    1.2667594034884326
#>     Attrib V45    0.4766828508525187
#>     Attrib V46    0.4160459662642833
#>     Attrib V47    -0.12258679886192568
#>     Attrib V48    0.016256355220797422
#>     Attrib V49    0.30065486211985865
#>     Attrib V5    -0.5112243513152568
#>     Attrib V50    -1.058332732077633
#>     Attrib V51    0.2113057422445557
#>     Attrib V52    0.12463635175634828
#>     Attrib V53    0.6234949077763529
#>     Attrib V54    0.590800952348971
#>     Attrib V55    -0.7224713621124715
#>     Attrib V56    1.022492408472182
#>     Attrib V57    -0.2571313922898442
#>     Attrib V58    0.8184412099825266
#>     Attrib V59    0.1072415458915594
#>     Attrib V6    -0.36793803624456184
#>     Attrib V60    0.22177127522679246
#>     Attrib V7    0.09452536689805136
#>     Attrib V8    -0.24961823166747732
#>     Attrib V9    0.16793459440023148
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.25159021623541766
#>     Attrib V1    0.7148967284946012
#>     Attrib V10    -0.4711806317857723
#>     Attrib V11    -0.462721565264373
#>     Attrib V12    -0.38807459872847433
#>     Attrib V13    -0.24106619627736495
#>     Attrib V14    0.13282394298144046
#>     Attrib V15    0.44950107681404455
#>     Attrib V16    0.36386859393928717
#>     Attrib V17    0.18620004988943237
#>     Attrib V18    -0.05865303177341672
#>     Attrib V19    0.14011999720045193
#>     Attrib V2    0.3266067053606686
#>     Attrib V20    0.7602282417661756
#>     Attrib V21    0.8600196991863877
#>     Attrib V22    0.479654597427911
#>     Attrib V23    -0.12131566555826406
#>     Attrib V24    -0.14653219170266635
#>     Attrib V25    -0.736663038337076
#>     Attrib V26    -0.9187198845972182
#>     Attrib V27    -0.9211727324830286
#>     Attrib V28    -0.6230226211583527
#>     Attrib V29    -0.1417082699654036
#>     Attrib V3    0.19095885408550672
#>     Attrib V30    0.3971188265763054
#>     Attrib V31    -1.2070730957602576
#>     Attrib V32    0.20098174938509702
#>     Attrib V33    0.3698572659556894
#>     Attrib V34    -0.4860763388823818
#>     Attrib V35    -0.7660276228957663
#>     Attrib V36    -0.933173488259696
#>     Attrib V37    -0.5596351941508753
#>     Attrib V38    0.09525776136543113
#>     Attrib V39    0.49652762826231056
#>     Attrib V4    0.02651392687591782
#>     Attrib V40    -0.026104522718722264
#>     Attrib V41    -0.10618654603333388
#>     Attrib V42    0.6281029246232768
#>     Attrib V43    0.4145115771742547
#>     Attrib V44    1.002311361477015
#>     Attrib V45    0.3362595792628567
#>     Attrib V46    0.30385745714847756
#>     Attrib V47    -0.12646928495305165
#>     Attrib V48    -0.028185026644586456
#>     Attrib V49    0.223446016837654
#>     Attrib V5    -0.44936712957008695
#>     Attrib V50    -0.8940130815441365
#>     Attrib V51    0.10144546421212357
#>     Attrib V52    0.03816940658364424
#>     Attrib V53    0.40442113449036476
#>     Attrib V54    0.5944124049142283
#>     Attrib V55    -0.5703577697476293
#>     Attrib V56    0.9292167554995817
#>     Attrib V57    -0.09616800743309316
#>     Attrib V58    0.7209584424528916
#>     Attrib V59    0.22761449111226134
#>     Attrib V6    -0.2335210346831359
#>     Attrib V60    0.34131692367630573
#>     Attrib V7    0.09539907175112021
#>     Attrib V8    -0.3063532988749094
#>     Attrib V9    0.07327127038779567
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.15295120107287105
#>     Attrib V1    0.37085423980851584
#>     Attrib V10    -0.2663421974495695
#>     Attrib V11    -0.2275221881895837
#>     Attrib V12    -0.16355772655793352
#>     Attrib V13    -0.13595340793979332
#>     Attrib V14    0.0699918813582507
#>     Attrib V15    0.21583956012872813
#>     Attrib V16    0.15587440177300357
#>     Attrib V17    0.12569452284441102
#>     Attrib V18    0.014945755878194132
#>     Attrib V19    0.0820924976193147
#>     Attrib V2    0.11833786203031686
#>     Attrib V20    0.38551461485405353
#>     Attrib V21    0.4984633374700866
#>     Attrib V22    0.2235079068301008
#>     Attrib V23    -0.08147037297894892
#>     Attrib V24    -0.09066983940146069
#>     Attrib V25    -0.4257563640074097
#>     Attrib V26    -0.5191240301979636
#>     Attrib V27    -0.5727526079545089
#>     Attrib V28    -0.3658913337118734
#>     Attrib V29    -0.06951701066406356
#>     Attrib V3    0.10904413811875241
#>     Attrib V30    0.1581165222442995
#>     Attrib V31    -0.6697426537532016
#>     Attrib V32    0.11710640692870089
#>     Attrib V33    0.20000138169039952
#>     Attrib V34    -0.18829247536645138
#>     Attrib V35    -0.2972837686357616
#>     Attrib V36    -0.42698583468580514
#>     Attrib V37    -0.26255072065125357
#>     Attrib V38    0.04236044409311832
#>     Attrib V39    0.27110927338078583
#>     Attrib V4    0.022912342266135886
#>     Attrib V40    -0.023417581808287746
#>     Attrib V41    -0.07315910535828984
#>     Attrib V42    0.3026999122535507
#>     Attrib V43    0.16214398727749654
#>     Attrib V44    0.5058122384113429
#>     Attrib V45    0.23336020135133126
#>     Attrib V46    0.13815965209652567
#>     Attrib V47    -0.09401658520116622
#>     Attrib V48    0.016057038286152504
#>     Attrib V49    0.14516650427248637
#>     Attrib V5    -0.1749716483460163
#>     Attrib V50    -0.47507399868872785
#>     Attrib V51    0.1337377852177218
#>     Attrib V52    0.01112928101804996
#>     Attrib V53    0.2765254612124701
#>     Attrib V54    0.26636128219619354
#>     Attrib V55    -0.3340508665273533
#>     Attrib V56    0.47696254821228107
#>     Attrib V57    -0.03427910423369785
#>     Attrib V58    0.3429882801900185
#>     Attrib V59    0.1568928883424455
#>     Attrib V6    -0.1474639611629381
#>     Attrib V60    0.26047827850453414
#>     Attrib V7    0.030327090612773777
#>     Attrib V8    -0.2899699887715379
#>     Attrib V9    0.07175411398659685
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.4401938488932319
#>     Attrib V1    -0.2810630537517811
#>     Attrib V10    -0.3271651419581311
#>     Attrib V11    -0.5456963250500088
#>     Attrib V12    -0.5399918410210302
#>     Attrib V13    -0.22037527808909485
#>     Attrib V14    0.20077376483040624
#>     Attrib V15    0.14582636481073016
#>     Attrib V16    0.2726765625992197
#>     Attrib V17    0.10805820788866191
#>     Attrib V18    0.3365252112828673
#>     Attrib V19    0.14270442369954203
#>     Attrib V2    0.4048665729524396
#>     Attrib V20    -0.31787588896492863
#>     Attrib V21    -0.5820596075337142
#>     Attrib V22    -0.46942033869351196
#>     Attrib V23    -0.29798080532098653
#>     Attrib V24    -0.3935724272246223
#>     Attrib V25    0.37611752507968405
#>     Attrib V26    0.2020601189827205
#>     Attrib V27    0.19627964100427428
#>     Attrib V28    -0.03694005840148324
#>     Attrib V29    -0.07801547179544205
#>     Attrib V3    0.19761351468694774
#>     Attrib V30    -0.35739587485894975
#>     Attrib V31    1.1601589098415663
#>     Attrib V32    -0.23744051240572592
#>     Attrib V33    -0.1967816984155327
#>     Attrib V34    0.363027355291668
#>     Attrib V35    0.4188775378456743
#>     Attrib V36    0.8324395185590004
#>     Attrib V37    0.452390949228561
#>     Attrib V38    -0.10996431601898789
#>     Attrib V39    -0.40750508775655614
#>     Attrib V4    -0.09958357565193689
#>     Attrib V40    0.15556397000552621
#>     Attrib V41    -0.2801512901279732
#>     Attrib V42    -0.2748673214487727
#>     Attrib V43    -0.13008304347310426
#>     Attrib V44    -0.8804304245433903
#>     Attrib V45    -0.41929823866221905
#>     Attrib V46    -0.5221682567126886
#>     Attrib V47    0.003455954678312016
#>     Attrib V48    0.09071166996803187
#>     Attrib V49    -0.24871535532820627
#>     Attrib V5    0.025228888278767705
#>     Attrib V50    1.1457017691568365
#>     Attrib V51    -0.302561612264431
#>     Attrib V52    -0.14215689982367255
#>     Attrib V53    -0.19265391603624998
#>     Attrib V54    -0.319393234769313
#>     Attrib V55    0.6484568406416925
#>     Attrib V56    0.2431576172394029
#>     Attrib V57    0.2371408605775162
#>     Attrib V58    -0.5917948858051482
#>     Attrib V59    0.06602277941188019
#>     Attrib V6    -0.2728731375667646
#>     Attrib V60    0.15755754356761797
#>     Attrib V7    -0.43089068575056033
#>     Attrib V8    0.11813316264889824
#>     Attrib V9    -0.6286194501492192
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.08473943862364035
#>     Attrib V1    0.5318875867356828
#>     Attrib V10    -0.38438015908139633
#>     Attrib V11    -0.32540923182525777
#>     Attrib V12    -0.17415482519981526
#>     Attrib V13    -0.24275480788875453
#>     Attrib V14    0.015522320714156664
#>     Attrib V15    0.20039164364062825
#>     Attrib V16    0.2532513219203948
#>     Attrib V17    0.10561025786428867
#>     Attrib V18    0.043432223005991706
#>     Attrib V19    0.07208328329866559
#>     Attrib V2    0.17896399307532337
#>     Attrib V20    0.46421011807176815
#>     Attrib V21    0.5683625980881722
#>     Attrib V22    0.25779660502718627
#>     Attrib V23    -0.16829475409468175
#>     Attrib V24    -0.11028408313950558
#>     Attrib V25    -0.4635274295687759
#>     Attrib V26    -0.6330320692639113
#>     Attrib V27    -0.6155183909368759
#>     Attrib V28    -0.5047947866924634
#>     Attrib V29    -0.13464705888465672
#>     Attrib V3    0.09305169595153559
#>     Attrib V30    0.19012927473286464
#>     Attrib V31    -0.8591267686275094
#>     Attrib V32    0.15851034092262936
#>     Attrib V33    0.2378648660169954
#>     Attrib V34    -0.27638467269894773
#>     Attrib V35    -0.40144031078666337
#>     Attrib V36    -0.5585534430219039
#>     Attrib V37    -0.3227566398759288
#>     Attrib V38    0.08955882666422034
#>     Attrib V39    0.3209189755475781
#>     Attrib V4    0.07764797643132922
#>     Attrib V40    -0.056276698544788624
#>     Attrib V41    -0.018980665970191716
#>     Attrib V42    0.3927270628601065
#>     Attrib V43    0.21785745569529488
#>     Attrib V44    0.5499642636203159
#>     Attrib V45    0.1983263760913615
#>     Attrib V46    0.20374339844440373
#>     Attrib V47    -0.11668197017365324
#>     Attrib V48    -0.027123837114599585
#>     Attrib V49    0.1205283331780535
#>     Attrib V5    -0.2579786616806295
#>     Attrib V50    -0.5678901641296648
#>     Attrib V51    0.10092884949547912
#>     Attrib V52    -0.025783994049679605
#>     Attrib V53    0.3433787627669256
#>     Attrib V54    0.3782368587273792
#>     Attrib V55    -0.4535946261064529
#>     Attrib V56    0.6099150772612896
#>     Attrib V57    -0.025076334274841
#>     Attrib V58    0.434314823116402
#>     Attrib V59    0.2705554740856442
#>     Attrib V6    -0.09422350812210645
#>     Attrib V60    0.4371865170550021
#>     Attrib V7    0.10481861029909502
#>     Attrib V8    -0.28560850397645815
#>     Attrib V9    0.06525210725377427
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.6362923132465294
#>     Attrib V1    0.4167183004334068
#>     Attrib V10    0.3514725861038312
#>     Attrib V11    0.6565205486368532
#>     Attrib V12    0.5934907917772848
#>     Attrib V13    0.00592184713255288
#>     Attrib V14    -0.23920923314636
#>     Attrib V15    -0.4661209329928476
#>     Attrib V16    -0.6654833829293219
#>     Attrib V17    -0.3673088538692758
#>     Attrib V18    -0.37393412612398225
#>     Attrib V19    -0.26817131175640385
#>     Attrib V2    -0.32216497004812733
#>     Attrib V20    -0.47114474496682357
#>     Attrib V21    -0.0385846470259682
#>     Attrib V22    0.10014553344213037
#>     Attrib V23    0.4095656830670739
#>     Attrib V24    0.48315882587979914
#>     Attrib V25    0.027018133228610432
#>     Attrib V26    0.6757404091763156
#>     Attrib V27    1.049782473272446
#>     Attrib V28    1.154133640652265
#>     Attrib V29    0.8903277866247692
#>     Attrib V3    -0.09337580588705705
#>     Attrib V30    0.5146943087586399
#>     Attrib V31    -0.6996957968197745
#>     Attrib V32    -0.04131836656376003
#>     Attrib V33    -0.4761336389178929
#>     Attrib V34    -0.4722875637898666
#>     Attrib V35    0.21162553321398522
#>     Attrib V36    -0.41437558247244133
#>     Attrib V37    -0.3377185284621188
#>     Attrib V38    -0.2128413082212115
#>     Attrib V39    0.08269040241924897
#>     Attrib V4    0.2608391721644284
#>     Attrib V40    -0.044066545553574046
#>     Attrib V41    0.7078321293419759
#>     Attrib V42    0.33091382721941137
#>     Attrib V43    0.3014160969887632
#>     Attrib V44    0.8622128004402169
#>     Attrib V45    0.3411303575434751
#>     Attrib V46    0.5655695378283572
#>     Attrib V47    0.4383093370914337
#>     Attrib V48    0.28876617877898375
#>     Attrib V49    0.4852695468736824
#>     Attrib V5    0.4881175059229653
#>     Attrib V50    -0.4108523207565873
#>     Attrib V51    0.6611680853393802
#>     Attrib V52    0.4636037844029122
#>     Attrib V53    0.5640924682120169
#>     Attrib V54    0.3675988480889397
#>     Attrib V55    -0.27901990664512244
#>     Attrib V56    -0.5782329339515196
#>     Attrib V57    -0.10929728725459223
#>     Attrib V58    0.45702938246470076
#>     Attrib V59    0.5120813386269207
#>     Attrib V6    0.6056465301985335
#>     Attrib V60    0.569887073780534
#>     Attrib V7    0.1770419318625219
#>     Attrib V8    -0.5241190835363378
#>     Attrib V9    0.42939358665941224
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.08192387513919805
#>     Attrib V1    0.20662703006652272
#>     Attrib V10    -0.024123088349248714
#>     Attrib V11    0.007865073689011725
#>     Attrib V12    0.020620501909019782
#>     Attrib V13    -0.019789110548446336
#>     Attrib V14    -0.014442387404186177
#>     Attrib V15    0.007326643827595149
#>     Attrib V16    0.042993569023800374
#>     Attrib V17    -0.027109677346413005
#>     Attrib V18    -0.08447178420635382
#>     Attrib V19    0.011372052127537061
#>     Attrib V2    0.08688344796993064
#>     Attrib V20    0.05487980686027628
#>     Attrib V21    0.11838511074874691
#>     Attrib V22    0.004796411814852628
#>     Attrib V23    -0.10559236656525459
#>     Attrib V24    -0.029993105312183767
#>     Attrib V25    -0.12983408159790957
#>     Attrib V26    -0.11472746689608478
#>     Attrib V27    -0.11226465477337874
#>     Attrib V28    -0.05173963081972872
#>     Attrib V29    -0.012918741350830765
#>     Attrib V3    0.08378741466287846
#>     Attrib V30    0.05915174865966653
#>     Attrib V31    -0.2770457518724836
#>     Attrib V32    0.012568779178363802
#>     Attrib V33    0.024532513137957023
#>     Attrib V34    -0.039136372073370035
#>     Attrib V35    0.017020317522504755
#>     Attrib V36    -0.0282184784866428
#>     Attrib V37    -0.07694037629324409
#>     Attrib V38    0.09714000520126802
#>     Attrib V39    0.13322080197670552
#>     Attrib V4    0.16741570262216038
#>     Attrib V40    -0.0015527899830153724
#>     Attrib V41    0.022126054625577717
#>     Attrib V42    0.03303508232620911
#>     Attrib V43    0.09357846377084719
#>     Attrib V44    0.263770627037766
#>     Attrib V45    0.16806328792364622
#>     Attrib V46    0.1636304857440827
#>     Attrib V47    0.083518379531204
#>     Attrib V48    0.11838428869096669
#>     Attrib V49    0.11668129407580864
#>     Attrib V5    0.034492378717759606
#>     Attrib V50    -0.14658450854315608
#>     Attrib V51    0.10382854928829248
#>     Attrib V52    0.04770524895032627
#>     Attrib V53    0.1780407988713329
#>     Attrib V54    0.15320047746153312
#>     Attrib V55    -0.07339740976136015
#>     Attrib V56    0.14843665779712123
#>     Attrib V57    0.15244054871852655
#>     Attrib V58    0.1567448750205777
#>     Attrib V59    0.2255106760233134
#>     Attrib V6    -0.03803091168869455
#>     Attrib V60    0.29705209050765385
#>     Attrib V7    0.007286959533236131
#>     Attrib V8    -0.1402803227555166
#>     Attrib V9    0.04023960036231552
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.5170605278027216
#>     Attrib V1    0.3444946172840816
#>     Attrib V10    0.36271184318968297
#>     Attrib V11    0.5698155942018652
#>     Attrib V12    0.5889888756806145
#>     Attrib V13    0.08729985866952676
#>     Attrib V14    -0.23729755677029266
#>     Attrib V15    -0.40933923457256544
#>     Attrib V16    -0.5940429313521048
#>     Attrib V17    -0.30202322463664694
#>     Attrib V18    -0.30645260577417655
#>     Attrib V19    -0.2738441936773368
#>     Attrib V2    -0.31741737790641894
#>     Attrib V20    -0.4511582945326541
#>     Attrib V21    -0.013852394614405244
#>     Attrib V22    0.15176036474312513
#>     Attrib V23    0.4047202466880725
#>     Attrib V24    0.49707817534954446
#>     Attrib V25    0.08836142590297948
#>     Attrib V26    0.637821334691474
#>     Attrib V27    1.0037054284930458
#>     Attrib V28    1.0628341714536518
#>     Attrib V29    0.7806488300413196
#>     Attrib V3    -0.14083455278246937
#>     Attrib V30    0.5279636506318496
#>     Attrib V31    -0.6903220933809466
#>     Attrib V32    -0.00411520331363728
#>     Attrib V33    -0.4292779031004163
#>     Attrib V34    -0.45395134429595596
#>     Attrib V35    0.10928736566384234
#>     Attrib V36    -0.4199950605779332
#>     Attrib V37    -0.4008421798816958
#>     Attrib V38    -0.22459662940103936
#>     Attrib V39    0.12523063699210185
#>     Attrib V4    0.2316393885065255
#>     Attrib V40    -0.09784454910320886
#>     Attrib V41    0.6271005038725902
#>     Attrib V42    0.3123043658715409
#>     Attrib V43    0.38198617992641243
#>     Attrib V44    0.8372005752675151
#>     Attrib V45    0.3219947869780511
#>     Attrib V46    0.5245973665607252
#>     Attrib V47    0.41624886885541035
#>     Attrib V48    0.27478352107860543
#>     Attrib V49    0.5238576397599871
#>     Attrib V5    0.3999757764298049
#>     Attrib V50    -0.4096562476281712
#>     Attrib V51    0.6600003491411603
#>     Attrib V52    0.4432630617524527
#>     Attrib V53    0.6460064812137797
#>     Attrib V54    0.3619221546555114
#>     Attrib V55    -0.2288263375339117
#>     Attrib V56    -0.4850217773366358
#>     Attrib V57    -0.20487752702721135
#>     Attrib V58    0.4500613466509735
#>     Attrib V59    0.4548155049630228
#>     Attrib V6    0.5332110020641688
#>     Attrib V60    0.45416523803149245
#>     Attrib V7    0.14871062250088754
#>     Attrib V8    -0.4401540425975132
#>     Attrib V9    0.35546678821934374
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.23185187065292312
#>     Attrib V1    -0.2027415772019752
#>     Attrib V10    -0.0017522740886981789
#>     Attrib V11    -0.17228777666054712
#>     Attrib V12    -0.18566677227315434
#>     Attrib V13    -0.0334169573951884
#>     Attrib V14    0.1402656048597779
#>     Attrib V15    -0.03294861551257559
#>     Attrib V16    0.1652588346277833
#>     Attrib V17    0.0477803485230032
#>     Attrib V18    0.23278362926193288
#>     Attrib V19    0.11758036712764122
#>     Attrib V2    0.10759332902630366
#>     Attrib V20    -0.08111535195235715
#>     Attrib V21    -0.22340366207150714
#>     Attrib V22    -0.2031310310153313
#>     Attrib V23    -0.10647320324786906
#>     Attrib V24    -0.24406269501162067
#>     Attrib V25    0.14439498943949475
#>     Attrib V26    0.16173911675918423
#>     Attrib V27    0.13894583582221418
#>     Attrib V28    0.0038801231955599056
#>     Attrib V29    -0.1725951957969509
#>     Attrib V3    0.0737860335438581
#>     Attrib V30    -0.15421312599090856
#>     Attrib V31    0.6436727504469497
#>     Attrib V32    -0.20566488973303212
#>     Attrib V33    -0.0049699471062236876
#>     Attrib V34    0.22034129741539596
#>     Attrib V35    0.17793494399127005
#>     Attrib V36    0.4648066656713299
#>     Attrib V37    0.2554526537362126
#>     Attrib V38    0.033010814842019995
#>     Attrib V39    -0.19658058158532496
#>     Attrib V4    0.021314072435832394
#>     Attrib V40    0.16174090054531476
#>     Attrib V41    -0.056640100527824706
#>     Attrib V42    -0.2148206868775398
#>     Attrib V43    -0.11757374024556753
#>     Attrib V44    -0.4371794114383266
#>     Attrib V45    -0.19323381410788792
#>     Attrib V46    -0.36068576325139784
#>     Attrib V47    -0.08563433717523164
#>     Attrib V48    -0.03172565426957382
#>     Attrib V49    -0.1533535511358178
#>     Attrib V5    0.12632368490226714
#>     Attrib V50    0.5921209008050274
#>     Attrib V51    -0.20688994254660342
#>     Attrib V52    -0.12349765404561662
#>     Attrib V53    -0.1291814291767515
#>     Attrib V54    -0.2541409228260101
#>     Attrib V55    0.23955961517885485
#>     Attrib V56    -0.006163610894470902
#>     Attrib V57    0.2402998516996777
#>     Attrib V58    -0.34205837140203016
#>     Attrib V59    -0.04678945401250421
#>     Attrib V6    0.03747448847774502
#>     Attrib V60    -0.08050968332166748
#>     Attrib V7    -0.034191077040974516
#>     Attrib V8    0.3049965207706222
#>     Attrib V9    -0.18667676080219617
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.18620484273175134
#>     Attrib V1    0.5335410042066738
#>     Attrib V10    -0.37480269447354897
#>     Attrib V11    -0.3157453885248527
#>     Attrib V12    -0.22193956942530005
#>     Attrib V13    -0.282230758939949
#>     Attrib V14    0.02219337065932496
#>     Attrib V15    0.23650633021575165
#>     Attrib V16    0.2677766528573608
#>     Attrib V17    0.20651462173115523
#>     Attrib V18    0.035299378616033876
#>     Attrib V19    0.10350174079297865
#>     Attrib V2    0.1590300815549596
#>     Attrib V20    0.6124987630392241
#>     Attrib V21    0.6584567280671275
#>     Attrib V22    0.3479578567192155
#>     Attrib V23    -0.10483203683509615
#>     Attrib V24    -0.11897562482217693
#>     Attrib V25    -0.5512085290428826
#>     Attrib V26    -0.7376368210329669
#>     Attrib V27    -0.7167792048974563
#>     Attrib V28    -0.48763035449942294
#>     Attrib V29    -0.11442526991315415
#>     Attrib V3    0.07406139385965946
#>     Attrib V30    0.2922055377640733
#>     Attrib V31    -1.0200289124574593
#>     Attrib V32    0.14335997713019513
#>     Attrib V33    0.262420178833076
#>     Attrib V34    -0.30313595742739574
#>     Attrib V35    -0.49092946821129185
#>     Attrib V36    -0.6338954889241493
#>     Attrib V37    -0.41879208095868165
#>     Attrib V38    0.1684883599478202
#>     Attrib V39    0.37328561997932813
#>     Attrib V4    0.03879320044485569
#>     Attrib V40    -0.05964877282313212
#>     Attrib V41    -0.1210038970132654
#>     Attrib V42    0.4560228461914595
#>     Attrib V43    0.3065924924611073
#>     Attrib V44    0.7863488460810778
#>     Attrib V45    0.32159522316605144
#>     Attrib V46    0.23853506635032387
#>     Attrib V47    -0.0786064095585069
#>     Attrib V48    0.03439198642148612
#>     Attrib V49    0.17288841355401652
#>     Attrib V5    -0.28452472815609053
#>     Attrib V50    -0.7186071991084767
#>     Attrib V51    0.19630765630235011
#>     Attrib V52    0.005498251946263224
#>     Attrib V53    0.36030377027895705
#>     Attrib V54    0.48825502365538537
#>     Attrib V55    -0.517241301535876
#>     Attrib V56    0.6902582539604032
#>     Attrib V57    -0.07846814076934072
#>     Attrib V58    0.5250129052313213
#>     Attrib V59    0.1513376898168499
#>     Attrib V6    -0.16059616328523305
#>     Attrib V60    0.3578872109507491
#>     Attrib V7    0.03299782154727258
#>     Attrib V8    -0.3096637277351823
#>     Attrib V9    0.08803912126619871
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.12019257585667227
#>     Attrib V1    0.5843810534927492
#>     Attrib V10    -0.4412214766523859
#>     Attrib V11    -0.3297861355171843
#>     Attrib V12    -0.3441435436539748
#>     Attrib V13    -0.2789326804626403
#>     Attrib V14    0.06233703892439295
#>     Attrib V15    0.25818995442196907
#>     Attrib V16    0.2994022785541463
#>     Attrib V17    0.1559703587644428
#>     Attrib V18    -0.014289019415538898
#>     Attrib V19    0.15524139055952896
#>     Attrib V2    0.23319384032090712
#>     Attrib V20    0.5889079128143436
#>     Attrib V21    0.711754462586327
#>     Attrib V22    0.4144759418668674
#>     Attrib V23    -0.11356921258652808
#>     Attrib V24    -0.16225504084733336
#>     Attrib V25    -0.6693032138299861
#>     Attrib V26    -0.7740779504150074
#>     Attrib V27    -0.7231942183047216
#>     Attrib V28    -0.5385683189944126
#>     Attrib V29    -0.045325893568557776
#>     Attrib V3    0.07153219037071346
#>     Attrib V30    0.30285954197782666
#>     Attrib V31    -1.1222747519294247
#>     Attrib V32    0.13779892466663543
#>     Attrib V33    0.32326320868174524
#>     Attrib V34    -0.3602565453113736
#>     Attrib V35    -0.5999669169883926
#>     Attrib V36    -0.737344861140483
#>     Attrib V37    -0.47433879624536884
#>     Attrib V38    0.14882256777248726
#>     Attrib V39    0.39448949069771294
#>     Attrib V4    0.08225713623441842
#>     Attrib V40    -0.012490707622137453
#>     Attrib V41    -0.0788229149101568
#>     Attrib V42    0.4968422211680675
#>     Attrib V43    0.38440982438106064
#>     Attrib V44    0.7894635906443092
#>     Attrib V45    0.3007621124261195
#>     Attrib V46    0.3201028578002019
#>     Attrib V47    -0.12931263687842898
#>     Attrib V48    0.027747001209024208
#>     Attrib V49    0.15872025006167215
#>     Attrib V5    -0.3278912260356202
#>     Attrib V50    -0.8265974473274945
#>     Attrib V51    0.1494576716833215
#>     Attrib V52    0.054375071312612516
#>     Attrib V53    0.432008898251171
#>     Attrib V54    0.4730073956489583
#>     Attrib V55    -0.602508018247285
#>     Attrib V56    0.7600714148041855
#>     Attrib V57    -0.057898754189302536
#>     Attrib V58    0.5833271642325042
#>     Attrib V59    0.2572137644990244
#>     Attrib V6    -0.20146592541505443
#>     Attrib V60    0.40721202400640316
#>     Attrib V7    0.13038170751837772
#>     Attrib V8    -0.3145359142259915
#>     Attrib V9    0.10292131531100346
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.18895900543876437
#>     Attrib V1    0.18278192138061553
#>     Attrib V10    -0.06771850452288604
#>     Attrib V11    -0.022842526940506848
#>     Attrib V12    0.024754799379747585
#>     Attrib V13    0.041002078587067746
#>     Attrib V14    0.0478284095339747
#>     Attrib V15    0.0034585890422690127
#>     Attrib V16    -0.022867146624737097
#>     Attrib V17    0.006890270378309888
#>     Attrib V18    -0.023026416795555192
#>     Attrib V19    -0.01393874269427575
#>     Attrib V2    0.07175812818499909
#>     Attrib V20    0.0956617117839961
#>     Attrib V21    0.09449618772649437
#>     Attrib V22    -0.029075172959932408
#>     Attrib V23    -0.06358528052200878
#>     Attrib V24    -0.04725106266306666
#>     Attrib V25    -0.06463526431696988
#>     Attrib V26    -0.1414524873188338
#>     Attrib V27    -0.056429861111016555
#>     Attrib V28    -0.08591247339539476
#>     Attrib V29    -0.01895852258925066
#>     Attrib V3    0.14024849047987106
#>     Attrib V30    0.01985910968178662
#>     Attrib V31    -0.272562533065113
#>     Attrib V32    0.005653426958203911
#>     Attrib V33    -0.007844497843244374
#>     Attrib V34    0.021661902496535337
#>     Attrib V35    0.02628315791086799
#>     Attrib V36    -0.05091571051049939
#>     Attrib V37    -0.033287146167872234
#>     Attrib V38    0.04204398497303534
#>     Attrib V39    0.16388969932026246
#>     Attrib V4    0.13416336191264824
#>     Attrib V40    0.04612257328134023
#>     Attrib V41    0.03664955988147178
#>     Attrib V42    0.10047727438703984
#>     Attrib V43    0.057339765066276596
#>     Attrib V44    0.16716907678504442
#>     Attrib V45    0.09105290980348021
#>     Attrib V46    0.13546385940490124
#>     Attrib V47    0.08913003816438227
#>     Attrib V48    0.046981896831394525
#>     Attrib V49    0.1083637700436265
#>     Attrib V5    0.07262193310873384
#>     Attrib V50    -0.09863302759125743
#>     Attrib V51    0.08227683049988015
#>     Attrib V52    0.028260269240723345
#>     Attrib V53    0.1369836292849736
#>     Attrib V54    0.10257995453066952
#>     Attrib V55    -0.035194757097924495
#>     Attrib V56    0.1593086113122857
#>     Attrib V57    0.10845996625719044
#>     Attrib V58    0.14653640588632608
#>     Attrib V59    0.20245258483154505
#>     Attrib V6    0.0249733229162771
#>     Attrib V60    0.27295186108696967
#>     Attrib V7    0.045577710331181076
#>     Attrib V8    -0.10822943311994374
#>     Attrib V9    0.023191470762666783
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.12121592652923244
#>     Attrib V1    0.7045070595235873
#>     Attrib V10    -0.42287452218131966
#>     Attrib V11    -0.3118818341172373
#>     Attrib V12    -0.22497377586390632
#>     Attrib V13    -0.28550292474861066
#>     Attrib V14    0.004215317668260791
#>     Attrib V15    0.32492316957529266
#>     Attrib V16    0.26499017557959526
#>     Attrib V17    0.17601549097164698
#>     Attrib V18    -0.02353510372253916
#>     Attrib V19    0.07008785757033417
#>     Attrib V2    0.2238769579194688
#>     Attrib V20    0.6007858642364753
#>     Attrib V21    0.7113151844740839
#>     Attrib V22    0.3712655752950204
#>     Attrib V23    -0.12749345408056287
#>     Attrib V24    -0.14307919334281802
#>     Attrib V25    -0.6523159158095889
#>     Attrib V26    -0.7808893419967934
#>     Attrib V27    -0.8120953864909485
#>     Attrib V28    -0.6450149267406374
#>     Attrib V29    -0.20469610135826272
#>     Attrib V3    0.04768929812974108
#>     Attrib V30    0.32363996397643535
#>     Attrib V31    -1.0714836809592463
#>     Attrib V32    0.17795425812806362
#>     Attrib V33    0.35901604930655445
#>     Attrib V34    -0.3961148560042098
#>     Attrib V35    -0.6232780227043145
#>     Attrib V36    -0.8131930765815825
#>     Attrib V37    -0.4559460020444917
#>     Attrib V38    0.11649202193776304
#>     Attrib V39    0.44910044682645545
#>     Attrib V4    0.0018605586723905317
#>     Attrib V40    -0.05574750484748475
#>     Attrib V41    -0.12333760193606796
#>     Attrib V42    0.4540061258618635
#>     Attrib V43    0.3199267239926055
#>     Attrib V44    0.9023360588772473
#>     Attrib V45    0.21728617307204381
#>     Attrib V46    0.2540043125649449
#>     Attrib V47    -0.17263620031624619
#>     Attrib V48    0.07837471316057781
#>     Attrib V49    0.26103079048828465
#>     Attrib V5    -0.40184446951241687
#>     Attrib V50    -0.8510528815251169
#>     Attrib V51    0.10840363625523013
#>     Attrib V52    -0.012766547835220719
#>     Attrib V53    0.3689885083692871
#>     Attrib V54    0.6224693992932074
#>     Attrib V55    -0.5430559322806953
#>     Attrib V56    0.8463639735932023
#>     Attrib V57    -0.05775021997857156
#>     Attrib V58    0.5995229028512264
#>     Attrib V59    0.3007924150385
#>     Attrib V6    -0.14710111106159948
#>     Attrib V60    0.5087699999502354
#>     Attrib V7    0.13141238812572503
#>     Attrib V8    -0.4668462944855793
#>     Attrib V9    0.054071775809641814
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.5655925351384634
#>     Attrib V1    -0.34189934812254885
#>     Attrib V10    -0.48001845297890067
#>     Attrib V11    -0.7247988192705259
#>     Attrib V12    -0.29402026988801794
#>     Attrib V13    -0.11809785950218102
#>     Attrib V14    0.011624468494518692
#>     Attrib V15    0.18304313799054564
#>     Attrib V16    0.4941580683815987
#>     Attrib V17    0.14711168336399522
#>     Attrib V18    0.04467604394708333
#>     Attrib V19    -0.03461989529762008
#>     Attrib V2    0.20109188120570493
#>     Attrib V20    0.16305136091204253
#>     Attrib V21    -0.418753927539036
#>     Attrib V22    -0.6918096054544641
#>     Attrib V23    -1.2954514687642273
#>     Attrib V24    -0.849612701400663
#>     Attrib V25    0.19696068704613356
#>     Attrib V26    -0.6248256069565364
#>     Attrib V27    -1.1470338227391337
#>     Attrib V28    -1.5536806268384677
#>     Attrib V29    -1.566101150689124
#>     Attrib V3    0.14485555493654367
#>     Attrib V30    -0.9209416420810935
#>     Attrib V31    1.1889655421387362
#>     Attrib V32    -0.010553440704816877
#>     Attrib V33    0.6213805263687204
#>     Attrib V34    0.8358082497558744
#>     Attrib V35    0.09934157405609885
#>     Attrib V36    1.013560939854186
#>     Attrib V37    0.7270826373823454
#>     Attrib V38    0.4615825716911578
#>     Attrib V39    -0.08925902434470724
#>     Attrib V4    -0.20499685545335458
#>     Attrib V40    0.08138123415918287
#>     Attrib V41    -0.9664561961587403
#>     Attrib V42    -0.9271629742137292
#>     Attrib V43    -0.752294541209659
#>     Attrib V44    -1.42249391347206
#>     Attrib V45    -0.5396139160936166
#>     Attrib V46    -0.9992503630414327
#>     Attrib V47    -0.7257246993196831
#>     Attrib V48    -0.19777023024462473
#>     Attrib V49    -0.8505627645601023
#>     Attrib V5    -0.3463854626609109
#>     Attrib V50    0.5105480582030342
#>     Attrib V51    -0.965357246827788
#>     Attrib V52    -0.8948289971579494
#>     Attrib V53    -1.051191987838561
#>     Attrib V54    -0.3036936689147086
#>     Attrib V55    0.200677123619062
#>     Attrib V56    0.8829460177728572
#>     Attrib V57    0.7798552201524982
#>     Attrib V58    -0.909859233368514
#>     Attrib V59    0.09384474346977321
#>     Attrib V6    -0.6061617016405332
#>     Attrib V60    0.09928032597523306
#>     Attrib V7    0.07643032321964235
#>     Attrib V8    0.3704954960428244
#>     Attrib V9    -0.6741604806486314
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.17966456536581532
#>     Attrib V1    -0.06256260729668
#>     Attrib V10    0.06418692481819073
#>     Attrib V11    -0.03310574799162983
#>     Attrib V12    -0.055773809376208655
#>     Attrib V13    0.01198072166979635
#>     Attrib V14    -0.009480635443414551
#>     Attrib V15    -0.024024527877169997
#>     Attrib V16    0.12114246617274231
#>     Attrib V17    0.12811713568873734
#>     Attrib V18    0.1497275747182163
#>     Attrib V19    0.05070188215923736
#>     Attrib V2    0.026955181096356976
#>     Attrib V20    -0.07719752282739216
#>     Attrib V21    -0.10611284928975014
#>     Attrib V22    -0.04917778866884537
#>     Attrib V23    -0.052539639987734844
#>     Attrib V24    -0.07552137739128964
#>     Attrib V25    0.006082322986629223
#>     Attrib V26    -0.05126182294419396
#>     Attrib V27    -0.055803485743269536
#>     Attrib V28    -0.019291226640356554
#>     Attrib V29    -0.06474942385766151
#>     Attrib V3    0.1014494708624957
#>     Attrib V30    -0.06342764545163719
#>     Attrib V31    0.15147488642038262
#>     Attrib V32    0.038916237144253206
#>     Attrib V33    0.07654633025519851
#>     Attrib V34    0.14899559337128948
#>     Attrib V35    0.10047248549531565
#>     Attrib V36    0.17473917582757387
#>     Attrib V37    0.17368507183613266
#>     Attrib V38    0.042647451204301134
#>     Attrib V39    -0.02455549259689734
#>     Attrib V4    0.09876886714195834
#>     Attrib V40    0.0925700513745069
#>     Attrib V41    0.09652376182058181
#>     Attrib V42    0.051336243537235725
#>     Attrib V43    -0.00790627144039196
#>     Attrib V44    -0.12927719100394497
#>     Attrib V45    -0.032780740761307825
#>     Attrib V46    -0.03958286943651831
#>     Attrib V47    0.017186593635187722
#>     Attrib V48    -0.017233638878020534
#>     Attrib V49    -0.05185672677843154
#>     Attrib V5    0.12096734382282168
#>     Attrib V50    0.21702359217035333
#>     Attrib V51    0.04921648855582351
#>     Attrib V52    0.0476007223113777
#>     Attrib V53    0.02651878999329817
#>     Attrib V54    -0.10072017996359055
#>     Attrib V55    0.08611472826080938
#>     Attrib V56    0.018533257613698423
#>     Attrib V57    0.15864034829847365
#>     Attrib V58    -0.01177817753922964
#>     Attrib V59    -0.06703880197403796
#>     Attrib V6    0.07966260346328538
#>     Attrib V60    0.01149917137848456
#>     Attrib V7    0.03047007420531248
#>     Attrib V8    0.126996166465344
#>     Attrib V9    0.06076868693405921
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.11409586573744011
#>     Attrib V1    -0.09696429786403246
#>     Attrib V10    0.11584283205857866
#>     Attrib V11    -0.008822782683828712
#>     Attrib V12    -0.09345606583819059
#>     Attrib V13    -0.03840178837089731
#>     Attrib V14    0.014474672711827287
#>     Attrib V15    0.05223918573426605
#>     Attrib V16    0.11016556903548409
#>     Attrib V17    0.11663660014983956
#>     Attrib V18    0.1688578774046528
#>     Attrib V19    0.07123096560030637
#>     Attrib V2    0.1224689347335683
#>     Attrib V20    -0.08269802950145494
#>     Attrib V21    -0.12682181490148808
#>     Attrib V22    0.001445774025830021
#>     Attrib V23    -0.033658517328366236
#>     Attrib V24    -0.11217328553493992
#>     Attrib V25    -0.018399453619973312
#>     Attrib V26    -0.04593026576874331
#>     Attrib V27    -0.03201308143735729
#>     Attrib V28    -0.03862780806355265
#>     Attrib V29    -0.11632455744421188
#>     Attrib V3    0.07106562693638117
#>     Attrib V30    -0.003932954246880378
#>     Attrib V31    0.3910940363713602
#>     Attrib V32    0.008592792431955126
#>     Attrib V33    0.1832873548531392
#>     Attrib V34    0.1524766059681664
#>     Attrib V35    0.18701547942223543
#>     Attrib V36    0.2577118921927816
#>     Attrib V37    0.17048815632562775
#>     Attrib V38    0.0860411533912902
#>     Attrib V39    -0.02806208480968719
#>     Attrib V4    0.08702885135289261
#>     Attrib V40    0.15414194213627463
#>     Attrib V41    0.14393309559929135
#>     Attrib V42    -9.81497840503084E-4
#>     Attrib V43    0.04441739132727314
#>     Attrib V44    -0.1397024552280332
#>     Attrib V45    -0.058370498541642946
#>     Attrib V46    -0.161393883786863
#>     Attrib V47    -0.06145733038930706
#>     Attrib V48    1.2338019333052835E-4
#>     Attrib V49    -0.11108438164280131
#>     Attrib V5    0.1432486240118523
#>     Attrib V50    0.2688670856570522
#>     Attrib V51    -0.04713939352092328
#>     Attrib V52    -0.0425614748771231
#>     Attrib V53    -0.07541942015288637
#>     Attrib V54    -0.14702870683462224
#>     Attrib V55    0.1207995479981789
#>     Attrib V56    0.011437376576168405
#>     Attrib V57    0.22387573433732091
#>     Attrib V58    -0.15433622350310308
#>     Attrib V59    -0.09645569321628236
#>     Attrib V6    0.11641643892720736
#>     Attrib V60    -0.04041237144579568
#>     Attrib V7    0.04764159326528326
#>     Attrib V8    0.29854850908387104
#>     Attrib V9    0.03244014555756454
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.24611305153855353
#>     Attrib V1    -0.20957943623642786
#>     Attrib V10    -0.045840191614142836
#>     Attrib V11    -0.23120249690410186
#>     Attrib V12    -0.2917390377714774
#>     Attrib V13    -0.12553576256065646
#>     Attrib V14    0.06342078374358352
#>     Attrib V15    -0.0429902385286543
#>     Attrib V16    0.09672004601654978
#>     Attrib V17    -0.017459043912024942
#>     Attrib V18    0.16603993728623737
#>     Attrib V19    -0.0051629802696048065
#>     Attrib V2    0.11922050166787071
#>     Attrib V20    -0.1131284788329462
#>     Attrib V21    -0.23543805990879615
#>     Attrib V22    -0.21596486166622442
#>     Attrib V23    -0.11229512482916963
#>     Attrib V24    -0.17495729992367665
#>     Attrib V25    0.18693734468061107
#>     Attrib V26    0.16162907528392928
#>     Attrib V27    0.14029991879299553
#>     Attrib V28    2.929203078133989E-4
#>     Attrib V29    -0.13396160597473422
#>     Attrib V3    0.13649385798912234
#>     Attrib V30    -0.2347523787210208
#>     Attrib V31    0.5077471868783883
#>     Attrib V32    -0.12107727368265916
#>     Attrib V33    -0.01629232749933557
#>     Attrib V34    0.223256267049392
#>     Attrib V35    0.15821325787724796
#>     Attrib V36    0.5022382071399183
#>     Attrib V37    0.2569082843398711
#>     Attrib V38    0.0015014030441101256
#>     Attrib V39    -0.13348093808472855
#>     Attrib V4    -0.01784452791669642
#>     Attrib V40    0.1046095174135927
#>     Attrib V41    -0.10490290638733285
#>     Attrib V42    -0.13034893608387793
#>     Attrib V43    -0.06889763193039312
#>     Attrib V44    -0.3409855355872079
#>     Attrib V45    -0.2261415379430386
#>     Attrib V46    -0.2918048218983091
#>     Attrib V47    -0.020610303900282612
#>     Attrib V48    -0.01195993377522948
#>     Attrib V49    -0.09418231261141001
#>     Attrib V5    0.08120644398402434
#>     Attrib V50    0.4464204689996964
#>     Attrib V51    -0.11819834887720296
#>     Attrib V52    -0.07725133439834321
#>     Attrib V53    -0.09280415504632993
#>     Attrib V54    -0.26046477028692283
#>     Attrib V55    0.22778559518163916
#>     Attrib V56    0.0630672309471215
#>     Attrib V57    0.15330824149627756
#>     Attrib V58    -0.26607772940543684
#>     Attrib V59    -0.005626828601897716
#>     Attrib V6    -0.08751210255938642
#>     Attrib V60    -0.007246732339230814
#>     Attrib V7    -0.0731227400172316
#>     Attrib V8    0.24271905186094758
#>     Attrib V9    -0.17426250260227963
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.26649931678575517
#>     Attrib V1    0.40392712510666356
#>     Attrib V10    -0.1998841409743455
#>     Attrib V11    -0.05669544309933923
#>     Attrib V12    0.05228623565803094
#>     Attrib V13    -0.15963138673262595
#>     Attrib V14    -0.10802378438389125
#>     Attrib V15    -0.023449843746977977
#>     Attrib V16    -0.1511437050649925
#>     Attrib V17    0.003806625581874845
#>     Attrib V18    -0.07949456636662432
#>     Attrib V19    0.055416416035854336
#>     Attrib V2    -0.04207329084049882
#>     Attrib V20    0.23926658173588977
#>     Attrib V21    0.4365830804848919
#>     Attrib V22    0.373791100332877
#>     Attrib V23    0.14399683783302544
#>     Attrib V24    0.19537944474189317
#>     Attrib V25    -0.19088890728144192
#>     Attrib V26    -0.05382274066019158
#>     Attrib V27    0.04190463524497169
#>     Attrib V28    0.18724148993288628
#>     Attrib V29    0.30322340667999975
#>     Attrib V3    -0.07766604325470174
#>     Attrib V30    0.44072481146867526
#>     Attrib V31    -0.956526002235396
#>     Attrib V32    0.042701190503553484
#>     Attrib V33    0.13157355900795817
#>     Attrib V34    -0.35116284022921407
#>     Attrib V35    -0.22910821483008967
#>     Attrib V36    -0.6044059931788962
#>     Attrib V37    -0.44049297901406925
#>     Attrib V38    -0.04611412135126926
#>     Attrib V39    0.23989512386590303
#>     Attrib V4    0.04169475204307113
#>     Attrib V40    0.006925754384856752
#>     Attrib V41    0.2745754896378065
#>     Attrib V42    0.5786378133899255
#>     Attrib V43    0.3432272963971214
#>     Attrib V44    0.8868142276379414
#>     Attrib V45    0.39001734269480476
#>     Attrib V46    0.35762377979810933
#>     Attrib V47    -0.00827642668389625
#>     Attrib V48    0.06615018272109667
#>     Attrib V49    0.3624215947248303
#>     Attrib V5    -0.12113995119734729
#>     Attrib V50    -0.7304592710813789
#>     Attrib V51    0.2206433998321996
#>     Attrib V52    0.23136017116201252
#>     Attrib V53    0.5512196349941901
#>     Attrib V54    0.3383627864775028
#>     Attrib V55    -0.5227836967860514
#>     Attrib V56    0.22501209768755362
#>     Attrib V57    -0.31585668426196717
#>     Attrib V58    0.4530077120463822
#>     Attrib V59    0.13991274748128357
#>     Attrib V6    0.13611781877750664
#>     Attrib V60    0.23024906854962768
#>     Attrib V7    0.10816552161692669
#>     Attrib V8    -0.48024181977252983
#>     Attrib V9    0.1581404525306287
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.7124782013911837
#>     Attrib V1    0.40711201945391146
#>     Attrib V10    0.40025173995202096
#>     Attrib V11    0.6483633364306137
#>     Attrib V12    0.7741395799784365
#>     Attrib V13    0.043326529908997755
#>     Attrib V14    -0.22964770319474526
#>     Attrib V15    -0.47759027355099304
#>     Attrib V16    -0.8217933708948215
#>     Attrib V17    -0.41306514300589026
#>     Attrib V18    -0.40522327337324093
#>     Attrib V19    -0.25616472975724863
#>     Attrib V2    -0.42884971472901606
#>     Attrib V20    -0.5852498949123096
#>     Attrib V21    -0.08192317354727106
#>     Attrib V22    0.14240908434583138
#>     Attrib V23    0.45844529777067744
#>     Attrib V24    0.6320590384323598
#>     Attrib V25    0.18256111594207064
#>     Attrib V26    0.8421288152391858
#>     Attrib V27    1.222961001452999
#>     Attrib V28    1.203365256783806
#>     Attrib V29    0.8871597933490617
#>     Attrib V3    -0.20217044623132813
#>     Attrib V30    0.5247455930703295
#>     Attrib V31    -0.726203078472835
#>     Attrib V32    -0.09464207273361294
#>     Attrib V33    -0.598451297990556
#>     Attrib V34    -0.48473040799659445
#>     Attrib V35    0.28849332923798104
#>     Attrib V36    -0.38827980699462994
#>     Attrib V37    -0.3756383229131032
#>     Attrib V38    -0.22650305382825264
#>     Attrib V39    0.1443025610674459
#>     Attrib V4    0.29492705845079675
#>     Attrib V40    0.008697913657955922
#>     Attrib V41    0.8393852383427715
#>     Attrib V42    0.2866138730346377
#>     Attrib V43    0.35603455530668476
#>     Attrib V44    0.9218737541264022
#>     Attrib V45    0.2975699490137226
#>     Attrib V46    0.5096201879499259
#>     Attrib V47    0.41767821008828343
#>     Attrib V48    0.35585491837109
#>     Attrib V49    0.5501946739942487
#>     Attrib V5    0.6554380779530891
#>     Attrib V50    -0.435902227979548
#>     Attrib V51    0.8000681233195135
#>     Attrib V52    0.49713008910823664
#>     Attrib V53    0.7162423680247976
#>     Attrib V54    0.46871711123313614
#>     Attrib V55    -0.21078182298910594
#>     Attrib V56    -0.6046495414225086
#>     Attrib V57    -0.12068356660115102
#>     Attrib V58    0.5018316575343538
#>     Attrib V59    0.6481336939692868
#>     Attrib V6    0.7513990342281914
#>     Attrib V60    0.6296376081261706
#>     Attrib V7    0.2814386364682265
#>     Attrib V8    -0.6156429180180948
#>     Attrib V9    0.37630960991958756
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.3409569186729861
#>     Attrib V1    -0.22313018370452223
#>     Attrib V10    -0.4343308612501239
#>     Attrib V11    -0.7119481506592481
#>     Attrib V12    -0.6048462174115918
#>     Attrib V13    -0.3007382566284966
#>     Attrib V14    0.1816910268871337
#>     Attrib V15    0.15691027305591118
#>     Attrib V16    0.268815782313148
#>     Attrib V17    -0.025344970556771537
#>     Attrib V18    0.19703459095004835
#>     Attrib V19    0.057706962539616186
#>     Attrib V2    0.3281135335699423
#>     Attrib V20    -0.33149615207219696
#>     Attrib V21    -0.5799196317776181
#>     Attrib V22    -0.5304853189579114
#>     Attrib V23    -0.37013296786100414
#>     Attrib V24    -0.30440288918818253
#>     Attrib V25    0.36101061409457397
#>     Attrib V26    0.25344291199430474
#>     Attrib V27    0.23768080950343845
#>     Attrib V28    0.006850826792638383
#>     Attrib V29    -0.05760431998538511
#>     Attrib V3    0.10918514297438096
#>     Attrib V30    -0.45975718978247876
#>     Attrib V31    1.0687311725842554
#>     Attrib V32    -0.3432827153341989
#>     Attrib V33    -0.24310305100998475
#>     Attrib V34    0.3856240741272331
#>     Attrib V35    0.4154976924310995
#>     Attrib V36    0.7969371904158159
#>     Attrib V37    0.5041108047786096
#>     Attrib V38    -0.15049135528714902
#>     Attrib V39    -0.40075204150039306
#>     Attrib V4    -0.05515982075914667
#>     Attrib V40    0.1841490815235093
#>     Attrib V41    -0.164492449462417
#>     Attrib V42    -0.3047221287294081
#>     Attrib V43    -0.10935612735185848
#>     Attrib V44    -0.8728765425724376
#>     Attrib V45    -0.39764714089932746
#>     Attrib V46    -0.43121009275900907
#>     Attrib V47    0.02456072288263443
#>     Attrib V48    0.16170432240090238
#>     Attrib V49    -0.23484830620934788
#>     Attrib V5    0.02016981271361834
#>     Attrib V50    1.1293988899504082
#>     Attrib V51    -0.28913889098435747
#>     Attrib V52    -0.15891154811174021
#>     Attrib V53    -0.16832937940642637
#>     Attrib V54    -0.33802235368403954
#>     Attrib V55    0.584513982017798
#>     Attrib V56    0.1717554830358453
#>     Attrib V57    0.3519085805280234
#>     Attrib V58    -0.5472469306653377
#>     Attrib V59    0.19001885321144196
#>     Attrib V6    -0.31945013385066645
#>     Attrib V60    0.3214704222790291
#>     Attrib V7    -0.4635819333691616
#>     Attrib V8    -0.08711575881317558
#>     Attrib V9    -0.6673179446736854
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.17170106743258232
#>     Attrib V1    0.7073472775542631
#>     Attrib V10    -0.471406144786149
#>     Attrib V11    -0.39778243014969844
#>     Attrib V12    -0.21580215324635738
#>     Attrib V13    -0.23950999525374145
#>     Attrib V14    0.07735089985720539
#>     Attrib V15    0.2864478124865047
#>     Attrib V16    0.34840398867421946
#>     Attrib V17    0.1559521678288022
#>     Attrib V18    -0.041860448912675034
#>     Attrib V19    0.05280788639586112
#>     Attrib V2    0.29019171094979485
#>     Attrib V20    0.6033716967183417
#>     Attrib V21    0.6734909473648807
#>     Attrib V22    0.30546982357927094
#>     Attrib V23    -0.2719689167857028
#>     Attrib V24    -0.11875993450914062
#>     Attrib V25    -0.6523766450170628
#>     Attrib V26    -0.8907768497060005
#>     Attrib V27    -0.8989287292438918
#>     Attrib V28    -0.7893909911563594
#>     Attrib V29    -0.2708462704156052
#>     Attrib V3    0.10338126607897882
#>     Attrib V30    0.13860056977541485
#>     Attrib V31    -0.9487353953286122
#>     Attrib V32    0.1374862366067131
#>     Attrib V33    0.3277841457661407
#>     Attrib V34    -0.23568888083584477
#>     Attrib V35    -0.5378370604669866
#>     Attrib V36    -0.658365129052583
#>     Attrib V37    -0.35656973489621596
#>     Attrib V38    0.12993652506491274
#>     Attrib V39    0.40726534139836146
#>     Attrib V4    0.03013164690909236
#>     Attrib V40    0.0023372564353894036
#>     Attrib V41    -0.16963854468681705
#>     Attrib V42    0.38294157937150475
#>     Attrib V43    0.33493516027350656
#>     Attrib V44    0.671317283125045
#>     Attrib V45    0.12617467565189808
#>     Attrib V46    0.19830007390497728
#>     Attrib V47    -0.23883556684610988
#>     Attrib V48    0.04135558716374226
#>     Attrib V49    0.14488834353741453
#>     Attrib V5    -0.32000499691570794
#>     Attrib V50    -0.7698126525140129
#>     Attrib V51    0.05533236139969325
#>     Attrib V52    -0.06978743728276783
#>     Attrib V53    0.2886658839014522
#>     Attrib V54    0.5944339333444089
#>     Attrib V55    -0.4718077390349803
#>     Attrib V56    0.8684960904503765
#>     Attrib V57    0.03025289175087503
#>     Attrib V58    0.5455307537619228
#>     Attrib V59    0.3683033805324576
#>     Attrib V6    -0.10161198280430489
#>     Attrib V60    0.5901477861662445
#>     Attrib V7    0.11822891551492738
#>     Attrib V8    -0.5182259021550903
#>     Attrib V9    -0.013902124352600504
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.14138313832709887
#>     Attrib V1    0.6889990980133376
#>     Attrib V10    -0.5167111984682542
#>     Attrib V11    -0.35930394145677136
#>     Attrib V12    -0.1869361402797492
#>     Attrib V13    -0.2268145937400112
#>     Attrib V14    0.050572944282411804
#>     Attrib V15    0.2794064410370457
#>     Attrib V16    0.25709204530230023
#>     Attrib V17    0.19726678357859026
#>     Attrib V18    -0.013139217555078379
#>     Attrib V19    0.1042085877457378
#>     Attrib V2    0.21849994574773704
#>     Attrib V20    0.6090037554289063
#>     Attrib V21    0.7120586985867737
#>     Attrib V22    0.39838420726080026
#>     Attrib V23    -0.16895071370556203
#>     Attrib V24    -0.19273207596037514
#>     Attrib V25    -0.6524498383000243
#>     Attrib V26    -0.8078239147868412
#>     Attrib V27    -0.8735785779112321
#>     Attrib V28    -0.7044779072100175
#>     Attrib V29    -0.24244391673398977
#>     Attrib V3    0.13876891024970134
#>     Attrib V30    0.2200405896709929
#>     Attrib V31    -1.084880167608621
#>     Attrib V32    0.11252570142926285
#>     Attrib V33    0.3051134319557715
#>     Attrib V34    -0.31815447656992596
#>     Attrib V35    -0.5164271688455387
#>     Attrib V36    -0.6584841209962927
#>     Attrib V37    -0.34320709532983884
#>     Attrib V38    0.1670492311261501
#>     Attrib V39    0.46260952386781945
#>     Attrib V4    0.0759229916753438
#>     Attrib V40    -0.060561295259821554
#>     Attrib V41    -0.14422366407925138
#>     Attrib V42    0.4239508516923521
#>     Attrib V43    0.36530887356777375
#>     Attrib V44    0.7603572729006213
#>     Attrib V45    0.26530068511979316
#>     Attrib V46    0.21536480493057297
#>     Attrib V47    -0.14200129800558722
#>     Attrib V48    -0.023821714712307224
#>     Attrib V49    0.17179584500184536
#>     Attrib V5    -0.3532616987149706
#>     Attrib V50    -0.8131455191351312
#>     Attrib V51    0.06977871842608263
#>     Attrib V52    0.006268911096987263
#>     Attrib V53    0.37470746683592127
#>     Attrib V54    0.5731954491995199
#>     Attrib V55    -0.5229624879223636
#>     Attrib V56    0.866769898150118
#>     Attrib V57    -0.06535543026604962
#>     Attrib V58    0.5298379686816715
#>     Attrib V59    0.3689679447654761
#>     Attrib V6    -0.14657368342292645
#>     Attrib V60    0.5087589277251383
#>     Attrib V7    0.12274980319902533
#>     Attrib V8    -0.4465470817885863
#>     Attrib V9    -0.005195792363927047
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.12903910488568407
#>     Attrib V1    -0.1645040872972137
#>     Attrib V10    0.0016372639933442891
#>     Attrib V11    -0.1056940703577472
#>     Attrib V12    -0.11839140514811883
#>     Attrib V13    -0.0655419518959849
#>     Attrib V14    0.04015161231132597
#>     Attrib V15    0.033782822514956665
#>     Attrib V16    0.10363333008333582
#>     Attrib V17    0.15394549505586835
#>     Attrib V18    0.15343773235208916
#>     Attrib V19    0.05370401376727008
#>     Attrib V2    0.04673606278363939
#>     Attrib V20    -0.07037273976094226
#>     Attrib V21    -0.14611476463200743
#>     Attrib V22    -0.12128931412687663
#>     Attrib V23    -0.03527839048184804
#>     Attrib V24    -0.1859286019707196
#>     Attrib V25    0.05729050077957435
#>     Attrib V26    0.07886727996128312
#>     Attrib V27    -0.0029741000826409665
#>     Attrib V28    -1.631135612815152E-4
#>     Attrib V29    -0.09735544569433752
#>     Attrib V3    0.04943483043040113
#>     Attrib V30    -0.09083215175302703
#>     Attrib V31    0.35417344809017376
#>     Attrib V32    -0.005276839296228844
#>     Attrib V33    0.016116578301334335
#>     Attrib V34    0.1461955803780203
#>     Attrib V35    0.1155687663384957
#>     Attrib V36    0.33531161202904886
#>     Attrib V37    0.16351115381882794
#>     Attrib V38    0.010941063652592908
#>     Attrib V39    -0.12357600509170756
#>     Attrib V4    0.0824110191725873
#>     Attrib V40    0.15218367103795719
#>     Attrib V41    0.03570611037798587
#>     Attrib V42    -0.09968862219871577
#>     Attrib V43    -0.0011426104121239778
#>     Attrib V44    -0.2658049202064299
#>     Attrib V45    -0.17760837024629822
#>     Attrib V46    -0.18588409165666436
#>     Attrib V47    -0.0034925127674017764
#>     Attrib V48    -0.021707194256206708
#>     Attrib V49    -0.11941275239002923
#>     Attrib V5    0.06918405949367193
#>     Attrib V50    0.3566373954788922
#>     Attrib V51    -0.07161714938713722
#>     Attrib V52    0.008009212145362704
#>     Attrib V53    -0.11907198249467373
#>     Attrib V54    -0.18409959828569536
#>     Attrib V55    0.13144770446706128
#>     Attrib V56    0.029713316823380242
#>     Attrib V57    0.22235396832015472
#>     Attrib V58    -0.17670240313309982
#>     Attrib V59    -0.04971705518432996
#>     Attrib V6    0.05749441135209856
#>     Attrib V60    -0.0789715887191706
#>     Attrib V7    -0.02048907773592287
#>     Attrib V8    0.2407671222754061
#>     Attrib V9    -0.005429709672904667
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    1.0600962217279826
#>     Attrib V1    0.4099986687712007
#>     Attrib V10    0.7975496391232346
#>     Attrib V11    1.2507161421664634
#>     Attrib V12    1.32324432845158
#>     Attrib V13    0.1755911107229175
#>     Attrib V14    -0.47313127827227947
#>     Attrib V15    -0.7893837718757627
#>     Attrib V16    -1.1847095475594835
#>     Attrib V17    -0.4805186104754056
#>     Attrib V18    -0.5174744592724232
#>     Attrib V19    -0.3426861513982551
#>     Attrib V2    -0.5481837748356108
#>     Attrib V20    -1.0339306748166919
#>     Attrib V21    -0.44482339915640623
#>     Attrib V22    0.004486059296934592
#>     Attrib V23    0.6746042437904162
#>     Attrib V24    1.0132079625158827
#>     Attrib V25    0.3937056046423448
#>     Attrib V26    1.2575905277061672
#>     Attrib V27    1.7456387862071852
#>     Attrib V28    1.6432521866357581
#>     Attrib V29    0.990458401357621
#>     Attrib V3    -0.12005629705237351
#>     Attrib V30    0.2750782184368425
#>     Attrib V31    -0.9765651003771346
#>     Attrib V32    0.01322611014610481
#>     Attrib V33    -0.8482700200301576
#>     Attrib V34    -0.3577310070845185
#>     Attrib V35    0.7338140519763657
#>     Attrib V36    -0.5119541000924065
#>     Attrib V37    -0.3958943007204656
#>     Attrib V38    -0.33060104486629793
#>     Attrib V39    0.19581699597240798
#>     Attrib V4    0.34388565603739585
#>     Attrib V40    0.16320655705492884
#>     Attrib V41    1.3566378859386556
#>     Attrib V42    0.20585188079988667
#>     Attrib V43    0.1691218047584148
#>     Attrib V44    1.0768958391435968
#>     Attrib V45    0.4905009172861554
#>     Attrib V46    0.7461888394371676
#>     Attrib V47    0.6058161376255566
#>     Attrib V48    0.3898657506235346
#>     Attrib V49    0.7893941181349318
#>     Attrib V5    0.9154152865031964
#>     Attrib V50    -0.48074107422747125
#>     Attrib V51    1.0718249623107443
#>     Attrib V52    0.7362709939438199
#>     Attrib V53    0.8793281266771285
#>     Attrib V54    0.5953704098765669
#>     Attrib V55    -0.23667476041662427
#>     Attrib V56    -1.0955707956911866
#>     Attrib V57    -0.18993198495727903
#>     Attrib V58    0.5676801320122286
#>     Attrib V59    0.7180516470931141
#>     Attrib V6    1.1657540155043704
#>     Attrib V60    0.7254027869015516
#>     Attrib V7    0.3986621170788956
#>     Attrib V8    -0.895985985143635
#>     Attrib V9    0.6067510159009684
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.19037810826116103
#>     Attrib V1    -0.07511020512128397
#>     Attrib V10    0.015733554702789712
#>     Attrib V11    -0.08746883981356175
#>     Attrib V12    -0.0510277022698248
#>     Attrib V13    -0.03765555509574994
#>     Attrib V14    0.06669156748902436
#>     Attrib V15    -0.030703587444696423
#>     Attrib V16    0.056855991404638935
#>     Attrib V17    0.08481772071157835
#>     Attrib V18    0.0664658652750481
#>     Attrib V19    0.08517290138654256
#>     Attrib V2    0.08105814179845451
#>     Attrib V20    -0.034048506942003946
#>     Attrib V21    -0.07600254182131332
#>     Attrib V22    -0.05746093264705667
#>     Attrib V23    -0.03126165419124259
#>     Attrib V24    -0.12627501696032511
#>     Attrib V25    0.008782290478577688
#>     Attrib V26    -0.03674228261824716
#>     Attrib V27    0.007076634848231366
#>     Attrib V28    0.010173345642518575
#>     Attrib V29    -0.038618369354439665
#>     Attrib V3    0.03784949532796471
#>     Attrib V30    -0.05220342291811256
#>     Attrib V31    0.2024896451226754
#>     Attrib V32    -0.019665122025804834
#>     Attrib V33    0.10023917063666352
#>     Attrib V34    0.10490223453520807
#>     Attrib V35    0.15163969389591647
#>     Attrib V36    0.23909363207854425
#>     Attrib V37    0.17738615832851404
#>     Attrib V38    -0.0033130668010791634
#>     Attrib V39    -0.040743711489135234
#>     Attrib V4    0.10243511425472006
#>     Attrib V40    0.10480052584382638
#>     Attrib V41    0.0396145356883923
#>     Attrib V42    0.0015590273031904913
#>     Attrib V43    -0.0010374762107179189
#>     Attrib V44    -0.13527919766117472
#>     Attrib V45    -0.0793340343506259
#>     Attrib V46    -0.1284422671360962
#>     Attrib V47    -0.030465083729950902
#>     Attrib V48    0.026759003062597948
#>     Attrib V49    -0.0622122264144851
#>     Attrib V5    0.055570373062808216
#>     Attrib V50    0.23307201482531706
#>     Attrib V51    -0.05563704389593211
#>     Attrib V52    -0.026683348751446203
#>     Attrib V53    -0.046155125107439826
#>     Attrib V54    -0.10668525191254684
#>     Attrib V55    0.08571677146665023
#>     Attrib V56    0.03233195460661294
#>     Attrib V57    0.17442986806929833
#>     Attrib V58    -0.07945788547438382
#>     Attrib V59    -0.01673098577131128
#>     Attrib V6    0.07020717262264253
#>     Attrib V60    0.03821168083905212
#>     Attrib V7    -0.0010127817146779604
#>     Attrib V8    0.18544733087185786
#>     Attrib V9    -0.02854099776596931
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.5175751817534973
#>     Attrib V1    0.4665445796331365
#>     Attrib V10    0.2389440895446145
#>     Attrib V11    0.3915196597843809
#>     Attrib V12    0.35314778997186014
#>     Attrib V13    -0.04221723569873916
#>     Attrib V14    -0.23240821431428862
#>     Attrib V15    -0.31710580600390487
#>     Attrib V16    -0.508717752625214
#>     Attrib V17    -0.3197949766907042
#>     Attrib V18    -0.2933828020408569
#>     Attrib V19    -0.25133797222987186
#>     Attrib V2    -0.2282698307381383
#>     Attrib V20    -0.33166023287777363
#>     Attrib V21    0.08618421661845027
#>     Attrib V22    0.13852156350766967
#>     Attrib V23    0.18854984922367513
#>     Attrib V24    0.3000756071926158
#>     Attrib V25    -0.10856161452571769
#>     Attrib V26    0.4672666357477224
#>     Attrib V27    0.7351592461143371
#>     Attrib V28    0.8490459976935122
#>     Attrib V29    0.704298321935304
#>     Attrib V3    -0.14203048636556218
#>     Attrib V30    0.5813184726887347
#>     Attrib V31    -0.6776004507959936
#>     Attrib V32    -0.0010669084562425454
#>     Attrib V33    -0.2906690556210387
#>     Attrib V34    -0.434841591434518
#>     Attrib V35    0.01728830196751971
#>     Attrib V36    -0.42914811225467
#>     Attrib V37    -0.3978692710284221
#>     Attrib V38    -0.16054782276778942
#>     Attrib V39    0.14812269503829395
#>     Attrib V4    0.19275811830384237
#>     Attrib V40    -0.1796708822202975
#>     Attrib V41    0.4502366401059588
#>     Attrib V42    0.31481292943250716
#>     Attrib V43    0.25929587565288914
#>     Attrib V44    0.8578312046625458
#>     Attrib V45    0.4044181497111531
#>     Attrib V46    0.4023553296206527
#>     Attrib V47    0.2539750946422463
#>     Attrib V48    0.3044981746469441
#>     Attrib V49    0.4231482347878727
#>     Attrib V5    0.29076363701039265
#>     Attrib V50    -0.401013643463367
#>     Attrib V51    0.5141010990742824
#>     Attrib V52    0.3159276140729851
#>     Attrib V53    0.4733419343681209
#>     Attrib V54    0.29031847021904345
#>     Attrib V55    -0.2744930704784128
#>     Attrib V56    -0.34762388905403924
#>     Attrib V57    -0.12445017568474549
#>     Attrib V58    0.41833355734144423
#>     Attrib V59    0.42435828780596946
#>     Attrib V6    0.43596678525772786
#>     Attrib V60    0.4256067233352832
#>     Attrib V7    0.07191152174647797
#>     Attrib V8    -0.4068991831318144
#>     Attrib V9    0.3375586372478165
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.9159191209811777
#>     Attrib V1    -0.2351631549190322
#>     Attrib V10    -0.6096673675628488
#>     Attrib V11    -1.009010950083419
#>     Attrib V12    -0.8190652775619934
#>     Attrib V13    -0.2079188321404081
#>     Attrib V14    0.11062332434206248
#>     Attrib V15    0.4514076779847574
#>     Attrib V16    0.8844221858403379
#>     Attrib V17    0.29633743108990723
#>     Attrib V18    0.2305573535262757
#>     Attrib V19    0.014592740973054713
#>     Attrib V2    0.5494634687094466
#>     Attrib V20    0.6812527099497167
#>     Attrib V21    0.1573953696053018
#>     Attrib V22    -0.33803088614089927
#>     Attrib V23    -1.097729431031219
#>     Attrib V24    -1.1770370424625147
#>     Attrib V25    -0.5366699694762038
#>     Attrib V26    -1.2334122734369346
#>     Attrib V27    -1.4568260587134774
#>     Attrib V28    -1.5448572290742548
#>     Attrib V29    -1.1985024390776318
#>     Attrib V3    0.35831900925190224
#>     Attrib V30    -0.4494860031653201
#>     Attrib V31    0.9930800243698548
#>     Attrib V32    0.10093685135599395
#>     Attrib V33    0.8567012515555057
#>     Attrib V34    0.5962898227892616
#>     Attrib V35    -0.42727645019481936
#>     Attrib V36    0.6351081759702899
#>     Attrib V37    0.51793555697247
#>     Attrib V38    0.4606629912750787
#>     Attrib V39    -0.18630361336984333
#>     Attrib V4    -0.1987315280448281
#>     Attrib V40    -0.15093703978887746
#>     Attrib V41    -1.247977330674722
#>     Attrib V42    -0.5048864559098255
#>     Attrib V43    -0.43412447233227786
#>     Attrib V44    -1.1840731217906162
#>     Attrib V45    -0.38613378585804725
#>     Attrib V46    -0.7918087717195001
#>     Attrib V47    -0.7803043030569532
#>     Attrib V48    -0.4980999095310341
#>     Attrib V49    -0.9005469063168956
#>     Attrib V5    -0.6704941391313246
#>     Attrib V50    0.3704537287115599
#>     Attrib V51    -1.1525492322283963
#>     Attrib V52    -0.6478175815859765
#>     Attrib V53    -1.1425992618179956
#>     Attrib V54    -0.5493584537600278
#>     Attrib V55    -0.13117927293871165
#>     Attrib V56    0.939636067200904
#>     Attrib V57    0.3898444321373659
#>     Attrib V58    -0.839227914775856
#>     Attrib V59    -0.4227195713767685
#>     Attrib V6    -0.9608299104676099
#>     Attrib V60    -0.3181436759173143
#>     Attrib V7    -0.5050857387397598
#>     Attrib V8    0.580325881568453
#>     Attrib V9    -0.4643961724303388
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.05530012878253686
#>     Attrib V1    0.3681684936683088
#>     Attrib V10    -0.2897161701295293
#>     Attrib V11    -0.11218786538705593
#>     Attrib V12    -0.028032622589993478
#>     Attrib V13    -0.10537121511098554
#>     Attrib V14    0.08135138175216462
#>     Attrib V15    0.1488113250344152
#>     Attrib V16    0.11428919588054147
#>     Attrib V17    0.08565490333319813
#>     Attrib V18    0.037763024008833045
#>     Attrib V19    0.039913553542327534
#>     Attrib V2    0.11245086413800881
#>     Attrib V20    0.3823027342957726
#>     Attrib V21    0.4353244196832134
#>     Attrib V22    0.24475773383775679
#>     Attrib V23    -0.1397182323430262
#>     Attrib V24    -0.017494522478380018
#>     Attrib V25    -0.2627399846118131
#>     Attrib V26    -0.4795290211935227
#>     Attrib V27    -0.49438917768141893
#>     Attrib V28    -0.4358494694265911
#>     Attrib V29    -0.13670982068390786
#>     Attrib V3    0.07310525249536044
#>     Attrib V30    0.03583256808727725
#>     Attrib V31    -0.625032249493998
#>     Attrib V32    0.08985404601922886
#>     Attrib V33    0.12774396569359178
#>     Attrib V34    -0.16500494452440823
#>     Attrib V35    -0.2010803080423612
#>     Attrib V36    -0.31879914714507307
#>     Attrib V37    -0.16635371355328496
#>     Attrib V38    0.10311419562719017
#>     Attrib V39    0.2792786758589754
#>     Attrib V4    -0.01237675293606671
#>     Attrib V40    -0.023843635169757467
#>     Attrib V41    -0.046925837065559625
#>     Attrib V42    0.1818060343103679
#>     Attrib V43    0.20710488167963712
#>     Attrib V44    0.38054362147530296
#>     Attrib V45    0.20311082520174997
#>     Attrib V46    0.13652444431573357
#>     Attrib V47    -0.05124765669631612
#>     Attrib V48    0.01321355825748853
#>     Attrib V49    0.0884364272792635
#>     Attrib V5    -0.22493050250507252
#>     Attrib V50    -0.4075930049900791
#>     Attrib V51    0.11588238252475935
#>     Attrib V52    0.04400967983467079
#>     Attrib V53    0.247842623042157
#>     Attrib V54    0.34350015642409637
#>     Attrib V55    -0.19624958780886395
#>     Attrib V56    0.46849192724311906
#>     Attrib V57    -0.010509995321349967
#>     Attrib V58    0.322964134449596
#>     Attrib V59    0.18756924473268732
#>     Attrib V6    -0.0738951848323657
#>     Attrib V60    0.31633870833856037
#>     Attrib V7    0.022279380925671763
#>     Attrib V8    -0.2608478636771493
#>     Attrib V9    -0.0011877597781528631
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.1727952351205106
#>     Attrib V1    0.062017803934600366
#>     Attrib V10    0.08475529280116909
#>     Attrib V11    0.009842580136276924
#>     Attrib V12    0.03270963243727231
#>     Attrib V13    0.0373406563630111
#>     Attrib V14    0.033153474099541225
#>     Attrib V15    0.021294448641771158
#>     Attrib V16    0.057331663756925076
#>     Attrib V17    0.09602208238566828
#>     Attrib V18    0.048854810701237476
#>     Attrib V19    -0.003456238832389846
#>     Attrib V2    0.10891329856011188
#>     Attrib V20    -0.031034116985763784
#>     Attrib V21    7.865209105235131E-4
#>     Attrib V22    -0.02498784601023151
#>     Attrib V23    -0.04460893790489357
#>     Attrib V24    -0.11671047493306398
#>     Attrib V25    -0.016046066895819777
#>     Attrib V26    -0.012080019384639283
#>     Attrib V27    -0.05311687290687955
#>     Attrib V28    -0.018977933832546215
#>     Attrib V29    -0.07848614201004869
#>     Attrib V3    0.07723993481527176
#>     Attrib V30    0.0067778710549901
#>     Attrib V31    0.08624390097512187
#>     Attrib V32    -0.010516258578032744
#>     Attrib V33    0.012869357154540639
#>     Attrib V34    0.047947497695873476
#>     Attrib V35    0.11329431936440323
#>     Attrib V36    0.08479348245688731
#>     Attrib V37    0.11627230888484218
#>     Attrib V38    0.004156326735305736
#>     Attrib V39    0.07601441261562465
#>     Attrib V4    0.137996677926522
#>     Attrib V40    0.10167288052574953
#>     Attrib V41    0.07053822209833416
#>     Attrib V42    0.07228963591761088
#>     Attrib V43    0.013908758965699099
#>     Attrib V44    -0.04116596023637384
#>     Attrib V45    0.02919038561651076
#>     Attrib V46    0.012201816616247908
#>     Attrib V47    0.020652011197674618
#>     Attrib V48    0.054125476100212955
#>     Attrib V49    -0.0032658526323029245
#>     Attrib V5    0.057785023816125845
#>     Attrib V50    0.06725848363761512
#>     Attrib V51    0.0265343192543745
#>     Attrib V52    0.039196444692073895
#>     Attrib V53    0.0342360486783308
#>     Attrib V54    -0.018508069876536578
#>     Attrib V55    0.023745433732567857
#>     Attrib V56    0.09366789278168379
#>     Attrib V57    0.09690193388239755
#>     Attrib V58    0.04787518931354663
#>     Attrib V59    0.06199180399043646
#>     Attrib V6    0.04543811055359196
#>     Attrib V60    0.09937700750409323
#>     Attrib V7    -0.02754026514023884
#>     Attrib V8    0.059334430748170686
#>     Attrib V9    0.027510194677181958
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.10020933791926903
#>     Attrib V1    0.34420088633591595
#>     Attrib V10    -0.2129143372023722
#>     Attrib V11    -0.08868548365254857
#>     Attrib V12    -0.05504578567864052
#>     Attrib V13    -0.038365260880166
#>     Attrib V14    0.07039522522673923
#>     Attrib V15    0.13416409233913512
#>     Attrib V16    0.0972171206314407
#>     Attrib V17    0.09039499907825452
#>     Attrib V18    0.04695114108688868
#>     Attrib V19    0.05943499743633217
#>     Attrib V2    0.16766823679204326
#>     Attrib V20    0.3041653392811914
#>     Attrib V21    0.2540626547923343
#>     Attrib V22    0.1630432688139172
#>     Attrib V23    -0.0880589961507493
#>     Attrib V24    -0.03565298599953688
#>     Attrib V25    -0.26784734852735753
#>     Attrib V26    -0.34921983465083206
#>     Attrib V27    -0.43150198470536116
#>     Attrib V28    -0.4031935012514065
#>     Attrib V29    -0.2082723313698903
#>     Attrib V3    0.0159932242569296
#>     Attrib V30    -0.025142573898376302
#>     Attrib V31    -0.46956340688852083
#>     Attrib V32    0.01745972999104143
#>     Attrib V33    0.1060160992485943
#>     Attrib V34    -0.052977608899238644
#>     Attrib V35    -0.0597745816322799
#>     Attrib V36    -0.20504599173385177
#>     Attrib V37    -0.10696629901453437
#>     Attrib V38    0.12062529001408667
#>     Attrib V39    0.1857829093370689
#>     Attrib V4    0.0630699641884422
#>     Attrib V40    -0.02004112910638242
#>     Attrib V41    -0.09332951034444802
#>     Attrib V42    0.11697661956997334
#>     Attrib V43    0.14807376095194585
#>     Attrib V44    0.3207125103111086
#>     Attrib V45    0.08906356004496338
#>     Attrib V46    0.09215976530422314
#>     Attrib V47    -0.04977467941562028
#>     Attrib V48    0.028297792106000034
#>     Attrib V49    0.07574983918308076
#>     Attrib V5    -0.1473329221832712
#>     Attrib V50    -0.31022044939034116
#>     Attrib V51    0.04720551990203941
#>     Attrib V52    -0.002193047179236204
#>     Attrib V53    0.22630816682913749
#>     Attrib V54    0.32575319479350534
#>     Attrib V55    -0.11178390755807135
#>     Attrib V56    0.3452069350735319
#>     Attrib V57    0.022507347415123093
#>     Attrib V58    0.23086477421308962
#>     Attrib V59    0.1859555820098114
#>     Attrib V6    -0.09719661134541671
#>     Attrib V60    0.28968169984296344
#>     Attrib V7    0.009127148140394368
#>     Attrib V8    -0.22953990998940926
#>     Attrib V9    0.0018876242693170832
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.12465872389599966
#>     Attrib V1    0.39452744047946814
#>     Attrib V10    -0.2918035957468248
#>     Attrib V11    -0.1830915381609549
#>     Attrib V12    -0.10898565879160592
#>     Attrib V13    -0.15669415048786248
#>     Attrib V14    0.0695135981932449
#>     Attrib V15    0.1516133194164055
#>     Attrib V16    0.16130504032978826
#>     Attrib V17    0.07204173581983433
#>     Attrib V18    0.08572419395730733
#>     Attrib V19    0.042099116260142705
#>     Attrib V2    0.11637025012824269
#>     Attrib V20    0.3461519930436742
#>     Attrib V21    0.41775761056511806
#>     Attrib V22    0.20670971822048287
#>     Attrib V23    -0.05919912853319969
#>     Attrib V24    -0.08776549631889084
#>     Attrib V25    -0.37968676188435324
#>     Attrib V26    -0.45865985358479144
#>     Attrib V27    -0.4598278119184069
#>     Attrib V28    -0.3191483820536826
#>     Attrib V29    -0.09823591858198848
#>     Attrib V3    0.09487629586230939
#>     Attrib V30    0.1252910876644925
#>     Attrib V31    -0.658214554218237
#>     Attrib V32    0.061826180855879334
#>     Attrib V33    0.1579259464993477
#>     Attrib V34    -0.1365682493561766
#>     Attrib V35    -0.19729161069604018
#>     Attrib V36    -0.25761507111218346
#>     Attrib V37    -0.17851704143910443
#>     Attrib V38    0.05488080755569204
#>     Attrib V39    0.2607566315080926
#>     Attrib V4    0.032491863012156515
#>     Attrib V40    -0.055732328261326375
#>     Attrib V41    -0.09565094278032729
#>     Attrib V42    0.24871599636208216
#>     Attrib V43    0.13051127094350629
#>     Attrib V44    0.4216644518865295
#>     Attrib V45    0.18956950306657686
#>     Attrib V46    0.1531497911464838
#>     Attrib V47    -0.06927122583011089
#>     Attrib V48    -0.041499550694683994
#>     Attrib V49    0.13289565564867659
#>     Attrib V5    -0.16816093711280203
#>     Attrib V50    -0.43311904561514114
#>     Attrib V51    0.0941617629041431
#>     Attrib V52    0.0350083689817246
#>     Attrib V53    0.21737749921528995
#>     Attrib V54    0.22286644390244473
#>     Attrib V55    -0.2852167511948341
#>     Attrib V56    0.39431504595832795
#>     Attrib V57    -0.0475403148087228
#>     Attrib V58    0.35445875669755056
#>     Attrib V59    0.13643154578994732
#>     Attrib V6    -0.09622737631838044
#>     Attrib V60    0.28017529697641674
#>     Attrib V7    0.005525636329782552
#>     Attrib V8    -0.22002751617258595
#>     Attrib V9    0.04106788588175246
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
#>  0.1304348 
```
