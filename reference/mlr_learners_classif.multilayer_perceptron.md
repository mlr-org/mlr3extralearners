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
#>     Threshold    -0.914976973377114
#>     Node 2    2.118969834142154
#>     Node 3    1.2275991370225972
#>     Node 4    1.200701145112401
#>     Node 5    -2.173065386827794
#>     Node 6    1.2967974482403892
#>     Node 7    2.844827687171424
#>     Node 8    1.2176446642779688
#>     Node 9    3.168850741407975
#>     Node 10    -0.17376307180175105
#>     Node 11    1.1865879873237029
#>     Node 12    1.2011781238062442
#>     Node 13    0.7503836604464426
#>     Node 14    0.9837637889633138
#>     Node 15    -2.9264699040867144
#>     Node 16    -1.0291619637815415
#>     Node 17    0.7522426959404426
#>     Node 18    -0.25252218287968864
#>     Node 19    1.386830788414951
#>     Node 20    1.6647464792414959
#>     Node 21    -1.2595249074719976
#>     Node 22    0.6988707571085974
#>     Node 23    0.9734128885148586
#>     Node 24    -1.6790667494631226
#>     Node 25    4.59739755519812
#>     Node 26    0.1512145489857734
#>     Node 27    1.8432209244011262
#>     Node 28    -3.3485112228307146
#>     Node 29    1.6327847965665607
#>     Node 30    0.33496062607793053
#>     Node 31    0.9331413641090914
#>     Node 32    0.43716875805817257
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.9491652891867552
#>     Node 2    -2.1759920908190757
#>     Node 3    -1.2180861220070254
#>     Node 4    -1.163188529369797
#>     Node 5    2.1830650834911407
#>     Node 6    -1.2775408862148778
#>     Node 7    -2.8366278355428007
#>     Node 8    -1.2483537314943876
#>     Node 9    -3.164436369515698
#>     Node 10    0.11242103973194913
#>     Node 11    -1.1522430070606975
#>     Node 12    -1.2814394367642554
#>     Node 13    -0.6970920659100291
#>     Node 14    -0.9168473899088382
#>     Node 15    2.9116019879756845
#>     Node 16    1.0115432269130014
#>     Node 17    -0.7187247126178893
#>     Node 18    0.2979813639714234
#>     Node 19    -1.3854198628642909
#>     Node 20    -1.6560106506903833
#>     Node 21    1.31333366185498
#>     Node 22    -0.7516204313080649
#>     Node 23    -1.0202611445526664
#>     Node 24    1.662898318605927
#>     Node 25    -4.595047634909016
#>     Node 26    -0.23027889800751203
#>     Node 27    -1.8842129072975546
#>     Node 28    3.301754781517272
#>     Node 29    -1.6669997740899396
#>     Node 30    -0.25444580530184235
#>     Node 31    -0.8782342888493802
#>     Node 32    -0.4531119036281094
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.38802991710337514
#>     Attrib V1    0.6888069176895082
#>     Attrib V10    0.06230874229024816
#>     Attrib V11    0.36753247217504187
#>     Attrib V12    0.6440817324329017
#>     Attrib V13    0.18718002286255342
#>     Attrib V14    -0.31344999856385364
#>     Attrib V15    -0.6583062653726987
#>     Attrib V16    -0.39191599058386634
#>     Attrib V17    -0.11078711200893418
#>     Attrib V18    0.4484801102006511
#>     Attrib V19    0.11156177617949153
#>     Attrib V2    0.1252625629221591
#>     Attrib V20    1.0134660380446974
#>     Attrib V21    0.9215504695251242
#>     Attrib V22    0.6245179035098269
#>     Attrib V23    0.8097818604842978
#>     Attrib V24    0.37779211723894435
#>     Attrib V25    -0.028407360208577002
#>     Attrib V26    -1.1902520271800585
#>     Attrib V27    -0.964289982553286
#>     Attrib V28    0.1690872343551286
#>     Attrib V29    -0.07521030591649258
#>     Attrib V3    -0.031483485143744036
#>     Attrib V30    0.3448171339059714
#>     Attrib V31    -0.508240851600012
#>     Attrib V32    0.20614280974525886
#>     Attrib V33    0.002924066100117587
#>     Attrib V34    -0.3173655843783646
#>     Attrib V35    0.2953183814900506
#>     Attrib V36    -0.37773060169878503
#>     Attrib V37    -0.570850382253737
#>     Attrib V38    0.3565881297206626
#>     Attrib V39    0.039806374919150046
#>     Attrib V4    0.22862497770996912
#>     Attrib V40    -0.4141912518124827
#>     Attrib V41    0.03960879613242168
#>     Attrib V42    -0.1207950085875854
#>     Attrib V43    0.2271400888799373
#>     Attrib V44    0.2512319117223105
#>     Attrib V45    0.28426872727600766
#>     Attrib V46    -0.047223141431247916
#>     Attrib V47    0.06318315691254586
#>     Attrib V48    0.4359532971766484
#>     Attrib V49    0.406323133859732
#>     Attrib V5    -0.01252337582686742
#>     Attrib V50    0.09803326381421405
#>     Attrib V51    0.12835981654974732
#>     Attrib V52    0.3218402530741383
#>     Attrib V53    0.5693516364730273
#>     Attrib V54    0.3690339637586574
#>     Attrib V55    -0.9122308997975002
#>     Attrib V56    -0.2187581694361312
#>     Attrib V57    -0.11163622176257897
#>     Attrib V58    0.036126866054800616
#>     Attrib V59    1.0219920040662742
#>     Attrib V6    -0.03345826086298045
#>     Attrib V60    0.34993642192198876
#>     Attrib V7    0.06937186727872204
#>     Attrib V8    -0.1619135260781839
#>     Attrib V9    0.295440118031286
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.2542321289935848
#>     Attrib V1    0.36595244520873604
#>     Attrib V10    0.08487817880181273
#>     Attrib V11    0.2148564070926951
#>     Attrib V12    0.4727386276655504
#>     Attrib V13    0.19863965121279792
#>     Attrib V14    -0.12779717067582624
#>     Attrib V15    -0.29491454761759756
#>     Attrib V16    -0.2512395906531139
#>     Attrib V17    -0.16923945038908925
#>     Attrib V18    0.12670227185444932
#>     Attrib V19    0.034308757715471434
#>     Attrib V2    0.15531893844266895
#>     Attrib V20    0.4458604123986523
#>     Attrib V21    0.3480109994055054
#>     Attrib V22    0.26357459741231026
#>     Attrib V23    0.42022897419639965
#>     Attrib V24    0.1903880352670646
#>     Attrib V25    -0.004887038152681661
#>     Attrib V26    -0.7126073824876784
#>     Attrib V27    -0.49962859162055007
#>     Attrib V28    0.18619633462275295
#>     Attrib V29    -0.08184134043504133
#>     Attrib V3    0.012671791713641996
#>     Attrib V30    0.25284137342488566
#>     Attrib V31    -0.14896192644202458
#>     Attrib V32    0.2946402705949934
#>     Attrib V33    0.07768837043392436
#>     Attrib V34    -0.23798567665622478
#>     Attrib V35    0.0666874701796178
#>     Attrib V36    -0.4922918919606684
#>     Attrib V37    -0.4957871109304977
#>     Attrib V38    -9.548377724479375E-4
#>     Attrib V39    -0.0034350987793272643
#>     Attrib V4    0.12162770253270631
#>     Attrib V40    -0.20940645150148696
#>     Attrib V41    0.11224282858872879
#>     Attrib V42    -0.07830800404850848
#>     Attrib V43    0.062092123111510036
#>     Attrib V44    0.059152879060746816
#>     Attrib V45    0.06925879492752629
#>     Attrib V46    -0.09183621630103274
#>     Attrib V47    0.032342803250300825
#>     Attrib V48    0.2587650197408816
#>     Attrib V49    0.21515370410777168
#>     Attrib V5    0.018501351412683456
#>     Attrib V50    -0.05489266650298325
#>     Attrib V51    0.06850017340502303
#>     Attrib V52    0.2954368745890856
#>     Attrib V53    0.3759602129933863
#>     Attrib V54    0.2984400422239485
#>     Attrib V55    -0.4992000922212155
#>     Attrib V56    -0.14293236036061188
#>     Attrib V57    -0.13008060974782693
#>     Attrib V58    0.07903168178620988
#>     Attrib V59    0.5604793587600875
#>     Attrib V6    -0.004478839704707847
#>     Attrib V60    0.1899665074843952
#>     Attrib V7    -0.06302730618559438
#>     Attrib V8    -0.1702708367950396
#>     Attrib V9    0.21835795319331538
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.178884158567182
#>     Attrib V1    0.347054758055608
#>     Attrib V10    0.04172038091288109
#>     Attrib V11    0.20554305010860494
#>     Attrib V12    0.3914194688806534
#>     Attrib V13    0.14944875920789488
#>     Attrib V14    -0.12438700453294087
#>     Attrib V15    -0.2956202803413494
#>     Attrib V16    -0.20709391150709017
#>     Attrib V17    -0.08070783386206119
#>     Attrib V18    0.2150976957722402
#>     Attrib V19    0.05848132758065775
#>     Attrib V2    0.10448841620000233
#>     Attrib V20    0.5411655830024027
#>     Attrib V21    0.4964514530838763
#>     Attrib V22    0.2680988639000287
#>     Attrib V23    0.4106735733622645
#>     Attrib V24    0.13634791500450144
#>     Attrib V25    -0.08393586425383753
#>     Attrib V26    -0.6988607264448415
#>     Attrib V27    -0.5427657364546514
#>     Attrib V28    0.16402993810610866
#>     Attrib V29    -0.02192701359770683
#>     Attrib V3    0.018106996852825553
#>     Attrib V30    0.18998413252323582
#>     Attrib V31    -0.23199421255567004
#>     Attrib V32    0.16645734736728462
#>     Attrib V33    0.0682722013482559
#>     Attrib V34    -0.13081281422893515
#>     Attrib V35    0.18228639424523646
#>     Attrib V36    -0.31265583465762636
#>     Attrib V37    -0.34145879820283365
#>     Attrib V38    0.12418187491724281
#>     Attrib V39    0.04160758142085252
#>     Attrib V4    0.13618693884647312
#>     Attrib V40    -0.23779699091452436
#>     Attrib V41    -0.012849906764895069
#>     Attrib V42    -0.11327072718603513
#>     Attrib V43    0.056601249276607216
#>     Attrib V44    0.15304784831849594
#>     Attrib V45    0.23743354233535746
#>     Attrib V46    -0.07173733806813748
#>     Attrib V47    -0.015312018461897052
#>     Attrib V48    0.28525682178050776
#>     Attrib V49    0.259181112310826
#>     Attrib V5    0.06502450411408466
#>     Attrib V50    -0.011820204237713851
#>     Attrib V51    0.10544279388934051
#>     Attrib V52    0.22126134039112036
#>     Attrib V53    0.39060568040850924
#>     Attrib V54    0.21213604795796792
#>     Attrib V55    -0.5284945660769856
#>     Attrib V56    -0.12888899568674647
#>     Attrib V57    -0.07253053424347641
#>     Attrib V58    0.0182336915932927
#>     Attrib V59    0.5275683874263075
#>     Attrib V6    -0.0016406197546900351
#>     Attrib V60    0.1795947731296966
#>     Attrib V7    -0.006983313265230674
#>     Attrib V8    -0.21438914705650988
#>     Attrib V9    0.26747953892229626
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.6290948817749707
#>     Attrib V1    -0.469309368129425
#>     Attrib V10    -0.1895293879626167
#>     Attrib V11    -0.6056381028517765
#>     Attrib V12    -1.1827398174561803
#>     Attrib V13    -0.36200423332240383
#>     Attrib V14    0.3493598148240175
#>     Attrib V15    0.8120377320491354
#>     Attrib V16    0.5306722505886003
#>     Attrib V17    0.3945390989920708
#>     Attrib V18    -0.2578644125459353
#>     Attrib V19    0.24094441632013813
#>     Attrib V2    -0.1044310248370716
#>     Attrib V20    -0.3967611150363062
#>     Attrib V21    -0.20759710372433063
#>     Attrib V22    -0.06064026246888802
#>     Attrib V23    -0.6963990216374978
#>     Attrib V24    -0.49446421120298417
#>     Attrib V25    0.017718025274415666
#>     Attrib V26    0.973180031183191
#>     Attrib V27    0.3078517175000203
#>     Attrib V28    -0.8248825531491366
#>     Attrib V29    -0.2310397834021847
#>     Attrib V3    0.11146358239707382
#>     Attrib V30    -0.20920989356829978
#>     Attrib V31    0.32298383815037474
#>     Attrib V32    -0.3700265668933109
#>     Attrib V33    0.07253360756823786
#>     Attrib V34    0.34647785586035834
#>     Attrib V35    -0.2834347511301324
#>     Attrib V36    0.5964413498887027
#>     Attrib V37    0.27187831386780564
#>     Attrib V38    -0.15251688354298948
#>     Attrib V39    -0.1039959430588868
#>     Attrib V4    -0.1258318096735313
#>     Attrib V40    0.22059911557513523
#>     Attrib V41    -0.4080311835387395
#>     Attrib V42    0.36999964892938664
#>     Attrib V43    -0.11469343262971628
#>     Attrib V44    -0.20861896308375105
#>     Attrib V45    -0.2705007930426099
#>     Attrib V46    -0.10264047325445377
#>     Attrib V47    -0.12657514505090062
#>     Attrib V48    -0.6989022977808561
#>     Attrib V49    -0.5852277004582569
#>     Attrib V5    -0.11104878039137016
#>     Attrib V50    0.3548891148913561
#>     Attrib V51    -0.17055683717050277
#>     Attrib V52    -0.5319245190305744
#>     Attrib V53    -0.6163487541608128
#>     Attrib V54    0.0627787941351731
#>     Attrib V55    1.335096708800374
#>     Attrib V56    0.6243781655327083
#>     Attrib V57    0.2972542259521635
#>     Attrib V58    0.06490782473417384
#>     Attrib V59    -0.47962280844196076
#>     Attrib V6    -0.32078748180686073
#>     Attrib V60    -0.13873995559922175
#>     Attrib V7    0.15981927130470686
#>     Attrib V8    0.5376809643298872
#>     Attrib V9    -0.6506106561603012
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.256339975323599
#>     Attrib V1    0.4497720297843102
#>     Attrib V10    -0.029104806135864386
#>     Attrib V11    0.12892435758446086
#>     Attrib V12    0.3693019682495355
#>     Attrib V13    0.06191882306206866
#>     Attrib V14    -0.17134630641318643
#>     Attrib V15    -0.3065724141795242
#>     Attrib V16    -0.10572961863677117
#>     Attrib V17    -0.05529312080756251
#>     Attrib V18    0.30252676740786055
#>     Attrib V19    0.08493864936459472
#>     Attrib V2    0.11796021909160345
#>     Attrib V20    0.5927311561256364
#>     Attrib V21    0.5468852642535261
#>     Attrib V22    0.3134418800663803
#>     Attrib V23    0.4068586576908861
#>     Attrib V24    0.2189854625381464
#>     Attrib V25    0.01568602584066395
#>     Attrib V26    -0.7374697953956416
#>     Attrib V27    -0.5881473021676314
#>     Attrib V28    -8.473355357335314E-4
#>     Attrib V29    -0.14547940597794337
#>     Attrib V3    0.002026050602008922
#>     Attrib V30    0.17750904493751457
#>     Attrib V31    -0.24290846524563844
#>     Attrib V32    0.21265662555016507
#>     Attrib V33    0.1006668852776393
#>     Attrib V34    -0.1683678982453493
#>     Attrib V35    0.1653282594689684
#>     Attrib V36    -0.3415835646557221
#>     Attrib V37    -0.4030930843031058
#>     Attrib V38    0.13933606782159505
#>     Attrib V39    -0.003282162643015503
#>     Attrib V4    0.21624712746679756
#>     Attrib V40    -0.2946996350082949
#>     Attrib V41    0.0542278802023543
#>     Attrib V42    -0.05003449842373574
#>     Attrib V43    0.08742605277177089
#>     Attrib V44    0.09850820926467256
#>     Attrib V45    0.15923093172109457
#>     Attrib V46    -0.04478654361204776
#>     Attrib V47    -0.02174426433254194
#>     Attrib V48    0.19874462273596058
#>     Attrib V49    0.19240268028470114
#>     Attrib V5    0.035668632921612126
#>     Attrib V50    0.03859842955554047
#>     Attrib V51    0.060289526040139825
#>     Attrib V52    0.16835405724809158
#>     Attrib V53    0.4351631064023025
#>     Attrib V54    0.3019417166073345
#>     Attrib V55    -0.5096989251673569
#>     Attrib V56    -0.06754228930477964
#>     Attrib V57    -0.012866426021748516
#>     Attrib V58    0.09382789383118324
#>     Attrib V59    0.6853259807891413
#>     Attrib V6    0.06749186282559895
#>     Attrib V60    0.3238333556581155
#>     Attrib V7    0.09898741688403573
#>     Attrib V8    -0.10569996871263553
#>     Attrib V9    0.24492645067531196
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.6632856960331038
#>     Attrib V1    0.5234062993497955
#>     Attrib V10    0.7939959718707224
#>     Attrib V11    1.3880798005253598
#>     Attrib V12    1.5843840297225538
#>     Attrib V13    0.5140088286408028
#>     Attrib V14    -0.328167126874775
#>     Attrib V15    -0.8261546781255876
#>     Attrib V16    -0.7423775629076974
#>     Attrib V17    -1.0095397266386632
#>     Attrib V18    -0.4914608810879488
#>     Attrib V19    -0.7319913924565725
#>     Attrib V2    0.42124696545632156
#>     Attrib V20    -0.17675071962543
#>     Attrib V21    -0.07491152926418808
#>     Attrib V22    -0.2203307372883467
#>     Attrib V23    0.6299369933945498
#>     Attrib V24    0.47208272589696815
#>     Attrib V25    -0.0854190056358489
#>     Attrib V26    -0.4752863859428358
#>     Attrib V27    0.5049847345520786
#>     Attrib V28    1.4534575108853085
#>     Attrib V29    0.650321731013095
#>     Attrib V3    0.07975591087490325
#>     Attrib V30    0.06788957875217289
#>     Attrib V31    -0.4917646647616386
#>     Attrib V32    0.31864326130104526
#>     Attrib V33    -0.2503607945948759
#>     Attrib V34    -0.3644739057604915
#>     Attrib V35    0.23996717137904877
#>     Attrib V36    -0.5002480643086726
#>     Attrib V37    0.38059374325270184
#>     Attrib V38    -0.07290676727561837
#>     Attrib V39    0.047617440471140415
#>     Attrib V4    0.06557568370880357
#>     Attrib V40    0.050327714365847105
#>     Attrib V41    0.6503662924294298
#>     Attrib V42    -0.5515774109186973
#>     Attrib V43    -0.04482020614280539
#>     Attrib V44    0.1627016492282941
#>     Attrib V45    0.18953070876406344
#>     Attrib V46    0.19426819346476762
#>     Attrib V47    0.2115383228863634
#>     Attrib V48    0.852491880266534
#>     Attrib V49    0.5888397761996973
#>     Attrib V5    0.28729221036842
#>     Attrib V50    -0.569629706361822
#>     Attrib V51    0.3880694587326358
#>     Attrib V52    0.7611391836679041
#>     Attrib V53    0.3995739309771986
#>     Attrib V54    0.1835116088464264
#>     Attrib V55    -1.0304691297489286
#>     Attrib V56    -0.6867094961704595
#>     Attrib V57    -0.19485519518425992
#>     Attrib V58    0.04076735650262058
#>     Attrib V59    0.32298954182984535
#>     Attrib V6    0.5554958850187401
#>     Attrib V60    0.3646777009777073
#>     Attrib V7    -0.34335547035123837
#>     Attrib V8    -0.3763937070482901
#>     Attrib V9    1.1417238889999568
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.3595831088271389
#>     Attrib V1    0.32047262911214636
#>     Attrib V10    0.2691759877063094
#>     Attrib V11    0.4702806021463191
#>     Attrib V12    0.6443459046369789
#>     Attrib V13    0.23264491274443302
#>     Attrib V14    -0.21103818770354715
#>     Attrib V15    -0.41493796407401523
#>     Attrib V16    -0.25428321055138275
#>     Attrib V17    -0.2965143630784297
#>     Attrib V18    -0.042111290748864084
#>     Attrib V19    -0.22911253851270316
#>     Attrib V2    0.17354326423697636
#>     Attrib V20    0.11667156806871712
#>     Attrib V21    0.08996289922275395
#>     Attrib V22    -0.11360391809029835
#>     Attrib V23    0.19080687367692267
#>     Attrib V24    0.12582982063092138
#>     Attrib V25    -0.008986711820305804
#>     Attrib V26    -0.4382002985405986
#>     Attrib V27    -0.05516568070639055
#>     Attrib V28    0.5368033271480128
#>     Attrib V29    0.14073387746611435
#>     Attrib V3    -0.008197121772394464
#>     Attrib V30    0.2315699353750977
#>     Attrib V31    -0.1779694186322218
#>     Attrib V32    0.2495330275700653
#>     Attrib V33    0.030810605522588175
#>     Attrib V34    -0.1737919775302
#>     Attrib V35    0.15655382381556152
#>     Attrib V36    -0.283191712918661
#>     Attrib V37    -0.1238857419829043
#>     Attrib V38    0.1691674498827011
#>     Attrib V39    0.046169310702756226
#>     Attrib V4    0.14143833226053965
#>     Attrib V40    -0.1828861706403368
#>     Attrib V41    0.10229427625087191
#>     Attrib V42    -0.31502402564230914
#>     Attrib V43    0.00656208634343296
#>     Attrib V44    0.18532158016957187
#>     Attrib V45    0.2043591826096486
#>     Attrib V46    0.020133529103845946
#>     Attrib V47    0.027361621275194047
#>     Attrib V48    0.40855385177574743
#>     Attrib V49    0.2791549062829766
#>     Attrib V5    0.08373140606511986
#>     Attrib V50    -0.24220207680974618
#>     Attrib V51    0.06343870044247293
#>     Attrib V52    0.2372615146986765
#>     Attrib V53    0.3700701701791666
#>     Attrib V54    0.14009390508043895
#>     Attrib V55    -0.6382457711609771
#>     Attrib V56    -0.32843529389298026
#>     Attrib V57    -0.11094080020051816
#>     Attrib V58    -0.08649227767315935
#>     Attrib V59    0.34081362501392265
#>     Attrib V6    0.10452063079139105
#>     Attrib V60    0.19536594629354567
#>     Attrib V7    -0.08867847838033298
#>     Attrib V8    -0.2851861449362563
#>     Attrib V9    0.44426909676657683
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.585246702657421
#>     Attrib V1    0.5646359249924982
#>     Attrib V10    0.9923797983739453
#>     Attrib V11    1.5056514843152777
#>     Attrib V12    1.738992224079002
#>     Attrib V13    0.6192824541843286
#>     Attrib V14    -0.35399865202280184
#>     Attrib V15    -0.7738528211238328
#>     Attrib V16    -0.7984055725199269
#>     Attrib V17    -1.1816066946281227
#>     Attrib V18    -0.7528086644355827
#>     Attrib V19    -0.9649419287820354
#>     Attrib V2    0.5178975832576233
#>     Attrib V20    -0.41604816680588524
#>     Attrib V21    -0.16780123124262278
#>     Attrib V22    -0.3243025471668582
#>     Attrib V23    0.39825913296965165
#>     Attrib V24    0.3923537370853712
#>     Attrib V25    -0.11606558302707408
#>     Attrib V26    -0.4156634170717501
#>     Attrib V27    0.6562693618209338
#>     Attrib V28    1.5112308160390475
#>     Attrib V29    0.5616127896959524
#>     Attrib V3    0.12621968595439345
#>     Attrib V30    -0.02007367357031793
#>     Attrib V31    -0.5265539846208144
#>     Attrib V32    0.3689620437328051
#>     Attrib V33    -0.2400183493624101
#>     Attrib V34    -0.2581643839903498
#>     Attrib V35    0.27968419317015525
#>     Attrib V36    -0.4260027003087666
#>     Attrib V37    0.5252868159504858
#>     Attrib V38    -0.05279048585821609
#>     Attrib V39    0.1759878523235363
#>     Attrib V4    0.03376260267154924
#>     Attrib V40    0.04671158078420743
#>     Attrib V41    0.5844742732400955
#>     Attrib V42    -0.7239694953049503
#>     Attrib V43    -0.07400792805972893
#>     Attrib V44    0.08253291847835598
#>     Attrib V45    0.15863416191798074
#>     Attrib V46    0.22531695318130557
#>     Attrib V47    0.17336202228706865
#>     Attrib V48    0.7778628284369892
#>     Attrib V49    0.5205269583061763
#>     Attrib V5    0.2810895673841591
#>     Attrib V50    -0.7885698250316159
#>     Attrib V51    0.41980778024546955
#>     Attrib V52    0.7505006709435875
#>     Attrib V53    0.4286450467937964
#>     Attrib V54    0.2587080337532361
#>     Attrib V55    -0.8540469148306307
#>     Attrib V56    -0.6453095243100673
#>     Attrib V57    -0.15666721487758825
#>     Attrib V58    0.08158617612633869
#>     Attrib V59    0.2722706332610926
#>     Attrib V6    0.5775212437408559
#>     Attrib V60    0.393055708631737
#>     Attrib V7    -0.46142475668878996
#>     Attrib V8    -0.36761979016382934
#>     Attrib V9    1.2064236365130532
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.18030500039629208
#>     Attrib V1    0.04211032022070673
#>     Attrib V10    -0.009323923253890313
#>     Attrib V11    -0.04940835828474799
#>     Attrib V12    -0.030955276147413356
#>     Attrib V13    0.059225974695494336
#>     Attrib V14    0.11753492032994525
#>     Attrib V15    0.0806354674963493
#>     Attrib V16    0.10632488264202421
#>     Attrib V17    0.02201953364163378
#>     Attrib V18    0.041969268843330146
#>     Attrib V19    0.027506629525885774
#>     Attrib V2    0.05683407450249699
#>     Attrib V20    -0.04410720590974517
#>     Attrib V21    -0.03453659958558887
#>     Attrib V22    -0.0455043326240987
#>     Attrib V23    -0.052631664821344286
#>     Attrib V24    -0.12058130883473499
#>     Attrib V25    -0.09339647118557204
#>     Attrib V26    0.00842615532041354
#>     Attrib V27    -0.05916211860786335
#>     Attrib V28    -0.11671619898744902
#>     Attrib V29    -0.0665532314333087
#>     Attrib V3    0.056785006899970375
#>     Attrib V30    -0.0033379502455163344
#>     Attrib V31    0.03934860383804462
#>     Attrib V32    -0.09788711254382415
#>     Attrib V33    0.04703410501007445
#>     Attrib V34    0.08656620621991357
#>     Attrib V35    0.03171381875669763
#>     Attrib V36    0.08522263959864645
#>     Attrib V37    0.0767055417374999
#>     Attrib V38    0.03171824635642245
#>     Attrib V39    0.042034296745526604
#>     Attrib V4    0.02888891486704508
#>     Attrib V40    0.16083941686646694
#>     Attrib V41    0.11441982431385454
#>     Attrib V42    0.05382399214186818
#>     Attrib V43    0.010891967897427914
#>     Attrib V44    0.029993288362979056
#>     Attrib V45    0.01882458537881306
#>     Attrib V46    0.00510339248889681
#>     Attrib V47    0.028221455665021284
#>     Attrib V48    -0.048252099915985294
#>     Attrib V49    -0.036582967337433527
#>     Attrib V5    0.05342346873556156
#>     Attrib V50    0.10320299454921407
#>     Attrib V51    0.03645335289303661
#>     Attrib V52    -0.002285924841618729
#>     Attrib V53    0.059110656473956164
#>     Attrib V54    0.0344868080441905
#>     Attrib V55    0.16428766229375544
#>     Attrib V56    0.102631650169934
#>     Attrib V57    0.027470462311174525
#>     Attrib V58    0.054246262173917786
#>     Attrib V59    -0.01766358577312492
#>     Attrib V6    0.13228854182080743
#>     Attrib V60    0.007322037627837621
#>     Attrib V7    0.09329083742744196
#>     Attrib V8    0.11213702145021032
#>     Attrib V9    -0.03222419376059058
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.19547981086657476
#>     Attrib V1    0.33600675432551924
#>     Attrib V10    0.046116847633347766
#>     Attrib V11    0.24115732822010275
#>     Attrib V12    0.43872792022686286
#>     Attrib V13    0.07437098176737711
#>     Attrib V14    -0.18872828980717807
#>     Attrib V15    -0.3584730180277095
#>     Attrib V16    -0.18930976024210378
#>     Attrib V17    -0.01450136584096069
#>     Attrib V18    0.27561179266437535
#>     Attrib V19    0.051056880051963
#>     Attrib V2    0.06836192150924068
#>     Attrib V20    0.5674733902236858
#>     Attrib V21    0.42301338652583004
#>     Attrib V22    0.22529938913581718
#>     Attrib V23    0.3509506248527656
#>     Attrib V24    0.1150977028040056
#>     Attrib V25    -0.015555730302250407
#>     Attrib V26    -0.6760036051413162
#>     Attrib V27    -0.4616600219814147
#>     Attrib V28    0.14922124306298354
#>     Attrib V29    -0.08399292319911038
#>     Attrib V3    -0.07220780033530375
#>     Attrib V30    0.19564726996833312
#>     Attrib V31    -0.3113322271575289
#>     Attrib V32    0.09657552002842619
#>     Attrib V33    0.031167682001148857
#>     Attrib V34    -0.07408789968240748
#>     Attrib V35    0.2967470329603432
#>     Attrib V36    -0.1343402911924332
#>     Attrib V37    -0.21167478825363215
#>     Attrib V38    0.30481701595614313
#>     Attrib V39    0.05917911347356596
#>     Attrib V4    0.1544684254868305
#>     Attrib V40    -0.3026743370507727
#>     Attrib V41    -0.1188702931660299
#>     Attrib V42    -0.19442525502903946
#>     Attrib V43    0.0830460168804997
#>     Attrib V44    0.2539492568090542
#>     Attrib V45    0.3151548620015981
#>     Attrib V46    -0.030660249401066438
#>     Attrib V47    0.020266767722868003
#>     Attrib V48    0.27356239813916966
#>     Attrib V49    0.1987263130583554
#>     Attrib V5    0.06914794023309921
#>     Attrib V50    -0.0361777722571376
#>     Attrib V51    0.10682116394933536
#>     Attrib V52    0.14539479132344768
#>     Attrib V53    0.2969166305361422
#>     Attrib V54    0.310256503650963
#>     Attrib V55    -0.5124936515194741
#>     Attrib V56    -0.16188266683305566
#>     Attrib V57    -0.0508684910817574
#>     Attrib V58    0.016380373812827313
#>     Attrib V59    0.44706100354508554
#>     Attrib V6    0.04092618463438784
#>     Attrib V60    0.19247003316955488
#>     Attrib V7    -0.03247446682710892
#>     Attrib V8    -0.15787762110855516
#>     Attrib V9    0.26272193038871056
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.26471137019083296
#>     Attrib V1    0.36545049824372733
#>     Attrib V10    -0.0066836218577543734
#>     Attrib V11    0.25461234784218306
#>     Attrib V12    0.3502918724976687
#>     Attrib V13    0.11815324516813601
#>     Attrib V14    -0.14720436930952513
#>     Attrib V15    -0.3592732163721515
#>     Attrib V16    -0.17037397260342518
#>     Attrib V17    -0.0732572840078335
#>     Attrib V18    0.24997538437473127
#>     Attrib V19    0.1333471493522024
#>     Attrib V2    0.15217981429359576
#>     Attrib V20    0.5614632490778265
#>     Attrib V21    0.48518409347193936
#>     Attrib V22    0.34438674319846024
#>     Attrib V23    0.44263514073463844
#>     Attrib V24    0.1392576913533215
#>     Attrib V25    -0.0755893321606205
#>     Attrib V26    -0.7368809863338082
#>     Attrib V27    -0.5095387280121187
#>     Attrib V28    0.10511365789375993
#>     Attrib V29    -0.036781968845952015
#>     Attrib V3    -0.06246471323859889
#>     Attrib V30    0.1718376695831257
#>     Attrib V31    -0.33159275125910576
#>     Attrib V32    0.0950495761039361
#>     Attrib V33    0.06337149609598627
#>     Attrib V34    -0.1345440959964844
#>     Attrib V35    0.20085482215098288
#>     Attrib V36    -0.2548368207490885
#>     Attrib V37    -0.3338621307544884
#>     Attrib V38    0.1975538498884619
#>     Attrib V39    -0.0028663330423152355
#>     Attrib V4    0.20989254193796444
#>     Attrib V40    -0.2552089937739931
#>     Attrib V41    -0.02825675839012904
#>     Attrib V42    -0.17752444391797528
#>     Attrib V43    0.1216651463864753
#>     Attrib V44    0.11806588517663866
#>     Attrib V45    0.22911846356848364
#>     Attrib V46    0.014654064011225515
#>     Attrib V47    0.009302022735565173
#>     Attrib V48    0.30048849773637437
#>     Attrib V49    0.2059582841570258
#>     Attrib V5    0.04794050869298431
#>     Attrib V50    -0.04997935233671847
#>     Attrib V51    0.0883049124751828
#>     Attrib V52    0.24828804664689805
#>     Attrib V53    0.3665172132857186
#>     Attrib V54    0.2955284679490843
#>     Attrib V55    -0.5381973605651177
#>     Attrib V56    -0.13462851779477905
#>     Attrib V57    -0.03733488371761233
#>     Attrib V58    0.07474331594838825
#>     Attrib V59    0.6385927725534594
#>     Attrib V6    -0.013991601617373142
#>     Attrib V60    0.246796447795253
#>     Attrib V7    0.039632199896514723
#>     Attrib V8    -0.14448103885329994
#>     Attrib V9    0.24227010734382728
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.033572856434655726
#>     Attrib V1    0.25949152981792983
#>     Attrib V10    0.05178542313708564
#>     Attrib V11    0.1611427347945719
#>     Attrib V12    0.27483736192196456
#>     Attrib V13    0.1609622374511902
#>     Attrib V14    -0.06024856431868444
#>     Attrib V15    -0.19252676193954063
#>     Attrib V16    -0.1399667345338968
#>     Attrib V17    -0.059738307533231796
#>     Attrib V18    0.09510397764119423
#>     Attrib V19    -0.037490846120864806
#>     Attrib V2    0.09595320274486013
#>     Attrib V20    0.2822548801272926
#>     Attrib V21    0.21963112773747903
#>     Attrib V22    0.04001539940241673
#>     Attrib V23    0.15487875679127908
#>     Attrib V24    0.04477013698723462
#>     Attrib V25    0.007413744102950323
#>     Attrib V26    -0.40853800441390425
#>     Attrib V27    -0.19256583421092108
#>     Attrib V28    0.09459550645417947
#>     Attrib V29    -0.02571731259741123
#>     Attrib V3    0.08301038481006512
#>     Attrib V30    0.11342741417072888
#>     Attrib V31    -0.1573205405690494
#>     Attrib V32    0.14692070810524943
#>     Attrib V33    0.05951131511733981
#>     Attrib V34    -0.0018788298252564602
#>     Attrib V35    0.12325716248210365
#>     Attrib V36    -0.16345919930600197
#>     Attrib V37    -0.1309781703974771
#>     Attrib V38    0.11289025986360031
#>     Attrib V39    0.0796255000117137
#>     Attrib V4    0.14776500574521373
#>     Attrib V40    -0.1331557996772228
#>     Attrib V41    -0.028775351776010392
#>     Attrib V42    -0.13081660882917354
#>     Attrib V43    -0.02590930119211363
#>     Attrib V44    0.08636033002357225
#>     Attrib V45    0.084045385697595
#>     Attrib V46    -0.0029189017381976495
#>     Attrib V47    0.01142557069137657
#>     Attrib V48    0.1309641084313674
#>     Attrib V49    0.12320645183596148
#>     Attrib V5    0.09053739044187618
#>     Attrib V50    -0.09339222929007891
#>     Attrib V51    0.0074974548494393355
#>     Attrib V52    0.0860930223409005
#>     Attrib V53    0.2342533512286097
#>     Attrib V54    0.17780435631346547
#>     Attrib V55    -0.26980225757810405
#>     Attrib V56    -0.0668459644005941
#>     Attrib V57    0.011278390094847603
#>     Attrib V58    0.019382061700164703
#>     Attrib V59    0.3571476171627178
#>     Attrib V6    0.07141656105016238
#>     Attrib V60    0.2330721288226561
#>     Attrib V7    0.06683583026279973
#>     Attrib V8    -0.14757993624003624
#>     Attrib V9    0.19468884602793468
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.17245266651551486
#>     Attrib V1    0.3533502160673875
#>     Attrib V10    0.13432653174515957
#>     Attrib V11    0.29643809249738656
#>     Attrib V12    0.40901400265473625
#>     Attrib V13    0.09848174132142443
#>     Attrib V14    -0.13558175980040044
#>     Attrib V15    -0.2258627558406171
#>     Attrib V16    -0.19536926694904191
#>     Attrib V17    -0.11817989955527573
#>     Attrib V18    0.09496042730307735
#>     Attrib V19    -0.07215180106746945
#>     Attrib V2    0.1328953481245527
#>     Attrib V20    0.2815110874504797
#>     Attrib V21    0.19765538833688023
#>     Attrib V22    0.03108381937190833
#>     Attrib V23    0.17644931390061136
#>     Attrib V24    0.008097456599279296
#>     Attrib V25    -0.03540823732312247
#>     Attrib V26    -0.4478666662299726
#>     Attrib V27    -0.300993766570227
#>     Attrib V28    0.11442614080396825
#>     Attrib V29    -0.09974710185010612
#>     Attrib V3    -0.04999948084471615
#>     Attrib V30    0.17419110641013594
#>     Attrib V31    -0.1166309731327499
#>     Attrib V32    0.1730030750922159
#>     Attrib V33    0.08563347172001787
#>     Attrib V34    -0.09764599767377306
#>     Attrib V35    0.18824628792383932
#>     Attrib V36    -0.2360179919890757
#>     Attrib V37    -0.17556632985500908
#>     Attrib V38    0.1257558734491939
#>     Attrib V39    0.04682992212751097
#>     Attrib V4    0.11830795677574305
#>     Attrib V40    -0.2225917250236772
#>     Attrib V41    -0.07545272520010955
#>     Attrib V42    -0.2239949864888456
#>     Attrib V43    -0.012419897518780471
#>     Attrib V44    0.13877088961363895
#>     Attrib V45    0.09680924343439731
#>     Attrib V46    -0.0219078931401996
#>     Attrib V47    -0.03946013032148604
#>     Attrib V48    0.24050194122708246
#>     Attrib V49    0.17747465133728643
#>     Attrib V5    0.01950484093191221
#>     Attrib V50    -0.09129527402697375
#>     Attrib V51    0.018159850923574798
#>     Attrib V52    0.1380476281610759
#>     Attrib V53    0.24656164475847017
#>     Attrib V54    0.29936079769811835
#>     Attrib V55    -0.33889322189079285
#>     Attrib V56    -0.12315876572174325
#>     Attrib V57    -0.04551682929291969
#>     Attrib V58    0.02789198474373963
#>     Attrib V59    0.3804179843924263
#>     Attrib V6    0.0028574430204722943
#>     Attrib V60    0.24419377758178026
#>     Attrib V7    -0.02889492589296107
#>     Attrib V8    -0.1937362344414508
#>     Attrib V9    0.25649807694365323
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.6660726647965335
#>     Attrib V1    -0.7619450047306043
#>     Attrib V10    -0.1266677176230118
#>     Attrib V11    -0.7340894486042142
#>     Attrib V12    -1.0781705623994535
#>     Attrib V13    -0.36772068528085244
#>     Attrib V14    0.5105076818048938
#>     Attrib V15    1.0957866577488777
#>     Attrib V16    0.7065362781676511
#>     Attrib V17    0.23363603214974699
#>     Attrib V18    -0.6145605593322152
#>     Attrib V19    0.04787692605052419
#>     Attrib V2    -0.11003908026823937
#>     Attrib V20    -1.0534175452040093
#>     Attrib V21    -0.9853322168293435
#>     Attrib V22    -0.6957743841888925
#>     Attrib V23    -1.1118142774655813
#>     Attrib V24    -0.4575071452927779
#>     Attrib V25    0.013461690410100978
#>     Attrib V26    1.4502973786454545
#>     Attrib V27    0.8867014018461136
#>     Attrib V28    -0.508368271651468
#>     Attrib V29    -0.03066501962997782
#>     Attrib V3    0.21083927046307832
#>     Attrib V30    -0.3133327958470421
#>     Attrib V31    0.7673308058552795
#>     Attrib V32    -0.09254459716956573
#>     Attrib V33    0.1110546003845156
#>     Attrib V34    0.4984965834322011
#>     Attrib V35    -0.5782875749361773
#>     Attrib V36    0.1967998064680204
#>     Attrib V37    0.33079461414072714
#>     Attrib V38    -0.6084728411528707
#>     Attrib V39    -0.12455973092562636
#>     Attrib V4    -0.2073555002071921
#>     Attrib V40    0.5971123680971693
#>     Attrib V41    0.0014585135728104252
#>     Attrib V42    0.376595001319295
#>     Attrib V43    -0.34000866346102765
#>     Attrib V44    -0.5241189834140506
#>     Attrib V45    -0.521665728501615
#>     Attrib V46    -0.09410846433775853
#>     Attrib V47    -0.18293515632304191
#>     Attrib V48    -0.6335553347361483
#>     Attrib V49    -0.6446259873772603
#>     Attrib V5    0.13866312405000322
#>     Attrib V50    0.005473454378976262
#>     Attrib V51    -0.1659338698329838
#>     Attrib V52    -0.4509380512286272
#>     Attrib V53    -0.5281680157123245
#>     Attrib V54    -0.2305786897802464
#>     Attrib V55    1.4619995795249676
#>     Attrib V56    0.6040269701692634
#>     Attrib V57    0.16225850031971048
#>     Attrib V58    0.038769033464006744
#>     Attrib V59    -0.9733327092941012
#>     Attrib V6    -0.11207896066732284
#>     Attrib V60    -0.3046449909664232
#>     Attrib V7    -0.048701057934854755
#>     Attrib V8    0.40156723643395364
#>     Attrib V9    -0.46772943074955065
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.26638000949110835
#>     Attrib V1    -0.27918451696803487
#>     Attrib V10    -0.13305809253639003
#>     Attrib V11    -0.331163385558851
#>     Attrib V12    -0.5322150367534283
#>     Attrib V13    -0.13332195702285565
#>     Attrib V14    0.11036287220653872
#>     Attrib V15    0.3114061167403427
#>     Attrib V16    0.29911138131228365
#>     Attrib V17    0.2438735309185604
#>     Attrib V18    -0.01530032638792719
#>     Attrib V19    0.16415044644962906
#>     Attrib V2    -0.1532657248736011
#>     Attrib V20    -0.14088590396637024
#>     Attrib V21    -0.07190530521709466
#>     Attrib V22    0.045972549990267335
#>     Attrib V23    -0.2744996806219207
#>     Attrib V24    -0.15407457604342498
#>     Attrib V25    -6.11678655508121E-4
#>     Attrib V26    0.3552969985074708
#>     Attrib V27    0.0597528524307185
#>     Attrib V28    -0.36620117882090913
#>     Attrib V29    -0.10832082794170705
#>     Attrib V3    0.015112759336384429
#>     Attrib V30    -0.14749411344723667
#>     Attrib V31    0.0436044738188691
#>     Attrib V32    -0.21531087667613547
#>     Attrib V33    -0.02729957208333104
#>     Attrib V34    0.17360145951774184
#>     Attrib V35    -0.14588499980133618
#>     Attrib V36    0.24708489458188668
#>     Attrib V37    0.14213196408705617
#>     Attrib V38    -0.09617222685005425
#>     Attrib V39    -0.0553579297242143
#>     Attrib V4    -0.057325001347178356
#>     Attrib V40    0.097105466285215
#>     Attrib V41    -0.1264593879593167
#>     Attrib V42    0.16872326986623817
#>     Attrib V43    -0.09036004932037024
#>     Attrib V44    -0.16517130657337137
#>     Attrib V45    -0.13898708430083917
#>     Attrib V46    -0.054234350980910624
#>     Attrib V47    -0.08228180069319334
#>     Attrib V48    -0.36428061481940094
#>     Attrib V49    -0.3196436552007488
#>     Attrib V5    -0.06916418260403509
#>     Attrib V50    0.1462675345925517
#>     Attrib V51    -0.060593226256152516
#>     Attrib V52    -0.218393521320146
#>     Attrib V53    -0.23120818397845325
#>     Attrib V54    -0.029604548570027762
#>     Attrib V55    0.5329854620476786
#>     Attrib V56    0.2647060187133468
#>     Attrib V57    0.14226088675349688
#>     Attrib V58    0.05602179457888931
#>     Attrib V59    -0.2774340540864886
#>     Attrib V6    -0.10635162896682404
#>     Attrib V60    -0.11352231295908194
#>     Attrib V7    0.04346190830973674
#>     Attrib V8    0.19136050425376014
#>     Attrib V9    -0.2807777807154492
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.09264865839541156
#>     Attrib V1    0.2964487906112791
#>     Attrib V10    0.1876741519925169
#>     Attrib V11    0.24810703381259075
#>     Attrib V12    0.2711820879883861
#>     Attrib V13    0.06237857917401206
#>     Attrib V14    -0.0864464933753847
#>     Attrib V15    -0.10807604149944676
#>     Attrib V16    -0.09581608764052746
#>     Attrib V17    -0.07301272923701604
#>     Attrib V18    0.0706303798643844
#>     Attrib V19    -0.012039251327813742
#>     Attrib V2    0.18966417541594874
#>     Attrib V20    0.21974450142001262
#>     Attrib V21    0.153179844869621
#>     Attrib V22    0.05072673915986649
#>     Attrib V23    0.018151873334311446
#>     Attrib V24    -0.017884568256282967
#>     Attrib V25    -0.09217496042651259
#>     Attrib V26    -0.38148701753271597
#>     Attrib V27    -0.19934430440056888
#>     Attrib V28    0.09982110264957127
#>     Attrib V29    -0.08700633273958966
#>     Attrib V3    0.033773247892742476
#>     Attrib V30    0.1593143255386954
#>     Attrib V31    -0.039243381446707165
#>     Attrib V32    0.12530272781446747
#>     Attrib V33    0.1274463442858845
#>     Attrib V34    -0.04124485969388336
#>     Attrib V35    0.18440169520097044
#>     Attrib V36    -0.1574050516498524
#>     Attrib V37    -0.14795477734808543
#>     Attrib V38    0.20168914802537252
#>     Attrib V39    0.07917040672945959
#>     Attrib V4    0.1618109311426662
#>     Attrib V40    -0.21914552181674918
#>     Attrib V41    -0.06696712629267441
#>     Attrib V42    -0.1808716997927946
#>     Attrib V43    0.04256054920853923
#>     Attrib V44    0.14758767935194217
#>     Attrib V45    0.19106563147530553
#>     Attrib V46    -0.052818018630563006
#>     Attrib V47    -0.07734797740925678
#>     Attrib V48    0.18699791573155283
#>     Attrib V49    0.06531457773311768
#>     Attrib V5    0.0795474729429203
#>     Attrib V50    -0.05233820890094892
#>     Attrib V51    0.04762347200542821
#>     Attrib V52    0.08795305559873566
#>     Attrib V53    0.18707774077373582
#>     Attrib V54    0.21445293424151468
#>     Attrib V55    -0.1848461030968398
#>     Attrib V56    -0.04718348868696007
#>     Attrib V57    0.05815574237289902
#>     Attrib V58    -0.011809635947446094
#>     Attrib V59    0.24119930075029322
#>     Attrib V6    0.05056231816324461
#>     Attrib V60    0.1862329064347586
#>     Attrib V7    -0.027199719896619
#>     Attrib V8    -0.05610743433266105
#>     Attrib V9    0.25579344447888275
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.1791161570013785
#>     Attrib V1    -0.06835813878773823
#>     Attrib V10    -0.016484961657423716
#>     Attrib V11    -0.09337577138508527
#>     Attrib V12    -0.1585126694974383
#>     Attrib V13    -0.01623868985809766
#>     Attrib V14    0.07433591447219351
#>     Attrib V15    0.109389688958466
#>     Attrib V16    0.11629796913969787
#>     Attrib V17    0.04051053676194594
#>     Attrib V18    0.031998128335741255
#>     Attrib V19    -0.01621033201675035
#>     Attrib V2    0.01763046749512875
#>     Attrib V20    -0.04676505650036249
#>     Attrib V21    -0.015319828114992561
#>     Attrib V22    -0.02450679197953344
#>     Attrib V23    -0.08362091708662714
#>     Attrib V24    -0.09724578880351709
#>     Attrib V25    -0.020847611532008432
#>     Attrib V26    0.10421445361581547
#>     Attrib V27    0.011836911314988553
#>     Attrib V28    -0.13041608969062576
#>     Attrib V29    -0.050855048505178774
#>     Attrib V3    0.09066493529530391
#>     Attrib V30    -0.09537500443067222
#>     Attrib V31    -0.0038218671068228774
#>     Attrib V32    -0.08361908367522333
#>     Attrib V33    -0.013935151495584734
#>     Attrib V34    0.07245300338773683
#>     Attrib V35    -0.05982769953804209
#>     Attrib V36    0.14297751046643772
#>     Attrib V37    0.05615171518840612
#>     Attrib V38    -0.05600950209980127
#>     Attrib V39    0.05345143738617022
#>     Attrib V4    -0.026156790400193496
#>     Attrib V40    0.09881210225921364
#>     Attrib V41    -0.005262173694009501
#>     Attrib V42    0.05895961565064901
#>     Attrib V43    -0.01233778715880068
#>     Attrib V44    0.01474521449260208
#>     Attrib V45    -0.08482931128173797
#>     Attrib V46    -0.017128805304394368
#>     Attrib V47    0.04227304640509415
#>     Attrib V48    -0.08405198638210665
#>     Attrib V49    -0.05025896485164648
#>     Attrib V5    0.028279875049574597
#>     Attrib V50    -0.0037365697619791407
#>     Attrib V51    0.04597607138728588
#>     Attrib V52    -0.051258648692277024
#>     Attrib V53    -0.037276332234816204
#>     Attrib V54    -0.04350195189865938
#>     Attrib V55    0.22389615305525476
#>     Attrib V56    0.14826228749942338
#>     Attrib V57    -0.005973503873732024
#>     Attrib V58    0.049668137097342385
#>     Attrib V59    -0.03681161405028344
#>     Attrib V6    0.019152232023309634
#>     Attrib V60    0.013151783919084153
#>     Attrib V7    0.0966345844655416
#>     Attrib V8    0.15241533109693178
#>     Attrib V9    -0.04262941332596011
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.43570713483179996
#>     Attrib V1    0.34676078771000346
#>     Attrib V10    0.07972134448509235
#>     Attrib V11    0.3572404976196339
#>     Attrib V12    0.7614081225069377
#>     Attrib V13    0.27564053064281674
#>     Attrib V14    -0.16910153249408044
#>     Attrib V15    -0.44475316986662083
#>     Attrib V16    -0.38347771552720833
#>     Attrib V17    -0.27448859481024457
#>     Attrib V18    0.11327159317246357
#>     Attrib V19    -0.11404698752235144
#>     Attrib V2    0.1603000203708673
#>     Attrib V20    0.30500038641460586
#>     Attrib V21    0.20796889884807038
#>     Attrib V22    0.11555942273538082
#>     Attrib V23    0.44577119427386275
#>     Attrib V24    0.26747584720259654
#>     Attrib V25    0.009058745011256438
#>     Attrib V26    -0.7332340650357931
#>     Attrib V27    -0.3347175471955419
#>     Attrib V28    0.4578011485308935
#>     Attrib V29    0.10521047694103565
#>     Attrib V3    -0.0834156712290371
#>     Attrib V30    0.2123201148838234
#>     Attrib V31    -0.21659004595934156
#>     Attrib V32    0.2692807975821347
#>     Attrib V33    0.032912430063099685
#>     Attrib V34    -0.24995872759152968
#>     Attrib V35    0.19027067856911298
#>     Attrib V36    -0.46343060469030434
#>     Attrib V37    -0.3784262928538815
#>     Attrib V38    0.029066886669712143
#>     Attrib V39    -0.017830959785122346
#>     Attrib V4    0.10216944440448437
#>     Attrib V40    -0.18698561646192535
#>     Attrib V41    0.17223796391371285
#>     Attrib V42    -0.1576960976074698
#>     Attrib V43    0.06264987434627749
#>     Attrib V44    0.058673087360027104
#>     Attrib V45    0.1926685457793124
#>     Attrib V46    -0.010743310589886597
#>     Attrib V47    -0.013847197064167139
#>     Attrib V48    0.42253921772331876
#>     Attrib V49    0.38867846789164046
#>     Attrib V5    0.04372082299138663
#>     Attrib V50    -0.23084101756988026
#>     Attrib V51    0.06572535246097114
#>     Attrib V52    0.3585391801231225
#>     Attrib V53    0.45053998495133196
#>     Attrib V54    0.18701321283357292
#>     Attrib V55    -0.7192964509482727
#>     Attrib V56    -0.3590833497371867
#>     Attrib V57    -0.27651887441184736
#>     Attrib V58    0.022076762638283898
#>     Attrib V59    0.4608845485872471
#>     Attrib V6    0.10773695405762396
#>     Attrib V60    0.1771184112368522
#>     Attrib V7    -0.06959664961267295
#>     Attrib V8    -0.35522219586096965
#>     Attrib V9    0.32684330369869263
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.39294678317553294
#>     Attrib V1    0.510501596770404
#>     Attrib V10    0.030976298882932674
#>     Attrib V11    0.33156118296535303
#>     Attrib V12    0.6568678278522423
#>     Attrib V13    0.19866159220649587
#>     Attrib V14    -0.250207461220962
#>     Attrib V15    -0.5608746057897267
#>     Attrib V16    -0.3808752640745606
#>     Attrib V17    -0.1435978343633965
#>     Attrib V18    0.3529140496075247
#>     Attrib V19    0.07694866695078428
#>     Attrib V2    0.11058238475322983
#>     Attrib V20    0.727945967683374
#>     Attrib V21    0.6772675871536636
#>     Attrib V22    0.4680106586094363
#>     Attrib V23    0.6832125050125153
#>     Attrib V24    0.29518284449664794
#>     Attrib V25    -0.04157487438301768
#>     Attrib V26    -0.9093410256667027
#>     Attrib V27    -0.6166314218163458
#>     Attrib V28    0.21462959811965543
#>     Attrib V29    0.019014328688584266
#>     Attrib V3    -0.12076292318137846
#>     Attrib V30    0.24762595893844938
#>     Attrib V31    -0.4488916662648647
#>     Attrib V32    0.08691185769251157
#>     Attrib V33    -0.025897891259334598
#>     Attrib V34    -0.2803757488478925
#>     Attrib V35    0.30087501160452457
#>     Attrib V36    -0.20484214451934646
#>     Attrib V37    -0.27986326777307236
#>     Attrib V38    0.2887386767010718
#>     Attrib V39    0.0026099973689754615
#>     Attrib V4    0.16286372378156577
#>     Attrib V40    -0.3481668786411083
#>     Attrib V41    0.04507998676782346
#>     Attrib V42    -0.240963018898517
#>     Attrib V43    0.2030163118267669
#>     Attrib V44    0.2890802908807433
#>     Attrib V45    0.30492803192733225
#>     Attrib V46    -0.026556012605799
#>     Attrib V47    0.013706960459481995
#>     Attrib V48    0.419596428423765
#>     Attrib V49    0.3789745162764318
#>     Attrib V5    0.013935908164560593
#>     Attrib V50    -0.019842444059227533
#>     Attrib V51    0.15456396319427637
#>     Attrib V52    0.308542276628159
#>     Attrib V53    0.4040343484375589
#>     Attrib V54    0.31018450299198147
#>     Attrib V55    -0.7603137161324838
#>     Attrib V56    -0.2691263844877558
#>     Attrib V57    -0.1641378520287555
#>     Attrib V58    0.04235096945528273
#>     Attrib V59    0.7616460169578474
#>     Attrib V6    0.058102810766254655
#>     Attrib V60    0.2772124683608139
#>     Attrib V7    0.049867286137370785
#>     Attrib V8    -0.3105716195687945
#>     Attrib V9    0.27350747495197386
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.2845613076117946
#>     Attrib V1    -0.2739610253720552
#>     Attrib V10    -0.18208110808265807
#>     Attrib V11    -0.4271605184441406
#>     Attrib V12    -0.6796806755957725
#>     Attrib V13    -0.22252626463054812
#>     Attrib V14    0.18375799909729904
#>     Attrib V15    0.4690065665059065
#>     Attrib V16    0.3565324359173938
#>     Attrib V17    0.2719570770704528
#>     Attrib V18    -0.08499613823760285
#>     Attrib V19    0.17021912711907133
#>     Attrib V2    -0.11878631849445746
#>     Attrib V20    -0.14115069285294565
#>     Attrib V21    -0.023657604186863766
#>     Attrib V22    0.011183164677626964
#>     Attrib V23    -0.38982024115515246
#>     Attrib V24    -0.2708414257571357
#>     Attrib V25    -0.04592733366491579
#>     Attrib V26    0.514180913584721
#>     Attrib V27    0.08142204546107681
#>     Attrib V28    -0.5237924650853168
#>     Attrib V29    -0.12083916933082857
#>     Attrib V3    0.0012515629931911972
#>     Attrib V30    -0.10875892803216063
#>     Attrib V31    0.16434020652272757
#>     Attrib V32    -0.303380880862139
#>     Attrib V33    -0.004248788246869779
#>     Attrib V34    0.19948259174318037
#>     Attrib V35    -0.17330212493694144
#>     Attrib V36    0.3339711739207324
#>     Attrib V37    0.19981973549540485
#>     Attrib V38    -0.12117654073627693
#>     Attrib V39    -0.06163240520522781
#>     Attrib V4    -0.030301311165133328
#>     Attrib V40    0.1788548287707862
#>     Attrib V41    -0.15192055747016814
#>     Attrib V42    0.13772128917756912
#>     Attrib V43    -0.0813052874968541
#>     Attrib V44    -0.14723648133776873
#>     Attrib V45    -0.19003189790528624
#>     Attrib V46    -0.09283558921381285
#>     Attrib V47    -0.11949209800099639
#>     Attrib V48    -0.4182618378817007
#>     Attrib V49    -0.38519558712191293
#>     Attrib V5    -0.07465550811544283
#>     Attrib V50    0.17711887528702094
#>     Attrib V51    -0.10182933513124783
#>     Attrib V52    -0.28832422482201614
#>     Attrib V53    -0.32885951090399607
#>     Attrib V54    0.007487217622693678
#>     Attrib V55    0.6830107800717033
#>     Attrib V56    0.30918023530235317
#>     Attrib V57    0.21879590602758733
#>     Attrib V58    0.012626348472805214
#>     Attrib V59    -0.24129542106554946
#>     Attrib V6    -0.17954108379978848
#>     Attrib V60    -0.09216045386317313
#>     Attrib V7    0.10617194138096259
#>     Attrib V8    0.25715469180695094
#>     Attrib V9    -0.3731180087690647
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.04733173777554928
#>     Attrib V1    0.3200876866860015
#>     Attrib V10    0.12138666093172913
#>     Attrib V11    0.1745618559232535
#>     Attrib V12    0.24088300113944808
#>     Attrib V13    0.05900661571752244
#>     Attrib V14    -0.04065127069061519
#>     Attrib V15    -0.171713994758784
#>     Attrib V16    -0.03156441215417275
#>     Attrib V17    -0.047461355868435584
#>     Attrib V18    0.08149126663383605
#>     Attrib V19    -0.027207723000932535
#>     Attrib V2    0.14442678524153327
#>     Attrib V20    0.26976638553947213
#>     Attrib V21    0.18109961087801868
#>     Attrib V22    0.018649879555529644
#>     Attrib V23    0.028538396947003903
#>     Attrib V24    0.024555706495163882
#>     Attrib V25    -0.06361047843075429
#>     Attrib V26    -0.40267634774219324
#>     Attrib V27    -0.2906129859371757
#>     Attrib V28    -0.016896487098625797
#>     Attrib V29    -0.08005296770837504
#>     Attrib V3    0.023429291567195757
#>     Attrib V30    0.09230933989474398
#>     Attrib V31    -0.05263306959915318
#>     Attrib V32    0.12610575813551184
#>     Attrib V33    0.05070773083413449
#>     Attrib V34    -0.020455220835337577
#>     Attrib V35    0.14530771001851217
#>     Attrib V36    -0.14155538698524991
#>     Attrib V37    -0.15880041749340734
#>     Attrib V38    0.10221833937684247
#>     Attrib V39    0.006505141614053606
#>     Attrib V4    0.1624110889501348
#>     Attrib V40    -0.16294432465089478
#>     Attrib V41    -0.12531881166006406
#>     Attrib V42    -0.16318882085578781
#>     Attrib V43    0.042879997155874684
#>     Attrib V44    0.06801015757443948
#>     Attrib V45    0.057520178776688385
#>     Attrib V46    -0.0020719235559028292
#>     Attrib V47    -0.05944183619032903
#>     Attrib V48    0.1559955955783978
#>     Attrib V49    0.08121994615311628
#>     Attrib V5    0.10004110488885325
#>     Attrib V50    -0.03709392616129639
#>     Attrib V51    0.03455553336625737
#>     Attrib V52    0.11727549561026977
#>     Attrib V53    0.2262763853876284
#>     Attrib V54    0.28431924563630795
#>     Attrib V55    -0.16741217963341767
#>     Attrib V56    -0.0025152119555878127
#>     Attrib V57    0.03544936844595837
#>     Attrib V58    0.09223153910481624
#>     Attrib V59    0.32888819013174037
#>     Attrib V6    0.043823764800921705
#>     Attrib V60    0.24862834047710014
#>     Attrib V7    0.03722951656519821
#>     Attrib V8    -0.15227443287057724
#>     Attrib V9    0.2118985978862477
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.14385492388514445
#>     Attrib V1    0.3683344039445002
#>     Attrib V10    -0.032842687207959395
#>     Attrib V11    0.16587819249158264
#>     Attrib V12    0.3205913296215039
#>     Attrib V13    0.10450787700316329
#>     Attrib V14    -0.1105965681300557
#>     Attrib V15    -0.24704155638679362
#>     Attrib V16    -0.16339147548015026
#>     Attrib V17    0.017915107349781106
#>     Attrib V18    0.23154456847674923
#>     Attrib V19    0.0910429797818408
#>     Attrib V2    0.07906361469292261
#>     Attrib V20    0.46230630645496046
#>     Attrib V21    0.38998159227720214
#>     Attrib V22    0.24437913193605965
#>     Attrib V23    0.29453611140542624
#>     Attrib V24    0.0722154022546974
#>     Attrib V25    -0.01857667614407623
#>     Attrib V26    -0.510990343985523
#>     Attrib V27    -0.4929525933945266
#>     Attrib V28    -0.053776705347243464
#>     Attrib V29    -0.16713371292607013
#>     Attrib V3    0.03522018684438749
#>     Attrib V30    0.09766051566927479
#>     Attrib V31    -0.23153388248147957
#>     Attrib V32    0.09997833627090323
#>     Attrib V33    0.0694164614074733
#>     Attrib V34    -0.08031583541823738
#>     Attrib V35    0.25810303910970683
#>     Attrib V36    -0.1154271274215065
#>     Attrib V37    -0.1673235025414125
#>     Attrib V38    0.1721071704870772
#>     Attrib V39    0.027605020835703355
#>     Attrib V4    0.2266392705799899
#>     Attrib V40    -0.28389689152100184
#>     Attrib V41    -0.09971060821265837
#>     Attrib V42    -0.16197021511627763
#>     Attrib V43    0.09690037921775706
#>     Attrib V44    0.1402480338166747
#>     Attrib V45    0.20801636011275207
#>     Attrib V46    -0.02325807964372526
#>     Attrib V47    0.023864965981689853
#>     Attrib V48    0.1315045679269264
#>     Attrib V49    0.13891279095987366
#>     Attrib V5    0.05178234470397196
#>     Attrib V50    -0.041843204912597645
#>     Attrib V51    0.006990199423887373
#>     Attrib V52    0.17762451424925915
#>     Attrib V53    0.32232745426254067
#>     Attrib V54    0.290945893410758
#>     Attrib V55    -0.3170758531935462
#>     Attrib V56    -0.019656554042775373
#>     Attrib V57    -0.02390860390005253
#>     Attrib V58    0.05719824150860844
#>     Attrib V59    0.5259090742876353
#>     Attrib V6    0.022116096471221737
#>     Attrib V60    0.22303031048405242
#>     Attrib V7    0.05730829976503497
#>     Attrib V8    -0.15502844272921543
#>     Attrib V9    0.16863047689472183
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.4476683224077461
#>     Attrib V1    -0.39626344912555916
#>     Attrib V10    -0.22361449349924312
#>     Attrib V11    -0.5311136957679052
#>     Attrib V12    -0.8882466229866374
#>     Attrib V13    -0.2981020854262526
#>     Attrib V14    0.25601261700140426
#>     Attrib V15    0.6237139811682888
#>     Attrib V16    0.40603244702710917
#>     Attrib V17    0.3438688489589417
#>     Attrib V18    -0.1799510031059332
#>     Attrib V19    0.2063353401180048
#>     Attrib V2    -0.14952408049932164
#>     Attrib V20    -0.2431488292899035
#>     Attrib V21    -0.1393337526530068
#>     Attrib V22    -0.01938900893614918
#>     Attrib V23    -0.481045035348016
#>     Attrib V24    -0.3726360308909913
#>     Attrib V25    -0.034342572325135635
#>     Attrib V26    0.7169851229926247
#>     Attrib V27    0.14107946668877122
#>     Attrib V28    -0.6265512634792934
#>     Attrib V29    -0.18758285173946251
#>     Attrib V3    0.03621077987400381
#>     Attrib V30    -0.1704046190908825
#>     Attrib V31    0.19098422471821436
#>     Attrib V32    -0.2770014370561206
#>     Attrib V33    -7.010906835794626E-4
#>     Attrib V34    0.2614240922903789
#>     Attrib V35    -0.2496357744626041
#>     Attrib V36    0.4473546430288786
#>     Attrib V37    0.1544039444232851
#>     Attrib V38    -0.12919666940969335
#>     Attrib V39    -0.08671660954080272
#>     Attrib V4    -0.040295625189953395
#>     Attrib V40    0.206053326351242
#>     Attrib V41    -0.2363492796655068
#>     Attrib V42    0.23734324691287217
#>     Attrib V43    -0.04771828615008236
#>     Attrib V44    -0.2016678439621436
#>     Attrib V45    -0.2389050715831843
#>     Attrib V46    -0.05546846834125778
#>     Attrib V47    -0.06968494731451481
#>     Attrib V48    -0.5487506576277893
#>     Attrib V49    -0.48010847372474275
#>     Attrib V5    -0.13612540631629264
#>     Attrib V50    0.2695674295939428
#>     Attrib V51    -0.11225357593153963
#>     Attrib V52    -0.32560874868881734
#>     Attrib V53    -0.4732411157818426
#>     Attrib V54    0.007762702755243021
#>     Attrib V55    0.9643628932135453
#>     Attrib V56    0.48404628497025526
#>     Attrib V57    0.2825681497742651
#>     Attrib V58    0.07331953096462462
#>     Attrib V59    -0.3545900751094242
#>     Attrib V6    -0.21505035469255354
#>     Attrib V60    -0.16873227538381516
#>     Attrib V7    0.05643480113582302
#>     Attrib V8    0.3943511124166452
#>     Attrib V9    -0.45238726163236226
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.8468141177042058
#>     Attrib V1    0.03963418322701145
#>     Attrib V10    0.7729328073518206
#>     Attrib V11    1.6579930154091533
#>     Attrib V12    2.2415223218862215
#>     Attrib V13    0.9646391919863
#>     Attrib V14    -0.21370506226774202
#>     Attrib V15    -1.067983836844437
#>     Attrib V16    -1.052297388695141
#>     Attrib V17    -0.9468743400592013
#>     Attrib V18    -0.4003817991971157
#>     Attrib V19    -0.776437813837101
#>     Attrib V2    0.458474344234481
#>     Attrib V20    -0.8123695817670729
#>     Attrib V21    -0.5632683831489308
#>     Attrib V22    0.03639486210500652
#>     Attrib V23    1.2781780790933541
#>     Attrib V24    1.077086423501231
#>     Attrib V25    0.12431229507981181
#>     Attrib V26    -0.06430206636545005
#>     Attrib V27    1.265607526672592
#>     Attrib V28    2.0113570753239443
#>     Attrib V29    0.8288860367799559
#>     Attrib V3    0.3033145519666198
#>     Attrib V30    -0.24971072899785265
#>     Attrib V31    -0.6802225509005205
#>     Attrib V32    0.4604677112577943
#>     Attrib V33    -0.6543629424903116
#>     Attrib V34    -0.5408653819579275
#>     Attrib V35    0.17631956888446706
#>     Attrib V36    -0.7444178490065628
#>     Attrib V37    0.6055016419379053
#>     Attrib V38    -0.5443506519804142
#>     Attrib V39    -0.012352605621233595
#>     Attrib V4    -0.1059490697010669
#>     Attrib V40    0.31866413885954376
#>     Attrib V41    1.3506858011254295
#>     Attrib V42    -0.5364303256533351
#>     Attrib V43    0.21384534863445562
#>     Attrib V44    0.4436974093075284
#>     Attrib V45    0.3862870170887289
#>     Attrib V46    0.4484520266731725
#>     Attrib V47    0.33006972338640533
#>     Attrib V48    1.1906446483247835
#>     Attrib V49    1.0342274676686134
#>     Attrib V5    0.60325527985874
#>     Attrib V50    -0.7584583081468561
#>     Attrib V51    0.6863707266927129
#>     Attrib V52    1.180680586454718
#>     Attrib V53    0.921951823705736
#>     Attrib V54    0.11804404413639569
#>     Attrib V55    -1.1342984712354045
#>     Attrib V56    -0.5354308923854255
#>     Attrib V57    0.17630336083913759
#>     Attrib V58    0.30815603961735116
#>     Attrib V59    0.29695048374500954
#>     Attrib V6    0.8841415603998554
#>     Attrib V60    0.401383724085272
#>     Attrib V7    -0.9605321282001268
#>     Attrib V8    -1.109888980185552
#>     Attrib V9    0.9515896828953071
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.1704830582508539
#>     Attrib V1    0.13350034515124576
#>     Attrib V10    0.061223624188069044
#>     Attrib V11    0.03614014646512584
#>     Attrib V12    0.10075001797459686
#>     Attrib V13    0.03957758245051731
#>     Attrib V14    0.07724267285426842
#>     Attrib V15    0.006127047105196369
#>     Attrib V16    0.012269626521297714
#>     Attrib V17    0.02628542838450424
#>     Attrib V18    -0.022543790937239492
#>     Attrib V19    0.025199107760465807
#>     Attrib V2    0.12601843606017402
#>     Attrib V20    0.05014723177146169
#>     Attrib V21    0.026389843137202572
#>     Attrib V22    -0.0444464566766797
#>     Attrib V23    -0.0411683052019233
#>     Attrib V24    -0.0676135237224859
#>     Attrib V25    -0.031093534144085683
#>     Attrib V26    -0.10797046965993314
#>     Attrib V27    -0.033334848867664434
#>     Attrib V28    0.037258915705598146
#>     Attrib V29    -0.009927238330258421
#>     Attrib V3    0.07002122709335547
#>     Attrib V30    0.012342777797477463
#>     Attrib V31    -0.04120554724560086
#>     Attrib V32    0.005906641022954929
#>     Attrib V33    0.06514682592288956
#>     Attrib V34    0.015497263121865093
#>     Attrib V35    0.11391099615029117
#>     Attrib V36    0.052413631317131046
#>     Attrib V37    0.06617092484266025
#>     Attrib V38    0.04341283910476277
#>     Attrib V39    0.0754918399401784
#>     Attrib V4    0.15684041995256712
#>     Attrib V40    0.0017260529043022594
#>     Attrib V41    -0.010540118434191108
#>     Attrib V42    -0.014735970773517917
#>     Attrib V43    0.02651474211126131
#>     Attrib V44    0.08262564181721786
#>     Attrib V45    0.07000396277225301
#>     Attrib V46    0.013223849362935181
#>     Attrib V47    0.006173225448740022
#>     Attrib V48    0.0834227065090571
#>     Attrib V49    0.016724223205167272
#>     Attrib V5    0.058491735093345584
#>     Attrib V50    0.036701020779076
#>     Attrib V51    0.03099912542582509
#>     Attrib V52    0.05016533050791551
#>     Attrib V53    0.09349310340215278
#>     Attrib V54    0.09494911655644292
#>     Attrib V55    0.05370546029286564
#>     Attrib V56    0.09989669726963692
#>     Attrib V57    0.11408191163798809
#>     Attrib V58    0.0934005745257533
#>     Attrib V59    0.13322661579862882
#>     Attrib V6    0.119454478556403
#>     Attrib V60    0.16833504021774878
#>     Attrib V7    0.041152786408494464
#>     Attrib V8    0.06477688872731799
#>     Attrib V9    0.10989019492651296
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.6668611287448117
#>     Attrib V1    0.5264977827542763
#>     Attrib V10    0.19824326571212522
#>     Attrib V11    0.5883367745905146
#>     Attrib V12    0.9505938310975849
#>     Attrib V13    0.33611886582849004
#>     Attrib V14    -0.3889768605579892
#>     Attrib V15    -0.7349142534074513
#>     Attrib V16    -0.500812534071058
#>     Attrib V17    -0.34341682565421233
#>     Attrib V18    0.28406054913800266
#>     Attrib V19    -0.15387917159421652
#>     Attrib V2    0.13478876988398694
#>     Attrib V20    0.4866751148208288
#>     Attrib V21    0.42821892067056316
#>     Attrib V22    0.18952210030982192
#>     Attrib V23    0.6461650689738682
#>     Attrib V24    0.35973890385151286
#>     Attrib V25    -0.08343265311541591
#>     Attrib V26    -0.966846140046581
#>     Attrib V27    -0.512573809280208
#>     Attrib V28    0.5310913195955198
#>     Attrib V29    0.13918578511286933
#>     Attrib V3    -0.1681264933340202
#>     Attrib V30    0.3125703927569286
#>     Attrib V31    -0.378754113096161
#>     Attrib V32    0.2834440757439473
#>     Attrib V33    -0.07064246236181161
#>     Attrib V34    -0.3109345900200487
#>     Attrib V35    0.3359132094981517
#>     Attrib V36    -0.4249303890125407
#>     Attrib V37    -0.27619029251354904
#>     Attrib V38    0.2431211348403567
#>     Attrib V39    0.09100552765902487
#>     Attrib V4    0.06527137837725581
#>     Attrib V40    -0.3613987056466266
#>     Attrib V41    0.1686957595629251
#>     Attrib V42    -0.3340033403468541
#>     Attrib V43    0.10072828285831795
#>     Attrib V44    0.2818044735337077
#>     Attrib V45    0.36750719210431776
#>     Attrib V46    -0.037463071344134055
#>     Attrib V47    -0.0020575010107587726
#>     Attrib V48    0.5953715629500064
#>     Attrib V49    0.4542493114736723
#>     Attrib V5    -0.024786489997531726
#>     Attrib V50    -0.19568982050040354
#>     Attrib V51    0.12160864441000614
#>     Attrib V52    0.40352783511397355
#>     Attrib V53    0.5088141882537249
#>     Attrib V54    0.16806187951182872
#>     Attrib V55    -1.0538814343261205
#>     Attrib V56    -0.5683238167989471
#>     Attrib V57    -0.34633971644696837
#>     Attrib V58    -0.07775922797460887
#>     Attrib V59    0.5987559323060111
#>     Attrib V6    0.17866237277085442
#>     Attrib V60    0.12419606667298198
#>     Attrib V7    -0.138442891399584
#>     Attrib V8    -0.38247796834413367
#>     Attrib V9    0.5196013520681929
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.6869749233825317
#>     Attrib V1    -0.6039162584212349
#>     Attrib V10    0.11518632657463086
#>     Attrib V11    -0.7491311059317838
#>     Attrib V12    -1.7099539557232575
#>     Attrib V13    -0.7322900452760289
#>     Attrib V14    0.44767985678760286
#>     Attrib V15    1.3144723215060525
#>     Attrib V16    1.0614623577917317
#>     Attrib V17    0.42087462046183965
#>     Attrib V18    -0.5129984020148421
#>     Attrib V19    0.21317621876720308
#>     Attrib V2    -0.291151719775509
#>     Attrib V20    -0.6666104662530151
#>     Attrib V21    -0.44599466989215486
#>     Attrib V22    -0.49071365679704027
#>     Attrib V23    -1.4004378508089497
#>     Attrib V24    -0.6822230492629271
#>     Attrib V25    0.06018161441167021
#>     Attrib V26    1.7358133117597663
#>     Attrib V27    0.8892615907144197
#>     Attrib V28    -0.8822970899773147
#>     Attrib V29    -0.31390859492027656
#>     Attrib V3    -0.004995621340402653
#>     Attrib V30    -0.2593176084770206
#>     Attrib V31    0.5479762839121565
#>     Attrib V32    -0.3631467875914775
#>     Attrib V33    0.17344384851643038
#>     Attrib V34    0.6366330362736574
#>     Attrib V35    -0.28264272872969415
#>     Attrib V36    1.0151880096164714
#>     Attrib V37    0.8577396223808155
#>     Attrib V38    0.015207080509709538
#>     Attrib V39    0.05285728151197175
#>     Attrib V4    -0.08600221041647169
#>     Attrib V40    0.4307120511685203
#>     Attrib V41    -0.478726409955734
#>     Attrib V42    0.23969711364330046
#>     Attrib V43    -0.31936192128910357
#>     Attrib V44    -0.22957356038635307
#>     Attrib V45    -0.1713670715205666
#>     Attrib V46    -0.14481384792101337
#>     Attrib V47    -0.4010425208875117
#>     Attrib V48    -0.9292029739486016
#>     Attrib V49    -0.8075378005547911
#>     Attrib V5    -0.011363035324997085
#>     Attrib V50    0.22154950583037827
#>     Attrib V51    -0.4583123324803685
#>     Attrib V52    -0.7940618100225174
#>     Attrib V53    -0.9205390140299838
#>     Attrib V54    0.12614853495232636
#>     Attrib V55    1.6739778801163896
#>     Attrib V56    0.5616761552614009
#>     Attrib V57    0.37713618795583026
#>     Attrib V58    0.005773344660241139
#>     Attrib V59    -0.8976945469616223
#>     Attrib V6    -0.34034695875159443
#>     Attrib V60    -0.14766825468061814
#>     Attrib V7    0.37991421252035457
#>     Attrib V8    0.9986585516402199
#>     Attrib V9    -0.2503153624370578
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.4843758180675356
#>     Attrib V1    0.4181764684844435
#>     Attrib V10    0.06760856509553424
#>     Attrib V11    0.5056377091468639
#>     Attrib V12    0.8347466832628837
#>     Attrib V13    0.2768217118073362
#>     Attrib V14    -0.26831022668950916
#>     Attrib V15    -0.6494034647431022
#>     Attrib V16    -0.46505828114647013
#>     Attrib V17    -0.28114951670439003
#>     Attrib V18    0.24052500176647007
#>     Attrib V19    -0.12518516033463611
#>     Attrib V2    0.11319748298257827
#>     Attrib V20    0.5893932297687146
#>     Attrib V21    0.4974845795605821
#>     Attrib V22    0.32293242944585615
#>     Attrib V23    0.617608886257113
#>     Attrib V24    0.3510623796647665
#>     Attrib V25    0.008900493094714227
#>     Attrib V26    -0.9549765596119439
#>     Attrib V27    -0.5198676348897012
#>     Attrib V28    0.435033565696821
#>     Attrib V29    0.13176644862372536
#>     Attrib V3    -0.07248284802026997
#>     Attrib V30    0.21089199896448987
#>     Attrib V31    -0.3739153850297226
#>     Attrib V32    0.2547055366527332
#>     Attrib V33    -0.03038567739752221
#>     Attrib V34    -0.2926497974217824
#>     Attrib V35    0.29282245582065447
#>     Attrib V36    -0.4051925335004607
#>     Attrib V37    -0.2813498761559357
#>     Attrib V38    0.20406798357695216
#>     Attrib V39    0.05591427127978932
#>     Attrib V4    0.06022651841203429
#>     Attrib V40    -0.29118212194236764
#>     Attrib V41    0.15688937050642324
#>     Attrib V42    -0.27464712117618406
#>     Attrib V43    0.19326738013153877
#>     Attrib V44    0.17732503571902322
#>     Attrib V45    0.3189014988767798
#>     Attrib V46    0.010017626497849309
#>     Attrib V47    0.08468955666383293
#>     Attrib V48    0.4754270838701449
#>     Attrib V49    0.38948563553606086
#>     Attrib V5    -0.05749748417648969
#>     Attrib V50    -0.13957171542460553
#>     Attrib V51    0.12655213609942312
#>     Attrib V52    0.38233286856125004
#>     Attrib V53    0.438069864616524
#>     Attrib V54    0.14289269157013967
#>     Attrib V55    -0.886216788062628
#>     Attrib V56    -0.37475365219684614
#>     Attrib V57    -0.2527748209933499
#>     Attrib V58    -0.0626913259421154
#>     Attrib V59    0.5581811780381024
#>     Attrib V6    0.12742849644311072
#>     Attrib V60    0.1710362418879833
#>     Attrib V7    -0.09958707868746203
#>     Attrib V8    -0.3342873669137938
#>     Attrib V9    0.3926258608690834
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.10397313672503557
#>     Attrib V1    0.1856693182158687
#>     Attrib V10    0.14642677727519793
#>     Attrib V11    0.11455623903285081
#>     Attrib V12    0.1637042605529399
#>     Attrib V13    0.11035983165160212
#>     Attrib V14    0.018097331140044953
#>     Attrib V15    -5.203545486423924E-4
#>     Attrib V16    -0.010407363194065853
#>     Attrib V17    0.006676360804993196
#>     Attrib V18    -0.004381473245181056
#>     Attrib V19    -0.07345527888397513
#>     Attrib V2    0.1435791146688786
#>     Attrib V20    0.029512559643291778
#>     Attrib V21    0.0419298555284789
#>     Attrib V22    -0.05285742980147818
#>     Attrib V23    -0.03309419659467624
#>     Attrib V24    -0.07349474248126939
#>     Attrib V25    2.9869056931081523E-4
#>     Attrib V26    -0.07355101965134225
#>     Attrib V27    -0.06135237652630368
#>     Attrib V28    0.06045394508521548
#>     Attrib V29    -0.06068017545368184
#>     Attrib V3    0.08097491929527294
#>     Attrib V30    0.06559356145812772
#>     Attrib V31    0.05171037432935842
#>     Attrib V32    0.052494424227537834
#>     Attrib V33    0.02637699051887288
#>     Attrib V34    0.009600389408774316
#>     Attrib V35    0.10739800486813955
#>     Attrib V36    -0.029081041746153283
#>     Attrib V37    0.036321821620872
#>     Attrib V38    0.041186261382120455
#>     Attrib V39    0.10749985696961474
#>     Attrib V4    0.159783957777949
#>     Attrib V40    -0.0013611796722751957
#>     Attrib V41    -0.00462674948816156
#>     Attrib V42    -0.02310635296859471
#>     Attrib V43    -0.009579999712173144
#>     Attrib V44    0.03302973843044687
#>     Attrib V45    0.07746436828158254
#>     Attrib V46    0.019572249319620594
#>     Attrib V47    -0.007608398317731055
#>     Attrib V48    0.08652595362035055
#>     Attrib V49    0.012888242802012723
#>     Attrib V5    0.05427796173648445
#>     Attrib V50    -0.014569948781064662
#>     Attrib V51    0.03257359086871856
#>     Attrib V52    0.08184471748177961
#>     Attrib V53    0.13584700512562983
#>     Attrib V54    0.12257623090736226
#>     Attrib V55    -0.011862926687678004
#>     Attrib V56    0.0986025462823752
#>     Attrib V57    0.05607871961541593
#>     Attrib V58    0.1036536181144138
#>     Attrib V59    0.1743166829073315
#>     Attrib V6    0.08363539783701068
#>     Attrib V60    0.15630552167087589
#>     Attrib V7    0.01062705265758001
#>     Attrib V8    9.595231702094948E-5
#>     Attrib V9    0.1404996266585247
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.04869553951555339
#>     Attrib V1    0.34710330377302195
#>     Attrib V10    0.03147854624827792
#>     Attrib V11    0.15539881723030646
#>     Attrib V12    0.1799240489334729
#>     Attrib V13    0.09296629035658859
#>     Attrib V14    -0.04813001004446497
#>     Attrib V15    -0.13666157674208038
#>     Attrib V16    -0.07016100895436428
#>     Attrib V17    0.022899919888337616
#>     Attrib V18    0.21127901487718323
#>     Attrib V19    0.08595781095843377
#>     Attrib V2    0.17755677214974785
#>     Attrib V20    0.466990170040656
#>     Attrib V21    0.3223916395281534
#>     Attrib V22    0.2084401304223241
#>     Attrib V23    0.19073930977617737
#>     Attrib V24    0.05254653364598627
#>     Attrib V25    -0.09855622406397851
#>     Attrib V26    -0.4987329206603155
#>     Attrib V27    -0.4798910974603891
#>     Attrib V28    -0.11595795359664143
#>     Attrib V29    -0.18563463051326906
#>     Attrib V3    -0.0035996155088182293
#>     Attrib V30    0.07859929506858762
#>     Attrib V31    -0.1353919100105789
#>     Attrib V32    0.09002115319600008
#>     Attrib V33    0.11462833313586034
#>     Attrib V34    0.006873238824922929
#>     Attrib V35    0.23913962433616923
#>     Attrib V36    -0.13280199587056576
#>     Attrib V37    -0.18938049715978145
#>     Attrib V38    0.223668479236779
#>     Attrib V39    0.024148024297936957
#>     Attrib V4    0.20888131076740796
#>     Attrib V40    -0.23315672167971427
#>     Attrib V41    -0.14977702363794623
#>     Attrib V42    -0.16095044498735947
#>     Attrib V43    0.059279873144055154
#>     Attrib V44    0.1592987387798682
#>     Attrib V45    0.14322342835276453
#>     Attrib V46    -0.02819410481691742
#>     Attrib V47    -0.02834598757396849
#>     Attrib V48    0.127061152754505
#>     Attrib V49    0.09666810666358935
#>     Attrib V5    0.04474483170112125
#>     Attrib V50    -0.020511898354274007
#>     Attrib V51    0.0053527350841179894
#>     Attrib V52    0.10427790202189349
#>     Attrib V53    0.29211562865077545
#>     Attrib V54    0.365314521481946
#>     Attrib V55    -0.18517316412361073
#>     Attrib V56    -0.05475010719892587
#>     Attrib V57    0.026774895642568734
#>     Attrib V58    0.0350994529099514
#>     Attrib V59    0.41974457673361043
#>     Attrib V6    0.012505485444452376
#>     Attrib V60    0.23695244047211964
#>     Attrib V7    0.08965854426975481
#>     Attrib V8    -0.08241545057368956
#>     Attrib V9    0.20536595481561085
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.05801299294970098
#>     Attrib V1    0.2320761704073911
#>     Attrib V10    0.058496022997740996
#>     Attrib V11    0.14179103390000955
#>     Attrib V12    0.1666136292153613
#>     Attrib V13    0.034805895447267594
#>     Attrib V14    0.035926739102015166
#>     Attrib V15    -0.04185774274947751
#>     Attrib V16    -0.014124409821956214
#>     Attrib V17    -0.06758944012307136
#>     Attrib V18    0.08532681946026678
#>     Attrib V19    -0.0666081174763206
#>     Attrib V2    0.10714006690277013
#>     Attrib V20    0.15097695018994142
#>     Attrib V21    0.11219695968273283
#>     Attrib V22    -0.021056386658885193
#>     Attrib V23    0.0363013067060769
#>     Attrib V24    -0.03988725001474202
#>     Attrib V25    -0.0838360406858642
#>     Attrib V26    -0.2241171824762059
#>     Attrib V27    -0.13153923844704438
#>     Attrib V28    0.07516856078118929
#>     Attrib V29    -0.04124014329581398
#>     Attrib V3    0.1081226006885394
#>     Attrib V30    0.09179918660600948
#>     Attrib V31    -0.08504002201308007
#>     Attrib V32    0.05873708186890013
#>     Attrib V33    0.07705970356548361
#>     Attrib V34    0.026907221241830623
#>     Attrib V35    0.1218296185841965
#>     Attrib V36    0.0026726249336081393
#>     Attrib V37    -0.03729550748883249
#>     Attrib V38    0.07286398123280151
#>     Attrib V39    0.06926792440059333
#>     Attrib V4    0.12649878582356122
#>     Attrib V40    -0.10913802541783964
#>     Attrib V41    -0.09272286929908297
#>     Attrib V42    -0.07894908205369561
#>     Attrib V43    -0.032419491730225125
#>     Attrib V44    0.11518994423874593
#>     Attrib V45    0.1420396142016381
#>     Attrib V46    0.01428404173496847
#>     Attrib V47    -0.006951737969955028
#>     Attrib V48    0.04680572692455801
#>     Attrib V49    0.08426069287620414
#>     Attrib V5    0.10482264099534959
#>     Attrib V50    -0.039317196464490625
#>     Attrib V51    0.06122460435997653
#>     Attrib V52    0.12476158204303812
#>     Attrib V53    0.16652610180980462
#>     Attrib V54    0.13193118579028815
#>     Attrib V55    -0.07611667485985753
#>     Attrib V56    0.01975868945117894
#>     Attrib V57    0.04918703666862622
#>     Attrib V58    0.12085674923745066
#>     Attrib V59    0.17810657772296493
#>     Attrib V6    0.09424051419901208
#>     Attrib V60    0.14714525671115192
#>     Attrib V7    0.060849054990502235
#>     Attrib V8    0.021981210447161458
#>     Attrib V9    0.20570160829695466
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
#>  0.2608696 
```
