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
#>     Threshold    -0.10767033292970968
#>     Node 2    2.0660054754935717
#>     Node 3    1.0280291489700468
#>     Node 4    0.33440611225783984
#>     Node 5    -1.6597644206065032
#>     Node 6    1.6355761713642771
#>     Node 7    2.1084704897353586
#>     Node 8    1.3037999313359208
#>     Node 9    2.3486912555776724
#>     Node 10    -4.110225212411734
#>     Node 11    1.221620380903943
#>     Node 12    1.731491780736724
#>     Node 13    0.8582972933791339
#>     Node 14    1.6432502550105519
#>     Node 15    -2.058102324930983
#>     Node 16    0.8561778068302459
#>     Node 17    0.9758471235764556
#>     Node 18    0.26072495577304394
#>     Node 19    1.7566772897525174
#>     Node 20    1.922722231346381
#>     Node 21    -1.5522493171653675
#>     Node 22    1.63641589932113
#>     Node 23    1.9250737931923825
#>     Node 24    -0.8290077981567917
#>     Node 25    3.4303599696378266
#>     Node 26    0.24322483436013104
#>     Node 27    1.7751280643154708
#>     Node 28    -3.1339505497796623
#>     Node 29    0.886396028468052
#>     Node 30    0.6272594955764969
#>     Node 31    1.7490838203834194
#>     Node 32    1.5038780828084632
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.1314723975354545
#>     Node 2    -2.1057516561374823
#>     Node 3    -1.0128569071552418
#>     Node 4    -0.3013627720905648
#>     Node 5    1.6601356864441765
#>     Node 6    -1.608431469636063
#>     Node 7    -2.0989834276234123
#>     Node 8    -1.3349699231843646
#>     Node 9    -2.3516909986750525
#>     Node 10    4.097308669427828
#>     Node 11    -1.1873053843902839
#>     Node 12    -1.8023405203123355
#>     Node 13    -0.8067419035439349
#>     Node 14    -1.5742132792682133
#>     Node 15    2.04885946267412
#>     Node 16    -0.8751495971451884
#>     Node 17    -0.9468255447986308
#>     Node 18    -0.23020122156115622
#>     Node 19    -1.7439795556707673
#>     Node 20    -1.90525253882411
#>     Node 21    1.5940293368552956
#>     Node 22    -1.6833634077265227
#>     Node 23    -1.959593615234127
#>     Node 24    0.8024827037955125
#>     Node 25    -3.443993847335971
#>     Node 26    -0.33706365685632267
#>     Node 27    -1.8086894301116114
#>     Node 28    3.113057055463753
#>     Node 29    -0.921114757081802
#>     Node 30    -0.5572999468558211
#>     Node 31    -1.6873981663337374
#>     Node 32    -1.516551424451871
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.36758410231447536
#>     Attrib V1    0.46565657096730967
#>     Attrib V10    -0.22564590538661913
#>     Attrib V11    -0.31913751382078204
#>     Attrib V12    -0.34701692598048345
#>     Attrib V13    -0.5851204545795394
#>     Attrib V14    0.013664471244557113
#>     Attrib V15    0.27158281222877756
#>     Attrib V16    0.3365045513760016
#>     Attrib V17    0.2186465293682819
#>     Attrib V18    -0.05970136200086389
#>     Attrib V19    -0.1656833443048394
#>     Attrib V2    -0.013534836771961278
#>     Attrib V20    0.41904220035661854
#>     Attrib V21    0.5815250325915803
#>     Attrib V22    0.3171320889358412
#>     Attrib V23    0.3337820749044836
#>     Attrib V24    -0.033945176156050236
#>     Attrib V25    -0.803191541614307
#>     Attrib V26    -1.0240820740974115
#>     Attrib V27    -0.7288616530845037
#>     Attrib V28    -0.08985359815056043
#>     Attrib V29    -0.3396059683060968
#>     Attrib V3    0.07144246072483332
#>     Attrib V30    0.015378005925487858
#>     Attrib V31    -1.1026188074788348
#>     Attrib V32    0.12074944854208454
#>     Attrib V33    0.49604252150470846
#>     Attrib V34    0.0665354855844461
#>     Attrib V35    -0.6214877253393017
#>     Attrib V36    -0.8902405831529708
#>     Attrib V37    -0.5037013893372215
#>     Attrib V38    0.5471428528724058
#>     Attrib V39    0.365891471608374
#>     Attrib V4    0.5916382511367759
#>     Attrib V40    -0.33856121689720814
#>     Attrib V41    0.2919612193686115
#>     Attrib V42    0.278557793748888
#>     Attrib V43    0.2935479708327084
#>     Attrib V44    0.2647575429350416
#>     Attrib V45    -2.2193811248667758E-4
#>     Attrib V46    -0.16482897078350237
#>     Attrib V47    -0.44850795322620446
#>     Attrib V48    -0.05305968977178646
#>     Attrib V49    0.3957989181530003
#>     Attrib V5    0.5094304082051443
#>     Attrib V50    -0.3613293043863188
#>     Attrib V51    -0.09611528905286588
#>     Attrib V52    0.03757198378486819
#>     Attrib V53    0.12950599427027673
#>     Attrib V54    0.6359430214667027
#>     Attrib V55    -0.028620224504537144
#>     Attrib V56    0.08880261838489165
#>     Attrib V57    0.4563352498051813
#>     Attrib V58    0.1670153624322229
#>     Attrib V59    0.8403369681356219
#>     Attrib V6    0.1381840886293479
#>     Attrib V60    0.1962814873939909
#>     Attrib V7    -0.24988799074998844
#>     Attrib V8    0.09953534040443239
#>     Attrib V9    0.323957988521607
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.15359201262567956
#>     Attrib V1    0.19880498966756455
#>     Attrib V10    -0.12538686239194946
#>     Attrib V11    -0.10497124385977784
#>     Attrib V12    -0.0441302233033414
#>     Attrib V13    -0.23756189862981644
#>     Attrib V14    0.02877432928776209
#>     Attrib V15    0.19632074651121967
#>     Attrib V16    0.1202155203972219
#>     Attrib V17    0.07132878464905794
#>     Attrib V18    -0.05501067765593416
#>     Attrib V19    -0.05521611514785054
#>     Attrib V2    0.023170718271538725
#>     Attrib V20    0.15360477733761538
#>     Attrib V21    0.17605072160984572
#>     Attrib V22    0.0629992234864825
#>     Attrib V23    0.0880567152027156
#>     Attrib V24    -0.03648464129593012
#>     Attrib V25    -0.3404307032993458
#>     Attrib V26    -0.4946208549256086
#>     Attrib V27    -0.37180258644840863
#>     Attrib V28    -0.10390647481547301
#>     Attrib V29    -0.27738899016605323
#>     Attrib V3    0.058174226239916076
#>     Attrib V30    0.005313396402909138
#>     Attrib V31    -0.4724377466692249
#>     Attrib V32    0.10153310106434692
#>     Attrib V33    0.23595714040794977
#>     Attrib V34    -0.007779277178377796
#>     Attrib V35    -0.27975790257650646
#>     Attrib V36    -0.4620165164327902
#>     Attrib V37    -0.23232330259489545
#>     Attrib V38    0.17428269241938976
#>     Attrib V39    0.18887314923423693
#>     Attrib V4    0.3172340070288042
#>     Attrib V40    -0.17624848038299157
#>     Attrib V41    0.1286838152638759
#>     Attrib V42    0.06967513106189159
#>     Attrib V43    0.10970917803397172
#>     Attrib V44    0.12343049973627303
#>     Attrib V45    -0.0452817208671976
#>     Attrib V46    -0.09452819366228522
#>     Attrib V47    -0.1517125391952007
#>     Attrib V48    -0.010257159592043917
#>     Attrib V49    0.1795724102067665
#>     Attrib V5    0.2603578115792773
#>     Attrib V50    -0.15776252152754563
#>     Attrib V51    -0.036820542108588775
#>     Attrib V52    0.09869126805594104
#>     Attrib V53    0.12151745540776047
#>     Attrib V54    0.3993574576809377
#>     Attrib V55    0.0854597952944609
#>     Attrib V56    0.06374547162566262
#>     Attrib V57    0.332691221487401
#>     Attrib V58    0.1761839354565014
#>     Attrib V59    0.47548168681593284
#>     Attrib V6    0.039539434506302144
#>     Attrib V60    0.1392802623860129
#>     Attrib V7    -0.20848024252810393
#>     Attrib V8    0.008933701104767518
#>     Attrib V9    0.11540501404242513
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.14009525218792288
#>     Attrib V1    0.019707636352069232
#>     Attrib V10    -0.004722736691334658
#>     Attrib V11    -0.018018673150612594
#>     Attrib V12    0.01328672023421409
#>     Attrib V13    -0.011195654541177628
#>     Attrib V14    0.0931959978885713
#>     Attrib V15    0.0996796603383665
#>     Attrib V16    0.03414709992904438
#>     Attrib V17    0.05966873453222107
#>     Attrib V18    0.015623221444320629
#>     Attrib V19    -0.02089097364858452
#>     Attrib V2    0.02851877106719116
#>     Attrib V20    0.04236418560284633
#>     Attrib V21    0.0778417950586858
#>     Attrib V22    -0.0593040534454358
#>     Attrib V23    -0.004548411956892722
#>     Attrib V24    -0.05534673546673413
#>     Attrib V25    -0.11953293876283151
#>     Attrib V26    -0.10662776921745191
#>     Attrib V27    -0.13120485369277693
#>     Attrib V28    -0.002782385441553096
#>     Attrib V29    -0.041596679219243676
#>     Attrib V3    0.11668559493964446
#>     Attrib V30    -0.043316822943638256
#>     Attrib V31    -0.12634482113795462
#>     Attrib V32    0.02413592929581458
#>     Attrib V33    0.09297046678865785
#>     Attrib V34    0.06945038406807065
#>     Attrib V35    0.012431868265611795
#>     Attrib V36    -0.049893863694741136
#>     Attrib V37    0.028092398339460218
#>     Attrib V38    0.06843401372501547
#>     Attrib V39    0.10667681896017381
#>     Attrib V4    0.12451024549220654
#>     Attrib V40    -0.001015116469743981
#>     Attrib V41    0.02720821962634431
#>     Attrib V42    0.03077332365061155
#>     Attrib V43    0.021669670443073327
#>     Attrib V44    0.06657911082549889
#>     Attrib V45    0.03979370518619147
#>     Attrib V46    -0.02167501746176691
#>     Attrib V47    -0.02908378916491465
#>     Attrib V48    0.04302608425129839
#>     Attrib V49    0.10008348413540816
#>     Attrib V5    0.1576194151533276
#>     Attrib V50    0.031361227825301534
#>     Attrib V51    0.08068281294487235
#>     Attrib V52    0.046037566486658174
#>     Attrib V53    0.11850006738158102
#>     Attrib V54    0.06532406317503199
#>     Attrib V55    0.06378582802548151
#>     Attrib V56    0.08709993701225735
#>     Attrib V57    0.1926908443158362
#>     Attrib V58    0.08808978086517767
#>     Attrib V59    0.13379369688925757
#>     Attrib V6    0.05416037860918995
#>     Attrib V60    0.07501312333408483
#>     Attrib V7    -0.0021828757841689233
#>     Attrib V8    0.008411324286509056
#>     Attrib V9    0.1179706394817111
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.6459133566800767
#>     Attrib V1    0.04982027521809321
#>     Attrib V10    -0.3038795827494087
#>     Attrib V11    -0.6177467612663848
#>     Attrib V12    -0.6076223424541467
#>     Attrib V13    0.2753444307229299
#>     Attrib V14    0.4589411586794568
#>     Attrib V15    0.06484487616967329
#>     Attrib V16    0.09028076691141447
#>     Attrib V17    0.2966476387174193
#>     Attrib V18    0.29087931159270636
#>     Attrib V19    0.5634460610222708
#>     Attrib V2    0.2628525752914217
#>     Attrib V20    0.15300311654449883
#>     Attrib V21    -0.13897706172647156
#>     Attrib V22    0.009189292949241283
#>     Attrib V23    -0.35366432672969517
#>     Attrib V24    -0.334447550563093
#>     Attrib V25    0.4387447641516246
#>     Attrib V26    0.3617922911303389
#>     Attrib V27    -0.04031169167068861
#>     Attrib V28    -0.5943184992736059
#>     Attrib V29    -0.339661035722136
#>     Attrib V3    0.09810591881815925
#>     Attrib V30    -0.36575946800763853
#>     Attrib V31    0.6745195902714207
#>     Attrib V32    -0.4297866659787916
#>     Attrib V33    -0.27642528710493175
#>     Attrib V34    -0.03856727473069935
#>     Attrib V35    0.29920403638661425
#>     Attrib V36    0.7417422295116283
#>     Attrib V37    0.027159823501333093
#>     Attrib V38    -0.16118936367160625
#>     Attrib V39    -0.02246330533776913
#>     Attrib V4    -0.40479588853286935
#>     Attrib V40    0.7268905488766658
#>     Attrib V41    -0.34507904716937315
#>     Attrib V42    0.02895402779593796
#>     Attrib V43    -0.1690778881326413
#>     Attrib V44    -0.27995254606138786
#>     Attrib V45    -0.3557456470581693
#>     Attrib V46    -0.3696443630712223
#>     Attrib V47    0.02336631611767925
#>     Attrib V48    -0.1905279791221115
#>     Attrib V49    -0.518044930979306
#>     Attrib V5    -0.493239598433299
#>     Attrib V50    0.6388939405822845
#>     Attrib V51    -0.24870954853831717
#>     Attrib V52    -0.5785645985203421
#>     Attrib V53    -0.084510857623627
#>     Attrib V54    -0.1334999718409675
#>     Attrib V55    0.4192517923997535
#>     Attrib V56    0.502150782221323
#>     Attrib V57    -0.11794005190518524
#>     Attrib V58    -0.1112960959572129
#>     Attrib V59    -0.2994893371038423
#>     Attrib V6    -0.32239779569949634
#>     Attrib V60    0.07526231505606015
#>     Attrib V7    0.2730123514380472
#>     Attrib V8    0.22948876906190813
#>     Attrib V9    -0.6075664214596221
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.3692604058958844
#>     Attrib V1    0.3544859441273822
#>     Attrib V10    -0.24299887505380055
#>     Attrib V11    -0.23816946636592112
#>     Attrib V12    -0.19125194451623476
#>     Attrib V13    -0.4957525158346106
#>     Attrib V14    -0.03549902649232413
#>     Attrib V15    0.2214627892033833
#>     Attrib V16    0.3204351344431176
#>     Attrib V17    0.158808219204006
#>     Attrib V18    -0.005693478454896125
#>     Attrib V19    -0.12172451840018025
#>     Attrib V2    -0.01791444092765729
#>     Attrib V20    0.321069612726656
#>     Attrib V21    0.45927416737645127
#>     Attrib V22    0.20753216659760973
#>     Attrib V23    0.24493393181339393
#>     Attrib V24    0.008947302983054392
#>     Attrib V25    -0.5791945674142748
#>     Attrib V26    -0.7942358241183147
#>     Attrib V27    -0.5532759663789913
#>     Attrib V28    -0.14326709305953103
#>     Attrib V29    -0.29465134688681227
#>     Attrib V3    0.02611869662423906
#>     Attrib V30    0.007439012619807869
#>     Attrib V31    -0.8094328971740099
#>     Attrib V32    0.13948602899865567
#>     Attrib V33    0.40657507678575544
#>     Attrib V34    0.040916490990506794
#>     Attrib V35    -0.4669697427124044
#>     Attrib V36    -0.7490973649579588
#>     Attrib V37    -0.3625372959780142
#>     Attrib V38    0.38593696424135765
#>     Attrib V39    0.2697328402353338
#>     Attrib V4    0.5033454625468662
#>     Attrib V40    -0.3239515899957187
#>     Attrib V41    0.2491929263588278
#>     Attrib V42    0.18796120773479535
#>     Attrib V43    0.1953661173444378
#>     Attrib V44    0.18379476553398866
#>     Attrib V45    0.02233985544395899
#>     Attrib V46    -0.09517729672345507
#>     Attrib V47    -0.3339174155023206
#>     Attrib V48    -0.03892520629396997
#>     Attrib V49    0.3329518046238614
#>     Attrib V5    0.3850948751015
#>     Attrib V50    -0.244656886436925
#>     Attrib V51    -0.06509423545125317
#>     Attrib V52    0.021223843904245577
#>     Attrib V53    0.1652372427919025
#>     Attrib V54    0.48829250128590157
#>     Attrib V55    -0.059501319807888406
#>     Attrib V56    0.09167964009549037
#>     Attrib V57    0.4419017316115643
#>     Attrib V58    0.18167478775588117
#>     Attrib V59    0.687887061227127
#>     Attrib V6    0.18731682289208096
#>     Attrib V60    0.19384108603792582
#>     Attrib V7    -0.20112124724667887
#>     Attrib V8    0.07074619652585394
#>     Attrib V9    0.30491443554073205
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.6054329672136061
#>     Attrib V1    -0.05888756451743704
#>     Attrib V10    0.5760577453039104
#>     Attrib V11    0.9582173215092353
#>     Attrib V12    0.7833610731602522
#>     Attrib V13    -0.05284087311042212
#>     Attrib V14    -0.41381822520948214
#>     Attrib V15    -0.11729703862487631
#>     Attrib V16    -0.21113396806714632
#>     Attrib V17    -0.264271581786525
#>     Attrib V18    -0.09314281840983414
#>     Attrib V19    -0.4292146500960258
#>     Attrib V2    -0.23043710286416416
#>     Attrib V20    -0.005935843033959566
#>     Attrib V21    0.4364440314987696
#>     Attrib V22    0.2109962539356666
#>     Attrib V23    0.7959975622989821
#>     Attrib V24    0.5146647145423717
#>     Attrib V25    -0.223787913653737
#>     Attrib V26    0.08106582579595027
#>     Attrib V27    0.33634140077621905
#>     Attrib V28    0.9407177253191361
#>     Attrib V29    0.8116981144966235
#>     Attrib V3    -0.01650798916942273
#>     Attrib V30    0.5190160758134772
#>     Attrib V31    -0.6690217576031826
#>     Attrib V32    0.42217975861508544
#>     Attrib V33    0.03237602959760161
#>     Attrib V34    -0.11577058237161932
#>     Attrib V35    -0.14815961391043397
#>     Attrib V36    -0.6885839158812054
#>     Attrib V37    0.20842429363530576
#>     Attrib V38    0.18203110192687405
#>     Attrib V39    -0.04761854136541237
#>     Attrib V4    0.3135499481590541
#>     Attrib V40    -0.8398789818599944
#>     Attrib V41    0.3631818592109871
#>     Attrib V42    -0.03715906737480586
#>     Attrib V43    0.33243120141448673
#>     Attrib V44    0.495371799471327
#>     Attrib V45    0.4528977291642398
#>     Attrib V46    0.5278347174669672
#>     Attrib V47    0.13032317477051455
#>     Attrib V48    0.19851661098296436
#>     Attrib V49    0.6506126961525173
#>     Attrib V5    0.5716449530039553
#>     Attrib V50    -0.5011226794702031
#>     Attrib V51    0.4293105644172191
#>     Attrib V52    0.7345554040589204
#>     Attrib V53    0.11694391149236959
#>     Attrib V54    0.11389382043753098
#>     Attrib V55    -0.4225033998570353
#>     Attrib V56    -0.42763554512715446
#>     Attrib V57    -0.1257917894031066
#>     Attrib V58    0.19123483750769418
#>     Attrib V59    0.060074574026918535
#>     Attrib V6    0.4388857309283087
#>     Attrib V60    -0.1821900911485498
#>     Attrib V7    -0.25816459290479254
#>     Attrib V8    -0.23203344766614845
#>     Attrib V9    0.9335072293829508
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.48029372757939
#>     Attrib V1    0.06463234418953806
#>     Attrib V10    0.031109866368227962
#>     Attrib V11    0.24033880084893405
#>     Attrib V12    0.23250959393568862
#>     Attrib V13    -0.33153227445547934
#>     Attrib V14    -0.3810055449281528
#>     Attrib V15    -0.04861479252266239
#>     Attrib V16    0.004213818452847718
#>     Attrib V17    -0.10378275429649426
#>     Attrib V18    -0.19746378223399833
#>     Attrib V19    -0.34586639433428973
#>     Attrib V2    -0.13054319523591343
#>     Attrib V20    -0.040241458412485755
#>     Attrib V21    0.18747224050775002
#>     Attrib V22    -0.058343321450748394
#>     Attrib V23    0.2026547372192298
#>     Attrib V24    0.17338906367023563
#>     Attrib V25    -0.35105742256664596
#>     Attrib V26    -0.33793773856537623
#>     Attrib V27    -0.09617138241494681
#>     Attrib V28    0.3285072933707658
#>     Attrib V29    0.13988222787377988
#>     Attrib V3    -0.0380104664975076
#>     Attrib V30    0.24031739056150406
#>     Attrib V31    -0.594078871872214
#>     Attrib V32    0.31328521141573074
#>     Attrib V33    0.32829810637228457
#>     Attrib V34    0.09624813052161435
#>     Attrib V35    -0.24460294635950577
#>     Attrib V36    -0.5596949852618922
#>     Attrib V37    -0.06918852529191524
#>     Attrib V38    0.2812430753455204
#>     Attrib V39    0.10601221867269119
#>     Attrib V4    0.3574758633149867
#>     Attrib V40    -0.5183318391487126
#>     Attrib V41    0.17827936018626936
#>     Attrib V42    -0.02909053190884625
#>     Attrib V43    0.1688449102353365
#>     Attrib V44    0.2455929651437203
#>     Attrib V45    0.12497089020062417
#>     Attrib V46    0.1331356020880165
#>     Attrib V47    -0.12811014607315704
#>     Attrib V48    0.09198238883173357
#>     Attrib V49    0.32606917009523895
#>     Attrib V5    0.3658334060704572
#>     Attrib V50    -0.48918697325335253
#>     Attrib V51    0.05443955694278991
#>     Attrib V52    0.24665873547689438
#>     Attrib V53    0.14915402698523306
#>     Attrib V54    0.24244203793248278
#>     Attrib V55    -0.3311640584023185
#>     Attrib V56    -0.2672564711957648
#>     Attrib V57    0.21151697744785503
#>     Attrib V58    -0.012317659546626837
#>     Attrib V59    0.34856581495072586
#>     Attrib V6    0.1554941008132709
#>     Attrib V60    0.05224642146497879
#>     Attrib V7    -0.3396208924303626
#>     Attrib V8    -0.21290039463053553
#>     Attrib V9    0.3561058760394475
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.46139122329079824
#>     Attrib V1    -0.16384813372126103
#>     Attrib V10    0.7525246406040496
#>     Attrib V11    1.196935977025237
#>     Attrib V12    1.2113016060395336
#>     Attrib V13    0.20450556334082168
#>     Attrib V14    -0.4944460889910613
#>     Attrib V15    -0.20036292801112485
#>     Attrib V16    -0.3925055214669631
#>     Attrib V17    -0.4400458123518294
#>     Attrib V18    -0.24400613717865283
#>     Attrib V19    -0.6554045804574208
#>     Attrib V2    -0.14629702802788888
#>     Attrib V20    -0.3512444531629797
#>     Attrib V21    0.19135324412103105
#>     Attrib V22    -0.08855651839376165
#>     Attrib V23    0.4694768089432567
#>     Attrib V24    0.52018040645122
#>     Attrib V25    -0.03620952283536745
#>     Attrib V26    0.34936792861473065
#>     Attrib V27    0.7636359577096079
#>     Attrib V28    1.107144008400938
#>     Attrib V29    0.7536936677293438
#>     Attrib V3    0.05151711249284566
#>     Attrib V30    0.443259849246477
#>     Attrib V31    -0.45409592388151115
#>     Attrib V32    0.484533422859616
#>     Attrib V33    -0.08434847963708335
#>     Attrib V34    -0.055670515105262795
#>     Attrib V35    0.07070557117552378
#>     Attrib V36    -0.48950508886953686
#>     Attrib V37    0.29698469270086686
#>     Attrib V38    -0.005583705699069756
#>     Attrib V39    -0.08594900725700091
#>     Attrib V4    0.2759060881430403
#>     Attrib V40    -0.8011621511499106
#>     Attrib V41    0.3161281731828828
#>     Attrib V42    -0.19229510152323329
#>     Attrib V43    0.338822665778399
#>     Attrib V44    0.4197174651809191
#>     Attrib V45    0.454598281118299
#>     Attrib V46    0.6183606684135863
#>     Attrib V47    0.2521673729012468
#>     Attrib V48    0.3056072264091107
#>     Attrib V49    0.6382102500956411
#>     Attrib V5    0.5439361198782275
#>     Attrib V50    -0.4813617492367184
#>     Attrib V51    0.5405008832855954
#>     Attrib V52    0.8646909033564394
#>     Attrib V53    0.33611119419363533
#>     Attrib V54    0.06258556669814053
#>     Attrib V55    -0.32286961012883164
#>     Attrib V56    -0.4626834005146807
#>     Attrib V57    -0.11008727714402004
#>     Attrib V58    0.23185045407847388
#>     Attrib V59    0.06385338877478436
#>     Attrib V6    0.49743453134252946
#>     Attrib V60    -0.04193145900819705
#>     Attrib V7    -0.16044042236598413
#>     Attrib V8    -0.3366375553007161
#>     Attrib V9    0.7950353114389281
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.8096584735344861
#>     Attrib V1    0.6709394127806768
#>     Attrib V10    -1.1744599884147127
#>     Attrib V11    -1.9869465262182355
#>     Attrib V12    -1.7137618165767832
#>     Attrib V13    -0.6938922670117292
#>     Attrib V14    0.22654735338840457
#>     Attrib V15    -0.12028410117539558
#>     Attrib V16    0.4162687706084123
#>     Attrib V17    0.48095427717637995
#>     Attrib V18    0.07021287266755229
#>     Attrib V19    0.4994463463396895
#>     Attrib V2    0.44651195955789064
#>     Attrib V20    0.1750180451323784
#>     Attrib V21    -0.7554041593950347
#>     Attrib V22    -0.4546627698518686
#>     Attrib V23    -1.033139475838196
#>     Attrib V24    -0.7399672103342247
#>     Attrib V25    0.16887005558312027
#>     Attrib V26    -0.8207410322002291
#>     Attrib V27    -1.264878606408976
#>     Attrib V28    -1.6388217463794508
#>     Attrib V29    -1.4052255918562169
#>     Attrib V3    0.07454297334708213
#>     Attrib V30    -0.7168148567981728
#>     Attrib V31    0.7309467867883612
#>     Attrib V32    -0.4560141578449009
#>     Attrib V33    0.5587124441550675
#>     Attrib V34    0.405408674097352
#>     Attrib V35    0.06767712864772676
#>     Attrib V36    0.813221940238494
#>     Attrib V37    -0.2715282755069973
#>     Attrib V38    0.4699997735739456
#>     Attrib V39    0.23322288561506316
#>     Attrib V4    -0.27942350179294484
#>     Attrib V40    0.926141666969599
#>     Attrib V41    -0.6758393628605831
#>     Attrib V42    0.14298106674981542
#>     Attrib V43    -0.5850065950429842
#>     Attrib V44    -0.8022010559412182
#>     Attrib V45    -0.7407878436041292
#>     Attrib V46    -1.0230650360983131
#>     Attrib V47    -0.5709932325834848
#>     Attrib V48    -0.5703118083804698
#>     Attrib V49    -1.1300692808272086
#>     Attrib V5    -0.8252462367091659
#>     Attrib V50    0.5971174867625881
#>     Attrib V51    -0.9600679645551653
#>     Attrib V52    -1.240706205407191
#>     Attrib V53    -0.4582990416714455
#>     Attrib V54    0.206539418335576
#>     Attrib V55    0.43240620582298345
#>     Attrib V56    0.8108632681193106
#>     Attrib V57    0.38757229602630816
#>     Attrib V58    -0.6170908309258606
#>     Attrib V59    0.29070793400890454
#>     Attrib V6    -0.8493524717308145
#>     Attrib V60    0.5709419460234318
#>     Attrib V7    -0.08169895772540141
#>     Attrib V8    0.08040890268061411
#>     Attrib V9    -1.3286676458211517
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.21900610106079285
#>     Attrib V1    0.1939348787967412
#>     Attrib V10    -0.16057842987096393
#>     Attrib V11    -0.11719281759780435
#>     Attrib V12    -0.06614043773558625
#>     Attrib V13    -0.4064337610606605
#>     Attrib V14    -0.08230436083386934
#>     Attrib V15    0.10759039721989715
#>     Attrib V16    0.17364848765416843
#>     Attrib V17    0.17084849113792427
#>     Attrib V18    0.012329603385942923
#>     Attrib V19    -0.08703372796956414
#>     Attrib V2    -0.05590078313444735
#>     Attrib V20    0.2542958036199363
#>     Attrib V21    0.2656148858316378
#>     Attrib V22    0.06111182199745448
#>     Attrib V23    0.1580290695741342
#>     Attrib V24    0.012769643502669376
#>     Attrib V25    -0.39186701734366874
#>     Attrib V26    -0.6130141636910633
#>     Attrib V27    -0.4189119892964051
#>     Attrib V28    -0.032053872621158296
#>     Attrib V29    -0.20217900445486298
#>     Attrib V3    -0.011428290709862326
#>     Attrib V30    0.01687543585615647
#>     Attrib V31    -0.6611918526175994
#>     Attrib V32    0.10783010057575328
#>     Attrib V33    0.31239573024991746
#>     Attrib V34    0.11765588646889681
#>     Attrib V35    -0.2661019531426188
#>     Attrib V36    -0.5005122196378484
#>     Attrib V37    -0.24415628073761927
#>     Attrib V38    0.3605927619335775
#>     Attrib V39    0.20900449854921402
#>     Attrib V4    0.35072786223986807
#>     Attrib V40    -0.28453837758889466
#>     Attrib V41    0.09469771819442512
#>     Attrib V42    0.07018854094629703
#>     Attrib V43    0.1347150869197427
#>     Attrib V44    0.1993966149751176
#>     Attrib V45    0.07795560601363602
#>     Attrib V46    -0.07284580223980852
#>     Attrib V47    -0.1955637135905448
#>     Attrib V48    0.05874881644908534
#>     Attrib V49    0.26593449954499454
#>     Attrib V5    0.3532581516540729
#>     Attrib V50    -0.2186579652085836
#>     Attrib V51    0.03109870557019643
#>     Attrib V52    0.05439698070975883
#>     Attrib V53    0.11110568346067062
#>     Attrib V54    0.449730449524676
#>     Attrib V55    -0.024081325054785007
#>     Attrib V56    0.041619763665965016
#>     Attrib V57    0.3517190292585196
#>     Attrib V58    0.13062114817821283
#>     Attrib V59    0.4535017842981006
#>     Attrib V6    0.13777116869768619
#>     Attrib V60    0.12044492058696538
#>     Attrib V7    -0.24308862127367062
#>     Attrib V8    -0.009368951283529253
#>     Attrib V9    0.24121574778933152
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.41744146478317473
#>     Attrib V1    0.3101885306541161
#>     Attrib V10    -0.2575683042827835
#>     Attrib V11    -0.1845417512622793
#>     Attrib V12    -0.28819980811978346
#>     Attrib V13    -0.5109740280207998
#>     Attrib V14    -0.004457622390939209
#>     Attrib V15    0.22945750529864478
#>     Attrib V16    0.32624104318425795
#>     Attrib V17    0.19317577331511662
#>     Attrib V18    -0.059141916338848514
#>     Attrib V19    -0.0619944663477018
#>     Attrib V2    -0.0035875696071957118
#>     Attrib V20    0.32516872651351575
#>     Attrib V21    0.4628275753249534
#>     Attrib V22    0.2929763167697786
#>     Attrib V23    0.3306489344344907
#>     Attrib V24    -0.0188538381687523
#>     Attrib V25    -0.6866463610628983
#>     Attrib V26    -0.8562035823739667
#>     Attrib V27    -0.5826338091941465
#>     Attrib V28    -0.10047396718257406
#>     Attrib V29    -0.25442055299761035
#>     Attrib V3    -0.02945818781284189
#>     Attrib V30    0.0020921278403754646
#>     Attrib V31    -0.9459108790830202
#>     Attrib V32    0.09088444663304529
#>     Attrib V33    0.46342425004395793
#>     Attrib V34    0.07974837869895275
#>     Attrib V35    -0.5291462625464217
#>     Attrib V36    -0.7878831135737697
#>     Attrib V37    -0.43593568734999394
#>     Attrib V38    0.44926848172410616
#>     Attrib V39    0.28432017218004374
#>     Attrib V4    0.5481210315496835
#>     Attrib V40    -0.300673897675779
#>     Attrib V41    0.22127131532528926
#>     Attrib V42    0.15378807033969866
#>     Attrib V43    0.2745588904862813
#>     Attrib V44    0.19077241327370614
#>     Attrib V45    0.05096392934555694
#>     Attrib V46    -0.0663066721456732
#>     Attrib V47    -0.3620684365851213
#>     Attrib V48    0.02712219162479224
#>     Attrib V49    0.3782920458979653
#>     Attrib V5    0.4362736693013269
#>     Attrib V50    -0.3394001867497674
#>     Attrib V51    -0.059228195003960815
#>     Attrib V52    0.09491126953666393
#>     Attrib V53    0.16369394747068958
#>     Attrib V54    0.5497542415676147
#>     Attrib V55    -0.051337445233337387
#>     Attrib V56    0.08807873325107117
#>     Attrib V57    0.48532935625253476
#>     Attrib V58    0.21872642823820077
#>     Attrib V59    0.7399467516064853
#>     Attrib V6    0.1260680455297373
#>     Attrib V60    0.13622271323068214
#>     Attrib V7    -0.22420375314608493
#>     Attrib V8    0.09312318482610339
#>     Attrib V9    0.3273791934699015
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.0425229984851292
#>     Attrib V1    0.1481521728302942
#>     Attrib V10    -0.12383402550744584
#>     Attrib V11    -0.07980931608695592
#>     Attrib V12    -0.043469253345356104
#>     Attrib V13    -0.16070803143347706
#>     Attrib V14    -0.016900814780649694
#>     Attrib V15    0.057591071405922026
#>     Attrib V16    0.0655017579778033
#>     Attrib V17    0.10364280254309854
#>     Attrib V18    0.015096248814623812
#>     Attrib V19    -0.06946721498856218
#>     Attrib V2    -0.018502284420785383
#>     Attrib V20    0.16366711600563877
#>     Attrib V21    0.20654730477252692
#>     Attrib V22    0.019274250350176624
#>     Attrib V23    0.12961156680274907
#>     Attrib V24    0.02155649619728359
#>     Attrib V25    -0.2320752039000488
#>     Attrib V26    -0.41312366472300716
#>     Attrib V27    -0.24896853576352024
#>     Attrib V28    -0.08429809397576583
#>     Attrib V29    -0.13512762567297887
#>     Attrib V3    0.09088113882758182
#>     Attrib V30    -0.027314660427322664
#>     Attrib V31    -0.4736800595198553
#>     Attrib V32    0.07893993819614327
#>     Attrib V33    0.184530279489486
#>     Attrib V34    0.09572740647002403
#>     Attrib V35    -0.1780913483488299
#>     Attrib V36    -0.309675473616785
#>     Attrib V37    -0.07593926358404114
#>     Attrib V38    0.2361338196181879
#>     Attrib V39    0.20847664911176855
#>     Attrib V4    0.2839607111055318
#>     Attrib V40    -0.15885820738568732
#>     Attrib V41    0.09333255081966485
#>     Attrib V42    0.034077328265277936
#>     Attrib V43    0.05760382862126801
#>     Attrib V44    0.10891377511616869
#>     Attrib V45    -0.03425539428309405
#>     Attrib V46    -0.016957872911508326
#>     Attrib V47    -0.11397214609278243
#>     Attrib V48    -0.008987618505872375
#>     Attrib V49    0.18925940022885102
#>     Attrib V5    0.25404136992715837
#>     Attrib V50    -0.1599252584800826
#>     Attrib V51    -0.01117740818704887
#>     Attrib V52    0.037357342310824375
#>     Attrib V53    0.11438936805914993
#>     Attrib V54    0.26903610978605863
#>     Attrib V55    0.010664072879091619
#>     Attrib V56    0.03924424967144959
#>     Attrib V57    0.27579166470724253
#>     Attrib V58    0.09755764456543964
#>     Attrib V59    0.3972754751242124
#>     Attrib V6    0.12053049568228856
#>     Attrib V60    0.1903406137703748
#>     Attrib V7    -0.07747703379998937
#>     Attrib V8    -0.06158285601413883
#>     Attrib V9    0.1470968132452242
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.4269413080295644
#>     Attrib V1    0.3749689652938665
#>     Attrib V10    -0.1765822471970013
#>     Attrib V11    -0.04909332743252751
#>     Attrib V12    -0.06968569999507623
#>     Attrib V13    -0.5092408145268931
#>     Attrib V14    -0.15133537544745446
#>     Attrib V15    0.2268626569035126
#>     Attrib V16    0.1992925050722033
#>     Attrib V17    0.1248649031660277
#>     Attrib V18    -0.08691385684732082
#>     Attrib V19    -0.20117049888050278
#>     Attrib V2    -0.03293918334621995
#>     Attrib V20    0.2307693523780891
#>     Attrib V21    0.35661191609274
#>     Attrib V22    0.14716096892199526
#>     Attrib V23    0.26113023276368713
#>     Attrib V24    -0.019491728788516408
#>     Attrib V25    -0.610635731202558
#>     Attrib V26    -0.7488897198151123
#>     Attrib V27    -0.5253951909469361
#>     Attrib V28    -0.07796583610032745
#>     Attrib V29    -0.2704349605731853
#>     Attrib V3    -0.045924432306482854
#>     Attrib V30    0.09691969030105477
#>     Attrib V31    -0.7503392805866103
#>     Attrib V32    0.18566423073213648
#>     Attrib V33    0.4180980086953515
#>     Attrib V34    0.043780945383604435
#>     Attrib V35    -0.46078623898486587
#>     Attrib V36    -0.8062200711273274
#>     Attrib V37    -0.35902278380177116
#>     Attrib V38    0.31566840862393697
#>     Attrib V39    0.2532111064528854
#>     Attrib V4    0.4602968666808467
#>     Attrib V40    -0.35120221752986036
#>     Attrib V41    0.20473037344596381
#>     Attrib V42    0.10224921381203644
#>     Attrib V43    0.17641454260380973
#>     Attrib V44    0.22957445029608828
#>     Attrib V45    -0.010125072291595568
#>     Attrib V46    -0.06435357475800633
#>     Attrib V47    -0.30058961980567306
#>     Attrib V48    0.10454008844657674
#>     Attrib V49    0.458212912720489
#>     Attrib V5    0.38317507386269256
#>     Attrib V50    -0.3441781879811817
#>     Attrib V51    -0.0653149177302465
#>     Attrib V52    0.11868218869870076
#>     Attrib V53    0.1009252409183497
#>     Attrib V54    0.5512974497622967
#>     Attrib V55    -0.08686724944090968
#>     Attrib V56    0.03145396082910812
#>     Attrib V57    0.39834162440819626
#>     Attrib V58    0.15402122982946273
#>     Attrib V59    0.651492679526584
#>     Attrib V6    0.13868772572149643
#>     Attrib V60    0.18056259697380286
#>     Attrib V7    -0.30310338499347383
#>     Attrib V8    -0.08495125259852195
#>     Attrib V9    0.2775053969625372
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.667688628394996
#>     Attrib V1    0.14486748652240108
#>     Attrib V10    -0.6452423095002575
#>     Attrib V11    -1.0247394417102405
#>     Attrib V12    -0.7730062383600762
#>     Attrib V13    0.09497443572341953
#>     Attrib V14    0.39460291583949875
#>     Attrib V15    0.06585572840561722
#>     Attrib V16    0.22265030338138664
#>     Attrib V17    0.3716095338110457
#>     Attrib V18    0.24501920376267922
#>     Attrib V19    0.609481866047146
#>     Attrib V2    0.24944739640817773
#>     Attrib V20    0.17580180019698516
#>     Attrib V21    -0.3529849632498474
#>     Attrib V22    -0.1293483390648221
#>     Attrib V23    -0.6521250558818124
#>     Attrib V24    -0.4401833108819515
#>     Attrib V25    0.33427837796802473
#>     Attrib V26    0.11616517067897712
#>     Attrib V27    -0.380189168059913
#>     Attrib V28    -0.8597217647347871
#>     Attrib V29    -0.6073022522344608
#>     Attrib V3    0.09428430562729376
#>     Attrib V30    -0.4910762086267071
#>     Attrib V31    0.6935512156245823
#>     Attrib V32    -0.4770673115354861
#>     Attrib V33    -0.11712043604732325
#>     Attrib V34    0.10073819713043831
#>     Attrib V35    0.19777466776249075
#>     Attrib V36    0.7339420773117032
#>     Attrib V37    0.002604136048004436
#>     Attrib V38    -0.03831590601691262
#>     Attrib V39    0.06175427791106338
#>     Attrib V4    -0.3506266629205467
#>     Attrib V40    0.8296689337672426
#>     Attrib V41    -0.3540589834287108
#>     Attrib V42    0.054869672336982686
#>     Attrib V43    -0.25875411989658054
#>     Attrib V44    -0.480852988524331
#>     Attrib V45    -0.4758122192017004
#>     Attrib V46    -0.49561785661784286
#>     Attrib V47    -0.12963619332477047
#>     Attrib V48    -0.2982550026325073
#>     Attrib V49    -0.7180798569794338
#>     Attrib V5    -0.5861066818017048
#>     Attrib V50    0.6014088676957092
#>     Attrib V51    -0.4008470657576411
#>     Attrib V52    -0.7944268685575816
#>     Attrib V53    -0.048036746837623455
#>     Attrib V54    0.004125924680052667
#>     Attrib V55    0.4206271081206291
#>     Attrib V56    0.6078430908749372
#>     Attrib V57    0.02200343773841412
#>     Attrib V58    -0.23861362645753018
#>     Attrib V59    -0.13115758552043436
#>     Attrib V6    -0.47838190359951566
#>     Attrib V60    0.18785877324496061
#>     Attrib V7    0.11022816961609867
#>     Attrib V8    0.18802313779357638
#>     Attrib V9    -0.8348576773794404
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    0.06776955752650074
#>     Attrib V1    0.1626732430073859
#>     Attrib V10    -0.1299300085906652
#>     Attrib V11    -0.11822239530918817
#>     Attrib V12    -0.06856117300517266
#>     Attrib V13    -0.21646901035912883
#>     Attrib V14    -0.04366258168596517
#>     Attrib V15    0.07393620467024102
#>     Attrib V16    0.160945500733409
#>     Attrib V17    0.11719067823460395
#>     Attrib V18    0.03506057508687677
#>     Attrib V19    -0.03668380719036203
#>     Attrib V2    -0.03599297866800223
#>     Attrib V20    0.09725380938093268
#>     Attrib V21    0.12849953361574054
#>     Attrib V22    -0.01800399428512904
#>     Attrib V23    0.01966841706432693
#>     Attrib V24    0.02295981968983124
#>     Attrib V25    -0.2641648956684229
#>     Attrib V26    -0.4414925149124373
#>     Attrib V27    -0.3309087524432341
#>     Attrib V28    -0.08504401400349794
#>     Attrib V29    -0.20096972506376556
#>     Attrib V3    0.06003327613121606
#>     Attrib V30    -0.08997690968445758
#>     Attrib V31    -0.446266973908375
#>     Attrib V32    0.09157376746049233
#>     Attrib V33    0.19592821029487675
#>     Attrib V34    0.098979971020213
#>     Attrib V35    -0.19402506152549723
#>     Attrib V36    -0.34465626780315484
#>     Attrib V37    -0.11431006110124137
#>     Attrib V38    0.23684260681085023
#>     Attrib V39    0.18557439693361844
#>     Attrib V4    0.2814521807478012
#>     Attrib V40    -0.18532904539369782
#>     Attrib V41    0.09166105561057251
#>     Attrib V42    0.057699625267458574
#>     Attrib V43    0.07228815797482084
#>     Attrib V44    0.06135280988932474
#>     Attrib V45    -0.01030475456771699
#>     Attrib V46    -0.04188909651018451
#>     Attrib V47    -0.1534276003281425
#>     Attrib V48    0.001881394059806862
#>     Attrib V49    0.13190635201377351
#>     Attrib V5    0.23030796931826614
#>     Attrib V50    -0.09154395558409271
#>     Attrib V51    0.03914965519653729
#>     Attrib V52    0.08405504646804743
#>     Attrib V53    0.17459911469579714
#>     Attrib V54    0.28432831984864965
#>     Attrib V55    0.0646366270581622
#>     Attrib V56    0.06652089482082403
#>     Attrib V57    0.3115462696869985
#>     Attrib V58    0.15736617952822093
#>     Attrib V59    0.3556998645240581
#>     Attrib V6    0.10289061250890642
#>     Attrib V60    0.18138464189682943
#>     Attrib V7    -0.13262081330984013
#>     Attrib V8    -0.06340658870887757
#>     Attrib V9    0.15295809452047188
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.1699747157085346
#>     Attrib V1    0.20638156348287823
#>     Attrib V10    -0.0683456021865393
#>     Attrib V11    -0.0498163485732524
#>     Attrib V12    -0.07305883195415723
#>     Attrib V13    -0.30911148755378626
#>     Attrib V14    -0.057023312102447314
#>     Attrib V15    0.15227002769391915
#>     Attrib V16    0.11855387354758508
#>     Attrib V17    0.08519602291295944
#>     Attrib V18    -0.013026471003904175
#>     Attrib V19    -0.06152628837454276
#>     Attrib V2    0.0484819668488992
#>     Attrib V20    0.1295012475767421
#>     Attrib V21    0.18789199491848713
#>     Attrib V22    0.07774219844046315
#>     Attrib V23    0.06448834180513406
#>     Attrib V24    0.007663946538132183
#>     Attrib V25    -0.3623940183662053
#>     Attrib V26    -0.4810891192806604
#>     Attrib V27    -0.32651302746848465
#>     Attrib V28    -0.08716432425569111
#>     Attrib V29    -0.22062095369100176
#>     Attrib V3    0.022486477631590125
#>     Attrib V30    -0.0011523438372980851
#>     Attrib V31    -0.424261242763347
#>     Attrib V32    0.07552657406041562
#>     Attrib V33    0.2783837340752394
#>     Attrib V34    0.03705615951666333
#>     Attrib V35    -0.19570039177487303
#>     Attrib V36    -0.4259040521259492
#>     Attrib V37    -0.1870700007541336
#>     Attrib V38    0.28031904106229316
#>     Attrib V39    0.19772529803069555
#>     Attrib V4    0.3053534079294326
#>     Attrib V40    -0.24751924561061664
#>     Attrib V41    0.10755484781275722
#>     Attrib V42    0.002025126425258965
#>     Attrib V43    0.13259284920958528
#>     Attrib V44    0.13831003019574886
#>     Attrib V45    0.020452783919687037
#>     Attrib V46    -0.09153589094030148
#>     Attrib V47    -0.21873854577792748
#>     Attrib V48    0.06564239885400885
#>     Attrib V49    0.17296310195959555
#>     Attrib V5    0.25679436515858833
#>     Attrib V50    -0.1588202699388333
#>     Attrib V51    -3.2689312045585864E-4
#>     Attrib V52    0.044094922436526164
#>     Attrib V53    0.10615185247895774
#>     Attrib V54    0.2939843468514375
#>     Attrib V55    0.03969955773991341
#>     Attrib V56    0.04618503534821133
#>     Attrib V57    0.34771965179991243
#>     Attrib V58    0.07726514195346124
#>     Attrib V59    0.3599096113975737
#>     Attrib V6    0.11229251590461167
#>     Attrib V60    0.15474262818128312
#>     Attrib V7    -0.18691030210427748
#>     Attrib V8    0.004679249770841921
#>     Attrib V9    0.192141995750466
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.17039698480759663
#>     Attrib V1    0.05635706794342928
#>     Attrib V10    0.02527486909354819
#>     Attrib V11    -0.006658712483303188
#>     Attrib V12    -0.005223872476790342
#>     Attrib V13    -0.030307990146625056
#>     Attrib V14    0.04491474111712668
#>     Attrib V15    0.012986927350195934
#>     Attrib V16    0.03928948332180412
#>     Attrib V17    0.014976106567988262
#>     Attrib V18    0.07427750510562289
#>     Attrib V19    -0.056667124204075214
#>     Attrib V2    0.06786101138366425
#>     Attrib V20    0.03836244352948349
#>     Attrib V21    0.04913484700805809
#>     Attrib V22    -0.04951492154432996
#>     Attrib V23    -0.012450424626029782
#>     Attrib V24    -0.05373970426314355
#>     Attrib V25    -0.050857752379926076
#>     Attrib V26    -0.05202874153944015
#>     Attrib V27    -0.055791795078680734
#>     Attrib V28    -0.04807244672664925
#>     Attrib V29    -0.08624659616068829
#>     Attrib V3    0.13174990714458068
#>     Attrib V30    -0.08837567181123031
#>     Attrib V31    -0.11875396338291253
#>     Attrib V32    0.013678523844934506
#>     Attrib V33    0.059641090229055206
#>     Attrib V34    0.08639888361504221
#>     Attrib V35    0.01119492880235002
#>     Attrib V36    0.0621453236428077
#>     Attrib V37    0.04144101753205817
#>     Attrib V38    0.08148429414107092
#>     Attrib V39    0.12125628235578141
#>     Attrib V4    0.09938624924393065
#>     Attrib V40    -0.0158994488994063
#>     Attrib V41    0.0019820584727398166
#>     Attrib V42    0.0024664956052137966
#>     Attrib V43    0.036107909014465124
#>     Attrib V44    0.0898455986386789
#>     Attrib V45    -0.042666742064113056
#>     Attrib V46    -0.0017385514428063923
#>     Attrib V47    0.041615117567208065
#>     Attrib V48    0.03211101243371193
#>     Attrib V49    0.08517649012015972
#>     Attrib V5    0.11268488934664365
#>     Attrib V50    -0.018420392807570046
#>     Attrib V51    0.10951174362821177
#>     Attrib V52    0.03518720182382569
#>     Attrib V53    0.08370897844527946
#>     Attrib V54    0.05081733229828094
#>     Attrib V55    0.09515543638158659
#>     Attrib V56    0.09512915967559156
#>     Attrib V57    0.10358040100864138
#>     Attrib V58    0.10105505248710857
#>     Attrib V59    0.13770020555513593
#>     Attrib V6    0.061120041924159825
#>     Attrib V60    0.1411549327166886
#>     Attrib V7    0.052488868790890354
#>     Attrib V8    0.0806051364193855
#>     Attrib V9    0.09755175624953019
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.47900841890027523
#>     Attrib V1    0.3001489376935677
#>     Attrib V10    -0.215051975422853
#>     Attrib V11    -0.15364429066880905
#>     Attrib V12    -0.08526278227774244
#>     Attrib V13    -0.4794469142575432
#>     Attrib V14    -0.05796273612639338
#>     Attrib V15    0.27619255573165896
#>     Attrib V16    0.253716527753445
#>     Attrib V17    0.17034019610067994
#>     Attrib V18    -0.06514699448946017
#>     Attrib V19    -0.118593785880703
#>     Attrib V2    -0.05619667568522898
#>     Attrib V20    0.30633241007100914
#>     Attrib V21    0.4660321553485867
#>     Attrib V22    0.3092263832729276
#>     Attrib V23    0.3671536021911774
#>     Attrib V24    0.07509577404595004
#>     Attrib V25    -0.6268073356106799
#>     Attrib V26    -0.8119907630036354
#>     Attrib V27    -0.5509190545994923
#>     Attrib V28    0.010830464319207719
#>     Attrib V29    -0.19560862926353284
#>     Attrib V3    -0.048802633152861756
#>     Attrib V30    0.0917710947992168
#>     Attrib V31    -0.9246059337728736
#>     Attrib V32    0.1460637524160036
#>     Attrib V33    0.4562193757477794
#>     Attrib V34    0.02368018683666249
#>     Attrib V35    -0.5160669424888092
#>     Attrib V36    -0.830482710480031
#>     Attrib V37    -0.4399928450376789
#>     Attrib V38    0.41559028353030497
#>     Attrib V39    0.27447408129710194
#>     Attrib V4    0.5613152287135185
#>     Attrib V40    -0.36981700420886554
#>     Attrib V41    0.2642887383599148
#>     Attrib V42    0.2173574128146452
#>     Attrib V43    0.2521415480059117
#>     Attrib V44    0.2348628564838025
#>     Attrib V45    0.13268411857075788
#>     Attrib V46    -0.06310691488239029
#>     Attrib V47    -0.3953187658888686
#>     Attrib V48    0.02556944376779549
#>     Attrib V49    0.5397490857990981
#>     Attrib V5    0.4562614874496188
#>     Attrib V50    -0.4231117980942807
#>     Attrib V51    -0.06836708626618684
#>     Attrib V52    0.18262588605402005
#>     Attrib V53    0.15224388050765655
#>     Attrib V54    0.5879434728730132
#>     Attrib V55    -0.06699976879691617
#>     Attrib V56    -0.016186908564925735
#>     Attrib V57    0.3762049935677526
#>     Attrib V58    0.2285826537472877
#>     Attrib V59    0.6849455091826775
#>     Attrib V6    0.17951815335977964
#>     Attrib V60    0.11399136167649009
#>     Attrib V7    -0.2601417045583407
#>     Attrib V8    -0.017539454601797615
#>     Attrib V9    0.328617145732338
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.4229894015535923
#>     Attrib V1    0.2140451373031202
#>     Attrib V10    0.15377950833315032
#>     Attrib V11    0.1933713271991638
#>     Attrib V12    0.20559678190926803
#>     Attrib V13    -0.29829426114143337
#>     Attrib V14    -0.25417190878805956
#>     Attrib V15    -0.07844612805612683
#>     Attrib V16    0.04238599037990142
#>     Attrib V17    0.21479576801411374
#>     Attrib V18    0.09204693576966358
#>     Attrib V19    -0.024276797393791193
#>     Attrib V2    -0.13224200747386222
#>     Attrib V20    0.5299244733942208
#>     Attrib V21    0.8335166077005667
#>     Attrib V22    0.7112924989463886
#>     Attrib V23    0.8678207508319616
#>     Attrib V24    0.3465304991912628
#>     Attrib V25    -0.3505428851786305
#>     Attrib V26    -0.3322252315416467
#>     Attrib V27    -0.14653283373592568
#>     Attrib V28    0.42580526483742537
#>     Attrib V29    0.2864334267224617
#>     Attrib V3    -0.08918068541592239
#>     Attrib V30    0.3945771497822393
#>     Attrib V31    -1.1657488959352127
#>     Attrib V32    0.159310573255035
#>     Attrib V33    0.35232209969007866
#>     Attrib V34    0.015644145090805868
#>     Attrib V35    -0.14256046074415452
#>     Attrib V36    -0.25530705290134226
#>     Attrib V37    0.3278391059711628
#>     Attrib V38    0.881178987219109
#>     Attrib V39    0.3776295548258441
#>     Attrib V4    0.5242408637989578
#>     Attrib V40    -0.6032133730110317
#>     Attrib V41    0.27933554007008604
#>     Attrib V42    -0.0014589329238210112
#>     Attrib V43    0.45445983602895784
#>     Attrib V44    0.6556256593776326
#>     Attrib V45    0.3807024876142929
#>     Attrib V46    0.028342426286894574
#>     Attrib V47    -0.4400135939373831
#>     Attrib V48    -0.14091355478048184
#>     Attrib V49    0.4629139473663498
#>     Attrib V5    0.5356268313848684
#>     Attrib V50    -0.5186729461927624
#>     Attrib V51    0.1162007613361194
#>     Attrib V52    0.2900155969454452
#>     Attrib V53    -0.012999550226375637
#>     Attrib V54    0.4991162096240141
#>     Attrib V55    -0.3345534500250264
#>     Attrib V56    -0.06625784378121054
#>     Attrib V57    0.08225787551117592
#>     Attrib V58    0.02618719843341303
#>     Attrib V59    0.47345077805015
#>     Attrib V6    0.27145800329457154
#>     Attrib V60    0.03908337226854607
#>     Attrib V7    -0.30439636992348085
#>     Attrib V8    -0.250264823825941
#>     Attrib V9    0.6448540940691658
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.5705098809132864
#>     Attrib V1    0.05951998302343573
#>     Attrib V10    -0.33733188077335907
#>     Attrib V11    -0.6714488107000616
#>     Attrib V12    -0.5472942976722234
#>     Attrib V13    0.2602108949313316
#>     Attrib V14    0.4423046419203121
#>     Attrib V15    0.04468759208292397
#>     Attrib V16    0.10958731964074415
#>     Attrib V17    0.2580393383732669
#>     Attrib V18    0.27843279064497
#>     Attrib V19    0.5068784711305617
#>     Attrib V2    0.19917139595705893
#>     Attrib V20    0.14857664717378008
#>     Attrib V21    -0.1328675938851539
#>     Attrib V22    -0.03999462430704887
#>     Attrib V23    -0.4390500801414929
#>     Attrib V24    -0.3098648292374482
#>     Attrib V25    0.4140165153038925
#>     Attrib V26    0.3898430132111971
#>     Attrib V27    -0.019130264748731876
#>     Attrib V28    -0.5548789032265211
#>     Attrib V29    -0.3217086058736841
#>     Attrib V3    0.04994428070868014
#>     Attrib V30    -0.38641848331293
#>     Attrib V31    0.6612127930490127
#>     Attrib V32    -0.4828034251363704
#>     Attrib V33    -0.28569020674932893
#>     Attrib V34    -0.015228256412353286
#>     Attrib V35    0.2799156300063185
#>     Attrib V36    0.7440682039155974
#>     Attrib V37    0.12322589095398123
#>     Attrib V38    -0.16109263881349897
#>     Attrib V39    -0.006671457517430775
#>     Attrib V4    -0.313268120448522
#>     Attrib V40    0.7473142895728163
#>     Attrib V41    -0.25609976424658387
#>     Attrib V42    -0.05614699264307853
#>     Attrib V43    -0.17650358278917172
#>     Attrib V44    -0.32025825496209315
#>     Attrib V45    -0.35780391526304817
#>     Attrib V46    -0.33128947449809554
#>     Attrib V47    0.007587991084630119
#>     Attrib V48    -0.16470423725575759
#>     Attrib V49    -0.5265169904408017
#>     Attrib V5    -0.47342399752317127
#>     Attrib V50    0.6144404199959335
#>     Attrib V51    -0.2407695155425293
#>     Attrib V52    -0.5331085824893781
#>     Attrib V53    -0.02516757252971988
#>     Attrib V54    -0.14251466117410502
#>     Attrib V55    0.3173665207320923
#>     Attrib V56    0.41655107312441964
#>     Attrib V57    0.012118679096515449
#>     Attrib V58    -0.1118675188500157
#>     Attrib V59    -0.2436167696540443
#>     Attrib V6    -0.32680474825095895
#>     Attrib V60    0.16004030774879646
#>     Attrib V7    0.2653965005727457
#>     Attrib V8    0.1639933749739606
#>     Attrib V9    -0.5570285746358165
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.2929917306060964
#>     Attrib V1    0.43272044649143193
#>     Attrib V10    -0.2568605881179357
#>     Attrib V11    -0.2573295302785152
#>     Attrib V12    -0.2360108945192682
#>     Attrib V13    -0.5265036836969395
#>     Attrib V14    -0.04310872493023974
#>     Attrib V15    0.17230477858052187
#>     Attrib V16    0.3210847426558114
#>     Attrib V17    0.18381313077800016
#>     Attrib V18    -0.07011635464509909
#>     Attrib V19    -0.13683555988062407
#>     Attrib V2    0.03506614362890246
#>     Attrib V20    0.3107625701400246
#>     Attrib V21    0.3623272526256409
#>     Attrib V22    0.14568995596766982
#>     Attrib V23    0.15075606008693662
#>     Attrib V24    -0.023081177579934352
#>     Attrib V25    -0.6491947030284675
#>     Attrib V26    -0.8782082803454077
#>     Attrib V27    -0.6613290477856213
#>     Attrib V28    -0.258055054612908
#>     Attrib V29    -0.3585484468608051
#>     Attrib V3    0.01982425478947106
#>     Attrib V30    -0.06593682735274406
#>     Attrib V31    -0.7540963884214573
#>     Attrib V32    0.09989489312668497
#>     Attrib V33    0.38840565013026424
#>     Attrib V34    0.10843281300578467
#>     Attrib V35    -0.4347788949452529
#>     Attrib V36    -0.6999990571116371
#>     Attrib V37    -0.37355806759215643
#>     Attrib V38    0.370638843750977
#>     Attrib V39    0.25870626891631954
#>     Attrib V4    0.4917603755102369
#>     Attrib V40    -0.2528891284366615
#>     Attrib V41    0.14611145978878515
#>     Attrib V42    0.1302664945309191
#>     Attrib V43    0.22751218143784097
#>     Attrib V44    0.14769479226576845
#>     Attrib V45    -0.07328153753751271
#>     Attrib V46    -0.09953834747075306
#>     Attrib V47    -0.3615853603060964
#>     Attrib V48    0.02268233319147048
#>     Attrib V49    0.3262739218086907
#>     Attrib V5    0.3950956196407758
#>     Attrib V50    -0.24878607760456692
#>     Attrib V51    -0.08918654335126204
#>     Attrib V52    0.03865470658401888
#>     Attrib V53    0.12774997948626962
#>     Attrib V54    0.5868480704109964
#>     Attrib V55    0.0175382264524103
#>     Attrib V56    0.1431439610215568
#>     Attrib V57    0.44668438146159106
#>     Attrib V58    0.18898553601435703
#>     Attrib V59    0.6886174387730853
#>     Attrib V6    0.1409995436919397
#>     Attrib V60    0.2513714008833411
#>     Attrib V7    -0.23652986709382576
#>     Attrib V8    -0.08346196390717875
#>     Attrib V9    0.20911728242343464
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.4580251112910805
#>     Attrib V1    0.4389750808002277
#>     Attrib V10    -0.27484815252614375
#>     Attrib V11    -0.2274632141733312
#>     Attrib V12    -0.21501742824082182
#>     Attrib V13    -0.5375750389330659
#>     Attrib V14    -0.058932478835438624
#>     Attrib V15    0.22955997059703415
#>     Attrib V16    0.27517298807715684
#>     Attrib V17    0.23139793922057988
#>     Attrib V18    -0.0797414391524467
#>     Attrib V19    -0.14033216084052771
#>     Attrib V2    -0.06213894736912331
#>     Attrib V20    0.3525785138903054
#>     Attrib V21    0.5043349943511444
#>     Attrib V22    0.3218988874235987
#>     Attrib V23    0.39401239811710526
#>     Attrib V24    -0.01580615778921727
#>     Attrib V25    -0.7511643487648082
#>     Attrib V26    -0.9236708793720211
#>     Attrib V27    -0.6977671028300132
#>     Attrib V28    -0.10878384728415906
#>     Attrib V29    -0.3101718727774115
#>     Attrib V3    0.03917018786848164
#>     Attrib V30    0.029474917619992623
#>     Attrib V31    -1.0388272468702406
#>     Attrib V32    0.11916514085363457
#>     Attrib V33    0.4803401521130413
#>     Attrib V34    0.042498268247969866
#>     Attrib V35    -0.5257991290399825
#>     Attrib V36    -0.8271964993759384
#>     Attrib V37    -0.39204401348845563
#>     Attrib V38    0.5074496596186207
#>     Attrib V39    0.33827176607183146
#>     Attrib V4    0.6195073756620018
#>     Attrib V40    -0.42029916047355903
#>     Attrib V41    0.23836716975893865
#>     Attrib V42    0.18683143570842173
#>     Attrib V43    0.29346496954538026
#>     Attrib V44    0.24938326123411197
#>     Attrib V45    0.07846784658572906
#>     Attrib V46    -0.12401141783835946
#>     Attrib V47    -0.3807720565576864
#>     Attrib V48    -0.07156952831860462
#>     Attrib V49    0.4425436865945517
#>     Attrib V5    0.460073726641873
#>     Attrib V50    -0.3723749913896733
#>     Attrib V51    -0.10968870029330863
#>     Attrib V52    0.1276257508961805
#>     Attrib V53    0.1361044016304928
#>     Attrib V54    0.6120888923540423
#>     Attrib V55    -0.04058110326548084
#>     Attrib V56    0.12746289824814588
#>     Attrib V57    0.43411225978650236
#>     Attrib V58    0.18316348579289363
#>     Attrib V59    0.8190047252754876
#>     Attrib V6    0.1873849075351159
#>     Attrib V60    0.150964305253523
#>     Attrib V7    -0.26200887064574635
#>     Attrib V8    0.0067245137960815675
#>     Attrib V9    0.3280509033822897
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.31915542955874565
#>     Attrib V1    -0.03781581703894821
#>     Attrib V10    -0.1498312313468329
#>     Attrib V11    -0.33583328196078377
#>     Attrib V12    -0.3081123167589772
#>     Attrib V13    0.11315136622892757
#>     Attrib V14    0.23852308992557872
#>     Attrib V15    0.06799954124874277
#>     Attrib V16    0.04177622178301191
#>     Attrib V17    0.1772290536191396
#>     Attrib V18    0.15296986528917403
#>     Attrib V19    0.27074191268466996
#>     Attrib V2    0.08928722325005517
#>     Attrib V20    0.06568301762236861
#>     Attrib V21    -0.080317721719195
#>     Attrib V22    -0.014392009427927953
#>     Attrib V23    -0.16122542484721109
#>     Attrib V24    -0.18438321774253735
#>     Attrib V25    0.21468642718702757
#>     Attrib V26    0.25843099970457284
#>     Attrib V27    -0.02496324427493978
#>     Attrib V28    -0.28705696159779304
#>     Attrib V29    -0.20073714777732798
#>     Attrib V3    0.01987253237810818
#>     Attrib V30    -0.24699206391246323
#>     Attrib V31    0.327803298302291
#>     Attrib V32    -0.18816758375570494
#>     Attrib V33    -0.20015272370938014
#>     Attrib V34    -0.02486694710084279
#>     Attrib V35    0.165469609090132
#>     Attrib V36    0.4491161681310751
#>     Attrib V37    0.014515376326243265
#>     Attrib V38    -0.15666387936009166
#>     Attrib V39    -0.07397154957330183
#>     Attrib V4    -0.17046698835178517
#>     Attrib V40    0.3950268913665117
#>     Attrib V41    -0.13950580600927515
#>     Attrib V42    -0.049151159658060044
#>     Attrib V43    -0.08122772353667716
#>     Attrib V44    -0.21873035456598763
#>     Attrib V45    -0.23616189103774057
#>     Attrib V46    -0.17182878622374026
#>     Attrib V47    0.05303842237793649
#>     Attrib V48    -0.09591515249114722
#>     Attrib V49    -0.2809931503922478
#>     Attrib V5    -0.2954604670071852
#>     Attrib V50    0.33592742806630743
#>     Attrib V51    -0.10723700731722903
#>     Attrib V52    -0.22054329727029734
#>     Attrib V53    -0.061801384580449474
#>     Attrib V54    -0.17947643481099926
#>     Attrib V55    0.16027581449363495
#>     Attrib V56    0.23486009357644883
#>     Attrib V57    0.007336842778279899
#>     Attrib V58    0.004514364063930593
#>     Attrib V59    -0.19534921967156257
#>     Attrib V6    -0.11516841227733944
#>     Attrib V60    -0.017994904740801208
#>     Attrib V7    0.11721410955181696
#>     Attrib V8    0.1690859630453621
#>     Attrib V9    -0.2255298199384271
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.7986931817308375
#>     Attrib V1    -0.5438793753567879
#>     Attrib V10    1.0101162254505658
#>     Attrib V11    1.7628389847984607
#>     Attrib V12    1.5723502825741111
#>     Attrib V13    0.5403760378831012
#>     Attrib V14    -0.22901417359989923
#>     Attrib V15    0.024783504308651772
#>     Attrib V16    -0.35353483446095446
#>     Attrib V17    -0.43061583029353706
#>     Attrib V18    -0.030007553015445203
#>     Attrib V19    -0.5131886596143255
#>     Attrib V2    -0.3497676664536841
#>     Attrib V20    -0.19936882907159248
#>     Attrib V21    0.5406088760781855
#>     Attrib V22    0.2722498808950397
#>     Attrib V23    0.9979608468867018
#>     Attrib V24    0.7285314277714382
#>     Attrib V25    -0.15294664501848504
#>     Attrib V26    0.6669232256014138
#>     Attrib V27    1.0892376307633616
#>     Attrib V28    1.4771981420810463
#>     Attrib V29    1.1787965544646863
#>     Attrib V3    -0.030253897627660828
#>     Attrib V30    0.6371875242723933
#>     Attrib V31    -0.6568548629689085
#>     Attrib V32    0.4225349075525415
#>     Attrib V33    -0.4230222773900134
#>     Attrib V34    -0.2791142994974249
#>     Attrib V35    3.378386364431745E-5
#>     Attrib V36    -0.7957333051239567
#>     Attrib V37    0.19900756357863572
#>     Attrib V38    -0.3514152825930763
#>     Attrib V39    -0.21163998911608978
#>     Attrib V4    0.21339114665813028
#>     Attrib V40    -0.9505074569101329
#>     Attrib V41    0.5918963118472975
#>     Attrib V42    -0.12595670352065738
#>     Attrib V43    0.4903826701677337
#>     Attrib V44    0.735411999409924
#>     Attrib V45    0.6911940535086449
#>     Attrib V46    0.8067428974829457
#>     Attrib V47    0.36456659496959104
#>     Attrib V48    0.46373921332110424
#>     Attrib V49    1.054591535378012
#>     Attrib V5    0.7570674076681893
#>     Attrib V50    -0.5743643936571369
#>     Attrib V51    0.7942493256066576
#>     Attrib V52    1.170438287779936
#>     Attrib V53    0.4591439461317039
#>     Attrib V54    -0.08093829227570233
#>     Attrib V55    -0.30193043055125574
#>     Attrib V56    -0.7070315569819454
#>     Attrib V57    -0.29231761725527844
#>     Attrib V58    0.5318457385740246
#>     Attrib V59    -0.16016425708586943
#>     Attrib V6    0.8001007213995438
#>     Attrib V60    -0.4840939216672567
#>     Attrib V7    -0.035504479782173776
#>     Attrib V8    -0.1905267512220233
#>     Attrib V9    1.1366872720729977
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.16048803087702598
#>     Attrib V1    0.0682148706632606
#>     Attrib V10    -0.013929491671816379
#>     Attrib V11    -0.044924028987943634
#>     Attrib V12    0.037780450848461655
#>     Attrib V13    -0.04967814441691874
#>     Attrib V14    0.08897556626558228
#>     Attrib V15    0.024402590728884992
#>     Attrib V16    0.036202289770887595
#>     Attrib V17    0.08314203428327159
#>     Attrib V18    -0.0014742145883732303
#>     Attrib V19    0.035993380716905166
#>     Attrib V2    0.0722954558508746
#>     Attrib V20    0.03971033588102596
#>     Attrib V21    0.04091041646749422
#>     Attrib V22    -0.048502379962568724
#>     Attrib V23    -0.013602161689318666
#>     Attrib V24    -0.039220077750268444
#>     Attrib V25    -0.0596685311694906
#>     Attrib V26    -0.10099589593743889
#>     Attrib V27    -0.05410457123814516
#>     Attrib V28    -0.012850906624320493
#>     Attrib V29    -0.06210716162995668
#>     Attrib V3    0.05268879580112656
#>     Attrib V30    -0.0678592112970111
#>     Attrib V31    -0.16025375368842623
#>     Attrib V32    -0.009510827483658845
#>     Attrib V33    0.09145046889259519
#>     Attrib V34    0.04700946171196288
#>     Attrib V35    0.08145199350777507
#>     Attrib V36    0.047082786224534726
#>     Attrib V37    0.1106552516237302
#>     Attrib V38    0.10101069909607338
#>     Attrib V39    0.11687783081749556
#>     Attrib V4    0.17193687250912262
#>     Attrib V40    -0.013294657552677232
#>     Attrib V41    0.027686463385030374
#>     Attrib V42    0.01790853723278922
#>     Attrib V43    0.05732221975422682
#>     Attrib V44    0.07254528657280657
#>     Attrib V45    -0.00237062727896079
#>     Attrib V46    -0.01314305766232381
#>     Attrib V47    -0.033243370423443414
#>     Attrib V48    0.06144136256020084
#>     Attrib V49    0.04835392809622814
#>     Attrib V5    0.07802824783735907
#>     Attrib V50    0.026838644372326657
#>     Attrib V51    0.02776793066369871
#>     Attrib V52    0.020671239565536337
#>     Attrib V53    0.07127386574591772
#>     Attrib V54    0.09671367021004579
#>     Attrib V55    0.06996471765637768
#>     Attrib V56    0.09263122115347971
#>     Attrib V57    0.19297397849848585
#>     Attrib V58    0.10791885513214391
#>     Attrib V59    0.15143864035351892
#>     Attrib V6    0.12197451355053598
#>     Attrib V60    0.16552951013764125
#>     Attrib V7    -0.022110274919376706
#>     Attrib V8    0.05650887388214046
#>     Attrib V9    0.07319837934636785
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.6525718639636463
#>     Attrib V1    0.2182421384829197
#>     Attrib V10    0.07689394591987044
#>     Attrib V11    0.29092983298958164
#>     Attrib V12    0.2620624312690943
#>     Attrib V13    -0.38696138173741457
#>     Attrib V14    -0.4645925285142236
#>     Attrib V15    -0.09227544764355358
#>     Attrib V16    -5.589965764554836E-4
#>     Attrib V17    0.03291728835871477
#>     Attrib V18    -0.01914965765436964
#>     Attrib V19    -0.2637658880675878
#>     Attrib V2    -0.1507643298872655
#>     Attrib V20    0.2134282869791007
#>     Attrib V21    0.5467600684039355
#>     Attrib V22    0.3456995676479471
#>     Attrib V23    0.5717673044508538
#>     Attrib V24    0.3168111599830746
#>     Attrib V25    -0.4614261724137555
#>     Attrib V26    -0.36957350196613836
#>     Attrib V27    -0.16319132290962599
#>     Attrib V28    0.38557318429879317
#>     Attrib V29    0.18719204701270628
#>     Attrib V3    -0.08291167433716111
#>     Attrib V30    0.3706605702166279
#>     Attrib V31    -1.0097312658189281
#>     Attrib V32    0.3010417844930956
#>     Attrib V33    0.3706133123421177
#>     Attrib V34    0.09689118776449385
#>     Attrib V35    -0.23513624906206568
#>     Attrib V36    -0.530996331651609
#>     Attrib V37    0.13772209602810054
#>     Attrib V38    0.6498439047001459
#>     Attrib V39    0.32578457817132433
#>     Attrib V4    0.48606848784102313
#>     Attrib V40    -0.7129917363387922
#>     Attrib V41    0.2693967757462851
#>     Attrib V42    0.06288303610949549
#>     Attrib V43    0.34300878669128826
#>     Attrib V44    0.5196305292407493
#>     Attrib V45    0.3690134765617426
#>     Attrib V46    0.055961949161632246
#>     Attrib V47    -0.40293658777833247
#>     Attrib V48    -0.04927261143232457
#>     Attrib V49    0.45439371058483424
#>     Attrib V5    0.509975780307987
#>     Attrib V50    -0.6136920889611738
#>     Attrib V51    0.05145865812625376
#>     Attrib V52    0.3210150572169297
#>     Attrib V53    0.06586683658600101
#>     Attrib V54    0.4402654648120603
#>     Attrib V55    -0.40020805023885975
#>     Attrib V56    -0.2638869275482613
#>     Attrib V57    0.17397284256092144
#>     Attrib V58    0.02438479409763212
#>     Attrib V59    0.5119871191551192
#>     Attrib V6    0.2845428670731425
#>     Attrib V60    0.025167949083770697
#>     Attrib V7    -0.48215857370623205
#>     Attrib V8    -0.2215750263388904
#>     Attrib V9    0.585206791376662
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.666204527987588
#>     Attrib V1    0.47197760377864884
#>     Attrib V10    -1.022334336165086
#>     Attrib V11    -1.638113228632985
#>     Attrib V12    -1.4457909608962427
#>     Attrib V13    -0.47510308373232946
#>     Attrib V14    0.2345792113008227
#>     Attrib V15    -6.165650056305804E-4
#>     Attrib V16    0.3595404691187858
#>     Attrib V17    0.38993554792102747
#>     Attrib V18    0.12161138152195732
#>     Attrib V19    0.44364518421785204
#>     Attrib V2    0.2726705459606716
#>     Attrib V20    0.17527695978079255
#>     Attrib V21    -0.5218575837218916
#>     Attrib V22    -0.28324703170956367
#>     Attrib V23    -0.922361843425916
#>     Attrib V24    -0.6701705170557233
#>     Attrib V25    0.08410541170970676
#>     Attrib V26    -0.5762447078743075
#>     Attrib V27    -0.961290949604132
#>     Attrib V28    -1.410280460389593
#>     Attrib V29    -1.1171070466898938
#>     Attrib V3    0.06331202289371053
#>     Attrib V30    -0.610487704260649
#>     Attrib V31    0.5820576068168059
#>     Attrib V32    -0.37161941208469085
#>     Attrib V33    0.3248810209290404
#>     Attrib V34    0.2888383052423804
#>     Attrib V35    0.0363915496857185
#>     Attrib V36    0.7387909545027311
#>     Attrib V37    -0.23753966596877663
#>     Attrib V38    0.2904226961909292
#>     Attrib V39    0.2253582309949392
#>     Attrib V4    -0.22377437759562607
#>     Attrib V40    0.8449610390894935
#>     Attrib V41    -0.5016905791345939
#>     Attrib V42    0.1587692122328743
#>     Attrib V43    -0.4091252057259853
#>     Attrib V44    -0.6761265224546227
#>     Attrib V45    -0.6294503896828213
#>     Attrib V46    -0.7932703620570223
#>     Attrib V47    -0.4489625373193538
#>     Attrib V48    -0.4712916871418153
#>     Attrib V49    -0.9628086312221807
#>     Attrib V5    -0.7330394301518761
#>     Attrib V50    0.5439265963720149
#>     Attrib V51    -0.8015752823033628
#>     Attrib V52    -1.0080066508057977
#>     Attrib V53    -0.3850986045240594
#>     Attrib V54    0.11481157570979741
#>     Attrib V55    0.32771058720974294
#>     Attrib V56    0.6569555790677007
#>     Attrib V57    0.276918923705491
#>     Attrib V58    -0.43480725687643523
#>     Attrib V59    0.1770198942587602
#>     Attrib V6    -0.7051501198162717
#>     Attrib V60    0.40842944763338745
#>     Attrib V7    -0.010637223605821467
#>     Attrib V8    0.18737209031814953
#>     Attrib V9    -1.0219439183948313
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.16983643391238243
#>     Attrib V1    0.14071653197108142
#>     Attrib V10    -0.11986006788199428
#>     Attrib V11    0.023082545816112757
#>     Attrib V12    0.028967936932978937
#>     Attrib V13    -0.25897260650809056
#>     Attrib V14    -0.006507006771080899
#>     Attrib V15    0.08537949347928306
#>     Attrib V16    0.07337809225747882
#>     Attrib V17    0.04244620229512025
#>     Attrib V18    -0.030965111250945965
#>     Attrib V19    -0.14649097885498813
#>     Attrib V2    -0.02629438834840438
#>     Attrib V20    0.13637176094969838
#>     Attrib V21    0.2027743314731938
#>     Attrib V22    0.050635665693616126
#>     Attrib V23    0.055488800566762905
#>     Attrib V24    0.05261442941253923
#>     Attrib V25    -0.2505095985796681
#>     Attrib V26    -0.44187516250753023
#>     Attrib V27    -0.2765396293415522
#>     Attrib V28    -0.03226041311416426
#>     Attrib V29    -0.09501979142832531
#>     Attrib V3    0.05287124396486126
#>     Attrib V30    -0.04053677387183359
#>     Attrib V31    -0.4473951833742612
#>     Attrib V32    0.12167534328999774
#>     Attrib V33    0.2163727265569628
#>     Attrib V34    0.04415136060811356
#>     Attrib V35    -0.1967268607789002
#>     Attrib V36    -0.3927410021142317
#>     Attrib V37    -0.11041798588806061
#>     Attrib V38    0.23239422778189325
#>     Attrib V39    0.1708445270754682
#>     Attrib V4    0.25333286594795157
#>     Attrib V40    -0.2243605573763435
#>     Attrib V41    0.1056376931265172
#>     Attrib V42    -0.014860779281236258
#>     Attrib V43    0.138131207534008
#>     Attrib V44    0.07416464687040442
#>     Attrib V45    0.054388870816699804
#>     Attrib V46    -0.028475499334435776
#>     Attrib V47    -0.12837429449566606
#>     Attrib V48    0.033477632110301275
#>     Attrib V49    0.18803634943190148
#>     Attrib V5    0.22157409282764484
#>     Attrib V50    -0.15192582357461903
#>     Attrib V51    0.02968432539007279
#>     Attrib V52    0.1369041505115772
#>     Attrib V53    0.11783079129369643
#>     Attrib V54    0.28986125625739106
#>     Attrib V55    0.05295663093746967
#>     Attrib V56    0.033265339648739234
#>     Attrib V57    0.29065494079551646
#>     Attrib V58    0.09006390464594638
#>     Attrib V59    0.36645189714428705
#>     Attrib V6    0.11241240903615188
#>     Attrib V60    0.15820400002915228
#>     Attrib V7    -0.1592670836139331
#>     Attrib V8    -0.04434159395897502
#>     Attrib V9    0.17474765281908178
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    0.013662457970416732
#>     Attrib V1    0.15741997675200822
#>     Attrib V10    0.022291613972405182
#>     Attrib V11    0.01638319263469231
#>     Attrib V12    0.08597226504316276
#>     Attrib V13    -0.08037003559368598
#>     Attrib V14    -0.0020023532096982827
#>     Attrib V15    0.05834451288264394
#>     Attrib V16    0.028629692011237908
#>     Attrib V17    0.04566877624455509
#>     Attrib V18    -0.03284680434378315
#>     Attrib V19    -0.11573190625175982
#>     Attrib V2    0.045488136320894705
#>     Attrib V20    0.01754386420316177
#>     Attrib V21    0.1015476554130057
#>     Attrib V22    -0.04841535310139788
#>     Attrib V23    0.019191382927304317
#>     Attrib V24    -0.028487592254571027
#>     Attrib V25    -0.1418311662800627
#>     Attrib V26    -0.1962425665300293
#>     Attrib V27    -0.1501792514377352
#>     Attrib V28    0.0034752070187457794
#>     Attrib V29    -0.1436113817871783
#>     Attrib V3    0.04083325182525476
#>     Attrib V30    -0.01478281074685341
#>     Attrib V31    -0.22212559230733273
#>     Attrib V32    0.04828009738260577
#>     Attrib V33    0.09301928967994691
#>     Attrib V34    0.0217774910721708
#>     Attrib V35    -0.06554817059060654
#>     Attrib V36    -0.20595394201611497
#>     Attrib V37    -0.004840794259201968
#>     Attrib V38    0.1288590256293071
#>     Attrib V39    0.16703120407908098
#>     Attrib V4    0.24053305946100237
#>     Attrib V40    -0.11885160267586722
#>     Attrib V41    0.04678658592552006
#>     Attrib V42    0.01657456146951508
#>     Attrib V43    0.040304673651581566
#>     Attrib V44    0.03185715653530016
#>     Attrib V45    -0.004405360679062308
#>     Attrib V46    -0.020563028069591642
#>     Attrib V47    -0.10448617264371636
#>     Attrib V48    0.06211532749403448
#>     Attrib V49    0.10491846483368435
#>     Attrib V5    0.13600268484838066
#>     Attrib V50    -0.07861287395305241
#>     Attrib V51    0.023305931728229257
#>     Attrib V52    0.09653994128533065
#>     Attrib V53    0.13620449134960963
#>     Attrib V54    0.2088688449857771
#>     Attrib V55    0.03168710547818655
#>     Attrib V56    0.07383073308921265
#>     Attrib V57    0.20758014379902806
#>     Attrib V58    0.13400308945720707
#>     Attrib V59    0.3059905776002201
#>     Attrib V6    0.08133599277458688
#>     Attrib V60    0.173977099890452
#>     Attrib V7    -0.12565625424861984
#>     Attrib V8    -0.05281919816414634
#>     Attrib V9    0.11421781317491238
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.3201308201943268
#>     Attrib V1    0.3959788142811759
#>     Attrib V10    -0.2499943453475035
#>     Attrib V11    -0.22275546450896894
#>     Attrib V12    -0.2823673524847812
#>     Attrib V13    -0.4778026647164207
#>     Attrib V14    -0.020804282197006183
#>     Attrib V15    0.22640244887710984
#>     Attrib V16    0.28468913764711856
#>     Attrib V17    0.21580080906855906
#>     Attrib V18    -0.03546863822025671
#>     Attrib V19    -0.11424531898039192
#>     Attrib V2    0.03607027945437699
#>     Attrib V20    0.3490564280335291
#>     Attrib V21    0.3841928274979923
#>     Attrib V22    0.24511937725081218
#>     Attrib V23    0.27004506788631505
#>     Attrib V24    -9.215940060827656E-4
#>     Attrib V25    -0.677666930675603
#>     Attrib V26    -0.8514631940185446
#>     Attrib V27    -0.6734826996702855
#>     Attrib V28    -0.18918680391713227
#>     Attrib V29    -0.3480798293734575
#>     Attrib V3    -0.02337511971853027
#>     Attrib V30    -0.04733291631573204
#>     Attrib V31    -0.8441569514924337
#>     Attrib V32    0.09377336179107004
#>     Attrib V33    0.44610370055881327
#>     Attrib V34    0.10355082000133309
#>     Attrib V35    -0.4332784796776926
#>     Attrib V36    -0.7351491852814954
#>     Attrib V37    -0.3531378697574968
#>     Attrib V38    0.5014223727947553
#>     Attrib V39    0.293358352861691
#>     Attrib V4    0.521579059987642
#>     Attrib V40    -0.32330219656688897
#>     Attrib V41    0.15997914233040883
#>     Attrib V42    0.13778302135835155
#>     Attrib V43    0.2323844918487616
#>     Attrib V44    0.2444473827613777
#>     Attrib V45    -2.0597766101469942E-4
#>     Attrib V46    -0.12032147748782306
#>     Attrib V47    -0.35503607589925973
#>     Attrib V48    -0.016762963907281575
#>     Attrib V49    0.3523835394230708
#>     Attrib V5    0.38599379723651656
#>     Attrib V50    -0.30179529844220065
#>     Attrib V51    -0.1076804084889668
#>     Attrib V52    0.035813745745371446
#>     Attrib V53    0.1519941560479303
#>     Attrib V54    0.6130892797216841
#>     Attrib V55    0.027827215961204573
#>     Attrib V56    0.06718893148293241
#>     Attrib V57    0.4326722202952404
#>     Attrib V58    0.12837829938505765
#>     Attrib V59    0.6943581860698038
#>     Attrib V6    0.14054342713419873
#>     Attrib V60    0.19785879954981161
#>     Attrib V7    -0.215795358938171
#>     Attrib V8    0.012561729324644007
#>     Attrib V9    0.29407987611921416
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.2462866711783823
#>     Attrib V1    0.3422111305074026
#>     Attrib V10    -0.26131065722737024
#>     Attrib V11    -0.23820734575002803
#>     Attrib V12    -0.24482522625794995
#>     Attrib V13    -0.477162837768456
#>     Attrib V14    0.029718311582119496
#>     Attrib V15    0.22004503520673446
#>     Attrib V16    0.2879513971770796
#>     Attrib V17    0.15534942216538203
#>     Attrib V18    0.029379210977687576
#>     Attrib V19    -0.11527206657036591
#>     Attrib V2    -0.030777844810119886
#>     Attrib V20    0.3228152878345256
#>     Attrib V21    0.4340262525653025
#>     Attrib V22    0.21323236673492485
#>     Attrib V23    0.28169496201468175
#>     Attrib V24    -0.020573235974747705
#>     Attrib V25    -0.6098742349152702
#>     Attrib V26    -0.7607257876502772
#>     Attrib V27    -0.5873014364578152
#>     Attrib V28    -0.12556343822062996
#>     Attrib V29    -0.29225851117954393
#>     Attrib V3    0.05519331673300811
#>     Attrib V30    -0.007614605868285667
#>     Attrib V31    -0.8139619629751884
#>     Attrib V32    0.06032768792563791
#>     Attrib V33    0.38336471895762964
#>     Attrib V34    0.07973930075534512
#>     Attrib V35    -0.4100023595462269
#>     Attrib V36    -0.5878946437169501
#>     Attrib V37    -0.32478970917530336
#>     Attrib V38    0.36357550988322157
#>     Attrib V39    0.30547950052769346
#>     Attrib V4    0.432482882362452
#>     Attrib V40    -0.29517451689518653
#>     Attrib V41    0.12993168712223416
#>     Attrib V42    0.1580681845020951
#>     Attrib V43    0.1517973773926152
#>     Attrib V44    0.2156464373463131
#>     Attrib V45    0.044657811383315205
#>     Attrib V46    -0.09197707173390002
#>     Attrib V47    -0.3086737449244419
#>     Attrib V48    -0.06321209772537516
#>     Attrib V49    0.3435339118107307
#>     Attrib V5    0.36946921036681735
#>     Attrib V50    -0.26258335995916143
#>     Attrib V51    -0.04911233086459092
#>     Attrib V52    0.054795390899477825
#>     Attrib V53    0.1384040849331495
#>     Attrib V54    0.44078321755274436
#>     Attrib V55    -0.019114577481887093
#>     Attrib V56    0.08475855885707526
#>     Attrib V57    0.3876396867467274
#>     Attrib V58    0.2273099801658035
#>     Attrib V59    0.588564814617449
#>     Attrib V6    0.16894304225164894
#>     Attrib V60    0.1549621990420968
#>     Attrib V7    -0.17132254822328527
#>     Attrib V8    0.08361045865837878
#>     Attrib V9    0.27306562827380354
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
#>  0.2318841 
```
