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
#>     Threshold    -0.8804612675990215
#>     Node 2    1.9900526720456053
#>     Node 3    0.7767568161695758
#>     Node 4    0.5740076146184427
#>     Node 5    -1.8990861981133076
#>     Node 6    1.9968976763882365
#>     Node 7    2.759167187445004
#>     Node 8    0.7872153632593208
#>     Node 9    3.567561280985724
#>     Node 10    -0.44113350748398983
#>     Node 11    1.0245254741345724
#>     Node 12    1.125102316814986
#>     Node 13    1.0565813302537532
#>     Node 14    1.3214657087839465
#>     Node 15    -2.876167709598241
#>     Node 16    0.049818133356142796
#>     Node 17    0.46697650610364955
#>     Node 18    0.21732137663170945
#>     Node 19    2.202312047301213
#>     Node 20    1.3706406973005187
#>     Node 21    -2.7231953011589156
#>     Node 22    1.1787778975444474
#>     Node 23    1.8493906544709082
#>     Node 24    -2.5366468915390947
#>     Node 25    3.358506359252689
#>     Node 26    -0.4036379938916695
#>     Node 27    1.7879133388990753
#>     Node 28    -3.382367540768681
#>     Node 29    1.0560314055817936
#>     Node 30    0.37373341617376127
#>     Node 31    1.7856751646201114
#>     Node 32    1.030514390912929
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.9054936029839373
#>     Node 2    -2.041087449497816
#>     Node 3    -0.7707816249370489
#>     Node 4    -0.5366832852516281
#>     Node 5    1.9058050524667487
#>     Node 6    -1.9514569491200773
#>     Node 7    -2.757989422745114
#>     Node 8    -0.811288771336274
#>     Node 9    -3.578073257973064
#>     Node 10    0.3957053694060506
#>     Node 11    -0.9876643904067506
#>     Node 12    -1.2097083239326223
#>     Node 13    -1.0051223980699129
#>     Node 14    -1.262903796005249
#>     Node 15    2.8504531340333825
#>     Node 16    -0.06050627000172862
#>     Node 17    -0.43285193551173706
#>     Node 18    -0.17365711476281467
#>     Node 19    -2.196656233313844
#>     Node 20    -1.3461301326062245
#>     Node 21    2.7730915430849876
#>     Node 22    -1.2449693263195534
#>     Node 23    -1.873906069008818
#>     Node 24    2.514648167176866
#>     Node 25    -3.3535907204137936
#>     Node 26    0.3365750637008828
#>     Node 27    -1.815877351162235
#>     Node 28    3.3853232323166216
#>     Node 29    -1.0751745756232545
#>     Node 30    -0.29975966223243766
#>     Node 31    -1.7369334738823214
#>     Node 32    -1.0557487102890097
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.10618195888441488
#>     Attrib V1    0.41316732010711177
#>     Attrib V10    0.06524866900240457
#>     Attrib V11    0.4292739590107279
#>     Attrib V12    -0.1644622116041208
#>     Attrib V13    -0.13778383727197605
#>     Attrib V14    -0.14304409935309098
#>     Attrib V15    -0.18228934191478835
#>     Attrib V16    0.2377040774932024
#>     Attrib V17    0.3304543992197026
#>     Attrib V18    0.14256815391607072
#>     Attrib V19    -0.01649250605118404
#>     Attrib V2    0.019987176474249937
#>     Attrib V20    0.4882701333167673
#>     Attrib V21    0.7128731133801007
#>     Attrib V22    0.46413612139596117
#>     Attrib V23    0.4373627766706968
#>     Attrib V24    0.3259616875881382
#>     Attrib V25    -0.356388100787891
#>     Attrib V26    -0.7384156262818312
#>     Attrib V27    -0.6056515086873764
#>     Attrib V28    -0.5069656367688946
#>     Attrib V29    -0.8024736428403912
#>     Attrib V3    0.189941387246867
#>     Attrib V30    0.20585769816003838
#>     Attrib V31    -1.1024550751785354
#>     Attrib V32    0.18879209664005428
#>     Attrib V33    0.7753391937912644
#>     Attrib V34    0.17032587438579885
#>     Attrib V35    -0.11446904819963202
#>     Attrib V36    -0.5881694205103881
#>     Attrib V37    -0.6764122910347918
#>     Attrib V38    0.13534379677784408
#>     Attrib V39    0.27865209242852007
#>     Attrib V4    0.32776967443013927
#>     Attrib V40    -0.020437182430661897
#>     Attrib V41    0.0476247586769367
#>     Attrib V42    0.349489155113432
#>     Attrib V43    0.4616751602456823
#>     Attrib V44    0.7655101519364536
#>     Attrib V45    0.31273580628052083
#>     Attrib V46    -0.009219542624897485
#>     Attrib V47    -0.4169667248173516
#>     Attrib V48    0.051675657768276644
#>     Attrib V49    0.21469299839018208
#>     Attrib V5    0.10891199755006539
#>     Attrib V50    -0.9740254670095824
#>     Attrib V51    0.14761374521054993
#>     Attrib V52    -0.12932774625000068
#>     Attrib V53    0.30469323176265517
#>     Attrib V54    0.30205829672210954
#>     Attrib V55    -0.6149549913706265
#>     Attrib V56    0.3324813072491458
#>     Attrib V57    -0.7833091572982186
#>     Attrib V58    0.8249732362258259
#>     Attrib V59    0.7402206408167593
#>     Attrib V6    -0.12070439729867832
#>     Attrib V60    0.270056967997785
#>     Attrib V7    0.23872204660436694
#>     Attrib V8    0.23638868152263556
#>     Attrib V9    0.601041230689703
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.03742060145899124
#>     Attrib V1    0.2659522929782116
#>     Attrib V10    0.04815061220513175
#>     Attrib V11    0.19314995524157666
#>     Attrib V12    0.046518159166961864
#>     Attrib V13    0.12946993094530132
#>     Attrib V14    0.14084378474508336
#>     Attrib V15    0.10841466408667319
#>     Attrib V16    0.09594664303172525
#>     Attrib V17    0.13290261445609886
#>     Attrib V18    0.1014249373281265
#>     Attrib V19    0.08847621904956837
#>     Attrib V2    0.15682703269705586
#>     Attrib V20    0.2102250196289454
#>     Attrib V21    0.19385500209456072
#>     Attrib V22    0.11568577783702311
#>     Attrib V23    0.06186357452903913
#>     Attrib V24    0.005214087952551459
#>     Attrib V25    -0.17584975727961974
#>     Attrib V26    -0.3120447216500086
#>     Attrib V27    -0.2901212730601373
#>     Attrib V28    -0.25896834785018513
#>     Attrib V29    -0.3480855503457288
#>     Attrib V3    0.18092440846658345
#>     Attrib V30    0.031439254910770945
#>     Attrib V31    -0.44007593819313534
#>     Attrib V32    -0.027779577192871358
#>     Attrib V33    0.17000945579005908
#>     Attrib V34    -0.0375292181894631
#>     Attrib V35    -0.01780124750965363
#>     Attrib V36    -0.21295794334406692
#>     Attrib V37    -0.29272962865077756
#>     Attrib V38    -0.022096485808912304
#>     Attrib V39    0.10973073842781086
#>     Attrib V4    0.24349100502903892
#>     Attrib V40    -0.07513176868125472
#>     Attrib V41    -0.056281401844096725
#>     Attrib V42    0.06362800031649089
#>     Attrib V43    0.1526988943893309
#>     Attrib V44    0.3117180294323507
#>     Attrib V45    0.14203200491074472
#>     Attrib V46    0.019632390573347903
#>     Attrib V47    -0.08216589087280586
#>     Attrib V48    -0.01733764094575148
#>     Attrib V49    0.0657810438158079
#>     Attrib V5    0.12009582404455901
#>     Attrib V50    -0.22564040880960912
#>     Attrib V51    0.117757853702116
#>     Attrib V52    0.07942906862729929
#>     Attrib V53    0.24531120306768167
#>     Attrib V54    0.2658616183022237
#>     Attrib V55    -0.028253720154346736
#>     Attrib V56    0.1779147030667409
#>     Attrib V57    -0.21336332554509663
#>     Attrib V58    0.45129107040350647
#>     Attrib V59    0.363560581935134
#>     Attrib V6    -0.05081559400960856
#>     Attrib V60    0.17005421236692575
#>     Attrib V7    0.04383201611391869
#>     Attrib V8    0.0634436980554603
#>     Attrib V9    0.16252874306978143
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.07182627355361543
#>     Attrib V1    0.1896461282531394
#>     Attrib V10    0.05126471274829191
#>     Attrib V11    0.18504798759949168
#>     Attrib V12    0.032407936270284814
#>     Attrib V13    0.0686703717593898
#>     Attrib V14    0.09179779958493539
#>     Attrib V15    0.04282129676709458
#>     Attrib V16    0.03637873630760815
#>     Attrib V17    0.0753498546521912
#>     Attrib V18    0.04896162343654518
#>     Attrib V19    -0.011073691814676795
#>     Attrib V2    0.09179556006313869
#>     Attrib V20    0.11944594518587963
#>     Attrib V21    0.18109526364555203
#>     Attrib V22    0.015419313375907824
#>     Attrib V23    0.014711922588839322
#>     Attrib V24    -0.028915341138298935
#>     Attrib V25    -0.2058830635945481
#>     Attrib V26    -0.24072326177381415
#>     Attrib V27    -0.20811071870488515
#>     Attrib V28    -0.11315568200334317
#>     Attrib V29    -0.13049856152189596
#>     Attrib V3    0.1676339075217425
#>     Attrib V30    0.07039793653111433
#>     Attrib V31    -0.2982360530648481
#>     Attrib V32    -0.024740283633151325
#>     Attrib V33    0.15498405851134406
#>     Attrib V34    0.03703893826006923
#>     Attrib V35    0.015592203922666604
#>     Attrib V36    -0.15081656719260564
#>     Attrib V37    -0.1943398383926442
#>     Attrib V38    -0.007630953617955955
#>     Attrib V39    0.08890963796058851
#>     Attrib V4    0.17948386302694713
#>     Attrib V40    -0.07248156793970699
#>     Attrib V41    -0.08920079622420059
#>     Attrib V42    0.05279130407795795
#>     Attrib V43    0.11661888448785444
#>     Attrib V44    0.2823048223020203
#>     Attrib V45    0.21738573174614098
#>     Attrib V46    0.03996113499370505
#>     Attrib V47    -0.06951242563267675
#>     Attrib V48    0.06408096610582391
#>     Attrib V49    0.11597865132904188
#>     Attrib V5    0.14706108585109243
#>     Attrib V50    -0.1544884785188179
#>     Attrib V51    0.15643176909728954
#>     Attrib V52    0.05410554525013831
#>     Attrib V53    0.20726469716383653
#>     Attrib V54    0.08482668934256886
#>     Attrib V55    -0.09134824590927315
#>     Attrib V56    0.1432475528047999
#>     Attrib V57    -0.15364504687396774
#>     Attrib V58    0.28303214171938307
#>     Attrib V59    0.22620371732197933
#>     Attrib V6    -0.037445699222078466
#>     Attrib V60    0.06784061824405684
#>     Attrib V7    0.025991068120008117
#>     Attrib V8    -0.006935954018772739
#>     Attrib V9    0.22117828844456053
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.2686757287832986
#>     Attrib V1    -0.2018914987875049
#>     Attrib V10    -0.1013992084388707
#>     Attrib V11    -0.5730280362532352
#>     Attrib V12    -0.1757316936457703
#>     Attrib V13    0.040490809661982284
#>     Attrib V14    0.3369803256373677
#>     Attrib V15    0.4490599673364308
#>     Attrib V16    -0.023987044251068866
#>     Attrib V17    -0.09107320790678188
#>     Attrib V18    -0.05915724964557803
#>     Attrib V19    0.21174297556399688
#>     Attrib V2    0.053025982537665016
#>     Attrib V20    -0.27529858751633457
#>     Attrib V21    -0.5715260733548045
#>     Attrib V22    -0.4771286053002133
#>     Attrib V23    -0.3156040318993076
#>     Attrib V24    -0.262436556779087
#>     Attrib V25    0.33284854928089436
#>     Attrib V26    0.6208608880937287
#>     Attrib V27    0.33554845945272405
#>     Attrib V28    0.1631935054207383
#>     Attrib V29    0.43859924962265423
#>     Attrib V3    0.0030502033411934203
#>     Attrib V30    -0.34818219881843365
#>     Attrib V31    0.9534839828857794
#>     Attrib V32    -0.1184395929271529
#>     Attrib V33    -0.6038124184061815
#>     Attrib V34    -0.060358866099486715
#>     Attrib V35    0.1969819407573785
#>     Attrib V36    0.5358064526018707
#>     Attrib V37    0.4228620005788948
#>     Attrib V38    -0.16158059780369602
#>     Attrib V39    -0.29377762173811084
#>     Attrib V4    -0.27008468123206947
#>     Attrib V40    0.1320231089262649
#>     Attrib V41    -0.0350260425397146
#>     Attrib V42    -0.28371011294203585
#>     Attrib V43    -0.5285032560534915
#>     Attrib V44    -0.7915873349457455
#>     Attrib V45    -0.43406019452987493
#>     Attrib V46    -0.2632065279473422
#>     Attrib V47    0.18218178179476113
#>     Attrib V48    -0.16322761462540794
#>     Attrib V49    -0.3157358181003651
#>     Attrib V5    -0.03205073661632486
#>     Attrib V50    0.9393726865288835
#>     Attrib V51    -0.11814957462023969
#>     Attrib V52    0.14079659095460276
#>     Attrib V53    -0.25639986240689094
#>     Attrib V54    -0.24190782954311116
#>     Attrib V55    0.8626207374558061
#>     Attrib V56    -0.1399072030239164
#>     Attrib V57    0.8111092919320809
#>     Attrib V58    -0.633019374549344
#>     Attrib V59    -0.42946957605870073
#>     Attrib V6    0.009983758445297334
#>     Attrib V60    0.0215442310472157
#>     Attrib V7    -0.02299388656569594
#>     Attrib V8    -0.13864617400943832
#>     Attrib V9    -0.7133090146733998
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.20263128677479028
#>     Attrib V1    0.1471045491244245
#>     Attrib V10    0.059809180319796575
#>     Attrib V11    0.5615124976816495
#>     Attrib V12    0.25452499023190295
#>     Attrib V13    -0.3703167965364955
#>     Attrib V14    -0.6831722145155126
#>     Attrib V15    -0.8346534708207387
#>     Attrib V16    -0.3026446413318715
#>     Attrib V17    -0.24923806435113885
#>     Attrib V18    -0.16901727879274336
#>     Attrib V19    -0.5400892883752384
#>     Attrib V2    -0.0795525369847415
#>     Attrib V20    -0.09645054585619686
#>     Attrib V21    0.42236148718909927
#>     Attrib V22    0.5001998788346234
#>     Attrib V23    0.6117517591504619
#>     Attrib V24    0.5701223860118514
#>     Attrib V25    0.137267276063638
#>     Attrib V26    -0.2003696009036215
#>     Attrib V27    0.1859928630151976
#>     Attrib V28    0.2996995382292212
#>     Attrib V29    0.21143903357715868
#>     Attrib V3    0.0010097388124782815
#>     Attrib V30    0.8465112664386052
#>     Attrib V31    -0.5938805052199266
#>     Attrib V32    0.15726280392692993
#>     Attrib V33    0.4979743760180751
#>     Attrib V34    0.02112774473385907
#>     Attrib V35    -0.22334119209751865
#>     Attrib V36    -0.4084157796266784
#>     Attrib V37    -0.1299631042041849
#>     Attrib V38    0.09121025887683196
#>     Attrib V39    0.25880600808554227
#>     Attrib V4    0.22611508269100397
#>     Attrib V40    -0.06218499401069163
#>     Attrib V41    0.2781987811375031
#>     Attrib V42    0.5379482895912928
#>     Attrib V43    0.6605193741796873
#>     Attrib V44    0.8359313787225511
#>     Attrib V45    0.5094654121871024
#>     Attrib V46    0.5799090612537146
#>     Attrib V47    0.21976132959307262
#>     Attrib V48    0.32953168991364307
#>     Attrib V49    0.29447037284026745
#>     Attrib V5    0.26431163328156226
#>     Attrib V50    -0.6914863145375731
#>     Attrib V51    0.2090104591649117
#>     Attrib V52    -0.060141596134497724
#>     Attrib V53    0.03221190954518448
#>     Attrib V54    0.06974698325265812
#>     Attrib V55    -1.0541674616379089
#>     Attrib V56    -0.07650766281982638
#>     Attrib V57    -0.786245900249811
#>     Attrib V58    0.18624213298048145
#>     Attrib V59    0.2510177058049299
#>     Attrib V6    0.183438627074137
#>     Attrib V60    -0.2676976963218451
#>     Attrib V7    -0.3661396641555101
#>     Attrib V8    0.1343176007900015
#>     Attrib V9    0.80647613079264
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.3196545559035742
#>     Attrib V1    0.16863670435103528
#>     Attrib V10    0.2689505080736649
#>     Attrib V11    0.9923729121726348
#>     Attrib V12    0.7214791300483009
#>     Attrib V13    0.0709430374743436
#>     Attrib V14    -0.2876503253094605
#>     Attrib V15    -0.8097797343048811
#>     Attrib V16    -0.4877769917278985
#>     Attrib V17    -0.4806940938179383
#>     Attrib V18    0.03231937678726976
#>     Attrib V19    -0.32373677271959567
#>     Attrib V2    0.09422929990801239
#>     Attrib V20    -0.19093101840526572
#>     Attrib V21    0.29006695001860716
#>     Attrib V22    0.4930857076973021
#>     Attrib V23    0.7872923879814349
#>     Attrib V24    0.5593526826541093
#>     Attrib V25    0.21499142544436312
#>     Attrib V26    0.2572529501912639
#>     Attrib V27    0.7880702502088043
#>     Attrib V28    1.1568475522241717
#>     Attrib V29    1.1443086661180593
#>     Attrib V3    0.027840742601485852
#>     Attrib V30    0.8743503865364766
#>     Attrib V31    -0.5414972427672511
#>     Attrib V32    -0.32656521389023463
#>     Attrib V33    -0.4373577351184219
#>     Attrib V34    -0.6012708613067237
#>     Attrib V35    -0.6108935164890105
#>     Attrib V36    -0.4475206719631685
#>     Attrib V37    -0.16574375719005227
#>     Attrib V38    -0.021431988148801026
#>     Attrib V39    0.4473045623489337
#>     Attrib V4    0.39903457769238593
#>     Attrib V40    -0.05593132899760198
#>     Attrib V41    0.16720368956297912
#>     Attrib V42    0.2914811188221225
#>     Attrib V43    0.6252724641716322
#>     Attrib V44    0.8015556918780032
#>     Attrib V45    0.4085973088241048
#>     Attrib V46    0.8309073522592951
#>     Attrib V47    0.6623993104972827
#>     Attrib V48    0.6040924067879474
#>     Attrib V49    0.6161690087838763
#>     Attrib V5    0.6404199823702798
#>     Attrib V50    -0.02106309722181078
#>     Attrib V51    0.4680495084006703
#>     Attrib V52    0.3025687517109753
#>     Attrib V53    0.3731185892813613
#>     Attrib V54    0.36693697068327463
#>     Attrib V55    -0.6471922100735865
#>     Attrib V56    -0.47268285531891907
#>     Attrib V57    -0.7322175145190677
#>     Attrib V58    0.19770462294888444
#>     Attrib V59    -0.024014134702737396
#>     Attrib V6    0.47672491286568974
#>     Attrib V60    -0.3006038135764925
#>     Attrib V7    -0.3299285827293633
#>     Attrib V8    0.05560092171683365
#>     Attrib V9    0.8274333062758955
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.14837137306878329
#>     Attrib V1    0.13557330149531585
#>     Attrib V10    0.10791900643133064
#>     Attrib V11    0.33800228058368836
#>     Attrib V12    0.10274220216057565
#>     Attrib V13    -0.030381873319193228
#>     Attrib V14    -0.2151114381202024
#>     Attrib V15    -0.2768995381562233
#>     Attrib V16    -0.061335451306184945
#>     Attrib V17    -0.05321866740226874
#>     Attrib V18    -0.06765801650539954
#>     Attrib V19    -0.17997430504586645
#>     Attrib V2    0.032919710956694236
#>     Attrib V20    -0.0455827990449172
#>     Attrib V21    0.13330891035923076
#>     Attrib V22    0.06816872212492656
#>     Attrib V23    0.09679736106988628
#>     Attrib V24    0.12248943323233691
#>     Attrib V25    -0.10485283399861582
#>     Attrib V26    -0.16206288912033928
#>     Attrib V27    -0.016746761878740437
#>     Attrib V28    0.04950354585244865
#>     Attrib V29    -0.03891839811144869
#>     Attrib V3    0.035886969095362334
#>     Attrib V30    0.29724177112848227
#>     Attrib V31    -0.33825315837483255
#>     Attrib V32    0.06920856621819826
#>     Attrib V33    0.22793460194190587
#>     Attrib V34    -0.008421298170808897
#>     Attrib V35    -0.07042711207602523
#>     Attrib V36    -0.15570569857040875
#>     Attrib V37    -0.16592773621191587
#>     Attrib V38    0.09086239154036131
#>     Attrib V39    0.12050380833935326
#>     Attrib V4    0.1946308073361464
#>     Attrib V40    -0.1112337556134343
#>     Attrib V41    -0.06839299988445179
#>     Attrib V42    -0.0031294820198006705
#>     Attrib V43    0.22484039195815522
#>     Attrib V44    0.4424973244059073
#>     Attrib V45    0.25749012596192156
#>     Attrib V46    0.17705556204937853
#>     Attrib V47    0.005688711015497631
#>     Attrib V48    0.18752691559834242
#>     Attrib V49    0.17946605950711528
#>     Attrib V5    0.09259075010521488
#>     Attrib V50    -0.35482248397874794
#>     Attrib V51    0.07861290191182764
#>     Attrib V52    -0.03208512091596853
#>     Attrib V53    0.11482949474751633
#>     Attrib V54    0.052158842138828584
#>     Attrib V55    -0.4073277550883432
#>     Attrib V56    -0.0029422399579462732
#>     Attrib V57    -0.3254154258952928
#>     Attrib V58    0.18936825957565195
#>     Attrib V59    0.1491129281441022
#>     Attrib V6    -0.007640772328667802
#>     Attrib V60    -0.04924080744065007
#>     Attrib V7    -0.03965561769340417
#>     Attrib V8    0.014333937897168853
#>     Attrib V9    0.35461575716213123
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.3534267857667875
#>     Attrib V1    0.05350819703784098
#>     Attrib V10    0.4332088788116603
#>     Attrib V11    1.152501809245651
#>     Attrib V12    0.965249962476573
#>     Attrib V13    0.3101690374599191
#>     Attrib V14    -0.13221252170520278
#>     Attrib V15    -0.8304098015019656
#>     Attrib V16    -0.6345397186439937
#>     Attrib V17    -0.6620338606584416
#>     Attrib V18    0.08162120897893498
#>     Attrib V19    -0.33009848818214127
#>     Attrib V2    3.5196709175548007E-4
#>     Attrib V20    -0.256105460931172
#>     Attrib V21    0.2856932083687412
#>     Attrib V22    0.5924128295725526
#>     Attrib V23    0.9298217477426935
#>     Attrib V24    0.7070503824744785
#>     Attrib V25    0.44448120899504295
#>     Attrib V26    0.5559414506136338
#>     Attrib V27    1.0391846548713404
#>     Attrib V28    1.3909465375787475
#>     Attrib V29    1.4375952855521386
#>     Attrib V3    -0.1264019688929654
#>     Attrib V30    0.9786232213704039
#>     Attrib V31    -0.5115759207487794
#>     Attrib V32    -0.39293418340609665
#>     Attrib V33    -0.6697633956143421
#>     Attrib V34    -0.687807565605176
#>     Attrib V35    -0.7321880528033106
#>     Attrib V36    -0.47665372989351634
#>     Attrib V37    -0.3145276426466269
#>     Attrib V38    -0.13334875217237224
#>     Attrib V39    0.6424320305762053
#>     Attrib V4    0.4074603645545602
#>     Attrib V40    -0.06387999135212585
#>     Attrib V41    0.16018829611599547
#>     Attrib V42    0.2186569844063456
#>     Attrib V43    0.798771032736141
#>     Attrib V44    0.9021655855016298
#>     Attrib V45    0.44396520436791137
#>     Attrib V46    0.977706806330508
#>     Attrib V47    0.8402874193652135
#>     Attrib V48    0.7264268448852046
#>     Attrib V49    0.8728199307872833
#>     Attrib V5    0.7451192983539691
#>     Attrib V50    0.19487717725693848
#>     Attrib V51    0.6746757609652401
#>     Attrib V52    0.3427939089305247
#>     Attrib V53    0.6563895354872166
#>     Attrib V54    0.5092065304115785
#>     Attrib V55    -0.4582594355566821
#>     Attrib V56    -0.6309287451198803
#>     Attrib V57    -0.8445770796005002
#>     Attrib V58    0.26538525227080667
#>     Attrib V59    -0.08371325127744439
#>     Attrib V6    0.6616829276006513
#>     Attrib V60    -0.510681172743817
#>     Attrib V7    -0.23894044847383217
#>     Attrib V8    0.17337587040616223
#>     Attrib V9    0.8095101319637813
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.17086501838638263
#>     Attrib V1    -0.012435641347004475
#>     Attrib V10    -0.043324981685175845
#>     Attrib V11    -0.20242825678758367
#>     Attrib V12    -0.09412891555736898
#>     Attrib V13    -9.984198773154206E-4
#>     Attrib V14    0.12142238188694497
#>     Attrib V15    0.061676247773574264
#>     Attrib V16    0.035510204537379866
#>     Attrib V17    -0.03664974427691063
#>     Attrib V18    0.05188998557767674
#>     Attrib V19    0.10111469952572633
#>     Attrib V2    0.011552645884295193
#>     Attrib V20    -0.035734516294258015
#>     Attrib V21    -0.08854808851897437
#>     Attrib V22    -0.07412595621551782
#>     Attrib V23    6.487973578034918E-4
#>     Attrib V24    -0.0709651066778125
#>     Attrib V25    0.0012807733619904236
#>     Attrib V26    0.017875974986000333
#>     Attrib V27    -0.06229987875874622
#>     Attrib V28    -0.046863495192879696
#>     Attrib V29    -0.020398824554635913
#>     Attrib V3    0.004401940656203098
#>     Attrib V30    -0.08521775624272265
#>     Attrib V31    0.2522619810647273
#>     Attrib V32    -0.011696341144236915
#>     Attrib V33    7.101475364242921E-4
#>     Attrib V34    0.04507516439158536
#>     Attrib V35    0.08990531391586944
#>     Attrib V36    0.177023888960111
#>     Attrib V37    0.1288036865159171
#>     Attrib V38    0.04230404372597384
#>     Attrib V39    -0.0422723767321226
#>     Attrib V4    -0.047502860139971376
#>     Attrib V40    0.14035788557010376
#>     Attrib V41    0.1033599718181863
#>     Attrib V42    -0.03605078341748358
#>     Attrib V43    -0.11795571532978957
#>     Attrib V44    -0.1557439687600084
#>     Attrib V45    -0.1360171853303123
#>     Attrib V46    -0.14940064241908244
#>     Attrib V47    -0.01630978866081738
#>     Attrib V48    -0.10479632369996092
#>     Attrib V49    -0.11031282456717124
#>     Attrib V5    -0.04127851232681655
#>     Attrib V50    0.24229246410338465
#>     Attrib V51    -0.011309361908362315
#>     Attrib V52    0.02823662546504589
#>     Attrib V53    -0.00797792564195301
#>     Attrib V54    7.93434608882621E-4
#>     Attrib V55    0.1886786857215318
#>     Attrib V56    -0.005825979247717946
#>     Attrib V57    0.23081677848539675
#>     Attrib V58    -0.08968264954011795
#>     Attrib V59    -0.08002352913861814
#>     Attrib V6    0.013134129259213213
#>     Attrib V60    0.03843686557156532
#>     Attrib V7    0.03930551835033666
#>     Attrib V8    0.02358757890759081
#>     Attrib V9    -0.17254939322423768
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.10431921915030765
#>     Attrib V1    0.2032670244158667
#>     Attrib V10    0.05898056390887641
#>     Attrib V11    0.32926242790662974
#>     Attrib V12    0.07183526310005996
#>     Attrib V13    -0.07930470244868003
#>     Attrib V14    -0.14246069364895275
#>     Attrib V15    -0.1904549350944572
#>     Attrib V16    0.04859726448752225
#>     Attrib V17    0.16872286512479973
#>     Attrib V18    0.10448746837310995
#>     Attrib V19    -0.07717167739792129
#>     Attrib V2    0.011014126357872979
#>     Attrib V20    0.22191685189674992
#>     Attrib V21    0.2875088404542874
#>     Attrib V22    0.1552481338570218
#>     Attrib V23    0.14196755215005208
#>     Attrib V24    0.08539875895418102
#>     Attrib V25    -0.21623922441476143
#>     Attrib V26    -0.44936407032415415
#>     Attrib V27    -0.27909363267567766
#>     Attrib V28    -0.1999006428717785
#>     Attrib V29    -0.36465722131316314
#>     Attrib V3    0.03402630995739925
#>     Attrib V30    0.1943568654161695
#>     Attrib V31    -0.5866047086692103
#>     Attrib V32    0.0659510293460239
#>     Attrib V33    0.37222745840101207
#>     Attrib V34    0.11948071899339274
#>     Attrib V35    0.0232775173853354
#>     Attrib V36    -0.2502936630276536
#>     Attrib V37    -0.32657824454578066
#>     Attrib V38    0.11121330474190926
#>     Attrib V39    0.12243359222153286
#>     Attrib V4    0.18080067817639475
#>     Attrib V40    -0.13612971885807246
#>     Attrib V41    -0.12990348390617026
#>     Attrib V42    0.08832616109068356
#>     Attrib V43    0.2526024113523384
#>     Attrib V44    0.5026393962162253
#>     Attrib V45    0.29475756808248277
#>     Attrib V46    0.04870192976037163
#>     Attrib V47    -0.15100228240787691
#>     Attrib V48    0.09218137977943712
#>     Attrib V49    0.13139461951340292
#>     Attrib V5    0.09744258385605026
#>     Attrib V50    -0.4634923362660507
#>     Attrib V51    0.16104741373412892
#>     Attrib V52    -0.07266921370806238
#>     Attrib V53    0.1605816248652279
#>     Attrib V54    0.22413951539698315
#>     Attrib V55    -0.3886272433555809
#>     Attrib V56    0.15063133367828782
#>     Attrib V57    -0.43622800194023015
#>     Attrib V58    0.4259933832045697
#>     Attrib V59    0.2549202341848992
#>     Attrib V6    -0.024726302745181776
#>     Attrib V60    0.032893586551053455
#>     Attrib V7    -0.009243724056182701
#>     Attrib V8    0.08342081946670558
#>     Attrib V9    0.3964896886418599
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.13420635562586555
#>     Attrib V1    0.2820116435187321
#>     Attrib V10    -0.038521414719256825
#>     Attrib V11    0.30866581385295455
#>     Attrib V12    -0.09596080380529748
#>     Attrib V13    -0.024465165088226562
#>     Attrib V14    0.005058355590932575
#>     Attrib V15    -0.059622526042806004
#>     Attrib V16    0.18291631343900924
#>     Attrib V17    0.21076004315443242
#>     Attrib V18    0.1410110997784275
#>     Attrib V19    0.0936378644363813
#>     Attrib V2    0.12359695953045102
#>     Attrib V20    0.2925919712911973
#>     Attrib V21    0.38856858475971406
#>     Attrib V22    0.27966733463151516
#>     Attrib V23    0.21702391536811866
#>     Attrib V24    0.07596899867315396
#>     Attrib V25    -0.3312629731656952
#>     Attrib V26    -0.5102475063237042
#>     Attrib V27    -0.34851269634277215
#>     Attrib V28    -0.316278849135273
#>     Attrib V29    -0.3736709177894949
#>     Attrib V3    0.0818771937904829
#>     Attrib V30    0.09626588592371547
#>     Attrib V31    -0.7245819367525014
#>     Attrib V32    -0.033828597588167114
#>     Attrib V33    0.36818334074153675
#>     Attrib V34    0.057445905751281306
#>     Attrib V35    -0.04183939246384835
#>     Attrib V36    -0.3085542648395627
#>     Attrib V37    -0.3950194420236596
#>     Attrib V38    0.09058812444759047
#>     Attrib V39    0.13665068851936893
#>     Attrib V4    0.2839990672155088
#>     Attrib V40    -0.06422736538690361
#>     Attrib V41    -0.06168045681088004
#>     Attrib V42    0.09317849006135587
#>     Attrib V43    0.2934373577138579
#>     Attrib V44    0.4322716713659712
#>     Attrib V45    0.25306748182049393
#>     Attrib V46    0.06913856670212529
#>     Attrib V47    -0.23470559550255032
#>     Attrib V48    0.03550471796391186
#>     Attrib V49    0.10168872116628028
#>     Attrib V5    0.10215082402388387
#>     Attrib V50    -0.5081892999620257
#>     Attrib V51    0.14284859912326367
#>     Attrib V52    0.005411642328849205
#>     Attrib V53    0.312550352475619
#>     Attrib V54    0.27413000380442815
#>     Attrib V55    -0.3221145092850514
#>     Attrib V56    0.22222698060829438
#>     Attrib V57    -0.37643566840531023
#>     Attrib V58    0.5590180484197506
#>     Attrib V59    0.5013620963859622
#>     Attrib V6    -0.0779238511499162
#>     Attrib V60    0.19652631581473248
#>     Attrib V7    0.11930097496410379
#>     Attrib V8    0.10064605011958525
#>     Attrib V9    0.32962350321778566
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.029436234703077345
#>     Attrib V1    0.26391619967172353
#>     Attrib V10    -0.007503500596738677
#>     Attrib V11    0.2781626099883131
#>     Attrib V12    0.006257013335221953
#>     Attrib V13    0.06374101784233532
#>     Attrib V14    -0.042113063192707245
#>     Attrib V15    -0.11764933962840925
#>     Attrib V16    0.07413499808128222
#>     Attrib V17    0.19467259907612647
#>     Attrib V18    0.14078390954656286
#>     Attrib V19    -0.010077911641730056
#>     Attrib V2    0.04815603186677968
#>     Attrib V20    0.27975905540395263
#>     Attrib V21    0.3914281956730485
#>     Attrib V22    0.22622010576689708
#>     Attrib V23    0.24496122999082187
#>     Attrib V24    0.16724913622150328
#>     Attrib V25    -0.14982981509606572
#>     Attrib V26    -0.4408413035976952
#>     Attrib V27    -0.3081599425348728
#>     Attrib V28    -0.33043951988398446
#>     Attrib V29    -0.38854176899227916
#>     Attrib V3    0.15478807689885749
#>     Attrib V30    0.11025661295220605
#>     Attrib V31    -0.6269567173507511
#>     Attrib V32    0.055600545554528744
#>     Attrib V33    0.3380045545908718
#>     Attrib V34    0.09479798233111203
#>     Attrib V35    -0.04963042681504439
#>     Attrib V36    -0.2912224014544957
#>     Attrib V37    -0.3275399814700313
#>     Attrib V38    0.05362559560325811
#>     Attrib V39    0.19409328687557156
#>     Attrib V4    0.23696351194011753
#>     Attrib V40    -0.058939113987163276
#>     Attrib V41    -0.03340673224212722
#>     Attrib V42    0.13128276880788767
#>     Attrib V43    0.2100687163026408
#>     Attrib V44    0.426890559976911
#>     Attrib V45    0.18228559648274392
#>     Attrib V46    0.05910247106585599
#>     Attrib V47    -0.16288145541686827
#>     Attrib V48    0.012538563271023427
#>     Attrib V49    0.16007250106011267
#>     Attrib V5    0.10262978497043178
#>     Attrib V50    -0.48201174149656956
#>     Attrib V51    0.09430371013791922
#>     Attrib V52    -0.05612781068121064
#>     Attrib V53    0.25033190927945076
#>     Attrib V54    0.20203034388161778
#>     Attrib V55    -0.3228613582606521
#>     Attrib V56    0.17240023657244086
#>     Attrib V57    -0.3878527131196389
#>     Attrib V58    0.4579665074043394
#>     Attrib V59    0.4463859040385418
#>     Attrib V6    0.005995803848869189
#>     Attrib V60    0.19372600942647733
#>     Attrib V7    0.1348074032253898
#>     Attrib V8    0.061481829469631315
#>     Attrib V9    0.328293045613395
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.08610769894185127
#>     Attrib V1    0.4026187498841674
#>     Attrib V10    0.01793580783811072
#>     Attrib V11    0.3345556906528017
#>     Attrib V12    -0.022091509391350427
#>     Attrib V13    -0.027753959451884292
#>     Attrib V14    -0.041889949092531624
#>     Attrib V15    0.0014600394901240989
#>     Attrib V16    0.13433022157693222
#>     Attrib V17    0.2308806007691617
#>     Attrib V18    0.15112028664385166
#>     Attrib V19    0.01417824492563333
#>     Attrib V2    0.11984830646745494
#>     Attrib V20    0.31591232533684616
#>     Attrib V21    0.39572996704825003
#>     Attrib V22    0.24327894156965196
#>     Attrib V23    0.23946681836692216
#>     Attrib V24    0.11173690764575558
#>     Attrib V25    -0.25408605631426384
#>     Attrib V26    -0.4706521257859897
#>     Attrib V27    -0.49986577203832994
#>     Attrib V28    -0.501560674196433
#>     Attrib V29    -0.6006426947828224
#>     Attrib V3    0.09281142385409974
#>     Attrib V30    0.0528392289846871
#>     Attrib V31    -0.7194677232202469
#>     Attrib V32    0.011490854309023853
#>     Attrib V33    0.40288081726226427
#>     Attrib V34    0.046456036881233
#>     Attrib V35    -0.015507813241144294
#>     Attrib V36    -0.36579751018840895
#>     Attrib V37    -0.40497856281993067
#>     Attrib V38    0.037274703966882976
#>     Attrib V39    0.1751409559724477
#>     Attrib V4    0.2540613979655868
#>     Attrib V40    -0.10414130342243685
#>     Attrib V41    -0.10069250409158526
#>     Attrib V42    0.0638913178592298
#>     Attrib V43    0.20638487614826645
#>     Attrib V44    0.49194469819390985
#>     Attrib V45    0.19692516864521345
#>     Attrib V46    0.029466432771115936
#>     Attrib V47    -0.2601103404676985
#>     Attrib V48    0.06053494045570208
#>     Attrib V49    0.18512066745795425
#>     Attrib V5    0.05384856718513583
#>     Attrib V50    -0.49895889132405774
#>     Attrib V51    0.09883891472862417
#>     Attrib V52    -0.05212311269130038
#>     Attrib V53    0.27269435011826987
#>     Attrib V54    0.35651238148078745
#>     Attrib V55    -0.25596943828456764
#>     Attrib V56    0.24010922552665587
#>     Attrib V57    -0.41546897532314514
#>     Attrib V58    0.6032254815376794
#>     Attrib V59    0.4879551542923362
#>     Attrib V6    -0.03625063616055754
#>     Attrib V60    0.2716392506965109
#>     Attrib V7    0.17410332859927388
#>     Attrib V8    0.04363858469688133
#>     Attrib V9    0.33266764435459606
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.31646375594444415
#>     Attrib V1    -0.32879209553665767
#>     Attrib V10    -0.18992215147642613
#>     Attrib V11    -0.8709118492810324
#>     Attrib V12    -0.017694783988381618
#>     Attrib V13    0.0607760778644782
#>     Attrib V14    0.33156556829349326
#>     Attrib V15    0.4711154500822774
#>     Attrib V16    -0.11650889329144526
#>     Attrib V17    -0.2612611332572311
#>     Attrib V18    -0.11642724635303792
#>     Attrib V19    0.22189520239453298
#>     Attrib V2    0.07505916007326534
#>     Attrib V20    -0.4817191718094488
#>     Attrib V21    -0.9869026498613425
#>     Attrib V22    -0.7544278810468815
#>     Attrib V23    -0.6342982740419674
#>     Attrib V24    -0.406503247709815
#>     Attrib V25    0.39142152872586355
#>     Attrib V26    0.9093092801720987
#>     Attrib V27    0.5443712770076482
#>     Attrib V28    0.4711291185146887
#>     Attrib V29    0.8195157087356527
#>     Attrib V3    -0.0012931090817985672
#>     Attrib V30    -0.4073801633227977
#>     Attrib V31    1.4725091219989308
#>     Attrib V32    -0.1199619470536735
#>     Attrib V33    -0.9599889563652316
#>     Attrib V34    -0.143053175106317
#>     Attrib V35    0.15622035836821446
#>     Attrib V36    0.7850936825254052
#>     Attrib V37    0.8405176698147568
#>     Attrib V38    -0.14083847422386844
#>     Attrib V39    -0.35460622908064265
#>     Attrib V4    -0.27253859958598503
#>     Attrib V40    0.11526242508580173
#>     Attrib V41    -0.027926617220020402
#>     Attrib V42    -0.4884204589996798
#>     Attrib V43    -0.7795663154560805
#>     Attrib V44    -1.1741520653667696
#>     Attrib V45    -0.5303936910593083
#>     Attrib V46    -0.2249629549802819
#>     Attrib V47    0.3207599006900987
#>     Attrib V48    -0.21097456675162812
#>     Attrib V49    -0.4402746686850534
#>     Attrib V5    0.02275668603049558
#>     Attrib V50    1.3451592603522249
#>     Attrib V51    -0.14138386808822248
#>     Attrib V52    0.23065119926663277
#>     Attrib V53    -0.3407198452572477
#>     Attrib V54    -0.37345783325716525
#>     Attrib V55    1.0198706869847995
#>     Attrib V56    -0.31575554292910873
#>     Attrib V57    1.143230060629898
#>     Attrib V58    -1.0753942393583185
#>     Attrib V59    -0.8118522651160955
#>     Attrib V6    0.08761916351378646
#>     Attrib V60    -0.17911170639543647
#>     Attrib V7    -0.2133050506176389
#>     Attrib V8    -0.2960169218067354
#>     Attrib V9    -0.9550728482028485
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.16880095492503788
#>     Attrib V1    0.0754949470756734
#>     Attrib V10    0.06311156586498597
#>     Attrib V11    0.036925181708279214
#>     Attrib V12    0.0210077495724152
#>     Attrib V13    0.04865909750852578
#>     Attrib V14    0.02222253102119286
#>     Attrib V15    0.010299808926461214
#>     Attrib V16    0.06208890672671573
#>     Attrib V17    0.05072710280650106
#>     Attrib V18    0.04196809671763151
#>     Attrib V19    0.0036933149662211947
#>     Attrib V2    0.033474658111077
#>     Attrib V20    -0.05418388531095076
#>     Attrib V21    -0.06486435910004942
#>     Attrib V22    -0.07535995443644088
#>     Attrib V23    -0.08155853267615813
#>     Attrib V24    -0.010131610226228542
#>     Attrib V25    -0.02096625485595633
#>     Attrib V26    -0.08277546236732904
#>     Attrib V27    -0.06602595641666849
#>     Attrib V28    -0.02806420074021367
#>     Attrib V29    -0.048019925761559966
#>     Attrib V3    0.12092518888055341
#>     Attrib V30    -0.034436051121584044
#>     Attrib V31    -0.019916670050355842
#>     Attrib V32    0.03626461592157436
#>     Attrib V33    0.02060824336266522
#>     Attrib V34    0.05444963456983914
#>     Attrib V35    0.03435800638438611
#>     Attrib V36    0.026909626374655396
#>     Attrib V37    0.05938107355726861
#>     Attrib V38    0.058295098208702156
#>     Attrib V39    0.06878810914154218
#>     Attrib V4    0.11614229691962501
#>     Attrib V40    0.023538015083730546
#>     Attrib V41    0.04398288999885351
#>     Attrib V42    0.06103241068766348
#>     Attrib V43    0.03245564797174889
#>     Attrib V44    0.03431252294466409
#>     Attrib V45    0.051377217225076245
#>     Attrib V46    0.0660329828462048
#>     Attrib V47    0.05728014559581669
#>     Attrib V48    0.03305678266985295
#>     Attrib V49    0.014595262112981911
#>     Attrib V5    0.08820889384047158
#>     Attrib V50    0.09146281692574819
#>     Attrib V51    0.1349834681391392
#>     Attrib V52    0.11422463812429257
#>     Attrib V53    0.1114241835595159
#>     Attrib V54    0.03140139537532872
#>     Attrib V55    0.09260208911126132
#>     Attrib V56    0.10057497828286185
#>     Attrib V57    0.10457085274117003
#>     Attrib V58    0.14783443305405605
#>     Attrib V59    0.03487038293489026
#>     Attrib V6    0.034334450627601716
#>     Attrib V60    0.0690274208828708
#>     Attrib V7    0.021603555058766013
#>     Attrib V8    0.02406393018294026
#>     Attrib V9    0.10752730094294227
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.028380864801583416
#>     Attrib V1    0.219908074219874
#>     Attrib V10    0.10078657050633712
#>     Attrib V11    0.19558043724631757
#>     Attrib V12    0.012788614792394182
#>     Attrib V13    -0.013807119478192747
#>     Attrib V14    3.6093489112977564E-4
#>     Attrib V15    0.035156812712486614
#>     Attrib V16    0.026205993317629954
#>     Attrib V17    0.04142960604476243
#>     Attrib V18    0.02739907044905806
#>     Attrib V19    -0.01057967509560106
#>     Attrib V2    0.1555882701199503
#>     Attrib V20    0.0549672405069526
#>     Attrib V21    0.09045630010245859
#>     Attrib V22    0.06687493200793841
#>     Attrib V23    -0.022752083821114297
#>     Attrib V24    0.008603538997923155
#>     Attrib V25    -0.16914973331203528
#>     Attrib V26    -0.21753465471404135
#>     Attrib V27    -0.1394564765740635
#>     Attrib V28    -0.14953713740403055
#>     Attrib V29    -0.18491366272937354
#>     Attrib V3    0.10746822609920638
#>     Attrib V30    0.08073336850660112
#>     Attrib V31    -0.19042344022499524
#>     Attrib V32    -0.035819972007121226
#>     Attrib V33    0.16514047263898401
#>     Attrib V34    0.0190399038006406
#>     Attrib V35    0.06424515930843296
#>     Attrib V36    -0.11483843488014336
#>     Attrib V37    -0.16006694991399448
#>     Attrib V38    0.0792567060887412
#>     Attrib V39    0.10199058142021605
#>     Attrib V4    0.17789740039434263
#>     Attrib V40    -0.09071869426458926
#>     Attrib V41    -0.03482582619399693
#>     Attrib V42    -0.005570093376233167
#>     Attrib V43    0.1574184586565606
#>     Attrib V44    0.2592783252169495
#>     Attrib V45    0.18262040025398493
#>     Attrib V46    0.04563250413777017
#>     Attrib V47    -0.06687586512085127
#>     Attrib V48    0.09295550700010187
#>     Attrib V49    0.04741705288848704
#>     Attrib V5    0.10738996715154048
#>     Attrib V50    -0.12176507324897391
#>     Attrib V51    0.11880993218372621
#>     Attrib V52    0.03330471122809508
#>     Attrib V53    0.11160608304362961
#>     Attrib V54    0.07720101520470603
#>     Attrib V55    -0.02455194768402751
#>     Attrib V56    0.1238079728070821
#>     Attrib V57    -0.07158825506345994
#>     Attrib V58    0.20475593230318023
#>     Attrib V59    0.1424483590100191
#>     Attrib V6    0.001759062591966266
#>     Attrib V60    0.07374311686407616
#>     Attrib V7    -0.019153964451733372
#>     Attrib V8    0.06165519021041304
#>     Attrib V9    0.19257744407530838
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.1751112066530131
#>     Attrib V1    0.11797800891841313
#>     Attrib V10    0.06868317334380669
#>     Attrib V11    0.08617712595184167
#>     Attrib V12    0.01604446451389341
#>     Attrib V13    0.01832686373453169
#>     Attrib V14    0.05094974987435126
#>     Attrib V15    -0.00831890907938296
#>     Attrib V16    0.01759330879162548
#>     Attrib V17    -0.0219713706158535
#>     Attrib V18    0.04700246868838757
#>     Attrib V19    -0.07119830108183497
#>     Attrib V2    0.09608725312232075
#>     Attrib V20    0.007322057779180695
#>     Attrib V21    0.022725873010068093
#>     Attrib V22    -0.05646317884680404
#>     Attrib V23    -0.03941819902381077
#>     Attrib V24    -0.05043935059138486
#>     Attrib V25    -0.04679211118464265
#>     Attrib V26    -0.05992085218945869
#>     Attrib V27    -0.04017796556102025
#>     Attrib V28    -0.06685033186084965
#>     Attrib V29    -0.07877444747454534
#>     Attrib V3    0.16281266357121674
#>     Attrib V30    -0.019536891553095057
#>     Attrib V31    -0.06998518777391759
#>     Attrib V32    -6.0125120628763E-4
#>     Attrib V33    0.04954639996753869
#>     Attrib V34    0.05898931838704759
#>     Attrib V35    0.022722637992860163
#>     Attrib V36    0.06495701181533743
#>     Attrib V37    -0.026505172278561737
#>     Attrib V38    0.02717985399966735
#>     Attrib V39    0.10597534684723907
#>     Attrib V4    0.1012646769818318
#>     Attrib V40    0.00538610629897728
#>     Attrib V41    -0.03533078839828174
#>     Attrib V42    0.013076590089092299
#>     Attrib V43    0.06442903793704644
#>     Attrib V44    0.1554969932128661
#>     Attrib V45    0.0297781885207244
#>     Attrib V46    0.04144423934836498
#>     Attrib V47    0.07739429918226763
#>     Attrib V48    0.0590473274809119
#>     Attrib V49    0.08132801181417046
#>     Attrib V5    0.10031975398886575
#>     Attrib V50    -0.035253405351344136
#>     Attrib V51    0.15151348196371517
#>     Attrib V52    0.06951427845677244
#>     Attrib V53    0.09762478033233193
#>     Attrib V54    0.03292818228613258
#>     Attrib V55    0.07486104917071443
#>     Attrib V56    0.12241288403588009
#>     Attrib V57    -0.012339508183745296
#>     Attrib V58    0.14925411191096627
#>     Attrib V59    0.12830134424369183
#>     Attrib V6    -0.013044491270619336
#>     Attrib V60    0.09647764034546903
#>     Attrib V7    0.05774004873764068
#>     Attrib V8    0.08784026850684622
#>     Attrib V9    0.11896521551496024
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.1539466516293805
#>     Attrib V1    -0.013023195897768743
#>     Attrib V10    0.26101321219305107
#>     Attrib V11    0.8438404629444259
#>     Attrib V12    0.788745496030968
#>     Attrib V13    0.06819928136256603
#>     Attrib V14    -0.4156654190903014
#>     Attrib V15    -0.8401393826114884
#>     Attrib V16    -0.5677215974579531
#>     Attrib V17    -0.3887543492466634
#>     Attrib V18    -0.011756634377829084
#>     Attrib V19    -0.3431475735047735
#>     Attrib V2    -0.05369726217764363
#>     Attrib V20    -0.2634094052810119
#>     Attrib V21    0.15227599070842326
#>     Attrib V22    0.4774101929803276
#>     Attrib V23    0.7110052926476046
#>     Attrib V24    0.7079206199946249
#>     Attrib V25    0.5839790476743896
#>     Attrib V26    0.37656655293518976
#>     Attrib V27    0.5756371696563151
#>     Attrib V28    0.6055772997561195
#>     Attrib V29    0.3422658326565024
#>     Attrib V3    -0.04363594281262434
#>     Attrib V30    0.6312705009967438
#>     Attrib V31    -0.36191004142006616
#>     Attrib V32    -0.03672911033718599
#>     Attrib V33    0.08757030938373069
#>     Attrib V34    -0.0916174182450893
#>     Attrib V35    -0.17537257459857042
#>     Attrib V36    -0.30262134366934873
#>     Attrib V37    -0.257893980024178
#>     Attrib V38    -0.12596937448846107
#>     Attrib V39    0.25292622823572514
#>     Attrib V4    0.31621074473380517
#>     Attrib V40    0.008160221844392437
#>     Attrib V41    0.23543995607704765
#>     Attrib V42    0.3902605453328017
#>     Attrib V43    0.5722260210237425
#>     Attrib V44    0.6380997157973782
#>     Attrib V45    0.4083849513066334
#>     Attrib V46    0.6523210160746327
#>     Attrib V47    0.45676369655585203
#>     Attrib V48    0.5718199648386624
#>     Attrib V49    0.5475823029351123
#>     Attrib V5    0.4712501387298815
#>     Attrib V50    -0.3225536240317031
#>     Attrib V51    0.3662594845088631
#>     Attrib V52    0.22910605341261456
#>     Attrib V53    0.25756786863737163
#>     Attrib V54    0.2179758494994162
#>     Attrib V55    -0.6369611426710798
#>     Attrib V56    -0.3257826763089252
#>     Attrib V57    -0.7637790429504383
#>     Attrib V58    0.20980779030148422
#>     Attrib V59    0.019829636492768223
#>     Attrib V6    0.31921005697201454
#>     Attrib V60    -0.3115734123768415
#>     Attrib V7    -0.39217094908875716
#>     Attrib V8    0.0887269288755674
#>     Attrib V9    0.7880188852500251
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.24109640318589803
#>     Attrib V1    0.1243599928524942
#>     Attrib V10    0.10805012783533106
#>     Attrib V11    0.4966466509883987
#>     Attrib V12    0.26088896125106675
#>     Attrib V13    -0.12137740438844948
#>     Attrib V14    -0.31652321082233636
#>     Attrib V15    -0.525292281298654
#>     Attrib V16    -0.2509174879465103
#>     Attrib V17    -0.159281318577204
#>     Attrib V18    -0.08831923811053224
#>     Attrib V19    -0.32683463434428106
#>     Attrib V2    -0.07967090369283912
#>     Attrib V20    -0.04045235045825833
#>     Attrib V21    0.30599586803538037
#>     Attrib V22    0.3376664135558859
#>     Attrib V23    0.4337112822586292
#>     Attrib V24    0.3815718499149596
#>     Attrib V25    0.03832787044713386
#>     Attrib V26    -0.07019962266910544
#>     Attrib V27    0.2134464673953332
#>     Attrib V28    0.2163991767549639
#>     Attrib V29    0.10528360041254375
#>     Attrib V3    -0.1063096376933091
#>     Attrib V30    0.5740025918372609
#>     Attrib V31    -0.4747885499482465
#>     Attrib V32    0.020966747672165997
#>     Attrib V33    0.26820579349780826
#>     Attrib V34    -0.07193338405707642
#>     Attrib V35    -0.1682245466115444
#>     Attrib V36    -0.23110208174450225
#>     Attrib V37    -0.12604568940498362
#>     Attrib V38    0.11955524882587605
#>     Attrib V39    0.25191363524719357
#>     Attrib V4    0.12029811174042931
#>     Attrib V40    -0.011607858887900656
#>     Attrib V41    0.10250968876798332
#>     Attrib V42    0.23835650007553283
#>     Attrib V43    0.5348581984971813
#>     Attrib V44    0.6946013421934897
#>     Attrib V45    0.35921683493343265
#>     Attrib V46    0.30471592791218
#>     Attrib V47    0.04280265718485038
#>     Attrib V48    0.3089473506431089
#>     Attrib V49    0.3163275516017507
#>     Attrib V5    0.18116654745319488
#>     Attrib V50    -0.5136717644528679
#>     Attrib V51    0.21060248166030746
#>     Attrib V52    -0.03261431739313958
#>     Attrib V53    0.07434051362277432
#>     Attrib V54    0.11004201213339741
#>     Attrib V55    -0.6354677484231738
#>     Attrib V56    -0.028509358793051293
#>     Attrib V57    -0.6787409327514965
#>     Attrib V58    0.2873034281688931
#>     Attrib V59    0.2243591015487883
#>     Attrib V6    0.11897533824198725
#>     Attrib V60    -0.21386480747179928
#>     Attrib V7    -0.10965453032175816
#>     Attrib V8    0.10217184269470082
#>     Attrib V9    0.586263363075871
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.3369676665440393
#>     Attrib V1    -0.21386698649936622
#>     Attrib V10    -0.2612501103081878
#>     Attrib V11    -0.9851628197729208
#>     Attrib V12    -0.20370398668842124
#>     Attrib V13    -0.07459199380595548
#>     Attrib V14    0.33450533748733186
#>     Attrib V15    0.5337671527626323
#>     Attrib V16    0.05215121268773153
#>     Attrib V17    -0.10916832622673503
#>     Attrib V18    -0.07399670240605244
#>     Attrib V19    0.2272618691302983
#>     Attrib V2    0.13209732978754707
#>     Attrib V20    -0.5048436699337129
#>     Attrib V21    -0.9976511608884532
#>     Attrib V22    -0.8612968560746439
#>     Attrib V23    -0.6214201879082872
#>     Attrib V24    -0.3939658349835332
#>     Attrib V25    0.32895727537971714
#>     Attrib V26    0.7617066157186155
#>     Attrib V27    0.45663732693503206
#>     Attrib V28    0.3649114681194054
#>     Attrib V29    0.6210819296615374
#>     Attrib V3    0.012104119600315629
#>     Attrib V30    -0.4900367481293696
#>     Attrib V31    1.4786292578856095
#>     Attrib V32    -0.037443762603820444
#>     Attrib V33    -0.8149996238014702
#>     Attrib V34    -0.09827232182216024
#>     Attrib V35    0.14682422702667663
#>     Attrib V36    0.7041042514596895
#>     Attrib V37    0.6897629901258736
#>     Attrib V38    -0.22602201933960075
#>     Attrib V39    -0.4089052599434587
#>     Attrib V4    -0.17370911569775638
#>     Attrib V40    0.2058527005521841
#>     Attrib V41    0.0618988651372722
#>     Attrib V42    -0.4863546062186167
#>     Attrib V43    -0.7793991413492836
#>     Attrib V44    -1.1104641487421851
#>     Attrib V45    -0.5747970200304567
#>     Attrib V46    -0.3462793118794377
#>     Attrib V47    0.19158652141685303
#>     Attrib V48    -0.28312636949690556
#>     Attrib V49    -0.4921647922681776
#>     Attrib V5    0.06615135743662684
#>     Attrib V50    1.2909250983384035
#>     Attrib V51    -0.19863364005301332
#>     Attrib V52    0.2763624457231472
#>     Attrib V53    -0.424773865148453
#>     Attrib V54    -0.35079458989375983
#>     Attrib V55    1.0094856979842994
#>     Attrib V56    -0.2556617738470701
#>     Attrib V57    1.2640485134338633
#>     Attrib V58    -1.067907918619385
#>     Attrib V59    -0.8098298158541221
#>     Attrib V6    0.10235350148249553
#>     Attrib V60    0.03974973854942167
#>     Attrib V7    0.012291290343281577
#>     Attrib V8    -0.30373016516561696
#>     Attrib V9    -0.9688313744463788
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.02812314428791871
#>     Attrib V1    0.4221564879775498
#>     Attrib V10    -0.007432226318238249
#>     Attrib V11    0.20738824821397941
#>     Attrib V12    -0.09037467505309559
#>     Attrib V13    -0.0019248418959764359
#>     Attrib V14    0.10766096416654325
#>     Attrib V15    0.05825110892609217
#>     Attrib V16    0.262508494064455
#>     Attrib V17    0.25161106643933945
#>     Attrib V18    0.16480536912165558
#>     Attrib V19    0.08110775120611227
#>     Attrib V2    0.16658510888783107
#>     Attrib V20    0.3712084276776525
#>     Attrib V21    0.3894800925819355
#>     Attrib V22    0.17016397119558846
#>     Attrib V23    0.09080579307834527
#>     Attrib V24    0.10396343735047264
#>     Attrib V25    -0.3209567955001831
#>     Attrib V26    -0.5173545232119016
#>     Attrib V27    -0.5089657870618846
#>     Attrib V28    -0.5216045030120823
#>     Attrib V29    -0.46417310630793407
#>     Attrib V3    0.1471595209870566
#>     Attrib V30    -0.04110186598684604
#>     Attrib V31    -0.6356078194807785
#>     Attrib V32    -0.05360341358266651
#>     Attrib V33    0.23532708681008963
#>     Attrib V34    0.019890163500854378
#>     Attrib V35    -0.0374896300343922
#>     Attrib V36    -0.29430050432621563
#>     Attrib V37    -0.3653086793395313
#>     Attrib V38    0.048251140541205835
#>     Attrib V39    0.1420259588871445
#>     Attrib V4    0.28404339935941303
#>     Attrib V40    -0.06747205575948945
#>     Attrib V41    -0.13879162991362018
#>     Attrib V42    0.033310533787233566
#>     Attrib V43    0.22271800121369886
#>     Attrib V44    0.3764807394724303
#>     Attrib V45    0.15174243817180216
#>     Attrib V46    0.023545025408959565
#>     Attrib V47    -0.2623775329723823
#>     Attrib V48    0.02469232033978513
#>     Attrib V49    0.12416029744599137
#>     Attrib V5    0.1270911217811676
#>     Attrib V50    -0.38125280630189146
#>     Attrib V51    0.12509470275480067
#>     Attrib V52    0.003021031063820861
#>     Attrib V53    0.320461333939954
#>     Attrib V54    0.3344739738445117
#>     Attrib V55    -0.12409461074609321
#>     Attrib V56    0.27041497116882346
#>     Attrib V57    -0.29545582638842016
#>     Attrib V58    0.597176213981216
#>     Attrib V59    0.4947993546134551
#>     Attrib V6    0.007680063959434511
#>     Attrib V60    0.2822839618255634
#>     Attrib V7    0.20222254135027365
#>     Attrib V8    -0.0106911993227929
#>     Attrib V9    0.24301853468828208
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.3865504664108808
#>     Attrib V1    0.17224121510450585
#>     Attrib V10    0.018908020126758626
#>     Attrib V11    0.697966079719947
#>     Attrib V12    0.4163343511063269
#>     Attrib V13    -0.12688023076116764
#>     Attrib V14    -0.5848437496269907
#>     Attrib V15    -0.7526074441806798
#>     Attrib V16    -0.28585663339462336
#>     Attrib V17    -0.08314994800494137
#>     Attrib V18    -0.11232210808707757
#>     Attrib V19    -0.48112682570778653
#>     Attrib V2    -0.09544424039569806
#>     Attrib V20    -0.08301963563834873
#>     Attrib V21    0.32047951424426063
#>     Attrib V22    0.3926541797927618
#>     Attrib V23    0.5192718405956837
#>     Attrib V24    0.426969120832296
#>     Attrib V25    -0.04621735672519479
#>     Attrib V26    -0.3435210217760758
#>     Attrib V27    0.038722307737798625
#>     Attrib V28    0.2228278616320718
#>     Attrib V29    -0.03463358556204146
#>     Attrib V3    0.02242592923283047
#>     Attrib V30    0.7064649078814086
#>     Attrib V31    -0.7050990722419551
#>     Attrib V32    0.15678032287879276
#>     Attrib V33    0.45876225408939814
#>     Attrib V34    -0.08268035480877577
#>     Attrib V35    -0.21586023779168032
#>     Attrib V36    -0.4477158395453651
#>     Attrib V37    -0.1708780310710279
#>     Attrib V38    0.14855658855781143
#>     Attrib V39    0.32462434483068364
#>     Attrib V4    0.2353471011813571
#>     Attrib V40    -0.11489465562987901
#>     Attrib V41    0.10582124500376353
#>     Attrib V42    0.4286353464365368
#>     Attrib V43    0.7065603255344184
#>     Attrib V44    0.8417430381758714
#>     Attrib V45    0.45425544878350116
#>     Attrib V46    0.38732295742115086
#>     Attrib V47    0.060282865674149796
#>     Attrib V48    0.253926525719606
#>     Attrib V49    0.31599826194879505
#>     Attrib V5    0.1676876876456306
#>     Attrib V50    -0.8794343775195382
#>     Attrib V51    0.12006312412980519
#>     Attrib V52    -0.04946337653298136
#>     Attrib V53    0.18373351784926695
#>     Attrib V54    0.17478267084322952
#>     Attrib V55    -1.091926031390588
#>     Attrib V56    0.04651730900771975
#>     Attrib V57    -0.9897283971674512
#>     Attrib V58    0.328799177318141
#>     Attrib V59    0.34402300541069264
#>     Attrib V6    0.10980173598708635
#>     Attrib V60    -0.21923943953160863
#>     Attrib V7    -0.27690854429885453
#>     Attrib V8    0.05308358374334117
#>     Attrib V9    0.7116068463526412
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.2694553701221681
#>     Attrib V1    -0.2993847361942439
#>     Attrib V10    -0.19265707574707538
#>     Attrib V11    -0.7907659526280405
#>     Attrib V12    -0.10262649632727364
#>     Attrib V13    0.03674780242151471
#>     Attrib V14    0.3533947478420049
#>     Attrib V15    0.47795370270187754
#>     Attrib V16    -0.09943046843029969
#>     Attrib V17    -0.17499046565922582
#>     Attrib V18    -0.11206998353314075
#>     Attrib V19    0.174623684204719
#>     Attrib V2    0.03311554442306917
#>     Attrib V20    -0.41645292246827476
#>     Attrib V21    -0.8402818618847399
#>     Attrib V22    -0.7249796030975229
#>     Attrib V23    -0.5171046830070419
#>     Attrib V24    -0.377343332061543
#>     Attrib V25    0.3858177862524143
#>     Attrib V26    0.8382449632075044
#>     Attrib V27    0.4843382936535527
#>     Attrib V28    0.4025977550214909
#>     Attrib V29    0.6751704395319613
#>     Attrib V3    -0.0491400659972293
#>     Attrib V30    -0.3972901779632037
#>     Attrib V31    1.2885983486585233
#>     Attrib V32    -0.07923515679135168
#>     Attrib V33    -0.8630145330153896
#>     Attrib V34    -0.13213701986138737
#>     Attrib V35    0.15688904414684604
#>     Attrib V36    0.7075717134967499
#>     Attrib V37    0.6411833061454385
#>     Attrib V38    -0.1425339078205629
#>     Attrib V39    -0.3461475064810829
#>     Attrib V4    -0.25979454953153036
#>     Attrib V40    0.16203802496560438
#>     Attrib V41    0.030102868232698678
#>     Attrib V42    -0.4075071342291489
#>     Attrib V43    -0.624345120347938
#>     Attrib V44    -1.074421153884426
#>     Attrib V45    -0.5578392875628472
#>     Attrib V46    -0.23293230149846073
#>     Attrib V47    0.30531986162687874
#>     Attrib V48    -0.20343289827950173
#>     Attrib V49    -0.41899561675841623
#>     Attrib V5    -0.07469634431570578
#>     Attrib V50    1.22415496284
#>     Attrib V51    -0.1395254336266077
#>     Attrib V52    0.27518742788177675
#>     Attrib V53    -0.3516305606821392
#>     Attrib V54    -0.34465792184928234
#>     Attrib V55    0.9733739363720538
#>     Attrib V56    -0.2579305456027497
#>     Attrib V57    1.1138098040538915
#>     Attrib V58    -0.9026516924712532
#>     Attrib V59    -0.6956569322288441
#>     Attrib V6    0.06889668342782908
#>     Attrib V60    -0.14843425225118426
#>     Attrib V7    -0.16401813035119642
#>     Attrib V8    -0.21906846932271742
#>     Attrib V9    -0.8188986864664457
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.37943152355786786
#>     Attrib V1    0.175880809963267
#>     Attrib V10    0.3165546152039824
#>     Attrib V11    1.0872368972344812
#>     Attrib V12    1.0140192343818575
#>     Attrib V13    0.22993400775057246
#>     Attrib V14    -0.19071611667755464
#>     Attrib V15    -0.8064302880834133
#>     Attrib V16    -0.604551115307817
#>     Attrib V17    -0.5695753178402351
#>     Attrib V18    0.038011365152621844
#>     Attrib V19    -0.32641806775004134
#>     Attrib V2    0.21904500443864872
#>     Attrib V20    -0.25041659625135293
#>     Attrib V21    0.1434759573354507
#>     Attrib V22    0.46384923759717783
#>     Attrib V23    0.7631125566901871
#>     Attrib V24    0.5466458144231016
#>     Attrib V25    0.27580330243526313
#>     Attrib V26    0.4197142315568394
#>     Attrib V27    0.9963324034992848
#>     Attrib V28    1.41707404172588
#>     Attrib V29    1.4419291406113441
#>     Attrib V3    0.11722284595253822
#>     Attrib V30    1.000271945012247
#>     Attrib V31    -0.41037352874329647
#>     Attrib V32    -0.3491760125889121
#>     Attrib V33    -0.7044607810791561
#>     Attrib V34    -0.7414038846367761
#>     Attrib V35    -0.7279533956424684
#>     Attrib V36    -0.45598254445105196
#>     Attrib V37    -0.21026567124189774
#>     Attrib V38    -0.059486292843827594
#>     Attrib V39    0.5810202041141893
#>     Attrib V4    0.4932511523208626
#>     Attrib V40    -0.1494673222366533
#>     Attrib V41    0.06454143330466823
#>     Attrib V42    0.23534837911001763
#>     Attrib V43    0.5945728676377716
#>     Attrib V44    0.8134962293410091
#>     Attrib V45    0.4611487574611707
#>     Attrib V46    0.9036697703210527
#>     Attrib V47    0.7378546397388674
#>     Attrib V48    0.6364548962248863
#>     Attrib V49    0.7822260140717978
#>     Attrib V5    0.8085082914368801
#>     Attrib V50    0.14715572704947877
#>     Attrib V51    0.5481311811423661
#>     Attrib V52    0.4346290019734097
#>     Attrib V53    0.539534372204761
#>     Attrib V54    0.5525391036770656
#>     Attrib V55    -0.5615196315628579
#>     Attrib V56    -0.6050376348972959
#>     Attrib V57    -0.7202423586077064
#>     Attrib V58    0.0977099121231411
#>     Attrib V59    -0.058743835265336275
#>     Attrib V6    0.5515338940978063
#>     Attrib V60    -0.3286955645857557
#>     Attrib V7    -0.446391024487142
#>     Attrib V8    -0.09147036052552872
#>     Attrib V9    0.692787752142206
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.17131602696581968
#>     Attrib V1    -0.04281029735266643
#>     Attrib V10    -0.034288331317157715
#>     Attrib V11    -0.1908821907804823
#>     Attrib V12    -0.07311914926331933
#>     Attrib V13    -0.034080665463704626
#>     Attrib V14    0.11310779849837677
#>     Attrib V15    0.07457953155263855
#>     Attrib V16    0.02165443157553096
#>     Attrib V17    0.03736393574510289
#>     Attrib V18    -0.022527151507459372
#>     Attrib V19    0.1202354093637303
#>     Attrib V2    0.028970263294002124
#>     Attrib V20    -0.027717600186678
#>     Attrib V21    -0.07840098783588077
#>     Attrib V22    -0.06653734367202323
#>     Attrib V23    -0.03020347503897354
#>     Attrib V24    -0.04000780264673671
#>     Attrib V25    0.04518865015994446
#>     Attrib V26    -0.004586217227499223
#>     Attrib V27    -0.01859520103274298
#>     Attrib V28    -0.005810472234016996
#>     Attrib V29    0.015260466151753612
#>     Attrib V3    -0.005811846407538771
#>     Attrib V30    -0.12083809644969618
#>     Attrib V31    0.1529075871877086
#>     Attrib V32    -0.0066774126535859065
#>     Attrib V33    -0.020184733256975302
#>     Attrib V34    -0.019305933208903746
#>     Attrib V35    0.08876575560713491
#>     Attrib V36    0.1785790788087494
#>     Attrib V37    0.15863264475399785
#>     Attrib V38    -0.015195129448927622
#>     Attrib V39    -0.020189412791712602
#>     Attrib V4    0.007426896318569925
#>     Attrib V40    0.07125692945826305
#>     Attrib V41    0.03584495575763211
#>     Attrib V42    -0.0038012900481896213
#>     Attrib V43    -0.08792209061139553
#>     Attrib V44    -0.14252267188827952
#>     Attrib V45    -0.13238049556376658
#>     Attrib V46    -0.12473528095115714
#>     Attrib V47    -0.024223905766988352
#>     Attrib V48    -0.02461951490874709
#>     Attrib V49    -0.0943454415801563
#>     Attrib V5    -0.0636036178588554
#>     Attrib V50    0.17208802229654416
#>     Attrib V51    -0.034337334653906225
#>     Attrib V52    0.022367569907558938
#>     Attrib V53    -0.0632014634175528
#>     Attrib V54    -0.017278773577716868
#>     Attrib V55    0.18036328441393804
#>     Attrib V56    0.039420752052856195
#>     Attrib V57    0.25631305041060715
#>     Attrib V58    -0.05224640195343351
#>     Attrib V59    -0.03666524187770903
#>     Attrib V6    0.011581843663234831
#>     Attrib V60    0.08950085653353777
#>     Attrib V7    -0.0032640509089030155
#>     Attrib V8    0.04320944756320414
#>     Attrib V9    -0.12518418468575052
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.18006814345439087
#>     Attrib V1    0.19892562851483464
#>     Attrib V10    0.27498106655616683
#>     Attrib V11    0.6974397936757706
#>     Attrib V12    0.375810731454707
#>     Attrib V13    -0.1713006943682942
#>     Attrib V14    -0.6130572131902315
#>     Attrib V15    -0.809369651111181
#>     Attrib V16    -0.4545386722530803
#>     Attrib V17    -0.3439730318762579
#>     Attrib V18    -0.12729054537206205
#>     Attrib V19    -0.49822152325744407
#>     Attrib V2    -0.015538759059905507
#>     Attrib V20    -0.2683847705541851
#>     Attrib V21    0.23187801521219317
#>     Attrib V22    0.36735207638610784
#>     Attrib V23    0.468678984942662
#>     Attrib V24    0.5068397055698264
#>     Attrib V25    0.2258350960159799
#>     Attrib V26    0.13059505171943178
#>     Attrib V27    0.299645689943556
#>     Attrib V28    0.33135802215362664
#>     Attrib V29    0.22471788520355782
#>     Attrib V3    -0.002766453971261195
#>     Attrib V30    0.728429805754536
#>     Attrib V31    -0.37294327483601125
#>     Attrib V32    0.12220932086475185
#>     Attrib V33    0.3357255407460775
#>     Attrib V34    0.11486074793436457
#>     Attrib V35    -0.10884733847305152
#>     Attrib V36    -0.2741709564485799
#>     Attrib V37    -0.18255577393455266
#>     Attrib V38    -0.023825172915550086
#>     Attrib V39    0.19811707038000093
#>     Attrib V4    0.23719703509423318
#>     Attrib V40    -0.155592207746297
#>     Attrib V41    0.10935183624728799
#>     Attrib V42    0.28211889806810286
#>     Attrib V43    0.45022010846847527
#>     Attrib V44    0.6829554926631639
#>     Attrib V45    0.499687002439245
#>     Attrib V46    0.5329170204227504
#>     Attrib V47    0.27083576846067187
#>     Attrib V48    0.4793471504549035
#>     Attrib V49    0.3443606640674885
#>     Attrib V5    0.29094094047678526
#>     Attrib V50    -0.4311584424662322
#>     Attrib V51    0.2803722828588022
#>     Attrib V52    0.08182761487134245
#>     Attrib V53    0.005478446329149578
#>     Attrib V54    0.08319337612601838
#>     Attrib V55    -0.7066324192496803
#>     Attrib V56    -0.24246435293487756
#>     Attrib V57    -0.6992165525434795
#>     Attrib V58    0.15758630550401048
#>     Attrib V59    0.07199690457431504
#>     Attrib V6    0.20421187596807053
#>     Attrib V60    -0.29145711110877404
#>     Attrib V7    -0.3610470929026443
#>     Attrib V8    0.05215980055555269
#>     Attrib V9    0.7761233125784333
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.6239988661520773
#>     Attrib V1    -0.6594262539933772
#>     Attrib V10    -0.30703996706339703
#>     Attrib V11    -1.449410421480588
#>     Attrib V12    -1.1487334953353228
#>     Attrib V13    -0.39854000221314617
#>     Attrib V14    0.46836928106038295
#>     Attrib V15    0.3202838119126461
#>     Attrib V16    0.20917657005899926
#>     Attrib V17    0.09597873898320806
#>     Attrib V18    0.23991228840311213
#>     Attrib V19    -0.12089164283209167
#>     Attrib V2    0.0782970541000725
#>     Attrib V20    -1.134059876034442
#>     Attrib V21    -1.3442124397094624
#>     Attrib V22    -0.5771369758940205
#>     Attrib V23    0.07086324528669162
#>     Attrib V24    -0.08627014104937031
#>     Attrib V25    0.09585024844424944
#>     Attrib V26    -0.17618798950023914
#>     Attrib V27    -0.05880658869163333
#>     Attrib V28    0.5807778211209154
#>     Attrib V29    0.10547296029764272
#>     Attrib V3    -0.13655339448500273
#>     Attrib V30    -0.5464581940684323
#>     Attrib V31    1.4749924192888748
#>     Attrib V32    1.044521461281439
#>     Attrib V33    0.20412524203123827
#>     Attrib V34    -0.2570269835817062
#>     Attrib V35    0.5053747991850261
#>     Attrib V36    1.614643748666743
#>     Attrib V37    1.1507154624204448
#>     Attrib V38    0.35338846061380136
#>     Attrib V39    -0.5462157669795917
#>     Attrib V4    -0.09646693657883748
#>     Attrib V40    0.2012742415822601
#>     Attrib V41    0.46203566416291314
#>     Attrib V42    -0.20912069869861402
#>     Attrib V43    -0.34969953548982763
#>     Attrib V44    -0.19641081213255376
#>     Attrib V45    -0.7196280350756746
#>     Attrib V46    -1.4121330580189226
#>     Attrib V47    -0.9503638074028332
#>     Attrib V48    -0.9502869695865611
#>     Attrib V49    -0.6717806114581037
#>     Attrib V5    -0.679042746890978
#>     Attrib V50    0.8320366859998555
#>     Attrib V51    -0.019170746033054593
#>     Attrib V52    0.4716034127925503
#>     Attrib V53    -0.2150987546860347
#>     Attrib V54    0.4129988823242462
#>     Attrib V55    0.9564223935329019
#>     Attrib V56    0.539901961951037
#>     Attrib V57    1.5068678973184912
#>     Attrib V58    -0.12070393852948468
#>     Attrib V59    -0.37242075532875735
#>     Attrib V6    0.13188925149927452
#>     Attrib V60    0.7521608808516272
#>     Attrib V7    0.9397094813401858
#>     Attrib V8    0.8515618229863005
#>     Attrib V9    -0.42290249666831287
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.196019090909931
#>     Attrib V1    0.09566089447722217
#>     Attrib V10    0.08485881151589404
#>     Attrib V11    0.4942725152261967
#>     Attrib V12    0.23735307395116723
#>     Attrib V13    -0.06900357657336556
#>     Attrib V14    -0.24660349528807973
#>     Attrib V15    -0.4262955464339999
#>     Attrib V16    -0.20124446015122696
#>     Attrib V17    -0.11659407661585042
#>     Attrib V18    -0.08038558658408017
#>     Attrib V19    -0.35632043282556164
#>     Attrib V2    -0.03098219102906541
#>     Attrib V20    -0.02271365309609956
#>     Attrib V21    0.21510183427182794
#>     Attrib V22    0.22293241111425194
#>     Attrib V23    0.20687187705749974
#>     Attrib V24    0.26558654626369654
#>     Attrib V25    0.01792762890901413
#>     Attrib V26    -0.18081553325307365
#>     Attrib V27    0.06140055069369988
#>     Attrib V28    0.11176828673219069
#>     Attrib V29    0.00804777672355322
#>     Attrib V3    0.012298572578202717
#>     Attrib V30    0.3797393590090904
#>     Attrib V31    -0.41485621358183705
#>     Attrib V32    0.11158448284904149
#>     Attrib V33    0.2910906049646815
#>     Attrib V34    -0.005689445120758666
#>     Attrib V35    -0.09481131888401433
#>     Attrib V36    -0.26829900893290637
#>     Attrib V37    -0.1491385876704201
#>     Attrib V38    0.08191003595561408
#>     Attrib V39    0.19966132816259602
#>     Attrib V4    0.10614802430560634
#>     Attrib V40    -0.0920082737326237
#>     Attrib V41    0.007954255262389515
#>     Attrib V42    0.1401664395118513
#>     Attrib V43    0.40931030020061854
#>     Attrib V44    0.48341145308312916
#>     Attrib V45    0.35506759677564753
#>     Attrib V46    0.253891007986226
#>     Attrib V47    0.03949991107508185
#>     Attrib V48    0.21966567357315575
#>     Attrib V49    0.22769170008297304
#>     Attrib V5    0.07332598712223327
#>     Attrib V50    -0.425903894669405
#>     Attrib V51    0.13826339471911817
#>     Attrib V52    -0.011587625182693817
#>     Attrib V53    0.053071156535731835
#>     Attrib V54    0.04950831531830065
#>     Attrib V55    -0.5194444610340362
#>     Attrib V56    0.004911782464638935
#>     Attrib V57    -0.562134782147037
#>     Attrib V58    0.22227287462161704
#>     Attrib V59    0.09524037020573826
#>     Attrib V6    0.08552973910332472
#>     Attrib V60    -0.15519848750271903
#>     Attrib V7    -0.08652803672264885
#>     Attrib V8    0.09542166292463727
#>     Attrib V9    0.4936377259468056
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.10322694345281791
#>     Attrib V1    0.20915150386373668
#>     Attrib V10    0.09804761491835341
#>     Attrib V11    0.1472276323617961
#>     Attrib V12    0.09861521210019247
#>     Attrib V13    0.09535112204717543
#>     Attrib V14    0.06406502210652606
#>     Attrib V15    0.02246443590019394
#>     Attrib V16    0.019469450358807566
#>     Attrib V17    0.059452606765426956
#>     Attrib V18    0.021958412018896423
#>     Attrib V19    -0.04532759997872792
#>     Attrib V2    0.13229044591902017
#>     Attrib V20    0.01551904039221863
#>     Attrib V21    0.07192443523648323
#>     Attrib V22    -0.023134920059944337
#>     Attrib V23    -0.017624293298504377
#>     Attrib V24    -0.033850897125072596
#>     Attrib V25    -0.052023143205562304
#>     Attrib V26    -0.07670755959146418
#>     Attrib V27    -0.09309584049477007
#>     Attrib V28    -0.08542929178207705
#>     Attrib V29    -0.151222442025172
#>     Attrib V3    0.11274781247449306
#>     Attrib V30    0.040360562711812126
#>     Attrib V31    -0.10240790699712718
#>     Attrib V32    -0.03712785205694824
#>     Attrib V33    0.03895536758459184
#>     Attrib V34    0.011779004311087471
#>     Attrib V35    0.06794942899642478
#>     Attrib V36    -0.05902078251795236
#>     Attrib V37    -0.05728615039214318
#>     Attrib V38    -0.0014560765028004022
#>     Attrib V39    0.12320166078275531
#>     Attrib V4    0.19789191439388365
#>     Attrib V40    -0.006726419328459288
#>     Attrib V41    -0.023421999800919413
#>     Attrib V42    0.05102221049777958
#>     Attrib V43    0.08457816507963115
#>     Attrib V44    0.137563345855088
#>     Attrib V45    0.11645805758586589
#>     Attrib V46    0.06727429280331489
#>     Attrib V47    -0.012686235464109547
#>     Attrib V48    0.08099037700096419
#>     Attrib V49    0.05079521975176335
#>     Attrib V5    0.06943261595457911
#>     Attrib V50    -0.06451216817001923
#>     Attrib V51    0.10125415006672717
#>     Attrib V52    0.09111712882408331
#>     Attrib V53    0.15909014131097662
#>     Attrib V54    0.10676228808851727
#>     Attrib V55    -0.011236747955118788
#>     Attrib V56    0.15476385058595946
#>     Attrib V57    -0.07545869466442179
#>     Attrib V58    0.24455413405513896
#>     Attrib V59    0.20938119942638897
#>     Attrib V6    0.006086642804822201
#>     Attrib V60    0.11729240937216476
#>     Attrib V7    -0.029381342783264815
#>     Attrib V8    0.009412942931725237
#>     Attrib V9    0.11880018986186937
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.05720175545909947
#>     Attrib V1    0.4949275195770081
#>     Attrib V10    -0.04919966340315809
#>     Attrib V11    0.2815258398190714
#>     Attrib V12    -0.2446350426438545
#>     Attrib V13    -0.08157119739425919
#>     Attrib V14    -0.014577769177704729
#>     Attrib V15    0.039362256774870784
#>     Attrib V16    0.28242689493787076
#>     Attrib V17    0.34937843842862326
#>     Attrib V18    0.1417903143049844
#>     Attrib V19    0.05274880162161448
#>     Attrib V2    0.17093457302251175
#>     Attrib V20    0.5226904457568816
#>     Attrib V21    0.5655091784711267
#>     Attrib V22    0.3844711557221471
#>     Attrib V23    0.2921381623715068
#>     Attrib V24    0.20020777643734447
#>     Attrib V25    -0.42189179438824725
#>     Attrib V26    -0.666944107020078
#>     Attrib V27    -0.6890404836298161
#>     Attrib V28    -0.689152439155943
#>     Attrib V29    -0.7795288355311735
#>     Attrib V3    0.15919866328378487
#>     Attrib V30    0.016304816328795747
#>     Attrib V31    -0.9146202351477866
#>     Attrib V32    0.014686717672053559
#>     Attrib V33    0.5718543408480596
#>     Attrib V34    0.14017586318166522
#>     Attrib V35    -0.049234342158209
#>     Attrib V36    -0.4884438701508073
#>     Attrib V37    -0.5042999770806287
#>     Attrib V38    0.17952081139997506
#>     Attrib V39    0.25138392883361027
#>     Attrib V4    0.35377989624877537
#>     Attrib V40    -0.0223614486695378
#>     Attrib V41    -0.06888172589988639
#>     Attrib V42    0.13772095806389675
#>     Attrib V43    0.27357068848597355
#>     Attrib V44    0.5830950996539654
#>     Attrib V45    0.2584545860293032
#>     Attrib V46    -0.01670346820763931
#>     Attrib V47    -0.3672735278925416
#>     Attrib V48    -0.007231214039732384
#>     Attrib V49    0.1530659415365931
#>     Attrib V5    0.09452065469131586
#>     Attrib V50    -0.7036119140619262
#>     Attrib V51    0.10434922000799364
#>     Attrib V52    -0.09640821417538879
#>     Attrib V53    0.35648978196969494
#>     Attrib V54    0.4169467552877314
#>     Attrib V55    -0.32747869574339533
#>     Attrib V56    0.2939855278160093
#>     Attrib V57    -0.49486136074896686
#>     Attrib V58    0.7046377565992994
#>     Attrib V59    0.6409718351258611
#>     Attrib V6    -9.745548690407254E-5
#>     Attrib V60    0.3099728043875384
#>     Attrib V7    0.3408882192165573
#>     Attrib V8    0.14541809784988585
#>     Attrib V9    0.43602261279836174
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.012852310038103082
#>     Attrib V1    0.34953551953869444
#>     Attrib V10    -0.042707433731709515
#>     Attrib V11    0.20902680698258475
#>     Attrib V12    -0.09165808171204388
#>     Attrib V13    -0.06118713344114223
#>     Attrib V14    0.070595444895921
#>     Attrib V15    0.04201640450792959
#>     Attrib V16    0.20940814703282531
#>     Attrib V17    0.18536143056656093
#>     Attrib V18    0.18770121672513432
#>     Attrib V19    0.013531928330491876
#>     Attrib V2    0.09653128891258363
#>     Attrib V20    0.30531986956377244
#>     Attrib V21    0.39560732557202893
#>     Attrib V22    0.19117399592617307
#>     Attrib V23    0.15443644183326694
#>     Attrib V24    0.03653625784282151
#>     Attrib V25    -0.3591358103256621
#>     Attrib V26    -0.5015305032212563
#>     Attrib V27    -0.41245995843303845
#>     Attrib V28    -0.3288216400722784
#>     Attrib V29    -0.39775317737630655
#>     Attrib V3    0.1674500361341657
#>     Attrib V30    0.06364383800712296
#>     Attrib V31    -0.6293188468139249
#>     Attrib V32    -0.028531611044857935
#>     Attrib V33    0.30288552465162666
#>     Attrib V34    0.04849435603131976
#>     Attrib V35    -0.019906118207472918
#>     Attrib V36    -0.20540863153203812
#>     Attrib V37    -0.30699281843548787
#>     Attrib V38    0.048086770867032474
#>     Attrib V39    0.17380537183196085
#>     Attrib V4    0.23009909663272823
#>     Attrib V40    -0.10329152210597305
#>     Attrib V41    -0.12168702883431878
#>     Attrib V42    0.07345404836997985
#>     Attrib V43    0.1354879914876048
#>     Attrib V44    0.40481816130562814
#>     Attrib V45    0.22691253629558725
#>     Attrib V46    0.02081982495192689
#>     Attrib V47    -0.2138969442869366
#>     Attrib V48    -0.04537856471605842
#>     Attrib V49    0.14020055444901952
#>     Attrib V5    0.10468785957818245
#>     Attrib V50    -0.4069807151606237
#>     Attrib V51    0.14008079383605962
#>     Attrib V52    0.021593230701993874
#>     Attrib V53    0.2435493477222958
#>     Attrib V54    0.18901590336162227
#>     Attrib V55    -0.19785511074622983
#>     Attrib V56    0.19556578768419486
#>     Attrib V57    -0.30844148062571924
#>     Attrib V58    0.5414801634094399
#>     Attrib V59    0.38473592495136166
#>     Attrib V6    0.006967473777066597
#>     Attrib V60    0.17189680598575482
#>     Attrib V7    0.15246977972932407
#>     Attrib V8    0.10006361047229355
#>     Attrib V9    0.2938308367156508
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
