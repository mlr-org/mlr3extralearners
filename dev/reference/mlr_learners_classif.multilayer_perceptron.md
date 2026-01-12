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
#>     Threshold    -0.7219910498856122
#>     Node 2    1.8344071669550155
#>     Node 3    1.8801193991951368
#>     Node 4    0.9544954704390122
#>     Node 5    -1.277175012043475
#>     Node 6    1.4618857673221326
#>     Node 7    3.3395117428537735
#>     Node 8    1.0170893343024385
#>     Node 9    2.2362705140625705
#>     Node 10    -1.269378177600167
#>     Node 11    1.5636400667566799
#>     Node 12    1.8736431484494798
#>     Node 13    -1.283722947604781
#>     Node 14    1.9955523542522524
#>     Node 15    -2.7089887880063057
#>     Node 16    0.7307228493702685
#>     Node 17    0.8064802145471109
#>     Node 18    -1.9705254526044265
#>     Node 19    2.2559502476484594
#>     Node 20    1.5989810546649932
#>     Node 21    -1.5771116818682782
#>     Node 22    2.202919595070909
#>     Node 23    1.3539561339808255
#>     Node 24    -0.25356690161263623
#>     Node 25    4.775688596505453
#>     Node 26    -0.9505774627052285
#>     Node 27    2.5887690921766624
#>     Node 28    -1.1012624029329254
#>     Node 29    1.1782115242777311
#>     Node 30    -1.3314453609303418
#>     Node 31    1.9118205890853641
#>     Node 32    0.7675185086746332
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.7305659207659773
#>     Node 2    -1.880519524853169
#>     Node 3    -1.8555898328282419
#>     Node 4    -0.9060124973842076
#>     Node 5    1.2826189916639417
#>     Node 6    -1.4353774588094546
#>     Node 7    -3.3290780610720314
#>     Node 8    -1.048094379681136
#>     Node 9    -2.228889869370413
#>     Node 10    1.195676821956698
#>     Node 11    -1.5303009701502535
#>     Node 12    -1.93964651356466
#>     Node 13    1.3327600603863776
#>     Node 14    -1.9327010042248103
#>     Node 15    2.689961369913709
#>     Node 16    -0.7429804536371402
#>     Node 17    -0.7685117628117395
#>     Node 18    2.002705569800023
#>     Node 19    -2.259897171240928
#>     Node 20    -1.5785859726451916
#>     Node 21    1.626685584829892
#>     Node 22    -2.241786913399197
#>     Node 23    -1.3977978893748737
#>     Node 24    0.23863822782557767
#>     Node 25    -4.7630205066558124
#>     Node 26    0.8669660018658968
#>     Node 27    -2.631237083283753
#>     Node 28    1.0423456443633587
#>     Node 29    -1.208652486476951
#>     Node 30    1.4024232734136597
#>     Node 31    -1.8536352421749562
#>     Node 32    -0.7804086214272351
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.3221925955038789
#>     Attrib V1    0.40091194413323306
#>     Attrib V10    0.17684149622936196
#>     Attrib V11    0.7070546771868822
#>     Attrib V12    0.5126129022107135
#>     Attrib V13    -0.5935705637586751
#>     Attrib V14    -0.5537206581354671
#>     Attrib V15    -0.2843347545148361
#>     Attrib V16    -0.24476015810075688
#>     Attrib V17    0.10211438643730304
#>     Attrib V18    0.37014663009857973
#>     Attrib V19    0.34517416439077103
#>     Attrib V2    -0.09929061332658536
#>     Attrib V20    0.6364324906478614
#>     Attrib V21    0.6434100603978523
#>     Attrib V22    0.7736290782812799
#>     Attrib V23    0.8690713585000596
#>     Attrib V24    0.4237389156998838
#>     Attrib V25    0.19866747267032986
#>     Attrib V26    -0.42947045725443544
#>     Attrib V27    -0.31961473190718004
#>     Attrib V28    0.3240581215134761
#>     Attrib V29    0.06672589634292439
#>     Attrib V3    -0.317824911603592
#>     Attrib V30    0.10811379744416022
#>     Attrib V31    -1.1682251792140304
#>     Attrib V32    -0.08604231221808055
#>     Attrib V33    0.3723360945343369
#>     Attrib V34    -0.10822878621001522
#>     Attrib V35    0.1870085428329751
#>     Attrib V36    0.012484421695025836
#>     Attrib V37    -0.2622836377959829
#>     Attrib V38    0.4052402821694732
#>     Attrib V39    0.40710831663739394
#>     Attrib V4    0.3560192413473428
#>     Attrib V40    -0.06313163073179077
#>     Attrib V41    -0.06620602252438641
#>     Attrib V42    -0.22501515306660244
#>     Attrib V43    0.5011223603993723
#>     Attrib V44    0.8004640571375401
#>     Attrib V45    0.4327276268639567
#>     Attrib V46    0.11986360623625604
#>     Attrib V47    0.1549951391417916
#>     Attrib V48    0.10489656757009247
#>     Attrib V49    0.3329159318751032
#>     Attrib V5    0.34612756402552164
#>     Attrib V50    -0.3675889437529185
#>     Attrib V51    0.31009615988928535
#>     Attrib V52    0.6118039978076907
#>     Attrib V53    0.15486489906207007
#>     Attrib V54    0.5736898880041373
#>     Attrib V55    -0.7470212609220928
#>     Attrib V56    -0.004360912653606512
#>     Attrib V57    -0.15465311838779222
#>     Attrib V58    0.6530629844224598
#>     Attrib V59    0.15680262092325645
#>     Attrib V6    -0.05090942093190416
#>     Attrib V60    -0.18409576638440625
#>     Attrib V7    -0.1473211239763673
#>     Attrib V8    0.15180696017841191
#>     Attrib V9    0.6569249418518709
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.4351875949022223
#>     Attrib V1    0.4368191179804316
#>     Attrib V10    -0.2639619480608667
#>     Attrib V11    0.30984743433589546
#>     Attrib V12    0.20045039209863189
#>     Attrib V13    -0.5574338169822165
#>     Attrib V14    -0.25394686795255433
#>     Attrib V15    0.15103130791196753
#>     Attrib V16    0.030231626454412068
#>     Attrib V17    0.12245295534187263
#>     Attrib V18    0.1757131597835287
#>     Attrib V19    0.225541480387225
#>     Attrib V2    -0.10123942285975085
#>     Attrib V20    0.4933847303359035
#>     Attrib V21    0.48693270599766875
#>     Attrib V22    0.38807088213192953
#>     Attrib V23    0.4418650215849522
#>     Attrib V24    0.21616227732750842
#>     Attrib V25    -0.1980980776322125
#>     Attrib V26    -0.9026746025490594
#>     Attrib V27    -0.771881116938939
#>     Attrib V28    -0.290194654851181
#>     Attrib V29    -0.4154419060832395
#>     Attrib V3    -0.2734272006902131
#>     Attrib V30    -0.18673248308030885
#>     Attrib V31    -1.087187936967881
#>     Attrib V32    -0.10152323263290415
#>     Attrib V33    0.5984485699943918
#>     Attrib V34    -0.1717665704766196
#>     Attrib V35    -0.20064936661928612
#>     Attrib V36    -0.41073275142536114
#>     Attrib V37    -0.7774711166955566
#>     Attrib V38    -0.16643461291767248
#>     Attrib V39    0.10157518638986626
#>     Attrib V4    0.3306879218635738
#>     Attrib V40    -0.11364186966643167
#>     Attrib V41    -0.11904895237418166
#>     Attrib V42    0.023009722106800086
#>     Attrib V43    0.5119522489971895
#>     Attrib V44    0.4779334076711286
#>     Attrib V45    0.12931658026853257
#>     Attrib V46    -0.14736508154278546
#>     Attrib V47    -0.1040650187289941
#>     Attrib V48    -0.1203531092528964
#>     Attrib V49    0.15141333569109358
#>     Attrib V5    0.19382683195381253
#>     Attrib V50    -0.19175262573865365
#>     Attrib V51    -0.011279445006998356
#>     Attrib V52    0.41364574046035185
#>     Attrib V53    0.35166818126995175
#>     Attrib V54    0.6922415593216473
#>     Attrib V55    -0.3106216404389591
#>     Attrib V56    0.1341509387383158
#>     Attrib V57    0.3963007969047227
#>     Attrib V58    0.9825105369088172
#>     Attrib V59    0.678154663601263
#>     Attrib V6    -0.22230069174733885
#>     Attrib V60    0.08567395231334271
#>     Attrib V7    -0.07316809756104418
#>     Attrib V8    0.602027898611377
#>     Attrib V9    0.37449128320871294
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.15973969227135165
#>     Attrib V1    0.21242097499134252
#>     Attrib V10    -0.04585427036954986
#>     Attrib V11    0.31308793866596724
#>     Attrib V12    0.26217292860579017
#>     Attrib V13    -0.2660164311515612
#>     Attrib V14    -0.17005441885265915
#>     Attrib V15    -0.028289377378021945
#>     Attrib V16    -0.08748364815741745
#>     Attrib V17    0.03949173701326055
#>     Attrib V18    0.11033394176014563
#>     Attrib V19    0.1213762475444845
#>     Attrib V2    -0.03044611201236985
#>     Attrib V20    0.26178906020221715
#>     Attrib V21    0.29188909135141294
#>     Attrib V22    0.21393341800665513
#>     Attrib V23    0.2546361046255845
#>     Attrib V24    0.07390154403060883
#>     Attrib V25    -0.09746125902668401
#>     Attrib V26    -0.3556430922092745
#>     Attrib V27    -0.2571753918420007
#>     Attrib V28    0.10205632308766437
#>     Attrib V29    0.023633759625886576
#>     Attrib V3    -0.08481980406114147
#>     Attrib V30    0.04928719591542193
#>     Attrib V31    -0.5371734747588326
#>     Attrib V32    -0.0843039011311651
#>     Attrib V33    0.2021596880620708
#>     Attrib V34    -0.06407151668950666
#>     Attrib V35    -0.010983281061826588
#>     Attrib V36    -0.1851327624798371
#>     Attrib V37    -0.3212683200601711
#>     Attrib V38    -0.018457296931409923
#>     Attrib V39    0.1237126032532906
#>     Attrib V4    0.2214930056257863
#>     Attrib V40    -0.048455002983886344
#>     Attrib V41    -0.04453307310646074
#>     Attrib V42    -0.08137567201857238
#>     Attrib V43    0.20902931607018196
#>     Attrib V44    0.34705894789151925
#>     Attrib V45    0.2422809381188432
#>     Attrib V46    -0.012226889389696178
#>     Attrib V47    -0.027130856522203574
#>     Attrib V48    0.04749810686740877
#>     Attrib V49    0.18706748863556522
#>     Attrib V5    0.17850319317500962
#>     Attrib V50    -0.18752511468866448
#>     Attrib V51    0.13471685793686533
#>     Attrib V52    0.33676263251861976
#>     Attrib V53    0.24327611841653385
#>     Attrib V54    0.24054320979172683
#>     Attrib V55    -0.2518573489137578
#>     Attrib V56    0.024620131073307808
#>     Attrib V57    0.14964756480087266
#>     Attrib V58    0.46759079749257587
#>     Attrib V59    0.23635901689792527
#>     Attrib V6    -0.06514514151888018
#>     Attrib V60    -0.018537281292158887
#>     Attrib V7    -0.10342225275664997
#>     Attrib V8    0.12549952868222758
#>     Attrib V9    0.316779240361062
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.4039151936925225
#>     Attrib V1    -0.038764177233518146
#>     Attrib V10    -0.0833185516656537
#>     Attrib V11    -0.5245801151546258
#>     Attrib V12    -0.7068689262608855
#>     Attrib V13    0.2201746228181587
#>     Attrib V14    0.4198121207483525
#>     Attrib V15    0.28094950583335293
#>     Attrib V16    0.21524363192339513
#>     Attrib V17    0.2284653173986382
#>     Attrib V18    0.07678048207832296
#>     Attrib V19    0.05922564207794693
#>     Attrib V2    0.12304387520978792
#>     Attrib V20    0.01300372352124035
#>     Attrib V21    0.03386844382704602
#>     Attrib V22    -0.08984248789031334
#>     Attrib V23    -0.10163674047776629
#>     Attrib V24    -0.10449703746222991
#>     Attrib V25    0.025074883993709652
#>     Attrib V26    0.262980914778524
#>     Attrib V27    0.054567119291617255
#>     Attrib V28    -0.33192993237217217
#>     Attrib V29    -0.04260829131229005
#>     Attrib V3    0.26901193886929375
#>     Attrib V30    -0.07246222984719079
#>     Attrib V31    0.5295046039588253
#>     Attrib V32    -0.01883559293321616
#>     Attrib V33    -0.28841834860629373
#>     Attrib V34    -0.06961878575069629
#>     Attrib V35    0.03612533782117315
#>     Attrib V36    0.41057946940608425
#>     Attrib V37    0.4887784339774294
#>     Attrib V38    0.04632996028115137
#>     Attrib V39    -0.2518976244283384
#>     Attrib V4    -0.13876117096777338
#>     Attrib V40    -0.14084445913962007
#>     Attrib V41    -0.08126886777214631
#>     Attrib V42    0.36191408709341505
#>     Attrib V43    -0.1206614457697743
#>     Attrib V44    -0.26082457380901986
#>     Attrib V45    -0.20426828494275368
#>     Attrib V46    -0.17400681489939243
#>     Attrib V47    -0.1163128612446977
#>     Attrib V48    -0.21927405114376738
#>     Attrib V49    -0.3423635057559327
#>     Attrib V5    0.013143154543971948
#>     Attrib V50    0.5917223094937389
#>     Attrib V51    -0.17465710063310144
#>     Attrib V52    -0.5475033344585851
#>     Attrib V53    -0.18547068710244285
#>     Attrib V54    -0.07046029557746764
#>     Attrib V55    0.5087480288728404
#>     Attrib V56    0.18011457160072453
#>     Attrib V57    -0.046175649373851685
#>     Attrib V58    -0.5563271302419833
#>     Attrib V59    -0.1039863427733057
#>     Attrib V6    0.01670238549201045
#>     Attrib V60    0.09861462569481655
#>     Attrib V7    0.2607755150639765
#>     Attrib V8    -0.015076013547056457
#>     Attrib V9    -0.4714892460374
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.3013891635522158
#>     Attrib V1    0.3718711349395326
#>     Attrib V10    -0.25068766730387654
#>     Attrib V11    0.22943910650835458
#>     Attrib V12    0.17684637473751305
#>     Attrib V13    -0.4731253163030315
#>     Attrib V14    -0.21489574481266513
#>     Attrib V15    0.05683014092866487
#>     Attrib V16    0.11789791592450523
#>     Attrib V17    0.11075166997845988
#>     Attrib V18    0.24701580102981896
#>     Attrib V19    0.19967547207285258
#>     Attrib V2    -0.08186168058241262
#>     Attrib V20    0.4317336127181957
#>     Attrib V21    0.39400381564308057
#>     Attrib V22    0.23838972451849613
#>     Attrib V23    0.34186639368228156
#>     Attrib V24    0.2437295014545449
#>     Attrib V25    -0.07486139973391814
#>     Attrib V26    -0.670023043446127
#>     Attrib V27    -0.5576841104651481
#>     Attrib V28    -0.3068521556466305
#>     Attrib V29    -0.4016771564783696
#>     Attrib V3    -0.1993245975959824
#>     Attrib V30    -0.23664622853362452
#>     Attrib V31    -0.8738299867047071
#>     Attrib V32    -0.03994804181299974
#>     Attrib V33    0.5000061238409759
#>     Attrib V34    -0.04946936714993107
#>     Attrib V35    -0.05317356627802712
#>     Attrib V36    -0.27539222345962056
#>     Attrib V37    -0.5704879675887498
#>     Attrib V38    -0.1300186755482698
#>     Attrib V39    0.022640852272880752
#>     Attrib V4    0.3048381404933173
#>     Attrib V40    -0.1012915318998886
#>     Attrib V41    -0.038791934894418054
#>     Attrib V42    0.004739674077925424
#>     Attrib V43    0.3715203489105996
#>     Attrib V44    0.35458841525744583
#>     Attrib V45    0.12370778898140015
#>     Attrib V46    -0.09620432151198478
#>     Attrib V47    -0.12105321450069899
#>     Attrib V48    -0.12262468906048943
#>     Attrib V49    0.08443094043658415
#>     Attrib V5    0.1647341615808379
#>     Attrib V50    -0.12733429754321704
#>     Attrib V51    0.007092436658692304
#>     Attrib V52    0.27745404364772897
#>     Attrib V53    0.3522379707317994
#>     Attrib V54    0.5100070111184899
#>     Attrib V55    -0.2443535766869533
#>     Attrib V56    0.13369691529602223
#>     Attrib V57    0.3153617149811017
#>     Attrib V58    0.7674354970748307
#>     Attrib V59    0.5561728338108255
#>     Attrib V6    -0.07194659635354417
#>     Attrib V60    0.12641740984901192
#>     Attrib V7    0.03019359462636701
#>     Attrib V8    0.4889543636696602
#>     Attrib V9    0.3589415697548499
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.27938052257272555
#>     Attrib V1    0.02907138502138524
#>     Attrib V10    0.6274126204241111
#>     Attrib V11    1.3064070519564013
#>     Attrib V12    1.8378378872336365
#>     Attrib V13    0.6215768245178688
#>     Attrib V14    -0.1645190122460585
#>     Attrib V15    -0.5595987520910604
#>     Attrib V16    -0.6776001408704978
#>     Attrib V17    -0.5373804004583086
#>     Attrib V18    -0.3055183051730252
#>     Attrib V19    -0.4261526478735683
#>     Attrib V2    0.5444799469810095
#>     Attrib V20    -0.44590967906087164
#>     Attrib V21    0.0014545019249557537
#>     Attrib V22    0.5363143307556388
#>     Attrib V23    0.1468645377561405
#>     Attrib V24    -0.37922320612251503
#>     Attrib V25    0.04680579291025357
#>     Attrib V26    0.8714436816450353
#>     Attrib V27    1.1736245840311745
#>     Attrib V28    1.482139954981261
#>     Attrib V29    1.451909466902526
#>     Attrib V3    0.3938389442781441
#>     Attrib V30    1.0177570258144513
#>     Attrib V31    -0.2211762932421632
#>     Attrib V32    -0.38458309556065745
#>     Attrib V33    -0.8411404131071618
#>     Attrib V34    -0.28994712259711153
#>     Attrib V35    -0.06282597538473603
#>     Attrib V36    -0.5899292364071216
#>     Attrib V37    -0.057388560157142075
#>     Attrib V38    -0.10361830515632137
#>     Attrib V39    0.39011725061034913
#>     Attrib V4    0.44975286405561926
#>     Attrib V40    0.4334879439160683
#>     Attrib V41    0.8262703573093946
#>     Attrib V42    -0.4075849536437284
#>     Attrib V43    -0.18588668664514668
#>     Attrib V44    0.18424291528479872
#>     Attrib V45    0.3724850005612064
#>     Attrib V46    0.6221895738803025
#>     Attrib V47    0.42642218379240365
#>     Attrib V48    0.6033108234631472
#>     Attrib V49    0.6313328344293463
#>     Attrib V5    0.2979371586800091
#>     Attrib V50    -0.7835072363299155
#>     Attrib V51    0.7690350423793834
#>     Attrib V52    1.1883932462083266
#>     Attrib V53    0.4941228104739309
#>     Attrib V54    -0.13865178004180467
#>     Attrib V55    -0.88015388309743
#>     Attrib V56    -0.4785660405021796
#>     Attrib V57    -0.17016172732082577
#>     Attrib V58    0.16509905732946534
#>     Attrib V59    -0.31242798278619427
#>     Attrib V6    0.49872155202788465
#>     Attrib V60    0.2555333876200205
#>     Attrib V7    -0.6259913806701459
#>     Attrib V8    -0.8592664352023919
#>     Attrib V9    0.5904574839050196
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.20836754232956317
#>     Attrib V1    0.09744402777483033
#>     Attrib V10    0.1602761792981925
#>     Attrib V11    0.47333246921375155
#>     Attrib V12    0.4867310607289259
#>     Attrib V13    -0.17401621757729016
#>     Attrib V14    -0.3612052323009894
#>     Attrib V15    -0.2703192777642282
#>     Attrib V16    -0.15540630291598595
#>     Attrib V17    -0.08394265679352618
#>     Attrib V18    0.02157477545909812
#>     Attrib V19    0.08015108547436552
#>     Attrib V2    1.422728373645565E-4
#>     Attrib V20    0.11373790757432971
#>     Attrib V21    0.11391626260171017
#>     Attrib V22    0.20633013876373274
#>     Attrib V23    0.2851461746667912
#>     Attrib V24    0.16702937895753975
#>     Attrib V25    0.13620101410507604
#>     Attrib V26    -0.024133077401567404
#>     Attrib V27    0.1205464825320284
#>     Attrib V28    0.43831549755488297
#>     Attrib V29    0.17295842791155236
#>     Attrib V3    -0.15017976384674253
#>     Attrib V30    0.1964116043549786
#>     Attrib V31    -0.45641683357286844
#>     Attrib V32    -0.03615656568978829
#>     Attrib V33    0.13313838759257673
#>     Attrib V34    0.039746346696841434
#>     Attrib V35    0.18077511605599123
#>     Attrib V36    -0.01654715377478995
#>     Attrib V37    -0.166581633767643
#>     Attrib V38    0.13289344219580865
#>     Attrib V39    0.19157198407540013
#>     Attrib V4    0.22557273474800546
#>     Attrib V40    0.056773990234194584
#>     Attrib V41    0.037652398871337145
#>     Attrib V42    -0.35149121410680423
#>     Attrib V43    0.1115589493250663
#>     Attrib V44    0.41126214099868696
#>     Attrib V45    0.29111674707512547
#>     Attrib V46    0.17971619634992342
#>     Attrib V47    0.153144861036311
#>     Attrib V48    0.22068524031087983
#>     Attrib V49    0.2774211454630001
#>     Attrib V5    0.08177858200554208
#>     Attrib V50    -0.3572510255066836
#>     Attrib V51    0.18227532899759066
#>     Attrib V52    0.42287740751214536
#>     Attrib V53    0.13621339164489896
#>     Attrib V54    0.16129286832194697
#>     Attrib V55    -0.4180737007606121
#>     Attrib V56    -0.17059433281894953
#>     Attrib V57    -0.01931185306484023
#>     Attrib V58    0.31449354004721486
#>     Attrib V59    -0.018918111773279313
#>     Attrib V6    -0.01601263791688873
#>     Attrib V60    -0.05459705921915427
#>     Attrib V7    -0.16483049761158847
#>     Attrib V8    -0.09231154418178687
#>     Attrib V9    0.3856896917654086
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.10325246687166141
#>     Attrib V1    -0.1720972050882471
#>     Attrib V10    0.6276969346301946
#>     Attrib V11    1.045135931604105
#>     Attrib V12    1.4592599297466522
#>     Attrib V13    0.25349466055663494
#>     Attrib V14    -0.5473857244609532
#>     Attrib V15    -0.6825661818711605
#>     Attrib V16    -0.49785332991413667
#>     Attrib V17    -0.20571515435123697
#>     Attrib V18    0.07065529512174165
#>     Attrib V19    -0.10513908648640051
#>     Attrib V2    0.12872221667657077
#>     Attrib V20    -0.2807299062493672
#>     Attrib V21    -0.06509899272735095
#>     Attrib V22    0.45781021093360685
#>     Attrib V23    0.3853046020196918
#>     Attrib V24    0.09183018043891919
#>     Attrib V25    0.4586437315886274
#>     Attrib V26    0.6242731584405012
#>     Attrib V27    0.7584943983501615
#>     Attrib V28    0.9149659156576989
#>     Attrib V29    0.3968957254119094
#>     Attrib V3    -0.0263313251022664
#>     Attrib V30    0.5052024738899058
#>     Attrib V31    -0.19191578624819186
#>     Attrib V32    0.014120313364393025
#>     Attrib V33    -0.24042804746604934
#>     Attrib V34    0.06526228397545294
#>     Attrib V35    0.20105726011219632
#>     Attrib V36    -0.31228369498570724
#>     Attrib V37    -0.28936679244224006
#>     Attrib V38    -0.16266538493691557
#>     Attrib V39    0.2624185313820305
#>     Attrib V4    0.29288692543116845
#>     Attrib V40    0.209547075805371
#>     Attrib V41    0.3852970765933075
#>     Attrib V42    -0.5058848828307188
#>     Attrib V43    0.034522506339062745
#>     Attrib V44    0.3596300844568425
#>     Attrib V45    0.3226644834167486
#>     Attrib V46    0.44410728394169413
#>     Attrib V47    0.39342490062013735
#>     Attrib V48    0.4748531793360473
#>     Attrib V49    0.5177587400220591
#>     Attrib V5    0.17948519802270785
#>     Attrib V50    -0.6909377239028798
#>     Attrib V51    0.6170786453349748
#>     Attrib V52    0.9516701730505208
#>     Attrib V53    0.23855035103415081
#>     Attrib V54    -0.08439602033806348
#>     Attrib V55    -0.7145263767319749
#>     Attrib V56    -0.3632352769725537
#>     Attrib V57    -0.4034452411153262
#>     Attrib V58    0.2092434783027163
#>     Attrib V59    -0.476279082810821
#>     Attrib V6    0.34086447515950474
#>     Attrib V60    0.027936977939881157
#>     Attrib V7    -0.38728751902510966
#>     Attrib V8    -0.5763861485285198
#>     Attrib V9    0.6291103944011105
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.40545609516062714
#>     Attrib V1    -0.007300334784667097
#>     Attrib V10    -0.1331927288704753
#>     Attrib V11    -0.5748091816032453
#>     Attrib V12    -0.660745121780417
#>     Attrib V13    0.2163518433435726
#>     Attrib V14    0.42619607619872935
#>     Attrib V15    0.18082108768379995
#>     Attrib V16    0.20336038624879826
#>     Attrib V17    0.12396583822014244
#>     Attrib V18    0.08451663837119461
#>     Attrib V19    0.05744893967159628
#>     Attrib V2    0.06746828363733343
#>     Attrib V20    0.06786022093576205
#>     Attrib V21    0.04615171756237031
#>     Attrib V22    -0.0901057682547241
#>     Attrib V23    -0.10502880601541635
#>     Attrib V24    -0.11718576528186254
#>     Attrib V25    -0.020613438402013483
#>     Attrib V26    0.2766129756642477
#>     Attrib V27    0.08729328042639938
#>     Attrib V28    -0.21931323955466925
#>     Attrib V29    -0.010601761841246768
#>     Attrib V3    0.19574245562962064
#>     Attrib V30    -0.03370454152413098
#>     Attrib V31    0.466235023266076
#>     Attrib V32    -0.16569457366181303
#>     Attrib V33    -0.29804448670848777
#>     Attrib V34    -0.03261622870306588
#>     Attrib V35    0.07245994552163271
#>     Attrib V36    0.46589137611324183
#>     Attrib V37    0.5845240725741256
#>     Attrib V38    0.1926983201377721
#>     Attrib V39    -0.1518569435408731
#>     Attrib V4    -0.12959434184750382
#>     Attrib V40    -0.06591601874062582
#>     Attrib V41    -0.015444269503492876
#>     Attrib V42    0.28547040441964844
#>     Attrib V43    -0.13308418153797535
#>     Attrib V44    -0.22845596855568878
#>     Attrib V45    -0.09951280893058764
#>     Attrib V46    -0.1327411958453882
#>     Attrib V47    -0.10838894457369816
#>     Attrib V48    -0.23018398715439536
#>     Attrib V49    -0.33299386421735017
#>     Attrib V5    -0.03146664390647842
#>     Attrib V50    0.570658618330944
#>     Attrib V51    -0.19766737396153747
#>     Attrib V52    -0.5480865624478424
#>     Attrib V53    -0.14329709707216698
#>     Attrib V54    -0.09869491400687969
#>     Attrib V55    0.40615365466932546
#>     Attrib V56    0.0983189485239221
#>     Attrib V57    -0.03870003940504452
#>     Attrib V58    -0.5579741985220916
#>     Attrib V59    -0.1496411521855845
#>     Attrib V6    0.010974468056892903
#>     Attrib V60    0.04500977984024494
#>     Attrib V7    0.19725395110906457
#>     Attrib V8    -0.04820996455526038
#>     Attrib V9    -0.4780476705807588
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.2214778290250367
#>     Attrib V1    0.10175585543033959
#>     Attrib V10    0.3811471589722852
#>     Attrib V11    0.740735956436023
#>     Attrib V12    0.8413543121879518
#>     Attrib V13    -0.2404323020905447
#>     Attrib V14    -0.5242182011023083
#>     Attrib V15    -0.4387640084406871
#>     Attrib V16    -0.30694364756378956
#>     Attrib V17    -0.05931345851504964
#>     Attrib V18    0.11992179097489472
#>     Attrib V19    0.09369530087575774
#>     Attrib V2    -0.03379873419123153
#>     Attrib V20    0.22442967728630986
#>     Attrib V21    0.1586435969470274
#>     Attrib V22    0.40659408137314446
#>     Attrib V23    0.5038546578147908
#>     Attrib V24    0.23358548399267767
#>     Attrib V25    0.33413905522700205
#>     Attrib V26    0.040222012882179095
#>     Attrib V27    0.23869316312101188
#>     Attrib V28    0.7036942673811738
#>     Attrib V29    0.25480909911056315
#>     Attrib V3    -0.2589137548203779
#>     Attrib V30    0.3139688302903525
#>     Attrib V31    -0.5865181634763079
#>     Attrib V32    -0.006148500223596738
#>     Attrib V33    0.11726935084830058
#>     Attrib V34    0.09934476603582988
#>     Attrib V35    0.3246708337662548
#>     Attrib V36    -0.06764112695250082
#>     Attrib V37    -0.21790813863371902
#>     Attrib V38    0.14387749863987026
#>     Attrib V39    0.287732328196744
#>     Attrib V4    0.21395587931843177
#>     Attrib V40    0.13406234665660077
#>     Attrib V41    0.11233783681864322
#>     Attrib V42    -0.3943773521921606
#>     Attrib V43    0.12834860898754555
#>     Attrib V44    0.5306607801489505
#>     Attrib V45    0.4360334936232934
#>     Attrib V46    0.2614535035077302
#>     Attrib V47    0.29525282341194364
#>     Attrib V48    0.3234953494920104
#>     Attrib V49    0.3612995094173352
#>     Attrib V5    0.21626581044027934
#>     Attrib V50    -0.48281831710921796
#>     Attrib V51    0.4252252435119818
#>     Attrib V52    0.6397869396949619
#>     Attrib V53    0.0786147098496824
#>     Attrib V54    0.20172582475078424
#>     Attrib V55    -0.6611618965041187
#>     Attrib V56    -0.2247944500523233
#>     Attrib V57    -0.25038231757863577
#>     Attrib V58    0.39500740200759
#>     Attrib V59    -0.2678354849943263
#>     Attrib V6    0.13672984987044026
#>     Attrib V60    -0.12372529074805526
#>     Attrib V7    -0.2859674984577166
#>     Attrib V8    -0.18983907899263164
#>     Attrib V9    0.6206969219155971
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.5392898497425532
#>     Attrib V1    0.4407124112336367
#>     Attrib V10    -0.31440142711035124
#>     Attrib V11    0.44633156341872116
#>     Attrib V12    0.19430349349439513
#>     Attrib V13    -0.633362761999897
#>     Attrib V14    -0.2617229074658722
#>     Attrib V15    0.07065641729891055
#>     Attrib V16    0.06238395765117897
#>     Attrib V17    0.1378506208095316
#>     Attrib V18    0.20677291294434055
#>     Attrib V19    0.22955005173216667
#>     Attrib V2    -0.07389599479725348
#>     Attrib V20    0.4762702008959471
#>     Attrib V21    0.5135225245014782
#>     Attrib V22    0.4040526932791656
#>     Attrib V23    0.4747300493089127
#>     Attrib V24    0.1568166081245589
#>     Attrib V25    -0.3287592880153667
#>     Attrib V26    -0.9194860009706909
#>     Attrib V27    -0.6563929709065008
#>     Attrib V28    -0.183064226896379
#>     Attrib V29    -0.1670202170689021
#>     Attrib V3    -0.3332726396361582
#>     Attrib V30    -0.1228494949562223
#>     Attrib V31    -1.1956981138076235
#>     Attrib V32    -0.20474936337266705
#>     Attrib V33    0.5475571093646673
#>     Attrib V34    -0.19475172707547217
#>     Attrib V35    -0.24400671469401747
#>     Attrib V36    -0.42682524501084035
#>     Attrib V37    -0.7636492160843694
#>     Attrib V38    -0.05009933233116765
#>     Attrib V39    0.1034980379904227
#>     Attrib V4    0.4062886899862571
#>     Attrib V40    -0.0952779109403544
#>     Attrib V41    -0.09978130740728765
#>     Attrib V42    -0.025127881058044303
#>     Attrib V43    0.5592252052353779
#>     Attrib V44    0.4345484040804504
#>     Attrib V45    0.1884437379229861
#>     Attrib V46    -0.06201091673689283
#>     Attrib V47    -0.1341866068549931
#>     Attrib V48    -0.06645220691775987
#>     Attrib V49    0.17034148404334576
#>     Attrib V5    0.24697995516316995
#>     Attrib V50    -0.25875447774950944
#>     Attrib V51    0.054492947588278585
#>     Attrib V52    0.500657741115197
#>     Attrib V53    0.4470916444251695
#>     Attrib V54    0.6125048181155224
#>     Attrib V55    -0.40869079962632926
#>     Attrib V56    0.10241995354070507
#>     Attrib V57    0.4159712144119377
#>     Attrib V58    1.0008576529749482
#>     Attrib V59    0.7170914336366362
#>     Attrib V6    -0.22333458850330642
#>     Attrib V60    0.08503412068871744
#>     Attrib V7    -0.07586280569719131
#>     Attrib V8    0.575975667301714
#>     Attrib V9    0.4379212015583608
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.45908972160860223
#>     Attrib V1    -0.0965691459385167
#>     Attrib V10    -0.1834190457192432
#>     Attrib V11    -0.6301977333186058
#>     Attrib V12    -0.7286801624287519
#>     Attrib V13    0.30223424070304444
#>     Attrib V14    0.4456417419224117
#>     Attrib V15    0.22189927112725885
#>     Attrib V16    0.19210120897662208
#>     Attrib V17    0.20545120401620806
#>     Attrib V18    0.0729912405341511
#>     Attrib V19    0.042496708621671764
#>     Attrib V2    0.04347796959050638
#>     Attrib V20    0.09823048913454056
#>     Attrib V21    0.052538980536279846
#>     Attrib V22    -0.08096348849572119
#>     Attrib V23    -0.06413930043478942
#>     Attrib V24    -0.03973846270033138
#>     Attrib V25    0.08114132506613479
#>     Attrib V26    0.27548309717043873
#>     Attrib V27    0.1491771373430253
#>     Attrib V28    -0.23440212957848638
#>     Attrib V29    0.04019647230655552
#>     Attrib V3    0.2828305303234726
#>     Attrib V30    -0.07982962423023476
#>     Attrib V31    0.4313038693015685
#>     Attrib V32    -0.10163509347597474
#>     Attrib V33    -0.36446205656751635
#>     Attrib V34    -0.04763651729922376
#>     Attrib V35    0.007306609426863578
#>     Attrib V36    0.4415773769935271
#>     Attrib V37    0.6035976929342429
#>     Attrib V38    0.11695890911700903
#>     Attrib V39    -0.1330540720588712
#>     Attrib V4    -0.09322541187856957
#>     Attrib V40    -0.07685652248318281
#>     Attrib V41    -0.00884283171561152
#>     Attrib V42    0.382290165817198
#>     Attrib V43    -0.14357739716306095
#>     Attrib V44    -0.2845363303368831
#>     Attrib V45    -0.1926292109680461
#>     Attrib V46    -0.09323744489141012
#>     Attrib V47    -0.0721030864620995
#>     Attrib V48    -0.25938787913920514
#>     Attrib V49    -0.3301741270324518
#>     Attrib V5    0.02417161322575775
#>     Attrib V50    0.5256433399083894
#>     Attrib V51    -0.2227694531563013
#>     Attrib V52    -0.5804116917949524
#>     Attrib V53    -0.16878723474637952
#>     Attrib V54    -0.12718808433892415
#>     Attrib V55    0.4278693790376341
#>     Attrib V56    0.14630862119969582
#>     Attrib V57    0.003342727180905342
#>     Attrib V58    -0.5647604963493703
#>     Attrib V59    -0.04665811164218817
#>     Attrib V6    -0.031779114141565756
#>     Attrib V60    0.16745625975122946
#>     Attrib V7    0.21400433839552205
#>     Attrib V8    -0.09101981191737274
#>     Attrib V9    -0.49775033743774555
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.4713782270939869
#>     Attrib V1    0.4028068701683987
#>     Attrib V10    -0.1308094180786166
#>     Attrib V11    0.5512755430550178
#>     Attrib V12    0.37114166966826884
#>     Attrib V13    -0.6667142970629217
#>     Attrib V14    -0.48862409417266667
#>     Attrib V15    -0.0063800189518053215
#>     Attrib V16    -0.03266493661315983
#>     Attrib V17    0.148906393519577
#>     Attrib V18    0.29452213363299384
#>     Attrib V19    0.24879540386631904
#>     Attrib V2    -0.19323175133246365
#>     Attrib V20    0.4247778865590788
#>     Attrib V21    0.4103494577171706
#>     Attrib V22    0.3727385893988284
#>     Attrib V23    0.6032655503936374
#>     Attrib V24    0.35664544811349486
#>     Attrib V25    -0.04464698492611203
#>     Attrib V26    -0.8106393727413319
#>     Attrib V27    -0.7720804420034542
#>     Attrib V28    -0.3934234599100648
#>     Attrib V29    -0.643495410979098
#>     Attrib V3    -0.45858375425758535
#>     Attrib V30    -0.30133585574413957
#>     Attrib V31    -1.1270019672299718
#>     Attrib V32    -0.013907935952295399
#>     Attrib V33    0.7398356575217307
#>     Attrib V34    -0.05138245081489171
#>     Attrib V35    -0.05319136689689362
#>     Attrib V36    -0.4099704702190214
#>     Attrib V37    -0.8650931121211365
#>     Attrib V38    -0.17658328674910528
#>     Attrib V39    0.08181597454208267
#>     Attrib V4    0.28596991209680983
#>     Attrib V40    -0.09755122275007008
#>     Attrib V41    -0.17131320883857803
#>     Attrib V42    -0.1688660830902406
#>     Attrib V43    0.5177715927628004
#>     Attrib V44    0.628416978165311
#>     Attrib V45    0.16843690911474146
#>     Attrib V46    -0.10174744436517635
#>     Attrib V47    -0.09732629941336084
#>     Attrib V48    0.025955139273959642
#>     Attrib V49    0.2880249255116602
#>     Attrib V5    0.16360184870588657
#>     Attrib V50    -0.30444493743343626
#>     Attrib V51    0.04890289384442719
#>     Attrib V52    0.480583789449858
#>     Attrib V53    0.28290859683328556
#>     Attrib V54    0.7774200446656179
#>     Attrib V55    -0.39089818952375616
#>     Attrib V56    0.09601606173974687
#>     Attrib V57    0.22111727557404687
#>     Attrib V58    1.023044149247578
#>     Attrib V59    0.5042959148204219
#>     Attrib V6    -0.09136808677362959
#>     Attrib V60    0.050819432424966476
#>     Attrib V7    0.0639652597575489
#>     Attrib V8    0.5529119398984871
#>     Attrib V9    0.5642722146794845
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.6824528980025377
#>     Attrib V1    -0.40016632334092783
#>     Attrib V10    0.06200407721553593
#>     Attrib V11    -0.7614881091823622
#>     Attrib V12    -0.46690152446767974
#>     Attrib V13    0.8404253773456768
#>     Attrib V14    0.6853447115747499
#>     Attrib V15    0.1421185071397444
#>     Attrib V16    0.046517704297731666
#>     Attrib V17    -0.13946390702123646
#>     Attrib V18    -0.35215203123064337
#>     Attrib V19    -0.3475170939679083
#>     Attrib V2    0.30096291033418
#>     Attrib V20    -0.4940166036484501
#>     Attrib V21    -0.5329842304282141
#>     Attrib V22    -0.4266252892562677
#>     Attrib V23    -0.6667467569129868
#>     Attrib V24    -0.4416871240982539
#>     Attrib V25    0.14986956710349242
#>     Attrib V26    1.1445713537586728
#>     Attrib V27    0.8911415123893751
#>     Attrib V28    0.4743238506280044
#>     Attrib V29    0.8558477106704655
#>     Attrib V3    0.5861817069936026
#>     Attrib V30    0.40589310730402306
#>     Attrib V31    1.37690924219774
#>     Attrib V32    -0.05483774460462011
#>     Attrib V33    -0.9274448971575927
#>     Attrib V34    0.06734737335777473
#>     Attrib V35    0.17379061262549889
#>     Attrib V36    0.6258918143600966
#>     Attrib V37    1.2877359488527476
#>     Attrib V38    0.2074768211981653
#>     Attrib V39    -0.13212724695555186
#>     Attrib V4    -0.2999384127920208
#>     Attrib V40    0.009057229291044334
#>     Attrib V41    0.16700824104200127
#>     Attrib V42    0.180604830383855
#>     Attrib V43    -0.7162597817957868
#>     Attrib V44    -0.7590217312252896
#>     Attrib V45    -0.16502352189060113
#>     Attrib V46    0.19430309869706527
#>     Attrib V47    0.08931908231129411
#>     Attrib V48    -0.002762539598006452
#>     Attrib V49    -0.37400760661980953
#>     Attrib V5    -0.247501621313085
#>     Attrib V50    0.46265170027156466
#>     Attrib V51    -0.06080170582703159
#>     Attrib V52    -0.6720227059134294
#>     Attrib V53    -0.35350146176746916
#>     Attrib V54    -0.8758456504363916
#>     Attrib V55    0.5840927899153557
#>     Attrib V56    -0.059311366998247024
#>     Attrib V57    -0.3091961642268611
#>     Attrib V58    -1.277380797492103
#>     Attrib V59    -0.6350575382981918
#>     Attrib V6    0.02612237168231857
#>     Attrib V60    0.0037755609378686745
#>     Attrib V7    -0.16497806747244675
#>     Attrib V8    -0.7532186066880663
#>     Attrib V9    -0.7808779938360791
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    0.05274321136039376
#>     Attrib V1    0.21037412122114219
#>     Attrib V10    -0.0678965739784466
#>     Attrib V11    0.18462539013883167
#>     Attrib V12    0.15222798253989436
#>     Attrib V13    -0.16291085852100892
#>     Attrib V14    -0.11377073850447142
#>     Attrib V15    -0.006237141463671294
#>     Attrib V16    0.0481231749520323
#>     Attrib V17    0.07510203617979623
#>     Attrib V18    0.142026082419742
#>     Attrib V19    0.12794902152538393
#>     Attrib V2    -0.03484054492365361
#>     Attrib V20    0.1676043569811506
#>     Attrib V21    0.1333183142505393
#>     Attrib V22    0.08129769643055497
#>     Attrib V23    0.07014980998315487
#>     Attrib V24    0.07726625122820055
#>     Attrib V25    -0.060492920264749575
#>     Attrib V26    -0.331917545950899
#>     Attrib V27    -0.25534982439857595
#>     Attrib V28    -0.08598061346985421
#>     Attrib V29    -0.14193717952800922
#>     Attrib V3    -0.030546614660957986
#>     Attrib V30    -0.09320539648756083
#>     Attrib V31    -0.44170955277716406
#>     Attrib V32    -0.032054735954304525
#>     Attrib V33    0.17864238218054243
#>     Attrib V34    0.015839942620332392
#>     Attrib V35    -0.019983519786263917
#>     Attrib V36    -0.15484906711518254
#>     Attrib V37    -0.26419278555068754
#>     Attrib V38    -0.031909771079863467
#>     Attrib V39    0.046769277620245006
#>     Attrib V4    0.20816876468773038
#>     Attrib V40    -0.06368160028165273
#>     Attrib V41    -0.017880131899050574
#>     Attrib V42    -0.03573977701378264
#>     Attrib V43    0.14388002916200748
#>     Attrib V44    0.17081342012586048
#>     Attrib V45    0.1077676987137615
#>     Attrib V46    -0.009320402983711814
#>     Attrib V47    -0.04043131168125359
#>     Attrib V48    -0.019191672409041904
#>     Attrib V49    0.04493570108897177
#>     Attrib V5    0.11198910557294596
#>     Attrib V50    -0.07182843492344855
#>     Attrib V51    0.09624094538280563
#>     Attrib V52    0.2519212913555937
#>     Attrib V53    0.2590816563745291
#>     Attrib V54    0.25199145597306377
#>     Attrib V55    -0.04722053593527806
#>     Attrib V56    0.0866190737084973
#>     Attrib V57    0.21415679618902633
#>     Attrib V58    0.45599339946341777
#>     Attrib V59    0.23831455394426312
#>     Attrib V6    0.013023136898016891
#>     Attrib V60    0.0813170963192669
#>     Attrib V7    -0.0028635348183650372
#>     Attrib V8    0.17020623711154317
#>     Attrib V9    0.23009605422245522
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.12236048108495909
#>     Attrib V1    0.25996797109491915
#>     Attrib V10    0.0176503746950541
#>     Attrib V11    0.2830964851765312
#>     Attrib V12    0.17501477764497766
#>     Attrib V13    -0.26745701566388924
#>     Attrib V14    -0.1701200899281981
#>     Attrib V15    0.017584446931461425
#>     Attrib V16    -0.02569592331663651
#>     Attrib V17    0.04178570028998371
#>     Attrib V18    0.12131316264173847
#>     Attrib V19    0.16489365085507157
#>     Attrib V2    0.06663249523800109
#>     Attrib V20    0.24101130781921953
#>     Attrib V21    0.19902943206149
#>     Attrib V22    0.22250172038313493
#>     Attrib V23    0.1675935862660866
#>     Attrib V24    0.10294035607037864
#>     Attrib V25    -0.0861379780618313
#>     Attrib V26    -0.34042071135640284
#>     Attrib V27    -0.21866677543833157
#>     Attrib V28    -0.03826735328783343
#>     Attrib V29    -0.1323917789586384
#>     Attrib V3    -0.0843383442643395
#>     Attrib V30    0.014633981163805576
#>     Attrib V31    -0.4098910769758757
#>     Attrib V32    -0.07168664836433977
#>     Attrib V33    0.23757356335642463
#>     Attrib V34    -0.033865781494604626
#>     Attrib V35    0.06897226218961298
#>     Attrib V36    -0.12934090198165044
#>     Attrib V37    -0.2698704159064256
#>     Attrib V38    0.0706959364032827
#>     Attrib V39    0.0943055960462489
#>     Attrib V4    0.21848082289811344
#>     Attrib V40    -0.091676050155569
#>     Attrib V41    -0.019108356788428968
#>     Attrib V42    -0.13480994169089128
#>     Attrib V43    0.21920864133121593
#>     Attrib V44    0.3127872698392136
#>     Attrib V45    0.1945419734235188
#>     Attrib V46    -0.01386232627450953
#>     Attrib V47    -0.050753839301067416
#>     Attrib V48    0.05912459512755485
#>     Attrib V49    0.09495763036320923
#>     Attrib V5    0.11585117734523515
#>     Attrib V50    -0.11817717356488792
#>     Attrib V51    0.08264311115414581
#>     Attrib V52    0.24298384752173524
#>     Attrib V53    0.16159638709247356
#>     Attrib V54    0.2662857997208139
#>     Attrib V55    -0.10012579362076934
#>     Attrib V56    0.053678663785331475
#>     Attrib V57    0.18966785100419328
#>     Attrib V58    0.3722950971551989
#>     Attrib V59    0.1595618233043256
#>     Attrib V6    0.009544755628349414
#>     Attrib V60    -8.700375651338214E-4
#>     Attrib V7    -0.056550052158662927
#>     Attrib V8    0.19429774065376398
#>     Attrib V9    0.270667503603993
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.6928370767712064
#>     Attrib V1    -0.06335986547176167
#>     Attrib V10    -0.19916750883585946
#>     Attrib V11    -0.9794642848703408
#>     Attrib V12    -1.1626969372322267
#>     Attrib V13    0.3192562647514912
#>     Attrib V14    0.6415687105468378
#>     Attrib V15    0.32874485872276105
#>     Attrib V16    0.32435133247202524
#>     Attrib V17    0.22187058280071423
#>     Attrib V18    0.11987808513493614
#>     Attrib V19    -0.014649674780145507
#>     Attrib V2    0.1221340674154095
#>     Attrib V20    0.146871144268098
#>     Attrib V21    0.06348493006575144
#>     Attrib V22    -0.1852598903759639
#>     Attrib V23    -0.23102125229175147
#>     Attrib V24    -0.16720256754133075
#>     Attrib V25    7.62085495158228E-4
#>     Attrib V26    0.4290137122375933
#>     Attrib V27    0.1554348913800201
#>     Attrib V28    -0.3383436113413083
#>     Attrib V29    0.002806502783991596
#>     Attrib V3    0.40711780998722424
#>     Attrib V30    -0.19462767536190248
#>     Attrib V31    0.6659061994027121
#>     Attrib V32    -0.2069651095398486
#>     Attrib V33    -0.493132169416266
#>     Attrib V34    0.007720753734753428
#>     Attrib V35    0.14334364991983936
#>     Attrib V36    0.8677679900633466
#>     Attrib V37    1.0023949650274437
#>     Attrib V38    0.2987567247568126
#>     Attrib V39    -0.15135978877321754
#>     Attrib V4    -0.26444186559278365
#>     Attrib V40    -0.12980279156137375
#>     Attrib V41    -0.14898684579020685
#>     Attrib V42    0.4684422264270186
#>     Attrib V43    -0.17692981195415253
#>     Attrib V44    -0.355902514933525
#>     Attrib V45    -0.20155745068210765
#>     Attrib V46    -0.0989231367423953
#>     Attrib V47    -0.059363694179764684
#>     Attrib V48    -0.31483140934608805
#>     Attrib V49    -0.4618508411981341
#>     Attrib V5    -0.13016925682818642
#>     Attrib V50    0.8767803219961605
#>     Attrib V51    -0.27184566652367137
#>     Attrib V52    -0.9102379894697503
#>     Attrib V53    -0.30614931140305035
#>     Attrib V54    -0.2109126382897771
#>     Attrib V55    0.7611701955247564
#>     Attrib V56    0.2355385226128341
#>     Attrib V57    -0.029396770764235726
#>     Attrib V58    -0.8970075649902245
#>     Attrib V59    -0.1998153155491899
#>     Attrib V6    -0.16532863197619815
#>     Attrib V60    0.1881148291249239
#>     Attrib V7    0.3274369777825281
#>     Attrib V8    -0.06042522052883413
#>     Attrib V9    -0.7416442073743502
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.2510585612976255
#>     Attrib V1    -0.29751321420767957
#>     Attrib V10    0.40352404156189065
#>     Attrib V11    1.0304753693067863
#>     Attrib V12    1.5409906061114258
#>     Attrib V13    0.14084212126669546
#>     Attrib V14    -0.5464229225125189
#>     Attrib V15    -0.6346840997126714
#>     Attrib V16    -0.5045599120693726
#>     Attrib V17    -0.11213527340299759
#>     Attrib V18    0.15768551055288682
#>     Attrib V19    -0.011167674494997516
#>     Attrib V2    0.02975553298380798
#>     Attrib V20    -0.29713363950439853
#>     Attrib V21    -0.1413253210171183
#>     Attrib V22    0.5856331923006616
#>     Attrib V23    0.6194082208412997
#>     Attrib V24    0.263073429440801
#>     Attrib V25    0.5895873520748157
#>     Attrib V26    0.5293946064056034
#>     Attrib V27    0.6870938451723042
#>     Attrib V28    0.9786210854742586
#>     Attrib V29    0.2871238182359202
#>     Attrib V3    -0.20476656276556163
#>     Attrib V30    0.319489072357376
#>     Attrib V31    -0.4852188038211082
#>     Attrib V32    -0.10870168524599197
#>     Attrib V33    -0.1727507626162026
#>     Attrib V34    -0.05592721382289595
#>     Attrib V35    0.21402505969653188
#>     Attrib V36    -0.33992530277469185
#>     Attrib V37    -0.4686423327217652
#>     Attrib V38    -0.3083171482087384
#>     Attrib V39    0.17173900599216546
#>     Attrib V4    0.4210162963110202
#>     Attrib V40    0.23898191150539708
#>     Attrib V41    0.4107642098171192
#>     Attrib V42    -0.3258179450196876
#>     Attrib V43    0.12556461456542392
#>     Attrib V44    0.45072159358935243
#>     Attrib V45    0.3947150077706768
#>     Attrib V46    0.37490094589175343
#>     Attrib V47    0.34826389816592446
#>     Attrib V48    0.510866003455776
#>     Attrib V49    0.6162503603977343
#>     Attrib V5    0.3708370403113849
#>     Attrib V50    -0.8113728766387637
#>     Attrib V51    0.6177042446117397
#>     Attrib V52    1.0462630154640757
#>     Attrib V53    0.2572166454416923
#>     Attrib V54    0.08327142120651132
#>     Attrib V55    -0.8370510582694978
#>     Attrib V56    -0.3745914949488007
#>     Attrib V57    -0.37167109953699223
#>     Attrib V58    0.49664087964554515
#>     Attrib V59    -0.21736725945398938
#>     Attrib V6    0.21357323038009687
#>     Attrib V60    0.1495601458691008
#>     Attrib V7    -0.5024449796032714
#>     Attrib V8    -0.5436052252437515
#>     Attrib V9    0.615717577731966
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.26944512479054045
#>     Attrib V1    0.486748652332348
#>     Attrib V10    -0.05732864044145196
#>     Attrib V11    0.3900041468595579
#>     Attrib V12    0.2677666702019796
#>     Attrib V13    -0.48107932054472935
#>     Attrib V14    -0.24256194769456257
#>     Attrib V15    0.0046676691972881304
#>     Attrib V16    -0.05840933215952345
#>     Attrib V17    0.13880928544372567
#>     Attrib V18    0.3069524572266138
#>     Attrib V19    0.33422172557690744
#>     Attrib V2    -0.048498622324970465
#>     Attrib V20    0.6269203909232811
#>     Attrib V21    0.6271811765407524
#>     Attrib V22    0.6126016018904988
#>     Attrib V23    0.7097953954997749
#>     Attrib V24    0.3612690888479097
#>     Attrib V25    -0.004366917182890389
#>     Attrib V26    -0.5836243203517968
#>     Attrib V27    -0.4691446060644156
#>     Attrib V28    -0.025219352286760675
#>     Attrib V29    -0.01421648426967721
#>     Attrib V3    -0.2783697275379839
#>     Attrib V30    -0.03402507384907869
#>     Attrib V31    -1.0106901378621196
#>     Attrib V32    -0.17776014364299858
#>     Attrib V33    0.3820506461703921
#>     Attrib V34    -0.16775765691243802
#>     Attrib V35    0.00947036688189893
#>     Attrib V36    -0.03173509440083088
#>     Attrib V37    -0.3020639393624011
#>     Attrib V38    0.20073550596449938
#>     Attrib V39    0.2152209256391122
#>     Attrib V4    0.3444538138556518
#>     Attrib V40    -0.06866704400709388
#>     Attrib V41    -0.03441426124312911
#>     Attrib V42    -0.10077193260447327
#>     Attrib V43    0.49664635669342305
#>     Attrib V44    0.5853283203314076
#>     Attrib V45    0.24186142378975614
#>     Attrib V46    -0.03465939936749842
#>     Attrib V47    -0.04774451475771022
#>     Attrib V48    -0.06165867256139423
#>     Attrib V49    0.1849445147730874
#>     Attrib V5    0.31154095698033873
#>     Attrib V50    -0.16743152187181015
#>     Attrib V51    0.20194663451869885
#>     Attrib V52    0.4466792275978381
#>     Attrib V53    0.25056043154272595
#>     Attrib V54    0.6268993074413185
#>     Attrib V55    -0.38375811189155334
#>     Attrib V56    0.1157956857321125
#>     Attrib V57    0.10804875167613151
#>     Attrib V58    0.7490923021423478
#>     Attrib V59    0.4547356450977263
#>     Attrib V6    -0.09126165771678398
#>     Attrib V60    0.022840200948968457
#>     Attrib V7    -1.7589631640531797E-4
#>     Attrib V8    0.27801808034823317
#>     Attrib V9    0.45761653177384426
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.39036392407106896
#>     Attrib V1    -0.09100559230753862
#>     Attrib V10    -0.11007118984198848
#>     Attrib V11    -0.6952052135856378
#>     Attrib V12    -0.6856216153986944
#>     Attrib V13    0.3669584962417478
#>     Attrib V14    0.48672538519103964
#>     Attrib V15    0.1959956420116883
#>     Attrib V16    0.1170409348866453
#>     Attrib V17    0.025178914807027036
#>     Attrib V18    -0.1273174630380866
#>     Attrib V19    -0.18695876442764592
#>     Attrib V2    0.13025287920311243
#>     Attrib V20    -0.08681863313427404
#>     Attrib V21    -0.08959061452328038
#>     Attrib V22    -0.2655452304730448
#>     Attrib V23    -0.3305761892896726
#>     Attrib V24    -0.23653329150008515
#>     Attrib V25    0.030067378385557914
#>     Attrib V26    0.5558598710688755
#>     Attrib V27    0.40432800000962393
#>     Attrib V28    0.1278462598066746
#>     Attrib V29    0.4149200031939969
#>     Attrib V3    0.2727381236882886
#>     Attrib V30    0.12063628014072404
#>     Attrib V31    0.6907736245423944
#>     Attrib V32    -0.2127576328263155
#>     Attrib V33    -0.5516001169098709
#>     Attrib V34    -0.03306023659223037
#>     Attrib V35    0.11838142552896135
#>     Attrib V36    0.5542958382768634
#>     Attrib V37    0.9208028900689484
#>     Attrib V38    0.22024845692732048
#>     Attrib V39    -0.07376995519520785
#>     Attrib V4    -0.16480364741246825
#>     Attrib V40    0.008776905523194798
#>     Attrib V41    0.03835677302332139
#>     Attrib V42    0.21752497914052557
#>     Attrib V43    -0.2979851715522834
#>     Attrib V44    -0.3914287790236556
#>     Attrib V45    -0.14252582999645802
#>     Attrib V46    -0.010956087072478615
#>     Attrib V47    -0.03098654052432202
#>     Attrib V48    -0.09519436684666857
#>     Attrib V49    -0.34061178177568724
#>     Attrib V5    -0.13676174003108285
#>     Attrib V50    0.5571106681232324
#>     Attrib V51    -0.15294856011813446
#>     Attrib V52    -0.5817868857091422
#>     Attrib V53    -0.27859322890069516
#>     Attrib V54    -0.37188846065371456
#>     Attrib V55    0.40061690465178845
#>     Attrib V56    0.009950728503373541
#>     Attrib V57    -0.04481537318187437
#>     Attrib V58    -0.8032493013213652
#>     Attrib V59    -0.27224144085307983
#>     Attrib V6    -0.11112941607455727
#>     Attrib V60    0.07609741701124413
#>     Attrib V7    0.07622265929332533
#>     Attrib V8    -0.32175693077525674
#>     Attrib V9    -0.5634621528126611
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.45299000727109706
#>     Attrib V1    0.6516626175216748
#>     Attrib V10    -0.4155205796472618
#>     Attrib V11    0.21343160572840056
#>     Attrib V12    0.01644754894741316
#>     Attrib V13    -0.6883937595532492
#>     Attrib V14    -0.13960374818612808
#>     Attrib V15    0.22157783272120674
#>     Attrib V16    0.1854957032124068
#>     Attrib V17    0.13364208362486082
#>     Attrib V18    0.16200640945656344
#>     Attrib V19    0.1493233341447976
#>     Attrib V2    -0.056966606919605374
#>     Attrib V20    0.6344464737415514
#>     Attrib V21    0.6413185746422432
#>     Attrib V22    0.37181249970984254
#>     Attrib V23    0.41033758356585337
#>     Attrib V24    0.17413230662742615
#>     Attrib V25    -0.47831564343889466
#>     Attrib V26    -1.1753375616735164
#>     Attrib V27    -0.9172983909449504
#>     Attrib V28    -0.35230073618501856
#>     Attrib V29    -0.19780420650134287
#>     Attrib V3    -0.28663998698409016
#>     Attrib V30    -0.22800149167005776
#>     Attrib V31    -1.2001267223765708
#>     Attrib V32    -0.21330267795144842
#>     Attrib V33    0.5865550145555192
#>     Attrib V34    -0.19910036309946724
#>     Attrib V35    -0.30385982850980214
#>     Attrib V36    -0.47403516271953744
#>     Attrib V37    -0.8003096989150619
#>     Attrib V38    -0.1350882974623852
#>     Attrib V39    0.08710192342407981
#>     Attrib V4    0.39426090020434185
#>     Attrib V40    -0.13598304055010038
#>     Attrib V41    -0.23103678757220966
#>     Attrib V42    0.03834794356164256
#>     Attrib V43    0.6395927539289408
#>     Attrib V44    0.4370571248116538
#>     Attrib V45    0.044007717457140334
#>     Attrib V46    -0.1179950992118313
#>     Attrib V47    -0.19058967015922232
#>     Attrib V48    -0.12229632715043474
#>     Attrib V49    0.18080300223440662
#>     Attrib V5    0.2239880278418339
#>     Attrib V50    -0.09469819037185649
#>     Attrib V51    -0.049421209399276515
#>     Attrib V52    0.3730721656266047
#>     Attrib V53    0.44862757593532565
#>     Attrib V54    0.7000066511186508
#>     Attrib V55    -0.3254285244114401
#>     Attrib V56    0.2205995028930115
#>     Attrib V57    0.5218452388127954
#>     Attrib V58    1.1157288872181137
#>     Attrib V59    0.8544762437008766
#>     Attrib V6    -0.26581411287373574
#>     Attrib V60    0.17367156703798262
#>     Attrib V7    -0.047873738933373156
#>     Attrib V8    0.6103419363230089
#>     Attrib V9    0.36454747483437605
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.24747257504551354
#>     Attrib V1    0.34796671168036747
#>     Attrib V10    -0.2472919205739994
#>     Attrib V11    0.2603400589527856
#>     Attrib V12    0.19425685722998726
#>     Attrib V13    -0.38692042387331926
#>     Attrib V14    -0.17607476365565422
#>     Attrib V15    0.047962609152915614
#>     Attrib V16    0.019218313800317445
#>     Attrib V17    0.1644602660717041
#>     Attrib V18    0.23222868148675826
#>     Attrib V19    0.20937344623513784
#>     Attrib V2    -0.13529250861077924
#>     Attrib V20    0.3743157763835332
#>     Attrib V21    0.31756795591276915
#>     Attrib V22    0.27228282833178036
#>     Attrib V23    0.41235631499195696
#>     Attrib V24    0.2228627275046148
#>     Attrib V25    -0.06439565235991537
#>     Attrib V26    -0.588218975297554
#>     Attrib V27    -0.5910274089841335
#>     Attrib V28    -0.32668997629639107
#>     Attrib V29    -0.4224151082691133
#>     Attrib V3    -0.1936785600629291
#>     Attrib V30    -0.276612604945646
#>     Attrib V31    -0.8653170323430931
#>     Attrib V32    -0.09103981803633421
#>     Attrib V33    0.4633149697204443
#>     Attrib V34    -0.048553313940535754
#>     Attrib V35    -0.0010530958948686015
#>     Attrib V36    -0.18300948543040788
#>     Attrib V37    -0.485271646152933
#>     Attrib V38    -0.11902760775220413
#>     Attrib V39    0.03535737944201012
#>     Attrib V4    0.30606176359046217
#>     Attrib V40    -0.08751391819834131
#>     Attrib V41    -0.10313473985545826
#>     Attrib V42    -0.07735579767428637
#>     Attrib V43    0.4045345203574657
#>     Attrib V44    0.3593640184539981
#>     Attrib V45    0.1131250926625559
#>     Attrib V46    -0.12665484060392876
#>     Attrib V47    -0.06568178870293508
#>     Attrib V48    -0.12379551744057203
#>     Attrib V49    0.07828695817986797
#>     Attrib V5    0.16518363603297892
#>     Attrib V50    -0.18221502540759593
#>     Attrib V51    -8.68629625686034E-4
#>     Attrib V52    0.3385804901633755
#>     Attrib V53    0.314295023237658
#>     Attrib V54    0.5177527180056268
#>     Attrib V55    -0.193797909407703
#>     Attrib V56    0.1671721311023603
#>     Attrib V57    0.2231121354933592
#>     Attrib V58    0.7273255767848132
#>     Attrib V59    0.5394129549756148
#>     Attrib V6    -0.0705638788917936
#>     Attrib V60    0.06371162393639282
#>     Attrib V7    0.04883866189373692
#>     Attrib V8    0.4258963830922828
#>     Attrib V9    0.31197295109538176
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.17742698686613373
#>     Attrib V1    -0.035614616771435854
#>     Attrib V10    -0.040450032497151595
#>     Attrib V11    -0.17223664724935808
#>     Attrib V12    -0.1709563776338778
#>     Attrib V13    0.015021672356272305
#>     Attrib V14    0.1216973350737633
#>     Attrib V15    0.11611796493608036
#>     Attrib V16    0.07463380704044982
#>     Attrib V17    0.11348467253952192
#>     Attrib V18    0.010277655661602976
#>     Attrib V19    -0.016104784601650202
#>     Attrib V2    0.012885333645634803
#>     Attrib V20    -0.0471943064288454
#>     Attrib V21    -0.054724049903612605
#>     Attrib V22    -0.06083259682990772
#>     Attrib V23    0.008360884915160469
#>     Attrib V24    -0.0732616216820698
#>     Attrib V25    -0.012861208485766646
#>     Attrib V26    0.08442676321995618
#>     Attrib V27    -0.046342925080896616
#>     Attrib V28    -0.06259181201823838
#>     Attrib V29    -0.05607218675824416
#>     Attrib V3    0.06687749468989862
#>     Attrib V30    -0.03315948017083992
#>     Attrib V31    0.10379336544455774
#>     Attrib V32    0.05875708030395094
#>     Attrib V33    -0.058615125824404486
#>     Attrib V34    0.04132685363651897
#>     Attrib V35    0.0601898427570714
#>     Attrib V36    0.20007524481695263
#>     Attrib V37    0.13878130376518208
#>     Attrib V38    0.037112693744657865
#>     Attrib V39    -0.020290508269398804
#>     Attrib V4    0.05765900829516219
#>     Attrib V40    0.07590567487014456
#>     Attrib V41    0.06568413064033811
#>     Attrib V42    0.0740017645860188
#>     Attrib V43    0.03105745651912005
#>     Attrib V44    -0.08236059931844375
#>     Attrib V45    -0.11501554270336511
#>     Attrib V46    -0.02249106508305431
#>     Attrib V47    0.040472678418170545
#>     Attrib V48    -0.03342492234069146
#>     Attrib V49    -0.11123941247442917
#>     Attrib V5    0.013315081672272628
#>     Attrib V50    0.19099535146836258
#>     Attrib V51    0.03191263560155313
#>     Attrib V52    -0.03464956425568787
#>     Attrib V53    -0.05657315699272845
#>     Attrib V54    -0.06282917414566108
#>     Attrib V55    0.12267303609651854
#>     Attrib V56    0.11000058253402065
#>     Attrib V57    0.06078956647056385
#>     Attrib V58    -0.0676869734847891
#>     Attrib V59    -0.02228890915685214
#>     Attrib V6    0.07069274449011495
#>     Attrib V60    0.024338052615994248
#>     Attrib V7    0.04502794608372864
#>     Attrib V8    0.03413082369707297
#>     Attrib V9    -0.029893108764451032
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.42661774459757235
#>     Attrib V1    -0.12057200973484315
#>     Attrib V10    0.8149008838482065
#>     Attrib V11    1.575175569447376
#>     Attrib V12    2.5594065903362018
#>     Attrib V13    1.0724971365398115
#>     Attrib V14    -0.10980558715426841
#>     Attrib V15    -0.7074817401606288
#>     Attrib V16    -0.8554023958284778
#>     Attrib V17    -0.6235495569589741
#>     Attrib V18    -0.41738642250884633
#>     Attrib V19    -0.6333819216867607
#>     Attrib V2    0.7740221039958083
#>     Attrib V20    -0.7139586394441252
#>     Attrib V21    -0.052779506891291794
#>     Attrib V22    0.7183110666822738
#>     Attrib V23    0.018962363835676378
#>     Attrib V24    -0.5526901602044839
#>     Attrib V25    0.06727947529382657
#>     Attrib V26    1.2590322430603154
#>     Attrib V27    1.6359311676806516
#>     Attrib V28    1.7974280245050063
#>     Attrib V29    1.670191506423958
#>     Attrib V3    0.6519919395365062
#>     Attrib V30    1.1468990708383233
#>     Attrib V31    -0.3280064320985947
#>     Attrib V32    -0.5501477926856382
#>     Attrib V33    -1.2676517893489343
#>     Attrib V34    -0.34795408428545016
#>     Attrib V35    -0.13328505075148722
#>     Attrib V36    -0.8166413020092171
#>     Attrib V37    -0.04816565653555952
#>     Attrib V38    -0.18463760095373577
#>     Attrib V39    0.5418777691976021
#>     Attrib V4    0.4380213356733856
#>     Attrib V40    0.6822060548629147
#>     Attrib V41    1.2435548822465805
#>     Attrib V42    -0.46233763971202013
#>     Attrib V43    -0.33882664674503865
#>     Attrib V44    0.19317509598308794
#>     Attrib V45    0.5299726889705785
#>     Attrib V46    0.7590872337193991
#>     Attrib V47    0.365995098575964
#>     Attrib V48    0.7867838675420903
#>     Attrib V49    0.9156709758499826
#>     Attrib V5    0.2897297376073099
#>     Attrib V50    -1.0686515972058517
#>     Attrib V51    0.9453824132723777
#>     Attrib V52    1.4184534064578949
#>     Attrib V53    0.8147015846189428
#>     Attrib V54    -0.07223780808158205
#>     Attrib V55    -1.0746014272026974
#>     Attrib V56    -0.5655406492498963
#>     Attrib V57    -0.18859746630954496
#>     Attrib V58    0.06012022262377642
#>     Attrib V59    -0.30958146937460995
#>     Attrib V6    0.7172490874163597
#>     Attrib V60    0.5314653643363646
#>     Attrib V7    -0.8798040786539022
#>     Attrib V8    -1.1727911166509397
#>     Attrib V9    0.5680990911870721
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.33044114951712106
#>     Attrib V1    -0.054580624997132614
#>     Attrib V10    -0.1271261784342601
#>     Attrib V11    -0.46675076077269695
#>     Attrib V12    -0.5019299005463401
#>     Attrib V13    0.11789280190719881
#>     Attrib V14    0.334877977648808
#>     Attrib V15    0.15741222314682385
#>     Attrib V16    0.1547147718470963
#>     Attrib V17    0.16355648892142685
#>     Attrib V18    0.023891887888747545
#>     Attrib V19    0.10637797390929957
#>     Attrib V2    0.043576161553869334
#>     Attrib V20    0.05932755902922488
#>     Attrib V21    0.04986149315451091
#>     Attrib V22    -0.02634571469078978
#>     Attrib V23    -0.055183560994494577
#>     Attrib V24    -0.05147035014790705
#>     Attrib V25    0.02726387747092913
#>     Attrib V26    0.17357239051691775
#>     Attrib V27    0.07728234149523719
#>     Attrib V28    -0.14718516768090692
#>     Attrib V29    0.008332233913666375
#>     Attrib V3    0.11421106874783457
#>     Attrib V30    -0.07048431302406266
#>     Attrib V31    0.2910674432667283
#>     Attrib V32    -0.09944533051507279
#>     Attrib V33    -0.21724066525848798
#>     Attrib V34    -0.09347577811882478
#>     Attrib V35    0.03503233329060563
#>     Attrib V36    0.3339072874228444
#>     Attrib V37    0.41183061372230606
#>     Attrib V38    0.043866786083616514
#>     Attrib V39    -0.13215745531371265
#>     Attrib V4    -0.026119707664560312
#>     Attrib V40    -0.10344720574897638
#>     Attrib V41    -0.046002708809120336
#>     Attrib V42    0.2526634015246323
#>     Attrib V43    -0.08556139198499013
#>     Attrib V44    -0.20089245110056814
#>     Attrib V45    -0.1421679615527136
#>     Attrib V46    -0.14592256236633178
#>     Attrib V47    -0.11963315641420813
#>     Attrib V48    -0.14521405446694202
#>     Attrib V49    -0.27767598865380294
#>     Attrib V5    -0.02371147689055109
#>     Attrib V50    0.39117586431106294
#>     Attrib V51    -0.16740125030689998
#>     Attrib V52    -0.40112109042280736
#>     Attrib V53    -0.1415496057318278
#>     Attrib V54    -0.0867982722872284
#>     Attrib V55    0.29998421542289894
#>     Attrib V56    0.12298312681125566
#>     Attrib V57    0.01908858344150124
#>     Attrib V58    -0.3594898018920436
#>     Attrib V59    -0.0539018952129691
#>     Attrib V6    0.017303522827520505
#>     Attrib V60    0.11428656215125373
#>     Attrib V7    0.11667662378371592
#>     Attrib V8    -0.004673717998629034
#>     Attrib V9    -0.3458373314718536
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.352153871195122
#>     Attrib V1    0.11584740996083584
#>     Attrib V10    0.751104704824752
#>     Attrib V11    1.250170258450735
#>     Attrib V12    1.5853670216889018
#>     Attrib V13    0.2620407864100129
#>     Attrib V14    -0.49176187868388294
#>     Attrib V15    -0.6054211136705071
#>     Attrib V16    -0.6602293147345586
#>     Attrib V17    -0.4437365735350394
#>     Attrib V18    -0.11540976863422593
#>     Attrib V19    -0.27126566743838576
#>     Attrib V2    0.34826314779438244
#>     Attrib V20    -0.34982867074585927
#>     Attrib V21    0.07112433660887119
#>     Attrib V22    0.5045846025695689
#>     Attrib V23    0.15679227523594463
#>     Attrib V24    -0.2175659264461642
#>     Attrib V25    0.05228819306291316
#>     Attrib V26    0.5420182427872834
#>     Attrib V27    0.7163973924318673
#>     Attrib V28    1.0507482951594127
#>     Attrib V29    0.8976396217262481
#>     Attrib V3    0.07652552285584456
#>     Attrib V30    0.877777295634249
#>     Attrib V31    -0.23877657568258784
#>     Attrib V32    -0.09255977480910199
#>     Attrib V33    -0.3712858863646192
#>     Attrib V34    -0.051149657153552575
#>     Attrib V35    0.1274576659937814
#>     Attrib V36    -0.46049877005101797
#>     Attrib V37    -0.24042174515893872
#>     Attrib V38    -0.029841828316712712
#>     Attrib V39    0.4315679315216292
#>     Attrib V4    0.34429206169258064
#>     Attrib V40    0.19450073929257325
#>     Attrib V41    0.43288088072406117
#>     Attrib V42    -0.5889923056628291
#>     Attrib V43    -0.15643803153582045
#>     Attrib V44    0.3527781987075115
#>     Attrib V45    0.4600088003444317
#>     Attrib V46    0.4744056925672266
#>     Attrib V47    0.3346728601509884
#>     Attrib V48    0.5910644521825753
#>     Attrib V49    0.6025160479189904
#>     Attrib V5    0.17070998058308479
#>     Attrib V50    -0.7198584351896241
#>     Attrib V51    0.68562803109789
#>     Attrib V52    1.0539697176629848
#>     Attrib V53    0.2867459481933186
#>     Attrib V54    -0.11649943676673437
#>     Attrib V55    -0.8125905130344427
#>     Attrib V56    -0.5254787031402484
#>     Attrib V57    -0.3213080747007095
#>     Attrib V58    0.25219633070276504
#>     Attrib V59    -0.49515873069485095
#>     Attrib V6    0.4550612466435089
#>     Attrib V60    0.020907752681310357
#>     Attrib V7    -0.46508879918668344
#>     Attrib V8    -0.6440260234872549
#>     Attrib V9    0.7349626723140001
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.34397634743491273
#>     Attrib V1    -0.04663227378132017
#>     Attrib V10    -0.1487893837376896
#>     Attrib V11    -0.5280133169350004
#>     Attrib V12    -0.6448788421915775
#>     Attrib V13    0.17880235103187866
#>     Attrib V14    0.3501476064336489
#>     Attrib V15    0.2641224950612244
#>     Attrib V16    0.24118021981567234
#>     Attrib V17    0.136380512664927
#>     Attrib V18    0.10105782983146344
#>     Attrib V19    0.023812110733713348
#>     Attrib V2    0.008889888945235723
#>     Attrib V20    0.015300097578041752
#>     Attrib V21    0.031106399614132706
#>     Attrib V22    -0.05707794010555143
#>     Attrib V23    -0.14151586058200435
#>     Attrib V24    -0.055974220067938424
#>     Attrib V25    -0.02408210812478553
#>     Attrib V26    0.2212402327382678
#>     Attrib V27    0.06562081510506575
#>     Attrib V28    -0.27045244454834183
#>     Attrib V29    -0.03828559298036724
#>     Attrib V3    0.2049627783175984
#>     Attrib V30    -0.06504452718311293
#>     Attrib V31    0.38771862881492797
#>     Attrib V32    -0.03102232156830176
#>     Attrib V33    -0.30088179623814054
#>     Attrib V34    -0.0635400583133922
#>     Attrib V35    0.016142462997940855
#>     Attrib V36    0.37125436731375266
#>     Attrib V37    0.41303138493076513
#>     Attrib V38    0.099630957197601
#>     Attrib V39    -0.1612877470665401
#>     Attrib V4    -0.03972244326367587
#>     Attrib V40    -0.12834157672997237
#>     Attrib V41    -0.03722814079071043
#>     Attrib V42    0.2569442965469317
#>     Attrib V43    -0.11031791659941857
#>     Attrib V44    -0.2697981703199825
#>     Attrib V45    -0.13666857825471254
#>     Attrib V46    -0.1301721418037782
#>     Attrib V47    -0.14217498240345477
#>     Attrib V48    -0.20360445604722524
#>     Attrib V49    -0.3282054253320788
#>     Attrib V5    -0.03594046820827778
#>     Attrib V50    0.49796875624145626
#>     Attrib V51    -0.19252147540345205
#>     Attrib V52    -0.40367877164812915
#>     Attrib V53    -0.157587970392256
#>     Attrib V54    -0.04824206705370761
#>     Attrib V55    0.37867206135184023
#>     Attrib V56    0.1279928002013108
#>     Attrib V57    -0.0197079869505072
#>     Attrib V58    -0.4299136210670143
#>     Attrib V59    -0.07248679551179595
#>     Attrib V6    -0.010443361897283761
#>     Attrib V60    0.06423014224513288
#>     Attrib V7    0.19879834528665838
#>     Attrib V8    0.010555515391816568
#>     Attrib V9    -0.3311625078191724
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.20551092570324428
#>     Attrib V1    0.222420005866299
#>     Attrib V10    0.02100344139979211
#>     Attrib V11    0.4758725586787564
#>     Attrib V12    0.3765345959500393
#>     Attrib V13    -0.3660007932551156
#>     Attrib V14    -0.29892156695576344
#>     Attrib V15    -0.1429636380035526
#>     Attrib V16    -0.11865193281399575
#>     Attrib V17    0.08016418399737163
#>     Attrib V18    0.25522226384290947
#>     Attrib V19    0.2155682239021592
#>     Attrib V2    -0.08566364240669416
#>     Attrib V20    0.430549458033173
#>     Attrib V21    0.40591486027530205
#>     Attrib V22    0.49884295025657294
#>     Attrib V23    0.5098873775217203
#>     Attrib V24    0.34150298726447087
#>     Attrib V25    0.18421585935255963
#>     Attrib V26    -0.3614128946720767
#>     Attrib V27    -0.28656793712682105
#>     Attrib V28    0.04270817627087517
#>     Attrib V29    -0.08863983249452603
#>     Attrib V3    -0.20217298136242567
#>     Attrib V30    -0.0822022815876058
#>     Attrib V31    -0.7304362474466829
#>     Attrib V32    -0.042441222542150596
#>     Attrib V33    0.29278355006559986
#>     Attrib V34    -0.023832609112500312
#>     Attrib V35    0.14583154950830715
#>     Attrib V36    -0.04139162749979251
#>     Attrib V37    -0.24891458344506
#>     Attrib V38    0.1104152616029099
#>     Attrib V39    0.1921017096233738
#>     Attrib V4    0.228740708183293
#>     Attrib V40    -0.037027857439452826
#>     Attrib V41    -0.027321542836822147
#>     Attrib V42    -0.20792905296084305
#>     Attrib V43    0.37195217236032035
#>     Attrib V44    0.45972386841183627
#>     Attrib V45    0.3115012985453488
#>     Attrib V46    0.057541714477908755
#>     Attrib V47    0.08162871368788355
#>     Attrib V48    0.026254420950944424
#>     Attrib V49    0.17353677864240968
#>     Attrib V5    0.16500485224440356
#>     Attrib V50    -0.20840399690750971
#>     Attrib V51    0.1892621376809854
#>     Attrib V52    0.43540416903740264
#>     Attrib V53    0.15575776608031416
#>     Attrib V54    0.4269767440515485
#>     Attrib V55    -0.33319203628374205
#>     Attrib V56    0.03504581953878075
#>     Attrib V57    0.022003224301326885
#>     Attrib V58    0.5295512631744783
#>     Attrib V59    0.15193866563214964
#>     Attrib V6    0.019736679338802427
#>     Attrib V60    -0.021310454701111203
#>     Attrib V7    -0.0448703393010145
#>     Attrib V8    0.18949711533544214
#>     Attrib V9    0.4393085095691595
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.4156725415277298
#>     Attrib V1    -0.06915525651993465
#>     Attrib V10    -0.12528053348492552
#>     Attrib V11    -0.6510598340268164
#>     Attrib V12    -0.6978271826218669
#>     Attrib V13    0.31478680263686243
#>     Attrib V14    0.4432797773242793
#>     Attrib V15    0.2254861450059284
#>     Attrib V16    0.18119606550222703
#>     Attrib V17    0.17344436241507377
#>     Attrib V18    0.0183741721592918
#>     Attrib V19    -0.015805296963611992
#>     Attrib V2    0.09157473703452142
#>     Attrib V20    0.02045717282119627
#>     Attrib V21    0.030024630130974925
#>     Attrib V22    -0.08344881711449492
#>     Attrib V23    -0.1263824766509886
#>     Attrib V24    -0.11913702428147288
#>     Attrib V25    0.07250445348856874
#>     Attrib V26    0.39604138856293847
#>     Attrib V27    0.1857119745758818
#>     Attrib V28    -0.0853321767093383
#>     Attrib V29    0.09432265155040705
#>     Attrib V3    0.21460366401961817
#>     Attrib V30    -0.03594591494839069
#>     Attrib V31    0.5237108966977999
#>     Attrib V32    -0.19568473520250865
#>     Attrib V33    -0.45192956874971596
#>     Attrib V34    -0.08953662368611934
#>     Attrib V35    0.10613819797009608
#>     Attrib V36    0.5089950836512508
#>     Attrib V37    0.7286041704267509
#>     Attrib V38    0.1577009378149596
#>     Attrib V39    -0.0845144724016307
#>     Attrib V4    -0.10127739511449602
#>     Attrib V40    -0.06681180859104777
#>     Attrib V41    -0.012061096843888588
#>     Attrib V42    0.37787842439835484
#>     Attrib V43    -0.1550542902304972
#>     Attrib V44    -0.32130533915340687
#>     Attrib V45    -0.12622778405204954
#>     Attrib V46    -0.08625768670037316
#>     Attrib V47    -0.10198752712385188
#>     Attrib V48    -0.18659838949582258
#>     Attrib V49    -0.36815043622815574
#>     Attrib V5    -0.08193810325296347
#>     Attrib V50    0.5462327788800396
#>     Attrib V51    -0.21818037503426657
#>     Attrib V52    -0.579723383089892
#>     Attrib V53    -0.2115797566163399
#>     Attrib V54    -0.15226345087128162
#>     Attrib V55    0.4081216537809471
#>     Attrib V56    0.16409497617386978
#>     Attrib V57    -0.05219267601315278
#>     Attrib V58    -0.5807625560200316
#>     Attrib V59    -0.08862882541727077
#>     Attrib V6    -0.07362682928388643
#>     Attrib V60    0.13171501946184808
#>     Attrib V7    0.09849330255431249
#>     Attrib V8    -0.14309477796703488
#>     Attrib V9    -0.5544975553102575
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.3072754179258628
#>     Attrib V1    0.4298433966458166
#>     Attrib V10    -0.25688143044460876
#>     Attrib V11    0.3029691446300182
#>     Attrib V12    0.09016912234819163
#>     Attrib V13    -0.5728301220193542
#>     Attrib V14    -0.2649126184955468
#>     Attrib V15    0.09043712957783615
#>     Attrib V16    0.08359928877612732
#>     Attrib V17    0.16443674554605775
#>     Attrib V18    0.26605328630009756
#>     Attrib V19    0.23838305039251143
#>     Attrib V2    -0.11414333967665095
#>     Attrib V20    0.5472344972804289
#>     Attrib V21    0.39832455780138776
#>     Attrib V22    0.3498367588198762
#>     Attrib V23    0.5586803455510283
#>     Attrib V24    0.3975511196904278
#>     Attrib V25    -0.1248305094435877
#>     Attrib V26    -0.8930114920386942
#>     Attrib V27    -0.8376538265383433
#>     Attrib V28    -0.44242845635016365
#>     Attrib V29    -0.5828274500113894
#>     Attrib V3    -0.3646553175803219
#>     Attrib V30    -0.38868018470062765
#>     Attrib V31    -1.05746866487044
#>     Attrib V32    -0.05801985064176786
#>     Attrib V33    0.7193411095146734
#>     Attrib V34    0.023237781576383246
#>     Attrib V35    -0.03566739165722854
#>     Attrib V36    -0.30875526658843966
#>     Attrib V37    -0.7323472177768824
#>     Attrib V38    -0.09991980228711209
#>     Attrib V39    0.025053675585180544
#>     Attrib V4    0.30038856661182395
#>     Attrib V40    -0.09755776466673427
#>     Attrib V41    -0.2139410256907238
#>     Attrib V42    -0.0761994726279614
#>     Attrib V43    0.5416932085771575
#>     Attrib V44    0.5306302272022265
#>     Attrib V45    0.10666580800461599
#>     Attrib V46    -0.1301850362465253
#>     Attrib V47    -0.10654969708561106
#>     Attrib V48    -0.09275440685566294
#>     Attrib V49    0.14307590567860456
#>     Attrib V5    0.1373623931751733
#>     Attrib V50    -0.18436758177031426
#>     Attrib V51    -0.023011347605091586
#>     Attrib V52    0.3558490484600721
#>     Attrib V53    0.3485216666814882
#>     Attrib V54    0.7220279511501054
#>     Attrib V55    -0.2544351599441159
#>     Attrib V56    0.11743486237338677
#>     Attrib V57    0.2839687954739008
#>     Attrib V58    0.9073220152304495
#>     Attrib V59    0.5823240346845903
#>     Attrib V6    -0.15578649329740324
#>     Attrib V60    0.045231895145662025
#>     Attrib V7    0.09075885243653709
#>     Attrib V8    0.6056787229329715
#>     Attrib V9    0.46144749973508786
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.04928089047621255
#>     Attrib V1    0.26450365008214277
#>     Attrib V10    -0.11967888590659742
#>     Attrib V11    0.19100505881891094
#>     Attrib V12    0.12753420320728837
#>     Attrib V13    -0.25279320533452126
#>     Attrib V14    -0.03725952963326265
#>     Attrib V15    0.03454189634625334
#>     Attrib V16    0.04600408279230401
#>     Attrib V17    0.034251398522827964
#>     Attrib V18    0.17664736147454327
#>     Attrib V19    0.099748284578722
#>     Attrib V2    -0.006290451549007971
#>     Attrib V20    0.27307086995871455
#>     Attrib V21    0.23354896608110626
#>     Attrib V22    0.14308188208294356
#>     Attrib V23    0.20168583270135826
#>     Attrib V24    0.06281847966410395
#>     Attrib V25    -0.13375500056432857
#>     Attrib V26    -0.3539532304609311
#>     Attrib V27    -0.2663913458279152
#>     Attrib V28    -0.06054835837572946
#>     Attrib V29    -0.12083789595770456
#>     Attrib V3    -0.024887740968761642
#>     Attrib V30    -0.03541543357175417
#>     Attrib V31    -0.5055017111094138
#>     Attrib V32    -0.10914303003241806
#>     Attrib V33    0.1903536522717667
#>     Attrib V34    -0.006808159284173354
#>     Attrib V35    0.03363173761197829
#>     Attrib V36    -0.018477551326692574
#>     Attrib V37    -0.202106878302026
#>     Attrib V38    -0.010305979170369715
#>     Attrib V39    0.09029388052187264
#>     Attrib V4    0.19339881244051713
#>     Attrib V40    -0.05294333636354599
#>     Attrib V41    -0.0722422743869041
#>     Attrib V42    -0.05367695146027363
#>     Attrib V43    0.13560973279083066
#>     Attrib V44    0.2551344887824588
#>     Attrib V45    0.14253748529712265
#>     Attrib V46    -0.004186010795258771
#>     Attrib V47    -0.02707284568630471
#>     Attrib V48    -0.04659216671287424
#>     Attrib V49    0.11967781008203454
#>     Attrib V5    0.1319393122157828
#>     Attrib V50    -0.1027922242941752
#>     Attrib V51    0.07362314985524476
#>     Attrib V52    0.2586422495559041
#>     Attrib V53    0.2048144229514984
#>     Attrib V54    0.22437467059250632
#>     Attrib V55    -0.10569116326128276
#>     Attrib V56    0.06682361025283237
#>     Attrib V57    0.17045977065048018
#>     Attrib V58    0.47025605482806926
#>     Attrib V59    0.2507236093640731
#>     Attrib V6    0.013750075086259327
#>     Attrib V60    0.03820725173334139
#>     Attrib V7    0.004594010226260041
#>     Attrib V8    0.23047887805953055
#>     Attrib V9    0.22812550821816732
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
#>  0.1449275 
```
