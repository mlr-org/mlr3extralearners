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
#>     Threshold    -0.05257858129492404
#>     Node 2    1.8313550655335002
#>     Node 3    1.7631028193164016
#>     Node 4    0.8705461744658707
#>     Node 5    -2.004552922795589
#>     Node 6    1.3259886716275842
#>     Node 7    2.6560412251170957
#>     Node 8    1.2262384986677761
#>     Node 9    3.619233579872022
#>     Node 10    -1.681376909415783
#>     Node 11    1.4908515680252028
#>     Node 12    1.4763327178503465
#>     Node 13    0.5428688976077682
#>     Node 14    1.679786605265181
#>     Node 15    -1.9038305909003839
#>     Node 16    -0.15659579321144967
#>     Node 17    0.5741937596949059
#>     Node 18    -0.6560242517937682
#>     Node 19    1.995806912031629
#>     Node 20    1.7361081894097223
#>     Node 21    -2.0488200974573463
#>     Node 22    0.6678966919984027
#>     Node 23    1.5976470713681805
#>     Node 24    -1.415797361893828
#>     Node 25    4.378930344855538
#>     Node 26    -1.3577474631386717
#>     Node 27    2.0495428072234723
#>     Node 28    -2.998023865474088
#>     Node 29    1.5970320283205086
#>     Node 30    -0.40869011463740385
#>     Node 31    2.1278405051879874
#>     Node 32    0.10786357858185103
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.08493606277148136
#>     Node 2    -1.883950548896964
#>     Node 3    -1.7487543143795192
#>     Node 4    -0.8287445208197387
#>     Node 5    2.01503744467504
#>     Node 6    -1.3022090595398719
#>     Node 7    -2.649606417468767
#>     Node 8    -1.2647229919015637
#>     Node 9    -3.623572719143501
#>     Node 10    1.627839327402835
#>     Node 11    -1.4563039463760687
#>     Node 12    -1.5549049596434126
#>     Node 13    -0.48890167647570226
#>     Node 14    -1.6163409364834946
#>     Node 15    1.900804970998084
#>     Node 16    0.13358559607814668
#>     Node 17    -0.5403027699868899
#>     Node 18    0.6922690473880936
#>     Node 19    -1.998673516573968
#>     Node 20    -1.7268630955323296
#>     Node 21    2.1111300825547916
#>     Node 22    -0.7178764061207971
#>     Node 23    -1.6414795670012854
#>     Node 24    1.4033021561236614
#>     Node 25    -4.381718015614313
#>     Node 26    1.277496870017226
#>     Node 27    -2.0986467928018184
#>     Node 28    2.965734041245023
#>     Node 29    -1.6308829183017444
#>     Node 30    0.47818271781106914
#>     Node 31    -2.068267990215718
#>     Node 32    -0.1288927960842966
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.06661678370364044
#>     Attrib V1    0.36937847377697375
#>     Attrib V10    0.07790772460612445
#>     Attrib V11    0.05247242552336136
#>     Attrib V12    4.998640510186572E-4
#>     Attrib V13    0.12571485072954888
#>     Attrib V14    -0.168676359080913
#>     Attrib V15    0.02691184244037682
#>     Attrib V16    -0.24539559458699958
#>     Attrib V17    -0.2014029707777314
#>     Attrib V18    0.18325748241093856
#>     Attrib V19    0.3093685517822595
#>     Attrib V2    -0.4510361283531235
#>     Attrib V20    0.5902086388002751
#>     Attrib V21    0.38314008162317703
#>     Attrib V22    0.2889729599559755
#>     Attrib V23    0.5014303699773381
#>     Attrib V24    0.44618214125156525
#>     Attrib V25    -0.014043637732780804
#>     Attrib V26    -0.801234883369811
#>     Attrib V27    -1.0685399937448685
#>     Attrib V28    -0.8180367926246153
#>     Attrib V29    -0.7447256387711653
#>     Attrib V3    -0.08427742311626557
#>     Attrib V30    -0.050158677710920016
#>     Attrib V31    -0.4344715300056178
#>     Attrib V32    0.24570174679061496
#>     Attrib V33    0.6149136525876181
#>     Attrib V34    0.15418526819663889
#>     Attrib V35    0.007559936838654469
#>     Attrib V36    -0.7781283723309126
#>     Attrib V37    -0.8786216892582464
#>     Attrib V38    0.22203638895879185
#>     Attrib V39    0.05218400715818187
#>     Attrib V4    0.27431912542993764
#>     Attrib V40    -0.2792051656990497
#>     Attrib V41    -0.09001817103689617
#>     Attrib V42    -0.18101773806389684
#>     Attrib V43    0.3890635879688324
#>     Attrib V44    0.10710739965975317
#>     Attrib V45    -0.16956879502573946
#>     Attrib V46    -0.14458819725997152
#>     Attrib V47    0.12912387218209193
#>     Attrib V48    0.34648710293046037
#>     Attrib V49    0.018381032090281857
#>     Attrib V5    0.12860612079464936
#>     Attrib V50    -0.500167153741241
#>     Attrib V51    -2.961362942920627E-4
#>     Attrib V52    -0.10785195841669194
#>     Attrib V53    0.3519392828577467
#>     Attrib V54    0.8031742803450133
#>     Attrib V55    -0.3604893761756855
#>     Attrib V56    0.44119873505699114
#>     Attrib V57    0.027832159569135158
#>     Attrib V58    0.6020848998682158
#>     Attrib V59    0.8426558621482426
#>     Attrib V6    -0.23214017045586097
#>     Attrib V60    0.3014399657330651
#>     Attrib V7    0.15199692210024873
#>     Attrib V8    0.2003004209242362
#>     Attrib V9    0.54426977730139
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.08522454366997975
#>     Attrib V1    0.30508131182799314
#>     Attrib V10    0.09994182132861539
#>     Attrib V11    0.07386432085531182
#>     Attrib V12    0.08202520621787865
#>     Attrib V13    0.21536963363454345
#>     Attrib V14    -0.17905410044690162
#>     Attrib V15    0.06015481069801674
#>     Attrib V16    -0.25311996745489573
#>     Attrib V17    -0.1782349104922742
#>     Attrib V18    0.17339342901704394
#>     Attrib V19    0.3812297533302276
#>     Attrib V2    -0.39144591960384606
#>     Attrib V20    0.5243136683166933
#>     Attrib V21    0.2772408357386143
#>     Attrib V22    0.3209634209635036
#>     Attrib V23    0.5506995865727687
#>     Attrib V24    0.49373378297210246
#>     Attrib V25    0.10220620568452721
#>     Attrib V26    -0.6549760128036782
#>     Attrib V27    -0.9386620971865619
#>     Attrib V28    -0.7088100442042995
#>     Attrib V29    -0.7146699063989157
#>     Attrib V3    -0.11275286931914247
#>     Attrib V30    -0.03724292246771159
#>     Attrib V31    -0.33126944105407363
#>     Attrib V32    0.29940823308807224
#>     Attrib V33    0.5751208905029033
#>     Attrib V34    0.010072272534367523
#>     Attrib V35    -0.06536673275040455
#>     Attrib V36    -0.8436311902387801
#>     Attrib V37    -0.8997041723432689
#>     Attrib V38    0.09713603308776785
#>     Attrib V39    0.05583537331280631
#>     Attrib V4    0.27670553553834437
#>     Attrib V40    -0.2794573926423073
#>     Attrib V41    -0.011294117003489847
#>     Attrib V42    -0.12742625579751873
#>     Attrib V43    0.3800648091137903
#>     Attrib V44    0.13890962090537165
#>     Attrib V45    -0.12934618140441886
#>     Attrib V46    -0.12938396834292026
#>     Attrib V47    0.2103280426856994
#>     Attrib V48    0.36248800150576443
#>     Attrib V49    0.09089875759424497
#>     Attrib V5    0.11438783592455197
#>     Attrib V50    -0.45950823118153655
#>     Attrib V51    0.02019607390239715
#>     Attrib V52    -0.018524489927311486
#>     Attrib V53    0.32133540054935444
#>     Attrib V54    0.8082290712385399
#>     Attrib V55    -0.3537844407596882
#>     Attrib V56    0.43481947956916944
#>     Attrib V57    0.07077098679490489
#>     Attrib V58    0.6612028969954087
#>     Attrib V59    0.7771091048980386
#>     Attrib V6    -0.20035548762681443
#>     Attrib V60    0.17141627670614829
#>     Attrib V7    0.007331352060261758
#>     Attrib V8    0.14689404351066163
#>     Attrib V9    0.5035131394422808
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.020211879279420693
#>     Attrib V1    0.18227880290694448
#>     Attrib V10    0.030706601121270556
#>     Attrib V11    0.03688003646429292
#>     Attrib V12    0.04246750890666241
#>     Attrib V13    0.17258975399227278
#>     Attrib V14    0.06791376448198498
#>     Attrib V15    0.1585030714471116
#>     Attrib V16    -0.056389890047275064
#>     Attrib V17    -0.030826595385542933
#>     Attrib V18    0.1308874015168448
#>     Attrib V19    0.20656715234901157
#>     Attrib V2    -0.19131160333573954
#>     Attrib V20    0.3297184643248372
#>     Attrib V21    0.22901009639366862
#>     Attrib V22    0.07361148682256717
#>     Attrib V23    0.15547318575656746
#>     Attrib V24    0.0647560268978985
#>     Attrib V25    -0.15323922858575967
#>     Attrib V26    -0.39093810502919024
#>     Attrib V27    -0.45907561147130166
#>     Attrib V28    -0.2026257740902821
#>     Attrib V29    -0.1351696924245934
#>     Attrib V3    0.01433366499063917
#>     Attrib V30    -0.019050022550764906
#>     Attrib V31    -0.2562452427615815
#>     Attrib V32    0.05241867473103581
#>     Attrib V33    0.24008375157923867
#>     Attrib V34    -0.012480842458711961
#>     Attrib V35    -0.02530822632870157
#>     Attrib V36    -0.4103061972296589
#>     Attrib V37    -0.33696442147794
#>     Attrib V38    0.1153153666560841
#>     Attrib V39    0.08577096756372461
#>     Attrib V4    0.21216234919887883
#>     Attrib V40    -0.14486482243558674
#>     Attrib V41    -0.024203933996626334
#>     Attrib V42    -0.0741799083402923
#>     Attrib V43    0.12655430295474926
#>     Attrib V44    0.055459726018961264
#>     Attrib V45    -0.0045597434136022035
#>     Attrib V46    -0.08080898799689679
#>     Attrib V47    0.03839361321451338
#>     Attrib V48    0.15847925920022118
#>     Attrib V49    0.028990089935718943
#>     Attrib V5    0.17328163154339987
#>     Attrib V50    -0.21102026006801944
#>     Attrib V51    0.071498715280061
#>     Attrib V52    0.03643076941255178
#>     Attrib V53    0.2662460328456388
#>     Attrib V54    0.3554976416550646
#>     Attrib V55    -0.117664371596532
#>     Attrib V56    0.24990433158967795
#>     Attrib V57    0.12341764063445028
#>     Attrib V58    0.32993679345997734
#>     Attrib V59    0.4659650810965045
#>     Attrib V6    -0.05714206712247426
#>     Attrib V60    0.17547626723795304
#>     Attrib V7    0.032750718471144934
#>     Attrib V8    -0.007542562696582923
#>     Attrib V9    0.26437262573579573
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5557122270227429
#>     Attrib V1    -0.41382528919511374
#>     Attrib V10    -0.29879892734240987
#>     Attrib V11    -0.4885416334063547
#>     Attrib V12    -0.6315574571411842
#>     Attrib V13    -0.5005537733966602
#>     Attrib V14    0.43303672234284346
#>     Attrib V15    0.25338944223682597
#>     Attrib V16    0.6244113071721108
#>     Attrib V17    0.6584119347340959
#>     Attrib V18    0.00976310667508594
#>     Attrib V19    -0.3146972432104681
#>     Attrib V2    0.6084067119194189
#>     Attrib V20    -0.733311524936732
#>     Attrib V21    -0.18773476607515036
#>     Attrib V22    -0.13901911543265544
#>     Attrib V23    -0.6239843887679039
#>     Attrib V24    -0.605702305153838
#>     Attrib V25    0.08938024766619285
#>     Attrib V26    0.4871549676516496
#>     Attrib V27    0.3850339084485753
#>     Attrib V28    -0.4804722339612055
#>     Attrib V29    -0.26649252820274094
#>     Attrib V3    0.634893461089129
#>     Attrib V30    -0.04575634141477368
#>     Attrib V31    0.8625050552864636
#>     Attrib V32    -0.04682461399424455
#>     Attrib V33    -0.2872838136044275
#>     Attrib V34    0.1673813227029009
#>     Attrib V35    -0.1713509673144174
#>     Attrib V36    0.94156526768005
#>     Attrib V37    0.561833886857358
#>     Attrib V38    -0.6151906866660087
#>     Attrib V39    -0.3988058531721042
#>     Attrib V4    -0.3025871037880688
#>     Attrib V40    0.49523014020802203
#>     Attrib V41    -0.24649485138289437
#>     Attrib V42    0.4617107825524413
#>     Attrib V43    -0.26049302611346403
#>     Attrib V44    -0.15266477704140802
#>     Attrib V45    -0.3806943941390728
#>     Attrib V46    -0.4097593262061746
#>     Attrib V47    -0.6348018340634048
#>     Attrib V48    -0.8219259413908656
#>     Attrib V49    -0.4078614993036326
#>     Attrib V5    -0.3014587310825931
#>     Attrib V50    0.9182552646296025
#>     Attrib V51    -0.10795292229775369
#>     Attrib V52    -0.1725287899104531
#>     Attrib V53    -0.39099302129356617
#>     Attrib V54    -0.7698654075731911
#>     Attrib V55    0.8940935551316912
#>     Attrib V56    0.33101589706424084
#>     Attrib V57    0.11048658038996843
#>     Attrib V58    -0.40766277484935176
#>     Attrib V59    -0.4301347497102105
#>     Attrib V6    0.059142548326484634
#>     Attrib V60    0.2064633182797352
#>     Attrib V7    0.18466514698237957
#>     Attrib V8    0.36994670169182625
#>     Attrib V9    -0.6808865284818779
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.09411436333170807
#>     Attrib V1    0.28585459442276223
#>     Attrib V10    -0.035443519010190556
#>     Attrib V11    -0.022179025592802284
#>     Attrib V12    0.03320947164563636
#>     Attrib V13    0.07734579544326246
#>     Attrib V14    -0.08039068190392204
#>     Attrib V15    0.09382936034423663
#>     Attrib V16    -0.046180519696099855
#>     Attrib V17    -0.07370014551899512
#>     Attrib V18    0.22423675633342036
#>     Attrib V19    0.2561512521307162
#>     Attrib V2    -0.3049699825502595
#>     Attrib V20    0.41949042601891134
#>     Attrib V21    0.27955556024411754
#>     Attrib V22    0.18254040598407897
#>     Attrib V23    0.3348269763479149
#>     Attrib V24    0.3232160871101616
#>     Attrib V25    0.003797731812933034
#>     Attrib V26    -0.5663771193087801
#>     Attrib V27    -0.6764589785784327
#>     Attrib V28    -0.560707066574484
#>     Attrib V29    -0.48104371914584926
#>     Attrib V3    -0.05633740066744502
#>     Attrib V30    -0.05851475112541679
#>     Attrib V31    -0.3249452891648121
#>     Attrib V32    0.13540079647682146
#>     Attrib V33    0.39945646684565883
#>     Attrib V34    0.014445393214944188
#>     Attrib V35    -0.018026272762242206
#>     Attrib V36    -0.6038378961226227
#>     Attrib V37    -0.5824541802644083
#>     Attrib V38    0.13861551750402012
#>     Attrib V39    0.03123054123433857
#>     Attrib V4    0.27379585369978526
#>     Attrib V40    -0.22419269113925708
#>     Attrib V41    0.013534068085430995
#>     Attrib V42    -0.10687278835515
#>     Attrib V43    0.2520905952729406
#>     Attrib V44    0.03986845962661242
#>     Attrib V45    -0.13467286276720972
#>     Attrib V46    -0.0962804637054773
#>     Attrib V47    0.07095119483050549
#>     Attrib V48    0.1815661059272139
#>     Attrib V49    -0.013806950236127798
#>     Attrib V5    0.11064171229886641
#>     Attrib V50    -0.294646808903329
#>     Attrib V51    0.016513267854519304
#>     Attrib V52    -0.08489555537284352
#>     Attrib V53    0.3671295694711559
#>     Attrib V54    0.5527030151202679
#>     Attrib V55    -0.2750142871946266
#>     Attrib V56    0.3799774668238393
#>     Attrib V57    0.1297766827239226
#>     Attrib V58    0.4870634063241455
#>     Attrib V59    0.6982123387080507
#>     Attrib V6    -0.06135721983951045
#>     Attrib V60    0.3311205003480596
#>     Attrib V7    0.1162508290298084
#>     Attrib V8    0.10864653018184714
#>     Attrib V9    0.374753464877535
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.46468484477382255
#>     Attrib V1    0.5336071815080606
#>     Attrib V10    0.8002005942966225
#>     Attrib V11    0.8520904526318251
#>     Attrib V12    0.7580803550499068
#>     Attrib V13    0.3781258976661847
#>     Attrib V14    -0.3151276793934887
#>     Attrib V15    -0.265053737249211
#>     Attrib V16    -0.339571161087095
#>     Attrib V17    -0.5465075849750702
#>     Attrib V18    -0.2627417874891015
#>     Attrib V19    -0.2154464086761886
#>     Attrib V2    -0.12996893080165697
#>     Attrib V20    0.008639963429113152
#>     Attrib V21    -0.1708196422098191
#>     Attrib V22    -0.2501796402112041
#>     Attrib V23    0.16763944843847342
#>     Attrib V24    0.11702675276434145
#>     Attrib V25    -0.043383075531084864
#>     Attrib V26    0.44715452855924254
#>     Attrib V27    0.8098292564778847
#>     Attrib V28    1.5653077881149637
#>     Attrib V29    1.0876664307609896
#>     Attrib V3    -0.4902383173233948
#>     Attrib V30    0.3234602388503805
#>     Attrib V31    -0.5071366193973346
#>     Attrib V32    0.10904877909024409
#>     Attrib V33    0.11781277432305962
#>     Attrib V34    -0.16048800795725796
#>     Attrib V35    0.29486660649762536
#>     Attrib V36    -0.2501914088262625
#>     Attrib V37    0.4107632587000458
#>     Attrib V38    0.36623468100839385
#>     Attrib V39    0.13601808460329154
#>     Attrib V4    0.316413040042604
#>     Attrib V40    -0.3051955429005161
#>     Attrib V41    0.7355027243212457
#>     Attrib V42    -0.2246069780762519
#>     Attrib V43    -0.30183590769855817
#>     Attrib V44    0.004968776272354114
#>     Attrib V45    0.6147743854685163
#>     Attrib V46    0.6507208255957613
#>     Attrib V47    0.6612285570136921
#>     Attrib V48    0.8641597989068415
#>     Attrib V49    0.388502325143799
#>     Attrib V5    0.5173113579775163
#>     Attrib V50    -0.5835865239542337
#>     Attrib V51    0.3522025425988007
#>     Attrib V52    0.6275261982490211
#>     Attrib V53    -0.045666760360530696
#>     Attrib V54    0.5552322851243183
#>     Attrib V55    -0.5177082210231142
#>     Attrib V56    -1.037841610418189
#>     Attrib V57    0.19148799398060917
#>     Attrib V58    -0.21581300968066755
#>     Attrib V59    0.255972442014235
#>     Attrib V6    0.5248742811589759
#>     Attrib V60    0.3101006957476823
#>     Attrib V7    -0.010990872199477678
#>     Attrib V8    -0.5302852785948107
#>     Attrib V9    0.7763740223218947
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.21833340221764397
#>     Attrib V1    0.24037221796888092
#>     Attrib V10    0.19575844377528567
#>     Attrib V11    0.20278090131366813
#>     Attrib V12    0.18612317346120902
#>     Attrib V13    0.24586776800861787
#>     Attrib V14    -0.20554514707356367
#>     Attrib V15    -0.01229851724706981
#>     Attrib V16    -0.14977231818605344
#>     Attrib V17    -0.16174624575469315
#>     Attrib V18    0.13793400091237998
#>     Attrib V19    0.2602343201715697
#>     Attrib V2    -0.37284955062918734
#>     Attrib V20    0.3385544408180934
#>     Attrib V21    0.1738951953733819
#>     Attrib V22    0.11985859001373926
#>     Attrib V23    0.3486983976079574
#>     Attrib V24    0.3660937831526291
#>     Attrib V25    0.05585808501483331
#>     Attrib V26    -0.33476374493258854
#>     Attrib V27    -0.4869251424503235
#>     Attrib V28    -0.2181259183674068
#>     Attrib V29    -0.2529189155764375
#>     Attrib V3    -0.22026617272121865
#>     Attrib V30    0.045091164106808156
#>     Attrib V31    -0.3326609473003569
#>     Attrib V32    0.23064433710961021
#>     Attrib V33    0.4507970497260879
#>     Attrib V34    -0.0016011118510148887
#>     Attrib V35    -0.04358677084679772
#>     Attrib V36    -0.6316822777390045
#>     Attrib V37    -0.579312979734081
#>     Attrib V38    0.21319747143071882
#>     Attrib V39    0.06670829195015662
#>     Attrib V4    0.2880021918775634
#>     Attrib V40    -0.25944988227649685
#>     Attrib V41    0.08350438160104294
#>     Attrib V42    -0.23700020064672972
#>     Attrib V43    0.1885926970169595
#>     Attrib V44    0.10174740707652231
#>     Attrib V45    -4.3344562334506085E-6
#>     Attrib V46    -0.008729963161635405
#>     Attrib V47    0.18972230814125718
#>     Attrib V48    0.43258899169554926
#>     Attrib V49    0.14456363185265597
#>     Attrib V5    0.142908687166792
#>     Attrib V50    -0.5269032946135065
#>     Attrib V51    0.032132348952600656
#>     Attrib V52    0.012710214559330212
#>     Attrib V53    0.24626725144057954
#>     Attrib V54    0.5574621772925439
#>     Attrib V55    -0.4334331759619917
#>     Attrib V56    0.09783150758862855
#>     Attrib V57    0.061725157785392316
#>     Attrib V58    0.35779350759406453
#>     Attrib V59    0.6025011043863153
#>     Attrib V6    -0.07551019482056864
#>     Attrib V60    0.21706684808146864
#>     Attrib V7    0.03053308049251793
#>     Attrib V8    -0.07224569039454681
#>     Attrib V9    0.4644363084783361
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.7211417787543881
#>     Attrib V1    0.6825882682436881
#>     Attrib V10    1.0926707096671657
#>     Attrib V11    0.9614791512785368
#>     Attrib V12    1.008743949961675
#>     Attrib V13    0.5579636544076282
#>     Attrib V14    -0.433003799616496
#>     Attrib V15    -0.18792576810860276
#>     Attrib V16    -0.1605843427906347
#>     Attrib V17    -0.5164860089573321
#>     Attrib V18    -0.23079107049701908
#>     Attrib V19    -0.2273933159909941
#>     Attrib V2    -0.09045245835063445
#>     Attrib V20    0.06183479171091353
#>     Attrib V21    -0.002317243450985434
#>     Attrib V22    -0.12596908825493278
#>     Attrib V23    0.3395541713654462
#>     Attrib V24    0.4075271974930854
#>     Attrib V25    0.12673472109382264
#>     Attrib V26    0.6885062395302329
#>     Attrib V27    1.1383628591176993
#>     Attrib V28    2.149765459242485
#>     Attrib V29    1.403776061368421
#>     Attrib V3    -0.7834840173367098
#>     Attrib V30    0.40082750547178647
#>     Attrib V31    -0.6431701976815222
#>     Attrib V32    0.15089025835192615
#>     Attrib V33    -0.005258811762647858
#>     Attrib V34    -0.40384231717482033
#>     Attrib V35    0.24518521035041732
#>     Attrib V36    -0.3414842690728842
#>     Attrib V37    0.5485120131008014
#>     Attrib V38    0.4610760524614922
#>     Attrib V39    0.22755654331976938
#>     Attrib V4    0.22834750013405256
#>     Attrib V40    -0.2814184057885486
#>     Attrib V41    1.166572515895847
#>     Attrib V42    -0.2848644403251887
#>     Attrib V43    -0.3551785147340865
#>     Attrib V44    0.0489623979708534
#>     Attrib V45    0.8368473178314555
#>     Attrib V46    0.7663824143446265
#>     Attrib V47    0.7751893336208113
#>     Attrib V48    0.9874336349183507
#>     Attrib V49    0.4961401890087477
#>     Attrib V5    0.5503379929227951
#>     Attrib V50    -0.7008219631387622
#>     Attrib V51    0.4787199312125048
#>     Attrib V52    0.7804975058971823
#>     Attrib V53    0.27117841092619765
#>     Attrib V54    0.6809030607414154
#>     Attrib V55    -0.5769646629939611
#>     Attrib V56    -1.2653521771279335
#>     Attrib V57    0.22091641322763375
#>     Attrib V58    -0.351613721240892
#>     Attrib V59    0.39175969447431214
#>     Attrib V6    0.7934182884183884
#>     Attrib V60    0.3800816927297922
#>     Attrib V7    0.04032264836003053
#>     Attrib V8    -0.5149338368414135
#>     Attrib V9    0.8729712955457553
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.40949838419132445
#>     Attrib V1    -0.2838093207299331
#>     Attrib V10    -0.20442294230077696
#>     Attrib V11    -0.37033791910383207
#>     Attrib V12    -0.3763735934901522
#>     Attrib V13    -0.2506550755025063
#>     Attrib V14    0.5086360714716356
#>     Attrib V15    0.28098816114902037
#>     Attrib V16    0.5595760113425811
#>     Attrib V17    0.39524888157321175
#>     Attrib V18    -0.0578303949416208
#>     Attrib V19    -0.16449438249832
#>     Attrib V2    0.4185641998839296
#>     Attrib V20    -0.44313340753086305
#>     Attrib V21    -0.15199984593826937
#>     Attrib V22    -0.2914862614553106
#>     Attrib V23    -0.7474514746663725
#>     Attrib V24    -0.6871256295448779
#>     Attrib V25    -0.13483361498396476
#>     Attrib V26    0.3405611921418104
#>     Attrib V27    0.33744128017305663
#>     Attrib V28    -0.32349744379173057
#>     Attrib V29    -0.3417154795118388
#>     Attrib V3    0.4673077178659523
#>     Attrib V30    -0.20505665521380262
#>     Attrib V31    0.6152210742063168
#>     Attrib V32    -0.24541944142102667
#>     Attrib V33    -0.3251857062100165
#>     Attrib V34    0.17027501960950622
#>     Attrib V35    -0.08716935015055527
#>     Attrib V36    0.633532095699035
#>     Attrib V37    0.36673261624015074
#>     Attrib V38    -0.4220299287097714
#>     Attrib V39    -0.2857180335050879
#>     Attrib V4    -0.2784306312922377
#>     Attrib V40    0.36474656345834316
#>     Attrib V41    -0.349873734939141
#>     Attrib V42    0.16735493729600356
#>     Attrib V43    -0.36609925719176983
#>     Attrib V44    -0.2888508981556211
#>     Attrib V45    -0.32217807144093424
#>     Attrib V46    -0.35361400076558536
#>     Attrib V47    -0.6118348171444975
#>     Attrib V48    -0.8691963723442636
#>     Attrib V49    -0.4335503152674608
#>     Attrib V5    -0.34177347120303697
#>     Attrib V50    0.8045316918792487
#>     Attrib V51    -0.13980240741121586
#>     Attrib V52    -0.146830126386712
#>     Attrib V53    -0.1269351033170865
#>     Attrib V54    -0.7204719811733257
#>     Attrib V55    0.7934126844244757
#>     Attrib V56    0.2549092647129539
#>     Attrib V57    0.02424928303033319
#>     Attrib V58    -0.1944980777749012
#>     Attrib V59    -0.4368773862068767
#>     Attrib V6    -0.010804317875960624
#>     Attrib V60    0.15783388235154117
#>     Attrib V7    0.17827634904780082
#>     Attrib V8    0.25002235519302574
#>     Attrib V9    -0.6048689143592061
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.06350194711659604
#>     Attrib V1    0.2567251866199133
#>     Attrib V10    0.06824629742794355
#>     Attrib V11    0.08262137534507555
#>     Attrib V12    0.0832933254342423
#>     Attrib V13    0.10920345300945222
#>     Attrib V14    -0.16286662675666105
#>     Attrib V15    0.027620500172992484
#>     Attrib V16    -0.1842803422156495
#>     Attrib V17    -0.10709654708586001
#>     Attrib V18    0.18654802695311054
#>     Attrib V19    0.26586595921628264
#>     Attrib V2    -0.4062218652506721
#>     Attrib V20    0.5020366191300861
#>     Attrib V21    0.2581721523056914
#>     Attrib V22    0.20674667680995829
#>     Attrib V23    0.4261331754842904
#>     Attrib V24    0.3618727290576973
#>     Attrib V25    0.020076696817784824
#>     Attrib V26    -0.6458832724218929
#>     Attrib V27    -0.8331589824867821
#>     Attrib V28    -0.624655922464473
#>     Attrib V29    -0.602251565541083
#>     Attrib V3    -0.14697750553300237
#>     Attrib V30    -0.04195830390661033
#>     Attrib V31    -0.3757920578145538
#>     Attrib V32    0.16050744743312
#>     Attrib V33    0.495006455939632
#>     Attrib V34    0.1374713213939684
#>     Attrib V35    0.04678373741967333
#>     Attrib V36    -0.6330412614264385
#>     Attrib V37    -0.70019989496462
#>     Attrib V38    0.22680239650276957
#>     Attrib V39    0.04276944052567245
#>     Attrib V4    0.24025270527446566
#>     Attrib V40    -0.26502642878349586
#>     Attrib V41    -0.10286623114789564
#>     Attrib V42    -0.18502604551563667
#>     Attrib V43    0.2961524763988507
#>     Attrib V44    0.11485065448052646
#>     Attrib V45    -0.044175610575363684
#>     Attrib V46    -0.09531953824374183
#>     Attrib V47    0.14792515366504888
#>     Attrib V48    0.2969948362611319
#>     Attrib V49    0.01497458426985999
#>     Attrib V5    0.13102932003821594
#>     Attrib V50    -0.4131957934263987
#>     Attrib V51    0.07492446753162442
#>     Attrib V52    -0.0748156454517783
#>     Attrib V53    0.2785966615291078
#>     Attrib V54    0.7102675768622201
#>     Attrib V55    -0.2910404022110741
#>     Attrib V56    0.3518029837556292
#>     Attrib V57    0.05352087349258507
#>     Attrib V58    0.5278127153608779
#>     Attrib V59    0.6178181328600044
#>     Attrib V6    -0.11810668270610367
#>     Attrib V60    0.2272938271611883
#>     Attrib V7    0.06384318050942277
#>     Attrib V8    0.13750558979164196
#>     Attrib V9    0.4783044835894262
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.14870932997537373
#>     Attrib V1    0.2624924935806153
#>     Attrib V10    0.02375597434199145
#>     Attrib V11    0.11116528917818566
#>     Attrib V12    0.015512229238813114
#>     Attrib V13    0.14519516083944192
#>     Attrib V14    -0.12817343946616808
#>     Attrib V15    0.025044071590132718
#>     Attrib V16    -0.16892388774617811
#>     Attrib V17    -0.15425745329563853
#>     Attrib V18    0.17051545844627705
#>     Attrib V19    0.3387294668293156
#>     Attrib V2    -0.3536040602694417
#>     Attrib V20    0.45866811264870605
#>     Attrib V21    0.2656290187984517
#>     Attrib V22    0.26735961633947253
#>     Attrib V23    0.44540343789279846
#>     Attrib V24    0.34879808346038177
#>     Attrib V25    -0.024991204767453593
#>     Attrib V26    -0.6199193516253736
#>     Attrib V27    -0.7760245750562705
#>     Attrib V28    -0.6210633372478305
#>     Attrib V29    -0.5227719436973743
#>     Attrib V3    -0.1586635224015564
#>     Attrib V30    -0.06404215619519445
#>     Attrib V31    -0.39733506776275596
#>     Attrib V32    0.15352443898193383
#>     Attrib V33    0.5280703016248844
#>     Attrib V34    0.10268410583618329
#>     Attrib V35    -0.002747176206237497
#>     Attrib V36    -0.6706326103827496
#>     Attrib V37    -0.7187220719672903
#>     Attrib V38    0.17820165577609764
#>     Attrib V39    0.0011212732268901932
#>     Attrib V4    0.2968690407990429
#>     Attrib V40    -0.23288499752516895
#>     Attrib V41    -0.03605995231862078
#>     Attrib V42    -0.18572577700622772
#>     Attrib V43    0.3519223635641037
#>     Attrib V44    0.03261504348774156
#>     Attrib V45    -0.1006165419567459
#>     Attrib V46    -0.04887865933306249
#>     Attrib V47    0.12969144328447488
#>     Attrib V48    0.34029335244796655
#>     Attrib V49    0.017680271248533365
#>     Attrib V5    0.13342530233292668
#>     Attrib V50    -0.4547063953037276
#>     Attrib V51    0.03112532557095916
#>     Attrib V52    -0.021690676796692704
#>     Attrib V53    0.339706158963584
#>     Attrib V54    0.689292102263792
#>     Attrib V55    -0.35014734865410047
#>     Attrib V56    0.35658803735284866
#>     Attrib V57    0.10979823859039464
#>     Attrib V58    0.5457481817473976
#>     Attrib V59    0.7535551770463476
#>     Attrib V6    -0.17490743875883924
#>     Attrib V60    0.2591648237284148
#>     Attrib V7    0.09253549973138617
#>     Attrib V8    0.11422054982723205
#>     Attrib V9    0.46494533645574804
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.12128253799199959
#>     Attrib V1    0.13645503681487334
#>     Attrib V10    0.030901145751525038
#>     Attrib V11    0.04085228555401888
#>     Attrib V12    0.05876981838280405
#>     Attrib V13    0.15344104150698826
#>     Attrib V14    0.05493643603997621
#>     Attrib V15    0.06962061836361881
#>     Attrib V16    -0.03740123393440082
#>     Attrib V17    0.029119757721551648
#>     Attrib V18    0.11126246877076716
#>     Attrib V19    0.10405504983455677
#>     Attrib V2    -0.10969043176486916
#>     Attrib V20    0.17787303569736523
#>     Attrib V21    0.06909532997849527
#>     Attrib V22    -0.03695842136924142
#>     Attrib V23    0.04923849543010492
#>     Attrib V24    -0.006901577188161557
#>     Attrib V25    -0.0736708191580466
#>     Attrib V26    -0.2602602197062061
#>     Attrib V27    -0.17246224739520258
#>     Attrib V28    -0.13024891368568053
#>     Attrib V29    -0.08323572107949963
#>     Attrib V3    0.06748194573633655
#>     Attrib V30    -0.020173722271657254
#>     Attrib V31    -0.19473526962130108
#>     Attrib V32    0.0365038032718588
#>     Attrib V33    0.11385873640191303
#>     Attrib V34    0.026192455608895698
#>     Attrib V35    -0.005751807971731901
#>     Attrib V36    -0.22393558598575453
#>     Attrib V37    -0.14586032631329787
#>     Attrib V38    0.111040697638567
#>     Attrib V39    0.11942050127499301
#>     Attrib V4    0.2086621824269108
#>     Attrib V40    -0.05505351181538231
#>     Attrib V41    0.0032312264437457804
#>     Attrib V42    -0.0932678925128139
#>     Attrib V43    0.019359727881298736
#>     Attrib V44    0.01921864400452472
#>     Attrib V45    -0.0645303627665896
#>     Attrib V46    0.019687756656986247
#>     Attrib V47    0.088631689039671
#>     Attrib V48    0.08295129490083257
#>     Attrib V49    0.033739815679814586
#>     Attrib V5    0.15301668328519988
#>     Attrib V50    -0.1284137214556006
#>     Attrib V51    0.047045356191585834
#>     Attrib V52    0.04698883160883728
#>     Attrib V53    0.1559038330981907
#>     Attrib V54    0.18664798748731332
#>     Attrib V55    -0.05814473638547896
#>     Attrib V56    0.14697116192122214
#>     Attrib V57    0.11862973240595989
#>     Attrib V58    0.21147456601162692
#>     Attrib V59    0.3354382026241892
#>     Attrib V6    0.0577862722271435
#>     Attrib V60    0.2567293245950678
#>     Attrib V7    0.10566128381531922
#>     Attrib V8    -0.03864994464482096
#>     Attrib V9    0.15341094328616697
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.17403959945989358
#>     Attrib V1    0.35790423746155275
#>     Attrib V10    0.17240942499400363
#>     Attrib V11    0.20246041463211614
#>     Attrib V12    0.15416235816810372
#>     Attrib V13    0.1809470938425554
#>     Attrib V14    -0.24280719211459553
#>     Attrib V15    0.041375947713892046
#>     Attrib V16    -0.26032489221230914
#>     Attrib V17    -0.20542633747947273
#>     Attrib V18    0.16124712303009223
#>     Attrib V19    0.2716070986738584
#>     Attrib V2    -0.43722036369512557
#>     Attrib V20    0.42096636035567975
#>     Attrib V21    0.21171393404560174
#>     Attrib V22    0.2154461577041913
#>     Attrib V23    0.49734648528268155
#>     Attrib V24    0.42952815113431064
#>     Attrib V25    0.07562508504191562
#>     Attrib V26    -0.5554993702162322
#>     Attrib V27    -0.8433973290181003
#>     Attrib V28    -0.6243220537499059
#>     Attrib V29    -0.6133160849853031
#>     Attrib V3    -0.26898411459402033
#>     Attrib V30    -0.040000470296010886
#>     Attrib V31    -0.34887226268799704
#>     Attrib V32    0.27312265464934826
#>     Attrib V33    0.5690313563389316
#>     Attrib V34    0.03518227986018963
#>     Attrib V35    -0.014083049681811396
#>     Attrib V36    -0.8090221506399102
#>     Attrib V37    -0.7724767340118934
#>     Attrib V38    0.13805285774850426
#>     Attrib V39    0.08497887371325473
#>     Attrib V4    0.25581415204326813
#>     Attrib V40    -0.3013792325123614
#>     Attrib V41    -0.014132928657988675
#>     Attrib V42    -0.23759975429506974
#>     Attrib V43    0.2796994719581396
#>     Attrib V44    0.12796982098891438
#>     Attrib V45    -0.11899697547863794
#>     Attrib V46    -0.0738008040730985
#>     Attrib V47    0.17271006523610544
#>     Attrib V48    0.476528046691502
#>     Attrib V49    0.17493840671272062
#>     Attrib V5    0.10735547455554266
#>     Attrib V50    -0.5377047928947255
#>     Attrib V51    0.01147213292957738
#>     Attrib V52    -0.05113633373158114
#>     Attrib V53    0.2182174074109515
#>     Attrib V54    0.7986598459683115
#>     Attrib V55    -0.38950793083668056
#>     Attrib V56    0.29913832700647947
#>     Attrib V57    0.03460544636367557
#>     Attrib V58    0.577801847967534
#>     Attrib V59    0.7640248858807374
#>     Attrib V6    -0.12514778278437477
#>     Attrib V60    0.2827154971188779
#>     Attrib V7    0.06849062694979166
#>     Attrib V8    0.02449179485886375
#>     Attrib V9    0.551876265788441
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.3955316133559972
#>     Attrib V1    -0.423122505727295
#>     Attrib V10    -0.2626215474731308
#>     Attrib V11    -0.4621447268950815
#>     Attrib V12    -0.44373849951455996
#>     Attrib V13    -0.40921803601560053
#>     Attrib V14    0.40752401859028936
#>     Attrib V15    0.30556840787337974
#>     Attrib V16    0.5584070121741397
#>     Attrib V17    0.4264345038304726
#>     Attrib V18    -0.234381900566915
#>     Attrib V19    -0.32423693846794327
#>     Attrib V2    0.4331901812680195
#>     Attrib V20    -0.6258789898695705
#>     Attrib V21    -0.30124152260792836
#>     Attrib V22    -0.33791766981982035
#>     Attrib V23    -0.9160148150140575
#>     Attrib V24    -0.7766777828678312
#>     Attrib V25    -0.15966152972200467
#>     Attrib V26    0.5504364933470477
#>     Attrib V27    0.5716735865720299
#>     Attrib V28    -0.18504990650850428
#>     Attrib V29    -0.19610249495467727
#>     Attrib V3    0.5340854861274473
#>     Attrib V30    -0.21485213657971114
#>     Attrib V31    0.5628518133546141
#>     Attrib V32    -0.3627549781740131
#>     Attrib V33    -0.44921694237112153
#>     Attrib V34    0.3120381782460916
#>     Attrib V35    0.0787605556110238
#>     Attrib V36    0.941236173615789
#>     Attrib V37    0.7724037462679524
#>     Attrib V38    -0.416691832286097
#>     Attrib V39    -0.28083812340851866
#>     Attrib V4    -0.3201849800683826
#>     Attrib V40    0.4104738435523122
#>     Attrib V41    -0.3164664210387932
#>     Attrib V42    0.2332745961828238
#>     Attrib V43    -0.41389154277441104
#>     Attrib V44    -0.2661490060950002
#>     Attrib V45    -0.16633175517924426
#>     Attrib V46    -0.19844424355445275
#>     Attrib V47    -0.5876418951703164
#>     Attrib V48    -0.8369983355626687
#>     Attrib V49    -0.4738440591115813
#>     Attrib V5    -0.30934978129985985
#>     Attrib V50    0.7689277772809314
#>     Attrib V51    -0.12694788715555483
#>     Attrib V52    -0.20061352203423533
#>     Attrib V53    -0.2874604634016997
#>     Attrib V54    -0.9081394786114103
#>     Attrib V55    0.8134187060029313
#>     Attrib V56    0.17471318964248578
#>     Attrib V57    0.008695258913422788
#>     Attrib V58    -0.35832672326571213
#>     Attrib V59    -0.5305351625176097
#>     Attrib V6    0.013421668782677617
#>     Attrib V60    0.18826108989911663
#>     Attrib V7    0.08124278933255566
#>     Attrib V8    0.19254607321706596
#>     Attrib V9    -0.6514497217438447
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.2096502638558033
#>     Attrib V1    -0.02900852844459267
#>     Attrib V10    -0.010139727287057951
#>     Attrib V11    -0.07230923015882097
#>     Attrib V12    -0.07836837655825872
#>     Attrib V13    -0.025548905139097307
#>     Attrib V14    0.024661748995822463
#>     Attrib V15    0.019229799666327218
#>     Attrib V16    0.12829127492275763
#>     Attrib V17    0.14100092821353435
#>     Attrib V18    0.07842949090257761
#>     Attrib V19    -7.393691310032958E-4
#>     Attrib V2    0.04568858498318022
#>     Attrib V20    -0.14447943537751956
#>     Attrib V21    -0.1147214089788672
#>     Attrib V22    -0.09292782045207544
#>     Attrib V23    -0.1257613558250089
#>     Attrib V24    -0.0622935584274301
#>     Attrib V25    -0.015653038405145352
#>     Attrib V26    -0.02341266320736998
#>     Attrib V27    -0.03867808924007725
#>     Attrib V28    -0.07592809938779178
#>     Attrib V29    -0.08519043180888894
#>     Attrib V3    0.1282231283105529
#>     Attrib V30    -0.0804555283070521
#>     Attrib V31    0.039984933732898555
#>     Attrib V32    0.03517414349725522
#>     Attrib V33    0.009615445274331733
#>     Attrib V34    0.07820261948810737
#>     Attrib V35    0.024386887366334507
#>     Attrib V36    0.11272332946393786
#>     Attrib V37    0.13204389316221357
#>     Attrib V38    0.013053264680787244
#>     Attrib V39    0.037643583910701384
#>     Attrib V4    0.04968526598590095
#>     Attrib V40    0.11590496773406507
#>     Attrib V41    0.09451475577773852
#>     Attrib V42    0.12938194341599532
#>     Attrib V43    0.02830213387422756
#>     Attrib V44    0.005208448832318163
#>     Attrib V45    -0.005464943466755804
#>     Attrib V46    0.029880694063532626
#>     Attrib V47    0.01270589440429593
#>     Attrib V48    -0.052773414603996496
#>     Attrib V49    -0.032899852098842906
#>     Attrib V5    0.042980515854425264
#>     Attrib V50    0.17805692956585303
#>     Attrib V51    0.10037897915792998
#>     Attrib V52    0.0634533001726396
#>     Attrib V53    0.04004936773562102
#>     Attrib V54    -0.12225031296936792
#>     Attrib V55    0.12548917492326506
#>     Attrib V56    0.12040352671113332
#>     Attrib V57    0.08960350566902561
#>     Attrib V58    0.07498892036267839
#>     Attrib V59    -0.04223994717455913
#>     Attrib V6    0.07252250773081462
#>     Attrib V60    0.0854897869463216
#>     Attrib V7    0.030921751133338227
#>     Attrib V8    0.03757529746706994
#>     Attrib V9    -0.0038404964951504355
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.024170815416057118
#>     Attrib V1    0.18761345057109025
#>     Attrib V10    0.12595039889616172
#>     Attrib V11    0.1013372250561875
#>     Attrib V12    0.05829041772012732
#>     Attrib V13    0.07919955746976994
#>     Attrib V14    0.02377692591041989
#>     Attrib V15    0.155536200918071
#>     Attrib V16    -0.004136701705941579
#>     Attrib V17    -0.007791187751544366
#>     Attrib V18    0.08751844320084178
#>     Attrib V19    0.14118637268325676
#>     Attrib V2    -0.03965559167126174
#>     Attrib V20    0.16305911952879495
#>     Attrib V21    0.05638671731121189
#>     Attrib V22    0.037049393120983085
#>     Attrib V23    -0.01251378005337138
#>     Attrib V24    -0.013500224379547987
#>     Attrib V25    -0.16062775178888714
#>     Attrib V26    -0.28735755316032013
#>     Attrib V27    -0.25124560727048484
#>     Attrib V28    -0.14080731587613116
#>     Attrib V29    -0.1508035036706378
#>     Attrib V3    0.0021339845265628166
#>     Attrib V30    -0.006508309215429891
#>     Attrib V31    -0.12766372754474506
#>     Attrib V32    0.007463440682794573
#>     Attrib V33    0.18483998459297138
#>     Attrib V34    -0.01913787504607775
#>     Attrib V35    0.04993748290014789
#>     Attrib V36    -0.25641543573550196
#>     Attrib V37    -0.19709663385694265
#>     Attrib V38    0.1759091292860408
#>     Attrib V39    0.10659229361307324
#>     Attrib V4    0.20686962204665588
#>     Attrib V40    -0.12980965339570152
#>     Attrib V41    5.462930963440582E-4
#>     Attrib V42    -0.13338352357461403
#>     Attrib V43    0.08931402231819659
#>     Attrib V44    0.05194947263125677
#>     Attrib V45    0.014015737117170104
#>     Attrib V46    -0.03945685186018281
#>     Attrib V47    -0.0017967117148425297
#>     Attrib V48    0.12653041815343735
#>     Attrib V49    -0.043369894628416485
#>     Attrib V5    0.131213896808288
#>     Attrib V50    -0.12812463762255674
#>     Attrib V51    0.06850359904021482
#>     Attrib V52    0.05101746300615258
#>     Attrib V53    0.12387238405844048
#>     Attrib V54    0.21730513802641327
#>     Attrib V55    -3.0312382937571777E-4
#>     Attrib V56    0.16993635595361048
#>     Attrib V57    0.1467332399438916
#>     Attrib V58    0.20067905498893546
#>     Attrib V59    0.2693358468118127
#>     Attrib V6    0.04553306139470543
#>     Attrib V60    0.21676757329946478
#>     Attrib V7    0.034246693007597515
#>     Attrib V8    0.048668215893586726
#>     Attrib V9    0.20524322104868517
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.25437141080717907
#>     Attrib V1    -0.1497307431586936
#>     Attrib V10    -0.1310049215455197
#>     Attrib V11    -0.22246896867907975
#>     Attrib V12    -0.269121617710243
#>     Attrib V13    -0.2071948419352441
#>     Attrib V14    0.13409219306528428
#>     Attrib V15    0.04791501669701991
#>     Attrib V16    0.1909894550755438
#>     Attrib V17    0.13036656688525114
#>     Attrib V18    -0.006068166600057393
#>     Attrib V19    -0.14829768078256866
#>     Attrib V2    0.1898103516413946
#>     Attrib V20    -0.21812100391651365
#>     Attrib V21    -0.05231537946163809
#>     Attrib V22    -0.07815146097564997
#>     Attrib V23    -0.17482780574677895
#>     Attrib V24    -0.15720784521949716
#>     Attrib V25    0.05390711068708656
#>     Attrib V26    0.17823695497309938
#>     Attrib V27    0.12300093551051566
#>     Attrib V28    -0.16288589197711553
#>     Attrib V29    -0.1260324608283834
#>     Attrib V3    0.2595965541413431
#>     Attrib V30    -0.14482641605808463
#>     Attrib V31    0.20025063695608036
#>     Attrib V32    -0.01814809008643898
#>     Attrib V33    -0.09939256563345275
#>     Attrib V34    0.07152403611810532
#>     Attrib V35    -0.11654717621894303
#>     Attrib V36    0.3424828147311279
#>     Attrib V37    0.1484756511417329
#>     Attrib V38    -0.22739823165361894
#>     Attrib V39    -0.06444626594011167
#>     Attrib V4    -0.1361127984275917
#>     Attrib V40    0.160341345854431
#>     Attrib V41    -0.1086380142489861
#>     Attrib V42    0.1579426533109678
#>     Attrib V43    -0.08131532035618685
#>     Attrib V44    -0.040569246436281466
#>     Attrib V45    -0.224401457990798
#>     Attrib V46    -0.17738438255235164
#>     Attrib V47    -0.19041128098611806
#>     Attrib V48    -0.3391049689006052
#>     Attrib V49    -0.14672019596656863
#>     Attrib V5    -0.09972709179850797
#>     Attrib V50    0.252193133114199
#>     Attrib V51    -0.01792948016137321
#>     Attrib V52    -0.07462864623984744
#>     Attrib V53    -0.11559071330355158
#>     Attrib V54    -0.3659943611465721
#>     Attrib V55    0.2849927529364946
#>     Attrib V56    0.1661200727389303
#>     Attrib V57    0.017705033341350138
#>     Attrib V58    -0.10773738559611146
#>     Attrib V59    -0.14380701121241216
#>     Attrib V6    -0.0266880519399461
#>     Attrib V60    0.0393942473678222
#>     Attrib V7    0.05127780000684381
#>     Attrib V8    0.16165653407321637
#>     Attrib V9    -0.24247029677450097
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.32930096886576404
#>     Attrib V1    0.3247806616539632
#>     Attrib V10    0.7269616392750969
#>     Attrib V11    0.6857753332972142
#>     Attrib V12    0.7125716303293607
#>     Attrib V13    0.3513805875706697
#>     Attrib V14    -0.36127443674587767
#>     Attrib V15    -0.2709887007691219
#>     Attrib V16    -0.4661220467202674
#>     Attrib V17    -0.4885812800692559
#>     Attrib V18    -0.1881964530453092
#>     Attrib V19    -0.14418750653913914
#>     Attrib V2    -0.23778807802837193
#>     Attrib V20    -0.0764297219738615
#>     Attrib V21    -0.27504533032049594
#>     Attrib V22    -0.21011255281308572
#>     Attrib V23    0.0633238644174226
#>     Attrib V24    0.1097714790446032
#>     Attrib V25    0.07154835175838146
#>     Attrib V26    0.2775312004908164
#>     Attrib V27    0.46855916330541003
#>     Attrib V28    0.9973382270591227
#>     Attrib V29    0.4809396476449926
#>     Attrib V3    -0.496184245956935
#>     Attrib V30    0.1906070316103941
#>     Attrib V31    -0.407421075403323
#>     Attrib V32    0.17337255233642643
#>     Attrib V33    0.2933528826101471
#>     Attrib V34    0.016730058727107186
#>     Attrib V35    0.3795929896217725
#>     Attrib V36    -0.2882912749377069
#>     Attrib V37    0.05618162267894757
#>     Attrib V38    0.25623841806204734
#>     Attrib V39    0.1174419032299351
#>     Attrib V4    0.30356199994669314
#>     Attrib V40    -0.3257424601442649
#>     Attrib V41    0.4082903470441057
#>     Attrib V42    -0.2648682891645956
#>     Attrib V43    -0.20812604666794096
#>     Attrib V44    0.02498251071542355
#>     Attrib V45    0.5586889773480955
#>     Attrib V46    0.4908455936416925
#>     Attrib V47    0.5082159623270639
#>     Attrib V48    0.8378101506235691
#>     Attrib V49    0.4690165551686269
#>     Attrib V5    0.397622443622055
#>     Attrib V50    -0.6231472600923299
#>     Attrib V51    0.2846668145800326
#>     Attrib V52    0.48009459747146876
#>     Attrib V53    -0.06983159358358576
#>     Attrib V54    0.47667633327350833
#>     Attrib V55    -0.49695415623065126
#>     Attrib V56    -0.8176177609092119
#>     Attrib V57    0.0017184062597646265
#>     Attrib V58    0.006371132628199682
#>     Attrib V59    0.17021260212423303
#>     Attrib V6    0.30825627674739325
#>     Attrib V60    0.17459289570702022
#>     Attrib V7    -0.024104200323644794
#>     Attrib V8    -0.42418677310354314
#>     Attrib V9    0.732741264642816
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.13632747159611794
#>     Attrib V1    0.3639351013603284
#>     Attrib V10    0.08722812387486079
#>     Attrib V11    0.09147863924393271
#>     Attrib V12    0.12102857541216225
#>     Attrib V13    0.17051300267994693
#>     Attrib V14    -0.16963181493543059
#>     Attrib V15    0.025937026708889945
#>     Attrib V16    -0.27503042872893163
#>     Attrib V17    -0.20103949757535364
#>     Attrib V18    0.19889969673205957
#>     Attrib V19    0.3420969425839114
#>     Attrib V2    -0.46421271677587844
#>     Attrib V20    0.5355228017271321
#>     Attrib V21    0.34761683462420423
#>     Attrib V22    0.3113487491854961
#>     Attrib V23    0.5582309427569209
#>     Attrib V24    0.4751091872937893
#>     Attrib V25    0.015741431717262014
#>     Attrib V26    -0.6650362466323463
#>     Attrib V27    -0.9103671832404563
#>     Attrib V28    -0.7659257524462069
#>     Attrib V29    -0.6307967385991534
#>     Attrib V3    -0.19534859987501688
#>     Attrib V30    -0.044156907447612276
#>     Attrib V31    -0.4040595579126117
#>     Attrib V32    0.1900097592201975
#>     Attrib V33    0.5681533676624135
#>     Attrib V34    0.07724952069841262
#>     Attrib V35    -0.008258934881958568
#>     Attrib V36    -0.7032931857220824
#>     Attrib V37    -0.7838390116068524
#>     Attrib V38    0.2177440036535922
#>     Attrib V39    0.04318624571945407
#>     Attrib V4    0.27506899427659326
#>     Attrib V40    -0.2998534759722541
#>     Attrib V41    -0.05757314825879368
#>     Attrib V42    -0.2503542616353062
#>     Attrib V43    0.39514911772938105
#>     Attrib V44    0.14191965825701058
#>     Attrib V45    -0.11654631668627734
#>     Attrib V46    -0.12967268199745516
#>     Attrib V47    0.11538458155662186
#>     Attrib V48    0.39251870223333507
#>     Attrib V49    0.07811908160804001
#>     Attrib V5    0.14823073769928719
#>     Attrib V50    -0.49759037910400045
#>     Attrib V51    0.07146885665148954
#>     Attrib V52    -0.03495790677180332
#>     Attrib V53    0.32167483475499564
#>     Attrib V54    0.8180733647497161
#>     Attrib V55    -0.36540935321255896
#>     Attrib V56    0.38490771905157595
#>     Attrib V57    0.026843437946464887
#>     Attrib V58    0.625491788038355
#>     Attrib V59    0.8280843361706425
#>     Attrib V6    -0.17231872632246098
#>     Attrib V60    0.2741166739807626
#>     Attrib V7    0.14724073055708592
#>     Attrib V8    0.061029525487277414
#>     Attrib V9    0.5463228970184991
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.32500496546864294
#>     Attrib V1    -0.42719217702389256
#>     Attrib V10    -0.28544985222485103
#>     Attrib V11    -0.5304198266546644
#>     Attrib V12    -0.5313340074751371
#>     Attrib V13    -0.47699626350058555
#>     Attrib V14    0.4453722760811063
#>     Attrib V15    0.2869384080726036
#>     Attrib V16    0.5921747953305355
#>     Attrib V17    0.47175821180386573
#>     Attrib V18    -0.225271221709695
#>     Attrib V19    -0.44359353322728995
#>     Attrib V2    0.4392251819753171
#>     Attrib V20    -0.7443819960543346
#>     Attrib V21    -0.2923402156893907
#>     Attrib V22    -0.44942690138170877
#>     Attrib V23    -1.0494524851895195
#>     Attrib V24    -0.8639614476520352
#>     Attrib V25    -0.15755251275986298
#>     Attrib V26    0.5605288011131077
#>     Attrib V27    0.6544289846834508
#>     Attrib V28    -0.2407692689917241
#>     Attrib V29    -0.23744142257790973
#>     Attrib V3    0.5138411270469565
#>     Attrib V30    -0.2071142497991207
#>     Attrib V31    0.6629409208008695
#>     Attrib V32    -0.40202593944546827
#>     Attrib V33    -0.45979603301021865
#>     Attrib V34    0.2996994476338237
#>     Attrib V35    0.050131518237565266
#>     Attrib V36    0.9942815699617413
#>     Attrib V37    0.8219449489045575
#>     Attrib V38    -0.5343705614936113
#>     Attrib V39    -0.3812907323409946
#>     Attrib V4    -0.3039029588372339
#>     Attrib V40    0.4803303397909751
#>     Attrib V41    -0.24787111486653543
#>     Attrib V42    0.24888379620304665
#>     Attrib V43    -0.45337818856250156
#>     Attrib V44    -0.3050715957291271
#>     Attrib V45    -0.30363610129734925
#>     Attrib V46    -0.30265444360414173
#>     Attrib V47    -0.6986536808363465
#>     Attrib V48    -0.8680316032106397
#>     Attrib V49    -0.5506862761133596
#>     Attrib V5    -0.3031203816423952
#>     Attrib V50    0.8029432054906471
#>     Attrib V51    -0.15642224864055895
#>     Attrib V52    -0.19534960012987304
#>     Attrib V53    -0.3521427112085762
#>     Attrib V54    -0.9540875350631085
#>     Attrib V55    0.8181805174445844
#>     Attrib V56    0.08817933164251257
#>     Attrib V57    0.1430019706651205
#>     Attrib V58    -0.4095875789227108
#>     Attrib V59    -0.46953606297393297
#>     Attrib V6    0.07476248992257224
#>     Attrib V60    0.3893812262246542
#>     Attrib V7    0.23012101706073937
#>     Attrib V8    0.14794622151962553
#>     Attrib V9    -0.6733111958288908
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.03993139880591797
#>     Attrib V1    0.22462457359464796
#>     Attrib V10    0.06707758041534996
#>     Attrib V11    0.0577953613056936
#>     Attrib V12    0.07290155884677718
#>     Attrib V13    0.10975162001295775
#>     Attrib V14    0.08043287630261467
#>     Attrib V15    0.09404501432149805
#>     Attrib V16    0.05171892194485506
#>     Attrib V17    0.012074398630583173
#>     Attrib V18    0.11722246596014664
#>     Attrib V19    0.12801923846160723
#>     Attrib V2    -0.10002054097308997
#>     Attrib V20    0.21692736202873258
#>     Attrib V21    0.07741825367599241
#>     Attrib V22    -0.021965763525130487
#>     Attrib V23    -0.015221548101440581
#>     Attrib V24    0.020993865083127543
#>     Attrib V25    -0.1474664282874779
#>     Attrib V26    -0.3397311786050223
#>     Attrib V27    -0.3426435816359153
#>     Attrib V28    -0.24380156641073428
#>     Attrib V29    -0.1342406453586478
#>     Attrib V3    -0.014375660868252212
#>     Attrib V30    -0.07084531857538091
#>     Attrib V31    -0.1644739757906637
#>     Attrib V32    0.018340150212917693
#>     Attrib V33    0.10717703904292893
#>     Attrib V34    -0.027217885378786316
#>     Attrib V35    0.007928357811694082
#>     Attrib V36    -0.26172452815842817
#>     Attrib V37    -0.2066543705007903
#>     Attrib V38    0.09746632283518888
#>     Attrib V39    0.04449337588785037
#>     Attrib V4    0.22344294581324056
#>     Attrib V40    -0.09464417374539458
#>     Attrib V41    -0.07114130948476222
#>     Attrib V42    -0.1369562264646158
#>     Attrib V43    0.13384648894087575
#>     Attrib V44    0.015300329085445909
#>     Attrib V45    -0.106486084925318
#>     Attrib V46    -0.007987508243700843
#>     Attrib V47    0.005435947791606709
#>     Attrib V48    0.1301944887931478
#>     Attrib V49    -0.007576149848414538
#>     Attrib V5    0.15412955429560357
#>     Attrib V50    -0.1498212922346561
#>     Attrib V51    0.04387231798502884
#>     Attrib V52    0.056038806154932286
#>     Attrib V53    0.18258267894786656
#>     Attrib V54    0.32753066108875456
#>     Attrib V55    -0.017384434164963092
#>     Attrib V56    0.23765542413724972
#>     Attrib V57    0.1309884523265358
#>     Attrib V58    0.3358070676609126
#>     Attrib V59    0.3880717374758245
#>     Attrib V6    0.0351057963059099
#>     Attrib V60    0.28820605581833075
#>     Attrib V7    0.08430553395585667
#>     Attrib V8    -0.04308445839981354
#>     Attrib V9    0.19995762712574572
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.06097124825019098
#>     Attrib V1    0.3018962374310888
#>     Attrib V10    -0.05057695613208276
#>     Attrib V11    0.01467685398649553
#>     Attrib V12    0.04708818849568803
#>     Attrib V13    0.1280642214528463
#>     Attrib V14    -0.12758461106668204
#>     Attrib V15    0.05287904667343099
#>     Attrib V16    -0.2077443236862516
#>     Attrib V17    -0.056255582416867046
#>     Attrib V18    0.20959921692425115
#>     Attrib V19    0.2960532327487156
#>     Attrib V2    -0.4403095971940074
#>     Attrib V20    0.4289430451946249
#>     Attrib V21    0.25283291928427054
#>     Attrib V22    0.2833127301297662
#>     Attrib V23    0.5044409338921709
#>     Attrib V24    0.39344095585306155
#>     Attrib V25    0.015827205708166703
#>     Attrib V26    -0.6377654846464278
#>     Attrib V27    -0.9164512687279744
#>     Attrib V28    -0.7982900985280972
#>     Attrib V29    -0.7082040686973641
#>     Attrib V3    -0.05829655139956778
#>     Attrib V30    -0.1271427937564119
#>     Attrib V31    -0.3753073436929305
#>     Attrib V32    0.13861852300132213
#>     Attrib V33    0.47965672742555543
#>     Attrib V34    0.07298284569120596
#>     Attrib V35    0.04263529812849685
#>     Attrib V36    -0.655338120400851
#>     Attrib V37    -0.702444006549359
#>     Attrib V38    0.13043693342001458
#>     Attrib V39    0.021713315786245968
#>     Attrib V4    0.3171265086283875
#>     Attrib V40    -0.27915097147982515
#>     Attrib V41    -0.10135559259072634
#>     Attrib V42    -0.22386943287711045
#>     Attrib V43    0.37673219771675637
#>     Attrib V44    0.08593033279595248
#>     Attrib V45    -0.1296354405725899
#>     Attrib V46    -0.10042983414697455
#>     Attrib V47    0.17161129305209938
#>     Attrib V48    0.2610217215494063
#>     Attrib V49    0.02883629993755061
#>     Attrib V5    0.11309860988741872
#>     Attrib V50    -0.4063683963535865
#>     Attrib V51    -0.004498985014730672
#>     Attrib V52    -0.04930158664708456
#>     Attrib V53    0.37262982744335627
#>     Attrib V54    0.6941364572749058
#>     Attrib V55    -0.305289371498755
#>     Attrib V56    0.48362977349238956
#>     Attrib V57    0.07521401834944806
#>     Attrib V58    0.5631595280858772
#>     Attrib V59    0.80092943481648
#>     Attrib V6    -0.12487366641758281
#>     Attrib V60    0.32183762739044264
#>     Attrib V7    0.1439074561036429
#>     Attrib V8    0.06891924805484095
#>     Attrib V9    0.4126999167322578
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.3567616547997673
#>     Attrib V1    -0.28168152247459144
#>     Attrib V10    -0.2493544409475178
#>     Attrib V11    -0.38781562181741847
#>     Attrib V12    -0.4272900163834383
#>     Attrib V13    -0.3766505160893376
#>     Attrib V14    0.3363747526550478
#>     Attrib V15    0.25060657616781645
#>     Attrib V16    0.43712256773849784
#>     Attrib V17    0.424319659809851
#>     Attrib V18    -0.11070404440671015
#>     Attrib V19    -0.22699046880087279
#>     Attrib V2    0.3895951643905015
#>     Attrib V20    -0.4611709740154135
#>     Attrib V21    -0.16553971170366988
#>     Attrib V22    -0.20673268456138993
#>     Attrib V23    -0.4748126953829989
#>     Attrib V24    -0.43210175455077654
#>     Attrib V25    0.007518089996933067
#>     Attrib V26    0.3738590609720795
#>     Attrib V27    0.2727975478463743
#>     Attrib V28    -0.2646231663028314
#>     Attrib V29    -0.21431951418241713
#>     Attrib V3    0.4279554523654313
#>     Attrib V30    -0.15143097245184683
#>     Attrib V31    0.5138298289380209
#>     Attrib V32    -0.060113214996838533
#>     Attrib V33    -0.30733076134682913
#>     Attrib V34    0.11066571116725607
#>     Attrib V35    -0.15192008123248169
#>     Attrib V36    0.6266792295205423
#>     Attrib V37    0.33527416602030174
#>     Attrib V38    -0.4385403676982046
#>     Attrib V39    -0.26550364927246867
#>     Attrib V4    -0.18501329066871158
#>     Attrib V40    0.35991967368024014
#>     Attrib V41    -0.17504831810415017
#>     Attrib V42    0.2440487611449932
#>     Attrib V43    -0.18945072903039223
#>     Attrib V44    -0.2030039055953853
#>     Attrib V45    -0.32920876373184
#>     Attrib V46    -0.2575790263674966
#>     Attrib V47    -0.43136214011972357
#>     Attrib V48    -0.6618068513924797
#>     Attrib V49    -0.3519890439804484
#>     Attrib V5    -0.2651783715786503
#>     Attrib V50    0.6701996610949174
#>     Attrib V51    -0.08108958619157419
#>     Attrib V52    -0.06181761623524356
#>     Attrib V53    -0.2521087470321837
#>     Attrib V54    -0.633960414988388
#>     Attrib V55    0.6354546599851784
#>     Attrib V56    0.2528029139583296
#>     Attrib V57    0.15236968985956933
#>     Attrib V58    -0.2336564007116108
#>     Attrib V59    -0.3491842253013958
#>     Attrib V6    0.040061641936264145
#>     Attrib V60    0.06287367711322103
#>     Attrib V7    0.05713511251359826
#>     Attrib V8    0.2545252516886481
#>     Attrib V9    -0.427688272507201
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.8139162178366587
#>     Attrib V1    0.5241997672535595
#>     Attrib V10    0.892730440691598
#>     Attrib V11    0.8639678285129215
#>     Attrib V12    1.2211903588231698
#>     Attrib V13    0.6116819746925505
#>     Attrib V14    -0.3066822053512238
#>     Attrib V15    -0.3435160590913587
#>     Attrib V16    -0.2684046559193952
#>     Attrib V17    -0.35193402325455453
#>     Attrib V18    0.009809793709908997
#>     Attrib V19    -0.12305989530660251
#>     Attrib V2    -0.11184162736328093
#>     Attrib V20    -0.0600174951297238
#>     Attrib V21    -0.15343853047610492
#>     Attrib V22    -0.056809414066953716
#>     Attrib V23    0.5541306150243734
#>     Attrib V24    0.6158691078143089
#>     Attrib V25    0.25117097481975126
#>     Attrib V26    0.9521253330059567
#>     Attrib V27    1.5389256533134492
#>     Attrib V28    2.4657906873022966
#>     Attrib V29    1.6479066879799207
#>     Attrib V3    -0.6394268486039588
#>     Attrib V30    0.2566662194216164
#>     Attrib V31    -0.7580689648809257
#>     Attrib V32    0.108755383188109
#>     Attrib V33    -0.29011934702932984
#>     Attrib V34    -0.6465685840570294
#>     Attrib V35    0.1537908768017273
#>     Attrib V36    -0.4355927097934924
#>     Attrib V37    0.49937424136060304
#>     Attrib V38    0.2699495200813631
#>     Attrib V39    0.12682723645091684
#>     Attrib V4    0.34152094887101303
#>     Attrib V40    -0.255021449760293
#>     Attrib V41    1.601375102242293
#>     Attrib V42    0.013941434796690768
#>     Attrib V43    -0.24387040556989312
#>     Attrib V44    0.24653051160990683
#>     Attrib V45    0.892466630120447
#>     Attrib V46    0.7918810393947197
#>     Attrib V47    0.8572057427956262
#>     Attrib V48    1.284381978440039
#>     Attrib V49    0.7806949964607939
#>     Attrib V5    0.8562224128911409
#>     Attrib V50    -0.5868633300260852
#>     Attrib V51    0.6153904920747172
#>     Attrib V52    0.9956012913750406
#>     Attrib V53    0.4608105465726816
#>     Attrib V54    0.6235896844344241
#>     Attrib V55    -0.8656591831757602
#>     Attrib V56    -1.2488904335568827
#>     Attrib V57    0.5647109235138
#>     Attrib V58    -0.3460939964854744
#>     Attrib V59    0.6330310139709192
#>     Attrib V6    1.0522434364715023
#>     Attrib V60    0.522863543093384
#>     Attrib V7    -0.2519394224602178
#>     Attrib V8    -0.9809859622042746
#>     Attrib V9    0.6393328107668422
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.37708139822867465
#>     Attrib V1    -0.26208339190776697
#>     Attrib V10    -0.22450185471536183
#>     Attrib V11    -0.3914029735914686
#>     Attrib V12    -0.37439570736513994
#>     Attrib V13    -0.3488663131576835
#>     Attrib V14    0.3489644815120948
#>     Attrib V15    0.16659756833417186
#>     Attrib V16    0.3942658907500012
#>     Attrib V17    0.34603357679439156
#>     Attrib V18    -0.15123563664370487
#>     Attrib V19    -0.17358671967414832
#>     Attrib V2    0.3803561704884106
#>     Attrib V20    -0.4359823117216192
#>     Attrib V21    -0.14846025017688114
#>     Attrib V22    -0.17133003283519488
#>     Attrib V23    -0.47783676004442555
#>     Attrib V24    -0.4041264435994991
#>     Attrib V25    0.002512049261069909
#>     Attrib V26    0.294226104130799
#>     Attrib V27    0.3336749891517336
#>     Attrib V28    -0.20034277566691627
#>     Attrib V29    -0.16411403648342188
#>     Attrib V3    0.36779570894192254
#>     Attrib V30    -0.1545418137797443
#>     Attrib V31    0.43529265368422354
#>     Attrib V32    -0.15980663585739696
#>     Attrib V33    -0.25247591748041376
#>     Attrib V34    0.09214204520060174
#>     Attrib V35    -0.06713786587489035
#>     Attrib V36    0.6326877745396474
#>     Attrib V37    0.42133223814474424
#>     Attrib V38    -0.39233441081711884
#>     Attrib V39    -0.19341115056060787
#>     Attrib V4    -0.17894635248722304
#>     Attrib V40    0.31171786047654015
#>     Attrib V41    -0.19212256132170955
#>     Attrib V42    0.25144376617130604
#>     Attrib V43    -0.21746272440828446
#>     Attrib V44    -0.16350284536084814
#>     Attrib V45    -0.24878077227207054
#>     Attrib V46    -0.25155644143795247
#>     Attrib V47    -0.45394828302094925
#>     Attrib V48    -0.5754912700396116
#>     Attrib V49    -0.31141220420621646
#>     Attrib V5    -0.24766086621022013
#>     Attrib V50    0.6046333678817821
#>     Attrib V51    -0.1349393654649857
#>     Attrib V52    -0.1387455803298276
#>     Attrib V53    -0.2482495142128168
#>     Attrib V54    -0.6065247930115739
#>     Attrib V55    0.565453614927787
#>     Attrib V56    0.198008108032595
#>     Attrib V57    0.1285531893321015
#>     Attrib V58    -0.24520667677656352
#>     Attrib V59    -0.2983761283819065
#>     Attrib V6    0.04855608054752957
#>     Attrib V60    0.17822186944869728
#>     Attrib V7    0.0523097065724363
#>     Attrib V8    0.21166712153432307
#>     Attrib V9    -0.47841966348481546
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.34003244878216576
#>     Attrib V1    0.3418408771577958
#>     Attrib V10    0.8520514271603645
#>     Attrib V11    0.7803008862241331
#>     Attrib V12    0.7246241824333064
#>     Attrib V13    0.36639509031761297
#>     Attrib V14    -0.5161750273934018
#>     Attrib V15    -0.40422522559690116
#>     Attrib V16    -0.5222449905444103
#>     Attrib V17    -0.5377478854955313
#>     Attrib V18    -0.11364090406887452
#>     Attrib V19    -0.1647977757128397
#>     Attrib V2    -0.32324545030040447
#>     Attrib V20    -0.12904534509925142
#>     Attrib V21    -0.25361501424096944
#>     Attrib V22    -0.18265783605939032
#>     Attrib V23    0.1645812545687426
#>     Attrib V24    0.24674197009902885
#>     Attrib V25    0.14021676749088224
#>     Attrib V26    0.37500868572991153
#>     Attrib V27    0.3890846688924778
#>     Attrib V28    0.7850749669902481
#>     Attrib V29    0.2533630017742011
#>     Attrib V3    -0.5274927225181688
#>     Attrib V30    0.14388714626499607
#>     Attrib V31    -0.39918470822134444
#>     Attrib V32    0.24901266376113582
#>     Attrib V33    0.34235807966507587
#>     Attrib V34    0.14554282470820942
#>     Attrib V35    0.39734854967715005
#>     Attrib V36    -0.3301449079877541
#>     Attrib V37    -3.905029395016584E-4
#>     Attrib V38    0.24778244378234318
#>     Attrib V39    0.11439798219595129
#>     Attrib V4    0.258845998265676
#>     Attrib V40    -0.4197199045741325
#>     Attrib V41    0.4001470551777998
#>     Attrib V42    -0.38743254557784074
#>     Attrib V43    -0.24107405027587342
#>     Attrib V44    0.1081740516394916
#>     Attrib V45    0.5952980645314901
#>     Attrib V46    0.46034085185825513
#>     Attrib V47    0.5312284798624219
#>     Attrib V48    0.9238491947225715
#>     Attrib V49    0.4024691174965906
#>     Attrib V5    0.3835293434473224
#>     Attrib V50    -0.6328369318880742
#>     Attrib V51    0.3293689965518527
#>     Attrib V52    0.4511838878915813
#>     Attrib V53    -0.1960075530710751
#>     Attrib V54    0.4720893792214443
#>     Attrib V55    -0.5370267700824629
#>     Attrib V56    -0.8581002407845398
#>     Attrib V57    -0.026504366070929965
#>     Attrib V58    -0.05521949790291978
#>     Attrib V59    0.1509550042582357
#>     Attrib V6    0.36821116088386663
#>     Attrib V60    0.17070374794911466
#>     Attrib V7    -0.030225358314113337
#>     Attrib V8    -0.4002331111871802
#>     Attrib V9    0.879249744325571
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.3236952882202066
#>     Attrib V1    -0.26188201705354025
#>     Attrib V10    -0.9874933598375958
#>     Attrib V11    -1.0002846358565944
#>     Attrib V12    -0.9140870560724343
#>     Attrib V13    -0.442169629522216
#>     Attrib V14    0.581627755577975
#>     Attrib V15    0.6646529444562369
#>     Attrib V16    0.6297472647044445
#>     Attrib V17    0.3551415906938971
#>     Attrib V18    -0.1034247127417274
#>     Attrib V19    -0.11050322431247785
#>     Attrib V2    0.2518007558832978
#>     Attrib V20    -0.10043035572404847
#>     Attrib V21    0.24324247233627264
#>     Attrib V22    -0.030943238311039078
#>     Attrib V23    -0.9085967736888475
#>     Attrib V24    -0.8524151422660656
#>     Attrib V25    -0.5352550881687698
#>     Attrib V26    -0.7496547650744538
#>     Attrib V27    -0.8416376013922094
#>     Attrib V28    -1.4251278523730377
#>     Attrib V29    -0.6731204073331634
#>     Attrib V3    0.6079901200201469
#>     Attrib V30    -0.19855117004933348
#>     Attrib V31    0.5434804610364812
#>     Attrib V32    -0.08953422682354488
#>     Attrib V33    -0.03495181765006022
#>     Attrib V34    0.24587182008752076
#>     Attrib V35    -0.25125400805466824
#>     Attrib V36    0.5351466817252778
#>     Attrib V37    0.03553939792323926
#>     Attrib V38    -0.15827707734660756
#>     Attrib V39    -0.17266839592754157
#>     Attrib V4    -0.29342901502503793
#>     Attrib V40    0.2861409814724936
#>     Attrib V41    -1.0063140997541222
#>     Attrib V42    0.05831454968268336
#>     Attrib V43    0.033642889205403446
#>     Attrib V44    -0.2696526220122383
#>     Attrib V45    -0.6684351216685349
#>     Attrib V46    -0.7195133604637212
#>     Attrib V47    -1.0080519875291016
#>     Attrib V48    -1.3588571566291743
#>     Attrib V49    -0.9199555372231022
#>     Attrib V5    -0.7114913067324533
#>     Attrib V50    0.6384680404720445
#>     Attrib V51    -0.757550701535784
#>     Attrib V52    -0.7931964724600222
#>     Attrib V53    -0.17721655652253934
#>     Attrib V54    -0.5353953133572005
#>     Attrib V55    0.7786704505256229
#>     Attrib V56    1.0729346609888617
#>     Attrib V57    -0.1491751982645553
#>     Attrib V58    0.11193358936212218
#>     Attrib V59    -0.051195244083887335
#>     Attrib V6    -0.5617373436980955
#>     Attrib V60    0.13930167888002434
#>     Attrib V7    0.24611304073360055
#>     Attrib V8    0.5825415183313797
#>     Attrib V9    -0.8810251187813501
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.11413481084371471
#>     Attrib V1    0.2768044303240046
#>     Attrib V10    0.08812867368866165
#>     Attrib V11    0.1757113559708663
#>     Attrib V12    0.10052247811981935
#>     Attrib V13    0.17556705067668937
#>     Attrib V14    -0.15731199942044832
#>     Attrib V15    0.00905972818839822
#>     Attrib V16    -0.24972404352961777
#>     Attrib V17    -0.18832595521580933
#>     Attrib V18    0.1842669564924965
#>     Attrib V19    0.2860468275969343
#>     Attrib V2    -0.42783335208781287
#>     Attrib V20    0.5356316284620034
#>     Attrib V21    0.3335281516557679
#>     Attrib V22    0.3196675635777732
#>     Attrib V23    0.48116011493635047
#>     Attrib V24    0.4776807271707982
#>     Attrib V25    0.06467188102526455
#>     Attrib V26    -0.6860501312957702
#>     Attrib V27    -0.9116045742345668
#>     Attrib V28    -0.6976989648301132
#>     Attrib V29    -0.5714641234397251
#>     Attrib V3    -0.12612945920751553
#>     Attrib V30    -0.08913422367004939
#>     Attrib V31    -0.3652078056153704
#>     Attrib V32    0.25400679347864996
#>     Attrib V33    0.5575181698970881
#>     Attrib V34    0.08346287702044153
#>     Attrib V35    0.0013268369431875227
#>     Attrib V36    -0.7578928234965812
#>     Attrib V37    -0.7625426154220855
#>     Attrib V38    0.19248863417152762
#>     Attrib V39    0.08792214583708453
#>     Attrib V4    0.23647921284048237
#>     Attrib V40    -0.2990916484283915
#>     Attrib V41    -0.04671208292598192
#>     Attrib V42    -0.23556561020439898
#>     Attrib V43    0.3813667898937362
#>     Attrib V44    0.07948213206504791
#>     Attrib V45    -0.028614341289244363
#>     Attrib V46    -0.08105447284621085
#>     Attrib V47    0.18601218579459605
#>     Attrib V48    0.3503584352823589
#>     Attrib V49    0.062168945250502435
#>     Attrib V5    0.07218218432952456
#>     Attrib V50    -0.4550304000429688
#>     Attrib V51    0.05255151928562363
#>     Attrib V52    0.011335726787467023
#>     Attrib V53    0.29082658828914404
#>     Attrib V54    0.7297341617419608
#>     Attrib V55    -0.3232376427134769
#>     Attrib V56    0.3739303804585444
#>     Attrib V57    0.0316565111775976
#>     Attrib V58    0.5575151458289558
#>     Attrib V59    0.6842915529871795
#>     Attrib V6    -0.1271734434239641
#>     Attrib V60    0.20231600669431932
#>     Attrib V7    0.08673414681945445
#>     Attrib V8    0.13007878795930655
#>     Attrib V9    0.5555076354171007
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.18582645287550442
#>     Attrib V1    -0.08191317811993239
#>     Attrib V10    -0.033363641041439136
#>     Attrib V11    -0.1302028905891386
#>     Attrib V12    -0.13050407888618396
#>     Attrib V13    -0.0888401243697549
#>     Attrib V14    0.10147766161102938
#>     Attrib V15    0.08377128048873285
#>     Attrib V16    0.1777933805415386
#>     Attrib V17    0.2212416260938343
#>     Attrib V18    0.019829795066309202
#>     Attrib V19    -0.07234012312768082
#>     Attrib V2    0.15140256354733253
#>     Attrib V20    -0.19504804371621473
#>     Attrib V21    -0.03606611207133898
#>     Attrib V22    -0.04910175170116326
#>     Attrib V23    -0.1377949852323118
#>     Attrib V24    -0.15131573893215072
#>     Attrib V25    0.0414915114902305
#>     Attrib V26    0.14182982579413106
#>     Attrib V27    0.045363101228597616
#>     Attrib V28    -0.13076929924769537
#>     Attrib V29    -0.1452669302908143
#>     Attrib V3    0.12773791229610815
#>     Attrib V30    -0.05611368165355378
#>     Attrib V31    0.19534237476239752
#>     Attrib V32    -0.031425619447002145
#>     Attrib V33    -0.08247652028551032
#>     Attrib V34    0.02186764410561804
#>     Attrib V35    -0.02014950860435512
#>     Attrib V36    0.2048610426279898
#>     Attrib V37    0.18643210539822952
#>     Attrib V38    -0.15655684044479826
#>     Attrib V39    0.007088716656988027
#>     Attrib V4    -0.026447293984268712
#>     Attrib V40    0.19090531284783924
#>     Attrib V41    0.01938844026870817
#>     Attrib V42    0.17419551934885802
#>     Attrib V43    -0.05165302086525339
#>     Attrib V44    -0.06805853922366974
#>     Attrib V45    -0.10240950442356339
#>     Attrib V46    -0.08705039901518419
#>     Attrib V47    -0.14185741432876234
#>     Attrib V48    -0.17203520063743444
#>     Attrib V49    -0.11857274960979189
#>     Attrib V5    -0.09029008980295618
#>     Attrib V50    0.18947225370412651
#>     Attrib V51    -0.052476311163469236
#>     Attrib V52    -0.03674253292178161
#>     Attrib V53    -0.10528069240628903
#>     Attrib V54    -0.2565889315819144
#>     Attrib V55    0.15358963876334056
#>     Attrib V56    0.1493430292729513
#>     Attrib V57    0.023525736180987578
#>     Attrib V58    -0.04115919414957729
#>     Attrib V59    -0.07065352616491324
#>     Attrib V6    0.025755291187572558
#>     Attrib V60    0.034545940087291525
#>     Attrib V7    -0.022906151686718976
#>     Attrib V8    0.0777601500884891
#>     Attrib V9    -0.17329340589419873
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.06296770639107177
#>     Attrib V1    0.38294650262952357
#>     Attrib V10    0.030083775558045867
#>     Attrib V11    0.035660438538224544
#>     Attrib V12    -0.10334450893686999
#>     Attrib V13    0.08983741719889365
#>     Attrib V14    -0.21409518460334237
#>     Attrib V15    0.06520960523736621
#>     Attrib V16    -0.2519929629271316
#>     Attrib V17    -0.21931016469688766
#>     Attrib V18    0.12246321298609535
#>     Attrib V19    0.293335426407835
#>     Attrib V2    -0.4433875923067988
#>     Attrib V20    0.6156552378432136
#>     Attrib V21    0.31087147424448586
#>     Attrib V22    0.33261278082917267
#>     Attrib V23    0.5621158299431557
#>     Attrib V24    0.4789261597926127
#>     Attrib V25    -0.09098532436408982
#>     Attrib V26    -0.9209070352788176
#>     Attrib V27    -1.258287582338601
#>     Attrib V28    -1.0888711172195007
#>     Attrib V29    -0.9558920342548535
#>     Attrib V3    -0.15260545735808637
#>     Attrib V30    -0.1067996260793221
#>     Attrib V31    -0.3625551918390478
#>     Attrib V32    0.18006859312236428
#>     Attrib V33    0.7270310597905961
#>     Attrib V34    0.2807380834103774
#>     Attrib V35    0.13251468592469867
#>     Attrib V36    -0.7954512430466215
#>     Attrib V37    -0.9169469777303894
#>     Attrib V38    0.24283294136634834
#>     Attrib V39    0.0017120450565920552
#>     Attrib V4    0.30115334255393394
#>     Attrib V40    -0.2940979646504293
#>     Attrib V41    -0.22875660287302593
#>     Attrib V42    -0.3018094222471651
#>     Attrib V43    0.4083007146064983
#>     Attrib V44    0.11439351520235341
#>     Attrib V45    -0.18955624122574133
#>     Attrib V46    -0.11325070553505331
#>     Attrib V47    0.14377582910252268
#>     Attrib V48    0.31251579478374225
#>     Attrib V49    -0.005426825630622534
#>     Attrib V5    0.04117086937699157
#>     Attrib V50    -0.4878153548285594
#>     Attrib V51    -0.052673042258980035
#>     Attrib V52    -0.18199941736893485
#>     Attrib V53    0.3946510819912915
#>     Attrib V54    0.8967512267137246
#>     Attrib V55    -0.3220366915167132
#>     Attrib V56    0.4720976356854534
#>     Attrib V57    0.01736988296537456
#>     Attrib V58    0.6415753241768326
#>     Attrib V59    0.8368633172603646
#>     Attrib V6    -0.2135826476619552
#>     Attrib V60    0.37827482934531487
#>     Attrib V7    0.28941462952389985
#>     Attrib V8    0.2557875613556491
#>     Attrib V9    0.6275544787263527
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.16461404797009732
#>     Attrib V1    0.08582083196947056
#>     Attrib V10    -0.004696889423256441
#>     Attrib V11    0.025187093052008846
#>     Attrib V12    0.015634666550693014
#>     Attrib V13    -0.01844554655812095
#>     Attrib V14    0.09746578390816271
#>     Attrib V15    0.06500578280125485
#>     Attrib V16    0.05700929056947426
#>     Attrib V17    0.020286700142278284
#>     Attrib V18    0.09233652722058308
#>     Attrib V19    -0.024902641649534287
#>     Attrib V2    0.014536449335596861
#>     Attrib V20    -0.011898461361477389
#>     Attrib V21    -0.03895102380877014
#>     Attrib V22    -0.09216699552386505
#>     Attrib V23    -0.04005191113151542
#>     Attrib V24    -0.08750267398044549
#>     Attrib V25    -0.12360103500325766
#>     Attrib V26    -0.09974190503783603
#>     Attrib V27    -0.06716100986130287
#>     Attrib V28    -0.023641205786430072
#>     Attrib V29    -0.05068942558897116
#>     Attrib V3    0.11035797642021047
#>     Attrib V30    0.009690181272314387
#>     Attrib V31    -0.04058901957276659
#>     Attrib V32    -0.005882150501407895
#>     Attrib V33    0.06207893877423062
#>     Attrib V34    0.03649969188561585
#>     Attrib V35    0.05213910145659435
#>     Attrib V36    0.05186913747967398
#>     Attrib V37    0.02334791641686853
#>     Attrib V38    0.028405171085036714
#>     Attrib V39    0.07235482480312878
#>     Attrib V4    0.10294804511791289
#>     Attrib V40    0.026645593858428768
#>     Attrib V41    0.001923592441437902
#>     Attrib V42    0.009072425006682202
#>     Attrib V43    -0.004853665753613235
#>     Attrib V44    0.06816398155736567
#>     Attrib V45    0.036744222003176064
#>     Attrib V46    0.033929211231198166
#>     Attrib V47    0.04000639375457806
#>     Attrib V48    -3.4227595159519084E-4
#>     Attrib V49    0.04502931875718281
#>     Attrib V5    0.10563176176385052
#>     Attrib V50    0.022505125568529207
#>     Attrib V51    0.09233303789757898
#>     Attrib V52    0.11251652896619484
#>     Attrib V53    0.061762843333137064
#>     Attrib V54    -0.023778500712709982
#>     Attrib V55    0.03485221084626657
#>     Attrib V56    0.10545260297833416
#>     Attrib V57    0.08017197015550478
#>     Attrib V58    0.1508142805722753
#>     Attrib V59    0.07945418496174389
#>     Attrib V6    0.0998437266196745
#>     Attrib V60    0.129952037468534
#>     Attrib V7    0.06470553241756614
#>     Attrib V8    0.07292492488658833
#>     Attrib V9    0.08854350332932456
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
