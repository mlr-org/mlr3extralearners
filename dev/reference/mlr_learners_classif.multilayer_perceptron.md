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
#>     Threshold    -0.44609312778500204
#>     Node 2    2.3902781860943065
#>     Node 3    1.5513054780482918
#>     Node 4    1.4461395339365586
#>     Node 5    -2.11762174723514
#>     Node 6    1.5523876898396487
#>     Node 7    2.8530620623140592
#>     Node 8    1.253103930119775
#>     Node 9    2.814717283667643
#>     Node 10    -1.5896783440601565
#>     Node 11    1.6139473825044062
#>     Node 12    1.9367121895062067
#>     Node 13    1.658154197922601
#>     Node 14    1.3420086170156993
#>     Node 15    -1.9692507832762343
#>     Node 16    -0.3209383116987462
#>     Node 17    0.8176373935803337
#>     Node 18    0.11134023403939208
#>     Node 19    1.499517856845431
#>     Node 20    1.8196939362671534
#>     Node 21    -1.6961727854910882
#>     Node 22    0.6660474345048788
#>     Node 23    0.6190398801579267
#>     Node 24    -1.964488515455038
#>     Node 25    4.434471091135103
#>     Node 26    0.1724548154192651
#>     Node 27    1.4947011104162322
#>     Node 28    -4.160351745451251
#>     Node 29    1.296891996090068
#>     Node 30    0.18406175976198155
#>     Node 31    0.4594501207043164
#>     Node 32    0.4913352384018891
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.47598150679204926
#>     Node 2    -2.433147850783117
#>     Node 3    -1.5349523764711743
#>     Node 4    -1.405326915158572
#>     Node 5    2.133972117434275
#>     Node 6    -1.5288551246059994
#>     Node 7    -2.862355079263354
#>     Node 8    -1.2923675855398071
#>     Node 9    -2.8254870598970445
#>     Node 10    1.5288304296889588
#>     Node 11    -1.5789050114031622
#>     Node 12    -2.010616258290393
#>     Node 13    -1.6007228375635467
#>     Node 14    -1.2803769366741855
#>     Node 15    1.9566474590412928
#>     Node 16    0.3043153080092392
#>     Node 17    -0.788332428857473
#>     Node 18    -0.07175619426024252
#>     Node 19    -1.492830731322629
#>     Node 20    -1.7973240911068191
#>     Node 21    1.7490257703308774
#>     Node 22    -0.7210423675683296
#>     Node 23    -0.6647349220394252
#>     Node 24    1.9515318127997359
#>     Node 25    -4.443461580283863
#>     Node 26    -0.2573725984266522
#>     Node 27    -1.5365507799788878
#>     Node 28    4.133420292307729
#>     Node 29    -1.3284390395715158
#>     Node 30    -0.10835599966807949
#>     Node 31    -0.40445863810347543
#>     Node 32    -0.5108185658649048
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.04512885728097019
#>     Attrib V1    0.5343498038824472
#>     Attrib V10    -0.5047429470481399
#>     Attrib V11    -0.0739877201962124
#>     Attrib V12    -0.016548160781715105
#>     Attrib V13    -0.18799926064250233
#>     Attrib V14    -0.5112509985658696
#>     Attrib V15    0.4288325944975273
#>     Attrib V16    0.49188578191129917
#>     Attrib V17    0.03413475465867556
#>     Attrib V18    -0.18736136683254195
#>     Attrib V19    0.48262221634165386
#>     Attrib V2    0.5221387186839042
#>     Attrib V20    0.7283710752265635
#>     Attrib V21    0.9080947453526851
#>     Attrib V22    0.5476788632103607
#>     Attrib V23    0.03698743228530264
#>     Attrib V24    0.6683013974918218
#>     Attrib V25    -0.3325106705920549
#>     Attrib V26    -1.5343565411734312
#>     Attrib V27    -1.2362459916287805
#>     Attrib V28    0.18535656550836893
#>     Attrib V29    0.2754568664892095
#>     Attrib V3    -0.22355390873754682
#>     Attrib V30    0.516140496834437
#>     Attrib V31    -1.243038299133872
#>     Attrib V32    0.06791123966656173
#>     Attrib V33    0.5525653529413929
#>     Attrib V34    -0.4484351734985125
#>     Attrib V35    -0.5923936277493496
#>     Attrib V36    -0.6949973770766008
#>     Attrib V37    -0.7380744938747223
#>     Attrib V38    0.2328347636032317
#>     Attrib V39    0.450361343676361
#>     Attrib V4    -0.21216129045287477
#>     Attrib V40    -0.1152640731825218
#>     Attrib V41    0.10235886212823873
#>     Attrib V42    0.4958542219898948
#>     Attrib V43    0.28244257245198634
#>     Attrib V44    0.6294016639474096
#>     Attrib V45    0.5962798756652647
#>     Attrib V46    0.3368703243195957
#>     Attrib V47    -0.43363931719130183
#>     Attrib V48    -0.11789379790009513
#>     Attrib V49    0.4571854997957118
#>     Attrib V5    -0.4494997047846835
#>     Attrib V50    -0.5823476137236531
#>     Attrib V51    -0.09431658275411443
#>     Attrib V52    -0.04017738704967176
#>     Attrib V53    0.38183702314205115
#>     Attrib V54    0.7040298373730365
#>     Attrib V55    -0.4791765964916323
#>     Attrib V56    0.5442118109547929
#>     Attrib V57    -0.044248789362812666
#>     Attrib V58    0.3600311515280614
#>     Attrib V59    1.166677276358892
#>     Attrib V6    -0.5971987683612802
#>     Attrib V60    0.9971525458027507
#>     Attrib V7    0.09605270266725321
#>     Attrib V8    0.10951708368729117
#>     Attrib V9    -0.047110192677253464
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.001810289346677642
#>     Attrib V1    0.40237398668954555
#>     Attrib V10    -0.3519001017572188
#>     Attrib V11    -0.09762074736606102
#>     Attrib V12    -0.02079716822207603
#>     Attrib V13    -0.1192237757331254
#>     Attrib V14    -0.35967568441726727
#>     Attrib V15    0.3523461553619531
#>     Attrib V16    0.3279271293649643
#>     Attrib V17    0.061905178130029624
#>     Attrib V18    -0.11248497287201661
#>     Attrib V19    0.3570568361103137
#>     Attrib V2    0.42568775133532827
#>     Attrib V20    0.4271048325350154
#>     Attrib V21    0.47412221256549864
#>     Attrib V22    0.2684541328617208
#>     Attrib V23    -0.04682514751454193
#>     Attrib V24    0.4146414274183946
#>     Attrib V25    -0.2104199088335411
#>     Attrib V26    -1.0731141883194668
#>     Attrib V27    -0.9513210114028603
#>     Attrib V28    -0.08471086512544009
#>     Attrib V29    -0.07863721282025565
#>     Attrib V3    -0.12757428551461877
#>     Attrib V30    0.2373491736182101
#>     Attrib V31    -0.707176171775282
#>     Attrib V32    0.16283709788852022
#>     Attrib V33    0.45820724074363156
#>     Attrib V34    -0.2787077572881408
#>     Attrib V35    -0.4087974462714111
#>     Attrib V36    -0.5568514398206726
#>     Attrib V37    -0.5445390251453778
#>     Attrib V38    0.012058723595854543
#>     Attrib V39    0.245127859303608
#>     Attrib V4    -0.08234482689669598
#>     Attrib V40    -0.11619220800611951
#>     Attrib V41    -0.007610503852664664
#>     Attrib V42    0.24172596758106568
#>     Attrib V43    0.11817091340696995
#>     Attrib V44    0.34473863489074674
#>     Attrib V45    0.30401273196506634
#>     Attrib V46    0.1854838611104433
#>     Attrib V47    -0.24892485978888737
#>     Attrib V48    -0.0714309441569761
#>     Attrib V49    0.26560841568728
#>     Attrib V5    -0.2617352672722968
#>     Attrib V50    -0.38070361149359666
#>     Attrib V51    -0.07702597983995559
#>     Attrib V52    0.010681920473581364
#>     Attrib V53    0.20998014355940592
#>     Attrib V54    0.5058325765148002
#>     Attrib V55    -0.17879910668117327
#>     Attrib V56    0.43254083411882055
#>     Attrib V57    0.051323453151998925
#>     Attrib V58    0.3307208667288791
#>     Attrib V59    0.7566665934020644
#>     Attrib V6    -0.35749642481709115
#>     Attrib V60    0.6399793559980249
#>     Attrib V7    0.06551481231692549
#>     Attrib V8    0.0698135484222667
#>     Attrib V9    -0.06881643744021054
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.034632573947445185
#>     Attrib V1    0.3305126826195109
#>     Attrib V10    -0.3348666821977479
#>     Attrib V11    -0.06621529346357292
#>     Attrib V12    -0.03387975650409919
#>     Attrib V13    -0.11110805991049451
#>     Attrib V14    -0.3473712678696126
#>     Attrib V15    0.3044293557601858
#>     Attrib V16    0.3057366789822373
#>     Attrib V17    0.07580448091195728
#>     Attrib V18    -0.08584206342074886
#>     Attrib V19    0.3191679301949281
#>     Attrib V2    0.344341975977896
#>     Attrib V20    0.4220225760602747
#>     Attrib V21    0.5379462940573432
#>     Attrib V22    0.2171355312910491
#>     Attrib V23    -0.03897215579983699
#>     Attrib V24    0.37474209804041264
#>     Attrib V25    -0.2722410613738851
#>     Attrib V26    -1.0172132678932229
#>     Attrib V27    -0.9292537477871987
#>     Attrib V28    -0.018015730760721937
#>     Attrib V29    0.042453714936017344
#>     Attrib V3    -0.1148828075067835
#>     Attrib V30    0.2226822440031927
#>     Attrib V31    -0.6834449043462992
#>     Attrib V32    0.1227383708348424
#>     Attrib V33    0.4370288939265829
#>     Attrib V34    -0.21684759249728197
#>     Attrib V35    -0.3611120405154142
#>     Attrib V36    -0.5226820743147285
#>     Attrib V37    -0.493384029074773
#>     Attrib V38    0.01957225114834275
#>     Attrib V39    0.2248925962151808
#>     Attrib V4    -0.08894649616271794
#>     Attrib V40    -0.1301634953399818
#>     Attrib V41    -0.012903256165588576
#>     Attrib V42    0.26207960996526525
#>     Attrib V43    0.1295107244855412
#>     Attrib V44    0.3593884364755708
#>     Attrib V45    0.3998371618575985
#>     Attrib V46    0.18363706371945476
#>     Attrib V47    -0.2829060499067532
#>     Attrib V48    -0.02849785484326195
#>     Attrib V49    0.30689982284077927
#>     Attrib V5    -0.2112476794763677
#>     Attrib V50    -0.3564441941355961
#>     Attrib V51    -0.013725929518770968
#>     Attrib V52    -0.015048487981162859
#>     Attrib V53    0.25962692720007546
#>     Attrib V54    0.3375029968990093
#>     Attrib V55    -0.23754403025482193
#>     Attrib V56    0.39467000215231873
#>     Attrib V57    0.017005369698462582
#>     Attrib V58    0.25020778681883593
#>     Attrib V59    0.6736623383797602
#>     Attrib V6    -0.3756624189675443
#>     Attrib V60    0.5906498144503297
#>     Attrib V7    0.04823458898840019
#>     Attrib V8    0.010852924640500455
#>     Attrib V9    0.014448763940958466
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5829638314301393
#>     Attrib V1    -0.19744529254432144
#>     Attrib V10    -0.19554483324994362
#>     Attrib V11    -0.6294803027386036
#>     Attrib V12    -0.47800601815813343
#>     Attrib V13    -0.23345353756475742
#>     Attrib V14    0.6633436208828507
#>     Attrib V15    0.015752268629519298
#>     Attrib V16    0.09327270578906897
#>     Attrib V17    0.31986067237407395
#>     Attrib V18    0.21110728053257194
#>     Attrib V19    -0.46394668415108964
#>     Attrib V2    0.042284013125981144
#>     Attrib V20    -0.030874630117333983
#>     Attrib V21    -0.02326778690957405
#>     Attrib V22    0.31919472249183184
#>     Attrib V23    0.15838360819721697
#>     Attrib V24    -1.0490725983573503
#>     Attrib V25    -0.12776795089465814
#>     Attrib V26    0.2851600270827544
#>     Attrib V27    -0.09300790527158828
#>     Attrib V28    -1.1431907918004784
#>     Attrib V29    -0.6733199823013651
#>     Attrib V3    0.7821614821162182
#>     Attrib V30    -0.3478316486454494
#>     Attrib V31    0.8522480520210043
#>     Attrib V32    0.19593266598877918
#>     Attrib V33    -0.3911806180539542
#>     Attrib V34    -0.15892748667678527
#>     Attrib V35    -0.23771228231495742
#>     Attrib V36    0.7511863969783884
#>     Attrib V37    0.7496776520651247
#>     Attrib V38    0.28436839303576944
#>     Attrib V39    -0.12804836144203152
#>     Attrib V4    0.28754593574041687
#>     Attrib V40    0.4148878525939599
#>     Attrib V41    -0.7595353230578793
#>     Attrib V42    -0.42720780538434505
#>     Attrib V43    -0.39205282029557337
#>     Attrib V44    -0.5580782250135329
#>     Attrib V45    -0.9977440835734824
#>     Attrib V46    -0.8994080395623889
#>     Attrib V47    -0.12418060814991609
#>     Attrib V48    -0.31266622794741517
#>     Attrib V49    -0.8326447059775055
#>     Attrib V5    -0.051225999068469724
#>     Attrib V50    0.48033517379165275
#>     Attrib V51    -0.026267728590565764
#>     Attrib V52    -0.3326704471866854
#>     Attrib V53    -0.3866031522568682
#>     Attrib V54    -0.1681021274098295
#>     Attrib V55    0.6454465736441881
#>     Attrib V56    0.4359151428355217
#>     Attrib V57    0.5225826772609794
#>     Attrib V58    -0.44966745997136714
#>     Attrib V59    -0.6642361871209684
#>     Attrib V6    -0.04519243316311207
#>     Attrib V60    -0.36522394907650646
#>     Attrib V7    0.3815552835751217
#>     Attrib V8    0.08789710568908188
#>     Attrib V9    -0.44878502962547795
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.0016726777088320714
#>     Attrib V1    0.4252177056013358
#>     Attrib V10    -0.3902536810736332
#>     Attrib V11    -0.11878737655283411
#>     Attrib V12    -0.011887403920342366
#>     Attrib V13    -0.2050000049725952
#>     Attrib V14    -0.3989796291856198
#>     Attrib V15    0.2893155378311317
#>     Attrib V16    0.4043484812571434
#>     Attrib V17    0.056859700483886624
#>     Attrib V18    -0.04979465241490687
#>     Attrib V19    0.27682652826770365
#>     Attrib V2    0.39816458051949244
#>     Attrib V20    0.3829083002042181
#>     Attrib V21    0.4996248697131691
#>     Attrib V22    0.24062710118024175
#>     Attrib V23    -0.05527307305859339
#>     Attrib V24    0.4207726051237162
#>     Attrib V25    -0.20297965613426253
#>     Attrib V26    -1.0661491500987772
#>     Attrib V27    -0.931361414431459
#>     Attrib V28    -0.18971438344498173
#>     Attrib V29    -0.10193142361332438
#>     Attrib V3    -0.10891577312800589
#>     Attrib V30    0.17403837152898344
#>     Attrib V31    -0.6688206561930422
#>     Attrib V32    0.18023826067766485
#>     Attrib V33    0.44448430508026776
#>     Attrib V34    -0.23640138618286352
#>     Attrib V35    -0.3917423339803018
#>     Attrib V36    -0.5710502064762331
#>     Attrib V37    -0.5351063407012953
#>     Attrib V38    9.065004585948924E-5
#>     Attrib V39    0.19133669689403346
#>     Attrib V4    -0.05209995024917511
#>     Attrib V40    -0.12889188310053246
#>     Attrib V41    0.013327899809254263
#>     Attrib V42    0.2604766304457071
#>     Attrib V43    0.136868843288831
#>     Attrib V44    0.30295531172807916
#>     Attrib V45    0.28750501856774685
#>     Attrib V46    0.19716150758485274
#>     Attrib V47    -0.2712278576888941
#>     Attrib V48    -0.06924250741637925
#>     Attrib V49    0.23138967506710564
#>     Attrib V5    -0.2799039662241153
#>     Attrib V50    -0.3380265387479872
#>     Attrib V51    -0.04481967778435078
#>     Attrib V52    -0.04946599928298694
#>     Attrib V53    0.2735777691521962
#>     Attrib V54    0.38728341195271715
#>     Attrib V55    -0.24989331928402633
#>     Attrib V56    0.4654714164762206
#>     Attrib V57    0.10368777855259037
#>     Attrib V58    0.316380922085695
#>     Attrib V59    0.7741850772694514
#>     Attrib V6    -0.3205175157377148
#>     Attrib V60    0.7188973959721375
#>     Attrib V7    0.08861483216654227
#>     Attrib V8    0.05921337723243356
#>     Attrib V9    -0.0013179310577935831
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4374130548205184
#>     Attrib V1    0.26659050833106757
#>     Attrib V10    0.7609945381185811
#>     Attrib V11    1.2813210467656417
#>     Attrib V12    0.8831255399585899
#>     Attrib V13    0.45812186099306224
#>     Attrib V14    -0.8737581839051868
#>     Attrib V15    -0.34306281605720407
#>     Attrib V16    -0.5214570378403091
#>     Attrib V17    -0.3100639278685048
#>     Attrib V18    -0.1376458170168927
#>     Attrib V19    0.44998614438488393
#>     Attrib V2    0.04311359842954371
#>     Attrib V20    -0.1427761214731903
#>     Attrib V21    -0.16957513883098368
#>     Attrib V22    -0.4441405814033395
#>     Attrib V23    0.31646837117223175
#>     Attrib V24    1.4210911632736851
#>     Attrib V25    0.8526743125962496
#>     Attrib V26    0.8484611985860708
#>     Attrib V27    0.7616826188010224
#>     Attrib V28    1.2134204010977903
#>     Attrib V29    0.5139946508430476
#>     Attrib V3    -0.565231577357421
#>     Attrib V30    -0.0045365077767659375
#>     Attrib V31    -0.6594942816639229
#>     Attrib V32    -0.2614589827592539
#>     Attrib V33    -0.02343615305981449
#>     Attrib V34    0.21688770775152613
#>     Attrib V35    0.6116677571044594
#>     Attrib V36    -0.7106777349614216
#>     Attrib V37    -0.41811992344859195
#>     Attrib V38    -0.26444643362573217
#>     Attrib V39    0.2826380423354985
#>     Attrib V4    -0.18965087776653913
#>     Attrib V40    -0.3415094358012228
#>     Attrib V41    0.9937944850513204
#>     Attrib V42    0.22297929423443572
#>     Attrib V43    0.23405842735716054
#>     Attrib V44    0.44498783893661265
#>     Attrib V45    1.02315492906342
#>     Attrib V46    1.164361040957816
#>     Attrib V47    0.7047149011932566
#>     Attrib V48    0.5862790185132967
#>     Attrib V49    0.8867081526442842
#>     Attrib V5    0.6173387471940808
#>     Attrib V50    -0.05506500512811114
#>     Attrib V51    0.4589803500963509
#>     Attrib V52    0.620298788780994
#>     Attrib V53    0.2184084162020978
#>     Attrib V54    0.11399185482196104
#>     Attrib V55    -0.4801665898076307
#>     Attrib V56    -0.6780510755107617
#>     Attrib V57    -0.9828685562853223
#>     Attrib V58    0.2733004981007027
#>     Attrib V59    0.05931218087273967
#>     Attrib V6    0.3273329304804549
#>     Attrib V60    0.09477987463817661
#>     Attrib V7    -0.46984030459275755
#>     Attrib V8    -0.37591958215334875
#>     Attrib V9    0.8846979968525231
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.23097373309923788
#>     Attrib V1    0.2748313284929686
#>     Attrib V10    -0.0206031421204846
#>     Attrib V11    0.34391250556651043
#>     Attrib V12    0.20068254467734073
#>     Attrib V13    -0.04125839333676116
#>     Attrib V14    -0.7504706619523919
#>     Attrib V15    5.630681196685175E-4
#>     Attrib V16    0.13543617276918563
#>     Attrib V17    -0.033386938804448214
#>     Attrib V18    -0.152163468248754
#>     Attrib V19    0.31947538786666835
#>     Attrib V2    0.2367022257897181
#>     Attrib V20    0.18362759165434026
#>     Attrib V21    0.29458618753748594
#>     Attrib V22    0.03530600816602359
#>     Attrib V23    -0.09011234619297678
#>     Attrib V24    0.5930145008111724
#>     Attrib V25    -0.02196230220350343
#>     Attrib V26    -0.646503163012772
#>     Attrib V27    -0.5993737833221675
#>     Attrib V28    0.180684832512186
#>     Attrib V29    0.04886954873773726
#>     Attrib V3    -0.3596220883832292
#>     Attrib V30    0.2831197890960873
#>     Attrib V31    -0.632574658159639
#>     Attrib V32    0.16394540578480216
#>     Attrib V33    0.4557614766284223
#>     Attrib V34    -0.043404056200392414
#>     Attrib V35    -0.08678243026576132
#>     Attrib V36    -0.46329849164038295
#>     Attrib V37    -0.48514787540201987
#>     Attrib V38    -0.0011592777474183733
#>     Attrib V39    0.13643646053483527
#>     Attrib V4    -0.10757750642315232
#>     Attrib V40    -0.29385639618638953
#>     Attrib V41    0.15764741576285965
#>     Attrib V42    0.09479324458815717
#>     Attrib V43    0.20232388642375995
#>     Attrib V44    0.4605884992365177
#>     Attrib V45    0.5298933214376735
#>     Attrib V46    0.3832095106929754
#>     Attrib V47    -0.1521562293298299
#>     Attrib V48    0.08007499627501301
#>     Attrib V49    0.38049708929429676
#>     Attrib V5    -0.1715152817073578
#>     Attrib V50    -0.5116915737305444
#>     Attrib V51    -0.07421438929385221
#>     Attrib V52    -0.002105646798241502
#>     Attrib V53    0.17028109138731282
#>     Attrib V54    0.10811642431694522
#>     Attrib V55    -0.4526794820577995
#>     Attrib V56    0.07982897642392538
#>     Attrib V57    -0.1858301055417811
#>     Attrib V58    0.1909162753207453
#>     Attrib V59    0.5278858603607892
#>     Attrib V6    -0.3889863601185244
#>     Attrib V60    0.45744729684189717
#>     Attrib V7    -0.14512463168318748
#>     Attrib V8    -0.10202929245910294
#>     Attrib V9    0.2060835851004545
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.265735615033042
#>     Attrib V1    0.26443664624019675
#>     Attrib V10    0.9412990739685076
#>     Attrib V11    1.3657565797513875
#>     Attrib V12    1.0112070919949152
#>     Attrib V13    0.45855660619660144
#>     Attrib V14    -1.1032481958614435
#>     Attrib V15    -0.4899247799290459
#>     Attrib V16    -0.596112913527035
#>     Attrib V17    -0.30051498497108575
#>     Attrib V18    -0.21034852996880155
#>     Attrib V19    0.24279818446098744
#>     Attrib V2    -0.00877407471457665
#>     Attrib V20    -0.3798537500441343
#>     Attrib V21    -0.35779284758539176
#>     Attrib V22    -0.584798263463758
#>     Attrib V23    0.16233295145197082
#>     Attrib V24    1.3410779748136754
#>     Attrib V25    0.903869722084902
#>     Attrib V26    0.8036272786934852
#>     Attrib V27    0.6829811611149899
#>     Attrib V28    1.0450045915446526
#>     Attrib V29    0.18887210738323743
#>     Attrib V3    -0.5701483213478783
#>     Attrib V30    -0.006918446463565177
#>     Attrib V31    -0.4843948530679487
#>     Attrib V32    -0.07984891230233618
#>     Attrib V33    0.10593644173739795
#>     Attrib V34    0.45164943604276103
#>     Attrib V35    0.7257458245800317
#>     Attrib V36    -0.6172141983852794
#>     Attrib V37    -0.526203499150983
#>     Attrib V38    -0.3788461176336241
#>     Attrib V39    0.2254200407053592
#>     Attrib V4    -0.09949083686722894
#>     Attrib V40    -0.4423296124949775
#>     Attrib V41    0.8658437461875558
#>     Attrib V42    0.12658273288846744
#>     Attrib V43    0.3694244321816501
#>     Attrib V44    0.41140422591074527
#>     Attrib V45    0.9303937533338411
#>     Attrib V46    1.128995044579645
#>     Attrib V47    0.739088779179302
#>     Attrib V48    0.6173888641152917
#>     Attrib V49    0.8501115165623216
#>     Attrib V5    0.5902355317532618
#>     Attrib V50    -0.1001203095488443
#>     Attrib V51    0.4818582398033623
#>     Attrib V52    0.5754064240783582
#>     Attrib V53    0.2512713139446394
#>     Attrib V54    -0.0956126670671185
#>     Attrib V55    -0.43183721174572226
#>     Attrib V56    -0.6015057630343261
#>     Attrib V57    -0.9442567751534608
#>     Attrib V58    0.2974071037722424
#>     Attrib V59    0.03266213536585615
#>     Attrib V6    0.15956250474183226
#>     Attrib V60    0.034666812944085544
#>     Attrib V7    -0.550768563398447
#>     Attrib V8    -0.33738976234493545
#>     Attrib V9    0.9350071863236618
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.3987132763163484
#>     Attrib V1    -0.2779466400076367
#>     Attrib V10    -0.0458457302967885
#>     Attrib V11    -0.4117319829429089
#>     Attrib V12    -0.25348052705140545
#>     Attrib V13    0.061990388195953296
#>     Attrib V14    0.9009274103543693
#>     Attrib V15    0.0075589875244578345
#>     Attrib V16    0.05998587451176989
#>     Attrib V17    0.17878538470897978
#>     Attrib V18    0.32046846331062906
#>     Attrib V19    -0.21117510219916735
#>     Attrib V2    -0.16921682019457807
#>     Attrib V20    -0.03741353917362656
#>     Attrib V21    -0.11033941383560948
#>     Attrib V22    0.0745973873290473
#>     Attrib V23    0.10454917063464217
#>     Attrib V24    -0.7443194792213195
#>     Attrib V25    0.06693699020409762
#>     Attrib V26    0.7702849561955541
#>     Attrib V27    0.5685842800898824
#>     Attrib V28    -0.3847232389513055
#>     Attrib V29    -0.29097768139221064
#>     Attrib V3    0.5245128672305287
#>     Attrib V30    -0.29260138250836604
#>     Attrib V31    0.6081837435625311
#>     Attrib V32    -0.3485967051853927
#>     Attrib V33    -0.45666831234523786
#>     Attrib V34    0.09963367253382878
#>     Attrib V35    0.13782770090879856
#>     Attrib V36    0.7595894393215138
#>     Attrib V37    0.620100352010728
#>     Attrib V38    0.1707045141607432
#>     Attrib V39    -0.15091895656899684
#>     Attrib V4    0.266348203777243
#>     Attrib V40    0.3957752366445666
#>     Attrib V41    -0.36209196403349014
#>     Attrib V42    -0.2832958783408447
#>     Attrib V43    -0.21239857658841138
#>     Attrib V44    -0.3712371656147527
#>     Attrib V45    -0.5507205040556745
#>     Attrib V46    -0.5785110454411779
#>     Attrib V47    0.03658420838238765
#>     Attrib V48    -0.1395287887198806
#>     Attrib V49    -0.4573476094669724
#>     Attrib V5    0.11258055929882081
#>     Attrib V50    0.522701437244033
#>     Attrib V51    -0.03412156940335077
#>     Attrib V52    -0.16163931024332004
#>     Attrib V53    -0.015376403123212878
#>     Attrib V54    -0.05403337632163095
#>     Attrib V55    0.5327952742629025
#>     Attrib V56    0.0892499314791657
#>     Attrib V57    0.3104860914471682
#>     Attrib V58    -0.3065718335075836
#>     Attrib V59    -0.3821053858816338
#>     Attrib V6    0.15924722670588368
#>     Attrib V60    -0.300051758836552
#>     Attrib V7    0.10186906314031978
#>     Attrib V8    0.08700019621042801
#>     Attrib V9    -0.31747193222745873
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.019724166152507886
#>     Attrib V1    0.36364107871544493
#>     Attrib V10    -0.32727514925837303
#>     Attrib V11    -0.007455010080928489
#>     Attrib V12    0.061229853233649933
#>     Attrib V13    -0.17428490768090704
#>     Attrib V14    -0.49092789402723036
#>     Attrib V15    0.2547528662947026
#>     Attrib V16    0.3421897813711189
#>     Attrib V17    0.09111533809489807
#>     Attrib V18    -0.08535512882633849
#>     Attrib V19    0.33596701645449206
#>     Attrib V2    0.3550098064032694
#>     Attrib V20    0.4837527876339797
#>     Attrib V21    0.5164723041152706
#>     Attrib V22    0.25427449238965794
#>     Attrib V23    -0.017907934685082113
#>     Attrib V24    0.4990987701640744
#>     Attrib V25    -0.16213718056244916
#>     Attrib V26    -1.1199920903496314
#>     Attrib V27    -0.988131926227979
#>     Attrib V28    -0.06617334566873347
#>     Attrib V29    -0.09341945432098216
#>     Attrib V3    -0.22640761383624153
#>     Attrib V30    0.24592812807993916
#>     Attrib V31    -0.7802187125798479
#>     Attrib V32    0.13158071248647657
#>     Attrib V33    0.482234161747743
#>     Attrib V34    -0.16436666189367657
#>     Attrib V35    -0.33612900463783363
#>     Attrib V36    -0.5553844991322805
#>     Attrib V37    -0.6126299329745446
#>     Attrib V38    0.06513574811221626
#>     Attrib V39    0.1959235398730469
#>     Attrib V4    -0.12861072609933583
#>     Attrib V40    -0.17285107839586802
#>     Attrib V41    -0.04608283171626189
#>     Attrib V42    0.25557987843675034
#>     Attrib V43    0.18171278444651712
#>     Attrib V44    0.4227835431509633
#>     Attrib V45    0.4511123102159716
#>     Attrib V46    0.2500595082778993
#>     Attrib V47    -0.24153605268503822
#>     Attrib V48    -0.01352855617227542
#>     Attrib V49    0.32135482165763735
#>     Attrib V5    -0.28985103784798294
#>     Attrib V50    -0.39914270523569667
#>     Attrib V51    0.002458873902046977
#>     Attrib V52    -0.03732423513690209
#>     Attrib V53    0.2597429257994749
#>     Attrib V54    0.4723777644338181
#>     Attrib V55    -0.27765772804347055
#>     Attrib V56    0.42945949122482496
#>     Attrib V57    0.0019397167755273767
#>     Attrib V58    0.31282203759062016
#>     Attrib V59    0.7016113117959536
#>     Attrib V6    -0.4190075061354304
#>     Attrib V60    0.6767777577714419
#>     Attrib V7    -0.00586998524140556
#>     Attrib V8    0.06182701275531597
#>     Attrib V9    0.03355146735440074
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.05721375939052616
#>     Attrib V1    0.4332326485187213
#>     Attrib V10    -0.5410417884814949
#>     Attrib V11    -0.13596929032642546
#>     Attrib V12    -0.13098187220858534
#>     Attrib V13    -0.2056652032759009
#>     Attrib V14    -0.3796456094194601
#>     Attrib V15    0.3888008280078413
#>     Attrib V16    0.48981815070469414
#>     Attrib V17    0.07489381858496301
#>     Attrib V18    -0.12923621947070113
#>     Attrib V19    0.42661658866413515
#>     Attrib V2    0.5161644800414973
#>     Attrib V20    0.5230575075228426
#>     Attrib V21    0.6629520876660145
#>     Attrib V22    0.4296729432301226
#>     Attrib V23    -0.004849853129676258
#>     Attrib V24    0.45531634090881384
#>     Attrib V25    -0.35837239943920474
#>     Attrib V26    -1.3470100949872044
#>     Attrib V27    -1.0723997440965958
#>     Attrib V28    -0.023246716034601825
#>     Attrib V29    0.13858470934983586
#>     Attrib V3    -0.19896465551615264
#>     Attrib V30    0.3102222483236704
#>     Attrib V31    -0.9286291920200521
#>     Attrib V32    0.10980363867315941
#>     Attrib V33    0.5354131986747377
#>     Attrib V34    -0.3427987454979471
#>     Attrib V35    -0.5477745725988399
#>     Attrib V36    -0.6312673801814171
#>     Attrib V37    -0.612406144293254
#>     Attrib V38    0.11284384194050577
#>     Attrib V39    0.2728584625780685
#>     Attrib V4    -0.09532587539261483
#>     Attrib V40    -0.06114750377570834
#>     Attrib V41    0.02035887779843192
#>     Attrib V42    0.32293441273943535
#>     Attrib V43    0.20035321870194245
#>     Attrib V44    0.3821210804316524
#>     Attrib V45    0.42431243681032865
#>     Attrib V46    0.2903048043970756
#>     Attrib V47    -0.36688230334092486
#>     Attrib V48    -0.06682262359902702
#>     Attrib V49    0.3109276570053867
#>     Attrib V5    -0.36294483649697595
#>     Attrib V50    -0.4962760447562074
#>     Attrib V51    -0.0760517273299686
#>     Attrib V52    -0.012402731168192816
#>     Attrib V53    0.3358410711434063
#>     Attrib V54    0.6013398389109722
#>     Attrib V55    -0.3248956303837435
#>     Attrib V56    0.5280299663646287
#>     Attrib V57    0.10164174641437271
#>     Attrib V58    0.3729589334639172
#>     Attrib V59    0.9660872178294432
#>     Attrib V6    -0.41622762698562604
#>     Attrib V60    0.8566466104973754
#>     Attrib V7    0.17173657195691736
#>     Attrib V8    0.11639515149366021
#>     Attrib V9    -0.07532863946898001
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.0554114177264448
#>     Attrib V1    0.40121345349885557
#>     Attrib V10    -0.4154472937212909
#>     Attrib V11    -0.11536976598296789
#>     Attrib V12    -0.04662826317088118
#>     Attrib V13    -0.1021801351107427
#>     Attrib V14    -0.37209806848284427
#>     Attrib V15    0.3251646044648196
#>     Attrib V16    0.35955732796525347
#>     Attrib V17    0.0921625515714832
#>     Attrib V18    -0.09497137557647611
#>     Attrib V19    0.3153084908032371
#>     Attrib V2    0.38689390380059946
#>     Attrib V20    0.4651501099693942
#>     Attrib V21    0.5697238755519727
#>     Attrib V22    0.2898815831608695
#>     Attrib V23    0.004832594352561545
#>     Attrib V24    0.45349687952505346
#>     Attrib V25    -0.21092290785666556
#>     Attrib V26    -1.1603187180312315
#>     Attrib V27    -0.9306620980056595
#>     Attrib V28    -0.1019620659185118
#>     Attrib V29    0.015480490594075334
#>     Attrib V3    -0.09395045767865487
#>     Attrib V30    0.2328510922935237
#>     Attrib V31    -0.8056938803466523
#>     Attrib V32    0.11122012890666787
#>     Attrib V33    0.4115568283721845
#>     Attrib V34    -0.24459886866970967
#>     Attrib V35    -0.45856385886749457
#>     Attrib V36    -0.5752165280679145
#>     Attrib V37    -0.5230882374680494
#>     Attrib V38    0.06477307969814587
#>     Attrib V39    0.2991674564489722
#>     Attrib V4    -0.09997610434712444
#>     Attrib V40    -0.07811187968627721
#>     Attrib V41    0.007926777197865805
#>     Attrib V42    0.2780503079708747
#>     Attrib V43    0.10509837457551176
#>     Attrib V44    0.3350803910655882
#>     Attrib V45    0.2935337772693366
#>     Attrib V46    0.23537041669455402
#>     Attrib V47    -0.2455355896349286
#>     Attrib V48    -0.06816880466539292
#>     Attrib V49    0.3174730841759944
#>     Attrib V5    -0.2882314259755322
#>     Attrib V50    -0.40499824280455526
#>     Attrib V51    -0.07307916349636304
#>     Attrib V52    -0.05680669809955916
#>     Attrib V53    0.28242492014001375
#>     Attrib V54    0.46515649449559765
#>     Attrib V55    -0.26781690954551984
#>     Attrib V56    0.45334565308044533
#>     Attrib V57    0.07948445139881048
#>     Attrib V58    0.2868145834254594
#>     Attrib V59    0.840117017259749
#>     Attrib V6    -0.3416088081380849
#>     Attrib V60    0.7792206654577788
#>     Attrib V7    0.13715325903337353
#>     Attrib V8    0.001252853268814128
#>     Attrib V9    -0.057782504442903455
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -5.096117835970123E-4
#>     Attrib V1    0.4188911134711801
#>     Attrib V10    -0.2743115279500507
#>     Attrib V11    0.05154362446938644
#>     Attrib V12    0.060016452995968715
#>     Attrib V13    -0.16908990442853458
#>     Attrib V14    -0.4195044520644173
#>     Attrib V15    0.2366872228342453
#>     Attrib V16    0.24298031002381437
#>     Attrib V17    0.07970836798668017
#>     Attrib V18    -0.06427980434855234
#>     Attrib V19    0.17903160496561707
#>     Attrib V2    0.3474206627855843
#>     Attrib V20    0.2329191410770253
#>     Attrib V21    0.28008753986608786
#>     Attrib V22    0.06873004073736604
#>     Attrib V23    -0.1124517668675931
#>     Attrib V24    0.30536321270128863
#>     Attrib V25    -0.12927091572354288
#>     Attrib V26    -0.8321236919555446
#>     Attrib V27    -0.8713877488269075
#>     Attrib V28    -0.2778988764613567
#>     Attrib V29    -0.25446371153988273
#>     Attrib V3    -0.17207332366959913
#>     Attrib V30    0.09794011528400555
#>     Attrib V31    -0.5189307544153196
#>     Attrib V32    0.16883214911815933
#>     Attrib V33    0.41234653130615084
#>     Attrib V34    -0.148269568066115
#>     Attrib V35    -0.2667348416806964
#>     Attrib V36    -0.46391926126119454
#>     Attrib V37    -0.44024497344856744
#>     Attrib V38    -0.036790630360943335
#>     Attrib V39    0.1548686315562981
#>     Attrib V4    -0.03470296929486631
#>     Attrib V40    -0.16340357914981693
#>     Attrib V41    -0.10511483947917916
#>     Attrib V42    0.048578534409435166
#>     Attrib V43    0.06573508714225786
#>     Attrib V44    0.25676472696600144
#>     Attrib V45    0.15437204844308852
#>     Attrib V46    0.1488751043887447
#>     Attrib V47    -0.2389004817875217
#>     Attrib V48    0.04441388628754635
#>     Attrib V49    0.25287162215495906
#>     Attrib V5    -0.21634446309606742
#>     Attrib V50    -0.3456577787690327
#>     Attrib V51    -0.07051092063419159
#>     Attrib V52    -0.045010557034785875
#>     Attrib V53    0.1500180361125148
#>     Attrib V54    0.3847373661261439
#>     Attrib V55    -0.06603215921745584
#>     Attrib V56    0.39729139999078317
#>     Attrib V57    0.10580367084437131
#>     Attrib V58    0.28450788086013884
#>     Attrib V59    0.658749223662042
#>     Attrib V6    -0.3105919635860229
#>     Attrib V60    0.6299258605841166
#>     Attrib V7    0.07042990496208436
#>     Attrib V8    -0.041479180475693475
#>     Attrib V9    -0.045505214986541656
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.4032517993548467
#>     Attrib V1    -0.4651651408842334
#>     Attrib V10    0.006905292059623225
#>     Attrib V11    -0.5531750931833535
#>     Attrib V12    -0.3240636561120408
#>     Attrib V13    0.017099909281112144
#>     Attrib V14    1.0441163648509066
#>     Attrib V15    0.062230364800792796
#>     Attrib V16    0.023596635365747437
#>     Attrib V17    0.23794481812600943
#>     Attrib V18    0.31335537765571486
#>     Attrib V19    -0.3221831858872188
#>     Attrib V2    -0.3349725865724921
#>     Attrib V20    -0.16479690712077652
#>     Attrib V21    -0.30247532845154684
#>     Attrib V22    0.008204154992769995
#>     Attrib V23    0.055250870585013837
#>     Attrib V24    -0.9243333177441299
#>     Attrib V25    0.03100552574814783
#>     Attrib V26    1.012159439655965
#>     Attrib V27    0.7375356836648794
#>     Attrib V28    -0.41495362677427877
#>     Attrib V29    -0.19753153417006622
#>     Attrib V3    0.6316045794202877
#>     Attrib V30    -0.41558757019712855
#>     Attrib V31    0.8066761496981241
#>     Attrib V32    -0.3379984010464998
#>     Attrib V33    -0.6596453186881366
#>     Attrib V34    0.15283331669547756
#>     Attrib V35    0.20177012694315677
#>     Attrib V36    0.9545801960269841
#>     Attrib V37    0.8938182668437079
#>     Attrib V38    0.12533840711906782
#>     Attrib V39    -0.2013938428033888
#>     Attrib V4    0.33191606464145534
#>     Attrib V40    0.4375098822814058
#>     Attrib V41    -0.39444001019518093
#>     Attrib V42    -0.40444730877063434
#>     Attrib V43    -0.30539609785818267
#>     Attrib V44    -0.5241305693930104
#>     Attrib V45    -0.6532970130991365
#>     Attrib V46    -0.5772231105375107
#>     Attrib V47    0.14172293642142872
#>     Attrib V48    -0.10350261967607814
#>     Attrib V49    -0.5566419327598527
#>     Attrib V5    0.2225522831008183
#>     Attrib V50    0.6838175228538566
#>     Attrib V51    0.030143593034244073
#>     Attrib V52    -0.14900560716419498
#>     Attrib V53    -0.017734151933495704
#>     Attrib V54    -0.19378275044117424
#>     Attrib V55    0.6707202404745594
#>     Attrib V56    -0.005733429028259856
#>     Attrib V57    0.3037691136463998
#>     Attrib V58    -0.383869692844594
#>     Attrib V59    -0.58934820868341
#>     Attrib V6    0.2815616428492646
#>     Attrib V60    -0.46168627019682146
#>     Attrib V7    0.11378958764191002
#>     Attrib V8    0.11588344090453725
#>     Attrib V9    -0.2972978014878433
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.17932723090621872
#>     Attrib V1    -0.017648729593466014
#>     Attrib V10    0.07410426587043875
#>     Attrib V11    -0.017346043232338175
#>     Attrib V12    -0.007961948648748923
#>     Attrib V13    0.035976233013887
#>     Attrib V14    0.07769779225689612
#>     Attrib V15    0.025912080967650568
#>     Attrib V16    0.11461896757557989
#>     Attrib V17    0.1461813455587128
#>     Attrib V18    0.13155642972373716
#>     Attrib V19    0.0143378160056834
#>     Attrib V2    -0.014958126115623898
#>     Attrib V20    -0.026663364009919577
#>     Attrib V21    -0.037594728515689485
#>     Attrib V22    0.00782314958066113
#>     Attrib V23    -0.007604508072977597
#>     Attrib V24    -0.09018383795434155
#>     Attrib V25    -0.02015542507348419
#>     Attrib V26    0.0020018863054893587
#>     Attrib V27    -0.022217696055949157
#>     Attrib V28    -0.10263528741396975
#>     Attrib V29    -0.12208021304675501
#>     Attrib V3    0.15025395789986457
#>     Attrib V30    -0.129038927850746
#>     Attrib V31    0.07061563043854607
#>     Attrib V32    0.03802849286173838
#>     Attrib V33    0.008565302672831463
#>     Attrib V34    0.13798037310185102
#>     Attrib V35    0.11069001036746805
#>     Attrib V36    0.1795868390605682
#>     Attrib V37    0.23235676782766504
#>     Attrib V38    0.0581731334593871
#>     Attrib V39    0.017920135991031743
#>     Attrib V4    0.1043611011826372
#>     Attrib V40    0.11239132928572859
#>     Attrib V41    0.0715597976130062
#>     Attrib V42    0.08266800745723704
#>     Attrib V43    -0.01838241227248924
#>     Attrib V44    -0.05868893663357831
#>     Attrib V45    -0.04782580345728975
#>     Attrib V46    -0.01908720934213559
#>     Attrib V47    0.044596686860438314
#>     Attrib V48    -0.0319647213543221
#>     Attrib V49    -0.08541696948412976
#>     Attrib V5    0.10531971503127002
#>     Attrib V50    0.11434782722064135
#>     Attrib V51    0.09218632241672273
#>     Attrib V52    0.07050638612456733
#>     Attrib V53    0.06782516296827835
#>     Attrib V54    -0.04596342057424619
#>     Attrib V55    0.10341435164324167
#>     Attrib V56    0.0715680857864728
#>     Attrib V57    0.14536395339060215
#>     Attrib V58    0.06677407520819052
#>     Attrib V59    -0.09148802503671029
#>     Attrib V6    0.13328396256837347
#>     Attrib V60    9.999572634859506E-4
#>     Attrib V7    0.032551052846294885
#>     Attrib V8    0.049219433720243656
#>     Attrib V9    0.06426695143049371
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.02189015402327532
#>     Attrib V1    0.2718322635047887
#>     Attrib V10    -0.147827666627449
#>     Attrib V11    0.023361776203267282
#>     Attrib V12    -0.018488308372776326
#>     Attrib V13    -0.13173500700518093
#>     Attrib V14    -0.28805842949481136
#>     Attrib V15    0.17698213511517327
#>     Attrib V16    0.16207124306919313
#>     Attrib V17    0.04692819005129788
#>     Attrib V18    -0.04256725335329863
#>     Attrib V19    0.15878208610551928
#>     Attrib V2    0.2791426897353354
#>     Attrib V20    0.13523936119623267
#>     Attrib V21    0.1842997649685483
#>     Attrib V22    0.07113061035017591
#>     Attrib V23    -0.14595252296287067
#>     Attrib V24    0.21049551437872774
#>     Attrib V25    -0.14759670540295539
#>     Attrib V26    -0.5815286417320812
#>     Attrib V27    -0.5513002699228428
#>     Attrib V28    -0.16124265160188936
#>     Attrib V29    -0.13808462845497982
#>     Attrib V3    -0.08006052136398431
#>     Attrib V30    0.07926914261784973
#>     Attrib V31    -0.3177094871781191
#>     Attrib V32    0.05905737959313075
#>     Attrib V33    0.2842287380464513
#>     Attrib V34    -0.10396494016262577
#>     Attrib V35    -0.13574151887840685
#>     Attrib V36    -0.3104135877935888
#>     Attrib V37    -0.3273617361491516
#>     Attrib V38    0.001308707282485315
#>     Attrib V39    0.10482771699688342
#>     Attrib V4    0.012361207299863137
#>     Attrib V40    -0.17224419764473495
#>     Attrib V41    -0.052403595702585896
#>     Attrib V42    0.03819373786551536
#>     Attrib V43    0.12511532364025346
#>     Attrib V44    0.20604260687935774
#>     Attrib V45    0.18911045031170673
#>     Attrib V46    0.07087746060245888
#>     Attrib V47    -0.17942269788882748
#>     Attrib V48    0.052087709456704885
#>     Attrib V49    0.10285892205868492
#>     Attrib V5    -0.10041043187352967
#>     Attrib V50    -0.22519848942132778
#>     Attrib V51    -9.005974731565593E-4
#>     Attrib V52    -0.02881459315618875
#>     Attrib V53    0.12853490039858897
#>     Attrib V54    0.1387911892197326
#>     Attrib V55    -0.04145122925969613
#>     Attrib V56    0.2495896747213559
#>     Attrib V57    0.08033172504283959
#>     Attrib V58    0.14760844459426045
#>     Attrib V59    0.38799806635825
#>     Attrib V6    -0.22743626757397645
#>     Attrib V60    0.39871584670208704
#>     Attrib V7    -0.0668743460076835
#>     Attrib V8    0.007614178450147755
#>     Attrib V9    -0.007510180639544698
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.21365117011236126
#>     Attrib V1    0.09939415157248604
#>     Attrib V10    0.003956623167353916
#>     Attrib V11    0.019692188581874777
#>     Attrib V12    -0.001962845869687852
#>     Attrib V13    -0.024575215524138733
#>     Attrib V14    -0.02691947461349134
#>     Attrib V15    0.022424492975148116
#>     Attrib V16    0.0548793739815715
#>     Attrib V17    0.010351662026968878
#>     Attrib V18    0.05691403286177921
#>     Attrib V19    -0.03206203826376984
#>     Attrib V2    0.11895260091487214
#>     Attrib V20    -0.003956023756989376
#>     Attrib V21    0.013305856388945094
#>     Attrib V22    -0.07030562903791637
#>     Attrib V23    -0.07178523761982875
#>     Attrib V24    -0.03492794907116413
#>     Attrib V25    -0.03240642988139628
#>     Attrib V26    -0.09468303130531985
#>     Attrib V27    -0.11083871146659749
#>     Attrib V28    -0.0681302218046244
#>     Attrib V29    -0.06477688842235059
#>     Attrib V3    0.1305025167242008
#>     Attrib V30    -0.04507591068544993
#>     Attrib V31    -0.05347430221407747
#>     Attrib V32    0.01927004735173047
#>     Attrib V33    0.07751843137655648
#>     Attrib V34    0.07431387633244298
#>     Attrib V35    0.030364937057313298
#>     Attrib V36    0.08705481544848265
#>     Attrib V37    0.005775773069719041
#>     Attrib V38    -0.004675624756432029
#>     Attrib V39    0.09586256305819779
#>     Attrib V4    0.062321153666149424
#>     Attrib V40    0.014874766800855473
#>     Attrib V41    -0.021996785764680088
#>     Attrib V42    0.05166358464992577
#>     Attrib V43    0.061339194973503486
#>     Attrib V44    0.1266237154229209
#>     Attrib V45    0.023598113131063796
#>     Attrib V46    0.04548565482284549
#>     Attrib V47    0.07891955851759294
#>     Attrib V48    0.05979850807699659
#>     Attrib V49    0.08102573857160682
#>     Attrib V5    0.06207793050930984
#>     Attrib V50    -0.04019788889997721
#>     Attrib V51    0.12310382895505796
#>     Attrib V52    0.05401458348246141
#>     Attrib V53    0.12842059730665012
#>     Attrib V54    0.017638644433267663
#>     Attrib V55    0.07837794848503249
#>     Attrib V56    0.14586602948372113
#>     Attrib V57    0.031143568015543334
#>     Attrib V58    0.11290617751190356
#>     Attrib V59    0.1642511564978316
#>     Attrib V6    -0.051426338584938225
#>     Attrib V60    0.2022528813284087
#>     Attrib V7    0.0011603374951195925
#>     Attrib V8    0.05886759219301111
#>     Attrib V9    0.04238063823211954
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.4283087225578952
#>     Attrib V1    0.18682684082326556
#>     Attrib V10    0.044782661266784894
#>     Attrib V11    0.4994901360701213
#>     Attrib V12    0.4662629872186377
#>     Attrib V13    0.1474287903531515
#>     Attrib V14    -0.5712121956121886
#>     Attrib V15    0.07725594239456084
#>     Attrib V16    -0.06287577691185202
#>     Attrib V17    -0.16061195463955533
#>     Attrib V18    -0.15074379893452836
#>     Attrib V19    0.44671192051762854
#>     Attrib V2    0.1345530561758126
#>     Attrib V20    0.1595277298375391
#>     Attrib V21    0.1474300574716243
#>     Attrib V22    -0.12718389610205494
#>     Attrib V23    -0.09663025782637297
#>     Attrib V24    0.843867866555423
#>     Attrib V25    0.1807764993453423
#>     Attrib V26    -0.35234551694820293
#>     Attrib V27    -0.07353931367014413
#>     Attrib V28    0.7752964398957976
#>     Attrib V29    0.38238204985240315
#>     Attrib V3    -0.5406391247828048
#>     Attrib V30    0.31871492916181815
#>     Attrib V31    -0.7558538758140801
#>     Attrib V32    -0.1940234293287129
#>     Attrib V33    0.37377109025502475
#>     Attrib V34    0.0828645810602326
#>     Attrib V35    0.2248244278991766
#>     Attrib V36    -0.552397232296234
#>     Attrib V37    -0.5951383645532935
#>     Attrib V38    -0.09246643351300383
#>     Attrib V39    0.20559830731228573
#>     Attrib V4    -0.251382277315944
#>     Attrib V40    -0.22013175362775472
#>     Attrib V41    0.38026538700391005
#>     Attrib V42    0.31375526458715597
#>     Attrib V43    0.30084874560430397
#>     Attrib V44    0.4491222590516403
#>     Attrib V45    0.7748927887059724
#>     Attrib V46    0.5957380348464717
#>     Attrib V47    -0.09432050303442374
#>     Attrib V48    0.13037057230277166
#>     Attrib V49    0.6005500976366874
#>     Attrib V5    -0.05049727605456741
#>     Attrib V50    -0.498844846396899
#>     Attrib V51    -0.09550248045282043
#>     Attrib V52    0.16176088221662713
#>     Attrib V53    0.3992398600016389
#>     Attrib V54    0.3045836401274532
#>     Attrib V55    -0.43207925052539276
#>     Attrib V56    -0.09709844454759418
#>     Attrib V57    -0.4953874724945127
#>     Attrib V58    0.26454287811920024
#>     Attrib V59    0.5960857931095106
#>     Attrib V6    -0.22346831446544524
#>     Attrib V60    0.42972171791443026
#>     Attrib V7    -0.3146482588936446
#>     Attrib V8    -0.14856822204101114
#>     Attrib V9    0.2515931288558076
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.20286191639528794
#>     Attrib V1    0.34996241919461263
#>     Attrib V10    -0.2879811670603033
#>     Attrib V11    0.10298400981757642
#>     Attrib V12    0.1784334771210428
#>     Attrib V13    -0.011939252127035878
#>     Attrib V14    -0.4036792843538985
#>     Attrib V15    0.2636827242822713
#>     Attrib V16    0.22284725662740734
#>     Attrib V17    -0.014206437349939505
#>     Attrib V18    -0.061596382472730395
#>     Attrib V19    0.620155458119602
#>     Attrib V2    0.3102775795570387
#>     Attrib V20    0.6445617395637059
#>     Attrib V21    0.7151291466254232
#>     Attrib V22    0.3948490690483941
#>     Attrib V23    0.09425286439839262
#>     Attrib V24    0.6602093793642942
#>     Attrib V25    -0.19520666928524663
#>     Attrib V26    -0.9247492598006368
#>     Attrib V27    -0.5631239970507451
#>     Attrib V28    0.4871758783672126
#>     Attrib V29    0.4751292923483734
#>     Attrib V3    -0.3230735075428223
#>     Attrib V30    0.5334714725799539
#>     Attrib V31    -1.041420402509879
#>     Attrib V32    -0.26617974407194894
#>     Attrib V33    0.3397501689090443
#>     Attrib V34    -0.29856861089240166
#>     Attrib V35    -0.1798691494610003
#>     Attrib V36    -0.3986776080350995
#>     Attrib V37    -0.4652930168499819
#>     Attrib V38    0.31647160988225903
#>     Attrib V39    0.43281974355973846
#>     Attrib V4    -0.1922099853211217
#>     Attrib V40    -0.11036769751765835
#>     Attrib V41    0.2224907425037085
#>     Attrib V42    0.3516443383975974
#>     Attrib V43    0.3791502903203306
#>     Attrib V44    0.681422669938563
#>     Attrib V45    0.7156498071806868
#>     Attrib V46    0.36853298981592286
#>     Attrib V47    -0.3459200651954838
#>     Attrib V48    -0.0752380016014252
#>     Attrib V49    0.44945183952672346
#>     Attrib V5    -0.22842246851407902
#>     Attrib V50    -0.49763301114432695
#>     Attrib V51    -0.03499834423492541
#>     Attrib V52    0.03196671439531088
#>     Attrib V53    0.4219544123685048
#>     Attrib V54    0.5371218804817984
#>     Attrib V55    -0.4675932699300794
#>     Attrib V56    0.35862409297210796
#>     Attrib V57    -0.336001949288253
#>     Attrib V58    0.2310106080091237
#>     Attrib V59    0.9899361679548329
#>     Attrib V6    -0.45103831953437235
#>     Attrib V60    0.7979418174543386
#>     Attrib V7    -0.09763865008458415
#>     Attrib V8    -0.12166303796034666
#>     Attrib V9    0.05742481541355897
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.25317774746875954
#>     Attrib V1    -0.38818403595323625
#>     Attrib V10    0.013731204653121342
#>     Attrib V11    -0.4386438330686293
#>     Attrib V12    -0.31005678280156196
#>     Attrib V13    0.0026836374217736143
#>     Attrib V14    0.8806025824165202
#>     Attrib V15    -0.029087515081745154
#>     Attrib V16    -0.03170300026299758
#>     Attrib V17    0.19889484696390727
#>     Attrib V18    0.29538896164425404
#>     Attrib V19    -0.3203769863220074
#>     Attrib V2    -0.3080495751522381
#>     Attrib V20    -0.1464638216342784
#>     Attrib V21    -0.2023390296756482
#>     Attrib V22    -0.060173470935193214
#>     Attrib V23    0.03833368093427763
#>     Attrib V24    -0.7939674844011256
#>     Attrib V25    0.04625375368660515
#>     Attrib V26    0.9067180456697432
#>     Attrib V27    0.721005249326584
#>     Attrib V28    -0.31751665165325815
#>     Attrib V29    -0.11432175013281877
#>     Attrib V3    0.4780347822492405
#>     Attrib V30    -0.2907858107320667
#>     Attrib V31    0.7346714314449718
#>     Attrib V32    -0.3271262126003252
#>     Attrib V33    -0.5680068337345293
#>     Attrib V34    0.11511495066391396
#>     Attrib V35    0.21880939115311188
#>     Attrib V36    0.8666101424753854
#>     Attrib V37    0.8346353324460325
#>     Attrib V38    0.12703928413023652
#>     Attrib V39    -0.14872149944748841
#>     Attrib V4    0.308079207533126
#>     Attrib V40    0.4285098636617541
#>     Attrib V41    -0.2560850103595287
#>     Attrib V42    -0.3647434355818357
#>     Attrib V43    -0.20965951223362253
#>     Attrib V44    -0.38296543396459504
#>     Attrib V45    -0.5762054760972446
#>     Attrib V46    -0.5452080303845314
#>     Attrib V47    0.08206588247979758
#>     Attrib V48    -0.07221140503964803
#>     Attrib V49    -0.48963390925662376
#>     Attrib V5    0.19950761039055992
#>     Attrib V50    0.5677177667296494
#>     Attrib V51    0.008411706085106885
#>     Attrib V52    -0.0861916764855556
#>     Attrib V53    -0.03158231587560621
#>     Attrib V54    -0.17881777970586463
#>     Attrib V55    0.5203880119714751
#>     Attrib V56    -0.10316476341479863
#>     Attrib V57    0.29709316313192907
#>     Attrib V58    -0.35676641351146615
#>     Attrib V59    -0.47789011856124247
#>     Attrib V6    0.21923720785540998
#>     Attrib V60    -0.39024323430396174
#>     Attrib V7    0.11020350186422338
#>     Attrib V8    0.038000779308395856
#>     Attrib V9    -0.21937290486810063
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.054931073425284214
#>     Attrib V1    0.25541387353939377
#>     Attrib V10    -0.15592083933327283
#>     Attrib V11    0.014389045306359703
#>     Attrib V12    0.022560404740700046
#>     Attrib V13    -0.09083490522329024
#>     Attrib V14    -0.11879844949369468
#>     Attrib V15    0.08444293626460066
#>     Attrib V16    0.18043314771107521
#>     Attrib V17    0.05003549863034013
#>     Attrib V18    -0.03330328532220021
#>     Attrib V19    0.03367012576004442
#>     Attrib V2    0.19023903986417992
#>     Attrib V20    0.039074908366283155
#>     Attrib V21    0.03115450418653566
#>     Attrib V22    -0.1565478093407339
#>     Attrib V23    -0.25107464775842064
#>     Attrib V24    0.11815592892051908
#>     Attrib V25    -0.13783327056056913
#>     Attrib V26    -0.4574255967719743
#>     Attrib V27    -0.4381573482902317
#>     Attrib V28    -0.1808444296272365
#>     Attrib V29    -0.07736720516222619
#>     Attrib V3    -0.04573896124825398
#>     Attrib V30    0.002359786869461093
#>     Attrib V31    -0.22165707961317227
#>     Attrib V32    0.03468624895491114
#>     Attrib V33    0.13776252220228616
#>     Attrib V34    -0.061487601373569525
#>     Attrib V35    -0.09343000435388844
#>     Attrib V36    -0.18366519347604426
#>     Attrib V37    -0.2411608763963011
#>     Attrib V38    -0.0785970373358095
#>     Attrib V39    0.03653328905317787
#>     Attrib V4    0.06913373957057938
#>     Attrib V40    -0.08547955388102382
#>     Attrib V41    -0.1118836670292314
#>     Attrib V42    0.006169025228838167
#>     Attrib V43    0.13012816948667277
#>     Attrib V44    0.12932943330501762
#>     Attrib V45    0.05972306858271147
#>     Attrib V46    0.10225054209005008
#>     Attrib V47    -0.11269349360533594
#>     Attrib V48    0.10243798199180533
#>     Attrib V49    0.13759336210016912
#>     Attrib V5    -0.003772061901628498
#>     Attrib V50    -0.15980971660358684
#>     Attrib V51    0.0017548900926061004
#>     Attrib V52    0.017185409210354243
#>     Attrib V53    0.1757976796175524
#>     Attrib V54    0.20107424989432734
#>     Attrib V55    0.0718717572676861
#>     Attrib V56    0.24947169164329278
#>     Attrib V57    0.11528863562979379
#>     Attrib V58    0.2398864762598711
#>     Attrib V59    0.4571694991292582
#>     Attrib V6    -0.14602245351000528
#>     Attrib V60    0.42085353425964606
#>     Attrib V7    -0.014375828804555197
#>     Attrib V8    -0.0667868715230989
#>     Attrib V9    -0.03720332645259105
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.03470804225416029
#>     Attrib V1    0.23665511229355707
#>     Attrib V10    -0.20478558860325266
#>     Attrib V11    0.054701928215548
#>     Attrib V12    0.10180902871255644
#>     Attrib V13    -0.032843363082743694
#>     Attrib V14    -0.11233792834346425
#>     Attrib V15    0.11232060162263334
#>     Attrib V16    0.09768140699833655
#>     Attrib V17    0.08373884843900042
#>     Attrib V18    -0.010998739184285315
#>     Attrib V19    0.09255138401713503
#>     Attrib V2    0.14853622508121886
#>     Attrib V20    0.027332227395091238
#>     Attrib V21    0.028582782208109007
#>     Attrib V22    -0.11339854803949521
#>     Attrib V23    -0.17160305222942526
#>     Attrib V24    0.07674153984156018
#>     Attrib V25    -0.10648518997677119
#>     Attrib V26    -0.3719354215749707
#>     Attrib V27    -0.4027242145856778
#>     Attrib V28    -0.13515331794816235
#>     Attrib V29    -0.11998347215530374
#>     Attrib V3    0.022416653014923408
#>     Attrib V30    0.004625290445463101
#>     Attrib V31    -0.28728925331049543
#>     Attrib V32    -0.004004188483118062
#>     Attrib V33    0.15272480101756994
#>     Attrib V34    -0.060639000959065215
#>     Attrib V35    -0.026497923119906383
#>     Attrib V36    -0.16671823977640818
#>     Attrib V37    -0.19810426133087997
#>     Attrib V38    -0.047672526484416396
#>     Attrib V39    0.08312773812070948
#>     Attrib V4    0.10643714811693511
#>     Attrib V40    -0.1137199543138503
#>     Attrib V41    -0.0664357531011487
#>     Attrib V42    0.02581797785918409
#>     Attrib V43    0.14465925704328586
#>     Attrib V44    0.1574765459695949
#>     Attrib V45    0.15976332621166842
#>     Attrib V46    0.08691205929695174
#>     Attrib V47    -0.03534234841250431
#>     Attrib V48    0.03151666726059799
#>     Attrib V49    0.13063896111960435
#>     Attrib V5    -0.009811585228714007
#>     Attrib V50    -0.18561476340597685
#>     Attrib V51    -0.005920974608587499
#>     Attrib V52    0.0716391495241291
#>     Attrib V53    0.2713215491667751
#>     Attrib V54    0.20760490127250242
#>     Attrib V55    0.07089847364842708
#>     Attrib V56    0.2889854138218012
#>     Attrib V57    0.05785253870307997
#>     Attrib V58    0.1966326149752384
#>     Attrib V59    0.5220460879348976
#>     Attrib V6    -0.16076190516316946
#>     Attrib V60    0.3851270206955034
#>     Attrib V7    -0.05756019083642547
#>     Attrib V8    -0.0464950683991011
#>     Attrib V9    -0.05399275551228179
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.5270965240020334
#>     Attrib V1    -0.25361118267282934
#>     Attrib V10    -0.19644510397552314
#>     Attrib V11    -0.6409237230561603
#>     Attrib V12    -0.4441642567872411
#>     Attrib V13    -0.23184876008883162
#>     Attrib V14    0.6985218349550404
#>     Attrib V15    0.016315754204495134
#>     Attrib V16    0.06776156293078514
#>     Attrib V17    0.31603817226441816
#>     Attrib V18    0.19501507402039764
#>     Attrib V19    -0.46121062414962527
#>     Attrib V2    -0.07170343795087643
#>     Attrib V20    -0.03545938017109457
#>     Attrib V21    -0.05898005540216527
#>     Attrib V22    0.24785917167891025
#>     Attrib V23    0.15392076127499105
#>     Attrib V24    -0.9838513105898669
#>     Attrib V25    -0.08548673559261172
#>     Attrib V26    0.454706001554521
#>     Attrib V27    0.04516432274552762
#>     Attrib V28    -0.9661576149655328
#>     Attrib V29    -0.6023968752951473
#>     Attrib V3    0.6949279374709183
#>     Attrib V30    -0.3709641567476015
#>     Attrib V31    0.8184463955372558
#>     Attrib V32    0.19515833963860885
#>     Attrib V33    -0.43882891633140214
#>     Attrib V34    -0.1263226622351388
#>     Attrib V35    -0.2591429630741041
#>     Attrib V36    0.765622973776929
#>     Attrib V37    0.728127296861809
#>     Attrib V38    0.2784409154131308
#>     Attrib V39    -0.12419555017632762
#>     Attrib V4    0.3802758839476864
#>     Attrib V40    0.4308940500807529
#>     Attrib V41    -0.6395404494504853
#>     Attrib V42    -0.47753143785597146
#>     Attrib V43    -0.3640579254545386
#>     Attrib V44    -0.5901821571804362
#>     Attrib V45    -0.9526574109413708
#>     Attrib V46    -0.7898894437166651
#>     Attrib V47    -0.032984680114118946
#>     Attrib V48    -0.2538914480795859
#>     Attrib V49    -0.7553547283427438
#>     Attrib V5    -0.024446868840030094
#>     Attrib V50    0.5170527783792004
#>     Attrib V51    -0.007875224787646691
#>     Attrib V52    -0.2203263801046236
#>     Attrib V53    -0.37490686232822007
#>     Attrib V54    -0.18825244999094456
#>     Attrib V55    0.6291298622472686
#>     Attrib V56    0.33296815225660736
#>     Attrib V57    0.5923781440414425
#>     Attrib V58    -0.35842222741865
#>     Attrib V59    -0.6142545670533316
#>     Attrib V6    0.04885546834704951
#>     Attrib V60    -0.4104968735971489
#>     Attrib V7    0.31542504405712035
#>     Attrib V8    0.10900244700291765
#>     Attrib V9    -0.3159430748832503
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.2816452731159034
#>     Attrib V1    0.05793021395015726
#>     Attrib V10    1.1183610407712141
#>     Attrib V11    1.694957302181736
#>     Attrib V12    1.3693401539069823
#>     Attrib V13    0.7794176585270162
#>     Attrib V14    -1.124411627441569
#>     Attrib V15    -0.5283106583694421
#>     Attrib V16    -0.929192520812074
#>     Attrib V17    -0.29980591244100835
#>     Attrib V18    0.046246128827149666
#>     Attrib V19    0.8965737229231422
#>     Attrib V2    0.0731044414527053
#>     Attrib V20    0.0056360505473407214
#>     Attrib V21    -0.27485701734639084
#>     Attrib V22    -0.397073722713778
#>     Attrib V23    0.7558783751031436
#>     Attrib V24    2.096372042159411
#>     Attrib V25    1.3438832076552067
#>     Attrib V26    1.401765004704507
#>     Attrib V27    1.1813075858490407
#>     Attrib V28    1.4095867928555297
#>     Attrib V29    0.4426769706621855
#>     Attrib V3    -0.6554272381460156
#>     Attrib V30    -0.06733400270833842
#>     Attrib V31    -0.8176988977090668
#>     Attrib V32    -0.37236615387693045
#>     Attrib V33    -0.23844021286346348
#>     Attrib V34    0.3144595196257529
#>     Attrib V35    0.7082491435543502
#>     Attrib V36    -1.118490143533592
#>     Attrib V37    -0.7297430730121214
#>     Attrib V38    -0.22982673154567784
#>     Attrib V39    0.7624761932526206
#>     Attrib V4    -0.38731965323292045
#>     Attrib V40    -0.27775517130234845
#>     Attrib V41    1.2769609226424576
#>     Attrib V42    0.3160283729300083
#>     Attrib V43    0.22110330481707413
#>     Attrib V44    0.6104735684888475
#>     Attrib V45    1.364277993593375
#>     Attrib V46    1.525455897011403
#>     Attrib V47    1.0558617649855353
#>     Attrib V48    0.7899867556739671
#>     Attrib V49    1.3047234998792152
#>     Attrib V5    0.8302700802294288
#>     Attrib V50    0.30541694083554105
#>     Attrib V51    0.9446205622015729
#>     Attrib V52    1.2551317394558272
#>     Attrib V53    0.4075349803754505
#>     Attrib V54    0.3409753342466674
#>     Attrib V55    -0.5537876768892591
#>     Attrib V56    -0.8909908843133055
#>     Attrib V57    -1.4779532262464663
#>     Attrib V58    0.22080623650120473
#>     Attrib V59    -0.5124290865125717
#>     Attrib V6    0.4984018429663209
#>     Attrib V60    -0.4061382348694328
#>     Attrib V7    -0.7970383520800987
#>     Attrib V8    -0.6273292895585058
#>     Attrib V9    1.3055987819240782
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.20102431331229764
#>     Attrib V1    0.13750751186797294
#>     Attrib V10    -0.05385242538971905
#>     Attrib V11    -0.009910667890199586
#>     Attrib V12    0.0478492319785897
#>     Attrib V13    -0.03185569216136193
#>     Attrib V14    0.009573584971924946
#>     Attrib V15    0.054064290168155026
#>     Attrib V16    0.06307409430913481
#>     Attrib V17    0.07271962163192726
#>     Attrib V18    -0.027523334614458984
#>     Attrib V19    0.0704564851176826
#>     Attrib V2    0.14423921837485848
#>     Attrib V20    -0.010457122083431193
#>     Attrib V21    -0.0015166626926802992
#>     Attrib V22    -0.09798797224030195
#>     Attrib V23    -0.1140940649808807
#>     Attrib V24    -0.012538721856372384
#>     Attrib V25    -0.06018521251985103
#>     Attrib V26    -0.18268829069447703
#>     Attrib V27    -0.12732325495833277
#>     Attrib V28    -0.005844404142522561
#>     Attrib V29    -0.003239113346884859
#>     Attrib V3    0.039319751299240424
#>     Attrib V30    0.007630661342853401
#>     Attrib V31    -0.11631850388358515
#>     Attrib V32    -0.022947042172682803
#>     Attrib V33    0.1032754400186496
#>     Attrib V34    -4.230901083690656E-4
#>     Attrib V35    0.07005457527587543
#>     Attrib V36    0.025029524649269396
#>     Attrib V37    0.010872796536630903
#>     Attrib V38    -0.01636219368410225
#>     Attrib V39    0.08871916751873861
#>     Attrib V4    0.1304189056749774
#>     Attrib V40    -0.0033579422521484337
#>     Attrib V41    -0.010645164963445017
#>     Attrib V42    0.06750434383529456
#>     Attrib V43    0.09045974358243829
#>     Attrib V44    0.12446597844256209
#>     Attrib V45    0.09011057422374749
#>     Attrib V46    0.057514095763537276
#>     Attrib V47    0.0015034224884843562
#>     Attrib V48    0.09971506115687018
#>     Attrib V49    0.06601675322513136
#>     Attrib V5    0.017187941273613196
#>     Attrib V50    -0.009555369803683073
#>     Attrib V51    0.04660069705690922
#>     Attrib V52    0.04504364944464058
#>     Attrib V53    0.1437622149595761
#>     Attrib V54    0.07292223391451534
#>     Attrib V55    0.06018777060309055
#>     Attrib V56    0.15640664144662395
#>     Attrib V57    0.10160578795140159
#>     Attrib V58    0.14305173133908505
#>     Attrib V59    0.232898120541212
#>     Attrib V6    -0.015298537923116749
#>     Attrib V60    0.27689806255585253
#>     Attrib V7    -0.0690095237834144
#>     Attrib V8    0.031942357081928455
#>     Attrib V9    0.0036207040968524794
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.12041847075887645
#>     Attrib V1    0.4536080852735405
#>     Attrib V10    -0.26409611698771507
#>     Attrib V11    0.08577037701355009
#>     Attrib V12    0.09620619176248943
#>     Attrib V13    -0.10480161963205425
#>     Attrib V14    -0.5372337298798304
#>     Attrib V15    0.23804390572638742
#>     Attrib V16    0.29656133142998264
#>     Attrib V17    0.015385255043333136
#>     Attrib V18    -0.0502867954642036
#>     Attrib V19    0.34512603179914175
#>     Attrib V2    0.3814313614066934
#>     Attrib V20    0.35402378328103307
#>     Attrib V21    0.49217568205502543
#>     Attrib V22    0.24010072374202943
#>     Attrib V23    -0.060243945143772605
#>     Attrib V24    0.5563006558569593
#>     Attrib V25    -0.13910615927035386
#>     Attrib V26    -0.9278332210228334
#>     Attrib V27    -0.9067136757933265
#>     Attrib V28    -0.10267447205785535
#>     Attrib V29    -0.07639523180857348
#>     Attrib V3    -0.24873078463433
#>     Attrib V30    0.20906073860519034
#>     Attrib V31    -0.7346477009033748
#>     Attrib V32    0.12504901981927855
#>     Attrib V33    0.4347819436390479
#>     Attrib V34    -0.17785420715990888
#>     Attrib V35    -0.3272967274961779
#>     Attrib V36    -0.5627799239535273
#>     Attrib V37    -0.565118042982312
#>     Attrib V38    0.05065783707795986
#>     Attrib V39    0.2517654970768088
#>     Attrib V4    -0.12355772124505886
#>     Attrib V40    -0.2252626657270766
#>     Attrib V41    0.014049952330533607
#>     Attrib V42    0.19862036882936068
#>     Attrib V43    0.12375971880554712
#>     Attrib V44    0.40383391076988356
#>     Attrib V45    0.4633802388949878
#>     Attrib V46    0.2400699935766299
#>     Attrib V47    -0.2898007646736411
#>     Attrib V48    0.025195043133002814
#>     Attrib V49    0.3210472568799797
#>     Attrib V5    -0.28644777956203676
#>     Attrib V50    -0.38989195121860604
#>     Attrib V51    -0.042366602138146754
#>     Attrib V52    0.005572522848406324
#>     Attrib V53    0.2649703234357511
#>     Attrib V54    0.4588933459747801
#>     Attrib V55    -0.2485135922687478
#>     Attrib V56    0.3329166025270436
#>     Attrib V57    -0.027653350596400703
#>     Attrib V58    0.29038263486145877
#>     Attrib V59    0.7635633583647912
#>     Attrib V6    -0.3706216251418827
#>     Attrib V60    0.6734050985753722
#>     Attrib V7    -0.01408524168748893
#>     Attrib V8    -0.010691276611707996
#>     Attrib V9    0.04135495158157154
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.3322516427733422
#>     Attrib V1    -0.11083181682809526
#>     Attrib V10    -1.036434197244365
#>     Attrib V11    -1.4617339646328844
#>     Attrib V12    -1.2154696570299515
#>     Attrib V13    -0.7254297233102164
#>     Attrib V14    0.9944917446684486
#>     Attrib V15    0.41283239506448494
#>     Attrib V16    0.8069133579275821
#>     Attrib V17    0.29119134005651337
#>     Attrib V18    0.010203356717352561
#>     Attrib V19    -0.9099262665374426
#>     Attrib V2    -0.13840616613280962
#>     Attrib V20    -0.009164317417807903
#>     Attrib V21    0.2221301385215628
#>     Attrib V22    0.36785249704084927
#>     Attrib V23    -0.6332243300370779
#>     Attrib V24    -1.9599787856266324
#>     Attrib V25    -1.2353416764253577
#>     Attrib V26    -1.1809799097811078
#>     Attrib V27    -1.0387956780335639
#>     Attrib V28    -1.3632169673407495
#>     Attrib V29    -0.46012090943885997
#>     Attrib V3    0.6805358257519201
#>     Attrib V30    0.06766056168960605
#>     Attrib V31    0.8127576867425101
#>     Attrib V32    0.45912860644650166
#>     Attrib V33    0.16272305407402302
#>     Attrib V34    -0.2525491439359873
#>     Attrib V35    -0.6752604596519882
#>     Attrib V36    1.0559633258137362
#>     Attrib V37    0.6144201516153255
#>     Attrib V38    0.17655755969121742
#>     Attrib V39    -0.6301795564257919
#>     Attrib V4    0.44073732035822255
#>     Attrib V40    0.2341314349113745
#>     Attrib V41    -1.2353167551923523
#>     Attrib V42    -0.305847941596506
#>     Attrib V43    -0.25572410565946574
#>     Attrib V44    -0.563972103703938
#>     Attrib V45    -1.2294918983447185
#>     Attrib V46    -1.4358337504515737
#>     Attrib V47    -0.9625170518777518
#>     Attrib V48    -0.6850032876073214
#>     Attrib V49    -1.1917533659383381
#>     Attrib V5    -0.7344088824891645
#>     Attrib V50    -0.185940866172033
#>     Attrib V51    -0.8324914638981901
#>     Attrib V52    -1.0232424268812517
#>     Attrib V53    -0.4640621049556432
#>     Attrib V54    -0.303811216928205
#>     Attrib V55    0.6292552291574683
#>     Attrib V56    0.843635231087173
#>     Attrib V57    1.3711909026510234
#>     Attrib V58    -0.21874030902969416
#>     Attrib V59    0.3531409795051014
#>     Attrib V6    -0.5155743076927266
#>     Attrib V60    0.21298640155158377
#>     Attrib V7    0.6775909243481774
#>     Attrib V8    0.605051766270401
#>     Attrib V9    -1.0866774058556197
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.012701662003419573
#>     Attrib V1    0.33112078723379695
#>     Attrib V10    -0.31220202313208884
#>     Attrib V11    0.0487249109556605
#>     Attrib V12    0.065382934849968
#>     Attrib V13    -0.11537365258561065
#>     Attrib V14    -0.35266240418736516
#>     Attrib V15    0.24252901318534884
#>     Attrib V16    0.26803510849229156
#>     Attrib V17    0.04440467681232723
#>     Attrib V18    -0.0746356226330986
#>     Attrib V19    0.27059077002578796
#>     Attrib V2    0.33735821402044
#>     Attrib V20    0.39817621274780224
#>     Attrib V21    0.4581696912668659
#>     Attrib V22    0.22493495316357334
#>     Attrib V23    -0.08760828963564131
#>     Attrib V24    0.45221988816253456
#>     Attrib V25    -0.11736094206215725
#>     Attrib V26    -0.9394126029842739
#>     Attrib V27    -0.8295175325393904
#>     Attrib V28    -0.09363160398224112
#>     Attrib V29    -0.020698182268541223
#>     Attrib V3    -0.12609039078152537
#>     Attrib V30    0.1155516023501114
#>     Attrib V31    -0.6586328865267009
#>     Attrib V32    0.1048834766706459
#>     Attrib V33    0.382395452894199
#>     Attrib V34    -0.18563514645115003
#>     Attrib V35    -0.30717927340673784
#>     Attrib V36    -0.5190468175365682
#>     Attrib V37    -0.476809718763963
#>     Attrib V38    0.04039261560324673
#>     Attrib V39    0.22795119276872206
#>     Attrib V4    -0.10843662272438727
#>     Attrib V40    -0.1436359462468005
#>     Attrib V41    -0.0033163983606000398
#>     Attrib V42    0.15255363825676097
#>     Attrib V43    0.17665680633203273
#>     Attrib V44    0.25838012822772555
#>     Attrib V45    0.3559155619106619
#>     Attrib V46    0.22231563772700577
#>     Attrib V47    -0.19655481397248514
#>     Attrib V48    -0.028895591093114535
#>     Attrib V49    0.24959517267265832
#>     Attrib V5    -0.2502694036200112
#>     Attrib V50    -0.3180932018659181
#>     Attrib V51    -0.009678421957313305
#>     Attrib V52    0.03050458622999424
#>     Attrib V53    0.22967273932307694
#>     Attrib V54    0.37231273436917667
#>     Attrib V55    -0.16139838526717595
#>     Attrib V56    0.37404220322653686
#>     Attrib V57    0.0022877577590362944
#>     Attrib V58    0.2240381125781378
#>     Attrib V59    0.6182834797208786
#>     Attrib V6    -0.31529220387187673
#>     Attrib V60    0.6060666494387997
#>     Attrib V7    0.02368119486496512
#>     Attrib V8    0.007531536443701017
#>     Attrib V9    -3.6204838198615057E-4
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.16449978791887898
#>     Attrib V1    0.14573437763888072
#>     Attrib V10    0.0222522159389078
#>     Attrib V11    0.03011346884999559
#>     Attrib V12    0.0600959852091944
#>     Attrib V13    0.03045083712696623
#>     Attrib V14    -0.029956170432822896
#>     Attrib V15    0.06649472168951183
#>     Attrib V16    0.05520300570656212
#>     Attrib V17    0.07650320217522807
#>     Attrib V18    3.209577431465391E-4
#>     Attrib V19    -0.018891037906094657
#>     Attrib V2    0.14522420333348945
#>     Attrib V20    -0.052012269623778536
#>     Attrib V21    0.0030719927920832522
#>     Attrib V22    -0.08440957796731698
#>     Attrib V23    -0.09128096055447033
#>     Attrib V24    -0.02895285395213306
#>     Attrib V25    -0.017435696490529423
#>     Attrib V26    -0.08863417892095452
#>     Attrib V27    -0.13923325957741964
#>     Attrib V28    -0.03436660437843984
#>     Attrib V29    -0.07836385888267834
#>     Attrib V3    0.059093423812157035
#>     Attrib V30    0.016521152327783995
#>     Attrib V31    -0.007562561212138009
#>     Attrib V32    -0.009935406452642856
#>     Attrib V33    0.0415084656689472
#>     Attrib V34    0.009378347077367922
#>     Attrib V35    0.06745645170502189
#>     Attrib V36    -3.264099584180861E-4
#>     Attrib V37    0.032769820421796755
#>     Attrib V38    -0.02595395176777579
#>     Attrib V39    0.11729620056034806
#>     Attrib V4    0.12283689462103618
#>     Attrib V40    0.036929381112595194
#>     Attrib V41    0.014383989588698227
#>     Attrib V42    0.08617196525206654
#>     Attrib V43    0.05329306154245427
#>     Attrib V44    0.059713957322196566
#>     Attrib V45    0.07476743769194605
#>     Attrib V46    0.06306713219300153
#>     Attrib V47    0.007903049865686598
#>     Attrib V48    0.08707628976160631
#>     Attrib V49    0.04354216160892321
#>     Attrib V5    0.014701360673156819
#>     Attrib V50    -0.0256755312358556
#>     Attrib V51    0.054453080972814795
#>     Attrib V52    0.0658273343577789
#>     Attrib V53    0.14671121422121075
#>     Attrib V54    0.0702672319892967
#>     Attrib V55    0.038079531147206844
#>     Attrib V56    0.17110510884296676
#>     Attrib V57    0.044560853502388434
#>     Attrib V58    0.15235278386997597
#>     Attrib V59    0.21505473224546895
#>     Attrib V6    -0.03150697425011238
#>     Attrib V60    0.21759585721320143
#>     Attrib V7    -0.08231034618321638
#>     Attrib V8    -0.004449343833605237
#>     Attrib V9    0.008072517485076912
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.11675529461065982
#>     Attrib V1    0.19056972281415294
#>     Attrib V10    -0.1081586411167017
#>     Attrib V11    0.05998002439000343
#>     Attrib V12    0.004720976360884295
#>     Attrib V13    -0.013742606259282331
#>     Attrib V14    -0.07956454627083905
#>     Attrib V15    0.0935352677958706
#>     Attrib V16    0.08551646492437104
#>     Attrib V17    0.05740505638436916
#>     Attrib V18    0.013229658399964195
#>     Attrib V19    0.054533587042666753
#>     Attrib V2    0.21247064363497256
#>     Attrib V20    0.059342778700562565
#>     Attrib V21    -0.013540313089936931
#>     Attrib V22    -0.06553328933320898
#>     Attrib V23    -0.11720708257462485
#>     Attrib V24    0.09711566196385733
#>     Attrib V25    -0.10316412009033755
#>     Attrib V26    -0.2879682208477062
#>     Attrib V27    -0.3281095374920474
#>     Attrib V28    -0.1322693051553236
#>     Attrib V29    -0.10019331668590585
#>     Attrib V3    -0.01953841605841766
#>     Attrib V30    -0.009317998372789679
#>     Attrib V31    -0.16243953385927612
#>     Attrib V32    0.008060031941607367
#>     Attrib V33    0.15351075123375113
#>     Attrib V34    0.0038685782594329067
#>     Attrib V35    0.002397314833257815
#>     Attrib V36    -0.13460415212691132
#>     Attrib V37    -0.1438630387343721
#>     Attrib V38    0.00393681577351727
#>     Attrib V39    0.03488899465300494
#>     Attrib V4    0.09259871477718706
#>     Attrib V40    -0.0669888809995953
#>     Attrib V41    -0.07314509385627319
#>     Attrib V42    0.020263153976913025
#>     Attrib V43    0.11297866035923376
#>     Attrib V44    0.16793252919827886
#>     Attrib V45    0.08308144852948253
#>     Attrib V46    0.07536767307349183
#>     Attrib V47    -0.027122669176353316
#>     Attrib V48    0.07214597252765466
#>     Attrib V49    0.1087333424829913
#>     Attrib V5    -0.018548437397913575
#>     Attrib V50    -0.11072290972207964
#>     Attrib V51    0.02226243512115562
#>     Attrib V52    0.04430568314855957
#>     Attrib V53    0.21558214056015854
#>     Attrib V54    0.1939976400336718
#>     Attrib V55    0.06099417367140519
#>     Attrib V56    0.14622855735920745
#>     Attrib V57    0.058144500836318745
#>     Attrib V58    0.12058308662257337
#>     Attrib V59    0.3158500637172766
#>     Attrib V6    -0.13925708770823766
#>     Attrib V60    0.30885818243298646
#>     Attrib V7    -0.044315392383690526
#>     Attrib V8    -0.010850080819957196
#>     Attrib V9    0.0232854369476283
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.09660448993474145
#>     Attrib V1    0.2066309404523098
#>     Attrib V10    -0.18117963493952047
#>     Attrib V11    0.0013469897324585442
#>     Attrib V12    0.003642354653237672
#>     Attrib V13    -0.09450981559374497
#>     Attrib V14    -0.07903656925111975
#>     Attrib V15    0.12084168836018828
#>     Attrib V16    0.14322440067526157
#>     Attrib V17    0.01501129447116234
#>     Attrib V18    0.04022124661668347
#>     Attrib V19    0.041652701567688785
#>     Attrib V2    0.14434683081045407
#>     Attrib V20    0.07328363166583812
#>     Attrib V21    0.10261891662231534
#>     Attrib V22    -0.06271814833121045
#>     Attrib V23    -0.10337590330939497
#>     Attrib V24    0.07031082948414732
#>     Attrib V25    -0.16134156426350904
#>     Attrib V26    -0.38843636699304296
#>     Attrib V27    -0.3497150822628006
#>     Attrib V28    -0.0505342406874316
#>     Attrib V29    -0.03697724877431834
#>     Attrib V3    0.023501563148360306
#>     Attrib V30    0.06899885822690945
#>     Attrib V31    -0.25847394070664625
#>     Attrib V32    0.01378552694615292
#>     Attrib V33    0.16308081017955622
#>     Attrib V34    -0.040551639401613625
#>     Attrib V35    -0.07280513590300243
#>     Attrib V36    -0.11589311083065562
#>     Attrib V37    -0.18116850701549297
#>     Attrib V38    -0.06580755825456429
#>     Attrib V39    0.0832046851719934
#>     Attrib V4    0.028725060548168094
#>     Attrib V40    -0.09855232104493258
#>     Attrib V41    -0.08096978308341433
#>     Attrib V42    0.07200938440253915
#>     Attrib V43    0.03771386648597963
#>     Attrib V44    0.16223980257916623
#>     Attrib V45    0.15445930029969435
#>     Attrib V46    0.08680228532748592
#>     Attrib V47    -0.06143108013405159
#>     Attrib V48    0.009890528746399816
#>     Attrib V49    0.13693115192492614
#>     Attrib V5    -0.018487763304924812
#>     Attrib V50    -0.15537778989979115
#>     Attrib V51    0.042707912800449034
#>     Attrib V52    0.06236888178945367
#>     Attrib V53    0.17051454212292275
#>     Attrib V54    0.09503403662011224
#>     Attrib V55    -0.013454078415221313
#>     Attrib V56    0.1763454541722832
#>     Attrib V57    0.04081540870013863
#>     Attrib V58    0.21117424839055376
#>     Attrib V59    0.3140694980565451
#>     Attrib V6    -0.12209197562733774
#>     Attrib V60    0.30289486815851824
#>     Attrib V7    -0.03775865397579834
#>     Attrib V8    0.0236605638241227
#>     Attrib V9    0.007122085436443848
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
