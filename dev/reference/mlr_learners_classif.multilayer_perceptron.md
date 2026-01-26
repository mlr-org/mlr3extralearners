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
#>     Threshold    -0.6132539130713003
#>     Node 2    2.0111204824819486
#>     Node 3    1.7281187006787688
#>     Node 4    1.0123392335485788
#>     Node 5    -3.0398595241297883
#>     Node 6    1.5673927540709296
#>     Node 7    4.9384146438935765
#>     Node 8    1.0042708587295899
#>     Node 9    4.179696398052276
#>     Node 10    0.06767381331819254
#>     Node 11    1.2461492245399857
#>     Node 12    1.3174769797876387
#>     Node 13    1.3305945964308046
#>     Node 14    1.672498767363514
#>     Node 15    -1.9517850369265
#>     Node 16    0.5098496535556292
#>     Node 17    0.5734733396414986
#>     Node 18    0.14784507017126605
#>     Node 19    2.676348918332105
#>     Node 20    1.1806574377542722
#>     Node 21    -2.1991781638689303
#>     Node 22    0.8848304418666264
#>     Node 23    1.6025535782842864
#>     Node 24    -1.5924319946672463
#>     Node 25    3.7696168121589713
#>     Node 26    0.6676457128536943
#>     Node 27    1.8166071957673673
#>     Node 28    -2.8746024210553336
#>     Node 29    1.0765014997620466
#>     Node 30    0.8600268845088693
#>     Node 31    1.7936300665712328
#>     Node 32    1.0612256280541033
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.6362259540353122
#>     Node 2    -2.03526689780489
#>     Node 3    -1.7330928309664577
#>     Node 4    -0.9805376623734762
#>     Node 5    3.0182569896953684
#>     Node 6    -1.5389219750827874
#>     Node 7    -4.944084504139021
#>     Node 8    -1.0228876656770953
#>     Node 9    -4.1907209094539875
#>     Node 10    -0.12397646821421993
#>     Node 11    -1.2188647862515873
#>     Node 12    -1.3852876937434409
#>     Node 13    -1.2747492397142033
#>     Node 14    -1.6227102830039533
#>     Node 15    1.948475734790732
#>     Node 16    -0.5222513481360096
#>     Node 17    -0.530311628512275
#>     Node 18    -0.09299285652331024
#>     Node 19    -2.6661286696014215
#>     Node 20    -1.161275236955185
#>     Node 21    2.23497809321614
#>     Node 22    -0.9445685318886863
#>     Node 23    -1.6639457721804025
#>     Node 24    1.5830585084303979
#>     Node 25    -3.762990310929569
#>     Node 26    -0.7535811550734942
#>     Node 27    -1.8251871459725728
#>     Node 28    2.8561084775134473
#>     Node 29    -1.1008587437146764
#>     Node 30    -0.7878405631322155
#>     Node 31    -1.7576331395527967
#>     Node 32    -1.091808164056098
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.1788144156409036
#>     Attrib V1    0.6169637528269305
#>     Attrib V10    0.016278589611335235
#>     Attrib V11    0.14495430023773692
#>     Attrib V12    0.322918509749728
#>     Attrib V13    0.01852475235609965
#>     Attrib V14    -0.7647828351648623
#>     Attrib V15    -0.0817645944891263
#>     Attrib V16    0.2703029402506405
#>     Attrib V17    0.4492184083684543
#>     Attrib V18    0.10030876768954725
#>     Attrib V19    0.1813327101014864
#>     Attrib V2    0.45124647773529264
#>     Attrib V20    0.37244929037010316
#>     Attrib V21    0.611746311749986
#>     Attrib V22    0.6554378211119926
#>     Attrib V23    0.6208945871747165
#>     Attrib V24    0.6616686887796773
#>     Attrib V25    -0.05613152497868229
#>     Attrib V26    -0.6750959831335127
#>     Attrib V27    -0.5069031187429335
#>     Attrib V28    0.02301419447420418
#>     Attrib V29    -0.4605580848158425
#>     Attrib V3    -0.07650868044151338
#>     Attrib V30    0.38601155896209793
#>     Attrib V31    -1.5035920774481866
#>     Attrib V32    0.14446515685319408
#>     Attrib V33    1.1570327743768327
#>     Attrib V34    0.31039700217765853
#>     Attrib V35    0.035835379915848176
#>     Attrib V36    -0.6818565575401749
#>     Attrib V37    -0.30592998179386355
#>     Attrib V38    0.5215419814953254
#>     Attrib V39    0.1430576037690254
#>     Attrib V4    0.18044407800982137
#>     Attrib V40    -0.4528010238130539
#>     Attrib V41    0.1443592998246385
#>     Attrib V42    0.7319017377351028
#>     Attrib V43    0.10982379570088376
#>     Attrib V44    0.193632732007739
#>     Attrib V45    0.25822332118130803
#>     Attrib V46    0.3102469606100986
#>     Attrib V47    -0.10056675013883323
#>     Attrib V48    0.3472528864171609
#>     Attrib V49    0.13192123777983036
#>     Attrib V5    -0.6064543060180773
#>     Attrib V50    -0.433966399247326
#>     Attrib V51    0.3373811788715775
#>     Attrib V52    0.43167660329061375
#>     Attrib V53    -0.43859539659571967
#>     Attrib V54    0.2281412731823519
#>     Attrib V55    -0.749683536085522
#>     Attrib V56    0.6457260112453923
#>     Attrib V57    -0.4860914075721026
#>     Attrib V58    -0.010481378172534752
#>     Attrib V59    0.42269723662760267
#>     Attrib V6    -0.6310434165066676
#>     Attrib V60    0.6175670961633275
#>     Attrib V7    -0.539269828981236
#>     Attrib V8    -0.4096375331083847
#>     Attrib V9    0.6243320266322547
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.16614682402902173
#>     Attrib V1    0.6699499277836424
#>     Attrib V10    -0.5696367346093638
#>     Attrib V11    -0.1548212764894251
#>     Attrib V12    0.19911309531968263
#>     Attrib V13    -0.012381975220664074
#>     Attrib V14    0.16009403481387652
#>     Attrib V15    0.5752168297208302
#>     Attrib V16    0.32289918657662064
#>     Attrib V17    0.1676230926046346
#>     Attrib V18    -0.04762207482534974
#>     Attrib V19    0.014801348256476034
#>     Attrib V2    0.3492138794003489
#>     Attrib V20    0.18482072983766287
#>     Attrib V21    0.1744092164761271
#>     Attrib V22    -0.08106223570674409
#>     Attrib V23    -0.2662838517994889
#>     Attrib V24    0.040891129291635436
#>     Attrib V25    -0.36726459799142724
#>     Attrib V26    -0.7271062735855527
#>     Attrib V27    -0.5155014633132482
#>     Attrib V28    -0.33576973506652624
#>     Attrib V29    -0.4057300408610222
#>     Attrib V3    -0.02597064267154983
#>     Attrib V30    -0.03227791837224327
#>     Attrib V31    -0.8771778128015517
#>     Attrib V32    0.04227352001669174
#>     Attrib V33    0.6894394371057079
#>     Attrib V34    0.16368877371871837
#>     Attrib V35    -0.032562898450389885
#>     Attrib V36    -0.3890357829262908
#>     Attrib V37    -0.207882806982951
#>     Attrib V38    0.2835018311858083
#>     Attrib V39    0.11217031330455601
#>     Attrib V4    0.24252652981594258
#>     Attrib V40    -0.2962334797439124
#>     Attrib V41    -0.16645851194893607
#>     Attrib V42    0.2788143734475629
#>     Attrib V43    -0.017182377048740555
#>     Attrib V44    -0.09882802611915732
#>     Attrib V45    -0.0074843708196601424
#>     Attrib V46    -0.033363157599406126
#>     Attrib V47    -0.3555618136291681
#>     Attrib V48    0.025802986555940818
#>     Attrib V49    -0.09223207782234033
#>     Attrib V5    -0.2795307564657635
#>     Attrib V50    -0.21883639956354334
#>     Attrib V51    -0.030911829275313846
#>     Attrib V52    0.2982853083634938
#>     Attrib V53    0.13029732302809557
#>     Attrib V54    0.7056153782520725
#>     Attrib V55    0.589519514915522
#>     Attrib V56    0.5496634384155772
#>     Attrib V57    0.3063466974568886
#>     Attrib V58    0.38634065763103104
#>     Attrib V59    0.8186217513051566
#>     Attrib V6    -0.31210697169990326
#>     Attrib V60    0.6921488482211728
#>     Attrib V7    -0.23155956484557372
#>     Attrib V8    -0.16109978760367522
#>     Attrib V9    -0.06529405864257236
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.025914320092112194
#>     Attrib V1    0.42859489490701747
#>     Attrib V10    -0.27470920613645644
#>     Attrib V11    0.005115217788817928
#>     Attrib V12    0.17700352241836062
#>     Attrib V13    0.022233754417939795
#>     Attrib V14    0.15359929905812875
#>     Attrib V15    0.3459368798891762
#>     Attrib V16    0.18309319630125068
#>     Attrib V17    0.08108514673732627
#>     Attrib V18    -0.06375873137729964
#>     Attrib V19    -0.11279824598368594
#>     Attrib V2    0.16929565606282912
#>     Attrib V20    0.00453715696735417
#>     Attrib V21    0.05325164317903305
#>     Attrib V22    -0.23560401271951475
#>     Attrib V23    -0.267118488331465
#>     Attrib V24    -0.043479596628966666
#>     Attrib V25    -0.29234790193011584
#>     Attrib V26    -0.38409822649152525
#>     Attrib V27    -0.24394974560543653
#>     Attrib V28    -0.0982446964814331
#>     Attrib V29    -0.12921414041695506
#>     Attrib V3    0.014598684701819962
#>     Attrib V30    0.024277309106053007
#>     Attrib V31    -0.5248789053884495
#>     Attrib V32    -7.145401394697228E-4
#>     Attrib V33    0.4455001264189354
#>     Attrib V34    0.15847853862706074
#>     Attrib V35    0.031117840451021436
#>     Attrib V36    -0.2874330205553981
#>     Attrib V37    -0.2172623755098255
#>     Attrib V38    0.06105355711987534
#>     Attrib V39    0.019327888248039715
#>     Attrib V4    0.1739556185828728
#>     Attrib V40    -0.21959196469661973
#>     Attrib V41    -0.15709040640377261
#>     Attrib V42    0.13393695442483367
#>     Attrib V43    -0.04909714388511996
#>     Attrib V44    -0.025435913504217842
#>     Attrib V45    0.11395223558332888
#>     Attrib V46    0.018567467942839835
#>     Attrib V47    -0.2070301533771756
#>     Attrib V48    0.14583257828041105
#>     Attrib V49    0.04365990606460297
#>     Attrib V5    -0.14491903039786402
#>     Attrib V50    -0.09705408786125014
#>     Attrib V51    0.1036802765605252
#>     Attrib V52    0.26245051030072886
#>     Attrib V53    0.1893633455749845
#>     Attrib V54    0.308367299100531
#>     Attrib V55    0.35134745159917163
#>     Attrib V56    0.27254052985475935
#>     Attrib V57    0.2403268038304712
#>     Attrib V58    0.2712227799648299
#>     Attrib V59    0.5338047366777725
#>     Attrib V6    -0.21366723403157903
#>     Attrib V60    0.431422016884438
#>     Attrib V7    -0.16070063673984772
#>     Attrib V8    -0.1286088630679611
#>     Attrib V9    0.08847451982585579
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    0.3938109097941941
#>     Attrib V1    -0.813151965952557
#>     Attrib V10    -0.2689172652382224
#>     Attrib V11    -0.2991906775686618
#>     Attrib V12    -0.25321979593001404
#>     Attrib V13    -0.0033935805854045536
#>     Attrib V14    1.3551333935399146
#>     Attrib V15    0.2839627426296132
#>     Attrib V16    -0.4255752440973744
#>     Attrib V17    -0.5258432776739509
#>     Attrib V18    0.028078787044617585
#>     Attrib V19    -0.2599861357056546
#>     Attrib V2    -0.6094174405622634
#>     Attrib V20    -0.5286221883171116
#>     Attrib V21    -0.8045648006923958
#>     Attrib V22    -0.9287613599235109
#>     Attrib V23    -0.7300681357031126
#>     Attrib V24    -0.7992210563188394
#>     Attrib V25    0.18790912717120553
#>     Attrib V26    0.8419153798758285
#>     Attrib V27    0.6807118056141939
#>     Attrib V28    -0.001719608487517937
#>     Attrib V29    0.7870938568318508
#>     Attrib V3    0.08463177238133184
#>     Attrib V30    -0.5298695751873815
#>     Attrib V31    1.8250167360766254
#>     Attrib V32    -0.12427550105972987
#>     Attrib V33    -1.588948017509609
#>     Attrib V34    -0.4716881978157346
#>     Attrib V35    -0.0315944865869516
#>     Attrib V36    0.9591327226603912
#>     Attrib V37    0.47330717790790827
#>     Attrib V38    -0.5644483848078418
#>     Attrib V39    -0.09051272886163365
#>     Attrib V4    -0.2969927426883187
#>     Attrib V40    0.6137866928291842
#>     Attrib V41    -0.29065022518785505
#>     Attrib V42    -0.9763495071287043
#>     Attrib V43    -0.2169414978470865
#>     Attrib V44    -0.25293639929437506
#>     Attrib V45    -0.490294262972388
#>     Attrib V46    -0.6853707058021257
#>     Attrib V47    -0.15156880612723597
#>     Attrib V48    -0.4990523414814889
#>     Attrib V49    -0.24571314491015217
#>     Attrib V5    0.8859346897075135
#>     Attrib V50    0.7343769034456911
#>     Attrib V51    -0.45295086519857225
#>     Attrib V52    -0.4699838778585049
#>     Attrib V53    0.6944189995537097
#>     Attrib V54    0.004030002806257835
#>     Attrib V55    1.3053552557784611
#>     Attrib V56    -0.8105159036876448
#>     Attrib V57    0.559063207669977
#>     Attrib V58    0.022472502527865878
#>     Attrib V59    -0.3095744040138312
#>     Attrib V6    1.071383821293995
#>     Attrib V60    -0.6716344245583432
#>     Attrib V7    0.7906305225605418
#>     Attrib V8    0.31906510528794324
#>     Attrib V9    -1.1462490792097364
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.11498483930125115
#>     Attrib V1    0.484257165578437
#>     Attrib V10    -0.2746145141946821
#>     Attrib V11    0.10702892610894262
#>     Attrib V12    0.41342718629350916
#>     Attrib V13    -0.08438009206643698
#>     Attrib V14    -0.5199787114279644
#>     Attrib V15    0.012043080110146067
#>     Attrib V16    0.2815832900254125
#>     Attrib V17    0.2565981605336373
#>     Attrib V18    0.04815487502784694
#>     Attrib V19    -0.08759069902287618
#>     Attrib V2    0.25816546434693693
#>     Attrib V20    -0.0962319100122919
#>     Attrib V21    0.03985190406200992
#>     Attrib V22    -0.0325259450683067
#>     Attrib V23    0.013189630877349335
#>     Attrib V24    0.4689255283073603
#>     Attrib V25    0.08452173408111288
#>     Attrib V26    -0.4274449566485716
#>     Attrib V27    -0.40508073374863096
#>     Attrib V28    -0.5250878484536644
#>     Attrib V29    -0.9110203904802595
#>     Attrib V3    -0.16848276165172535
#>     Attrib V30    -0.16214170300841596
#>     Attrib V31    -0.781206839903026
#>     Attrib V32    0.3944924261816337
#>     Attrib V33    0.9899650543379042
#>     Attrib V34    0.3790707236175576
#>     Attrib V35    0.02293916882328817
#>     Attrib V36    -0.6509691870552508
#>     Attrib V37    -0.4933972595037241
#>     Attrib V38    0.008583136028275803
#>     Attrib V39    -0.10803490526742075
#>     Attrib V4    0.10445377208355895
#>     Attrib V40    -0.37868357758618315
#>     Attrib V41    0.007984692568692739
#>     Attrib V42    0.35312288336832925
#>     Attrib V43    0.04963388899668235
#>     Attrib V44    -0.04529438604168608
#>     Attrib V45    0.00970086287315895
#>     Attrib V46    0.09536461387568637
#>     Attrib V47    -0.20928860227594198
#>     Attrib V48    0.26965631917136507
#>     Attrib V49    0.03469474627378677
#>     Attrib V5    -0.49681324121262044
#>     Attrib V50    -0.23743482929273613
#>     Attrib V51    0.12943785015709877
#>     Attrib V52    0.27653171465281534
#>     Attrib V53    -0.001835549329544045
#>     Attrib V54    0.27889489261284345
#>     Attrib V55    -0.037684802599670796
#>     Attrib V56    0.4787491612888879
#>     Attrib V57    0.13925825214873602
#>     Attrib V58    0.26400914975775874
#>     Attrib V59    0.5511350489385639
#>     Attrib V6    -0.266372542858244
#>     Attrib V60    0.5171696272789389
#>     Attrib V7    -0.302533941181844
#>     Attrib V8    -0.2557630405186029
#>     Attrib V9    0.3099036374145814
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4436692802093737
#>     Attrib V1    0.5261678463476246
#>     Attrib V10    0.6049325821887562
#>     Attrib V11    0.645015849369711
#>     Attrib V12    1.2431007509332181
#>     Attrib V13    0.5690440401853513
#>     Attrib V14    -0.03922204725173156
#>     Attrib V15    -0.6941476268016126
#>     Attrib V16    -0.46085906204847993
#>     Attrib V17    -0.24463977948669974
#>     Attrib V18    0.4590293199577064
#>     Attrib V19    -0.20065664206551934
#>     Attrib V2    0.5017502184397337
#>     Attrib V20    0.0011989535001368094
#>     Attrib V21    0.8376001907492995
#>     Attrib V22    0.7949985185348509
#>     Attrib V23    1.0872689677885181
#>     Attrib V24    0.6309367895422798
#>     Attrib V25    -0.27561823566513616
#>     Attrib V26    0.34949248755281453
#>     Attrib V27    1.1078609364612682
#>     Attrib V28    1.9344535142774828
#>     Attrib V29    2.9356062166608052
#>     Attrib V3    0.432985648000184
#>     Attrib V30    1.7997553988862462
#>     Attrib V31    -1.4886518223051646
#>     Attrib V32    -1.2359606097232516
#>     Attrib V33    -0.637529448958226
#>     Attrib V34    -1.0125044536085526
#>     Attrib V35    -0.09006621579048733
#>     Attrib V36    -0.9953001158460291
#>     Attrib V37    -0.056799970393321964
#>     Attrib V38    0.10686154159978486
#>     Attrib V39    0.38446279064464767
#>     Attrib V4    0.3392160631686843
#>     Attrib V40    0.17198958992241878
#>     Attrib V41    1.0937704818040188
#>     Attrib V42    0.33420900692146016
#>     Attrib V43    -0.08162417520218627
#>     Attrib V44    0.9767247150200193
#>     Attrib V45    0.6742498273088597
#>     Attrib V46    1.2433057632322297
#>     Attrib V47    0.5853854450052715
#>     Attrib V48    0.5173265508981248
#>     Attrib V49    0.4102167782814107
#>     Attrib V5    -0.3069415418961182
#>     Attrib V50    0.2258865605339722
#>     Attrib V51    1.4897653700146976
#>     Attrib V52    1.6437551640743473
#>     Attrib V53    1.1430009718974932
#>     Attrib V54    0.3823140030873465
#>     Attrib V55    -1.9988452771962748
#>     Attrib V56    -0.9311804697455492
#>     Attrib V57    -1.3438148473323395
#>     Attrib V58    -0.35179800710019116
#>     Attrib V59    -0.22480645228254645
#>     Attrib V6    1.7410245518267964
#>     Attrib V60    -0.4324329188334012
#>     Attrib V7    -0.4664255133895055
#>     Attrib V8    -0.5868450242876455
#>     Attrib V9    0.39871663712183997
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.1921003926024317
#>     Attrib V1    0.32429691110089
#>     Attrib V10    0.051819453324873345
#>     Attrib V11    0.2685066846484539
#>     Attrib V12    0.2988143845879409
#>     Attrib V13    -0.013999904191034186
#>     Attrib V14    -0.2854700041916578
#>     Attrib V15    -0.06549092584576235
#>     Attrib V16    0.07547414667830936
#>     Attrib V17    -0.034438874284939684
#>     Attrib V18    -0.19541390584124313
#>     Attrib V19    -0.29690106649137843
#>     Attrib V2    0.052325888878909856
#>     Attrib V20    -0.2769410183749758
#>     Attrib V21    -0.14118947379187582
#>     Attrib V22    -0.2752103610504002
#>     Attrib V23    -0.22663151372990478
#>     Attrib V24    0.18356494519054536
#>     Attrib V25    0.06554581393784724
#>     Attrib V26    0.006789273436006428
#>     Attrib V27    0.028026643331209806
#>     Attrib V28    -0.07400558787865989
#>     Attrib V29    -0.29396012079415573
#>     Attrib V3    -0.19501830460290603
#>     Attrib V30    0.09777558139414201
#>     Attrib V31    -0.30760768188955523
#>     Attrib V32    0.2349037615228306
#>     Attrib V33    0.5659868024950102
#>     Attrib V34    0.26453631374049835
#>     Attrib V35    0.13303886393629277
#>     Attrib V36    -0.21810317571111276
#>     Attrib V37    -0.2529071090703564
#>     Attrib V38    0.015548446108079601
#>     Attrib V39    -0.08750503944196208
#>     Attrib V4    0.1027227103574009
#>     Attrib V40    -0.24683604968356793
#>     Attrib V41    -0.1048349035761651
#>     Attrib V42    -0.1284578247046896
#>     Attrib V43    -0.0848248347479563
#>     Attrib V44    0.07641164818144404
#>     Attrib V45    0.14919616870046556
#>     Attrib V46    0.13865946906837423
#>     Attrib V47    -0.05806359136163277
#>     Attrib V48    0.35933045018155474
#>     Attrib V49    0.10698260070172931
#>     Attrib V5    -0.3279103609942354
#>     Attrib V50    -0.18335885670100405
#>     Attrib V51    0.11294943411053811
#>     Attrib V52    0.21739634519935025
#>     Attrib V53    0.039580963917677126
#>     Attrib V54    0.1517471424316307
#>     Attrib V55    0.027419794666804765
#>     Attrib V56    -0.04124880618074039
#>     Attrib V57    0.21143369900928927
#>     Attrib V58    0.1100674849146745
#>     Attrib V59    0.3195999715186107
#>     Attrib V6    -0.1864205878749595
#>     Attrib V60    0.28515193394892224
#>     Attrib V7    -0.18719479093104213
#>     Attrib V8    -0.17270549095032905
#>     Attrib V9    0.2791246276280922
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.44482456078715615
#>     Attrib V1    0.484448810201752
#>     Attrib V10    0.6998454036961977
#>     Attrib V11    1.0156768183317135
#>     Attrib V12    1.7394299622938716
#>     Attrib V13    0.8921041312664337
#>     Attrib V14    -0.016303166510389273
#>     Attrib V15    -0.7084385395806682
#>     Attrib V16    -0.6833615642501595
#>     Attrib V17    -0.4322916624616568
#>     Attrib V18    0.10187721176700715
#>     Attrib V19    -0.715832018435052
#>     Attrib V2    0.2520448854918726
#>     Attrib V20    -0.4033550676467105
#>     Attrib V21    0.5229644730788643
#>     Attrib V22    0.43416616781498485
#>     Attrib V23    0.44455495325181227
#>     Attrib V24    0.4054182313025136
#>     Attrib V25    0.13790570032312174
#>     Attrib V26    1.094399616291747
#>     Attrib V27    1.3238860213820518
#>     Attrib V28    1.2981332596929354
#>     Attrib V29    2.0480889327155944
#>     Attrib V3    0.21279744362391953
#>     Attrib V30    1.3056164732916715
#>     Attrib V31    -0.8904533477345382
#>     Attrib V32    -0.8889670287586047
#>     Attrib V33    -0.7899290411085645
#>     Attrib V34    -0.8414640419299513
#>     Attrib V35    -0.10291794182161572
#>     Attrib V36    -0.7852632008670054
#>     Attrib V37    -0.06289879981897929
#>     Attrib V38    -0.0028134202733767783
#>     Attrib V39    0.4668904549458917
#>     Attrib V4    0.25325908068888353
#>     Attrib V40    0.19763880330638267
#>     Attrib V41    0.7746739783139924
#>     Attrib V42    -0.15719392951711947
#>     Attrib V43    -0.1847878407349825
#>     Attrib V44    0.6002323245517307
#>     Attrib V45    0.4831114356550075
#>     Attrib V46    1.1663699258839295
#>     Attrib V47    0.7666856209948679
#>     Attrib V48    0.8115111211603401
#>     Attrib V49    0.5150395149440052
#>     Attrib V5    -0.13950306861889317
#>     Attrib V50    0.14960965517177421
#>     Attrib V51    1.4465536865186308
#>     Attrib V52    1.3294542548078616
#>     Attrib V53    1.0327696256917913
#>     Attrib V54    0.4758182756801585
#>     Attrib V55    -1.35071373646446
#>     Attrib V56    -0.8640581427380977
#>     Attrib V57    -1.0749272055916508
#>     Attrib V58    -0.30611898974749485
#>     Attrib V59    0.024434666479026732
#>     Attrib V6    1.5309873256917068
#>     Attrib V60    -0.4639789944246512
#>     Attrib V7    -0.3822018950793172
#>     Attrib V8    -0.4595270586454679
#>     Attrib V9    0.43399277655781315
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.1891769977680279
#>     Attrib V1    0.1697809976256336
#>     Attrib V10    -0.009703607844288772
#>     Attrib V11    0.0195188232403471
#>     Attrib V12    0.07823545203162868
#>     Attrib V13    0.05838522798764281
#>     Attrib V14    0.07687273649030944
#>     Attrib V15    9.158888540217405E-4
#>     Attrib V16    0.048704569950398326
#>     Attrib V17    0.0016433179985249984
#>     Attrib V18    0.03977289875343236
#>     Attrib V19    -0.0032559941190681853
#>     Attrib V2    0.11214340609346418
#>     Attrib V20    -0.031083798999320057
#>     Attrib V21    -0.0501643563446471
#>     Attrib V22    -0.11864099655135543
#>     Attrib V23    -0.07634362591394037
#>     Attrib V24    -0.09154217936552006
#>     Attrib V25    -0.0766968544651159
#>     Attrib V26    -0.054953194308449464
#>     Attrib V27    -0.07273476021268728
#>     Attrib V28    -0.09313847111548351
#>     Attrib V29    -0.10061660792845988
#>     Attrib V3    0.08596165073757142
#>     Attrib V30    0.020079514253239887
#>     Attrib V31    -0.033001361837527395
#>     Attrib V32    -0.036969302269480586
#>     Attrib V33    0.11955221947981771
#>     Attrib V34    0.1172394307137109
#>     Attrib V35    0.11398172274786052
#>     Attrib V36    0.035029013775291176
#>     Attrib V37    0.01699977321150394
#>     Attrib V38    0.05915094534146505
#>     Attrib V39    0.03586267152906114
#>     Attrib V4    0.08059615170850176
#>     Attrib V40    0.07274861609828599
#>     Attrib V41    0.08308356271248096
#>     Attrib V42    0.07295750000473811
#>     Attrib V43    0.04572606500165739
#>     Attrib V44    0.0791986868056985
#>     Attrib V45    0.05970058882582239
#>     Attrib V46    0.026966020547042897
#>     Attrib V47    0.03385355437233226
#>     Attrib V48    0.06322867454239928
#>     Attrib V49    0.04642882094464502
#>     Attrib V5    0.026742802472374587
#>     Attrib V50    0.09635472730253145
#>     Attrib V51    0.09226886428579113
#>     Attrib V52    0.08527933643505875
#>     Attrib V53    0.14051801534245756
#>     Attrib V54    0.07631188508943122
#>     Attrib V55    0.06035124293267159
#>     Attrib V56    0.07744974287934306
#>     Attrib V57    0.05533214183997619
#>     Attrib V58    0.07740989749697179
#>     Attrib V59    0.08177357945231793
#>     Attrib V6    0.03245325623214668
#>     Attrib V60    0.10385091444386849
#>     Attrib V7    -0.012176938436370008
#>     Attrib V8    0.01698519289998343
#>     Attrib V9    0.012743933573879958
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.11631261513346841
#>     Attrib V1    0.46244138354955583
#>     Attrib V10    -0.3215887581353481
#>     Attrib V11    0.048625063494395694
#>     Attrib V12    0.29226930019391983
#>     Attrib V13    -0.07947172645715327
#>     Attrib V14    -0.13868115056859492
#>     Attrib V15    0.20923340225861653
#>     Attrib V16    0.23781007369995918
#>     Attrib V17    0.20744160004471648
#>     Attrib V18    0.020958863878573413
#>     Attrib V19    -0.06010281146629672
#>     Attrib V2    0.16148560071698348
#>     Attrib V20    0.08637999644549792
#>     Attrib V21    0.06651677435734063
#>     Attrib V22    -0.12674516769881639
#>     Attrib V23    -0.14332610200705692
#>     Attrib V24    0.18548335945826733
#>     Attrib V25    -0.13112802486334327
#>     Attrib V26    -0.4868695967179127
#>     Attrib V27    -0.32955169055367955
#>     Attrib V28    -0.24783669133874056
#>     Attrib V29    -0.4444033539185077
#>     Attrib V3    -0.1700409293722551
#>     Attrib V30    0.00857861580048348
#>     Attrib V31    -0.734691351898239
#>     Attrib V32    0.09672530466686288
#>     Attrib V33    0.6765922327229762
#>     Attrib V34    0.3049095965205541
#>     Attrib V35    0.08201123055163961
#>     Attrib V36    -0.37619340823365394
#>     Attrib V37    -0.31871858988776103
#>     Attrib V38    0.19983020543235364
#>     Attrib V39    -0.016083627691840782
#>     Attrib V4    0.12525567812125302
#>     Attrib V40    -0.31601360654120114
#>     Attrib V41    -0.1805833417573152
#>     Attrib V42    0.16096652728985839
#>     Attrib V43    -0.024313163215227127
#>     Attrib V44    -0.009416682481399399
#>     Attrib V45    0.12644728026770902
#>     Attrib V46    0.042756030432512665
#>     Attrib V47    -0.21930785811786419
#>     Attrib V48    0.20060769724412608
#>     Attrib V49    0.005206017871554274
#>     Attrib V5    -0.31384971444600845
#>     Attrib V50    -0.19764903349188492
#>     Attrib V51    0.12317817325728764
#>     Attrib V52    0.24957191308931043
#>     Attrib V53    0.062178736190922776
#>     Attrib V54    0.46380204482635634
#>     Attrib V55    0.28249350400468987
#>     Attrib V56    0.3533548418768394
#>     Attrib V57    0.17431692726424783
#>     Attrib V58    0.2668687993053876
#>     Attrib V59    0.5202523535396937
#>     Attrib V6    -0.2721328086151059
#>     Attrib V60    0.49127341264256513
#>     Attrib V7    -0.2842747668907002
#>     Attrib V8    -0.16748365200354345
#>     Attrib V9    0.15204044678952885
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.26367241385444834
#>     Attrib V1    0.424759105226906
#>     Attrib V10    -0.29502614420864937
#>     Attrib V11    0.11726914337412564
#>     Attrib V12    0.27901523613837
#>     Attrib V13    -0.06680926361892985
#>     Attrib V14    -0.3863549148662715
#>     Attrib V15    0.05264569582006231
#>     Attrib V16    0.25837874288851115
#>     Attrib V17    0.2531006062408033
#>     Attrib V18    0.055110687124760846
#>     Attrib V19    0.05231390117332822
#>     Attrib V2    0.2520578037349504
#>     Attrib V20    0.04103273868762592
#>     Attrib V21    0.2164894773914972
#>     Attrib V22    0.18175010779532608
#>     Attrib V23    0.1669778583304164
#>     Attrib V24    0.36766357454208926
#>     Attrib V25    -0.1732362447812522
#>     Attrib V26    -0.531132089824795
#>     Attrib V27    -0.23050321592494016
#>     Attrib V28    -0.019184409537063386
#>     Attrib V29    -0.25330106428932136
#>     Attrib V3    -0.2620036240705138
#>     Attrib V30    0.21563223680983495
#>     Attrib V31    -1.0425161608407794
#>     Attrib V32    0.054477439619808686
#>     Attrib V33    0.8751857511889571
#>     Attrib V34    0.24360888468387784
#>     Attrib V35    -0.010207898646469312
#>     Attrib V36    -0.6312948354102281
#>     Attrib V37    -0.4542210670748977
#>     Attrib V38    0.17592395752725354
#>     Attrib V39    -0.038732995754397044
#>     Attrib V4    0.12794138213158376
#>     Attrib V40    -0.33152553838222454
#>     Attrib V41    0.0031385273645885663
#>     Attrib V42    0.3319083624973464
#>     Attrib V43    0.03052691746343203
#>     Attrib V44    0.006955799891010351
#>     Attrib V45    0.1806394733438448
#>     Attrib V46    0.2162188800445857
#>     Attrib V47    -0.20068588889458497
#>     Attrib V48    0.2848223218974024
#>     Attrib V49    0.04011874529794866
#>     Attrib V5    -0.5303928004894456
#>     Attrib V50    -0.3461279798452879
#>     Attrib V51    0.14321159715175266
#>     Attrib V52    0.39082030404903845
#>     Attrib V53    -0.02037535669092618
#>     Attrib V54    0.30529484344866914
#>     Attrib V55    -0.19113679515712537
#>     Attrib V56    0.3355556983247323
#>     Attrib V57    -0.04568821978111424
#>     Attrib V58    0.21556818399889585
#>     Attrib V59    0.5368433144057044
#>     Attrib V6    -0.2974111734173632
#>     Attrib V60    0.46458241433012004
#>     Attrib V7    -0.3285982740717828
#>     Attrib V8    -0.2518591968036589
#>     Attrib V9    0.3025090037761933
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.02617638217287025
#>     Attrib V1    0.38113508316340544
#>     Attrib V10    -0.32232155837419757
#>     Attrib V11    0.03023029069645638
#>     Attrib V12    0.3296060053589255
#>     Attrib V13    0.035647442894872636
#>     Attrib V14    -0.3851452300195333
#>     Attrib V15    0.02940168410008079
#>     Attrib V16    0.1791475496750865
#>     Attrib V17    0.290116391417172
#>     Attrib V18    0.07602789740114871
#>     Attrib V19    -0.02293850993883329
#>     Attrib V2    0.2083603495154325
#>     Attrib V20    -0.018514565120470998
#>     Attrib V21    0.09963157757164397
#>     Attrib V22    0.04242907800035632
#>     Attrib V23    0.12564910586115466
#>     Attrib V24    0.45151123272225097
#>     Attrib V25    0.06814544758031484
#>     Attrib V26    -0.44950440237950673
#>     Attrib V27    -0.3069359077968152
#>     Attrib V28    -0.33028568022481164
#>     Attrib V29    -0.6143357576402659
#>     Attrib V3    -0.10595191329745098
#>     Attrib V30    -0.049425084349413506
#>     Attrib V31    -0.8251328600985345
#>     Attrib V32    0.24502630478350376
#>     Attrib V33    0.8070573891383845
#>     Attrib V34    0.30970823150121735
#>     Attrib V35    -0.045650281966084644
#>     Attrib V36    -0.5969367790396723
#>     Attrib V37    -0.43991670051292037
#>     Attrib V38    0.05529343074731406
#>     Attrib V39    -6.422370140523988E-4
#>     Attrib V4    0.09454057185606203
#>     Attrib V40    -0.29086503855991563
#>     Attrib V41    -0.007618714597459159
#>     Attrib V42    0.346669230782464
#>     Attrib V43    0.008174782970435994
#>     Attrib V44    -0.016615451109555725
#>     Attrib V45    -0.03544948352031517
#>     Attrib V46    0.09466432329009004
#>     Attrib V47    -0.16365075476468754
#>     Attrib V48    0.22385958526940797
#>     Attrib V49    0.08017464622295879
#>     Attrib V5    -0.4249526534210258
#>     Attrib V50    -0.2827217303220975
#>     Attrib V51    0.10561692449810743
#>     Attrib V52    0.2606432953071486
#>     Attrib V53    -0.0038275946339854554
#>     Attrib V54    0.32160838225267646
#>     Attrib V55    -0.07445735527503781
#>     Attrib V56    0.40800062288192024
#>     Attrib V57    0.06197207742609158
#>     Attrib V58    0.21440329355225396
#>     Attrib V59    0.561866881285715
#>     Attrib V6    -0.2312516780469392
#>     Attrib V60    0.5297871401096778
#>     Attrib V7    -0.2539279403816182
#>     Attrib V8    -0.3267666058697057
#>     Attrib V9    0.19317321715232633
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.16140520801772743
#>     Attrib V1    0.7072645112467262
#>     Attrib V10    -0.4101833964257572
#>     Attrib V11    0.0664723323669727
#>     Attrib V12    0.28766216184292565
#>     Attrib V13    -0.05579148321487506
#>     Attrib V14    0.12195041989849494
#>     Attrib V15    0.5022001051271776
#>     Attrib V16    0.26162008761463945
#>     Attrib V17    0.11936477215219025
#>     Attrib V18    -0.05961824222265823
#>     Attrib V19    -0.14736815437039266
#>     Attrib V2    0.2537000475992842
#>     Attrib V20    0.035394455393841055
#>     Attrib V21    0.05992327830775239
#>     Attrib V22    -0.2328039757205082
#>     Attrib V23    -0.34018238397355544
#>     Attrib V24    -0.018600151508012606
#>     Attrib V25    -0.30049878053421153
#>     Attrib V26    -0.5239659990074553
#>     Attrib V27    -0.43063942878701494
#>     Attrib V28    -0.430534180507083
#>     Attrib V29    -0.4755892762149341
#>     Attrib V3    -0.13024990725141092
#>     Attrib V30    -0.10221961091413968
#>     Attrib V31    -0.6948509288825497
#>     Attrib V32    0.058173605464508546
#>     Attrib V33    0.6260111459406559
#>     Attrib V34    0.21064620280176705
#>     Attrib V35    0.09201342928406092
#>     Attrib V36    -0.3166493166422505
#>     Attrib V37    -0.1971628252141758
#>     Attrib V38    0.1775982884468241
#>     Attrib V39    0.033051645660335596
#>     Attrib V4    0.22359847059380042
#>     Attrib V40    -0.3366395899891187
#>     Attrib V41    -0.2834067252626415
#>     Attrib V42    0.04468576941117261
#>     Attrib V43    -0.06860330438755921
#>     Attrib V44    -0.0788492473977894
#>     Attrib V45    0.022642694290275784
#>     Attrib V46    0.04638742850534806
#>     Attrib V47    -0.315937682327122
#>     Attrib V48    0.18353370626552334
#>     Attrib V49    0.014784524819835608
#>     Attrib V5    -0.2657991660471756
#>     Attrib V50    -0.1550506272457638
#>     Attrib V51    -0.004670286732744123
#>     Attrib V52    0.2631695672277896
#>     Attrib V53    0.12030955741283106
#>     Attrib V54    0.581921039668134
#>     Attrib V55    0.6898513806362506
#>     Attrib V56    0.47312825064551584
#>     Attrib V57    0.38215439035273785
#>     Attrib V58    0.40909095224547887
#>     Attrib V59    0.7768940627607142
#>     Attrib V6    -0.27700564347268125
#>     Attrib V60    0.7338870776399888
#>     Attrib V7    -0.16098022271332837
#>     Attrib V8    -0.19887557635494688
#>     Attrib V9    0.03753881603039041
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.1027594298463923
#>     Attrib V1    -0.3960579275913091
#>     Attrib V10    0.26663310311792987
#>     Attrib V11    -0.12227660914334867
#>     Attrib V12    -0.3826579804290127
#>     Attrib V13    -0.010286567677165254
#>     Attrib V14    0.755054469824353
#>     Attrib V15    0.1340365252782982
#>     Attrib V16    -0.2612956535416645
#>     Attrib V17    -0.33624482699031755
#>     Attrib V18    -0.015482815273828386
#>     Attrib V19    0.03628687491236175
#>     Attrib V2    -0.26878704677077014
#>     Attrib V20    0.08238561846389604
#>     Attrib V21    -0.3093739034433798
#>     Attrib V22    -0.24274759502754936
#>     Attrib V23    -0.23666194576129615
#>     Attrib V24    -0.5475744045334153
#>     Attrib V25    0.16981988053063157
#>     Attrib V26    0.7354603034051271
#>     Attrib V27    0.44610028971913634
#>     Attrib V28    0.19357372438362666
#>     Attrib V29    0.7263533425262593
#>     Attrib V3    0.2794637494000561
#>     Attrib V30    -0.17986672507215298
#>     Attrib V31    1.2821618888778408
#>     Attrib V32    -0.26361055762235314
#>     Attrib V33    -1.2601200089713507
#>     Attrib V34    -0.23111496484574384
#>     Attrib V35    0.22438717079724685
#>     Attrib V36    1.083383082744735
#>     Attrib V37    0.9022761569922626
#>     Attrib V38    -0.08104090667023814
#>     Attrib V39    0.01916838094626391
#>     Attrib V4    -0.13407915503366125
#>     Attrib V40    0.4464068770072666
#>     Attrib V41    -0.17393131083970384
#>     Attrib V42    -0.7134743273069115
#>     Attrib V43    -0.17168572318643832
#>     Attrib V44    -0.0995042102967332
#>     Attrib V45    -0.053038720824663
#>     Attrib V46    -0.2718500346951341
#>     Attrib V47    0.11901934003425325
#>     Attrib V48    -0.4067694627639518
#>     Attrib V49    -0.18030382849820115
#>     Attrib V5    0.6718858146125047
#>     Attrib V50    0.5112795819849882
#>     Attrib V51    -0.20301749984975312
#>     Attrib V52    -0.4181814450380126
#>     Attrib V53    0.2548488213755534
#>     Attrib V54    -0.263557544592249
#>     Attrib V55    0.3935819834592939
#>     Attrib V56    -0.5354214259903646
#>     Attrib V57    0.09939475523156581
#>     Attrib V58    -0.29781934972343055
#>     Attrib V59    -0.6611935500038055
#>     Attrib V6    0.38128705759356835
#>     Attrib V60    -0.6299352545619512
#>     Attrib V7    0.3861328472308749
#>     Attrib V8    0.29417859342878605
#>     Attrib V9    -0.4598397877752713
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.09793068550421441
#>     Attrib V1    0.2192664507062956
#>     Attrib V10    -0.06268062397905833
#>     Attrib V11    0.02886622110208749
#>     Attrib V12    0.11338803953139628
#>     Attrib V13    0.03569278177484415
#>     Attrib V14    -0.03350849448741956
#>     Attrib V15    0.059529972898216245
#>     Attrib V16    0.11573542010084559
#>     Attrib V17    0.06122801009287607
#>     Attrib V18    -0.021325235541652603
#>     Attrib V19    -0.10927685466991258
#>     Attrib V2    0.06911808274554698
#>     Attrib V20    -0.13925330728464624
#>     Attrib V21    -0.15081353108726342
#>     Attrib V22    -0.22943539338891766
#>     Attrib V23    -0.23086556388848337
#>     Attrib V24    0.021000172225269502
#>     Attrib V25    -0.031481380341627896
#>     Attrib V26    -0.12322352683664624
#>     Attrib V27    -0.06681584125445271
#>     Attrib V28    -0.08590578322434567
#>     Attrib V29    -0.1803584103968165
#>     Attrib V3    0.040943821190885875
#>     Attrib V30    -0.060215287284779255
#>     Attrib V31    -0.21903413678547162
#>     Attrib V32    0.0911974249458717
#>     Attrib V33    0.2263207589408225
#>     Attrib V34    0.15438951268840592
#>     Attrib V35    0.06035505327561694
#>     Attrib V36    -0.1271205483760566
#>     Attrib V37    -0.07242452818151904
#>     Attrib V38    0.018611442819607683
#>     Attrib V39    -0.01435755400250083
#>     Attrib V4    0.11168321692352572
#>     Attrib V40    -0.12759469044554395
#>     Attrib V41    -0.042070673284415855
#>     Attrib V42    0.0728211070434157
#>     Attrib V43    -0.01208298720552979
#>     Attrib V44    -0.013732793039148027
#>     Attrib V45    0.05102539527563395
#>     Attrib V46    0.0717262063460954
#>     Attrib V47    -0.04524873720129542
#>     Attrib V48    0.11007333373957304
#>     Attrib V49    0.004069929275021857
#>     Attrib V5    -0.0879480159008005
#>     Attrib V50    0.00442457417219293
#>     Attrib V51    0.14320338546745948
#>     Attrib V52    0.19555873558887904
#>     Attrib V53    0.16130820057218062
#>     Attrib V54    0.1351747872126418
#>     Attrib V55    0.16840940592781592
#>     Attrib V56    0.1308161761862381
#>     Attrib V57    0.17505977216536156
#>     Attrib V58    0.19524773104098847
#>     Attrib V59    0.19008731422226838
#>     Attrib V6    -0.06325306179547341
#>     Attrib V60    0.2462079431391439
#>     Attrib V7    -0.09865378894557632
#>     Attrib V8    -0.09329192417448376
#>     Attrib V9    0.11392571527925097
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.027767178491228627
#>     Attrib V1    0.2858434653164334
#>     Attrib V10    -0.025405977958808567
#>     Attrib V11    0.08324792739215588
#>     Attrib V12    0.09583322838481607
#>     Attrib V13    -0.04075690481517901
#>     Attrib V14    -0.05057072703851491
#>     Attrib V15    0.12871826227377445
#>     Attrib V16    0.07309340772948882
#>     Attrib V17    0.01989354618981405
#>     Attrib V18    -0.08102501691879635
#>     Attrib V19    -0.1287837485872021
#>     Attrib V2    0.18034208260665976
#>     Attrib V20    -0.12220015391193473
#>     Attrib V21    -0.11881949966682301
#>     Attrib V22    -0.1543858129501159
#>     Attrib V23    -0.21364797839474073
#>     Attrib V24    0.022603701322467137
#>     Attrib V25    -0.08484032578138627
#>     Attrib V26    -0.1346617007946826
#>     Attrib V27    -0.05727412315473857
#>     Attrib V28    -0.11362796252182333
#>     Attrib V29    -0.21019023087299346
#>     Attrib V3    -1.43766121887954E-7
#>     Attrib V30    0.017606835344752284
#>     Attrib V31    -0.18420618445742373
#>     Attrib V32    0.04757869328466859
#>     Attrib V33    0.3181437196684107
#>     Attrib V34    0.12460472393372715
#>     Attrib V35    0.1264638099286825
#>     Attrib V36    -0.13640791708674743
#>     Attrib V37    -0.12235134999038784
#>     Attrib V38    0.05889632223505933
#>     Attrib V39    0.0012171424393097583
#>     Attrib V4    0.10772353551132707
#>     Attrib V40    -0.1500607825371366
#>     Attrib V41    -0.03780944633050226
#>     Attrib V42    0.018662808760808364
#>     Attrib V43    0.04005693854311574
#>     Attrib V44    0.05815885226385625
#>     Attrib V45    0.09296036972395315
#>     Attrib V46    0.03775123067948869
#>     Attrib V47    -0.0888233393372254
#>     Attrib V48    0.19211231669849885
#>     Attrib V49    0.019776842345462314
#>     Attrib V5    -0.1208699679981099
#>     Attrib V50    -0.03487722964843467
#>     Attrib V51    0.10677855450032542
#>     Attrib V52    0.15160203267316438
#>     Attrib V53    0.07231435503558926
#>     Attrib V54    0.136402686557049
#>     Attrib V55    0.17035048857917115
#>     Attrib V56    0.12677209114601504
#>     Attrib V57    0.20043645670546142
#>     Attrib V58    0.11029681120375857
#>     Attrib V59    0.19515931995291488
#>     Attrib V6    -0.1096388037821258
#>     Attrib V60    0.24252445562635702
#>     Attrib V7    -0.16384519135330147
#>     Attrib V8    -0.03775113811352043
#>     Attrib V9    0.11327034255016967
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.20531495490638446
#>     Attrib V1    0.11180349508610017
#>     Attrib V10    0.0194978476748461
#>     Attrib V11    0.021242117633786303
#>     Attrib V12    0.021920066880170463
#>     Attrib V13    0.011548099275810755
#>     Attrib V14    0.021118871879396546
#>     Attrib V15    -0.002212580248595157
#>     Attrib V16    0.028292660974906743
#>     Attrib V17    -0.00854098992606161
#>     Attrib V18    0.03446264574064322
#>     Attrib V19    -0.08637202005781096
#>     Attrib V2    0.11301987889805082
#>     Attrib V20    -0.04377394629719682
#>     Attrib V21    -0.04747228939512339
#>     Attrib V22    -0.11676023059059802
#>     Attrib V23    -0.0960818151468759
#>     Attrib V24    -0.07048500165350507
#>     Attrib V25    -0.016717087395117722
#>     Attrib V26    -0.0247349920386563
#>     Attrib V27    -0.035820004047681556
#>     Attrib V28    -0.0764176623011548
#>     Attrib V29    -0.07833882378724402
#>     Attrib V3    0.1490661082915367
#>     Attrib V30    -0.043219726700551964
#>     Attrib V31    -0.055625991764903404
#>     Attrib V32    0.020130142685447463
#>     Attrib V33    0.07760464943884539
#>     Attrib V34    0.10354169710772256
#>     Attrib V35    0.061907749019526774
#>     Attrib V36    0.08781020115017002
#>     Attrib V37    0.009163738532314745
#>     Attrib V38    0.0097984857231228
#>     Attrib V39    0.07973869391274875
#>     Attrib V4    0.06309069184514253
#>     Attrib V40    0.023390760822109113
#>     Attrib V41    0.005736327439053198
#>     Attrib V42    0.0757471090158633
#>     Attrib V43    0.0493322146268903
#>     Attrib V44    0.10343604177519639
#>     Attrib V45    0.0019592195603707076
#>     Attrib V46    0.04409094834793135
#>     Attrib V47    0.08865857220397849
#>     Attrib V48    0.08948832975650095
#>     Attrib V49    0.08766931926474589
#>     Attrib V5    0.032433935630125255
#>     Attrib V50    0.011580877710702615
#>     Attrib V51    0.14502842834231955
#>     Attrib V52    0.09295371497507185
#>     Attrib V53    0.10223612764792683
#>     Attrib V54    0.02244641382951485
#>     Attrib V55    0.09183228350297937
#>     Attrib V56    0.11979217220278235
#>     Attrib V57    0.041295647686481106
#>     Attrib V58    0.10108771962404188
#>     Attrib V59    0.1119224394149431
#>     Attrib V6    -0.028714644640969185
#>     Attrib V60    0.15337557311816727
#>     Attrib V7    0.02203446764527958
#>     Attrib V8    0.06093756608902593
#>     Attrib V9    0.06786063702269578
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.3297373941337496
#>     Attrib V1    0.6040771110002175
#>     Attrib V10    0.7323284943694962
#>     Attrib V11    1.0581638320040772
#>     Attrib V12    1.3422624321402734
#>     Attrib V13    0.45274090628921276
#>     Attrib V14    -0.09262103005267208
#>     Attrib V15    -0.4779938831008469
#>     Attrib V16    -0.5552588831060903
#>     Attrib V17    -0.6111211917910712
#>     Attrib V18    -0.3797928061127305
#>     Attrib V19    -0.7412141581123786
#>     Attrib V2    0.1781187406206092
#>     Attrib V20    -0.4683406297256631
#>     Attrib V21    0.05445979655369711
#>     Attrib V22    -0.025986238584845247
#>     Attrib V23    -0.018648215470312222
#>     Attrib V24    0.17101447519557392
#>     Attrib V25    0.14293432630916308
#>     Attrib V26    0.8519684857735598
#>     Attrib V27    1.0263147907953578
#>     Attrib V28    0.939857700562623
#>     Attrib V29    1.1036335064824903
#>     Attrib V3    0.00437228379051481
#>     Attrib V30    0.8889297061720146
#>     Attrib V31    -0.488135390312332
#>     Attrib V32    -0.4361987322031688
#>     Attrib V33    -0.15769948931050815
#>     Attrib V34    -0.28453484470218376
#>     Attrib V35    0.16843268253185747
#>     Attrib V36    -0.4508887078931104
#>     Attrib V37    -0.08364148091323395
#>     Attrib V38    0.01109257048414642
#>     Attrib V39    0.2047355336561055
#>     Attrib V4    0.40132871579407264
#>     Attrib V40    0.008571491230911603
#>     Attrib V41    0.3401411170727924
#>     Attrib V42    -0.24975626561600384
#>     Attrib V43    -0.2772925318885927
#>     Attrib V44    0.21411365690385661
#>     Attrib V45    0.3262932391990494
#>     Attrib V46    0.7380725946379744
#>     Attrib V47    0.4413385462123098
#>     Attrib V48    0.6671311485641747
#>     Attrib V49    0.33825952394238373
#>     Attrib V5    -0.04236141163049951
#>     Attrib V50    -0.09290325175139151
#>     Attrib V51    0.8477479701894067
#>     Attrib V52    0.807052856332583
#>     Attrib V53    0.4465789448725218
#>     Attrib V54    0.12771955501591126
#>     Attrib V55    -0.8276348002965955
#>     Attrib V56    -0.6584464913249284
#>     Attrib V57    -0.396067133384985
#>     Attrib V58    0.0015020795978054706
#>     Attrib V59    0.22545442633411134
#>     Attrib V6    0.7156925899643143
#>     Attrib V60    -0.04997605214598591
#>     Attrib V7    -0.2725396636328572
#>     Attrib V8    -0.2734597731896844
#>     Attrib V9    0.6052835218649578
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.27635936845040016
#>     Attrib V1    0.47203718813700574
#>     Attrib V10    -0.010467712649169654
#>     Attrib V11    0.17212946896320275
#>     Attrib V12    0.43598317808724346
#>     Attrib V13    0.08961913081033425
#>     Attrib V14    -0.222354774850999
#>     Attrib V15    -0.01574379513759636
#>     Attrib V16    -0.0031172259688806553
#>     Attrib V17    0.08464353131851107
#>     Attrib V18    0.0678145814600544
#>     Attrib V19    0.007973385032153299
#>     Attrib V2    0.16777513561153407
#>     Attrib V20    0.11927620429793169
#>     Attrib V21    0.35836246461646465
#>     Attrib V22    0.32001707602459145
#>     Attrib V23    0.2869727970783359
#>     Attrib V24    0.38966529169045516
#>     Attrib V25    0.0072649586310821
#>     Attrib V26    -0.09482025243637561
#>     Attrib V27    0.17929327164598324
#>     Attrib V28    0.391924791434728
#>     Attrib V29    0.28662053485587125
#>     Attrib V3    -0.2620608637916526
#>     Attrib V30    0.4954525123994124
#>     Attrib V31    -0.8759880277721892
#>     Attrib V32    -0.23073911349998444
#>     Attrib V33    0.48289865608817506
#>     Attrib V34    0.030149021243244804
#>     Attrib V35    0.0911191739710893
#>     Attrib V36    -0.2865130461306072
#>     Attrib V37    -0.05201649954136405
#>     Attrib V38    0.3531506767163109
#>     Attrib V39    0.1312619898186902
#>     Attrib V4    0.09038372227836204
#>     Attrib V40    -0.2384569076432949
#>     Attrib V41    0.10585787952433633
#>     Attrib V42    0.16559592765837522
#>     Attrib V43    -0.027226352998615137
#>     Attrib V44    0.14468352740339463
#>     Attrib V45    0.20875964606266864
#>     Attrib V46    0.18804481076775917
#>     Attrib V47    -0.1036937215505639
#>     Attrib V48    0.30622019601969547
#>     Attrib V49    0.11852174037914323
#>     Attrib V5    -0.33379475650897505
#>     Attrib V50    -0.1807764244683344
#>     Attrib V51    0.3136552695716267
#>     Attrib V52    0.352275053825568
#>     Attrib V53    -0.04111250773640442
#>     Attrib V54    0.4137578750486301
#>     Attrib V55    -0.395197544139495
#>     Attrib V56    0.061544122177727034
#>     Attrib V57    -0.2970523989255643
#>     Attrib V58    -0.01181025409879982
#>     Attrib V59    0.4682651878065832
#>     Attrib V6    -0.07583698102821013
#>     Attrib V60    0.3978593326989482
#>     Attrib V7    -0.3366022078763682
#>     Attrib V8    -0.4274970522198429
#>     Attrib V9    0.3057942556062858
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.26847492674289963
#>     Attrib V1    -0.5206865863029804
#>     Attrib V10    0.011272756494951125
#>     Attrib V11    -0.20066479511769544
#>     Attrib V12    -0.3360422463662948
#>     Attrib V13    -0.005454551585106489
#>     Attrib V14    0.9736000903658009
#>     Attrib V15    0.19330142930170838
#>     Attrib V16    -0.3223017272640558
#>     Attrib V17    -0.4640866597170324
#>     Attrib V18    -0.06727174864639338
#>     Attrib V19    -0.201340904492991
#>     Attrib V2    -0.45803849523216844
#>     Attrib V20    -0.20723083893727778
#>     Attrib V21    -0.4365702757501906
#>     Attrib V22    -0.6035902204491304
#>     Attrib V23    -0.5430418427827474
#>     Attrib V24    -0.6634242826041584
#>     Attrib V25    0.120513716743147
#>     Attrib V26    0.7577501657824055
#>     Attrib V27    0.5769633066716343
#>     Attrib V28    0.18628498071483246
#>     Attrib V29    0.7609964308206678
#>     Attrib V3    0.07632892149913865
#>     Attrib V30    -0.23214905509548736
#>     Attrib V31    1.398891843808952
#>     Attrib V32    -0.2902871012990849
#>     Attrib V33    -1.291568963687044
#>     Attrib V34    -0.3170394477188073
#>     Attrib V35    0.09268659136004104
#>     Attrib V36    0.9512680463402357
#>     Attrib V37    0.6552362857122316
#>     Attrib V38    -0.28072153843398223
#>     Attrib V39    -0.002596710338219182
#>     Attrib V4    -0.17214952065022368
#>     Attrib V40    0.5318567288682697
#>     Attrib V41    -0.1394713436667863
#>     Attrib V42    -0.8013746579345175
#>     Attrib V43    -0.1835287849199251
#>     Attrib V44    -0.17728606575359607
#>     Attrib V45    -0.23497252782213338
#>     Attrib V46    -0.4511132348170827
#>     Attrib V47    -0.059137097875890665
#>     Attrib V48    -0.4109225514305668
#>     Attrib V49    -0.1961183892089024
#>     Attrib V5    0.6556173036210758
#>     Attrib V50    0.5259070631427004
#>     Attrib V51    -0.35289029288461543
#>     Attrib V52    -0.42776021113038104
#>     Attrib V53    0.3725276218282269
#>     Attrib V54    -0.13317512021140868
#>     Attrib V55    0.7518588836037768
#>     Attrib V56    -0.7668279603461035
#>     Attrib V57    0.4060322453193731
#>     Attrib V58    -0.1382497298668406
#>     Attrib V59    -0.3927036430085847
#>     Attrib V6    0.605322478727932
#>     Attrib V60    -0.5416187405423549
#>     Attrib V7    0.6341293556397993
#>     Attrib V8    0.3258839322635361
#>     Attrib V9    -0.6490618166733307
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.01551841877797034
#>     Attrib V1    0.4395326310157322
#>     Attrib V10    -0.15222685672348268
#>     Attrib V11    0.0545713191131347
#>     Attrib V12    0.1658269038200099
#>     Attrib V13    -0.014974598747436403
#>     Attrib V14    0.134288044670871
#>     Attrib V15    0.22316846642147642
#>     Attrib V16    0.20198469834204996
#>     Attrib V17    0.03592090943989316
#>     Attrib V18    -0.10331274754708318
#>     Attrib V19    -0.20016714002907643
#>     Attrib V2    0.18907042055557738
#>     Attrib V20    -0.08980855923096194
#>     Attrib V21    -0.12264801801971296
#>     Attrib V22    -0.33391714384359267
#>     Attrib V23    -0.3901921027119927
#>     Attrib V24    -0.052162512669475095
#>     Attrib V25    -0.2063932683601621
#>     Attrib V26    -0.27973026046736654
#>     Attrib V27    -0.16938448681025292
#>     Attrib V28    -0.23326780552981638
#>     Attrib V29    -0.21043956370668854
#>     Attrib V3    -0.0018354756870368378
#>     Attrib V30    -0.08496924122956732
#>     Attrib V31    -0.3017717389773275
#>     Attrib V32    0.039350019478337696
#>     Attrib V33    0.2784348705198855
#>     Attrib V34    0.12419646052928707
#>     Attrib V35    0.06614005804054285
#>     Attrib V36    -0.16755377430370244
#>     Attrib V37    -0.13404959697590366
#>     Attrib V38    0.01574357320228726
#>     Attrib V39    -0.051637571521124
#>     Attrib V4    0.1811764450436441
#>     Attrib V40    -0.1756851603388737
#>     Attrib V41    -0.20512029930495304
#>     Attrib V42    -0.009521128470982528
#>     Attrib V43    0.01885894954918233
#>     Attrib V44    -0.03659936361526253
#>     Attrib V45    4.3434120261924325E-5
#>     Attrib V46    0.07983968012677777
#>     Attrib V47    -0.1585036462057544
#>     Attrib V48    0.16964642508578323
#>     Attrib V49    0.029073316004936022
#>     Attrib V5    -0.093118143625469
#>     Attrib V50    -0.0479488808048725
#>     Attrib V51    0.0644451744518977
#>     Attrib V52    0.2283606110001021
#>     Attrib V53    0.15575258367149414
#>     Attrib V54    0.3118202291566202
#>     Attrib V55    0.4064852840029741
#>     Attrib V56    0.23338670846770418
#>     Attrib V57    0.29578970984520686
#>     Attrib V58    0.3244084744413231
#>     Attrib V59    0.4355455949051351
#>     Attrib V6    -0.09510215625743515
#>     Attrib V60    0.4453945211668774
#>     Attrib V7    -0.0672499426112968
#>     Attrib V8    -0.12328619394290766
#>     Attrib V9    0.08306911095894645
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.14067048871109772
#>     Attrib V1    0.5990916631165407
#>     Attrib V10    -0.45048149504444324
#>     Attrib V11    0.046685617280860084
#>     Attrib V12    0.34677217526042253
#>     Attrib V13    -0.05663465151481199
#>     Attrib V14    -0.324091215229434
#>     Attrib V15    0.202700910749449
#>     Attrib V16    0.2585921379543526
#>     Attrib V17    0.29475692026897543
#>     Attrib V18    -0.00861583220195287
#>     Attrib V19    -0.045132471066386036
#>     Attrib V2    0.2711196767516226
#>     Attrib V20    0.03034863486912565
#>     Attrib V21    0.08351839604885103
#>     Attrib V22    -0.027844676163624262
#>     Attrib V23    -0.08572072526187287
#>     Attrib V24    0.28326224050511445
#>     Attrib V25    -0.10143562351004906
#>     Attrib V26    -0.5379058949737117
#>     Attrib V27    -0.5674365642235413
#>     Attrib V28    -0.6215783244992013
#>     Attrib V29    -0.9275131157242429
#>     Attrib V3    -0.13009420298591604
#>     Attrib V30    -0.21232497996130734
#>     Attrib V31    -0.80863831274389
#>     Attrib V32    0.2730661422933783
#>     Attrib V33    0.9053377788678503
#>     Attrib V34    0.3678823750981564
#>     Attrib V35    0.06191395369291736
#>     Attrib V36    -0.458888023531202
#>     Attrib V37    -0.2624388082702884
#>     Attrib V38    0.21926994714488843
#>     Attrib V39    -0.010715344924883023
#>     Attrib V4    0.17113782130702637
#>     Attrib V40    -0.3900592323211169
#>     Attrib V41    -0.18946436536209374
#>     Attrib V42    0.22302447167359257
#>     Attrib V43    0.06508321515381815
#>     Attrib V44    -0.0849117510309761
#>     Attrib V45    0.02964338679409698
#>     Attrib V46    0.004780534740031049
#>     Attrib V47    -0.3131746128658629
#>     Attrib V48    0.10221933515347158
#>     Attrib V49    -0.04427387623289238
#>     Attrib V5    -0.43568042995346257
#>     Attrib V50    -0.3156859940326081
#>     Attrib V51    0.0034664524501037616
#>     Attrib V52    0.28869763388339187
#>     Attrib V53    0.04396124167292377
#>     Attrib V54    0.5094289016192792
#>     Attrib V55    0.25160921414015464
#>     Attrib V56    0.5505200609973957
#>     Attrib V57    0.169180025744723
#>     Attrib V58    0.23277043376415968
#>     Attrib V59    0.6176461992323705
#>     Attrib V6    -0.3741310510806721
#>     Attrib V60    0.5823781367907457
#>     Attrib V7    -0.25141634201892077
#>     Attrib V8    -0.2983639308215734
#>     Attrib V9    0.1476268840803787
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.026484190873295968
#>     Attrib V1    -0.4160373997443089
#>     Attrib V10    0.06397030237618555
#>     Attrib V11    -0.20233692664131442
#>     Attrib V12    -0.4495708672670042
#>     Attrib V13    -0.09811739279841375
#>     Attrib V14    0.7059265386443433
#>     Attrib V15    0.19143763407876735
#>     Attrib V16    -0.1834940849387941
#>     Attrib V17    -0.2015356852549726
#>     Attrib V18    -0.014795442766610897
#>     Attrib V19    -0.0015376169518828205
#>     Attrib V2    -0.25409916288240325
#>     Attrib V20    0.0019054825880181123
#>     Attrib V21    -0.32919513436069714
#>     Attrib V22    -0.39300446799175515
#>     Attrib V23    -0.2509133702863447
#>     Attrib V24    -0.517190443586594
#>     Attrib V25    0.10017418781097151
#>     Attrib V26    0.5389625330858355
#>     Attrib V27    0.350836277702401
#>     Attrib V28    0.149369553866601
#>     Attrib V29    0.5047306268908129
#>     Attrib V3    0.19988892003300834
#>     Attrib V30    -0.22903193394228324
#>     Attrib V31    1.069335674315066
#>     Attrib V32    -0.1651185532141322
#>     Attrib V33    -1.0398226473516197
#>     Attrib V34    -0.1778723087887773
#>     Attrib V35    0.14737133747755993
#>     Attrib V36    0.8760294817927576
#>     Attrib V37    0.5355105641179201
#>     Attrib V38    -0.18016814362610228
#>     Attrib V39    -0.043866610256041626
#>     Attrib V4    -0.10724717213747874
#>     Attrib V40    0.43284200061165123
#>     Attrib V41    -0.12457806744130268
#>     Attrib V42    -0.5432843924837675
#>     Attrib V43    -0.037488845155201976
#>     Attrib V44    -0.09535200739483636
#>     Attrib V45    -0.13104051491013374
#>     Attrib V46    -0.3220234470049789
#>     Attrib V47    0.020971229333886614
#>     Attrib V48    -0.4273567071169444
#>     Attrib V49    -0.19204943318822226
#>     Attrib V5    0.4956233630241581
#>     Attrib V50    0.4286408996898027
#>     Attrib V51    -0.3004277431376612
#>     Attrib V52    -0.3090604561038269
#>     Attrib V53    0.19513156127201575
#>     Attrib V54    -0.20901982572077238
#>     Attrib V55    0.5279676862378324
#>     Attrib V56    -0.4137724360411753
#>     Attrib V57    0.30942007313028486
#>     Attrib V58    -0.13841815702083382
#>     Attrib V59    -0.49052778943482106
#>     Attrib V6    0.3583150334231057
#>     Attrib V60    -0.5313020580282201
#>     Attrib V7    0.37715338253443553
#>     Attrib V8    0.3441508481735372
#>     Attrib V9    -0.40280916759758434
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.4068369873149071
#>     Attrib V1    0.36524571368902337
#>     Attrib V10    0.5014894703019681
#>     Attrib V11    0.6858181256423048
#>     Attrib V12    1.2876640154048185
#>     Attrib V13    0.6182349860020828
#>     Attrib V14    0.037683945626797485
#>     Attrib V15    -0.5913519172078147
#>     Attrib V16    -0.46775675723916393
#>     Attrib V17    -0.2468806457282151
#>     Attrib V18    0.27254766349362997
#>     Attrib V19    -0.4015928256013849
#>     Attrib V2    0.23951251128978032
#>     Attrib V20    -0.23105532259784273
#>     Attrib V21    0.5322459877335725
#>     Attrib V22    0.562653725887907
#>     Attrib V23    0.6429361946241623
#>     Attrib V24    0.3729990394900227
#>     Attrib V25    -0.13019200451606416
#>     Attrib V26    0.6443811690761995
#>     Attrib V27    1.1793129357935985
#>     Attrib V28    1.4968945846980115
#>     Attrib V29    2.1721401636375695
#>     Attrib V3    0.2536726878557981
#>     Attrib V30    1.3750089169446624
#>     Attrib V31    -0.9699667262949565
#>     Attrib V32    -0.820693983068857
#>     Attrib V33    -0.6450696229030206
#>     Attrib V34    -0.8268513691886341
#>     Attrib V35    -0.09693220999490168
#>     Attrib V36    -0.8173775252007178
#>     Attrib V37    -0.16063824134868368
#>     Attrib V38    -0.010192785079573337
#>     Attrib V39    0.36141034884670536
#>     Attrib V4    0.3347036150915711
#>     Attrib V40    0.0516476104753525
#>     Attrib V41    0.7482973125467286
#>     Attrib V42    0.0387943420135934
#>     Attrib V43    -0.19514164581856572
#>     Attrib V44    0.7307194286519608
#>     Attrib V45    0.5619882530554748
#>     Attrib V46    1.0447177689979301
#>     Attrib V47    0.5837738658950381
#>     Attrib V48    0.6532933619089021
#>     Attrib V49    0.5032763973860749
#>     Attrib V5    -0.10217739445296482
#>     Attrib V50    0.08864929338025444
#>     Attrib V51    1.2451457920417028
#>     Attrib V52    1.2787597816139662
#>     Attrib V53    0.8473082726208626
#>     Attrib V54    0.32858807266886214
#>     Attrib V55    -1.424659521897757
#>     Attrib V56    -0.784864834325346
#>     Attrib V57    -1.005480547665029
#>     Attrib V58    -0.18825205064221723
#>     Attrib V59    0.012069222747406856
#>     Attrib V6    1.3895794374984174
#>     Attrib V60    -0.31422973820064
#>     Attrib V7    -0.4127319625118173
#>     Attrib V8    -0.4947365401618374
#>     Attrib V9    0.406188441262561
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.09204539866830941
#>     Attrib V1    0.34658011551686774
#>     Attrib V10    -0.16605455713208675
#>     Attrib V11    -0.004729233031702645
#>     Attrib V12    0.16693155615311034
#>     Attrib V13    -0.004312303413574032
#>     Attrib V14    0.1268559003436939
#>     Attrib V15    0.1952076880413596
#>     Attrib V16    0.1423095931927379
#>     Attrib V17    0.09115752227495677
#>     Attrib V18    -0.08416702905466142
#>     Attrib V19    -0.07156138850588188
#>     Attrib V2    0.17880046855187115
#>     Attrib V20    -0.05775331851138371
#>     Attrib V21    -0.06618335922190437
#>     Attrib V22    -0.24011277128383943
#>     Attrib V23    -0.2558686234230123
#>     Attrib V24    -0.05240150347481241
#>     Attrib V25    -0.14516984654926934
#>     Attrib V26    -0.23836869591311818
#>     Attrib V27    -0.08923666701685926
#>     Attrib V28    -0.0993750334893039
#>     Attrib V29    -0.1619547173969152
#>     Attrib V3    0.0014423086498559444
#>     Attrib V30    -0.04153303284945729
#>     Attrib V31    -0.35523700091551863
#>     Attrib V32    -0.007952806917901636
#>     Attrib V33    0.30960530374197004
#>     Attrib V34    0.11520080045205316
#>     Attrib V35    0.10643744824002797
#>     Attrib V36    -0.10963242607150606
#>     Attrib V37    -0.07004065327771783
#>     Attrib V38    0.040238672849471274
#>     Attrib V39    0.01395143508947306
#>     Attrib V4    0.19041881655619258
#>     Attrib V40    -0.1576294218058697
#>     Attrib V41    -0.11095000035483968
#>     Attrib V42    0.06336410690883766
#>     Attrib V43    -0.0024491392376693706
#>     Attrib V44    0.0038975254052518206
#>     Attrib V45    0.04224507871600527
#>     Attrib V46    0.028881272522578834
#>     Attrib V47    -0.12762044942245965
#>     Attrib V48    0.1554405417382759
#>     Attrib V49    0.01374838958870828
#>     Attrib V5    -0.1393478496053062
#>     Attrib V50    -0.03293229990424777
#>     Attrib V51    0.0710371059442562
#>     Attrib V52    0.18239038741933014
#>     Attrib V53    0.14368085311706538
#>     Attrib V54    0.24187313525588514
#>     Attrib V55    0.2766474489677317
#>     Attrib V56    0.1921483674884104
#>     Attrib V57    0.2524178792157778
#>     Attrib V58    0.22163162305513456
#>     Attrib V59    0.38493677804157467
#>     Attrib V6    -0.06865863828629341
#>     Attrib V60    0.4099176269657979
#>     Attrib V7    -0.12725726414469266
#>     Attrib V8    -0.04962452304291748
#>     Attrib V9    0.053394169085702214
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.3546806752405056
#>     Attrib V1    0.5162795573439244
#>     Attrib V10    0.5349155326002814
#>     Attrib V11    0.7829123373333505
#>     Attrib V12    0.7158661565285162
#>     Attrib V13    0.03589185978369273
#>     Attrib V14    -0.6254083410718608
#>     Attrib V15    -0.3722412476203501
#>     Attrib V16    -0.15107012870163058
#>     Attrib V17    -0.23807554761629549
#>     Attrib V18    -0.256579287882701
#>     Attrib V19    -0.5920506821751281
#>     Attrib V2    -0.019788338277241666
#>     Attrib V20    -0.551635225845647
#>     Attrib V21    -0.17955297209862753
#>     Attrib V22    -0.2632644459004706
#>     Attrib V23    -0.21816420810184484
#>     Attrib V24    0.42626385425901253
#>     Attrib V25    0.3968806184491521
#>     Attrib V26    0.5256152589802191
#>     Attrib V27    0.34029021049900465
#>     Attrib V28    -0.014678484791637279
#>     Attrib V29    -0.3817740714246993
#>     Attrib V3    -0.4121569158709629
#>     Attrib V30    0.25646553338772615
#>     Attrib V31    -0.3185387421096619
#>     Attrib V32    0.27249950109202575
#>     Attrib V33    0.7068084454069014
#>     Attrib V34    0.5120789727695187
#>     Attrib V35    0.48286648499510526
#>     Attrib V36    -0.20925819641378698
#>     Attrib V37    -0.31795459457757164
#>     Attrib V38    -0.12965516655171458
#>     Attrib V39    -0.10876597617784166
#>     Attrib V4    0.040253280586125255
#>     Attrib V40    -0.3187574640633936
#>     Attrib V41    -0.03284855335363172
#>     Attrib V42    -0.31966615311323426
#>     Attrib V43    -0.21950167296533693
#>     Attrib V44    0.14402388809983704
#>     Attrib V45    0.35617142953449127
#>     Attrib V46    0.33254367958960457
#>     Attrib V47    0.09933927600223955
#>     Attrib V48    0.6739936964203228
#>     Attrib V49    0.19579543661238802
#>     Attrib V5    -0.4785446680406355
#>     Attrib V50    -0.14642083034483075
#>     Attrib V51    0.40743059295549167
#>     Attrib V52    0.3663576788936285
#>     Attrib V53    -0.037876304921778126
#>     Attrib V54    0.1833074117326385
#>     Attrib V55    -0.21210631535073413
#>     Attrib V56    -0.39588846546361756
#>     Attrib V57    0.10455704343902499
#>     Attrib V58    0.13452839986565254
#>     Attrib V59    0.380539810420422
#>     Attrib V6    -0.02760991720427591
#>     Attrib V60    0.2803894941802332
#>     Attrib V7    -0.28693807642261704
#>     Attrib V8    -0.22496366197961926
#>     Attrib V9    0.6814322456282377
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.04853127911410969
#>     Attrib V1    -0.40981569241528054
#>     Attrib V10    -0.6605987044384934
#>     Attrib V11    -0.9845851688304563
#>     Attrib V12    -0.9583672571019927
#>     Attrib V13    -0.8483753627254116
#>     Attrib V14    0.9534395374905997
#>     Attrib V15    0.47408371000185257
#>     Attrib V16    0.18808258250557594
#>     Attrib V17    -0.2327474126262046
#>     Attrib V18    0.1687399790424578
#>     Attrib V19    -0.065240863715715
#>     Attrib V2    -0.38902416169794946
#>     Attrib V20    -0.4645394849566054
#>     Attrib V21    -1.2287643303081288
#>     Attrib V22    -1.2617375130564341
#>     Attrib V23    -0.9008804934824449
#>     Attrib V24    -0.6064794137048725
#>     Attrib V25    0.21735099366648636
#>     Attrib V26    0.2239318803860569
#>     Attrib V27    0.3544380310695249
#>     Attrib V28    -0.13558564005769103
#>     Attrib V29    0.6532458715255897
#>     Attrib V3    0.3428594662519131
#>     Attrib V30    -0.8303882041856084
#>     Attrib V31    1.9759078258056
#>     Attrib V32    0.501056523988392
#>     Attrib V33    -1.0953337307335973
#>     Attrib V34    0.27152901581288713
#>     Attrib V35    0.25903068763442316
#>     Attrib V36    1.0060436416008691
#>     Attrib V37    0.5929873570987575
#>     Attrib V38    -0.7172190772304907
#>     Attrib V39    -0.4004721390767332
#>     Attrib V4    -0.22992099335499105
#>     Attrib V40    0.6383016442767608
#>     Attrib V41    -0.07043075287106103
#>     Attrib V42    -0.7253819874802824
#>     Attrib V43    -0.2788902397901095
#>     Attrib V44    -0.26570689761793914
#>     Attrib V45    -0.3619770932841689
#>     Attrib V46    -0.39633133799697984
#>     Attrib V47    0.04407716101035341
#>     Attrib V48    -0.31671430840382536
#>     Attrib V49    -0.3731558914141541
#>     Attrib V5    0.8074306487250639
#>     Attrib V50    0.48073958785499227
#>     Attrib V51    -0.6799170651390937
#>     Attrib V52    -0.366982916063159
#>     Attrib V53    0.6850902510093368
#>     Attrib V54    -0.4038638518473183
#>     Attrib V55    0.8710745008543478
#>     Attrib V56    -0.43705040245365656
#>     Attrib V57    1.018178570068304
#>     Attrib V58    -0.2180599225615187
#>     Attrib V59    -0.6193205446791692
#>     Attrib V6    0.8416528428690313
#>     Attrib V60    -0.25288819851881944
#>     Attrib V7    0.5105301335738904
#>     Attrib V8    -0.09572041066950801
#>     Attrib V9    -1.2708216921628586
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.23107657742918328
#>     Attrib V1    0.3455470278329943
#>     Attrib V10    -0.10446963303047228
#>     Attrib V11    0.3034580680269813
#>     Attrib V12    0.43848344612759654
#>     Attrib V13    0.010733980612275911
#>     Attrib V14    -0.29059809248676527
#>     Attrib V15    -0.04578336456562846
#>     Attrib V16    0.04655812569537842
#>     Attrib V17    0.05781780316246377
#>     Attrib V18    -0.06124506582372143
#>     Attrib V19    -0.22106647874307206
#>     Attrib V2    0.07709229383297121
#>     Attrib V20    -0.1242117037568618
#>     Attrib V21    0.0061834794908296
#>     Attrib V22    -0.06024194142176179
#>     Attrib V23    -0.0784828799636656
#>     Attrib V24    0.388031449679131
#>     Attrib V25    0.15373558299841492
#>     Attrib V26    -0.12434638056821748
#>     Attrib V27    -0.04992500359781802
#>     Attrib V28    -0.09542776340035047
#>     Attrib V29    -0.3302885148232337
#>     Attrib V3    -0.22991637758267652
#>     Attrib V30    0.06669252824430674
#>     Attrib V31    -0.5577287822172279
#>     Attrib V32    0.18606652234391793
#>     Attrib V33    0.6798436617148874
#>     Attrib V34    0.2702530940313884
#>     Attrib V35    0.12109926471985506
#>     Attrib V36    -0.40532794378678866
#>     Attrib V37    -0.3093906695458989
#>     Attrib V38    0.050816256439307775
#>     Attrib V39    -0.008279996511819238
#>     Attrib V4    0.005506490144846178
#>     Attrib V40    -0.27739892046018483
#>     Attrib V41    -0.05198646269412588
#>     Attrib V42    0.0367449453299576
#>     Attrib V43    -0.009377464774658527
#>     Attrib V44    -0.038263722636144984
#>     Attrib V45    0.14787801203647133
#>     Attrib V46    0.11244402384978669
#>     Attrib V47    -0.11037174328013422
#>     Attrib V48    0.29208827280774624
#>     Attrib V49    0.06004791893984394
#>     Attrib V5    -0.4411685647881816
#>     Attrib V50    -0.20385870065894404
#>     Attrib V51    0.1681079233676924
#>     Attrib V52    0.29540445925292963
#>     Attrib V53    -0.023977661403628975
#>     Attrib V54    0.2861025301719751
#>     Attrib V55    0.05217536675353127
#>     Attrib V56    0.159887858092314
#>     Attrib V57    0.039596631060135376
#>     Attrib V58    0.14288352887483952
#>     Attrib V59    0.40363521032752225
#>     Attrib V6    -0.17561962492239822
#>     Attrib V60    0.3240503802881831
#>     Attrib V7    -0.2910011237173587
#>     Attrib V8    -0.21690634492185284
#>     Attrib V9    0.27504599166434585
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    0.011006557979307252
#>     Attrib V1    0.4020532100079053
#>     Attrib V10    -0.12431443772243814
#>     Attrib V11    0.06709702340400962
#>     Attrib V12    0.2434327194947166
#>     Attrib V13    0.060182874243711305
#>     Attrib V14    0.004370990437467181
#>     Attrib V15    0.16926872801836054
#>     Attrib V16    0.1122797072092391
#>     Attrib V17    0.07653150491069367
#>     Attrib V18    -0.07271638793783002
#>     Attrib V19    -0.16952637017083583
#>     Attrib V2    0.17741348440182642
#>     Attrib V20    -0.10863037035471566
#>     Attrib V21    -0.040349751142246905
#>     Attrib V22    -0.21807490193968831
#>     Attrib V23    -0.2252373134746706
#>     Attrib V24    0.014748958501570373
#>     Attrib V25    -0.07514898183488423
#>     Attrib V26    -0.17189526897930646
#>     Attrib V27    -0.13978100917647268
#>     Attrib V28    -0.16601919090176318
#>     Attrib V29    -0.3230643941529551
#>     Attrib V3    -0.04626613091649218
#>     Attrib V30    -0.028698419950833054
#>     Attrib V31    -0.3282069595860425
#>     Attrib V32    0.05084375992091942
#>     Attrib V33    0.3597364050062116
#>     Attrib V34    0.15589467548954014
#>     Attrib V35    0.09301482298397121
#>     Attrib V36    -0.22071631531303118
#>     Attrib V37    -0.14131018453401273
#>     Attrib V38    0.0219673933633773
#>     Attrib V39    0.036559093217888805
#>     Attrib V4    0.17227461614572004
#>     Attrib V40    -0.180279105546387
#>     Attrib V41    -0.11635305401501568
#>     Attrib V42    0.07937311153916901
#>     Attrib V43    -0.038406880355596355
#>     Attrib V44    -0.07154515379567382
#>     Attrib V45    0.023632943936400932
#>     Attrib V46    0.033964653041020997
#>     Attrib V47    -0.16467522305800397
#>     Attrib V48    0.17071450564195478
#>     Attrib V49    0.005703185931737155
#>     Attrib V5    -0.21690145391158946
#>     Attrib V50    -0.08898364638077733
#>     Attrib V51    0.08039357811185521
#>     Attrib V52    0.22598742737561922
#>     Attrib V53    0.14451893644920985
#>     Attrib V54    0.2797305797178897
#>     Attrib V55    0.2226745743427108
#>     Attrib V56    0.22440145980701692
#>     Attrib V57    0.1694113267360623
#>     Attrib V58    0.2533876322749428
#>     Attrib V59    0.44136429894085166
#>     Attrib V6    -0.13933412527945788
#>     Attrib V60    0.39612922679956686
#>     Attrib V7    -0.18206985732679465
#>     Attrib V8    -0.13662574000814712
#>     Attrib V9    0.07604545924940183
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.09879325608272677
#>     Attrib V1    0.7015682536223931
#>     Attrib V10    -0.5467222069046997
#>     Attrib V11    -0.05902823370688641
#>     Attrib V12    0.17127788667761965
#>     Attrib V13    -0.05874054693612983
#>     Attrib V14    -0.042622464164046324
#>     Attrib V15    0.4377402309800977
#>     Attrib V16    0.3697453692984041
#>     Attrib V17    0.2598163650499617
#>     Attrib V18    -0.020946623706368225
#>     Attrib V19    -0.06383892292447015
#>     Attrib V2    0.3993580070434529
#>     Attrib V20    0.15628754746012075
#>     Attrib V21    0.11820830467062898
#>     Attrib V22    -0.06001373514689716
#>     Attrib V23    -0.2417288010622414
#>     Attrib V24    0.14788152400495178
#>     Attrib V25    -0.3269970259946334
#>     Attrib V26    -0.7055636351506954
#>     Attrib V27    -0.6346261416531999
#>     Attrib V28    -0.6108966600389165
#>     Attrib V29    -0.6958588786548396
#>     Attrib V3    -0.10298250837702615
#>     Attrib V30    -0.19511236732485585
#>     Attrib V31    -0.8043816652695019
#>     Attrib V32    0.16395997553972874
#>     Attrib V33    0.7980441082677169
#>     Attrib V34    0.29656476505769114
#>     Attrib V35    0.00391394073612839
#>     Attrib V36    -0.4243081779568469
#>     Attrib V37    -0.17111488722710708
#>     Attrib V38    0.36868489536251275
#>     Attrib V39    0.01031696299084455
#>     Attrib V4    0.2221400320665587
#>     Attrib V40    -0.3531028136620326
#>     Attrib V41    -0.2359600678495987
#>     Attrib V42    0.2101581782141005
#>     Attrib V43    0.02938520001634672
#>     Attrib V44    -0.07765126311591465
#>     Attrib V45    -0.03100999776460198
#>     Attrib V46    -0.020795484370992746
#>     Attrib V47    -0.39528552454577254
#>     Attrib V48    0.09498665142494943
#>     Attrib V49    -0.08256983307077938
#>     Attrib V5    -0.370634848097469
#>     Attrib V50    -0.2865620637469234
#>     Attrib V51    -0.02064528392835706
#>     Attrib V52    0.24184287560328796
#>     Attrib V53    0.09988897855557606
#>     Attrib V54    0.63501701255859
#>     Attrib V55    0.507811967131758
#>     Attrib V56    0.563070959673234
#>     Attrib V57    0.338121440456159
#>     Attrib V58    0.27019465887095023
#>     Attrib V59    0.7000471747060079
#>     Attrib V6    -0.3694992096967469
#>     Attrib V60    0.721173637833445
#>     Attrib V7    -0.20964344691774872
#>     Attrib V8    -0.23473952879484225
#>     Attrib V9    0.0642540029120624
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.025877027227882883
#>     Attrib V1    0.5137644259052759
#>     Attrib V10    -0.3395996920718637
#>     Attrib V11    -0.012252330226470449
#>     Attrib V12    0.15479407344804277
#>     Attrib V13    -0.04754841447992835
#>     Attrib V14    0.19113359436603405
#>     Attrib V15    0.3723389384383704
#>     Attrib V16    0.2481652043622309
#>     Attrib V17    0.04215842314138044
#>     Attrib V18    -0.020373772674705845
#>     Attrib V19    -0.16742111428861525
#>     Attrib V2    0.20254819908843355
#>     Attrib V20    0.0014592407949617278
#>     Attrib V21    0.024267285627924882
#>     Attrib V22    -0.2494735301995632
#>     Attrib V23    -0.3083491525042022
#>     Attrib V24    -0.09280646706464436
#>     Attrib V25    -0.3428635553521891
#>     Attrib V26    -0.4265971590707784
#>     Attrib V27    -0.24691718799855317
#>     Attrib V28    -0.1770278658093363
#>     Attrib V29    -0.21624440683387144
#>     Attrib V3    0.03955775462236011
#>     Attrib V30    -0.01129600617532252
#>     Attrib V31    -0.5472354186794772
#>     Attrib V32    -0.013770069391347013
#>     Attrib V33    0.40331624027783725
#>     Attrib V34    0.14299656433440666
#>     Attrib V35    0.03367974906389467
#>     Attrib V36    -0.2060386116569233
#>     Attrib V37    -0.17663371522869994
#>     Attrib V38    0.07215277121947913
#>     Attrib V39    0.01255258915179001
#>     Attrib V4    0.17856726577022367
#>     Attrib V40    -0.2636276654477642
#>     Attrib V41    -0.2142500633507244
#>     Attrib V42    0.10636061421579941
#>     Attrib V43    -0.06177779194362838
#>     Attrib V44    -0.025214971562054222
#>     Attrib V45    0.09066272100866091
#>     Attrib V46    0.051398809711826504
#>     Attrib V47    -0.19469105894711955
#>     Attrib V48    0.08791831409093066
#>     Attrib V49    0.042277102020131026
#>     Attrib V5    -0.1585272714927123
#>     Attrib V50    -0.10926876492121924
#>     Attrib V51    0.07236115056901725
#>     Attrib V52    0.28071343123128484
#>     Attrib V53    0.18280120049825746
#>     Attrib V54    0.3241326640846762
#>     Attrib V55    0.4091051907823487
#>     Attrib V56    0.2827683837884186
#>     Attrib V57    0.26978212058534784
#>     Attrib V58    0.3608769017055506
#>     Attrib V59    0.5118434563231693
#>     Attrib V6    -0.15431642151782918
#>     Attrib V60    0.4879664225455476
#>     Attrib V7    -0.11298754572979382
#>     Attrib V8    -0.06883425177742286
#>     Attrib V9    0.05575770812482575
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
#>  0.1014493 
```
