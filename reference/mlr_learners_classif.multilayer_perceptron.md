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
#>     Threshold    0.23580246036836117
#>     Node 2    2.128841204404326
#>     Node 3    1.2123681355842661
#>     Node 4    0.012165979394060996
#>     Node 5    -1.8332551106284347
#>     Node 6    1.6595959849115687
#>     Node 7    3.7414308803571195
#>     Node 8    0.8138327207387058
#>     Node 9    3.2042919597652233
#>     Node 10    -1.7595502157420413
#>     Node 11    1.1121259439555877
#>     Node 12    1.2676703104917781
#>     Node 13    1.4732042115953288
#>     Node 14    1.5964859887486327
#>     Node 15    -1.9727870073185974
#>     Node 16    0.22455354608811962
#>     Node 17    0.2300021715537648
#>     Node 18    -0.17572180833155457
#>     Node 19    1.635518545088761
#>     Node 20    2.078333438021543
#>     Node 21    -2.1753547972716167
#>     Node 22    0.3506189328828524
#>     Node 23    2.028785581257775
#>     Node 24    -1.974329260213846
#>     Node 25    4.160965879214438
#>     Node 26    -0.037430845853672394
#>     Node 27    1.5537870143006887
#>     Node 28    -3.785837475985057
#>     Node 29    1.3678182698746832
#>     Node 30    0.32951600436560463
#>     Node 31    1.7063898506332578
#>     Node 32    0.18317665595053964
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.2148973016400363
#>     Node 2    -2.1724056999980554
#>     Node 3    -1.2006429073826983
#>     Node 4    0.024158630435489378
#>     Node 5    1.846174919897975
#>     Node 6    -1.6296416028326948
#>     Node 7    -3.7532491470256777
#>     Node 8    -0.8547620532015029
#>     Node 9    -3.213472956285262
#>     Node 10    1.702906442196757
#>     Node 11    -1.0841898015782787
#>     Node 12    -1.3418623182630613
#>     Node 13    -1.4251657677012117
#>     Node 14    -1.5361301645223995
#>     Node 15    1.9691624314932652
#>     Node 16    -0.24488243860913678
#>     Node 17    -0.20071871466399793
#>     Node 18    0.2104692502395161
#>     Node 19    -1.623894931597593
#>     Node 20    -2.0576844752786196
#>     Node 21    2.2327084167729785
#>     Node 22    -0.40349333283303807
#>     Node 23    -2.063898244155766
#>     Node 24    1.9743066858964833
#>     Node 25    -4.1633897238023625
#>     Node 26    -0.05205211793662149
#>     Node 27    -1.5887189524530805
#>     Node 28    3.7462702213073222
#>     Node 29    -1.4069509151350454
#>     Node 30    -0.256571074356256
#>     Node 31    -1.641086143665626
#>     Node 32    -0.20469067507375438
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.1315709525597697
#>     Attrib V1    0.5178730785773157
#>     Attrib V10    -0.4327883432644874
#>     Attrib V11    -0.4119077033166085
#>     Attrib V12    -7.602250789845355E-4
#>     Attrib V13    0.07156212092795883
#>     Attrib V14    0.10966908148975486
#>     Attrib V15    0.3594614944816582
#>     Attrib V16    0.3478223389099606
#>     Attrib V17    0.2311062153076644
#>     Attrib V18    0.014428439584136907
#>     Attrib V19    0.160512081317327
#>     Attrib V2    0.31605212199670685
#>     Attrib V20    0.6742124925375699
#>     Attrib V21    0.6036945391052644
#>     Attrib V22    0.38359297999719333
#>     Attrib V23    0.0664610812915617
#>     Attrib V24    -0.19228875842298265
#>     Attrib V25    -0.5899421734685142
#>     Attrib V26    -1.2223973510137707
#>     Attrib V27    -1.0107323735657718
#>     Attrib V28    -0.24848452974526683
#>     Attrib V29    -0.12989853291188935
#>     Attrib V3    0.21921896389569523
#>     Attrib V30    0.020734396887681122
#>     Attrib V31    -1.204672538468615
#>     Attrib V32    0.21005228251109903
#>     Attrib V33    0.3858942096030171
#>     Attrib V34    -0.029971177527431322
#>     Attrib V35    -0.5353575933547774
#>     Attrib V36    -1.0618859247452568
#>     Attrib V37    -0.03891538123785869
#>     Attrib V38    0.7279804958662954
#>     Attrib V39    0.0692459513407686
#>     Attrib V4    0.5238614854431226
#>     Attrib V40    -0.6252201443698338
#>     Attrib V41    0.2229452917845518
#>     Attrib V42    0.7553749913249825
#>     Attrib V43    -0.056034020087984915
#>     Attrib V44    0.1710835078434811
#>     Attrib V45    0.24548613285466533
#>     Attrib V46    -0.06063573069469152
#>     Attrib V47    -0.39812992923884805
#>     Attrib V48    0.23549698614109127
#>     Attrib V49    0.10611425420359447
#>     Attrib V5    -0.19106026345662255
#>     Attrib V50    -0.675590649981409
#>     Attrib V51    0.34644724892215795
#>     Attrib V52    0.46669268122498136
#>     Attrib V53    -0.09032996467504088
#>     Attrib V54    0.8783050989504332
#>     Attrib V55    -0.7130408805900907
#>     Attrib V56    0.7427211471392212
#>     Attrib V57    -0.16731262582572928
#>     Attrib V58    0.4323656134200445
#>     Attrib V59    0.880803472538661
#>     Attrib V6    -0.3097209605254829
#>     Attrib V60    0.8138457969711486
#>     Attrib V7    0.09834337163274039
#>     Attrib V8    -0.8478380543417176
#>     Attrib V9    -0.01529625706368901
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.09356745722884326
#>     Attrib V1    0.060182918241316205
#>     Attrib V10    -0.060284292748976044
#>     Attrib V11    -0.03457633903305847
#>     Attrib V12    0.24130095557716205
#>     Attrib V13    0.07189517311106808
#>     Attrib V14    -0.1264257549144449
#>     Attrib V15    -0.007766754080204296
#>     Attrib V16    0.020112481385531886
#>     Attrib V17    0.09662532628959346
#>     Attrib V18    0.051069361137325
#>     Attrib V19    0.3174242557081153
#>     Attrib V2    0.05223122373341637
#>     Attrib V20    0.3294337351274957
#>     Attrib V21    0.13621592922209913
#>     Attrib V22    0.17392912382140438
#>     Attrib V23    0.18032839236054185
#>     Attrib V24    0.19718564262729868
#>     Attrib V25    0.18482262603224917
#>     Attrib V26    -0.25326226047340583
#>     Attrib V27    -0.4606611355400934
#>     Attrib V28    -0.3688437001607019
#>     Attrib V29    -0.66508893053645
#>     Attrib V3    0.03546538876378614
#>     Attrib V30    -0.20199385371797457
#>     Attrib V31    -0.4136176342082795
#>     Attrib V32    0.31227383050893776
#>     Attrib V33    0.34470775024620454
#>     Attrib V34    0.26340852068565107
#>     Attrib V35    0.05558551848446788
#>     Attrib V36    -0.5092067370863259
#>     Attrib V37    -0.36400869351949977
#>     Attrib V38    0.034512854245141174
#>     Attrib V39    -0.03654397694938413
#>     Attrib V4    0.19966914808759662
#>     Attrib V40    -0.2813155233557079
#>     Attrib V41    0.007406842990862226
#>     Attrib V42    0.14889889310939294
#>     Attrib V43    -0.17493212732734287
#>     Attrib V44    -0.10181356962221438
#>     Attrib V45    -0.10648747607878434
#>     Attrib V46    -0.0859088487023911
#>     Attrib V47    -0.08157858390824707
#>     Attrib V48    0.2213490832478612
#>     Attrib V49    0.17039240513970924
#>     Attrib V5    -0.1311121608504965
#>     Attrib V50    -0.3286263497229483
#>     Attrib V51    0.19188388137346976
#>     Attrib V52    0.3005411557039649
#>     Attrib V53    -0.0957516816272289
#>     Attrib V54    0.3452198831571908
#>     Attrib V55    -0.20251758004466935
#>     Attrib V56    0.32178599975526595
#>     Attrib V57    -0.35022400428137995
#>     Attrib V58    0.26892564961839677
#>     Attrib V59    0.3141385373645678
#>     Attrib V6    -0.21966994541146406
#>     Attrib V60    0.35412511910421984
#>     Attrib V7    -0.113731404098603
#>     Attrib V8    -0.3968349938642847
#>     Attrib V9    0.16484214185095142
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.21151625091504092
#>     Attrib V1    0.0024074964248810113
#>     Attrib V10    0.01676412180113808
#>     Attrib V11    -0.01668282045468271
#>     Attrib V12    -0.006259097760708019
#>     Attrib V13    0.042082660195336116
#>     Attrib V14    0.08279864236781961
#>     Attrib V15    0.09519292043052106
#>     Attrib V16    0.023123497107615378
#>     Attrib V17    0.016201223996569442
#>     Attrib V18    -0.02140592692217652
#>     Attrib V19    -0.03088991675641762
#>     Attrib V2    0.04148612871478486
#>     Attrib V20    -0.012024493100153317
#>     Attrib V21    -0.006438604147996501
#>     Attrib V22    -0.10577341645079123
#>     Attrib V23    -0.09049932411069675
#>     Attrib V24    -0.1297599902332833
#>     Attrib V25    -0.10200604316682525
#>     Attrib V26    -0.05742745928783767
#>     Attrib V27    -0.12421316981795014
#>     Attrib V28    -0.046290369375769407
#>     Attrib V29    -0.02226142233702611
#>     Attrib V3    0.11899122639031658
#>     Attrib V30    -0.02329299751110456
#>     Attrib V31    0.020883555050075768
#>     Attrib V32    0.024585673138226835
#>     Attrib V33    0.08888175082673701
#>     Attrib V34    0.07922813627220748
#>     Attrib V35    0.06654184821821081
#>     Attrib V36    0.05287047586341955
#>     Attrib V37    0.04349263627816661
#>     Attrib V38    -0.004790755080196956
#>     Attrib V39    0.0961521055436627
#>     Attrib V4    0.06896439769760242
#>     Attrib V40    0.11621136141021798
#>     Attrib V41    0.055760558016579156
#>     Attrib V42    0.07802388000181411
#>     Attrib V43    -5.559498167697161E-4
#>     Attrib V44    0.05242997238411503
#>     Attrib V45    0.03699490659248543
#>     Attrib V46    0.020797985406321322
#>     Attrib V47    0.042546042130363323
#>     Attrib V48    0.04163569841443664
#>     Attrib V49    0.028968641514148907
#>     Attrib V5    0.1092056804221155
#>     Attrib V50    0.09826453713213729
#>     Attrib V51    0.10483837655224695
#>     Attrib V52    0.08341977472351211
#>     Attrib V53    0.12203066587402991
#>     Attrib V54    -0.02041152454212759
#>     Attrib V55    0.0695220818957972
#>     Attrib V56    0.09814124654389282
#>     Attrib V57    0.1076596275016709
#>     Attrib V58    0.05241864198808735
#>     Attrib V59    0.0483995196184747
#>     Attrib V6    0.051446824876983974
#>     Attrib V60    0.06815783712038602
#>     Attrib V7    0.05458104468299013
#>     Attrib V8    0.008562430481712163
#>     Attrib V9    0.03918719458465201
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.18440928284884056
#>     Attrib V1    -0.09641930893609481
#>     Attrib V10    -0.11729640345783815
#>     Attrib V11    -0.4610822223922754
#>     Attrib V12    -0.9443607369317097
#>     Attrib V13    -0.24296570378107954
#>     Attrib V14    0.45568630292018525
#>     Attrib V15    0.5011871504921405
#>     Attrib V16    0.1696617802315645
#>     Attrib V17    0.12113599893570852
#>     Attrib V18    0.12938944928359108
#>     Attrib V19    -0.22535334463852313
#>     Attrib V2    -0.05713957859218953
#>     Attrib V20    -0.24458920391337147
#>     Attrib V21    -0.0317312565958161
#>     Attrib V22    -0.12388611479815699
#>     Attrib V23    -0.3008023865436516
#>     Attrib V24    -0.4814493387390554
#>     Attrib V25    -0.25221060212644075
#>     Attrib V26    0.1900739534626751
#>     Attrib V27    0.3412243141210938
#>     Attrib V28    -0.10517718977946618
#>     Attrib V29    0.39800147683877374
#>     Attrib V3    0.1259375905633097
#>     Attrib V30    0.022967631254019998
#>     Attrib V31    0.8594261189408674
#>     Attrib V32    -0.447392134739602
#>     Attrib V33    -0.4251478943358698
#>     Attrib V34    -0.4320764809534336
#>     Attrib V35    -0.002096202395288278
#>     Attrib V36    1.0611658054470794
#>     Attrib V37    0.42325712345658406
#>     Attrib V38    -0.325922823400484
#>     Attrib V39    0.08213469377960146
#>     Attrib V4    -0.37741239530952186
#>     Attrib V40    0.6459413816497209
#>     Attrib V41    -0.2370127626571319
#>     Attrib V42    -0.40289504407079846
#>     Attrib V43    0.10042562042575968
#>     Attrib V44    0.028549478896312853
#>     Attrib V45    -0.3637128972956232
#>     Attrib V46    -0.22540195896847234
#>     Attrib V47    -0.05111999011284527
#>     Attrib V48    -0.8184760671267352
#>     Attrib V49    -0.7816852389782237
#>     Attrib V5    0.21350214546334736
#>     Attrib V50    0.6934725919396142
#>     Attrib V51    -0.5258436900449877
#>     Attrib V52    -0.6145391049000118
#>     Attrib V53    0.4091513864118709
#>     Attrib V54    -0.23090441441758353
#>     Attrib V55    0.8643256689279035
#>     Attrib V56    -0.10814805609750644
#>     Attrib V57    0.6310639211963517
#>     Attrib V58    -0.35636706426116804
#>     Attrib V59    -0.2886236981720522
#>     Attrib V6    0.22127821887944332
#>     Attrib V60    -0.28405813891885495
#>     Attrib V7    0.14689619629046718
#>     Attrib V8    0.4892816043776559
#>     Attrib V9    -0.6009591033619283
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.09889306601863333
#>     Attrib V1    0.4024238388094626
#>     Attrib V10    -0.38841400834904943
#>     Attrib V11    -0.30967383758814687
#>     Attrib V12    0.07102296707457897
#>     Attrib V13    -0.002595666270686595
#>     Attrib V14    0.009377352135424932
#>     Attrib V15    0.24950173640912338
#>     Attrib V16    0.3151017166049329
#>     Attrib V17    0.16210782201627721
#>     Attrib V18    0.022028138506567235
#>     Attrib V19    0.1420413844630172
#>     Attrib V2    0.261229011388958
#>     Attrib V20    0.516155888915752
#>     Attrib V21    0.43899192742054804
#>     Attrib V22    0.25576048581098537
#>     Attrib V23    0.0658442667657181
#>     Attrib V24    -0.05358808137138876
#>     Attrib V25    -0.31373175429016015
#>     Attrib V26    -0.8783670472762208
#>     Attrib V27    -0.8094880421684766
#>     Attrib V28    -0.34746473464213573
#>     Attrib V29    -0.24354174029857723
#>     Attrib V3    0.17707717431438685
#>     Attrib V30    8.565473097789993E-4
#>     Attrib V31    -0.8527997985144047
#>     Attrib V32    0.23752876662423078
#>     Attrib V33    0.3769371572479407
#>     Attrib V34    0.04974189556319313
#>     Attrib V35    -0.33640372114453776
#>     Attrib V36    -0.880320836953484
#>     Attrib V37    -0.10379748388055982
#>     Attrib V38    0.505459933348302
#>     Attrib V39    0.061161361558554804
#>     Attrib V4    0.48911864364316693
#>     Attrib V40    -0.5105018355018399
#>     Attrib V41    0.21400649985270065
#>     Attrib V42    0.6123372745416669
#>     Attrib V43    -0.0817870777174875
#>     Attrib V44    0.04963472000220591
#>     Attrib V45    0.15590687351860447
#>     Attrib V46    0.003461526379048225
#>     Attrib V47    -0.2683052094550435
#>     Attrib V48    0.231391806707468
#>     Attrib V49    0.15667391250347293
#>     Attrib V5    -0.14480144975523476
#>     Attrib V50    -0.464303852090702
#>     Attrib V51    0.3457607157608632
#>     Attrib V52    0.41106091569486014
#>     Attrib V53    0.03281883935028033
#>     Attrib V54    0.6998656382200454
#>     Attrib V55    -0.48780914961082283
#>     Attrib V56    0.6382834387193399
#>     Attrib V57    -0.1115786987367682
#>     Attrib V58    0.4288166669688557
#>     Attrib V59    0.7497005592901642
#>     Attrib V6    -0.190189981488316
#>     Attrib V60    0.7174825367105382
#>     Attrib V7    0.06542909676849877
#>     Attrib V8    -0.6492503885835693
#>     Attrib V9    0.06765961216107287
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.8508344869701272
#>     Attrib V1    0.04316335949956561
#>     Attrib V10    0.3141051987887971
#>     Attrib V11    0.6903985135783293
#>     Attrib V12    1.0713309298055749
#>     Attrib V13    0.09759556105115244
#>     Attrib V14    -0.17204939085605644
#>     Attrib V15    -0.9135067324880057
#>     Attrib V16    -0.5015447824885002
#>     Attrib V17    -0.37808382848127964
#>     Attrib V18    0.2581675725103868
#>     Attrib V19    0.41698810277234616
#>     Attrib V2    0.2251990773462558
#>     Attrib V20    0.21934773513131747
#>     Attrib V21    0.5583380182771597
#>     Attrib V22    0.22095453505548523
#>     Attrib V23    0.5797665192233458
#>     Attrib V24    0.48440184747783843
#>     Attrib V25    0.1595323622990735
#>     Attrib V26    0.46589708558516474
#>     Attrib V27    1.2319506452852398
#>     Attrib V28    2.29387110728265
#>     Attrib V29    1.99556847033723
#>     Attrib V3    0.025971452128625828
#>     Attrib V30    0.7528051719491983
#>     Attrib V31    -1.0314454749026023
#>     Attrib V32    -0.5427159255192122
#>     Attrib V33    -0.8447355496598956
#>     Attrib V34    -0.133913139659625
#>     Attrib V35    0.22124565339174557
#>     Attrib V36    -0.9940081515724262
#>     Attrib V37    -0.08362797878394354
#>     Attrib V38    0.03321300070092138
#>     Attrib V39    -0.20166090210389953
#>     Attrib V4    0.5816456546786727
#>     Attrib V40    -0.1854976287066852
#>     Attrib V41    0.9519878467773598
#>     Attrib V42    0.28859719883338675
#>     Attrib V43    0.005155015999936658
#>     Attrib V44    0.21586157994869357
#>     Attrib V45    0.8108534088063407
#>     Attrib V46    0.7805078410111901
#>     Attrib V47    0.6379313665665217
#>     Attrib V48    1.205991936797973
#>     Attrib V49    1.2784480340168871
#>     Attrib V5    0.36717842056528566
#>     Attrib V50    0.22861672284980006
#>     Attrib V51    0.6003884724416756
#>     Attrib V52    0.9632087799821162
#>     Attrib V53    0.40148365660559315
#>     Attrib V54    0.2253621986594219
#>     Attrib V55    -1.1181949389605386
#>     Attrib V56    -0.3919665606447699
#>     Attrib V57    0.1619646094396805
#>     Attrib V58    0.01241848400451643
#>     Attrib V59    0.08354014899291717
#>     Attrib V6    0.7837886030555539
#>     Attrib V60    0.21346037334953483
#>     Attrib V7    -0.029410540715120587
#>     Attrib V8    -0.2029107784512573
#>     Attrib V9    0.4726262737052758
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.0741337609716107
#>     Attrib V1    -0.020418568102640533
#>     Attrib V10    0.03742843093780766
#>     Attrib V11    0.10847569229228143
#>     Attrib V12    0.3111694504166056
#>     Attrib V13    0.09773825808894294
#>     Attrib V14    -0.1475202214711259
#>     Attrib V15    -0.16276802363454934
#>     Attrib V16    -0.05002254899349954
#>     Attrib V17    -0.025456567775106565
#>     Attrib V18    -0.015764613875410744
#>     Attrib V19    0.13182312194975718
#>     Attrib V2    -0.02141304910933293
#>     Attrib V20    0.06337954597226676
#>     Attrib V21    -0.01574973173569664
#>     Attrib V22    -0.04777998701788278
#>     Attrib V23    0.04654822452475742
#>     Attrib V24    0.16131646255150847
#>     Attrib V25    0.18536780817409618
#>     Attrib V26    0.0169293681171591
#>     Attrib V27    -0.0710764904111567
#>     Attrib V28    -0.021325940756376126
#>     Attrib V29    -0.2891493791105828
#>     Attrib V3    -0.024492727989486023
#>     Attrib V30    -0.12264956022225942
#>     Attrib V31    -0.2768120034402299
#>     Attrib V32    0.182142251404895
#>     Attrib V33    0.2036516087930428
#>     Attrib V34    0.2441218079455489
#>     Attrib V35    0.10179973990364412
#>     Attrib V36    -0.3179650022824606
#>     Attrib V37    -0.2514713515872367
#>     Attrib V38    0.046482482888995334
#>     Attrib V39    -0.09370195672786315
#>     Attrib V4    0.18529499863379814
#>     Attrib V40    -0.24782267677151798
#>     Attrib V41    -0.006201405908320009
#>     Attrib V42    -0.006466828801951171
#>     Attrib V43    -0.10132767290569401
#>     Attrib V44    -0.032138501327250296
#>     Attrib V45    0.0016223487096797549
#>     Attrib V46    0.0104238650604124
#>     Attrib V47    -0.0161353036567035
#>     Attrib V48    0.28874159489895707
#>     Attrib V49    0.18812230137634786
#>     Attrib V5    -0.06004041744053513
#>     Attrib V50    -0.249321551523952
#>     Attrib V51    0.10970562684708508
#>     Attrib V52    0.1864757898441318
#>     Attrib V53    -0.007826460135463977
#>     Attrib V54    0.16430661934474394
#>     Attrib V55    -0.24293608624805227
#>     Attrib V56    0.1121316503549315
#>     Attrib V57    -0.1970392057863078
#>     Attrib V58    0.07240418452863623
#>     Attrib V59    0.18692313815678127
#>     Attrib V6    -0.11055839334369266
#>     Attrib V60    0.2923646673208168
#>     Attrib V7    -0.08536135220234402
#>     Attrib V8    -0.3479860651351377
#>     Attrib V9    0.1880875847794508
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.6720915519800656
#>     Attrib V1    0.2135656822794008
#>     Attrib V10    0.4311688723717825
#>     Attrib V11    0.8396490212222447
#>     Attrib V12    1.3965599813400773
#>     Attrib V13    0.3116299450551195
#>     Attrib V14    -0.19366975028355535
#>     Attrib V15    -0.8437369082786454
#>     Attrib V16    -0.5804774852621633
#>     Attrib V17    -0.42523734676348995
#>     Attrib V18    -0.058251207323681865
#>     Attrib V19    -0.10486957688270085
#>     Attrib V2    0.24286103116035462
#>     Attrib V20    -0.29422865401204584
#>     Attrib V21    0.06322741385266865
#>     Attrib V22    -0.177302197375683
#>     Attrib V23    0.0857884818015096
#>     Attrib V24    0.3105245897906534
#>     Attrib V25    0.26625088930109264
#>     Attrib V26    0.532460410640253
#>     Attrib V27    1.2093256941515693
#>     Attrib V28    1.895150262965852
#>     Attrib V29    1.372801960357975
#>     Attrib V3    0.020641606459817587
#>     Attrib V30    0.4957858677377992
#>     Attrib V31    -0.7051122791139979
#>     Attrib V32    -0.2847216866190543
#>     Attrib V33    -0.615508641589894
#>     Attrib V34    -0.041089355277968864
#>     Attrib V35    0.18810296196539475
#>     Attrib V36    -0.7152813921157717
#>     Attrib V37    0.06719519436399861
#>     Attrib V38    0.1645022736257325
#>     Attrib V39    -0.07577757590112603
#>     Attrib V4    0.4792280955321456
#>     Attrib V40    -0.21941709049860394
#>     Attrib V41    0.6490679233712755
#>     Attrib V42    -0.03645614881400578
#>     Attrib V43    0.07115744836795387
#>     Attrib V44    0.09661768470880466
#>     Attrib V45    0.6118490822536081
#>     Attrib V46    0.5832726479675151
#>     Attrib V47    0.42708083977006495
#>     Attrib V48    0.9793214760847849
#>     Attrib V49    0.9613008206242054
#>     Attrib V5    0.3409284478052766
#>     Attrib V50    0.028488991373477473
#>     Attrib V51    0.5228257908935446
#>     Attrib V52    0.7079605422004979
#>     Attrib V53    0.3064094555905264
#>     Attrib V54    0.09551698391902483
#>     Attrib V55    -0.6376933921186345
#>     Attrib V56    -0.23871913655824828
#>     Attrib V57    0.3026636074114616
#>     Attrib V58    0.021876638540376157
#>     Attrib V59    0.33142808428461484
#>     Attrib V6    0.7140935318673793
#>     Attrib V60    0.3973086630090834
#>     Attrib V7    -0.11385937699651781
#>     Attrib V8    -0.30474086514120746
#>     Attrib V9    0.4240722108765766
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.30756986287476695
#>     Attrib V1    -0.05705657107824296
#>     Attrib V10    -0.029089907687400943
#>     Attrib V11    -0.3490519967362846
#>     Attrib V12    -0.7660241439264992
#>     Attrib V13    -0.10751329303453584
#>     Attrib V14    0.5614096518461492
#>     Attrib V15    0.5605397261262647
#>     Attrib V16    0.3375578629768229
#>     Attrib V17    0.1946642939400856
#>     Attrib V18    0.24979462904315683
#>     Attrib V19    0.029497052145414947
#>     Attrib V2    -0.0841069753998894
#>     Attrib V20    -0.019669602120351307
#>     Attrib V21    0.050252711951195045
#>     Attrib V22    -0.10851091898659337
#>     Attrib V23    -0.3547164470052852
#>     Attrib V24    -0.4878091477139498
#>     Attrib V25    -0.2680724691567129
#>     Attrib V26    0.19404334437924586
#>     Attrib V27    0.22461911936410256
#>     Attrib V28    -0.20507659225730446
#>     Attrib V29    0.1043190607067601
#>     Attrib V3    0.12117769593430339
#>     Attrib V30    -0.10352658996997179
#>     Attrib V31    0.7222630795867004
#>     Attrib V32    -0.541998392061372
#>     Attrib V33    -0.4335851854242641
#>     Attrib V34    -0.4412821238835401
#>     Attrib V35    -0.08559510140081386
#>     Attrib V36    0.8737905842464617
#>     Attrib V37    0.29363643257068894
#>     Attrib V38    -0.2569334722804021
#>     Attrib V39    0.12560246426482813
#>     Attrib V4    -0.2735517219676466
#>     Attrib V40    0.5690427457018256
#>     Attrib V41    -0.3290853839403514
#>     Attrib V42    -0.5749545266503769
#>     Attrib V43    -0.08868030951720206
#>     Attrib V44    -0.07787012179892236
#>     Attrib V45    -0.4274935576784583
#>     Attrib V46    -0.24958105141810527
#>     Attrib V47    -0.049597419300920216
#>     Attrib V48    -0.7543926163748003
#>     Attrib V49    -0.6709196171445807
#>     Attrib V5    0.22102029937216466
#>     Attrib V50    0.6564050586112973
#>     Attrib V51    -0.39836494148674145
#>     Attrib V52    -0.4578014996402652
#>     Attrib V53    0.5512773847592005
#>     Attrib V54    -0.11595872724566088
#>     Attrib V55    0.9170993376231024
#>     Attrib V56    0.008787452140462122
#>     Attrib V57    0.5828433700837166
#>     Attrib V58    -0.18496511255639594
#>     Attrib V59    -0.27504702573338136
#>     Attrib V6    0.2351256560408482
#>     Attrib V60    -0.24197121120529283
#>     Attrib V7    0.18299819890254546
#>     Attrib V8    0.4443419018820973
#>     Attrib V9    -0.49434686627253505
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.06728768161962144
#>     Attrib V1    0.013288591351560068
#>     Attrib V10    -0.05957503812019082
#>     Attrib V11    0.025268987183375488
#>     Attrib V12    0.2944627037998185
#>     Attrib V13    0.015196549576343659
#>     Attrib V14    -0.1549982393899843
#>     Attrib V15    -0.09487112318802514
#>     Attrib V16    0.016688824274357483
#>     Attrib V17    0.12231958838059545
#>     Attrib V18    0.09248482191205373
#>     Attrib V19    0.24383077720313984
#>     Attrib V2    -0.032610950145706995
#>     Attrib V20    0.32073894035347567
#>     Attrib V21    0.11049952294384344
#>     Attrib V22    0.07279071472035839
#>     Attrib V23    0.1361710460403488
#>     Attrib V24    0.17501093614720103
#>     Attrib V25    0.17958068423602425
#>     Attrib V26    -0.2274633930267644
#>     Attrib V27    -0.36364915438737605
#>     Attrib V28    -0.24560589385559808
#>     Attrib V29    -0.5075172469435542
#>     Attrib V3    -0.04461349219445638
#>     Attrib V30    -0.17344299061381338
#>     Attrib V31    -0.44099323318747075
#>     Attrib V32    0.23052924356826138
#>     Attrib V33    0.2874197555017139
#>     Attrib V34    0.33280919029147854
#>     Attrib V35    0.10932333316107035
#>     Attrib V36    -0.4509872304970842
#>     Attrib V37    -0.3547449860237993
#>     Attrib V38    0.08701187767507619
#>     Attrib V39    -0.07944499611468374
#>     Attrib V4    0.17167345451542199
#>     Attrib V40    -0.31603838636318277
#>     Attrib V41    -0.05189392813418954
#>     Attrib V42    0.1203560636456095
#>     Attrib V43    -0.15488060808906412
#>     Attrib V44    -0.06514140187528696
#>     Attrib V45    -0.00618732107338485
#>     Attrib V46    -0.056414223100029436
#>     Attrib V47    -0.05428359570052806
#>     Attrib V48    0.2931205229703561
#>     Attrib V49    0.18769020906699962
#>     Attrib V5    -0.07524217427010253
#>     Attrib V50    -0.28990954769744576
#>     Attrib V51    0.2641564561768938
#>     Attrib V52    0.23748464720662413
#>     Attrib V53    -0.08116664659995382
#>     Attrib V54    0.29389074719941594
#>     Attrib V55    -0.25182432485298867
#>     Attrib V56    0.25827059765377314
#>     Attrib V57    -0.3220154651095645
#>     Attrib V58    0.21039857194616285
#>     Attrib V59    0.21422458132583397
#>     Attrib V6    -0.13129126367160812
#>     Attrib V60    0.3190046471608901
#>     Attrib V7    -0.12035693525000248
#>     Attrib V8    -0.36051998183997125
#>     Attrib V9    0.2107743161834916
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.035290098565903504
#>     Attrib V1    0.10546802712040633
#>     Attrib V10    -0.2430923100188027
#>     Attrib V11    -0.10379317187431061
#>     Attrib V12    0.10996635377759646
#>     Attrib V13    -0.005698854231092315
#>     Attrib V14    -0.18877528365549748
#>     Attrib V15    -0.048596218862479945
#>     Attrib V16    0.10303893882650095
#>     Attrib V17    0.08728799707223137
#>     Attrib V18    -0.022085861754808596
#>     Attrib V19    0.2608785604888946
#>     Attrib V2    0.09857279406720468
#>     Attrib V20    0.37941711892748725
#>     Attrib V21    0.24620385418223847
#>     Attrib V22    0.267066786533736
#>     Attrib V23    0.2283334198133717
#>     Attrib V24    0.1504642903737589
#>     Attrib V25    0.0011863932591930915
#>     Attrib V26    -0.48963343682954863
#>     Attrib V27    -0.5896125411602066
#>     Attrib V28    -0.3757305101913483
#>     Attrib V29    -0.49494421353004947
#>     Attrib V3    -0.014077273201931723
#>     Attrib V30    -0.13152768648846014
#>     Attrib V31    -0.6464778319712295
#>     Attrib V32    0.3258643765762692
#>     Attrib V33    0.47582983835194376
#>     Attrib V34    0.3231169661720397
#>     Attrib V35    -0.0678833434302298
#>     Attrib V36    -0.6919062952979157
#>     Attrib V37    -0.3285657323738057
#>     Attrib V38    0.24187023188926118
#>     Attrib V39    -0.09335527526195027
#>     Attrib V4    0.30396586490112804
#>     Attrib V40    -0.376688992919433
#>     Attrib V41    0.08641458460864954
#>     Attrib V42    0.34375029605262386
#>     Attrib V43    -0.08990054016447954
#>     Attrib V44    -0.07191841440871016
#>     Attrib V45    0.04863538979658865
#>     Attrib V46    0.01258261972643569
#>     Attrib V47    -0.19017703165139302
#>     Attrib V48    0.3184545182233054
#>     Attrib V49    0.17544607437878168
#>     Attrib V5    -0.19097961782297185
#>     Attrib V50    -0.49894654251137965
#>     Attrib V51    0.27431540679918626
#>     Attrib V52    0.3853024902463906
#>     Attrib V53    -0.0810278105602637
#>     Attrib V54    0.44963759546370713
#>     Attrib V55    -0.49500702140164515
#>     Attrib V56    0.4225068718612728
#>     Attrib V57    -0.3183877723441872
#>     Attrib V58    0.2882889766829857
#>     Attrib V59    0.45739248104580316
#>     Attrib V6    -0.2975988900351006
#>     Attrib V60    0.47163311784771383
#>     Attrib V7    -0.014470507346697487
#>     Attrib V8    -0.553487198914371
#>     Attrib V9    0.16369161500194965
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.2004155671226775
#>     Attrib V1    0.07379663359320984
#>     Attrib V10    -0.16194988578211622
#>     Attrib V11    -0.08896849709539949
#>     Attrib V12    0.14972568094075714
#>     Attrib V13    0.05288934041747224
#>     Attrib V14    -0.19449094232373354
#>     Attrib V15    -0.03379996926897321
#>     Attrib V16    0.10138481184909777
#>     Attrib V17    0.1851437702101355
#>     Attrib V18    0.08087065036207024
#>     Attrib V19    0.32160666357109313
#>     Attrib V2    0.020366022505349777
#>     Attrib V20    0.44560009144400065
#>     Attrib V21    0.2726154965592692
#>     Attrib V22    0.21497071621169977
#>     Attrib V23    0.2597086693034698
#>     Attrib V24    0.266796785236842
#>     Attrib V25    0.209352605722332
#>     Attrib V26    -0.3636664207378048
#>     Attrib V27    -0.5627737055897247
#>     Attrib V28    -0.4845269577886051
#>     Attrib V29    -0.6696576916928985
#>     Attrib V3    0.059136107219287144
#>     Attrib V30    -0.22057254332953363
#>     Attrib V31    -0.5879553186636862
#>     Attrib V32    0.35645320190914404
#>     Attrib V33    0.4065679615775059
#>     Attrib V34    0.34471090958866324
#>     Attrib V35    -0.031963689634990876
#>     Attrib V36    -0.6487907235759112
#>     Attrib V37    -0.42067268233983185
#>     Attrib V38    0.08409388717392333
#>     Attrib V39    -0.028428246201038027
#>     Attrib V4    0.26553021476101674
#>     Attrib V40    -0.37543515315441756
#>     Attrib V41    -0.011206607448962364
#>     Attrib V42    0.21616774247538592
#>     Attrib V43    -0.2612684094075644
#>     Attrib V44    -0.12877633850990822
#>     Attrib V45    -0.13479293626952135
#>     Attrib V46    -0.0333341897830623
#>     Attrib V47    -0.08226229866045014
#>     Attrib V48    0.31976914220683356
#>     Attrib V49    0.2836381925935605
#>     Attrib V5    -0.14742204030446818
#>     Attrib V50    -0.43364085399125096
#>     Attrib V51    0.2912401792225186
#>     Attrib V52    0.33009753892635
#>     Attrib V53    -0.06562109618961319
#>     Attrib V54    0.33753762190903125
#>     Attrib V55    -0.38933007942887715
#>     Attrib V56    0.35470984236419556
#>     Attrib V57    -0.4197463302989128
#>     Attrib V58    0.2692778182097488
#>     Attrib V59    0.41173966128475037
#>     Attrib V6    -0.21587703949390266
#>     Attrib V60    0.5030629563052619
#>     Attrib V7    -0.004167268567331298
#>     Attrib V8    -0.5478166108796406
#>     Attrib V9    0.1915884158687603
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.11815907131817034
#>     Attrib V1    0.14187605058343739
#>     Attrib V10    -0.07834098096192679
#>     Attrib V11    0.03837075550706986
#>     Attrib V12    0.29024708896611684
#>     Attrib V13    0.0016427013258986224
#>     Attrib V14    -0.25530001714434347
#>     Attrib V15    -0.03571580925233654
#>     Attrib V16    0.043981959776318615
#>     Attrib V17    0.1416329511310127
#>     Attrib V18    0.061387592539558465
#>     Attrib V19    0.3036212854734218
#>     Attrib V2    0.06859007868234966
#>     Attrib V20    0.3669179184197733
#>     Attrib V21    0.1771958996294225
#>     Attrib V22    0.19106884257293857
#>     Attrib V23    0.25265268409609376
#>     Attrib V24    0.23667954042526718
#>     Attrib V25    0.19265042020695464
#>     Attrib V26    -0.30302330505924735
#>     Attrib V27    -0.6157039333716757
#>     Attrib V28    -0.5147789797044825
#>     Attrib V29    -0.7820476693529105
#>     Attrib V3    -0.025771135050085252
#>     Attrib V30    -0.23297681492203998
#>     Attrib V31    -0.5202197117300453
#>     Attrib V32    0.3618917853794454
#>     Attrib V33    0.44577732131175324
#>     Attrib V34    0.3538389879255444
#>     Attrib V35    0.05823895620062258
#>     Attrib V36    -0.676591468610233
#>     Attrib V37    -0.4208029283006441
#>     Attrib V38    0.08758728786772077
#>     Attrib V39    -0.051047750723163914
#>     Attrib V4    0.25712354697440715
#>     Attrib V40    -0.38858878784956274
#>     Attrib V41    -0.015971423834576497
#>     Attrib V42    0.15224694482201268
#>     Attrib V43    -0.2343588351516556
#>     Attrib V44    -0.08837722783360075
#>     Attrib V45    -0.11212332201876743
#>     Attrib V46    -0.02379080136970702
#>     Attrib V47    -0.12145011580132258
#>     Attrib V48    0.4008673194330975
#>     Attrib V49    0.34292464413248064
#>     Attrib V5    -0.18092230139253443
#>     Attrib V50    -0.41127490361483393
#>     Attrib V51    0.28705263422527655
#>     Attrib V52    0.3527885067762386
#>     Attrib V53    -0.13850906381335626
#>     Attrib V54    0.46200763242031084
#>     Attrib V55    -0.299987981022313
#>     Attrib V56    0.4203526113652411
#>     Attrib V57    -0.435141730794733
#>     Attrib V58    0.33350284506591565
#>     Attrib V59    0.3983729779523191
#>     Attrib V6    -0.25244112905576804
#>     Attrib V60    0.5248720968038272
#>     Attrib V7    -0.07452443165770006
#>     Attrib V8    -0.558732208714868
#>     Attrib V9    0.27013516890156875
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.2684572852631627
#>     Attrib V1    -0.1599223792116547
#>     Attrib V10    0.011499781349139709
#>     Attrib V11    -0.45331565930920525
#>     Attrib V12    -0.8559058773912622
#>     Attrib V13    -0.20799802383748917
#>     Attrib V14    0.5430547641477971
#>     Attrib V15    0.6366470940534207
#>     Attrib V16    0.30347514798681235
#>     Attrib V17    0.1878424666930603
#>     Attrib V18    0.17574798108133738
#>     Attrib V19    -0.06152165329698359
#>     Attrib V2    -0.13272056508402474
#>     Attrib V20    -0.16876078097467914
#>     Attrib V21    -0.12732953684986928
#>     Attrib V22    -0.18372051424376004
#>     Attrib V23    -0.47844151990852557
#>     Attrib V24    -0.5139747134754584
#>     Attrib V25    -0.28225594644161506
#>     Attrib V26    0.30403785519059484
#>     Attrib V27    0.3120327907407816
#>     Attrib V28    -0.1733243264818958
#>     Attrib V29    0.2710101443273578
#>     Attrib V3    0.14836267101606862
#>     Attrib V30    -0.11642294380720679
#>     Attrib V31    0.9839787142406963
#>     Attrib V32    -0.4669471360780269
#>     Attrib V33    -0.5144131599504969
#>     Attrib V34    -0.42579097964338464
#>     Attrib V35    -0.02057286323378282
#>     Attrib V36    1.1022404925761278
#>     Attrib V37    0.4224833103915444
#>     Attrib V38    -0.39579700167193654
#>     Attrib V39    0.10442377954122879
#>     Attrib V4    -0.32538488414363664
#>     Attrib V40    0.6594445495135867
#>     Attrib V41    -0.3920508889477513
#>     Attrib V42    -0.7016927357791447
#>     Attrib V43    -0.07805349168404845
#>     Attrib V44    -0.09685626657890069
#>     Attrib V45    -0.41473498488096033
#>     Attrib V46    -0.17584672587049255
#>     Attrib V47    -0.01645577778255212
#>     Attrib V48    -0.8618272711361424
#>     Attrib V49    -0.8008539480096524
#>     Attrib V5    0.2998363509552543
#>     Attrib V50    0.7539415228875972
#>     Attrib V51    -0.49042225074274504
#>     Attrib V52    -0.617663916915803
#>     Attrib V53    0.5956995002215095
#>     Attrib V54    -0.2880370309386398
#>     Attrib V55    1.000719247666116
#>     Attrib V56    -0.07083639525853884
#>     Attrib V57    0.63917648930022
#>     Attrib V58    -0.29781963814513546
#>     Attrib V59    -0.3672962209580024
#>     Attrib V6    0.2876909630523778
#>     Attrib V60    -0.29926829077883144
#>     Attrib V7    0.176556018814355
#>     Attrib V8    0.5977642801318734
#>     Attrib V9    -0.5006093083580396
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.16424271868879134
#>     Attrib V1    0.04343539793407077
#>     Attrib V10    0.02791421145119326
#>     Attrib V11    0.00844763903795778
#>     Attrib V12    0.07750373597824685
#>     Attrib V13    0.06707790313852811
#>     Attrib V14    -0.002787664283391402
#>     Attrib V15    -0.004768203698445273
#>     Attrib V16    0.05654085474213774
#>     Attrib V17    0.04521610343973577
#>     Attrib V18    0.032522403551333685
#>     Attrib V19    -9.570920786739976E-4
#>     Attrib V2    0.013025120999237794
#>     Attrib V20    -0.03960912798011297
#>     Attrib V21    -0.09489414232688785
#>     Attrib V22    -0.12466593256086464
#>     Attrib V23    -0.12556160190383342
#>     Attrib V24    -0.032982151929551284
#>     Attrib V25    0.013310740605945674
#>     Attrib V26    -0.06409892678871287
#>     Attrib V27    -0.08185061700256784
#>     Attrib V28    -0.04179168386573335
#>     Attrib V29    -0.11718224107620374
#>     Attrib V3    0.08925606516067915
#>     Attrib V30    -0.09031377206729907
#>     Attrib V31    -0.0857452153565175
#>     Attrib V32    0.08626807270724557
#>     Attrib V33    0.0746589818499156
#>     Attrib V34    0.12248665528127978
#>     Attrib V35    0.05340469952803122
#>     Attrib V36    -0.05768033508273426
#>     Attrib V37    0.0035576921317245686
#>     Attrib V38    0.03547877774978181
#>     Attrib V39    0.037553090797401115
#>     Attrib V4    0.1322205906733238
#>     Attrib V40    -0.041912668322475324
#>     Attrib V41    0.042291716862852886
#>     Attrib V42    0.07733632971911958
#>     Attrib V43    -0.02568650568401582
#>     Attrib V44    -0.027222074347323186
#>     Attrib V45    0.0013498206797860905
#>     Attrib V46    0.04896706393950055
#>     Attrib V47    0.03053213240491639
#>     Attrib V48    0.07355210121072925
#>     Attrib V49    0.017299168623233736
#>     Attrib V5    0.049274830507568416
#>     Attrib V50    0.03737724815547559
#>     Attrib V51    0.14675401437058752
#>     Attrib V52    0.15572201626013
#>     Attrib V53    0.12231641597969506
#>     Attrib V54    0.04516836736267739
#>     Attrib V55    0.03751437516195821
#>     Attrib V56    0.1165150162459663
#>     Attrib V57    0.02865994678086466
#>     Attrib V58    0.13685754823011134
#>     Attrib V59    0.06582952736900131
#>     Attrib V6    0.04647013917336094
#>     Attrib V60    0.17832551915888517
#>     Attrib V7    -0.0021093846952691363
#>     Attrib V8    -0.10400077195989732
#>     Attrib V9    0.08550630070528027
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.10145724680026198
#>     Attrib V1    0.09133990308995456
#>     Attrib V10    0.053351551529208265
#>     Attrib V11    0.046303266788752365
#>     Attrib V12    0.07405541490021601
#>     Attrib V13    0.008420326430107412
#>     Attrib V14    0.009293671748837103
#>     Attrib V15    0.07140566368839445
#>     Attrib V16    0.0061169450506841656
#>     Attrib V17    0.0013604179278427346
#>     Attrib V18    -0.01118700040297617
#>     Attrib V19    0.006614436586142089
#>     Attrib V2    0.12782550072455048
#>     Attrib V20    -0.015171912113154764
#>     Attrib V21    -0.06717257192254474
#>     Attrib V22    -0.044693747780201035
#>     Attrib V23    -0.09904889044680174
#>     Attrib V24    -0.04114170781432479
#>     Attrib V25    -0.05173751252298978
#>     Attrib V26    -0.09464811046412848
#>     Attrib V27    -0.07419778618383942
#>     Attrib V28    -0.054722670720663974
#>     Attrib V29    -0.1257149101446782
#>     Attrib V3    0.07094754502167627
#>     Attrib V30    -0.018267641004348037
#>     Attrib V31    -0.04225669823782717
#>     Attrib V32    0.031184486108900355
#>     Attrib V33    0.1328209289853747
#>     Attrib V34    0.07352698242800261
#>     Attrib V35    0.09591100899364123
#>     Attrib V36    -0.0978549933349464
#>     Attrib V37    -0.054625284844971325
#>     Attrib V38    0.08716624846225329
#>     Attrib V39    0.05371918897621919
#>     Attrib V4    0.14865306561530575
#>     Attrib V40    -0.07143157364447787
#>     Attrib V41    0.062460137054370354
#>     Attrib V42    0.039694863737143864
#>     Attrib V43    0.035831988752371285
#>     Attrib V44    0.0506590936804108
#>     Attrib V45    0.04814248691968086
#>     Attrib V46    0.006605875572286229
#>     Attrib V47    -0.013362759982221898
#>     Attrib V48    0.1434011335475732
#>     Attrib V49    0.024468339005731327
#>     Attrib V5    0.05383212006836698
#>     Attrib V50    -0.01053105355050306
#>     Attrib V51    0.11432051082664181
#>     Attrib V52    0.11130115502819338
#>     Attrib V53    0.040365704371874485
#>     Attrib V54    0.08080821207100664
#>     Attrib V55    0.03565994208621725
#>     Attrib V56    0.12772787467700256
#>     Attrib V57    0.054417100233358974
#>     Attrib V58    0.058614381600952184
#>     Attrib V59    0.09618993725424874
#>     Attrib V6    0.044001458961126234
#>     Attrib V60    0.19812810944553763
#>     Attrib V7    -0.041828678713982555
#>     Attrib V8    -0.0661929581362359
#>     Attrib V9    0.0676031214906789
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.22937292557932049
#>     Attrib V1    0.022560824910940865
#>     Attrib V10    0.04206644594202821
#>     Attrib V11    -0.04874116570928256
#>     Attrib V12    -0.14015005865261215
#>     Attrib V13    -0.03866243297531615
#>     Attrib V14    0.04570141982556778
#>     Attrib V15    0.051208162659680576
#>     Attrib V16    0.05412960554200931
#>     Attrib V17    -0.014791796656185163
#>     Attrib V18    0.04732678816302788
#>     Attrib V19    -0.0852163720066435
#>     Attrib V2    0.06200754568441216
#>     Attrib V20    -0.017206046186663503
#>     Attrib V21    4.546133563429631E-4
#>     Attrib V22    -0.0831333026126581
#>     Attrib V23    -0.09943851003904716
#>     Attrib V24    -0.15678654571436854
#>     Attrib V25    -0.10710098017780703
#>     Attrib V26    -0.05088069236900089
#>     Attrib V27    -0.07270413781798639
#>     Attrib V28    -0.11236800494756652
#>     Attrib V29    -0.042540620818357
#>     Attrib V3    0.13386059668668687
#>     Attrib V30    -0.07522247411905143
#>     Attrib V31    0.038834519293786215
#>     Attrib V32    -0.05436554517727403
#>     Attrib V33    0.011030950595983179
#>     Attrib V34    0.03608377053065582
#>     Attrib V35    0.026503079125762153
#>     Attrib V36    0.23002865981198312
#>     Attrib V37    0.09279410099453622
#>     Attrib V38    0.008984540857009967
#>     Attrib V39    0.14213425584021003
#>     Attrib V4    0.013555022449984386
#>     Attrib V40    0.15201125446441457
#>     Attrib V41    0.022654187129005316
#>     Attrib V42    0.008597788892363959
#>     Attrib V43    0.02678050004304704
#>     Attrib V44    0.092957674020807
#>     Attrib V45    -0.0740935396319171
#>     Attrib V46    0.015844284973062374
#>     Attrib V47    0.09314628728685347
#>     Attrib V48    -0.05094606904406321
#>     Attrib V49    -0.041144851481728556
#>     Attrib V5    0.10099402144276419
#>     Attrib V50    0.08678134072260174
#>     Attrib V51    0.07997695202333885
#>     Attrib V52    0.028644771232499002
#>     Attrib V53    0.13027873978748822
#>     Attrib V54    -0.05767691381368918
#>     Attrib V55    0.15400710418265615
#>     Attrib V56    0.056306985617413687
#>     Attrib V57    0.09851044033670124
#>     Attrib V58    0.036185970388410496
#>     Attrib V59    0.014742345374018612
#>     Attrib V6    0.10564788556729511
#>     Attrib V60    0.05739630056141872
#>     Attrib V7    0.13784138089004638
#>     Attrib V8    0.15948946356635046
#>     Attrib V9    -0.012622226722691782
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.00926582937662312
#>     Attrib V1    0.31495787963921623
#>     Attrib V10    -0.3529467659258562
#>     Attrib V11    -0.21461301779560002
#>     Attrib V12    0.2351218930356338
#>     Attrib V13    0.09820557309285075
#>     Attrib V14    0.020884460358260196
#>     Attrib V15    0.1675922181029729
#>     Attrib V16    0.1381093213891328
#>     Attrib V17    0.12412038774783515
#>     Attrib V18    0.009746233268319327
#>     Attrib V19    0.2712818521345668
#>     Attrib V2    0.24014204071968256
#>     Attrib V20    0.5439086601521558
#>     Attrib V21    0.44338465127893384
#>     Attrib V22    0.36868017194759195
#>     Attrib V23    0.18502608781024468
#>     Attrib V24    0.01100840983286981
#>     Attrib V25    -0.2764107090022244
#>     Attrib V26    -0.7919434795500597
#>     Attrib V27    -0.6705220672699654
#>     Attrib V28    -0.04935198218168325
#>     Attrib V29    -0.03952059320136174
#>     Attrib V3    0.09265422697120837
#>     Attrib V30    0.10587528855357552
#>     Attrib V31    -0.9461456121136729
#>     Attrib V32    0.15011961330730703
#>     Attrib V33    0.3877642951188241
#>     Attrib V34    0.12578337273373874
#>     Attrib V35    -0.23998823954084078
#>     Attrib V36    -0.9056655238924062
#>     Attrib V37    -0.15318310747644484
#>     Attrib V38    0.5355725025747353
#>     Attrib V39    0.02287221109337541
#>     Attrib V4    0.5186644266067287
#>     Attrib V40    -0.5147230333720445
#>     Attrib V41    0.22483382331238494
#>     Attrib V42    0.6379314513648665
#>     Attrib V43    -0.09622961579409588
#>     Attrib V44    0.036824516202158375
#>     Attrib V45    0.30691135400161346
#>     Attrib V46    0.05419101652401418
#>     Attrib V47    -0.2775713628975331
#>     Attrib V48    0.357648422091992
#>     Attrib V49    0.3958268172932163
#>     Attrib V5    -0.1539499916359424
#>     Attrib V50    -0.5496044255430205
#>     Attrib V51    0.33688398200622516
#>     Attrib V52    0.5375460005331516
#>     Attrib V53    -0.04896714240350204
#>     Attrib V54    0.759417994768993
#>     Attrib V55    -0.5627795445750681
#>     Attrib V56    0.48737885480098075
#>     Attrib V57    -0.2504559389607638
#>     Attrib V58    0.4617607337946386
#>     Attrib V59    0.7015963741854139
#>     Attrib V6    -0.2333831124465703
#>     Attrib V60    0.6583625535944001
#>     Attrib V7    0.06225141744122582
#>     Attrib V8    -0.7269102639124914
#>     Attrib V9    0.09200693532069124
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.015902012555433352
#>     Attrib V1    0.47615261281800886
#>     Attrib V10    -0.4707410441218656
#>     Attrib V11    -0.40057241323508597
#>     Attrib V12    0.07210965772354307
#>     Attrib V13    0.07237431544274228
#>     Attrib V14    0.08205125286203124
#>     Attrib V15    0.3272411358222901
#>     Attrib V16    0.2880655840257834
#>     Attrib V17    0.1945079260043792
#>     Attrib V18    0.004173210242652818
#>     Attrib V19    0.2111469631170747
#>     Attrib V2    0.28911103182374404
#>     Attrib V20    0.6731353452612241
#>     Attrib V21    0.6448768882537516
#>     Attrib V22    0.457610788003295
#>     Attrib V23    0.16265591332341617
#>     Attrib V24    -0.14552086864975847
#>     Attrib V25    -0.5659755944728735
#>     Attrib V26    -1.0993446510662326
#>     Attrib V27    -0.8298230709350211
#>     Attrib V28    -0.15143952539652222
#>     Attrib V29    0.009792291112072164
#>     Attrib V3    0.11999457260254973
#>     Attrib V30    0.10199131699867685
#>     Attrib V31    -1.194973106515723
#>     Attrib V32    0.05582344532175618
#>     Attrib V33    0.3153192197718376
#>     Attrib V34    -0.06663794017763562
#>     Attrib V35    -0.5121762335077156
#>     Attrib V36    -1.0127141757980418
#>     Attrib V37    0.03541645231817644
#>     Attrib V38    0.759984223481889
#>     Attrib V39    0.03859715361208265
#>     Attrib V4    0.5277678614834417
#>     Attrib V40    -0.6440594764976524
#>     Attrib V41    0.24051353913676055
#>     Attrib V42    0.7059915952874648
#>     Attrib V43    -0.016155052977992513
#>     Attrib V44    0.20373032840453842
#>     Attrib V45    0.32196227423494256
#>     Attrib V46    -0.027330076474579554
#>     Attrib V47    -0.40621162638939745
#>     Attrib V48    0.2812935147995896
#>     Attrib V49    0.1987252923591946
#>     Attrib V5    -0.17852285921566013
#>     Attrib V50    -0.6193118343303268
#>     Attrib V51    0.4112311521510281
#>     Attrib V52    0.5246347224889454
#>     Attrib V53    -0.04728675909728315
#>     Attrib V54    0.9831487789178555
#>     Attrib V55    -0.693919102610414
#>     Attrib V56    0.6981860410907039
#>     Attrib V57    -0.1525496265346829
#>     Attrib V58    0.4886576773141752
#>     Attrib V59    0.8539072810647909
#>     Attrib V6    -0.23687102076010974
#>     Attrib V60    0.7850065248371864
#>     Attrib V7    0.1835412026965467
#>     Attrib V8    -0.9062752784818743
#>     Attrib V9    -0.00987869268531227
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.11201746033542873
#>     Attrib V1    -0.09553066399322545
#>     Attrib V10    -0.1854958525574141
#>     Attrib V11    -0.7159972863850185
#>     Attrib V12    -1.0682820720776223
#>     Attrib V13    -0.2770963665791988
#>     Attrib V14    0.5498231870167031
#>     Attrib V15    0.5852483338532617
#>     Attrib V16    0.2272719905777814
#>     Attrib V17    0.06044997776226195
#>     Attrib V18    0.04088611541507334
#>     Attrib V19    -0.4027515106269213
#>     Attrib V2    -0.2402093788643661
#>     Attrib V20    -0.3805410317280615
#>     Attrib V21    -0.07080666645795605
#>     Attrib V22    -0.22022184920690083
#>     Attrib V23    -0.5392093236655444
#>     Attrib V24    -0.5567087250804608
#>     Attrib V25    -0.30851770186035626
#>     Attrib V26    0.2168375282576459
#>     Attrib V27    0.3767007143594478
#>     Attrib V28    -0.16110281300058746
#>     Attrib V29    0.3974945317755059
#>     Attrib V3    0.028920855667348838
#>     Attrib V30    -0.06410773745645941
#>     Attrib V31    1.0999163076625462
#>     Attrib V32    -0.46075229224907416
#>     Attrib V33    -0.4311969656890712
#>     Attrib V34    -0.4626652164371522
#>     Attrib V35    -0.06112924489145651
#>     Attrib V36    1.2476500674206188
#>     Attrib V37    0.5829812923313065
#>     Attrib V38    -0.3265971704128323
#>     Attrib V39    0.17772456608927495
#>     Attrib V4    -0.36719761071812324
#>     Attrib V40    0.8613424871527655
#>     Attrib V41    -0.11452197547621232
#>     Attrib V42    -0.5197459284246801
#>     Attrib V43    0.10843000942662563
#>     Attrib V44    -0.03693446498771578
#>     Attrib V45    -0.48629622092500313
#>     Attrib V46    -0.22904251706356102
#>     Attrib V47    -0.1109803007290755
#>     Attrib V48    -0.9677712766295923
#>     Attrib V49    -1.0188273850087792
#>     Attrib V5    0.3033889631266899
#>     Attrib V50    0.7422062614857552
#>     Attrib V51    -0.6798436359012836
#>     Attrib V52    -0.8312138966580854
#>     Attrib V53    0.4268401358758729
#>     Attrib V54    -0.4245296377843092
#>     Attrib V55    0.8757014356189788
#>     Attrib V56    -0.2287693503200769
#>     Attrib V57    0.9455475521246334
#>     Attrib V58    -0.4631236329091134
#>     Attrib V59    -0.14723877838907243
#>     Attrib V6    0.2665893898127893
#>     Attrib V60    -0.06178967143963773
#>     Attrib V7    0.2670495955667984
#>     Attrib V8    0.43067424021035366
#>     Attrib V9    -0.701438586163704
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.12602825508507542
#>     Attrib V1    0.12391364729453969
#>     Attrib V10    0.031106371106038068
#>     Attrib V11    0.04713926884267576
#>     Attrib V12    0.1542520595423698
#>     Attrib V13    0.05655785339033062
#>     Attrib V14    0.06006684485201988
#>     Attrib V15    -0.024203819749082287
#>     Attrib V16    0.04214800956490779
#>     Attrib V17    0.010976880243565999
#>     Attrib V18    -0.010982666238019172
#>     Attrib V19    -0.04050802456194245
#>     Attrib V2    0.08824199855638198
#>     Attrib V20    0.009920597516496007
#>     Attrib V21    -0.09049334045100166
#>     Attrib V22    -0.1545710742105681
#>     Attrib V23    -0.1432969167381915
#>     Attrib V24    -0.027670178890257312
#>     Attrib V25    -0.020217694906067972
#>     Attrib V26    -0.0978796382898988
#>     Attrib V27    -0.09655146046171265
#>     Attrib V28    -0.096897543346232
#>     Attrib V29    -0.10516433256505557
#>     Attrib V3    0.05917834770099858
#>     Attrib V30    -0.08129642203047231
#>     Attrib V31    -0.062212728789986335
#>     Attrib V32    0.07524344803494387
#>     Attrib V33    0.0580821440728716
#>     Attrib V34    0.10134250613896971
#>     Attrib V35    0.07645905103991338
#>     Attrib V36    -0.11103793489605242
#>     Attrib V37    -0.044702611942284434
#>     Attrib V38    0.014457082215280734
#>     Attrib V39    -0.02502941250486504
#>     Attrib V4    0.17362562381250796
#>     Attrib V40    -0.06844779044228329
#>     Attrib V41    -0.028125626678371856
#>     Attrib V42    0.024487530254113477
#>     Attrib V43    0.03558978124686754
#>     Attrib V44    0.0035882524085289807
#>     Attrib V45    -0.043823082039035864
#>     Attrib V46    0.05351743570028171
#>     Attrib V47    -0.02449306433317975
#>     Attrib V48    0.15394395240813663
#>     Attrib V49    0.07336393837341024
#>     Attrib V5    0.058171581068835666
#>     Attrib V50    -0.0403625329270229
#>     Attrib V51    0.1090649925189918
#>     Attrib V52    0.164960509071118
#>     Attrib V53    0.06649713079814189
#>     Attrib V54    0.15677989834281056
#>     Attrib V55    0.023062992634170266
#>     Attrib V56    0.19313166119492658
#>     Attrib V57    0.0018327190361816022
#>     Attrib V58    0.18425239441365243
#>     Attrib V59    0.17685354219778956
#>     Attrib V6    0.02690813838187304
#>     Attrib V60    0.2783242826999112
#>     Attrib V7    -0.011406502987177106
#>     Attrib V8    -0.20926437700662057
#>     Attrib V9    0.09056717789449058
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.11130137102711377
#>     Attrib V1    0.501914941364182
#>     Attrib V10    -0.48794634608751275
#>     Attrib V11    -0.3598245359067321
#>     Attrib V12    0.052608390563856335
#>     Attrib V13    0.07255227744758946
#>     Attrib V14    0.047733405411270094
#>     Attrib V15    0.34789910506914334
#>     Attrib V16    0.31879034866072653
#>     Attrib V17    0.28096526978249764
#>     Attrib V18    -0.0033363809473488147
#>     Attrib V19    0.14878668236226472
#>     Attrib V2    0.29421951580651096
#>     Attrib V20    0.5737453680758505
#>     Attrib V21    0.48940656704312396
#>     Attrib V22    0.37146141034690544
#>     Attrib V23    0.08125982615296687
#>     Attrib V24    -0.2121623662741961
#>     Attrib V25    -0.5326762672561375
#>     Attrib V26    -1.0982874330740946
#>     Attrib V27    -1.0403996974499325
#>     Attrib V28    -0.4303468585598548
#>     Attrib V29    -0.30158866852916066
#>     Attrib V3    0.20910612236627474
#>     Attrib V30    -0.07750742069130696
#>     Attrib V31    -1.0965677642880847
#>     Attrib V32    0.17146444063625088
#>     Attrib V33    0.3969394474163384
#>     Attrib V34    -0.007454859701552333
#>     Attrib V35    -0.4229771176092337
#>     Attrib V36    -0.9308700647744023
#>     Attrib V37    0.05390201284625908
#>     Attrib V38    0.6883925391455444
#>     Attrib V39    0.08839170533469919
#>     Attrib V4    0.5672490746068599
#>     Attrib V40    -0.6582407140011945
#>     Attrib V41    0.12569763916106722
#>     Attrib V42    0.6331851754334367
#>     Attrib V43    -0.02541140098010335
#>     Attrib V44    0.12481160091925701
#>     Attrib V45    0.2598674762588418
#>     Attrib V46    -0.02221349668904735
#>     Attrib V47    -0.328271709271781
#>     Attrib V48    0.17361188646687822
#>     Attrib V49    0.09706743411644822
#>     Attrib V5    -0.18222242807123873
#>     Attrib V50    -0.6402012134072409
#>     Attrib V51    0.3217638553866219
#>     Attrib V52    0.48291198488804826
#>     Attrib V53    -0.04768406860888639
#>     Attrib V54    0.8959570167118857
#>     Attrib V55    -0.599057525315711
#>     Attrib V56    0.7614694507065607
#>     Attrib V57    -0.1473725808235386
#>     Attrib V58    0.4502010003257134
#>     Attrib V59    0.8545431380040056
#>     Attrib V6    -0.23768188058947054
#>     Attrib V60    0.780642151354187
#>     Attrib V7    0.10609690395934887
#>     Attrib V8    -0.8800066338239978
#>     Attrib V9    -0.015176662730740604
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.3223374240518837
#>     Attrib V1    -0.12700318114089507
#>     Attrib V10    0.03415412118775592
#>     Attrib V11    -0.3568032202324595
#>     Attrib V12    -0.8619168290333374
#>     Attrib V13    -0.18024992900523626
#>     Attrib V14    0.5616435668474303
#>     Attrib V15    0.7037897515672937
#>     Attrib V16    0.36076323965150464
#>     Attrib V17    0.31525106631516026
#>     Attrib V18    0.217358410923807
#>     Attrib V19    0.004517155072663807
#>     Attrib V2    -0.10715153540829125
#>     Attrib V20    -0.06829872855729738
#>     Attrib V21    -0.015071559448873482
#>     Attrib V22    -0.1743371679548418
#>     Attrib V23    -0.4488284699242589
#>     Attrib V24    -0.5589629011372375
#>     Attrib V25    -0.26869027671319246
#>     Attrib V26    0.2622282256251892
#>     Attrib V27    0.2242996175218531
#>     Attrib V28    -0.2837751969198925
#>     Attrib V29    0.05995090320500657
#>     Attrib V3    0.13809983168993276
#>     Attrib V30    -0.2013028869612662
#>     Attrib V31    0.8834180316644454
#>     Attrib V32    -0.43480521655363624
#>     Attrib V33    -0.5527830008923038
#>     Attrib V34    -0.515527923108289
#>     Attrib V35    -0.09283538358492925
#>     Attrib V36    1.067455052852162
#>     Attrib V37    0.31382361178457174
#>     Attrib V38    -0.35136655587738874
#>     Attrib V39    0.15499961939908583
#>     Attrib V4    -0.26634892120546483
#>     Attrib V40    0.6748055528634164
#>     Attrib V41    -0.4277078064387826
#>     Attrib V42    -0.7522429965905136
#>     Attrib V43    -0.07260493076376023
#>     Attrib V44    -0.1318686749291782
#>     Attrib V45    -0.5596677184311593
#>     Attrib V46    -0.2090225940558045
#>     Attrib V47    0.02635514030899687
#>     Attrib V48    -0.8525012159676458
#>     Attrib V49    -0.7998951452088683
#>     Attrib V5    0.25370469035062676
#>     Attrib V50    0.7491585541169969
#>     Attrib V51    -0.41951592282699735
#>     Attrib V52    -0.4652751492427299
#>     Attrib V53    0.5469109785265753
#>     Attrib V54    -0.24481275583653042
#>     Attrib V55    1.0952276661545415
#>     Attrib V56    0.030347340422186744
#>     Attrib V57    0.6747568941325693
#>     Attrib V58    -0.17521866123882104
#>     Attrib V59    -0.3384616385830799
#>     Attrib V6    0.2942045467425189
#>     Attrib V60    -0.26509671445332567
#>     Attrib V7    0.20548267537097523
#>     Attrib V8    0.5676432815274947
#>     Attrib V9    -0.4185206486708809
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.8743153953343035
#>     Attrib V1    0.048942474921819926
#>     Attrib V10    0.4409480855573925
#>     Attrib V11    0.9213220025464537
#>     Attrib V12    1.2489197010922786
#>     Attrib V13    0.056307516253546186
#>     Attrib V14    -0.2646960193717496
#>     Attrib V15    -1.0736799070361687
#>     Attrib V16    -0.5893957201773355
#>     Attrib V17    -0.3667303237282539
#>     Attrib V18    0.3164386524269837
#>     Attrib V19    0.48118968537866735
#>     Attrib V2    0.26018929051838735
#>     Attrib V20    0.2965095647648029
#>     Attrib V21    0.6904790780491867
#>     Attrib V22    0.2786098072496041
#>     Attrib V23    0.583208131851097
#>     Attrib V24    0.5401816863358879
#>     Attrib V25    0.2661581904233827
#>     Attrib V26    0.5744495602965833
#>     Attrib V27    1.234114451159558
#>     Attrib V28    2.3063473449065732
#>     Attrib V29    1.9813505073002018
#>     Attrib V3    0.013708924387844743
#>     Attrib V30    0.8135927182856532
#>     Attrib V31    -1.027383090425687
#>     Attrib V32    -0.4465475088295837
#>     Attrib V33    -0.914445388713241
#>     Attrib V34    -0.11202694292415853
#>     Attrib V35    0.29030263376265664
#>     Attrib V36    -1.0796446483030564
#>     Attrib V37    -0.17590292836195554
#>     Attrib V38    0.007509863349579875
#>     Attrib V39    -0.07895915394368691
#>     Attrib V4    0.5218841649476424
#>     Attrib V40    -0.09435544999581565
#>     Attrib V41    0.9952946118279064
#>     Attrib V42    0.21422440770518392
#>     Attrib V43    -5.004709122233652E-4
#>     Attrib V44    0.2966119022006219
#>     Attrib V45    0.9330089389970878
#>     Attrib V46    0.8196732096914388
#>     Attrib V47    0.6054508465339085
#>     Attrib V48    1.2570434073105345
#>     Attrib V49    1.4523366625776502
#>     Attrib V5    0.30424143739053183
#>     Attrib V50    0.26768656697583465
#>     Attrib V51    0.6947835040466346
#>     Attrib V52    1.1126143484900768
#>     Attrib V53    0.5885717316216443
#>     Attrib V54    0.14361065866186223
#>     Attrib V55    -0.9751895734350456
#>     Attrib V56    -0.28445607684257995
#>     Attrib V57    0.05326984600755549
#>     Attrib V58    0.04106143021788956
#>     Attrib V59    -0.18456177638891172
#>     Attrib V6    0.7275848358321623
#>     Attrib V60    -0.05005359570435272
#>     Attrib V7    -0.2410141543977076
#>     Attrib V8    -0.15407034974525968
#>     Attrib V9    0.5404064501666827
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.22219287924164488
#>     Attrib V1    0.04757286655805234
#>     Attrib V10    0.012095889197881437
#>     Attrib V11    -0.03982022350357734
#>     Attrib V12    0.006688798709550849
#>     Attrib V13    -0.011884337344853705
#>     Attrib V14    0.08164839882146471
#>     Attrib V15    0.04063576984240262
#>     Attrib V16    0.04267465868386864
#>     Attrib V17    0.04767951385157042
#>     Attrib V18    -0.04406620739666039
#>     Attrib V19    0.009827597784586063
#>     Attrib V2    0.07956946786118452
#>     Attrib V20    -0.017232052127448317
#>     Attrib V21    -0.04113313472076318
#>     Attrib V22    -0.10958882295515408
#>     Attrib V23    -0.11229864695680158
#>     Attrib V24    -0.12248724246250323
#>     Attrib V25    -0.06219448124789204
#>     Attrib V26    -0.07317702340847379
#>     Attrib V27    -0.05475515013560607
#>     Attrib V28    -0.04943908219638065
#>     Attrib V29    -0.046632902592377054
#>     Attrib V3    0.05273422348730403
#>     Attrib V30    -0.04152885598124749
#>     Attrib V31    -0.023569259082173326
#>     Attrib V32    -0.0013887299410252649
#>     Attrib V33    0.08810249177763638
#>     Attrib V34    0.042908039176323486
#>     Attrib V35    0.10761584577662997
#>     Attrib V36    0.10771103497044839
#>     Attrib V37    0.09275844988979169
#>     Attrib V38    0.006925586162909109
#>     Attrib V39    0.0921229779662391
#>     Attrib V4    0.12359125564717581
#>     Attrib V40    0.07637983138085302
#>     Attrib V41    0.041609307205711175
#>     Attrib V42    0.050811305253297974
#>     Attrib V43    0.013388021506583305
#>     Attrib V44    0.04120030621452527
#>     Attrib V45    -0.02469078406432923
#>     Attrib V46    0.018391441413076765
#>     Attrib V47    0.027119734966795025
#>     Attrib V48    0.07063902841153324
#>     Attrib V49    -0.010526845873548962
#>     Attrib V5    0.03721010399757293
#>     Attrib V50    0.07670421218724961
#>     Attrib V51    0.05323652874540849
#>     Attrib V52    0.07274177103702402
#>     Attrib V53    0.0895785920355009
#>     Attrib V54    0.0029581891819524396
#>     Attrib V55    0.07965641781862622
#>     Attrib V56    0.0924776268496213
#>     Attrib V57    0.10703181803267711
#>     Attrib V58    0.07535354096768793
#>     Attrib V59    0.06711235978553445
#>     Attrib V6    0.12224097888837418
#>     Attrib V60    0.15065649180251062
#>     Attrib V7    0.03003904172223122
#>     Attrib V8    0.05369861088925486
#>     Attrib V9    0.005574433519505964
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    5.012819169398993E-4
#>     Attrib V1    0.4039296064721272
#>     Attrib V10    -0.3226521111216226
#>     Attrib V11    -0.20655553234828278
#>     Attrib V12    0.1590206984849258
#>     Attrib V13    0.10706655306906697
#>     Attrib V14    -0.021797336045996922
#>     Attrib V15    0.15889870060691294
#>     Attrib V16    0.1758719696236304
#>     Attrib V17    0.11635358591851165
#>     Attrib V18    0.06847933693230272
#>     Attrib V19    0.21125508493148543
#>     Attrib V2    0.23677429898024888
#>     Attrib V20    0.47532701708014896
#>     Attrib V21    0.44550622343878005
#>     Attrib V22    0.327165219894426
#>     Attrib V23    0.1347653405919409
#>     Attrib V24    -0.008098045531057921
#>     Attrib V25    -0.3335738064810864
#>     Attrib V26    -0.7516191244586294
#>     Attrib V27    -0.712631133061557
#>     Attrib V28    -0.17095869442357525
#>     Attrib V29    -0.07224008271433238
#>     Attrib V3    0.11575433877892341
#>     Attrib V30    0.06913772688402377
#>     Attrib V31    -0.9100325463335694
#>     Attrib V32    0.18222678604755901
#>     Attrib V33    0.32759306395070875
#>     Attrib V34    0.11642229971457663
#>     Attrib V35    -0.30510482843805636
#>     Attrib V36    -0.881691763482193
#>     Attrib V37    -0.09288482689910814
#>     Attrib V38    0.5527411027150485
#>     Attrib V39    0.06826118767967371
#>     Attrib V4    0.48093551512032806
#>     Attrib V40    -0.5795109246511333
#>     Attrib V41    0.20518359032085576
#>     Attrib V42    0.572924465587896
#>     Attrib V43    -0.10482768096018476
#>     Attrib V44    0.11415958646739399
#>     Attrib V45    0.29429759430942876
#>     Attrib V46    -0.00740611774708333
#>     Attrib V47    -0.274417626904821
#>     Attrib V48    0.3642271997905341
#>     Attrib V49    0.26197829686596125
#>     Attrib V5    -0.14944849828479267
#>     Attrib V50    -0.4597881773391874
#>     Attrib V51    0.3752607819740596
#>     Attrib V52    0.4909688428760299
#>     Attrib V53    -0.04417091103641234
#>     Attrib V54    0.7632108334662274
#>     Attrib V55    -0.5140536279227104
#>     Attrib V56    0.5120727443554912
#>     Attrib V57    -0.16621761683803646
#>     Attrib V58    0.42998623309079553
#>     Attrib V59    0.7368767035046266
#>     Attrib V6    -0.1861782631400139
#>     Attrib V60    0.6651248236917969
#>     Attrib V7    0.0016677637946685656
#>     Attrib V8    -0.713698972570435
#>     Attrib V9    0.087122570150953
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.7147099705584917
#>     Attrib V1    0.022319529316458024
#>     Attrib V10    -0.42961092211091384
#>     Attrib V11    -0.8321443264733496
#>     Attrib V12    -1.1709679005425395
#>     Attrib V13    -0.11405038565597
#>     Attrib V14    0.32216900125253356
#>     Attrib V15    1.1227423625254678
#>     Attrib V16    0.6434162531426298
#>     Attrib V17    0.3387243771848988
#>     Attrib V18    -0.3117216171661151
#>     Attrib V19    -0.6804753265438993
#>     Attrib V2    -0.3762241497036074
#>     Attrib V20    -0.4312593243160357
#>     Attrib V21    -0.7081131997375738
#>     Attrib V22    -0.42820478874989976
#>     Attrib V23    -0.9132863797948826
#>     Attrib V24    -0.7323857929099759
#>     Attrib V25    -0.33062112623494605
#>     Attrib V26    -0.4714996225891122
#>     Attrib V27    -1.1036534368307762
#>     Attrib V28    -2.2552933672825297
#>     Attrib V29    -1.886064627891318
#>     Attrib V3    -0.04170095035301939
#>     Attrib V30    -0.8260542736870206
#>     Attrib V31    1.1024537707557893
#>     Attrib V32    0.4260375449604038
#>     Attrib V33    0.6324439236932095
#>     Attrib V34    -0.0697551964757156
#>     Attrib V35    -0.3641227470540539
#>     Attrib V36    1.1266028746854957
#>     Attrib V37    0.33384030480823285
#>     Attrib V38    0.10676008193410345
#>     Attrib V39    0.22161485677146525
#>     Attrib V4    -0.6124745454114682
#>     Attrib V40    0.21195567380550723
#>     Attrib V41    -1.0575039926545535
#>     Attrib V42    -0.4340359872058268
#>     Attrib V43    -0.017585117953603926
#>     Attrib V44    -0.2427516687364453
#>     Attrib V45    -0.8620119705050584
#>     Attrib V46    -0.7913193664840535
#>     Attrib V47    -0.7766866760218946
#>     Attrib V48    -1.4126865131076396
#>     Attrib V49    -1.6789864071551206
#>     Attrib V5    -0.3130847873000453
#>     Attrib V50    -0.22649540914295135
#>     Attrib V51    -0.8278736195932923
#>     Attrib V52    -1.0385838165470107
#>     Attrib V53    -0.3307924148492969
#>     Attrib V54    -0.10578056202956129
#>     Attrib V55    1.1515341989027288
#>     Attrib V56    0.35473620132412775
#>     Attrib V57    0.25618989071683396
#>     Attrib V58    -0.15500669243361834
#>     Attrib V59    0.1435911669858041
#>     Attrib V6    -0.7125257728683038
#>     Attrib V60    0.11018998948907924
#>     Attrib V7    0.20646298036200392
#>     Attrib V8    -0.03212834846435092
#>     Attrib V9    -0.574768689690885
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.06374127920006355
#>     Attrib V1    0.033360868665103655
#>     Attrib V10    -0.13010437710638975
#>     Attrib V11    0.04887808143587085
#>     Attrib V12    0.28250493644427593
#>     Attrib V13    0.03159638310972861
#>     Attrib V14    -0.14128341996367944
#>     Attrib V15    -0.06295710236432471
#>     Attrib V16    0.0627774197199596
#>     Attrib V17    0.1416039463314861
#>     Attrib V18    0.11137044867125638
#>     Attrib V19    0.33235714215326495
#>     Attrib V2    0.02070559093932194
#>     Attrib V20    0.45312464881070863
#>     Attrib V21    0.2903200566697708
#>     Attrib V22    0.28178089808578766
#>     Attrib V23    0.21983905876286772
#>     Attrib V24    0.29930840379162355
#>     Attrib V25    0.23276830653182223
#>     Attrib V26    -0.28507686683395994
#>     Attrib V27    -0.46694793563847015
#>     Attrib V28    -0.3316299015416105
#>     Attrib V29    -0.5382553453661971
#>     Attrib V3    0.029895912638162797
#>     Attrib V30    -0.2340029970199688
#>     Attrib V31    -0.5648875281014735
#>     Attrib V32    0.29958500753542433
#>     Attrib V33    0.3537314899755631
#>     Attrib V34    0.2994531065338952
#>     Attrib V35    0.017122406306776757
#>     Attrib V36    -0.6533283025739621
#>     Attrib V37    -0.38716156075185504
#>     Attrib V38    0.10012197585360068
#>     Attrib V39    -0.06825003272932027
#>     Attrib V4    0.22878182842649614
#>     Attrib V40    -0.4063154181748554
#>     Attrib V41    0.013041487165737269
#>     Attrib V42    0.14566338733272638
#>     Attrib V43    -0.17492700372149914
#>     Attrib V44    -0.17037668906286352
#>     Attrib V45    -0.007701343499284127
#>     Attrib V46    -0.04105042379907652
#>     Attrib V47    -0.0775467110364026
#>     Attrib V48    0.34822655587492757
#>     Attrib V49    0.27964050617221275
#>     Attrib V5    -0.163440687309818
#>     Attrib V50    -0.3818838968822146
#>     Attrib V51    0.3214222817138794
#>     Attrib V52    0.395121160201336
#>     Attrib V53    -0.09840883942564742
#>     Attrib V54    0.33950900444620175
#>     Attrib V55    -0.32720400824531737
#>     Attrib V56    0.32695899135932566
#>     Attrib V57    -0.4231074748087952
#>     Attrib V58    0.24835755298075923
#>     Attrib V59    0.3326003339769647
#>     Attrib V6    -0.1767839942145084
#>     Attrib V60    0.43136163522315596
#>     Attrib V7    -0.07749446299302878
#>     Attrib V8    -0.4828036703503502
#>     Attrib V9    0.23357128231517954
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.13357377755623312
#>     Attrib V1    0.08944763279741184
#>     Attrib V10    0.06625710077893246
#>     Attrib V11    0.03737510931722845
#>     Attrib V12    0.1483764016258718
#>     Attrib V13    0.09386665063335946
#>     Attrib V14    0.029732036301168534
#>     Attrib V15    0.021169176220180594
#>     Attrib V16    0.0055717899204561615
#>     Attrib V17    0.04085991913220043
#>     Attrib V18    -0.007755952762128729
#>     Attrib V19    -0.03456485570722635
#>     Attrib V2    0.08402222999497481
#>     Attrib V20    -0.023939592436557834
#>     Attrib V21    -0.03772273371125087
#>     Attrib V22    -0.11105642694841557
#>     Attrib V23    -0.08326673035724863
#>     Attrib V24    -0.07860327762340705
#>     Attrib V25    0.03292558398662834
#>     Attrib V26    -0.0023877539954915996
#>     Attrib V27    -0.0682085504522271
#>     Attrib V28    -0.03134414482211933
#>     Attrib V29    -0.15977435101682752
#>     Attrib V3    0.05383393841062003
#>     Attrib V30    -0.04308550863056976
#>     Attrib V31    -0.016887864792623695
#>     Attrib V32    0.05384218826908435
#>     Attrib V33    0.061907210768095855
#>     Attrib V34    0.08933822448516689
#>     Attrib V35    0.10308197212950279
#>     Attrib V36    -0.0775399676938829
#>     Attrib V37    -0.007052491238221675
#>     Attrib V38    -3.6357605107373026E-4
#>     Attrib V39    0.08137235190202417
#>     Attrib V4    0.16422372538324248
#>     Attrib V40    -0.012568915562132545
#>     Attrib V41    0.032142165542365056
#>     Attrib V42    0.07199227366571374
#>     Attrib V43    -0.03634689512773467
#>     Attrib V44    -0.039027270362883226
#>     Attrib V45    -0.01247010270176446
#>     Attrib V46    0.020647322959466856
#>     Attrib V47    -0.003978502585968091
#>     Attrib V48    0.12779617385699382
#>     Attrib V49    0.03475375108791248
#>     Attrib V5    -0.0012169851480049508
#>     Attrib V50    -0.027002171503984602
#>     Attrib V51    0.0861120880477943
#>     Attrib V52    0.143784164621865
#>     Attrib V53    0.08813794696109445
#>     Attrib V54    0.08402026265558829
#>     Attrib V55    -0.010106396877423434
#>     Attrib V56    0.15341938763926882
#>     Attrib V57    -0.04070517711039595
#>     Attrib V58    0.1281115762891488
#>     Attrib V59    0.1575150259267615
#>     Attrib V6    0.03278283965820832
#>     Attrib V60    0.21095307403143818
#>     Attrib V7    -0.04605367031238589
#>     Attrib V8    -0.11451440537179379
#>     Attrib V9    0.04803717068672379
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.2082780496677805
#>     Attrib V1    0.4251571771849385
#>     Attrib V10    -0.3927731228582041
#>     Attrib V11    -0.2933079272596546
#>     Attrib V12    -0.022530915119092138
#>     Attrib V13    0.06432724559050007
#>     Attrib V14    0.06700993029961372
#>     Attrib V15    0.33397839065680207
#>     Attrib V16    0.3188574342230235
#>     Attrib V17    0.24517382741216506
#>     Attrib V18    0.004682054465046542
#>     Attrib V19    0.09283010681650762
#>     Attrib V2    0.34048434745965694
#>     Attrib V20    0.4895932697368757
#>     Attrib V21    0.31639953124303205
#>     Attrib V22    0.2604574500805878
#>     Attrib V23    0.020319012200341696
#>     Attrib V24    -0.1119926236999405
#>     Attrib V25    -0.4128093438746271
#>     Attrib V26    -0.9010679665296912
#>     Attrib V27    -0.9300215139970899
#>     Attrib V28    -0.5164964595730165
#>     Attrib V29    -0.39653529094979356
#>     Attrib V3    0.14773425054394718
#>     Attrib V30    -0.14118602712115352
#>     Attrib V31    -0.8070460269461087
#>     Attrib V32    0.18674200463422863
#>     Attrib V33    0.3796673788442744
#>     Attrib V34    0.06370382320678539
#>     Attrib V35    -0.30537759615420895
#>     Attrib V36    -0.7705264532915538
#>     Attrib V37    0.005588461504847335
#>     Attrib V38    0.5922076162901663
#>     Attrib V39    0.06447385071128614
#>     Attrib V4    0.4663356766752364
#>     Attrib V40    -0.47972902904572223
#>     Attrib V41    0.08143868987537248
#>     Attrib V42    0.5154981247082355
#>     Attrib V43    -0.03380803570383323
#>     Attrib V44    0.11599872925467992
#>     Attrib V45    0.10947463226566408
#>     Attrib V46    -0.02939436159371668
#>     Attrib V47    -0.29028475776035284
#>     Attrib V48    0.19328590715733476
#>     Attrib V49    0.06427081637615553
#>     Attrib V5    -0.1509876776756472
#>     Attrib V50    -0.5297131497234928
#>     Attrib V51    0.29204432686253007
#>     Attrib V52    0.3821968053548461
#>     Attrib V53    0.015586727465525994
#>     Attrib V54    0.7885421314480439
#>     Attrib V55    -0.371291254760267
#>     Attrib V56    0.634791768958756
#>     Attrib V57    -0.09801646368461753
#>     Attrib V58    0.36276090597750416
#>     Attrib V59    0.6991865677686886
#>     Attrib V6    -0.2149874207428028
#>     Attrib V60    0.7212594328034353
#>     Attrib V7    0.07485190743478329
#>     Attrib V8    -0.7238244538246401
#>     Attrib V9    0.013056009868540101
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.14525064829649384
#>     Attrib V1    0.09434571078641905
#>     Attrib V10    -0.03159686471675063
#>     Attrib V11    0.03049151079768969
#>     Attrib V12    0.084498099969796
#>     Attrib V13    0.007588541286997178
#>     Attrib V14    0.07942210130149394
#>     Attrib V15    0.04074833671129151
#>     Attrib V16    0.0409155421161363
#>     Attrib V17    -0.021413441533771675
#>     Attrib V18    0.042623189339983165
#>     Attrib V19    -0.05813733717131875
#>     Attrib V2    0.05043820272073944
#>     Attrib V20    0.014985619125439734
#>     Attrib V21    -0.03240039376891137
#>     Attrib V22    -0.110237295083472
#>     Attrib V23    -0.05433845835487456
#>     Attrib V24    -0.07474974709030756
#>     Attrib V25    -0.07493315134727875
#>     Attrib V26    -0.08648105389832246
#>     Attrib V27    -0.08556151954787133
#>     Attrib V28    -0.024056108646640813
#>     Attrib V29    -0.08546497254177236
#>     Attrib V3    0.10472567128809993
#>     Attrib V30    -0.015077778164151576
#>     Attrib V31    -0.10208003772640155
#>     Attrib V32    0.039657464134374106
#>     Attrib V33    0.10240156165894486
#>     Attrib V34    0.10304190985681244
#>     Attrib V35    0.0738988102112474
#>     Attrib V36    0.0014195531115626851
#>     Attrib V37    -0.016970506869379794
#>     Attrib V38    -0.006483991405922209
#>     Attrib V39    0.04375059860527797
#>     Attrib V4    0.11358905247636222
#>     Attrib V40    -0.04565487886685164
#>     Attrib V41    -0.007120074712299661
#>     Attrib V42    0.06651853374771974
#>     Attrib V43    -0.04513297914135375
#>     Attrib V44    0.04187778417940805
#>     Attrib V45    0.033122568413073976
#>     Attrib V46    0.03714348213556483
#>     Attrib V47    0.02303231368286081
#>     Attrib V48    0.05863645788192465
#>     Attrib V49    0.08015635883123501
#>     Attrib V5    0.06125180963193036
#>     Attrib V50    -0.02760238541505413
#>     Attrib V51    0.11801493684626954
#>     Attrib V52    0.1702165761141868
#>     Attrib V53    0.08802831089299153
#>     Attrib V54    0.03969294829636766
#>     Attrib V55    -4.5082282679077904E-4
#>     Attrib V56    0.10599646034475345
#>     Attrib V57    -2.684299785029845E-4
#>     Attrib V58    0.1498751202372654
#>     Attrib V59    0.09620522551499992
#>     Attrib V6    0.07102056462576206
#>     Attrib V60    0.16203851786934143
#>     Attrib V7    0.018786302133223992
#>     Attrib V8    -0.03536296260428548
#>     Attrib V9    0.07627951089540881
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
