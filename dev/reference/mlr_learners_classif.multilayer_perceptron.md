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
#>     Threshold    -0.7884535340574377
#>     Node 2    2.766119841977676
#>     Node 3    1.6176674603485015
#>     Node 4    1.2107686884891364
#>     Node 5    -2.271022225654121
#>     Node 6    0.8344349887088064
#>     Node 7    3.6616583652245818
#>     Node 8    0.8286710382019116
#>     Node 9    3.176257000135824
#>     Node 10    -0.09590309739630097
#>     Node 11    2.0107672395869174
#>     Node 12    1.4982734967563551
#>     Node 13    0.5558148720436853
#>     Node 14    1.7613295946659793
#>     Node 15    -1.9279418575169935
#>     Node 16    0.24283317368425827
#>     Node 17    0.48442420268703246
#>     Node 18    -1.471250200202208
#>     Node 19    1.351988712611309
#>     Node 20    1.7592174773391518
#>     Node 21    -2.6850543519059134
#>     Node 22    0.8732623973398215
#>     Node 23    1.3437286618116733
#>     Node 24    -1.591132562611483
#>     Node 25    3.411716602241836
#>     Node 26    -1.241627930399732
#>     Node 27    1.4834903505611419
#>     Node 28    -3.6910795109072905
#>     Node 29    0.9671174780341891
#>     Node 30    -0.7473836652365609
#>     Node 31    1.0975996387357636
#>     Node 32    0.507567921714322
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.7970011001624163
#>     Node 2    -2.7702287056053922
#>     Node 3    -1.6013489370485845
#>     Node 4    -1.1665132922869277
#>     Node 5    2.2705718020524324
#>     Node 6    -0.8122338754787363
#>     Node 7    -3.674852634456616
#>     Node 8    -0.8543044842373959
#>     Node 9    -3.1919194835975864
#>     Node 10    0.031218535956267446
#>     Node 11    -1.9836251426992089
#>     Node 12    -1.5608185018157066
#>     Node 13    -0.49920536813048316
#>     Node 14    -1.7094034752136964
#>     Node 15    1.9039278804309645
#>     Node 16    -0.2603224706607919
#>     Node 17    -0.4487542802532063
#>     Node 18    1.5177163072631783
#>     Node 19    -1.3341313112218394
#>     Node 20    -1.7431097554291923
#>     Node 21    2.717404728660808
#>     Node 22    -0.9305771130481683
#>     Node 23    -1.3843917516855402
#>     Node 24    1.5657325656286976
#>     Node 25    -3.413906178531036
#>     Node 26    1.15520867353058
#>     Node 27    -1.5270748603000284
#>     Node 28    3.68163057542743
#>     Node 29    -0.9868714099627219
#>     Node 30    0.8138797383584385
#>     Node 31    -1.0384385033032357
#>     Node 32    -0.5262775340785899
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.022998334055608794
#>     Attrib V1    0.3246788791293197
#>     Attrib V10    0.5866046885798804
#>     Attrib V11    0.16049194926514807
#>     Attrib V12    0.7182194495479888
#>     Attrib V13    0.0029827856691783615
#>     Attrib V14    -0.8120470622043916
#>     Attrib V15    -0.09915268957761156
#>     Attrib V16    -0.6378630412970471
#>     Attrib V17    0.17971995383988748
#>     Attrib V18    0.08762469945932379
#>     Attrib V19    0.11970093028046645
#>     Attrib V2    -0.00431778646683529
#>     Attrib V20    0.694107907114256
#>     Attrib V21    0.7012583698483801
#>     Attrib V22    0.7805236201881842
#>     Attrib V23    1.3985041257259232
#>     Attrib V24    0.880485462713794
#>     Attrib V25    -0.31243672167625924
#>     Attrib V26    -1.1082204034119483
#>     Attrib V27    -0.12099366262585977
#>     Attrib V28    0.6261151593848514
#>     Attrib V29    -0.4449834464635193
#>     Attrib V3    0.07646559661833212
#>     Attrib V30    0.920624221972281
#>     Attrib V31    -1.4860061118112278
#>     Attrib V32    -0.40109787159731924
#>     Attrib V33    0.32604087244581503
#>     Attrib V34    0.17584121334211295
#>     Attrib V35    0.5159694275575581
#>     Attrib V36    -0.5277612732409652
#>     Attrib V37    -0.6369079626153336
#>     Attrib V38    0.9316592606960867
#>     Attrib V39    0.5675542660907075
#>     Attrib V4    0.6963170827844855
#>     Attrib V40    -0.5736493493533176
#>     Attrib V41    0.5255267050833299
#>     Attrib V42    0.17289751372169104
#>     Attrib V43    0.4207639264226886
#>     Attrib V44    1.0094166252174115
#>     Attrib V45    1.1522878074454346
#>     Attrib V46    -0.10537640944312629
#>     Attrib V47    -0.20290183614701884
#>     Attrib V48    0.5258934388785688
#>     Attrib V49    0.598122612125559
#>     Attrib V5    0.059883439978402286
#>     Attrib V50    -1.4081287820409492
#>     Attrib V51    0.060380690993937954
#>     Attrib V52    -0.6032214585036589
#>     Attrib V53    -0.24247539847802113
#>     Attrib V54    0.559320435936492
#>     Attrib V55    -0.8103782809920846
#>     Attrib V56    0.1599384643095003
#>     Attrib V57    -0.4926788899889201
#>     Attrib V58    -0.5332455839302179
#>     Attrib V59    0.6103806570227837
#>     Attrib V6    -0.011095674815402206
#>     Attrib V60    0.5567532865064817
#>     Attrib V7    0.027730051040630154
#>     Attrib V8    -0.3101847853555124
#>     Attrib V9    0.7357898168235331
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.03201390883107233
#>     Attrib V1    0.21862769751870287
#>     Attrib V10    0.11313315375397874
#>     Attrib V11    -0.20355270954896232
#>     Attrib V12    0.08746751414590218
#>     Attrib V13    0.06324703668642981
#>     Attrib V14    0.09627239788304742
#>     Attrib V15    0.44958531447030875
#>     Attrib V16    -0.14601354159867158
#>     Attrib V17    0.1778062330081694
#>     Attrib V18    0.1706573638404234
#>     Attrib V19    0.35458452222738623
#>     Attrib V2    -0.021585153750231734
#>     Attrib V20    0.6948168655212044
#>     Attrib V21    0.5174607978903304
#>     Attrib V22    0.2561528886220749
#>     Attrib V23    0.3493154953897758
#>     Attrib V24    0.08615023332948525
#>     Attrib V25    -0.48613954097169226
#>     Attrib V26    -0.8874994056630765
#>     Attrib V27    -0.43473838549253513
#>     Attrib V28    -0.017411668011028208
#>     Attrib V29    -0.364836372946823
#>     Attrib V3    0.15256231391994493
#>     Attrib V30    0.3958522179927798
#>     Attrib V31    -0.8826582223080975
#>     Attrib V32    -0.40982600046747114
#>     Attrib V33    0.09110119254242707
#>     Attrib V34    -0.17481410792215063
#>     Attrib V35    0.05919475395378237
#>     Attrib V36    -0.49279797582332513
#>     Attrib V37    -0.5004843648902224
#>     Attrib V38    0.3952396219091644
#>     Attrib V39    0.23370124314773044
#>     Attrib V4    0.5393133855606931
#>     Attrib V40    -0.3257167154223665
#>     Attrib V41    0.04359873723419755
#>     Attrib V42    0.16786290873261855
#>     Attrib V43    0.1833748452277947
#>     Attrib V44    0.40864004254939545
#>     Attrib V45    0.3566231429867085
#>     Attrib V46    -0.3254819484764096
#>     Attrib V47    -0.34878025406799507
#>     Attrib V48    0.006133693403779621
#>     Attrib V49    0.0843613473017304
#>     Attrib V5    0.006682534884576444
#>     Attrib V50    -0.5000200940390263
#>     Attrib V51    0.09826763342262476
#>     Attrib V52    -0.19251351626025742
#>     Attrib V53    0.1944566418311144
#>     Attrib V54    0.7602519288578374
#>     Attrib V55    -0.18950794150980305
#>     Attrib V56    0.32508670494165537
#>     Attrib V57    -0.12258819604175702
#>     Attrib V58    0.2855743535666156
#>     Attrib V59    0.7525736171493499
#>     Attrib V6    -0.11203257630493507
#>     Attrib V60    0.5780931753164771
#>     Attrib V7    0.16841176486266526
#>     Attrib V8    -0.083019138946143
#>     Attrib V9    0.1386199863900574
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.03049823778567833
#>     Attrib V1    0.14717537773764305
#>     Attrib V10    0.1571018708039324
#>     Attrib V11    -0.05547165695667595
#>     Attrib V12    0.18515744621452898
#>     Attrib V13    0.08490567466893838
#>     Attrib V14    -0.009982001657281359
#>     Attrib V15    0.27105314660357316
#>     Attrib V16    -0.16647048593218355
#>     Attrib V17    0.14706682389912334
#>     Attrib V18    0.13346113996985726
#>     Attrib V19    0.22483911020783112
#>     Attrib V2    -0.04571569757779644
#>     Attrib V20    0.5042204456148438
#>     Attrib V21    0.4325776660346122
#>     Attrib V22    0.16901232419793377
#>     Attrib V23    0.3323415075860107
#>     Attrib V24    0.10572947298415035
#>     Attrib V25    -0.3835782659061055
#>     Attrib V26    -0.681002604707183
#>     Attrib V27    -0.2873881649734663
#>     Attrib V28    0.15972693328936624
#>     Attrib V29    -0.20073500367176692
#>     Attrib V3    0.12426063518437465
#>     Attrib V30    0.2846806932368169
#>     Attrib V31    -0.7227354009955178
#>     Attrib V32    -0.2502150792469539
#>     Attrib V33    0.14781709871251983
#>     Attrib V34    -0.018170312829645888
#>     Attrib V35    0.14707063996337177
#>     Attrib V36    -0.3712028609786215
#>     Attrib V37    -0.33760779465845914
#>     Attrib V38    0.34680042703526937
#>     Attrib V39    0.2194674891033778
#>     Attrib V4    0.4079638405435344
#>     Attrib V40    -0.2903938135703609
#>     Attrib V41    0.06265674718211518
#>     Attrib V42    0.10797202495666033
#>     Attrib V43    0.10919746073984428
#>     Attrib V44    0.33245048654102693
#>     Attrib V45    0.4119952779377232
#>     Attrib V46    -0.21684750025472943
#>     Attrib V47    -0.2836522048829249
#>     Attrib V48    0.10020107038990064
#>     Attrib V49    0.18732986551961653
#>     Attrib V5    0.039254822625072384
#>     Attrib V50    -0.4708228026070411
#>     Attrib V51    0.11853472848489417
#>     Attrib V52    -0.17179893605265928
#>     Attrib V53    0.1881993983683645
#>     Attrib V54    0.4020452577892188
#>     Attrib V55    -0.2758381880515081
#>     Attrib V56    0.2063036268462137
#>     Attrib V57    -0.13104302447991334
#>     Attrib V58    0.12116686859450106
#>     Attrib V59    0.4976272903710234
#>     Attrib V6    -0.10229687138687234
#>     Attrib V60    0.4314534877881815
#>     Attrib V7    0.08828107229405496
#>     Attrib V8    -0.2201474861221436
#>     Attrib V9    0.21928019092747364
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.2988805924959225
#>     Attrib V1    -0.25802454070486847
#>     Attrib V10    -0.5983939173170683
#>     Attrib V11    -0.33163457777207983
#>     Attrib V12    -1.017234310153296
#>     Attrib V13    -0.36686839740448424
#>     Attrib V14    0.5527647241326059
#>     Attrib V15    -0.036016518173685425
#>     Attrib V16    0.6247005795306204
#>     Attrib V17    0.1740942777106091
#>     Attrib V18    0.11612434827579222
#>     Attrib V19    -0.028277605356672973
#>     Attrib V2    -0.010888782989468358
#>     Attrib V20    -0.29147469535793474
#>     Attrib V21    -0.05865133338457636
#>     Attrib V22    -0.12897422011949125
#>     Attrib V23    -0.7447772363402692
#>     Attrib V24    -0.6793628228828751
#>     Attrib V25    0.37835112864269027
#>     Attrib V26    0.9302121422665361
#>     Attrib V27    -6.373042277662905E-4
#>     Attrib V28    -0.6540930264927238
#>     Attrib V29    0.4358892714543235
#>     Attrib V3    -0.013813433120448325
#>     Attrib V30    -0.6195291424440775
#>     Attrib V31    0.8055209563281863
#>     Attrib V32    -0.031157845275261314
#>     Attrib V33    -0.32572746320713003
#>     Attrib V34    0.001933105129345107
#>     Attrib V35    -0.1963373359882189
#>     Attrib V36    1.1269032672262838
#>     Attrib V37    0.8715350951789226
#>     Attrib V38    -0.330339831865772
#>     Attrib V39    -0.3153440542452512
#>     Attrib V4    -0.5425473804688828
#>     Attrib V40    0.5628545245154657
#>     Attrib V41    -0.5988044135916784
#>     Attrib V42    -0.052395622013619254
#>     Attrib V43    -0.13712784084478574
#>     Attrib V44    -0.2756123130817719
#>     Attrib V45    -0.5725523571188739
#>     Attrib V46    0.12950447830998665
#>     Attrib V47    0.17532096661199104
#>     Attrib V48    -0.33862869690104724
#>     Attrib V49    -0.35904059337677646
#>     Attrib V5    0.03441825311770226
#>     Attrib V50    1.4706839692841545
#>     Attrib V51    -0.4211960626123444
#>     Attrib V52    0.19105987711819253
#>     Attrib V53    -0.3042934967652505
#>     Attrib V54    -0.3399594959490186
#>     Attrib V55    0.8880636743545237
#>     Attrib V56    -0.018693994520045325
#>     Attrib V57    0.572742452872466
#>     Attrib V58    0.08138585396987452
#>     Attrib V59    -0.3232493161490611
#>     Attrib V6    0.03600167238579457
#>     Attrib V60    -0.49903382447886313
#>     Attrib V7    0.18927717756923193
#>     Attrib V8    0.5293234869515309
#>     Attrib V9    -0.6587273170665812
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.02685085841117266
#>     Attrib V1    0.1801855259232107
#>     Attrib V10    0.09474558430438663
#>     Attrib V11    -0.029037585546239385
#>     Attrib V12    0.18993184472459596
#>     Attrib V13    0.029972166750928644
#>     Attrib V14    -0.05643074835872255
#>     Attrib V15    0.13486816849991407
#>     Attrib V16    -0.06463653221128825
#>     Attrib V17    0.07280733989468728
#>     Attrib V18    0.13736892599421496
#>     Attrib V19    0.14513054895627234
#>     Attrib V2    -0.007079390279949972
#>     Attrib V20    0.3383100511874754
#>     Attrib V21    0.2724523274492388
#>     Attrib V22    0.08170261686889109
#>     Attrib V23    0.20085473462900943
#>     Attrib V24    0.1374675084931149
#>     Attrib V25    -0.1646365260037544
#>     Attrib V26    -0.455031188811953
#>     Attrib V27    -0.17378039220265035
#>     Attrib V28    -0.024039725819914266
#>     Attrib V29    -0.3075110688543549
#>     Attrib V3    0.08928977331126717
#>     Attrib V30    0.10262194723659947
#>     Attrib V31    -0.4899698126289517
#>     Attrib V32    -0.0809590469948139
#>     Attrib V33    0.14839815598751255
#>     Attrib V34    0.010352534045540119
#>     Attrib V35    0.14260080480102047
#>     Attrib V36    -0.29483955533818634
#>     Attrib V37    -0.2586074340649532
#>     Attrib V38    0.20167155923029728
#>     Attrib V39    0.09492124232306028
#>     Attrib V4    0.33295118671431523
#>     Attrib V40    -0.23868733258641295
#>     Attrib V41    0.10376444515900118
#>     Attrib V42    0.08117283025842106
#>     Attrib V43    0.08791575534791428
#>     Attrib V44    0.1710130654984168
#>     Attrib V45    0.21627445013243654
#>     Attrib V46    -0.1415199000442398
#>     Attrib V47    -0.20536290981294217
#>     Attrib V48    0.019131673214763435
#>     Attrib V49    0.06701151521755419
#>     Attrib V5    0.01026179844235059
#>     Attrib V50    -0.2859352634901516
#>     Attrib V51    0.04056050183113539
#>     Attrib V52    -0.15373119915981054
#>     Attrib V53    0.17139561405033982
#>     Attrib V54    0.3130999446704872
#>     Attrib V55    -0.18719063948112857
#>     Attrib V56    0.187424355920121
#>     Attrib V57    -0.03554270415955409
#>     Attrib V58    0.1633044760960892
#>     Attrib V59    0.42674368848064675
#>     Attrib V6    -0.010024234673517823
#>     Attrib V60    0.39093468692399863
#>     Attrib V7    0.07695789825846087
#>     Attrib V8    -0.09746463067303579
#>     Attrib V9    0.19324616005968442
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5879040268715748
#>     Attrib V1    0.7878785189193642
#>     Attrib V10    1.243398577555196
#>     Attrib V11    1.2149010704786856
#>     Attrib V12    1.7036070178455331
#>     Attrib V13    0.8326620868136063
#>     Attrib V14    -0.2508032006874089
#>     Attrib V15    -0.027864056773493726
#>     Attrib V16    -0.5227490260412659
#>     Attrib V17    -0.4364549366436182
#>     Attrib V18    -0.6325733172280104
#>     Attrib V19    -0.5444525599129109
#>     Attrib V2    0.9453537514458313
#>     Attrib V20    -0.20366205276589744
#>     Attrib V21    0.5551024124458023
#>     Attrib V22    0.5312812858911662
#>     Attrib V23    0.4532348340565908
#>     Attrib V24    0.5146339898584731
#>     Attrib V25    0.17413586211493234
#>     Attrib V26    0.3864807394672215
#>     Attrib V27    1.2060306850926472
#>     Attrib V28    2.0428612195744535
#>     Attrib V29    0.8302096385409173
#>     Attrib V3    0.2480074540201595
#>     Attrib V30    0.46103803775016977
#>     Attrib V31    -0.48360072040862995
#>     Attrib V32    0.27200291156557926
#>     Attrib V33    -0.38529712659408544
#>     Attrib V34    -0.5950843339412348
#>     Attrib V35    -0.12386134414966402
#>     Attrib V36    -0.7633870795620135
#>     Attrib V37    0.17816983774068537
#>     Attrib V38    0.39567171347155844
#>     Attrib V39    0.9340393629859989
#>     Attrib V4    0.1178583198000704
#>     Attrib V40    -0.18271047122633058
#>     Attrib V41    0.822927542325118
#>     Attrib V42    -0.4162050493617258
#>     Attrib V43    -0.4475521418619997
#>     Attrib V44    0.06898872168059342
#>     Attrib V45    0.8121413126920018
#>     Attrib V46    0.9692594091562545
#>     Attrib V47    0.4695342955793008
#>     Attrib V48    0.5401088002081167
#>     Attrib V49    1.0700212950884511
#>     Attrib V5    0.44508027914739695
#>     Attrib V50    -1.010085010965468
#>     Attrib V51    0.8615355351759996
#>     Attrib V52    0.5889044791363149
#>     Attrib V53    0.659474821083244
#>     Attrib V54    -0.37059111020036783
#>     Attrib V55    -0.6537818106156257
#>     Attrib V56    -0.6914642067679612
#>     Attrib V57    -0.055381302064341
#>     Attrib V58    -0.5211020863900818
#>     Attrib V59    -0.2580289222546575
#>     Attrib V6    0.343521910600471
#>     Attrib V60    0.4103366975019133
#>     Attrib V7    -0.3356441147210412
#>     Attrib V8    -0.8142990913731254
#>     Attrib V9    1.0798491036317617
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.1179840237697236
#>     Attrib V1    0.1413940182773924
#>     Attrib V10    0.2994375290792233
#>     Attrib V11    0.18686992864511656
#>     Attrib V12    0.3521371213465444
#>     Attrib V13    0.12671357066815503
#>     Attrib V14    -0.2645579126844665
#>     Attrib V15    -0.03979291521831238
#>     Attrib V16    -0.201540805288483
#>     Attrib V17    -0.0581135635637977
#>     Attrib V18    -0.10826419929241443
#>     Attrib V19    -0.037402344186477025
#>     Attrib V2    0.045467835846822346
#>     Attrib V20    0.04895459261873878
#>     Attrib V21    0.06497931334003097
#>     Attrib V22    0.0030262049900054615
#>     Attrib V23    0.21863753304933825
#>     Attrib V24    0.20544525918893952
#>     Attrib V25    -0.06949116385099086
#>     Attrib V26    -0.22395287374244213
#>     Attrib V27    0.13581916666976007
#>     Attrib V28    0.42141355817349696
#>     Attrib V29    -0.07673613781101782
#>     Attrib V3    0.03865945598775493
#>     Attrib V30    0.17664798393116043
#>     Attrib V31    -0.39288969015199016
#>     Attrib V32    0.06278401273144799
#>     Attrib V33    0.18156690150709687
#>     Attrib V34    0.053427537369566666
#>     Attrib V35    0.165681201369185
#>     Attrib V36    -0.2436702364245701
#>     Attrib V37    -0.146866759373209
#>     Attrib V38    0.22081993791530358
#>     Attrib V39    0.12689867945185268
#>     Attrib V4    0.25954777723470585
#>     Attrib V40    -0.24928376081183276
#>     Attrib V41    0.16264251571649666
#>     Attrib V42    -0.11994367481481549
#>     Attrib V43    -0.025300750401261337
#>     Attrib V44    0.14586458373890854
#>     Attrib V45    0.2694681537789961
#>     Attrib V46    0.05153982585368962
#>     Attrib V47    -0.005430420801589286
#>     Attrib V48    0.22174404115767196
#>     Attrib V49    0.23113825273263935
#>     Attrib V5    0.034879817958303645
#>     Attrib V50    -0.44501538734577867
#>     Attrib V51    0.07499153330895399
#>     Attrib V52    -0.08436967296871853
#>     Attrib V53    0.12836535389404
#>     Attrib V54    0.09037512262594428
#>     Attrib V55    -0.3403099097084133
#>     Attrib V56    -0.028905989602842665
#>     Attrib V57    -0.028938125975751513
#>     Attrib V58    -0.0417656976733412
#>     Attrib V59    0.18424696188177628
#>     Attrib V6    -0.04134061518440613
#>     Attrib V60    0.31558864521129765
#>     Attrib V7    -0.04119643628641356
#>     Attrib V8    -0.29712299278975546
#>     Attrib V9    0.26475090120055106
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.34630100257922497
#>     Attrib V1    0.6181974976667689
#>     Attrib V10    1.3882576949866712
#>     Attrib V11    1.1268350231718027
#>     Attrib V12    1.6351280607530332
#>     Attrib V13    0.6168038054144602
#>     Attrib V14    -0.9257227049804366
#>     Attrib V15    -0.5201588627171208
#>     Attrib V16    -0.6090988360332626
#>     Attrib V17    -0.36742935947018673
#>     Attrib V18    -0.5665010666718688
#>     Attrib V19    -0.6191360360286458
#>     Attrib V2    0.5706549061450963
#>     Attrib V20    -0.5242306859592603
#>     Attrib V21    0.10233813688360337
#>     Attrib V22    0.3051251526106688
#>     Attrib V23    0.566626933015438
#>     Attrib V24    0.8213723816465379
#>     Attrib V25    0.5342075379219992
#>     Attrib V26    0.3246804466307515
#>     Attrib V27    0.816340464429709
#>     Attrib V28    1.253214069662294
#>     Attrib V29    -0.3691506686479508
#>     Attrib V3    0.0802797523360219
#>     Attrib V30    -0.21629607540024462
#>     Attrib V31    -0.3660175490070942
#>     Attrib V32    0.7239130645867536
#>     Attrib V33    0.3006551536537422
#>     Attrib V34    0.3157941816847396
#>     Attrib V35    0.5081034519279584
#>     Attrib V36    -0.6124705654757882
#>     Attrib V37    -0.07405849943735199
#>     Attrib V38    0.017531135040726495
#>     Attrib V39    0.5406055962759231
#>     Attrib V4    0.07529183318310749
#>     Attrib V40    -0.1599830003104594
#>     Attrib V41    0.9879548479263084
#>     Attrib V42    -0.47605752138482776
#>     Attrib V43    -0.3555619083063506
#>     Attrib V44    -0.17683545464718362
#>     Attrib V45    0.5280381650752226
#>     Attrib V46    0.8805622768881182
#>     Attrib V47    0.6104335392073162
#>     Attrib V48    0.7908588368297602
#>     Attrib V49    0.9566176689294356
#>     Attrib V5    0.2777484422839441
#>     Attrib V50    -0.9534256077689229
#>     Attrib V51    0.7611889279855636
#>     Attrib V52    0.23079235448569108
#>     Attrib V53    0.3914396421033095
#>     Attrib V54    -0.6001354005729214
#>     Attrib V55    -0.6469697874543943
#>     Attrib V56    -0.4773323280831401
#>     Attrib V57    -0.06758702296202906
#>     Attrib V58    -0.447027418785676
#>     Attrib V59    -0.30945961285082313
#>     Attrib V6    0.2639975344736463
#>     Attrib V60    0.46000857338065304
#>     Attrib V7    -0.3721118865230773
#>     Attrib V8    -0.8292116419783312
#>     Attrib V9    1.1383993807239143
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.18114094071341844
#>     Attrib V1    0.10734387725822235
#>     Attrib V10    0.035043322368408326
#>     Attrib V11    0.02773109190941878
#>     Attrib V12    0.06598783516835205
#>     Attrib V13    0.057190407443852835
#>     Attrib V14    0.06449395208437461
#>     Attrib V15    -0.010977002937864275
#>     Attrib V16    0.05234628701306216
#>     Attrib V17    0.010030283918068853
#>     Attrib V18    0.05367230073503481
#>     Attrib V19    0.016727781744487902
#>     Attrib V2    0.0866966752974869
#>     Attrib V20    -0.011049031864602982
#>     Attrib V21    -0.002653868278015363
#>     Attrib V22    -0.03234477262126281
#>     Attrib V23    -0.009827792131352283
#>     Attrib V24    -0.07605666847940515
#>     Attrib V25    -0.04613058685357258
#>     Attrib V26    -0.03656572566038104
#>     Attrib V27    -0.0661504407865806
#>     Attrib V28    -0.06241266845414526
#>     Attrib V29    -0.053762223931065306
#>     Attrib V3    0.07585135967606114
#>     Attrib V30    0.02340336091977297
#>     Attrib V31    0.045528500768771504
#>     Attrib V32    -0.018748590565897606
#>     Attrib V33    0.08355555125983988
#>     Attrib V34    0.1072854106605123
#>     Attrib V35    0.1022048599317662
#>     Attrib V36    0.09543101925802226
#>     Attrib V37    0.082041895440648
#>     Attrib V38    0.06931417087667657
#>     Attrib V39    0.038411493806972764
#>     Attrib V4    0.07257341827375932
#>     Attrib V40    0.1049819871778234
#>     Attrib V41    0.09718829597533377
#>     Attrib V42    0.051965835894514784
#>     Attrib V43    0.054996385286166
#>     Attrib V44    0.08854576963452813
#>     Attrib V45    0.07624451237137202
#>     Attrib V46    0.019167056337555645
#>     Attrib V47    0.03227344198780988
#>     Attrib V48    0.01895757331713298
#>     Attrib V49    0.018804917466166412
#>     Attrib V5    0.10146994466571706
#>     Attrib V50    0.12256497838440876
#>     Attrib V51    -0.00846449175076464
#>     Attrib V52    0.010212120916098922
#>     Attrib V53    0.09453421039369651
#>     Attrib V54    0.04433979286108589
#>     Attrib V55    0.07510509276270938
#>     Attrib V56    0.06023874217808748
#>     Attrib V57    0.06882011305354935
#>     Attrib V58    0.04903449562023695
#>     Attrib V59    0.045293192093417166
#>     Attrib V6    0.13327229272141153
#>     Attrib V60    0.05940213044836788
#>     Attrib V7    0.06683115650348899
#>     Attrib V8    0.06886554752275818
#>     Attrib V9    0.02774761915166929
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.12189377081933797
#>     Attrib V1    0.38663605127587536
#>     Attrib V10    0.9447633045444727
#>     Attrib V11    0.7202843761706215
#>     Attrib V12    1.0805817195727705
#>     Attrib V13    0.26964260759481123
#>     Attrib V14    -0.7517696207392471
#>     Attrib V15    -0.39010514282056186
#>     Attrib V16    -0.5595853379588039
#>     Attrib V17    -0.2757345111650774
#>     Attrib V18    -0.4126814834335883
#>     Attrib V19    -0.45221919288162027
#>     Attrib V2    0.28561934720695525
#>     Attrib V20    -0.2882038411647697
#>     Attrib V21    -0.08480228592535495
#>     Attrib V22    0.11361688435942396
#>     Attrib V23    0.5102377885644028
#>     Attrib V24    0.59326972525645
#>     Attrib V25    0.3173075906125979
#>     Attrib V26    -0.007296267690465406
#>     Attrib V27    0.5704871024031678
#>     Attrib V28    0.9871872290045313
#>     Attrib V29    -0.24608451856289176
#>     Attrib V3    0.05349254822622695
#>     Attrib V30    0.11694755101699884
#>     Attrib V31    -0.37927385672564146
#>     Attrib V32    0.5056538917310603
#>     Attrib V33    0.4080949747682192
#>     Attrib V34    0.34824611948116746
#>     Attrib V35    0.4602123638159094
#>     Attrib V36    -0.5115075436835119
#>     Attrib V37    -0.22623423874095414
#>     Attrib V38    0.0831511116356118
#>     Attrib V39    0.21121830627772323
#>     Attrib V4    0.19810919273689168
#>     Attrib V40    -0.31363019417570376
#>     Attrib V41    0.6106972230838705
#>     Attrib V42    -0.18713831449120172
#>     Attrib V43    -0.21617274979657755
#>     Attrib V44    0.028107847045984628
#>     Attrib V45    0.5520033321084296
#>     Attrib V46    0.4876194157634733
#>     Attrib V47    0.3960769913061467
#>     Attrib V48    0.6267986386169773
#>     Attrib V49    0.6115011650731567
#>     Attrib V5    0.29046193710422596
#>     Attrib V50    -0.7359895763105069
#>     Attrib V51    0.4267913843516325
#>     Attrib V52    0.03662609341213996
#>     Attrib V53    0.09143739544085758
#>     Attrib V54    -0.240078997697115
#>     Attrib V55    -0.5176592986627961
#>     Attrib V56    -0.275771109775258
#>     Attrib V57    -0.02873210207762925
#>     Attrib V58    -0.27379612578335993
#>     Attrib V59    -0.16633996748252927
#>     Attrib V6    0.1848987032186313
#>     Attrib V60    0.3804782816477106
#>     Attrib V7    -0.2368250640721405
#>     Attrib V8    -0.5742514344733897
#>     Attrib V9    0.8019383345906316
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.08884097167257449
#>     Attrib V1    0.1487009818805813
#>     Attrib V10    0.23365432106798964
#>     Attrib V11    0.08702019836105465
#>     Attrib V12    0.3196767269389448
#>     Attrib V13    0.11219645878123952
#>     Attrib V14    -0.13644347690280145
#>     Attrib V15    0.16294500623601557
#>     Attrib V16    -0.2586868517458946
#>     Attrib V17    0.15382722959390457
#>     Attrib V18    0.179750417977653
#>     Attrib V19    0.3042081004470687
#>     Attrib V2    -0.04847603749811613
#>     Attrib V20    0.5497940695552698
#>     Attrib V21    0.4278264607957205
#>     Attrib V22    0.30606262279132956
#>     Attrib V23    0.5331333694868061
#>     Attrib V24    0.23112149246687114
#>     Attrib V25    -0.3629881243413793
#>     Attrib V26    -0.7689061081132929
#>     Attrib V27    -0.15681700870662021
#>     Attrib V28    0.249451745732994
#>     Attrib V29    -0.2689469005689023
#>     Attrib V3    0.02238698352762062
#>     Attrib V30    0.381654624325662
#>     Attrib V31    -1.009089895217467
#>     Attrib V32    -0.3346579602009752
#>     Attrib V33    0.24444977738590754
#>     Attrib V34    0.0489988141170876
#>     Attrib V35    0.2944526622684678
#>     Attrib V36    -0.35720660810413823
#>     Attrib V37    -0.38340564791401394
#>     Attrib V38    0.5489659538511895
#>     Attrib V39    0.2423030853197481
#>     Attrib V4    0.5424965689638721
#>     Attrib V40    -0.37763245139586493
#>     Attrib V41    0.10663298822759172
#>     Attrib V42    0.04081250086843695
#>     Attrib V43    0.23505831772849167
#>     Attrib V44    0.4428156637997563
#>     Attrib V45    0.5606469884582391
#>     Attrib V46    -0.15977619279142438
#>     Attrib V47    -0.33042190974358776
#>     Attrib V48    0.15664533577040068
#>     Attrib V49    0.19155387363528956
#>     Attrib V5    -0.039414667021511744
#>     Attrib V50    -0.7456926169561479
#>     Attrib V51    0.073199513833978
#>     Attrib V52    -0.24894949510922856
#>     Attrib V53    0.1320851924070103
#>     Attrib V54    0.49397719239726323
#>     Attrib V55    -0.44008964460785627
#>     Attrib V56    0.2028107064928952
#>     Attrib V57    -0.22763668101344642
#>     Attrib V58    0.10713220337793063
#>     Attrib V59    0.5844693903104761
#>     Attrib V6    -0.14348135339629986
#>     Attrib V60    0.5380116223050663
#>     Attrib V7    0.10904604667397932
#>     Attrib V8    -0.24975258958959726
#>     Attrib V9    0.31651835730984124
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.11164765412171279
#>     Attrib V1    0.12434542835186013
#>     Attrib V10    0.09295956836031491
#>     Attrib V11    0.022002632968691538
#>     Attrib V12    0.14600054303842153
#>     Attrib V13    0.12604064382161068
#>     Attrib V14    -0.023641289265884734
#>     Attrib V15    0.06690045088641194
#>     Attrib V16    -0.10479878693480431
#>     Attrib V17    0.07734509386507131
#>     Attrib V18    0.05647298783577609
#>     Attrib V19    0.06436562958750193
#>     Attrib V2    0.012753638780230676
#>     Attrib V20    0.21170419649553268
#>     Attrib V21    0.14782164460064975
#>     Attrib V22    0.006871091249342669
#>     Attrib V23    0.13181464799939432
#>     Attrib V24    0.05852874268552656
#>     Attrib V25    -0.08485988963309163
#>     Attrib V26    -0.31028781742531175
#>     Attrib V27    -0.045402879515036416
#>     Attrib V28    0.04767726467303722
#>     Attrib V29    -0.15174363435067648
#>     Attrib V3    0.137994058040859
#>     Attrib V30    0.04358562743786167
#>     Attrib V31    -0.3674355337346719
#>     Attrib V32    -0.05533920825028508
#>     Attrib V33    0.06328938913062596
#>     Attrib V34    0.07307049370821732
#>     Attrib V35    0.11294441272516981
#>     Attrib V36    -0.14458724079772542
#>     Attrib V37    -0.08537844749456971
#>     Attrib V38    0.17850013056611724
#>     Attrib V39    0.15263494238549438
#>     Attrib V4    0.24460539629775466
#>     Attrib V40    -0.10907002607054583
#>     Attrib V41    0.04939154152877268
#>     Attrib V42    0.00546782576092357
#>     Attrib V43    0.0011028535539337918
#>     Attrib V44    0.09790480216716001
#>     Attrib V45    0.11054200612748784
#>     Attrib V46    -0.042009287357560106
#>     Attrib V47    -0.06640126557066894
#>     Attrib V48    0.039899490342686875
#>     Attrib V49    0.11022101158794538
#>     Attrib V5    0.07642439677506119
#>     Attrib V50    -0.1924204041486544
#>     Attrib V51    0.015183591192737886
#>     Attrib V52    -0.08318192316890462
#>     Attrib V53    0.12272610578938269
#>     Attrib V54    0.18937512842739146
#>     Attrib V55    -0.0848776808364987
#>     Attrib V56    0.1235681198152681
#>     Attrib V57    0.028978443825489746
#>     Attrib V58    0.10626258942722205
#>     Attrib V59    0.30028522443779315
#>     Attrib V6    0.022591632849222897
#>     Attrib V60    0.32872415545308403
#>     Attrib V7    0.09272466020958768
#>     Attrib V8    -0.13164553778188948
#>     Attrib V9    0.11895622300041786
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.234831978532796
#>     Attrib V1    0.4171652251481861
#>     Attrib V10    0.8415691111423095
#>     Attrib V11    0.7675205019242792
#>     Attrib V12    0.9888860554920185
#>     Attrib V13    0.34408412568367325
#>     Attrib V14    -0.5169987982062091
#>     Attrib V15    -0.1888658475937966
#>     Attrib V16    -0.5087173131259439
#>     Attrib V17    -0.29536893029817823
#>     Attrib V18    -0.35851751020257056
#>     Attrib V19    -0.4290384568834948
#>     Attrib V2    0.22382026451412992
#>     Attrib V20    -0.34698783750058065
#>     Attrib V21    -0.1854098239913077
#>     Attrib V22    -0.11668025352811118
#>     Attrib V23    0.13219348370707346
#>     Attrib V24    0.20524132053018027
#>     Attrib V25    0.12615879102094543
#>     Attrib V26    0.06533043171115158
#>     Attrib V27    0.5016144943712277
#>     Attrib V28    0.7271686845360804
#>     Attrib V29    -0.35488563739103857
#>     Attrib V3    0.01511217326134874
#>     Attrib V30    0.014945072481764899
#>     Attrib V31    -0.21112222395733887
#>     Attrib V32    0.4576024116026974
#>     Attrib V33    0.3266508267023666
#>     Attrib V34    0.2102166926625357
#>     Attrib V35    0.41082457363033303
#>     Attrib V36    -0.49466781459085113
#>     Attrib V37    -0.1456306799165457
#>     Attrib V38    -0.02719630311761331
#>     Attrib V39    0.16780619208076533
#>     Attrib V4    0.14604786020392616
#>     Attrib V40    -0.309483967033706
#>     Attrib V41    0.3812710877414954
#>     Attrib V42    -0.26322148687262004
#>     Attrib V43    -0.22140700508644948
#>     Attrib V44    -0.051894346848824664
#>     Attrib V45    0.3160565133201444
#>     Attrib V46    0.39748615940763443
#>     Attrib V47    0.2685141044970772
#>     Attrib V48    0.5302693935469791
#>     Attrib V49    0.5513626605287218
#>     Attrib V5    0.09552240711845021
#>     Attrib V50    -0.6211088406659068
#>     Attrib V51    0.385167739285995
#>     Attrib V52    0.10881117706705043
#>     Attrib V53    0.1581400999651488
#>     Attrib V54    -0.2573050093475753
#>     Attrib V55    -0.4506699211990679
#>     Attrib V56    -0.19499827329617003
#>     Attrib V57    -0.09016137144219348
#>     Attrib V58    -0.011863519751518411
#>     Attrib V59    -0.07732050101151172
#>     Attrib V6    0.044663089673428025
#>     Attrib V60    0.4254353574137821
#>     Attrib V7    -0.17938309099449554
#>     Attrib V8    -0.6035971113350959
#>     Attrib V9    0.6127916861266386
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.2029605699904964
#>     Attrib V1    -0.24525163516965698
#>     Attrib V10    -0.49315653277507643
#>     Attrib V11    -0.2278424832450893
#>     Attrib V12    -0.6982291345076914
#>     Attrib V13    -0.26965373729580455
#>     Attrib V14    0.3975796402873304
#>     Attrib V15    -0.02798851573014374
#>     Attrib V16    0.5207978250292239
#>     Attrib V17    0.13408890475218596
#>     Attrib V18    0.032540219668636974
#>     Attrib V19    -0.039976891026037464
#>     Attrib V2    -0.06539395396558144
#>     Attrib V20    -0.22968895120799185
#>     Attrib V21    -0.12633287629655424
#>     Attrib V22    -0.13559620470260605
#>     Attrib V23    -0.716335233613356
#>     Attrib V24    -0.594106890278614
#>     Attrib V25    0.26560710175626634
#>     Attrib V26    0.8975025440585529
#>     Attrib V27    0.10317403465574884
#>     Attrib V28    -0.37860388648513243
#>     Attrib V29    0.4625315191359337
#>     Attrib V3    -0.013695574379443845
#>     Attrib V30    -0.516113323000632
#>     Attrib V31    0.5353052403629294
#>     Attrib V32    -0.1764634348609437
#>     Attrib V33    -0.33415636784367664
#>     Attrib V34    0.1292360962240528
#>     Attrib V35    -0.050995401241993886
#>     Attrib V36    1.0549388162331703
#>     Attrib V37    0.9937785695139295
#>     Attrib V38    -0.1308076466275062
#>     Attrib V39    -0.17144767656345228
#>     Attrib V4    -0.4464954403661522
#>     Attrib V40    0.4276421270120483
#>     Attrib V41    -0.4910481110003274
#>     Attrib V42    -0.1264870095756757
#>     Attrib V43    -0.16280534822564727
#>     Attrib V44    -0.23462987783264322
#>     Attrib V45    -0.2876337558701014
#>     Attrib V46    0.2718043358506214
#>     Attrib V47    0.21714127766818767
#>     Attrib V48    -0.22657970104838251
#>     Attrib V49    -0.26285732780754667
#>     Attrib V5    0.046347550447695694
#>     Attrib V50    1.1199464488638369
#>     Attrib V51    -0.37143859987539796
#>     Attrib V52    0.08365328534690185
#>     Attrib V53    -0.2901177768319839
#>     Attrib V54    -0.3970948344884993
#>     Attrib V55    0.6662579078370596
#>     Attrib V56    -0.0594527346904583
#>     Attrib V57    0.43060111988446337
#>     Attrib V58    -0.020846687818170527
#>     Attrib V59    -0.386932921347358
#>     Attrib V6    0.023649740105567946
#>     Attrib V60    -0.539772592946235
#>     Attrib V7    0.03654898577292362
#>     Attrib V8    0.381345117090589
#>     Attrib V9    -0.504567057734601
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.15681121162103315
#>     Attrib V1    0.1165930180387032
#>     Attrib V10    0.13171630823112665
#>     Attrib V11    0.06702829595456909
#>     Attrib V12    0.12162418212521497
#>     Attrib V13    0.10355676525716456
#>     Attrib V14    -0.01761044409581797
#>     Attrib V15    0.027562122881771126
#>     Attrib V16    0.017974549398584665
#>     Attrib V17    0.07032714207773173
#>     Attrib V18    0.05340473618331363
#>     Attrib V19    0.019159963415618562
#>     Attrib V2    0.035405093954387665
#>     Attrib V20    0.014999842476042117
#>     Attrib V21    -0.017000249439614458
#>     Attrib V22    -0.0688232294499433
#>     Attrib V23    -0.05700807935341834
#>     Attrib V24    -0.002963043335324156
#>     Attrib V25    -0.040377037015318834
#>     Attrib V26    -0.15473895841977245
#>     Attrib V27    -0.0584204072295128
#>     Attrib V28    0.05187915308737609
#>     Attrib V29    -0.09972370111106707
#>     Attrib V3    0.13153259540683948
#>     Attrib V30    -0.038480641844130775
#>     Attrib V31    -0.14830086963840808
#>     Attrib V32    0.047337586892605844
#>     Attrib V33    0.05865866777013438
#>     Attrib V34    0.0821082032907769
#>     Attrib V35    0.0815979683021541
#>     Attrib V36    -0.054828221590349835
#>     Attrib V37    0.0074908069052584585
#>     Attrib V38    0.10134458487430133
#>     Attrib V39    0.08029478454600505
#>     Attrib V4    0.18770096960337643
#>     Attrib V40    -0.07440163740107517
#>     Attrib V41    0.03260614156485299
#>     Attrib V42    0.03834365322362719
#>     Attrib V43    0.020442083951448226
#>     Attrib V44    0.03460777519612162
#>     Attrib V45    0.10997248982209154
#>     Attrib V46    0.03292404235080203
#>     Attrib V47    2.2212043968876914E-4
#>     Attrib V48    0.06301156522594102
#>     Attrib V49    0.05510763522270242
#>     Attrib V5    0.09129739316798216
#>     Attrib V50    0.021732972570030134
#>     Attrib V51    0.08291891640298465
#>     Attrib V52    0.05441538182115331
#>     Attrib V53    0.14992051696146322
#>     Attrib V54    0.10132803769253414
#>     Attrib V55    0.04883168644017421
#>     Attrib V56    0.12689617578158968
#>     Attrib V57    0.11284938385556854
#>     Attrib V58    0.1798587734281229
#>     Attrib V59    0.1316946703829678
#>     Attrib V6    0.05868082609179463
#>     Attrib V60    0.21355316126627333
#>     Attrib V7    0.05491861469764347
#>     Attrib V8    -0.04827613744660374
#>     Attrib V9    0.14984499738163212
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.03432811067251279
#>     Attrib V1    0.15712209279446107
#>     Attrib V10    0.17435419195567323
#>     Attrib V11    0.07839061496888372
#>     Attrib V12    0.1287734195174684
#>     Attrib V13    0.032240672248164265
#>     Attrib V14    -0.06304995925441924
#>     Attrib V15    0.11724180789986043
#>     Attrib V16    -0.07764717599458788
#>     Attrib V17    0.03795829410086914
#>     Attrib V18    0.023522957894379942
#>     Attrib V19    0.07341827349092932
#>     Attrib V2    0.09729255436064124
#>     Attrib V20    0.14147732130293914
#>     Attrib V21    0.09250037412344025
#>     Attrib V22    0.06335864976410972
#>     Attrib V23    0.06566580267534425
#>     Attrib V24    0.05605069345065452
#>     Attrib V25    -0.1404275715602976
#>     Attrib V26    -0.2707280146894534
#>     Attrib V27    -0.06480759508162846
#>     Attrib V28    0.0631666351713468
#>     Attrib V29    -0.18902849484431844
#>     Attrib V3    0.07763269300128577
#>     Attrib V30    0.05739031231633646
#>     Attrib V31    -0.23145473062260644
#>     Attrib V32    -0.052971344419058236
#>     Attrib V33    0.12642521761783562
#>     Attrib V34    0.020299786228300868
#>     Attrib V35    0.15021470722121155
#>     Attrib V36    -0.15486786211908285
#>     Attrib V37    -0.12021599389073478
#>     Attrib V38    0.19537847608154485
#>     Attrib V39    0.11556306890436728
#>     Attrib V4    0.21752613576910382
#>     Attrib V40    -0.16727753308149523
#>     Attrib V41    0.045605605395764144
#>     Attrib V42    -0.02953106894380063
#>     Attrib V43    0.07534488401896243
#>     Attrib V44    0.127541144105518
#>     Attrib V45    0.17811510088533763
#>     Attrib V46    -0.07883678630966151
#>     Attrib V47    -0.12676169093610892
#>     Attrib V48    0.10048338819977831
#>     Attrib V49    0.05438068284417085
#>     Attrib V5    0.055590721088842415
#>     Attrib V50    -0.14499093633039034
#>     Attrib V51    0.03165861129408377
#>     Attrib V52    -0.056249486464562085
#>     Attrib V53    0.0862492996532434
#>     Attrib V54    0.15090933281019886
#>     Attrib V55    -0.035665581102327586
#>     Attrib V56    0.12927419700676582
#>     Attrib V57    0.07071325335660669
#>     Attrib V58    0.07760995706565108
#>     Attrib V59    0.18406494554167488
#>     Attrib V6    0.015519629158684285
#>     Attrib V60    0.25276095908700535
#>     Attrib V7    0.003663879163386987
#>     Attrib V8    -0.0593067891863701
#>     Attrib V9    0.1448891666603497
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.25946333444191677
#>     Attrib V1    -0.22721848057889296
#>     Attrib V10    -0.3947627057041198
#>     Attrib V11    -0.23383346763628055
#>     Attrib V12    -0.718550650758516
#>     Attrib V13    -0.264338229124682
#>     Attrib V14    0.3673362727203227
#>     Attrib V15    -0.05436071112160585
#>     Attrib V16    0.41803777946517595
#>     Attrib V17    0.058207264183688975
#>     Attrib V18    0.0910239988801445
#>     Attrib V19    -0.08126630824230328
#>     Attrib V2    -0.058290159559082025
#>     Attrib V20    -0.11864919540296068
#>     Attrib V21    0.02523072435610351
#>     Attrib V22    -0.04646957170526781
#>     Attrib V23    -0.4867456681495744
#>     Attrib V24    -0.44270605566877286
#>     Attrib V25    0.26465922557120725
#>     Attrib V26    0.6498318707117196
#>     Attrib V27    0.03638949066548753
#>     Attrib V28    -0.4327065792919387
#>     Attrib V29    0.26013993857194173
#>     Attrib V3    0.029017236239321776
#>     Attrib V30    -0.42153572310044335
#>     Attrib V31    0.4317667216882441
#>     Attrib V32    -0.13286937938190094
#>     Attrib V33    -0.25519518799668883
#>     Attrib V34    0.0159506920099248
#>     Attrib V35    -0.16510047321649324
#>     Attrib V36    0.8816014953206027
#>     Attrib V37    0.6314584639083163
#>     Attrib V38    -0.14976691635361777
#>     Attrib V39    -0.17329837522628252
#>     Attrib V4    -0.34053089310146273
#>     Attrib V40    0.3228098841004592
#>     Attrib V41    -0.4614615359534234
#>     Attrib V42    -0.031333975936036866
#>     Attrib V43    -0.08538968183755538
#>     Attrib V44    -0.11514969584964464
#>     Attrib V45    -0.38776040744279494
#>     Attrib V46    0.02371002490630446
#>     Attrib V47    0.06088207813313726
#>     Attrib V48    -0.30932018981147197
#>     Attrib V49    -0.2712330846700853
#>     Attrib V5    -0.011969297585441813
#>     Attrib V50    0.8628684075215882
#>     Attrib V51    -0.26317180967350945
#>     Attrib V52    0.1346823312197924
#>     Attrib V53    -0.17025410258174167
#>     Attrib V54    -0.227711601664529
#>     Attrib V55    0.5849427452016069
#>     Attrib V56    0.008689955416569898
#>     Attrib V57    0.3450266168313885
#>     Attrib V58    0.05932219910106876
#>     Attrib V59    -0.1906657474520783
#>     Attrib V6    -0.04870054407520012
#>     Attrib V60    -0.3539542372659901
#>     Attrib V7    0.16220151145302192
#>     Attrib V8    0.42635313972177985
#>     Attrib V9    -0.4008694770927765
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.20917527780992745
#>     Attrib V1    0.16210204283750654
#>     Attrib V10    0.3491380117295364
#>     Attrib V11    0.17128390678695274
#>     Attrib V12    0.6328721774279346
#>     Attrib V13    0.19389650877634687
#>     Attrib V14    -0.3131569373975325
#>     Attrib V15    0.07295041424243581
#>     Attrib V16    -0.4249565283385326
#>     Attrib V17    -0.05551891263760514
#>     Attrib V18    -0.062032248960946945
#>     Attrib V19    0.06623413298156712
#>     Attrib V2    0.020354721759560417
#>     Attrib V20    0.25509728549761823
#>     Attrib V21    0.17374778868781898
#>     Attrib V22    0.17085790089769629
#>     Attrib V23    0.4968286275649239
#>     Attrib V24    0.39176905147530383
#>     Attrib V25    -0.15190578261542656
#>     Attrib V26    -0.5307528754836108
#>     Attrib V27    0.07101999189564033
#>     Attrib V28    0.4922889614048029
#>     Attrib V29    -0.2644378417742508
#>     Attrib V3    -0.023115228833642837
#>     Attrib V30    0.3125611333975428
#>     Attrib V31    -0.7196054375656281
#>     Attrib V32    -0.11081130712261504
#>     Attrib V33    0.2050236954474144
#>     Attrib V34    0.03304152915901437
#>     Attrib V35    0.32189018056091684
#>     Attrib V36    -0.5042899591205059
#>     Attrib V37    -0.4195525914672461
#>     Attrib V38    0.28586189574216153
#>     Attrib V39    0.21725351637137483
#>     Attrib V4    0.3626431581035782
#>     Attrib V40    -0.3566000576757107
#>     Attrib V41    0.2740274099236584
#>     Attrib V42    0.0102638726057702
#>     Attrib V43    0.053020212763490636
#>     Attrib V44    0.24350756951409966
#>     Attrib V45    0.5122509877256942
#>     Attrib V46    -0.02039938776998634
#>     Attrib V47    -0.17326022739197136
#>     Attrib V48    0.21145470311854447
#>     Attrib V49    0.35885953760227207
#>     Attrib V5    -0.021521749358990108
#>     Attrib V50    -0.8362443126642212
#>     Attrib V51    0.16318428843095267
#>     Attrib V52    -0.12561395789946517
#>     Attrib V53    0.15744992108109446
#>     Attrib V54    0.26272178558748155
#>     Attrib V55    -0.4850309906815435
#>     Attrib V56    -0.0016717449654228328
#>     Attrib V57    -0.3525086583504871
#>     Attrib V58    -0.012487618621871076
#>     Attrib V59    0.2569609721300419
#>     Attrib V6    -0.07392210346269297
#>     Attrib V60    0.4238065618279924
#>     Attrib V7    -0.04546843666404101
#>     Attrib V8    -0.43006736093381187
#>     Attrib V9    0.3730907986609192
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.002208266102735425
#>     Attrib V1    0.28025494923133387
#>     Attrib V10    0.118564061071794
#>     Attrib V11    -0.15332235353976065
#>     Attrib V12    0.18616770041479153
#>     Attrib V13    0.04949020693411839
#>     Attrib V14    0.10102037049277104
#>     Attrib V15    0.4049903408347799
#>     Attrib V16    -0.19108704828321924
#>     Attrib V17    0.2058840592853016
#>     Attrib V18    0.2684844494155347
#>     Attrib V19    0.372610822272603
#>     Attrib V2    -0.06867377378221602
#>     Attrib V20    0.7362263597880551
#>     Attrib V21    0.5954229322374291
#>     Attrib V22    0.2741353607053185
#>     Attrib V23    0.410909525623366
#>     Attrib V24    0.08881580481506399
#>     Attrib V25    -0.5831454075162991
#>     Attrib V26    -0.9308346900460536
#>     Attrib V27    -0.31647533480668855
#>     Attrib V28    0.09314596819658957
#>     Attrib V29    -0.17013347680991667
#>     Attrib V3    0.0772208101661934
#>     Attrib V30    0.45866323843599877
#>     Attrib V31    -1.0256636976374858
#>     Attrib V32    -0.5610969034875921
#>     Attrib V33    0.06098059309793881
#>     Attrib V34    -0.1639319747613227
#>     Attrib V35    0.12307945073753876
#>     Attrib V36    -0.3758896229425311
#>     Attrib V37    -0.38158627539813594
#>     Attrib V38    0.5899689895370184
#>     Attrib V39    0.28003164964670396
#>     Attrib V4    0.5797813003667043
#>     Attrib V40    -0.35797123210141263
#>     Attrib V41    0.029118661334610253
#>     Attrib V42    0.04185876681509838
#>     Attrib V43    0.2158075557556478
#>     Attrib V44    0.4932899182762369
#>     Attrib V45    0.4442979018674213
#>     Attrib V46    -0.3437749521840012
#>     Attrib V47    -0.45078416332065707
#>     Attrib V48    0.07340044578162143
#>     Attrib V49    0.1419105489918727
#>     Attrib V5    0.03253330463027482
#>     Attrib V50    -0.5818472641772862
#>     Attrib V51    0.14515223502925806
#>     Attrib V52    -0.24545514357344708
#>     Attrib V53    0.16286530686569192
#>     Attrib V54    0.7451171636853607
#>     Attrib V55    -0.2518128928392696
#>     Attrib V56    0.28706709093270116
#>     Attrib V57    -0.20733820904860248
#>     Attrib V58    0.23635005848496993
#>     Attrib V59    0.7881208006629471
#>     Attrib V6    -0.05941848803098379
#>     Attrib V60    0.6813653286030908
#>     Attrib V7    0.2665851401616194
#>     Attrib V8    -0.21980617798369986
#>     Attrib V9    0.19420508206710002
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.04215246946109091
#>     Attrib V1    -0.19594517714375698
#>     Attrib V10    -0.7192028490855293
#>     Attrib V11    -0.38672178862539364
#>     Attrib V12    -0.8801780612331123
#>     Attrib V13    -0.3501056416970153
#>     Attrib V14    0.5227481876853921
#>     Attrib V15    -0.08349548102547256
#>     Attrib V16    0.6039501720646641
#>     Attrib V17    -0.10990711497590934
#>     Attrib V18    -0.1889750678418279
#>     Attrib V19    -0.346940478398525
#>     Attrib V2    0.1011008020314114
#>     Attrib V20    -0.6751456066533535
#>     Attrib V21    -0.4521296596124137
#>     Attrib V22    -0.5555413422888476
#>     Attrib V23    -1.038382821342862
#>     Attrib V24    -0.6854081248932553
#>     Attrib V25    0.34670196447121177
#>     Attrib V26    1.021070174723156
#>     Attrib V27    0.2195712955241664
#>     Attrib V28    -0.18296000175617913
#>     Attrib V29    0.8637897176158438
#>     Attrib V3    -0.07959979939075246
#>     Attrib V30    -0.728243218792013
#>     Attrib V31    1.0669932405138398
#>     Attrib V32    0.06159181612874302
#>     Attrib V33    -0.4654068979520249
#>     Attrib V34    0.004324919621302013
#>     Attrib V35    -0.19667939024980693
#>     Attrib V36    1.0323849448186317
#>     Attrib V37    1.1718713825099258
#>     Attrib V38    -0.5537305536788252
#>     Attrib V39    -0.2214040085546077
#>     Attrib V4    -0.7307748788930162
#>     Attrib V40    0.6685787475727877
#>     Attrib V41    -0.35008914348678954
#>     Attrib V42    -0.30865012099662525
#>     Attrib V43    -0.4414818001634015
#>     Attrib V44    -0.7567785209666945
#>     Attrib V45    -0.7853228163959077
#>     Attrib V46    0.3830904136338406
#>     Attrib V47    0.41165567081606214
#>     Attrib V48    -0.21784825852120607
#>     Attrib V49    -0.3696157534620445
#>     Attrib V5    0.15847153937680222
#>     Attrib V50    1.370994451800571
#>     Attrib V51    -0.2985295814801818
#>     Attrib V52    0.3793739387848973
#>     Attrib V53    -0.2693392474265036
#>     Attrib V54    -0.7711929547057896
#>     Attrib V55    0.802703357340208
#>     Attrib V56    -0.3326497979783445
#>     Attrib V57    0.7279551563514924
#>     Attrib V58    -0.046612867560978016
#>     Attrib V59    -0.6052795743590699
#>     Attrib V6    0.1539413693586845
#>     Attrib V60    -0.5615450904335593
#>     Attrib V7    -0.05604475682265664
#>     Attrib V8    0.21791469377668274
#>     Attrib V9    -0.6895429740446031
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.006268028616300219
#>     Attrib V1    0.23642455867456594
#>     Attrib V10    0.13947642168702531
#>     Attrib V11    -0.008082361707547501
#>     Attrib V12    0.15353748507667106
#>     Attrib V13    0.039185955069218466
#>     Attrib V14    0.006694274842059322
#>     Attrib V15    0.16315474235743144
#>     Attrib V16    -0.054463696168254284
#>     Attrib V17    0.10815265594177659
#>     Attrib V18    0.11316145499466373
#>     Attrib V19    0.15192587591471785
#>     Attrib V2    0.004510638631092247
#>     Attrib V20    0.3722924198454125
#>     Attrib V21    0.2539842198441152
#>     Attrib V22    0.03980695936557858
#>     Attrib V23    0.10015973002970553
#>     Attrib V24    0.08363054284905175
#>     Attrib V25    -0.2702492846966457
#>     Attrib V26    -0.5244598903542794
#>     Attrib V27    -0.23438250674963684
#>     Attrib V28    -0.04420610796009454
#>     Attrib V29    -0.26549461074081865
#>     Attrib V3    0.05709107558255555
#>     Attrib V30    0.09882656259542472
#>     Attrib V31    -0.4767688521699395
#>     Attrib V32    -0.1506041112899252
#>     Attrib V33    0.07385767782997815
#>     Attrib V34    -0.005488153448082581
#>     Attrib V35    0.1236628954382377
#>     Attrib V36    -0.29507379759576136
#>     Attrib V37    -0.25840358738516117
#>     Attrib V38    0.2437334424421153
#>     Attrib V39    0.112023776812718
#>     Attrib V4    0.32960920379978703
#>     Attrib V40    -0.2153538421150509
#>     Attrib V41    -0.026710388341398075
#>     Attrib V42    0.011698793481982937
#>     Attrib V43    0.12613241933585087
#>     Attrib V44    0.1673670494289129
#>     Attrib V45    0.16223648277388059
#>     Attrib V46    -0.12398774801457604
#>     Attrib V47    -0.22236464989751262
#>     Attrib V48    0.11087790731367524
#>     Attrib V49    0.11188074608622459
#>     Attrib V5    0.04340962269847857
#>     Attrib V50    -0.3065678648701949
#>     Attrib V51    0.08860822556706738
#>     Attrib V52    -0.09610886658705897
#>     Attrib V53    0.14556091210908476
#>     Attrib V54    0.43321083512449543
#>     Attrib V55    -0.12106063022546279
#>     Attrib V56    0.21593136192512602
#>     Attrib V57    -0.044925358333354294
#>     Attrib V58    0.22693368989874207
#>     Attrib V59    0.4528765895945899
#>     Attrib V6    -0.04494035381866583
#>     Attrib V60    0.4527365353677055
#>     Attrib V7    0.0912197014193125
#>     Attrib V8    -0.24402392318980012
#>     Attrib V9    0.1300495536340597
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.002713691497181865
#>     Attrib V1    0.20018171987071662
#>     Attrib V10    0.10003126848084956
#>     Attrib V11    -0.06004127161746211
#>     Attrib V12    0.2150680650052197
#>     Attrib V13    0.07740603010769341
#>     Attrib V14    -0.04610693396446045
#>     Attrib V15    0.2350765716262974
#>     Attrib V16    -0.21843252765136723
#>     Attrib V17    0.20761840397454412
#>     Attrib V18    0.21021751182499882
#>     Attrib V19    0.2824056296518546
#>     Attrib V2    -0.13486610328678172
#>     Attrib V20    0.5159700650110257
#>     Attrib V21    0.36797927736219804
#>     Attrib V22    0.20281572465772488
#>     Attrib V23    0.40788395369718483
#>     Attrib V24    0.17979290858987723
#>     Attrib V25    -0.2880774878423266
#>     Attrib V26    -0.6474073265280755
#>     Attrib V27    -0.34426862846267214
#>     Attrib V28    -0.08632306217821348
#>     Attrib V29    -0.4743432631897694
#>     Attrib V3    0.10838494510867552
#>     Attrib V30    0.20256279957342543
#>     Attrib V31    -0.8331636841815557
#>     Attrib V32    -0.3016430928976045
#>     Attrib V33    0.20191310481933525
#>     Attrib V34    0.04858106355018078
#>     Attrib V35    0.2869652099878716
#>     Attrib V36    -0.33376753952983357
#>     Attrib V37    -0.3693251613023894
#>     Attrib V38    0.3798819171158463
#>     Attrib V39    0.16854090763650834
#>     Attrib V4    0.5017192955815424
#>     Attrib V40    -0.35826733410747946
#>     Attrib V41    0.014046508912118116
#>     Attrib V42    0.06009861001151966
#>     Attrib V43    0.2334662526712335
#>     Attrib V44    0.36207954986273344
#>     Attrib V45    0.39950770166088256
#>     Attrib V46    -0.25384264118670324
#>     Attrib V47    -0.28779399797007743
#>     Attrib V48    0.032348742831864195
#>     Attrib V49    0.09863101313283866
#>     Attrib V5    -0.025675533984836383
#>     Attrib V50    -0.519127458686301
#>     Attrib V51    0.011829062413558447
#>     Attrib V52    -0.2273989670520082
#>     Attrib V53    0.15372717432636682
#>     Attrib V54    0.5945447660842148
#>     Attrib V55    -0.23640764620838614
#>     Attrib V56    0.30716200606773914
#>     Attrib V57    -0.19039120480114916
#>     Attrib V58    0.19135847486682772
#>     Attrib V59    0.6266955715743007
#>     Attrib V6    -0.06265596085933278
#>     Attrib V60    0.5203551992429768
#>     Attrib V7    0.1711637148643298
#>     Attrib V8    -0.2011116193142754
#>     Attrib V9    0.20118160404677823
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.195826445770792
#>     Attrib V1    -0.20310430489718223
#>     Attrib V10    -0.42571228075875966
#>     Attrib V11    -0.20315034887602051
#>     Attrib V12    -0.6515802119608982
#>     Attrib V13    -0.2505104681933822
#>     Attrib V14    0.3897250759662239
#>     Attrib V15    0.024689441577983532
#>     Attrib V16    0.44917084259560913
#>     Attrib V17    0.18382397821599605
#>     Attrib V18    0.062238507699950936
#>     Attrib V19    -0.03299090490570655
#>     Attrib V2    -0.06927533550432702
#>     Attrib V20    -0.16934187755421887
#>     Attrib V21    -0.03168321452790378
#>     Attrib V22    -0.0888034884522871
#>     Attrib V23    -0.5221606810974798
#>     Attrib V24    -0.4709956731194673
#>     Attrib V25    0.29419118432882935
#>     Attrib V26    0.7301808725701491
#>     Attrib V27    0.004457056280499897
#>     Attrib V28    -0.4393872234939774
#>     Attrib V29    0.2875432642810101
#>     Attrib V3    -0.03262472070426602
#>     Attrib V30    -0.38645379592431095
#>     Attrib V31    0.5108682106977559
#>     Attrib V32    -0.05579506336939042
#>     Attrib V33    -0.28910855685943965
#>     Attrib V34    -0.004836554527484238
#>     Attrib V35    -0.19847177483241427
#>     Attrib V36    0.820890800862331
#>     Attrib V37    0.6017949989530548
#>     Attrib V38    -0.18799997878297914
#>     Attrib V39    -0.2355002078938534
#>     Attrib V4    -0.3069291626054266
#>     Attrib V40    0.39146079169474546
#>     Attrib V41    -0.3904078244755981
#>     Attrib V42    -0.03581431260642256
#>     Attrib V43    -0.0396391606516858
#>     Attrib V44    -0.19814081253265511
#>     Attrib V45    -0.4043202134022482
#>     Attrib V46    0.09138312358718094
#>     Attrib V47    0.13037476526217878
#>     Attrib V48    -0.25870433942888227
#>     Attrib V49    -0.3100811243083754
#>     Attrib V5    -0.01644418634824479
#>     Attrib V50    0.9748216374743393
#>     Attrib V51    -0.30674134037776557
#>     Attrib V52    0.15309677318497106
#>     Attrib V53    -0.2525927856067167
#>     Attrib V54    -0.22718956230816856
#>     Attrib V55    0.5991328493741038
#>     Attrib V56    0.020210018185911206
#>     Attrib V57    0.4660343084994718
#>     Attrib V58    0.04808786473371324
#>     Attrib V59    -0.22067195797869685
#>     Attrib V6    0.034862694472487944
#>     Attrib V60    -0.4222517424777778
#>     Attrib V7    0.10067062602606841
#>     Attrib V8    0.4175695313181882
#>     Attrib V9    -0.35675395975380925
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.5508286288817692
#>     Attrib V1    0.7625635919899445
#>     Attrib V10    1.1811194948156547
#>     Attrib V11    1.1308961804059543
#>     Attrib V12    1.6997049858520386
#>     Attrib V13    0.7637722092899916
#>     Attrib V14    -0.33055964997669757
#>     Attrib V15    -0.12849248501232088
#>     Attrib V16    -0.5698637852268076
#>     Attrib V17    -0.4261992206930755
#>     Attrib V18    -0.600381937050994
#>     Attrib V19    -0.6422314250500092
#>     Attrib V2    0.8933082444861155
#>     Attrib V20    -0.3733369705286397
#>     Attrib V21    0.292118237099029
#>     Attrib V22    0.4006989240821323
#>     Attrib V23    0.39830424736150183
#>     Attrib V24    0.39667213074780383
#>     Attrib V25    0.026840997426198995
#>     Attrib V26    0.2612738216981961
#>     Attrib V27    1.1592548241053053
#>     Attrib V28    1.9185290415313194
#>     Attrib V29    0.597552887979518
#>     Attrib V3    0.2812100775441844
#>     Attrib V30    0.33151480620495366
#>     Attrib V31    -0.4293091708867772
#>     Attrib V32    0.37886191202163927
#>     Attrib V33    -0.27487754337855974
#>     Attrib V34    -0.4069887895995767
#>     Attrib V35    0.02168296130091444
#>     Attrib V36    -0.7329176925850097
#>     Attrib V37    0.15177218545861998
#>     Attrib V38    0.27384328101826744
#>     Attrib V39    0.7995000738978046
#>     Attrib V4    0.19086299791181052
#>     Attrib V40    -0.29222668579553435
#>     Attrib V41    0.8598480211680161
#>     Attrib V42    -0.3231764216762202
#>     Attrib V43    -0.3739723189649811
#>     Attrib V44    0.05136630838686014
#>     Attrib V45    0.6968190697125829
#>     Attrib V46    0.8503990294643807
#>     Attrib V47    0.4029221964649366
#>     Attrib V48    0.5516612405715337
#>     Attrib V49    1.0602999239692066
#>     Attrib V5    0.46380120235413014
#>     Attrib V50    -1.0501015079709437
#>     Attrib V51    0.8553856300253849
#>     Attrib V52    0.5263516263532101
#>     Attrib V53    0.6456534287006439
#>     Attrib V54    -0.4901951983896834
#>     Attrib V55    -0.6524751021022144
#>     Attrib V56    -0.5825809009195932
#>     Attrib V57    -0.02106849473355815
#>     Attrib V58    -0.4091044135528089
#>     Attrib V59    -0.12489411458285925
#>     Attrib V6    0.26202948428143197
#>     Attrib V60    0.5119073185715315
#>     Attrib V7    -0.4908797640893235
#>     Attrib V8    -0.9386467575751124
#>     Attrib V9    0.9344488328494692
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.2102387446583732
#>     Attrib V1    -0.177477997312407
#>     Attrib V10    -0.31819899723318934
#>     Attrib V11    -0.17936563280593953
#>     Attrib V12    -0.4877632308436639
#>     Attrib V13    -0.18741214873627504
#>     Attrib V14    0.34428572386945455
#>     Attrib V15    -0.01670088203004664
#>     Attrib V16    0.35098733933847753
#>     Attrib V17    0.13863371317832232
#>     Attrib V18    0.02424705210683491
#>     Attrib V19    0.0210273105077168
#>     Attrib V2    -0.041743670199650945
#>     Attrib V20    -0.12340636958020926
#>     Attrib V21    -0.008380043342386519
#>     Attrib V22    -0.03723049902166628
#>     Attrib V23    -0.40480089074231856
#>     Attrib V24    -0.3430193367692145
#>     Attrib V25    0.24045477983456157
#>     Attrib V26    0.5059612409290771
#>     Attrib V27    0.04800850645248085
#>     Attrib V28    -0.3297576014866284
#>     Attrib V29    0.231479218249809
#>     Attrib V3    -0.04487929211072916
#>     Attrib V30    -0.28142385257800295
#>     Attrib V31    0.36998415285626696
#>     Attrib V32    -0.11060385122356692
#>     Attrib V33    -0.16290603767395787
#>     Attrib V34    -0.021540564735696086
#>     Attrib V35    -0.10033125093681633
#>     Attrib V36    0.6624486680290095
#>     Attrib V37    0.5236931868447666
#>     Attrib V38    -0.17557370499692856
#>     Attrib V39    -0.18319523347886615
#>     Attrib V4    -0.21871233225682968
#>     Attrib V40    0.2607860186310588
#>     Attrib V41    -0.33242552302576717
#>     Attrib V42    0.029419535820459433
#>     Attrib V43    -0.05130762199946734
#>     Attrib V44    -0.12231400972576739
#>     Attrib V45    -0.29450929907051093
#>     Attrib V46    -0.003894287246929335
#>     Attrib V47    -0.0015339246541597226
#>     Attrib V48    -0.20301855330696136
#>     Attrib V49    -0.2686025649104323
#>     Attrib V5    -0.030296564767816815
#>     Attrib V50    0.6999545638122195
#>     Attrib V51    -0.2927783991301612
#>     Attrib V52    0.060991664989641745
#>     Attrib V53    -0.1673862062038237
#>     Attrib V54    -0.16026038815470958
#>     Attrib V55    0.44046831467776976
#>     Attrib V56    0.014194585414731191
#>     Attrib V57    0.33752837087291226
#>     Attrib V58    0.032858041378503546
#>     Attrib V59    -0.16064732793141095
#>     Attrib V6    0.0389421539591151
#>     Attrib V60    -0.26881570529528437
#>     Attrib V7    0.08264708433116334
#>     Attrib V8    0.35088849019109214
#>     Attrib V9    -0.32174930509194943
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.25094620056640793
#>     Attrib V1    0.3871162998716925
#>     Attrib V10    0.7379102634659959
#>     Attrib V11    0.6048854921633955
#>     Attrib V12    0.8892158165012375
#>     Attrib V13    0.3401485417370097
#>     Attrib V14    -0.482532849221851
#>     Attrib V15    -0.1615394442216711
#>     Attrib V16    -0.49153098740950946
#>     Attrib V17    -0.2793715841237752
#>     Attrib V18    -0.24333172386481858
#>     Attrib V19    -0.3131767998582843
#>     Attrib V2    0.18265351424368562
#>     Attrib V20    -0.23906769434336325
#>     Attrib V21    -0.039039447543852815
#>     Attrib V22    0.019813452927094046
#>     Attrib V23    0.27876604708466646
#>     Attrib V24    0.37854598557618924
#>     Attrib V25    0.0873337443259381
#>     Attrib V26    -0.0037427425472441778
#>     Attrib V27    0.4589092465018144
#>     Attrib V28    0.7113870079689866
#>     Attrib V29    -0.22028673098705628
#>     Attrib V3    0.041669025009250085
#>     Attrib V30    0.14432536835763438
#>     Attrib V31    -0.3487609680987968
#>     Attrib V32    0.2933411890040188
#>     Attrib V33    0.24186721340988745
#>     Attrib V34    0.1653935686255555
#>     Attrib V35    0.3084207218980049
#>     Attrib V36    -0.4876088148460607
#>     Attrib V37    -0.22267357008744007
#>     Attrib V38    0.11200405668316003
#>     Attrib V39    0.24107843771711052
#>     Attrib V4    0.21819187126726106
#>     Attrib V40    -0.36421109790890893
#>     Attrib V41    0.39338658823398237
#>     Attrib V42    -0.1583112784920939
#>     Attrib V43    -0.16237204251412013
#>     Attrib V44    0.08007676277772072
#>     Attrib V45    0.47484373843295374
#>     Attrib V46    0.25956910590053256
#>     Attrib V47    0.1484469599400431
#>     Attrib V48    0.45243768041405624
#>     Attrib V49    0.43718033530062944
#>     Attrib V5    0.13592530321578808
#>     Attrib V50    -0.6286467665150944
#>     Attrib V51    0.3262853687172918
#>     Attrib V52    0.039678988362010816
#>     Attrib V53    0.1417171173687469
#>     Attrib V54    -0.08898952847122371
#>     Attrib V55    -0.4334598221393486
#>     Attrib V56    -0.21650251422290404
#>     Attrib V57    -0.12869184498980557
#>     Attrib V58    -0.08516649391084012
#>     Attrib V59    0.02234541642735491
#>     Attrib V6    0.10462350301721803
#>     Attrib V60    0.37300685034640346
#>     Attrib V7    -0.13447979438414095
#>     Attrib V8    -0.48973934842876404
#>     Attrib V9    0.5958470289562783
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.7358016302604158
#>     Attrib V1    -0.6656976651527831
#>     Attrib V10    -0.8482943755812199
#>     Attrib V11    -1.5885965208943387
#>     Attrib V12    -2.4676311480729334
#>     Attrib V13    -0.7993894169509106
#>     Attrib V14    1.1866355736349088
#>     Attrib V15    0.023834442915606213
#>     Attrib V16    0.048773657710095335
#>     Attrib V17    -1.234356856285285
#>     Attrib V18    -0.5011208911092324
#>     Attrib V19    -0.5263635577059
#>     Attrib V2    -0.36677386228459724
#>     Attrib V20    -0.4610824478064086
#>     Attrib V21    0.02624007438880311
#>     Attrib V22    -0.2957978922076907
#>     Attrib V23    -0.41718758395971933
#>     Attrib V24    -0.144055110446829
#>     Attrib V25    0.4570188060620245
#>     Attrib V26    1.0314236389870022
#>     Attrib V27    0.28276020888518777
#>     Attrib V28    -0.457860554064224
#>     Attrib V29    0.012576248631026856
#>     Attrib V3    -0.06102481041950233
#>     Attrib V30    -1.161699871054999
#>     Attrib V31    0.5719022432562175
#>     Attrib V32    0.4975204614584353
#>     Attrib V33    0.2560120166149319
#>     Attrib V34    -0.22808984725471596
#>     Attrib V35    -0.2602741210673913
#>     Attrib V36    1.2300172685145156
#>     Attrib V37    0.578445596119874
#>     Attrib V38    0.028201499598013564
#>     Attrib V39    -0.46621104798121094
#>     Attrib V4    0.06385214504404496
#>     Attrib V40    0.6342956826936275
#>     Attrib V41    -0.810477535728539
#>     Attrib V42    0.28432802523009687
#>     Attrib V43    0.23563825635264923
#>     Attrib V44    0.15597667504851756
#>     Attrib V45    -0.7338187430475559
#>     Attrib V46    -0.7470561449944442
#>     Attrib V47    -1.0374444039084891
#>     Attrib V48    -0.7728484741971665
#>     Attrib V49    -0.4974598130777623
#>     Attrib V5    -0.4326959319251215
#>     Attrib V50    1.928866209609646
#>     Attrib V51    -0.0514679513115189
#>     Attrib V52    0.849476431166537
#>     Attrib V53    0.13224312817702363
#>     Attrib V54    0.4083954997230832
#>     Attrib V55    1.2477313795479972
#>     Attrib V56    0.13724452984951033
#>     Attrib V57    0.28379719370042183
#>     Attrib V58    1.3043958223416978
#>     Attrib V59    0.3893287680500948
#>     Attrib V6    -0.11323943714137641
#>     Attrib V60    0.03218915936760562
#>     Attrib V7    1.4174792672506251
#>     Attrib V8    0.9534016361529002
#>     Attrib V9    -0.8426865538929725
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.11995875500977164
#>     Attrib V1    0.12455930325926949
#>     Attrib V10    0.24419022175784186
#>     Attrib V11    0.19893490461751545
#>     Attrib V12    0.444055752667458
#>     Attrib V13    0.1179392948691938
#>     Attrib V14    -0.21686764863566568
#>     Attrib V15    0.015740180990096088
#>     Attrib V16    -0.31063073552733717
#>     Attrib V17    -0.025791830317855636
#>     Attrib V18    -0.015639419457231695
#>     Attrib V19    0.0165296905177677
#>     Attrib V2    -0.017991099047970797
#>     Attrib V20    0.2733319655156773
#>     Attrib V21    0.22380459161599356
#>     Attrib V22    0.15669504537769283
#>     Attrib V23    0.3298543912772571
#>     Attrib V24    0.30981995871818063
#>     Attrib V25    -0.058551874205376296
#>     Attrib V26    -0.4090952385762539
#>     Attrib V27    0.06146862408398743
#>     Attrib V28    0.3648380200625934
#>     Attrib V29    -0.14968131198370693
#>     Attrib V3    0.042580063718460376
#>     Attrib V30    0.16864500818117464
#>     Attrib V31    -0.5874713188711849
#>     Attrib V32    -0.06322447849856475
#>     Attrib V33    0.1389983795124439
#>     Attrib V34    0.05047136270211502
#>     Attrib V35    0.2428244889574148
#>     Attrib V36    -0.35676786492401735
#>     Attrib V37    -0.2068698291565731
#>     Attrib V38    0.2969979769456285
#>     Attrib V39    0.21438516349523196
#>     Attrib V4    0.23957430570155896
#>     Attrib V40    -0.2946520852796093
#>     Attrib V41    0.19003198336632676
#>     Attrib V42    -0.04266272747003924
#>     Attrib V43    0.11349772110903392
#>     Attrib V44    0.19165169265708265
#>     Attrib V45    0.41127463541189496
#>     Attrib V46    -0.008793008982622108
#>     Attrib V47    -0.06711592548437048
#>     Attrib V48    0.15695052288169997
#>     Attrib V49    0.19827527848201035
#>     Attrib V5    -0.021046245123566846
#>     Attrib V50    -0.530470663019114
#>     Attrib V51    0.1182087647002546
#>     Attrib V52    -0.09688512962478651
#>     Attrib V53    0.09064836587408555
#>     Attrib V54    0.19324965890602416
#>     Attrib V55    -0.31002484541595965
#>     Attrib V56    0.07532303453344683
#>     Attrib V57    -0.18023403766477059
#>     Attrib V58    -0.042472335473657356
#>     Attrib V59    0.21664780032861436
#>     Attrib V6    -0.038007227998658015
#>     Attrib V60    0.3448502194032346
#>     Attrib V7    -0.05651253500900743
#>     Attrib V8    -0.309501996489384
#>     Attrib V9    0.26913065084738835
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.1465106545441572
#>     Attrib V1    -0.08476388483319452
#>     Attrib V10    -0.09867538620917528
#>     Attrib V11    -0.04058862259471261
#>     Attrib V12    -0.22735746391479497
#>     Attrib V13    -0.03699220206395134
#>     Attrib V14    0.2027058492478531
#>     Attrib V15    0.09634483347868565
#>     Attrib V16    0.3368547576270769
#>     Attrib V17    0.2637488233025524
#>     Attrib V18    0.13098168329686874
#>     Attrib V19    -0.0369960731571975
#>     Attrib V2    0.009597198843753041
#>     Attrib V20    -0.16757395975057596
#>     Attrib V21    -0.004445709304529606
#>     Attrib V22    0.0070519926963864485
#>     Attrib V23    -0.2784634974150338
#>     Attrib V24    -0.23536806587155445
#>     Attrib V25    0.243002185014812
#>     Attrib V26    0.37782375576843047
#>     Attrib V27    -0.024147841435715633
#>     Attrib V28    -0.24909761152531276
#>     Attrib V29    0.10849202803619427
#>     Attrib V3    -0.018067538531371795
#>     Attrib V30    -0.04449734877646818
#>     Attrib V31    0.37592650608318534
#>     Attrib V32    -0.04975392611737128
#>     Attrib V33    -0.0879287927064933
#>     Attrib V34    0.015524845507583387
#>     Attrib V35    -0.05269157880233197
#>     Attrib V36    0.3679018339794287
#>     Attrib V37    0.3304753693878944
#>     Attrib V38    -0.16612229753294186
#>     Attrib V39    -0.059964749059938365
#>     Attrib V4    -0.11953929717189875
#>     Attrib V40    0.24443825666564045
#>     Attrib V41    -0.1031119612123024
#>     Attrib V42    0.1557676993843712
#>     Attrib V43    -0.016046731579961233
#>     Attrib V44    -0.08762248714018012
#>     Attrib V45    -0.15096938492450732
#>     Attrib V46    0.027351087325509303
#>     Attrib V47    0.02238907093743449
#>     Attrib V48    -0.08476734476981518
#>     Attrib V49    -0.2027304792295263
#>     Attrib V5    0.013719295449123233
#>     Attrib V50    0.3080153367671448
#>     Attrib V51    -0.23393256966498527
#>     Attrib V52    -0.05701418452883163
#>     Attrib V53    -0.14904107551926718
#>     Attrib V54    -0.11781949673697557
#>     Attrib V55    0.2535666522973929
#>     Attrib V56    0.05571069118010975
#>     Attrib V57    0.1485087171483317
#>     Attrib V58    -0.008904705289877152
#>     Attrib V59    -0.09150146007882615
#>     Attrib V6    0.07262663332894519
#>     Attrib V60    -0.17653983484377736
#>     Attrib V7    0.0415269789581906
#>     Attrib V8    0.2270847783889248
#>     Attrib V9    -0.14821188186117482
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.03740317035905407
#>     Attrib V1    0.16344199721531863
#>     Attrib V10    0.10257479826461469
#>     Attrib V11    -0.03417509625235557
#>     Attrib V12    0.09793807990439278
#>     Attrib V13    0.06646163092316817
#>     Attrib V14    -0.027748878255289627
#>     Attrib V15    0.20237830984050012
#>     Attrib V16    -0.13222518902757147
#>     Attrib V17    0.1672587590540152
#>     Attrib V18    0.1795317550152834
#>     Attrib V19    0.2181085468431808
#>     Attrib V2    -0.0208491819538816
#>     Attrib V20    0.4643453423135614
#>     Attrib V21    0.2679172823673357
#>     Attrib V22    0.15329340681468556
#>     Attrib V23    0.29440918267264093
#>     Attrib V24    0.1654884105631725
#>     Attrib V25    -0.28111785909529713
#>     Attrib V26    -0.5605561186740612
#>     Attrib V27    -0.31867215167987273
#>     Attrib V28    -0.10371866834752799
#>     Attrib V29    -0.3973085018451598
#>     Attrib V3    0.03127139397389543
#>     Attrib V30    0.12074103196671862
#>     Attrib V31    -0.6108798395085514
#>     Attrib V32    -0.22014588962879406
#>     Attrib V33    0.18579346380619863
#>     Attrib V34    0.08504624790092816
#>     Attrib V35    0.23679218792383241
#>     Attrib V36    -0.2901696481401467
#>     Attrib V37    -0.2910170093909357
#>     Attrib V38    0.35003747954117476
#>     Attrib V39    0.11808784941607367
#>     Attrib V4    0.3863148000319244
#>     Attrib V40    -0.264590433311084
#>     Attrib V41    -0.013539018638641197
#>     Attrib V42    0.025647310985517976
#>     Attrib V43    0.1644558722785294
#>     Attrib V44    0.3046785089116746
#>     Attrib V45    0.2600525120248465
#>     Attrib V46    -0.2033485787895087
#>     Attrib V47    -0.25389885385819055
#>     Attrib V48    0.0713527009955962
#>     Attrib V49    0.08693002656480782
#>     Attrib V5    -0.028720574754294195
#>     Attrib V50    -0.4024300052256858
#>     Attrib V51    0.007056393885346837
#>     Attrib V52    -0.20048650992025832
#>     Attrib V53    0.15530001969571147
#>     Attrib V54    0.5183017975056455
#>     Attrib V55    -0.150427705204657
#>     Attrib V56    0.18873971782163332
#>     Attrib V57    -0.11059446737506938
#>     Attrib V58    0.146873290692972
#>     Attrib V59    0.47149300383457393
#>     Attrib V6    -0.053116644332199134
#>     Attrib V60    0.4425606811435521
#>     Attrib V7    0.13664604226016544
#>     Attrib V8    -0.1383340832299851
#>     Attrib V9    0.19910069003165315
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.0735460317085163
#>     Attrib V1    0.17620793346917724
#>     Attrib V10    0.08234313927025645
#>     Attrib V11    0.050457013890058494
#>     Attrib V12    0.14135793143787226
#>     Attrib V13    0.041043764892040466
#>     Attrib V14    0.04382316558997425
#>     Attrib V15    0.11770190309899899
#>     Attrib V16    -0.03366862117826109
#>     Attrib V17    0.04040651401402523
#>     Attrib V18    0.11926661036615815
#>     Attrib V19    0.04375613523858592
#>     Attrib V2    0.026646768438475358
#>     Attrib V20    0.20598665288319704
#>     Attrib V21    0.16774234778477293
#>     Attrib V22    0.020574682729529163
#>     Attrib V23    0.09020212680476686
#>     Attrib V24    -0.012884372919224759
#>     Attrib V25    -0.2034551721865102
#>     Attrib V26    -0.31122922675510606
#>     Attrib V27    -0.1079785641184244
#>     Attrib V28    0.0769736943918257
#>     Attrib V29    -0.15006795503883147
#>     Attrib V3    0.12314716277875501
#>     Attrib V30    0.07529240716644617
#>     Attrib V31    -0.33580753525171597
#>     Attrib V32    -0.07781293521375203
#>     Attrib V33    0.08806269728222624
#>     Attrib V34    0.030639506421902357
#>     Attrib V35    0.11747277768044165
#>     Attrib V36    -0.09075205271121155
#>     Attrib V37    -0.0925102693346309
#>     Attrib V38    0.14908825734440387
#>     Attrib V39    0.11894855470408078
#>     Attrib V4    0.21731045169022742
#>     Attrib V40    -0.16653716232864846
#>     Attrib V41    -0.030735495836733667
#>     Attrib V42    0.018042377400249315
#>     Attrib V43    4.8246780902045137E-4
#>     Attrib V44    0.1324241207666899
#>     Attrib V45    0.19200306649708404
#>     Attrib V46    -0.04735630894196221
#>     Attrib V47    -0.09685229207734702
#>     Attrib V48    0.033162570163914586
#>     Attrib V49    0.13112180294830306
#>     Attrib V5    0.06374479929972587
#>     Attrib V50    -0.16566624496898807
#>     Attrib V51    0.04771393394744349
#>     Attrib V52    -0.0075984640344019866
#>     Attrib V53    0.12547619715656286
#>     Attrib V54    0.17983592412440133
#>     Attrib V55    -0.06635761464186869
#>     Attrib V56    0.11883681771147923
#>     Attrib V57    0.014612494992907716
#>     Attrib V58    0.20032147960012847
#>     Attrib V59    0.2505472798516611
#>     Attrib V6    0.023212236454191994
#>     Attrib V60    0.2696736005300436
#>     Attrib V7    0.07076039417423613
#>     Attrib V8    -0.05793993709109998
#>     Attrib V9    0.15319485399706934
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
