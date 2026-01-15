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
#>     Threshold    0.07707532811493424
#>     Node 2    2.5328932745192687
#>     Node 3    1.469829442005673
#>     Node 4    0.8417153640892074
#>     Node 5    -1.5022753436433964
#>     Node 6    0.9148518899299128
#>     Node 7    3.136573204537439
#>     Node 8    0.527699825051694
#>     Node 9    3.5113373345272265
#>     Node 10    -1.4698048441035134
#>     Node 11    1.4942557623460422
#>     Node 12    1.956594302891099
#>     Node 13    0.9042355465604379
#>     Node 14    0.9618318224267661
#>     Node 15    -2.0345108296266625
#>     Node 16    -0.23192821815892234
#>     Node 17    -0.23357162270394274
#>     Node 18    -0.4057765704173375
#>     Node 19    1.5290064194386503
#>     Node 20    2.027715766291593
#>     Node 21    -1.8081242259240464
#>     Node 22    0.41212912302332394
#>     Node 23    0.5868525127372115
#>     Node 24    -1.3542371440448895
#>     Node 25    4.528751125789728
#>     Node 26    -0.30428621888866547
#>     Node 27    1.6792045926253143
#>     Node 28    -3.1874372321720577
#>     Node 29    1.3285778062804663
#>     Node 30    -0.20299520474109023
#>     Node 31    0.8009886154787081
#>     Node 32    1.0521475499164226
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.04563968702980727
#>     Node 2    -2.561305126292532
#>     Node 3    -1.4411317556571022
#>     Node 4    -0.804658383070239
#>     Node 5    1.5140949219547313
#>     Node 6    -0.8942459856327737
#>     Node 7    -3.1456881179904674
#>     Node 8    -0.5694100268332637
#>     Node 9    -3.52367093907847
#>     Node 10    1.406853131638831
#>     Node 11    -1.4487887309379384
#>     Node 12    -2.017825004402199
#>     Node 13    -0.8522726675261918
#>     Node 14    -0.8945122500711125
#>     Node 15    2.0126907940199077
#>     Node 16    0.21394662211476254
#>     Node 17    0.2636382594496125
#>     Node 18    0.4451763305600921
#>     Node 19    -1.5339311116480299
#>     Node 20    -2.013335458186031
#>     Node 21    1.8477441823424858
#>     Node 22    -0.4689180803420897
#>     Node 23    -0.6352765909575829
#>     Node 24    1.3374349841194635
#>     Node 25    -4.53560744679395
#>     Node 26    0.21613559609529173
#>     Node 27    -1.7058867030386733
#>     Node 28    3.161011731436978
#>     Node 29    -1.3535806267401138
#>     Node 30    0.27616267011934303
#>     Node 31    -0.7433080660260014
#>     Node 32    -1.0652295568745533
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.1952439923778314
#>     Attrib V1    0.4452597375012925
#>     Attrib V10    -0.7078462549229412
#>     Attrib V11    -0.5424501475740161
#>     Attrib V12    -0.08493102755745668
#>     Attrib V13    -0.4716292151304011
#>     Attrib V14    0.3052152582316905
#>     Attrib V15    1.004388306043279
#>     Attrib V16    0.558307604062996
#>     Attrib V17    0.13443705987613677
#>     Attrib V18    -0.2521386973774954
#>     Attrib V19    -0.09687181051921383
#>     Attrib V2    0.15059444025930924
#>     Attrib V20    0.5933518525570874
#>     Attrib V21    1.0837622953358206
#>     Attrib V22    0.32076248844994515
#>     Attrib V23    0.04227040979894429
#>     Attrib V24    0.004750883603975905
#>     Attrib V25    -1.2561572129219136
#>     Attrib V26    -1.1429025082725122
#>     Attrib V27    -0.5527650751579445
#>     Attrib V28    -0.3712415955854784
#>     Attrib V29    0.0727023816434447
#>     Attrib V3    -0.10248877784784932
#>     Attrib V30    0.6292765381591048
#>     Attrib V31    -1.026950926953692
#>     Attrib V32    -0.2907793634309948
#>     Attrib V33    0.035389469190807425
#>     Attrib V34    -0.15399317854002748
#>     Attrib V35    -0.5138851571704185
#>     Attrib V36    -0.5123212513345893
#>     Attrib V37    -0.688903865566781
#>     Attrib V38    0.08287980770594391
#>     Attrib V39    0.3438154319650056
#>     Attrib V4    0.28211949762799393
#>     Attrib V40    -0.39756615200937245
#>     Attrib V41    -0.30860580689637
#>     Attrib V42    0.6015305331458799
#>     Attrib V43    0.7373451884575231
#>     Attrib V44    0.7031638346448352
#>     Attrib V45    0.5187140325884148
#>     Attrib V46    0.06476374482465667
#>     Attrib V47    -0.43582009270860883
#>     Attrib V48    0.025401041977547095
#>     Attrib V49    0.35700569841605445
#>     Attrib V5    -0.23628450903933293
#>     Attrib V50    -0.37013533906589235
#>     Attrib V51    0.03683244761622081
#>     Attrib V52    -0.08229711170347076
#>     Attrib V53    0.01226086114779475
#>     Attrib V54    0.9468300980103639
#>     Attrib V55    0.14206326279464773
#>     Attrib V56    0.4740337659036659
#>     Attrib V57    0.004229072567886525
#>     Attrib V58    0.6387753284176139
#>     Attrib V59    0.7914622603454754
#>     Attrib V6    -0.34005034044822
#>     Attrib V60    0.9608453062402897
#>     Attrib V7    -0.4058402146418252
#>     Attrib V8    0.18161281706848553
#>     Attrib V9    -0.14352798768295702
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.06594843074823634
#>     Attrib V1    0.2660405862722421
#>     Attrib V10    -0.4330248171069403
#>     Attrib V11    -0.32616921362924056
#>     Attrib V12    0.013640293239054116
#>     Attrib V13    -0.24476050072362715
#>     Attrib V14    0.19746144007821445
#>     Attrib V15    0.6528373260875321
#>     Attrib V16    0.326293809045426
#>     Attrib V17    0.12100718994422059
#>     Attrib V18    -0.120043032922568
#>     Attrib V19    0.047851278327492495
#>     Attrib V2    0.14398295224180896
#>     Attrib V20    0.3326618417700749
#>     Attrib V21    0.4940595463202884
#>     Attrib V22    0.13872675140982704
#>     Attrib V23    -0.08058813516031868
#>     Attrib V24    -0.08239309281748243
#>     Attrib V25    -0.713872451538796
#>     Attrib V26    -0.7019764986943574
#>     Attrib V27    -0.45923200081212356
#>     Attrib V28    -0.4496756833368951
#>     Attrib V29    -0.22965134827541017
#>     Attrib V3    -0.028465655794578
#>     Attrib V30    0.24301917364432096
#>     Attrib V31    -0.5686757334191237
#>     Attrib V32    -0.1383084117076231
#>     Attrib V33    0.04433989302110585
#>     Attrib V34    -0.08662970170773156
#>     Attrib V35    -0.24654801667327217
#>     Attrib V36    -0.2864021074303412
#>     Attrib V37    -0.4167084419406922
#>     Attrib V38    -0.0053646866905232215
#>     Attrib V39    0.22388871166623373
#>     Attrib V4    0.20055321773178403
#>     Attrib V40    -0.2191216861239596
#>     Attrib V41    -0.20205577411624098
#>     Attrib V42    0.2903257612963429
#>     Attrib V43    0.39623076205034696
#>     Attrib V44    0.3697941292998654
#>     Attrib V45    0.23054498151401784
#>     Attrib V46    -0.007587883058678452
#>     Attrib V47    -0.22602669005323534
#>     Attrib V48    0.005713774747876294
#>     Attrib V49    0.18149466692432928
#>     Attrib V5    -0.11316913447314307
#>     Attrib V50    -0.1607508486102068
#>     Attrib V51    0.020857588235057446
#>     Attrib V52    0.003676265678774271
#>     Attrib V53    0.07607591550077863
#>     Attrib V54    0.6592599792349
#>     Attrib V55    0.24641002171631401
#>     Attrib V56    0.38509413571650414
#>     Attrib V57    0.11034152535667818
#>     Attrib V58    0.45523766330781257
#>     Attrib V59    0.5130397089171778
#>     Attrib V6    -0.22829576210685348
#>     Attrib V60    0.6013096647872941
#>     Attrib V7    -0.3047886718780595
#>     Attrib V8    0.060682447429314744
#>     Attrib V9    -0.1658679491651904
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.004005199643193585
#>     Attrib V1    0.11502260253161674
#>     Attrib V10    -0.22155089383294221
#>     Attrib V11    -0.13134628115088726
#>     Attrib V12    0.067930043986838
#>     Attrib V13    -0.11355916277846902
#>     Attrib V14    0.11172917107720953
#>     Attrib V15    0.3533021624647652
#>     Attrib V16    0.15668558816677314
#>     Attrib V17    0.026308542965476883
#>     Attrib V18    -0.11105793591616393
#>     Attrib V19    -0.042795347305770524
#>     Attrib V2    0.0498289503045778
#>     Attrib V20    0.07007672443779277
#>     Attrib V21    0.21024931376810402
#>     Attrib V22    -0.06264936130968392
#>     Attrib V23    -0.1584094772781884
#>     Attrib V24    -0.10623855006430384
#>     Attrib V25    -0.46231292829402965
#>     Attrib V26    -0.3876564698518982
#>     Attrib V27    -0.2699192345275087
#>     Attrib V28    -0.20536959219709028
#>     Attrib V29    -0.04700863112131686
#>     Attrib V3    0.024053834106094685
#>     Attrib V30    0.1091332457585621
#>     Attrib V31    -0.3023968646819844
#>     Attrib V32    -0.04411969962950301
#>     Attrib V33    0.0525646351218197
#>     Attrib V34    0.024596438087222155
#>     Attrib V35    -0.12269433707457995
#>     Attrib V36    -0.20140742294550237
#>     Attrib V37    -0.2707117088505072
#>     Attrib V38    -0.02764715077379511
#>     Attrib V39    0.1352067085775701
#>     Attrib V4    0.12582537671756283
#>     Attrib V40    -0.10194367913852141
#>     Attrib V41    -0.07343008215823903
#>     Attrib V42    0.1750852511627477
#>     Attrib V43    0.20640664018936672
#>     Attrib V44    0.21156833679187337
#>     Attrib V45    0.2334770718454918
#>     Attrib V46    0.03944679876615593
#>     Attrib V47    -0.1289993840581071
#>     Attrib V48    0.11688311810104286
#>     Attrib V49    0.2159184718018973
#>     Attrib V5    0.051043997223555286
#>     Attrib V50    -0.09748807720274633
#>     Attrib V51    0.0865510005370052
#>     Attrib V52    0.06920105975738514
#>     Attrib V53    0.1480988224736754
#>     Attrib V54    0.27342945460122225
#>     Attrib V55    0.16958131057237658
#>     Attrib V56    0.1630138783421195
#>     Attrib V57    0.09491511674915046
#>     Attrib V58    0.25838598780097766
#>     Attrib V59    0.3250398164566609
#>     Attrib V6    -0.10436393574270482
#>     Attrib V60    0.38492524591094496
#>     Attrib V7    -0.15943735707105677
#>     Attrib V8    -0.025629585017838605
#>     Attrib V9    -0.047414406847708826
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.45487692262683915
#>     Attrib V1    -0.06902220746542938
#>     Attrib V10    0.08021594666378332
#>     Attrib V11    -0.02878958721505219
#>     Attrib V12    -0.44579439307202595
#>     Attrib V13    0.1120770980374133
#>     Attrib V14    0.16148753114476547
#>     Attrib V15    -0.371351219502405
#>     Attrib V16    -0.1364959374064773
#>     Attrib V17    0.2924057354345871
#>     Attrib V18    0.4601671416039345
#>     Attrib V19    0.09384208989754739
#>     Attrib V2    0.04813068847708265
#>     Attrib V20    -0.07573965255133477
#>     Attrib V21    -0.48182405427146097
#>     Attrib V22    -0.43770672278424083
#>     Attrib V23    -0.22445355115442234
#>     Attrib V24    -0.28917362552877474
#>     Attrib V25    0.6990015103735085
#>     Attrib V26    0.25757522348119505
#>     Attrib V27    -0.28842350374963893
#>     Attrib V28    -0.4264076969239658
#>     Attrib V29    -0.6143420624486516
#>     Attrib V3    0.32698199791403915
#>     Attrib V30    -0.6461031659721536
#>     Attrib V31    0.572824602147554
#>     Attrib V32    -0.19907742865671518
#>     Attrib V33    -0.16245416001601223
#>     Attrib V34    -0.10176761865433123
#>     Attrib V35    0.2485325332149008
#>     Attrib V36    0.5286867828052926
#>     Attrib V37    0.5550259986318159
#>     Attrib V38    -0.01090087101840357
#>     Attrib V39    -0.1503564163075849
#>     Attrib V4    0.021214552559038424
#>     Attrib V40    0.294787283575631
#>     Attrib V41    -0.3052176901612202
#>     Attrib V42    -0.28836160246790304
#>     Attrib V43    -0.46622219192642017
#>     Attrib V44    -0.4283160924839375
#>     Attrib V45    -0.5858774073949885
#>     Attrib V46    -0.3497720390251175
#>     Attrib V47    0.14841432043225541
#>     Attrib V48    -0.25346346523625746
#>     Attrib V49    -0.6575981426075292
#>     Attrib V5    0.07177404441924465
#>     Attrib V50    0.6649825286993655
#>     Attrib V51    -0.19088357483984505
#>     Attrib V52    -0.4042139158411733
#>     Attrib V53    -0.04872701714779028
#>     Attrib V54    -0.5304763655681373
#>     Attrib V55    0.08207119085107654
#>     Attrib V56    0.3077500122882201
#>     Attrib V57    0.3083752122793319
#>     Attrib V58    -0.5146834239473559
#>     Attrib V59    -0.15703133885862233
#>     Attrib V6    0.15281223895175147
#>     Attrib V60    -0.40659480734920833
#>     Attrib V7    0.6526314434331544
#>     Attrib V8    0.29529425297100365
#>     Attrib V9    -0.08992596934996139
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.09445655871953536
#>     Attrib V1    0.193566169893954
#>     Attrib V10    -0.28580730869518645
#>     Attrib V11    -0.1550554126971175
#>     Attrib V12    0.11092708086201061
#>     Attrib V13    -0.18271958949833075
#>     Attrib V14    0.0777372734833568
#>     Attrib V15    0.3377089678301826
#>     Attrib V16    0.24158717778370625
#>     Attrib V17    0.01999051975383715
#>     Attrib V18    -0.04694895841024097
#>     Attrib V19    -0.018198961252659334
#>     Attrib V2    0.09185178345468988
#>     Attrib V20    0.14316419441118947
#>     Attrib V21    0.27203801605896194
#>     Attrib V22    -0.017484816920938246
#>     Attrib V23    -0.1353789033144346
#>     Attrib V24    -0.025349111850884388
#>     Attrib V25    -0.4097375285791713
#>     Attrib V26    -0.41273739756921135
#>     Attrib V27    -0.21546449159604986
#>     Attrib V28    -0.2682249456793753
#>     Attrib V29    -0.08130200924326873
#>     Attrib V3    -0.008857894942121757
#>     Attrib V30    0.10970072098381974
#>     Attrib V31    -0.3738715110142278
#>     Attrib V32    -0.027584011777609028
#>     Attrib V33    0.04516384613740934
#>     Attrib V34    -0.004206542428582995
#>     Attrib V35    -0.1197073405278487
#>     Attrib V36    -0.2375461662299584
#>     Attrib V37    -0.287507501824362
#>     Attrib V38    8.187135283433017E-5
#>     Attrib V39    0.12190504021611591
#>     Attrib V4    0.18030736886071252
#>     Attrib V40    -0.1715010854456368
#>     Attrib V41    -0.0436196395285766
#>     Attrib V42    0.19192580099416742
#>     Attrib V43    0.24566780046943643
#>     Attrib V44    0.22544504808127833
#>     Attrib V45    0.20501562958662803
#>     Attrib V46    0.07037631060545912
#>     Attrib V47    -0.14596553179859317
#>     Attrib V48    0.044931626151203136
#>     Attrib V49    0.15130421234329972
#>     Attrib V5    0.0036674109668485173
#>     Attrib V50    -0.1184154398285245
#>     Attrib V51    0.045606266950556536
#>     Attrib V52    0.029273575263404704
#>     Attrib V53    0.1890246853864194
#>     Attrib V54    0.37641309029374825
#>     Attrib V55    0.15955781860567317
#>     Attrib V56    0.21011275596949605
#>     Attrib V57    0.09315777992442548
#>     Attrib V58    0.30824686490713393
#>     Attrib V59    0.3993655226400328
#>     Attrib V6    -0.05027676342796501
#>     Attrib V60    0.4632495601394777
#>     Attrib V7    -0.1790785197941899
#>     Attrib V8    0.024051100139786053
#>     Attrib V9    -0.050452552550538037
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.49936901454485627
#>     Attrib V1    0.07785847098077013
#>     Attrib V10    0.8465857239810028
#>     Attrib V11    0.729908955687352
#>     Attrib V12    1.0284967910321885
#>     Attrib V13    0.28161889605221674
#>     Attrib V14    -0.4295996351946364
#>     Attrib V15    -0.10488435310040117
#>     Attrib V16    -0.28576794344239265
#>     Attrib V17    -0.6834333180847547
#>     Attrib V18    -0.7842151789019375
#>     Attrib V19    -0.47691633951418
#>     Attrib V2    0.09085908979730255
#>     Attrib V20    -0.874514772015835
#>     Attrib V21    -0.16702161684444725
#>     Attrib V22    0.494802408402275
#>     Attrib V23    0.37342638619477003
#>     Attrib V24    0.45595297155661263
#>     Attrib V25    0.0833711762204006
#>     Attrib V26    0.7624078168304435
#>     Attrib V27    1.0945262842777923
#>     Attrib V28    1.3254266420012604
#>     Attrib V29    1.1683423624718285
#>     Attrib V3    -0.015133678297130172
#>     Attrib V30    0.4374270212513621
#>     Attrib V31    -0.34366380135247293
#>     Attrib V32    0.26814106605144683
#>     Attrib V33    -0.07773801676242637
#>     Attrib V34    0.22747276785090165
#>     Attrib V35    0.0669598813596918
#>     Attrib V36    -0.40970719225454166
#>     Attrib V37    -0.24001938897203595
#>     Attrib V38    -0.07457736875563185
#>     Attrib V39    1.1148222973654197E-4
#>     Attrib V4    0.014743304736089547
#>     Attrib V40    0.13611704295526741
#>     Attrib V41    1.278567854426425
#>     Attrib V42    0.1419608625599343
#>     Attrib V43    0.08500036390612946
#>     Attrib V44    0.13110645631333226
#>     Attrib V45    0.5619768458717526
#>     Attrib V46    0.8839340048559482
#>     Attrib V47    0.39711849290721085
#>     Attrib V48    0.6054815726607823
#>     Attrib V49    0.9269099327186163
#>     Attrib V5    0.8284476926318562
#>     Attrib V50    -0.6372768042999255
#>     Attrib V51    0.5779210558846947
#>     Attrib V52    0.9513603923754363
#>     Attrib V53    0.45991427912732996
#>     Attrib V54    0.052350389473695844
#>     Attrib V55    -0.14051785114875134
#>     Attrib V56    -1.102415454716231
#>     Attrib V57    -0.3943475363293223
#>     Attrib V58    0.3287366027471394
#>     Attrib V59    0.1899397116084386
#>     Attrib V6    0.6038212126995376
#>     Attrib V60    0.7582832272914334
#>     Attrib V7    -0.25171845309348473
#>     Attrib V8    -0.6782654665359296
#>     Attrib V9    0.5225866361197063
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.017892384963582707
#>     Attrib V1    0.08513160762610862
#>     Attrib V10    -0.043791489727599435
#>     Attrib V11    -0.0029732222642479184
#>     Attrib V12    0.0626625177594995
#>     Attrib V13    -0.06428034258266782
#>     Attrib V14    -0.03036532159227997
#>     Attrib V15    0.0889096618579364
#>     Attrib V16    0.07179515292138094
#>     Attrib V17    -0.08700332551013995
#>     Attrib V18    -0.17987982311645062
#>     Attrib V19    -0.09834195361273017
#>     Attrib V2    0.08305552335374558
#>     Attrib V20    -0.14231417669982818
#>     Attrib V21    -0.0606180743553065
#>     Attrib V22    -0.16905831138495184
#>     Attrib V23    -0.20979293410066308
#>     Attrib V24    -0.06353790681502643
#>     Attrib V25    -0.20404071669339888
#>     Attrib V26    -0.12563805431707267
#>     Attrib V27    -0.0639217684645361
#>     Attrib V28    -0.04292843333067898
#>     Attrib V29    0.03058306893647632
#>     Attrib V3    0.04592474447878848
#>     Attrib V30    0.09243536055763787
#>     Attrib V31    -0.08964158794991697
#>     Attrib V32    0.08340263416593512
#>     Attrib V33    0.10536639433447313
#>     Attrib V34    0.06544237359336637
#>     Attrib V35    -0.03490045706589303
#>     Attrib V36    -0.06497176692644953
#>     Attrib V37    -0.1434557018687349
#>     Attrib V38    0.05600474593780662
#>     Attrib V39    0.10039402431437654
#>     Attrib V4    0.17487863684868696
#>     Attrib V40    -0.016142564800372516
#>     Attrib V41    0.03490916204084914
#>     Attrib V42    0.015478081676349736
#>     Attrib V43    0.10743881137195709
#>     Attrib V44    0.17164368824833406
#>     Attrib V45    0.1593373137517347
#>     Attrib V46    0.14539525592055697
#>     Attrib V47    0.02433357283659746
#>     Attrib V48    0.16556782224442707
#>     Attrib V49    0.17415664693700783
#>     Attrib V5    0.08666095389876324
#>     Attrib V50    -0.06879466712545562
#>     Attrib V51    0.051682851751813294
#>     Attrib V52    0.09115247169217844
#>     Attrib V53    0.1623373157481247
#>     Attrib V54    0.15716452179747578
#>     Attrib V55    0.10629896829807912
#>     Attrib V56    0.028914249605581387
#>     Attrib V57    0.1540377388975508
#>     Attrib V58    0.15835718823397318
#>     Attrib V59    0.2410603184967191
#>     Attrib V6    -0.008086312990484196
#>     Attrib V60    0.31707903649125013
#>     Attrib V7    -0.05437274841129978
#>     Attrib V8    -0.014936461441442395
#>     Attrib V9    0.004054772017853836
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.46439899835932275
#>     Attrib V1    -0.02591355896698916
#>     Attrib V10    1.0458841864927955
#>     Attrib V11    0.7525096415169169
#>     Attrib V12    1.1790851565516387
#>     Attrib V13    0.3988367828033729
#>     Attrib V14    -0.5162238069516695
#>     Attrib V15    -0.1510105641684701
#>     Attrib V16    -0.2871201640455636
#>     Attrib V17    -0.6252892237213596
#>     Attrib V18    -0.7378149483754165
#>     Attrib V19    -0.4407776481734
#>     Attrib V2    0.08577839139551414
#>     Attrib V20    -0.9276637589101664
#>     Attrib V21    -0.21040155557751636
#>     Attrib V22    0.5726226792068662
#>     Attrib V23    0.4458368665746959
#>     Attrib V24    0.6186314987963087
#>     Attrib V25    0.31434080609530124
#>     Attrib V26    0.9462543929659892
#>     Attrib V27    1.2580227383660783
#>     Attrib V28    1.439041569650002
#>     Attrib V29    1.1265271609048886
#>     Attrib V3    -0.04079331868388292
#>     Attrib V30    0.36343791033617817
#>     Attrib V31    -0.3927069368220062
#>     Attrib V32    0.3204465882395352
#>     Attrib V33    -0.0790305229495931
#>     Attrib V34    0.3257462366374025
#>     Attrib V35    0.11925718255954015
#>     Attrib V36    -0.3874661308738511
#>     Attrib V37    -0.2595075313570409
#>     Attrib V38    -0.0645155782794792
#>     Attrib V39    0.07357165772293563
#>     Attrib V4    -0.04513748751955295
#>     Attrib V40    0.18464445702803958
#>     Attrib V41    1.4248928802198753
#>     Attrib V42    0.0741523732856531
#>     Attrib V43    0.04628797300102036
#>     Attrib V44    0.02908011018858021
#>     Attrib V45    0.5247599091434613
#>     Attrib V46    0.9362769661203
#>     Attrib V47    0.44187987505723025
#>     Attrib V48    0.6373526186318773
#>     Attrib V49    0.9907396718411497
#>     Attrib V5    0.9174933449057475
#>     Attrib V50    -0.676332791813156
#>     Attrib V51    0.6679996121062878
#>     Attrib V52    1.0352673385372655
#>     Attrib V53    0.7107595531141105
#>     Attrib V54    0.1132301913866363
#>     Attrib V55    -0.06580076523799444
#>     Attrib V56    -1.1406528814695982
#>     Attrib V57    -0.46125541060725045
#>     Attrib V58    0.27221873542349817
#>     Attrib V59    0.1542068879603991
#>     Attrib V6    0.7210674119303859
#>     Attrib V60    0.7333195510900992
#>     Attrib V7    -0.24663805262172414
#>     Attrib V8    -0.7209411049678809
#>     Attrib V9    0.5390573726576794
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.45954835541640815
#>     Attrib V1    -0.042894136135768667
#>     Attrib V10    0.02488749932700842
#>     Attrib V11    -0.07434652573287061
#>     Attrib V12    -0.37635757903758416
#>     Attrib V13    0.18109816516159585
#>     Attrib V14    0.21052630785139945
#>     Attrib V15    -0.4306330155210275
#>     Attrib V16    -0.12559146396128887
#>     Attrib V17    0.1677871360974975
#>     Attrib V18    0.47249233247581074
#>     Attrib V19    0.1786779965861832
#>     Attrib V2    0.01070991948556567
#>     Attrib V20    0.07178394161980249
#>     Attrib V21    -0.382913231380214
#>     Attrib V22    -0.3902500788842515
#>     Attrib V23    -0.23879329250560585
#>     Attrib V24    -0.3146573369618372
#>     Attrib V25    0.5579045996841124
#>     Attrib V26    0.2552675802556656
#>     Attrib V27    -0.2241868403442527
#>     Attrib V28    -0.38062298746697815
#>     Attrib V29    -0.6551858099511547
#>     Attrib V3    0.2786861623236448
#>     Attrib V30    -0.6685163167386506
#>     Attrib V31    0.4948823955950107
#>     Attrib V32    -0.26782890646759816
#>     Attrib V33    -0.12451811193331098
#>     Attrib V34    -0.039492320039547474
#>     Attrib V35    0.24854721061992502
#>     Attrib V36    0.46593488958467066
#>     Attrib V37    0.5205270048658303
#>     Attrib V38    0.05490117573189867
#>     Attrib V39    -0.15717988417145787
#>     Attrib V4    0.03396427172277196
#>     Attrib V40    0.3070105544677457
#>     Attrib V41    -0.22838459792797242
#>     Attrib V42    -0.3142212566656581
#>     Attrib V43    -0.448127702041412
#>     Attrib V44    -0.4381909017491187
#>     Attrib V45    -0.5180110340153035
#>     Attrib V46    -0.3264311454051574
#>     Attrib V47    0.1423211016912925
#>     Attrib V48    -0.22690194144217532
#>     Attrib V49    -0.5860567141410902
#>     Attrib V5    0.03899965164703027
#>     Attrib V50    0.6657220986255876
#>     Attrib V51    -0.22444947064496448
#>     Attrib V52    -0.4007155665680693
#>     Attrib V53    0.03085837839564343
#>     Attrib V54    -0.43299039442614806
#>     Attrib V55    0.05868771423306003
#>     Attrib V56    0.2463544963496311
#>     Attrib V57    0.3023228996879416
#>     Attrib V58    -0.4656417782548183
#>     Attrib V59    -0.1698042053430743
#>     Attrib V6    0.12162602716828841
#>     Attrib V60    -0.43815157289621004
#>     Attrib V7    0.543133965760602
#>     Attrib V8    0.20449824934951819
#>     Attrib V9    -0.12996082583694463
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.10049493586325409
#>     Attrib V1    0.20846484003514382
#>     Attrib V10    -0.4463449681290272
#>     Attrib V11    -0.29597578954319403
#>     Attrib V12    0.03135696603815192
#>     Attrib V13    -0.3354169193508389
#>     Attrib V14    0.1245957535251434
#>     Attrib V15    0.5801972183893045
#>     Attrib V16    0.3725930705751807
#>     Attrib V17    0.18178132238180025
#>     Attrib V18    -0.06254132291457808
#>     Attrib V19    0.031189445070340112
#>     Attrib V2    0.0523763374477177
#>     Attrib V20    0.3987069904168022
#>     Attrib V21    0.5279962823521877
#>     Attrib V22    0.0877197999991954
#>     Attrib V23    -0.07115286606808253
#>     Attrib V24    -0.029449385122779538
#>     Attrib V25    -0.6957681884486403
#>     Attrib V26    -0.7387404547838787
#>     Attrib V27    -0.4445361580055644
#>     Attrib V28    -0.40144067135092004
#>     Attrib V29    -0.1441067088666583
#>     Attrib V3    -0.13236437410801682
#>     Attrib V30    0.25031304575837526
#>     Attrib V31    -0.6526847318114805
#>     Attrib V32    -0.16700192299853922
#>     Attrib V33    0.05241186002796722
#>     Attrib V34    0.028260837871104647
#>     Attrib V35    -0.1796589235176621
#>     Attrib V36    -0.24508779061291996
#>     Attrib V37    -0.4140379724926833
#>     Attrib V38    0.10668195823334688
#>     Attrib V39    0.20805920927230603
#>     Attrib V4    0.1646948796132256
#>     Attrib V40    -0.2627108185251785
#>     Attrib V41    -0.2485647094085268
#>     Attrib V42    0.2813574189371457
#>     Attrib V43    0.4019482239714686
#>     Attrib V44    0.41739784793973683
#>     Attrib V45    0.35243003426214387
#>     Attrib V46    0.02610531531700042
#>     Attrib V47    -0.23793000314563642
#>     Attrib V48    0.07871906204589325
#>     Attrib V49    0.22391676680609413
#>     Attrib V5    -0.09490869938085482
#>     Attrib V50    -0.16462320725689036
#>     Attrib V51    0.1009753497057712
#>     Attrib V52    -0.037716954330144346
#>     Attrib V53    0.07228351943319497
#>     Attrib V54    0.697866385269992
#>     Attrib V55    0.22617231035176666
#>     Attrib V56    0.3719572497324529
#>     Attrib V57    0.08477206162960958
#>     Attrib V58    0.43106450252848927
#>     Attrib V59    0.4525849675049959
#>     Attrib V6    -0.17102250935535152
#>     Attrib V60    0.6116984620645279
#>     Attrib V7    -0.3080963326089477
#>     Attrib V8    0.06331446108596266
#>     Attrib V9    -0.10624099979880214
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.214473679276257
#>     Attrib V1    0.3191477602173219
#>     Attrib V10    -0.6134459310960279
#>     Attrib V11    -0.37584234398068433
#>     Attrib V12    -0.06691124905490034
#>     Attrib V13    -0.37737814811457127
#>     Attrib V14    0.2324224473998538
#>     Attrib V15    0.7961063937351177
#>     Attrib V16    0.48316584538121915
#>     Attrib V17    0.1361886522300536
#>     Attrib V18    -0.18188779694186738
#>     Attrib V19    0.017415934724161513
#>     Attrib V2    0.16762652121089133
#>     Attrib V20    0.4351016512017339
#>     Attrib V21    0.7836648725223472
#>     Attrib V22    0.264683408895134
#>     Attrib V23    0.008074272285823416
#>     Attrib V24    -0.053428686213842315
#>     Attrib V25    -1.0328945285256679
#>     Attrib V26    -0.9454425463741589
#>     Attrib V27    -0.4760277891213184
#>     Attrib V28    -0.4432652854506603
#>     Attrib V29    -0.017212827715452475
#>     Attrib V3    -0.15082521945005548
#>     Attrib V30    0.41769724638657135
#>     Attrib V31    -0.8211233394964467
#>     Attrib V32    -0.25158371683343717
#>     Attrib V33    0.0840628391034045
#>     Attrib V34    -0.055974224181739404
#>     Attrib V35    -0.36041293200781394
#>     Attrib V36    -0.39621620941784963
#>     Attrib V37    -0.5644781229823559
#>     Attrib V38    0.06183475270262259
#>     Attrib V39    0.23367984442840103
#>     Attrib V4    0.28001398921727055
#>     Attrib V40    -0.3097064028428156
#>     Attrib V41    -0.2717185340306065
#>     Attrib V42    0.40093924384876817
#>     Attrib V43    0.6092118492412038
#>     Attrib V44    0.4901028383987017
#>     Attrib V45    0.4266866029945451
#>     Attrib V46    0.09827411626881
#>     Attrib V47    -0.3549018178624166
#>     Attrib V48    0.06457028300731976
#>     Attrib V49    0.27279150738886926
#>     Attrib V5    -0.17930882612733656
#>     Attrib V50    -0.2892936940896656
#>     Attrib V51    0.056730367928537924
#>     Attrib V52    -0.030433495668875737
#>     Attrib V53    0.05592469391344763
#>     Attrib V54    0.7906110222597127
#>     Attrib V55    0.14607108812314165
#>     Attrib V56    0.44700052617977054
#>     Attrib V57    0.0801857401796945
#>     Attrib V58    0.5439206284947925
#>     Attrib V59    0.6637750136905024
#>     Attrib V6    -0.2786598121712102
#>     Attrib V60    0.8040970032064364
#>     Attrib V7    -0.32240127716693656
#>     Attrib V8    0.11373638177475925
#>     Attrib V9    -0.11335464174948336
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.011895794230504972
#>     Attrib V1    0.15003724349300912
#>     Attrib V10    -0.27011492378253277
#>     Attrib V11    -0.1433238074294163
#>     Attrib V12    0.08497629544825762
#>     Attrib V13    -0.08744023923427134
#>     Attrib V14    0.07940902197136186
#>     Attrib V15    0.32697404347626957
#>     Attrib V16    0.16795748431097757
#>     Attrib V17    0.056812206769035194
#>     Attrib V18    -0.07879943115390324
#>     Attrib V19    -0.018251584351264526
#>     Attrib V2    0.053137619752186366
#>     Attrib V20    0.1495508077919983
#>     Attrib V21    0.27443536912927563
#>     Attrib V22    0.005473912762018013
#>     Attrib V23    -0.06493667416660016
#>     Attrib V24    -0.007021692314679989
#>     Attrib V25    -0.39830111929396583
#>     Attrib V26    -0.44644768430492837
#>     Attrib V27    -0.19284628264085277
#>     Attrib V28    -0.22662253296607762
#>     Attrib V29    -0.00944779024922982
#>     Attrib V3    0.0149489704461719
#>     Attrib V30    0.14907727852758665
#>     Attrib V31    -0.41555003521453165
#>     Attrib V32    -0.055142701452107035
#>     Attrib V33    0.0050740245219205666
#>     Attrib V34    0.032367500930821545
#>     Attrib V35    -0.1603230942587526
#>     Attrib V36    -0.2306053687985558
#>     Attrib V37    -0.27933031531105906
#>     Attrib V38    0.018178459260857396
#>     Attrib V39    0.17655393745797676
#>     Attrib V4    0.15704374486102876
#>     Attrib V40    -0.13446751806467197
#>     Attrib V41    -0.06083273380857367
#>     Attrib V42    0.1717997276162195
#>     Attrib V43    0.20972525939416775
#>     Attrib V44    0.22582220336214467
#>     Attrib V45    0.1789936486887905
#>     Attrib V46    0.09464623814223336
#>     Attrib V47    -0.09547042770026201
#>     Attrib V48    0.07336678899915566
#>     Attrib V49    0.22029651482066373
#>     Attrib V5    0.025803934254179886
#>     Attrib V50    -0.18561707187283663
#>     Attrib V51    0.03633689412162821
#>     Attrib V52    0.03401059871562215
#>     Attrib V53    0.14297025892921086
#>     Attrib V54    0.373941010247949
#>     Attrib V55    0.1594709499452435
#>     Attrib V56    0.16209821275871247
#>     Attrib V57    0.06514795751114046
#>     Attrib V58    0.2772508155649675
#>     Attrib V59    0.39927212905836135
#>     Attrib V6    -0.05896243296661154
#>     Attrib V60    0.4911811295588572
#>     Attrib V7    -0.143812907002583
#>     Attrib V8    -0.04671584590907639
#>     Attrib V9    -0.08598432760244831
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.012662462689639194
#>     Attrib V1    0.2123775628347528
#>     Attrib V10    -0.25159962445201167
#>     Attrib V11    -0.0832386825330327
#>     Attrib V12    0.11073324777617838
#>     Attrib V13    -0.15778962106942657
#>     Attrib V14    0.07308701532023631
#>     Attrib V15    0.3724793833190644
#>     Attrib V16    0.16011249480574488
#>     Attrib V17    0.05135839990711222
#>     Attrib V18    -0.07125997283492091
#>     Attrib V19    -0.041118681574150634
#>     Attrib V2    0.09602582690125806
#>     Attrib V20    0.09342863819891753
#>     Attrib V21    0.15812104304998087
#>     Attrib V22    -0.07943135426450527
#>     Attrib V23    -0.16222648321336922
#>     Attrib V24    -0.13372135678637892
#>     Attrib V25    -0.4414746438670767
#>     Attrib V26    -0.39282800570719184
#>     Attrib V27    -0.30785554721648023
#>     Attrib V28    -0.37452711290912993
#>     Attrib V29    -0.2230325000366903
#>     Attrib V3    -0.05297339826375994
#>     Attrib V30    0.041886381514560575
#>     Attrib V31    -0.3403466181268735
#>     Attrib V32    -0.07235598978348687
#>     Attrib V33    0.05732698253574003
#>     Attrib V34    0.009180424638957648
#>     Attrib V35    -0.0744029619665952
#>     Attrib V36    -0.1768746653326936
#>     Attrib V37    -0.22683785853378627
#>     Attrib V38    -0.0061355429180816375
#>     Attrib V39    0.15207745581993753
#>     Attrib V4    0.14945545404122512
#>     Attrib V40    -0.12078214906029526
#>     Attrib V41    -0.1250440923267786
#>     Attrib V42    0.09162036179621454
#>     Attrib V43    0.21414543341968728
#>     Attrib V44    0.2288099762288025
#>     Attrib V45    0.10295323161817396
#>     Attrib V46    0.07145727644570828
#>     Attrib V47    -0.12816370828196316
#>     Attrib V48    0.11459303291976551
#>     Attrib V49    0.19621160602899476
#>     Attrib V5    -0.028398195911854326
#>     Attrib V50    -0.07944380573518871
#>     Attrib V51    0.017823736276726527
#>     Attrib V52    0.04113925183699481
#>     Attrib V53    0.12647781531991384
#>     Attrib V54    0.4460222345284809
#>     Attrib V55    0.2697973989202695
#>     Attrib V56    0.24808885125402572
#>     Attrib V57    0.16100708296946778
#>     Attrib V58    0.3497671003115454
#>     Attrib V59    0.37534375095724715
#>     Attrib V6    -0.11879337540248316
#>     Attrib V60    0.488449030853977
#>     Attrib V7    -0.18300327933412122
#>     Attrib V8    -0.03152900130519149
#>     Attrib V9    -0.10224717390730892
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.36695821209554613
#>     Attrib V1    -0.24564304913989374
#>     Attrib V10    0.049357383673165
#>     Attrib V11    -0.15851949997735343
#>     Attrib V12    -0.43414760185148127
#>     Attrib V13    0.170018965073109
#>     Attrib V14    0.058989439908758476
#>     Attrib V15    -0.5771343163004617
#>     Attrib V16    -0.28335363296175836
#>     Attrib V17    -0.09242849844371355
#>     Attrib V18    0.2018342317750843
#>     Attrib V19    -0.02784887779821969
#>     Attrib V2    -0.08405159285629375
#>     Attrib V20    -0.4733625902095715
#>     Attrib V21    -1.1367984643960918
#>     Attrib V22    -0.818969569888116
#>     Attrib V23    -0.6455806076856502
#>     Attrib V24    -0.42703041576571493
#>     Attrib V25    0.8442738675178934
#>     Attrib V26    0.5109366121724376
#>     Attrib V27    -0.05305505041648666
#>     Attrib V28    -0.20863062955616868
#>     Attrib V29    -0.7082128224564959
#>     Attrib V3    0.30417054540544586
#>     Attrib V30    -0.9878066329543013
#>     Attrib V31    0.9875506415730695
#>     Attrib V32    0.1654302734474929
#>     Attrib V33    -0.010529930648303303
#>     Attrib V34    -0.009563504138475407
#>     Attrib V35    0.09835607774828051
#>     Attrib V36    0.21150683212537852
#>     Attrib V37    0.33301240585858594
#>     Attrib V38    -0.37285435477346773
#>     Attrib V39    -0.3926585975849278
#>     Attrib V4    -0.11350872022510433
#>     Attrib V40    0.46110294478822683
#>     Attrib V41    -0.00630200124969217
#>     Attrib V42    -0.5440894947596795
#>     Attrib V43    -0.8493869918845024
#>     Attrib V44    -0.9403408401826303
#>     Attrib V45    -0.8109811826136232
#>     Attrib V46    -0.2634679129216123
#>     Attrib V47    0.320499669056136
#>     Attrib V48    -0.0529274082684278
#>     Attrib V49    -0.6213061201755748
#>     Attrib V5    0.07786019671479055
#>     Attrib V50    0.7835668938209465
#>     Attrib V51    -0.3220832463540028
#>     Attrib V52    -0.34190432600239884
#>     Attrib V53    0.08287003588690443
#>     Attrib V54    -0.8723368099003453
#>     Attrib V55    0.0945456550583412
#>     Attrib V56    0.11374451385955994
#>     Attrib V57    0.6453600728919987
#>     Attrib V58    -0.47414973834509017
#>     Attrib V59    -0.2800235096426053
#>     Attrib V6    0.16835259792112073
#>     Attrib V60    -0.6079309307347366
#>     Attrib V7    0.6769326436920488
#>     Attrib V8    0.20396937251644834
#>     Attrib V9    -0.16753697631102069
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.19369469543013185
#>     Attrib V1    0.0051163242510279105
#>     Attrib V10    0.05206976084252571
#>     Attrib V11    -0.017103342963577066
#>     Attrib V12    -0.0741506659973231
#>     Attrib V13    0.03574303289702745
#>     Attrib V14    0.014778144454489174
#>     Attrib V15    -0.0791932674342683
#>     Attrib V16    0.030229062336159726
#>     Attrib V17    0.0987341917616088
#>     Attrib V18    0.11475326612875253
#>     Attrib V19    0.029815017422131607
#>     Attrib V2    0.014216891849721082
#>     Attrib V20    -0.043366111827654055
#>     Attrib V21    -0.11450239395205465
#>     Attrib V22    -0.09392028737295695
#>     Attrib V23    -0.07905975186208147
#>     Attrib V24    -0.018622649225801452
#>     Attrib V25    0.10433387563278557
#>     Attrib V26    -0.020449108798229636
#>     Attrib V27    -0.10229814982538091
#>     Attrib V28    -0.078956871364783
#>     Attrib V29    -0.1414345337491793
#>     Attrib V3    0.13814108005970338
#>     Attrib V30    -0.15318906618880102
#>     Attrib V31    0.06723298004774274
#>     Attrib V32    0.018729036453907985
#>     Attrib V33    0.0029164402255901726
#>     Attrib V34    0.04962506526670319
#>     Attrib V35    0.06581141037974562
#>     Attrib V36    0.08121846894142293
#>     Attrib V37    0.1387713457022853
#>     Attrib V38    0.03104586360215058
#>     Attrib V39    0.03154514541628093
#>     Attrib V4    0.07500420292787892
#>     Attrib V40    0.06634898368463633
#>     Attrib V41    -0.0024654780496972915
#>     Attrib V42    -0.01127225997734977
#>     Attrib V43    -0.09787882010623081
#>     Attrib V44    -0.10391614972111159
#>     Attrib V45    -0.09620002216695346
#>     Attrib V46    -0.03716696645774192
#>     Attrib V47    0.017340338546083117
#>     Attrib V48    -0.07911861049709754
#>     Attrib V49    -0.14966252350819
#>     Attrib V5    0.08293807438514625
#>     Attrib V50    0.14766512433541853
#>     Attrib V51    0.04016660371478416
#>     Attrib V52    -0.026468745042377385
#>     Attrib V53    0.04121251453354472
#>     Attrib V54    -0.12997011868707822
#>     Attrib V55    0.048059860786332155
#>     Attrib V56    0.10999924513974159
#>     Attrib V57    0.13847918140026708
#>     Attrib V58    -0.021725673826612692
#>     Attrib V59    -0.05196302359758417
#>     Attrib V6    0.09109380502289402
#>     Attrib V60    -0.012332406026626249
#>     Attrib V7    0.10065793915629877
#>     Attrib V8    0.02899177064400182
#>     Attrib V9    0.06555007770750483
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.14337033575816685
#>     Attrib V1    0.03426846299551983
#>     Attrib V10    0.08949015605931995
#>     Attrib V11    0.018184538893610512
#>     Attrib V12    -0.10973505181616737
#>     Attrib V13    -0.027440036119918458
#>     Attrib V14    0.03174752079348574
#>     Attrib V15    -0.016318834452475624
#>     Attrib V16    -0.02514299123179965
#>     Attrib V17    0.05491010346937324
#>     Attrib V18    0.06672199844532532
#>     Attrib V19    0.019561383357351754
#>     Attrib V2    0.12040725026055991
#>     Attrib V20    -0.040339540186379794
#>     Attrib V21    -0.1209603741350234
#>     Attrib V22    -0.04807837889409667
#>     Attrib V23    -0.06732059024534101
#>     Attrib V24    -0.010123604449341758
#>     Attrib V25    0.09761187237284448
#>     Attrib V26    -0.013872687909613038
#>     Attrib V27    -0.10081748924173406
#>     Attrib V28    -0.11800719004216324
#>     Attrib V29    -0.1924907135951624
#>     Attrib V3    0.12612536822702644
#>     Attrib V30    -0.11145167586761924
#>     Attrib V31    0.17073493305976786
#>     Attrib V32    -0.03780390953054566
#>     Attrib V33    0.05384588111001085
#>     Attrib V34    6.0689959948208523E-5
#>     Attrib V35    0.13291466606355737
#>     Attrib V36    0.09036738999477403
#>     Attrib V37    0.10951782438712332
#>     Attrib V38    0.07767298051575099
#>     Attrib V39    0.06487295351146265
#>     Attrib V4    0.06299247871079126
#>     Attrib V40    0.0894844961383001
#>     Attrib V41    0.009004525449460562
#>     Attrib V42    -0.06118013405081867
#>     Attrib V43    -0.05371057326192538
#>     Attrib V44    -0.05056929149318655
#>     Attrib V45    -0.08915702173780306
#>     Attrib V46    -0.09697979017526095
#>     Attrib V47    -0.029814571417873616
#>     Attrib V48    -0.05195992168455912
#>     Attrib V49    -0.19619488627619688
#>     Attrib V5    0.07916703654502719
#>     Attrib V50    0.1286798943916796
#>     Attrib V51    -0.023313693443279413
#>     Attrib V52    -0.12038023879774037
#>     Attrib V53    -0.039758157872085
#>     Attrib V54    -0.14678418153796907
#>     Attrib V55    0.07188528250168438
#>     Attrib V56    0.13736095525026934
#>     Attrib V57    0.18592235578112887
#>     Attrib V58    -0.122978879618613
#>     Attrib V59    -0.05870285452843824
#>     Attrib V6    0.09734123666307441
#>     Attrib V60    -0.03980671560247691
#>     Attrib V7    0.10248958702047181
#>     Attrib V8    0.12246699295269489
#>     Attrib V9    0.04730515817783683
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.22460453657072849
#>     Attrib V1    -0.02839666932490794
#>     Attrib V10    0.028486930200540526
#>     Attrib V11    -0.04681323544188557
#>     Attrib V12    -0.17196393098584903
#>     Attrib V13    0.0035717103467379436
#>     Attrib V14    0.04496355667860981
#>     Attrib V15    -0.168192593212411
#>     Attrib V16    -0.06563025518848559
#>     Attrib V17    0.016731926043530052
#>     Attrib V18    0.1588185353027723
#>     Attrib V19    -0.00831076490589713
#>     Attrib V2    0.03783777966249099
#>     Attrib V20    0.03489273751299049
#>     Attrib V21    -0.08154634565613476
#>     Attrib V22    -0.12042599328956546
#>     Attrib V23    -0.04979412365703991
#>     Attrib V24    -0.07877736337701638
#>     Attrib V25    0.18398565823520155
#>     Attrib V26    0.06797375798070755
#>     Attrib V27    -0.07904242520138853
#>     Attrib V28    -0.14124313196140717
#>     Attrib V29    -0.22962128474476134
#>     Attrib V3    0.17312959053086754
#>     Attrib V30    -0.269268181298114
#>     Attrib V31    0.10553705972951657
#>     Attrib V32    -0.06343077418915312
#>     Attrib V33    -0.02729117381135712
#>     Attrib V34    0.026694362403601724
#>     Attrib V35    0.0746284827593124
#>     Attrib V36    0.20537902268604333
#>     Attrib V37    0.1561481666884946
#>     Attrib V38    0.003651309979472763
#>     Attrib V39    0.019131410329638842
#>     Attrib V4    0.00986528189499033
#>     Attrib V40    0.08503125021534845
#>     Attrib V41    -0.11585280859500244
#>     Attrib V42    -0.10480186476670372
#>     Attrib V43    -0.15440263759558076
#>     Attrib V44    -0.10334402672735182
#>     Attrib V45    -0.23570310195766617
#>     Attrib V46    -0.1457665011355633
#>     Attrib V47    0.04167313419505595
#>     Attrib V48    -0.10488700842196952
#>     Attrib V49    -0.18946289965242735
#>     Attrib V5    0.04976014354973174
#>     Attrib V50    0.1333704812360826
#>     Attrib V51    -0.009408891503289928
#>     Attrib V52    -0.12673040216324946
#>     Attrib V53    0.0029623617161243813
#>     Attrib V54    -0.18706754577841922
#>     Attrib V55    0.05186198668887917
#>     Attrib V56    0.1361492818158974
#>     Attrib V57    0.08567609535754787
#>     Attrib V58    -0.12891407681405614
#>     Attrib V59    -0.02026204990345287
#>     Attrib V6    0.029660161050176524
#>     Attrib V60    -0.07407635532271685
#>     Attrib V7    0.19238107882563968
#>     Attrib V8    0.10183871389585827
#>     Attrib V9    5.884357683093861E-4
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.36572269577586786
#>     Attrib V1    0.11855111992211355
#>     Attrib V10    -0.19397026089580413
#>     Attrib V11    -0.11357978393105068
#>     Attrib V12    0.3843393545409478
#>     Attrib V13    -0.25602766348550704
#>     Attrib V14    -0.06077480453505024
#>     Attrib V15    0.5807866454021336
#>     Attrib V16    0.22241544308304503
#>     Attrib V17    -0.10455505411545732
#>     Attrib V18    -0.39063829539676986
#>     Attrib V19    -0.13790540597708215
#>     Attrib V2    0.075878531372161
#>     Attrib V20    -0.02183361257340982
#>     Attrib V21    0.4510943965943829
#>     Attrib V22    0.37850933523812297
#>     Attrib V23    0.20815300726159244
#>     Attrib V24    0.34960216208875866
#>     Attrib V25    -0.5300452943664564
#>     Attrib V26    -0.4157346520461054
#>     Attrib V27    0.03226056314989146
#>     Attrib V28    0.22531240240019726
#>     Attrib V29    0.48623114261238476
#>     Attrib V3    -0.25486557721632597
#>     Attrib V30    0.6467571177364055
#>     Attrib V31    -0.5556502944800843
#>     Attrib V32    0.09646340664965458
#>     Attrib V33    0.11491989730754132
#>     Attrib V34    -0.021121358466362348
#>     Attrib V35    -0.30162829522972384
#>     Attrib V36    -0.5454797291376753
#>     Attrib V37    -0.6455923850923615
#>     Attrib V38    -0.054859597519559974
#>     Attrib V39    0.13828987388879838
#>     Attrib V4    0.08443820511177251
#>     Attrib V40    -0.2974300303064304
#>     Attrib V41    0.12184026449236636
#>     Attrib V42    0.3116299956000945
#>     Attrib V43    0.34274705536538663
#>     Attrib V44    0.3526405548965008
#>     Attrib V45    0.5094646973921295
#>     Attrib V46    0.2166509957201687
#>     Attrib V47    -0.29645468390609103
#>     Attrib V48    0.16294042958086685
#>     Attrib V49    0.521077081446375
#>     Attrib V5    -0.03166927565368203
#>     Attrib V50    -0.666919403001148
#>     Attrib V51    0.12083736852488158
#>     Attrib V52    0.30782957941680616
#>     Attrib V53    0.05263177281832772
#>     Attrib V54    0.5281026639536375
#>     Attrib V55    0.053627658008239786
#>     Attrib V56    -0.13339742673884816
#>     Attrib V57    -0.23580866813677895
#>     Attrib V58    0.45836355208330587
#>     Attrib V59    0.2857065727785898
#>     Attrib V6    -0.11234801857674376
#>     Attrib V60    0.6101516792991322
#>     Attrib V7    -0.4742026688762686
#>     Attrib V8    -0.18807038347350497
#>     Attrib V9    0.022904470858186903
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.2776430622709666
#>     Attrib V1    0.30589528884366535
#>     Attrib V10    -0.08050631541142421
#>     Attrib V11    -0.027489529516603262
#>     Attrib V12    0.4060676079086385
#>     Attrib V13    -0.22038927744147316
#>     Attrib V14    -0.00535891905940641
#>     Attrib V15    0.6304523291325759
#>     Attrib V16    0.2702121435539267
#>     Attrib V17    0.09648120839144207
#>     Attrib V18    -0.18730942746393936
#>     Attrib V19    0.06367937844691696
#>     Attrib V2    0.09405063278287908
#>     Attrib V20    0.5042251915193036
#>     Attrib V21    1.1735483393378916
#>     Attrib V22    0.8757663069610594
#>     Attrib V23    0.6452776136289766
#>     Attrib V24    0.4614950572598634
#>     Attrib V25    -0.7782328604594658
#>     Attrib V26    -0.4989770947494704
#>     Attrib V27    -0.01635990012875496
#>     Attrib V28    0.173375294674923
#>     Attrib V29    0.7126777350558692
#>     Attrib V3    -0.280668424889502
#>     Attrib V30    0.9279928246638389
#>     Attrib V31    -0.9724847783670447
#>     Attrib V32    -0.20723694438957949
#>     Attrib V33    -0.012041020133566298
#>     Attrib V34    0.0019706197148027264
#>     Attrib V35    -0.08163572611962831
#>     Attrib V36    -0.11597041405430551
#>     Attrib V37    -0.17744557676229059
#>     Attrib V38    0.41780483661840434
#>     Attrib V39    0.3814293432926593
#>     Attrib V4    0.1574173685399024
#>     Attrib V40    -0.4272948272045956
#>     Attrib V41    -0.03304004654029499
#>     Attrib V42    0.4032620441677784
#>     Attrib V43    0.7393202166570861
#>     Attrib V44    0.8995367003126936
#>     Attrib V45    0.7560466001933956
#>     Attrib V46    0.19623426375894115
#>     Attrib V47    -0.4091657050167684
#>     Attrib V48    0.03158409631407469
#>     Attrib V49    0.47601478100895883
#>     Attrib V5    -0.022924004018912616
#>     Attrib V50    -0.684179337896642
#>     Attrib V51    0.34307091179134314
#>     Attrib V52    0.22409936330559385
#>     Attrib V53    -0.13001774402247526
#>     Attrib V54    0.8337822341940386
#>     Attrib V55    -0.07375587962324648
#>     Attrib V56    0.07113757127666157
#>     Attrib V57    -0.6197936719370867
#>     Attrib V58    0.3882576142319803
#>     Attrib V59    0.38644619150642956
#>     Attrib V6    -0.12038847417152358
#>     Attrib V60    0.7526818764414126
#>     Attrib V7    -0.5615010080732005
#>     Attrib V8    -0.2693178805714253
#>     Attrib V9    0.16173427791933798
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.2304833565147668
#>     Attrib V1    -0.19730838733752654
#>     Attrib V10    0.08509322177771242
#>     Attrib V11    -0.12527937538559752
#>     Attrib V12    -0.41441219952395664
#>     Attrib V13    0.15018611454992428
#>     Attrib V14    0.03504497258723837
#>     Attrib V15    -0.5735189823499477
#>     Attrib V16    -0.2978093995091624
#>     Attrib V17    -0.12273633507915228
#>     Attrib V18    0.1693038088673826
#>     Attrib V19    -0.0975049585138119
#>     Attrib V2    -0.09435015067018797
#>     Attrib V20    -0.458040305246664
#>     Attrib V21    -0.9542906764609012
#>     Attrib V22    -0.7630217534495337
#>     Attrib V23    -0.589374635945991
#>     Attrib V24    -0.38312610334946245
#>     Attrib V25    0.7940155000277632
#>     Attrib V26    0.49412735467424285
#>     Attrib V27    0.025442627000408807
#>     Attrib V28    -0.17045968425787533
#>     Attrib V29    -0.6021184407320215
#>     Attrib V3    0.20801326033732226
#>     Attrib V30    -0.8431096578464389
#>     Attrib V31    0.933166674232457
#>     Attrib V32    0.1353052586384009
#>     Attrib V33    -0.02871625390002864
#>     Attrib V34    -0.0515438058835637
#>     Attrib V35    0.09679073907268464
#>     Attrib V36    0.20457022716775203
#>     Attrib V37    0.3469132193058436
#>     Attrib V38    -0.32751982265527585
#>     Attrib V39    -0.34985386565533255
#>     Attrib V4    -0.07799206603896737
#>     Attrib V40    0.4558454810064931
#>     Attrib V41    0.07689706691377035
#>     Attrib V42    -0.5355263212888284
#>     Attrib V43    -0.7401656300320676
#>     Attrib V44    -0.8091155160378927
#>     Attrib V45    -0.7883361850129441
#>     Attrib V46    -0.28689433918143187
#>     Attrib V47    0.25459722483225267
#>     Attrib V48    -0.02062118370288429
#>     Attrib V49    -0.5625099334604535
#>     Attrib V5    0.09366503421846463
#>     Attrib V50    0.6791241949295799
#>     Attrib V51    -0.27938727795888446
#>     Attrib V52    -0.2407576749008921
#>     Attrib V53    0.0484124038860701
#>     Attrib V54    -0.7969129174139349
#>     Attrib V55    0.010814522131735444
#>     Attrib V56    0.013581099466153003
#>     Attrib V57    0.6448001120488734
#>     Attrib V58    -0.45219571285987803
#>     Attrib V59    -0.2238047469998001
#>     Attrib V6    0.16086272454872813
#>     Attrib V60    -0.4813231565022221
#>     Attrib V7    0.6679170309109794
#>     Attrib V8    0.09866421536342386
#>     Attrib V9    -0.10388888660253948
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.10447662872523159
#>     Attrib V1    0.14587944357809401
#>     Attrib V10    -0.04618834108970804
#>     Attrib V11    -0.016990364595806023
#>     Attrib V12    0.06385124390496948
#>     Attrib V13    -0.08065047306239359
#>     Attrib V14    0.05471483004164246
#>     Attrib V15    0.05660477545608744
#>     Attrib V16    0.081094928539995
#>     Attrib V17    -0.028195843400174888
#>     Attrib V18    -0.09603020605330811
#>     Attrib V19    -0.09933820371036672
#>     Attrib V2    0.10977116785620339
#>     Attrib V20    -0.06283996536037476
#>     Attrib V21    -0.06831323347291827
#>     Attrib V22    -0.16796308450009856
#>     Attrib V23    -0.22293388799837224
#>     Attrib V24    -0.056844148583591235
#>     Attrib V25    -0.19637894361718672
#>     Attrib V26    -0.17439683769391334
#>     Attrib V27    -0.11404078604310777
#>     Attrib V28    -0.15864980073302956
#>     Attrib V29    -0.02582463185860154
#>     Attrib V3    0.04909024826863469
#>     Attrib V30    0.005031414778869594
#>     Attrib V31    -0.03890740264608482
#>     Attrib V32    0.040640785933472465
#>     Attrib V33    0.02061702740518531
#>     Attrib V34    0.0412994888282546
#>     Attrib V35    0.0023712518357150115
#>     Attrib V36    -0.05461856092439864
#>     Attrib V37    -0.08975104049951203
#>     Attrib V38    -0.007046997108393874
#>     Attrib V39    0.07218110728220697
#>     Attrib V4    0.14433312665544887
#>     Attrib V40    0.014813078443897083
#>     Attrib V41    -0.03439295303442568
#>     Attrib V42    0.03640563105844438
#>     Attrib V43    0.15234827506477866
#>     Attrib V44    0.11118436878637407
#>     Attrib V45    0.04976936289873962
#>     Attrib V46    0.11364631749045499
#>     Attrib V47    -0.03199152503067779
#>     Attrib V48    0.12169847450290085
#>     Attrib V49    0.11525344625530515
#>     Attrib V5    0.11109908665404107
#>     Attrib V50    -0.0035614163298013017
#>     Attrib V51    0.04800262744192913
#>     Attrib V52    0.08166184038626374
#>     Attrib V53    0.10674277715550393
#>     Attrib V54    0.16024180318662826
#>     Attrib V55    0.16376924236931445
#>     Attrib V56    0.14877867281626556
#>     Attrib V57    0.13943553554295612
#>     Attrib V58    0.21725916008050578
#>     Attrib V59    0.19911124599424737
#>     Attrib V6    0.04457557350960447
#>     Attrib V60    0.2994169928736649
#>     Attrib V7    -0.04118445276907145
#>     Attrib V8    -0.043904377810662705
#>     Attrib V9    0.015136053765005963
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.00896205881956835
#>     Attrib V1    0.16573292365253586
#>     Attrib V10    -0.18064586007768732
#>     Attrib V11    -0.019409876353046838
#>     Attrib V12    0.1508830296786926
#>     Attrib V13    -0.05359268723154083
#>     Attrib V14    0.07514225696036624
#>     Attrib V15    0.16885343959185153
#>     Attrib V16    0.04399805682965659
#>     Attrib V17    0.021903958003206957
#>     Attrib V18    -0.0782252404095981
#>     Attrib V19    -0.04963741028292301
#>     Attrib V2    0.057743571816351195
#>     Attrib V20    -0.0205220828863253
#>     Attrib V21    0.024699858646210094
#>     Attrib V22    -0.11118057610026359
#>     Attrib V23    -0.17170558306375025
#>     Attrib V24    -0.11360101933834538
#>     Attrib V25    -0.2819153368312479
#>     Attrib V26    -0.21551448894669334
#>     Attrib V27    -0.18566977928678266
#>     Attrib V28    -0.22713302016943693
#>     Attrib V29    -0.10595349601119587
#>     Attrib V3    0.06196326534007498
#>     Attrib V30    0.009656757477882114
#>     Attrib V31    -0.2118437157170317
#>     Attrib V32    -0.008975371556336039
#>     Attrib V33    0.038733513081501025
#>     Attrib V34    0.0329399198680112
#>     Attrib V35    0.014764699849043226
#>     Attrib V36    -0.0840904576644255
#>     Attrib V37    -0.11117429325128986
#>     Attrib V38    0.006187178612818795
#>     Attrib V39    0.10592614698985335
#>     Attrib V4    0.19540827151255333
#>     Attrib V40    -0.09091824689527152
#>     Attrib V41    -0.04516578663876399
#>     Attrib V42    0.07577237766786442
#>     Attrib V43    0.21262147498346187
#>     Attrib V44    0.16601239889794192
#>     Attrib V45    0.1677815117118716
#>     Attrib V46    0.07926325427890706
#>     Attrib V47    -0.011760698299227131
#>     Attrib V48    0.06595186801146317
#>     Attrib V49    0.13667523912777235
#>     Attrib V5    0.06458274951017276
#>     Attrib V50    -0.08188952557506197
#>     Attrib V51    0.028322491946903054
#>     Attrib V52    0.11755932426700938
#>     Attrib V53    0.17686012340067905
#>     Attrib V54    0.2630799023021661
#>     Attrib V55    0.20416828566328013
#>     Attrib V56    0.1989095888135454
#>     Attrib V57    0.09135278720922545
#>     Attrib V58    0.23210101279813458
#>     Attrib V59    0.33693120279627675
#>     Attrib V6    -0.01364571732130811
#>     Attrib V60    0.3290240293325807
#>     Attrib V7    -0.11035916560398569
#>     Attrib V8    -0.02249661389219376
#>     Attrib V9    -0.0514828565230575
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.36419427560245493
#>     Attrib V1    -0.09537559645226493
#>     Attrib V10    0.0137227623886161
#>     Attrib V11    -0.0852489227820429
#>     Attrib V12    -0.38500459301207557
#>     Attrib V13    0.10682726713776247
#>     Attrib V14    0.1325627646171007
#>     Attrib V15    -0.3731904740790561
#>     Attrib V16    -0.17751450353119877
#>     Attrib V17    0.1792503266340763
#>     Attrib V18    0.352369055532335
#>     Attrib V19    0.0996985644203282
#>     Attrib V2    -0.014304058614483198
#>     Attrib V20    -0.02239212622922169
#>     Attrib V21    -0.46434464910434475
#>     Attrib V22    -0.4517548792285086
#>     Attrib V23    -0.26809718964693446
#>     Attrib V24    -0.30679802648231314
#>     Attrib V25    0.5613168671861186
#>     Attrib V26    0.28999280506132336
#>     Attrib V27    -0.1999808472125507
#>     Attrib V28    -0.30299982907552575
#>     Attrib V29    -0.6051431751959808
#>     Attrib V3    0.2504621137399426
#>     Attrib V30    -0.6951931223485
#>     Attrib V31    0.4748625058497349
#>     Attrib V32    -0.10562352448244633
#>     Attrib V33    -0.15233245386148037
#>     Attrib V34    -0.07925059450590971
#>     Attrib V35    0.17917187949187258
#>     Attrib V36    0.42847576998814213
#>     Attrib V37    0.4331465473751859
#>     Attrib V38    -0.01673200775175351
#>     Attrib V39    -0.17370454627531798
#>     Attrib V4    0.07131595046246658
#>     Attrib V40    0.29437139689446085
#>     Attrib V41    -0.1870908149581899
#>     Attrib V42    -0.343877086443441
#>     Attrib V43    -0.4125785054070636
#>     Attrib V44    -0.48499721690618813
#>     Attrib V45    -0.5692851673972649
#>     Attrib V46    -0.2674442707617655
#>     Attrib V47    0.18830506526999854
#>     Attrib V48    -0.1744965953467787
#>     Attrib V49    -0.561837957039189
#>     Attrib V5    0.014615791749480567
#>     Attrib V50    0.6412826233710064
#>     Attrib V51    -0.18990260878537454
#>     Attrib V52    -0.27367378232341133
#>     Attrib V53    -0.026325598457182298
#>     Attrib V54    -0.4604059171251807
#>     Attrib V55    0.091706740348138
#>     Attrib V56    0.24816071950930088
#>     Attrib V57    0.4348344027904129
#>     Attrib V58    -0.3781026009935097
#>     Attrib V59    -0.13718907393669072
#>     Attrib V6    0.12714011184851445
#>     Attrib V60    -0.4351806045713644
#>     Attrib V7    0.509727106813499
#>     Attrib V8    0.21682955349835767
#>     Attrib V9    -0.03667415165147596
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.3146694401772079
#>     Attrib V1    -0.1548103825242016
#>     Attrib V10    1.2061164261949457
#>     Attrib V11    0.9654742768873805
#>     Attrib V12    1.360210813817782
#>     Attrib V13    0.5869699956817065
#>     Attrib V14    -0.36422608328181827
#>     Attrib V15    -0.14116117453317165
#>     Attrib V16    -0.2938701218653632
#>     Attrib V17    -0.5395682868132625
#>     Attrib V18    -0.5515376373380017
#>     Attrib V19    -0.1710757942952566
#>     Attrib V2    0.2689570232803465
#>     Attrib V20    -0.708241780878968
#>     Attrib V21    0.03477529285024805
#>     Attrib V22    1.0877583924734737
#>     Attrib V23    1.1459666602711924
#>     Attrib V24    1.0404634081721276
#>     Attrib V25    0.4800902530940615
#>     Attrib V26    1.1996100938129568
#>     Attrib V27    1.4800853948138337
#>     Attrib V28    1.9429995534450866
#>     Attrib V29    1.7182165017001327
#>     Attrib V3    0.057135574441762406
#>     Attrib V30    0.5313039872482487
#>     Attrib V31    -0.6096542671469921
#>     Attrib V32    0.32677872425398635
#>     Attrib V33    -0.17572685965892473
#>     Attrib V34    0.2989793825759055
#>     Attrib V35    0.07159576042872681
#>     Attrib V36    -0.7231884567403213
#>     Attrib V37    -0.5873811917946834
#>     Attrib V38    -0.19097768784815977
#>     Attrib V39    0.2151131165766626
#>     Attrib V4    -0.06693888931639365
#>     Attrib V40    0.3297070932185137
#>     Attrib V41    1.7180550490576316
#>     Attrib V42    0.217453719685227
#>     Attrib V43    -0.008685552532467345
#>     Attrib V44    0.28179185928451345
#>     Attrib V45    0.8523743457052972
#>     Attrib V46    1.1050835128323824
#>     Attrib V47    0.46200995012929547
#>     Attrib V48    0.615106382541436
#>     Attrib V49    1.2454976354073533
#>     Attrib V5    1.207728229139094
#>     Attrib V50    -0.739760206300705
#>     Attrib V51    0.9715262856073705
#>     Attrib V52    1.4624856628182636
#>     Attrib V53    0.7880590930397398
#>     Attrib V54    0.11472269137454147
#>     Attrib V55    0.07401049254752691
#>     Attrib V56    -1.3951217666692415
#>     Attrib V57    -0.8154421019503014
#>     Attrib V58    0.28517598564335866
#>     Attrib V59    -0.18897185827456361
#>     Attrib V6    1.0224581749683976
#>     Attrib V60    0.4789516713684811
#>     Attrib V7    -0.3216844279004209
#>     Attrib V8    -0.763513633043948
#>     Attrib V9    0.7960885332150389
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.2154494928827799
#>     Attrib V1    0.009050090270786045
#>     Attrib V10    0.014062270793629176
#>     Attrib V11    -0.06020536482347531
#>     Attrib V12    -0.07818945070670513
#>     Attrib V13    -0.016241900665936643
#>     Attrib V14    0.0890730838018263
#>     Attrib V15    -0.10151989053395961
#>     Attrib V16    -0.0476168909678121
#>     Attrib V17    0.06458235564821714
#>     Attrib V18    0.029885392733139487
#>     Attrib V19    0.050444369736520535
#>     Attrib V2    0.0704002846787032
#>     Attrib V20    -0.006175787855475686
#>     Attrib V21    -0.08972047008944883
#>     Attrib V22    -0.10904724333568803
#>     Attrib V23    -0.06040911845893226
#>     Attrib V24    -0.06206497731963966
#>     Attrib V25    0.11830224703983874
#>     Attrib V26    -0.0028009473037984758
#>     Attrib V27    -0.056589900381546786
#>     Attrib V28    -0.06641833505836581
#>     Attrib V29    -0.1332755773071747
#>     Attrib V3    0.09354261902354796
#>     Attrib V30    -0.1505603928080978
#>     Attrib V31    0.08862973562698055
#>     Attrib V32    -0.034980404931136404
#>     Attrib V33    0.030275097915729042
#>     Attrib V34    -0.001625329773086131
#>     Attrib V35    0.13004141607916064
#>     Attrib V36    0.14441725830858568
#>     Attrib V37    0.16781676207066007
#>     Attrib V38    5.713239311314642E-4
#>     Attrib V39    0.03326747044383677
#>     Attrib V4    0.0876394115359329
#>     Attrib V40    0.08689590157698926
#>     Attrib V41    -0.054529942367213195
#>     Attrib V42    -0.0533818150209578
#>     Attrib V43    -0.10059705543056346
#>     Attrib V44    -0.08188967839796238
#>     Attrib V45    -0.1426402588782239
#>     Attrib V46    -0.1098611786775045
#>     Attrib V47    -0.02286838359966244
#>     Attrib V48    -0.04620003430980951
#>     Attrib V49    -0.17178363006245234
#>     Attrib V5    0.021211844454150374
#>     Attrib V50    0.14387779892977656
#>     Attrib V51    -0.05352338781538333
#>     Attrib V52    -0.10491275743404808
#>     Attrib V53    -0.011642889130794
#>     Attrib V54    -0.1258089508189303
#>     Attrib V55    0.03916771890531421
#>     Attrib V56    0.13771133498671695
#>     Attrib V57    0.16027606140655865
#>     Attrib V58    -0.0778308107777165
#>     Attrib V59    -0.0055505738016948265
#>     Attrib V6    0.09771318982142814
#>     Attrib V60    0.0019296864844300407
#>     Attrib V7    0.09300181275289396
#>     Attrib V8    0.08343020913516182
#>     Attrib V9    0.003443627644795441
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.20197925612587628
#>     Attrib V1    0.36962664162637276
#>     Attrib V10    -0.4972200999853491
#>     Attrib V11    -0.32691185874230066
#>     Attrib V12    0.033533117939667026
#>     Attrib V13    -0.2922377544594111
#>     Attrib V14    0.14597432166647117
#>     Attrib V15    0.6988966272103184
#>     Attrib V16    0.387195615729485
#>     Attrib V17    0.11329791860146408
#>     Attrib V18    -0.06692227230537594
#>     Attrib V19    5.18042101720592E-4
#>     Attrib V2    0.1260325314316351
#>     Attrib V20    0.35520602341016333
#>     Attrib V21    0.6786219874468443
#>     Attrib V22    0.1784987948666859
#>     Attrib V23    -0.06705874568710657
#>     Attrib V24    -0.001565514396837286
#>     Attrib V25    -0.8483548749040036
#>     Attrib V26    -0.721951139600275
#>     Attrib V27    -0.47464049202762354
#>     Attrib V28    -0.51001498258703
#>     Attrib V29    -0.11555946684630945
#>     Attrib V3    -0.11949246803087314
#>     Attrib V30    0.31114183187029937
#>     Attrib V31    -0.6686989890639364
#>     Attrib V32    -0.20431941512850738
#>     Attrib V33    0.015123640945921628
#>     Attrib V34    -0.026188920461086614
#>     Attrib V35    -0.28219303863493034
#>     Attrib V36    -0.3228952882971558
#>     Attrib V37    -0.46359860649763507
#>     Attrib V38    0.055169100376578836
#>     Attrib V39    0.26785133765569413
#>     Attrib V4    0.20979097407187752
#>     Attrib V40    -0.34592369171435994
#>     Attrib V41    -0.256446016580856
#>     Attrib V42    0.31454050806543243
#>     Attrib V43    0.43629278469973964
#>     Attrib V44    0.4616698766007564
#>     Attrib V45    0.3778153270114301
#>     Attrib V46    7.756671740449179E-4
#>     Attrib V47    -0.34551895826591195
#>     Attrib V48    0.07951292538969293
#>     Attrib V49    0.23431887251050068
#>     Attrib V5    -0.15673792059158032
#>     Attrib V50    -0.18151406457194938
#>     Attrib V51    0.05734735862813785
#>     Attrib V52    -0.01662757615550693
#>     Attrib V53    0.11494186993732687
#>     Attrib V54    0.7755892655761989
#>     Attrib V55    0.24487104137246787
#>     Attrib V56    0.34656025333397433
#>     Attrib V57    0.08060085736484285
#>     Attrib V58    0.4871999795665257
#>     Attrib V59    0.590029937404546
#>     Attrib V6    -0.17535227666953832
#>     Attrib V60    0.7106356207579084
#>     Attrib V7    -0.33772068081746986
#>     Attrib V8    0.034858445086728564
#>     Attrib V9    -0.11476117934223258
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.32770420035474407
#>     Attrib V1    -0.20436987589319489
#>     Attrib V10    -0.9078722912466712
#>     Attrib V11    -0.5580793806792101
#>     Attrib V12    -0.8672995119140094
#>     Attrib V13    -0.35625598203241854
#>     Attrib V14    0.12741301506681976
#>     Attrib V15    -0.2720505439774375
#>     Attrib V16    0.18269117839490878
#>     Attrib V17    0.47532762015507096
#>     Attrib V18    0.6472598527214789
#>     Attrib V19    0.329356895647938
#>     Attrib V2    -0.28308659390924445
#>     Attrib V20    0.46757228414033664
#>     Attrib V21    -0.5272322233153622
#>     Attrib V22    -1.0695992064215145
#>     Attrib V23    -0.9194132283891049
#>     Attrib V24    -0.545343800745867
#>     Attrib V25    0.30299089119350925
#>     Attrib V26    -0.5079046178145975
#>     Attrib V27    -0.9665510127813838
#>     Attrib V28    -1.4773173893186484
#>     Attrib V29    -1.7205189333003896
#>     Attrib V3    0.02144949254939937
#>     Attrib V30    -1.0612038528911631
#>     Attrib V31    0.5352669127127846
#>     Attrib V32    -0.0014174769315917282
#>     Attrib V33    0.26534562884525814
#>     Attrib V34    0.13359727113674144
#>     Attrib V35    0.2588374796877213
#>     Attrib V36    0.7384304042112403
#>     Attrib V37    0.5753759491583325
#>     Attrib V38    0.21309882915425737
#>     Attrib V39    -0.08051146944793704
#>     Attrib V4    -0.08946538710615061
#>     Attrib V40    0.14293676981004477
#>     Attrib V41    -1.06305026786744
#>     Attrib V42    -0.4049132266047625
#>     Attrib V43    -0.3106771524522774
#>     Attrib V44    -0.5929944408344267
#>     Attrib V45    -0.8995837302184067
#>     Attrib V46    -0.8746785806731161
#>     Attrib V47    -0.2701885421219522
#>     Attrib V48    -0.35710375473604683
#>     Attrib V49    -1.0572442307222325
#>     Attrib V5    -0.755044776790942
#>     Attrib V50    0.7700433375027959
#>     Attrib V51    -0.8075057845642677
#>     Attrib V52    -0.9144752946317375
#>     Attrib V53    -0.30319496704044724
#>     Attrib V54    -0.00836525385541647
#>     Attrib V55    0.43898689057502815
#>     Attrib V56    1.185920474677952
#>     Attrib V57    0.9126851336988393
#>     Attrib V58    -0.40187391416684326
#>     Attrib V59    0.09700823168481745
#>     Attrib V6    -0.6626986969637522
#>     Attrib V60    -0.5173474611536215
#>     Attrib V7    0.2603667183806084
#>     Attrib V8    0.334454563862743
#>     Attrib V9    -0.6697652979194565
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.13958293905368185
#>     Attrib V1    0.18932992049186076
#>     Attrib V10    -0.41559146000748615
#>     Attrib V11    -0.19271823964037552
#>     Attrib V12    0.09374241457884515
#>     Attrib V13    -0.2650539638550833
#>     Attrib V14    0.16107219645656687
#>     Attrib V15    0.5669732642299827
#>     Attrib V16    0.3275327761616311
#>     Attrib V17    0.12128357621599659
#>     Attrib V18    -0.07869091933786718
#>     Attrib V19    -0.0065663808517175135
#>     Attrib V2    0.07023895299005627
#>     Attrib V20    0.3379957673767022
#>     Attrib V21    0.5574359968432877
#>     Attrib V22    0.18438387997595254
#>     Attrib V23    -0.06131124126241458
#>     Attrib V24    0.04397744559194469
#>     Attrib V25    -0.6439305277801413
#>     Attrib V26    -0.6722686215627146
#>     Attrib V27    -0.36606787662460105
#>     Attrib V28    -0.3421738967329821
#>     Attrib V29    0.0011604130083828733
#>     Attrib V3    -0.06887553389866648
#>     Attrib V30    0.2294921679627412
#>     Attrib V31    -0.6055335944617014
#>     Attrib V32    -0.1400092284959331
#>     Attrib V33    0.027507130472486683
#>     Attrib V34    -0.03717880909052608
#>     Attrib V35    -0.22266155020304984
#>     Attrib V36    -0.3025241568320853
#>     Attrib V37    -0.38132568980970544
#>     Attrib V38    0.04744263376870754
#>     Attrib V39    0.20426037343949793
#>     Attrib V4    0.13950400616842823
#>     Attrib V40    -0.259220798266051
#>     Attrib V41    -0.14975236456435187
#>     Attrib V42    0.2533565617149967
#>     Attrib V43    0.44056962815868567
#>     Attrib V44    0.33083523366663786
#>     Attrib V45    0.360490432376081
#>     Attrib V46    0.06501410292536615
#>     Attrib V47    -0.21959878138263958
#>     Attrib V48    0.07169083021839921
#>     Attrib V49    0.2470900936462316
#>     Attrib V5    -0.11495538905026056
#>     Attrib V50    -0.22104224452594956
#>     Attrib V51    0.08958485928606406
#>     Attrib V52    0.06487592523062893
#>     Attrib V53    0.0821788772772736
#>     Attrib V54    0.6148637412459727
#>     Attrib V55    0.2407259652323305
#>     Attrib V56    0.28084338414753707
#>     Attrib V57    0.02316488258840251
#>     Attrib V58    0.38998244003813043
#>     Attrib V59    0.44698504230797387
#>     Attrib V6    -0.13701223916191183
#>     Attrib V60    0.6182174081975417
#>     Attrib V7    -0.2880825835200541
#>     Attrib V8    0.024442324564879783
#>     Attrib V9    -0.09400674834532084
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.1799958085275807
#>     Attrib V1    0.03932003881935625
#>     Attrib V10    0.08871402291419084
#>     Attrib V11    0.004596977223474745
#>     Attrib V12    -0.03915944878947193
#>     Attrib V13    0.05261615364729536
#>     Attrib V14    0.059235205027733814
#>     Attrib V15    -0.04290758250438408
#>     Attrib V16    0.0018397724940065483
#>     Attrib V17    0.11739089643942023
#>     Attrib V18    0.0842911332210184
#>     Attrib V19    -0.014554087936157551
#>     Attrib V2    0.0832675207589089
#>     Attrib V20    -0.038642157518313944
#>     Attrib V21    -0.06793876991990327
#>     Attrib V22    -0.09365069092105177
#>     Attrib V23    -0.06375662066927064
#>     Attrib V24    -0.08473719625667017
#>     Attrib V25    0.13058164002405645
#>     Attrib V26    0.04848513409238554
#>     Attrib V27    -0.09502646750341712
#>     Attrib V28    -0.08566508841355173
#>     Attrib V29    -0.1816635301568524
#>     Attrib V3    0.10445355691527412
#>     Attrib V30    -0.10408332361263103
#>     Attrib V31    0.1608728880850791
#>     Attrib V32    -0.02599720186153419
#>     Attrib V33    -0.013855127558188346
#>     Attrib V34    -8.274107024457019E-4
#>     Attrib V35    0.10487447158862129
#>     Attrib V36    0.08417054628849031
#>     Attrib V37    0.15427915563798758
#>     Attrib V38    -0.006872976903641339
#>     Attrib V39    0.08212746713122693
#>     Attrib V4    0.09340861121635806
#>     Attrib V40    0.11756006601413632
#>     Attrib V41    -0.01964741269908388
#>     Attrib V42    -0.014801364355050762
#>     Attrib V43    -0.1121175048281209
#>     Attrib V44    -0.11291369977096814
#>     Attrib V45    -0.11053309861414368
#>     Attrib V46    -0.0679937733124937
#>     Attrib V47    -0.012244143498753702
#>     Attrib V48    -0.04056812257710552
#>     Attrib V49    -0.1596372739273668
#>     Attrib V5    0.03355921909949753
#>     Attrib V50    0.09357098895767994
#>     Attrib V51    -0.043105664139124616
#>     Attrib V52    -0.08323880625880799
#>     Attrib V53    -0.016959440663552688
#>     Attrib V54    -0.11200846002380686
#>     Attrib V55    0.027602674857180643
#>     Attrib V56    0.1569640013935004
#>     Attrib V57    0.09822514837909088
#>     Attrib V58    -0.04863986924063186
#>     Attrib V59    0.02368211973183934
#>     Attrib V6    0.0808253244000599
#>     Attrib V60    -0.006824874442438905
#>     Attrib V7    0.07255452298167864
#>     Attrib V8    0.052465095142514476
#>     Attrib V9    0.02023454375673914
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.011084953846579336
#>     Attrib V1    0.16646064105671537
#>     Attrib V10    -0.229871537062723
#>     Attrib V11    -0.07914799311261156
#>     Attrib V12    0.03593804948503701
#>     Attrib V13    -0.0989057017179935
#>     Attrib V14    0.10793669646414601
#>     Attrib V15    0.29868802185015036
#>     Attrib V16    0.16758919613084072
#>     Attrib V17    0.07298491304509964
#>     Attrib V18    -0.03216958453738449
#>     Attrib V19    -0.004188646215942829
#>     Attrib V2    0.1292881146413118
#>     Attrib V20    0.14055201083619212
#>     Attrib V21    0.11671569201878859
#>     Attrib V22    -0.03280195591248306
#>     Attrib V23    -0.13585343732813582
#>     Attrib V24    -0.05187157980219647
#>     Attrib V25    -0.4161419452080506
#>     Attrib V26    -0.3645643465387447
#>     Attrib V27    -0.28533469577438636
#>     Attrib V28    -0.32823131029937985
#>     Attrib V29    -0.1568478461050112
#>     Attrib V3    -0.03867561281619264
#>     Attrib V30    0.01859610764131429
#>     Attrib V31    -0.2778081194495646
#>     Attrib V32    -0.05503059521043882
#>     Attrib V33    0.06276391259651132
#>     Attrib V34    0.07013167647920311
#>     Attrib V35    -0.014405379013251597
#>     Attrib V36    -0.13306855690457892
#>     Attrib V37    -0.17786293745704143
#>     Attrib V38    0.08132137306786631
#>     Attrib V39    0.10723212764057302
#>     Attrib V4    0.16509255396279537
#>     Attrib V40    -0.11242269537732918
#>     Attrib V41    -0.12699862868663578
#>     Attrib V42    0.0932692943155778
#>     Attrib V43    0.23248835520583727
#>     Attrib V44    0.22634225448122305
#>     Attrib V45    0.12701929347629926
#>     Attrib V46    0.042723097236367955
#>     Attrib V47    -0.10937221761279614
#>     Attrib V48    0.07199722200775772
#>     Attrib V49    0.12561510643345275
#>     Attrib V5    -0.012020620988600803
#>     Attrib V50    -0.09975252966071384
#>     Attrib V51    0.017098336698668875
#>     Attrib V52    0.03969371051241709
#>     Attrib V53    0.16503455910872683
#>     Attrib V54    0.4145030044215235
#>     Attrib V55    0.24247632171996938
#>     Attrib V56    0.18811446947995628
#>     Attrib V57    0.10304880809657126
#>     Attrib V58    0.23300905195289856
#>     Attrib V59    0.32124178821958305
#>     Attrib V6    -0.07782470082259203
#>     Attrib V60    0.4002686407993872
#>     Attrib V7    -0.14201599762797576
#>     Attrib V8    -6.032764475162243E-4
#>     Attrib V9    -0.049507916074200874
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.03214903153935261
#>     Attrib V1    0.22305712472881975
#>     Attrib V10    -0.3647077343679216
#>     Attrib V11    -0.19959797212727368
#>     Attrib V12    0.025524956000368623
#>     Attrib V13    -0.236896311491512
#>     Attrib V14    0.15864176466405963
#>     Attrib V15    0.44305513208017266
#>     Attrib V16    0.2883821914777983
#>     Attrib V17    0.07169082146918332
#>     Attrib V18    -0.00436588450572938
#>     Attrib V19    -0.01059431210756447
#>     Attrib V2    0.0795586992911459
#>     Attrib V20    0.23478018002532766
#>     Attrib V21    0.3789916324959352
#>     Attrib V22    0.04627392650457307
#>     Attrib V23    -0.08958248566590203
#>     Attrib V24    -0.08908321152080124
#>     Attrib V25    -0.5992054410241608
#>     Attrib V26    -0.5465660429567166
#>     Attrib V27    -0.34886161198404253
#>     Attrib V28    -0.3294408666383114
#>     Attrib V29    -0.1309652736419167
#>     Attrib V3    -7.132712579686936E-4
#>     Attrib V30    0.17131569140877323
#>     Attrib V31    -0.45708086425421024
#>     Attrib V32    -0.09716044869486641
#>     Attrib V33    0.06452575938587361
#>     Attrib V34    0.012924590932906314
#>     Attrib V35    -0.13996121151645963
#>     Attrib V36    -0.1587325034250573
#>     Attrib V37    -0.29664989874671815
#>     Attrib V38    0.004034181018473721
#>     Attrib V39    0.1787133789408881
#>     Attrib V4    0.14989237953294707
#>     Attrib V40    -0.2011284870054958
#>     Attrib V41    -0.1881624866180037
#>     Attrib V42    0.20671397158231383
#>     Attrib V43    0.24995704896337584
#>     Attrib V44    0.2963881176477792
#>     Attrib V45    0.24838298652641977
#>     Attrib V46    0.041809528367963804
#>     Attrib V47    -0.19582468305624137
#>     Attrib V48    0.009808010924541097
#>     Attrib V49    0.20215940558489984
#>     Attrib V5    -0.030459073098057853
#>     Attrib V50    -0.16126608308956517
#>     Attrib V51    0.044237407626246804
#>     Attrib V52    0.028688767095049587
#>     Attrib V53    0.10259354707090211
#>     Attrib V54    0.40608452878936385
#>     Attrib V55    0.16500582631885938
#>     Attrib V56    0.25786801733911624
#>     Attrib V57    0.058597306631103796
#>     Attrib V58    0.356729986162986
#>     Attrib V59    0.34952356472160057
#>     Attrib V6    -0.09547013179545843
#>     Attrib V60    0.47463238792575807
#>     Attrib V7    -0.20139534767971623
#>     Attrib V8    0.038026375968665004
#>     Attrib V9    -0.06947819503650071
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
