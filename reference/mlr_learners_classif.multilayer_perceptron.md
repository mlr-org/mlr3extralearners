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
#>     Threshold    -0.10029425162956705
#>     Node 2    1.8458971259366574
#>     Node 3    1.739268249962451
#>     Node 4    0.6683747543991646
#>     Node 5    -1.7451896700701315
#>     Node 6    1.5053365499008673
#>     Node 7    2.1184536667238016
#>     Node 8    1.1503430812010256
#>     Node 9    2.532470855842972
#>     Node 10    -2.358705041660496
#>     Node 11    1.440310927862209
#>     Node 12    1.7337040532901495
#>     Node 13    0.2680118401019256
#>     Node 14    1.9024721360229466
#>     Node 15    -1.7973864380728195
#>     Node 16    0.6731452082112592
#>     Node 17    -0.37768003544595397
#>     Node 18    -0.8321392594258072
#>     Node 19    1.8612624543314347
#>     Node 20    1.819680239836379
#>     Node 21    -1.9414035291870677
#>     Node 22    0.5659891975005811
#>     Node 23    1.9329269629520853
#>     Node 24    -1.4533155270201816
#>     Node 25    4.613205314048624
#>     Node 26    -0.31105897885295375
#>     Node 27    1.6917647953774309
#>     Node 28    -3.954303676523141
#>     Node 29    1.070084741770091
#>     Node 30    0.433896682138829
#>     Node 31    1.8525215659704597
#>     Node 32    0.374661762045518
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.12475030185869487
#>     Node 2    -1.8841361180825626
#>     Node 3    -1.720499203088976
#>     Node 4    -0.6280092401195788
#>     Node 5    1.7491336648117597
#>     Node 6    -1.4798234302933708
#>     Node 7    -2.114033361370267
#>     Node 8    -1.1840809436413815
#>     Node 9    -2.5411895766938746
#>     Node 10    2.3274989553555616
#>     Node 11    -1.4032790273624631
#>     Node 12    -1.803747326026759
#>     Node 13    -0.2156159999360276
#>     Node 14    -1.8399583109470103
#>     Node 15    1.7788672649097288
#>     Node 16    -0.692599856760233
#>     Node 17    0.4019443581834636
#>     Node 18    0.8634725965643556
#>     Node 19    -1.8448611106471426
#>     Node 20    -1.7937608994924699
#>     Node 21    1.9882180255485027
#>     Node 22    -0.6226537991850297
#>     Node 23    -1.9702308310873922
#>     Node 24    1.4280366710666983
#>     Node 25    -4.634082045233761
#>     Node 26    0.2216043374074462
#>     Node 27    -1.7306980280573063
#>     Node 28    3.940268926017392
#>     Node 29    -1.1014221592790872
#>     Node 30    -0.3597333447535122
#>     Node 31    -1.7957711982722402
#>     Node 32    -0.3940399041673224
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.08220977703791756
#>     Attrib V1    0.4514699359192337
#>     Attrib V10    -0.2988851927686408
#>     Attrib V11    0.12866787246050382
#>     Attrib V12    -0.05418082039788435
#>     Attrib V13    -0.5703682638113653
#>     Attrib V14    -0.09885282587521592
#>     Attrib V15    0.4571949516168279
#>     Attrib V16    0.590568690843324
#>     Attrib V17    0.41938668121994804
#>     Attrib V18    0.26187305219036766
#>     Attrib V19    0.08949705506080541
#>     Attrib V2    0.0731586099913337
#>     Attrib V20    0.5427150873315552
#>     Attrib V21    0.24378269591806845
#>     Attrib V22    -0.021372270878482043
#>     Attrib V23    0.2132429226067831
#>     Attrib V24    0.25840801303224237
#>     Attrib V25    -0.24503293636374326
#>     Attrib V26    -0.8185665138423557
#>     Attrib V27    -0.5398248275422972
#>     Attrib V28    -0.08452233806217054
#>     Attrib V29    -0.40440793354894783
#>     Attrib V3    -0.18867206268608458
#>     Attrib V30    0.13976950941224414
#>     Attrib V31    -1.433641571355486
#>     Attrib V32    0.15258282157283584
#>     Attrib V33    0.8712460043748085
#>     Attrib V34    0.322422285409259
#>     Attrib V35    0.3495064023516595
#>     Attrib V36    -0.22231712412956675
#>     Attrib V37    -0.5239325942394029
#>     Attrib V38    0.032066935813836454
#>     Attrib V39    -0.17676054506734534
#>     Attrib V4    0.2390793173711759
#>     Attrib V40    -0.4325482844455943
#>     Attrib V41    -0.05951262009449672
#>     Attrib V42    0.48796424040956743
#>     Attrib V43    0.15219877654701855
#>     Attrib V44    0.4115007431071199
#>     Attrib V45    0.4882715761835919
#>     Attrib V46    -0.07668129206128561
#>     Attrib V47    -0.35735129443735436
#>     Attrib V48    0.14226652868941075
#>     Attrib V49    0.48491237020875927
#>     Attrib V5    -0.2036636986591108
#>     Attrib V50    -0.6566064074263248
#>     Attrib V51    0.17207255377977265
#>     Attrib V52    0.44110001558608924
#>     Attrib V53    0.09871203492924595
#>     Attrib V54    0.8330099154105973
#>     Attrib V55    -0.2578968187032884
#>     Attrib V56    0.061825811326950426
#>     Attrib V57    -0.18573982942958095
#>     Attrib V58    0.5061740296350834
#>     Attrib V59    0.8505080558298053
#>     Attrib V6    -0.18606076569552205
#>     Attrib V60    0.6538489040100722
#>     Attrib V7    -0.1456726894015782
#>     Attrib V8    -0.3742396129215946
#>     Attrib V9    -0.0953772250139749
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.10329678799810944
#>     Attrib V1    0.3803491342171629
#>     Attrib V10    -0.27913047723929973
#>     Attrib V11    -0.026358612874985293
#>     Attrib V12    -0.16310545646643781
#>     Attrib V13    -0.5218735882963215
#>     Attrib V14    -0.11108543363442983
#>     Attrib V15    0.5237793891930232
#>     Attrib V16    0.5826067981982133
#>     Attrib V17    0.3315306607818396
#>     Attrib V18    0.09643130741044734
#>     Attrib V19    0.06498508569018695
#>     Attrib V2    0.10508151569088243
#>     Attrib V20    0.355437171915257
#>     Attrib V21    0.07090339738885956
#>     Attrib V22    -0.0929690093798955
#>     Attrib V23    0.09913190136161845
#>     Attrib V24    0.18334517226975316
#>     Attrib V25    -0.2487600507688169
#>     Attrib V26    -0.8107443866006924
#>     Attrib V27    -0.6370183585327504
#>     Attrib V28    -0.319629812682136
#>     Attrib V29    -0.632324555281896
#>     Attrib V3    -0.16835243694720523
#>     Attrib V30    -0.005428131253647364
#>     Attrib V31    -1.0540739829846
#>     Attrib V32    0.25816980615753415
#>     Attrib V33    0.8771666428244241
#>     Attrib V34    0.29589450702094644
#>     Attrib V35    0.2131497468709817
#>     Attrib V36    -0.41025029915112565
#>     Attrib V37    -0.6444752460407737
#>     Attrib V38    -0.18604645315147775
#>     Attrib V39    -0.20995681627348411
#>     Attrib V4    0.14306146210527132
#>     Attrib V40    -0.34093403038200515
#>     Attrib V41    -0.12193262616812599
#>     Attrib V42    0.33758461859157113
#>     Attrib V43    0.030839422572446935
#>     Attrib V44    0.3048232339800049
#>     Attrib V45    0.4189158419503802
#>     Attrib V46    -0.026936645462753313
#>     Attrib V47    -0.20304745162976462
#>     Attrib V48    0.2102052284069755
#>     Attrib V49    0.4343342416103143
#>     Attrib V5    -0.2663510403573932
#>     Attrib V50    -0.505002035933027
#>     Attrib V51    0.0954189908819739
#>     Attrib V52    0.34903556974744476
#>     Attrib V53    0.02046593414992218
#>     Attrib V54    0.817365013469317
#>     Attrib V55    -0.1214448595583938
#>     Attrib V56    0.1592114186422717
#>     Attrib V57    -0.015589780967442462
#>     Attrib V58    0.5165331056924254
#>     Attrib V59    0.7129771136636418
#>     Attrib V6    -0.1383382844717893
#>     Attrib V60    0.5112424822765174
#>     Attrib V7    -0.052459284142799247
#>     Attrib V8    -0.2007028524364638
#>     Attrib V9    -0.0854947488293223
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.10102472750081166
#>     Attrib V1    0.1733080972699482
#>     Attrib V10    -0.1059368871543248
#>     Attrib V11    0.025926041784677632
#>     Attrib V12    -0.0363777650588598
#>     Attrib V13    -0.17782322874502177
#>     Attrib V14    0.04045070688756196
#>     Attrib V15    0.24477842141449027
#>     Attrib V16    0.21211909929813338
#>     Attrib V17    0.14278127933185067
#>     Attrib V18    0.04056588483008414
#>     Attrib V19    -0.017508057593173566
#>     Attrib V2    0.052191661628255226
#>     Attrib V20    0.1380758816977301
#>     Attrib V21    0.038495104809476155
#>     Attrib V22    -0.14493363904098747
#>     Attrib V23    -0.04646658380291441
#>     Attrib V24    -0.041593498017268825
#>     Attrib V25    -0.21197954007130657
#>     Attrib V26    -0.36862361246336317
#>     Attrib V27    -0.2807892266727945
#>     Attrib V28    -0.056844153874978924
#>     Attrib V29    -0.1395786560678038
#>     Attrib V3    0.022674439388734573
#>     Attrib V30    0.029557613184488442
#>     Attrib V31    -0.4160513584905306
#>     Attrib V32    0.08768081182345384
#>     Attrib V33    0.36103918298965687
#>     Attrib V34    0.10938530537084869
#>     Attrib V35    0.062061744525703594
#>     Attrib V36    -0.20217617851517672
#>     Attrib V37    -0.2379600060741122
#>     Attrib V38    -0.06799706961289258
#>     Attrib V39    -0.03833786123749976
#>     Attrib V4    0.14066417448375715
#>     Attrib V40    -0.11807426612364033
#>     Attrib V41    -0.07579869799961066
#>     Attrib V42    0.13890400215400955
#>     Attrib V43    -0.023559574393380363
#>     Attrib V44    0.11030994317447293
#>     Attrib V45    0.2095243265566029
#>     Attrib V46    -0.01580228341414941
#>     Attrib V47    -0.07708386142373891
#>     Attrib V48    0.13813488878855806
#>     Attrib V49    0.24588241541226769
#>     Attrib V5    -0.01815281690203642
#>     Attrib V50    -0.151814507908059
#>     Attrib V51    0.1410208789426036
#>     Attrib V52    0.189171476433966
#>     Attrib V53    0.11152194394957662
#>     Attrib V54    0.25805386662688684
#>     Attrib V55    -0.0016637015828942176
#>     Attrib V56    0.09296267944403074
#>     Attrib V57    0.07903836227151725
#>     Attrib V58    0.22107283726736945
#>     Attrib V59    0.3180662498122674
#>     Attrib V6    -0.09610711938439719
#>     Attrib V60    0.24238645365334538
#>     Attrib V7    -0.08009906289748246
#>     Attrib V8    -0.15076345177921813
#>     Attrib V9    0.01952673619228934
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.36629226768083584
#>     Attrib V1    -0.09242620526512217
#>     Attrib V10    -0.10000510842923982
#>     Attrib V11    -0.725163866778925
#>     Attrib V12    -0.5235931476073938
#>     Attrib V13    0.31199732909183436
#>     Attrib V14    0.4666964130107406
#>     Attrib V15    0.19608331940237153
#>     Attrib V16    0.05154091299521777
#>     Attrib V17    0.06040541281691023
#>     Attrib V18    0.09457548987272858
#>     Attrib V19    0.29533653737741883
#>     Attrib V2    0.1806570710573017
#>     Attrib V20    -0.15291274634017177
#>     Attrib V21    9.35502389301626E-4
#>     Attrib V22    0.07146865563980416
#>     Attrib V23    -0.12401829538858922
#>     Attrib V24    -0.47433170738668706
#>     Attrib V25    -0.11941341919204569
#>     Attrib V26    0.23903795717523477
#>     Attrib V27    -0.1266213888998362
#>     Attrib V28    -0.5393085143544527
#>     Attrib V29    -0.011361933897292661
#>     Attrib V3    0.48684075842474794
#>     Attrib V30    -0.6125006269678851
#>     Attrib V31    1.0590103494070748
#>     Attrib V32    -0.30911006301846333
#>     Attrib V33    -0.7478296563598272
#>     Attrib V34    0.002577488634105468
#>     Attrib V35    -0.05578865662698093
#>     Attrib V36    0.5348993904928799
#>     Attrib V37    0.5975986467206754
#>     Attrib V38    -0.09544207601232726
#>     Attrib V39    0.04352149730814007
#>     Attrib V4    -0.21510067372328853
#>     Attrib V40    0.4377057374669208
#>     Attrib V41    0.19155734086992582
#>     Attrib V42    -0.21598386025328045
#>     Attrib V43    -0.1327242994240989
#>     Attrib V44    -0.3928197318204975
#>     Attrib V45    -0.602548348402822
#>     Attrib V46    -0.17623660419024662
#>     Attrib V47    0.015515122518595046
#>     Attrib V48    -0.4061018365270742
#>     Attrib V49    -0.7764485810636779
#>     Attrib V5    0.20691956930540256
#>     Attrib V50    0.9187528112751603
#>     Attrib V51    -0.26107150721329947
#>     Attrib V52    -0.4814623389918364
#>     Attrib V53    0.07635821575428713
#>     Attrib V54    -0.5696662621729248
#>     Attrib V55    0.4998134987788627
#>     Attrib V56    0.17815217678222162
#>     Attrib V57    0.42250742426892773
#>     Attrib V58    -0.2759139366414741
#>     Attrib V59    -0.45751400064868997
#>     Attrib V6    0.10088643786625404
#>     Attrib V60    -0.20118541834578765
#>     Attrib V7    0.44180378211767785
#>     Attrib V8    0.5312331845166416
#>     Attrib V9    -0.22474129041710486
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.06352586924951117
#>     Attrib V1    0.3110998169808817
#>     Attrib V10    -0.28182578771116235
#>     Attrib V11    -0.016632019028586565
#>     Attrib V12    -0.09606198834244091
#>     Attrib V13    -0.5465128869694604
#>     Attrib V14    -0.18717023062798596
#>     Attrib V15    0.365767803826425
#>     Attrib V16    0.5591988917047601
#>     Attrib V17    0.29664633200994195
#>     Attrib V18    0.19608231353606392
#>     Attrib V19    0.056088808925459734
#>     Attrib V2    0.06525822952386329
#>     Attrib V20    0.3130890940997311
#>     Attrib V21    0.08858114434339283
#>     Attrib V22    -0.11274393735642546
#>     Attrib V23    0.10099141277182587
#>     Attrib V24    0.24816896020927237
#>     Attrib V25    -0.10344086531447205
#>     Attrib V26    -0.6210302863167368
#>     Attrib V27    -0.5317145015656404
#>     Attrib V28    -0.42940278204335
#>     Attrib V29    -0.7094043379178376
#>     Attrib V3    -0.15134317168626107
#>     Attrib V30    -0.1557143747575102
#>     Attrib V31    -0.9361312280536883
#>     Attrib V32    0.23306819999873676
#>     Attrib V33    0.7729492730933574
#>     Attrib V34    0.3607052945558409
#>     Attrib V35    0.30560998561180586
#>     Attrib V36    -0.2977689190826445
#>     Attrib V37    -0.5349908013274126
#>     Attrib V38    -0.20314396909116442
#>     Attrib V39    -0.24509384013335356
#>     Attrib V4    0.15596517580706523
#>     Attrib V40    -0.3124702334395434
#>     Attrib V41    -0.0614284879569383
#>     Attrib V42    0.32046045018314195
#>     Attrib V43    0.04337807205952804
#>     Attrib V44    0.23212764048462
#>     Attrib V45    0.33511480687594986
#>     Attrib V46    -0.005911818895090907
#>     Attrib V47    -0.221041903842842
#>     Attrib V48    0.14467960531851082
#>     Attrib V49    0.34996933555673965
#>     Attrib V5    -0.23507755160986513
#>     Attrib V50    -0.4112372101246163
#>     Attrib V51    0.08410727048279105
#>     Attrib V52    0.25767790305060795
#>     Attrib V53    0.13101921109769812
#>     Attrib V54    0.6421194542606645
#>     Attrib V55    -0.12995720370696473
#>     Attrib V56    0.15058553501953653
#>     Attrib V57    -0.00936515985751594
#>     Attrib V58    0.46036330079263793
#>     Attrib V59    0.595869804216067
#>     Attrib V6    -0.04704978596871556
#>     Attrib V60    0.5203521386814177
#>     Attrib V7    0.006824006859672183
#>     Attrib V8    -0.1856861530845964
#>     Attrib V9    0.006978282042267201
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.10548590023667412
#>     Attrib V1    0.21927958465796754
#>     Attrib V10    0.5329366406189256
#>     Attrib V11    1.2135772384492403
#>     Attrib V12    1.0108669656092817
#>     Attrib V13    0.09532585881147877
#>     Attrib V14    -0.44849293438808113
#>     Attrib V15    -0.5883561295224482
#>     Attrib V16    -0.508551745356011
#>     Attrib V17    -0.12728922898162362
#>     Attrib V18    0.07031864699145479
#>     Attrib V19    -0.1889356157145772
#>     Attrib V2    -0.010926631032980303
#>     Attrib V20    0.32498522134072116
#>     Attrib V21    0.38547662781070874
#>     Attrib V22    0.3923857207138849
#>     Attrib V23    0.5783998395345401
#>     Attrib V24    0.5763855512126032
#>     Attrib V25    0.6388507293676847
#>     Attrib V26    0.3663189620664184
#>     Attrib V27    0.5704022400809061
#>     Attrib V28    0.812320253419583
#>     Attrib V29    0.31450032309453335
#>     Attrib V3    -0.2197511536286833
#>     Attrib V30    0.6783098470297191
#>     Attrib V31    -0.8732236522353307
#>     Attrib V32    0.09946041691281776
#>     Attrib V33    0.1396228033658418
#>     Attrib V34    -0.4438256836485556
#>     Attrib V35    -0.013377922401550063
#>     Attrib V36    -0.3553715227084325
#>     Attrib V37    -0.12008663803783395
#>     Attrib V38    0.27512093177119185
#>     Attrib V39    0.18753894831839393
#>     Attrib V4    0.4294082768973319
#>     Attrib V40    -0.21419909914818064
#>     Attrib V41    -0.08332217466254212
#>     Attrib V42    0.14642087211596136
#>     Attrib V43    0.18684182779339967
#>     Attrib V44    0.37394147897813357
#>     Attrib V45    0.37078777785264716
#>     Attrib V46    0.32173159565954457
#>     Attrib V47    0.607764301638232
#>     Attrib V48    0.6274005486255713
#>     Attrib V49    0.8172944613134094
#>     Attrib V5    0.2208884238530543
#>     Attrib V50    -0.3973784613239324
#>     Attrib V51    0.7400738321958211
#>     Attrib V52    0.6035874507462408
#>     Attrib V53    0.0035454951090526806
#>     Attrib V54    0.5291056958122771
#>     Attrib V55    -0.5891043186573647
#>     Attrib V56    -6.712959967344393E-4
#>     Attrib V57    -0.45113716225980316
#>     Attrib V58    -9.938081805116498E-4
#>     Attrib V59    0.17265759540316938
#>     Attrib V6    -0.06651661683324556
#>     Attrib V60    0.2996303855009467
#>     Attrib V7    -0.6752015081468488
#>     Attrib V8    -0.8273511918150479
#>     Attrib V9    0.4457357007831489
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.08076684691829134
#>     Attrib V1    0.22832579714614187
#>     Attrib V10    -0.11128652958836932
#>     Attrib V11    0.16655178811236251
#>     Attrib V12    0.023025764806718568
#>     Attrib V13    -0.35385707654936227
#>     Attrib V14    -0.21714337357159327
#>     Attrib V15    0.21374280880375018
#>     Attrib V16    0.39285265285353604
#>     Attrib V17    0.24309558312676202
#>     Attrib V18    0.1033135499452358
#>     Attrib V19    0.0414541048524078
#>     Attrib V2    0.029151476400083934
#>     Attrib V20    0.2296830224396913
#>     Attrib V21    0.07455756464644557
#>     Attrib V22    -0.07382542659322003
#>     Attrib V23    0.09702749705317197
#>     Attrib V24    0.21736460978966585
#>     Attrib V25    -0.09260895626044319
#>     Attrib V26    -0.4727027322564648
#>     Attrib V27    -0.38981586798106327
#>     Attrib V28    -0.21447471704861046
#>     Attrib V29    -0.5005383403254482
#>     Attrib V3    -0.15565991009493474
#>     Attrib V30    -0.007390194790225895
#>     Attrib V31    -0.8067733030223541
#>     Attrib V32    0.20537583089976025
#>     Attrib V33    0.6424145234964603
#>     Attrib V34    0.2052845526167392
#>     Attrib V35    0.16934750948662944
#>     Attrib V36    -0.25461370236884306
#>     Attrib V37    -0.46738884394016084
#>     Attrib V38    -0.06176747707533247
#>     Attrib V39    -0.1554013734599407
#>     Attrib V4    0.19698502902610482
#>     Attrib V40    -0.26699992965385955
#>     Attrib V41    -0.11132644716960777
#>     Attrib V42    0.1400473113209607
#>     Attrib V43    0.02905959780262295
#>     Attrib V44    0.2530110914057475
#>     Attrib V45    0.32031538509416674
#>     Attrib V46    0.04062218144691647
#>     Attrib V47    -0.07856210357654758
#>     Attrib V48    0.26712044154644615
#>     Attrib V49    0.41243839842205526
#>     Attrib V5    -0.16833244765486896
#>     Attrib V50    -0.43919511602653555
#>     Attrib V51    0.11843312947913649
#>     Attrib V52    0.28839012850928347
#>     Attrib V53    0.09523883442664227
#>     Attrib V54    0.5359465899345869
#>     Attrib V55    -0.1635365964937089
#>     Attrib V56    0.045628764630768856
#>     Attrib V57    -0.011113612601544375
#>     Attrib V58    0.3047525642948162
#>     Attrib V59    0.4820588204426129
#>     Attrib V6    -0.11591335276118589
#>     Attrib V60    0.4308673077189485
#>     Attrib V7    -0.0998194297202611
#>     Attrib V8    -0.2923930056620052
#>     Attrib V9    0.018361008984574108
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    -0.04469634487068293
#>     Attrib V1    0.03591720821417808
#>     Attrib V10    0.7387380192295514
#>     Attrib V11    1.3808288341861794
#>     Attrib V12    1.334423825558279
#>     Attrib V13    0.21346930659860042
#>     Attrib V14    -0.694703165416138
#>     Attrib V15    -0.8596778429877406
#>     Attrib V16    -0.7068462338549079
#>     Attrib V17    -0.09717324644643241
#>     Attrib V18    0.14368335577962957
#>     Attrib V19    -0.2280435178183553
#>     Attrib V2    -0.08104520891661827
#>     Attrib V20    0.17509053792499354
#>     Attrib V21    0.2782754750865384
#>     Attrib V22    0.38848231264837124
#>     Attrib V23    0.6060387655294714
#>     Attrib V24    0.7859597783755179
#>     Attrib V25    1.0036555174384771
#>     Attrib V26    0.6497241830428413
#>     Attrib V27    0.7552276032166709
#>     Attrib V28    0.7238777424720131
#>     Attrib V29    -0.09505936408208014
#>     Attrib V3    -0.2506706328741801
#>     Attrib V30    0.5457571126564017
#>     Attrib V31    -0.8239892998527983
#>     Attrib V32    0.21097703704592236
#>     Attrib V33    0.10439140068079267
#>     Attrib V34    -0.42496277708207447
#>     Attrib V35    4.148996444019201E-4
#>     Attrib V36    -0.3672769820987488
#>     Attrib V37    -0.2266802292764623
#>     Attrib V38    0.19945261321125748
#>     Attrib V39    0.30990339545596385
#>     Attrib V4    0.4639577656668837
#>     Attrib V40    -0.18102054097354592
#>     Attrib V41    -0.15601826333172256
#>     Attrib V42    0.04971317003797718
#>     Attrib V43    0.29232744877110983
#>     Attrib V44    0.4091798997627564
#>     Attrib V45    0.34856902174069665
#>     Attrib V46    0.3953963791512066
#>     Attrib V47    0.8195694124523846
#>     Attrib V48    0.8309189634244943
#>     Attrib V49    0.9826146001282312
#>     Attrib V5    0.29877549738531767
#>     Attrib V50    -0.4046267723220582
#>     Attrib V51    0.9035621952416434
#>     Attrib V52    0.6983166353718144
#>     Attrib V53    0.14825056102816608
#>     Attrib V54    0.5370379360569021
#>     Attrib V55    -0.5726901076703672
#>     Attrib V56    0.10920012561642319
#>     Attrib V57    -0.5499903486241261
#>     Attrib V58    -0.0462226913130401
#>     Attrib V59    0.009132818236374572
#>     Attrib V6    -0.005866547469899865
#>     Attrib V60    0.19882792353123258
#>     Attrib V7    -0.7762945144110882
#>     Attrib V8    -0.9143805610389869
#>     Attrib V9    0.5230719966349976
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.43889149628722507
#>     Attrib V1    -0.19215854123632634
#>     Attrib V10    -0.36821974103483435
#>     Attrib V11    -1.2022882696334238
#>     Attrib V12    -1.0578883642668828
#>     Attrib V13    -0.19112097598503955
#>     Attrib V14    0.06908666656551322
#>     Attrib V15    0.24774445190044167
#>     Attrib V16    0.40902661081352293
#>     Attrib V17    0.27003830037484344
#>     Attrib V18    0.23225500983208439
#>     Attrib V19    0.5628856106922804
#>     Attrib V2    0.01001252417861215
#>     Attrib V20    0.13445804064329706
#>     Attrib V21    -0.09199526796962298
#>     Attrib V22    0.11321804262816458
#>     Attrib V23    0.23963396425142205
#>     Attrib V24    -0.18857407945045862
#>     Attrib V25    -0.217726291997487
#>     Attrib V26    -0.26270188740464234
#>     Attrib V27    -0.9308910479343191
#>     Attrib V28    -1.2284993629807814
#>     Attrib V29    -0.8455860532168296
#>     Attrib V3    0.2630709060942482
#>     Attrib V30    -0.804019945547476
#>     Attrib V31    0.6374288392604873
#>     Attrib V32    -0.22664050196321442
#>     Attrib V33    -0.08199888498134707
#>     Attrib V34    0.6634696299865979
#>     Attrib V35    0.41541362138768106
#>     Attrib V36    0.599559746924854
#>     Attrib V37    0.25413684751487914
#>     Attrib V38    -0.34191697593802733
#>     Attrib V39    -0.32681044165937084
#>     Attrib V4    -0.39742045695947675
#>     Attrib V40    0.24486343824290366
#>     Attrib V41    0.23471368430643783
#>     Attrib V42    0.023623268702719687
#>     Attrib V43    -0.12144838189528306
#>     Attrib V44    -0.13816617918747512
#>     Attrib V45    -0.26902678363213733
#>     Attrib V46    -0.34803717302226495
#>     Attrib V47    -0.4300371340778355
#>     Attrib V48    -0.5829860661332141
#>     Attrib V49    -0.7948942852907294
#>     Attrib V5    -0.24054842671455287
#>     Attrib V50    0.419765477140453
#>     Attrib V51    -0.6196885335902088
#>     Attrib V52    -0.46830997339027997
#>     Attrib V53    -0.1395118740893389
#>     Attrib V54    -0.6188529361842888
#>     Attrib V55    0.07387123348614148
#>     Attrib V56    0.16209556237877587
#>     Attrib V57    -0.0013024688722204731
#>     Attrib V58    -0.12899243845793187
#>     Attrib V59    -0.47817797020257397
#>     Attrib V6    0.09739491821740441
#>     Attrib V60    -0.25035554297025703
#>     Attrib V7    0.647210695798623
#>     Attrib V8    0.4022179121044936
#>     Attrib V9    -0.3830532965472072
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.004419263337785087
#>     Attrib V1    0.2592624166539192
#>     Attrib V10    -0.2401218912758914
#>     Attrib V11    0.020427838475022643
#>     Attrib V12    -0.06236046683445416
#>     Attrib V13    -0.52026625410747
#>     Attrib V14    -0.17192061875614723
#>     Attrib V15    0.3468521370585537
#>     Attrib V16    0.4934570261209554
#>     Attrib V17    0.34034380468092085
#>     Attrib V18    0.17330903007766515
#>     Attrib V19    0.051611283264373406
#>     Attrib V2    0.016393241598572895
#>     Attrib V20    0.3477181206539658
#>     Attrib V21    0.043192858200528754
#>     Attrib V22    -0.12025136383812418
#>     Attrib V23    0.11047841779938636
#>     Attrib V24    0.20840085310946962
#>     Attrib V25    -0.12350324849891949
#>     Attrib V26    -0.6376798689226483
#>     Attrib V27    -0.5282440294968194
#>     Attrib V28    -0.3524851361709885
#>     Attrib V29    -0.6739649833450739
#>     Attrib V3    -0.18648427619222865
#>     Attrib V30    -0.0989034061163318
#>     Attrib V31    -0.9218097201276284
#>     Attrib V32    0.18300905405830672
#>     Attrib V33    0.7279810162556721
#>     Attrib V34    0.3768110788194056
#>     Attrib V35    0.29884637022547517
#>     Attrib V36    -0.2602563946660405
#>     Attrib V37    -0.5471961551792938
#>     Attrib V38    -0.13202239125068327
#>     Attrib V39    -0.23340159161300816
#>     Attrib V4    0.1290566620474832
#>     Attrib V40    -0.29086463011156477
#>     Attrib V41    -0.12533338107135633
#>     Attrib V42    0.2690517895946937
#>     Attrib V43    0.04051198487173991
#>     Attrib V44    0.26104462054614336
#>     Attrib V45    0.3815901350751614
#>     Attrib V46    -0.016574419041598752
#>     Attrib V47    -0.166994250499401
#>     Attrib V48    0.19928867750507698
#>     Attrib V49    0.36448035750213953
#>     Attrib V5    -0.19717934827668857
#>     Attrib V50    -0.41171677901170245
#>     Attrib V51    0.14564589617459706
#>     Attrib V52    0.2652162055876313
#>     Attrib V53    0.07033798161262464
#>     Attrib V54    0.6661046619691285
#>     Attrib V55    -0.10446130018690195
#>     Attrib V56    0.11660481336185281
#>     Attrib V57    -0.03509070911674208
#>     Attrib V58    0.42932767130862426
#>     Attrib V59    0.4975676543859642
#>     Attrib V6    -0.0728407685882676
#>     Attrib V60    0.4721671793392819
#>     Attrib V7    -0.06697248598198155
#>     Attrib V8    -0.20102319751756711
#>     Attrib V9    -0.017421671648654165
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.2172591832089916
#>     Attrib V1    0.36602790499615445
#>     Attrib V10    -0.32131822169974944
#>     Attrib V11    0.20499627691669364
#>     Attrib V12    -0.0602663709050998
#>     Attrib V13    -0.5637660006654713
#>     Attrib V14    -0.15317254532868319
#>     Attrib V15    0.38818250356261136
#>     Attrib V16    0.5694194224412392
#>     Attrib V17    0.3580218054529433
#>     Attrib V18    0.1758924498956246
#>     Attrib V19    0.09093493008287473
#>     Attrib V2    0.0946180922031727
#>     Attrib V20    0.41598837263723504
#>     Attrib V21    0.1517622687977672
#>     Attrib V22    -0.02325291371937237
#>     Attrib V23    0.19971244532795418
#>     Attrib V24    0.25346203995088823
#>     Attrib V25    -0.2384343691289416
#>     Attrib V26    -0.798426657963188
#>     Attrib V27    -0.4915126363588475
#>     Attrib V28    -0.16000294752739488
#>     Attrib V29    -0.4398275924250958
#>     Attrib V3    -0.28213286191175807
#>     Attrib V30    0.09278903730894078
#>     Attrib V31    -1.2977336308360736
#>     Attrib V32    0.17513950431169387
#>     Attrib V33    0.909566709023546
#>     Attrib V34    0.30731567858352526
#>     Attrib V35    0.2720933978824876
#>     Attrib V36    -0.34441477631571116
#>     Attrib V37    -0.6205264465908759
#>     Attrib V38    -0.04414957811592835
#>     Attrib V39    -0.23448988242804597
#>     Attrib V4    0.23968180442688483
#>     Attrib V40    -0.38560407439091443
#>     Attrib V41    -0.11739618979808722
#>     Attrib V42    0.36112666440781216
#>     Attrib V43    0.14002480843979634
#>     Attrib V44    0.3138164842035759
#>     Attrib V45    0.5260832841035488
#>     Attrib V46    0.033210567457102415
#>     Attrib V47    -0.2514804652628104
#>     Attrib V48    0.27197092314843696
#>     Attrib V49    0.5256725731544372
#>     Attrib V5    -0.22112300592578937
#>     Attrib V50    -0.6395321670981229
#>     Attrib V51    0.17841022607402904
#>     Attrib V52    0.44572609532694535
#>     Attrib V53    0.1049930938190326
#>     Attrib V54    0.8220272829911057
#>     Attrib V55    -0.24996326170665686
#>     Attrib V56    0.09656298564827225
#>     Attrib V57    -0.05513084069909149
#>     Attrib V58    0.5251802077365219
#>     Attrib V59    0.7972521958247839
#>     Attrib V6    -0.16191430730226503
#>     Attrib V60    0.5661239504915482
#>     Attrib V7    -0.12173731598090354
#>     Attrib V8    -0.32751320816041346
#>     Attrib V9    -0.045043292680584185
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.19018481673177057
#>     Attrib V1    0.10322190437538048
#>     Attrib V10    -0.04274544929640843
#>     Attrib V11    0.03605736070277432
#>     Attrib V12    0.01121487882713051
#>     Attrib V13    -0.01642731715808161
#>     Attrib V14    0.008409183624083319
#>     Attrib V15    0.03807955848264385
#>     Attrib V16    0.03972487590231215
#>     Attrib V17    0.0871632116289254
#>     Attrib V18    0.04830308151657279
#>     Attrib V19    -0.02043044173858829
#>     Attrib V2    0.05361677983848682
#>     Attrib V20    0.0790119878661474
#>     Attrib V21    0.0044155344413142296
#>     Attrib V22    -0.0856161704838892
#>     Attrib V23    0.025023366373159175
#>     Attrib V24    0.015369494538288182
#>     Attrib V25    -0.006229459106705187
#>     Attrib V26    -0.15541346308726942
#>     Attrib V27    -0.034041907623545
#>     Attrib V28    -0.05711731636857973
#>     Attrib V29    -0.08424747555280554
#>     Attrib V3    0.10677422638865745
#>     Attrib V30    0.005782699680082537
#>     Attrib V31    -0.2312665086518394
#>     Attrib V32    0.0478000382552035
#>     Attrib V33    0.14094133291944427
#>     Attrib V34    0.09762022549809676
#>     Attrib V35    0.06463710109779465
#>     Attrib V36    -0.032225387756510133
#>     Attrib V37    -0.010104213815471656
#>     Attrib V38    0.022735895989571965
#>     Attrib V39    0.060669677291007355
#>     Attrib V4    0.15370934900303976
#>     Attrib V40    -0.0035129248287372314
#>     Attrib V41    0.0020654522666494098
#>     Attrib V42    0.07995949903829074
#>     Attrib V43    -0.009858343503877742
#>     Attrib V44    0.06869135257761991
#>     Attrib V45    0.029715537937263385
#>     Attrib V46    0.038320855014299375
#>     Attrib V47    0.029375502006438844
#>     Attrib V48    0.04091559105481005
#>     Attrib V49    0.1349946547133042
#>     Attrib V5    0.04972452102010077
#>     Attrib V50    -0.0732975463769762
#>     Attrib V51    0.06987122550929802
#>     Attrib V52    0.07227893620104095
#>     Attrib V53    0.07585433269016599
#>     Attrib V54    0.10129920644490531
#>     Attrib V55    0.027911535725462497
#>     Attrib V56    0.06896640438878303
#>     Attrib V57    0.07592067490673943
#>     Attrib V58    0.12611171296737103
#>     Attrib V59    0.19987215345485937
#>     Attrib V6    8.256129865012743E-4
#>     Attrib V60    0.2133083949437044
#>     Attrib V7    -0.01270852693887872
#>     Attrib V8    -0.11136891482124214
#>     Attrib V9    0.016954851018213212
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.07318865090960108
#>     Attrib V1    0.3518237627061448
#>     Attrib V10    -0.20139049234824538
#>     Attrib V11    0.13158428390077895
#>     Attrib V12    -0.05633310390463995
#>     Attrib V13    -0.6166544445974125
#>     Attrib V14    -0.331759434544663
#>     Attrib V15    0.41409828807794913
#>     Attrib V16    0.5600127591340032
#>     Attrib V17    0.35542723227790146
#>     Attrib V18    0.1450157478043951
#>     Attrib V19    0.0318052711410569
#>     Attrib V2    0.044563318371241
#>     Attrib V20    0.307594694948299
#>     Attrib V21    0.009668940119055922
#>     Attrib V22    -0.1258454617231769
#>     Attrib V23    0.19450040086029158
#>     Attrib V24    0.31133383654161867
#>     Attrib V25    -0.09088484952771997
#>     Attrib V26    -0.6642423004031835
#>     Attrib V27    -0.6731336694080613
#>     Attrib V28    -0.5789058441348012
#>     Attrib V29    -1.0317951536610541
#>     Attrib V3    -0.28650530294354964
#>     Attrib V30    -0.1891168018651602
#>     Attrib V31    -1.0424949947646873
#>     Attrib V32    0.32404378577355275
#>     Attrib V33    0.9753405005038183
#>     Attrib V34    0.44207461983832796
#>     Attrib V35    0.367627980464902
#>     Attrib V36    -0.3926349976872726
#>     Attrib V37    -0.6838001190446632
#>     Attrib V38    -0.2781549322177634
#>     Attrib V39    -0.2839198450939012
#>     Attrib V4    0.08802551768220325
#>     Attrib V40    -0.35079860308713173
#>     Attrib V41    -0.1849992448621352
#>     Attrib V42    0.2428239296329851
#>     Attrib V43    0.019604380232399982
#>     Attrib V44    0.3481656905446096
#>     Attrib V45    0.39862463761492073
#>     Attrib V46    0.038206419570485
#>     Attrib V47    -0.18937863421803616
#>     Attrib V48    0.3416490375150834
#>     Attrib V49    0.5379124174084997
#>     Attrib V5    -0.3393046354875806
#>     Attrib V50    -0.5582633351030605
#>     Attrib V51    0.0852089777998237
#>     Attrib V52    0.33122189731954316
#>     Attrib V53    0.007871382033732404
#>     Attrib V54    0.8583104512649845
#>     Attrib V55    -0.14155207905876868
#>     Attrib V56    0.19144303366929402
#>     Attrib V57    -0.09084460271492421
#>     Attrib V58    0.5144704356984366
#>     Attrib V59    0.6158632408515843
#>     Attrib V6    -0.09566300469687952
#>     Attrib V60    0.6039203772470937
#>     Attrib V7    0.008960910758574202
#>     Attrib V8    -0.2977377010184334
#>     Attrib V9    0.01886622690295924
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.37942102489794505
#>     Attrib V1    -0.12422469617819452
#>     Attrib V10    -0.1820791562877468
#>     Attrib V11    -0.8495893764559012
#>     Attrib V12    -0.4920787565451455
#>     Attrib V13    0.2983010298743751
#>     Attrib V14    0.434981010988301
#>     Attrib V15    0.15044817970657087
#>     Attrib V16    0.005390858505885966
#>     Attrib V17    -0.05253043238655678
#>     Attrib V18    0.008240350958817885
#>     Attrib V19    0.26851524974133223
#>     Attrib V2    0.09187494280604723
#>     Attrib V20    -0.1937890644836077
#>     Attrib V21    -0.10811039409407085
#>     Attrib V22    0.10057991588580435
#>     Attrib V23    -0.12276732490652278
#>     Attrib V24    -0.389537727599271
#>     Attrib V25    -0.08343022627232856
#>     Attrib V26    0.38332007735587065
#>     Attrib V27    -0.056602418890975184
#>     Attrib V28    -0.39847559254683246
#>     Attrib V29    0.13434232356531764
#>     Attrib V3    0.497293818757072
#>     Attrib V30    -0.5923292267062368
#>     Attrib V31    1.0648396988503073
#>     Attrib V32    -0.3286486512394876
#>     Attrib V33    -0.7382571969402434
#>     Attrib V34    0.10886046284371323
#>     Attrib V35    -0.03460352838469274
#>     Attrib V36    0.6258192705945052
#>     Attrib V37    0.743594928848253
#>     Attrib V38    -0.021824244196156667
#>     Attrib V39    0.0711107363593427
#>     Attrib V4    -0.17126715683265464
#>     Attrib V40    0.4493675485774339
#>     Attrib V41    0.27351385457407695
#>     Attrib V42    -0.22915691691176768
#>     Attrib V43    -0.12951063405777782
#>     Attrib V44    -0.42253618436572243
#>     Attrib V45    -0.5225360911932035
#>     Attrib V46    -0.10497772327529535
#>     Attrib V47    -0.0534015601256106
#>     Attrib V48    -0.5145647985630666
#>     Attrib V49    -0.8371225007153038
#>     Attrib V5    0.18531397516429204
#>     Attrib V50    0.8898332066640352
#>     Attrib V51    -0.3158014092796372
#>     Attrib V52    -0.5364441821487342
#>     Attrib V53    0.11715220474608276
#>     Attrib V54    -0.6504046860370369
#>     Attrib V55    0.43238675966797974
#>     Attrib V56    0.11531355261953867
#>     Attrib V57    0.40568439346867746
#>     Attrib V58    -0.29912960107861014
#>     Attrib V59    -0.47034049011707213
#>     Attrib V6    0.03566359103650975
#>     Attrib V60    -0.2237832777370766
#>     Attrib V7    0.33901086713229334
#>     Attrib V8    0.4968660520536543
#>     Attrib V9    -0.2528183695168578
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.0854516546249272
#>     Attrib V1    0.18337112378795065
#>     Attrib V10    -0.1099565073062622
#>     Attrib V11    0.015199614621845185
#>     Attrib V12    -0.023086167296778533
#>     Attrib V13    -0.18199323336995918
#>     Attrib V14    -0.04886794172043825
#>     Attrib V15    0.17713430412687037
#>     Attrib V16    0.28534924553612623
#>     Attrib V17    0.18744603787733097
#>     Attrib V18    0.1127982586256711
#>     Attrib V19    0.012662115332006946
#>     Attrib V2    0.012150385500003231
#>     Attrib V20    0.07820542731316961
#>     Attrib V21    -0.056292807285147343
#>     Attrib V22    -0.15518479629744264
#>     Attrib V23    -0.08302326499288099
#>     Attrib V24    0.05586269598620336
#>     Attrib V25    -0.1025797684409543
#>     Attrib V26    -0.3432606682669283
#>     Attrib V27    -0.26021199164738706
#>     Attrib V28    -0.1612866008776168
#>     Attrib V29    -0.315540014671393
#>     Attrib V3    -0.0076154189477847635
#>     Attrib V30    -0.10396622126383676
#>     Attrib V31    -0.4517897220283671
#>     Attrib V32    0.1334003783527121
#>     Attrib V33    0.34704935902799444
#>     Attrib V34    0.1709156207245115
#>     Attrib V35    0.09271813483433256
#>     Attrib V36    -0.16271162765669925
#>     Attrib V37    -0.20389081963501743
#>     Attrib V38    -0.04334712652219836
#>     Attrib V39    -0.06021176480288146
#>     Attrib V4    0.1476861519848941
#>     Attrib V40    -0.14530813370431622
#>     Attrib V41    -0.04609629715037228
#>     Attrib V42    0.1434667195842721
#>     Attrib V43    -0.0035129181660643605
#>     Attrib V44    0.05750963340085851
#>     Attrib V45    0.1471180278779425
#>     Attrib V46    0.02114005559556635
#>     Attrib V47    -0.0774575004917128
#>     Attrib V48    0.09106765355025141
#>     Attrib V49    0.16542649565397563
#>     Attrib V5    -0.06650874630904322
#>     Attrib V50    -0.15052565882410351
#>     Attrib V51    0.13187068681888914
#>     Attrib V52    0.2090691574829938
#>     Attrib V53    0.1521983826698757
#>     Attrib V54    0.3093031495716669
#>     Attrib V55    0.03253182488722553
#>     Attrib V56    0.08049419124554003
#>     Attrib V57    0.0833028441346151
#>     Attrib V58    0.2853929361995992
#>     Attrib V59    0.28522019122984843
#>     Attrib V6    -0.05056265245740126
#>     Attrib V60    0.3075063246847217
#>     Attrib V7    -0.06326844443252048
#>     Attrib V8    -0.1607370781883377
#>     Attrib V9    0.01876342289777787
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.1396654683852362
#>     Attrib V1    -0.0021220039650090504
#>     Attrib V10    0.022901491094171764
#>     Attrib V11    -0.14076831961796796
#>     Attrib V12    -0.15954627351759837
#>     Attrib V13    -0.007479586788649343
#>     Attrib V14    0.03176170311336838
#>     Attrib V15    0.012998608898958723
#>     Attrib V16    -0.04919422395136709
#>     Attrib V17    -0.01948743206710552
#>     Attrib V18    0.036010269579289156
#>     Attrib V19    0.060739354866057145
#>     Attrib V2    0.12692625470929014
#>     Attrib V20    -0.09128149906824713
#>     Attrib V21    -0.051921280261151836
#>     Attrib V22    0.06753524841161672
#>     Attrib V23    -0.00725196079903535
#>     Attrib V24    -0.03575500952453255
#>     Attrib V25    -0.03961000716326794
#>     Attrib V26    -0.021181504300307918
#>     Attrib V27    -0.06940877561688963
#>     Attrib V28    -0.1131261043445427
#>     Attrib V29    -0.0027451455654360756
#>     Attrib V3    0.12732809186270455
#>     Attrib V30    -0.004906870568507141
#>     Attrib V31    0.338422880480711
#>     Attrib V32    -0.025911681057033814
#>     Attrib V33    -0.02808343845779214
#>     Attrib V34    0.04345784631792248
#>     Attrib V35    0.1320444124808939
#>     Attrib V36    0.19210202479053204
#>     Attrib V37    0.1655925008686389
#>     Attrib V38    0.06846686973097865
#>     Attrib V39    0.07017143070493374
#>     Attrib V4    0.01847910340202289
#>     Attrib V40    0.12475313034865108
#>     Attrib V41    0.15080466893798522
#>     Attrib V42    0.04134016374600604
#>     Attrib V43    0.09910275700675224
#>     Attrib V44    0.030178253210968817
#>     Attrib V45    -0.05459254398410326
#>     Attrib V46    -0.05863907856562805
#>     Attrib V47    -0.027472294219632713
#>     Attrib V48    -0.04501673870232481
#>     Attrib V49    -0.15726174787398234
#>     Attrib V5    0.048020699361653
#>     Attrib V50    0.22247721018026115
#>     Attrib V51    -0.0039212359584914255
#>     Attrib V52    -0.12616386512563257
#>     Attrib V53    0.009969742779651366
#>     Attrib V54    -0.14725124709926946
#>     Attrib V55    0.13325643528575304
#>     Attrib V56    0.0803335886116882
#>     Attrib V57    0.16252904448493966
#>     Attrib V58    -0.02309386006335818
#>     Attrib V59    -0.10257264405626312
#>     Attrib V6    0.037467735583845974
#>     Attrib V60    -0.010635289623698797
#>     Attrib V7    0.04495018698819519
#>     Attrib V8    0.1486069913387608
#>     Attrib V9    -0.009045197504565014
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.2852561349212267
#>     Attrib V1    -0.032281573413922335
#>     Attrib V10    -0.13448267895820043
#>     Attrib V11    -0.49031013642492577
#>     Attrib V12    -0.4263945830971656
#>     Attrib V13    0.023597199814181482
#>     Attrib V14    0.15980157767413375
#>     Attrib V15    -0.04128899057636976
#>     Attrib V16    -0.09213895172466746
#>     Attrib V17    -0.1605002353132917
#>     Attrib V18    0.0119407251678595
#>     Attrib V19    0.030178906223475917
#>     Attrib V2    0.11941062418360537
#>     Attrib V20    -0.09086164653110686
#>     Attrib V21    -0.029210001313671293
#>     Attrib V22    0.0010222767032657754
#>     Attrib V23    0.0029886493215987614
#>     Attrib V24    -0.1439163426548796
#>     Attrib V25    -0.0168202982234291
#>     Attrib V26    0.12392933407493907
#>     Attrib V27    -0.02622251407443762
#>     Attrib V28    -0.1794761272883196
#>     Attrib V29    0.10442204251964755
#>     Attrib V3    0.29920030087249594
#>     Attrib V30    -0.26125596408307067
#>     Attrib V31    0.5071090086595584
#>     Attrib V32    -0.11273263906988151
#>     Attrib V33    -0.2955479139858767
#>     Attrib V34    0.07773474385436377
#>     Attrib V35    0.02074308484356525
#>     Attrib V36    0.39646673608390737
#>     Attrib V37    0.3443670866266612
#>     Attrib V38    -0.029869827291209447
#>     Attrib V39    0.030177851952692254
#>     Attrib V4    -0.10274087736902382
#>     Attrib V40    0.16563878286274683
#>     Attrib V41    0.08034979543448095
#>     Attrib V42    -0.06322395933901191
#>     Attrib V43    -0.030586451002493912
#>     Attrib V44    -0.11698183419590996
#>     Attrib V45    -0.3089789547696803
#>     Attrib V46    -0.12594652909078444
#>     Attrib V47    -0.015993743457351477
#>     Attrib V48    -0.25253592235697275
#>     Attrib V49    -0.3517423750486916
#>     Attrib V5    0.017399977256150854
#>     Attrib V50    0.41418546647779025
#>     Attrib V51    -0.04035821693484232
#>     Attrib V52    -0.19961012307734474
#>     Attrib V53    0.09936753096106084
#>     Attrib V54    -0.29056330065120434
#>     Attrib V55    0.22778507177232662
#>     Attrib V56    0.08388803595875115
#>     Attrib V57    0.14842778462925293
#>     Attrib V58    -0.06763639342863423
#>     Attrib V59    -0.1863490398743713
#>     Attrib V6    -0.06270222323260419
#>     Attrib V60    -0.05190463525443932
#>     Attrib V7    0.16694889909126898
#>     Attrib V8    0.22957373924016736
#>     Attrib V9    -0.14764695898367478
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.08032081150218101
#>     Attrib V1    0.28012224647969386
#>     Attrib V10    -0.06593613809238703
#>     Attrib V11    0.4193264405594859
#>     Attrib V12    0.3073089326564045
#>     Attrib V13    -0.5022791869567729
#>     Attrib V14    -0.4129311739138706
#>     Attrib V15    0.2175017334448104
#>     Attrib V16    0.3530108507598736
#>     Attrib V17    0.38192233789244884
#>     Attrib V18    0.28202544815402575
#>     Attrib V19    0.17217949322650625
#>     Attrib V2    0.04701350138069024
#>     Attrib V20    0.5005190096767211
#>     Attrib V21    0.24380334368922427
#>     Attrib V22    0.21355719142138466
#>     Attrib V23    0.435694857971484
#>     Attrib V24    0.5341205192326737
#>     Attrib V25    0.19327236539452697
#>     Attrib V26    -0.44331979367401897
#>     Attrib V27    -0.35440141323329893
#>     Attrib V28    -0.14213455283902435
#>     Attrib V29    -0.746038370502566
#>     Attrib V3    -0.32674811999635067
#>     Attrib V30    0.04791704681324662
#>     Attrib V31    -1.4029834521124178
#>     Attrib V32    0.17165104149036284
#>     Attrib V33    0.9059307596089985
#>     Attrib V34    0.37693619707394377
#>     Attrib V35    0.600582566035323
#>     Attrib V36    -0.07626102650533018
#>     Attrib V37    -0.4394341708023004
#>     Attrib V38    0.049482322607743844
#>     Attrib V39    -0.14449555670938752
#>     Attrib V4    0.267835192071454
#>     Attrib V40    -0.40137608885205905
#>     Attrib V41    -0.1539882365937398
#>     Attrib V42    0.3785273366391439
#>     Attrib V43    0.15950858071948415
#>     Attrib V44    0.47024451746785245
#>     Attrib V45    0.6003406386312602
#>     Attrib V46    0.03735683952664327
#>     Attrib V47    -0.21080982049555955
#>     Attrib V48    0.24039428256268058
#>     Attrib V49    0.6651101392721845
#>     Attrib V5    -0.1832784891590418
#>     Attrib V50    -0.7393524404060625
#>     Attrib V51    0.23959456573775617
#>     Attrib V52    0.48130518956109186
#>     Attrib V53    0.10212455950432363
#>     Attrib V54    0.8892084927574995
#>     Attrib V55    -0.3388950730501371
#>     Attrib V56    0.05643552169528445
#>     Attrib V57    -0.41019576343573233
#>     Attrib V58    0.5201405456406375
#>     Attrib V59    0.5710372649444613
#>     Attrib V6    -0.04857219456824204
#>     Attrib V60    0.5957330840162924
#>     Attrib V7    -0.13964018968492617
#>     Attrib V8    -0.5786570256862376
#>     Attrib V9    0.09674976553975645
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.04976130445034401
#>     Attrib V1    0.35500542557050013
#>     Attrib V10    0.19249844570587457
#>     Attrib V11    0.5957412646252959
#>     Attrib V12    0.4288614314859562
#>     Attrib V13    -0.3664034106205297
#>     Attrib V14    -0.4691789694827035
#>     Attrib V15    -0.016197478456222426
#>     Attrib V16    0.0999793291385367
#>     Attrib V17    0.2890197001476449
#>     Attrib V18    0.30393690015513536
#>     Attrib V19    0.20747247589460244
#>     Attrib V2    0.07714064512702036
#>     Attrib V20    0.6434837146409113
#>     Attrib V21    0.5003683216188448
#>     Attrib V22    0.4890810890994666
#>     Attrib V23    0.65135485324922
#>     Attrib V24    0.5756460174791661
#>     Attrib V25    0.3385500750183762
#>     Attrib V26    -0.10612309488303939
#>     Attrib V27    0.005343958634316265
#>     Attrib V28    0.16228609307632438
#>     Attrib V29    -0.36404399378403035
#>     Attrib V3    -0.2548752710852398
#>     Attrib V30    0.3484030721180582
#>     Attrib V31    -1.3326257141435298
#>     Attrib V32    0.07700616474055098
#>     Attrib V33    0.6748339396692511
#>     Attrib V34    0.23046571552860587
#>     Attrib V35    0.6337523114136216
#>     Attrib V36    0.1706928438170124
#>     Attrib V37    -0.0397054252034636
#>     Attrib V38    0.3397869866635214
#>     Attrib V39    -0.046271299689236774
#>     Attrib V4    0.2987673013831628
#>     Attrib V40    -0.44370079164393933
#>     Attrib V41    -0.11769312299863868
#>     Attrib V42    0.257147012367051
#>     Attrib V43    0.23143344525688606
#>     Attrib V44    0.6089764564042909
#>     Attrib V45    0.511054992581729
#>     Attrib V46    -0.024349218384080173
#>     Attrib V47    -0.1865195625364994
#>     Attrib V48    0.15145963013251365
#>     Attrib V49    0.58053519672335
#>     Attrib V5    -0.04184119289001701
#>     Attrib V50    -0.6859360607402556
#>     Attrib V51    0.4385083971935181
#>     Attrib V52    0.4049515313064921
#>     Attrib V53    -0.002338873108067708
#>     Attrib V54    0.7173660501284581
#>     Attrib V55    -0.5172086101170413
#>     Attrib V56    0.07396551327341197
#>     Attrib V57    -0.6524397141592058
#>     Attrib V58    0.34299992820776937
#>     Attrib V59    0.45349117787927634
#>     Attrib V6    0.01793731833493967
#>     Attrib V60    0.534399744688039
#>     Attrib V7    -0.2422038602926831
#>     Attrib V8    -0.7724440712975207
#>     Attrib V9    0.26388893299516775
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.3524360228889914
#>     Attrib V1    -0.07496686808559443
#>     Attrib V10    -0.19481939811339538
#>     Attrib V11    -0.9319504288713449
#>     Attrib V12    -0.5765478299595023
#>     Attrib V13    0.3141091840177347
#>     Attrib V14    0.4957629148234021
#>     Attrib V15    0.16683772982576645
#>     Attrib V16    0.043972682012038196
#>     Attrib V17    -0.008411510863777677
#>     Attrib V18    0.06628365654271803
#>     Attrib V19    0.26375943469843804
#>     Attrib V2    0.12426896208281146
#>     Attrib V20    -0.20148498242029603
#>     Attrib V21    -0.022704017942137833
#>     Attrib V22    0.05338776899237339
#>     Attrib V23    -0.17853307602600765
#>     Attrib V24    -0.4584245161594401
#>     Attrib V25    -0.10815864384176237
#>     Attrib V26    0.32365881269806274
#>     Attrib V27    -0.10138908225636176
#>     Attrib V28    -0.5538385115281008
#>     Attrib V29    0.005068288249641021
#>     Attrib V3    0.5007487793559402
#>     Attrib V30    -0.732584218436616
#>     Attrib V31    1.163888206149993
#>     Attrib V32    -0.4045776562898879
#>     Attrib V33    -0.8481056006203787
#>     Attrib V34    0.01947870014893853
#>     Attrib V35    -0.11107202704600233
#>     Attrib V36    0.5865530071799991
#>     Attrib V37    0.752748297804021
#>     Attrib V38    -0.08397017264157078
#>     Attrib V39    0.07545783373506885
#>     Attrib V4    -0.15796547904245936
#>     Attrib V40    0.5431546514986998
#>     Attrib V41    0.3568668744694145
#>     Attrib V42    -0.27236856886559857
#>     Attrib V43    -0.12943813402540588
#>     Attrib V44    -0.45546833280195337
#>     Attrib V45    -0.6717830104165979
#>     Attrib V46    -0.16599845492955703
#>     Attrib V47    -0.029058274854655664
#>     Attrib V48    -0.4626633110388285
#>     Attrib V49    -0.9049446494286496
#>     Attrib V5    0.22554174339704866
#>     Attrib V50    0.9912200841563871
#>     Attrib V51    -0.32459157333871763
#>     Attrib V52    -0.5365396886451335
#>     Attrib V53    0.10673342196040604
#>     Attrib V54    -0.6912836093217706
#>     Attrib V55    0.44251550622634406
#>     Attrib V56    0.12812490813919045
#>     Attrib V57    0.5923586314000133
#>     Attrib V58    -0.30527453361271323
#>     Attrib V59    -0.45003836783001494
#>     Attrib V6    0.08834377372537999
#>     Attrib V60    -0.13217213685961512
#>     Attrib V7    0.4972441203596822
#>     Attrib V8    0.5101700444436472
#>     Attrib V9    -0.2319768045105707
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.09111518755323945
#>     Attrib V1    0.22916972548870132
#>     Attrib V10    -0.06548501297655267
#>     Attrib V11    0.05168558053010453
#>     Attrib V12    -8.725851964679314E-4
#>     Attrib V13    -0.18387036061333623
#>     Attrib V14    0.02524875677258577
#>     Attrib V15    0.14325115762909227
#>     Attrib V16    0.25253507816588194
#>     Attrib V17    0.1328339890570357
#>     Attrib V18    0.040983522417788805
#>     Attrib V19    -0.05882454695483487
#>     Attrib V2    0.08533592190600241
#>     Attrib V20    0.07234412334187787
#>     Attrib V21    -0.0773853013489606
#>     Attrib V22    -0.19559912042171027
#>     Attrib V23    -0.12847774291597444
#>     Attrib V24    0.00966807617061326
#>     Attrib V25    -0.15423220818511377
#>     Attrib V26    -0.3174658611506075
#>     Attrib V27    -0.22626765856690806
#>     Attrib V28    -0.1798339736569507
#>     Attrib V29    -0.20584814343468164
#>     Attrib V3    -0.01790636406794205
#>     Attrib V30    -0.053876499456273465
#>     Attrib V31    -0.290670711583297
#>     Attrib V32    0.10210482820311034
#>     Attrib V33    0.26860912104245627
#>     Attrib V34    0.09356876416370997
#>     Attrib V35    0.07260081088069108
#>     Attrib V36    -0.13974930729106638
#>     Attrib V37    -0.1777864909071125
#>     Attrib V38    -0.06904138183852643
#>     Attrib V39    -0.07491646131482971
#>     Attrib V4    0.15519567869319198
#>     Attrib V40    -0.08025131061248648
#>     Attrib V41    -0.10251951597397231
#>     Attrib V42    0.051012405476741705
#>     Attrib V43    0.04456607269503562
#>     Attrib V44    0.06420753257433523
#>     Attrib V45    0.05890924100706735
#>     Attrib V46    0.04098811440299976
#>     Attrib V47    -0.08078128734165449
#>     Attrib V48    0.13940003194862155
#>     Attrib V49    0.18463522971496305
#>     Attrib V5    -0.024420148337882894
#>     Attrib V50    -0.13929365470281807
#>     Attrib V51    0.08686790173511556
#>     Attrib V52    0.17314730218823574
#>     Attrib V53    0.08696517964862586
#>     Attrib V54    0.2986618271214398
#>     Attrib V55    0.06856316710157759
#>     Attrib V56    0.10972101419716597
#>     Attrib V57    0.10736582813711068
#>     Attrib V58    0.2727901397172254
#>     Attrib V59    0.2935567182539408
#>     Attrib V6    -0.03991714536557737
#>     Attrib V60    0.31045089144256177
#>     Attrib V7    -0.0475039056067496
#>     Attrib V8    -0.14759402281510228
#>     Attrib V9    0.02408146557525723
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.04399638224649534
#>     Attrib V1    0.30740192318797177
#>     Attrib V10    -0.24264989766657966
#>     Attrib V11    0.20996520175832553
#>     Attrib V12    0.05565965256960887
#>     Attrib V13    -0.6178924540996853
#>     Attrib V14    -0.37596912467186355
#>     Attrib V15    0.333427698985376
#>     Attrib V16    0.5565260249424865
#>     Attrib V17    0.4789147303711741
#>     Attrib V18    0.26829014781206095
#>     Attrib V19    0.1493270624092059
#>     Attrib V2    -0.017042837530458477
#>     Attrib V20    0.3952329455523619
#>     Attrib V21    0.07630376777217644
#>     Attrib V22    0.008248507858061409
#>     Attrib V23    0.3226348534768655
#>     Attrib V24    0.4067515759593287
#>     Attrib V25    0.026095074433823435
#>     Attrib V26    -0.5581285665062403
#>     Attrib V27    -0.6106252393482122
#>     Attrib V28    -0.5059821345072945
#>     Attrib V29    -1.05782308902754
#>     Attrib V3    -0.2466231917526539
#>     Attrib V30    -0.2127316627854916
#>     Attrib V31    -1.3279097833796838
#>     Attrib V32    0.2475079023172265
#>     Attrib V33    0.9601293927631095
#>     Attrib V34    0.49640268395862364
#>     Attrib V35    0.562604129090521
#>     Attrib V36    -0.1613283519262199
#>     Attrib V37    -0.5420184371591202
#>     Attrib V38    -0.17653874882291223
#>     Attrib V39    -0.2809540794447568
#>     Attrib V4    0.21626979873730823
#>     Attrib V40    -0.4388198028578943
#>     Attrib V41    -0.13904648933304664
#>     Attrib V42    0.3511012773519983
#>     Attrib V43    0.15408251750319749
#>     Attrib V44    0.39897637693767773
#>     Attrib V45    0.5158641630329528
#>     Attrib V46    -5.974688622788498E-5
#>     Attrib V47    -0.21964189830179712
#>     Attrib V48    0.17794213984486693
#>     Attrib V49    0.5156578593244362
#>     Attrib V5    -0.28819526043936927
#>     Attrib V50    -0.6578909595392297
#>     Attrib V51    0.11085774008738343
#>     Attrib V52    0.45622874159051136
#>     Attrib V53    0.14253388681395285
#>     Attrib V54    0.8919944271171676
#>     Attrib V55    -0.20694812787213387
#>     Attrib V56    0.16695402636259477
#>     Attrib V57    -0.22373869790973977
#>     Attrib V58    0.5608915830484125
#>     Attrib V59    0.695392819549664
#>     Attrib V6    -0.09884931820172267
#>     Attrib V60    0.6389966281096207
#>     Attrib V7    -0.051458618335412744
#>     Attrib V8    -0.4107838217978087
#>     Attrib V9    0.011341738840183883
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.2947255032047664
#>     Attrib V1    -0.0863844628384116
#>     Attrib V10    -0.13265780207909522
#>     Attrib V11    -0.6598378040922851
#>     Attrib V12    -0.4590397760595794
#>     Attrib V13    0.2013497038043473
#>     Attrib V14    0.37086100827560475
#>     Attrib V15    0.15137278223011014
#>     Attrib V16    0.010942594921542098
#>     Attrib V17    0.03645664340044068
#>     Attrib V18    0.04098128895856388
#>     Attrib V19    0.2212722338564736
#>     Attrib V2    0.11795121470459184
#>     Attrib V20    -0.11432270828702226
#>     Attrib V21    -0.024574336113009524
#>     Attrib V22    0.032002674648723126
#>     Attrib V23    -0.07225660996262753
#>     Attrib V24    -0.3573363450850858
#>     Attrib V25    -0.1010358541334094
#>     Attrib V26    0.24236216028512914
#>     Attrib V27    -0.1038050634560881
#>     Attrib V28    -0.3670078813153327
#>     Attrib V29    0.020891242643803997
#>     Attrib V3    0.382937095962731
#>     Attrib V30    -0.5083740359615394
#>     Attrib V31    0.8278430564403584
#>     Attrib V32    -0.25138615571037193
#>     Attrib V33    -0.6658877375253492
#>     Attrib V34    -0.004414418418138518
#>     Attrib V35    -0.08312603415848684
#>     Attrib V36    0.47605243114336854
#>     Attrib V37    0.5019953845042068
#>     Attrib V38    -0.05135568184092631
#>     Attrib V39    0.02467508424515244
#>     Attrib V4    -0.09990904721795398
#>     Attrib V40    0.3678734797462077
#>     Attrib V41    0.20687457819173483
#>     Attrib V42    -0.2210739507233146
#>     Attrib V43    -0.07124938464876071
#>     Attrib V44    -0.3556878220065619
#>     Attrib V45    -0.5191772871865481
#>     Attrib V46    -0.12925042523913016
#>     Attrib V47    0.006041825856939355
#>     Attrib V48    -0.37794962621140493
#>     Attrib V49    -0.6805345173721785
#>     Attrib V5    0.11553677543697863
#>     Attrib V50    0.762007747287162
#>     Attrib V51    -0.19728959862365977
#>     Attrib V52    -0.3320363523259542
#>     Attrib V53    0.056103298067405154
#>     Attrib V54    -0.49234395141460535
#>     Attrib V55    0.3843988992647934
#>     Attrib V56    0.12848286755666016
#>     Attrib V57    0.4333469583519443
#>     Attrib V58    -0.1798804550353564
#>     Attrib V59    -0.37912861783707263
#>     Attrib V6    0.08358068113507827
#>     Attrib V60    -0.21117372152315225
#>     Attrib V7    0.30258298253232296
#>     Attrib V8    0.4517074608603118
#>     Attrib V9    -0.10883057134428484
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.02896262835758709
#>     Attrib V1    0.13514621465793056
#>     Attrib V10    0.8120312936334408
#>     Attrib V11    1.6657842826335836
#>     Attrib V12    1.5355185729872205
#>     Attrib V13    0.4373307957412041
#>     Attrib V14    -0.34697542950786775
#>     Attrib V15    -1.270119502527607
#>     Attrib V16    -1.177144404238172
#>     Attrib V17    -0.08923045079895496
#>     Attrib V18    0.20418603762144164
#>     Attrib V19    -0.26921928031359454
#>     Attrib V2    -0.01881202875375885
#>     Attrib V20    0.3954271606208349
#>     Attrib V21    0.6671202658738998
#>     Attrib V22    0.6871651072679158
#>     Attrib V23    0.7696092866088902
#>     Attrib V24    0.584468777394966
#>     Attrib V25    0.8482917352390035
#>     Attrib V26    0.8576368069681336
#>     Attrib V27    1.533984150631829
#>     Attrib V28    2.127755788470904
#>     Attrib V29    1.7092147087203842
#>     Attrib V3    0.05622384020409749
#>     Attrib V30    1.4309072128512865
#>     Attrib V31    -0.9076022445270463
#>     Attrib V32    -0.19467359027853468
#>     Attrib V33    -0.4756413848365328
#>     Attrib V34    -1.0927729185873831
#>     Attrib V35    -0.5592701324902193
#>     Attrib V36    -0.7893935364955403
#>     Attrib V37    -0.14383456915069132
#>     Attrib V38    0.5845925455851271
#>     Attrib V39    0.7918515171997822
#>     Attrib V4    0.9721391758277096
#>     Attrib V40    -0.034412319708594374
#>     Attrib V41    0.12737969030477844
#>     Attrib V42    0.35059952830227176
#>     Attrib V43    0.34810873161359523
#>     Attrib V44    0.571169443167988
#>     Attrib V45    0.5125509469331464
#>     Attrib V46    0.6171286702924104
#>     Attrib V47    1.1252641804205448
#>     Attrib V48    1.0030162642821496
#>     Attrib V49    1.3492617361404975
#>     Attrib V5    1.0711762808915448
#>     Attrib V50    -0.03299441266258444
#>     Attrib V51    1.360109543680478
#>     Attrib V52    1.1713224436118792
#>     Attrib V53    0.275531423794233
#>     Attrib V54    0.20229741773123827
#>     Attrib V55    -0.6956841178824121
#>     Attrib V56    -0.0528947163729843
#>     Attrib V57    -0.17210863303989368
#>     Attrib V58    -0.2698717746731168
#>     Attrib V59    0.10923966147907328
#>     Attrib V6    0.12446826504970362
#>     Attrib V60    -0.0747525939687895
#>     Attrib V7    -1.1148830923985176
#>     Attrib V8    -1.0165697020821303
#>     Attrib V9    0.5288519550395978
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.21637802315854288
#>     Attrib V1    0.004571705341424527
#>     Attrib V10    -0.045652851339152124
#>     Attrib V11    -0.1719814179659424
#>     Attrib V12    -0.09419046962654679
#>     Attrib V13    -0.02060067502676725
#>     Attrib V14    0.06913617657339433
#>     Attrib V15    -0.059448294847269
#>     Attrib V16    -0.05270213888499856
#>     Attrib V17    0.0076316737492693725
#>     Attrib V18    -0.010085232173498217
#>     Attrib V19    0.06443610076212385
#>     Attrib V2    0.0849707048241288
#>     Attrib V20    -0.05603539308272384
#>     Attrib V21    -0.03378440028210728
#>     Attrib V22    -0.015058415623402148
#>     Attrib V23    6.594814156290764E-4
#>     Attrib V24    -0.058473926426074234
#>     Attrib V25    -0.010614189259514508
#>     Attrib V26    -0.030472816464763443
#>     Attrib V27    -0.030947757971071712
#>     Attrib V28    -0.0499939823059537
#>     Attrib V29    0.03593628959801976
#>     Attrib V3    0.08739368107660107
#>     Attrib V30    -0.025113948523227726
#>     Attrib V31    0.1717927481027101
#>     Attrib V32    -0.016657316379666554
#>     Attrib V33    -0.010066372083745155
#>     Attrib V34    0.042176856980473965
#>     Attrib V35    0.1320279645747291
#>     Attrib V36    0.2061516388137006
#>     Attrib V37    0.19429881482996805
#>     Attrib V38    -8.612194891890477E-4
#>     Attrib V39    0.04720446567826439
#>     Attrib V4    0.0692738921492762
#>     Attrib V40    0.10159057997992949
#>     Attrib V41    0.0761254647222066
#>     Attrib V42    0.0648909862646755
#>     Attrib V43    0.05453747775758176
#>     Attrib V44    0.022328207873995167
#>     Attrib V45    -0.0670572777520513
#>     Attrib V46    -0.044638323236859546
#>     Attrib V47    -0.006377628004520983
#>     Attrib V48    -0.00709557086992019
#>     Attrib V49    -0.08468040495745537
#>     Attrib V5    -0.005740494571323425
#>     Attrib V50    0.1778134767170464
#>     Attrib V51    -0.0067078515189040915
#>     Attrib V52    -0.0763962670898783
#>     Attrib V53    0.029304199947053678
#>     Attrib V54    -0.10115235565801854
#>     Attrib V55    0.08936088463724992
#>     Attrib V56    0.08892024735739316
#>     Attrib V57    0.12888558363766123
#>     Attrib V58    0.04177917180413525
#>     Attrib V59    -0.007048431444074124
#>     Attrib V6    0.041759760742063105
#>     Attrib V60    0.0692804614706537
#>     Attrib V7    0.010569764010463637
#>     Attrib V8    0.07732125354663665
#>     Attrib V9    -0.03618873334791846
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.12354273506951653
#>     Attrib V1    0.3603655252476595
#>     Attrib V10    -0.21844671794451048
#>     Attrib V11    0.14360922224670278
#>     Attrib V12    -0.006024176809040362
#>     Attrib V13    -0.5344118910097672
#>     Attrib V14    -0.3070426702255451
#>     Attrib V15    0.3548483181165025
#>     Attrib V16    0.5349216612974579
#>     Attrib V17    0.33458089068844765
#>     Attrib V18    0.2439954461175302
#>     Attrib V19    0.07566648082185805
#>     Attrib V2    0.03259519687347439
#>     Attrib V20    0.3084215609725422
#>     Attrib V21    0.09191604416769435
#>     Attrib V22    -0.05791362403855348
#>     Attrib V23    0.1772955601732987
#>     Attrib V24    0.3712899672925853
#>     Attrib V25    -0.06761214405534564
#>     Attrib V26    -0.5612534485027663
#>     Attrib V27    -0.567772921268471
#>     Attrib V28    -0.4603556001334606
#>     Attrib V29    -0.8464433166709168
#>     Attrib V3    -0.26559774478120163
#>     Attrib V30    -0.14663395448945196
#>     Attrib V31    -1.110855807747368
#>     Attrib V32    0.2616821212113408
#>     Attrib V33    0.874970061043221
#>     Attrib V34    0.43295735295110827
#>     Attrib V35    0.3629389601275365
#>     Attrib V36    -0.27467099660248734
#>     Attrib V37    -0.6073490180261817
#>     Attrib V38    -0.17249594119159128
#>     Attrib V39    -0.22723145375988435
#>     Attrib V4    0.13833423542679285
#>     Attrib V40    -0.4036262110731074
#>     Attrib V41    -0.13601722814891878
#>     Attrib V42    0.30650798834048143
#>     Attrib V43    0.051842525453989145
#>     Attrib V44    0.3548369337694397
#>     Attrib V45    0.48831704011497784
#>     Attrib V46    -0.02191941027840574
#>     Attrib V47    -0.2567175971770239
#>     Attrib V48    0.2600958179701853
#>     Attrib V49    0.44306536445325323
#>     Attrib V5    -0.2748140039377341
#>     Attrib V50    -0.5308144894248679
#>     Attrib V51    0.12746440630007627
#>     Attrib V52    0.3783526208055024
#>     Attrib V53    0.10927640744798676
#>     Attrib V54    0.843997092984718
#>     Attrib V55    -0.12913234166480228
#>     Attrib V56    0.06525255102945637
#>     Attrib V57    -0.11889731370823257
#>     Attrib V58    0.5012304908593945
#>     Attrib V59    0.6499197778794097
#>     Attrib V6    -0.0708833613381578
#>     Attrib V60    0.5804857481318766
#>     Attrib V7    -0.08092504698418639
#>     Attrib V8    -0.3154889581408403
#>     Attrib V9    0.005198693863596526
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.02553773483367768
#>     Attrib V1    -0.2304941038065854
#>     Attrib V10    -0.7962711211203002
#>     Attrib V11    -1.5661397716551326
#>     Attrib V12    -1.4275141327855438
#>     Attrib V13    -0.43108272753709337
#>     Attrib V14    0.2700318956862799
#>     Attrib V15    0.9995815624748393
#>     Attrib V16    0.989378711705187
#>     Attrib V17    0.19775291588840058
#>     Attrib V18    -0.006467035153976129
#>     Attrib V19    0.2973973520365477
#>     Attrib V2    -0.08638764332886995
#>     Attrib V20    -0.3140656524694948
#>     Attrib V21    -0.580519964439125
#>     Attrib V22    -0.5413467637741401
#>     Attrib V23    -0.545507930726044
#>     Attrib V24    -0.43281890443257665
#>     Attrib V25    -0.7075495524149102
#>     Attrib V26    -0.7879512409285196
#>     Attrib V27    -1.3615316190518263
#>     Attrib V28    -1.9232729152036772
#>     Attrib V29    -1.507886080999679
#>     Attrib V3    0.05700535554117821
#>     Attrib V30    -1.3045588654423577
#>     Attrib V31    0.7659286988086805
#>     Attrib V32    0.169019887508721
#>     Attrib V33    0.31607980283393955
#>     Attrib V34    1.0070367285417967
#>     Attrib V35    0.4838267754789799
#>     Attrib V36    0.6519617144580385
#>     Attrib V37    0.020803427224678088
#>     Attrib V38    -0.5648768852716812
#>     Attrib V39    -0.6184813808324969
#>     Attrib V4    -0.7666735436728376
#>     Attrib V40    0.0743310584254334
#>     Attrib V41    -0.03413939951324804
#>     Attrib V42    -0.16781179765375692
#>     Attrib V43    -0.26805442988217243
#>     Attrib V44    -0.465585749081328
#>     Attrib V45    -0.4809796840370772
#>     Attrib V46    -0.606118607497781
#>     Attrib V47    -1.005366411913043
#>     Attrib V48    -0.866900389834761
#>     Attrib V49    -1.181896127016483
#>     Attrib V5    -0.82885889208346
#>     Attrib V50    0.10172847471483265
#>     Attrib V51    -1.19175210487795
#>     Attrib V52    -0.8877730915811546
#>     Attrib V53    -0.2583948813200475
#>     Attrib V54    -0.24917935224834156
#>     Attrib V55    0.520356623849415
#>     Attrib V56    0.0714226611369529
#>     Attrib V57    0.2909853161901827
#>     Attrib V58    0.23922689188907312
#>     Attrib V59    -0.0622031179772901
#>     Attrib V6    -0.11736335592881132
#>     Attrib V60    -0.016379677219827443
#>     Attrib V7    0.9123133818374876
#>     Attrib V8    0.7997176210753179
#>     Attrib V9    -0.4963959893314593
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.014657287161675726
#>     Attrib V1    0.1995079861042218
#>     Attrib V10    -0.18869282192162987
#>     Attrib V11    0.1461398224194116
#>     Attrib V12    0.041667259319210455
#>     Attrib V13    -0.3576169154284191
#>     Attrib V14    -0.10540433226064302
#>     Attrib V15    0.2576058739661478
#>     Attrib V16    0.3482967140851921
#>     Attrib V17    0.24026813125591398
#>     Attrib V18    0.14119770629857897
#>     Attrib V19    0.005058495944433733
#>     Attrib V2    0.02351006483120712
#>     Attrib V20    0.2705104750659354
#>     Attrib V21    0.07397926375448055
#>     Attrib V22    -0.04488756619293518
#>     Attrib V23    0.044228382848328904
#>     Attrib V24    0.21526594885690317
#>     Attrib V25    -0.018272054775747844
#>     Attrib V26    -0.4599292425074563
#>     Attrib V27    -0.3784930357296495
#>     Attrib V28    -0.2851383219612855
#>     Attrib V29    -0.507784931990566
#>     Attrib V3    -0.1121218998564416
#>     Attrib V30    -0.14422948301840352
#>     Attrib V31    -0.7531532712881817
#>     Attrib V32    0.19009297938622322
#>     Attrib V33    0.6058253198999018
#>     Attrib V34    0.26379317123869594
#>     Attrib V35    0.24026078387627314
#>     Attrib V36    -0.22413395100488703
#>     Attrib V37    -0.37610306905025137
#>     Attrib V38    -0.11148579465337599
#>     Attrib V39    -0.13683605112627842
#>     Attrib V4    0.10516530463756986
#>     Attrib V40    -0.2351779210815281
#>     Attrib V41    -0.0957400629856333
#>     Attrib V42    0.15965284783261138
#>     Attrib V43    0.0916780749146722
#>     Attrib V44    0.16281827895340117
#>     Attrib V45    0.31598551469380926
#>     Attrib V46    0.01335324467478672
#>     Attrib V47    -0.11003700239061341
#>     Attrib V48    0.15530969203345296
#>     Attrib V49    0.2943157258518548
#>     Attrib V5    -0.18980983301170778
#>     Attrib V50    -0.35106211000577703
#>     Attrib V51    0.1295372985816863
#>     Attrib V52    0.28951518930775005
#>     Attrib V53    0.08284847444240472
#>     Attrib V54    0.5453355101990325
#>     Attrib V55    -0.04292281841606652
#>     Attrib V56    0.10343573231086084
#>     Attrib V57    -0.032708470383810875
#>     Attrib V58    0.31765038295987424
#>     Attrib V59    0.4080773409436636
#>     Attrib V6    -0.068741524494263
#>     Attrib V60    0.4142611808641987
#>     Attrib V7    -0.08242522380655024
#>     Attrib V8    -0.2232093909992529
#>     Attrib V9    -0.003045315308358226
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.11939754217742463
#>     Attrib V1    0.18621920522442606
#>     Attrib V10    0.005538315929695068
#>     Attrib V11    0.07558086583425211
#>     Attrib V12    0.07679484639313176
#>     Attrib V13    -0.06370574359581464
#>     Attrib V14    -0.008705119433217223
#>     Attrib V15    0.10640762850629075
#>     Attrib V16    0.11675217393497714
#>     Attrib V17    0.12385933614676146
#>     Attrib V18    0.038807792110376965
#>     Attrib V19    -0.04829419345592449
#>     Attrib V2    0.0896127904180491
#>     Attrib V20    0.042068346313615786
#>     Attrib V21    -3.355700087295468E-5
#>     Attrib V22    -0.09612353205713162
#>     Attrib V23    -0.02070787614268867
#>     Attrib V24    -0.014268540084712325
#>     Attrib V25    -0.03567269257603984
#>     Attrib V26    -0.14111919647460133
#>     Attrib V27    -0.11691665428098767
#>     Attrib V28    -0.05224494627770318
#>     Attrib V29    -0.21523574744006688
#>     Attrib V3    0.007956199601291111
#>     Attrib V30    -0.01738836052333893
#>     Attrib V31    -0.24175663583104243
#>     Attrib V32    0.05021760352717617
#>     Attrib V33    0.1925922014080391
#>     Attrib V34    0.062354095901087855
#>     Attrib V35    0.11775916701061692
#>     Attrib V36    -0.06400404268068056
#>     Attrib V37    -0.04240030197286053
#>     Attrib V38    -0.013609105426392777
#>     Attrib V39    0.050655957426649446
#>     Attrib V4    0.18080011985881786
#>     Attrib V40    -0.048017271024163796
#>     Attrib V41    -0.03428600385578478
#>     Attrib V42    0.1030057235321663
#>     Attrib V43    0.002879956582588436
#>     Attrib V44    0.03971790648094149
#>     Attrib V45    0.08107377344320933
#>     Attrib V46    0.0014398797358571292
#>     Attrib V47    -0.06060257663962439
#>     Attrib V48    0.09364610796850763
#>     Attrib V49    0.11859944280783113
#>     Attrib V5    -0.046825759791953615
#>     Attrib V50    -0.11507949141109323
#>     Attrib V51    0.08761122933622591
#>     Attrib V52    0.14071032526756475
#>     Attrib V53    0.10167307173880995
#>     Attrib V54    0.21726812820202301
#>     Attrib V55    0.007708422305913555
#>     Attrib V56    0.10723815434282677
#>     Attrib V57    0.03834698443261017
#>     Attrib V58    0.21119113938336534
#>     Attrib V59    0.26547826566002164
#>     Attrib V6    -0.047379440668675735
#>     Attrib V60    0.2569993454087253
#>     Attrib V7    -0.12576229455581703
#>     Attrib V8    -0.13764653721398354
#>     Attrib V9    -7.631171376172848E-4
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.00934632139156399
#>     Attrib V1    0.33618593589730766
#>     Attrib V10    -0.3244218745059615
#>     Attrib V11    -0.009276392882802286
#>     Attrib V12    -0.19722458864275244
#>     Attrib V13    -0.5683162278616017
#>     Attrib V14    -0.19262250776404352
#>     Attrib V15    0.46707368386726417
#>     Attrib V16    0.631177095162723
#>     Attrib V17    0.38793120461230807
#>     Attrib V18    0.17860225909430352
#>     Attrib V19    0.06627258368563506
#>     Attrib V2    0.09821158052844223
#>     Attrib V20    0.35365752076078033
#>     Attrib V21    -0.011125773521653934
#>     Attrib V22    -0.09727197142054853
#>     Attrib V23    0.15646073778852249
#>     Attrib V24    0.29078954053554507
#>     Attrib V25    -0.19562724714460233
#>     Attrib V26    -0.6934838215307397
#>     Attrib V27    -0.6895589478761165
#>     Attrib V28    -0.5628923963735445
#>     Attrib V29    -0.9066769684829372
#>     Attrib V3    -0.2341616217199587
#>     Attrib V30    -0.24917263108978405
#>     Attrib V31    -1.0382853416303284
#>     Attrib V32    0.2345549581793476
#>     Attrib V33    0.9214816005575912
#>     Attrib V34    0.5039188889463568
#>     Attrib V35    0.4016675608344585
#>     Attrib V36    -0.30765183963171716
#>     Attrib V37    -0.6074172675749387
#>     Attrib V38    -0.1940317599170943
#>     Attrib V39    -0.3268160351100394
#>     Attrib V4    0.13752008196383672
#>     Attrib V40    -0.3492394917867377
#>     Attrib V41    -0.13136797428040042
#>     Attrib V42    0.32761984049870546
#>     Attrib V43    0.08756555444287158
#>     Attrib V44    0.31839515978103716
#>     Attrib V45    0.37106463449980903
#>     Attrib V46    -0.01669085582375563
#>     Attrib V47    -0.276614316734024
#>     Attrib V48    0.181026455649458
#>     Attrib V49    0.39710256007767364
#>     Attrib V5    -0.3257261228434624
#>     Attrib V50    -0.5302965506924481
#>     Attrib V51    0.03601992893880375
#>     Attrib V52    0.3039803989429078
#>     Attrib V53    0.10997399979967278
#>     Attrib V54    0.8142419241900956
#>     Attrib V55    -0.09745114660028945
#>     Attrib V56    0.13024362578949858
#>     Attrib V57    -0.06378280932783839
#>     Attrib V58    0.47122236823236524
#>     Attrib V59    0.6353230442860887
#>     Attrib V6    -0.09829707555124366
#>     Attrib V60    0.602857380581365
#>     Attrib V7    0.03867042052013808
#>     Attrib V8    -0.23997314263121805
#>     Attrib V9    -0.019340809502222642
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.13463254414366854
#>     Attrib V1    0.1785781133443176
#>     Attrib V10    -0.0920699610611203
#>     Attrib V11    0.0431663006717109
#>     Attrib V12    -0.0023618360529821646
#>     Attrib V13    -0.15875189874635587
#>     Attrib V14    0.0481396466548117
#>     Attrib V15    0.12823876743314663
#>     Attrib V16    0.15778233573125194
#>     Attrib V17    0.07626837142835814
#>     Attrib V18    0.11371688098058837
#>     Attrib V19    -0.041882628517279724
#>     Attrib V2    0.059001896647314825
#>     Attrib V20    0.0879205141933018
#>     Attrib V21    0.007763696188198539
#>     Attrib V22    -0.0912873461440085
#>     Attrib V23    -0.0017229772203831973
#>     Attrib V24    -0.022657919773400828
#>     Attrib V25    -0.14264263989186915
#>     Attrib V26    -0.22635624792320555
#>     Attrib V27    -0.13942223802587397
#>     Attrib V28    -0.039974846668221126
#>     Attrib V29    -0.12813142174189973
#>     Attrib V3    0.06701839937769552
#>     Attrib V30    0.030024487809435275
#>     Attrib V31    -0.29259595053002857
#>     Attrib V32    0.02987467817901243
#>     Attrib V33    0.22267646096906327
#>     Attrib V34    0.09225968024695141
#>     Attrib V35    0.10304953307995499
#>     Attrib V36    -0.00365216839468271
#>     Attrib V37    -0.07307636658513599
#>     Attrib V38    -0.028753269501549758
#>     Attrib V39    0.0026139550294940026
#>     Attrib V4    0.13304709856801744
#>     Attrib V40    -0.07897849936063439
#>     Attrib V41    -0.05574425632156834
#>     Attrib V42    0.09843475881903532
#>     Attrib V43    -0.023171652723533005
#>     Attrib V44    0.10035385069393646
#>     Attrib V45    0.11708496897758239
#>     Attrib V46    0.013487519880817067
#>     Attrib V47    -0.03406209685282118
#>     Attrib V48    0.03486261655770753
#>     Attrib V49    0.17449560992576446
#>     Attrib V5    0.010607846115574597
#>     Attrib V50    -0.1106009600000978
#>     Attrib V51    0.1032057253117377
#>     Attrib V52    0.15113212869153672
#>     Attrib V53    0.08973004883164738
#>     Attrib V54    0.1310009997607668
#>     Attrib V55    0.018282116389581642
#>     Attrib V56    0.06627816652789112
#>     Attrib V57    0.05201076211936179
#>     Attrib V58    0.22694713037004796
#>     Attrib V59    0.1923249029665228
#>     Attrib V6    0.0020919125739087547
#>     Attrib V60    0.2045985357657588
#>     Attrib V7    -0.04224255937853527
#>     Attrib V8    -0.05490912506713647
#>     Attrib V9    0.044636949523315275
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
