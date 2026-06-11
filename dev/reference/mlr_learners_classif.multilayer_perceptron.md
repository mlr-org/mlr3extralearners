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

- [`LearnerClassifMultilayerPerceptron$new()`](#method-LearnerClassifMultilayerPerceptron-initialize)

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

### `LearnerClassifMultilayerPerceptron$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifMultilayerPerceptron$new()

------------------------------------------------------------------------

### `LearnerClassifMultilayerPerceptron$marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifMultilayerPerceptron$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifMultilayerPerceptron$unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifMultilayerPerceptron$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifMultilayerPerceptron$clone()`

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
#>     Threshold    -0.3705889676794021
#>     Node 2    2.309901668526136
#>     Node 3    1.2238809349166848
#>     Node 4    1.1470590527760924
#>     Node 5    -1.9841433384883904
#>     Node 6    1.624274684913623
#>     Node 7    2.6133940518486765
#>     Node 8    0.7718382982501376
#>     Node 9    3.5908155449851367
#>     Node 10    -0.6650195569520191
#>     Node 11    0.9765186720427125
#>     Node 12    1.1378622574106034
#>     Node 13    0.9634703453831539
#>     Node 14    1.3077205795432165
#>     Node 15    -1.8573894615762312
#>     Node 16    0.23859087783039293
#>     Node 17    0.431347447125727
#>     Node 18    -0.05744584122045906
#>     Node 19    1.4177113217418291
#>     Node 20    1.4951518479531019
#>     Node 21    -2.3013297960835124
#>     Node 22    1.0949878195126073
#>     Node 23    2.0786475273159377
#>     Node 24    -1.4023466252475087
#>     Node 25    4.1146785095669305
#>     Node 26    0.16393278395209637
#>     Node 27    1.4008972397658097
#>     Node 28    -5.377601914282129
#>     Node 29    1.170483496785533
#>     Node 30    0.740310251072499
#>     Node 31    1.858461093508006
#>     Node 32    1.124730546554827
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.38509060301933645
#>     Node 2    -2.3287909788593946
#>     Node 3    -1.2064364176068136
#>     Node 4    -1.0983880481195634
#>     Node 5    2.0044679538196246
#>     Node 6    -1.595631924841556
#>     Node 7    -2.5885524729729275
#>     Node 8    -0.8118652800652001
#>     Node 9    -3.613021927011169
#>     Node 10    0.6201846261523084
#>     Node 11    -0.9495202854941978
#>     Node 12    -1.2177238596805169
#>     Node 13    -0.9171463248596335
#>     Node 14    -1.2553348188962472
#>     Node 15    1.834532771943793
#>     Node 16    -0.2579235609696998
#>     Node 17    -0.401071616658047
#>     Node 18    0.10187879620431901
#>     Node 19    -1.4048231202432626
#>     Node 20    -1.471212893975154
#>     Node 21    2.319415221924439
#>     Node 22    -1.161169560690467
#>     Node 23    -2.1246498843288038
#>     Node 24    1.3915333481526004
#>     Node 25    -4.127633472467689
#>     Node 26    -0.2503373691800902
#>     Node 27    -1.430123804551367
#>     Node 28    5.366728889879265
#>     Node 29    -1.2000064935649852
#>     Node 30    -0.6764109930067549
#>     Node 31    -1.8157887827073227
#>     Node 32    -1.1416490652200955
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.33318261973728147
#>     Attrib V1    0.35980042027549614
#>     Attrib V10    0.3596739253241721
#>     Attrib V11    -0.04950337622324748
#>     Attrib V12    0.12617561048453696
#>     Attrib V13    0.10866212593571524
#>     Attrib V14    -0.29144388768699564
#>     Attrib V15    0.21213006369035403
#>     Attrib V16    0.27773635444455286
#>     Attrib V17    0.13636093272263913
#>     Attrib V18    -0.5028116885197471
#>     Attrib V19    0.5287593545344431
#>     Attrib V2    0.1509692137720597
#>     Attrib V20    1.103991196179793
#>     Attrib V21    1.0243477564974812
#>     Attrib V22    0.5237114127549201
#>     Attrib V23    0.45326437163251876
#>     Attrib V24    0.4110534863575769
#>     Attrib V25    -0.7487550412546308
#>     Attrib V26    -0.9317550210300657
#>     Attrib V27    -0.7079451090065446
#>     Attrib V28    0.3495350923704477
#>     Attrib V29    -0.26981246435606726
#>     Attrib V3    0.26057474832024
#>     Attrib V30    0.31632351125267594
#>     Attrib V31    -1.5147739392970372
#>     Attrib V32    0.6572524645413212
#>     Attrib V33    0.31607768743377324
#>     Attrib V34    -0.09035133244575858
#>     Attrib V35    0.20108860326822206
#>     Attrib V36    -0.4527984850468063
#>     Attrib V37    -0.6404529717149647
#>     Attrib V38    0.1683347979531698
#>     Attrib V39    0.16083090605143682
#>     Attrib V4    0.8878098932816554
#>     Attrib V40    -0.8128526096057618
#>     Attrib V41    -0.15400493997329673
#>     Attrib V42    1.1460959204062018
#>     Attrib V43    0.013764234123108406
#>     Attrib V44    0.5049495486587166
#>     Attrib V45    0.4179265068784124
#>     Attrib V46    0.26558382632955474
#>     Attrib V47    -0.0390849532280211
#>     Attrib V48    0.6001770449060432
#>     Attrib V49    0.8491662631900401
#>     Attrib V5    -0.009470335091738953
#>     Attrib V50    -1.1182439434546683
#>     Attrib V51    0.19008424717402772
#>     Attrib V52    0.42857178023803183
#>     Attrib V53    -0.0896596720131144
#>     Attrib V54    0.07299331042696863
#>     Attrib V55    -0.7688412317770535
#>     Attrib V56    0.855716018467634
#>     Attrib V57    -0.6283078509273181
#>     Attrib V58    0.28468472360790653
#>     Attrib V59    0.1720340873618815
#>     Attrib V6    -1.0593958850331178
#>     Attrib V60    0.0058386783681911615
#>     Attrib V7    -0.14004476478285052
#>     Attrib V8    -0.6428083374487034
#>     Attrib V9    0.25695315613631026
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.12649521107292125
#>     Attrib V1    0.2195339000941023
#>     Attrib V10    0.12108294852968954
#>     Attrib V11    -0.24081724794417267
#>     Attrib V12    0.06313211898157914
#>     Attrib V13    0.02187475607507962
#>     Attrib V14    -0.11007732987310977
#>     Attrib V15    0.25942271567854525
#>     Attrib V16    0.18271547818530132
#>     Attrib V17    0.050871948618430904
#>     Attrib V18    -0.3281318325153663
#>     Attrib V19    0.2831032300608261
#>     Attrib V2    0.0385392739182806
#>     Attrib V20    0.48224356717165573
#>     Attrib V21    0.4039242918245242
#>     Attrib V22    0.22288862536389006
#>     Attrib V23    0.06560879884026657
#>     Attrib V24    0.14004085340598602
#>     Attrib V25    -0.3718702523174527
#>     Attrib V26    -0.5965053011993505
#>     Attrib V27    -0.4971957019014205
#>     Attrib V28    -1.6869303712572912E-4
#>     Attrib V29    -0.43279266427240215
#>     Attrib V3    0.08848540878861139
#>     Attrib V30    -0.05550939220310266
#>     Attrib V31    -0.7936720675429586
#>     Attrib V32    0.4067306744715584
#>     Attrib V33    0.28963267901237477
#>     Attrib V34    0.030700154364127263
#>     Attrib V35    0.14343920232768737
#>     Attrib V36    -0.23103493219402127
#>     Attrib V37    -0.3100032401734335
#>     Attrib V38    0.05713881392447331
#>     Attrib V39    0.0633537536888507
#>     Attrib V4    0.4781144002691252
#>     Attrib V40    -0.42311435202780123
#>     Attrib V41    -0.08288675257987034
#>     Attrib V42    0.513359233036423
#>     Attrib V43    -0.10620624050745911
#>     Attrib V44    0.14931698205323607
#>     Attrib V45    0.048495831787774515
#>     Attrib V46    0.08081303627459245
#>     Attrib V47    -0.036389001634851675
#>     Attrib V48    0.2941368261114876
#>     Attrib V49    0.33922037616190537
#>     Attrib V5    0.06063162579115968
#>     Attrib V50    -0.5953611101178171
#>     Attrib V51    0.04135355616186796
#>     Attrib V52    0.1254959548601861
#>     Attrib V53    -0.09194619168995354
#>     Attrib V54    0.2450939196404806
#>     Attrib V55    -0.39855564689089457
#>     Attrib V56    0.5132794364836685
#>     Attrib V57    -0.15300996439438183
#>     Attrib V58    0.17540847565307616
#>     Attrib V59    0.3761542439245847
#>     Attrib V6    -0.42139947043396003
#>     Attrib V60    0.4225595369974854
#>     Attrib V7    0.031391708411896674
#>     Attrib V8    -0.5286881159542648
#>     Attrib V9    0.0019241886843987279
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.1377802275967159
#>     Attrib V1    0.17540770279211743
#>     Attrib V10    0.07585291594913272
#>     Attrib V11    -0.2575935506753718
#>     Attrib V12    -0.004900535001947846
#>     Attrib V13    0.02719409040970432
#>     Attrib V14    -0.03271565673993051
#>     Attrib V15    0.26909496010015777
#>     Attrib V16    0.2075053170919736
#>     Attrib V17    0.08077575954280504
#>     Attrib V18    -0.26536326593899195
#>     Attrib V19    0.22630695354116967
#>     Attrib V2    -0.00992608371260619
#>     Attrib V20    0.44959373598597585
#>     Attrib V21    0.46585499900681954
#>     Attrib V22    0.16326561661398897
#>     Attrib V23    0.025523671768966007
#>     Attrib V24    0.043975550391049424
#>     Attrib V25    -0.4957647576587422
#>     Attrib V26    -0.5988000030764217
#>     Attrib V27    -0.4468178495801269
#>     Attrib V28    0.1315668174599581
#>     Attrib V29    -0.1676217536231319
#>     Attrib V3    0.09936341251955912
#>     Attrib V30    -0.02366027809889533
#>     Attrib V31    -0.7692154695339961
#>     Attrib V32    0.2844074316729167
#>     Attrib V33    0.21058950645082214
#>     Attrib V34    0.017461262011690428
#>     Attrib V35    0.12109895468451908
#>     Attrib V36    -0.19920949110923225
#>     Attrib V37    -0.2392861389621842
#>     Attrib V38    0.08335461175691174
#>     Attrib V39    0.06684118207307502
#>     Attrib V4    0.440097646828662
#>     Attrib V40    -0.3946479054306042
#>     Attrib V41    -0.09899699168695968
#>     Attrib V42    0.4775897185486062
#>     Attrib V43    -0.10900062869560537
#>     Attrib V44    0.16321392959988196
#>     Attrib V45    0.13902710991169112
#>     Attrib V46    0.07423862182002292
#>     Attrib V47    -0.0899319878660971
#>     Attrib V48    0.3109134476587406
#>     Attrib V49    0.3670947380263261
#>     Attrib V5    0.11118664583656682
#>     Attrib V50    -0.5184615663318287
#>     Attrib V51    0.09480677775372849
#>     Attrib V52    0.08734968101326028
#>     Attrib V53    -0.017493180655196526
#>     Attrib V54    0.10878363607629706
#>     Attrib V55    -0.4379063158427557
#>     Attrib V56    0.44280876244250056
#>     Attrib V57    -0.10474447668769686
#>     Attrib V58    0.11566313689310734
#>     Attrib V59    0.351151727057004
#>     Attrib V6    -0.36194784286954773
#>     Attrib V60    0.38690176745482313
#>     Attrib V7    0.05577492020510345
#>     Attrib V8    -0.5371220042542703
#>     Attrib V9    0.05129219474059095
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.3299293360438144
#>     Attrib V1    -0.21207296929056044
#>     Attrib V10    -0.6616899260141689
#>     Attrib V11    -0.10167530303157785
#>     Attrib V12    -0.6894976639645057
#>     Attrib V13    -0.3617149371043692
#>     Attrib V14    0.567424817312508
#>     Attrib V15    0.209597187588793
#>     Attrib V16    0.014441871140278617
#>     Attrib V17    0.3721519838611167
#>     Attrib V18    0.9402313089427962
#>     Attrib V19    0.3444208733827578
#>     Attrib V2    0.17938046656277654
#>     Attrib V20    -0.0770761640486314
#>     Attrib V21    -0.381912099603723
#>     Attrib V22    -0.11768747445763987
#>     Attrib V23    0.03755880574975
#>     Attrib V24    -0.4978118233917785
#>     Attrib V25    0.5019270185710428
#>     Attrib V26    0.5261524838356916
#>     Attrib V27    0.33874633598499193
#>     Attrib V28    -0.42156231545139966
#>     Attrib V29    0.04591855757202273
#>     Attrib V3    0.18082306901906336
#>     Attrib V30    -0.13266100459917848
#>     Attrib V31    1.094930978561425
#>     Attrib V32    -0.7990284928276384
#>     Attrib V33    -0.2187311887164221
#>     Attrib V34    0.07042916684259401
#>     Attrib V35    -0.13209995534609656
#>     Attrib V36    0.5719888811661186
#>     Attrib V37    0.30364093318092583
#>     Attrib V38    -0.24654173670213922
#>     Attrib V39    -0.2511987359528292
#>     Attrib V4    -0.4709597669985306
#>     Attrib V40    0.41222212677713177
#>     Attrib V41    -0.3887386070454157
#>     Attrib V42    -0.8560814612122173
#>     Attrib V43    0.012533809728805242
#>     Attrib V44    -0.45116943466481113
#>     Attrib V45    -0.40538401372493904
#>     Attrib V46    -0.4449857246449489
#>     Attrib V47    0.021044546505687142
#>     Attrib V48    -0.9319021432664583
#>     Attrib V49    -0.7451277106058827
#>     Attrib V5    0.34323894954818773
#>     Attrib V50    1.4647806156565089
#>     Attrib V51    -0.18470461144606815
#>     Attrib V52    -0.08198548249830316
#>     Attrib V53    0.2666222024394731
#>     Attrib V54    0.32409015427962257
#>     Attrib V55    1.3957137301405607
#>     Attrib V56    -0.23603286278192942
#>     Attrib V57    0.6432174193902661
#>     Attrib V58    0.09580037177040263
#>     Attrib V59    -0.13311973530270452
#>     Attrib V6    0.5314775341353589
#>     Attrib V60    -0.07743306605569565
#>     Attrib V7    0.2495144305284502
#>     Attrib V8    0.8279446253937147
#>     Attrib V9    -0.3142668494760374
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.09144985659653708
#>     Attrib V1    0.28452635492433476
#>     Attrib V10    0.10558636446924624
#>     Attrib V11    -0.3354431699962589
#>     Attrib V12    0.004233421034421346
#>     Attrib V13    -0.08993916162456682
#>     Attrib V14    -0.2143804029601038
#>     Attrib V15    0.25548208504557596
#>     Attrib V16    0.31984792462355205
#>     Attrib V17    0.046219432828970265
#>     Attrib V18    -0.3721899820752552
#>     Attrib V19    0.31658425635592286
#>     Attrib V2    0.01911115078314703
#>     Attrib V20    0.6299094021455591
#>     Attrib V21    0.6054492312061007
#>     Attrib V22    0.2578381871431433
#>     Attrib V23    0.05251718334096806
#>     Attrib V24    0.1461913455111581
#>     Attrib V25    -0.5473422860912425
#>     Attrib V26    -0.8155502415658514
#>     Attrib V27    -0.5801923360105098
#>     Attrib V28    0.09259314634041878
#>     Attrib V29    -0.3562911581666621
#>     Attrib V3    0.08246295223138463
#>     Attrib V30    -0.0022999539441899194
#>     Attrib V31    -1.0746432972826763
#>     Attrib V32    0.4781764034359375
#>     Attrib V33    0.3317727600336507
#>     Attrib V34    0.009853668185910042
#>     Attrib V35    0.13888536097584275
#>     Attrib V36    -0.3396962045053362
#>     Attrib V37    -0.4153901458159678
#>     Attrib V38    0.08266250331595411
#>     Attrib V39    0.032243919567709736
#>     Attrib V4    0.6510451841675627
#>     Attrib V40    -0.6273545576302236
#>     Attrib V41    -0.07063597917724543
#>     Attrib V42    0.7324637863798589
#>     Attrib V43    -0.12560239175247254
#>     Attrib V44    0.18994492506379726
#>     Attrib V45    0.1413352044567729
#>     Attrib V46    0.17602524206921163
#>     Attrib V47    -0.06467151561134965
#>     Attrib V48    0.3870052886326181
#>     Attrib V49    0.4742813183404729
#>     Attrib V5    0.07324494490100542
#>     Attrib V50    -0.7279986969876697
#>     Attrib V51    0.06013444427447347
#>     Attrib V52    0.0909432619698046
#>     Attrib V53    -0.06957815554530664
#>     Attrib V54    0.21438267900563757
#>     Attrib V55    -0.6105494265135127
#>     Attrib V56    0.6359669773644898
#>     Attrib V57    -0.18585255022190125
#>     Attrib V58    0.19581844892430703
#>     Attrib V59    0.4608413146156305
#>     Attrib V6    -0.5129719834833932
#>     Attrib V60    0.5882524154458559
#>     Attrib V7    0.12494199841402856
#>     Attrib V8    -0.6297698944915578
#>     Attrib V9    0.1035025408625162
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.13911677994967933
#>     Attrib V1    0.22729863217991086
#>     Attrib V10    1.0935225448557029
#>     Attrib V11    0.4787580090440479
#>     Attrib V12    0.4796385100659584
#>     Attrib V13    0.46143234872411587
#>     Attrib V14    0.06639874323290677
#>     Attrib V15    -0.1916147020453494
#>     Attrib V16    -0.1189565263684876
#>     Attrib V17    -0.3107773439390938
#>     Attrib V18    -0.33661332295898005
#>     Attrib V19    0.041748053643469195
#>     Attrib V2    -0.007177380347371693
#>     Attrib V20    0.38632044570488167
#>     Attrib V21    0.6877436768331575
#>     Attrib V22    0.24131666334341578
#>     Attrib V23    0.36263393906144564
#>     Attrib V24    0.3771815599687494
#>     Attrib V25    -0.4541466461164197
#>     Attrib V26    0.3603413864075513
#>     Attrib V27    0.8877219111047123
#>     Attrib V28    1.4765802717667285
#>     Attrib V29    1.3664843089457683
#>     Attrib V3    0.1815343212350512
#>     Attrib V30    0.8303754466103292
#>     Attrib V31    -0.5818442980366559
#>     Attrib V32    0.10694100905053444
#>     Attrib V33    -0.5736988618506457
#>     Attrib V34    -0.5810639867780153
#>     Attrib V35    0.22235173392458946
#>     Attrib V36    -0.42439580448693837
#>     Attrib V37    -0.44118923096683177
#>     Attrib V38    -0.3106533529895791
#>     Attrib V39    -0.06717064947487077
#>     Attrib V4    0.6042175568635448
#>     Attrib V40    -0.28990971790524217
#>     Attrib V41    0.23510940046474518
#>     Attrib V42    0.4183287581420943
#>     Attrib V43    0.03507154455256858
#>     Attrib V44    0.6107958055251409
#>     Attrib V45    0.3741869573101921
#>     Attrib V46    0.6496800629249122
#>     Attrib V47    0.476716332755906
#>     Attrib V48    1.1850884868336151
#>     Attrib V49    1.1337423176823251
#>     Attrib V5    -0.030031821175155134
#>     Attrib V50    -0.4366551246018904
#>     Attrib V51    0.609196432236171
#>     Attrib V52    0.77393468628501
#>     Attrib V53    0.7541145552490712
#>     Attrib V54    -0.393450047494656
#>     Attrib V55    -1.1341626963128069
#>     Attrib V56    -0.19338460782215433
#>     Attrib V57    -0.7459227464248224
#>     Attrib V58    -0.005378307329634167
#>     Attrib V59    -0.13795888623535038
#>     Attrib V6    -0.03656927428383423
#>     Attrib V60    -0.2204367372928553
#>     Attrib V7    -0.3535171496921467
#>     Attrib V8    -0.24677586790150874
#>     Attrib V9    0.7118303472073382
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.03480420705607041
#>     Attrib V1    0.11537579373952397
#>     Attrib V10    0.1592512580656905
#>     Attrib V11    -0.05415480646745805
#>     Attrib V12    0.13250544449837665
#>     Attrib V13    0.07506660040993024
#>     Attrib V14    -0.07044838020233556
#>     Attrib V15    0.10129903857221283
#>     Attrib V16    0.15476356328722024
#>     Attrib V17    0.031153421912641532
#>     Attrib V18    -0.20275508039777518
#>     Attrib V19    0.15655033845138178
#>     Attrib V2    -0.05002865590496368
#>     Attrib V20    0.21693026870834875
#>     Attrib V21    0.20152036438647525
#>     Attrib V22    0.010739344901596037
#>     Attrib V23    -0.06901220343838241
#>     Attrib V24    0.10750518887321876
#>     Attrib V25    -0.2024904963607522
#>     Attrib V26    -0.21872809851742503
#>     Attrib V27    -0.15688039980736365
#>     Attrib V28    0.0874032991003175
#>     Attrib V29    -0.16254809910363585
#>     Attrib V3    -0.006438595114225637
#>     Attrib V30    -0.054890712239143616
#>     Attrib V31    -0.4851068134974097
#>     Attrib V32    0.2040510039418304
#>     Attrib V33    0.11641620618233046
#>     Attrib V34    0.04005172118722181
#>     Attrib V35    0.16990886174976338
#>     Attrib V36    -0.01629441057678803
#>     Attrib V37    -0.09446359882900902
#>     Attrib V38    0.15874086694959327
#>     Attrib V39    0.06365333995228553
#>     Attrib V4    0.3313606345877959
#>     Attrib V40    -0.28149240238182777
#>     Attrib V41    -0.10606069146888747
#>     Attrib V42    0.14733398209841547
#>     Attrib V43    -0.09142075730910913
#>     Attrib V44    0.13730177742603356
#>     Attrib V45    0.07037108210927541
#>     Attrib V46    0.0822414948603285
#>     Attrib V47    -0.02044019904407857
#>     Attrib V48    0.35954239047845926
#>     Attrib V49    0.30480036119092396
#>     Attrib V5    0.06272119216479746
#>     Attrib V50    -0.3856130835815663
#>     Attrib V51    0.08794347805045412
#>     Attrib V52    0.10227865096204483
#>     Attrib V53    0.11570071297268542
#>     Attrib V54    0.17878163050546872
#>     Attrib V55    -0.34535272158830815
#>     Attrib V56    0.20234957355841188
#>     Attrib V57    -0.03959211988142567
#>     Attrib V58    0.01586525372575367
#>     Attrib V59    0.3029584673985819
#>     Attrib V6    -0.19755319416137396
#>     Attrib V60    0.3307494959646887
#>     Attrib V7    -0.02784453213523588
#>     Attrib V8    -0.46221678160243074
#>     Attrib V9    0.04630150026537839
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.37744935854817335
#>     Attrib V1    0.3041194629863828
#>     Attrib V10    1.4083309748953496
#>     Attrib V11    1.1874737336605672
#>     Attrib V12    1.6773318289048296
#>     Attrib V13    0.8771477703766715
#>     Attrib V14    -0.22649785301258551
#>     Attrib V15    -0.7076492995360593
#>     Attrib V16    -0.5375177790030176
#>     Attrib V17    -0.4088974472534705
#>     Attrib V18    -0.3200731646970106
#>     Attrib V19    -0.19668653792146087
#>     Attrib V2    0.04091227746306809
#>     Attrib V20    0.03166266932805005
#>     Attrib V21    0.422679382219031
#>     Attrib V22    0.18434144877763875
#>     Attrib V23    0.4456220771151673
#>     Attrib V24    1.027945119586676
#>     Attrib V25    0.5709095906607772
#>     Attrib V26    1.4784247406261994
#>     Attrib V27    1.1914512474394117
#>     Attrib V28    0.6186991065744027
#>     Attrib V29    0.2090536539541959
#>     Attrib V3    0.15323581659444213
#>     Attrib V30    0.00894026570866872
#>     Attrib V31    -0.10434767548433102
#>     Attrib V32    0.3201243814753164
#>     Attrib V33    -0.7033158162854481
#>     Attrib V34    -0.10709033213355537
#>     Attrib V35    0.6020522409237634
#>     Attrib V36    -0.2977695039076212
#>     Attrib V37    -0.39443356770726334
#>     Attrib V38    -0.4735095074908998
#>     Attrib V39    0.36582037605512
#>     Attrib V4    0.25793758249404125
#>     Attrib V40    0.3324979220641766
#>     Attrib V41    0.29206140068942243
#>     Attrib V42    -0.14853412144643274
#>     Attrib V43    0.06822095609399625
#>     Attrib V44    0.3004165761759369
#>     Attrib V45    -0.24132247456645045
#>     Attrib V46    0.5580437083337424
#>     Attrib V47    0.5812707924269996
#>     Attrib V48    1.5420117968567006
#>     Attrib V49    1.3338030401506338
#>     Attrib V5    -0.09752832312002498
#>     Attrib V50    -0.4166605526643043
#>     Attrib V51    1.0980363540000213
#>     Attrib V52    0.9727945269002133
#>     Attrib V53    1.4221712162081894
#>     Attrib V54    -0.14567778593658096
#>     Attrib V55    -1.0892032365180362
#>     Attrib V56    -0.3712338190151432
#>     Attrib V57    -0.9993557342650364
#>     Attrib V58    -0.17636465133150883
#>     Attrib V59    -0.25827312716095646
#>     Attrib V6    0.43247603984352234
#>     Attrib V60    -0.4931033669343954
#>     Attrib V7    -0.7742555025450114
#>     Attrib V8    -0.5136166284001792
#>     Attrib V9    0.631499136005655
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.182428983166087
#>     Attrib V1    0.036700098095314194
#>     Attrib V10    0.07191201821077745
#>     Attrib V11    0.19361780522736782
#>     Attrib V12    0.15080184656354437
#>     Attrib V13    0.13308384327143308
#>     Attrib V14    0.1084152436504651
#>     Attrib V15    -0.022247846961810838
#>     Attrib V16    0.10562713581099907
#>     Attrib V17    0.15376788130033883
#>     Attrib V18    0.34898451870913105
#>     Attrib V19    0.1591551845056893
#>     Attrib V2    0.08644396112674788
#>     Attrib V20    0.03477891949290512
#>     Attrib V21    0.04472813633655381
#>     Attrib V22    0.098830677599889
#>     Attrib V23    0.1135770722114371
#>     Attrib V24    -0.12957484084950288
#>     Attrib V25    -0.06552790443348475
#>     Attrib V26    -0.0926090841144255
#>     Attrib V27    -0.1332514216147202
#>     Attrib V28    -0.16957962540473664
#>     Attrib V29    -0.10599311193545106
#>     Attrib V3    0.10515368394064596
#>     Attrib V30    0.07339723088631693
#>     Attrib V31    0.33533576866131437
#>     Attrib V32    -0.10947667160511132
#>     Attrib V33    0.07826018533733882
#>     Attrib V34    0.11494206025201947
#>     Attrib V35    0.017043207999240854
#>     Attrib V36    0.08804092253747027
#>     Attrib V37    0.025512075248499005
#>     Attrib V38    0.018466430549437734
#>     Attrib V39    0.07221811263220966
#>     Attrib V4    0.008603555097097794
#>     Attrib V40    0.33707668881867575
#>     Attrib V41    0.25132107333118453
#>     Attrib V42    -0.03992300318805509
#>     Attrib V43    0.12994688117259248
#>     Attrib V44    0.06936776934337392
#>     Attrib V45    0.02129643895055024
#>     Attrib V46    0.008643764399437568
#>     Attrib V47    0.1095977231567085
#>     Attrib V48    -0.13426313431831444
#>     Attrib V49    -0.09672362002745291
#>     Attrib V5    0.19645165274425916
#>     Attrib V50    0.32028935874537723
#>     Attrib V51    -0.005633265199117854
#>     Attrib V52    -0.06245128729348071
#>     Attrib V53    0.02227879691635328
#>     Attrib V54    -0.057867855825267454
#>     Attrib V55    0.19716585551313062
#>     Attrib V56    -0.014929714277340666
#>     Attrib V57    0.16244260666489582
#>     Attrib V58    6.2271475213068E-4
#>     Attrib V59    -0.044723574268199326
#>     Attrib V6    0.39759177865383666
#>     Attrib V60    -0.03594712857970146
#>     Attrib V7    0.32295405392978954
#>     Attrib V8    0.4488297818514214
#>     Attrib V9    0.09878098946081551
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.08915140347669474
#>     Attrib V1    0.1460052090687201
#>     Attrib V10    0.07238469670761674
#>     Attrib V11    -0.12762402617612462
#>     Attrib V12    0.1585289986337215
#>     Attrib V13    -0.03601378601652684
#>     Attrib V14    -0.1087724669853146
#>     Attrib V15    0.14317625766102596
#>     Attrib V16    0.1784553344708587
#>     Attrib V17    0.13792594265359964
#>     Attrib V18    -0.15464806359550123
#>     Attrib V19    0.21498958026409135
#>     Attrib V2    -0.06854363821552234
#>     Attrib V20    0.40147028777087035
#>     Attrib V21    0.238795342586191
#>     Attrib V22    0.029153960070413733
#>     Attrib V23    -0.03261898569574268
#>     Attrib V24    0.12557517801180476
#>     Attrib V25    -0.20152349042721715
#>     Attrib V26    -0.4322445372544121
#>     Attrib V27    -0.3618247285101452
#>     Attrib V28    -0.06241775397218205
#>     Attrib V29    -0.4429875697172379
#>     Attrib V3    -0.019720013847584282
#>     Attrib V30    -0.19296215200549194
#>     Attrib V31    -0.6829892453403249
#>     Attrib V32    0.2372148286320974
#>     Attrib V33    0.20989050223725006
#>     Attrib V34    0.19388315536197454
#>     Attrib V35    0.2987609877771982
#>     Attrib V36    -0.012591256055064096
#>     Attrib V37    -0.13747955404208087
#>     Attrib V38    0.20874482505457795
#>     Attrib V39    0.08311073744426702
#>     Attrib V4    0.3425925804493645
#>     Attrib V40    -0.33370925083680625
#>     Attrib V41    -0.15147868895254993
#>     Attrib V42    0.32554646445173147
#>     Attrib V43    -0.07090026228268764
#>     Attrib V44    0.1427394242477498
#>     Attrib V45    0.10796600342534012
#>     Attrib V46    0.03913601262141046
#>     Attrib V47    -0.043082549952912885
#>     Attrib V48    0.32239489054433407
#>     Attrib V49    0.27443420349570874
#>     Attrib V5    0.1160862574070545
#>     Attrib V50    -0.407253781645838
#>     Attrib V51    0.15269925471002238
#>     Attrib V52    0.0834681509986377
#>     Attrib V53    0.025397620911136388
#>     Attrib V54    0.3249961490631617
#>     Attrib V55    -0.27189957967120315
#>     Attrib V56    0.41728533765086145
#>     Attrib V57    -0.037560490720578064
#>     Attrib V58    0.11730994305670346
#>     Attrib V59    0.3280044638737195
#>     Attrib V6    -0.26063111861455757
#>     Attrib V60    0.38524888341699653
#>     Attrib V7    -0.039133387069716766
#>     Attrib V8    -0.49100570918221476
#>     Attrib V9    0.010905347591190972
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.04184856617771095
#>     Attrib V1    0.2057433146279519
#>     Attrib V10    -0.013893258566394768
#>     Attrib V11    -0.22385503618310135
#>     Attrib V12    -0.03761438634400669
#>     Attrib V13    -0.00809070522035241
#>     Attrib V14    -0.024935793393334314
#>     Attrib V15    0.23917983891619163
#>     Attrib V16    0.26647393132414554
#>     Attrib V17    0.10460460956388216
#>     Attrib V18    -0.2223729089779185
#>     Attrib V19    0.29979226971000494
#>     Attrib V2    0.04220684726306654
#>     Attrib V20    0.44295217775136053
#>     Attrib V21    0.3831932159519004
#>     Attrib V22    0.17997201638649887
#>     Attrib V23    0.019778850256277063
#>     Attrib V24    0.03302883291372099
#>     Attrib V25    -0.48664270447199787
#>     Attrib V26    -0.6404906772007457
#>     Attrib V27    -0.39598265134876004
#>     Attrib V28    0.05641896834690071
#>     Attrib V29    -0.21666693148736657
#>     Attrib V3    0.019890673715512112
#>     Attrib V30    -0.09515247852601255
#>     Attrib V31    -0.8324590640103274
#>     Attrib V32    0.23128058719171904
#>     Attrib V33    0.2568125187991971
#>     Attrib V34    0.0953606220767299
#>     Attrib V35    0.1721101343236249
#>     Attrib V36    -0.13259456709460318
#>     Attrib V37    -0.2008055499653785
#>     Attrib V38    0.1905727443452536
#>     Attrib V39    0.03199847060419154
#>     Attrib V4    0.4920240194783801
#>     Attrib V40    -0.3855562900223885
#>     Attrib V41    -0.08464071857421043
#>     Attrib V42    0.4341927894347876
#>     Attrib V43    -0.03311674344477943
#>     Attrib V44    0.09144701005557394
#>     Attrib V45    0.10715798617112823
#>     Attrib V46    0.12873796386237102
#>     Attrib V47    -0.1006148520878598
#>     Attrib V48    0.29265520781312243
#>     Attrib V49    0.2635552805716823
#>     Attrib V5    0.11348464650206772
#>     Attrib V50    -0.5358356092112363
#>     Attrib V51    0.0674708005086257
#>     Attrib V52    0.13161942567776475
#>     Attrib V53    0.0014441633659704402
#>     Attrib V54    0.23877094115827416
#>     Attrib V55    -0.3910839143430808
#>     Attrib V56    0.47719872216832543
#>     Attrib V57    -0.032226086477549015
#>     Attrib V58    0.16855380953872004
#>     Attrib V59    0.46839165786075126
#>     Attrib V6    -0.3602844998379341
#>     Attrib V60    0.4680093714565398
#>     Attrib V7    0.06552316388204733
#>     Attrib V8    -0.5332668456466744
#>     Attrib V9    -0.016382200761090617
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.12924406715371128
#>     Attrib V1    0.19919704609908748
#>     Attrib V10    0.0012638412322842324
#>     Attrib V11    -0.17707262259504353
#>     Attrib V12    0.08112783652950997
#>     Attrib V13    0.09046822149502906
#>     Attrib V14    -0.005701308534067729
#>     Attrib V15    0.1807917311274048
#>     Attrib V16    0.13502783732382806
#>     Attrib V17    0.07921995052927236
#>     Attrib V18    -0.1704511652394862
#>     Attrib V19    0.18690736691826312
#>     Attrib V2    -0.011364867778427283
#>     Attrib V20    0.3717419900648154
#>     Attrib V21    0.295781599988156
#>     Attrib V22    0.06026749874625832
#>     Attrib V23    0.018020583916179667
#>     Attrib V24    0.11890838020064999
#>     Attrib V25    -0.22659069469367835
#>     Attrib V26    -0.4464813330685799
#>     Attrib V27    -0.29257817693358984
#>     Attrib V28    -0.05012663740130104
#>     Attrib V29    -0.2854679874503378
#>     Attrib V3    0.09916914405316883
#>     Attrib V30    -0.14909434456188345
#>     Attrib V31    -0.6592358297927838
#>     Attrib V32    0.20649894134442695
#>     Attrib V33    0.1499026174906572
#>     Attrib V34    0.12450556321551245
#>     Attrib V35    0.1727409018877813
#>     Attrib V36    -0.09231649550493752
#>     Attrib V37    -0.12456963255383646
#>     Attrib V38    0.12826925344978826
#>     Attrib V39    0.12398243556817037
#>     Attrib V4    0.37368521474893346
#>     Attrib V40    -0.2859093565385769
#>     Attrib V41    -0.07975672056106632
#>     Attrib V42    0.3419239885227849
#>     Attrib V43    -0.08736981488387041
#>     Attrib V44    0.07762700471734736
#>     Attrib V45    -0.00553293585301228
#>     Attrib V46    0.07400549246266956
#>     Attrib V47    -0.027054424360073742
#>     Attrib V48    0.23530295258782113
#>     Attrib V49    0.2804401174881449
#>     Attrib V5    0.12078143245253257
#>     Attrib V50    -0.4038431268428109
#>     Attrib V51    0.05997899323986796
#>     Attrib V52    0.06747496743526518
#>     Attrib V53    0.06007162045490198
#>     Attrib V54    0.23606588948956067
#>     Attrib V55    -0.274131544396409
#>     Attrib V56    0.39064793114580165
#>     Attrib V57    -0.02538156075786525
#>     Attrib V58    0.1126952456227084
#>     Attrib V59    0.4324506963306388
#>     Attrib V6    -0.2188674360615213
#>     Attrib V60    0.4599357580613114
#>     Attrib V7    0.05225553510212342
#>     Attrib V8    -0.5191508065881347
#>     Attrib V9    -0.04905680126446184
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.0837015636704508
#>     Attrib V1    0.27887696156624614
#>     Attrib V10    0.12117129402337487
#>     Attrib V11    -0.03472949586068691
#>     Attrib V12    0.2646339471784595
#>     Attrib V13    -0.02898498797478793
#>     Attrib V14    -0.22407565061368162
#>     Attrib V15    0.1787141160216625
#>     Attrib V16    0.14607669980322632
#>     Attrib V17    0.09455056217485616
#>     Attrib V18    -0.28482840939426735
#>     Attrib V19    0.20717627689105758
#>     Attrib V2    0.0016932120572456077
#>     Attrib V20    0.4043585032446319
#>     Attrib V21    0.2598685682292491
#>     Attrib V22    0.054208083768925
#>     Attrib V23    -0.017037481275178974
#>     Attrib V24    0.17511348643540625
#>     Attrib V25    -0.18880717026478722
#>     Attrib V26    -0.43174755832916534
#>     Attrib V27    -0.5513575672689379
#>     Attrib V28    -0.32486216046928396
#>     Attrib V29    -0.794631312265109
#>     Attrib V3    -0.030899962556013225
#>     Attrib V30    -0.31334178504829496
#>     Attrib V31    -0.703785694619698
#>     Attrib V32    0.4187674848383018
#>     Attrib V33    0.3644026044404944
#>     Attrib V34    0.2098160256562185
#>     Attrib V35    0.31695382321766324
#>     Attrib V36    -0.08741798241017483
#>     Attrib V37    -0.1312855183518272
#>     Attrib V38    0.1828752032325745
#>     Attrib V39    0.1446289831558074
#>     Attrib V4    0.39707609863164567
#>     Attrib V40    -0.39003234051793867
#>     Attrib V41    -0.20198220725496221
#>     Attrib V42    0.326035458500139
#>     Attrib V43    -0.13470267083716872
#>     Attrib V44    0.10479915173871733
#>     Attrib V45    -0.047077485497646385
#>     Attrib V46    0.030504000892984048
#>     Attrib V47    -0.12118750627900643
#>     Attrib V48    0.3935249141277478
#>     Attrib V49    0.37424321543767625
#>     Attrib V5    0.036077744204778495
#>     Attrib V50    -0.5590472104642159
#>     Attrib V51    0.07244604762667843
#>     Attrib V52    0.09737055402488619
#>     Attrib V53    -0.048497513924834375
#>     Attrib V54    0.4055739009553733
#>     Attrib V55    -0.27876249844326906
#>     Attrib V56    0.5739608776729711
#>     Attrib V57    -0.047514902758360046
#>     Attrib V58    0.14368671179511913
#>     Attrib V59    0.42215754959709184
#>     Attrib V6    -0.38293714268397416
#>     Attrib V60    0.5120216868210359
#>     Attrib V7    0.008930708689699996
#>     Attrib V8    -0.6911089985522713
#>     Attrib V9    0.0011540783049387912
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.2510309622438474
#>     Attrib V1    -0.25989371753994217
#>     Attrib V10    -0.8244144888074881
#>     Attrib V11    -0.2748868409767065
#>     Attrib V12    -0.7191358263390052
#>     Attrib V13    -0.4323357145019806
#>     Attrib V14    0.3439679793168261
#>     Attrib V15    0.06925406299165678
#>     Attrib V16    -0.03068892218308637
#>     Attrib V17    0.22346983178859614
#>     Attrib V18    0.7779171430841008
#>     Attrib V19    0.15418497638887568
#>     Attrib V2    0.03531939716229678
#>     Attrib V20    -0.20725631090478866
#>     Attrib V21    -0.4343127592603218
#>     Attrib V22    -0.07175288621242962
#>     Attrib V23    0.07021229769710982
#>     Attrib V24    -0.3658119767388076
#>     Attrib V25    0.487616205694529
#>     Attrib V26    0.5594443134768641
#>     Attrib V27    0.2654546296143889
#>     Attrib V28    -0.44012017143397925
#>     Attrib V29    0.10448418101758357
#>     Attrib V3    0.11940807305706279
#>     Attrib V30    -0.11657959255576544
#>     Attrib V31    1.048174515288085
#>     Attrib V32    -0.7721542792577817
#>     Attrib V33    -0.09400261405008166
#>     Attrib V34    0.29348107371534604
#>     Attrib V35    -0.07317542760006114
#>     Attrib V36    0.5781257974612394
#>     Attrib V37    0.4207865414417972
#>     Attrib V38    -0.19133984738836204
#>     Attrib V39    -0.15865296825848535
#>     Attrib V4    -0.5220861433634523
#>     Attrib V40    0.6274938268239075
#>     Attrib V41    0.0433007077893337
#>     Attrib V42    -0.5532918064059542
#>     Attrib V43    0.2509475432256386
#>     Attrib V44    -0.2949696224251656
#>     Attrib V45    -0.10198322189758925
#>     Attrib V46    -0.24706390259762268
#>     Attrib V47    0.059833688872771816
#>     Attrib V48    -0.9045039095757372
#>     Attrib V49    -0.7866282501381678
#>     Attrib V5    0.1810414304912979
#>     Attrib V50    1.3730427308546704
#>     Attrib V51    -0.2670427722395339
#>     Attrib V52    -0.2617791344801954
#>     Attrib V53    0.19005836600821613
#>     Attrib V54    0.09892273519920207
#>     Attrib V55    1.1401474607150672
#>     Attrib V56    -0.28493995137029304
#>     Attrib V57    0.6001033297408186
#>     Attrib V58    0.031756003466221185
#>     Attrib V59    -0.1455459031877602
#>     Attrib V6    0.3985426893230276
#>     Attrib V60    -0.21075870924523324
#>     Attrib V7    0.08350644903857297
#>     Attrib V8    0.8305553297622557
#>     Attrib V9    -0.40174612107578184
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1620419002598396
#>     Attrib V1    0.07780010599398934
#>     Attrib V10    0.048614461471968795
#>     Attrib V11    -0.01891858682085968
#>     Attrib V12    0.05080852348463893
#>     Attrib V13    0.05645047045622903
#>     Attrib V14    0.009430717296050124
#>     Attrib V15    0.043749501579610654
#>     Attrib V16    0.0948715680845479
#>     Attrib V17    0.06398575538022527
#>     Attrib V18    0.016547227101007374
#>     Attrib V19    0.031599692008142874
#>     Attrib V2    -0.006020530495062465
#>     Attrib V20    -0.022911754401482482
#>     Attrib V21    -0.058620637040971486
#>     Attrib V22    -0.08513502167585119
#>     Attrib V23    -0.11126720185680815
#>     Attrib V24    0.006588434349874651
#>     Attrib V25    -0.03821003778747038
#>     Attrib V26    -0.10287691403397912
#>     Attrib V27    -0.07944045952966106
#>     Attrib V28    -0.015482877336755135
#>     Attrib V29    -0.09141854081094368
#>     Attrib V3    0.0868518890150286
#>     Attrib V30    -0.0806158842376538
#>     Attrib V31    -0.1273356321531868
#>     Attrib V32    0.0859409087411756
#>     Attrib V33    0.04621966225661734
#>     Attrib V34    0.09007076527342234
#>     Attrib V35    0.10246847764707434
#>     Attrib V36    0.05335873032136219
#>     Attrib V37    0.08649661608499075
#>     Attrib V38    0.08386716822478545
#>     Attrib V39    0.06687235888044038
#>     Attrib V4    0.1590282730893943
#>     Attrib V40    -0.04330074861488474
#>     Attrib V41    0.03492053314291965
#>     Attrib V42    0.10987960568523115
#>     Attrib V43    0.011910449193796333
#>     Attrib V44    0.03508173602014418
#>     Attrib V45    0.051521366914166714
#>     Attrib V46    0.07629787659891435
#>     Attrib V47    0.04849658044518598
#>     Attrib V48    0.12128102288134328
#>     Attrib V49    0.07890944256218084
#>     Attrib V5    0.09887304344544887
#>     Attrib V50    0.03676953869424295
#>     Attrib V51    0.16165534106000712
#>     Attrib V52    0.1302402862463889
#>     Attrib V53    0.15629202131553008
#>     Attrib V54    0.10392273084880845
#>     Attrib V55    0.023447506130575058
#>     Attrib V56    0.1394362005338193
#>     Attrib V57    0.08884311639873889
#>     Attrib V58    0.1228742785637446
#>     Attrib V59    0.1396385571208901
#>     Attrib V6    0.016663347006639875
#>     Attrib V60    0.20784806038080494
#>     Attrib V7    -0.007176667072971807
#>     Attrib V8    -0.11990457240594979
#>     Attrib V9    0.05814052636193321
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.067903838448007
#>     Attrib V1    0.14827873476101472
#>     Attrib V10    0.10783121759650881
#>     Attrib V11    -0.003976826638204819
#>     Attrib V12    0.051179180392394996
#>     Attrib V13    -0.012006574625272846
#>     Attrib V14    0.003832643465535728
#>     Attrib V15    0.15228755453447
#>     Attrib V16    0.07396397426233592
#>     Attrib V17    0.02489566800910746
#>     Attrib V18    -0.08642027219685164
#>     Attrib V19    0.0763918850447851
#>     Attrib V2    0.07057493653403724
#>     Attrib V20    0.08382711214505115
#>     Attrib V21    0.03449871782799927
#>     Attrib V22    -8.340478547928533E-4
#>     Attrib V23    -0.10852661319623924
#>     Attrib V24    0.025584661240675974
#>     Attrib V25    -0.14981187502010976
#>     Attrib V26    -0.16941192190195842
#>     Attrib V27    -0.10316445553140452
#>     Attrib V28    -0.0384316076207315
#>     Attrib V29    -0.18059559089678245
#>     Attrib V3    0.04052090291210257
#>     Attrib V30    -0.07248074358532754
#>     Attrib V31    -0.22089080881756606
#>     Attrib V32    0.06677535312264568
#>     Attrib V33    0.11125037788259558
#>     Attrib V34    0.03665464499116064
#>     Attrib V35    0.1813568916832724
#>     Attrib V36    0.009014254513601284
#>     Attrib V37    -0.005956047319110664
#>     Attrib V38    0.14971457367546417
#>     Attrib V39    0.09857495112461528
#>     Attrib V4    0.20430427204725302
#>     Attrib V40    -0.15165300899274367
#>     Attrib V41    -0.02097057435562444
#>     Attrib V42    0.0853550997646274
#>     Attrib V43    0.025357317702825014
#>     Attrib V44    0.10873431380728264
#>     Attrib V45    0.08889650449385793
#>     Attrib V46    0.02389117293575778
#>     Attrib V47    -0.031838401860270725
#>     Attrib V48    0.24106242934997033
#>     Attrib V49    0.13502181297479474
#>     Attrib V5    0.09068723966631896
#>     Attrib V50    -0.1123649162669801
#>     Attrib V51    0.13035133953136702
#>     Attrib V52    0.09437611488136809
#>     Attrib V53    0.08685437339708636
#>     Attrib V54    0.14846514179032047
#>     Attrib V55    -0.04843202742716843
#>     Attrib V56    0.19666843059589567
#>     Attrib V57    0.060992732477958306
#>     Attrib V58    0.04322475954485376
#>     Attrib V59    0.2043135424683092
#>     Attrib V6    -0.06424893506272034
#>     Attrib V60    0.25696674856517343
#>     Attrib V7    -0.08686897585425174
#>     Attrib V8    -0.20327246132311166
#>     Attrib V9    0.030618337651159875
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.21236391728017254
#>     Attrib V1    0.022577325049093804
#>     Attrib V10    0.028429023437008826
#>     Attrib V11    0.031573264345797686
#>     Attrib V12    -0.0035213742193763967
#>     Attrib V13    0.016874865843529256
#>     Attrib V14    0.04158884725340738
#>     Attrib V15    0.017031940913813316
#>     Attrib V16    0.06236674689309689
#>     Attrib V17    0.03977941991709458
#>     Attrib V18    0.12845962495692997
#>     Attrib V19    -0.014036922755231725
#>     Attrib V2    0.0703291465748084
#>     Attrib V20    -0.004533431744463702
#>     Attrib V21    -0.00387026190246107
#>     Attrib V22    -0.012653782417984715
#>     Attrib V23    0.006267603617491927
#>     Attrib V24    -0.0628483681095392
#>     Attrib V25    -0.013878423640354172
#>     Attrib V26    -0.03692971728692864
#>     Attrib V27    -0.04781147300598448
#>     Attrib V28    -0.06863870110066925
#>     Attrib V29    -0.05245333826721664
#>     Attrib V3    0.1384637705412916
#>     Attrib V30    -0.01787201728741809
#>     Attrib V31    0.05332973628832701
#>     Attrib V32    8.076619779044345E-5
#>     Attrib V33    0.028977274289186745
#>     Attrib V34    0.06892042312764853
#>     Attrib V35    0.026304774957298657
#>     Attrib V36    0.13027309610616528
#>     Attrib V37    0.05153779960402637
#>     Attrib V38    0.004073048436037971
#>     Attrib V39    0.07558266603735321
#>     Attrib V4    0.050285534676909716
#>     Attrib V40    0.07886716106297718
#>     Attrib V41    0.040615218885845975
#>     Attrib V42    0.023753205930564694
#>     Attrib V43    0.05955518846917516
#>     Attrib V44    0.09671732074516737
#>     Attrib V45    -0.021303492539145142
#>     Attrib V46    0.02643308489575403
#>     Attrib V47    0.10952064529711113
#>     Attrib V48    0.018731442715033693
#>     Attrib V49    0.04000373606753807
#>     Attrib V5    0.10749118010468527
#>     Attrib V50    0.07049700825239255
#>     Attrib V51    0.11919689530601925
#>     Attrib V52    0.0374319333305471
#>     Attrib V53    0.06292651923336538
#>     Attrib V54    4.035642508201492E-4
#>     Attrib V55    0.12454439002515086
#>     Attrib V56    0.10343080574391035
#>     Attrib V57    0.06752889729280721
#>     Attrib V58    0.07262591249784225
#>     Attrib V59    0.09438544472044637
#>     Attrib V6    0.07014028680183117
#>     Attrib V60    0.11638117169811747
#>     Attrib V7    0.11832909210770773
#>     Attrib V8    0.1690665171543007
#>     Attrib V9    0.06085349924428769
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.003777891791063776
#>     Attrib V1    0.194908054594238
#>     Attrib V10    0.2353079181736644
#>     Attrib V11    -0.1797968442601432
#>     Attrib V12    0.26238807196452474
#>     Attrib V13    0.14423958831355582
#>     Attrib V14    -0.0834196188106536
#>     Attrib V15    0.22927614522078418
#>     Attrib V16    0.1305637106132184
#>     Attrib V17    0.0028260340368443317
#>     Attrib V18    -0.3772156630973661
#>     Attrib V19    0.36410037947711626
#>     Attrib V2    -0.03133580894869724
#>     Attrib V20    0.5625143214348247
#>     Attrib V21    0.5199751159128773
#>     Attrib V22    0.2734010668942656
#>     Attrib V23    0.1494702658231112
#>     Attrib V24    0.317552630845541
#>     Attrib V25    -0.36149452957498057
#>     Attrib V26    -0.4987278414392597
#>     Attrib V27    -0.2725433012759391
#>     Attrib V28    0.34527758796214675
#>     Attrib V29    -0.21468799569565578
#>     Attrib V3    0.007967975908213838
#>     Attrib V30    -0.011714646242909707
#>     Attrib V31    -0.9659714010787458
#>     Attrib V32    0.32782250007935965
#>     Attrib V33    0.20962319528299092
#>     Attrib V34    0.057128107612474825
#>     Attrib V35    0.3314876046134961
#>     Attrib V36    -0.2533499541697527
#>     Attrib V37    -0.47709735801756403
#>     Attrib V38    0.030528503729929365
#>     Attrib V39    0.05032196027059434
#>     Attrib V4    0.5745469429854394
#>     Attrib V40    -0.49337531764546216
#>     Attrib V41    -0.11770680212836768
#>     Attrib V42    0.6326872597171559
#>     Attrib V43    -0.08997927398070578
#>     Attrib V44    0.18588981941041818
#>     Attrib V45    0.18986036600578016
#>     Attrib V46    0.18990515778422629
#>     Attrib V47    -0.059659183697219315
#>     Attrib V48    0.49320970163156996
#>     Attrib V49    0.6200242188323325
#>     Attrib V5    0.06231819406460835
#>     Attrib V50    -0.7844433868933488
#>     Attrib V51    0.058528491637921336
#>     Attrib V52    0.19071769129564103
#>     Attrib V53    0.053607388487403464
#>     Attrib V54    0.18350664403431205
#>     Attrib V55    -0.5986608502979531
#>     Attrib V56    0.472511968871107
#>     Attrib V57    -0.3752617761490766
#>     Attrib V58    0.15577205401234087
#>     Attrib V59    0.3356615092273562
#>     Attrib V6    -0.4136758367235886
#>     Attrib V60    0.42276415677518947
#>     Attrib V7    0.05672476373203542
#>     Attrib V8    -0.7018106832296602
#>     Attrib V9    0.08209250177820572
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.0038661087347841385
#>     Attrib V1    0.30373697034816466
#>     Attrib V10    0.23008612861954217
#>     Attrib V11    -0.2022093197849858
#>     Attrib V12    0.18450815587340857
#>     Attrib V13    0.1284063882978495
#>     Attrib V14    -0.039157756976434845
#>     Attrib V15    0.22961870248643937
#>     Attrib V16    0.15633319129325246
#>     Attrib V17    0.009525452748195799
#>     Attrib V18    -0.3614759967288869
#>     Attrib V19    0.3373230781871986
#>     Attrib V2    -0.023845906331983656
#>     Attrib V20    0.6207859866993584
#>     Attrib V21    0.6574154755987491
#>     Attrib V22    0.3001105773845794
#>     Attrib V23    0.14397153390567538
#>     Attrib V24    0.1898442033391151
#>     Attrib V25    -0.6023167886628684
#>     Attrib V26    -0.6248484143547952
#>     Attrib V27    -0.27336559084017054
#>     Attrib V28    0.3943876740026604
#>     Attrib V29    0.006562004721460149
#>     Attrib V3    0.016804004444713454
#>     Attrib V30    0.1276187338842055
#>     Attrib V31    -1.0423733820340377
#>     Attrib V32    0.2834948738717907
#>     Attrib V33    0.13390577353721145
#>     Attrib V34    -0.07287875493950378
#>     Attrib V35    0.21382585932475998
#>     Attrib V36    -0.21001417834124966
#>     Attrib V37    -0.3604642502044946
#>     Attrib V38    0.14164784126461888
#>     Attrib V39    0.0634367271481093
#>     Attrib V4    0.6005157043390212
#>     Attrib V40    -0.5646746631950841
#>     Attrib V41    -0.0825022911979004
#>     Attrib V42    0.6188245279955622
#>     Attrib V43    -0.0066970978074721655
#>     Attrib V44    0.32026977704443305
#>     Attrib V45    0.2065544652077889
#>     Attrib V46    0.1471877177146868
#>     Attrib V47    -0.0881485494084956
#>     Attrib V48    0.5196743503622148
#>     Attrib V49    0.5836933208310069
#>     Attrib V5    0.1078952412159507
#>     Attrib V50    -0.7696756083274634
#>     Attrib V51    0.14597299769792238
#>     Attrib V52    0.20534791300548288
#>     Attrib V53    -0.01009572867770829
#>     Attrib V54    0.14048287686953467
#>     Attrib V55    -0.641145396817826
#>     Attrib V56    0.5081769510800811
#>     Attrib V57    -0.36161029815695783
#>     Attrib V58    0.1564949791695064
#>     Attrib V59    0.42902568044941836
#>     Attrib V6    -0.4318004089179657
#>     Attrib V60    0.4083512284794251
#>     Attrib V7    0.029952768734430642
#>     Attrib V8    -0.7359277770449726
#>     Attrib V9    0.0891172364218122
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.12893040127601274
#>     Attrib V1    -0.29450146810061895
#>     Attrib V10    -0.9065694426095422
#>     Attrib V11    -0.458980391342526
#>     Attrib V12    -0.8150467814026392
#>     Attrib V13    -0.49578784943346443
#>     Attrib V14    0.46086933100293037
#>     Attrib V15    -0.0070266182582004386
#>     Attrib V16    -0.055357384270291236
#>     Attrib V17    0.1804152508554357
#>     Attrib V18    0.7818946264946129
#>     Attrib V19    -0.18963639362211
#>     Attrib V2    -0.27762023979410083
#>     Attrib V20    -0.5849618152997723
#>     Attrib V21    -0.6985993715006442
#>     Attrib V22    -0.4353147356037374
#>     Attrib V23    -0.3116571771708688
#>     Attrib V24    -0.6970111732872034
#>     Attrib V25    0.4060011621993671
#>     Attrib V26    0.4527507851683
#>     Attrib V27    0.462025683164392
#>     Attrib V28    -0.3680473743709068
#>     Attrib V29    0.2006711269028478
#>     Attrib V3    -0.15854642435747943
#>     Attrib V30    -0.3906811453592074
#>     Attrib V31    1.1452566239420112
#>     Attrib V32    -0.9843154428136686
#>     Attrib V33    -0.06892487120347283
#>     Attrib V34    0.4066376157382015
#>     Attrib V35    -0.045818744612087306
#>     Attrib V36    0.8602693409104868
#>     Attrib V37    0.830960919175615
#>     Attrib V38    0.018729232848262473
#>     Attrib V39    -0.09254950849155534
#>     Attrib V4    -0.6459467881924192
#>     Attrib V40    0.8545654276998514
#>     Attrib V41    0.3005328320195847
#>     Attrib V42    -0.756862826168301
#>     Attrib V43    0.25540609958094906
#>     Attrib V44    -0.39108082126009786
#>     Attrib V45    -0.30602939182524747
#>     Attrib V46    -0.4395125442644564
#>     Attrib V47    -0.175627347024205
#>     Attrib V48    -1.077476065131307
#>     Attrib V49    -1.144184966948988
#>     Attrib V5    0.28085061873828465
#>     Attrib V50    1.444154736947003
#>     Attrib V51    -0.4721818592731399
#>     Attrib V52    -0.5031583268018948
#>     Attrib V53    0.004270208290388589
#>     Attrib V54    0.1524976293105577
#>     Attrib V55    1.036407222371538
#>     Attrib V56    -0.7532346443486434
#>     Attrib V57    1.058610618425452
#>     Attrib V58    -0.15903666197677996
#>     Attrib V59    0.2048855184682754
#>     Attrib V6    0.8100723057384926
#>     Attrib V60    0.28752490454835705
#>     Attrib V7    0.35289619710792314
#>     Attrib V8    0.7392686725037019
#>     Attrib V9    -0.4876969035331754
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.06724250617328278
#>     Attrib V1    0.30451474784504434
#>     Attrib V10    0.03136054662357672
#>     Attrib V11    -0.1216541539911854
#>     Attrib V12    0.1720438131030251
#>     Attrib V13    0.01003271308036014
#>     Attrib V14    -0.03663278712682449
#>     Attrib V15    0.1653058900191952
#>     Attrib V16    0.22365627928290366
#>     Attrib V17    0.0948983909859962
#>     Attrib V18    -0.21130243731627352
#>     Attrib V19    0.15101729084363913
#>     Attrib V2    0.04071984758267694
#>     Attrib V20    0.3536602231789914
#>     Attrib V21    0.22905621975501098
#>     Attrib V22    -0.0045260724671135
#>     Attrib V23    -0.1330949230309247
#>     Attrib V24    0.13464348713405108
#>     Attrib V25    -0.259353860580711
#>     Attrib V26    -0.48428175120629485
#>     Attrib V27    -0.4735902719038727
#>     Attrib V28    -0.2862057178647038
#>     Attrib V29    -0.5420434470533362
#>     Attrib V3    0.022343635337486862
#>     Attrib V30    -0.32852861199460376
#>     Attrib V31    -0.6039587572703995
#>     Attrib V32    0.26666493234695005
#>     Attrib V33    0.21844941433107556
#>     Attrib V34    0.16608576276923315
#>     Attrib V35    0.24213736277963513
#>     Attrib V36    -0.032908596707100016
#>     Attrib V37    -0.061299335469309685
#>     Attrib V38    0.20438272416112294
#>     Attrib V39    0.10276451310131987
#>     Attrib V4    0.3770859195158108
#>     Attrib V40    -0.3122227167363057
#>     Attrib V41    -0.1802069937888675
#>     Attrib V42    0.28763608455572326
#>     Attrib V43    -0.008983229006175764
#>     Attrib V44    0.04776679324144724
#>     Attrib V45    -0.046240278657767295
#>     Attrib V46    0.026774299302780205
#>     Attrib V47    -0.15737041165199359
#>     Attrib V48    0.28343992573686444
#>     Attrib V49    0.23830342843132823
#>     Attrib V5    0.12397317642338124
#>     Attrib V50    -0.42496146596129436
#>     Attrib V51    0.06704939094422123
#>     Attrib V52    0.09884409688161898
#>     Attrib V53    0.02084116868604591
#>     Attrib V54    0.37818939228222515
#>     Attrib V55    -0.19795611765386434
#>     Attrib V56    0.5064424532120891
#>     Attrib V57    0.029781651514269942
#>     Attrib V58    0.1887965419028781
#>     Attrib V59    0.46264939897049717
#>     Attrib V6    -0.23260213536680924
#>     Attrib V60    0.49495892860277246
#>     Attrib V7    0.008396574019465556
#>     Attrib V8    -0.6511230310460959
#>     Attrib V9    -0.05527841882273726
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.18006334241689997
#>     Attrib V1    0.24249187264842867
#>     Attrib V10    0.1777817138643631
#>     Attrib V11    -0.3541677660557865
#>     Attrib V12    -0.008587212215833834
#>     Attrib V13    -0.14370876752974873
#>     Attrib V14    -0.38866733320710983
#>     Attrib V15    0.25480032302759587
#>     Attrib V16    0.33704301258764574
#>     Attrib V17    0.1693614869256685
#>     Attrib V18    -0.49909057727683925
#>     Attrib V19    0.4519791354286739
#>     Attrib V2    -0.08758335534748629
#>     Attrib V20    0.7612893867266587
#>     Attrib V21    0.6319430105573727
#>     Attrib V22    0.3255327530228414
#>     Attrib V23    0.0854753116094054
#>     Attrib V24    0.13177409996335776
#>     Attrib V25    -0.64226676609762
#>     Attrib V26    -0.9363352022000432
#>     Attrib V27    -0.779680424578753
#>     Attrib V28    0.09464000875922046
#>     Attrib V29    -0.6261147442573239
#>     Attrib V3    0.06502082903594868
#>     Attrib V30    -0.050610982898212996
#>     Attrib V31    -1.3546605994068943
#>     Attrib V32    0.5606165931164308
#>     Attrib V33    0.4681181872943018
#>     Attrib V34    0.12891842196005524
#>     Attrib V35    0.2893919560481335
#>     Attrib V36    -0.3115111518759146
#>     Attrib V37    -0.4556386094960574
#>     Attrib V38    0.12297104417282484
#>     Attrib V39    -0.003198780582066089
#>     Attrib V4    0.800419644921656
#>     Attrib V40    -0.8138693261078463
#>     Attrib V41    -0.16709225679324508
#>     Attrib V42    0.8673087225938194
#>     Attrib V43    -0.12854149118505898
#>     Attrib V44    0.25806674026881715
#>     Attrib V45    0.24030665940676776
#>     Attrib V46    0.21743739340128385
#>     Attrib V47    -0.02517339519072863
#>     Attrib V48    0.4915563070727208
#>     Attrib V49    0.6132271185370455
#>     Attrib V5    0.061301425886539904
#>     Attrib V50    -0.9837477487781712
#>     Attrib V51    0.015763536369069776
#>     Attrib V52    0.15695769631226394
#>     Attrib V53    -0.17316912046527988
#>     Attrib V54    0.28967910297337557
#>     Attrib V55    -0.705267753414146
#>     Attrib V56    0.8389692564363473
#>     Attrib V57    -0.28468568612971024
#>     Attrib V58    0.15010851150475263
#>     Attrib V59    0.49334397676647174
#>     Attrib V6    -0.7519101618765686
#>     Attrib V60    0.7043954116125261
#>     Attrib V7    0.19466356184718026
#>     Attrib V8    -0.8240827121202051
#>     Attrib V9    0.14130768737311608
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.19372632819546615
#>     Attrib V1    -0.19413379025657482
#>     Attrib V10    -0.6142525010869958
#>     Attrib V11    -0.14352482280283585
#>     Attrib V12    -0.5359243398027924
#>     Attrib V13    -0.30886762411571644
#>     Attrib V14    0.31862517661918227
#>     Attrib V15    0.08814997080337664
#>     Attrib V16    -0.03436271934562284
#>     Attrib V17    0.23640776405207925
#>     Attrib V18    0.6075008952618374
#>     Attrib V19    0.14529930401890964
#>     Attrib V2    0.040034334511308424
#>     Attrib V20    -0.10706856711753814
#>     Attrib V21    -0.27383390593293905
#>     Attrib V22    -0.07422734716485714
#>     Attrib V23    0.12723338287359426
#>     Attrib V24    -0.2756801396718323
#>     Attrib V25    0.3739656169279213
#>     Attrib V26    0.40383097364032366
#>     Attrib V27    0.18737173695169193
#>     Attrib V28    -0.29666180306869505
#>     Attrib V29    0.026677408818780862
#>     Attrib V3    0.0765387485368652
#>     Attrib V30    -0.11556927035412176
#>     Attrib V31    0.7340652989626932
#>     Attrib V32    -0.5929091494621059
#>     Attrib V33    -0.15980573625900407
#>     Attrib V34    0.11579942073589379
#>     Attrib V35    -0.089548756069314
#>     Attrib V36    0.4428425798638435
#>     Attrib V37    0.1893838475957619
#>     Attrib V38    -0.1830089521790739
#>     Attrib V39    -0.14770013604054305
#>     Attrib V4    -0.3330478822916885
#>     Attrib V40    0.453111002837575
#>     Attrib V41    -7.873848846543437E-4
#>     Attrib V42    -0.44830869420464886
#>     Attrib V43    0.23492602182559277
#>     Attrib V44    -0.24880920007495982
#>     Attrib V45    -0.18083290897286589
#>     Attrib V46    -0.22814642556892997
#>     Attrib V47    0.08824548379861895
#>     Attrib V48    -0.6916509167187314
#>     Attrib V49    -0.6129857362399103
#>     Attrib V5    0.12235602873201815
#>     Attrib V50    1.0485929967849925
#>     Attrib V51    -0.17580313724666352
#>     Attrib V52    -0.08631095021052532
#>     Attrib V53    0.08401283985952311
#>     Attrib V54    0.09135570386082312
#>     Attrib V55    0.9281199374934195
#>     Attrib V56    -0.15711305352496396
#>     Attrib V57    0.5318407634354656
#>     Attrib V58    0.06701047893826871
#>     Attrib V59    -0.0821451513690706
#>     Attrib V6    0.31288499370792144
#>     Attrib V60    -0.17497568630723417
#>     Attrib V7    0.07555365091947581
#>     Attrib V8    0.674516676223024
#>     Attrib V9    -0.22921856080753866
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.5225529802997723
#>     Attrib V1    0.5113209615292862
#>     Attrib V10    1.3796127369304976
#>     Attrib V11    1.2314315144724135
#>     Attrib V12    1.7180914402407386
#>     Attrib V13    1.0535032534572542
#>     Attrib V14    0.11291650258615558
#>     Attrib V15    -0.6412739835385304
#>     Attrib V16    -0.5585323351723069
#>     Attrib V17    -0.5035325235564937
#>     Attrib V18    -0.4347808411515098
#>     Attrib V19    -0.44731181611817133
#>     Attrib V2    0.26748332635435385
#>     Attrib V20    -0.06600145900503418
#>     Attrib V21    0.46888043115001626
#>     Attrib V22    0.3040971166788951
#>     Attrib V23    0.5207369139133875
#>     Attrib V24    0.759275980038527
#>     Attrib V25    0.051981723333551375
#>     Attrib V26    1.3712817585035952
#>     Attrib V27    1.5264238367234197
#>     Attrib V28    1.222377595913041
#>     Attrib V29    1.130735327703399
#>     Attrib V3    0.3976147423412647
#>     Attrib V30    0.36650698529263875
#>     Attrib V31    -0.1296540825751174
#>     Attrib V32    0.13906161922828592
#>     Attrib V33    -1.0013663113513416
#>     Attrib V34    -0.45267296842663357
#>     Attrib V35    0.3353896713946234
#>     Attrib V36    -0.4625335285906352
#>     Attrib V37    -0.2878442317992087
#>     Attrib V38    -0.3578357220497876
#>     Attrib V39    0.5071853895852728
#>     Attrib V4    0.41557651851659216
#>     Attrib V40    0.40496312488865205
#>     Attrib V41    0.5631706986927194
#>     Attrib V42    -0.02788611236513105
#>     Attrib V43    0.0851295118736559
#>     Attrib V44    0.45670080772292254
#>     Attrib V45    -0.1469567861019465
#>     Attrib V46    0.6524069458270847
#>     Attrib V47    0.5037162422371526
#>     Attrib V48    1.4586889587678589
#>     Attrib V49    1.3281585283463537
#>     Attrib V5    0.10357956248629796
#>     Attrib V50    -0.42526821782627033
#>     Attrib V51    1.2072757421485039
#>     Attrib V52    1.1223423018531438
#>     Attrib V53    1.527184697788478
#>     Attrib V54    -0.23717330944530748
#>     Attrib V55    -1.227573365266064
#>     Attrib V56    -0.5883605775536551
#>     Attrib V57    -0.896232285096569
#>     Attrib V58    -0.11091936314828271
#>     Attrib V59    -0.10428840963985934
#>     Attrib V6    0.7399971544237792
#>     Attrib V60    -0.49737518110737017
#>     Attrib V7    -0.8746422522884386
#>     Attrib V8    -0.5565504491380029
#>     Attrib V9    0.5505929016487926
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.19303805251350215
#>     Attrib V1    0.0881381712485618
#>     Attrib V10    0.02017293223639497
#>     Attrib V11    -0.0314265887259385
#>     Attrib V12    0.07234810567722684
#>     Attrib V13    0.01639288928437273
#>     Attrib V14    0.09297454335713902
#>     Attrib V15    0.05641075074111899
#>     Attrib V16    0.053870624104760935
#>     Attrib V17    0.0630342388570744
#>     Attrib V18    -0.038518922649808565
#>     Attrib V19    0.06168773285978061
#>     Attrib V2    0.06564338198079299
#>     Attrib V20    0.0044859610239751544
#>     Attrib V21    -0.02040698606395994
#>     Attrib V22    -0.06775705428323589
#>     Attrib V23    -0.07400853407689113
#>     Attrib V24    -0.05028197343273597
#>     Attrib V25    -0.055063504288637474
#>     Attrib V26    -0.09301935175649828
#>     Attrib V27    -0.024365670706405017
#>     Attrib V28    0.013538535146325718
#>     Attrib V29    -0.030858796308657604
#>     Attrib V3    0.04884368943710683
#>     Attrib V30    -0.02163760932192727
#>     Attrib V31    -0.09120442416717503
#>     Attrib V32    0.01916044878322696
#>     Attrib V33    0.06885131251948692
#>     Attrib V34    0.03634304326754473
#>     Attrib V35    0.14577687363364736
#>     Attrib V36    0.11095318215285954
#>     Attrib V37    0.11736831310815982
#>     Attrib V38    0.04968450649247546
#>     Attrib V39    0.07440735965415618
#>     Attrib V4    0.17558294099066932
#>     Attrib V40    -0.0015714852415573655
#>     Attrib V41    0.019505027571270452
#>     Attrib V42    0.07645485292047308
#>     Attrib V43    0.044896963682395305
#>     Attrib V44    0.08425571903245838
#>     Attrib V45    0.035686264425718414
#>     Attrib V46    0.03556218211777097
#>     Attrib V47    0.029951818065599427
#>     Attrib V48    0.15240138410776566
#>     Attrib V49    0.07871008197250853
#>     Attrib V5    0.06515068562239577
#>     Attrib V50    0.04050960823578528
#>     Attrib V51    0.0853866796492931
#>     Attrib V52    0.07031901800774096
#>     Attrib V53    0.09408346973536737
#>     Attrib V54    0.10550345402495821
#>     Attrib V55    0.03320500212767341
#>     Attrib V56    0.1449611292672771
#>     Attrib V57    0.11739422474766607
#>     Attrib V58    0.09273763417247088
#>     Attrib V59    0.18727208625104566
#>     Attrib V6    0.05988325083391677
#>     Attrib V60    0.23726872108526345
#>     Attrib V7    -0.011558464622101031
#>     Attrib V8    -0.020769567278000334
#>     Attrib V9    0.017497306047560335
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.02394827093005453
#>     Attrib V1    0.2744482118085331
#>     Attrib V10    0.3523371755668961
#>     Attrib V11    -0.07737726982980536
#>     Attrib V12    0.2317341265666305
#>     Attrib V13    0.11655714479420012
#>     Attrib V14    -0.2566565410025069
#>     Attrib V15    0.13402172086814532
#>     Attrib V16    0.17110809864982185
#>     Attrib V17    0.018825866934185753
#>     Attrib V18    -0.3451051032731841
#>     Attrib V19    0.333204820802217
#>     Attrib V2    -0.041920528363191094
#>     Attrib V20    0.5624345549129864
#>     Attrib V21    0.5994318168825984
#>     Attrib V22    0.2806960165553246
#>     Attrib V23    0.10658540499405367
#>     Attrib V24    0.3015357243697693
#>     Attrib V25    -0.4560197952325469
#>     Attrib V26    -0.4784474826376543
#>     Attrib V27    -0.36568081917928413
#>     Attrib V28    0.2271812899343654
#>     Attrib V29    -0.2690356963458297
#>     Attrib V3    -0.004485674466616419
#>     Attrib V30    0.04233937393528401
#>     Attrib V31    -0.9932978847339411
#>     Attrib V32    0.44300559871814665
#>     Attrib V33    0.17531640665440082
#>     Attrib V34    0.026051524332012972
#>     Attrib V35    0.27214231302148595
#>     Attrib V36    -0.24274746547142226
#>     Attrib V37    -0.4030017048709601
#>     Attrib V38    0.11338781346223387
#>     Attrib V39    0.10801516811064572
#>     Attrib V4    0.5653311355292123
#>     Attrib V40    -0.644868713738452
#>     Attrib V41    -0.17976334353949075
#>     Attrib V42    0.5753106468879046
#>     Attrib V43    -0.13712545048332161
#>     Attrib V44    0.31083810941253753
#>     Attrib V45    0.2542488893896908
#>     Attrib V46    0.14772331265075742
#>     Attrib V47    -0.06842411958091729
#>     Attrib V48    0.6082666833720941
#>     Attrib V49    0.608973090233613
#>     Attrib V5    0.004817551969171186
#>     Attrib V50    -0.7713585744000724
#>     Attrib V51    0.13604315586582555
#>     Attrib V52    0.19114706036071372
#>     Attrib V53    -0.017927669751601046
#>     Attrib V54    0.14157503616689623
#>     Attrib V55    -0.654554281759274
#>     Attrib V56    0.48003389956546205
#>     Attrib V57    -0.3781007117792798
#>     Attrib V58    0.10237177284087642
#>     Attrib V59    0.3079162864741436
#>     Attrib V6    -0.4749654206293235
#>     Attrib V60    0.348100566903843
#>     Attrib V7    -0.047920434087966875
#>     Attrib V8    -0.699479907791857
#>     Attrib V9    0.1904265804240031
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.49777838988523043
#>     Attrib V1    -0.19222187178083477
#>     Attrib V10    -2.011552185210515
#>     Attrib V11    -1.6828114982004327
#>     Attrib V12    -2.2169007697448677
#>     Attrib V13    -0.9791767484272884
#>     Attrib V14    0.4442334350265938
#>     Attrib V15    1.208339996086654
#>     Attrib V16    0.8472338715902706
#>     Attrib V17    0.5020364148602176
#>     Attrib V18    0.3922605100178927
#>     Attrib V19    -0.09898339785089344
#>     Attrib V2    -0.1016390174897499
#>     Attrib V20    -0.16236007957790224
#>     Attrib V21    -0.38969075494823135
#>     Attrib V22    -0.1436867160343608
#>     Attrib V23    -0.6771331986639092
#>     Attrib V24    -1.4967710082236738
#>     Attrib V25    -0.9696152313897775
#>     Attrib V26    -2.1453785737213025
#>     Attrib V27    -1.5420542931389873
#>     Attrib V28    -0.7292232570369733
#>     Attrib V29    0.0030151965781004993
#>     Attrib V3    -0.2427329359597259
#>     Attrib V30    0.16952199498993942
#>     Attrib V31    0.18334040060524337
#>     Attrib V32    -0.312345375760045
#>     Attrib V33    1.0510147072766676
#>     Attrib V34    0.06785137833732499
#>     Attrib V35    -0.9960062501329169
#>     Attrib V36    0.30992990142174337
#>     Attrib V37    0.5161402867818149
#>     Attrib V38    0.7623706844740131
#>     Attrib V39    -0.5875766716127615
#>     Attrib V4    -0.29057909198347226
#>     Attrib V40    -0.7727917814657906
#>     Attrib V41    -0.4853179373784616
#>     Attrib V42    0.1741457466142316
#>     Attrib V43    0.13333926759851084
#>     Attrib V44    -0.41912321035096345
#>     Attrib V45    0.4432832719535426
#>     Attrib V46    -0.7237147585410922
#>     Attrib V47    -0.9524335221530691
#>     Attrib V48    -2.401655301094665
#>     Attrib V49    -2.052173990837347
#>     Attrib V5    0.05963937170333985
#>     Attrib V50    0.6505936818575002
#>     Attrib V51    -1.6295520983779692
#>     Attrib V52    -1.4854030510990721
#>     Attrib V53    -2.058592243958094
#>     Attrib V54    0.26554578057202305
#>     Attrib V55    1.4457885017484937
#>     Attrib V56    0.5254486725275322
#>     Attrib V57    1.4251673251451094
#>     Attrib V58    0.28120128113363235
#>     Attrib V59    0.6499458034164192
#>     Attrib V6    -0.5283043666914911
#>     Attrib V60    0.7554219444808195
#>     Attrib V7    1.0259756549580867
#>     Attrib V8    0.6595523185154817
#>     Attrib V9    -0.8843553256782308
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.09553163379976269
#>     Attrib V1    0.16800154633748665
#>     Attrib V10    0.15326388685023626
#>     Attrib V11    -0.11316680448766099
#>     Attrib V12    0.13865657170572113
#>     Attrib V13    -8.014478489244055E-4
#>     Attrib V14    -0.1354337591357258
#>     Attrib V15    0.173955313153171
#>     Attrib V16    0.17998244516057557
#>     Attrib V17    0.05329964284031486
#>     Attrib V18    -0.3096104672385555
#>     Attrib V19    0.2608084542420728
#>     Attrib V2    -0.03583843102715163
#>     Attrib V20    0.5422650453183633
#>     Attrib V21    0.47912731197227765
#>     Attrib V22    0.24102051987478268
#>     Attrib V23    0.03559260460871796
#>     Attrib V24    0.23056024795556596
#>     Attrib V25    -0.323665950203304
#>     Attrib V26    -0.5616087868541038
#>     Attrib V27    -0.4312987804453165
#>     Attrib V28    0.03724913989479251
#>     Attrib V29    -0.34450187544804217
#>     Attrib V3    0.06582263259682611
#>     Attrib V30    -0.12973737357999793
#>     Attrib V31    -0.8507845530984107
#>     Attrib V32    0.3970281102692107
#>     Attrib V33    0.24793934751416363
#>     Attrib V34    0.07296546390132175
#>     Attrib V35    0.22058842740179951
#>     Attrib V36    -0.21128650525247206
#>     Attrib V37    -0.2946180863043437
#>     Attrib V38    0.09820955093725633
#>     Attrib V39    0.07818325772701079
#>     Attrib V4    0.44973585310389425
#>     Attrib V40    -0.46626144031087124
#>     Attrib V41    -0.1167563939580466
#>     Attrib V42    0.4574965237689656
#>     Attrib V43    -0.06523723320384885
#>     Attrib V44    0.12853768450296377
#>     Attrib V45    0.1452299305753458
#>     Attrib V46    0.13499845214375164
#>     Attrib V47    -0.010789858790647403
#>     Attrib V48    0.3985706737029674
#>     Attrib V49    0.42547334571576434
#>     Attrib V5    0.021440628217777934
#>     Attrib V50    -0.6163061994491085
#>     Attrib V51    0.11520697831978663
#>     Attrib V52    0.1583057598199784
#>     Attrib V53    -0.060801406661276806
#>     Attrib V54    0.17188000999102557
#>     Attrib V55    -0.4426635944716149
#>     Attrib V56    0.5128604613399216
#>     Attrib V57    -0.2093094862961211
#>     Attrib V58    0.08848043445782808
#>     Attrib V59    0.31099191100907464
#>     Attrib V6    -0.41754996316521004
#>     Attrib V60    0.4360949702450997
#>     Attrib V7    0.022255318364316917
#>     Attrib V8    -0.5867653995344814
#>     Attrib V9    0.08175866571020295
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.05532544023641256
#>     Attrib V1    0.20194528512335586
#>     Attrib V10    0.11092605572226559
#>     Attrib V11    -0.035419989599622684
#>     Attrib V12    0.21252677699431408
#>     Attrib V13    0.11710219015540031
#>     Attrib V14    0.03872039801045066
#>     Attrib V15    0.1400167345613651
#>     Attrib V16    0.07863947754351189
#>     Attrib V17    0.05743153322891306
#>     Attrib V18    -0.1316437367318239
#>     Attrib V19    0.08171838401897884
#>     Attrib V2    0.008803866783419026
#>     Attrib V20    0.16236227104747825
#>     Attrib V21    0.1413016614814794
#>     Attrib V22    -0.03540004278942741
#>     Attrib V23    -0.0746983894931252
#>     Attrib V24    0.06741647601294187
#>     Attrib V25    -0.07646586628086574
#>     Attrib V26    -0.13854425328400163
#>     Attrib V27    -0.16217831555125814
#>     Attrib V28    -0.044920720613442676
#>     Attrib V29    -0.32628793927206035
#>     Attrib V3    0.018115835334774552
#>     Attrib V30    -0.18287785927929429
#>     Attrib V31    -0.350751354113605
#>     Attrib V32    0.10823439324545636
#>     Attrib V33    0.07301493108925985
#>     Attrib V34    0.10791325564870591
#>     Attrib V35    0.2631039002675922
#>     Attrib V36    0.03422295534562709
#>     Attrib V37    0.025136297210500983
#>     Attrib V38    0.11269912258930288
#>     Attrib V39    0.152450737622192
#>     Attrib V4    0.29317884070611033
#>     Attrib V40    -0.17244837426248874
#>     Attrib V41    -0.07955016708813807
#>     Attrib V42    0.19506743750553376
#>     Attrib V43    -0.0442666633065568
#>     Attrib V44    0.01707442626367072
#>     Attrib V45    0.005217160487913058
#>     Attrib V46    0.013777306672014582
#>     Attrib V47    -0.06816955432385247
#>     Attrib V48    0.26241593936619356
#>     Attrib V49    0.19137114371131236
#>     Attrib V5    0.06263223018346108
#>     Attrib V50    -0.23854666393772442
#>     Attrib V51    0.09926484057950323
#>     Attrib V52    0.12806338083320176
#>     Attrib V53    0.156464868958492
#>     Attrib V54    0.27139962670000783
#>     Attrib V55    -0.16381217046963523
#>     Attrib V56    0.3054367261979275
#>     Attrib V57    -0.02417989184974802
#>     Attrib V58    0.12590269790078057
#>     Attrib V59    0.39073725611498666
#>     Attrib V6    -0.10887530197197459
#>     Attrib V60    0.3703494518023162
#>     Attrib V7    -0.08263604429689067
#>     Attrib V8    -0.4175401513528059
#>     Attrib V9    -0.04173816745805235
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.17251371946759272
#>     Attrib V1    0.32168536888328636
#>     Attrib V10    0.04978247322962459
#>     Attrib V11    -0.21966321981148565
#>     Attrib V12    0.06790343421198594
#>     Attrib V13    -0.10201895062128583
#>     Attrib V14    -0.3045701585741439
#>     Attrib V15    0.2768795060682468
#>     Attrib V16    0.35185805958359184
#>     Attrib V17    0.18915413534992112
#>     Attrib V18    -0.40560208644253287
#>     Attrib V19    0.2970191119524179
#>     Attrib V2    0.0822847079134121
#>     Attrib V20    0.6180252838594442
#>     Attrib V21    0.35632700539692713
#>     Attrib V22    0.14744398978682557
#>     Attrib V23    -0.057928335637651485
#>     Attrib V24    0.15046316053672165
#>     Attrib V25    -0.49230465545534824
#>     Attrib V26    -0.8194825836478035
#>     Attrib V27    -0.836600465378988
#>     Attrib V28    -0.322199151004245
#>     Attrib V29    -0.8965794697217665
#>     Attrib V3    -3.19665254325659E-4
#>     Attrib V30    -0.32632320408760324
#>     Attrib V31    -1.0294906405294
#>     Attrib V32    0.5396550233460189
#>     Attrib V33    0.5260187796445911
#>     Attrib V34    0.2643247842345637
#>     Attrib V35    0.2712817939611164
#>     Attrib V36    -0.219419743207401
#>     Attrib V37    -0.23503660069001822
#>     Attrib V38    0.32894326982748284
#>     Attrib V39    0.10477036808270132
#>     Attrib V4    0.6033666387268994
#>     Attrib V40    -0.589906486397494
#>     Attrib V41    -0.21373806880618754
#>     Attrib V42    0.5948198777368129
#>     Attrib V43    -0.12950812563272687
#>     Attrib V44    0.15050809386052755
#>     Attrib V45    0.049906829328454416
#>     Attrib V46    0.04422861136659794
#>     Attrib V47    -0.16636703445667406
#>     Attrib V48    0.39507981312438795
#>     Attrib V49    0.3860741653713345
#>     Attrib V5    0.06924786623098898
#>     Attrib V50    -0.8077103090060894
#>     Attrib V51    0.04911104636166451
#>     Attrib V52    0.10713747231061295
#>     Attrib V53    -0.13034959763182308
#>     Attrib V54    0.4584598744330503
#>     Attrib V55    -0.39457943173794335
#>     Attrib V56    0.7616442124987045
#>     Attrib V57    -0.04822028254437369
#>     Attrib V58    0.13612142011553807
#>     Attrib V59    0.5450105492172068
#>     Attrib V6    -0.5656733565444696
#>     Attrib V60    0.6675665499794486
#>     Attrib V7    0.1006341186534701
#>     Attrib V8    -0.8238274829824936
#>     Attrib V9    0.016659513259876756
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.1164165999230201
#>     Attrib V1    0.2670876076320211
#>     Attrib V10    -0.04656699242888306
#>     Attrib V11    -0.28366164857307674
#>     Attrib V12    -0.04301664358327472
#>     Attrib V13    -0.054341281928735746
#>     Attrib V14    -0.0011251588493885081
#>     Attrib V15    0.2801652504988088
#>     Attrib V16    0.2821840282071952
#>     Attrib V17    0.07870516247286573
#>     Attrib V18    -0.15765031832745396
#>     Attrib V19    0.17839835292255296
#>     Attrib V2    0.015539362201602536
#>     Attrib V20    0.4353988318256812
#>     Attrib V21    0.41538192234154664
#>     Attrib V22    0.1411512382679564
#>     Attrib V23    -0.007005136900540128
#>     Attrib V24    -0.004663163002476249
#>     Attrib V25    -0.5164057314595739
#>     Attrib V26    -0.6487328142538737
#>     Attrib V27    -0.44981351882459675
#>     Attrib V28    0.06281975450628612
#>     Attrib V29    -0.21707999686742957
#>     Attrib V3    0.09418333237294617
#>     Attrib V30    -0.03432190178721687
#>     Attrib V31    -0.8021828261885294
#>     Attrib V32    0.22234568248142766
#>     Attrib V33    0.2213445327056606
#>     Attrib V34    0.03473335878173745
#>     Attrib V35    0.1216092726723819
#>     Attrib V36    -0.10506416870493666
#>     Attrib V37    -0.1721123364440315
#>     Attrib V38    0.12690484370568758
#>     Attrib V39    0.07656498570125751
#>     Attrib V4    0.4268375457843439
#>     Attrib V40    -0.42293509069904783
#>     Attrib V41    -0.11781525676012679
#>     Attrib V42    0.4610424322919331
#>     Attrib V43    -0.10324590296073216
#>     Attrib V44    0.15962587250945545
#>     Attrib V45    0.12390106316759997
#>     Attrib V46    0.09017865381737192
#>     Attrib V47    -0.0996971739989163
#>     Attrib V48    0.19980684361081433
#>     Attrib V49    0.3007527146433331
#>     Attrib V5    0.10021166497367899
#>     Attrib V50    -0.5019347131075476
#>     Attrib V51    0.056930520389803424
#>     Attrib V52    0.09488960274438148
#>     Attrib V53    -0.035440461916396125
#>     Attrib V54    0.1808861445431647
#>     Attrib V55    -0.3748750688538838
#>     Attrib V56    0.44037275459219344
#>     Attrib V57    -0.05871157597978738
#>     Attrib V58    0.20320713357623485
#>     Attrib V59    0.38579312366976026
#>     Attrib V6    -0.2942244388215084
#>     Attrib V60    0.4566075798903865
#>     Attrib V7    0.06786358800274152
#>     Attrib V8    -0.4858573726970536
#>     Attrib V9    -0.006837638770267149
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
