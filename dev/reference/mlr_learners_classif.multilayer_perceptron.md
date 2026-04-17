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
#>     Threshold    -0.6436464445563668
#>     Node 2    1.91132447808211
#>     Node 3    1.391146162169955
#>     Node 4    1.1004976346526163
#>     Node 5    -1.841413644831035
#>     Node 6    1.246018685950444
#>     Node 7    3.4843335983477397
#>     Node 8    0.8922578440373707
#>     Node 9    3.4738041854212747
#>     Node 10    -1.783391605916739
#>     Node 11    1.084720315294669
#>     Node 12    1.3779234051021887
#>     Node 13    0.8533303036696912
#>     Node 14    1.273590225683063
#>     Node 15    -2.73502709755136
#>     Node 16    -0.28877063182263163
#>     Node 17    0.5138324989595099
#>     Node 18    -0.0579861818691073
#>     Node 19    2.506704245992183
#>     Node 20    2.13424172336064
#>     Node 21    -2.399864643002859
#>     Node 22    0.6784019706831945
#>     Node 23    1.19261092813995
#>     Node 24    -1.6827380344460907
#>     Node 25    4.831996240005506
#>     Node 26    0.3945263547865785
#>     Node 27    1.3314022127877914
#>     Node 28    -3.043986738308598
#>     Node 29    1.0398205980491528
#>     Node 30    0.7550591501202555
#>     Node 31    1.4206399526284004
#>     Node 32    0.9519273955081061
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.6758054026024285
#>     Node 2    -1.9404541313736055
#>     Node 3    -1.3792361507180275
#>     Node 4    -1.0632241600373025
#>     Node 5    1.8512365996893752
#>     Node 6    -1.2283642395776413
#>     Node 7    -3.4843815513674348
#>     Node 8    -0.9214605571093123
#>     Node 9    -3.4748934856461333
#>     Node 10    1.713600111955875
#>     Node 11    -1.0553360730598962
#>     Node 12    -1.4533582282384967
#>     Node 13    -0.8042676475053834
#>     Node 14    -1.2128610074998671
#>     Node 15    2.7245830319697424
#>     Node 16    0.281072072885911
#>     Node 17    -0.4806293773598394
#>     Node 18    0.10680041286261646
#>     Node 19    -2.5014342001123837
#>     Node 20    -2.116112422175772
#>     Node 21    2.4595194306148325
#>     Node 22    -0.7372014364632969
#>     Node 23    -1.250405472517136
#>     Node 24    1.665772024159754
#>     Node 25    -4.827809731645986
#>     Node 26    -0.47938295685538573
#>     Node 27    -1.379084678213441
#>     Node 28    3.0357757550359517
#>     Node 29    -1.0749475030712379
#>     Node 30    -0.6842048762111438
#>     Node 31    -1.3749733172268352
#>     Node 32    -0.9767061702496593
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.3677659512794298
#>     Attrib V1    0.6047894184040725
#>     Attrib V10    0.17721012734239505
#>     Attrib V11    0.29387087633037157
#>     Attrib V12    0.4244740060853882
#>     Attrib V13    -0.5055746534227418
#>     Attrib V14    -0.28068626732984703
#>     Attrib V15    -0.23821770881630872
#>     Attrib V16    -0.6099610082105991
#>     Attrib V17    -0.21563959446451725
#>     Attrib V18    -0.12010111546652985
#>     Attrib V19    -0.3103267292573402
#>     Attrib V2    -0.02656707436976492
#>     Attrib V20    0.10191348839487087
#>     Attrib V21    0.1443778255780373
#>     Attrib V22    0.1576937442859225
#>     Attrib V23    0.49656682090047366
#>     Attrib V24    0.17819426170527877
#>     Attrib V25    0.18653751647995212
#>     Attrib V26    0.07949880407496251
#>     Attrib V27    -0.01861437618901687
#>     Attrib V28    0.3732485599283912
#>     Attrib V29    0.7325421448090166
#>     Attrib V3    0.027635240040913868
#>     Attrib V30    0.8476880383563569
#>     Attrib V31    -1.0346504963592773
#>     Attrib V32    -0.20273145309140927
#>     Attrib V33    0.632286802938204
#>     Attrib V34    0.44750434493210395
#>     Attrib V35    0.0011724421123624018
#>     Attrib V36    -0.6018265170455849
#>     Attrib V37    -0.21986250977964827
#>     Attrib V38    0.1311358579914808
#>     Attrib V39    0.4716714445880244
#>     Attrib V4    0.35244813117562507
#>     Attrib V40    0.07152820949454798
#>     Attrib V41    0.33568359302339584
#>     Attrib V42    0.5965409967179471
#>     Attrib V43    0.4236108580466894
#>     Attrib V44    0.0807635529644322
#>     Attrib V45    0.11770706685845579
#>     Attrib V46    0.016474203761146524
#>     Attrib V47    -0.24153910679488208
#>     Attrib V48    0.4604473865704894
#>     Attrib V49    0.5425123002085134
#>     Attrib V5    -0.3794260894956018
#>     Attrib V50    -0.8632795566429575
#>     Attrib V51    0.05738757248464086
#>     Attrib V52    0.3448939522457525
#>     Attrib V53    0.08365055385097808
#>     Attrib V54    0.1663080371148036
#>     Attrib V55    -0.7757273658636972
#>     Attrib V56    -0.1454530178264528
#>     Attrib V57    -0.4869873337741634
#>     Attrib V58    -0.017241313453055494
#>     Attrib V59    0.6957684891139648
#>     Attrib V6    -0.11468901908215218
#>     Attrib V60    0.4082681281934936
#>     Attrib V7    -0.6189151297786194
#>     Attrib V8    -0.20291313637466404
#>     Attrib V9    0.6551890231909566
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.08496071785477606
#>     Attrib V1    0.4785338414478781
#>     Attrib V10    0.07467833973772946
#>     Attrib V11    -0.04978833918665535
#>     Attrib V12    -0.0546647038104825
#>     Attrib V13    -0.2646384116590929
#>     Attrib V14    0.3238030143582221
#>     Attrib V15    0.44947436466654106
#>     Attrib V16    -0.1072287327785018
#>     Attrib V17    0.027655417322484967
#>     Attrib V18    0.09144507519340288
#>     Attrib V19    0.1613019762496928
#>     Attrib V2    -0.03143792245300152
#>     Attrib V20    0.5411252383275295
#>     Attrib V21    0.3105762863477738
#>     Attrib V22    0.15628066905110893
#>     Attrib V23    0.39757573972203747
#>     Attrib V24    0.15328817668696298
#>     Attrib V25    -0.05680254597548732
#>     Attrib V26    -0.30947808514374164
#>     Attrib V27    -0.6354169082243721
#>     Attrib V28    -0.3768172447537247
#>     Attrib V29    0.14149971790003613
#>     Attrib V3    0.05177007035447797
#>     Attrib V30    0.2893723133077201
#>     Attrib V31    -0.7193198374469476
#>     Attrib V32    -0.06810336412282372
#>     Attrib V33    0.6206930220340404
#>     Attrib V34    0.4373168493419379
#>     Attrib V35    0.14071353427002015
#>     Attrib V36    -0.5078380675749077
#>     Attrib V37    -0.3667393884259476
#>     Attrib V38    -0.10927250712266903
#>     Attrib V39    0.21377692640478008
#>     Attrib V4    0.3042133748831884
#>     Attrib V40    -0.15462141051769254
#>     Attrib V41    -0.04729572026730578
#>     Attrib V42    0.3863572543192121
#>     Attrib V43    0.29254212005356856
#>     Attrib V44    -0.0465817234646679
#>     Attrib V45    -0.21037777070628544
#>     Attrib V46    -0.19394856860685103
#>     Attrib V47    -0.2888763722949415
#>     Attrib V48    0.20251559170940758
#>     Attrib V49    0.2969214061233254
#>     Attrib V5    -0.3302952048220059
#>     Attrib V50    -0.5372531628249946
#>     Attrib V51    0.11498808178860721
#>     Attrib V52    0.26061592666860633
#>     Attrib V53    0.3113667340424158
#>     Attrib V54    0.36488966205726475
#>     Attrib V55    -0.018171494138670436
#>     Attrib V56    0.22796509896864836
#>     Attrib V57    -0.28488970642854655
#>     Attrib V58    0.5248102778006385
#>     Attrib V59    0.695800816954351
#>     Attrib V6    -0.14968585941845405
#>     Attrib V60    0.28332079212238587
#>     Attrib V7    -0.36980571430110865
#>     Attrib V8    0.040081040920561535
#>     Attrib V9    0.4491646598105416
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.0281385920327618
#>     Attrib V1    0.35580630816054293
#>     Attrib V10    0.03336801186854899
#>     Attrib V11    -0.05587643591582952
#>     Attrib V12    -0.06881103427647547
#>     Attrib V13    -0.22172165089898432
#>     Attrib V14    0.28697121877384163
#>     Attrib V15    0.37511014316937735
#>     Attrib V16    -0.06025233200662391
#>     Attrib V17    0.03330877600641698
#>     Attrib V18    0.06770055596914347
#>     Attrib V19    0.06501157159170608
#>     Attrib V2    -0.06963358963304729
#>     Attrib V20    0.3978836102155518
#>     Attrib V21    0.29340514520180283
#>     Attrib V22    0.07020555243161665
#>     Attrib V23    0.28643563800041183
#>     Attrib V24    0.08227209353860376
#>     Attrib V25    -0.12322885642352203
#>     Attrib V26    -0.2711529193112932
#>     Attrib V27    -0.5389500306072486
#>     Attrib V28    -0.2756177011140903
#>     Attrib V29    0.15155041976849712
#>     Attrib V3    0.052742305579089564
#>     Attrib V30    0.16695776603380444
#>     Attrib V31    -0.5759693158862383
#>     Attrib V32    -0.08201694925858022
#>     Attrib V33    0.4769412769100725
#>     Attrib V34    0.3918776315974324
#>     Attrib V35    0.13936734718476285
#>     Attrib V36    -0.3719779327811294
#>     Attrib V37    -0.26439090475650756
#>     Attrib V38    -0.08442231875116003
#>     Attrib V39    0.15123223348377798
#>     Attrib V4    0.23634291343241032
#>     Attrib V40    -0.14671731485167763
#>     Attrib V41    -0.0945875722009501
#>     Attrib V42    0.28232084067678764
#>     Attrib V43    0.2018548340948799
#>     Attrib V44    -0.02633063969586561
#>     Attrib V45    -0.08632674329068203
#>     Attrib V46    -0.15691197396983372
#>     Attrib V47    -0.2657638302252252
#>     Attrib V48    0.21030490250408673
#>     Attrib V49    0.28157050860125654
#>     Attrib V5    -0.21286446449508215
#>     Attrib V50    -0.39174747476543353
#>     Attrib V51    0.15080083012912324
#>     Attrib V52    0.1789863408550379
#>     Attrib V53    0.2931259727127237
#>     Attrib V54    0.18938747415031842
#>     Attrib V55    -0.05162728574504013
#>     Attrib V56    0.18653268668545653
#>     Attrib V57    -0.1698188429397415
#>     Attrib V58    0.36147254528733563
#>     Attrib V59    0.549575944542866
#>     Attrib V6    -0.10364229112768
#>     Attrib V60    0.2680857191083324
#>     Attrib V7    -0.23805921896842416
#>     Attrib V8    -0.05049008045642698
#>     Attrib V9    0.38125790547514204
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.20485115635913845
#>     Attrib V1    -0.5566858957078891
#>     Attrib V10    -0.17150874646984163
#>     Attrib V11    -0.1577839919614087
#>     Attrib V12    -0.14265009255440778
#>     Attrib V13    0.37838626002554576
#>     Attrib V14    -0.20348382109558166
#>     Attrib V15    -0.2389756165715823
#>     Attrib V16    0.2934030753804323
#>     Attrib V17    0.060489838095284125
#>     Attrib V18    -0.09160735021005884
#>     Attrib V19    -0.05522447158263879
#>     Attrib V2    0.17321525656575423
#>     Attrib V20    -0.592671640059573
#>     Attrib V21    -0.323574289552602
#>     Attrib V22    -0.24858523777274885
#>     Attrib V23    -0.583112789151667
#>     Attrib V24    -0.192154075949609
#>     Attrib V25    0.05686014950708181
#>     Attrib V26    0.20625796086015424
#>     Attrib V27    0.4665946623601084
#>     Attrib V28    0.06631841854140312
#>     Attrib V29    -0.49600655377708586
#>     Attrib V3    0.06777698111499317
#>     Attrib V30    -0.4429649795418636
#>     Attrib V31    1.262592398345114
#>     Attrib V32    0.2305641486344511
#>     Attrib V33    -0.7598108981791134
#>     Attrib V34    -0.5151148227965423
#>     Attrib V35    -0.0656137026016005
#>     Attrib V36    0.6759401806160216
#>     Attrib V37    0.3108618788563851
#>     Attrib V38    -0.09391134010254375
#>     Attrib V39    -0.4039007090409758
#>     Attrib V4    -0.43811670045968765
#>     Attrib V40    0.17941528141465926
#>     Attrib V41    -0.06819725668628317
#>     Attrib V42    -0.4410349235170317
#>     Attrib V43    -0.40209707290801644
#>     Attrib V44    0.04792208391976754
#>     Attrib V45    0.013976669039143387
#>     Attrib V46    0.06585601700413217
#>     Attrib V47    0.3067646425229462
#>     Attrib V48    -0.44232979854443955
#>     Attrib V49    -0.652827659891534
#>     Attrib V5    0.5715536610332329
#>     Attrib V50    0.8174114149349724
#>     Attrib V51    -0.17547344368512816
#>     Attrib V52    -0.39395419258651193
#>     Attrib V53    -0.3325094245264721
#>     Attrib V54    -0.15228995982775514
#>     Attrib V55    0.4230831454198217
#>     Attrib V56    -0.022485072676070417
#>     Attrib V57    0.46610536940127767
#>     Attrib V58    -0.44927623594449195
#>     Attrib V59    -0.6958209448258973
#>     Attrib V6    0.25257136980410255
#>     Attrib V60    -0.24568678003372238
#>     Attrib V7    0.5873990199969287
#>     Attrib V8    0.06706996576669899
#>     Attrib V9    -0.7486270840937281
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.1124538159617534
#>     Attrib V1    0.47039721935984813
#>     Attrib V10    -0.03673511603126998
#>     Attrib V11    -0.12793126834530422
#>     Attrib V12    -0.058025586907363126
#>     Attrib V13    -0.3012445341762273
#>     Attrib V14    0.27904058403852905
#>     Attrib V15    0.3829552281735342
#>     Attrib V16    0.019669979410831488
#>     Attrib V17    0.0057573226075779416
#>     Attrib V18    0.13082056890557406
#>     Attrib V19    0.0718198696338904
#>     Attrib V2    -0.05713019289186756
#>     Attrib V20    0.45910437405902177
#>     Attrib V21    0.30926028967585495
#>     Attrib V22    0.05890794300462935
#>     Attrib V23    0.24294806895174878
#>     Attrib V24    0.12753041676482982
#>     Attrib V25    -0.05551173117716118
#>     Attrib V26    -0.3240883588577946
#>     Attrib V27    -0.5478530629292819
#>     Attrib V28    -0.42492317287435033
#>     Attrib V29    0.053867250142270014
#>     Attrib V3    0.0363927907683829
#>     Attrib V30    0.10941683148422116
#>     Attrib V31    -0.6611618539872146
#>     Attrib V32    -0.08089808072995347
#>     Attrib V33    0.5260570419025646
#>     Attrib V34    0.4502028980377019
#>     Attrib V35    0.22261116540564066
#>     Attrib V36    -0.3896955627362004
#>     Attrib V37    -0.2936612976428423
#>     Attrib V38    -0.09017362829593506
#>     Attrib V39    0.1374346341395803
#>     Attrib V4    0.29980332277970195
#>     Attrib V40    -0.17289268958286685
#>     Attrib V41    8.049965619775718E-4
#>     Attrib V42    0.3154706264829573
#>     Attrib V43    0.2093812204262475
#>     Attrib V44    -0.11523840030042164
#>     Attrib V45    -0.2021669901343702
#>     Attrib V46    -0.14799741458048138
#>     Attrib V47    -0.30153881410692307
#>     Attrib V48    0.1504159417878122
#>     Attrib V49    0.19788843990555002
#>     Attrib V5    -0.23968255187888401
#>     Attrib V50    -0.402148409522187
#>     Attrib V51    0.10748434578929629
#>     Attrib V52    0.10630012593633656
#>     Attrib V53    0.3268823809883763
#>     Attrib V54    0.2755669667245178
#>     Attrib V55    -0.044708316561370344
#>     Attrib V56    0.20897562542779105
#>     Attrib V57    -0.15769088390711514
#>     Attrib V58    0.43493566536006634
#>     Attrib V59    0.7344572377222213
#>     Attrib V6    0.009140045723168611
#>     Attrib V60    0.4753671710534552
#>     Attrib V7    -0.19827442862141964
#>     Attrib V8    0.0063278868538603145
#>     Attrib V9    0.3907636723809499
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.7022493813132491
#>     Attrib V1    0.8280440696998196
#>     Attrib V10    0.4594947560273334
#>     Attrib V11    0.9782251010855709
#>     Attrib V12    1.2980343339596438
#>     Attrib V13    0.07518142619511392
#>     Attrib V14    -0.3178521725075485
#>     Attrib V15    -0.4982360804375335
#>     Attrib V16    -0.8497802605296647
#>     Attrib V17    -0.4043490595746493
#>     Attrib V18    -0.2980665412219208
#>     Attrib V19    -0.7662568864481546
#>     Attrib V2    0.33825824189385156
#>     Attrib V20    -0.8839896729131221
#>     Attrib V21    -0.36370999998875503
#>     Attrib V22    0.14491615211586797
#>     Attrib V23    0.47158922047983265
#>     Attrib V24    0.11339955555412945
#>     Attrib V25    0.5153508406437604
#>     Attrib V26    0.8516358770437842
#>     Attrib V27    1.3149689252242893
#>     Attrib V28    1.4255577233912557
#>     Attrib V29    0.8139027452124076
#>     Attrib V3    0.1340239559303455
#>     Attrib V30    0.582472468323025
#>     Attrib V31    -1.3086924444016599
#>     Attrib V32    -0.49763493636179645
#>     Attrib V33    -0.2662633728747681
#>     Attrib V34    -0.5672376819711525
#>     Attrib V35    -0.6639509085557417
#>     Attrib V36    -0.5131803635305431
#>     Attrib V37    0.3167600858529176
#>     Attrib V38    0.30939617998651514
#>     Attrib V39    0.33428546540429144
#>     Attrib V4    0.6780491447971981
#>     Attrib V40    0.192477215304888
#>     Attrib V41    0.6785092351956126
#>     Attrib V42    0.12809320376551048
#>     Attrib V43    0.01185633564142676
#>     Attrib V44    0.07268289956090225
#>     Attrib V45    0.38147614768371035
#>     Attrib V46    0.3079065729482379
#>     Attrib V47    0.1274795691059883
#>     Attrib V48    0.7664064297957582
#>     Attrib V49    1.0009016490444291
#>     Attrib V5    -0.09024950975930544
#>     Attrib V50    -0.23751165529865367
#>     Attrib V51    0.3356949590140889
#>     Attrib V52    0.8023818093728617
#>     Attrib V53    0.3723756092607715
#>     Attrib V54    0.49317565738280944
#>     Attrib V55    -1.1960649780191344
#>     Attrib V56    -0.5594734933385277
#>     Attrib V57    0.0837353661766716
#>     Attrib V58    -0.38689084761234266
#>     Attrib V59    0.5038078289812159
#>     Attrib V6    0.20325754758548548
#>     Attrib V60    0.9285392137782876
#>     Attrib V7    0.04058730905967826
#>     Attrib V8    -0.7387321139237525
#>     Attrib V9    0.615558258912487
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.17562897498544155
#>     Attrib V1    0.3576322661992762
#>     Attrib V10    0.09018916066072778
#>     Attrib V11    0.08285064696017794
#>     Attrib V12    0.08961749967179071
#>     Attrib V13    -0.13252294005558735
#>     Attrib V14    0.06692351307999578
#>     Attrib V15    0.16089529720344167
#>     Attrib V16    -0.09655749784296352
#>     Attrib V17    -0.09149268397116268
#>     Attrib V18    -0.0868785792666602
#>     Attrib V19    -0.09438682828970342
#>     Attrib V2    -0.03123607853202494
#>     Attrib V20    0.10221684450433517
#>     Attrib V21    0.08884514857831786
#>     Attrib V22    0.009289957576867815
#>     Attrib V23    0.17875223799970824
#>     Attrib V24    0.09393241020845793
#>     Attrib V25    0.04089482441669405
#>     Attrib V26    -0.05039220665613457
#>     Attrib V27    -0.1558828166948332
#>     Attrib V28    0.026747145396042785
#>     Attrib V29    0.19587788544380355
#>     Attrib V3    -0.0125546009638136
#>     Attrib V30    0.17011997043082056
#>     Attrib V31    -0.5443320756450364
#>     Attrib V32    -0.06629930441539271
#>     Attrib V33    0.3501958867550249
#>     Attrib V34    0.2588892976384676
#>     Attrib V35    0.10222846128844225
#>     Attrib V36    -0.2101287644846809
#>     Attrib V37    -0.12820125899359563
#>     Attrib V38    0.07022134786970037
#>     Attrib V39    0.12839003524908302
#>     Attrib V4    0.2877671411666395
#>     Attrib V40    -0.15890622891278958
#>     Attrib V41    -0.054168713005343934
#>     Attrib V42    0.058730814141353005
#>     Attrib V43    0.10490104256304306
#>     Attrib V44    -0.028835640719149867
#>     Attrib V45    -0.04450443666242407
#>     Attrib V46    -0.020952230903762498
#>     Attrib V47    -0.13806032687843808
#>     Attrib V48    0.2560920876156958
#>     Attrib V49    0.26840606739492684
#>     Attrib V5    -0.18989268515569435
#>     Attrib V50    -0.3690471810348348
#>     Attrib V51    0.05583347751216574
#>     Attrib V52    0.1249765780030973
#>     Attrib V53    0.1674564650213393
#>     Attrib V54    0.22954253870460536
#>     Attrib V55    -0.15431677565840615
#>     Attrib V56    -0.010624709242276093
#>     Attrib V57    -0.0747043160878412
#>     Attrib V58    0.19775917362658216
#>     Attrib V59    0.49101438770252576
#>     Attrib V6    -0.09272694947301667
#>     Attrib V60    0.3936134096451848
#>     Attrib V7    -0.16573711356404905
#>     Attrib V8    -0.1611823979924047
#>     Attrib V9    0.2907810855443066
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.41765326775915257
#>     Attrib V1    0.6710194138768693
#>     Attrib V10    0.5854365873836025
#>     Attrib V11    1.1979643098723554
#>     Attrib V12    1.3157627239232572
#>     Attrib V13    0.14493353045484197
#>     Attrib V14    -0.33988688664202626
#>     Attrib V15    -0.5541505814038183
#>     Attrib V16    -0.7805981072681561
#>     Attrib V17    -0.15284872655881873
#>     Attrib V18    -0.019761917909841227
#>     Attrib V19    -0.5286842727860656
#>     Attrib V2    0.48959202939012975
#>     Attrib V20    -0.6400718680397738
#>     Attrib V21    -0.1450449539784355
#>     Attrib V22    0.37119626943716616
#>     Attrib V23    0.7145326674104698
#>     Attrib V24    0.17405091918922358
#>     Attrib V25    0.5149807790354682
#>     Attrib V26    0.9585540635672901
#>     Attrib V27    1.3418958584417002
#>     Attrib V28    1.4331646279338925
#>     Attrib V29    1.0000506578641897
#>     Attrib V3    0.16040551835145983
#>     Attrib V30    0.9283476493605253
#>     Attrib V31    -1.1565728235534734
#>     Attrib V32    -0.4187469202475172
#>     Attrib V33    -0.337930063448281
#>     Attrib V34    -0.607597581280834
#>     Attrib V35    -0.7873032607628101
#>     Attrib V36    -0.6775276383466976
#>     Attrib V37    0.11325032766189574
#>     Attrib V38    0.25500091429494026
#>     Attrib V39    0.47688402223315723
#>     Attrib V4    0.5923774930757578
#>     Attrib V40    0.2017389689851466
#>     Attrib V41    0.47241850062663127
#>     Attrib V42    0.08620374718681695
#>     Attrib V43    0.2609724293072451
#>     Attrib V44    0.3301495160689786
#>     Attrib V45    0.5825620088383865
#>     Attrib V46    0.42467051322841765
#>     Attrib V47    0.24472854700212368
#>     Attrib V48    0.7217679970451597
#>     Attrib V49    1.181946333092355
#>     Attrib V5    -0.33087570405390415
#>     Attrib V50    -0.14625080778627475
#>     Attrib V51    0.46371935858299373
#>     Attrib V52    1.0737650259644749
#>     Attrib V53    0.5746207980827674
#>     Attrib V54    0.29786878900207525
#>     Attrib V55    -0.9301188585724858
#>     Attrib V56    -0.41972026620443964
#>     Attrib V57    -0.30159597162221957
#>     Attrib V58    -0.3094892136467992
#>     Attrib V59    -0.12207602829619534
#>     Attrib V6    0.02225873279301773
#>     Attrib V60    0.14454682153847048
#>     Attrib V7    -0.21422695417354295
#>     Attrib V8    -0.46718178548050665
#>     Attrib V9    0.7165564910881492
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.22496750662152432
#>     Attrib V1    -0.47362449077002894
#>     Attrib V10    -0.1799959959743572
#>     Attrib V11    -0.134692960140826
#>     Attrib V12    -0.07172297405172591
#>     Attrib V13    0.41841028281612697
#>     Attrib V14    -0.1570950094241962
#>     Attrib V15    -0.33163702999992745
#>     Attrib V16    0.23587742310436952
#>     Attrib V17    -0.05820669379854827
#>     Attrib V18    -0.09210620348204265
#>     Attrib V19    -0.08592881768606857
#>     Attrib V2    0.1374366930771208
#>     Attrib V20    -0.5471009508575511
#>     Attrib V21    -0.31223686647597176
#>     Attrib V22    -0.2358277776512912
#>     Attrib V23    -0.5643311180487861
#>     Attrib V24    -0.22269939865412067
#>     Attrib V25    0.026497063811715398
#>     Attrib V26    0.2956563608331843
#>     Attrib V27    0.5287923097229544
#>     Attrib V28    0.16038964079796497
#>     Attrib V29    -0.43875152673628304
#>     Attrib V3    0.02456669784050046
#>     Attrib V30    -0.3586023823622812
#>     Attrib V31    1.1418866811087527
#>     Attrib V32    0.10331254824029072
#>     Attrib V33    -0.7263628635958274
#>     Attrib V34    -0.5001373538183717
#>     Attrib V35    -0.08246455879876012
#>     Attrib V36    0.6426183317475579
#>     Attrib V37    0.34562642993981085
#>     Attrib V38    -0.010342158488953212
#>     Attrib V39    -0.3481251798664905
#>     Attrib V4    -0.38501555111944175
#>     Attrib V40    0.1813342806650184
#>     Attrib V41    -0.03381922341989131
#>     Attrib V42    -0.47096923367028204
#>     Attrib V43    -0.39220549261802057
#>     Attrib V44    0.051041937640641584
#>     Attrib V45    0.1255010895352131
#>     Attrib V46    0.0991057003174271
#>     Attrib V47    0.29788168106273705
#>     Attrib V48    -0.4278014050341639
#>     Attrib V49    -0.5893164125149719
#>     Attrib V5    0.4866977605351632
#>     Attrib V50    0.7641042408540242
#>     Attrib V51    -0.18020472662745637
#>     Attrib V52    -0.36271747350800637
#>     Attrib V53    -0.28096320325169033
#>     Attrib V54    -0.20916841934162897
#>     Attrib V55    0.3197374325520011
#>     Attrib V56    -0.1259334629786548
#>     Attrib V57    0.40306886601897074
#>     Attrib V58    -0.43662748122444905
#>     Attrib V59    -0.734455464138414
#>     Attrib V6    0.20169534459816732
#>     Attrib V60    -0.3334590584861921
#>     Attrib V7    0.48806162328077446
#>     Attrib V8    0.056366190082324935
#>     Attrib V9    -0.6957063375037387
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.010845683537358814
#>     Attrib V1    0.3616788447973105
#>     Attrib V10    -0.008474452338319737
#>     Attrib V11    -0.10388693937725288
#>     Attrib V12    -0.0678804150217867
#>     Attrib V13    -0.2818681184806547
#>     Attrib V14    0.25807522809392935
#>     Attrib V15    0.36495007632808135
#>     Attrib V16    0.0038963710320354646
#>     Attrib V17    0.07824794022356288
#>     Attrib V18    0.12229155180893275
#>     Attrib V19    0.08866823914062298
#>     Attrib V2    -0.0877274545059033
#>     Attrib V20    0.464997295921012
#>     Attrib V21    0.2377669337948242
#>     Attrib V22    0.04247328040490417
#>     Attrib V23    0.21189290957251997
#>     Attrib V24    0.061024052171097354
#>     Attrib V25    -0.09398641157864414
#>     Attrib V26    -0.35052285727915244
#>     Attrib V27    -0.5395894590036717
#>     Attrib V28    -0.34041149104065843
#>     Attrib V29    0.052415271822546586
#>     Attrib V3    -0.009539555687022935
#>     Attrib V30    0.08521484197983797
#>     Attrib V31    -0.6308749258728075
#>     Attrib V32    -0.13512147013820489
#>     Attrib V33    0.4100401557596912
#>     Attrib V34    0.4375758129315193
#>     Attrib V35    0.2418570588596753
#>     Attrib V36    -0.26863019318128456
#>     Attrib V37    -0.23276159875106633
#>     Attrib V38    0.014444472633884204
#>     Attrib V39    0.11799016645578436
#>     Attrib V4    0.23511666497259182
#>     Attrib V40    -0.18347366029777176
#>     Attrib V41    -0.14895140316804772
#>     Attrib V42    0.20916100686391378
#>     Attrib V43    0.201748704037601
#>     Attrib V44    -0.005568840605418438
#>     Attrib V45    -0.08836653962241642
#>     Attrib V46    -0.1215350243825276
#>     Attrib V47    -0.20554512438944078
#>     Attrib V48    0.17892824441089175
#>     Attrib V49    0.1712525774778181
#>     Attrib V5    -0.17258049456337063
#>     Attrib V50    -0.3609959156467982
#>     Attrib V51    0.16917224232645706
#>     Attrib V52    0.1096797946441141
#>     Attrib V53    0.26679640077025
#>     Attrib V54    0.3504286642893714
#>     Attrib V55    0.023236608986979466
#>     Attrib V56    0.19971767261910067
#>     Attrib V57    -0.12126785507359943
#>     Attrib V58    0.4094510107552884
#>     Attrib V59    0.5500951728857246
#>     Attrib V6    -0.024951985450003752
#>     Attrib V60    0.3615606535827005
#>     Attrib V7    -0.23761755795720832
#>     Attrib V8    -0.01638597785123188
#>     Attrib V9    0.3113505109120392
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.25172183311690355
#>     Attrib V1    0.46612434563834193
#>     Attrib V10    0.06909761615442228
#>     Attrib V11    0.09659181275432793
#>     Attrib V12    0.013066015088797999
#>     Attrib V13    -0.34088580490774884
#>     Attrib V14    0.22949882691180323
#>     Attrib V15    0.2899848268470879
#>     Attrib V16    -0.1623353875710676
#>     Attrib V17    -0.008896557804711932
#>     Attrib V18    0.07009398953957902
#>     Attrib V19    0.06602042836707088
#>     Attrib V2    -0.06989678390091746
#>     Attrib V20    0.39881590285046103
#>     Attrib V21    0.24655799299389286
#>     Attrib V22    0.1560577123357798
#>     Attrib V23    0.4334134109210609
#>     Attrib V24    0.12574381677416854
#>     Attrib V25    -0.0448541492306152
#>     Attrib V26    -0.2469790148423039
#>     Attrib V27    -0.4677085436589212
#>     Attrib V28    -0.22408332994371952
#>     Attrib V29    0.3236622892600626
#>     Attrib V3    -0.07586408326651269
#>     Attrib V30    0.29533565589885363
#>     Attrib V31    -0.9264827236215418
#>     Attrib V32    -0.16266957271027874
#>     Attrib V33    0.6404989098264554
#>     Attrib V34    0.4700303867679007
#>     Attrib V35    0.12599019260393696
#>     Attrib V36    -0.48631546074431686
#>     Attrib V37    -0.3042911878831194
#>     Attrib V38    9.998602880510997E-4
#>     Attrib V39    0.20920499972922899
#>     Attrib V4    0.35518913154741705
#>     Attrib V40    -0.1486359915012188
#>     Attrib V41    -0.03837117885388419
#>     Attrib V42    0.3285161078994767
#>     Attrib V43    0.33214497202419896
#>     Attrib V44    -0.10689462942615804
#>     Attrib V45    -0.14241859960581119
#>     Attrib V46    -0.10698935893000693
#>     Attrib V47    -0.3259288251812104
#>     Attrib V48    0.3217069676340215
#>     Attrib V49    0.3514195508734008
#>     Attrib V5    -0.356101759180322
#>     Attrib V50    -0.640893745389981
#>     Attrib V51    0.1384441578940494
#>     Attrib V52    0.27654308523425747
#>     Attrib V53    0.3209240434065128
#>     Attrib V54    0.25415666341030574
#>     Attrib V55    -0.2526775696161067
#>     Attrib V56    0.12288156346652412
#>     Attrib V57    -0.26170804348456367
#>     Attrib V58    0.43565119735344976
#>     Attrib V59    0.716453786018409
#>     Attrib V6    -0.14950939927597268
#>     Attrib V60    0.3619665647988673
#>     Attrib V7    -0.35572041910054164
#>     Attrib V8    -0.06163642970193079
#>     Attrib V9    0.5312165954076196
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.007784020497997627
#>     Attrib V1    0.34238504043961837
#>     Attrib V10    -0.021756078173278588
#>     Attrib V11    -0.03878011423029046
#>     Attrib V12    0.020235101862708115
#>     Attrib V13    -0.05263924724948792
#>     Attrib V14    0.22275038564609248
#>     Attrib V15    0.2490670472900289
#>     Attrib V16    -0.07334378866786566
#>     Attrib V17    0.004354118869091555
#>     Attrib V18    0.052335756456164444
#>     Attrib V19    -5.596668604132183E-4
#>     Attrib V2    -0.033740188117212154
#>     Attrib V20    0.2580466220624588
#>     Attrib V21    0.14626117904348468
#>     Attrib V22    -0.007626566238851712
#>     Attrib V23    0.1653729235239367
#>     Attrib V24    0.07573985968943167
#>     Attrib V25    0.024449587584990735
#>     Attrib V26    -0.20161077902830682
#>     Attrib V27    -0.25787313693566544
#>     Attrib V28    -0.21657892393531394
#>     Attrib V29    0.052288735816656474
#>     Attrib V3    0.08687333421759039
#>     Attrib V30    0.033355787895570546
#>     Attrib V31    -0.5172291072355842
#>     Attrib V32    -0.08731655666952262
#>     Attrib V33    0.267435652734314
#>     Attrib V34    0.30712060762552035
#>     Attrib V35    0.13907115960837643
#>     Attrib V36    -0.2126071134891675
#>     Attrib V37    -0.12932930173012228
#>     Attrib V38    -0.0042570111432376125
#>     Attrib V39    0.17670518189450665
#>     Attrib V4    0.23607476884762074
#>     Attrib V40    -0.07239038871055789
#>     Attrib V41    -0.04168088872051943
#>     Attrib V42    0.14603910426614997
#>     Attrib V43    0.0952782857811012
#>     Attrib V44    -0.076128502382402
#>     Attrib V45    -0.160514130296299
#>     Attrib V46    -0.06352326919468608
#>     Attrib V47    -0.14685084665030515
#>     Attrib V48    0.10346034590734338
#>     Attrib V49    0.16605122450751644
#>     Attrib V5    -0.09797730744380487
#>     Attrib V50    -0.290059472314362
#>     Attrib V51    0.05668557710240868
#>     Attrib V52    0.0675885161589979
#>     Attrib V53    0.23008771863190236
#>     Attrib V54    0.25274525640481516
#>     Attrib V55    -0.004491914229961854
#>     Attrib V56    0.13571787522261403
#>     Attrib V57    -0.062351158488746825
#>     Attrib V58    0.28467445808283887
#>     Attrib V59    0.5554938731216955
#>     Attrib V6    0.005705086644524425
#>     Attrib V60    0.4334615087819944
#>     Attrib V7    -0.076502117009278
#>     Attrib V8    -0.09807516338404752
#>     Attrib V9    0.20800878325648067
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.09300965056798335
#>     Attrib V1    0.4965517099908791
#>     Attrib V10    -0.0022298900523843933
#>     Attrib V11    -0.09247068460266215
#>     Attrib V12    -0.08387350916298153
#>     Attrib V13    -0.26555010944338814
#>     Attrib V14    0.2913234242610835
#>     Attrib V15    0.48731008056242886
#>     Attrib V16    -0.04244470824351029
#>     Attrib V17    0.017179537218424995
#>     Attrib V18    0.08706190565291883
#>     Attrib V19    0.045774630202791405
#>     Attrib V2    -0.055085097891476864
#>     Attrib V20    0.40646968797282323
#>     Attrib V21    0.242688683356499
#>     Attrib V22    0.05146016933898499
#>     Attrib V23    0.22988871111107148
#>     Attrib V24    0.03171405334422185
#>     Attrib V25    -0.11446076842119507
#>     Attrib V26    -0.29397968699224936
#>     Attrib V27    -0.5845572878107836
#>     Attrib V28    -0.4359370334671469
#>     Attrib V29    0.020656208573081987
#>     Attrib V3    -0.03140593175938866
#>     Attrib V30    0.07687008818846922
#>     Attrib V31    -0.6488825962200561
#>     Attrib V32    -0.17990102656076798
#>     Attrib V33    0.4318337831798346
#>     Attrib V34    0.3770661013472479
#>     Attrib V35    0.22393150665992462
#>     Attrib V36    -0.35018426380283196
#>     Attrib V37    -0.2023552457427031
#>     Attrib V38    -0.05756378201656399
#>     Attrib V39    0.15079330706283714
#>     Attrib V4    0.26127100110669776
#>     Attrib V40    -0.19121182951937854
#>     Attrib V41    -0.13840143585077422
#>     Attrib V42    0.1780261333272026
#>     Attrib V43    0.19442589330954974
#>     Attrib V44    -0.03006611978104383
#>     Attrib V45    -0.22472056315553973
#>     Attrib V46    -0.12673575420241062
#>     Attrib V47    -0.29027155971787766
#>     Attrib V48    0.20205943256238798
#>     Attrib V49    0.23046031905612263
#>     Attrib V5    -0.24898354615123972
#>     Attrib V50    -0.42702927651314043
#>     Attrib V51    0.06904932623217307
#>     Attrib V52    0.09770046113549777
#>     Attrib V53    0.29437020826564614
#>     Attrib V54    0.4440753722660808
#>     Attrib V55    0.043210368172873784
#>     Attrib V56    0.21907871456834382
#>     Attrib V57    -0.12026998941734272
#>     Attrib V58    0.4660753225681355
#>     Attrib V59    0.708654247299969
#>     Attrib V6    -0.043549801597626746
#>     Attrib V60    0.5131915758980743
#>     Attrib V7    -0.16710599734284798
#>     Attrib V8    -0.08910558543822342
#>     Attrib V9    0.3158049459791849
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    0.12934708059587208
#>     Attrib V1    -0.710647681066034
#>     Attrib V10    -0.25081909934179586
#>     Attrib V11    -0.2651893027097996
#>     Attrib V12    0.1772029017439716
#>     Attrib V13    0.4860525695044059
#>     Attrib V14    -0.5076970136177875
#>     Attrib V15    -0.516129250723505
#>     Attrib V16    0.15519720306338286
#>     Attrib V17    -0.15607586832493023
#>     Attrib V18    -0.3513433256000965
#>     Attrib V19    -0.4641024242359126
#>     Attrib V2    -0.05183429959130242
#>     Attrib V20    -1.2488403853603183
#>     Attrib V21    -0.718314296237689
#>     Attrib V22    -0.2797189961144006
#>     Attrib V23    -0.8990046687867526
#>     Attrib V24    -0.33371012568238667
#>     Attrib V25    0.17658344850624946
#>     Attrib V26    0.5176016413547568
#>     Attrib V27    0.9551113025967471
#>     Attrib V28    0.5128810645006499
#>     Attrib V29    -0.6002403053098567
#>     Attrib V3    -0.14163310422239575
#>     Attrib V30    -0.6215842302368373
#>     Attrib V31    1.326240825491315
#>     Attrib V32    0.18514829985285158
#>     Attrib V33    -1.1149978245986762
#>     Attrib V34    -0.7690855883866055
#>     Attrib V35    -0.19430334322043524
#>     Attrib V36    1.0033124166990588
#>     Attrib V37    0.7027387910781407
#>     Attrib V38    0.08132373623567932
#>     Attrib V39    -0.3869877725199976
#>     Attrib V4    -0.44555449994460666
#>     Attrib V40    0.1999051931923226
#>     Attrib V41    0.06503915447691047
#>     Attrib V42    -0.8382872157894875
#>     Attrib V43    -0.7196211260930742
#>     Attrib V44    -0.11894558680821489
#>     Attrib V45    0.17329110596239242
#>     Attrib V46    0.2304475941223229
#>     Attrib V47    0.4135809697560018
#>     Attrib V48    -0.3771768909225761
#>     Attrib V49    -0.6546367971336262
#>     Attrib V5    0.7400061571003251
#>     Attrib V50    0.9512525158055688
#>     Attrib V51    -0.2787603857966995
#>     Attrib V52    -0.6928420126414809
#>     Attrib V53    -0.6418928489558005
#>     Attrib V54    -0.3621837608714808
#>     Attrib V55    0.04254731725148984
#>     Attrib V56    -0.4071421367744054
#>     Attrib V57    0.777172931199334
#>     Attrib V58    -0.8600224635059298
#>     Attrib V59    -0.6915896599338233
#>     Attrib V6    0.4438236638780275
#>     Attrib V60    0.08634236053758196
#>     Attrib V7    0.8983214298272424
#>     Attrib V8    -0.2212990594857886
#>     Attrib V9    -0.9928697820362427
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.20346507132134442
#>     Attrib V1    -0.0995840630401228
#>     Attrib V10    -0.0029719655086490166
#>     Attrib V11    -0.05204548331153552
#>     Attrib V12    -0.08476491292411674
#>     Attrib V13    0.05306895800569097
#>     Attrib V14    -0.023524424463141465
#>     Attrib V15    -0.06770799012621748
#>     Attrib V16    0.10835743848551416
#>     Attrib V17    0.10804718953737832
#>     Attrib V18    0.08811652590300076
#>     Attrib V19    0.02104390827512441
#>     Attrib V2    0.02537120045267436
#>     Attrib V20    -0.15447099768747904
#>     Attrib V21    -0.13374014077805907
#>     Attrib V22    -0.09205151347594479
#>     Attrib V23    -0.1517817496776508
#>     Attrib V24    -0.029847914963272253
#>     Attrib V25    -0.020671235394878282
#>     Attrib V26    -0.08330060219889585
#>     Attrib V27    -0.10648287207182151
#>     Attrib V28    -0.09812665327720645
#>     Attrib V29    -0.09241202388516985
#>     Attrib V3    0.10128923490457863
#>     Attrib V30    -0.07057362488453783
#>     Attrib V31    0.21846640775534226
#>     Attrib V32    0.08215021905255322
#>     Attrib V33    -0.0851555960976562
#>     Attrib V34    -0.02718375821806888
#>     Attrib V35    0.005349553466523271
#>     Attrib V36    0.16328830551513654
#>     Attrib V37    0.13677026924347394
#>     Attrib V38    0.04507192346683224
#>     Attrib V39    0.03940814741175234
#>     Attrib V4    -0.012175155677924444
#>     Attrib V40    0.10682384899360862
#>     Attrib V41    0.08657892240178683
#>     Attrib V42    0.07633946813400165
#>     Attrib V43    0.009288302365451383
#>     Attrib V44    0.04783179221858254
#>     Attrib V45    0.02039341193481715
#>     Attrib V46    0.06589174025717481
#>     Attrib V47    0.08694392416465985
#>     Attrib V48    -0.08867666650361915
#>     Attrib V49    -0.1350341023996364
#>     Attrib V5    0.15323687262987667
#>     Attrib V50    0.18588559672722238
#>     Attrib V51    0.07522720303230514
#>     Attrib V52    0.028871570975260833
#>     Attrib V53    0.047637225609393534
#>     Attrib V54    -0.09157860897258423
#>     Attrib V55    0.13852227792664878
#>     Attrib V56    0.07397115007602752
#>     Attrib V57    0.14775652655400826
#>     Attrib V58    0.06544565997264548
#>     Attrib V59    -0.1411547597912766
#>     Attrib V6    0.10802790260522671
#>     Attrib V60    -0.057842247102265536
#>     Attrib V7    0.07149859701167495
#>     Attrib V8    0.06795145603721203
#>     Attrib V9    -0.028724085910065998
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.017427261352675274
#>     Attrib V1    0.2935488085435383
#>     Attrib V10    0.08449810767856339
#>     Attrib V11    0.04828641581293974
#>     Attrib V12    0.015572560061002919
#>     Attrib V13    -0.07732213775221473
#>     Attrib V14    0.13615746985976115
#>     Attrib V15    0.23224224733323678
#>     Attrib V16    -0.018275595898768968
#>     Attrib V17    -0.031052646260981673
#>     Attrib V18    -0.02745886554590648
#>     Attrib V19    -0.03909919496087865
#>     Attrib V2    0.10356874797595458
#>     Attrib V20    0.06169392319389095
#>     Attrib V21    0.003133256762946722
#>     Attrib V22    0.0038306144312005644
#>     Attrib V23    0.007816770658899005
#>     Attrib V24    0.005882417228153651
#>     Attrib V25    -0.06799163727258797
#>     Attrib V26    -0.1333338507309132
#>     Attrib V27    -0.13242289998993684
#>     Attrib V28    -0.07173449253445277
#>     Attrib V29    -0.005812556235904051
#>     Attrib V3    0.05985250091767255
#>     Attrib V30    0.03132535116049265
#>     Attrib V31    -0.23545010086114368
#>     Attrib V32    -0.07401027775802607
#>     Attrib V33    0.189149523604727
#>     Attrib V34    0.1292192025745293
#>     Attrib V35    0.1537638978920782
#>     Attrib V36    -0.11187546577220302
#>     Attrib V37    -0.08257932562908628
#>     Attrib V38    0.07001614326904217
#>     Attrib V39    0.09613477272982195
#>     Attrib V4    0.2026175031053752
#>     Attrib V40    -0.11837462701994385
#>     Attrib V41    -0.030513165504035985
#>     Attrib V42    0.024667074402978714
#>     Attrib V43    0.10487920023390938
#>     Attrib V44    0.00994264150803664
#>     Attrib V45    0.00432638132723582
#>     Attrib V46    -0.03337692631617948
#>     Attrib V47    -0.10099628008072221
#>     Attrib V48    0.16091341598036846
#>     Attrib V49    0.09419918478687238
#>     Attrib V5    -0.026232307685758374
#>     Attrib V50    -0.0962197444417458
#>     Attrib V51    0.09580892697379288
#>     Attrib V52    0.08042758991330429
#>     Attrib V53    0.11721940293998695
#>     Attrib V54    0.1778148653574762
#>     Attrib V55    0.09612829919122594
#>     Attrib V56    0.11923642561847554
#>     Attrib V57    0.060777712407026306
#>     Attrib V58    0.17402911564131285
#>     Attrib V59    0.289109132368139
#>     Attrib V6    0.019739080835984624
#>     Attrib V60    0.30067366083534813
#>     Attrib V7    -0.0716286129572515
#>     Attrib V8    -0.02114356865050275
#>     Attrib V9    0.15993397527457126
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.22645498541771134
#>     Attrib V1    -0.01628927887589995
#>     Attrib V10    0.02784016154901998
#>     Attrib V11    -0.010571090199578222
#>     Attrib V12    -0.051486970659504146
#>     Attrib V13    -0.0016161298055429297
#>     Attrib V14    0.027737421607829937
#>     Attrib V15    -0.049798430668164244
#>     Attrib V16    0.02198208347153198
#>     Attrib V17    -0.005135313181058478
#>     Attrib V18    0.050580393710236565
#>     Attrib V19    -0.08104114837968548
#>     Attrib V2    0.08650017643915409
#>     Attrib V20    -0.0856501999892298
#>     Attrib V21    -0.06468832577065828
#>     Attrib V22    -0.08980082753334484
#>     Attrib V23    -0.094407252693258
#>     Attrib V24    -0.08556376852563409
#>     Attrib V25    -0.028237812317998122
#>     Attrib V26    -0.032886731098797785
#>     Attrib V27    -0.04866563584113405
#>     Attrib V28    -0.07411937746145184
#>     Attrib V29    -0.05535965080976487
#>     Attrib V3    0.14787772275500957
#>     Attrib V30    -0.05024424641822219
#>     Attrib V31    0.10999975643643174
#>     Attrib V32    0.037772312473269565
#>     Attrib V33    -0.024379171497196962
#>     Attrib V34    0.027289475819133196
#>     Attrib V35    0.026493132699178423
#>     Attrib V36    0.16950913175810509
#>     Attrib V37    0.05655906002316867
#>     Attrib V38    0.018527611030294534
#>     Attrib V39    0.0937380834222331
#>     Attrib V4    0.012057132770604006
#>     Attrib V40    0.08647338818058753
#>     Attrib V41    0.018536282224578933
#>     Attrib V42    0.028613501698381744
#>     Attrib V43    0.0304594241762346
#>     Attrib V44    0.11431238206415881
#>     Attrib V45    -0.017619884133586606
#>     Attrib V46    0.03741942522677977
#>     Attrib V47    0.1080924277798612
#>     Attrib V48    -6.10495197096152E-4
#>     Attrib V49    -0.0029563186793573754
#>     Attrib V5    0.11339047835795155
#>     Attrib V50    0.06284193942914033
#>     Attrib V51    0.10394445127696224
#>     Attrib V52    0.027909211652523577
#>     Attrib V53    0.04534005022556394
#>     Attrib V54    -0.04402247028434595
#>     Attrib V55    0.13702488506045724
#>     Attrib V56    0.11083177088837957
#>     Attrib V57    0.06297763377554812
#>     Attrib V58    0.0672434220970991
#>     Attrib V59    0.006335247259279585
#>     Attrib V6    0.06667909356392851
#>     Attrib V60    0.05699243735936051
#>     Attrib V7    0.09137674118475347
#>     Attrib V8    0.10501147109116903
#>     Attrib V9    0.008711143414454784
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.5100831985789426
#>     Attrib V1    0.738419302189248
#>     Attrib V10    0.4375613707297005
#>     Attrib V11    0.730331710857375
#>     Attrib V12    1.0497051657981415
#>     Attrib V13    0.050930602366545646
#>     Attrib V14    -0.2298976469527085
#>     Attrib V15    -0.2720368164448089
#>     Attrib V16    -0.7085665547105434
#>     Attrib V17    -0.4551974180715359
#>     Attrib V18    -0.414976403343033
#>     Attrib V19    -0.6712867575024403
#>     Attrib V2    0.21545578700595666
#>     Attrib V20    -0.6176581712978633
#>     Attrib V21    -0.3265294773892787
#>     Attrib V22    0.021043003529575777
#>     Attrib V23    0.21768411610522045
#>     Attrib V24    0.02278658160107712
#>     Attrib V25    0.458604803168999
#>     Attrib V26    0.5623694594440769
#>     Attrib V27    0.8580073979701816
#>     Attrib V28    1.0502789743177294
#>     Attrib V29    0.5159489694046825
#>     Attrib V3    -0.02927253382083291
#>     Attrib V30    0.4424045390858072
#>     Attrib V31    -0.9931852946654351
#>     Attrib V32    -0.23315511595907246
#>     Attrib V33    0.15273028091806987
#>     Attrib V34    -0.11303279854360024
#>     Attrib V35    -0.14707167201059268
#>     Attrib V36    -0.27761485090211346
#>     Attrib V37    0.1612855570217803
#>     Attrib V38    0.30544624907326756
#>     Attrib V39    0.3433261018805206
#>     Attrib V4    0.6034523974362102
#>     Attrib V40    0.04327852496449377
#>     Attrib V41    0.3171942414662565
#>     Attrib V42    0.0288514645132105
#>     Attrib V43    -0.10493587453454255
#>     Attrib V44    -0.1876277446637453
#>     Attrib V45    0.2679335086253466
#>     Attrib V46    0.2201438429727071
#>     Attrib V47    1.5199579530588816E-4
#>     Attrib V48    0.620051805805026
#>     Attrib V49    0.8214472206884107
#>     Attrib V5    -0.12390972791104139
#>     Attrib V50    -0.3273776381194813
#>     Attrib V51    0.21437173537139534
#>     Attrib V52    0.5247929843310691
#>     Attrib V53    0.08580461068273694
#>     Attrib V54    0.34871191184334943
#>     Attrib V55    -0.7197037951921792
#>     Attrib V56    -0.513077364249049
#>     Attrib V57    -0.0884377673163711
#>     Attrib V58    -0.1162329024040881
#>     Attrib V59    0.4841915274976534
#>     Attrib V6    0.040041874328175665
#>     Attrib V60    0.7991972355772934
#>     Attrib V7    -1.021798483272911E-4
#>     Attrib V8    -0.4699035922055328
#>     Attrib V9    0.5768840325327181
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.43045481885230147
#>     Attrib V1    0.6929884045529011
#>     Attrib V10    0.361984952356841
#>     Attrib V11    0.610291033186703
#>     Attrib V12    0.8714978953146427
#>     Attrib V13    -0.19019476984435935
#>     Attrib V14    -0.2529322541378783
#>     Attrib V15    -0.35598829146849525
#>     Attrib V16    -0.6650671759304767
#>     Attrib V17    -0.25282709790958807
#>     Attrib V18    -0.13797027856908264
#>     Attrib V19    -0.4199274897732537
#>     Attrib V2    0.04820846424929478
#>     Attrib V20    -0.27834010537531234
#>     Attrib V21    -0.1059947200334893
#>     Attrib V22    0.14612404608593174
#>     Attrib V23    0.563479827769106
#>     Attrib V24    0.2592811686459591
#>     Attrib V25    0.49768117500984205
#>     Attrib V26    0.4539405379044639
#>     Attrib V27    0.5576358379419878
#>     Attrib V28    0.7546131603029618
#>     Attrib V29    0.6401836473418464
#>     Attrib V3    -0.060575183348694765
#>     Attrib V30    0.6653238432533842
#>     Attrib V31    -0.8251976050794521
#>     Attrib V32    -0.016915753032287303
#>     Attrib V33    0.5555503839649408
#>     Attrib V34    0.26701288029184733
#>     Attrib V35    -0.05940044346112643
#>     Attrib V36    -0.38064904354932694
#>     Attrib V37    -0.08048171027782282
#>     Attrib V38    0.16197788043503883
#>     Attrib V39    0.3611162313411206
#>     Attrib V4    0.4916047727463965
#>     Attrib V40    0.08967126635647055
#>     Attrib V41    0.3883513054003156
#>     Attrib V42    0.20130587631821661
#>     Attrib V43    0.11186158034474207
#>     Attrib V44    -0.1940425721552064
#>     Attrib V45    -0.047948468566489266
#>     Attrib V46    0.06787594793102952
#>     Attrib V47    -0.0842092115958008
#>     Attrib V48    0.5904175933119747
#>     Attrib V49    0.7251651872031399
#>     Attrib V5    -0.18175492099386814
#>     Attrib V50    -0.45168101600728855
#>     Attrib V51    0.24126343646041956
#>     Attrib V52    0.45748783578142643
#>     Attrib V53    0.033294052644683
#>     Attrib V54    0.19557848380309864
#>     Attrib V55    -0.7011480415698922
#>     Attrib V56    -0.39073143080587586
#>     Attrib V57    -0.2546758140579714
#>     Attrib V58    -0.0928620191425144
#>     Attrib V59    0.5408804430923158
#>     Attrib V6    -0.07450227678620443
#>     Attrib V60    0.6262276732944905
#>     Attrib V7    -0.3499456398296101
#>     Attrib V8    -0.41567071324813826
#>     Attrib V9    0.675801783417325
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.1937122350727062
#>     Attrib V1    -0.5916238036239493
#>     Attrib V10    -0.25353310967561105
#>     Attrib V11    -0.2941618445540177
#>     Attrib V12    0.09441328425042916
#>     Attrib V13    0.42515702490779933
#>     Attrib V14    -0.42038211322179364
#>     Attrib V15    -0.4532393752094937
#>     Attrib V16    0.12962121962224793
#>     Attrib V17    -0.16928021173401345
#>     Attrib V18    -0.3422045900564425
#>     Attrib V19    -0.4894668669701358
#>     Attrib V2    -0.059287382247985784
#>     Attrib V20    -1.1249518863677614
#>     Attrib V21    -0.5741607943826259
#>     Attrib V22    -0.3509683343084982
#>     Attrib V23    -0.8842681093983895
#>     Attrib V24    -0.32800375945743393
#>     Attrib V25    0.12753212856184043
#>     Attrib V26    0.4087757091431662
#>     Attrib V27    0.8610171874939678
#>     Attrib V28    0.40610192038436194
#>     Attrib V29    -0.5568802479863966
#>     Attrib V3    -0.15940201680350927
#>     Attrib V30    -0.567316207492122
#>     Attrib V31    1.244671216694701
#>     Attrib V32    0.13325145191695234
#>     Attrib V33    -0.9952804631753089
#>     Attrib V34    -0.6945219355974055
#>     Attrib V35    -0.17939374028833596
#>     Attrib V36    0.8593569264706408
#>     Attrib V37    0.6056381178045293
#>     Attrib V38    0.030080287768863234
#>     Attrib V39    -0.36053733692742823
#>     Attrib V4    -0.38435150728319895
#>     Attrib V40    0.23585755493711083
#>     Attrib V41    0.11511295800839264
#>     Attrib V42    -0.7521810039437435
#>     Attrib V43    -0.6133316599146555
#>     Attrib V44    -0.11722347380383438
#>     Attrib V45    0.01554036984685812
#>     Attrib V46    0.12437806547359984
#>     Attrib V47    0.3179910945986776
#>     Attrib V48    -0.3341645314255765
#>     Attrib V49    -0.6491507329197912
#>     Attrib V5    0.6817588037268001
#>     Attrib V50    0.8427564807966695
#>     Attrib V51    -0.286808480233489
#>     Attrib V52    -0.6216025346047254
#>     Attrib V53    -0.5896794754937872
#>     Attrib V54    -0.30434506025372654
#>     Attrib V55    0.020613657358400674
#>     Attrib V56    -0.38719291659541794
#>     Attrib V57    0.819058861024542
#>     Attrib V58    -0.755880846007366
#>     Attrib V59    -0.5166183050947815
#>     Attrib V6    0.3943233895436838
#>     Attrib V60    0.1991911016218235
#>     Attrib V7    0.864960591167218
#>     Attrib V8    -0.28128461992948117
#>     Attrib V9    -0.9087903907155196
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.01522950571552254
#>     Attrib V1    0.3577362105568886
#>     Attrib V10    0.042234276674637056
#>     Attrib V11    -0.015895960199731152
#>     Attrib V12    0.027046273760713526
#>     Attrib V13    -0.049333207238943945
#>     Attrib V14    0.25661663334179663
#>     Attrib V15    0.2545726861692153
#>     Attrib V16    0.06275098499008396
#>     Attrib V17    -0.005906604712378996
#>     Attrib V18    0.0013239719487381945
#>     Attrib V19    -0.05182355868854509
#>     Attrib V2    0.043286415762862435
#>     Attrib V20    0.14084001396275114
#>     Attrib V21    0.030132918663021428
#>     Attrib V22    -0.09668470138793309
#>     Attrib V23    -0.049160097269447534
#>     Attrib V24    -0.004444956482292544
#>     Attrib V25    -0.0980156584331393
#>     Attrib V26    -0.20338812353484495
#>     Attrib V27    -0.260613424501052
#>     Attrib V28    -0.22268146295467284
#>     Attrib V29    -0.006016651583022689
#>     Attrib V3    0.0402933415893216
#>     Attrib V30    -0.06955423152463716
#>     Attrib V31    -0.31526456176825435
#>     Attrib V32    -0.09721003601027244
#>     Attrib V33    0.11176463943573813
#>     Attrib V34    0.16281249558423275
#>     Attrib V35    0.14530580608440613
#>     Attrib V36    -0.11111453183366675
#>     Attrib V37    -0.06737503042423165
#>     Attrib V38    -0.007330436177479352
#>     Attrib V39    0.04378263125515333
#>     Attrib V4    0.23376831408716203
#>     Attrib V40    -0.09570574064377836
#>     Attrib V41    -0.12827166545525698
#>     Attrib V42    0.018274687708353908
#>     Attrib V43    0.13196255820346198
#>     Attrib V44    -0.04586287638430472
#>     Attrib V45    -0.13687346529803904
#>     Attrib V46    -0.02229225481936405
#>     Attrib V47    -0.14636012302905863
#>     Attrib V48    0.1452647638374585
#>     Attrib V49    0.11687874580003745
#>     Attrib V5    -0.01283662276838127
#>     Attrib V50    -0.1393156533585364
#>     Attrib V51    0.07639134441991574
#>     Attrib V52    0.08869633343094006
#>     Attrib V53    0.20627791354199096
#>     Attrib V54    0.3090161348235236
#>     Attrib V55    0.12481920189496654
#>     Attrib V56    0.19780797012699683
#>     Attrib V57    0.03784390125319375
#>     Attrib V58    0.34579290347228886
#>     Attrib V59    0.4680831080902287
#>     Attrib V6    0.04364345712277847
#>     Attrib V60    0.4358132835353886
#>     Attrib V7    0.010269085376122837
#>     Attrib V8    -0.11620165572825733
#>     Attrib V9    0.1659144736314254
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.059453549437442355
#>     Attrib V1    0.4864985033795707
#>     Attrib V10    -0.09160689694202737
#>     Attrib V11    -0.16464158482949642
#>     Attrib V12    -0.10718237249355157
#>     Attrib V13    -0.23108795362395645
#>     Attrib V14    0.3582831623206129
#>     Attrib V15    0.4786390165015488
#>     Attrib V16    -0.015120200504413466
#>     Attrib V17    0.07189609695775609
#>     Attrib V18    0.1206184125986066
#>     Attrib V19    0.1007184149511605
#>     Attrib V2    -0.06043614833453356
#>     Attrib V20    0.45220815397366804
#>     Attrib V21    0.2672196673263699
#>     Attrib V22    0.07490811266683166
#>     Attrib V23    0.18676220624738155
#>     Attrib V24    -0.003176726503282328
#>     Attrib V25    -0.17667760423938805
#>     Attrib V26    -0.3573439015562633
#>     Attrib V27    -0.6309380876934978
#>     Attrib V28    -0.47185210980334125
#>     Attrib V29    0.02317539258579392
#>     Attrib V3    0.07714420659578616
#>     Attrib V30    -0.008937780072164198
#>     Attrib V31    -0.6855473510427911
#>     Attrib V32    -0.23791776119630478
#>     Attrib V33    0.3299050408322228
#>     Attrib V34    0.3450389369024185
#>     Attrib V35    0.26177521257344666
#>     Attrib V36    -0.26654734937552504
#>     Attrib V37    -0.15656005894162608
#>     Attrib V38    -0.047907670630966244
#>     Attrib V39    0.13031706236731563
#>     Attrib V4    0.32227351974607704
#>     Attrib V40    -0.227112229742378
#>     Attrib V41    -0.1598599617137816
#>     Attrib V42    0.17357318372355976
#>     Attrib V43    0.26495097617574337
#>     Attrib V44    -0.03974761165820624
#>     Attrib V45    -0.1422400452582854
#>     Attrib V46    -0.13785945467710073
#>     Attrib V47    -0.23255181136398703
#>     Attrib V48    0.08441562684600656
#>     Attrib V49    0.12567479575552226
#>     Attrib V5    -0.17074441209935023
#>     Attrib V50    -0.40559483388335843
#>     Attrib V51    0.06565730947848862
#>     Attrib V52    0.13859818722383577
#>     Attrib V53    0.3878538912722458
#>     Attrib V54    0.42751298731631754
#>     Attrib V55    0.06857305401502325
#>     Attrib V56    0.29047017497047734
#>     Attrib V57    -0.11819799873220713
#>     Attrib V58    0.4440898492134728
#>     Attrib V59    0.7441446186806728
#>     Attrib V6    0.024570802148133626
#>     Attrib V60    0.4712945058705794
#>     Attrib V7    -0.1448232943572905
#>     Attrib V8    -0.0807555008415218
#>     Attrib V9    0.25510470468485774
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.1579926616988844
#>     Attrib V1    -0.5070987975088437
#>     Attrib V10    -0.19230989733541318
#>     Attrib V11    -0.16630279557275388
#>     Attrib V12    -0.09598615011108869
#>     Attrib V13    0.35382141967875813
#>     Attrib V14    -0.18638688093855604
#>     Attrib V15    -0.22538797003649585
#>     Attrib V16    0.2235533952768266
#>     Attrib V17    0.03129969798056105
#>     Attrib V18    -0.13137978860440436
#>     Attrib V19    -0.07793410441586883
#>     Attrib V2    0.1252691494832318
#>     Attrib V20    -0.5226419717231355
#>     Attrib V21    -0.3147977396402957
#>     Attrib V22    -0.26731748614103984
#>     Attrib V23    -0.565241687349866
#>     Attrib V24    -0.20949004695000367
#>     Attrib V25    0.01811501397248282
#>     Attrib V26    0.26278729286206204
#>     Attrib V27    0.43804642038272845
#>     Attrib V28    0.1377921588393534
#>     Attrib V29    -0.41746339315019004
#>     Attrib V3    0.03680693422636935
#>     Attrib V30    -0.3574311865483103
#>     Attrib V31    1.1616873319073542
#>     Attrib V32    0.23955995294022672
#>     Attrib V33    -0.7731507511559225
#>     Attrib V34    -0.5368192261638128
#>     Attrib V35    -0.18295342615155807
#>     Attrib V36    0.5171104273883415
#>     Attrib V37    0.19983354184989702
#>     Attrib V38    -0.0988420996513068
#>     Attrib V39    -0.3650595840982963
#>     Attrib V4    -0.3426122934759564
#>     Attrib V40    0.20132565224921878
#>     Attrib V41    -0.008527359969988168
#>     Attrib V42    -0.4603452254153227
#>     Attrib V43    -0.3552085465928733
#>     Attrib V44    -0.018237792294910366
#>     Attrib V45    0.010147255493265091
#>     Attrib V46    0.10186798040770274
#>     Attrib V47    0.3264986108922442
#>     Attrib V48    -0.388978423323247
#>     Attrib V49    -0.582525872229022
#>     Attrib V5    0.42838206068778434
#>     Attrib V50    0.7501245869898313
#>     Attrib V51    -0.1359129444554282
#>     Attrib V52    -0.26075697573059636
#>     Attrib V53    -0.2935480903627589
#>     Attrib V54    -0.1703877317208561
#>     Attrib V55    0.36221142564475795
#>     Attrib V56    -0.01144530514410459
#>     Attrib V57    0.46996064765358037
#>     Attrib V58    -0.3760519251800011
#>     Attrib V59    -0.6875375220071421
#>     Attrib V6    0.19022321347792212
#>     Attrib V60    -0.35182234936694323
#>     Attrib V7    0.456004809392733
#>     Attrib V8    0.08725172622808808
#>     Attrib V9    -0.5853865449517285
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.4890364284745115
#>     Attrib V1    0.5810311484841112
#>     Attrib V10    0.6814915410783737
#>     Attrib V11    1.5506186282597016
#>     Attrib V12    1.5672719725809454
#>     Attrib V13    -0.043550341348837354
#>     Attrib V14    -0.39578513314009695
#>     Attrib V15    -0.7314939760604979
#>     Attrib V16    -0.8656897136841388
#>     Attrib V17    0.22687284026025145
#>     Attrib V18    0.3998854584706945
#>     Attrib V19    -0.2842734849014716
#>     Attrib V2    0.7169830711475838
#>     Attrib V20    -0.5361974802211102
#>     Attrib V21    -0.07256324400508853
#>     Attrib V22    0.7483553338827706
#>     Attrib V23    1.3607341608495065
#>     Attrib V24    0.25259222623782124
#>     Attrib V25    0.30265170987400564
#>     Attrib V26    0.9628099096117095
#>     Attrib V27    1.4821985100128527
#>     Attrib V28    1.7924365811344203
#>     Attrib V29    1.503297836653869
#>     Attrib V3    0.33641813996584813
#>     Attrib V30    1.3984575758475204
#>     Attrib V31    -1.455438983586136
#>     Attrib V32    -0.542148869515057
#>     Attrib V33    -0.5242970014847712
#>     Attrib V34    -0.862397390950958
#>     Attrib V35    -1.2235884447505512
#>     Attrib V36    -1.065011478697914
#>     Attrib V37    0.06677133529150533
#>     Attrib V38    0.26273141919373644
#>     Attrib V39    0.6807636168321796
#>     Attrib V4    0.6666332844214292
#>     Attrib V40    0.3785894112587447
#>     Attrib V41    0.5610464448803276
#>     Attrib V42    0.38903987632633286
#>     Attrib V43    0.6570274976433572
#>     Attrib V44    0.826824102547493
#>     Attrib V45    0.7742423717662468
#>     Attrib V46    0.5319447407409389
#>     Attrib V47    0.2679753166510295
#>     Attrib V48    0.7398356723736765
#>     Attrib V49    1.5846281071726602
#>     Attrib V5    -0.44221208068675943
#>     Attrib V50    -0.09920293235201384
#>     Attrib V51    0.574542045512058
#>     Attrib V52    1.6525785269467592
#>     Attrib V53    1.0479601137482004
#>     Attrib V54    0.2007003447354868
#>     Attrib V55    -1.2538657229870849
#>     Attrib V56    -0.4299363831965019
#>     Attrib V57    -0.44402287727277906
#>     Attrib V58    -0.3876900787907395
#>     Attrib V59    -0.6375183589598978
#>     Attrib V6    -0.12578015862094744
#>     Attrib V60    -0.3257282065999136
#>     Attrib V7    -0.6125852509695531
#>     Attrib V8    -0.713625730261684
#>     Attrib V9    0.832281274799173
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.13617433901747308
#>     Attrib V1    0.23638359247252064
#>     Attrib V10    0.03759010473627412
#>     Attrib V11    4.453451460807765E-4
#>     Attrib V12    0.08618186489691897
#>     Attrib V13    -0.031005702215313038
#>     Attrib V14    0.18371957208955877
#>     Attrib V15    0.12498708801817275
#>     Attrib V16    -0.016252558402865904
#>     Attrib V17    0.00845147134524904
#>     Attrib V18    -0.06041115255913987
#>     Attrib V19    -0.029772953604505666
#>     Attrib V2    0.07714761412078437
#>     Attrib V20    0.024070066257205813
#>     Attrib V21    -0.018426886353823925
#>     Attrib V22    -0.08440363575615795
#>     Attrib V23    -0.030498285314146858
#>     Attrib V24    -0.05887410696214884
#>     Attrib V25    -0.030179945745222998
#>     Attrib V26    -0.1057302713332443
#>     Attrib V27    -0.061842549811343205
#>     Attrib V28    -0.013864411484804618
#>     Attrib V29    0.016269729992609276
#>     Attrib V3    0.06293113348725625
#>     Attrib V30    -0.028754099228826817
#>     Attrib V31    -0.24249569048124225
#>     Attrib V32    -0.07152502854978578
#>     Attrib V33    0.11639656057502656
#>     Attrib V34    0.0969960701334783
#>     Attrib V35    0.15341288739118603
#>     Attrib V36    0.012664432896084366
#>     Attrib V37    0.0418599672071804
#>     Attrib V38    0.029408457067698467
#>     Attrib V39    0.09814087082298065
#>     Attrib V4    0.22833895100220794
#>     Attrib V40    -0.0459104960154076
#>     Attrib V41    -0.03925554428900093
#>     Attrib V42    0.03391091933382739
#>     Attrib V43    0.05779725852750972
#>     Attrib V44    0.00362648473100925
#>     Attrib V45    -0.024400298421785645
#>     Attrib V46    -0.00550610357928712
#>     Attrib V47    -0.04887070148288493
#>     Attrib V48    0.13437714195107758
#>     Attrib V49    0.07543664986151723
#>     Attrib V5    -0.0058187423479718735
#>     Attrib V50    -0.03483720932928135
#>     Attrib V51    0.06630084236827287
#>     Attrib V52    0.07133133403890278
#>     Attrib V53    0.12312580404129281
#>     Attrib V54    0.15351919746322207
#>     Attrib V55    0.07751499463414087
#>     Attrib V56    0.12049822142379549
#>     Attrib V57    0.09789749557173331
#>     Attrib V58    0.19328654115936184
#>     Attrib V59    0.3038058914377681
#>     Attrib V6    0.08249407044866004
#>     Attrib V60    0.3468781478648887
#>     Attrib V7    -0.02449355403288923
#>     Attrib V8    -0.01722700329118394
#>     Attrib V9    0.10765919097788466
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.1718101315061941
#>     Attrib V1    0.5786339815636079
#>     Attrib V10    0.015266806968849862
#>     Attrib V11    -0.11740722189878908
#>     Attrib V12    -0.09997969398643619
#>     Attrib V13    -0.2582751635184706
#>     Attrib V14    0.2976062861806335
#>     Attrib V15    0.4841132904550417
#>     Attrib V16    -0.05704185907915609
#>     Attrib V17    -0.02016082754853174
#>     Attrib V18    0.1537654935330079
#>     Attrib V19    0.07045638971578512
#>     Attrib V2    -0.05597374997444803
#>     Attrib V20    0.427946138863828
#>     Attrib V21    0.324256067772704
#>     Attrib V22    0.10644166774336986
#>     Attrib V23    0.22353197551800008
#>     Attrib V24    0.09291277127797788
#>     Attrib V25    -0.12913597552955416
#>     Attrib V26    -0.27762634063910285
#>     Attrib V27    -0.6193660179157976
#>     Attrib V28    -0.4537863181514827
#>     Attrib V29    0.1303051422696872
#>     Attrib V3    -0.0058603056059151745
#>     Attrib V30    0.09670996277123176
#>     Attrib V31    -0.7703178421354571
#>     Attrib V32    -0.21498815777123245
#>     Attrib V33    0.4432116684915993
#>     Attrib V34    0.44081972828004545
#>     Attrib V35    0.20042303489129518
#>     Attrib V36    -0.3734780911103986
#>     Attrib V37    -0.24293504086687615
#>     Attrib V38    -0.03480727502458734
#>     Attrib V39    0.18144835718276064
#>     Attrib V4    0.30117343769476607
#>     Attrib V40    -0.2750043595673871
#>     Attrib V41    -0.12946092509364
#>     Attrib V42    0.26134001060700296
#>     Attrib V43    0.22302178731257022
#>     Attrib V44    -0.03041414803536449
#>     Attrib V45    -0.11963247934338683
#>     Attrib V46    -0.18204595056625994
#>     Attrib V47    -0.3496511512602008
#>     Attrib V48    0.21462196704454364
#>     Attrib V49    0.18951645142163
#>     Attrib V5    -0.25961747426200465
#>     Attrib V50    -0.4579984718495797
#>     Attrib V51    0.11878747944553018
#>     Attrib V52    0.1516949951052229
#>     Attrib V53    0.3942147986987246
#>     Attrib V54    0.48423720668787257
#>     Attrib V55    0.00207965500419852
#>     Attrib V56    0.148407741208398
#>     Attrib V57    -0.1830827251536109
#>     Attrib V58    0.4910402157566143
#>     Attrib V59    0.7780255205385785
#>     Attrib V6    0.001103266053872513
#>     Attrib V60    0.4977274915712703
#>     Attrib V7    -0.23813535602006602
#>     Attrib V8    -0.0744792477598842
#>     Attrib V9    0.384162787208931
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.11313928313709283
#>     Attrib V1    -0.607249833893969
#>     Attrib V10    0.3014010151250908
#>     Attrib V11    -0.6683792393122656
#>     Attrib V12    -0.6566003532354887
#>     Attrib V13    -0.35302937716925864
#>     Attrib V14    -0.19100024520848582
#>     Attrib V15    -0.20464273545034883
#>     Attrib V16    0.20819825956522814
#>     Attrib V17    -0.5545080379991907
#>     Attrib V18    -0.7300073160214743
#>     Attrib V19    -0.7917596173895088
#>     Attrib V2    -0.26103691333840257
#>     Attrib V20    -0.9469176536789077
#>     Attrib V21    -0.6880854001894064
#>     Attrib V22    -0.7903155215501696
#>     Attrib V23    -0.4838197047736766
#>     Attrib V24    0.5223318325948323
#>     Attrib V25    0.0809746846106655
#>     Attrib V26    -0.4933914225497853
#>     Attrib V27    -0.5342021491917223
#>     Attrib V28    -0.4059591347672445
#>     Attrib V29    -1.3729080947822685
#>     Attrib V3    -0.03827147136121158
#>     Attrib V30    -1.1906258063272641
#>     Attrib V31    0.9934957462216989
#>     Attrib V32    0.29478250681579193
#>     Attrib V33    -0.4897137037238137
#>     Attrib V34    -0.3803393240627947
#>     Attrib V35    0.42995621726155314
#>     Attrib V36    1.7969347480580196
#>     Attrib V37    0.7993996465754326
#>     Attrib V38    0.2988248931810729
#>     Attrib V39    -0.34364958588694067
#>     Attrib V4    -0.2532896885710124
#>     Attrib V40    -0.03670967613998844
#>     Attrib V41    -0.16588668415258553
#>     Attrib V42    -0.24538481358232403
#>     Attrib V43    -0.03254160635491935
#>     Attrib V44    0.2065977557233989
#>     Attrib V45    -0.38991288382926287
#>     Attrib V46    -0.2994788800600389
#>     Attrib V47    -0.5097244072094862
#>     Attrib V48    -1.3197139265567315
#>     Attrib V49    -1.319428060958568
#>     Attrib V5    0.6233218968883573
#>     Attrib V50    0.5834793431827271
#>     Attrib V51    -0.3982343669094498
#>     Attrib V52    -0.492313891371973
#>     Attrib V53    -0.061204445163023966
#>     Attrib V54    -0.5932462447245733
#>     Attrib V55    0.10169381857181041
#>     Attrib V56    -0.2767925529994987
#>     Attrib V57    1.5035136443732087
#>     Attrib V58    -0.12377333586840515
#>     Attrib V59    -0.05961978668192003
#>     Attrib V6    0.45153432943746613
#>     Attrib V60    0.5458782245868444
#>     Attrib V7    1.3476038885475279
#>     Attrib V8    0.7919788852253702
#>     Attrib V9    -0.3404007156051285
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.11369890551463202
#>     Attrib V1    0.37080138164945664
#>     Attrib V10    7.153165517387985E-4
#>     Attrib V11    0.03968685805863827
#>     Attrib V12    0.01204071957332343
#>     Attrib V13    -0.2099139992100389
#>     Attrib V14    0.27923511268451784
#>     Attrib V15    0.3233610414284647
#>     Attrib V16    -0.08493489072237716
#>     Attrib V17    -0.004201717456516236
#>     Attrib V18    0.08323161277857656
#>     Attrib V19    0.020663108017161633
#>     Attrib V2    -0.06329660154990854
#>     Attrib V20    0.3997605096651407
#>     Attrib V21    0.2710654901280863
#>     Attrib V22    0.1406722732034236
#>     Attrib V23    0.2612372549413259
#>     Attrib V24    0.16951635931599668
#>     Attrib V25    0.027254505846728717
#>     Attrib V26    -0.22827587846454334
#>     Attrib V27    -0.42432083611305416
#>     Attrib V28    -0.2600960001982467
#>     Attrib V29    0.18510652185646026
#>     Attrib V3    0.021512697380773813
#>     Attrib V30    0.10601819354968303
#>     Attrib V31    -0.6253946644802042
#>     Attrib V32    -0.10754329054994205
#>     Attrib V33    0.42590145395056567
#>     Attrib V34    0.36857572265176425
#>     Attrib V35    0.18016234779036192
#>     Attrib V36    -0.3166911613256835
#>     Attrib V37    -0.17392330381367632
#>     Attrib V38    -0.012481307296751105
#>     Attrib V39    0.17530111397969958
#>     Attrib V4    0.21378142012617696
#>     Attrib V40    -0.16348127026279777
#>     Attrib V41    -0.06333231628993609
#>     Attrib V42    0.2112074437207718
#>     Attrib V43    0.27387256166577695
#>     Attrib V44    -0.09217763529160197
#>     Attrib V45    -0.06739012745344071
#>     Attrib V46    -0.09801475269816827
#>     Attrib V47    -0.2141274588548031
#>     Attrib V48    0.17956498238236476
#>     Attrib V49    0.2237511329361438
#>     Attrib V5    -0.27273395251976523
#>     Attrib V50    -0.3981056529662255
#>     Attrib V51    0.12960363942418418
#>     Attrib V52    0.2073088138384979
#>     Attrib V53    0.24813362918053358
#>     Attrib V54    0.27013178780837804
#>     Attrib V55    0.0038872811132711358
#>     Attrib V56    0.13623767986164684
#>     Attrib V57    -0.20249188288142175
#>     Attrib V58    0.35021751750948527
#>     Attrib V59    0.5455747972102006
#>     Attrib V6    -0.05761628203971842
#>     Attrib V60    0.3306507568797849
#>     Attrib V7    -0.24739175317515244
#>     Attrib V8    -0.022930978995171443
#>     Attrib V9    0.3471840796360989
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    0.007281540514671521
#>     Attrib V1    0.3746041148885422
#>     Attrib V10    0.06914960811090944
#>     Attrib V11    0.012739578568731534
#>     Attrib V12    0.11974701440743778
#>     Attrib V13    0.03064295230653562
#>     Attrib V14    0.22317187111652412
#>     Attrib V15    0.2629203426226052
#>     Attrib V16    -0.036201917115989676
#>     Attrib V17    -0.020927485478379866
#>     Attrib V18    -0.02199548847678108
#>     Attrib V19    -0.08529691552744205
#>     Attrib V2    0.05482106627591259
#>     Attrib V20    0.08678120652337833
#>     Attrib V21    0.06287707352691364
#>     Attrib V22    -0.05889767222527943
#>     Attrib V23    0.0258807829580522
#>     Attrib V24    -0.03025980314994169
#>     Attrib V25    5.56443554901185E-4
#>     Attrib V26    -0.08641028516442767
#>     Attrib V27    -0.18301337059770284
#>     Attrib V28    -0.09546635161031364
#>     Attrib V29    -0.036377023914386374
#>     Attrib V3    0.04554085309237791
#>     Attrib V30    -0.01663320551719036
#>     Attrib V31    -0.3301499881324054
#>     Attrib V32    -0.11369480233936136
#>     Attrib V33    0.1272320679044596
#>     Attrib V34    0.16180045829151762
#>     Attrib V35    0.1680319262089774
#>     Attrib V36    -0.13034880958089728
#>     Attrib V37    -0.041147809309089727
#>     Attrib V38    0.00840710248440108
#>     Attrib V39    0.16291172476462626
#>     Attrib V4    0.2623736634590463
#>     Attrib V40    -0.07218565515495062
#>     Attrib V41    -0.06103605443680772
#>     Attrib V42    0.08536135259048092
#>     Attrib V43    0.06737999384782838
#>     Attrib V44    -0.10859994145646176
#>     Attrib V45    -0.09547979179382134
#>     Attrib V46    -0.05389813289613715
#>     Attrib V47    -0.14809911890581168
#>     Attrib V48    0.1336583385817019
#>     Attrib V49    0.09466016895432286
#>     Attrib V5    -0.09104554921585388
#>     Attrib V50    -0.16172146944150564
#>     Attrib V51    0.06559221838430289
#>     Attrib V52    0.09867798304985223
#>     Attrib V53    0.23519214823159842
#>     Attrib V54    0.3008991546961548
#>     Attrib V55    0.04857133475915906
#>     Attrib V56    0.17378030739542144
#>     Attrib V57    -0.024955178268083092
#>     Attrib V58    0.31453710613747404
#>     Attrib V59    0.5096947509894469
#>     Attrib V6    0.011446815693672322
#>     Attrib V60    0.43756300920432645
#>     Attrib V7    -0.06947494138728497
#>     Attrib V8    -0.08960209330834092
#>     Attrib V9    0.14133147867224943
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.013221854068129741
#>     Attrib V1    0.4805611860771323
#>     Attrib V10    -0.06467230684266877
#>     Attrib V11    -0.21854348816772903
#>     Attrib V12    -0.282743135152616
#>     Attrib V13    -0.29729422928757365
#>     Attrib V14    0.4205587984444387
#>     Attrib V15    0.5736509653682393
#>     Attrib V16    0.05917158830845072
#>     Attrib V17    0.06964361544078737
#>     Attrib V18    0.1343682252623873
#>     Attrib V19    0.12036650840545847
#>     Attrib V2    -0.003258565603881913
#>     Attrib V20    0.5852657758497394
#>     Attrib V21    0.29639488612775716
#>     Attrib V22    0.09824280296060503
#>     Attrib V23    0.20306861085874323
#>     Attrib V24    0.0637244962388708
#>     Attrib V25    -0.24344211275774766
#>     Attrib V26    -0.4358213305866577
#>     Attrib V27    -0.7512411381410588
#>     Attrib V28    -0.5919270249472843
#>     Attrib V29    0.013196785992989318
#>     Attrib V3    0.025721276594440217
#>     Attrib V30    -0.008151198578270418
#>     Attrib V31    -0.670262940906307
#>     Attrib V32    -0.2462349728203483
#>     Attrib V33    0.4506728267937488
#>     Attrib V34    0.497831171911301
#>     Attrib V35    0.30713244856634087
#>     Attrib V36    -0.33841906166192953
#>     Attrib V37    -0.23239719439862278
#>     Attrib V38    -0.03684682807290655
#>     Attrib V39    0.1005440833095246
#>     Attrib V4    0.2964077025255019
#>     Attrib V40    -0.20722759957856923
#>     Attrib V41    -0.18232602666064782
#>     Attrib V42    0.22757361277489793
#>     Attrib V43    0.2832174914930568
#>     Attrib V44    0.0026825429459190722
#>     Attrib V45    -0.21575425321882932
#>     Attrib V46    -0.1482250380104074
#>     Attrib V47    -0.27991512761756615
#>     Attrib V48    0.16545915449227927
#>     Attrib V49    0.15246070182035537
#>     Attrib V5    -0.23655584308051672
#>     Attrib V50    -0.450920450212004
#>     Attrib V51    0.08164532091859905
#>     Attrib V52    0.08307406355871189
#>     Attrib V53    0.39782273934102547
#>     Attrib V54    0.46531632449929794
#>     Attrib V55    0.11045855101997334
#>     Attrib V56    0.2657829795190256
#>     Attrib V57    -0.10527472256979686
#>     Attrib V58    0.464397676829866
#>     Attrib V59    0.7441613920918034
#>     Attrib V6    0.020686400559255146
#>     Attrib V60    0.5084883299600564
#>     Attrib V7    -0.16126388925548663
#>     Attrib V8    -0.02799408831767238
#>     Attrib V9    0.33092195093757876
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.0026702524841527428
#>     Attrib V1    0.39381491801200713
#>     Attrib V10    -0.06853698456206601
#>     Attrib V11    -0.11424871716383547
#>     Attrib V12    -0.11165835853072917
#>     Attrib V13    -0.23873974112538784
#>     Attrib V14    0.3196657948063193
#>     Attrib V15    0.38920695597273214
#>     Attrib V16    0.04950241048300048
#>     Attrib V17    0.0019289113515464067
#>     Attrib V18    0.13359902033050444
#>     Attrib V19    0.02542262934374615
#>     Attrib V2    -0.03223365966916716
#>     Attrib V20    0.3666824914480973
#>     Attrib V21    0.23837900195166364
#>     Attrib V22    0.03831450876157596
#>     Attrib V23    0.16701741419845448
#>     Attrib V24    0.00431933693328067
#>     Attrib V25    -0.18592068579643098
#>     Attrib V26    -0.3141614038398758
#>     Attrib V27    -0.48332323877032285
#>     Attrib V28    -0.3270596984234196
#>     Attrib V29    0.017356788423566295
#>     Attrib V3    0.0716582980243364
#>     Attrib V30    0.0445948632282289
#>     Attrib V31    -0.5619613218677006
#>     Attrib V32    -0.16029263115576825
#>     Attrib V33    0.3213064689924708
#>     Attrib V34    0.331095330343169
#>     Attrib V35    0.19604171337303966
#>     Attrib V36    -0.17825428291723058
#>     Attrib V37    -0.16480429464561094
#>     Attrib V38    -0.05938820950118934
#>     Attrib V39    0.12236076131060475
#>     Attrib V4    0.21121366840398947
#>     Attrib V40    -0.18421460114471222
#>     Attrib V41    -0.1569279648524221
#>     Attrib V42    0.18145756498325258
#>     Attrib V43    0.13961713158678238
#>     Attrib V44    -0.0021683623782394698
#>     Attrib V45    -0.08353219419572887
#>     Attrib V46    -0.09020337812087055
#>     Attrib V47    -0.21208156508778883
#>     Attrib V48    0.08693843947315387
#>     Attrib V49    0.1773123854024528
#>     Attrib V5    -0.1491192091787876
#>     Attrib V50    -0.3166993079363785
#>     Attrib V51    0.1044247229659963
#>     Attrib V52    0.13737575937838417
#>     Attrib V53    0.27790377322364174
#>     Attrib V54    0.246702330090878
#>     Attrib V55    0.03139104983425796
#>     Attrib V56    0.18576342119008152
#>     Attrib V57    -0.09253734050456419
#>     Attrib V58    0.4147380476634417
#>     Attrib V59    0.5055937596843476
#>     Attrib V6    0.029217879289199333
#>     Attrib V60    0.35495750367786744
#>     Attrib V7    -0.11716801925590212
#>     Attrib V8    -0.015617679584485754
#>     Attrib V9    0.2526212831393127
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
