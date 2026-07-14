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
#>     Threshold    -0.3504935513086308
#>     Node 2    3.001611037339915
#>     Node 3    0.3868252574464402
#>     Node 4    0.8409444332361781
#>     Node 5    -1.9459425929147978
#>     Node 6    1.3854824100350582
#>     Node 7    2.2299681221977794
#>     Node 8    1.2085998841505903
#>     Node 9    3.76830142419897
#>     Node 10    -2.3877286148438666
#>     Node 11    1.577321869856728
#>     Node 12    1.3689309359584139
#>     Node 13    0.5321943916688117
#>     Node 14    1.366304154418031
#>     Node 15    -2.456722160289368
#>     Node 16    -0.21553084378945445
#>     Node 17    -0.1983358626444463
#>     Node 18    -0.07117804009873756
#>     Node 19    0.9900919797503668
#>     Node 20    2.190714930396768
#>     Node 21    -2.118097460857216
#>     Node 22    0.27894395263225064
#>     Node 23    1.20522686422077
#>     Node 24    -1.8179530439603726
#>     Node 25    3.3654968595666044
#>     Node 26    -1.3989494146593258
#>     Node 27    1.3881119660094425
#>     Node 28    -4.625758175086444
#>     Node 29    1.1389832853865998
#>     Node 30    -0.1485739593675445
#>     Node 31    1.3560928320621042
#>     Node 32    0.2669597389201027
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.37773188552823367
#>     Node 2    -3.040974196791385
#>     Node 3    -0.3739846678099419
#>     Node 4    -0.8064270844953209
#>     Node 5    1.9556581861059745
#>     Node 6    -1.3638682468473895
#>     Node 7    -2.215989993627995
#>     Node 8    -1.2541750670847365
#>     Node 9    -3.7828119057534475
#>     Node 10    2.328497490119807
#>     Node 11    -1.5430904488270536
#>     Node 12    -1.4483750498558896
#>     Node 13    -0.4799458631863595
#>     Node 14    -1.3022761167117975
#>     Node 15    2.443844030976564
#>     Node 16    0.19849917176858525
#>     Node 17    0.22908437357270625
#>     Node 18    0.10994650388248749
#>     Node 19    -0.9863503379860996
#>     Node 20    -2.1816998415144466
#>     Node 21    2.1758815108667395
#>     Node 22    -0.33498629764430937
#>     Node 23    -1.2488105724650684
#>     Node 24    1.8236698623574958
#>     Node 25    -3.3715917761676137
#>     Node 26    1.3290068656968042
#>     Node 27    -1.4308921593649848
#>     Node 28    4.610081584164709
#>     Node 29    -1.1730602128869239
#>     Node 30    0.22456643486510938
#>     Node 31    -1.3014088716200187
#>     Node 32    -0.289802131878963
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.38163630901980994
#>     Attrib V1    1.075896729933209
#>     Attrib V10    -0.05266091906327232
#>     Attrib V11    0.04488413711290344
#>     Attrib V12    0.12654896226738627
#>     Attrib V13    -0.38794197761296767
#>     Attrib V14    -0.5170795529043346
#>     Attrib V15    0.10575241583778502
#>     Attrib V16    0.5581408819659012
#>     Attrib V17    0.977504644596049
#>     Attrib V18    0.8801004619768243
#>     Attrib V19    0.24816147414095996
#>     Attrib V2    0.020284817997888407
#>     Attrib V20    1.3180507543704418
#>     Attrib V21    0.933187805133419
#>     Attrib V22    0.5990473789436639
#>     Attrib V23    0.20406075291547393
#>     Attrib V24    -0.30695492565629695
#>     Attrib V25    -0.11539440871511732
#>     Attrib V26    -0.6353819895026419
#>     Attrib V27    -1.4191940893308208
#>     Attrib V28    0.10527565481307034
#>     Attrib V29    -0.6522913851925363
#>     Attrib V3    -0.14443067854929775
#>     Attrib V30    -0.07203383317956749
#>     Attrib V31    -1.4085222815701328
#>     Attrib V32    -0.21260481954088192
#>     Attrib V33    0.3512712293000911
#>     Attrib V34    -0.694834469220052
#>     Attrib V35    0.25061315187349964
#>     Attrib V36    -0.5052769182654867
#>     Attrib V37    -1.329255283747509
#>     Attrib V38    -0.0727824339453469
#>     Attrib V39    0.8342771457348616
#>     Attrib V4    0.5072971074158052
#>     Attrib V40    0.06611318213955963
#>     Attrib V41    -0.4402717760951651
#>     Attrib V42    0.8213499824097232
#>     Attrib V43    1.2443820504472785
#>     Attrib V44    0.48433777126171884
#>     Attrib V45    0.48358828680192933
#>     Attrib V46    0.026925263954699248
#>     Attrib V47    -0.37666636347004645
#>     Attrib V48    0.04702679659308198
#>     Attrib V49    0.5933313058756879
#>     Attrib V5    0.3191139442176394
#>     Attrib V50    -0.9284795841193562
#>     Attrib V51    -0.22446743405381178
#>     Attrib V52    0.6899786178154136
#>     Attrib V53    0.5848629736123785
#>     Attrib V54    0.798113349860593
#>     Attrib V55    -0.6749942317039875
#>     Attrib V56    0.2747193933057751
#>     Attrib V57    -0.09486736613879354
#>     Attrib V58    0.2959196627948174
#>     Attrib V59    1.0607383206106475
#>     Attrib V6    -0.506501316024173
#>     Attrib V60    0.02540687780415333
#>     Attrib V7    -0.34490124284994716
#>     Attrib V8    0.23506535534139333
#>     Attrib V9    1.0779659671191753
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.15330441716945756
#>     Attrib V1    0.13355405075753193
#>     Attrib V10    0.09024311162659056
#>     Attrib V11    0.07452770284750146
#>     Attrib V12    0.1593999119196255
#>     Attrib V13    0.0670134757212957
#>     Attrib V14    -0.050643069194341375
#>     Attrib V15    0.03615968994518284
#>     Attrib V16    0.006701972280636246
#>     Attrib V17    0.1038954739153975
#>     Attrib V18    0.10752996176931118
#>     Attrib V19    0.07924159192247135
#>     Attrib V2    0.0183058157583825
#>     Attrib V20    0.20414218594039674
#>     Attrib V21    0.0831489879124119
#>     Attrib V22    0.15440882256100943
#>     Attrib V23    0.08405696111053962
#>     Attrib V24    -0.05403167254004926
#>     Attrib V25    0.07322410683678536
#>     Attrib V26    -0.04861285725297722
#>     Attrib V27    -0.2051326296311878
#>     Attrib V28    0.10815674630629463
#>     Attrib V29    -0.11500298593308309
#>     Attrib V3    -0.013789248975261886
#>     Attrib V30    0.043056012205949595
#>     Attrib V31    -0.25670193837835664
#>     Attrib V32    0.005531991492354915
#>     Attrib V33    0.06379304936323665
#>     Attrib V34    -0.17251714737448012
#>     Attrib V35    0.10908508109117895
#>     Attrib V36    -0.06561719649521405
#>     Attrib V37    -0.1777525223987431
#>     Attrib V38    -0.04207428880458154
#>     Attrib V39    0.15329360359861477
#>     Attrib V4    0.1424186455254482
#>     Attrib V40    0.007017160430119615
#>     Attrib V41    -0.07376828514005832
#>     Attrib V42    0.07650938209645679
#>     Attrib V43    0.1962852343330323
#>     Attrib V44    0.10883366572015608
#>     Attrib V45    0.11293303468667594
#>     Attrib V46    0.01895273927834654
#>     Attrib V47    0.017220418322201836
#>     Attrib V48    0.021866431912851234
#>     Attrib V49    0.08135046819413559
#>     Attrib V5    0.09321820320593915
#>     Attrib V50    -0.19764803657233443
#>     Attrib V51    -0.058452921715826424
#>     Attrib V52    0.2148930234106816
#>     Attrib V53    0.11711129365587288
#>     Attrib V54    0.1750849561836355
#>     Attrib V55    -0.05335560581841402
#>     Attrib V56    0.058498497332662616
#>     Attrib V57    -0.0013056080751023453
#>     Attrib V58    0.09127051833799178
#>     Attrib V59    0.17431984728703173
#>     Attrib V6    -0.17490436779772664
#>     Attrib V60    0.013522127815007211
#>     Attrib V7    -0.19935465111324668
#>     Attrib V8    0.03143192570659628
#>     Attrib V9    0.21897772041972863
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.1318859068638636
#>     Attrib V1    0.09424134539603263
#>     Attrib V10    0.11030883434696759
#>     Attrib V11    0.15028530174084648
#>     Attrib V12    0.26201782158672404
#>     Attrib V13    0.09014197875987918
#>     Attrib V14    -0.2310692996947952
#>     Attrib V15    -0.11128366532524309
#>     Attrib V16    -0.030875463432657638
#>     Attrib V17    0.1648876213520845
#>     Attrib V18    0.14663593099637046
#>     Attrib V19    -9.414048602736729E-4
#>     Attrib V2    -0.0914723865626919
#>     Attrib V20    0.24727147177717923
#>     Attrib V21    0.1466482902946487
#>     Attrib V22    0.23313691404885517
#>     Attrib V23    0.19311015969371031
#>     Attrib V24    -0.02575495818191885
#>     Attrib V25    0.11819272306052436
#>     Attrib V26    0.007831390320475716
#>     Attrib V27    -0.3108473660381084
#>     Attrib V28    0.3251273135159985
#>     Attrib V29    -0.034370798625139344
#>     Attrib V3    -0.1324168203693282
#>     Attrib V30    0.04393782630945234
#>     Attrib V31    -0.4963792289927084
#>     Attrib V32    2.7116422297655606E-4
#>     Attrib V33    0.14368038734893446
#>     Attrib V34    -0.1824630962331593
#>     Attrib V35    0.30867281494632254
#>     Attrib V36    -0.05899905072178129
#>     Attrib V37    -0.2780501885293925
#>     Attrib V38    -0.05443494932724039
#>     Attrib V39    0.2408811697197781
#>     Attrib V4    0.09868485815694873
#>     Attrib V40    -0.025917584820817397
#>     Attrib V41    -0.15575940029745164
#>     Attrib V42    0.11454081422019004
#>     Attrib V43    0.34872449531605526
#>     Attrib V44    0.16097034093079818
#>     Attrib V45    0.3087346649998403
#>     Attrib V46    0.06394107108397164
#>     Attrib V47    -0.062191138392915894
#>     Attrib V48    0.12222238625632693
#>     Attrib V49    0.28597382514189906
#>     Attrib V5    0.1528015977482442
#>     Attrib V50    -0.4949319846399643
#>     Attrib V51    -0.006225763930812707
#>     Attrib V52    0.31261538350507384
#>     Attrib V53    0.20021313328304874
#>     Attrib V54    0.12229156174995032
#>     Attrib V55    -0.2793761348977855
#>     Attrib V56    -0.04539015130586096
#>     Attrib V57    -0.13482443381018608
#>     Attrib V58    -0.0052709863699813165
#>     Attrib V59    0.17735614386453144
#>     Attrib V6    -0.307870306919204
#>     Attrib V60    -0.07275133825399657
#>     Attrib V7    -0.3515056262996914
#>     Attrib V8    -0.12517359586957197
#>     Attrib V9    0.46523984992339046
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.07478108567801971
#>     Attrib V1    -0.22140412313112687
#>     Attrib V10    -0.3216773568588302
#>     Attrib V11    -0.43027719350764243
#>     Attrib V12    -0.7801314843837899
#>     Attrib V13    -0.36700687046464464
#>     Attrib V14    0.4768086819896268
#>     Attrib V15    0.35459732495827245
#>     Attrib V16    0.0803223612515573
#>     Attrib V17    -0.21682838602568877
#>     Attrib V18    -0.17333816877044125
#>     Attrib V19    0.18740704816829243
#>     Attrib V2    0.04719879613110762
#>     Attrib V20    -0.2532357549471232
#>     Attrib V21    0.017026645157695905
#>     Attrib V22    -0.44742080154441194
#>     Attrib V23    -0.2212635849613685
#>     Attrib V24    0.042970510020048876
#>     Attrib V25    -0.1810628290691258
#>     Attrib V26    -0.016874533172434984
#>     Attrib V27    0.42721143042113435
#>     Attrib V28    -0.8016496018477561
#>     Attrib V29    -0.011633184634425319
#>     Attrib V3    0.37790086771914244
#>     Attrib V30    -0.18631197060964225
#>     Attrib V31    0.8898306489045379
#>     Attrib V32    -0.09035601507490622
#>     Attrib V33    -0.24284491854743928
#>     Attrib V34    0.46714544781881134
#>     Attrib V35    -0.5404253405884907
#>     Attrib V36    0.36040673498721537
#>     Attrib V37    0.6996856604788838
#>     Attrib V38    0.19095326667778145
#>     Attrib V39    -0.39208629690869184
#>     Attrib V4    -0.16802927404092724
#>     Attrib V40    0.0798813592001691
#>     Attrib V41    0.08773790678198189
#>     Attrib V42    -0.09192424622334844
#>     Attrib V43    -0.6064885053829505
#>     Attrib V44    -0.07792305344060428
#>     Attrib V45    -0.4728904337555674
#>     Attrib V46    -0.269915352146094
#>     Attrib V47    -0.011665541898964597
#>     Attrib V48    -0.361725127216553
#>     Attrib V49    -0.6589307414912735
#>     Attrib V5    -0.31949642370878695
#>     Attrib V50    1.3242238897701886
#>     Attrib V51    -0.06469991173489413
#>     Attrib V52    -0.6812565621371591
#>     Attrib V53    -0.21526853106935626
#>     Attrib V54    -0.21815231939518637
#>     Attrib V55    0.6871502708699635
#>     Attrib V56    0.34182435131935723
#>     Attrib V57    0.4562040547648521
#>     Attrib V58    0.04227372679953951
#>     Attrib V59    -0.21653462141818786
#>     Attrib V6    0.49439332082480497
#>     Attrib V60    0.049614149403183205
#>     Attrib V7    0.7834699826978124
#>     Attrib V8    0.2816125033032734
#>     Attrib V9    -1.0623060487343752
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.29488844773337947
#>     Attrib V1    0.3288730111407837
#>     Attrib V10    0.026140139482347
#>     Attrib V11    0.10714356290386093
#>     Attrib V12    0.23651543269850395
#>     Attrib V13    -0.14158098489616472
#>     Attrib V14    -0.3709370046927796
#>     Attrib V15    -0.06900763115761326
#>     Attrib V16    0.27854372394565324
#>     Attrib V17    0.50557940864751
#>     Attrib V18    0.5806944961720292
#>     Attrib V19    0.18915118141236723
#>     Attrib V2    -0.14088430116510453
#>     Attrib V20    0.5885546980044742
#>     Attrib V21    0.3771123410820576
#>     Attrib V22    0.36370582368731275
#>     Attrib V23    0.23676274956793286
#>     Attrib V24    0.01839933586271019
#>     Attrib V25    0.21778015255586308
#>     Attrib V26    -0.14810216585266436
#>     Attrib V27    -0.6539256892498898
#>     Attrib V28    7.065438014977328E-4
#>     Attrib V29    -0.4753154424115757
#>     Attrib V3    -0.18486634265782087
#>     Attrib V30    -0.05209247545101073
#>     Attrib V31    -0.7219084327857063
#>     Attrib V32    -0.06644135433424608
#>     Attrib V33    0.190565864343425
#>     Attrib V34    -0.39433793851001886
#>     Attrib V35    0.2319005571798855
#>     Attrib V36    -0.25864913765366443
#>     Attrib V37    -0.7181298074997037
#>     Attrib V38    -0.1033312801240013
#>     Attrib V39    0.33450743792449583
#>     Attrib V4    0.28856261315971
#>     Attrib V40    -0.07901146616811372
#>     Attrib V41    -0.24765412384731136
#>     Attrib V42    0.34500662009076005
#>     Attrib V43    0.6450513455673285
#>     Attrib V44    0.2785031817317973
#>     Attrib V45    0.338067878661029
#>     Attrib V46    0.071811063980284
#>     Attrib V47    -0.15278752590534353
#>     Attrib V48    0.08031062632700608
#>     Attrib V49    0.312908560126451
#>     Attrib V5    0.1836909095217371
#>     Attrib V50    -0.5410171442896987
#>     Attrib V51    -0.05692436790887814
#>     Attrib V52    0.36796174197573045
#>     Attrib V53    0.37317075934658844
#>     Attrib V54    0.3971471726264695
#>     Attrib V55    -0.344064692885672
#>     Attrib V56    0.14134877929459858
#>     Attrib V57    -0.09019195851345789
#>     Attrib V58    0.18900130146921737
#>     Attrib V59    0.554469712363009
#>     Attrib V6    -0.269925096238744
#>     Attrib V60    0.06749677467432173
#>     Attrib V7    -0.24454758172157248
#>     Attrib V8    0.09912959175209243
#>     Attrib V9    0.7145206121106764
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4390472146346785
#>     Attrib V1    0.500049138067062
#>     Attrib V10    0.38421012325920106
#>     Attrib V11    0.4120957194554275
#>     Attrib V12    0.7454142829072187
#>     Attrib V13    0.18797178780804227
#>     Attrib V14    -0.8956568759158388
#>     Attrib V15    -0.7380695330759393
#>     Attrib V16    -0.39412160305829075
#>     Attrib V17    0.1213877224398558
#>     Attrib V18    0.27863542927613383
#>     Attrib V19    -0.2212527841654946
#>     Attrib V2    -0.035932459902485794
#>     Attrib V20    0.3482641939086814
#>     Attrib V21    0.21257588788912182
#>     Attrib V22    0.6157317939253157
#>     Attrib V23    0.7126131808970638
#>     Attrib V24    0.2080023336490436
#>     Attrib V25    0.08495340621142154
#>     Attrib V26    -0.4135434360195129
#>     Attrib V27    -0.7797741091866268
#>     Attrib V28    0.7496388487445576
#>     Attrib V29    0.2168867117465737
#>     Attrib V3    -0.29711915772584857
#>     Attrib V30    0.36061659998094336
#>     Attrib V31    -0.4436979819472531
#>     Attrib V32    0.6409784175574247
#>     Attrib V33    0.7151684154668232
#>     Attrib V34    -0.10880466888975063
#>     Attrib V35    0.774645066422882
#>     Attrib V36    -0.34179562032041727
#>     Attrib V37    -0.6276657343502909
#>     Attrib V38    -0.08831904783225679
#>     Attrib V39    0.5449018320856823
#>     Attrib V4    0.2097278396796464
#>     Attrib V40    0.2916333674438812
#>     Attrib V41    0.4220149648212952
#>     Attrib V42    0.27258157115434556
#>     Attrib V43    0.7815942823522644
#>     Attrib V44    0.1253560082710943
#>     Attrib V45    0.3578779372068364
#>     Attrib V46    0.1427591794626521
#>     Attrib V47    -0.25861318760562496
#>     Attrib V48    0.01255270196797433
#>     Attrib V49    0.45570850905923144
#>     Attrib V5    0.4547228572256646
#>     Attrib V50    -1.474022468308915
#>     Attrib V51    -0.18744871162711393
#>     Attrib V52    0.6593232690900693
#>     Attrib V53    0.16650706306825372
#>     Attrib V54    0.013204589879646591
#>     Attrib V55    -1.0596747384820817
#>     Attrib V56    -0.5072096802639158
#>     Attrib V57    -0.5685731804194125
#>     Attrib V58    -0.1727613041398623
#>     Attrib V59    0.23696048027131325
#>     Attrib V6    -0.10474092720100663
#>     Attrib V60    -0.24562910553930936
#>     Attrib V7    -0.5032375832262477
#>     Attrib V8    -0.14982293282668177
#>     Attrib V9    1.3090426077961097
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.052362424463130025
#>     Attrib V1    0.10586389771289349
#>     Attrib V10    0.2711732238653372
#>     Attrib V11    0.318543214082535
#>     Attrib V12    0.4645277431725561
#>     Attrib V13    0.20826541091930265
#>     Attrib V14    -0.4047185675206579
#>     Attrib V15    -0.2910743363447343
#>     Attrib V16    -0.08482826782918862
#>     Attrib V17    0.0773325024538497
#>     Attrib V18    0.053483686052576175
#>     Attrib V19    -0.1529506149389957
#>     Attrib V2    -0.05336020837956076
#>     Attrib V20    0.03498880955791103
#>     Attrib V21    -0.10857244783932361
#>     Attrib V22    0.2142574356323255
#>     Attrib V23    0.25250187638737137
#>     Attrib V24    0.08444683055833445
#>     Attrib V25    0.2760200623538625
#>     Attrib V26    0.13409620555345367
#>     Attrib V27    -0.23028725350432613
#>     Attrib V28    0.5765749563148913
#>     Attrib V29    0.08847216050162891
#>     Attrib V3    -0.2483794592722057
#>     Attrib V30    0.14401009442832066
#>     Attrib V31    -0.5322773741382473
#>     Attrib V32    0.16803784797305038
#>     Attrib V33    0.2211330909272581
#>     Attrib V34    -0.2717625029623229
#>     Attrib V35    0.3914330066847237
#>     Attrib V36    -0.13564615473523065
#>     Attrib V37    -0.4359680855081619
#>     Attrib V38    -0.12244283201497562
#>     Attrib V39    0.19311399125254808
#>     Attrib V4    0.13653869566048082
#>     Attrib V40    -0.06248642892849659
#>     Attrib V41    -0.12120685698761004
#>     Attrib V42    -0.044260908987787215
#>     Attrib V43    0.389773839001339
#>     Attrib V44    0.12200542715655326
#>     Attrib V45    0.3176403602042355
#>     Attrib V46    0.20345950178995095
#>     Attrib V47    0.06293933052056953
#>     Attrib V48    0.3046248575351134
#>     Attrib V49    0.42322646642275086
#>     Attrib V5    0.17909289305771234
#>     Attrib V50    -0.7648159775740403
#>     Attrib V51    0.027915050901298182
#>     Attrib V52    0.4551701003740535
#>     Attrib V53    0.25067650695252125
#>     Attrib V54    0.15635154903763832
#>     Attrib V55    -0.4159789638031854
#>     Attrib V56    -0.2367986932822981
#>     Attrib V57    -0.21305484498462052
#>     Attrib V58    -0.034791633119189556
#>     Attrib V59    0.14655620409320588
#>     Attrib V6    -0.37744028066375457
#>     Attrib V60    -0.031241924407270562
#>     Attrib V7    -0.5008180253501776
#>     Attrib V8    -0.1683309978768932
#>     Attrib V9    0.6976596028287927
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.48947487333424156
#>     Attrib V1    0.42927419300137776
#>     Attrib V10    1.4935112825125758
#>     Attrib V11    1.5336794015753041
#>     Attrib V12    1.7843200997481614
#>     Attrib V13    1.3633237293228073
#>     Attrib V14    -0.37738881155173315
#>     Attrib V15    -0.5618647386295675
#>     Attrib V16    -0.7274634429248605
#>     Attrib V17    -0.7159930068503101
#>     Attrib V18    -0.5469314814434801
#>     Attrib V19    -0.8542269562018591
#>     Attrib V2    0.6109026031920449
#>     Attrib V20    -0.5260540841370035
#>     Attrib V21    -0.019685600196327722
#>     Attrib V22    0.6076715832216234
#>     Attrib V23    0.3228162111965753
#>     Attrib V24    -0.26319780396296655
#>     Attrib V25    0.13201864462731638
#>     Attrib V26    0.8350360628245206
#>     Attrib V27    0.599374994372357
#>     Attrib V28    1.4699442698353866
#>     Attrib V29    0.7360070917079483
#>     Attrib V3    -0.344626382829605
#>     Attrib V30    0.16530596080301385
#>     Attrib V31    -0.9654301181257074
#>     Attrib V32    0.2735386246864999
#>     Attrib V33    0.04004123819587215
#>     Attrib V34    -0.4304998671121927
#>     Attrib V35    0.5501639181064639
#>     Attrib V36    -0.3412984465755122
#>     Attrib V37    0.09094017835349678
#>     Attrib V38    -0.34308285085790075
#>     Attrib V39    0.20913166221016832
#>     Attrib V4    0.11753031881163921
#>     Attrib V40    0.22202075916142394
#>     Attrib V41    0.5961945873436266
#>     Attrib V42    -0.42307246597435594
#>     Attrib V43    0.32328265270695566
#>     Attrib V44    -0.2967233182967852
#>     Attrib V45    0.31766972990006603
#>     Attrib V46    0.45811844091144643
#>     Attrib V47    0.40142855346085593
#>     Attrib V48    0.5336813949048032
#>     Attrib V49    0.7876092673590712
#>     Attrib V5    0.5620986568581363
#>     Attrib V50    -0.9957053316098806
#>     Attrib V51    0.98615187725322
#>     Attrib V52    0.9884512851299375
#>     Attrib V53    0.4014013970309695
#>     Attrib V54    0.4231319443382515
#>     Attrib V55    -0.3588976723073716
#>     Attrib V56    -1.0288103753755689
#>     Attrib V57    -0.46349623751398933
#>     Attrib V58    -0.12527310270899547
#>     Attrib V59    -0.1870146221402844
#>     Attrib V6    -0.3641102912021304
#>     Attrib V60    0.2670231770810602
#>     Attrib V7    -0.964956080140287
#>     Attrib V8    0.13344641749487715
#>     Attrib V9    1.5516004176257183
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.09479169206691493
#>     Attrib V1    -0.16234593782121265
#>     Attrib V10    -0.546197054035942
#>     Attrib V11    -0.5847547182026197
#>     Attrib V12    -0.8592024775041858
#>     Attrib V13    -0.3564510288856529
#>     Attrib V14    0.6675138635996811
#>     Attrib V15    0.42031986063107324
#>     Attrib V16    0.19739727544858973
#>     Attrib V17    -0.29201880100783045
#>     Attrib V18    -0.17080070017771987
#>     Attrib V19    0.29723527704164127
#>     Attrib V2    0.046302930640443746
#>     Attrib V20    -0.1639112655227511
#>     Attrib V21    0.059233065234109296
#>     Attrib V22    -0.5513496253773567
#>     Attrib V23    -0.31329844577019417
#>     Attrib V24    0.12453932760263207
#>     Attrib V25    -0.18236503588191622
#>     Attrib V26    -0.026871633490950106
#>     Attrib V27    0.4506557184581509
#>     Attrib V28    -0.9901648876224671
#>     Attrib V29    -0.08775844519718747
#>     Attrib V3    0.46414280479663456
#>     Attrib V30    -0.22011411522172894
#>     Attrib V31    1.0700551262893347
#>     Attrib V32    -0.20348410127892552
#>     Attrib V33    -0.26124865148486764
#>     Attrib V34    0.6309426804360669
#>     Attrib V35    -0.6288383806625366
#>     Attrib V36    0.4083963205032864
#>     Attrib V37    0.8515278506635605
#>     Attrib V38    0.39793843931423545
#>     Attrib V39    -0.3726833873439498
#>     Attrib V4    -0.2012629088676177
#>     Attrib V40    0.17087975831524818
#>     Attrib V41    0.1745885112654391
#>     Attrib V42    -0.1473769574020981
#>     Attrib V43    -0.7678089340256241
#>     Attrib V44    -0.09855390618350515
#>     Attrib V45    -0.44273015185933634
#>     Attrib V46    -0.2324939950740488
#>     Attrib V47    0.006752625640655106
#>     Attrib V48    -0.46502783988082
#>     Attrib V49    -0.778444527272753
#>     Attrib V5    -0.4042326088122212
#>     Attrib V50    1.5380369158582965
#>     Attrib V51    -0.26765595142500975
#>     Attrib V52    -0.8842537703965677
#>     Attrib V53    -0.1393438282632291
#>     Attrib V54    -0.3135828795634368
#>     Attrib V55    0.760327306256794
#>     Attrib V56    0.3865992372313262
#>     Attrib V57    0.5310188127730142
#>     Attrib V58    0.04997240944974866
#>     Attrib V59    -0.22768568843000056
#>     Attrib V6    0.5836037650947352
#>     Attrib V60    0.053162161965363997
#>     Attrib V7    0.9479102039146483
#>     Attrib V8    0.21030080688684774
#>     Attrib V9    -1.377237876132826
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.29685428292238475
#>     Attrib V1    0.1124572086716686
#>     Attrib V10    0.17538948850728908
#>     Attrib V11    0.30193527782800156
#>     Attrib V12    0.4055202150291315
#>     Attrib V13    -0.025951061135071157
#>     Attrib V14    -0.4898022709920913
#>     Attrib V15    -0.2161910958233706
#>     Attrib V16    0.14035513549330833
#>     Attrib V17    0.5443040484056604
#>     Attrib V18    0.5251737945766108
#>     Attrib V19    0.17231940905430454
#>     Attrib V2    -0.2599898409222136
#>     Attrib V20    0.5694118217707349
#>     Attrib V21    0.2495104291684303
#>     Attrib V22    0.43109835758233206
#>     Attrib V23    0.33207138946833953
#>     Attrib V24    0.05200124424669166
#>     Attrib V25    0.39446341098973425
#>     Attrib V26    0.07991953297149273
#>     Attrib V27    -0.4856454912909759
#>     Attrib V28    0.3568933275885672
#>     Attrib V29    -0.30450592829814677
#>     Attrib V3    -0.3766901483897093
#>     Attrib V30    0.005670619855116252
#>     Attrib V31    -1.006897452224888
#>     Attrib V32    -0.14445819793499515
#>     Attrib V33    0.20582879602497686
#>     Attrib V34    -0.2363061972650516
#>     Attrib V35    0.6510791574915237
#>     Attrib V36    0.17400040197394942
#>     Attrib V37    -0.3856928218698379
#>     Attrib V38    0.137633141816653
#>     Attrib V39    0.3807127137230213
#>     Attrib V4    0.18929907351884961
#>     Attrib V40    -0.15181236766141595
#>     Attrib V41    -0.42196234984184977
#>     Attrib V42    0.1957652441338591
#>     Attrib V43    0.7070253882597652
#>     Attrib V44    0.4577744334350643
#>     Attrib V45    0.5837292713383918
#>     Attrib V46    0.16659020224138057
#>     Attrib V47    -0.10407213713721666
#>     Attrib V48    0.11628078953757502
#>     Attrib V49    0.3537229921904021
#>     Attrib V5    0.20110140470966825
#>     Attrib V50    -0.7826143406393521
#>     Attrib V51    -0.01008467772663819
#>     Attrib V52    0.3945598967527547
#>     Attrib V53    0.24105606013909897
#>     Attrib V54    0.45489460840710005
#>     Attrib V55    -0.3757970931064834
#>     Attrib V56    -0.041416712892717034
#>     Attrib V57    -0.22082914377103027
#>     Attrib V58    0.08822951261340628
#>     Attrib V59    0.3169791126357601
#>     Attrib V6    -0.3779762553945424
#>     Attrib V60    -0.0583149686251575
#>     Attrib V7    -0.4372057078795972
#>     Attrib V8    -0.019828195350656542
#>     Attrib V9    0.7709546528244435
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.24283466989892286
#>     Attrib V1    0.1732181059171808
#>     Attrib V10    0.1025336581438726
#>     Attrib V11    0.2984041035294878
#>     Attrib V12    0.2960728475373034
#>     Attrib V13    -0.012852681563175476
#>     Attrib V14    -0.42634462480185953
#>     Attrib V15    -0.20591590896838932
#>     Attrib V16    0.12141107045283868
#>     Attrib V17    0.43727539717410296
#>     Attrib V18    0.451478625532827
#>     Attrib V19    0.17822217466159312
#>     Attrib V2    -0.16137056235795383
#>     Attrib V20    0.48473278674916953
#>     Attrib V21    0.28871452211579046
#>     Attrib V22    0.4895570816910423
#>     Attrib V23    0.32642536036154823
#>     Attrib V24    -0.0049739366869006665
#>     Attrib V25    0.27617918872701314
#>     Attrib V26    0.05973568184204355
#>     Attrib V27    -0.45829995081091823
#>     Attrib V28    0.24653613747772893
#>     Attrib V29    -0.2815580771772033
#>     Attrib V3    -0.3214531243653523
#>     Attrib V30    0.0019134789835205173
#>     Attrib V31    -0.9084174739321879
#>     Attrib V32    -0.1527020503663455
#>     Attrib V33    0.2261364366046545
#>     Attrib V34    -0.28910853214711096
#>     Attrib V35    0.4603258210341385
#>     Attrib V36    0.024332536260942485
#>     Attrib V37    -0.48353772790842336
#>     Attrib V38    0.04560180123007474
#>     Attrib V39    0.33597328847906127
#>     Attrib V4    0.254649302805287
#>     Attrib V40    -0.082717862057951
#>     Attrib V41    -0.34324039975323467
#>     Attrib V42    0.21504430977122632
#>     Attrib V43    0.7359639393000632
#>     Attrib V44    0.3219568958019369
#>     Attrib V45    0.4663552320444862
#>     Attrib V46    0.18827825038022755
#>     Attrib V47    -0.1364504281363919
#>     Attrib V48    0.11136391377886677
#>     Attrib V49    0.3046304775198364
#>     Attrib V5    0.18661114265634832
#>     Attrib V50    -0.7563167528113691
#>     Attrib V51    -0.061129813584288976
#>     Attrib V52    0.43010728716333624
#>     Attrib V53    0.2882889295757323
#>     Attrib V54    0.3892517535647779
#>     Attrib V55    -0.39957489916193845
#>     Attrib V56    -0.02167451562859483
#>     Attrib V57    -0.17031458436043792
#>     Attrib V58    0.112354387191756
#>     Attrib V59    0.4179888521420556
#>     Attrib V6    -0.41819304527576373
#>     Attrib V60    -0.04008722176088577
#>     Attrib V7    -0.35658453372137816
#>     Attrib V8    0.01095949805753215
#>     Attrib V9    0.727561171132729
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.20001148174662448
#>     Attrib V1    0.11753536077532917
#>     Attrib V10    0.02373626316184497
#>     Attrib V11    0.09765131014664469
#>     Attrib V12    0.16155291766759705
#>     Attrib V13    0.0793073918463268
#>     Attrib V14    -0.14351508336293206
#>     Attrib V15    -0.07875356624758281
#>     Attrib V16    -4.987065208643605E-4
#>     Attrib V17    0.18115131395364895
#>     Attrib V18    0.1984090094743152
#>     Attrib V19    0.06040138032631282
#>     Attrib V2    -0.06369799551403055
#>     Attrib V20    0.26127601906885306
#>     Attrib V21    0.15117602784478637
#>     Attrib V22    0.1681176967070263
#>     Attrib V23    0.18315788154560494
#>     Attrib V24    0.04017639518311871
#>     Attrib V25    0.1730040415092273
#>     Attrib V26    -0.02659245624427999
#>     Attrib V27    -0.17993980757613665
#>     Attrib V28    0.09367961009778687
#>     Attrib V29    -0.08826788237047112
#>     Attrib V3    -0.028283367342359932
#>     Attrib V30    -0.017975109788891143
#>     Attrib V31    -0.42229084591800653
#>     Attrib V32    -0.033885883502027904
#>     Attrib V33    0.057008961824718596
#>     Attrib V34    -0.09601995462278813
#>     Attrib V35    0.1670285179934532
#>     Attrib V36    -0.03858825523106065
#>     Attrib V37    -0.17398646214953675
#>     Attrib V38    0.0017105589973730956
#>     Attrib V39    0.20763627078502417
#>     Attrib V4    0.14710788019920776
#>     Attrib V40    -0.0027527503639012607
#>     Attrib V41    -0.09920453734127203
#>     Attrib V42    0.0978301598457875
#>     Attrib V43    0.22841901342437143
#>     Attrib V44    0.1226483413770159
#>     Attrib V45    0.14943943633107495
#>     Attrib V46    0.08499664818422091
#>     Attrib V47    0.006120752350073857
#>     Attrib V48    0.04120874047473237
#>     Attrib V49    0.16222647873072785
#>     Attrib V5    0.1330736530024492
#>     Attrib V50    -0.3088841259310996
#>     Attrib V51    -0.07472431225802682
#>     Attrib V52    0.18292576272417518
#>     Attrib V53    0.1799544590561266
#>     Attrib V54    0.13504836009609741
#>     Attrib V55    -0.15288187660254618
#>     Attrib V56    0.026387919985357916
#>     Attrib V57    -0.03091903846979863
#>     Attrib V58    0.03924146405541997
#>     Attrib V59    0.22648906373034583
#>     Attrib V6    -0.1345735716436833
#>     Attrib V60    0.06059837841876807
#>     Attrib V7    -0.15096869665688076
#>     Attrib V8    -0.060513991411875995
#>     Attrib V9    0.2709836159393116
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.2727973816329883
#>     Attrib V1    0.2399363187339712
#>     Attrib V10    0.1483385157306921
#>     Attrib V11    0.27533523600595455
#>     Attrib V12    0.3280914110471274
#>     Attrib V13    -0.03347278455415543
#>     Attrib V14    -0.4558457272266659
#>     Attrib V15    -0.1511606040328692
#>     Attrib V16    0.06683907023275867
#>     Attrib V17    0.41594468456899414
#>     Attrib V18    0.43040116521926375
#>     Attrib V19    0.10137409036329906
#>     Attrib V2    -0.1719304528530742
#>     Attrib V20    0.47943323849972425
#>     Attrib V21    0.27875490972926525
#>     Attrib V22    0.4334634327279165
#>     Attrib V23    0.3268780122158249
#>     Attrib V24    -0.0037721980628836562
#>     Attrib V25    0.28795088669035407
#>     Attrib V26    0.07152021995721201
#>     Attrib V27    -0.5231771475079919
#>     Attrib V28    0.17238297009566947
#>     Attrib V29    -0.3705575536096852
#>     Attrib V3    -0.32325241251819015
#>     Attrib V30    0.005835858051009904
#>     Attrib V31    -0.8089651442872392
#>     Attrib V32    -0.12940513999552722
#>     Attrib V33    0.20268063650827206
#>     Attrib V34    -0.3147680179185862
#>     Attrib V35    0.4785376248466175
#>     Attrib V36    0.011660109878914193
#>     Attrib V37    -0.4229288962925831
#>     Attrib V38    0.002551949145667972
#>     Attrib V39    0.3539325334663557
#>     Attrib V4    0.19439453954270136
#>     Attrib V40    -0.1138162920481159
#>     Attrib V41    -0.3546403662001655
#>     Attrib V42    0.17175639051479272
#>     Attrib V43    0.6264327894320342
#>     Attrib V44    0.36978073410791357
#>     Attrib V45    0.36739646718556923
#>     Attrib V46    0.15551953768970753
#>     Attrib V47    -0.13047757768214238
#>     Attrib V48    0.10295397597487284
#>     Attrib V49    0.3582288097449898
#>     Attrib V5    0.11950447076756816
#>     Attrib V50    -0.677881539209464
#>     Attrib V51    -0.06360948697809442
#>     Attrib V52    0.3873104350836732
#>     Attrib V53    0.22996533566465407
#>     Attrib V54    0.4318710995317748
#>     Attrib V55    -0.3297986949667002
#>     Attrib V56    -0.011710908861973963
#>     Attrib V57    -0.19707920937599926
#>     Attrib V58    0.11339560878821955
#>     Attrib V59    0.38011097760466867
#>     Attrib V6    -0.3907583989597377
#>     Attrib V60    0.03398603828295235
#>     Attrib V7    -0.35742164479602867
#>     Attrib V8    -0.05101146224519595
#>     Attrib V9    0.6845777952689376
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.2720771439763713
#>     Attrib V1    -0.41314734031994177
#>     Attrib V10    -0.49447485233967303
#>     Attrib V11    -0.6031702809580229
#>     Attrib V12    -0.9105121846653456
#>     Attrib V13    -0.41824767475605784
#>     Attrib V14    0.7029302447047583
#>     Attrib V15    0.573403671557966
#>     Attrib V16    0.25731525533283733
#>     Attrib V17    -0.30698045582724337
#>     Attrib V18    -0.3050475868677469
#>     Attrib V19    0.2974747677695631
#>     Attrib V2    -0.02353821944910028
#>     Attrib V20    -0.33344652064641866
#>     Attrib V21    -0.15513347627211618
#>     Attrib V22    -0.6436429029028865
#>     Attrib V23    -0.5176569466814258
#>     Attrib V24    -0.013274432803869826
#>     Attrib V25    -0.16668685730014807
#>     Attrib V26    0.3082243605188415
#>     Attrib V27    0.6658232343137764
#>     Attrib V28    -0.9131638791893677
#>     Attrib V29    -0.04840290060837655
#>     Attrib V3    0.38809295605255806
#>     Attrib V30    -0.37787575889568126
#>     Attrib V31    0.9199598189156498
#>     Attrib V32    -0.28446793985876884
#>     Attrib V33    -0.42153142192081633
#>     Attrib V34    0.557586831008258
#>     Attrib V35    -0.7286107927635314
#>     Attrib V36    0.44420130932425445
#>     Attrib V37    0.8624000176565304
#>     Attrib V38    0.11699338873550046
#>     Attrib V39    -0.5731905321192127
#>     Attrib V4    -0.24814508294801213
#>     Attrib V40    -0.043003154118263165
#>     Attrib V41    -0.011686309841479147
#>     Attrib V42    -0.12207192005697082
#>     Attrib V43    -0.7338197830066323
#>     Attrib V44    -0.1009410600796231
#>     Attrib V45    -0.43843980691638706
#>     Attrib V46    -0.18360618532658354
#>     Attrib V47    0.13409081906334827
#>     Attrib V48    -0.26935260009814277
#>     Attrib V49    -0.7079575404399367
#>     Attrib V5    -0.5480060230568933
#>     Attrib V50    1.7356458439238298
#>     Attrib V51    0.0247613882011457
#>     Attrib V52    -0.9066353504832045
#>     Attrib V53    -0.19625322364149617
#>     Attrib V54    -0.19281231486613104
#>     Attrib V55    0.9780083651205996
#>     Attrib V56    0.5394119869168
#>     Attrib V57    0.6476903794425537
#>     Attrib V58    0.14251014473273227
#>     Attrib V59    -0.25134102891780824
#>     Attrib V6    0.3679798596704684
#>     Attrib V60    0.12832990424873592
#>     Attrib V7    0.7106678306946056
#>     Attrib V8    0.24473473067173498
#>     Attrib V9    -1.426994266242615
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.16632124442966667
#>     Attrib V1    0.07203237291095928
#>     Attrib V10    0.07303686771921741
#>     Attrib V11    0.024803655622859615
#>     Attrib V12    0.023355463019933208
#>     Attrib V13    0.013522236869412096
#>     Attrib V14    -0.04532383602062325
#>     Attrib V15    -0.022613403264463594
#>     Attrib V16    0.03735536309647167
#>     Attrib V17    0.051944161226996556
#>     Attrib V18    0.07543348201509072
#>     Attrib V19    0.02545989291558646
#>     Attrib V2    0.013534521426620686
#>     Attrib V20    -0.04474671132299455
#>     Attrib V21    -0.04278197456527132
#>     Attrib V22    -0.029011803889298172
#>     Attrib V23    -0.014609159075808535
#>     Attrib V24    0.014698276155684451
#>     Attrib V25    -0.01937764730681907
#>     Attrib V26    -0.10017797134098615
#>     Attrib V27    -0.09857777240009383
#>     Attrib V28    -0.039636601410000936
#>     Attrib V29    -0.05856940091816078
#>     Attrib V3    0.09072448506943896
#>     Attrib V30    -0.05652836748700257
#>     Attrib V31    0.006092979922165839
#>     Attrib V32    0.11479517944784598
#>     Attrib V33    0.08783469904842163
#>     Attrib V34    0.12861492670212676
#>     Attrib V35    0.07940932725233905
#>     Attrib V36    0.07355026704302277
#>     Attrib V37    0.11452616045272511
#>     Attrib V38    0.07090761197944392
#>     Attrib V39    0.08471643074592283
#>     Attrib V4    0.13004110957850648
#>     Attrib V40    0.08111766330936578
#>     Attrib V41    0.13339833238521667
#>     Attrib V42    0.1281153429288668
#>     Attrib V43    0.07735541827929522
#>     Attrib V44    0.0564042792424016
#>     Attrib V45    0.07194431402761498
#>     Attrib V46    0.06828936864411839
#>     Attrib V47    0.04133835089070906
#>     Attrib V48    0.02457336108320251
#>     Attrib V49    0.0046012265111649185
#>     Attrib V5    0.10774116267421814
#>     Attrib V50    0.11623321143140469
#>     Attrib V51    0.06659003561057084
#>     Attrib V52    0.09762568476830284
#>     Attrib V53    0.12991016928112042
#>     Attrib V54    0.02101979752675672
#>     Attrib V55    0.05837917583241021
#>     Attrib V56    0.11170154741261508
#>     Attrib V57    0.13359290974937274
#>     Attrib V58    0.13224673569256143
#>     Attrib V59    0.024774298297664525
#>     Attrib V6    0.12427611015755932
#>     Attrib V60    0.06176520475350631
#>     Attrib V7    0.051666617748923394
#>     Attrib V8    0.05233659214478462
#>     Attrib V9    0.10553186827638733
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.10874384912693859
#>     Attrib V1    0.1030856224371039
#>     Attrib V10    0.10901225563981894
#>     Attrib V11    0.06603403110505361
#>     Attrib V12    0.010982892532947998
#>     Attrib V13    -0.05118422371349361
#>     Attrib V14    -0.042482639239239194
#>     Attrib V15    0.0517243794756152
#>     Attrib V16    -0.01210540983496517
#>     Attrib V17    0.003272646949731979
#>     Attrib V18    0.02411997837690114
#>     Attrib V19    0.020386259281094585
#>     Attrib V2    0.11032007464119917
#>     Attrib V20    -0.03354447460597834
#>     Attrib V21    -0.027802631868252055
#>     Attrib V22    0.03973616200069722
#>     Attrib V23    0.0038399573708808245
#>     Attrib V24    0.012768690941938146
#>     Attrib V25    -0.060598612747015494
#>     Attrib V26    -0.09681773950039191
#>     Attrib V27    -0.07890943253130202
#>     Attrib V28    -0.05339943099741848
#>     Attrib V29    -0.08078808353093306
#>     Attrib V3    0.05835593703398369
#>     Attrib V30    0.008294111731574858
#>     Attrib V31    0.08321719518477401
#>     Attrib V32    0.07648849080182472
#>     Attrib V33    0.14919491432240875
#>     Attrib V34    0.07848507348822892
#>     Attrib V35    0.1376820746865993
#>     Attrib V36    0.062407077427822866
#>     Attrib V37    0.05902168981677354
#>     Attrib V38    0.10973522364522666
#>     Attrib V39    0.11515413957113611
#>     Attrib V4    0.12180980692475026
#>     Attrib V40    0.0875308935576865
#>     Attrib V41    0.15144056166705983
#>     Attrib V42    0.0901463989164123
#>     Attrib V43    0.15120503459384937
#>     Attrib V44    0.13587400891692553
#>     Attrib V45    0.11038777941210064
#>     Attrib V46    0.026871945797131105
#>     Attrib V47    -0.004189186599922866
#>     Attrib V48    0.07785302040347762
#>     Attrib V49    -0.0020172470416343078
#>     Attrib V5    0.1036802881301707
#>     Attrib V50    0.07677957890589901
#>     Attrib V51    0.007345856689460528
#>     Attrib V52    0.032878744099563095
#>     Attrib V53    0.06326175384084853
#>     Attrib V54    0.026399560009255803
#>     Attrib V55    0.06614852923019802
#>     Attrib V56    0.1225259758178305
#>     Attrib V57    0.1591390953415869
#>     Attrib V58    0.052217128117110226
#>     Attrib V59    0.025199203524081164
#>     Attrib V6    0.11828133261798204
#>     Attrib V60    0.05169287387843444
#>     Attrib V7    0.017241163648957437
#>     Attrib V8    0.12270493728188354
#>     Attrib V9    0.09357174486089732
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.20457440363594467
#>     Attrib V1    0.08936469598989355
#>     Attrib V10    0.07678064016252195
#>     Attrib V11    0.04838425233992377
#>     Attrib V12    0.028975258551161762
#>     Attrib V13    -0.014749627082454076
#>     Attrib V14    -0.0160311164373889
#>     Attrib V15    -0.020473679544662858
#>     Attrib V16    0.005926641323717589
#>     Attrib V17    -0.0038235387601894227
#>     Attrib V18    0.09486705510002072
#>     Attrib V19    -0.025018072600098966
#>     Attrib V2    0.056467200658180845
#>     Attrib V20    0.03515638000659772
#>     Attrib V21    0.029005581618977223
#>     Attrib V22    -0.0033868906420676773
#>     Attrib V23    0.0294900432615123
#>     Attrib V24    -0.0340529575827558
#>     Attrib V25    -3.1479756915303754E-4
#>     Attrib V26    -0.033269318890823935
#>     Attrib V27    -0.06992304914166765
#>     Attrib V28    -0.033465637653522645
#>     Attrib V29    -0.05787582698201364
#>     Attrib V3    0.10906480530691016
#>     Attrib V30    -0.057463096112162645
#>     Attrib V31    -0.036288489990644206
#>     Attrib V32    0.05783321034025216
#>     Attrib V33    0.07776763153819218
#>     Attrib V34    0.09111559083642583
#>     Attrib V35    0.0691229407239646
#>     Attrib V36    0.11794483471732607
#>     Attrib V37    0.02975193530897958
#>     Attrib V38    0.027662676490131134
#>     Attrib V39    0.11054304540767101
#>     Attrib V4    0.09519425417310594
#>     Attrib V40    0.056784206832586864
#>     Attrib V41    0.02478489740803759
#>     Attrib V42    0.06693698704784139
#>     Attrib V43    0.09146278733157068
#>     Attrib V44    0.12642492242001246
#>     Attrib V45    0.03689253838308073
#>     Attrib V46    0.03730422668654562
#>     Attrib V47    0.07808350140365601
#>     Attrib V48    0.056922519564360126
#>     Attrib V49    0.06908243888572066
#>     Attrib V5    0.10539671300158701
#>     Attrib V50    0.003698151389722345
#>     Attrib V51    0.052888306754325126
#>     Attrib V52    0.07024374586776441
#>     Attrib V53    0.10804144378464933
#>     Attrib V54    0.02032378626061318
#>     Attrib V55    0.057037424426102844
#>     Attrib V56    0.1220895483374304
#>     Attrib V57    0.05720389188320709
#>     Attrib V58    0.0863744538106816
#>     Attrib V59    0.09242851156926823
#>     Attrib V6    0.040890947603573743
#>     Attrib V60    0.08522811804289092
#>     Attrib V7    0.05511626583773314
#>     Attrib V8    0.1068599263252243
#>     Attrib V9    0.1074001227698964
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    -0.14011960107223834
#>     Attrib V1    0.13769683745734704
#>     Attrib V10    0.09705657808820511
#>     Attrib V11    0.17719974108566913
#>     Attrib V12    0.383143956793858
#>     Attrib V13    0.10605285404039652
#>     Attrib V14    -0.2557628199292934
#>     Attrib V15    -0.10788647356349682
#>     Attrib V16    -0.03508411017045873
#>     Attrib V17    0.1927139612839251
#>     Attrib V18    0.20837102770082377
#>     Attrib V19    0.05186675152647153
#>     Attrib V2    -0.05165732136631314
#>     Attrib V20    0.2742358895958359
#>     Attrib V21    0.11589380583701732
#>     Attrib V22    0.3436208759030466
#>     Attrib V23    0.24112961094593496
#>     Attrib V24    0.05673193972822628
#>     Attrib V25    0.26951472192872594
#>     Attrib V26    0.08422328305797198
#>     Attrib V27    -0.27657452385633224
#>     Attrib V28    0.30965323631812575
#>     Attrib V29    -0.12056558067260013
#>     Attrib V3    -0.20437979257442357
#>     Attrib V30    -0.006229651818721699
#>     Attrib V31    -0.613180403387142
#>     Attrib V32    -0.07508603027157906
#>     Attrib V33    0.1572058475884636
#>     Attrib V34    -0.22427983340998833
#>     Attrib V35    0.3973381727214471
#>     Attrib V36    -0.014670445793949063
#>     Attrib V37    -0.3401280805409463
#>     Attrib V38    -0.03467271500495687
#>     Attrib V39    0.2378779834836851
#>     Attrib V4    0.18492612874186481
#>     Attrib V40    -0.029813518367811143
#>     Attrib V41    -0.17760584213177846
#>     Attrib V42    0.12560817946214042
#>     Attrib V43    0.40928783945863634
#>     Attrib V44    0.147527147612289
#>     Attrib V45    0.3421484692301427
#>     Attrib V46    0.14279725812117136
#>     Attrib V47    -0.09700285611381067
#>     Attrib V48    0.0723912459367704
#>     Attrib V49    0.31238851605717377
#>     Attrib V5    0.16740898343453886
#>     Attrib V50    -0.613150280590833
#>     Attrib V51    -0.05642103883789671
#>     Attrib V52    0.3877580405090497
#>     Attrib V53    0.2387972895686939
#>     Attrib V54    0.2725217615750769
#>     Attrib V55    -0.2432190281017151
#>     Attrib V56    -0.1126838529218398
#>     Attrib V57    -0.20833264271701005
#>     Attrib V58    0.08934253633756423
#>     Attrib V59    0.21856337002546924
#>     Attrib V6    -0.26979800343445454
#>     Attrib V60    0.011311425989237393
#>     Attrib V7    -0.29561683288228063
#>     Attrib V8    -0.11717809554518975
#>     Attrib V9    0.48287017096145124
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.43320478343778257
#>     Attrib V1    0.4780527351298173
#>     Attrib V10    0.14901677340367156
#>     Attrib V11    0.22562282844743942
#>     Attrib V12    0.40408163379570977
#>     Attrib V13    -0.2113913188905865
#>     Attrib V14    -0.6477272413850228
#>     Attrib V15    -0.21881193409912505
#>     Attrib V16    0.2179401514680039
#>     Attrib V17    0.7189727691926994
#>     Attrib V18    0.7624841234295956
#>     Attrib V19    0.2022204200854918
#>     Attrib V2    -0.28818411941296906
#>     Attrib V20    0.7652668440611335
#>     Attrib V21    0.4894566403103672
#>     Attrib V22    0.5613492836092284
#>     Attrib V23    0.4202924404169142
#>     Attrib V24    0.08503716510712375
#>     Attrib V25    0.3857137938580722
#>     Attrib V26    -0.07501143301943061
#>     Attrib V27    -0.9001199285363147
#>     Attrib V28    0.03614500969243138
#>     Attrib V29    -0.7228279893795958
#>     Attrib V3    -0.38798719413820926
#>     Attrib V30    -0.047947095486301695
#>     Attrib V31    -0.9708987033230531
#>     Attrib V32    -0.1041604957459803
#>     Attrib V33    0.3032317016015899
#>     Attrib V34    -0.5863223332502028
#>     Attrib V35    0.29461212064116676
#>     Attrib V36    -0.3581752948016947
#>     Attrib V37    -1.1720442388308974
#>     Attrib V38    -0.17786303223906944
#>     Attrib V39    0.4840332341419305
#>     Attrib V4    0.3012623644940609
#>     Attrib V40    -0.03604595586982965
#>     Attrib V41    -0.42823193276835264
#>     Attrib V42    0.45293115563028163
#>     Attrib V43    1.0685682443079083
#>     Attrib V44    0.46959294108186506
#>     Attrib V45    0.45167097734262784
#>     Attrib V46    0.0690772191943101
#>     Attrib V47    -0.23654178016835173
#>     Attrib V48    0.22592546199301097
#>     Attrib V49    0.5555059592857873
#>     Attrib V5    0.25236850616474893
#>     Attrib V50    -0.8584566005837091
#>     Attrib V51    -0.0035428040509594408
#>     Attrib V52    0.5860140510820815
#>     Attrib V53    0.42860192509744627
#>     Attrib V54    0.6152027132205116
#>     Attrib V55    -0.5260138693059538
#>     Attrib V56    0.11926305036856003
#>     Attrib V57    -0.23709807128148647
#>     Attrib V58    0.24120380753671997
#>     Attrib V59    0.7271174328047637
#>     Attrib V6    -0.4595162936354416
#>     Attrib V60    -0.00630463502343143
#>     Attrib V7    -0.3203981722820202
#>     Attrib V8    0.09722863791387806
#>     Attrib V9    1.0929129749469049
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.07524420306238327
#>     Attrib V1    -0.23640251107890756
#>     Attrib V10    -0.3795930288364396
#>     Attrib V11    -0.5291534564699195
#>     Attrib V12    -0.8269552650432603
#>     Attrib V13    -0.4099992600351273
#>     Attrib V14    0.5154177142775744
#>     Attrib V15    0.36915104568618634
#>     Attrib V16    0.11453190088159819
#>     Attrib V17    -0.2844270702694046
#>     Attrib V18    -0.20896460621700494
#>     Attrib V19    0.20133517887484423
#>     Attrib V2    0.006014265372675915
#>     Attrib V20    -0.2235216724105532
#>     Attrib V21    0.042423802983580255
#>     Attrib V22    -0.540430123028122
#>     Attrib V23    -0.3368435673813717
#>     Attrib V24    0.07372037835162508
#>     Attrib V25    -0.21057571531459277
#>     Attrib V26    0.03336836997748091
#>     Attrib V27    0.48924732577376395
#>     Attrib V28    -0.8690779001969109
#>     Attrib V29    -0.03045413055146567
#>     Attrib V3    0.37515468778408817
#>     Attrib V30    -0.21768760938660564
#>     Attrib V31    1.0179698276646265
#>     Attrib V32    -0.13766642897155906
#>     Attrib V33    -0.2757245368822335
#>     Attrib V34    0.5379008402566021
#>     Attrib V35    -0.6344039186751135
#>     Attrib V36    0.37380762266677275
#>     Attrib V37    0.835391536911762
#>     Attrib V38    0.24213394360836446
#>     Attrib V39    -0.3856840236441761
#>     Attrib V4    -0.10494496185632896
#>     Attrib V40    0.10846215922863364
#>     Attrib V41    0.13264500778193117
#>     Attrib V42    -0.1915076049782051
#>     Attrib V43    -0.6740050812475307
#>     Attrib V44    -0.10294965336105588
#>     Attrib V45    -0.4979904339903702
#>     Attrib V46    -0.25958698571382377
#>     Attrib V47    -0.034029082749899416
#>     Attrib V48    -0.38081810926088866
#>     Attrib V49    -0.7292035872891205
#>     Attrib V5    -0.37707100046968434
#>     Attrib V50    1.4467205595383892
#>     Attrib V51    -0.08851305583911928
#>     Attrib V52    -0.7368493393220122
#>     Attrib V53    -0.20222432485018693
#>     Attrib V54    -0.25584382335991396
#>     Attrib V55    0.7172008983399458
#>     Attrib V56    0.3266308991421861
#>     Attrib V57    0.5981535946488035
#>     Attrib V58    0.06720749193040376
#>     Attrib V59    -0.25452293467055553
#>     Attrib V6    0.5028248153448951
#>     Attrib V60    0.05630860957448248
#>     Attrib V7    0.8590723718581812
#>     Attrib V8    0.2602716577292701
#>     Attrib V9    -1.0966325779827637
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.14697275466537976
#>     Attrib V1    0.17939014378859874
#>     Attrib V10    0.07979563664836237
#>     Attrib V11    0.09734889226893598
#>     Attrib V12    0.12138044456574418
#>     Attrib V13    -0.007372543222270846
#>     Attrib V14    -0.07100629891036071
#>     Attrib V15    -0.05794591046647458
#>     Attrib V16    0.08299339468543714
#>     Attrib V17    0.13048977105326454
#>     Attrib V18    0.1353158882120772
#>     Attrib V19    0.02992036080106586
#>     Attrib V2    0.01556804228666791
#>     Attrib V20    0.18601839681902468
#>     Attrib V21    0.08112442396928035
#>     Attrib V22    0.07673739613784751
#>     Attrib V23    0.02540500054163285
#>     Attrib V24    0.0069512463612184825
#>     Attrib V25    0.0447529880768063
#>     Attrib V26    -0.0631527271045509
#>     Attrib V27    -0.21342973766431497
#>     Attrib V28    -0.002289408020895487
#>     Attrib V29    -0.06829086507070593
#>     Attrib V3    -0.05628366160201842
#>     Attrib V30    -0.03039601252317495
#>     Attrib V31    -0.19954643998561616
#>     Attrib V32    -0.0220871863210082
#>     Attrib V33    0.013904252488958978
#>     Attrib V34    -0.09994105326178924
#>     Attrib V35    0.12456215466078582
#>     Attrib V36    -0.024177311030169284
#>     Attrib V37    -0.1282388130478387
#>     Attrib V38    -0.029909948379325594
#>     Attrib V39    0.08465128284034701
#>     Attrib V4    0.14195673563880995
#>     Attrib V40    -5.489627896186222E-4
#>     Attrib V41    -0.12716027041322472
#>     Attrib V42    0.033864274365675615
#>     Attrib V43    0.22636444214059898
#>     Attrib V44    0.08716234858544963
#>     Attrib V45    0.07899452892903729
#>     Attrib V46    0.07024977758198148
#>     Attrib V47    -0.037586691543423895
#>     Attrib V48    0.09173068711601672
#>     Attrib V49    0.10609648543899029
#>     Attrib V5    0.10887159069028693
#>     Attrib V50    -0.15483126997670718
#>     Attrib V51    -0.04797087114614137
#>     Attrib V52    0.1687962442124664
#>     Attrib V53    0.13133611865701061
#>     Attrib V54    0.14597856674182555
#>     Attrib V55    -0.04807832433414544
#>     Attrib V56    0.09579120654432087
#>     Attrib V57    0.01845784595734187
#>     Attrib V58    0.10502155309520861
#>     Attrib V59    0.14918301275216375
#>     Attrib V6    -0.09196911209304462
#>     Attrib V60    0.07077612108974973
#>     Attrib V7    -0.12628635017424472
#>     Attrib V8    -0.05311707680201293
#>     Attrib V9    0.23482176988589126
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.31208841208575755
#>     Attrib V1    0.25117625946515343
#>     Attrib V10    -0.009152194781680468
#>     Attrib V11    0.14464043265683846
#>     Attrib V12    0.22277856819143207
#>     Attrib V13    -0.07148384310511739
#>     Attrib V14    -0.33288521518963277
#>     Attrib V15    -0.09692068105240956
#>     Attrib V16    0.1382782809824263
#>     Attrib V17    0.4924521707579587
#>     Attrib V18    0.48223333718748307
#>     Attrib V19    0.18246304119050974
#>     Attrib V2    -0.19639976305910462
#>     Attrib V20    0.4867109564569662
#>     Attrib V21    0.2931578361252964
#>     Attrib V22    0.38039867525921606
#>     Attrib V23    0.25417123103953276
#>     Attrib V24    -0.0312969820763321
#>     Attrib V25    0.20959407603108365
#>     Attrib V26    -0.023990990471833014
#>     Attrib V27    -0.5765922723401268
#>     Attrib V28    0.010461008012066418
#>     Attrib V29    -0.4204071985307074
#>     Attrib V3    -0.17213032063821793
#>     Attrib V30    -0.04981067949991283
#>     Attrib V31    -0.71758809408955
#>     Attrib V32    -0.16126576763301664
#>     Attrib V33    0.1428910958506575
#>     Attrib V34    -0.2986718265365105
#>     Attrib V35    0.36374280867914965
#>     Attrib V36    -0.02715740419496679
#>     Attrib V37    -0.45881546110372023
#>     Attrib V38    -0.024198143390994863
#>     Attrib V39    0.30123101142309905
#>     Attrib V4    0.2740007259889143
#>     Attrib V40    -0.12330828335784967
#>     Attrib V41    -0.32312997725684106
#>     Attrib V42    0.22252730586139557
#>     Attrib V43    0.622154405884871
#>     Attrib V44    0.30517073386522253
#>     Attrib V45    0.3907154228041372
#>     Attrib V46    0.10082420504584891
#>     Attrib V47    -0.0851414009751078
#>     Attrib V48    0.03740345311440842
#>     Attrib V49    0.2558491799095511
#>     Attrib V5    0.1467044842623265
#>     Attrib V50    -0.5338476147408331
#>     Attrib V51    -0.1263576834101238
#>     Attrib V52    0.3528734161318789
#>     Attrib V53    0.30066985291432063
#>     Attrib V54    0.36409406995744725
#>     Attrib V55    -0.25440067799024646
#>     Attrib V56    0.11576670472523766
#>     Attrib V57    -0.14312439889190437
#>     Attrib V58    0.13621188582728824
#>     Attrib V59    0.44720405452098705
#>     Attrib V6    -0.27491943351236486
#>     Attrib V60    0.023989399495117636
#>     Attrib V7    -0.2251775378950964
#>     Attrib V8    -0.0010871779962861525
#>     Attrib V9    0.5587405422698398
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.09307331529495295
#>     Attrib V1    -0.14022471326892902
#>     Attrib V10    -0.21628548900259487
#>     Attrib V11    -0.5561512197192142
#>     Attrib V12    -0.7742823694163962
#>     Attrib V13    -0.4474042790365722
#>     Attrib V14    0.14177464743661689
#>     Attrib V15    0.055380234917966564
#>     Attrib V16    -0.28314651291135207
#>     Attrib V17    -0.5602728472696661
#>     Attrib V18    -0.5296025272179837
#>     Attrib V19    -0.18980298973273277
#>     Attrib V2    0.0669191809129572
#>     Attrib V20    -0.3264333984781281
#>     Attrib V21    -0.049063649715295754
#>     Attrib V22    -0.31182650920746907
#>     Attrib V23    0.18844515892435854
#>     Attrib V24    0.19000390222596691
#>     Attrib V25    -0.4211137149699719
#>     Attrib V26    -0.3673812311963908
#>     Attrib V27    -0.03137279405731557
#>     Attrib V28    -0.7831289567345399
#>     Attrib V29    -0.3318428695812041
#>     Attrib V3    0.27872131755465046
#>     Attrib V30    -0.5691263919999507
#>     Attrib V31    0.4542959428167382
#>     Attrib V32    0.13087844463575407
#>     Attrib V33    0.06251999010732139
#>     Attrib V34    0.5496221183554971
#>     Attrib V35    -0.13951265272813532
#>     Attrib V36    0.530438011302551
#>     Attrib V37    0.721920700591611
#>     Attrib V38    0.13622382803825783
#>     Attrib V39    -0.216684394910571
#>     Attrib V4    0.022021915917340356
#>     Attrib V40    0.26206945854608893
#>     Attrib V41    0.5712466693242957
#>     Attrib V42    0.11296724872800638
#>     Attrib V43    -0.16209608093123468
#>     Attrib V44    -0.060958519038940985
#>     Attrib V45    -0.46561124867784465
#>     Attrib V46    -0.2571534218800524
#>     Attrib V47    -0.14749089441354138
#>     Attrib V48    -0.4577945386976471
#>     Attrib V49    -0.5743605861788827
#>     Attrib V5    -0.1909779640969832
#>     Attrib V50    0.9660379404765176
#>     Attrib V51    0.36657857736871036
#>     Attrib V52    -0.04412398031831469
#>     Attrib V53    0.039779382828836043
#>     Attrib V54    -0.06778855533969971
#>     Attrib V55    0.5520319159365802
#>     Attrib V56    0.255982364806464
#>     Attrib V57    0.6373257474660964
#>     Attrib V58    0.33993561416252494
#>     Attrib V59    0.029356071990264576
#>     Attrib V6    0.6037833985280414
#>     Attrib V60    -0.08123904364281968
#>     Attrib V7    0.5268673109228073
#>     Attrib V8    0.3490711505387877
#>     Attrib V9    -0.547613167644427
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.46586914504090116
#>     Attrib V1    0.6780887203142179
#>     Attrib V10    1.3752723463835543
#>     Attrib V11    1.3123878042092871
#>     Attrib V12    1.5302312966536402
#>     Attrib V13    1.0827356350462185
#>     Attrib V14    -0.09798432454291346
#>     Attrib V15    -0.30059957716214303
#>     Attrib V16    -0.5684204579373853
#>     Attrib V17    -0.7381704731890915
#>     Attrib V18    -0.6666932098662476
#>     Attrib V19    -0.864405804254637
#>     Attrib V2    0.7348224952387364
#>     Attrib V20    -0.47275199667149836
#>     Attrib V21    -0.1750080192672227
#>     Attrib V22    0.2599306001586528
#>     Attrib V23    0.10188188141861247
#>     Attrib V24    -0.3216842711866128
#>     Attrib V25    -0.09820382563578468
#>     Attrib V26    0.47034840175998843
#>     Attrib V27    0.4512964707687143
#>     Attrib V28    1.3548250340111676
#>     Attrib V29    0.815969468855607
#>     Attrib V3    -0.04799171886413414
#>     Attrib V30    0.32794669231105145
#>     Attrib V31    -0.24849773618153073
#>     Attrib V32    0.5936645389764084
#>     Attrib V33    0.02572799796799228
#>     Attrib V34    -0.5370086212413683
#>     Attrib V35    0.05952258644164091
#>     Attrib V36    -0.9309289466469512
#>     Attrib V37    -0.4042506192180202
#>     Attrib V38    -0.5221081246695102
#>     Attrib V39    0.1855964529948827
#>     Attrib V4    0.2200576502528805
#>     Attrib V40    0.2584287041011618
#>     Attrib V41    0.617606377595803
#>     Attrib V42    -0.2841258101032097
#>     Attrib V43    0.045937899977088886
#>     Attrib V44    -0.4685785465394393
#>     Attrib V45    -0.006489537869908262
#>     Attrib V46    0.18039944938871463
#>     Attrib V47    0.24218941209158293
#>     Attrib V48    0.49421586154233205
#>     Attrib V49    0.775965708083768
#>     Attrib V5    0.6130822109514071
#>     Attrib V50    -0.7927846565632606
#>     Attrib V51    0.8397567033969223
#>     Attrib V52    0.8397816297194477
#>     Attrib V53    0.38448345751928314
#>     Attrib V54    0.4423029667785321
#>     Attrib V55    -0.19042573151621123
#>     Attrib V56    -0.7152607565074843
#>     Attrib V57    -0.19374013216927885
#>     Attrib V58    0.05169608497736559
#>     Attrib V59    0.006979026299255416
#>     Attrib V6    -0.2771305152316838
#>     Attrib V60    0.25804219197754136
#>     Attrib V7    -0.8511822683233621
#>     Attrib V8    0.20203786694628892
#>     Attrib V9    1.5281358340905609
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.1176621661001553
#>     Attrib V1    -0.07727975309219645
#>     Attrib V10    -0.14962565353105484
#>     Attrib V11    -0.4128397598477038
#>     Attrib V12    -0.5317398253695421
#>     Attrib V13    -0.29970598259044656
#>     Attrib V14    0.16816720049469214
#>     Attrib V15    0.014772117643008282
#>     Attrib V16    -0.15515582143579953
#>     Attrib V17    -0.3606642153887711
#>     Attrib V18    -0.35373467817850296
#>     Attrib V19    -0.05992081468299828
#>     Attrib V2    0.0975307085960104
#>     Attrib V20    -0.2586063872571801
#>     Attrib V21    -0.037932665768077654
#>     Attrib V22    -0.21790695796324971
#>     Attrib V23    0.09165827398046399
#>     Attrib V24    0.1303117726771635
#>     Attrib V25    -0.3036236819069065
#>     Attrib V26    -0.32332917029690394
#>     Attrib V27    0.05212435578167149
#>     Attrib V28    -0.5508969782854917
#>     Attrib V29    -0.21436305125924926
#>     Attrib V3    0.20844754937224014
#>     Attrib V30    -0.3503258484584737
#>     Attrib V31    0.4492826632719567
#>     Attrib V32    0.12259501821087504
#>     Attrib V33    0.1634645909495674
#>     Attrib V34    0.45340975592796795
#>     Attrib V35    -0.05857212170460994
#>     Attrib V36    0.42561153285437303
#>     Attrib V37    0.6307999266620107
#>     Attrib V38    0.11693183160959998
#>     Attrib V39    -0.13516867515948622
#>     Attrib V4    0.03809523815884183
#>     Attrib V40    0.22892932394975654
#>     Attrib V41    0.4613790789466585
#>     Attrib V42    0.15499981085061126
#>     Attrib V43    -0.16673695727940085
#>     Attrib V44    -0.014519004435854856
#>     Attrib V45    -0.32273873073643505
#>     Attrib V46    -0.22158420792267472
#>     Attrib V47    -0.14769843981984374
#>     Attrib V48    -0.2823574516734186
#>     Attrib V49    -0.4096506589610644
#>     Attrib V5    -0.14166711511440017
#>     Attrib V50    0.7392811681492649
#>     Attrib V51    0.20352944086018168
#>     Attrib V52    -0.1392884722297288
#>     Attrib V53    0.006036037926398788
#>     Attrib V54    -0.05551764069029929
#>     Attrib V55    0.39797204377239126
#>     Attrib V56    0.2110003962914431
#>     Attrib V57    0.4762900129343952
#>     Attrib V58    0.2240024533773504
#>     Attrib V59    0.01741331708071545
#>     Attrib V6    0.5204015538551974
#>     Attrib V60    0.039982378026905276
#>     Attrib V7    0.47455327608251596
#>     Attrib V8    0.2882451852363631
#>     Attrib V9    -0.47928021815494
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    -0.1682452096338234
#>     Attrib V1    0.25955741253233994
#>     Attrib V10    0.21978092599709056
#>     Attrib V11    0.3316166258605901
#>     Attrib V12    0.4417747102798717
#>     Attrib V13    0.1085146639488959
#>     Attrib V14    -0.4651509692250941
#>     Attrib V15    -0.22077907312106082
#>     Attrib V16    0.04178520945908262
#>     Attrib V17    0.3674124961288465
#>     Attrib V18    0.46445641229322565
#>     Attrib V19    0.09170066318665182
#>     Attrib V2    -0.15258637427092894
#>     Attrib V20    0.411210601155165
#>     Attrib V21    0.2793998524199561
#>     Attrib V22    0.48726186254310133
#>     Attrib V23    0.32254202376974256
#>     Attrib V24    0.07488030395736478
#>     Attrib V25    0.31653045392827184
#>     Attrib V26    0.18847108579216224
#>     Attrib V27    -0.4335082723930138
#>     Attrib V28    0.31850633305223663
#>     Attrib V29    -0.22330934918691525
#>     Attrib V3    -0.3168077298092003
#>     Attrib V30    0.0111945192003432
#>     Attrib V31    -0.88487149307956
#>     Attrib V32    -0.10992116145908506
#>     Attrib V33    0.15367570449785983
#>     Attrib V34    -0.2928368840596019
#>     Attrib V35    0.5453704275633325
#>     Attrib V36    0.06973808123665819
#>     Attrib V37    -0.39344797386751207
#>     Attrib V38    0.034919531726600415
#>     Attrib V39    0.3694687425859758
#>     Attrib V4    0.21062510512072624
#>     Attrib V40    -0.1775001570622686
#>     Attrib V41    -0.3160470260390278
#>     Attrib V42    0.15346958298534316
#>     Attrib V43    0.6317735348638214
#>     Attrib V44    0.37748874799321624
#>     Attrib V45    0.4976737338551999
#>     Attrib V46    0.12735609357851985
#>     Attrib V47    -0.1676709796471055
#>     Attrib V48    0.10192639417825299
#>     Attrib V49    0.3288905753855816
#>     Attrib V5    0.18615986667741008
#>     Attrib V50    -0.7520260809027136
#>     Attrib V51    -0.013484383363754768
#>     Attrib V52    0.4488739024090397
#>     Attrib V53    0.27927499717751375
#>     Attrib V54    0.413008903430309
#>     Attrib V55    -0.36020274199990815
#>     Attrib V56    -0.1446432117008301
#>     Attrib V57    -0.24010240287060006
#>     Attrib V58    0.0803437948902417
#>     Attrib V59    0.38424377906984575
#>     Attrib V6    -0.3506877141438155
#>     Attrib V60    -0.012664309941910784
#>     Attrib V7    -0.45234163600861643
#>     Attrib V8    -0.06190167183323378
#>     Attrib V9    0.7732329712497646
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.7802120247982671
#>     Attrib V1    -0.4941034862342765
#>     Attrib V10    -1.761554770726887
#>     Attrib V11    -1.4925339967608091
#>     Attrib V12    -1.9889543199971003
#>     Attrib V13    -1.4538678690530487
#>     Attrib V14    0.26079037740447464
#>     Attrib V15    0.5436808801079666
#>     Attrib V16    0.7547091025525278
#>     Attrib V17    0.6095594951735611
#>     Attrib V18    0.41459154983739815
#>     Attrib V19    0.6831860132809632
#>     Attrib V2    -0.7186072518005168
#>     Attrib V20    0.46271218220193366
#>     Attrib V21    -0.04844583815364852
#>     Attrib V22    -0.6889050460028757
#>     Attrib V23    -0.5554200203870404
#>     Attrib V24    -0.052809152095663926
#>     Attrib V25    -0.2744905917668923
#>     Attrib V26    -0.81621147628849
#>     Attrib V27    -0.5032564888506627
#>     Attrib V28    -1.3871667054634327
#>     Attrib V29    -0.6474809993524097
#>     Attrib V3    0.2330025738258073
#>     Attrib V30    -0.26586966047895805
#>     Attrib V31    0.23184703305891383
#>     Attrib V32    -0.8092722420714012
#>     Attrib V33    -0.02876720872886286
#>     Attrib V34    0.8727714862479724
#>     Attrib V35    0.11197728396404229
#>     Attrib V36    1.46948887675104
#>     Attrib V37    0.8103938901761503
#>     Attrib V38    0.8542145103235027
#>     Attrib V39    -0.14356122863501353
#>     Attrib V4    -0.03848645368764303
#>     Attrib V40    -0.6532388834512534
#>     Attrib V41    -1.2197070390500848
#>     Attrib V42    0.3276538155673077
#>     Attrib V43    -0.14233186333830147
#>     Attrib V44    0.5774282246227151
#>     Attrib V45    0.1511851086091043
#>     Attrib V46    -0.1557881321891421
#>     Attrib V47    -0.40396999616211415
#>     Attrib V48    -0.7480211070781921
#>     Attrib V49    -1.2588157680665535
#>     Attrib V5    -0.898313416134264
#>     Attrib V50    0.9351855452053158
#>     Attrib V51    -1.4688596288100657
#>     Attrib V52    -1.0026588630437387
#>     Attrib V53    -0.6927947064634014
#>     Attrib V54    -0.6195689642448748
#>     Attrib V55    0.42792045870816847
#>     Attrib V56    0.9042191454818658
#>     Attrib V57    0.31673273200936986
#>     Attrib V58    0.01649891745266582
#>     Attrib V59    -0.24446890432631072
#>     Attrib V6    0.1990757100290286
#>     Attrib V60    -0.3036827942217389
#>     Attrib V7    1.042996861891723
#>     Attrib V8    -0.2516776943810669
#>     Attrib V9    -1.9343990788656316
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.13963916879420205
#>     Attrib V1    0.12082149533552476
#>     Attrib V10    0.15600881769701644
#>     Attrib V11    0.3136679447098003
#>     Attrib V12    0.4386328573875972
#>     Attrib V13    0.1011126335976063
#>     Attrib V14    -0.32758797275048535
#>     Attrib V15    -0.20226745853865716
#>     Attrib V16    -0.006458402654572892
#>     Attrib V17    0.27038961778744114
#>     Attrib V18    0.293492414796133
#>     Attrib V19    0.009512603560032095
#>     Attrib V2    -0.12760374542463013
#>     Attrib V20    0.3727054591655161
#>     Attrib V21    0.18519976424271076
#>     Attrib V22    0.406286732655926
#>     Attrib V23    0.2573469232426857
#>     Attrib V24    0.08835148102921828
#>     Attrib V25    0.32593548913850523
#>     Attrib V26    0.05250314017292224
#>     Attrib V27    -0.35024426330346875
#>     Attrib V28    0.3722374699359306
#>     Attrib V29    -0.08501924363158993
#>     Attrib V3    -0.2166007683336805
#>     Attrib V30    -0.016229684158083152
#>     Attrib V31    -0.7083165483439475
#>     Attrib V32    0.0015505915585856088
#>     Attrib V33    0.17416342943132243
#>     Attrib V34    -0.25797662942791233
#>     Attrib V35    0.47041275918972986
#>     Attrib V36    -0.019660966615981813
#>     Attrib V37    -0.32423470348433225
#>     Attrib V38    -0.004376882346209501
#>     Attrib V39    0.32030222022441296
#>     Attrib V4    0.12278963396785979
#>     Attrib V40    -0.05694026725002331
#>     Attrib V41    -0.186349955483199
#>     Attrib V42    0.09141198712453456
#>     Attrib V43    0.5798804881819456
#>     Attrib V44    0.19889996429978804
#>     Attrib V45    0.40326512798007186
#>     Attrib V46    0.14801496564284075
#>     Attrib V47    -0.04148516571625104
#>     Attrib V48    0.11593652980223566
#>     Attrib V49    0.3235789376373601
#>     Attrib V5    0.13889046721110956
#>     Attrib V50    -0.6817405078562975
#>     Attrib V51    -0.010064666296480437
#>     Attrib V52    0.45223277364552106
#>     Attrib V53    0.22412025992018916
#>     Attrib V54    0.2670075347570873
#>     Attrib V55    -0.30893544672933493
#>     Attrib V56    -0.05819524476219901
#>     Attrib V57    -0.19510225689318947
#>     Attrib V58    0.015092931870377762
#>     Attrib V59    0.24627174302379848
#>     Attrib V6    -0.3147745290090928
#>     Attrib V60    -0.007808486849755142
#>     Attrib V7    -0.42795197911461696
#>     Attrib V8    -0.08657931701763026
#>     Attrib V9    0.6389959248157652
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.15602130349611093
#>     Attrib V1    0.10768989135676903
#>     Attrib V10    0.10294954885592808
#>     Attrib V11    0.036781446758739185
#>     Attrib V12    0.05452796957521831
#>     Attrib V13    0.026919446800884633
#>     Attrib V14    -0.0019889121729408776
#>     Attrib V15    0.02816253917738959
#>     Attrib V16    0.011373226270423689
#>     Attrib V17    0.06273321821817454
#>     Attrib V18    0.03423186346316884
#>     Attrib V19    -0.02052952429073453
#>     Attrib V2    0.08197887760600486
#>     Attrib V20    -0.04533275005330329
#>     Attrib V21    0.006958982314389805
#>     Attrib V22    -0.008826608482250737
#>     Attrib V23    0.025494993329776693
#>     Attrib V24    -0.03688993282856224
#>     Attrib V25    -0.007003018153450988
#>     Attrib V26    -0.03059125611543536
#>     Attrib V27    -0.08218794309887653
#>     Attrib V28    -0.041245873147909576
#>     Attrib V29    -0.09429455198128223
#>     Attrib V3    0.059253174283418045
#>     Attrib V30    -0.004215860709122648
#>     Attrib V31    0.09354412110746732
#>     Attrib V32    0.06928026852723368
#>     Attrib V33    0.06535015967419487
#>     Attrib V34    0.08014450079140768
#>     Attrib V35    0.12424164614435883
#>     Attrib V36    0.09112084502960291
#>     Attrib V37    0.1371026246588594
#>     Attrib V38    0.029368364287732908
#>     Attrib V39    0.1257075518794332
#>     Attrib V4    0.1475438738866818
#>     Attrib V40    0.1297778019825375
#>     Attrib V41    0.12986667393698112
#>     Attrib V42    0.12809495204033608
#>     Attrib V43    0.07064190229042643
#>     Attrib V44    0.051397924778582536
#>     Attrib V45    0.06333572067775618
#>     Attrib V46    0.044344158724316046
#>     Attrib V47    0.00865833099257968
#>     Attrib V48    0.05968153348160995
#>     Attrib V49    -2.0534888417120272E-4
#>     Attrib V5    0.05862709393610117
#>     Attrib V50    0.05805104690852181
#>     Attrib V51    -0.014621313181297689
#>     Attrib V52    0.05523413260616728
#>     Attrib V53    0.09276437448083655
#>     Attrib V54    0.04252374230849432
#>     Attrib V55    0.029735849750177405
#>     Attrib V56    0.1469528881105958
#>     Attrib V57    0.09657300589604775
#>     Attrib V58    0.12331302341038082
#>     Attrib V59    0.09679762924152632
#>     Attrib V6    0.12183492289195393
#>     Attrib V60    0.06901630148372555
#>     Attrib V7    0.021259998764926874
#>     Attrib V8    0.06685328853182737
#>     Attrib V9    0.0522276876450295
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.350106289024078
#>     Attrib V1    0.22729607380867536
#>     Attrib V10    0.06305883847839043
#>     Attrib V11    0.18802958896197802
#>     Attrib V12    0.1727677621583006
#>     Attrib V13    -0.07717303088295227
#>     Attrib V14    -0.3842667213817373
#>     Attrib V15    -0.10968416174725978
#>     Attrib V16    0.172371544293722
#>     Attrib V17    0.4775493873716904
#>     Attrib V18    0.4904310392748347
#>     Attrib V19    0.16415150534909023
#>     Attrib V2    -0.1569354878966044
#>     Attrib V20    0.5607354784067918
#>     Attrib V21    0.26981087181352964
#>     Attrib V22    0.41082556513399804
#>     Attrib V23    0.27394258416852924
#>     Attrib V24    0.04023442195736987
#>     Attrib V25    0.22245327607438234
#>     Attrib V26    -0.021215685217170075
#>     Attrib V27    -0.6085525006143275
#>     Attrib V28    0.03870479760082814
#>     Attrib V29    -0.4508250790053702
#>     Attrib V3    -0.30063491995578623
#>     Attrib V30    -0.06432738881806004
#>     Attrib V31    -0.7371257666822527
#>     Attrib V32    -0.14611234992532007
#>     Attrib V33    0.20067295957629053
#>     Attrib V34    -0.2642609237242456
#>     Attrib V35    0.4124646145597806
#>     Attrib V36    -0.03715334251526759
#>     Attrib V37    -0.5157539377750956
#>     Attrib V38    0.0450234781853015
#>     Attrib V39    0.3167376878347208
#>     Attrib V4    0.22478319357968424
#>     Attrib V40    -0.11245476451113724
#>     Attrib V41    -0.3988771783900855
#>     Attrib V42    0.22352454828761134
#>     Attrib V43    0.675832324924293
#>     Attrib V44    0.3842760699985409
#>     Attrib V45    0.38621395438103556
#>     Attrib V46    0.11698725643955847
#>     Attrib V47    -0.11751890104187554
#>     Attrib V48    0.1042432870687607
#>     Attrib V49    0.3026935731777082
#>     Attrib V5    0.10071475836741343
#>     Attrib V50    -0.5836629147731037
#>     Attrib V51    -0.1058019040997442
#>     Attrib V52    0.35499852063041726
#>     Attrib V53    0.30789394802229514
#>     Attrib V54    0.4522890820017346
#>     Attrib V55    -0.2692389922324888
#>     Attrib V56    0.0259297055395799
#>     Attrib V57    -0.1555610591347995
#>     Attrib V58    0.09665789587497563
#>     Attrib V59    0.4164869011751033
#>     Attrib V6    -0.35688637289663355
#>     Attrib V60    0.03673504936522832
#>     Attrib V7    -0.2673828936428722
#>     Attrib V8    0.025268553479347193
#>     Attrib V9    0.6653887997005471
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.13280597510181014
#>     Attrib V1    0.13865608575333943
#>     Attrib V10    0.005148360694661759
#>     Attrib V11    0.0879142384509438
#>     Attrib V12    0.11157485267347289
#>     Attrib V13    -0.02461616260932649
#>     Attrib V14    -0.039047248062835584
#>     Attrib V15    -0.014777209985013116
#>     Attrib V16    0.03875610174166322
#>     Attrib V17    0.05711611963652048
#>     Attrib V18    0.15513720616518054
#>     Attrib V19    -0.009239338541821107
#>     Attrib V2    -0.024660577409035263
#>     Attrib V20    0.14173647128214026
#>     Attrib V21    0.08394721468121646
#>     Attrib V22    0.08335033033997873
#>     Attrib V23    0.09932030817014395
#>     Attrib V24    -0.016839014635236432
#>     Attrib V25    0.023312807048668303
#>     Attrib V26    -0.02737469076137326
#>     Attrib V27    -0.14510653852172944
#>     Attrib V28    0.10362440463738144
#>     Attrib V29    -0.046608572795548205
#>     Attrib V3    -0.010356608830471594
#>     Attrib V30    0.023713704216194644
#>     Attrib V31    -0.25094169211343403
#>     Attrib V32    -0.018346845774669693
#>     Attrib V33    0.06884355346021276
#>     Attrib V34    -0.056188450818988
#>     Attrib V35    0.13891923034222023
#>     Attrib V36    0.04960306979654888
#>     Attrib V37    -0.08633667258136168
#>     Attrib V38    -0.023980834587365742
#>     Attrib V39    0.12104625950205412
#>     Attrib V4    0.09218441903084997
#>     Attrib V40    -0.0359367866223193
#>     Attrib V41    -0.10829547819630113
#>     Attrib V42    0.06800974204737538
#>     Attrib V43    0.12871527151419596
#>     Attrib V44    0.12438304568024897
#>     Attrib V45    0.17534424074914293
#>     Attrib V46    0.05651931589266833
#>     Attrib V47    -0.0035782722777912544
#>     Attrib V48    0.031293313546103825
#>     Attrib V49    0.12875143810487313
#>     Attrib V5    0.09156586003255227
#>     Attrib V50    -0.17342082062913836
#>     Attrib V51    -0.036945990608416066
#>     Attrib V52    0.16955404978882693
#>     Attrib V53    0.13377806466213685
#>     Attrib V54    0.057325265006764756
#>     Attrib V55    -0.09054661716814791
#>     Attrib V56    0.03301436763570802
#>     Attrib V57    -0.00798870738898793
#>     Attrib V58    0.1000923348563415
#>     Attrib V59    0.09648611947941783
#>     Attrib V6    -0.06315000223198222
#>     Attrib V60    0.010254012120821266
#>     Attrib V7    -0.1136041873688987
#>     Attrib V8    0.026242933726111396
#>     Attrib V9    0.20960295321184563
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
#>  0.2173913 
```
