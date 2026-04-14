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
#>     Threshold    -0.2279835432953113
#>     Node 2    2.3014443501535395
#>     Node 3    1.3191424849119955
#>     Node 4    1.2756253933602153
#>     Node 5    -2.509432002553486
#>     Node 6    0.7906848205385422
#>     Node 7    2.017799425853121
#>     Node 8    1.226682924798158
#>     Node 9    3.589196287393864
#>     Node 10    -3.171703065444428
#>     Node 11    1.7075280319851869
#>     Node 12    1.9440583019166187
#>     Node 13    0.7457751341302568
#>     Node 14    1.0248149141196135
#>     Node 15    -2.108421007349433
#>     Node 16    -1.0297373616906724
#>     Node 17    0.9040142324421583
#>     Node 18    0.4373579836237035
#>     Node 19    3.0510944262364017
#>     Node 20    1.4677612756854135
#>     Node 21    -1.776843857975813
#>     Node 22    0.8759057139694911
#>     Node 23    1.0117428207126653
#>     Node 24    -1.342984976394711
#>     Node 25    4.276118488746622
#>     Node 26    -1.1530939569849679
#>     Node 27    1.5642454129748573
#>     Node 28    -3.6634630441672087
#>     Node 29    0.8865942349263072
#>     Node 30    -1.4112308527836135
#>     Node 31    0.45100098743741757
#>     Node 32    -0.1359096927926901
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.24555680193047913
#>     Node 2    -2.3449912050193045
#>     Node 3    -1.2985818919318277
#>     Node 4    -1.2297045181018473
#>     Node 5    2.5366811500728734
#>     Node 6    -0.7763870623589639
#>     Node 7    -1.9959485757453763
#>     Node 8    -1.2447581394377543
#>     Node 9    -3.5825705872120954
#>     Node 10    3.149250051354168
#>     Node 11    -1.6852703621855725
#>     Node 12    -1.9848178677388346
#>     Node 13    -0.7000300246902068
#>     Node 14    -0.9515675502458391
#>     Node 15    2.127198185863529
#>     Node 16    0.9924610444928829
#>     Node 17    -0.8763862733674083
#>     Node 18    -0.404855188583965
#>     Node 19    -3.0457150755351954
#>     Node 20    -1.4641067888860977
#>     Node 21    1.793292120863654
#>     Node 22    -0.930385752172826
#>     Node 23    -1.0680334006296146
#>     Node 24    1.30961881407245
#>     Node 25    -4.257527418870192
#>     Node 26    1.094392462434211
#>     Node 27    -1.5979769704296365
#>     Node 28    3.6789028475372034
#>     Node 29    -0.9147031978010354
#>     Node 30    1.442560115305953
#>     Node 31    -0.4069685474377377
#>     Node 32    0.10395575073850229
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.07854760158123002
#>     Attrib V1    0.47700140823373727
#>     Attrib V10    -0.5187439183196269
#>     Attrib V11    -0.5492884777332919
#>     Attrib V12    -0.7346481638685869
#>     Attrib V13    -0.268884546934534
#>     Attrib V14    0.06813461649275555
#>     Attrib V15    0.6194091840113912
#>     Attrib V16    0.35084251915216486
#>     Attrib V17    0.24651463474333443
#>     Attrib V18    0.2754496669211432
#>     Attrib V19    0.844990656538067
#>     Attrib V2    0.36486319250858995
#>     Attrib V20    0.45546511671345724
#>     Attrib V21    0.3536976189757709
#>     Attrib V22    0.11359199520470156
#>     Attrib V23    -0.10883368943654984
#>     Attrib V24    0.18172624197029005
#>     Attrib V25    -0.7220269108400112
#>     Attrib V26    -1.1198121866580741
#>     Attrib V27    -0.6133396801041934
#>     Attrib V28    0.0846379945764442
#>     Attrib V29    0.5560659936388276
#>     Attrib V3    0.29554683540050497
#>     Attrib V30    0.4278662253179354
#>     Attrib V31    -1.1928372801389733
#>     Attrib V32    -0.7984525255685372
#>     Attrib V33    -0.16758841065295332
#>     Attrib V34    -0.187663564913017
#>     Attrib V35    0.032905614948848
#>     Attrib V36    -0.5628492198182439
#>     Attrib V37    -0.8264952353046363
#>     Attrib V38    0.3090045514527892
#>     Attrib V39    0.42681032414425346
#>     Attrib V4    -0.10028666284662298
#>     Attrib V40    -0.3633574440155924
#>     Attrib V41    -0.15845497974487172
#>     Attrib V42    0.8123453710172044
#>     Attrib V43    0.862361414447183
#>     Attrib V44    0.5648876179999898
#>     Attrib V45    0.3445819824081985
#>     Attrib V46    0.6153936142284553
#>     Attrib V47    0.25042524277298256
#>     Attrib V48    0.07092081797951755
#>     Attrib V49    0.45666165912703094
#>     Attrib V5    0.20472937811616623
#>     Attrib V50    -1.1773105627351337
#>     Attrib V51    -0.10124738926069357
#>     Attrib V52    -0.15610266214670415
#>     Attrib V53    0.7063441221717307
#>     Attrib V54    0.25265223591260316
#>     Attrib V55    0.2802132146975015
#>     Attrib V56    0.3394856248841318
#>     Attrib V57    -0.10366037976259601
#>     Attrib V58    0.44289769092422204
#>     Attrib V59    0.6735484846212728
#>     Attrib V6    -0.12787879503533442
#>     Attrib V60    0.3880243548860907
#>     Attrib V7    -0.18276323428784227
#>     Attrib V8    -0.2769104826394525
#>     Attrib V9    -0.07363627959250565
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.14279509084028408
#>     Attrib V1    0.09446178948990482
#>     Attrib V10    0.02883549996729284
#>     Attrib V11    -0.019769223724939843
#>     Attrib V12    0.06757296299463929
#>     Attrib V13    0.07036426352436086
#>     Attrib V14    -0.34201883100230285
#>     Attrib V15    -0.034938529948893154
#>     Attrib V16    -0.1530396120535664
#>     Attrib V17    -0.1465464386971725
#>     Attrib V18    -0.10838096632129608
#>     Attrib V19    0.4490531455736868
#>     Attrib V2    0.17308480711423538
#>     Attrib V20    -0.06041006360418876
#>     Attrib V21    -0.03165023737682688
#>     Attrib V22    0.25757953018528723
#>     Attrib V23    0.08620693395456214
#>     Attrib V24    0.43618287988055127
#>     Attrib V25    0.08684059312067444
#>     Attrib V26    -0.1583400980618109
#>     Attrib V27    -0.12338624462878017
#>     Attrib V28    -0.007222449894938368
#>     Attrib V29    -0.03718600541604937
#>     Attrib V3    0.02331256097579227
#>     Attrib V30    0.32027436254684527
#>     Attrib V31    -0.3932450286139756
#>     Attrib V32    -0.008002239652488388
#>     Attrib V33    0.20495612817658915
#>     Attrib V34    0.19641896258921654
#>     Attrib V35    0.31709872261907074
#>     Attrib V36    -0.3035177485329713
#>     Attrib V37    -0.7034877158754573
#>     Attrib V38    -0.0072086066580388545
#>     Attrib V39    0.2159430828008802
#>     Attrib V4    -0.36902775667420473
#>     Attrib V40    -0.13843533551462675
#>     Attrib V41    0.09950020679408132
#>     Attrib V42    0.37720574753491715
#>     Attrib V43    0.549664611201063
#>     Attrib V44    0.2818343544095976
#>     Attrib V45    0.1272132714018652
#>     Attrib V46    0.39661252776388883
#>     Attrib V47    0.28999069238482783
#>     Attrib V48    0.25355024794664566
#>     Attrib V49    0.47885094803011885
#>     Attrib V5    -0.0791829814565236
#>     Attrib V50    -1.0404878417945624
#>     Attrib V51    0.05629158561956383
#>     Attrib V52    -0.15099448243412
#>     Attrib V53    0.27453070527695617
#>     Attrib V54    -0.015716463926071865
#>     Attrib V55    -0.02371868075241175
#>     Attrib V56    0.1072732534825213
#>     Attrib V57    -0.25091129734618645
#>     Attrib V58    0.16733056292672185
#>     Attrib V59    0.228089343449505
#>     Attrib V6    -0.10992902838585951
#>     Attrib V60    0.15306779429556555
#>     Attrib V7    -0.3883676006621158
#>     Attrib V8    -0.33457851004431277
#>     Attrib V9    0.1474204760788396
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.02410449707579035
#>     Attrib V1    0.2449766439925055
#>     Attrib V10    -0.2538754657092692
#>     Attrib V11    -0.23913384639134627
#>     Attrib V12    -0.36099472536801347
#>     Attrib V13    -0.13678470186482738
#>     Attrib V14    -0.03380306030398156
#>     Attrib V15    0.36726244672023234
#>     Attrib V16    0.2283632941239372
#>     Attrib V17    0.17062545581835892
#>     Attrib V18    0.1187022604047337
#>     Attrib V19    0.5417744986213376
#>     Attrib V2    0.2232459072646065
#>     Attrib V20    0.22690123801476464
#>     Attrib V21    0.20188673924355607
#>     Attrib V22    0.05308036817930995
#>     Attrib V23    -0.11304900443604815
#>     Attrib V24    0.06077314251590221
#>     Attrib V25    -0.4469683514642147
#>     Attrib V26    -0.6366881894203692
#>     Attrib V27    -0.40518092228841224
#>     Attrib V28    0.04941841389716689
#>     Attrib V29    0.2690065067894229
#>     Attrib V3    0.12535102035735818
#>     Attrib V30    0.27260273966461424
#>     Attrib V31    -0.6145756198804584
#>     Attrib V32    -0.3722977453466189
#>     Attrib V33    0.02813690048112804
#>     Attrib V34    0.02914900356067055
#>     Attrib V35    0.1404800680736091
#>     Attrib V36    -0.2858930063133571
#>     Attrib V37    -0.495056090218176
#>     Attrib V38    0.15707345292270916
#>     Attrib V39    0.2686978146666751
#>     Attrib V4    -0.10321369651097435
#>     Attrib V40    -0.23049674410968854
#>     Attrib V41    -0.19444080498710795
#>     Attrib V42    0.3912683496076094
#>     Attrib V43    0.4702161786216583
#>     Attrib V44    0.33849959352973097
#>     Attrib V45    0.2730815863265094
#>     Attrib V46    0.3642205109054132
#>     Attrib V47    0.18657295006860491
#>     Attrib V48    0.17003547451103515
#>     Attrib V49    0.4183758429270421
#>     Attrib V5    0.12172546637755309
#>     Attrib V50    -0.7231493396684127
#>     Attrib V51    0.0291551594070072
#>     Attrib V52    -0.07664549592842004
#>     Attrib V53    0.45735851938579447
#>     Attrib V54    0.0660034012164987
#>     Attrib V55    0.17259599707685758
#>     Attrib V56    0.2466253085958218
#>     Attrib V57    -0.0360917136719784
#>     Attrib V58    0.2501332197802302
#>     Attrib V59    0.37382283169140945
#>     Attrib V6    -0.12816812285041737
#>     Attrib V60    0.2306481056703117
#>     Attrib V7    -0.1639005153499327
#>     Attrib V8    -0.24985908441977991
#>     Attrib V9    0.035912867456550875
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    0.12636188656215155
#>     Attrib V1    0.17206671825134146
#>     Attrib V10    -0.5728474935061482
#>     Attrib V11    -0.36266995743103486
#>     Attrib V12    -0.5788805838748619
#>     Attrib V13    -0.23734167541665407
#>     Attrib V14    0.6595921430636392
#>     Attrib V15    0.5075836981307836
#>     Attrib V16    0.3244872119406718
#>     Attrib V17    0.10099205795138469
#>     Attrib V18    0.2220943864227531
#>     Attrib V19    -0.7596869888720785
#>     Attrib V2    0.21283039579249338
#>     Attrib V20    0.13014152597261572
#>     Attrib V21    0.20705576586740332
#>     Attrib V22    -0.523623282509734
#>     Attrib V23    -0.620934986998924
#>     Attrib V24    -0.8919970817575281
#>     Attrib V25    0.2798072854600881
#>     Attrib V26    0.41072707757417437
#>     Attrib V27    0.14966867335087575
#>     Attrib V28    -0.03208706610493958
#>     Attrib V29    0.5503053859656442
#>     Attrib V3    -0.3521650819129854
#>     Attrib V30    -0.029086422486155054
#>     Attrib V31    0.7141017920597067
#>     Attrib V32    0.26977983448043635
#>     Attrib V33    -0.07441168434054901
#>     Attrib V34    0.026664618520293337
#>     Attrib V35    0.39865974588377917
#>     Attrib V36    1.3911298396933498
#>     Attrib V37    2.2333894240301264
#>     Attrib V38    0.36894667245369356
#>     Attrib V39    -0.39449817405116805
#>     Attrib V4    -0.1661153729208698
#>     Attrib V40    0.2759294711120642
#>     Attrib V41    -0.15796018267251172
#>     Attrib V42    -0.20442238701468235
#>     Attrib V43    -0.3564414341326942
#>     Attrib V44    0.43843565032293624
#>     Attrib V45    0.29306844024287837
#>     Attrib V46    -0.3912439078216637
#>     Attrib V47    -0.08935828954261406
#>     Attrib V48    -0.2645263044233396
#>     Attrib V49    -0.7957454557954073
#>     Attrib V5    -0.780789119900736
#>     Attrib V50    2.0299486021330946
#>     Attrib V51    -0.5306995026616899
#>     Attrib V52    -0.29881574430323565
#>     Attrib V53    -0.3950970728977802
#>     Attrib V54    0.4971182441373792
#>     Attrib V55    0.18174660202113183
#>     Attrib V56    -0.0914065790607145
#>     Attrib V57    -0.018836709372430184
#>     Attrib V58    -0.5360586278133336
#>     Attrib V59    -0.7045094466417553
#>     Attrib V6    -0.4717757909351638
#>     Attrib V60    -0.44141289237859943
#>     Attrib V7    0.5730223413174204
#>     Attrib V8    0.18728265034613212
#>     Attrib V9    -0.9090736996998172
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.013614928309327801
#>     Attrib V1    0.2179989787861163
#>     Attrib V10    -0.212528705140849
#>     Attrib V11    -0.1312522247468982
#>     Attrib V12    -0.1198371020649777
#>     Attrib V13    -0.12897162566917664
#>     Attrib V14    -0.10049200919102466
#>     Attrib V15    0.1341207821313655
#>     Attrib V16    0.14148089435433633
#>     Attrib V17    0.049520891172261494
#>     Attrib V18    0.09166141317120581
#>     Attrib V19    0.34588989196487907
#>     Attrib V2    0.14619487947986112
#>     Attrib V20    0.13083434797790464
#>     Attrib V21    0.04653790663462399
#>     Attrib V22    -0.02939242212107493
#>     Attrib V23    -0.07931348646973085
#>     Attrib V24    0.18296536544444778
#>     Attrib V25    -0.0785147190159199
#>     Attrib V26    -0.30507795975613466
#>     Attrib V27    -0.28232084504202354
#>     Attrib V28    -0.24750216362704566
#>     Attrib V29    -0.12699022159016618
#>     Attrib V3    0.0689245768887307
#>     Attrib V30    0.07627365937624284
#>     Attrib V31    -0.3374174611849758
#>     Attrib V32    -0.08987499769418904
#>     Attrib V33    0.15333864902141642
#>     Attrib V34    0.1564835170942661
#>     Attrib V35    0.22142257523404882
#>     Attrib V36    -0.16495412809989782
#>     Attrib V37    -0.3703912694108825
#>     Attrib V38    0.06525864790330595
#>     Attrib V39    0.1031308275618968
#>     Attrib V4    -0.14695092022768413
#>     Attrib V40    -0.1795305884718185
#>     Attrib V41    -0.08781170955609849
#>     Attrib V42    0.23887924802753066
#>     Attrib V43    0.2562905517649033
#>     Attrib V44    0.10159353310448194
#>     Attrib V45    0.12070651527015629
#>     Attrib V46    0.2278289974618242
#>     Attrib V47    0.1122310931356143
#>     Attrib V48    0.10887245295407885
#>     Attrib V49    0.2529758819033465
#>     Attrib V5    -0.016184756869919992
#>     Attrib V50    -0.41857776798182705
#>     Attrib V51    -0.008666986960492926
#>     Attrib V52    -0.0657972420692818
#>     Attrib V53    0.37088694253474025
#>     Attrib V54    0.10941484108929896
#>     Attrib V55    0.16144025838295586
#>     Attrib V56    0.24169043522234324
#>     Attrib V57    0.017335958827997353
#>     Attrib V58    0.2107670283367864
#>     Attrib V59    0.32574580299708666
#>     Attrib V6    -0.0904547666638998
#>     Attrib V60    0.2429035280722644
#>     Attrib V7    -0.1341553368173929
#>     Attrib V8    -0.1344906832307802
#>     Attrib V9    0.058965798719777696
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.24891636965224867
#>     Attrib V1    0.6181238950395764
#>     Attrib V10    0.8437364837593143
#>     Attrib V11    0.8050758798755429
#>     Attrib V12    0.5862962273058059
#>     Attrib V13    0.3322024066635209
#>     Attrib V14    -0.2845970202051212
#>     Attrib V15    -0.0246132165341213
#>     Attrib V16    -0.150425477739263
#>     Attrib V17    -0.6156129377038851
#>     Attrib V18    -0.6660723251084891
#>     Attrib V19    -0.12245022135299626
#>     Attrib V2    0.6140655760762456
#>     Attrib V20    -0.29037366538923765
#>     Attrib V21    0.11297808733694832
#>     Attrib V22    0.406874301331581
#>     Attrib V23    -0.19978388540901826
#>     Attrib V24    -0.03325184997974909
#>     Attrib V25    0.04852592186949161
#>     Attrib V26    0.7170547066624238
#>     Attrib V27    0.8858697278244179
#>     Attrib V28    1.132324004106268
#>     Attrib V29    0.8516183918258681
#>     Attrib V3    -0.11198760653234326
#>     Attrib V30    0.4504959899185707
#>     Attrib V31    -0.2980222801577884
#>     Attrib V32    -0.08041407542009271
#>     Attrib V33    -0.42672741097634015
#>     Attrib V34    -0.1890768149531972
#>     Attrib V35    0.13216395587722432
#>     Attrib V36    -0.04140821466532178
#>     Attrib V37    0.06142443092885656
#>     Attrib V38    0.3355600142186376
#>     Attrib V39    0.44671097368737145
#>     Attrib V4    -0.03976114520921648
#>     Attrib V40    -0.028079513021162482
#>     Attrib V41    0.04974504995685716
#>     Attrib V42    -0.19618689112483706
#>     Attrib V43    0.043880723090489404
#>     Attrib V44    0.17517632364576965
#>     Attrib V45    0.207410619230873
#>     Attrib V46    0.6747181168956844
#>     Attrib V47    0.5708203350509754
#>     Attrib V48    0.43046339502755376
#>     Attrib V49    0.5307532370319267
#>     Attrib V5    0.18502776880858657
#>     Attrib V50    -0.7837595166205236
#>     Attrib V51    0.6678488456217136
#>     Attrib V52    0.2187241621335977
#>     Attrib V53    0.25069693698271034
#>     Attrib V54    0.14376260562295393
#>     Attrib V55    -0.32970843143824385
#>     Attrib V56    -0.3923764871799383
#>     Attrib V57    -0.322888185792297
#>     Attrib V58    0.005207300462870672
#>     Attrib V59    0.15368953681465639
#>     Attrib V6    0.19642174294111026
#>     Attrib V60    0.407700047683562
#>     Attrib V7    -0.11232773623725412
#>     Attrib V8    -0.3044177647003154
#>     Attrib V9    0.4737981993223536
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.2625760673823036
#>     Attrib V1    0.2950615207940112
#>     Attrib V10    0.24477718455524397
#>     Attrib V11    0.2857257294868374
#>     Attrib V12    0.047623219362346564
#>     Attrib V13    -0.046119931617328865
#>     Attrib V14    -0.31657216510267
#>     Attrib V15    0.05850831512893929
#>     Attrib V16    0.12460954612183667
#>     Attrib V17    -0.12313814307639182
#>     Attrib V18    -0.21506779905373255
#>     Attrib V19    0.20472254431811082
#>     Attrib V2    0.280390577504276
#>     Attrib V20    -0.1622307105257348
#>     Attrib V21    0.01654179341760115
#>     Attrib V22    0.020529095994763408
#>     Attrib V23    -0.3525283360383423
#>     Attrib V24    -0.09490459873439888
#>     Attrib V25    -0.30659630090291223
#>     Attrib V26    -0.07000100367937663
#>     Attrib V27    0.24100514982482474
#>     Attrib V28    0.5908695826895386
#>     Attrib V29    0.5158452557040389
#>     Attrib V3    -0.1653199627802926
#>     Attrib V30    0.4415926064260737
#>     Attrib V31    -0.3940240845117884
#>     Attrib V32    -0.11359232202962218
#>     Attrib V33    -0.08338136848693842
#>     Attrib V34    -0.06036018387378562
#>     Attrib V35    0.09923627343748712
#>     Attrib V36    -0.11008859788929334
#>     Attrib V37    -0.28284184259613526
#>     Attrib V38    0.2663698770172119
#>     Attrib V39    0.2783571744183242
#>     Attrib V4    0.09750234134147732
#>     Attrib V40    -0.2531436376245129
#>     Attrib V41    -0.225787348201604
#>     Attrib V42    -0.05924192003514619
#>     Attrib V43    0.32820308957292926
#>     Attrib V44    0.4323431144467117
#>     Attrib V45    0.24984160243553222
#>     Attrib V46    0.468270622911967
#>     Attrib V47    0.34005282639355994
#>     Attrib V48    0.3466866439375008
#>     Attrib V49    0.5067260835558453
#>     Attrib V5    0.08969236826737523
#>     Attrib V50    -0.7329170882503508
#>     Attrib V51    0.24734550279701237
#>     Attrib V52    0.03166216580316219
#>     Attrib V53    0.32015583237398143
#>     Attrib V54    0.09373487652923536
#>     Attrib V55    -0.10858524148133775
#>     Attrib V56    -0.1599714996093654
#>     Attrib V57    -0.05178404909935852
#>     Attrib V58    0.1247841783062734
#>     Attrib V59    0.2797045708768589
#>     Attrib V6    -0.09630539868245382
#>     Attrib V60    0.2512729114937499
#>     Attrib V7    -0.16841127467988848
#>     Attrib V8    -0.20359776931319312
#>     Attrib V9    0.15725252120299174
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.2748074608541092
#>     Attrib V1    0.8616951105627743
#>     Attrib V10    1.551634258441792
#>     Attrib V11    1.2534467827443438
#>     Attrib V12    1.248179118109382
#>     Attrib V13    0.8465020827752603
#>     Attrib V14    -0.3584512605605949
#>     Attrib V15    -0.001549029677873495
#>     Attrib V16    -0.24837227876930798
#>     Attrib V17    -0.9969854105288949
#>     Attrib V18    -1.0830844602037282
#>     Attrib V19    -0.3443606231812153
#>     Attrib V2    1.0513431838956635
#>     Attrib V20    -0.42839735850792743
#>     Attrib V21    0.2463425466591807
#>     Attrib V22    0.8171380900664638
#>     Attrib V23    -0.1310198994365373
#>     Attrib V24    0.18811159473039019
#>     Attrib V25    0.49832241131210314
#>     Attrib V26    1.4629279028420779
#>     Attrib V27    1.3841100319239212
#>     Attrib V28    1.431994587379016
#>     Attrib V29    0.9006567517235985
#>     Attrib V3    -0.18739913355099938
#>     Attrib V30    0.3311653688833075
#>     Attrib V31    -0.5045309677487358
#>     Attrib V32    -0.011401598777823915
#>     Attrib V33    -0.6882682965076832
#>     Attrib V34    -0.12256539398030714
#>     Attrib V35    0.2393284283822513
#>     Attrib V36    -0.016741180645407267
#>     Attrib V37    0.14503814584653849
#>     Attrib V38    0.38296819109565344
#>     Attrib V39    0.7794980691516581
#>     Attrib V4    -0.39884681339546496
#>     Attrib V40    0.23833057766704221
#>     Attrib V41    0.4502695410244437
#>     Attrib V42    -0.4448936431083394
#>     Attrib V43    -0.29449447767941817
#>     Attrib V44    -0.14175933754009953
#>     Attrib V45    0.24056356036315302
#>     Attrib V46    0.937295727883229
#>     Attrib V47    0.8266984542670391
#>     Attrib V48    0.7036834194217669
#>     Attrib V49    0.7693832084051063
#>     Attrib V5    0.13291844043782763
#>     Attrib V50    -1.108332515643178
#>     Attrib V51    1.3072218163595781
#>     Attrib V52    0.4919852491014055
#>     Attrib V53    0.4435245496903079
#>     Attrib V54    0.19638211411040832
#>     Attrib V55    -0.5151484212256975
#>     Attrib V56    -0.6038290935272437
#>     Attrib V57    -0.7476705273347695
#>     Attrib V58    -0.19826036649160989
#>     Attrib V59    0.0422156688521103
#>     Attrib V6    0.521578074431867
#>     Attrib V60    0.5179924445344164
#>     Attrib V7    -0.05694653555543867
#>     Attrib V8    -0.2977177773316995
#>     Attrib V9    0.7733969325549902
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    0.1022265487528752
#>     Attrib V1    0.22261866382801615
#>     Attrib V10    -0.5464176674598376
#>     Attrib V11    -0.37086302324377507
#>     Attrib V12    -0.3885040692677508
#>     Attrib V13    -0.05088302844969439
#>     Attrib V14    0.7395935113186766
#>     Attrib V15    0.5176770061362169
#>     Attrib V16    0.47971872846851477
#>     Attrib V17    -0.19835360749756353
#>     Attrib V18    -0.3006396168439081
#>     Attrib V19    -1.2154507938794155
#>     Attrib V2    0.4326710284049771
#>     Attrib V20    -0.07606434795808759
#>     Attrib V21    -0.027215819731834207
#>     Attrib V22    -0.4369221401980175
#>     Attrib V23    -0.33410052726778117
#>     Attrib V24    -0.7344473686977645
#>     Attrib V25    0.4010243738479003
#>     Attrib V26    0.7645088784627857
#>     Attrib V27    0.6197554097645355
#>     Attrib V28    0.6280226943787679
#>     Attrib V29    0.9451271372066363
#>     Attrib V3    -0.17460648575061793
#>     Attrib V30    0.00873152283415668
#>     Attrib V31    1.2631916606232576
#>     Attrib V32    0.5657756703742007
#>     Attrib V33    -0.42359939228405025
#>     Attrib V34    -0.09853386284564222
#>     Attrib V35    0.243631992418935
#>     Attrib V36    1.4322446851181063
#>     Attrib V37    2.7569845736949907
#>     Attrib V38    0.4596163661834248
#>     Attrib V39    -0.5774528222807173
#>     Attrib V4    -0.5257812111878691
#>     Attrib V40    0.3080853136145047
#>     Attrib V41    -0.11498686727158441
#>     Attrib V42    -0.9146958814037931
#>     Attrib V43    -1.1208303104579669
#>     Attrib V44    -0.2085017814120544
#>     Attrib V45    0.11996734061543494
#>     Attrib V46    -0.6206937107838514
#>     Attrib V47    -0.14996152385394307
#>     Attrib V48    -0.2809410428515593
#>     Attrib V49    -1.0627100468186006
#>     Attrib V5    -1.1663002722194016
#>     Attrib V50    2.0075235052402083
#>     Attrib V51    -0.14898916298842585
#>     Attrib V52    0.41227791924817675
#>     Attrib V53    -0.2974330568187028
#>     Attrib V54    -0.25438441810480766
#>     Attrib V55    0.003729407987654023
#>     Attrib V56    0.011956962102945229
#>     Attrib V57    0.1661792881156185
#>     Attrib V58    -0.5037768067979079
#>     Attrib V59    -0.7562508548049908
#>     Attrib V6    -0.2686242707063063
#>     Attrib V60    -0.5009319164827655
#>     Attrib V7    0.3441201952396684
#>     Attrib V8    -0.09541156490772311
#>     Attrib V9    -1.1008146739162052
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.02202636615368038
#>     Attrib V1    0.0903144813337836
#>     Attrib V10    -0.04897994465887016
#>     Attrib V11    -0.0779046875807192
#>     Attrib V12    -0.19315773053424123
#>     Attrib V13    -0.16507206621483347
#>     Attrib V14    -0.4124764541689259
#>     Attrib V15    -0.020540218761771745
#>     Attrib V16    0.03537368480310028
#>     Attrib V17    0.16289452682203887
#>     Attrib V18    0.21857717148792175
#>     Attrib V19    0.8679802760376654
#>     Attrib V2    -0.007186618352132928
#>     Attrib V20    0.3413008591582673
#>     Attrib V21    0.14263016560554245
#>     Attrib V22    0.21783721385997865
#>     Attrib V23    0.19074528856302705
#>     Attrib V24    0.5378692821920225
#>     Attrib V25    -0.011631913027711455
#>     Attrib V26    -0.5308223635724666
#>     Attrib V27    -0.5398290987399872
#>     Attrib V28    -0.30214923546934896
#>     Attrib V29    -0.3038820660367985
#>     Attrib V3    -0.15707143364703324
#>     Attrib V30    0.20836041070393563
#>     Attrib V31    -0.7013944323105216
#>     Attrib V32    -0.23664646907007905
#>     Attrib V33    0.3288641112101155
#>     Attrib V34    0.46491237581426387
#>     Attrib V35    0.6258587742875743
#>     Attrib V36    -0.10834020327419772
#>     Attrib V37    -0.7701982198306608
#>     Attrib V38    0.2272875252993159
#>     Attrib V39    0.22966998606535555
#>     Attrib V4    -0.46469340099960504
#>     Attrib V40    -0.3314202258349732
#>     Attrib V41    -0.23152899547825642
#>     Attrib V42    0.43457547775628613
#>     Attrib V43    0.639315322899503
#>     Attrib V44    0.4087022408306424
#>     Attrib V45    0.3025770086846584
#>     Attrib V46    0.4658621211007342
#>     Attrib V47    0.3552171592504307
#>     Attrib V48    0.3249589703828619
#>     Attrib V49    0.5849433265039141
#>     Attrib V5    -0.07383976971554503
#>     Attrib V50    -0.9682830829187817
#>     Attrib V51    0.1817598034059834
#>     Attrib V52    -0.1935367975127623
#>     Attrib V53    0.39707729520083956
#>     Attrib V54    0.11692265827519102
#>     Attrib V55    0.23766860068268275
#>     Attrib V56    0.28870765635679296
#>     Attrib V57    -0.20151094111775109
#>     Attrib V58    0.2747995121570575
#>     Attrib V59    0.23948999185655592
#>     Attrib V6    -0.1356191336629918
#>     Attrib V60    0.25754090211248715
#>     Attrib V7    -0.2220130935156371
#>     Attrib V8    -0.16238705019413816
#>     Attrib V9    0.32821647019383704
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.38281653279271516
#>     Attrib V1    0.18318036664146325
#>     Attrib V10    -0.06188396617543888
#>     Attrib V11    0.020003976565448715
#>     Attrib V12    -0.04916013974858528
#>     Attrib V13    0.03669614207268117
#>     Attrib V14    -0.5077573013593887
#>     Attrib V15    -0.21958044828446013
#>     Attrib V16    -0.40289943130312883
#>     Attrib V17    -0.5274381384848038
#>     Attrib V18    -0.4190851090753098
#>     Attrib V19    0.11814765430054791
#>     Attrib V2    0.18156099773768306
#>     Attrib V20    -0.37224986704251944
#>     Attrib V21    -0.13211877027035407
#>     Attrib V22    0.12537434719016993
#>     Attrib V23    0.03468251160319108
#>     Attrib V24    0.5542507254675365
#>     Attrib V25    0.0782965430438415
#>     Attrib V26    -0.29679866233974955
#>     Attrib V27    -0.19950552884752193
#>     Attrib V28    0.013879865355083666
#>     Attrib V29    0.22446999603143286
#>     Attrib V3    -0.10955400844805549
#>     Attrib V30    0.4896581924521346
#>     Attrib V31    -0.6228701916769165
#>     Attrib V32    -0.2409889167998762
#>     Attrib V33    0.40167284622091665
#>     Attrib V34    0.30493553239788906
#>     Attrib V35    0.27269307415860905
#>     Attrib V36    -0.48397625758959345
#>     Attrib V37    -0.8428041656865112
#>     Attrib V38    0.1572078050329855
#>     Attrib V39    0.32954383311083185
#>     Attrib V4    -0.41282511366950025
#>     Attrib V40    -0.046139345263310816
#>     Attrib V41    0.36583240420766006
#>     Attrib V42    0.6948153600323572
#>     Attrib V43    0.9329838842078032
#>     Attrib V44    0.461131437032308
#>     Attrib V45    0.3414720255832738
#>     Attrib V46    0.6173081094349943
#>     Attrib V47    0.21351037919977223
#>     Attrib V48    0.19741850228911195
#>     Attrib V49    0.3687842326533716
#>     Attrib V5    -0.22956921469166222
#>     Attrib V50    -1.4053628697976623
#>     Attrib V51    -0.198234280521167
#>     Attrib V52    -0.5900421111699674
#>     Attrib V53    0.0640527651105109
#>     Attrib V54    -0.013398230960779514
#>     Attrib V55    -0.2141713047521091
#>     Attrib V56    -0.08120252666265305
#>     Attrib V57    -0.2984662419261182
#>     Attrib V58    0.04473316420207449
#>     Attrib V59    0.28280435262059006
#>     Attrib V6    -0.24879031274166918
#>     Attrib V60    0.09568015228787365
#>     Attrib V7    -0.26181037967661597
#>     Attrib V8    -0.1920260330361881
#>     Attrib V9    0.25738642909454534
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.0852850775686503
#>     Attrib V1    0.1405150189667898
#>     Attrib V10    -0.1687161582927065
#>     Attrib V11    -0.10192741385500088
#>     Attrib V12    -0.11286390250686491
#>     Attrib V13    -0.01921337053633103
#>     Attrib V14    -0.11205658857913722
#>     Attrib V15    0.06933518785248333
#>     Attrib V16    0.026500735077608757
#>     Attrib V17    0.06928438410731849
#>     Attrib V18    0.0549164877721625
#>     Attrib V19    0.3287091596515142
#>     Attrib V2    0.09334960809583034
#>     Attrib V20    0.12784567561437796
#>     Attrib V21    0.03337759459983028
#>     Attrib V22    -0.0034016863493628
#>     Attrib V23    -0.0015511408351040169
#>     Attrib V24    0.1959655026541837
#>     Attrib V25    -0.006747945756605736
#>     Attrib V26    -0.25302075319434914
#>     Attrib V27    -0.2167044998985799
#>     Attrib V28    -0.21960486856600347
#>     Attrib V29    -0.10642245649484046
#>     Attrib V3    0.08906436695513698
#>     Attrib V30    0.07530208639535892
#>     Attrib V31    -0.33243217261833335
#>     Attrib V32    -0.07144145053993178
#>     Attrib V33    0.12717535927292156
#>     Attrib V34    0.2226583252046584
#>     Attrib V35    0.20501289102269685
#>     Attrib V36    -0.11910072961235864
#>     Attrib V37    -0.3274249195346482
#>     Attrib V38    0.06886999846584295
#>     Attrib V39    0.15624602997835707
#>     Attrib V4    -0.18775501777151166
#>     Attrib V40    -0.10751579532315456
#>     Attrib V41    -0.10031533003968976
#>     Attrib V42    0.1902142354128357
#>     Attrib V43    0.20595707297073904
#>     Attrib V44    0.0914087618092267
#>     Attrib V45    0.05899426788738653
#>     Attrib V46    0.22814182889574214
#>     Attrib V47    0.15866213373336593
#>     Attrib V48    0.12140523533034357
#>     Attrib V49    0.28564192649044023
#>     Attrib V5    -0.004498733298962088
#>     Attrib V50    -0.4507530761100109
#>     Attrib V51    -0.029467302483815492
#>     Attrib V52    -0.0754099233855889
#>     Attrib V53    0.3049107250873233
#>     Attrib V54    0.06941175188306589
#>     Attrib V55    0.12984144958371568
#>     Attrib V56    0.19225213132592087
#>     Attrib V57    -0.020322360173326746
#>     Attrib V58    0.1404268709652328
#>     Attrib V59    0.2659651854905638
#>     Attrib V6    -0.0890450884673774
#>     Attrib V60    0.23288775388672964
#>     Attrib V7    -0.11398398746314849
#>     Attrib V8    -0.21592443036861855
#>     Attrib V9    0.025372532873176132
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.16198573320833007
#>     Attrib V1    0.3471280186314693
#>     Attrib V10    0.014506326923416114
#>     Attrib V11    0.1482494283170597
#>     Attrib V12    -0.03262978562701021
#>     Attrib V13    -0.14245786368720398
#>     Attrib V14    -0.21886974640495346
#>     Attrib V15    0.161874127714958
#>     Attrib V16    0.07742343309063524
#>     Attrib V17    -0.03793044320748453
#>     Attrib V18    -0.09702811584151227
#>     Attrib V19    0.1787253219999945
#>     Attrib V2    0.23924949274506674
#>     Attrib V20    -0.060839334797546
#>     Attrib V21    -0.07172935009756407
#>     Attrib V22    -0.16166054893855591
#>     Attrib V23    -0.35732359648163947
#>     Attrib V24    -0.11164985713446327
#>     Attrib V25    -0.2567201896112067
#>     Attrib V26    -0.21298963095574866
#>     Attrib V27    -0.08573389595033049
#>     Attrib V28    0.08609925216109028
#>     Attrib V29    0.11782849233395008
#>     Attrib V3    -0.10381267969822244
#>     Attrib V30    0.26450873399811675
#>     Attrib V31    -0.33376562251285175
#>     Attrib V32    -0.16074906507352754
#>     Attrib V33    0.04733372358732952
#>     Attrib V34    0.03918705201106449
#>     Attrib V35    0.1706964115765813
#>     Attrib V36    -0.15805554124281748
#>     Attrib V37    -0.2969562059723694
#>     Attrib V38    0.14538112510377738
#>     Attrib V39    0.2215204398608562
#>     Attrib V4    0.07957388634280257
#>     Attrib V40    -0.23241888405566682
#>     Attrib V41    -0.23586540727031952
#>     Attrib V42    0.055229167749205624
#>     Attrib V43    0.3205012426721041
#>     Attrib V44    0.3571672039863578
#>     Attrib V45    0.1777157156661152
#>     Attrib V46    0.3504410570874536
#>     Attrib V47    0.21512359245645563
#>     Attrib V48    0.2893936311272711
#>     Attrib V49    0.42129888764938545
#>     Attrib V5    0.09544063663006998
#>     Attrib V50    -0.5351755154971498
#>     Attrib V51    0.13970519352264693
#>     Attrib V52    0.0025003673221468715
#>     Attrib V53    0.31715744687416786
#>     Attrib V54    0.23786476880692564
#>     Attrib V55    0.12533913162028876
#>     Attrib V56    0.06015172404442235
#>     Attrib V57    0.06905642550831088
#>     Attrib V58    0.21983968255562278
#>     Attrib V59    0.3264263059322723
#>     Attrib V6    -0.12870421094094037
#>     Attrib V60    0.2502886481723295
#>     Attrib V7    -0.12323661451062114
#>     Attrib V8    -0.13097510538319881
#>     Attrib V9    0.07731070065711036
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    0.10455820241084351
#>     Attrib V1    0.09198585478508572
#>     Attrib V10    -0.4814940018294747
#>     Attrib V11    -0.3881787882995272
#>     Attrib V12    -0.3852725362193364
#>     Attrib V13    -0.2098905273881364
#>     Attrib V14    0.5002148150264663
#>     Attrib V15    0.4022522553623418
#>     Attrib V16    0.27812223065028774
#>     Attrib V17    -0.11854909585165736
#>     Attrib V18    -0.21574110286274942
#>     Attrib V19    -0.8835009063391618
#>     Attrib V2    0.165933653527328
#>     Attrib V20    -0.034226446830189605
#>     Attrib V21    -0.07513008264389419
#>     Attrib V22    -0.45333959865990753
#>     Attrib V23    -0.33637516687442404
#>     Attrib V24    -0.5689292053172371
#>     Attrib V25    0.22624706745187875
#>     Attrib V26    0.4988393084125887
#>     Attrib V27    0.35772985280842284
#>     Attrib V28    0.40598769062991236
#>     Attrib V29    0.6865751877402421
#>     Attrib V3    -0.1259494790236618
#>     Attrib V30    -0.11446624793530084
#>     Attrib V31    0.7315503581430846
#>     Attrib V32    0.339242252794589
#>     Attrib V33    -0.282579264831457
#>     Attrib V34    0.014345922453072637
#>     Attrib V35    0.25094958104645315
#>     Attrib V36    1.1611151107032516
#>     Attrib V37    2.063987694475909
#>     Attrib V38    0.2633332750299931
#>     Attrib V39    -0.35407270250878964
#>     Attrib V4    -0.20274388812081912
#>     Attrib V40    0.22089895337590293
#>     Attrib V41    -0.1599858475955466
#>     Attrib V42    -0.5538096562560448
#>     Attrib V43    -0.6463984190758005
#>     Attrib V44    0.018481062328746856
#>     Attrib V45    0.1021729397114283
#>     Attrib V46    -0.42894310868606494
#>     Attrib V47    -0.15835796559821105
#>     Attrib V48    -0.2827970073446427
#>     Attrib V49    -0.808030246597622
#>     Attrib V5    -0.7508533043482678
#>     Attrib V50    1.5893066524112247
#>     Attrib V51    -0.12199103404841746
#>     Attrib V52    0.19434563499569094
#>     Attrib V53    -0.2166396795350383
#>     Attrib V54    0.025965074930747824
#>     Attrib V55    0.014943556458647379
#>     Attrib V56    -0.002063132493861103
#>     Attrib V57    0.06409109784242563
#>     Attrib V58    -0.3448350617077728
#>     Attrib V59    -0.5149433241298749
#>     Attrib V6    -0.23263658801932696
#>     Attrib V60    -0.3809366197072964
#>     Attrib V7    0.2802320736839472
#>     Attrib V8    -0.01246834339270984
#>     Attrib V9    -0.8338747501594549
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.19009547037170252
#>     Attrib V1    -0.09023990687145447
#>     Attrib V10    0.21455084235725183
#>     Attrib V11    0.1381276579394808
#>     Attrib V12    0.16496497492480008
#>     Attrib V13    0.1400033356675769
#>     Attrib V14    0.23616728358758438
#>     Attrib V15    0.14017534254186084
#>     Attrib V16    0.34816455143880115
#>     Attrib V17    0.43588723848260674
#>     Attrib V18    0.33835221588510356
#>     Attrib V19    -0.10361884418244881
#>     Attrib V2    -0.06061107149481612
#>     Attrib V20    0.030280199831481242
#>     Attrib V21    0.057368072951199785
#>     Attrib V22    -0.034667469563749304
#>     Attrib V23    -0.09344466985819756
#>     Attrib V24    -0.278559215824446
#>     Attrib V25    -0.03459393568811659
#>     Attrib V26    -0.003808287461874263
#>     Attrib V27    -0.02931810786092011
#>     Attrib V28    -0.1323937052249305
#>     Attrib V29    -0.14386838834360555
#>     Attrib V3    0.15015370654390023
#>     Attrib V30    -0.17489876088303807
#>     Attrib V31    0.25851537194147156
#>     Attrib V32    0.12501687179673074
#>     Attrib V33    -0.045398548983285436
#>     Attrib V34    -0.05413714092598416
#>     Attrib V35    -0.12764834443822934
#>     Attrib V36    0.24942293224246181
#>     Attrib V37    0.5428375136637976
#>     Attrib V38    1.533040775928149E-5
#>     Attrib V39    -0.08625009042112856
#>     Attrib V4    0.34527052363006516
#>     Attrib V40    0.19822662413467998
#>     Attrib V41    0.17961881008392352
#>     Attrib V42    -0.021777713652262658
#>     Attrib V43    -0.2028490304381173
#>     Attrib V44    -0.09212314886253739
#>     Attrib V45    -0.034256837533837334
#>     Attrib V46    -0.14700827381106538
#>     Attrib V47    -0.10767016820617176
#>     Attrib V48    -0.14894361445505916
#>     Attrib V49    -0.31146242922447676
#>     Attrib V5    0.23257658004909904
#>     Attrib V50    0.5139266737426086
#>     Attrib V51    -0.001634615499567649
#>     Attrib V52    0.041478191496363864
#>     Attrib V53    -0.15871637123608176
#>     Attrib V54    -0.04743306176437986
#>     Attrib V55    -0.016648853548900437
#>     Attrib V56    -0.04661119811230014
#>     Attrib V57    0.2530455556468078
#>     Attrib V58    -0.036100647650654294
#>     Attrib V59    -0.1748263834761355
#>     Attrib V6    0.2887189367661442
#>     Attrib V60    -0.0496934950188525
#>     Attrib V7    0.26891399264096527
#>     Attrib V8    0.22451925830203862
#>     Attrib V9    0.09569373378795769
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.018213612061628266
#>     Attrib V1    0.20559408045926464
#>     Attrib V10    -0.13698944732329055
#>     Attrib V11    -0.1071855962861001
#>     Attrib V12    -0.2167901957124979
#>     Attrib V13    -0.16403140520317772
#>     Attrib V14    -0.14437609967749962
#>     Attrib V15    0.2136243792371986
#>     Attrib V16    0.1303490525959016
#>     Attrib V17    0.10101950730831112
#>     Attrib V18    0.0718742470085165
#>     Attrib V19    0.42946313967287975
#>     Attrib V2    0.18311343899064478
#>     Attrib V20    0.13130675676191786
#>     Attrib V21    0.032640681003061126
#>     Attrib V22    0.05383611548193717
#>     Attrib V23    -0.09617037459718863
#>     Attrib V24    0.16067526163245607
#>     Attrib V25    -0.20455671523164065
#>     Attrib V26    -0.3898010303345058
#>     Attrib V27    -0.32320207156998665
#>     Attrib V28    -0.20328195127467602
#>     Attrib V29    -0.1137287230759905
#>     Attrib V3    0.014772833004886628
#>     Attrib V30    0.128272817427906
#>     Attrib V31    -0.3419003050879722
#>     Attrib V32    -0.18550611867501707
#>     Attrib V33    0.1725057839044823
#>     Attrib V34    0.15998925589602084
#>     Attrib V35    0.27112932317500876
#>     Attrib V36    -0.15671339332408724
#>     Attrib V37    -0.406113106779579
#>     Attrib V38    0.151768432987521
#>     Attrib V39    0.15961795485726657
#>     Attrib V4    -0.19351805809190217
#>     Attrib V40    -0.21774408781127394
#>     Attrib V41    -0.17076427281166923
#>     Attrib V42    0.18734875758961103
#>     Attrib V43    0.35236816047013586
#>     Attrib V44    0.19940838491550963
#>     Attrib V45    0.16560208629356415
#>     Attrib V46    0.21838493380856247
#>     Attrib V47    0.09178859432223364
#>     Attrib V48    0.18490949876857823
#>     Attrib V49    0.2670496546252606
#>     Attrib V5    -0.019037448967720996
#>     Attrib V50    -0.5006742861033415
#>     Attrib V51    -0.013995446066250538
#>     Attrib V52    -0.07375585487596342
#>     Attrib V53    0.3134325357840543
#>     Attrib V54    0.09021333715988934
#>     Attrib V55    0.2274120284833693
#>     Attrib V56    0.23639377319691518
#>     Attrib V57    0.013419287853728966
#>     Attrib V58    0.16126611041666064
#>     Attrib V59    0.24192475230723887
#>     Attrib V6    -0.11447623581990532
#>     Attrib V60    0.22130142812755133
#>     Attrib V7    -0.18523624902823924
#>     Attrib V8    -0.15708518946213848
#>     Attrib V9    0.04042111586157301
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.1629571378539476
#>     Attrib V1    0.19561417161313485
#>     Attrib V10    -0.03354053435428335
#>     Attrib V11    -0.0062248258903357025
#>     Attrib V12    -0.059466349735846406
#>     Attrib V13    -0.03342757742142329
#>     Attrib V14    -0.015704425448266657
#>     Attrib V15    0.07063393308045281
#>     Attrib V16    0.05159134883913552
#>     Attrib V17    -0.03914694334581657
#>     Attrib V18    0.005060861749067631
#>     Attrib V19    0.04958706252034313
#>     Attrib V2    0.14814742795858615
#>     Attrib V20    -0.003924779778142795
#>     Attrib V21    -0.038554208123368565
#>     Attrib V22    -0.11606501026574968
#>     Attrib V23    -0.15088736872180122
#>     Attrib V24    -0.02482665113002926
#>     Attrib V25    -0.06547587265930456
#>     Attrib V26    -0.11612825940770127
#>     Attrib V27    -0.14114106118086298
#>     Attrib V28    -0.10324413025704231
#>     Attrib V29    -0.06575742595845502
#>     Attrib V3    0.11024069019621988
#>     Attrib V30    0.008878714043991758
#>     Attrib V31    -0.1603669937314518
#>     Attrib V32    -0.03633482715145301
#>     Attrib V33    0.09551401092265804
#>     Attrib V34    0.15918430841233192
#>     Attrib V35    0.1353877499232861
#>     Attrib V36    0.07250116828449557
#>     Attrib V37    -0.10805474571318816
#>     Attrib V38    0.09127374234576371
#>     Attrib V39    0.13927172550381328
#>     Attrib V4    -0.06400548090750968
#>     Attrib V40    -0.06917473253187027
#>     Attrib V41    -0.09411900193598068
#>     Attrib V42    0.0991977721001134
#>     Attrib V43    0.1342793384061604
#>     Attrib V44    0.13473095904854832
#>     Attrib V45    0.08575954868245134
#>     Attrib V46    0.1465370353009826
#>     Attrib V47    0.14064040856600307
#>     Attrib V48    0.1210531527471622
#>     Attrib V49    0.186673177059432
#>     Attrib V5    0.029703463240274328
#>     Attrib V50    -0.17676825592933934
#>     Attrib V51    0.08322774030600948
#>     Attrib V52    -0.012385440528063237
#>     Attrib V53    0.22699405575181822
#>     Attrib V54    0.09474550944224434
#>     Attrib V55    0.17501177089410766
#>     Attrib V56    0.1774937744106129
#>     Attrib V57    0.051354584295317265
#>     Attrib V58    0.15828897954411025
#>     Attrib V59    0.24269584682788345
#>     Attrib V6    -0.0766900605687378
#>     Attrib V60    0.23582044788836817
#>     Attrib V7    6.6562155049794E-4
#>     Attrib V8    6.103048214031977E-4
#>     Attrib V9    0.05967216994133071
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.331118750889247
#>     Attrib V1    0.8370548315776988
#>     Attrib V10    1.2567861611897582
#>     Attrib V11    1.0084570512854887
#>     Attrib V12    1.0726872199412074
#>     Attrib V13    0.6601469823750606
#>     Attrib V14    -0.28113973396855546
#>     Attrib V15    0.08147271543724349
#>     Attrib V16    -0.30992860537263983
#>     Attrib V17    -0.9582887250453209
#>     Attrib V18    -1.0651714034135482
#>     Attrib V19    -0.3424956258190158
#>     Attrib V2    0.9616127002213877
#>     Attrib V20    -0.48294441443258795
#>     Attrib V21    0.14656314679145344
#>     Attrib V22    0.7113376772530349
#>     Attrib V23    -0.27856217701334823
#>     Attrib V24    0.002178787197577001
#>     Attrib V25    0.25790614417168406
#>     Attrib V26    1.1403744613800255
#>     Attrib V27    1.2494761646381458
#>     Attrib V28    1.4038536314270875
#>     Attrib V29    0.9369003376368725
#>     Attrib V3    -0.09830331549398001
#>     Attrib V30    0.4292034104686999
#>     Attrib V31    -0.43753263947541987
#>     Attrib V32    -0.09245701986546388
#>     Attrib V33    -0.6340724823801892
#>     Attrib V34    -0.24982036899719195
#>     Attrib V35    0.19925928459281192
#>     Attrib V36    -0.03241658283130354
#>     Attrib V37    0.1262205734599401
#>     Attrib V38    0.37039984884109084
#>     Attrib V39    0.6518730842856872
#>     Attrib V4    -0.06492829449159956
#>     Attrib V40    0.1590345995421037
#>     Attrib V41    0.33081215160824995
#>     Attrib V42    -0.3014941510042481
#>     Attrib V43    -0.17728369171675767
#>     Attrib V44    -0.02414973146766386
#>     Attrib V45    0.2841812375594127
#>     Attrib V46    0.8259818433247696
#>     Attrib V47    0.6681129198225128
#>     Attrib V48    0.5928341893707543
#>     Attrib V49    0.7020136306452885
#>     Attrib V5    0.2723881666701006
#>     Attrib V50    -1.0987896006735547
#>     Attrib V51    1.0241716764683984
#>     Attrib V52    0.36728891823647614
#>     Attrib V53    0.3731633510436649
#>     Attrib V54    0.17116127892564437
#>     Attrib V55    -0.5391246688064544
#>     Attrib V56    -0.6045141214170993
#>     Attrib V57    -0.5589425795443607
#>     Attrib V58    -0.0825989541969268
#>     Attrib V59    0.160044839617938
#>     Attrib V6    0.42771614527964075
#>     Attrib V60    0.5702687174378447
#>     Attrib V7    -0.08203369560437497
#>     Attrib V8    -0.37322001843685065
#>     Attrib V9    0.5986061556105656
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.1290849417384071
#>     Attrib V1    0.2405647087545684
#>     Attrib V10    0.3385524747863196
#>     Attrib V11    0.22171384003530978
#>     Attrib V12    0.15305651968305145
#>     Attrib V13    0.06721423189788683
#>     Attrib V14    -0.38973253747375847
#>     Attrib V15    -0.08262341401237815
#>     Attrib V16    -0.1501489948225354
#>     Attrib V17    -0.13887068949327785
#>     Attrib V18    -0.05955221079320906
#>     Attrib V19    0.6266680051228763
#>     Attrib V2    0.15591612246744993
#>     Attrib V20    0.10846790290738186
#>     Attrib V21    0.17796867275119546
#>     Attrib V22    0.4501301481001706
#>     Attrib V23    0.23453910339047365
#>     Attrib V24    0.5290929373924306
#>     Attrib V25    0.17759344941470478
#>     Attrib V26    0.14462486672297373
#>     Attrib V27    0.10459934588540752
#>     Attrib V28    0.16064479162705578
#>     Attrib V29    0.18728101951393658
#>     Attrib V3    -0.18256512116691115
#>     Attrib V30    0.45754423995635163
#>     Attrib V31    -0.41930335979823136
#>     Attrib V32    -0.13319476296805982
#>     Attrib V33    0.04720527381054931
#>     Attrib V34    0.21773203548285994
#>     Attrib V35    0.4406765827674083
#>     Attrib V36    -0.10649582465375677
#>     Attrib V37    -0.4768922137263511
#>     Attrib V38    0.23861587242445928
#>     Attrib V39    0.30030497798375133
#>     Attrib V4    -0.4262087660442017
#>     Attrib V40    -0.1911619887537071
#>     Attrib V41    -0.05988183076486307
#>     Attrib V42    0.16420229719355806
#>     Attrib V43    0.4773756762432829
#>     Attrib V44    0.3940849865883037
#>     Attrib V45    0.20097652654547668
#>     Attrib V46    0.4858814274647758
#>     Attrib V47    0.3844467174672941
#>     Attrib V48    0.3716339915321464
#>     Attrib V49    0.6159485987060627
#>     Attrib V5    0.034160623709474
#>     Attrib V50    -1.0882699126640358
#>     Attrib V51    0.3628412573538673
#>     Attrib V52    -0.01900538819272206
#>     Attrib V53    0.32248409253766586
#>     Attrib V54    0.07244956902926045
#>     Attrib V55    -0.09246952940796468
#>     Attrib V56    0.058745980690694616
#>     Attrib V57    -0.4773632253483732
#>     Attrib V58    0.1502398900309925
#>     Attrib V59    0.20419860076487492
#>     Attrib V6    -0.009212011169875021
#>     Attrib V60    0.2277691249046442
#>     Attrib V7    -0.21777641547882925
#>     Attrib V8    -0.40942085698979946
#>     Attrib V9    0.4023339859831386
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.10453925735981702
#>     Attrib V1    -0.010550173166584098
#>     Attrib V10    0.303071933996215
#>     Attrib V11    0.2301835870847846
#>     Attrib V12    0.2021147164363635
#>     Attrib V13    0.10118744671102817
#>     Attrib V14    0.4029687775771603
#>     Attrib V15    0.3939143497095372
#>     Attrib V16    0.649898450457494
#>     Attrib V17    0.6652082684811764
#>     Attrib V18    0.5004150112562837
#>     Attrib V19    -0.18404006134799297
#>     Attrib V2    0.04378340753390394
#>     Attrib V20    0.2663130742553747
#>     Attrib V21    0.29801105917184856
#>     Attrib V22    -0.1402903519437928
#>     Attrib V23    -0.4426873875742702
#>     Attrib V24    -0.7431068141291661
#>     Attrib V25    -0.0520052178697522
#>     Attrib V26    0.2234969335348896
#>     Attrib V27    0.02976535830516755
#>     Attrib V28    -0.2636082557370703
#>     Attrib V29    -0.14088179722289879
#>     Attrib V3    0.008137529737923178
#>     Attrib V30    -0.05499524250006062
#>     Attrib V31    0.6519551954641898
#>     Attrib V32    0.211466193811667
#>     Attrib V33    0.06977636540951082
#>     Attrib V34    0.026281975860080797
#>     Attrib V35    -0.05879344029386493
#>     Attrib V36    0.5208577845804655
#>     Attrib V37    1.0362108396313465
#>     Attrib V38    0.0016018869700258223
#>     Attrib V39    -0.24205605306449268
#>     Attrib V4    0.41503818492728956
#>     Attrib V40    0.35042246188934556
#>     Attrib V41    0.10622528207159525
#>     Attrib V42    -0.24458583707493328
#>     Attrib V43    -0.4424108385773744
#>     Attrib V44    -0.11481144429995477
#>     Attrib V45    -0.02307840130425834
#>     Attrib V46    -0.27792144494257665
#>     Attrib V47    -0.11934346275827157
#>     Attrib V48    -0.10665023221441033
#>     Attrib V49    -0.49886520699166326
#>     Attrib V5    0.21155751872909614
#>     Attrib V50    0.9526239287438891
#>     Attrib V51    -0.19507745934036785
#>     Attrib V52    -0.08717555019346657
#>     Attrib V53    -0.359302627669702
#>     Attrib V54    0.15070634442416816
#>     Attrib V55    0.026977904300874322
#>     Attrib V56    -0.1801392877154817
#>     Attrib V57    0.31081744253028015
#>     Attrib V58    -0.34914734094886063
#>     Attrib V59    -0.34452016612800074
#>     Attrib V6    0.2032175425645097
#>     Attrib V60    -0.10433643205479368
#>     Attrib V7    0.5635971908086095
#>     Attrib V8    0.34686268115261776
#>     Attrib V9    0.06709921119027652
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.0019082408508939743
#>     Attrib V1    0.29827646081609266
#>     Attrib V10    -0.2256383411572577
#>     Attrib V11    -0.15038086054406594
#>     Attrib V12    -0.2063881648427207
#>     Attrib V13    -0.1469598239877361
#>     Attrib V14    -0.021853663033575086
#>     Attrib V15    0.2128731572333803
#>     Attrib V16    0.22743651401690296
#>     Attrib V17    0.11106559219586597
#>     Attrib V18    0.05335544210563924
#>     Attrib V19    0.28098795893030204
#>     Attrib V2    0.21315151822764336
#>     Attrib V20    0.12197597128089716
#>     Attrib V21    0.00808771343724683
#>     Attrib V22    -0.12332194839347482
#>     Attrib V23    -0.24392692362331184
#>     Attrib V24    0.057104038063019696
#>     Attrib V25    -0.28201382924592666
#>     Attrib V26    -0.46140141975751847
#>     Attrib V27    -0.3593788396147453
#>     Attrib V28    -0.241760781988858
#>     Attrib V29    -0.0031338116353522745
#>     Attrib V3    0.07035072944535938
#>     Attrib V30    0.07195859405652714
#>     Attrib V31    -0.3435382778253723
#>     Attrib V32    -0.22320108901067398
#>     Attrib V33    0.02575758919164723
#>     Attrib V34    0.07379646598417963
#>     Attrib V35    0.1501395472178645
#>     Attrib V36    -0.13972917541013258
#>     Attrib V37    -0.2919005853618083
#>     Attrib V38    0.12176639328345908
#>     Attrib V39    0.1218693470348
#>     Attrib V4    -0.03942599724251131
#>     Attrib V40    -0.15600784942762264
#>     Attrib V41    -0.2244867150024684
#>     Attrib V42    0.17217981391892614
#>     Attrib V43    0.3711623243731807
#>     Attrib V44    0.1913990199617817
#>     Attrib V45    0.10203994084695954
#>     Attrib V46    0.26174625005529584
#>     Attrib V47    0.0754512769825045
#>     Attrib V48    0.14534126451307794
#>     Attrib V49    0.23565697637810304
#>     Attrib V5    0.07296003925638551
#>     Attrib V50    -0.42158123629846905
#>     Attrib V51    -0.05974333289871028
#>     Attrib V52    -0.039715614830181704
#>     Attrib V53    0.34375454221373136
#>     Attrib V54    0.2028825454185929
#>     Attrib V55    0.25019692859786596
#>     Attrib V56    0.27340870768106146
#>     Attrib V57    0.10740582247461339
#>     Attrib V58    0.26879926918532887
#>     Attrib V59    0.36294494066495736
#>     Attrib V6    -0.09948188955707425
#>     Attrib V60    0.27500381886531583
#>     Attrib V7    -0.09169516234536193
#>     Attrib V8    -0.21807883742726336
#>     Attrib V9    -0.028038088659024213
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.01683069609021386
#>     Attrib V1    0.20479280543923656
#>     Attrib V10    -0.2694360850371595
#>     Attrib V11    -0.13440908219449543
#>     Attrib V12    -0.14390518868869298
#>     Attrib V13    -0.11064304125495678
#>     Attrib V14    -0.13140772169561918
#>     Attrib V15    0.1396337709501481
#>     Attrib V16    0.06190481615890414
#>     Attrib V17    0.1571410586972585
#>     Attrib V18    0.13200753659727502
#>     Attrib V19    0.49454789079757167
#>     Attrib V2    0.07669837436562299
#>     Attrib V20    0.15314657762387093
#>     Attrib V21    0.020856189487724292
#>     Attrib V22    0.022764706266376788
#>     Attrib V23    -0.002365883256647065
#>     Attrib V24    0.2337661980532123
#>     Attrib V25    -0.10008081058702054
#>     Attrib V26    -0.33595058202065503
#>     Attrib V27    -0.42118934743889525
#>     Attrib V28    -0.3735134528527322
#>     Attrib V29    -0.22590350466556808
#>     Attrib V3    0.05997660852366275
#>     Attrib V30    0.06646374183985536
#>     Attrib V31    -0.4484161664964157
#>     Attrib V32    -0.21890890307018096
#>     Attrib V33    0.1439188358945259
#>     Attrib V34    0.19147792498152838
#>     Attrib V35    0.31708398259383386
#>     Attrib V36    -0.15015053799051337
#>     Attrib V37    -0.41955428960733265
#>     Attrib V38    0.09652009323226741
#>     Attrib V39    0.11897923913933972
#>     Attrib V4    -0.20950678421042207
#>     Attrib V40    -0.2554853470223775
#>     Attrib V41    -0.22221986097443824
#>     Attrib V42    0.2325840909239079
#>     Attrib V43    0.42295961815974503
#>     Attrib V44    0.18837934137803772
#>     Attrib V45    0.1651098826591289
#>     Attrib V46    0.2630917857872127
#>     Attrib V47    0.182431974947511
#>     Attrib V48    0.11883061917253647
#>     Attrib V49    0.31068560438309856
#>     Attrib V5    -0.032149175981410885
#>     Attrib V50    -0.5911278323774427
#>     Attrib V51    -0.06568303698903159
#>     Attrib V52    -0.049005274817620605
#>     Attrib V53    0.4135586858829534
#>     Attrib V54    0.16748966456737693
#>     Attrib V55    0.25447956090717944
#>     Attrib V56    0.3173795969605148
#>     Attrib V57    -0.04829392871189924
#>     Attrib V58    0.20559848990714677
#>     Attrib V59    0.36743957921735443
#>     Attrib V6    -0.13833670959080163
#>     Attrib V60    0.22278373425634257
#>     Attrib V7    -0.14568484070779558
#>     Attrib V8    -0.24975788525335343
#>     Attrib V9    0.022458437665999958
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.05862695225423277
#>     Attrib V1    -0.07417073071722985
#>     Attrib V10    0.0700611759884188
#>     Attrib V11    0.005997960389214682
#>     Attrib V12    -0.006466332790001365
#>     Attrib V13    -0.02372639808335852
#>     Attrib V14    0.3231340094714345
#>     Attrib V15    0.2333336425799893
#>     Attrib V16    0.3073835264357506
#>     Attrib V17    0.3623699890491518
#>     Attrib V18    0.21133897932687032
#>     Attrib V19    -0.26188348395609634
#>     Attrib V2    -0.0619923788608549
#>     Attrib V20    0.17264567669571404
#>     Attrib V21    0.13224817461365068
#>     Attrib V22    -0.18209369429645247
#>     Attrib V23    -0.13451267268266726
#>     Attrib V24    -0.5108706984120394
#>     Attrib V25    -0.10931325066295312
#>     Attrib V26    0.058610412780134395
#>     Attrib V27    -0.029400648261908545
#>     Attrib V28    -0.09688477643436176
#>     Attrib V29    -0.10024998989953048
#>     Attrib V3    0.022791430149949974
#>     Attrib V30    -0.19664361226956775
#>     Attrib V31    0.396971970968888
#>     Attrib V32    0.14333840445297924
#>     Attrib V33    -0.10636566072267614
#>     Attrib V34    -0.11916280065051359
#>     Attrib V35    -0.15695556242745934
#>     Attrib V36    0.41481953133704497
#>     Attrib V37    0.7286236857036027
#>     Attrib V38    0.013251444202672437
#>     Attrib V39    -0.187820056248235
#>     Attrib V4    0.3675715374194955
#>     Attrib V40    0.23331832185596643
#>     Attrib V41    0.03563293046658559
#>     Attrib V42    -0.24369185862792456
#>     Attrib V43    -0.3425212893682697
#>     Attrib V44    -0.16906136356585108
#>     Attrib V45    -0.14225045409477868
#>     Attrib V46    -0.3261578741461884
#>     Attrib V47    -0.16831524392387567
#>     Attrib V48    -0.2625598557257088
#>     Attrib V49    -0.5186369618478673
#>     Attrib V5    0.07139300677041709
#>     Attrib V50    0.8618377351936427
#>     Attrib V51    -0.05353457996441337
#>     Attrib V52    0.1035382674154847
#>     Attrib V53    -0.2773872224756039
#>     Attrib V54    0.028318667721587018
#>     Attrib V55    -0.008346643263006187
#>     Attrib V56    -0.07835892400938177
#>     Attrib V57    0.2751932753921846
#>     Attrib V58    -0.18662439812353393
#>     Attrib V59    -0.27348286133855726
#>     Attrib V6    0.17914292937831516
#>     Attrib V60    -0.17982138868380676
#>     Attrib V7    0.37559093437204555
#>     Attrib V8    0.33135515791371306
#>     Attrib V9    -0.02265394742411443
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.46641173254089796
#>     Attrib V1    1.11349929545163
#>     Attrib V10    1.5962792503805678
#>     Attrib V11    1.3485805563032955
#>     Attrib V12    1.4376264864377328
#>     Attrib V13    0.8939897182515228
#>     Attrib V14    -0.26588677266324157
#>     Attrib V15    0.09836540484952548
#>     Attrib V16    -0.3204633889291618
#>     Attrib V17    -1.1902526142729308
#>     Attrib V18    -1.322227498899705
#>     Attrib V19    -0.6042820557705957
#>     Attrib V2    1.3587130915507788
#>     Attrib V20    -0.5483692505915375
#>     Attrib V21    0.2843455565479647
#>     Attrib V22    0.9347327159905038
#>     Attrib V23    -0.23452718102803705
#>     Attrib V24    -0.038460596025117574
#>     Attrib V25    0.229002067165577
#>     Attrib V26    1.520065517577879
#>     Attrib V27    1.5839182792487503
#>     Attrib V28    1.6978346795294739
#>     Attrib V29    1.2614361810096282
#>     Attrib V3    0.005250842674225725
#>     Attrib V30    0.4350358838750366
#>     Attrib V31    -0.6986930113940802
#>     Attrib V32    -0.151414008558461
#>     Attrib V33    -0.9411885436864287
#>     Attrib V34    -0.28948916366797556
#>     Attrib V35    0.09656867613455311
#>     Attrib V36    -0.15950528257674296
#>     Attrib V37    0.18135755669921144
#>     Attrib V38    0.3675400526412527
#>     Attrib V39    0.8893351304947088
#>     Attrib V4    -0.2350979129474551
#>     Attrib V40    0.28440964302759053
#>     Attrib V41    0.6303917524376484
#>     Attrib V42    -0.3211279259806648
#>     Attrib V43    -0.3154293625697299
#>     Attrib V44    -2.286232838943545E-4
#>     Attrib V45    0.3407565790782528
#>     Attrib V46    1.0572388111532474
#>     Attrib V47    0.802659015967696
#>     Attrib V48    0.6772856854681027
#>     Attrib V49    0.7837058162937643
#>     Attrib V5    0.3342186554780824
#>     Attrib V50    -1.3437827393820245
#>     Attrib V51    1.4165028831878332
#>     Attrib V52    0.5775673328978737
#>     Attrib V53    0.421913110496989
#>     Attrib V54    0.25087207709586135
#>     Attrib V55    -0.7767109936906106
#>     Attrib V56    -0.7998083854357904
#>     Attrib V57    -0.801092877897159
#>     Attrib V58    -0.2939172976415113
#>     Attrib V59    0.13676724738375803
#>     Attrib V6    0.6532094737977016
#>     Attrib V60    0.6704170548386035
#>     Attrib V7    -0.14125296625193304
#>     Attrib V8    -0.4381455816321576
#>     Attrib V9    0.7375996904733432
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    0.04407130126318275
#>     Attrib V1    -0.0773466329517341
#>     Attrib V10    -0.1142227805349273
#>     Attrib V11    -0.21992348136403334
#>     Attrib V12    -0.25615247822619636
#>     Attrib V13    -0.15537571041849027
#>     Attrib V14    0.29614870063281235
#>     Attrib V15    0.036874644682908915
#>     Attrib V16    -0.0015579303367298995
#>     Attrib V17    -0.08900654966725864
#>     Attrib V18    -0.09649026397599267
#>     Attrib V19    -0.45991606872507323
#>     Attrib V2    -0.04434913705332674
#>     Attrib V20    0.01761881157304617
#>     Attrib V21    0.026216905417026284
#>     Attrib V22    -0.3053883279405992
#>     Attrib V23    -0.20871812095555684
#>     Attrib V24    -0.4507868808453108
#>     Attrib V25    -0.037781350077195505
#>     Attrib V26    -0.05703523620469276
#>     Attrib V27    0.0715376003382372
#>     Attrib V28    0.10545775834008275
#>     Attrib V29    0.1549340793636157
#>     Attrib V3    -0.13329925499467163
#>     Attrib V30    -0.15527259107415942
#>     Attrib V31    0.27944076530469947
#>     Attrib V32    0.026929590214222403
#>     Attrib V33    -0.04421213288755779
#>     Attrib V34    -0.1155682128926524
#>     Attrib V35    0.08613086155498663
#>     Attrib V36    0.6750449999800147
#>     Attrib V37    1.0313183794389484
#>     Attrib V38    0.13630786397502057
#>     Attrib V39    -0.06863048913397145
#>     Attrib V4    0.258229205233436
#>     Attrib V40    0.21908037303492223
#>     Attrib V41    0.0807063616013776
#>     Attrib V42    -0.02962428460316788
#>     Attrib V43    -0.09922544304054667
#>     Attrib V44    0.1567241767464191
#>     Attrib V45    0.013517418252607952
#>     Attrib V46    -0.3562405686235221
#>     Attrib V47    -0.29492786708974944
#>     Attrib V48    -0.3370419191367774
#>     Attrib V49    -0.5467691836811431
#>     Attrib V5    -0.14376081954334916
#>     Attrib V50    0.8600403007609483
#>     Attrib V51    -0.2753492661365956
#>     Attrib V52    -0.11506923722846188
#>     Attrib V53    -0.27845129691969334
#>     Attrib V54    0.14459582120458175
#>     Attrib V55    -0.009435227303379161
#>     Attrib V56    -0.1756232008547104
#>     Attrib V57    0.13048132737341428
#>     Attrib V58    -0.20635962070950148
#>     Attrib V59    -0.34672518113707657
#>     Attrib V6    0.005547498679811717
#>     Attrib V60    -0.20387827346048484
#>     Attrib V7    0.37862599783843337
#>     Attrib V8    0.2859361968347226
#>     Attrib V9    -0.2558614774055764
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.2707851676012873
#>     Attrib V1    0.5224874422844202
#>     Attrib V10    0.6584077860245916
#>     Attrib V11    0.6066542103054633
#>     Attrib V12    0.4316166817756673
#>     Attrib V13    0.21307367883587272
#>     Attrib V14    -0.3616679678190294
#>     Attrib V15    -0.050071039502022054
#>     Attrib V16    -0.17075333750832436
#>     Attrib V17    -0.5020225572481136
#>     Attrib V18    -0.4591702337303339
#>     Attrib V19    -0.017752623111924003
#>     Attrib V2    0.4251973284035524
#>     Attrib V20    -0.2963813161296445
#>     Attrib V21    0.058273310363502376
#>     Attrib V22    0.27174366348153206
#>     Attrib V23    -0.28144821626965977
#>     Attrib V24    0.059175005927507705
#>     Attrib V25    0.09056993275442116
#>     Attrib V26    0.5992050908131659
#>     Attrib V27    0.6321156987323325
#>     Attrib V28    0.7447783013757616
#>     Attrib V29    0.5394933098734562
#>     Attrib V3    -0.19680984174295044
#>     Attrib V30    0.41907366809815627
#>     Attrib V31    -0.2784731862053182
#>     Attrib V32    -0.056746932623555665
#>     Attrib V33    -0.2819740947061173
#>     Attrib V34    -0.06014066884039089
#>     Attrib V35    0.20846349949829163
#>     Attrib V36    -0.0074252668285382465
#>     Attrib V37    -0.08278428946762022
#>     Attrib V38    0.2888746050317434
#>     Attrib V39    0.39438409038754807
#>     Attrib V4    8.889889187665035E-5
#>     Attrib V40    -0.21960133648553593
#>     Attrib V41    -0.11663504926034886
#>     Attrib V42    -0.17879437736558057
#>     Attrib V43    0.10335944921306607
#>     Attrib V44    0.2938637278135299
#>     Attrib V45    0.27425595475777953
#>     Attrib V46    0.49320340677094643
#>     Attrib V47    0.4296135334553884
#>     Attrib V48    0.4410130850208543
#>     Attrib V49    0.5090354355167569
#>     Attrib V5    0.12453560796449557
#>     Attrib V50    -0.6933669338588274
#>     Attrib V51    0.5660352727256841
#>     Attrib V52    0.10860161113988148
#>     Attrib V53    0.27804877099265257
#>     Attrib V54    0.21203223328047283
#>     Attrib V55    -0.17321281580666897
#>     Attrib V56    -0.3135646813772904
#>     Attrib V57    -0.21962673115344528
#>     Attrib V58    0.08213953417488432
#>     Attrib V59    0.22320928772967555
#>     Attrib V6    0.10729123865960116
#>     Attrib V60    0.3047907613384178
#>     Attrib V7    -0.15892673374301755
#>     Attrib V8    -0.21438376360585285
#>     Attrib V9    0.3697606454018243
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.039104359980662445
#>     Attrib V1    0.22735643226006033
#>     Attrib V10    -0.7861957329833292
#>     Attrib V11    -0.6621616571255676
#>     Attrib V12    -0.4321743065243726
#>     Attrib V13    0.34150762408763813
#>     Attrib V14    0.7733356154557055
#>     Attrib V15    0.47734973223916155
#>     Attrib V16    0.3097390729953868
#>     Attrib V17    -0.3225942273844728
#>     Attrib V18    -0.38768424172217153
#>     Attrib V19    -1.4181634601690554
#>     Attrib V2    0.5906659197634878
#>     Attrib V20    -0.29777769324900416
#>     Attrib V21    -0.18437308992851856
#>     Attrib V22    -0.3266870723338692
#>     Attrib V23    -0.14050517232500906
#>     Attrib V24    -0.3870188408691363
#>     Attrib V25    0.5156473685784908
#>     Attrib V26    0.7961563273420715
#>     Attrib V27    0.6842501547263914
#>     Attrib V28    0.6378865582481725
#>     Attrib V29    0.9296186777001515
#>     Attrib V3    0.15158214745632825
#>     Attrib V30    0.2027371586655947
#>     Attrib V31    1.7429695847503694
#>     Attrib V32    0.6830063833091283
#>     Attrib V33    -0.5628418216216278
#>     Attrib V34    -0.38211017902329353
#>     Attrib V35    -0.08500149042028958
#>     Attrib V36    1.1119386612935642
#>     Attrib V37    2.6851387279342473
#>     Attrib V38    0.7346527238730014
#>     Attrib V39    -0.8793797720377409
#>     Attrib V4    -0.9034147883977793
#>     Attrib V40    0.004391552541132362
#>     Attrib V41    -0.06973339753662657
#>     Attrib V42    -0.9451783343757276
#>     Attrib V43    -1.2372287116097425
#>     Attrib V44    -0.5887538450102022
#>     Attrib V45    0.23651718893113652
#>     Attrib V46    -0.5432842365803648
#>     Attrib V47    -0.089226345008675
#>     Attrib V48    -0.09318619212915626
#>     Attrib V49    -1.0184821313426
#>     Attrib V5    -1.6593595629324278
#>     Attrib V50    2.3065686235000245
#>     Attrib V51    -0.00716539942524338
#>     Attrib V52    0.43100966355995207
#>     Attrib V53    -0.33577148706410753
#>     Attrib V54    -0.47371194360932667
#>     Attrib V55    0.03379280085099365
#>     Attrib V56    0.3096810602204249
#>     Attrib V57    0.5384158405253243
#>     Attrib V58    -0.5798938523535564
#>     Attrib V59    -0.5884937311069174
#>     Attrib V6    -0.41599529708178123
#>     Attrib V60    -0.2509183989823036
#>     Attrib V7    0.47813194873257525
#>     Attrib V8    -0.1470347267467855
#>     Attrib V9    -1.0433291949859644
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.15480898499839396
#>     Attrib V1    0.23814405044246306
#>     Attrib V10    0.11816615324354784
#>     Attrib V11    0.23381199223827512
#>     Attrib V12    0.06097372172582956
#>     Attrib V13    -0.035979768766673775
#>     Attrib V14    -0.17049562273767588
#>     Attrib V15    0.06142124775199945
#>     Attrib V16    -5.959735644105421E-4
#>     Attrib V17    -0.13688271198354032
#>     Attrib V18    -0.16064989692886
#>     Attrib V19    0.1786615915523155
#>     Attrib V2    0.1995859214517717
#>     Attrib V20    -0.012780736577718926
#>     Attrib V21    0.03368158824569642
#>     Attrib V22    0.05742635688671163
#>     Attrib V23    -0.26373142326462196
#>     Attrib V24    0.08025217491391828
#>     Attrib V25    -0.039965177774486854
#>     Attrib V26    -0.011205474099892674
#>     Attrib V27    0.12837646975917089
#>     Attrib V28    0.2903185942370066
#>     Attrib V29    0.30783295924582643
#>     Attrib V3    -0.09098661251230593
#>     Attrib V30    0.2501255205413112
#>     Attrib V31    -0.3296314928526031
#>     Attrib V32    -0.1218845801202802
#>     Attrib V33    -0.032098579891392906
#>     Attrib V34    0.04354129639955721
#>     Attrib V35    0.16609156215721044
#>     Attrib V36    -0.13122556230697682
#>     Attrib V37    -0.2617426914073382
#>     Attrib V38    0.18146268602741294
#>     Attrib V39    0.2617536569468927
#>     Attrib V4    -0.056035774197965335
#>     Attrib V40    -0.1925505689078503
#>     Attrib V41    -0.16305353544419102
#>     Attrib V42    0.022880182523529236
#>     Attrib V43    0.3260215300159004
#>     Attrib V44    0.24449722273192656
#>     Attrib V45    0.2566892790232707
#>     Attrib V46    0.3832261660787669
#>     Attrib V47    0.3052119817000967
#>     Attrib V48    0.271401211939962
#>     Attrib V49    0.40340718294130345
#>     Attrib V5    0.08289631943307364
#>     Attrib V50    -0.552459820513695
#>     Attrib V51    0.25389068862690284
#>     Attrib V52    0.0582372765619147
#>     Attrib V53    0.29414113466658104
#>     Attrib V54    0.13051270759444297
#>     Attrib V55    0.040030665917049624
#>     Attrib V56    -0.009119809580426675
#>     Attrib V57    -0.09118925828874802
#>     Attrib V58    0.09853246220128657
#>     Attrib V59    0.1900412197999742
#>     Attrib V6    -0.04601452509823087
#>     Attrib V60    0.19451965387488324
#>     Attrib V7    -0.1403760674008548
#>     Attrib V8    -0.1402954734394067
#>     Attrib V9    0.14759728325366256
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.2689793487005511
#>     Attrib V1    -0.06398108928678088
#>     Attrib V10    0.3548503756306108
#>     Attrib V11    0.29650602434011314
#>     Attrib V12    0.33886234913641133
#>     Attrib V13    0.21355022378040547
#>     Attrib V14    0.35113299235828926
#>     Attrib V15    0.31560410207691986
#>     Attrib V16    0.5691214316121781
#>     Attrib V17    0.7763464889019821
#>     Attrib V18    0.5566541549414065
#>     Attrib V19    -0.01836403067503422
#>     Attrib V2    0.04166166348446429
#>     Attrib V20    0.09537231001840613
#>     Attrib V21    0.17167359978723673
#>     Attrib V22    0.014918688162809212
#>     Attrib V23    -0.20640584386003244
#>     Attrib V24    -0.4865267373683898
#>     Attrib V25    0.02201862859248524
#>     Attrib V26    0.21810848266500615
#>     Attrib V27    0.05667644172837563
#>     Attrib V28    -0.20508361383838813
#>     Attrib V29    -0.2307307105230168
#>     Attrib V3    0.13500512980986712
#>     Attrib V30    -0.08829082749734755
#>     Attrib V31    0.4258655536707581
#>     Attrib V32    0.15575618896840288
#>     Attrib V33    -0.01977194509940474
#>     Attrib V34    -0.04645765661642773
#>     Attrib V35    -0.07641035980825413
#>     Attrib V36    0.2887566203862523
#>     Attrib V37    0.651064065872313
#>     Attrib V38    -0.09667183351629785
#>     Attrib V39    -0.11670111672928997
#>     Attrib V4    0.3997336548770485
#>     Attrib V40    0.2743513259018757
#>     Attrib V41    0.16688791882663712
#>     Attrib V42    -0.03664177686018169
#>     Attrib V43    -0.30199102909547393
#>     Attrib V44    -0.11333013375903202
#>     Attrib V45    0.0047166763580292
#>     Attrib V46    -0.12257171993400919
#>     Attrib V47    -0.05426546943674842
#>     Attrib V48    0.02904242299440566
#>     Attrib V49    -0.2614091417835546
#>     Attrib V5    0.28756651616932044
#>     Attrib V50    0.49743272785327225
#>     Attrib V51    -0.12317791573897377
#>     Attrib V52    -0.028993411880149193
#>     Attrib V53    -0.238438127452174
#>     Attrib V54    0.0037033517515728024
#>     Attrib V55    -0.037364390313045975
#>     Attrib V56    0.017312884945637284
#>     Attrib V57    0.24660194006172503
#>     Attrib V58    -0.09161427910099089
#>     Attrib V59    -0.12659652861602316
#>     Attrib V6    0.34601191420285554
#>     Attrib V60    -0.007943226334840304
#>     Attrib V7    0.22743795521029103
#>     Attrib V8    0.21780336139432552
#>     Attrib V9    0.09619221433882706
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.11860051807165689
#>     Attrib V1    0.20796139167739963
#>     Attrib V10    -0.05939917929524293
#>     Attrib V11    0.02862142481774546
#>     Attrib V12    -0.07653660872367649
#>     Attrib V13    -0.006856149638752718
#>     Attrib V14    0.00850862682853485
#>     Attrib V15    0.10147335307712069
#>     Attrib V16    0.03319695875678205
#>     Attrib V17    0.011205388333575017
#>     Attrib V18    -0.023958990646479016
#>     Attrib V19    0.08386265746805112
#>     Attrib V2    0.18135033226251898
#>     Attrib V20    0.01572306081994113
#>     Attrib V21    -0.11725457172928096
#>     Attrib V22    -0.08250142469363492
#>     Attrib V23    -0.10367969638660422
#>     Attrib V24    0.05070673895000699
#>     Attrib V25    -0.09738000656968751
#>     Attrib V26    -0.12026364319219163
#>     Attrib V27    -0.19188517533850752
#>     Attrib V28    -0.16138316312453166
#>     Attrib V29    -0.09952160433944822
#>     Attrib V3    0.019030170174546928
#>     Attrib V30    0.007312412886825997
#>     Attrib V31    -0.12500753899649175
#>     Attrib V32    -0.05375996312024369
#>     Attrib V33    0.11778420038550946
#>     Attrib V34    0.15827821767783332
#>     Attrib V35    0.20709030149130378
#>     Attrib V36    0.0016800396399300555
#>     Attrib V37    -0.074736401125023
#>     Attrib V38    0.1399265515971405
#>     Attrib V39    0.05968262440832635
#>     Attrib V4    -0.026120665988618445
#>     Attrib V40    -0.07121994036861008
#>     Attrib V41    -0.0988757309087706
#>     Attrib V42    0.08222916447311575
#>     Attrib V43    0.17168520024657652
#>     Attrib V44    0.13606037552070974
#>     Attrib V45    0.1001880393680209
#>     Attrib V46    0.16092755749556964
#>     Attrib V47    0.10636764106930176
#>     Attrib V48    0.12766887179117395
#>     Attrib V49    0.1610524893697368
#>     Attrib V5    0.007445232230054605
#>     Attrib V50    -0.15534885992241423
#>     Attrib V51    0.017920896180527057
#>     Attrib V52    0.0216147691763614
#>     Attrib V53    0.26533422212197505
#>     Attrib V54    0.18664452690724953
#>     Attrib V55    0.18435046122144877
#>     Attrib V56    0.12738127642999614
#>     Attrib V57    0.08926036041883385
#>     Attrib V58    0.12695064751056623
#>     Attrib V59    0.2177621076647839
#>     Attrib V6    -0.05282178560416009
#>     Attrib V60    0.2001346362855536
#>     Attrib V7    -0.0325946961840119
#>     Attrib V8    -0.04363184567367685
#>     Attrib V9    0.07765030271985697
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.1486783489768305
#>     Attrib V1    0.1028368888149025
#>     Attrib V10    0.021123911386415718
#>     Attrib V11    0.07440037856119139
#>     Attrib V12    0.069635729754083
#>     Attrib V13    0.018300667668212187
#>     Attrib V14    0.12478167667494963
#>     Attrib V15    0.06250401791503331
#>     Attrib V16    0.06111715013581897
#>     Attrib V17    0.021049519080717963
#>     Attrib V18    0.07354290968023826
#>     Attrib V19    -0.08709197533564189
#>     Attrib V2    0.04078162389107411
#>     Attrib V20    -0.021610162870447366
#>     Attrib V21    -0.020465639135499106
#>     Attrib V22    -0.06932469289520395
#>     Attrib V23    -1.916203733515838E-4
#>     Attrib V24    -0.05329442338932201
#>     Attrib V25    -0.07179634521656107
#>     Attrib V26    -0.07877099168806231
#>     Attrib V27    -0.07733746485358142
#>     Attrib V28    -0.035062442798090496
#>     Attrib V29    -0.05940956627561084
#>     Attrib V3    0.10786627611976347
#>     Attrib V30    -6.514845506622056E-4
#>     Attrib V31    0.01215172411955032
#>     Attrib V32    0.030381487204406345
#>     Attrib V33    0.06315530644794799
#>     Attrib V34    0.06308030239705595
#>     Attrib V35    0.07341929637620517
#>     Attrib V36    0.1637943692785119
#>     Attrib V37    0.1405968914649659
#>     Attrib V38    0.021965060695294338
#>     Attrib V39    0.0593015584156965
#>     Attrib V4    0.052613884987390905
#>     Attrib V40    0.06252999858977108
#>     Attrib V41    0.031282139119779256
#>     Attrib V42    0.05672277460177422
#>     Attrib V43    -0.02137544610879344
#>     Attrib V44    0.05107589728353183
#>     Attrib V45    0.06846421098724445
#>     Attrib V46    0.020744866506240064
#>     Attrib V47    -0.004236676524893626
#>     Attrib V48    -0.04248640183060985
#>     Attrib V49    0.0074711215478465215
#>     Attrib V5    0.0681439566716318
#>     Attrib V50    0.08181172258955446
#>     Attrib V51    0.010671470598292682
#>     Attrib V52    0.040619636432922344
#>     Attrib V53    0.03879839412544335
#>     Attrib V54    0.0098585111640837
#>     Attrib V55    0.03950101124196106
#>     Attrib V56    0.0634987917287452
#>     Attrib V57    0.11628325474115213
#>     Attrib V58    0.12755571874419291
#>     Attrib V59    0.04450353153741218
#>     Attrib V6    0.10953546626534698
#>     Attrib V60    0.07060414788527548
#>     Attrib V7    0.09283345697756591
#>     Attrib V8    0.12166472793273528
#>     Attrib V9    0.0938684080351442
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
#>   0.173913 
```
