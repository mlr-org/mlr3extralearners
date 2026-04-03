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
#>     Threshold    -0.16114047356746022
#>     Node 2    2.0239141518754433
#>     Node 3    0.6563886612838143
#>     Node 4    0.9820066021566224
#>     Node 5    -2.194655209681651
#>     Node 6    2.0279098497430006
#>     Node 7    2.347982123474837
#>     Node 8    1.2253829012971647
#>     Node 9    4.08861419534494
#>     Node 10    -1.7069320036271125
#>     Node 11    1.1397140101800423
#>     Node 12    1.3628612925487495
#>     Node 13    1.5887195831681167
#>     Node 14    1.1620981689498782
#>     Node 15    -1.9859049442226062
#>     Node 16    -0.4849125767429538
#>     Node 17    0.5964723765787682
#>     Node 18    0.621838174062594
#>     Node 19    1.7359742432271752
#>     Node 20    1.8453053726124522
#>     Node 21    -2.1010593059465927
#>     Node 22    0.35902591450620314
#>     Node 23    1.8829226099458993
#>     Node 24    -1.9993676024542506
#>     Node 25    3.8220815543191433
#>     Node 26    -0.4432066796598916
#>     Node 27    1.4710287248260425
#>     Node 28    -4.128352242398682
#>     Node 29    1.1713740515428543
#>     Node 30    0.3223606198954857
#>     Node 31    1.4557383641323165
#>     Node 32    1.042046979221978
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.19544428770712474
#>     Node 2    -2.075578485416696
#>     Node 3    -0.644575324955013
#>     Node 4    -0.9446056808091219
#>     Node 5    2.2152528819409216
#>     Node 6    -2.0038170681886722
#>     Node 7    -2.3383846658533307
#>     Node 8    -1.2600668380482412
#>     Node 9    -4.099821111109542
#>     Node 10    1.6474404386354429
#>     Node 11    -1.1076153311706296
#>     Node 12    -1.4421457426075335
#>     Node 13    -1.5361785034013014
#>     Node 14    -1.0974757832828808
#>     Node 15    1.98279803267058
#>     Node 16    0.476936801390251
#>     Node 17    -0.5664050329257087
#>     Node 18    -0.5860877485265128
#>     Node 19    -1.7350716334365892
#>     Node 20    -1.835594453789887
#>     Node 21    2.1644795786955537
#>     Node 22    -0.4138543996107475
#>     Node 23    -1.9279345455075056
#>     Node 24    1.99442077998882
#>     Node 25    -3.8178441602860858
#>     Node 26    0.3666877446047089
#>     Node 27    -1.514640208427752
#>     Node 28    4.102453877098935
#>     Node 29    -1.2069914886426594
#>     Node 30    -0.24747886846678832
#>     Node 31    -1.3999448368202152
#>     Node 32    -1.0625481624333017
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.01895395589468306
#>     Attrib V1    0.523287249762639
#>     Attrib V10    -0.5107947304186631
#>     Attrib V11    -0.08643208472046193
#>     Attrib V12    -0.23825602266731147
#>     Attrib V13    -0.28828773923619205
#>     Attrib V14    -0.025408605293565374
#>     Attrib V15    0.3671413576634613
#>     Attrib V16    0.5315816184055909
#>     Attrib V17    0.23736997278555796
#>     Attrib V18    -0.11740961300422749
#>     Attrib V19    -0.12400465959729762
#>     Attrib V2    0.5584668081097175
#>     Attrib V20    0.6385205500863768
#>     Attrib V21    0.7961237833609659
#>     Attrib V22    0.3833753875282267
#>     Attrib V23    0.31074623745307534
#>     Attrib V24    0.23732297283314036
#>     Attrib V25    -0.40532322951918565
#>     Attrib V26    -0.8014038298018987
#>     Attrib V27    -0.8846362447960604
#>     Attrib V28    -0.5190821478309469
#>     Attrib V29    -0.3472246542936794
#>     Attrib V3    0.19768666012879965
#>     Attrib V30    0.16961670639714244
#>     Attrib V31    -1.206188933237875
#>     Attrib V32    0.04867805967008421
#>     Attrib V33    0.6077192518242235
#>     Attrib V34    0.017798865790645595
#>     Attrib V35    -0.5166688797844917
#>     Attrib V36    -0.6953238039667565
#>     Attrib V37    -0.7524960583487306
#>     Attrib V38    -0.09161909345915385
#>     Attrib V39    0.5260479304929129
#>     Attrib V4    0.433932411838769
#>     Attrib V40    0.11918098475012391
#>     Attrib V41    -0.14755169249306957
#>     Attrib V42    0.504365124855449
#>     Attrib V43    0.4748830316235913
#>     Attrib V44    0.6749652656033841
#>     Attrib V45    0.566142071243141
#>     Attrib V46    -0.016577099768144796
#>     Attrib V47    -0.3279004704519732
#>     Attrib V48    0.021206248087872276
#>     Attrib V49    0.13122528683227105
#>     Attrib V5    -0.18386226703916314
#>     Attrib V50    -0.7644020152886782
#>     Attrib V51    -0.22626610427933266
#>     Attrib V52    0.15156705981498383
#>     Attrib V53    0.2631229373481208
#>     Attrib V54    0.7656646488237051
#>     Attrib V55    0.07826540302756145
#>     Attrib V56    0.3738058850342989
#>     Attrib V57    0.16057282356814637
#>     Attrib V58    0.4979153122547658
#>     Attrib V59    0.6841106455709681
#>     Attrib V6    -0.40191535153525054
#>     Attrib V60    0.15359429632643745
#>     Attrib V7    0.004292856371432406
#>     Attrib V8    0.25943158415161927
#>     Attrib V9    0.21901177337324565
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.04558528813840949
#>     Attrib V1    0.17982682509739265
#>     Attrib V10    -0.10273004259041271
#>     Attrib V11    0.0586221935788955
#>     Attrib V12    0.03029774077539597
#>     Attrib V13    -0.018272231925992064
#>     Attrib V14    0.0027814049375394783
#>     Attrib V15    0.13174389910112183
#>     Attrib V16    0.1414431419124761
#>     Attrib V17    0.048715599112577376
#>     Attrib V18    -0.06602521961495124
#>     Attrib V19    -0.021859967211477895
#>     Attrib V2    0.2724537280819507
#>     Attrib V20    0.12229284623977298
#>     Attrib V21    0.09027078603896886
#>     Attrib V22    -0.008592200820314245
#>     Attrib V23    -0.028073252928365867
#>     Attrib V24    -0.0114246078982202
#>     Attrib V25    -0.11984543068238118
#>     Attrib V26    -0.1996476425058814
#>     Attrib V27    -0.2738451989142683
#>     Attrib V28    -0.1710429903377379
#>     Attrib V29    -0.15900817482741061
#>     Attrib V3    0.1018630247616036
#>     Attrib V30    0.051979992317961
#>     Attrib V31    -0.3865798467605961
#>     Attrib V32    0.007676547645950732
#>     Attrib V33    0.1621559457451341
#>     Attrib V34    -0.03328547250930033
#>     Attrib V35    -0.12278317719263991
#>     Attrib V36    -0.21454597226209807
#>     Attrib V37    -0.2511619641041086
#>     Attrib V38    -0.08424200799408738
#>     Attrib V39    0.23630058682697677
#>     Attrib V4    0.22807820293549474
#>     Attrib V40    0.03203930074766275
#>     Attrib V41    -0.065992410891968
#>     Attrib V42    0.12762188141278297
#>     Attrib V43    0.14878377535959436
#>     Attrib V44    0.25390381731173345
#>     Attrib V45    0.24211781115052255
#>     Attrib V46    0.0723582555310976
#>     Attrib V47    0.025562506964169424
#>     Attrib V48    0.07282599333317828
#>     Attrib V49    0.06952452018540053
#>     Attrib V5    0.012908860797091052
#>     Attrib V50    -0.1866733413372452
#>     Attrib V51    -0.015989781655029598
#>     Attrib V52    0.1367658032130456
#>     Attrib V53    0.1286947970408368
#>     Attrib V54    0.31729404838016023
#>     Attrib V55    0.1790673064177836
#>     Attrib V56    0.08789440581165843
#>     Attrib V57    0.08224455754697606
#>     Attrib V58    0.25877357112825705
#>     Attrib V59    0.3083594198918578
#>     Attrib V6    -0.12301167534989291
#>     Attrib V60    0.12142728254193674
#>     Attrib V7    -0.06662112243914212
#>     Attrib V8    0.12163888466079081
#>     Attrib V9    0.056118634188587514
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.032061710929107916
#>     Attrib V1    0.13027983086063358
#>     Attrib V10    -0.20928363044278
#>     Attrib V11    0.05427621030190556
#>     Attrib V12    -0.03151124038456377
#>     Attrib V13    -0.1215493361424397
#>     Attrib V14    -0.10612151189981925
#>     Attrib V15    0.10117469727734968
#>     Attrib V16    0.24495507656721677
#>     Attrib V17    0.12249325110765637
#>     Attrib V18    -0.05908811608746565
#>     Attrib V19    -0.0855362590160558
#>     Attrib V2    0.25384490016816585
#>     Attrib V20    0.2458325883589794
#>     Attrib V21    0.37378815574666524
#>     Attrib V22    0.11227581220842336
#>     Attrib V23    0.12368777370091594
#>     Attrib V24    0.0865244515853617
#>     Attrib V25    -0.23821879646929406
#>     Attrib V26    -0.32339869577777863
#>     Attrib V27    -0.43794669145850545
#>     Attrib V28    -0.16657997684172884
#>     Attrib V29    -0.06581797620588853
#>     Attrib V3    0.011416369927616209
#>     Attrib V30    0.12858867168589855
#>     Attrib V31    -0.6512390346264999
#>     Attrib V32    0.026023347038057473
#>     Attrib V33    0.3000829184334987
#>     Attrib V34    0.008674628762463658
#>     Attrib V35    -0.23947058851582953
#>     Attrib V36    -0.37268488834714286
#>     Attrib V37    -0.3779470718592049
#>     Attrib V38    -0.1030272892165113
#>     Attrib V39    0.3312065729111055
#>     Attrib V4    0.21618474289387188
#>     Attrib V40    0.01806262659879234
#>     Attrib V41    -0.12667456651660566
#>     Attrib V42    0.22754086339515653
#>     Attrib V43    0.23724715255372408
#>     Attrib V44    0.40998975052153813
#>     Attrib V45    0.45719106796006015
#>     Attrib V46    0.05168785357187323
#>     Attrib V47    -0.10271134480681725
#>     Attrib V48    0.1641664671546251
#>     Attrib V49    0.2058683233196878
#>     Attrib V5    -0.08959418467588884
#>     Attrib V50    -0.3811644681276463
#>     Attrib V51    -0.0038075873702949365
#>     Attrib V52    0.11266178370758517
#>     Attrib V53    0.17521916623823933
#>     Attrib V54    0.2773783595257284
#>     Attrib V55    -0.03276880293890837
#>     Attrib V56    0.09219686229770611
#>     Attrib V57    0.0089426511146946
#>     Attrib V58    0.22803617378584456
#>     Attrib V59    0.3172667093536148
#>     Attrib V6    -0.21951224094272254
#>     Attrib V60    0.056278302716030834
#>     Attrib V7    -0.08807552953720521
#>     Attrib V8    0.07077200206665968
#>     Attrib V9    0.16922722501968013
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.4150326537433717
#>     Attrib V1    0.1325913850797201
#>     Attrib V10    -0.09687233872887697
#>     Attrib V11    -0.6136841250204863
#>     Attrib V12    -0.6365624502762678
#>     Attrib V13    0.18342518786062384
#>     Attrib V14    0.7982424904057629
#>     Attrib V15    0.5879298014475112
#>     Attrib V16    -0.20408306122527237
#>     Attrib V17    0.06459481802805014
#>     Attrib V18    0.24422821050111085
#>     Attrib V19    0.4918053980732064
#>     Attrib V2    -0.2266416947022767
#>     Attrib V20    0.06857262879928226
#>     Attrib V21    -0.3676661292902304
#>     Attrib V22    -0.2798308133124773
#>     Attrib V23    -0.2475763563324805
#>     Attrib V24    -0.3836677952272658
#>     Attrib V25    0.17705222278137564
#>     Attrib V26    0.01951369244980222
#>     Attrib V27    0.16987504262871983
#>     Attrib V28    -0.2646332615856158
#>     Attrib V29    -0.3821545854163738
#>     Attrib V3    0.5233995160313164
#>     Attrib V30    -0.5634689039101987
#>     Attrib V31    1.3308790358093099
#>     Attrib V32    -0.14759855433316166
#>     Attrib V33    -0.30143536856660275
#>     Attrib V34    0.22270963302146668
#>     Attrib V35    0.5999931287500307
#>     Attrib V36    0.7879196084942596
#>     Attrib V37    0.5115979876685102
#>     Attrib V38    0.20758478216932633
#>     Attrib V39    -0.6771312509734937
#>     Attrib V4    -0.35211356963040874
#>     Attrib V40    0.009812577207062655
#>     Attrib V41    -0.23198881685832523
#>     Attrib V42    -0.36673204145496147
#>     Attrib V43    -0.5608941963793483
#>     Attrib V44    -0.8170709870824543
#>     Attrib V45    -0.9926619143730722
#>     Attrib V46    -0.5303469763851195
#>     Attrib V47    -0.2630493851584645
#>     Attrib V48    -0.8342678677355501
#>     Attrib V49    -0.5984264156825656
#>     Attrib V5    0.28800009245690666
#>     Attrib V50    0.966677286513827
#>     Attrib V51    -0.2806775773607808
#>     Attrib V52    -0.3892801388541767
#>     Attrib V53    -0.06662570384346986
#>     Attrib V54    -0.15880987275817107
#>     Attrib V55    1.024367337280235
#>     Attrib V56    0.40578952259168605
#>     Attrib V57    0.44448158593583426
#>     Attrib V58    -0.19636172904181645
#>     Attrib V59    -0.0446615482156195
#>     Attrib V6    0.10129135195315872
#>     Attrib V60    0.07264952544873744
#>     Attrib V7    0.4085731441370663
#>     Attrib V8    -0.1912112723998639
#>     Attrib V9    -0.6037526439162247
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.046274702088233644
#>     Attrib V1    0.493238162678902
#>     Attrib V10    -0.5239347540771053
#>     Attrib V11    -0.05823021781056236
#>     Attrib V12    -0.1585452075272612
#>     Attrib V13    -0.2823826540706468
#>     Attrib V14    -0.09657752180127332
#>     Attrib V15    0.3212607711934904
#>     Attrib V16    0.5511244396179511
#>     Attrib V17    0.18988347404506234
#>     Attrib V18    -0.13005606784258175
#>     Attrib V19    -0.13585150106601912
#>     Attrib V2    0.5466112690426426
#>     Attrib V20    0.5866827858086097
#>     Attrib V21    0.7652058240771202
#>     Attrib V22    0.37957983310022714
#>     Attrib V23    0.34607943859809914
#>     Attrib V24    0.33923839501558706
#>     Attrib V25    -0.26300086152589924
#>     Attrib V26    -0.6945800641961429
#>     Attrib V27    -0.847549674109204
#>     Attrib V28    -0.6455193718242374
#>     Attrib V29    -0.47327051893390903
#>     Attrib V3    0.16281421108909494
#>     Attrib V30    0.12648890379081124
#>     Attrib V31    -1.1188692575728676
#>     Attrib V32    0.09506470468479927
#>     Attrib V33    0.6754746176326799
#>     Attrib V34    0.05903962891070557
#>     Attrib V35    -0.485510674351072
#>     Attrib V36    -0.7525475341554296
#>     Attrib V37    -0.8148352532333891
#>     Attrib V38    -0.21160441863713922
#>     Attrib V39    0.47086694321614325
#>     Attrib V4    0.4828480250901228
#>     Attrib V40    0.08116947164219283
#>     Attrib V41    -0.06761471611810307
#>     Attrib V42    0.5321560197263738
#>     Attrib V43    0.4381669889007382
#>     Attrib V44    0.5952237529690753
#>     Attrib V45    0.5667539958330807
#>     Attrib V46    0.011785358529907683
#>     Attrib V47    -0.3148955326539459
#>     Attrib V48    0.008415135504516605
#>     Attrib V49    0.15356316981394832
#>     Attrib V5    -0.19299541500788633
#>     Attrib V50    -0.7038611010863293
#>     Attrib V51    -0.19867303235234907
#>     Attrib V52    0.1330443293514142
#>     Attrib V53    0.2828218273871058
#>     Attrib V54    0.7196278270977858
#>     Attrib V55    0.04156920690172419
#>     Attrib V56    0.38238501182602863
#>     Attrib V57    0.2013703777695141
#>     Attrib V58    0.5546990420774963
#>     Attrib V59    0.7031802128766043
#>     Attrib V6    -0.32515709745625015
#>     Attrib V60    0.1466335167281453
#>     Attrib V7    -0.0020584543570634304
#>     Attrib V8    0.3056186730196415
#>     Attrib V9    0.3135813072398277
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.047963378408686926
#>     Attrib V1    0.29280693356994564
#>     Attrib V10    -0.16470141186176704
#>     Attrib V11    0.5454428537547104
#>     Attrib V12    0.26247410432884133
#>     Attrib V13    -0.13213005871900882
#>     Attrib V14    -0.40230284490574986
#>     Attrib V15    0.027756628827964147
#>     Attrib V16    0.561358841249405
#>     Attrib V17    0.3774541015687579
#>     Attrib V18    -0.04618007624436176
#>     Attrib V19    -0.13389810087222653
#>     Attrib V2    0.3991130894955774
#>     Attrib V20    0.6157785071292182
#>     Attrib V21    1.00033571444949
#>     Attrib V22    0.8599447858998122
#>     Attrib V23    0.9491516462782837
#>     Attrib V24    0.6683806729646565
#>     Attrib V25    0.0737622509098918
#>     Attrib V26    -0.12449939564247704
#>     Attrib V27    -0.6531376091593397
#>     Attrib V28    -0.4371688325569004
#>     Attrib V29    -0.21328294352388955
#>     Attrib V3    -0.16442642055135356
#>     Attrib V30    0.552565692872484
#>     Attrib V31    -1.1423290770114563
#>     Attrib V32    0.3535312498111371
#>     Attrib V33    0.9001358942270229
#>     Attrib V34    0.12695767521234894
#>     Attrib V35    -0.690741382997923
#>     Attrib V36    -1.0699733651915762
#>     Attrib V37    -1.0599428374635915
#>     Attrib V38    -0.38565042474835115
#>     Attrib V39    0.5439104802067642
#>     Attrib V4    0.36336030188390267
#>     Attrib V40    0.05587153119474218
#>     Attrib V41    -0.00700476413717398
#>     Attrib V42    0.7209854327515057
#>     Attrib V43    0.7607170106116945
#>     Attrib V44    0.8979466978064057
#>     Attrib V45    0.8304505634596205
#>     Attrib V46    0.2116552787606233
#>     Attrib V47    -0.012625391616310051
#>     Attrib V48    0.45755826694647933
#>     Attrib V49    0.5243249067432583
#>     Attrib V5    -0.3507374521509453
#>     Attrib V50    -0.9110715159067336
#>     Attrib V51    0.1160767021734625
#>     Attrib V52    0.3538256607526425
#>     Attrib V53    0.10061057178158826
#>     Attrib V54    0.5658209635854671
#>     Attrib V55    -0.5283156903179143
#>     Attrib V56    0.34619119140314986
#>     Attrib V57    -0.15801439097037723
#>     Attrib V58    0.4827142191061188
#>     Attrib V59    0.5321930610054749
#>     Attrib V6    -0.47895560722096564
#>     Attrib V60    -0.048941375687899386
#>     Attrib V7    -0.3086604667050593
#>     Attrib V8    0.17979923021670166
#>     Attrib V9    0.6653135287857147
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.2581667681435434
#>     Attrib V1    -0.039730200681816534
#>     Attrib V10    0.016763970202546385
#>     Attrib V11    0.34101129599925617
#>     Attrib V12    0.2485630520261361
#>     Attrib V13    -0.10445404521010278
#>     Attrib V14    -0.4695960999922121
#>     Attrib V15    -0.2933472808656537
#>     Attrib V16    0.14829468287249117
#>     Attrib V17    -0.05390726935783203
#>     Attrib V18    -0.21255313904199002
#>     Attrib V19    -0.31967620214890574
#>     Attrib V2    0.21825290459094068
#>     Attrib V20    -0.12042982599055627
#>     Attrib V21    0.11511941291167113
#>     Attrib V22    -0.06651432507032806
#>     Attrib V23    -0.0360939690045888
#>     Attrib V24    0.10436919334308842
#>     Attrib V25    -0.16955189775664242
#>     Attrib V26    -0.0298838616530689
#>     Attrib V27    -0.029302585623689092
#>     Attrib V28    0.275515342703489
#>     Attrib V29    0.3356175797633505
#>     Attrib V3    -0.23139800794304594
#>     Attrib V30    0.394104964502538
#>     Attrib V31    -0.701481770196773
#>     Attrib V32    0.029742327330653767
#>     Attrib V33    0.13050446384691808
#>     Attrib V34    -0.1333259024199287
#>     Attrib V35    -0.29394619385708404
#>     Attrib V36    -0.40140323481121626
#>     Attrib V37    -0.308934753479673
#>     Attrib V38    -0.06485535143450716
#>     Attrib V39    0.37890137037191396
#>     Attrib V4    0.24639113144426236
#>     Attrib V40    -0.07666528063769003
#>     Attrib V41    -0.07698288788691028
#>     Attrib V42    0.07323541973667223
#>     Attrib V43    0.25763751417481634
#>     Attrib V44    0.48332397653027453
#>     Attrib V45    0.546482472893535
#>     Attrib V46    0.2873624106248904
#>     Attrib V47    0.11089132150823093
#>     Attrib V48    0.4237921725008276
#>     Attrib V49    0.25483881110033535
#>     Attrib V5    -0.17735185200657233
#>     Attrib V50    -0.5717803676402374
#>     Attrib V51    0.07608573878697696
#>     Attrib V52    0.17547208492252372
#>     Attrib V53    0.09385293167958307
#>     Attrib V54    0.15140123693187518
#>     Attrib V55    -0.36218402962736723
#>     Attrib V56    -0.2736157404516899
#>     Attrib V57    -0.19951812800733934
#>     Attrib V58    0.07346389641503712
#>     Attrib V59    0.12234014378541791
#>     Attrib V6    -0.13777493295654836
#>     Attrib V60    0.06877533968789698
#>     Attrib V7    -0.2100668253775144
#>     Attrib V8    0.08046519046461424
#>     Attrib V9    0.26530555936324135
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.24811949556215526
#>     Attrib V1    -0.6740327775108297
#>     Attrib V10    1.443833835315137
#>     Attrib V11    1.6321174453973522
#>     Attrib V12    1.7058148293219977
#>     Attrib V13    0.5594923509780264
#>     Attrib V14    -0.9588900007159087
#>     Attrib V15    -1.3438711173475637
#>     Attrib V16    -0.19100813245691778
#>     Attrib V17    -0.1394613901420761
#>     Attrib V18    0.2141923106397421
#>     Attrib V19    -0.23975226635143873
#>     Attrib V2    -0.07018278731359343
#>     Attrib V20    -0.4445096506715259
#>     Attrib V21    0.15154813229477407
#>     Attrib V22    0.35709416474154726
#>     Attrib V23    0.9140709552082612
#>     Attrib V24    1.0565787365699852
#>     Attrib V25    0.8143430203637353
#>     Attrib V26    1.2822436106175619
#>     Attrib V27    0.7082257144856623
#>     Attrib V28    0.8892215256194009
#>     Attrib V29    0.6919102427080128
#>     Attrib V3    -0.7896478810912224
#>     Attrib V30    0.34537577516757706
#>     Attrib V31    -1.0093783839790151
#>     Attrib V32    0.01918876918133911
#>     Attrib V33    -0.3479925199738013
#>     Attrib V34    -0.09602686537459092
#>     Attrib V35    -0.15356507279845436
#>     Attrib V36    -0.739680325910513
#>     Attrib V37    -0.6054091004587777
#>     Attrib V38    -0.6543930991892981
#>     Attrib V39    0.7322901579244385
#>     Attrib V4    0.37915783641369716
#>     Attrib V40    0.1933062934572222
#>     Attrib V41    0.9008427907701158
#>     Attrib V42    0.1862053703713912
#>     Attrib V43    0.5613705367849073
#>     Attrib V44    0.5101544839636403
#>     Attrib V45    0.652564963795606
#>     Attrib V46    0.9908423746650933
#>     Attrib V47    1.0161204768245748
#>     Attrib V48    1.4856097653168028
#>     Attrib V49    1.1077137198792457
#>     Attrib V5    0.005624198416834536
#>     Attrib V50    -0.3181338499434695
#>     Attrib V51    1.3942571208189538
#>     Attrib V52    0.9483153089095061
#>     Attrib V53    0.2990570017101059
#>     Attrib V54    -0.39058672040404196
#>     Attrib V55    -1.2036801670831672
#>     Attrib V56    -0.8317025482230842
#>     Attrib V57    -1.113558531581446
#>     Attrib V58    0.07051891576551018
#>     Attrib V59    -0.20399228032055372
#>     Attrib V6    0.7554222561740296
#>     Attrib V60    -0.18177148288468006
#>     Attrib V7    -0.2583146043947234
#>     Attrib V8    0.5020988089811067
#>     Attrib V9    1.0849372466501563
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.37154031389732645
#>     Attrib V1    0.12358147461321839
#>     Attrib V10    -0.08379287086560264
#>     Attrib V11    -0.48458460017313343
#>     Attrib V12    -0.4192614003464664
#>     Attrib V13    0.18860408585224056
#>     Attrib V14    0.6611014653240253
#>     Attrib V15    0.39102864003128857
#>     Attrib V16    -0.11732995394082367
#>     Attrib V17    0.029166526444030186
#>     Attrib V18    0.28459685880966956
#>     Attrib V19    0.44697124679574884
#>     Attrib V2    -0.2114410163177363
#>     Attrib V20    0.1429294307365539
#>     Attrib V21    -0.20974454579790652
#>     Attrib V22    -0.11511550651581846
#>     Attrib V23    -0.0840479913976938
#>     Attrib V24    -0.22794743588160765
#>     Attrib V25    0.17303073613090889
#>     Attrib V26    0.09463960896957305
#>     Attrib V27    0.13051896890626638
#>     Attrib V28    -0.21402990992276832
#>     Attrib V29    -0.35713245555742873
#>     Attrib V3    0.35433385415669105
#>     Attrib V30    -0.4593704542259831
#>     Attrib V31    0.9777616877781907
#>     Attrib V32    -0.18200345364864148
#>     Attrib V33    -0.20370177030661257
#>     Attrib V34    0.17181047965069374
#>     Attrib V35    0.44692647210522624
#>     Attrib V36    0.601788618542089
#>     Attrib V37    0.4297156153353321
#>     Attrib V38    0.17922299187819635
#>     Attrib V39    -0.5308432954489204
#>     Attrib V4    -0.25780794272201135
#>     Attrib V40    0.05498536110169752
#>     Attrib V41    -0.07534237403459879
#>     Attrib V42    -0.27105670300396817
#>     Attrib V43    -0.4280984787858051
#>     Attrib V44    -0.6419804987735177
#>     Attrib V45    -0.7167103564975645
#>     Attrib V46    -0.39608989260133837
#>     Attrib V47    -0.1800565963646825
#>     Attrib V48    -0.6080419597860403
#>     Attrib V49    -0.4225864675875227
#>     Attrib V5    0.22097605935337777
#>     Attrib V50    0.7775541276359084
#>     Attrib V51    -0.17497510639999908
#>     Attrib V52    -0.2651980813185633
#>     Attrib V53    0.03672561343061139
#>     Attrib V54    -0.09905436937566783
#>     Attrib V55    0.6569369267624315
#>     Attrib V56    0.2767846863969155
#>     Attrib V57    0.31175679546648116
#>     Attrib V58    -0.15539158663203181
#>     Attrib V59    -0.09304171834925727
#>     Attrib V6    0.1430549126398921
#>     Attrib V60    0.017885005089924688
#>     Attrib V7    0.26679230443352137
#>     Attrib V8    -0.14734817286520538
#>     Attrib V9    -0.4578495729127552
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.06809831021689287
#>     Attrib V1    0.15567243255341318
#>     Attrib V10    -0.250889453773415
#>     Attrib V11    0.08119985041884331
#>     Attrib V12    0.00795302878377119
#>     Attrib V13    -0.23424870536796902
#>     Attrib V14    -0.2116935556168396
#>     Attrib V15    0.04817929526319418
#>     Attrib V16    0.30705191229926554
#>     Attrib V17    0.17806842410612309
#>     Attrib V18    -0.04090529796305526
#>     Attrib V19    -0.11532625000792608
#>     Attrib V2    0.2700475972838774
#>     Attrib V20    0.3114041253507201
#>     Attrib V21    0.3678597385328175
#>     Attrib V22    0.14258654556066125
#>     Attrib V23    0.13971770699472294
#>     Attrib V24    0.11279479685534018
#>     Attrib V25    -0.2065192415385839
#>     Attrib V26    -0.4038139536527443
#>     Attrib V27    -0.4791535032979942
#>     Attrib V28    -0.2460802463341577
#>     Attrib V29    -0.18411048024199345
#>     Attrib V3    -0.07597549983557415
#>     Attrib V30    0.1415829257452507
#>     Attrib V31    -0.8116521810166947
#>     Attrib V32    0.03523879678639927
#>     Attrib V33    0.3572278804781032
#>     Attrib V34    0.06891997510389519
#>     Attrib V35    -0.2205191949922353
#>     Attrib V36    -0.3754484876553446
#>     Attrib V37    -0.4413394363762748
#>     Attrib V38    -0.021956334460949856
#>     Attrib V39    0.3832531278460469
#>     Attrib V4    0.2305374215894484
#>     Attrib V40    0.012261367321059528
#>     Attrib V41    -0.17842503744559643
#>     Attrib V42    0.22533534566517335
#>     Attrib V43    0.2997060615576538
#>     Attrib V44    0.5029870078984253
#>     Attrib V45    0.5157707041238465
#>     Attrib V46    0.07608142122654343
#>     Attrib V47    -0.07611052083288962
#>     Attrib V48    0.18736724697073617
#>     Attrib V49    0.17468463017246785
#>     Attrib V5    -0.13351018001974482
#>     Attrib V50    -0.46335345774812636
#>     Attrib V51    -0.003914551709058405
#>     Attrib V52    0.08720464576037963
#>     Attrib V53    0.12452286326941778
#>     Attrib V54    0.4490149041306396
#>     Attrib V55    -0.031669789985146024
#>     Attrib V56    0.11056208706221432
#>     Attrib V57    0.0024536103923452953
#>     Attrib V58    0.2979742275890408
#>     Attrib V59    0.3167625823301756
#>     Attrib V6    -0.23304577729255016
#>     Attrib V60    0.06465386848960374
#>     Attrib V7    -0.1458218214714786
#>     Attrib V8    0.13283423698020938
#>     Attrib V9    0.19347610102592427
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.08602194506758146
#>     Attrib V1    0.2640380442435713
#>     Attrib V10    -0.3940544542201129
#>     Attrib V11    0.03230335412755532
#>     Attrib V12    -0.15846658882349401
#>     Attrib V13    -0.20396568645218974
#>     Attrib V14    -0.07501807124068573
#>     Attrib V15    0.19104636167740474
#>     Attrib V16    0.41231911942551175
#>     Attrib V17    0.17627833001319354
#>     Attrib V18    -0.07512137045184904
#>     Attrib V19    -0.015609837096703749
#>     Attrib V2    0.44205040220008845
#>     Attrib V20    0.4054229290752134
#>     Attrib V21    0.5068356654118059
#>     Attrib V22    0.273224351405126
#>     Attrib V23    0.2196835742493229
#>     Attrib V24    0.1345684070219744
#>     Attrib V25    -0.3266465366112233
#>     Attrib V26    -0.5540507420017797
#>     Attrib V27    -0.5932864266562435
#>     Attrib V28    -0.39695586706771474
#>     Attrib V29    -0.22812949601573457
#>     Attrib V3    0.026779361732707112
#>     Attrib V30    0.09564218754107087
#>     Attrib V31    -0.900931022769484
#>     Attrib V32    -0.0042414081597362515
#>     Attrib V33    0.45644177591831364
#>     Attrib V34    0.05189231255760765
#>     Attrib V35    -0.32556568210169223
#>     Attrib V36    -0.4672621485244732
#>     Attrib V37    -0.5313604681812939
#>     Attrib V38    -0.05512523025394592
#>     Attrib V39    0.3887881390309507
#>     Attrib V4    0.3566161586773401
#>     Attrib V40    0.08885976346905987
#>     Attrib V41    -0.14691580207819238
#>     Attrib V42    0.26677553063152465
#>     Attrib V43    0.3714229978025668
#>     Attrib V44    0.4625691989568031
#>     Attrib V45    0.4840483095683027
#>     Attrib V46    0.07971025143453299
#>     Attrib V47    -0.21062181557188284
#>     Attrib V48    0.0810818837715666
#>     Attrib V49    0.11053458600336996
#>     Attrib V5    -0.14940986355128738
#>     Attrib V50    -0.5552264596713478
#>     Attrib V51    -0.11867673295885582
#>     Attrib V52    0.162668619162206
#>     Attrib V53    0.2414332015301716
#>     Attrib V54    0.5514341105557736
#>     Attrib V55    0.04412142375848401
#>     Attrib V56    0.23967869805462522
#>     Attrib V57    0.1425811286319269
#>     Attrib V58    0.40188327372778443
#>     Attrib V59    0.5207225392520638
#>     Attrib V6    -0.30012768003532636
#>     Attrib V60    0.11407200357863925
#>     Attrib V7    -0.01939502943451436
#>     Attrib V8    0.18887472373891231
#>     Attrib V9    0.1857102353870949
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.044098935218389854
#>     Attrib V1    0.3418777158122846
#>     Attrib V10    -0.3800081568413634
#>     Attrib V11    0.013159237640251311
#>     Attrib V12    -0.11049056758496724
#>     Attrib V13    -0.1454467280693351
#>     Attrib V14    -0.11514322037952668
#>     Attrib V15    0.1839995895061914
#>     Attrib V16    0.37915036742727554
#>     Attrib V17    0.21879976291888956
#>     Attrib V18    -0.07029982182743247
#>     Attrib V19    -0.0864377643435604
#>     Attrib V2    0.41994639250776616
#>     Attrib V20    0.4937443006526272
#>     Attrib V21    0.6426875382788375
#>     Attrib V22    0.3457529827777729
#>     Attrib V23    0.382830985124739
#>     Attrib V24    0.3065880892581314
#>     Attrib V25    -0.17264519436925702
#>     Attrib V26    -0.5595691429570578
#>     Attrib V27    -0.664107013813888
#>     Attrib V28    -0.48428253592657977
#>     Attrib V29    -0.30281417528202953
#>     Attrib V3    0.129699370178607
#>     Attrib V30    0.1458631890583364
#>     Attrib V31    -0.9867393030719248
#>     Attrib V32    0.07991233295003833
#>     Attrib V33    0.5084559879963422
#>     Attrib V34    0.06975749964375604
#>     Attrib V35    -0.42053688058794536
#>     Attrib V36    -0.5894882178902537
#>     Attrib V37    -0.6324719095609116
#>     Attrib V38    -0.1469052318684126
#>     Attrib V39    0.4702259122397973
#>     Attrib V4    0.3879430160758854
#>     Attrib V40    0.08205154452174972
#>     Attrib V41    -0.0871186022637072
#>     Attrib V42    0.4029834282431342
#>     Attrib V43    0.3574265498539999
#>     Attrib V44    0.5462565090515699
#>     Attrib V45    0.4713511106230878
#>     Attrib V46    0.05247547156749485
#>     Attrib V47    -0.16565570220710393
#>     Attrib V48    0.08664578798838991
#>     Attrib V49    0.23520700032869538
#>     Attrib V5    -0.15887980055666662
#>     Attrib V50    -0.6040953084192409
#>     Attrib V51    -0.11744873458947726
#>     Attrib V52    0.13660887742461783
#>     Attrib V53    0.22673391645811417
#>     Attrib V54    0.5539864282981248
#>     Attrib V55    -0.02680230327942628
#>     Attrib V56    0.27133912140230865
#>     Attrib V57    0.1193272041243529
#>     Attrib V58    0.41115711540825256
#>     Attrib V59    0.5833174414208355
#>     Attrib V6    -0.29308145828076343
#>     Attrib V60    0.14730344700528866
#>     Attrib V7    -0.015411695318543821
#>     Attrib V8    0.1579584819662738
#>     Attrib V9    0.2384224885149362
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.031784649471915546
#>     Attrib V1    0.3058378266376673
#>     Attrib V10    -0.2670161663171459
#>     Attrib V11    0.08788766673670598
#>     Attrib V12    -0.03182952916184567
#>     Attrib V13    -0.18644642939776207
#>     Attrib V14    -0.1373003808840199
#>     Attrib V15    0.17888280864362732
#>     Attrib V16    0.27705946830397604
#>     Attrib V17    0.1468923077414004
#>     Attrib V18    -0.050431810722276156
#>     Attrib V19    -0.09384017409008191
#>     Attrib V2    0.36406427402666364
#>     Attrib V20    0.2881660971462645
#>     Attrib V21    0.3260792185198209
#>     Attrib V22    0.10569780576063419
#>     Attrib V23    0.1228529682428467
#>     Attrib V24    0.06496264844576438
#>     Attrib V25    -0.22307414814097776
#>     Attrib V26    -0.3904495965914998
#>     Attrib V27    -0.5655262480987536
#>     Attrib V28    -0.4400884847788995
#>     Attrib V29    -0.33400843660943325
#>     Attrib V3    0.0019426812831310216
#>     Attrib V30    0.03996616242440235
#>     Attrib V31    -0.6870900782004693
#>     Attrib V32    0.028520172208257453
#>     Attrib V33    0.3740317728656279
#>     Attrib V34    0.033115823071807174
#>     Attrib V35    -0.2166316045640481
#>     Attrib V36    -0.39722460034007634
#>     Attrib V37    -0.40230214526108915
#>     Attrib V38    -0.09830206178648775
#>     Attrib V39    0.35857926846420707
#>     Attrib V4    0.26735294569453083
#>     Attrib V40    0.01970029080355728
#>     Attrib V41    -0.1767454555016114
#>     Attrib V42    0.1548152889998043
#>     Attrib V43    0.22297447786859848
#>     Attrib V44    0.41861734112352167
#>     Attrib V45    0.33418481747262174
#>     Attrib V46    0.054013726480930786
#>     Attrib V47    -0.15094186860393546
#>     Attrib V48    0.11040283447536582
#>     Attrib V49    0.15092105633487904
#>     Attrib V5    -0.1347952852822548
#>     Attrib V50    -0.4203476279610727
#>     Attrib V51    -0.11795328107084863
#>     Attrib V52    0.09616442526108678
#>     Attrib V53    0.1430188791209496
#>     Attrib V54    0.516729696613257
#>     Attrib V55    0.13590912005455064
#>     Attrib V56    0.17177573940690274
#>     Attrib V57    0.0881122088256758
#>     Attrib V58    0.33978005275918766
#>     Attrib V59    0.3971458290642049
#>     Attrib V6    -0.22874084158114885
#>     Attrib V60    0.17308261003942418
#>     Attrib V7    -0.06019084398860184
#>     Attrib V8    0.076141302852141
#>     Attrib V9    0.13579705661161587
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.4580506779916184
#>     Attrib V1    0.012997042239288027
#>     Attrib V10    -0.08532289615655227
#>     Attrib V11    -0.6301206593556241
#>     Attrib V12    -0.49195970410587364
#>     Attrib V13    0.17505291569792686
#>     Attrib V14    0.7049615276841896
#>     Attrib V15    0.4986065530816012
#>     Attrib V16    -0.15532324731653804
#>     Attrib V17    0.08054004081027581
#>     Attrib V18    0.27675303994750117
#>     Attrib V19    0.5657296389863342
#>     Attrib V2    -0.30943680828751385
#>     Attrib V20    0.12434000361788278
#>     Attrib V21    -0.35388863602940074
#>     Attrib V22    -0.12762700221421147
#>     Attrib V23    -0.1715706344655829
#>     Attrib V24    -0.27619415921003193
#>     Attrib V25    0.20680731569866556
#>     Attrib V26    0.2012838774591271
#>     Attrib V27    0.23058089993413491
#>     Attrib V28    -0.12434664454139405
#>     Attrib V29    -0.2399066315070499
#>     Attrib V3    0.45695644665562785
#>     Attrib V30    -0.521254872778719
#>     Attrib V31    1.1764695707862136
#>     Attrib V32    -0.15987822090826134
#>     Attrib V33    -0.3038580690169355
#>     Attrib V34    0.2792705816022588
#>     Attrib V35    0.6463808149838122
#>     Attrib V36    0.8734438869405512
#>     Attrib V37    0.6425516426963188
#>     Attrib V38    0.23130114670234014
#>     Attrib V39    -0.5997537243982777
#>     Attrib V4    -0.28289768761924494
#>     Attrib V40    0.018917041818287822
#>     Attrib V41    -0.16690923082561535
#>     Attrib V42    -0.41019049764101795
#>     Attrib V43    -0.5346046345398194
#>     Attrib V44    -0.7897746377655459
#>     Attrib V45    -0.7984483706313541
#>     Attrib V46    -0.33657132289031017
#>     Attrib V47    -0.16482626936374387
#>     Attrib V48    -0.721727354593554
#>     Attrib V49    -0.5045062528467067
#>     Attrib V5    0.3007075092312022
#>     Attrib V50    0.949620160729214
#>     Attrib V51    -0.1856777649229155
#>     Attrib V52    -0.3169548920168932
#>     Attrib V53    -0.007249167043494178
#>     Attrib V54    -0.183143541179036
#>     Attrib V55    0.8368814398807105
#>     Attrib V56    0.35200909902390415
#>     Attrib V57    0.33402881640192145
#>     Attrib V58    -0.19080175104725852
#>     Attrib V59    -0.11048508173522995
#>     Attrib V6    0.13692119952941836
#>     Attrib V60    0.04207957501390421
#>     Attrib V7    0.2928694978422499
#>     Attrib V8    -0.19356727001796986
#>     Attrib V9    -0.5007957151664361
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.17950776132371277
#>     Attrib V1    -0.038218001855115535
#>     Attrib V10    0.05645315696740081
#>     Attrib V11    -0.10142052677400336
#>     Attrib V12    -0.10668274113540398
#>     Attrib V13    0.04898734409459529
#>     Attrib V14    0.10677581647023011
#>     Attrib V15    0.06926348069064892
#>     Attrib V16    0.0643489924105958
#>     Attrib V17    0.15691948452421664
#>     Attrib V18    0.21427995273252196
#>     Attrib V19    0.15252006937284895
#>     Attrib V2    -0.11710806822024251
#>     Attrib V20    -0.055028785432145975
#>     Attrib V21    -0.10654988846788414
#>     Attrib V22    0.01000679112435486
#>     Attrib V23    -0.027308682079958627
#>     Attrib V24    -0.05372676876346284
#>     Attrib V25    0.019487914068049984
#>     Attrib V26    -0.06868707985633306
#>     Attrib V27    -0.058936360001894075
#>     Attrib V28    -0.10214805243060975
#>     Attrib V29    -0.1325783200022472
#>     Attrib V3    0.10101225728273748
#>     Attrib V30    -0.18390961254830102
#>     Attrib V31    0.24308300997232038
#>     Attrib V32    0.04651958619455834
#>     Attrib V33    -0.047191698782556454
#>     Attrib V34    0.05420980604967771
#>     Attrib V35    0.1176884525482889
#>     Attrib V36    0.2370597917422293
#>     Attrib V37    0.2711567323722597
#>     Attrib V38    0.06774880659301981
#>     Attrib V39    -0.12377223440153658
#>     Attrib V4    -0.021918961648119514
#>     Attrib V40    0.03160563132384848
#>     Attrib V41    0.0819697457494661
#>     Attrib V42    -0.004163075941201509
#>     Attrib V43    -0.12481500425439593
#>     Attrib V44    -0.22175674647847218
#>     Attrib V45    -0.21927478988465837
#>     Attrib V46    -0.05667196481655281
#>     Attrib V47    0.01097081588852621
#>     Attrib V48    -0.11280361974763205
#>     Attrib V49    -0.12002461360499302
#>     Attrib V5    0.11933076925116978
#>     Attrib V50    0.24682830195620234
#>     Attrib V51    0.08284438548006937
#>     Attrib V52    0.018850421421804094
#>     Attrib V53    0.005421394430905813
#>     Attrib V54    -0.08339253102165223
#>     Attrib V55    0.13476292274075433
#>     Attrib V56    0.0722388340506551
#>     Attrib V57    0.1444854268571784
#>     Attrib V58    0.05329863009614493
#>     Attrib V59    -0.07903443643745496
#>     Attrib V6    0.14398263308236992
#>     Attrib V60    0.03854099618267647
#>     Attrib V7    0.08078677044824294
#>     Attrib V8    0.013949256825047331
#>     Attrib V9    -0.011619474359993174
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.007273672551623922
#>     Attrib V1    0.16676996015829454
#>     Attrib V10    -0.06759169286217573
#>     Attrib V11    0.11321205255610112
#>     Attrib V12    5.991230866317826E-4
#>     Attrib V13    -0.09563388199360837
#>     Attrib V14    -0.08371932795597754
#>     Attrib V15    0.08271787087460279
#>     Attrib V16    0.13562869664622648
#>     Attrib V17    0.038970690165622206
#>     Attrib V18    -0.05837179102950788
#>     Attrib V19    -0.06732309973752368
#>     Attrib V2    0.27437753582308494
#>     Attrib V20    0.04415958857862123
#>     Attrib V21    0.060610482418175196
#>     Attrib V22    -0.00627754457279327
#>     Attrib V23    -0.08411633786145113
#>     Attrib V24    -0.006205260704036729
#>     Attrib V25    -0.16740863927878613
#>     Attrib V26    -0.1709551836192072
#>     Attrib V27    -0.20704601381074414
#>     Attrib V28    -0.1472947126716048
#>     Attrib V29    -0.09596544492787555
#>     Attrib V3    0.03867423292591041
#>     Attrib V30    0.06243388952830217
#>     Attrib V31    -0.3271719798958611
#>     Attrib V32    -0.04154241459446692
#>     Attrib V33    0.1716717939862504
#>     Attrib V34    -0.013033397610480184
#>     Attrib V35    -0.06290144998894485
#>     Attrib V36    -0.19693025200033237
#>     Attrib V37    -0.22545126610605848
#>     Attrib V38    0.01681563168107142
#>     Attrib V39    0.24018113437034297
#>     Attrib V4    0.19950732287860956
#>     Attrib V40    -0.03291493465046809
#>     Attrib V41    -0.07810333925799305
#>     Attrib V42    0.07977723079059311
#>     Attrib V43    0.19513187782430907
#>     Attrib V44    0.26229136629255545
#>     Attrib V45    0.3001316165793694
#>     Attrib V46    0.0805239163129286
#>     Attrib V47    -0.019450981297638507
#>     Attrib V48    0.17958364798246065
#>     Attrib V49    0.06367962513368519
#>     Attrib V5    0.0038407723920178124
#>     Attrib V50    -0.16684153605635596
#>     Attrib V51    0.03840894771503577
#>     Attrib V52    0.07167531464604306
#>     Attrib V53    0.09270860459378748
#>     Attrib V54    0.2235087588837146
#>     Attrib V55    0.1548878475304409
#>     Attrib V56    0.07752304798979676
#>     Attrib V57    0.07964848544883527
#>     Attrib V58    0.15705447875166212
#>     Attrib V59    0.2145827777834775
#>     Attrib V6    -0.08355039142615031
#>     Attrib V60    0.13456814727455874
#>     Attrib V7    -0.10119736563270962
#>     Attrib V8    0.09774041497604596
#>     Attrib V9    0.09275758923183033
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.08402905488059977
#>     Attrib V1    0.17629699802430032
#>     Attrib V10    -0.1105683903729999
#>     Attrib V11    0.07665370148916378
#>     Attrib V12    0.0012477240871181774
#>     Attrib V13    -0.0565478287203006
#>     Attrib V14    -0.042962408106185124
#>     Attrib V15    0.04115338037088151
#>     Attrib V16    0.16951888009364618
#>     Attrib V17    0.04136200454981542
#>     Attrib V18    0.029174605001315777
#>     Attrib V19    -0.07964934253773825
#>     Attrib V2    0.2449313802010309
#>     Attrib V20    0.1426104925924621
#>     Attrib V21    0.1720257359779525
#>     Attrib V22    -0.0036666761498607347
#>     Attrib V23    -0.009907513865791511
#>     Attrib V24    -0.005366378759070362
#>     Attrib V25    -0.09428199956651098
#>     Attrib V26    -0.14292049247483166
#>     Attrib V27    -0.23076656549064398
#>     Attrib V28    -0.17467961427800963
#>     Attrib V29    -0.10849947465546629
#>     Attrib V3    0.11157504207452655
#>     Attrib V30    -0.01591796529520386
#>     Attrib V31    -0.4187954461299445
#>     Attrib V32    -0.029802854037979304
#>     Attrib V33    0.14605066634901187
#>     Attrib V34    0.05956937746766807
#>     Attrib V35    -0.11149476198846178
#>     Attrib V36    -0.11189598229566974
#>     Attrib V37    -0.2158132116523165
#>     Attrib V38    -0.029269351794896564
#>     Attrib V39    0.26898513521663264
#>     Attrib V4    0.1733861427453187
#>     Attrib V40    -0.0037477939654199503
#>     Attrib V41    -0.12521126887702128
#>     Attrib V42    0.10203336609705493
#>     Attrib V43    0.1501829339811152
#>     Attrib V44    0.2722906671140149
#>     Attrib V45    0.21391230738593245
#>     Attrib V46    0.07284289020447482
#>     Attrib V47    0.04275381003006455
#>     Attrib V48    0.11513179244062902
#>     Attrib V49    0.11303115612630664
#>     Attrib V5    0.007749600804819212
#>     Attrib V50    -0.21750684620035485
#>     Attrib V51    0.06657306777370013
#>     Attrib V52    0.08654705292872904
#>     Attrib V53    0.15194494417609494
#>     Attrib V54    0.2360281249577377
#>     Attrib V55    0.14646610607845167
#>     Attrib V56    0.1071979107997699
#>     Attrib V57    0.007159995054489593
#>     Attrib V58    0.19977877881029443
#>     Attrib V59    0.29275748733562534
#>     Attrib V6    -0.1205928238174011
#>     Attrib V60    0.1642162311171652
#>     Attrib V7    -0.0022275618931903445
#>     Attrib V8    0.10063616205468491
#>     Attrib V9    0.09384849151873279
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.15298041595501694
#>     Attrib V1    0.28667906527387904
#>     Attrib V10    -0.30693141854764816
#>     Attrib V11    0.14836291349118924
#>     Attrib V12    0.06452439890565774
#>     Attrib V13    -0.2130424739858824
#>     Attrib V14    -0.2500922797305977
#>     Attrib V15    0.1543755445162723
#>     Attrib V16    0.407221849267394
#>     Attrib V17    0.17527155371072833
#>     Attrib V18    -0.13378914296957536
#>     Attrib V19    -0.12109544113086754
#>     Attrib V2    0.46445647420697544
#>     Attrib V20    0.4243232155962087
#>     Attrib V21    0.6229060785257757
#>     Attrib V22    0.42031086776115817
#>     Attrib V23    0.40611559515637086
#>     Attrib V24    0.39440328054271706
#>     Attrib V25    -0.14471432344994314
#>     Attrib V26    -0.49158588451869867
#>     Attrib V27    -0.7009996682845026
#>     Attrib V28    -0.4145484172111668
#>     Attrib V29    -0.329100413790625
#>     Attrib V3    -0.06980074506653183
#>     Attrib V30    0.22267944950274288
#>     Attrib V31    -1.0366083563368242
#>     Attrib V32    0.13837727417637002
#>     Attrib V33    0.6538325555684905
#>     Attrib V34    0.06997801597003185
#>     Attrib V35    -0.4124946525617962
#>     Attrib V36    -0.6769195321700144
#>     Attrib V37    -0.7969939322342383
#>     Attrib V38    -0.24404451615658107
#>     Attrib V39    0.47902288418746214
#>     Attrib V4    0.42960253204849713
#>     Attrib V40    0.0811458142681867
#>     Attrib V41    -0.073179779598678
#>     Attrib V42    0.4618702531732542
#>     Attrib V43    0.4347425468927208
#>     Attrib V44    0.589388192415802
#>     Attrib V45    0.6782612147875837
#>     Attrib V46    0.0804289202043841
#>     Attrib V47    -0.2440993118429762
#>     Attrib V48    0.2030540203444156
#>     Attrib V49    0.38644040514731465
#>     Attrib V5    -0.23706390755977969
#>     Attrib V50    -0.7835195996020428
#>     Attrib V51    -0.12389416760503263
#>     Attrib V52    0.2400751673379981
#>     Attrib V53    0.22135934282034314
#>     Attrib V54    0.6189561683245058
#>     Attrib V55    -0.10508735612693176
#>     Attrib V56    0.12388703015540538
#>     Attrib V57    -0.03163096004680125
#>     Attrib V58    0.46996451917534315
#>     Attrib V59    0.533064987029166
#>     Attrib V6    -0.3558241445980551
#>     Attrib V60    0.09190742546901205
#>     Attrib V7    -0.09230412221682131
#>     Attrib V8    0.22877007675016975
#>     Attrib V9    0.344963312191501
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.043310666128713725
#>     Attrib V1    0.46264989237246146
#>     Attrib V10    -0.3646644551673767
#>     Attrib V11    0.051046173094249254
#>     Attrib V12    -0.062621656983692
#>     Attrib V13    -0.2248428388455786
#>     Attrib V14    -0.12433813838838596
#>     Attrib V15    0.2353603232529211
#>     Attrib V16    0.4357142957024583
#>     Attrib V17    0.2076351046966732
#>     Attrib V18    -0.10874284352886325
#>     Attrib V19    -0.07658709939162966
#>     Attrib V2    0.5029564428524675
#>     Attrib V20    0.5760592833739843
#>     Attrib V21    0.799255852513053
#>     Attrib V22    0.5027320360022622
#>     Attrib V23    0.48862473395585343
#>     Attrib V24    0.36753269548304035
#>     Attrib V25    -0.2375464999124471
#>     Attrib V26    -0.544527660920815
#>     Attrib V27    -0.7202988574409083
#>     Attrib V28    -0.4948469749731477
#>     Attrib V29    -0.25755933622179106
#>     Attrib V3    0.03871541239795893
#>     Attrib V30    0.2738367194344374
#>     Attrib V31    -1.0941280306195929
#>     Attrib V32    0.03914017464722056
#>     Attrib V33    0.6056763475606946
#>     Attrib V34    0.007391560260455165
#>     Attrib V35    -0.4894425848404118
#>     Attrib V36    -0.6350391148938078
#>     Attrib V37    -0.7255613000559524
#>     Attrib V38    -0.15369423837719196
#>     Attrib V39    0.4700993591400035
#>     Attrib V4    0.42833894604429734
#>     Attrib V40    0.0599546648096928
#>     Attrib V41    -0.09349272219873637
#>     Attrib V42    0.4512662046808788
#>     Attrib V43    0.5170028534679464
#>     Attrib V44    0.7102506153471292
#>     Attrib V45    0.6048787085073551
#>     Attrib V46    -0.0070200960354573705
#>     Attrib V47    -0.2914185105100901
#>     Attrib V48    0.12139077035264946
#>     Attrib V49    0.22351523192124936
#>     Attrib V5    -0.16958946795230753
#>     Attrib V50    -0.7392754801653314
#>     Attrib V51    -0.05422018918615493
#>     Attrib V52    0.23172693340676725
#>     Attrib V53    0.21942057984591568
#>     Attrib V54    0.6930067236334922
#>     Attrib V55    -0.054101226460092064
#>     Attrib V56    0.3094153937360355
#>     Attrib V57    0.02671993314396488
#>     Attrib V58    0.47419220692868624
#>     Attrib V59    0.633522694161806
#>     Attrib V6    -0.37886132310003534
#>     Attrib V60    0.13002947300302442
#>     Attrib V7    -0.04192933157650745
#>     Attrib V8    0.16562119176829393
#>     Attrib V9    0.33447816470710834
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.38167418387777835
#>     Attrib V1    0.1490719416494661
#>     Attrib V10    -0.15940165860900943
#>     Attrib V11    -0.6880673785856795
#>     Attrib V12    -0.5850594576198085
#>     Attrib V13    0.19540974871853925
#>     Attrib V14    0.7852096343079539
#>     Attrib V15    0.5455541397218806
#>     Attrib V16    -0.18097254669692028
#>     Attrib V17    0.06683249379829272
#>     Attrib V18    0.29337059762983186
#>     Attrib V19    0.5231435580418429
#>     Attrib V2    -0.2576386720978328
#>     Attrib V20    0.14071757996537787
#>     Attrib V21    -0.316868980561295
#>     Attrib V22    -0.280245652704057
#>     Attrib V23    -0.26022135836936405
#>     Attrib V24    -0.296747032498739
#>     Attrib V25    0.20013693794475787
#>     Attrib V26    0.0912418009210073
#>     Attrib V27    0.19981544750180644
#>     Attrib V28    -0.2212668390391171
#>     Attrib V29    -0.3369560341324412
#>     Attrib V3    0.5012642617660934
#>     Attrib V30    -0.5687832170975347
#>     Attrib V31    1.323058804803883
#>     Attrib V32    -0.20438932835890689
#>     Attrib V33    -0.3265708276596771
#>     Attrib V34    0.2375839576002125
#>     Attrib V35    0.5796211230773475
#>     Attrib V36    0.7740565596904588
#>     Attrib V37    0.5606157714188589
#>     Attrib V38    0.19565228263365794
#>     Attrib V39    -0.6387337520023109
#>     Attrib V4    -0.23545213617014052
#>     Attrib V40    0.06630101378577394
#>     Attrib V41    -0.13617936085200597
#>     Attrib V42    -0.4311127858773243
#>     Attrib V43    -0.5439557689622084
#>     Attrib V44    -0.8142600393836444
#>     Attrib V45    -0.9628062810485218
#>     Attrib V46    -0.4867009581936389
#>     Attrib V47    -0.2726651681832412
#>     Attrib V48    -0.8165135519843101
#>     Attrib V49    -0.5988062399962695
#>     Attrib V5    0.31501168099076854
#>     Attrib V50    0.9457471850822758
#>     Attrib V51    -0.27426216155413446
#>     Attrib V52    -0.3158326219666348
#>     Attrib V53    0.01587656811676129
#>     Attrib V54    -0.17548390449573747
#>     Attrib V55    0.9172412448814409
#>     Attrib V56    0.3432961803158436
#>     Attrib V57    0.5117786458676082
#>     Attrib V58    -0.20324591014991553
#>     Attrib V59    -0.018057638414099884
#>     Attrib V6    0.1132716248234153
#>     Attrib V60    0.10374218085562965
#>     Attrib V7    0.4033466019152756
#>     Attrib V8    -0.2628217940402157
#>     Attrib V9    -0.5611253987332155
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.11288986394693266
#>     Attrib V1    0.16438453745555995
#>     Attrib V10    -0.0209878776242028
#>     Attrib V11    0.09639578717698113
#>     Attrib V12    0.04612262691777325
#>     Attrib V13    -0.026312806212672887
#>     Attrib V14    0.015212377804706152
#>     Attrib V15    -0.007740968050686189
#>     Attrib V16    0.12743381184455388
#>     Attrib V17    0.03505678847829095
#>     Attrib V18    -0.04434554625185885
#>     Attrib V19    -0.09134276477747047
#>     Attrib V2    0.20099608641956107
#>     Attrib V20    0.002998115914503371
#>     Attrib V21    -0.0415634650969592
#>     Attrib V22    -0.14244670329694165
#>     Attrib V23    -0.14117076470095608
#>     Attrib V24    -0.012096801423321644
#>     Attrib V25    -0.09190560059936063
#>     Attrib V26    -0.08501555261529911
#>     Attrib V27    -0.12707049115777733
#>     Attrib V28    -0.13076742357711468
#>     Attrib V29    -0.01787537857298627
#>     Attrib V3    0.07337782994399404
#>     Attrib V30    -0.002479375655145728
#>     Attrib V31    -0.1518574105859413
#>     Attrib V32    -0.011987933241566176
#>     Attrib V33    0.03635343486026865
#>     Attrib V34    0.013482357034852928
#>     Attrib V35    -0.018250919900411142
#>     Attrib V36    -0.06904808920222544
#>     Attrib V37    -0.08894546502188291
#>     Attrib V38    -0.03169910569501924
#>     Attrib V39    0.12400756286286602
#>     Attrib V4    0.1908644631194497
#>     Attrib V40    0.039070359282467555
#>     Attrib V41    -0.09067555712438019
#>     Attrib V42    0.044998961041546916
#>     Attrib V43    0.15829301325266953
#>     Attrib V44    0.15465733026964473
#>     Attrib V45    0.12722767130778323
#>     Attrib V46    0.13832859198865666
#>     Attrib V47    0.03098352838021401
#>     Attrib V48    0.15310068586010864
#>     Attrib V49    0.08402009076414069
#>     Attrib V5    0.092861057616313
#>     Attrib V50    -0.06079013373391101
#>     Attrib V51    0.05084745434006822
#>     Attrib V52    0.10980271210986481
#>     Attrib V53    0.1011063625334356
#>     Attrib V54    0.1880991005534356
#>     Attrib V55    0.17106821889967083
#>     Attrib V56    0.11037039043522907
#>     Attrib V57    0.09056326522990651
#>     Attrib V58    0.21942245865604706
#>     Attrib V59    0.20068276534194981
#>     Attrib V6    0.007565588405138388
#>     Attrib V60    0.1483003529211575
#>     Attrib V7    -0.009531699992650557
#>     Attrib V8    0.007633052702653183
#>     Attrib V9    0.09183157286179085
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.048599749184051466
#>     Attrib V1    0.49994198462890366
#>     Attrib V10    -0.5125883587315688
#>     Attrib V11    0.001130310371474621
#>     Attrib V12    -0.12178932649867624
#>     Attrib V13    -0.2377116781850809
#>     Attrib V14    -0.09052190628411105
#>     Attrib V15    0.30474002228937763
#>     Attrib V16    0.45193977469662416
#>     Attrib V17    0.2542363757588167
#>     Attrib V18    -0.13224426613411755
#>     Attrib V19    -0.10095804643722979
#>     Attrib V2    0.4973943001729246
#>     Attrib V20    0.5350088120117611
#>     Attrib V21    0.6714529529485718
#>     Attrib V22    0.3860751547021217
#>     Attrib V23    0.36141450008123893
#>     Attrib V24    0.2722940076513814
#>     Attrib V25    -0.2681980919840736
#>     Attrib V26    -0.6280778414933978
#>     Attrib V27    -0.8803158881982979
#>     Attrib V28    -0.6625404625668891
#>     Attrib V29    -0.48749556689854573
#>     Attrib V3    0.16177955676803366
#>     Attrib V30    0.09857886504344317
#>     Attrib V31    -1.0712486563359922
#>     Attrib V32    0.056811974024189436
#>     Attrib V33    0.620864174301524
#>     Attrib V34    0.059710168400779425
#>     Attrib V35    -0.42012743502353483
#>     Attrib V36    -0.6673378864032636
#>     Attrib V37    -0.7213038109134374
#>     Attrib V38    -0.18276103248894837
#>     Attrib V39    0.4844818280735131
#>     Attrib V4    0.4627001507722201
#>     Attrib V40    0.06347558725391626
#>     Attrib V41    -0.15442374033121664
#>     Attrib V42    0.4246923326259421
#>     Attrib V43    0.46331085560874274
#>     Attrib V44    0.5878427925662905
#>     Attrib V45    0.5625218002825438
#>     Attrib V46    -0.005315384836751071
#>     Attrib V47    -0.2473646834387762
#>     Attrib V48    0.009563033048143725
#>     Attrib V49    0.15396553292553086
#>     Attrib V5    -0.18143128068543027
#>     Attrib V50    -0.7238680362185331
#>     Attrib V51    -0.21071147883469887
#>     Attrib V52    0.18775236145117033
#>     Attrib V53    0.2765376504395475
#>     Attrib V54    0.7478956213567561
#>     Attrib V55    0.08851254448320964
#>     Attrib V56    0.4045070566952285
#>     Attrib V57    0.14409052269323927
#>     Attrib V58    0.512737343754993
#>     Attrib V59    0.677094224124404
#>     Attrib V6    -0.3314916625808084
#>     Attrib V60    0.11101177202565174
#>     Attrib V7    -0.005686581937371812
#>     Attrib V8    0.20503134334454706
#>     Attrib V9    0.2505197412978712
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.3741525605536467
#>     Attrib V1    0.02982502087343316
#>     Attrib V10    -0.07660866235295964
#>     Attrib V11    -0.589360889493221
#>     Attrib V12    -0.5532852930533458
#>     Attrib V13    0.13471083729606365
#>     Attrib V14    0.7353634606355696
#>     Attrib V15    0.5292508137953267
#>     Attrib V16    -0.18396486402169723
#>     Attrib V17    0.07653724840383148
#>     Attrib V18    0.22074534728072953
#>     Attrib V19    0.4508895634519039
#>     Attrib V2    -0.2979406503024929
#>     Attrib V20    0.05724356808925996
#>     Attrib V21    -0.3832758302179078
#>     Attrib V22    -0.2899793409074812
#>     Attrib V23    -0.23176658154843482
#>     Attrib V24    -0.3751069956932166
#>     Attrib V25    0.09260706466737005
#>     Attrib V26    0.03699976684046918
#>     Attrib V27    0.16754436308631782
#>     Attrib V28    -0.19053951212995432
#>     Attrib V29    -0.40544237878186756
#>     Attrib V3    0.41544813916953843
#>     Attrib V30    -0.5672781232729766
#>     Attrib V31    1.208491057935806
#>     Attrib V32    -0.08503556716804052
#>     Attrib V33    -0.32391512225840696
#>     Attrib V34    0.166841565760657
#>     Attrib V35    0.47274258373970995
#>     Attrib V36    0.7247328183830808
#>     Attrib V37    0.4334749061135494
#>     Attrib V38    0.16481218761787772
#>     Attrib V39    -0.6830391529015455
#>     Attrib V4    -0.24739461324859519
#>     Attrib V40    0.015912837600247674
#>     Attrib V41    -0.16339755510992085
#>     Attrib V42    -0.42368220033583065
#>     Attrib V43    -0.49849078236390576
#>     Attrib V44    -0.8431140056163827
#>     Attrib V45    -0.9797120022231346
#>     Attrib V46    -0.464899577598467
#>     Attrib V47    -0.21671902346799019
#>     Attrib V48    -0.7353858666047877
#>     Attrib V49    -0.5069280588772884
#>     Attrib V5    0.20701969637281162
#>     Attrib V50    0.9585678469278495
#>     Attrib V51    -0.19764201491777114
#>     Attrib V52    -0.25355467719183605
#>     Attrib V53    -0.08284218975327634
#>     Attrib V54    -0.17961941036826867
#>     Attrib V55    0.9430396759480407
#>     Attrib V56    0.3473169481799333
#>     Attrib V57    0.5358325975330712
#>     Attrib V58    -0.11597581043088173
#>     Attrib V59    -0.08707789151392424
#>     Attrib V6    0.12159543222752894
#>     Attrib V60    0.021162159793723143
#>     Attrib V7    0.3070958634053458
#>     Attrib V8    -0.10200561734098927
#>     Attrib V9    -0.4371404575738022
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.41068581252227376
#>     Attrib V1    -0.5313461109171801
#>     Attrib V10    1.2014541720421683
#>     Attrib V11    1.5327245841126427
#>     Attrib V12    1.644267590305819
#>     Attrib V13    0.42467219649312815
#>     Attrib V14    -0.947393850668329
#>     Attrib V15    -1.3640072576504594
#>     Attrib V16    -0.22758044497401883
#>     Attrib V17    -0.08789609953393981
#>     Attrib V18    0.2515492038870231
#>     Attrib V19    -0.1795056806236149
#>     Attrib V2    0.09248018210513478
#>     Attrib V20    -0.40235060677720885
#>     Attrib V21    0.05731364020233887
#>     Attrib V22    0.30361182209711274
#>     Attrib V23    0.8836431520698609
#>     Attrib V24    0.9768062510247681
#>     Attrib V25    0.6125926928343038
#>     Attrib V26    1.027948154658325
#>     Attrib V27    0.6461783746517805
#>     Attrib V28    0.9158710616066039
#>     Attrib V29    0.7632254604165197
#>     Attrib V3    -0.5427254844684997
#>     Attrib V30    0.40360272724144924
#>     Attrib V31    -0.9727534557556184
#>     Attrib V32    0.03730463821650295
#>     Attrib V33    -0.38416801640309095
#>     Attrib V34    -0.15160261438344375
#>     Attrib V35    -0.19055884359054445
#>     Attrib V36    -0.7161161060011232
#>     Attrib V37    -0.564077628978262
#>     Attrib V38    -0.5978932348883439
#>     Attrib V39    0.7195558246391586
#>     Attrib V4    0.5000884062349102
#>     Attrib V40    0.15294261592880729
#>     Attrib V41    0.8433664508967894
#>     Attrib V42    0.25979175001846083
#>     Attrib V43    0.49521418943492324
#>     Attrib V44    0.5963876327372206
#>     Attrib V45    0.6991661279379098
#>     Attrib V46    0.8999961737074582
#>     Attrib V47    0.8512313073125611
#>     Attrib V48    1.3763407487778436
#>     Attrib V49    1.1002146190887685
#>     Attrib V5    0.16262440492228042
#>     Attrib V50    -0.3859551390033305
#>     Attrib V51    1.1698565347754253
#>     Attrib V52    0.9695470420965296
#>     Attrib V53    0.26577774296902834
#>     Attrib V54    -0.39966660359206996
#>     Attrib V55    -1.263179524791007
#>     Attrib V56    -0.8498939436355506
#>     Attrib V57    -0.9812361218609742
#>     Attrib V58    0.01244968325218968
#>     Attrib V59    -0.15359861055835186
#>     Attrib V6    0.6902449776712586
#>     Attrib V60    -0.0408459145557745
#>     Attrib V7    -0.39228152044703296
#>     Attrib V8    0.22559983944893772
#>     Attrib V9    0.9397438907385406
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.19924691570452627
#>     Attrib V1    -0.01777169190392042
#>     Attrib V10    0.02124394081295655
#>     Attrib V11    -0.12057835475341264
#>     Attrib V12    -0.0652836901237435
#>     Attrib V13    0.0073220158117227796
#>     Attrib V14    0.17135791107925244
#>     Attrib V15    0.05902832628488281
#>     Attrib V16    -0.007789405031274808
#>     Attrib V17    0.1020484194739144
#>     Attrib V18    0.09294749633964314
#>     Attrib V19    0.15814424682950123
#>     Attrib V2    -0.041485446621965176
#>     Attrib V20    -0.0074484081424853466
#>     Attrib V21    -0.052311777160892366
#>     Attrib V22    0.007694899970232784
#>     Attrib V23    0.005237409227850139
#>     Attrib V24    -0.07028518158791637
#>     Attrib V25    0.013714200254271884
#>     Attrib V26    -0.06045244835894121
#>     Attrib V27    -0.012948805038342861
#>     Attrib V28    -0.07798748735083746
#>     Attrib V29    -0.10595968871462176
#>     Attrib V3    0.053725062586925484
#>     Attrib V30    -0.15334202278109343
#>     Attrib V31    0.21659936752902087
#>     Attrib V32    0.008079356789264034
#>     Attrib V33    0.001688615515906217
#>     Attrib V34    0.011306929625154812
#>     Attrib V35    0.16160902937172636
#>     Attrib V36    0.2541489628484413
#>     Attrib V37    0.2525673646686275
#>     Attrib V38    0.03219455677473098
#>     Attrib V39    -0.09998564447142365
#>     Attrib V4    0.01126498629846101
#>     Attrib V40    0.04794330200953879
#>     Attrib V41    0.03855976975143536
#>     Attrib V42    -0.02156812086197684
#>     Attrib V43    -0.08349126160525225
#>     Attrib V44    -0.14830969112805506
#>     Attrib V45    -0.2141179211672449
#>     Attrib V46    -0.09830297109184521
#>     Attrib V47    -0.025303606854032167
#>     Attrib V48    -0.05584206497043327
#>     Attrib V49    -0.10516937400632767
#>     Attrib V5    0.057901698581773055
#>     Attrib V50    0.20281558277156514
#>     Attrib V51    0.0076505892793744465
#>     Attrib V52    -0.023397965728786514
#>     Attrib V53    -0.0321208590905057
#>     Attrib V54    -0.058068444989167516
#>     Attrib V55    0.126035077841928
#>     Attrib V56    0.0971345465825312
#>     Attrib V57    0.1543262155864094
#>     Attrib V58    0.03186455267181813
#>     Attrib V59    -0.005267161033223971
#>     Attrib V6    0.14206133341138943
#>     Attrib V60    0.07396273338820333
#>     Attrib V7    0.0536086105867738
#>     Attrib V8    0.06624737693119485
#>     Attrib V9    -0.05595105422496085
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.11896744515100856
#>     Attrib V1    0.4026070505433531
#>     Attrib V10    -0.33381700854365953
#>     Attrib V11    0.06228875075359974
#>     Attrib V12    -0.07617733894915994
#>     Attrib V13    -0.1870339441756211
#>     Attrib V14    -0.18033976927657397
#>     Attrib V15    0.20302351627813725
#>     Attrib V16    0.40359360447571724
#>     Attrib V17    0.15757809779515497
#>     Attrib V18    -0.030099844063686636
#>     Attrib V19    -0.10124933635435818
#>     Attrib V2    0.44434364308858865
#>     Attrib V20    0.37740289658295617
#>     Attrib V21    0.5583718909189591
#>     Attrib V22    0.28839853776555335
#>     Attrib V23    0.22219474603664927
#>     Attrib V24    0.2337013204593979
#>     Attrib V25    -0.25620909696872496
#>     Attrib V26    -0.4595941443017727
#>     Attrib V27    -0.684208174633679
#>     Attrib V28    -0.4930711033068758
#>     Attrib V29    -0.31001947275114544
#>     Attrib V3    0.020617848758553093
#>     Attrib V30    0.10888798865657004
#>     Attrib V31    -0.9270662087755434
#>     Attrib V32    0.047465151860751426
#>     Attrib V33    0.46610073632783805
#>     Attrib V34    0.058003712175792456
#>     Attrib V35    -0.3608458845689613
#>     Attrib V36    -0.5182890771108525
#>     Attrib V37    -0.5701652330903433
#>     Attrib V38    -0.10458508336152315
#>     Attrib V39    0.45526593365059215
#>     Attrib V4    0.35145654975042806
#>     Attrib V40    -0.02064938916144505
#>     Attrib V41    -0.15941659782517453
#>     Attrib V42    0.30246637358543166
#>     Attrib V43    0.31798180029387557
#>     Attrib V44    0.5697879825904514
#>     Attrib V45    0.5755963915668239
#>     Attrib V46    0.0022101491983850434
#>     Attrib V47    -0.25555812946767725
#>     Attrib V48    0.11988103965442229
#>     Attrib V49    0.14716361550932125
#>     Attrib V5    -0.17999149322795427
#>     Attrib V50    -0.5603953295054931
#>     Attrib V51    -0.11583882516516969
#>     Attrib V52    0.14927169142982438
#>     Attrib V53    0.22251579219819426
#>     Attrib V54    0.6465480887796492
#>     Attrib V55    0.07261523807978804
#>     Attrib V56    0.16712325282145862
#>     Attrib V57    0.08659097992985214
#>     Attrib V58    0.40358884557165614
#>     Attrib V59    0.5279861196807386
#>     Attrib V6    -0.25820579274874966
#>     Attrib V60    0.14883196660928702
#>     Attrib V7    -0.07457055978841068
#>     Attrib V8    0.1794284486025186
#>     Attrib V9    0.24027526766824145
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.2887194901104219
#>     Attrib V1    0.7040738134440847
#>     Attrib V10    -1.2161066121489965
#>     Attrib V11    -1.4301982947126348
#>     Attrib V12    -1.551320016886419
#>     Attrib V13    -0.2985082166189182
#>     Attrib V14    0.984188996969642
#>     Attrib V15    1.2938252937045112
#>     Attrib V16    0.13188059089271698
#>     Attrib V17    0.027406037699394436
#>     Attrib V18    -0.150743279223148
#>     Attrib V19    0.15290764962692563
#>     Attrib V2    -0.11719691100648555
#>     Attrib V20    0.2322551341859255
#>     Attrib V21    -0.3470414573319062
#>     Attrib V22    -0.6031712644832603
#>     Attrib V23    -1.248837875352065
#>     Attrib V24    -1.0036435392694016
#>     Attrib V25    -0.25479548313943623
#>     Attrib V26    -0.600668524718254
#>     Attrib V27    -0.44811859629559403
#>     Attrib V28    -1.0344755267402301
#>     Attrib V29    -0.9172891032214421
#>     Attrib V3    0.7890147991221367
#>     Attrib V30    -0.5686424443694252
#>     Attrib V31    1.589602468947316
#>     Attrib V32    0.02613488942161868
#>     Attrib V33    0.07760583534363388
#>     Attrib V34    0.22568337617437853
#>     Attrib V35    0.459728662474376
#>     Attrib V36    1.148184662024409
#>     Attrib V37    0.7681293505377834
#>     Attrib V38    0.5687348603377008
#>     Attrib V39    -0.8582120833792815
#>     Attrib V4    -0.37749439594333145
#>     Attrib V40    -0.2690229377610096
#>     Attrib V41    -0.9827090882334684
#>     Attrib V42    -0.7152483813719722
#>     Attrib V43    -0.9802560396102138
#>     Attrib V44    -1.0760722615972493
#>     Attrib V45    -0.9769111500502436
#>     Attrib V46    -1.0529062438029582
#>     Attrib V47    -0.9961318104291069
#>     Attrib V48    -1.5074797370468798
#>     Attrib V49    -1.1787052077450235
#>     Attrib V5    0.10625749459379001
#>     Attrib V50    0.6627258169252774
#>     Attrib V51    -1.3481974445505345
#>     Attrib V52    -1.07612764499406
#>     Attrib V53    -0.4462194103595912
#>     Attrib V54    0.39732362372644925
#>     Attrib V55    1.8715795697801334
#>     Attrib V56    0.6744519879783812
#>     Attrib V57    1.2304758663837396
#>     Attrib V58    -0.062484549822819646
#>     Attrib V59    0.28489913083581886
#>     Attrib V6    -0.5003403389395447
#>     Attrib V60    0.2503404174515031
#>     Attrib V7    0.651703349872934
#>     Attrib V8    -0.21348603873876174
#>     Attrib V9    -1.0364612628336867
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.09391426678699433
#>     Attrib V1    0.1635183806631875
#>     Attrib V10    -0.22922027392086505
#>     Attrib V11    0.18959328383136861
#>     Attrib V12    0.05067121178606633
#>     Attrib V13    -0.18285112597976746
#>     Attrib V14    -0.19346183317099203
#>     Attrib V15    0.03881431028004975
#>     Attrib V16    0.30137229672909244
#>     Attrib V17    0.14056819220353403
#>     Attrib V18    -0.054536881676235514
#>     Attrib V19    -0.14152043162460382
#>     Attrib V2    0.30696007993600577
#>     Attrib V20    0.3245494770819123
#>     Attrib V21    0.47927070981057884
#>     Attrib V22    0.29583593670649067
#>     Attrib V23    0.22975814205457595
#>     Attrib V24    0.2711829889368622
#>     Attrib V25    -0.10457137655514807
#>     Attrib V26    -0.35125548526067557
#>     Attrib V27    -0.485787555171385
#>     Attrib V28    -0.2792585241928661
#>     Attrib V29    -0.1215681210126729
#>     Attrib V3    -0.04185032955296677
#>     Attrib V30    0.14312394381103466
#>     Attrib V31    -0.813906097510064
#>     Attrib V32    0.10885644285915745
#>     Attrib V33    0.416658576952531
#>     Attrib V34    0.02542148233533436
#>     Attrib V35    -0.29735937566656845
#>     Attrib V36    -0.49466659076474434
#>     Attrib V37    -0.4903845815060838
#>     Attrib V38    -0.1291287125334752
#>     Attrib V39    0.40595913258680466
#>     Attrib V4    0.24686461899150627
#>     Attrib V40    0.017320722344241014
#>     Attrib V41    -0.06809324486589417
#>     Attrib V42    0.2518486415835449
#>     Attrib V43    0.38580262104719726
#>     Attrib V44    0.45592853931867805
#>     Attrib V45    0.5517820914523173
#>     Attrib V46    0.10623405917194702
#>     Attrib V47    -0.06808185200468943
#>     Attrib V48    0.19714530880492653
#>     Attrib V49    0.22854089348957335
#>     Attrib V5    -0.21329600564664694
#>     Attrib V50    -0.5169221881280567
#>     Attrib V51    2.8911206203890755E-4
#>     Attrib V52    0.1908683422086088
#>     Attrib V53    0.12190895988676498
#>     Attrib V54    0.36420954512116865
#>     Attrib V55    -0.07891690573030653
#>     Attrib V56    0.10119613825146553
#>     Attrib V57    -0.052196314185653146
#>     Attrib V58    0.2720273542301894
#>     Attrib V59    0.3526880773806372
#>     Attrib V6    -0.23023129221212627
#>     Attrib V60    0.08349498065607976
#>     Attrib V7    -0.11574456713251037
#>     Attrib V8    0.1559217101192288
#>     Attrib V9    0.25083380883275136
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.12668261189781155
#>     Attrib V1    0.13102223838099106
#>     Attrib V10    0.019265620496947657
#>     Attrib V11    0.07834233459548211
#>     Attrib V12    0.08247101170223806
#>     Attrib V13    0.04450735454531897
#>     Attrib V14    0.005416780345531769
#>     Attrib V15    0.02691180952147853
#>     Attrib V16    0.06673823265422055
#>     Attrib V17    0.06661600648126423
#>     Attrib V18    -0.022608677633734586
#>     Attrib V19    -0.0662350489753863
#>     Attrib V2    0.17765304887952296
#>     Attrib V20    -0.013899687019537586
#>     Attrib V21    0.028738767942411435
#>     Attrib V22    -0.061657562015107255
#>     Attrib V23    -0.045488131911143495
#>     Attrib V24    -0.03704657500120672
#>     Attrib V25    -0.010998400569273417
#>     Attrib V26    0.016254353073332745
#>     Attrib V27    -0.07914484203047147
#>     Attrib V28    -0.04829453005440847
#>     Attrib V29    -0.06827484603472819
#>     Attrib V3    0.06642229617274141
#>     Attrib V30    0.02615304382271763
#>     Attrib V31    -0.11280189568788458
#>     Attrib V32    -0.02274840268683088
#>     Attrib V33    0.03529855195831721
#>     Attrib V34    0.012203823970568503
#>     Attrib V35    0.028368618522132554
#>     Attrib V36    -0.04999006062194526
#>     Attrib V37    -0.01679573118304192
#>     Attrib V38    -0.008905861242415216
#>     Attrib V39    0.20559581615491804
#>     Attrib V4    0.18444645431081105
#>     Attrib V40    0.0596015241836162
#>     Attrib V41    -0.01754311046054715
#>     Attrib V42    0.09912964012943898
#>     Attrib V43    0.08504102418292171
#>     Attrib V44    0.10672398373388467
#>     Attrib V45    0.1566210188423763
#>     Attrib V46    0.0988823541239523
#>     Attrib V47    0.038322155223751514
#>     Attrib V48    0.13007884227864686
#>     Attrib V49    0.04245122081710573
#>     Attrib V5    0.01897834348220779
#>     Attrib V50    -0.05419880404203942
#>     Attrib V51    0.05221103294576366
#>     Attrib V52    0.10049990154618592
#>     Attrib V53    0.1076830296109745
#>     Attrib V54    0.13289463877503144
#>     Attrib V55    0.09496266072960702
#>     Attrib V56    0.11817857075251983
#>     Attrib V57    0.029340432452672736
#>     Attrib V58    0.1782049109414557
#>     Attrib V59    0.20713457457973408
#>     Attrib V6    0.009807227913419208
#>     Attrib V60    0.11508142183256805
#>     Attrib V7    -0.052895189476597576
#>     Attrib V8    0.03443946788693212
#>     Attrib V9    0.05356966252088451
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.0141524285849284
#>     Attrib V1    0.37780782633384014
#>     Attrib V10    -0.3911528790872317
#>     Attrib V11    0.003412023984347594
#>     Attrib V12    -0.16975855360864628
#>     Attrib V13    -0.16927012612003278
#>     Attrib V14    -0.031568393445225315
#>     Attrib V15    0.272929487413027
#>     Attrib V16    0.3968471439247663
#>     Attrib V17    0.20720302172134283
#>     Attrib V18    -0.05402344479316602
#>     Attrib V19    -0.06642492147172425
#>     Attrib V2    0.48382327873905734
#>     Attrib V20    0.4636317413483242
#>     Attrib V21    0.46293545608317965
#>     Attrib V22    0.25797574881263774
#>     Attrib V23    0.2039823752196455
#>     Attrib V24    0.19088184141821735
#>     Attrib V25    -0.2795612942299185
#>     Attrib V26    -0.5108526275654083
#>     Attrib V27    -0.712861781933926
#>     Attrib V28    -0.5589154438001707
#>     Attrib V29    -0.3996236613732879
#>     Attrib V3    0.07207380092857235
#>     Attrib V30    0.007720518421597416
#>     Attrib V31    -0.8254626410721406
#>     Attrib V32    -0.0029286224565785723
#>     Attrib V33    0.46171648003241184
#>     Attrib V34    0.07764467254994141
#>     Attrib V35    -0.2661262767392083
#>     Attrib V36    -0.4755840861630211
#>     Attrib V37    -0.5101713788612429
#>     Attrib V38    -0.04741794763373779
#>     Attrib V39    0.36681157350456367
#>     Attrib V4    0.350531675456397
#>     Attrib V40    0.05561664768105098
#>     Attrib V41    -0.19542997266683684
#>     Attrib V42    0.26176023387183545
#>     Attrib V43    0.338650230984638
#>     Attrib V44    0.503270076034294
#>     Attrib V45    0.4070419888799086
#>     Attrib V46    0.005138549989732655
#>     Attrib V47    -0.21068257592225853
#>     Attrib V48    0.039020969226249896
#>     Attrib V49    0.0968305598770538
#>     Attrib V5    -0.15293101219119848
#>     Attrib V50    -0.529634581127803
#>     Attrib V51    -0.16543613744987617
#>     Attrib V52    0.10890521661863821
#>     Attrib V53    0.24351513828001675
#>     Attrib V54    0.6484143488263332
#>     Attrib V55    0.1581933495904207
#>     Attrib V56    0.24831308015598516
#>     Attrib V57    0.1355802043716103
#>     Attrib V58    0.3656354858170983
#>     Attrib V59    0.5090266690581106
#>     Attrib V6    -0.26119714224906165
#>     Attrib V60    0.15553320564804987
#>     Attrib V7    0.005972720975652757
#>     Attrib V8    0.14030502071053386
#>     Attrib V9    0.18695855175846887
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -9.286813697396972E-4
#>     Attrib V1    0.26971095434464615
#>     Attrib V10    -0.333382793669767
#>     Attrib V11    0.0034361352840514064
#>     Attrib V12    -0.07992626530763548
#>     Attrib V13    -0.16985149314880182
#>     Attrib V14    -0.01345040169617734
#>     Attrib V15    0.17619971315692884
#>     Attrib V16    0.33474277632524
#>     Attrib V17    0.12019103737175352
#>     Attrib V18    0.02553781109176385
#>     Attrib V19    -0.06501214076635298
#>     Attrib V2    0.3195109552264304
#>     Attrib V20    0.34181612800807376
#>     Attrib V21    0.41049443817391623
#>     Attrib V22    0.14472385993358577
#>     Attrib V23    0.12880950018437792
#>     Attrib V24    0.07985593275194776
#>     Attrib V25    -0.2751367858215985
#>     Attrib V26    -0.4128021034561882
#>     Attrib V27    -0.48956265470398713
#>     Attrib V28    -0.29277742875777196
#>     Attrib V29    -0.20241490554813407
#>     Attrib V3    0.08833657897374371
#>     Attrib V30    0.07421810529525677
#>     Attrib V31    -0.7179674149345425
#>     Attrib V32    -0.03143470255225514
#>     Attrib V33    0.3060747689355238
#>     Attrib V34    0.028134190084276946
#>     Attrib V35    -0.20893041162682693
#>     Attrib V36    -0.27609803519180137
#>     Attrib V37    -0.36153587890783967
#>     Attrib V38    -0.06840615718454383
#>     Attrib V39    0.3435515816900621
#>     Attrib V4    0.23975368750103873
#>     Attrib V40    0.0017379677136984144
#>     Attrib V41    -0.17760650970338152
#>     Attrib V42    0.21860841163791322
#>     Attrib V43    0.21275485659335333
#>     Attrib V44    0.4118069534922828
#>     Attrib V45    0.4004010508630358
#>     Attrib V46    0.048958712461327526
#>     Attrib V47    -0.14238879313825623
#>     Attrib V48    0.019694268198511052
#>     Attrib V49    0.13543892575094013
#>     Attrib V5    -0.09413529422782954
#>     Attrib V50    -0.39609041402180095
#>     Attrib V51    -0.06830364969959331
#>     Attrib V52    0.13755608116173274
#>     Attrib V53    0.1951829802506534
#>     Attrib V54    0.40229768261035054
#>     Attrib V55    0.0821314830392733
#>     Attrib V56    0.17590602410724815
#>     Attrib V57    0.07061840535024026
#>     Attrib V58    0.35356736228450547
#>     Attrib V59    0.38649853899718306
#>     Attrib V6    -0.17379293999452863
#>     Attrib V60    0.12405342381425086
#>     Attrib V7    -0.03596535081244289
#>     Attrib V8    0.1117337890305184
#>     Attrib V9    0.12853469535959666
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
#>  0.2028986 
```
