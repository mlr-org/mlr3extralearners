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
#>     Threshold    0.43377931855603813
#>     Node 2    2.0620257307698995
#>     Node 3    1.601804635457436
#>     Node 4    1.4895819092605371
#>     Node 5    -3.3251404268822387
#>     Node 6    1.91677348884763
#>     Node 7    2.503526520365392
#>     Node 8    1.2844906081858385
#>     Node 9    2.347584226550209
#>     Node 10    -2.512234197297862
#>     Node 11    1.2014329077985184
#>     Node 12    2.066336549842517
#>     Node 13    1.5162701318887908
#>     Node 14    1.7116623988012
#>     Node 15    -2.773571440793522
#>     Node 16    -0.2742603650595491
#>     Node 17    0.23904922113263877
#>     Node 18    0.6406232114851257
#>     Node 19    2.0060431911519907
#>     Node 20    2.355245307427797
#>     Node 21    -1.6629836554871813
#>     Node 22    0.7727253088859527
#>     Node 23    1.8231968040003477
#>     Node 24    -1.4929662948049862
#>     Node 25    3.5718769170606643
#>     Node 26    0.12184841939632705
#>     Node 27    1.8688403617356564
#>     Node 28    -4.70984855001341
#>     Node 29    1.0447241299135483
#>     Node 30    0.8479498907823464
#>     Node 31    0.9000281920534686
#>     Node 32    1.1621198762167406
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.43510858315299533
#>     Node 2    -2.109250084938238
#>     Node 3    -1.5815442035232887
#>     Node 4    -1.446803559395322
#>     Node 5    3.3549564330089785
#>     Node 6    -1.8883201334944437
#>     Node 7    -2.485224463068467
#>     Node 8    -1.3256665745273124
#>     Node 9    -2.341670584143292
#>     Node 10    2.4776507054174326
#>     Node 11    -1.1742144948932702
#>     Node 12    -2.1329451314027965
#>     Node 13    -1.4666745706780644
#>     Node 14    -1.6461624892903217
#>     Node 15    2.770481486072469
#>     Node 16    0.24747188020116362
#>     Node 17    -0.21904849655333133
#>     Node 18    -0.6131735436833136
#>     Node 19    -1.9925030044443401
#>     Node 20    -2.3412645701728256
#>     Node 21    1.7124810869326004
#>     Node 22    -0.8351627384877908
#>     Node 23    -1.871428774906717
#>     Node 24    1.4865091698568391
#>     Node 25    -3.5734000253529485
#>     Node 26    -0.2210922524254341
#>     Node 27    -1.9084508114530088
#>     Node 28    4.692307033740287
#>     Node 29    -1.0849056796026686
#>     Node 30    -0.7827397381945569
#>     Node 31    -0.8517699837009668
#>     Node 32    -1.184105448862904
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.18872257562624778
#>     Attrib V1    0.21598873417113776
#>     Attrib V10    -0.15638847202252343
#>     Attrib V11    -0.2561888445629997
#>     Attrib V12    0.1900062910477768
#>     Attrib V13    -0.043214072248866676
#>     Attrib V14    -0.10650152062098445
#>     Attrib V15    0.0794713695547934
#>     Attrib V16    0.14416363526093895
#>     Attrib V17    0.33807611080992317
#>     Attrib V18    0.12338017068158458
#>     Attrib V19    0.18788397239706092
#>     Attrib V2    0.26561185423850725
#>     Attrib V20    0.5266452860251979
#>     Attrib V21    0.9030086157199724
#>     Attrib V22    0.4260152939975721
#>     Attrib V23    -0.1752263838542581
#>     Attrib V24    -0.22542186220440524
#>     Attrib V25    -0.5731059447592419
#>     Attrib V26    -0.8071955033781584
#>     Attrib V27    -0.8610053469102007
#>     Attrib V28    -0.2172349621789123
#>     Attrib V29    -0.6600164886553079
#>     Attrib V3    0.3463010906019047
#>     Attrib V30    0.46470206715314394
#>     Attrib V31    -0.8969814323532902
#>     Attrib V32    -0.49380373886558027
#>     Attrib V33    0.24120328808996114
#>     Attrib V34    0.017690469422975086
#>     Attrib V35    -0.35347059711631285
#>     Attrib V36    -0.7290749317919761
#>     Attrib V37    -0.6336896289775892
#>     Attrib V38    0.41691990911418697
#>     Attrib V39    0.4830861938957049
#>     Attrib V4    0.1568981122289284
#>     Attrib V40    0.04828355476383329
#>     Attrib V41    -0.0329087771902019
#>     Attrib V42    0.4052519845254133
#>     Attrib V43    0.3627373228467315
#>     Attrib V44    0.7160794357997055
#>     Attrib V45    0.1904386779573486
#>     Attrib V46    -0.04226299580218352
#>     Attrib V47    -0.3439689490631146
#>     Attrib V48    0.13722574160603165
#>     Attrib V49    0.35642780979468347
#>     Attrib V5    -0.08910372879008936
#>     Attrib V50    -0.5279017159246825
#>     Attrib V51    -0.15485230155288443
#>     Attrib V52    0.12897912356583371
#>     Attrib V53    0.4875931911909033
#>     Attrib V54    0.43912828309672275
#>     Attrib V55    -0.6865455892469947
#>     Attrib V56    0.7666547683782309
#>     Attrib V57    0.16719942432740076
#>     Attrib V58    0.3938514783292711
#>     Attrib V59    0.735284120682202
#>     Attrib V6    -0.22391650213437728
#>     Attrib V60    0.8911811520739569
#>     Attrib V7    -0.017135462251736303
#>     Attrib V8    -0.566610065771121
#>     Attrib V9    0.21715710570830749
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.15969239251534956
#>     Attrib V1    0.125040116444692
#>     Attrib V10    -0.08563489480083994
#>     Attrib V11    -0.17994019680128492
#>     Attrib V12    0.24358306163759794
#>     Attrib V13    0.0508563945655977
#>     Attrib V14    -0.09906413270697782
#>     Attrib V15    0.09880479009776966
#>     Attrib V16    0.061644884584017325
#>     Attrib V17    0.2405953900784557
#>     Attrib V18    0.041024373712059824
#>     Attrib V19    0.1727892954871719
#>     Attrib V2    0.19528527061912476
#>     Attrib V20    0.36211174282765973
#>     Attrib V21    0.631455663413057
#>     Attrib V22    0.376710683335119
#>     Attrib V23    -0.11331874193571151
#>     Attrib V24    -0.11454488733983897
#>     Attrib V25    -0.30073788013875596
#>     Attrib V26    -0.5478888784135295
#>     Attrib V27    -0.7208012314829852
#>     Attrib V28    -0.3137030458455445
#>     Attrib V29    -0.7465169727593863
#>     Attrib V3    0.25951430806857284
#>     Attrib V30    0.30519155483084065
#>     Attrib V31    -0.6462586595571659
#>     Attrib V32    -0.3654663357015323
#>     Attrib V33    0.20792439987966393
#>     Attrib V34    -0.006743716109279017
#>     Attrib V35    -0.20785994665506305
#>     Attrib V36    -0.5399634816738316
#>     Attrib V37    -0.45654513546144054
#>     Attrib V38    0.2663606945285815
#>     Attrib V39    0.36837048177930765
#>     Attrib V4    0.11943720338021291
#>     Attrib V40    0.0565651628131691
#>     Attrib V41    -0.016403942637779927
#>     Attrib V42    0.2548003723844532
#>     Attrib V43    0.23279478131781728
#>     Attrib V44    0.5338460789835893
#>     Attrib V45    0.14915492511778433
#>     Attrib V46    -0.03051760572742899
#>     Attrib V47    -0.2280502199435845
#>     Attrib V48    0.0678075351516707
#>     Attrib V49    0.2574321216264176
#>     Attrib V5    -0.07268405876466333
#>     Attrib V50    -0.413510719814394
#>     Attrib V51    -0.12410849769141338
#>     Attrib V52    0.12313549268106427
#>     Attrib V53    0.3763205844519548
#>     Attrib V54    0.4563938417842038
#>     Attrib V55    -0.4702242500674341
#>     Attrib V56    0.6154905388915274
#>     Attrib V57    0.19245045290436172
#>     Attrib V58    0.3927993457662718
#>     Attrib V59    0.5799539383899083
#>     Attrib V6    -0.1595898143848662
#>     Attrib V60    0.7045292828767444
#>     Attrib V7    -0.021668379449179247
#>     Attrib V8    -0.4374750566309854
#>     Attrib V9    0.191133196659185
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.12356941818209607
#>     Attrib V1    0.0987889628325823
#>     Attrib V10    -0.15001357838349294
#>     Attrib V11    -0.192231515693727
#>     Attrib V12    0.1614765976460318
#>     Attrib V13    0.020163054128164774
#>     Attrib V14    -0.042505669271777034
#>     Attrib V15    0.12171731563598945
#>     Attrib V16    0.08775514100873491
#>     Attrib V17    0.25346299058776445
#>     Attrib V18    0.08004631198323786
#>     Attrib V19    0.16532292132369855
#>     Attrib V2    0.16613230044615884
#>     Attrib V20    0.36637134873910765
#>     Attrib V21    0.673626906475513
#>     Attrib V22    0.30287978943126614
#>     Attrib V23    -0.12292887282487769
#>     Attrib V24    -0.16724607988316295
#>     Attrib V25    -0.4008033976761928
#>     Attrib V26    -0.5569205768805685
#>     Attrib V27    -0.6739344209983023
#>     Attrib V28    -0.17059504003713305
#>     Attrib V29    -0.4513696586922185
#>     Attrib V3    0.25115060883673684
#>     Attrib V30    0.2703822436800953
#>     Attrib V31    -0.6454823620541886
#>     Attrib V32    -0.41888603209943404
#>     Attrib V33    0.15205242868142269
#>     Attrib V34    0.0249537562475558
#>     Attrib V35    -0.16785242572035186
#>     Attrib V36    -0.4520759517462373
#>     Attrib V37    -0.33906353045857934
#>     Attrib V38    0.2856313661741768
#>     Attrib V39    0.3676503180058557
#>     Attrib V4    0.11875132560207524
#>     Attrib V40    0.05436001062721405
#>     Attrib V41    -0.03887117620001082
#>     Attrib V42    0.25683416721685715
#>     Attrib V43    0.1992291316710631
#>     Attrib V44    0.5158350504825358
#>     Attrib V45    0.22182928059788337
#>     Attrib V46    -0.027318305755525706
#>     Attrib V47    -0.23069717036232545
#>     Attrib V48    0.11218507633388294
#>     Attrib V49    0.29938209361664
#>     Attrib V5    0.008833144743082787
#>     Attrib V50    -0.3498094655282981
#>     Attrib V51    -0.05416253727107708
#>     Attrib V52    0.08818217409873783
#>     Attrib V53    0.4147511513860782
#>     Attrib V54    0.2974667685507531
#>     Attrib V55    -0.47650464169868306
#>     Attrib V56    0.5552870247951732
#>     Attrib V57    0.20506961662601483
#>     Attrib V58    0.3151683365743119
#>     Attrib V59    0.5542278420533567
#>     Attrib V6    -0.13798578307732115
#>     Attrib V60    0.6436443758324012
#>     Attrib V7    -0.01920916458347723
#>     Attrib V8    -0.4939025809961341
#>     Attrib V9    0.16385468554441956
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.6812755526242118
#>     Attrib V1    0.6978530094935579
#>     Attrib V10    -1.4701406428755388
#>     Attrib V11    -1.4010493261164139
#>     Attrib V12    -1.032166957000807
#>     Attrib V13    -0.17046854430121466
#>     Attrib V14    0.7307835824590255
#>     Attrib V15    0.34886934883062626
#>     Attrib V16    0.6165975698737787
#>     Attrib V17    0.5239577676716267
#>     Attrib V18    0.5215908464865676
#>     Attrib V19    0.20024855350048293
#>     Attrib V2    0.19351585001777255
#>     Attrib V20    0.24321376807993736
#>     Attrib V21    -0.7393934164868694
#>     Attrib V22    -0.8554395253407419
#>     Attrib V23    -0.8377594428171449
#>     Attrib V24    -0.6438875383659715
#>     Attrib V25    0.2886883052413935
#>     Attrib V26    -0.37098194211681096
#>     Attrib V27    -0.29303404104068737
#>     Attrib V28    -1.3606216414319106
#>     Attrib V29    -0.8286011345871958
#>     Attrib V3    0.48572917346150907
#>     Attrib V30    -1.1696185829680312
#>     Attrib V31    0.6330850570360405
#>     Attrib V32    0.47140730315900736
#>     Attrib V33    0.39748365967485233
#>     Attrib V34    0.17283608163519795
#>     Attrib V35    -0.3100984550776222
#>     Attrib V36    1.01978988818885
#>     Attrib V37    0.43525633171123984
#>     Attrib V38    0.570420887371221
#>     Attrib V39    0.5357332725902265
#>     Attrib V4    -0.46008842405956857
#>     Attrib V40    0.4577185436295643
#>     Attrib V41    -0.6500335038900699
#>     Attrib V42    -0.11693704114218188
#>     Attrib V43    -0.3660479157390696
#>     Attrib V44    -0.8017309716104528
#>     Attrib V45    -0.4542626916719775
#>     Attrib V46    -0.872570238387176
#>     Attrib V47    -1.0766053806756433
#>     Attrib V48    -0.8737343185383812
#>     Attrib V49    -1.1393450152461713
#>     Attrib V5    -1.249201699001394
#>     Attrib V50    0.6046938806361153
#>     Attrib V51    -1.258884652034635
#>     Attrib V52    -0.7194807796217934
#>     Attrib V53    0.08949972981894713
#>     Attrib V54    0.0797426183954593
#>     Attrib V55    0.7939043964057642
#>     Attrib V56    0.9900106481921457
#>     Attrib V57    0.05689322876134186
#>     Attrib V58    -1.1181596649336019
#>     Attrib V59    0.5145886088734196
#>     Attrib V6    -0.27715196001202724
#>     Attrib V60    0.31017218151578924
#>     Attrib V7    0.37709526936882587
#>     Attrib V8    -0.22179168718372688
#>     Attrib V9    -1.254107427978802
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.22417679124306072
#>     Attrib V1    0.04778818586654786
#>     Attrib V10    -0.047641684528913195
#>     Attrib V11    -0.1682332461127616
#>     Attrib V12    0.27128438395564847
#>     Attrib V13    -0.09327087250554937
#>     Attrib V14    -0.3093848575308414
#>     Attrib V15    -0.09214534954099622
#>     Attrib V16    0.0981944232033711
#>     Attrib V17    0.25550002260696886
#>     Attrib V18    0.09190505328215626
#>     Attrib V19    0.1365431825973048
#>     Attrib V2    0.1002821921556199
#>     Attrib V20    0.36747121822913725
#>     Attrib V21    0.7661404444876606
#>     Attrib V22    0.43490628384095076
#>     Attrib V23    -0.03771139780577669
#>     Attrib V24    0.033194867273782284
#>     Attrib V25    -0.20997570472223412
#>     Attrib V26    -0.5222460957851764
#>     Attrib V27    -0.7638195634155495
#>     Attrib V28    -0.36943872834791047
#>     Attrib V29    -0.9491153172458744
#>     Attrib V3    0.170602158363194
#>     Attrib V30    0.37012618141586084
#>     Attrib V31    -0.7569510660866362
#>     Attrib V32    -0.3795700208985971
#>     Attrib V33    0.3311922840608491
#>     Attrib V34    0.07874179402417679
#>     Attrib V35    -0.25724989796785874
#>     Attrib V36    -0.7825899226583715
#>     Attrib V37    -0.7684568931508754
#>     Attrib V38    0.18397877065935064
#>     Attrib V39    0.26841455159426425
#>     Attrib V4    0.09821936923762044
#>     Attrib V40    -0.061799760560322346
#>     Attrib V41    -0.053486295766864554
#>     Attrib V42    0.31237892651251287
#>     Attrib V43    0.29732059906941866
#>     Attrib V44    0.6384744598287962
#>     Attrib V45    0.2287554302843769
#>     Attrib V46    0.0072163015134181895
#>     Attrib V47    -0.27346020645287633
#>     Attrib V48    0.1996414745328043
#>     Attrib V49    0.41799662554347466
#>     Attrib V5    -0.13560638753882262
#>     Attrib V50    -0.495720608258297
#>     Attrib V51    -0.08139142834128657
#>     Attrib V52    0.12707416847004258
#>     Attrib V53    0.4793992878434025
#>     Attrib V54    0.45803230425546704
#>     Attrib V55    -0.6892227209794789
#>     Attrib V56    0.7291326257997014
#>     Attrib V57    0.17413264570480536
#>     Attrib V58    0.4220108237788092
#>     Attrib V59    0.6145211716131729
#>     Attrib V6    -0.140752323576448
#>     Attrib V60    0.8447960324713043
#>     Attrib V7    0.0634309685539784
#>     Attrib V8    -0.44524230527256564
#>     Attrib V9    0.4094080590948929
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.30498175728692817
#>     Attrib V1    -0.5196987863598934
#>     Attrib V10    0.4739058244395642
#>     Attrib V11    0.5822882776594817
#>     Attrib V12    0.5387579900163779
#>     Attrib V13    0.061779443109378454
#>     Attrib V14    -0.6770897861095545
#>     Attrib V15    -0.45194862182063705
#>     Attrib V16    -0.12448311335529678
#>     Attrib V17    0.2666749910316129
#>     Attrib V18    -0.01990431994628653
#>     Attrib V19    0.28967639401103457
#>     Attrib V2    -0.04789632286966925
#>     Attrib V20    0.5138474010693821
#>     Attrib V21    1.1606157918318567
#>     Attrib V22    1.130135845023241
#>     Attrib V23    0.8553352816509199
#>     Attrib V24    0.6601615598956753
#>     Attrib V25    0.22164483589298398
#>     Attrib V26    0.1381807780827306
#>     Attrib V27    -0.4868843301947768
#>     Attrib V28    0.3026089751495788
#>     Attrib V29    -0.507166608698072
#>     Attrib V3    -0.12813292349071448
#>     Attrib V30    0.9538759800991952
#>     Attrib V31    -1.1505935037068296
#>     Attrib V32    -0.7187654888830047
#>     Attrib V33    0.2033543534689255
#>     Attrib V34    0.18255866694131398
#>     Attrib V35    0.2148016126219702
#>     Attrib V36    -0.46980843502332437
#>     Attrib V37    -0.29722415188546636
#>     Attrib V38    0.5897857172670875
#>     Attrib V39    0.2881330304671972
#>     Attrib V4    -0.14151583219765487
#>     Attrib V40    -0.1178969147009918
#>     Attrib V41    -0.13178503672706943
#>     Attrib V42    0.04839465681702601
#>     Attrib V43    0.43613060678089893
#>     Attrib V44    1.4130925082491275
#>     Attrib V45    0.7306427569442921
#>     Attrib V46    0.3416040416590156
#>     Attrib V47    -0.036944808169342286
#>     Attrib V48    0.3070967544379405
#>     Attrib V49    0.9320573574187847
#>     Attrib V5    -0.1358883093413947
#>     Attrib V50    -0.8086672332870772
#>     Attrib V51    0.31505189609317846
#>     Attrib V52    0.5326662030341474
#>     Attrib V53    0.34993253929464274
#>     Attrib V54    0.704909060428745
#>     Attrib V55    -0.7753953877887695
#>     Attrib V56    0.5843423949475406
#>     Attrib V57    0.01018201628559533
#>     Attrib V58    0.8277837182901135
#>     Attrib V59    0.2963940186582595
#>     Attrib V6    -0.47513316390282956
#>     Attrib V60    0.38248045675913817
#>     Attrib V7    -0.3107468116445628
#>     Attrib V8    -0.5207575216340968
#>     Attrib V9    0.9048943878537989
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.203298502134215
#>     Attrib V1    -0.00790212732064735
#>     Attrib V10    -0.0778752128196241
#>     Attrib V11    -0.044645200404642676
#>     Attrib V12    0.2846962645122508
#>     Attrib V13    0.05709317786896542
#>     Attrib V14    -0.21968635314024768
#>     Attrib V15    -0.0673032898672792
#>     Attrib V16    0.024902167887047327
#>     Attrib V17    0.16090788279888782
#>     Attrib V18    0.01589766434670832
#>     Attrib V19    0.1388632819544933
#>     Attrib V2    0.04121439771380584
#>     Attrib V20    0.21840910331130226
#>     Attrib V21    0.49150584795602226
#>     Attrib V22    0.2857159708887666
#>     Attrib V23    -0.08600994349859024
#>     Attrib V24    -0.007146675040798811
#>     Attrib V25    -0.14931189980578333
#>     Attrib V26    -0.2759641459818287
#>     Attrib V27    -0.4886725175344144
#>     Attrib V28    -0.17122194809032562
#>     Attrib V29    -0.5019677515728594
#>     Attrib V3    0.08910628064462778
#>     Attrib V30    0.21622189963642025
#>     Attrib V31    -0.5839666299846342
#>     Attrib V32    -0.36410021093857725
#>     Attrib V33    0.10825909716417018
#>     Attrib V34    0.08912960906830837
#>     Attrib V35    0.004250312298035418
#>     Attrib V36    -0.246000242533818
#>     Attrib V37    -0.17013042335691228
#>     Attrib V38    0.3800709171631395
#>     Attrib V39    0.31150832531590766
#>     Attrib V4    0.07960621729133571
#>     Attrib V40    0.014939223381906867
#>     Attrib V41    -0.07442659292985279
#>     Attrib V42    0.01693838414509236
#>     Attrib V43    0.16657182967657272
#>     Attrib V44    0.5193691675954328
#>     Attrib V45    0.216782861952126
#>     Attrib V46    0.1051987746545409
#>     Attrib V47    -0.10264908617296462
#>     Attrib V48    0.15802044473318294
#>     Attrib V49    0.265555324741741
#>     Attrib V5    -0.03336341436814764
#>     Attrib V50    -0.4019410660312355
#>     Attrib V51    -0.04186277406317001
#>     Attrib V52    0.08464132860561252
#>     Attrib V53    0.34909956855811003
#>     Attrib V54    0.3809820946160744
#>     Attrib V55    -0.4111663002404113
#>     Attrib V56    0.38042622487506567
#>     Attrib V57    0.1762380694291254
#>     Attrib V58    0.24406473251744903
#>     Attrib V59    0.4511224322850883
#>     Attrib V6    -0.1651649112412284
#>     Attrib V60    0.6343180533616298
#>     Attrib V7    -0.08580865309443891
#>     Attrib V8    -0.5472078046185045
#>     Attrib V9    0.15035049795776864
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.33778323715099284
#>     Attrib V1    -0.5959104962022824
#>     Attrib V10    1.0129585610240397
#>     Attrib V11    1.0892607702491761
#>     Attrib V12    1.1864527221297823
#>     Attrib V13    0.4975412718548626
#>     Attrib V14    -0.4912528938058206
#>     Attrib V15    -0.510336261789818
#>     Attrib V16    -0.4305780352682072
#>     Attrib V17    -0.013931279062215031
#>     Attrib V18    -0.1637319159416662
#>     Attrib V19    0.1232834464977647
#>     Attrib V2    -0.03153696597062286
#>     Attrib V20    0.0024115371867125006
#>     Attrib V21    0.508543246817297
#>     Attrib V22    0.5447752822976007
#>     Attrib V23    0.12732108303579096
#>     Attrib V24    0.23508576399184747
#>     Attrib V25    0.30292406626984675
#>     Attrib V26    0.6454727711311342
#>     Attrib V27    0.15391210830817773
#>     Attrib V28    1.0107972790075637
#>     Attrib V29    0.1533628375651833
#>     Attrib V3    -0.42141133387578167
#>     Attrib V30    1.2079895373850635
#>     Attrib V31    -0.6289371492332674
#>     Attrib V32    -0.524311523454785
#>     Attrib V33    -0.0677581396943098
#>     Attrib V34    -0.22780192558863474
#>     Attrib V35    -0.44516484966621805
#>     Attrib V36    -1.169985035350071
#>     Attrib V37    -0.6455268315414355
#>     Attrib V38    0.10586737027186408
#>     Attrib V39    0.07433456757714028
#>     Attrib V4    0.0759539218113241
#>     Attrib V40    -0.35524646431925955
#>     Attrib V41    -0.1235010981734158
#>     Attrib V42    0.3168480087775615
#>     Attrib V43    0.19237925795402933
#>     Attrib V44    0.6081479406962553
#>     Attrib V45    0.45116084255088174
#>     Attrib V46    0.4236507227230751
#>     Attrib V47    0.4049979258052412
#>     Attrib V48    0.6799391571769542
#>     Attrib V49    1.0217214161723862
#>     Attrib V5    0.12577394535582276
#>     Attrib V50    -0.8206083142720729
#>     Attrib V51    0.5774847643636731
#>     Attrib V52    0.47356240474258615
#>     Attrib V53    -0.18186145922067748
#>     Attrib V54    0.24835057494269813
#>     Attrib V55    -0.9287772080328637
#>     Attrib V56    -0.054134537269950475
#>     Attrib V57    -0.42583668948585696
#>     Attrib V58    0.5607982088392018
#>     Attrib V59    -0.667369298836677
#>     Attrib V6    -0.3315931176308022
#>     Attrib V60    0.048789843462143455
#>     Attrib V7    -0.46914217647694373
#>     Attrib V8    -0.11670429060196087
#>     Attrib V9    0.9956104561821848
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.737523783669918
#>     Attrib V1    0.46111795598966265
#>     Attrib V10    -1.111423759837799
#>     Attrib V11    -1.0504705451681111
#>     Attrib V12    -1.0694959238511437
#>     Attrib V13    -0.18812780613473176
#>     Attrib V14    0.7954157945957879
#>     Attrib V15    0.47636277650952075
#>     Attrib V16    0.8993974659033386
#>     Attrib V17    0.837792452815212
#>     Attrib V18    1.0456025417330825
#>     Attrib V19    0.6843901927914201
#>     Attrib V2    0.27847281331482926
#>     Attrib V20    0.7091155844818255
#>     Attrib V21    0.14880770542905136
#>     Attrib V22    -0.07858156994535831
#>     Attrib V23    -0.05114191824575906
#>     Attrib V24    -0.4077592218600966
#>     Attrib V25    0.027587511170667323
#>     Attrib V26    -0.35344119436969534
#>     Attrib V27    -0.15504308684763898
#>     Attrib V28    -0.8016548699047212
#>     Attrib V29    -0.12319703915416827
#>     Attrib V3    0.37294549611856226
#>     Attrib V30    -0.5226277307124614
#>     Attrib V31    0.39630238469565515
#>     Attrib V32    0.1367907277806477
#>     Attrib V33    0.09427184181474772
#>     Attrib V34    -0.28870814665996714
#>     Attrib V35    -0.717628326698005
#>     Attrib V36    0.44484559142231717
#>     Attrib V37    0.03651053292914361
#>     Attrib V38    0.2541161730945848
#>     Attrib V39    0.28636498020742873
#>     Attrib V4    -0.23358098991409434
#>     Attrib V40    0.26677754608515425
#>     Attrib V41    -0.4855624306053344
#>     Attrib V42    -0.0754823271137461
#>     Attrib V43    -0.08178554826112398
#>     Attrib V44    -0.24020684976579815
#>     Attrib V45    -0.16364764566949344
#>     Attrib V46    -0.7688797123430615
#>     Attrib V47    -0.766714434532042
#>     Attrib V48    -0.6535464551299773
#>     Attrib V49    -0.6247706223613624
#>     Attrib V5    -1.0463276001216926
#>     Attrib V50    0.6069902248845054
#>     Attrib V51    -0.9157956399226321
#>     Attrib V52    -0.32836204648503275
#>     Attrib V53    0.14900122268289287
#>     Attrib V54    -0.38615299139660186
#>     Attrib V55    0.4339346731478243
#>     Attrib V56    0.7025373773090974
#>     Attrib V57    0.06809745275919256
#>     Attrib V58    -0.7253223363240374
#>     Attrib V59    0.18411245798709402
#>     Attrib V6    -0.18438312779778201
#>     Attrib V60    -0.3812110539117526
#>     Attrib V7    0.21799793997240544
#>     Attrib V8    0.19103350497153504
#>     Attrib V9    -0.9216909490333033
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.11618426882622512
#>     Attrib V1    -0.03033149151066521
#>     Attrib V10    -0.09603328962437778
#>     Attrib V11    -0.07048764703673649
#>     Attrib V12    0.2957614367659976
#>     Attrib V13    -0.015008743296734505
#>     Attrib V14    -0.1904933842240738
#>     Attrib V15    -0.0936099461934353
#>     Attrib V16    -0.028028851201578282
#>     Attrib V17    0.18399090532724852
#>     Attrib V18    0.06394550361856563
#>     Attrib V19    0.09781970707912858
#>     Attrib V2    -0.022791292554146893
#>     Attrib V20    0.25287665650707186
#>     Attrib V21    0.38344482335496893
#>     Attrib V22    0.20280472650489204
#>     Attrib V23    -0.10561074107860727
#>     Attrib V24    -0.034423290316265
#>     Attrib V25    -0.08666383342383058
#>     Attrib V26    -0.30226099983111365
#>     Attrib V27    -0.45406449759499057
#>     Attrib V28    -0.19134123810045667
#>     Attrib V29    -0.5742442710545672
#>     Attrib V3    0.03273913797960933
#>     Attrib V30    0.1336132923441191
#>     Attrib V31    -0.579284258558015
#>     Attrib V32    -0.3581565786961996
#>     Attrib V33    0.09209573812611924
#>     Attrib V34    0.14620541591334965
#>     Attrib V35    0.08884792211842986
#>     Attrib V36    -0.1869965213132018
#>     Attrib V37    -0.139946188193003
#>     Attrib V38    0.36481940254993583
#>     Attrib V39    0.2799895867897149
#>     Attrib V4    -0.008339539535726005
#>     Attrib V40    0.019124485078397892
#>     Attrib V41    -0.11029188486868964
#>     Attrib V42    0.08117843591365598
#>     Attrib V43    0.15820074246048493
#>     Attrib V44    0.46525532509312784
#>     Attrib V45    0.23616893285093574
#>     Attrib V46    0.061034626553805364
#>     Attrib V47    -0.07933974442076001
#>     Attrib V48    0.14680150622577295
#>     Attrib V49    0.1951080119052228
#>     Attrib V5    -0.016937924134498735
#>     Attrib V50    -0.3173946737142107
#>     Attrib V51    0.026371325052394763
#>     Attrib V52    0.04445591835678673
#>     Attrib V53    0.2645178323039364
#>     Attrib V54    0.39260920029119134
#>     Attrib V55    -0.3377594353729793
#>     Attrib V56    0.3986359312614369
#>     Attrib V57    0.13442779035252217
#>     Attrib V58    0.24696610824895526
#>     Attrib V59    0.34072241595488284
#>     Attrib V6    -0.11851404820923776
#>     Attrib V60    0.560593603058865
#>     Attrib V7    -0.11264898859618683
#>     Attrib V8    -0.4565054488393056
#>     Attrib V9    0.14318515906956442
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.2178579070972321
#>     Attrib V1    -0.1781205801253467
#>     Attrib V10    0.07391268688782614
#>     Attrib V11    -0.04007009872028132
#>     Attrib V12    0.23568345867683152
#>     Attrib V13    -0.15445385609357182
#>     Attrib V14    -0.4595474442286362
#>     Attrib V15    -0.23366091796122476
#>     Attrib V16    0.07163255583888944
#>     Attrib V17    0.35116536358595796
#>     Attrib V18    0.0810964937152363
#>     Attrib V19    0.25601166793961316
#>     Attrib V2    -0.011253719533426763
#>     Attrib V20    0.32557496284472387
#>     Attrib V21    0.7336223342201488
#>     Attrib V22    0.5619688724062217
#>     Attrib V23    0.10343056944957689
#>     Attrib V24    0.10519853556504989
#>     Attrib V25    -0.16989076008020845
#>     Attrib V26    -0.48386009192815893
#>     Attrib V27    -0.7859108222523477
#>     Attrib V28    -0.33480724335202816
#>     Attrib V29    -1.0848358144428067
#>     Attrib V3    -0.006427791882495394
#>     Attrib V30    0.46087726342196156
#>     Attrib V31    -0.8592132747297385
#>     Attrib V32    -0.45483657755872936
#>     Attrib V33    0.4251677606009455
#>     Attrib V34    0.20013914886371825
#>     Attrib V35    -0.20331643228635152
#>     Attrib V36    -0.794775255425424
#>     Attrib V37    -0.8958324076238534
#>     Attrib V38    0.22085210373046874
#>     Attrib V39    0.22546625517681204
#>     Attrib V4    0.019023866119637745
#>     Attrib V40    -0.05892716635137191
#>     Attrib V41    -0.19196089473554465
#>     Attrib V42    0.20527778094482052
#>     Attrib V43    0.3914348192798443
#>     Attrib V44    0.8166931694585445
#>     Attrib V45    0.33671216698812256
#>     Attrib V46    0.09600252446446036
#>     Attrib V47    -0.22185387359573489
#>     Attrib V48    0.3720185018113927
#>     Attrib V49    0.5294887138023235
#>     Attrib V5    -0.1889825024417271
#>     Attrib V50    -0.6485818602331269
#>     Attrib V51    -0.004870186585752653
#>     Attrib V52    0.2379540454973848
#>     Attrib V53    0.4643132536310414
#>     Attrib V54    0.5105935679760482
#>     Attrib V55    -0.7879726375509607
#>     Attrib V56    0.796876935422689
#>     Attrib V57    0.16644894544521247
#>     Attrib V58    0.46801555633955794
#>     Attrib V59    0.582881333107712
#>     Attrib V6    -0.2871835997679092
#>     Attrib V60    0.8666065431397765
#>     Attrib V7    0.054741466002875064
#>     Attrib V8    -0.48439861522400735
#>     Attrib V9    0.5438311269467335
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.1322782370968053
#>     Attrib V1    0.07001859169993159
#>     Attrib V10    -0.11908746293422925
#>     Attrib V11    -0.11266620577924119
#>     Attrib V12    0.27135573739411323
#>     Attrib V13    0.09951812917060474
#>     Attrib V14    -0.14626588629919882
#>     Attrib V15    -0.0281065534714594
#>     Attrib V16    0.009780089543734927
#>     Attrib V17    0.24872470566448052
#>     Attrib V18    0.09775875095248197
#>     Attrib V19    0.13794406752059046
#>     Attrib V2    0.08432161772928601
#>     Attrib V20    0.34331635086121903
#>     Attrib V21    0.6241807740046117
#>     Attrib V22    0.3379374623805299
#>     Attrib V23    -0.04645628911851473
#>     Attrib V24    -0.02867246255333617
#>     Attrib V25    -0.16681477993465513
#>     Attrib V26    -0.4510578312436571
#>     Attrib V27    -0.5942107735439959
#>     Attrib V28    -0.26025567151893636
#>     Attrib V29    -0.5723970003822952
#>     Attrib V3    0.20430797472994622
#>     Attrib V30    0.2691221477623779
#>     Attrib V31    -0.698249242043769
#>     Attrib V32    -0.4017800360770395
#>     Attrib V33    0.13355741606426605
#>     Attrib V34    0.08924427255454374
#>     Attrib V35    -0.14146740062719088
#>     Attrib V36    -0.45953244888062134
#>     Attrib V37    -0.34674327706433444
#>     Attrib V38    0.3030346255781878
#>     Attrib V39    0.37088205926851486
#>     Attrib V4    0.09976743792339335
#>     Attrib V40    0.0367911667281926
#>     Attrib V41    -0.04162948414733108
#>     Attrib V42    0.1985010682107059
#>     Attrib V43    0.18424132510628632
#>     Attrib V44    0.513150743508817
#>     Attrib V45    0.16805508047226209
#>     Attrib V46    0.06346878214322198
#>     Attrib V47    -0.15425187514437294
#>     Attrib V48    0.1255787212604644
#>     Attrib V49    0.33188236256048154
#>     Attrib V5    -0.02756672011181683
#>     Attrib V50    -0.42509044848295147
#>     Attrib V51    -0.0749227571543374
#>     Attrib V52    0.08295639084026796
#>     Attrib V53    0.4043409184695075
#>     Attrib V54    0.4049656986099808
#>     Attrib V55    -0.48740701610253745
#>     Attrib V56    0.5275231888215436
#>     Attrib V57    0.1776926635430891
#>     Attrib V58    0.32604604718396907
#>     Attrib V59    0.5674749943970948
#>     Attrib V6    -0.10004663758149711
#>     Attrib V60    0.7341966714941659
#>     Attrib V7    0.023693145202374095
#>     Attrib V8    -0.5098792617138345
#>     Attrib V9    0.19400144191273486
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.11610064903182978
#>     Attrib V1    0.0334772693100879
#>     Attrib V10    -0.023179527607900912
#>     Attrib V11    -0.0031011042360421385
#>     Attrib V12    0.42914280724326664
#>     Attrib V13    0.015062194910127858
#>     Attrib V14    -0.3331303737136012
#>     Attrib V15    -0.1322639654805475
#>     Attrib V16    -0.04624767000067707
#>     Attrib V17    0.2585453571087724
#>     Attrib V18    0.06429971293883754
#>     Attrib V19    0.07189328822252339
#>     Attrib V2    0.007832311046245391
#>     Attrib V20    0.2343856822428512
#>     Attrib V21    0.4853749319813702
#>     Attrib V22    0.32421971122366094
#>     Attrib V23    -0.04776719112303396
#>     Attrib V24    0.02497393927385095
#>     Attrib V25    -0.03300234658151987
#>     Attrib V26    -0.27090481969716906
#>     Attrib V27    -0.6908413951014806
#>     Attrib V28    -0.5240160138756416
#>     Attrib V29    -1.1363811376860717
#>     Attrib V3    0.05872508552269374
#>     Attrib V30    0.14740613241830286
#>     Attrib V31    -0.6026149536717686
#>     Attrib V32    -0.333953530031914
#>     Attrib V33    0.2864673677597937
#>     Attrib V34    0.17118659059656344
#>     Attrib V35    0.0047874372324683495
#>     Attrib V36    -0.44531324998387567
#>     Attrib V37    -0.38400648847343605
#>     Attrib V38    0.29056220956672385
#>     Attrib V39    0.33969462964612657
#>     Attrib V4    -0.04347716297321291
#>     Attrib V40    0.026763693571033004
#>     Attrib V41    -0.1809722572086401
#>     Attrib V42    0.06296287699297326
#>     Attrib V43    0.20108472627657095
#>     Attrib V44    0.5612059786929797
#>     Attrib V45    0.1469001014212924
#>     Attrib V46    0.06987743029195632
#>     Attrib V47    -0.22012686605089385
#>     Attrib V48    0.19872333812341078
#>     Attrib V49    0.321514231164632
#>     Attrib V5    -0.1903302352461821
#>     Attrib V50    -0.46751865474115445
#>     Attrib V51    -0.07487478336389798
#>     Attrib V52    0.0996104804579833
#>     Attrib V53    0.33671233367096143
#>     Attrib V54    0.5997450630293176
#>     Attrib V55    -0.44064232100668144
#>     Attrib V56    0.6503788270275241
#>     Attrib V57    0.13977948176766003
#>     Attrib V58    0.32534505813379905
#>     Attrib V59    0.445881764738503
#>     Attrib V6    -0.20407892698539298
#>     Attrib V60    0.8327890635894284
#>     Attrib V7    -0.03663213668887241
#>     Attrib V8    -0.5934385331997057
#>     Attrib V9    0.32341286052727436
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.10996509961482227
#>     Attrib V1    0.8353524403941219
#>     Attrib V10    -1.421732122468166
#>     Attrib V11    -1.2497288109519582
#>     Attrib V12    -0.7133972210506
#>     Attrib V13    0.06132302815640759
#>     Attrib V14    0.6602326256870049
#>     Attrib V15    0.7874165881766458
#>     Attrib V16    0.7107113553471401
#>     Attrib V17    0.3775820744209589
#>     Attrib V18    0.3590549181560957
#>     Attrib V19    0.06712811547993215
#>     Attrib V2    0.32852440209171135
#>     Attrib V20    0.2697531660544278
#>     Attrib V21    -0.5822584937338515
#>     Attrib V22    -0.7343447103810149
#>     Attrib V23    -0.4794010282216844
#>     Attrib V24    -0.363891030925319
#>     Attrib V25    -0.3640190270815608
#>     Attrib V26    -0.8454536254494078
#>     Attrib V27    -0.49123619111705946
#>     Attrib V28    -1.039226820476455
#>     Attrib V29    -0.260237783185616
#>     Attrib V3    0.7190832670878351
#>     Attrib V30    -1.3792466692611243
#>     Attrib V31    0.27536426818861515
#>     Attrib V32    0.20620355301319346
#>     Attrib V33    0.09801209120265794
#>     Attrib V34    0.32238873258342937
#>     Attrib V35    0.20674060543444153
#>     Attrib V36    0.7590941594606827
#>     Attrib V37    0.7177136870761693
#>     Attrib V38    0.288960343780079
#>     Attrib V39    0.1607506899197163
#>     Attrib V4    -0.43210833807881976
#>     Attrib V40    0.42168672340693164
#>     Attrib V41    0.2019708715637328
#>     Attrib V42    -0.043930027735133007
#>     Attrib V43    -0.3392270359329256
#>     Attrib V44    -0.9851045107235037
#>     Attrib V45    -0.446912716239518
#>     Attrib V46    -0.41073217540575485
#>     Attrib V47    -0.7689019600724272
#>     Attrib V48    -1.067353774870909
#>     Attrib V49    -1.283087340349607
#>     Attrib V5    -0.5236304507969074
#>     Attrib V50    0.8278018864918031
#>     Attrib V51    -0.9789206627486491
#>     Attrib V52    -0.6583181962502386
#>     Attrib V53    0.4250018260776959
#>     Attrib V54    -0.017460107972718845
#>     Attrib V55    0.9322152177067983
#>     Attrib V56    0.45349302445963247
#>     Attrib V57    0.20401089039879017
#>     Attrib V58    -0.7671702920165026
#>     Attrib V59    0.4298026747870943
#>     Attrib V6    0.16523958347630133
#>     Attrib V60    -0.06059377515956739
#>     Attrib V7    0.31361940039309905
#>     Attrib V8    -0.28217444025202015
#>     Attrib V9    -1.2846805902398886
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.26987179353188145
#>     Attrib V1    0.0483139295251217
#>     Attrib V10    -0.082047202558126
#>     Attrib V11    -0.14157636595071693
#>     Attrib V12    -0.19794204385427458
#>     Attrib V13    -0.05475021306853527
#>     Attrib V14    0.07953297435315469
#>     Attrib V15    0.05954697660123412
#>     Attrib V16    0.1974183253656667
#>     Attrib V17    0.1941896816142114
#>     Attrib V18    0.2231177470604126
#>     Attrib V19    0.057175769520238826
#>     Attrib V2    0.01946007301307112
#>     Attrib V20    -0.08477465074730833
#>     Attrib V21    -0.16173111190860145
#>     Attrib V22    -0.09192892824777579
#>     Attrib V23    -0.00788359825037094
#>     Attrib V24    -0.02920022468290199
#>     Attrib V25    -0.007643813704526582
#>     Attrib V26    -0.11618050640990782
#>     Attrib V27    -0.08694846950444886
#>     Attrib V28    -0.2034002401735936
#>     Attrib V29    -0.0950034605760141
#>     Attrib V3    0.08240949238430668
#>     Attrib V30    -0.1835077183498652
#>     Attrib V31    0.12540539298463796
#>     Attrib V32    0.1655752545118788
#>     Attrib V33    0.08271408443135977
#>     Attrib V34    0.09439321930614956
#>     Attrib V35    0.09699419568567821
#>     Attrib V36    0.3231985990209954
#>     Attrib V37    0.26362036317316656
#>     Attrib V38    0.008348874376869337
#>     Attrib V39    -0.00521632309270214
#>     Attrib V4    0.06145198495136334
#>     Attrib V40    0.11682262324754647
#>     Attrib V41    0.10842986407087726
#>     Attrib V42    0.0876881843636879
#>     Attrib V43    7.125151903699433E-4
#>     Attrib V44    -0.09369339041286504
#>     Attrib V45    -0.04402794685252859
#>     Attrib V46    -0.05416468051786206
#>     Attrib V47    -0.020648784953403037
#>     Attrib V48    -0.08073674376328376
#>     Attrib V49    -0.1156431165536595
#>     Attrib V5    -0.040648685002966596
#>     Attrib V50    0.22982625094458656
#>     Attrib V51    0.050228393592552295
#>     Attrib V52    0.059845002611484475
#>     Attrib V53    0.05805769297636597
#>     Attrib V54    -0.016057511600120394
#>     Attrib V55    0.18948571815599285
#>     Attrib V56    0.05915878225628268
#>     Attrib V57    0.08228767681958839
#>     Attrib V58    -0.013839995663936155
#>     Attrib V59    -0.03713841183755352
#>     Attrib V6    0.07669584389263431
#>     Attrib V60    -0.013854463931402316
#>     Attrib V7    0.08520907554742542
#>     Attrib V8    0.14609255995153828
#>     Attrib V9    -0.06722032872512655
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.0957915059095935
#>     Attrib V1    0.05468224246456066
#>     Attrib V10    0.0197630929230508
#>     Attrib V11    -0.005665503013175203
#>     Attrib V12    0.014008607555664491
#>     Attrib V13    -0.03541891720578042
#>     Attrib V14    -0.009767686268771603
#>     Attrib V15    0.06544726413132962
#>     Attrib V16    -6.167910331703834E-4
#>     Attrib V17    0.006903834619485879
#>     Attrib V18    -0.03207524830503565
#>     Attrib V19    -0.011739512659788775
#>     Attrib V2    0.095493844129547
#>     Attrib V20    -0.07584271704770404
#>     Attrib V21    -0.07395686438661184
#>     Attrib V22    -0.026090743895574225
#>     Attrib V23    -0.08714230139659003
#>     Attrib V24    -0.011995014583785732
#>     Attrib V25    -0.06256784876098608
#>     Attrib V26    -0.07575754310055842
#>     Attrib V27    -0.05387946381796719
#>     Attrib V28    -0.048754241239959285
#>     Attrib V29    -0.14062424198421775
#>     Attrib V3    0.04013323089556684
#>     Attrib V30    -0.02837998695780386
#>     Attrib V31    -0.01172313540597538
#>     Attrib V32    -0.062421245699163734
#>     Attrib V33    0.054052155242688575
#>     Attrib V34    0.01775786710849861
#>     Attrib V35    0.13340588031242542
#>     Attrib V36    0.043498563978108355
#>     Attrib V37    0.067261182073451
#>     Attrib V38    0.125130213854071
#>     Attrib V39    0.10622029485310681
#>     Attrib V4    0.04201962782796947
#>     Attrib V40    0.05018946451676862
#>     Attrib V41    0.09099638781879521
#>     Attrib V42    0.04606133274500336
#>     Attrib V43    0.08385039567456139
#>     Attrib V44    0.05862185030627981
#>     Attrib V45    0.06502493207082558
#>     Attrib V46    0.03423405352979771
#>     Attrib V47    0.019301070182433527
#>     Attrib V48    0.08495991350722717
#>     Attrib V49    -0.005472329610886157
#>     Attrib V5    0.06611728761458009
#>     Attrib V50    0.021387781541733677
#>     Attrib V51    0.0658219757631354
#>     Attrib V52    0.043622537024756214
#>     Attrib V53    0.053156618332728375
#>     Attrib V54    0.07077279420744907
#>     Attrib V55    0.08650772401946948
#>     Attrib V56    0.09927007902752384
#>     Attrib V57    0.12226715596933788
#>     Attrib V58    0.02593533205982762
#>     Attrib V59    0.025685924838737124
#>     Attrib V6    0.04477057478665765
#>     Attrib V60    0.15971799264979583
#>     Attrib V7    -0.028971495947673995
#>     Attrib V8    -0.006810671426537525
#>     Attrib V9    0.008245360327585334
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.06704926436217605
#>     Attrib V1    0.06049727404931966
#>     Attrib V10    -0.0029775441432271254
#>     Attrib V11    -0.00453847796572411
#>     Attrib V12    0.1605561315728441
#>     Attrib V13    0.02526962838627168
#>     Attrib V14    -0.04190233675670984
#>     Attrib V15    -0.04860083139312955
#>     Attrib V16    -0.060792266367823165
#>     Attrib V17    -0.05913260858674461
#>     Attrib V18    -0.03837818388251322
#>     Attrib V19    -0.08511923289732945
#>     Attrib V2    0.03958277008697533
#>     Attrib V20    0.008544614601645914
#>     Attrib V21    0.10932999439812868
#>     Attrib V22    -0.020827425839348972
#>     Attrib V23    -0.1622984828144469
#>     Attrib V24    -0.10428196795968436
#>     Attrib V25    -0.07159126249926943
#>     Attrib V26    -0.08904324990685837
#>     Attrib V27    -0.1532671865293848
#>     Attrib V28    -0.0591371246368146
#>     Attrib V29    -0.20444683836591254
#>     Attrib V3    0.11200451844425356
#>     Attrib V30    -0.011477642385203433
#>     Attrib V31    -0.2543764852832357
#>     Attrib V32    -0.1682730418385291
#>     Attrib V33    -0.005163803350114837
#>     Attrib V34    0.07571032732034282
#>     Attrib V35    0.06722505391472601
#>     Attrib V36    0.028631883780565817
#>     Attrib V37    0.02971465179789559
#>     Attrib V38    0.1692114198212281
#>     Attrib V39    0.20671383103817445
#>     Attrib V4    0.04507288642633542
#>     Attrib V40    0.028082099194608634
#>     Attrib V41    -0.012405956290420574
#>     Attrib V42    0.04309210096725604
#>     Attrib V43    0.06441230916866272
#>     Attrib V44    0.19620102868843306
#>     Attrib V45    0.05317640986675571
#>     Attrib V46    0.08291743212804652
#>     Attrib V47    0.08060727509760174
#>     Attrib V48    0.12126501954361311
#>     Attrib V49    0.13497836986797315
#>     Attrib V5    0.08084181985605896
#>     Attrib V50    -0.13727934762798422
#>     Attrib V51    0.11657471035002363
#>     Attrib V52    0.06029728878796931
#>     Attrib V53    0.16439401768792938
#>     Attrib V54    0.15035928527266051
#>     Attrib V55    -0.05144504047688609
#>     Attrib V56    0.19438327407870687
#>     Attrib V57    0.08116776435189159
#>     Attrib V58    0.15728447328184994
#>     Attrib V59    0.2536840057182112
#>     Attrib V6    -0.049777484985502524
#>     Attrib V60    0.4050393137155755
#>     Attrib V7    -0.0012045198237340966
#>     Attrib V8    -0.1827698133237872
#>     Attrib V9    0.053875057932160374
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.18349979360967825
#>     Attrib V1    -0.19299009491783875
#>     Attrib V10    0.13383547213631483
#>     Attrib V11    -0.02201282213957698
#>     Attrib V12    0.41653354688025557
#>     Attrib V13    -0.06275776972074842
#>     Attrib V14    -0.4452320803591058
#>     Attrib V15    -0.1892790909868468
#>     Attrib V16    -0.010143515621368641
#>     Attrib V17    0.3257432980206147
#>     Attrib V18    0.08310054187325965
#>     Attrib V19    0.22286696959789634
#>     Attrib V2    -0.05308230736351171
#>     Attrib V20    0.27663849321147777
#>     Attrib V21    0.665633826079408
#>     Attrib V22    0.5761455916819506
#>     Attrib V23    0.15124004120887066
#>     Attrib V24    0.2500085647131031
#>     Attrib V25    0.04252406591425255
#>     Attrib V26    -0.3335183332374561
#>     Attrib V27    -0.7596499848397285
#>     Attrib V28    -0.31881505760178747
#>     Attrib V29    -1.106124521377171
#>     Attrib V3    -0.01793991858216576
#>     Attrib V30    0.41893156461061287
#>     Attrib V31    -0.7600771568341512
#>     Attrib V32    -0.40157905287157364
#>     Attrib V33    0.40610138666120105
#>     Attrib V34    0.17186840586608348
#>     Attrib V35    -0.1295911961215236
#>     Attrib V36    -0.7628059797436694
#>     Attrib V37    -0.8766605349398846
#>     Attrib V38    0.1369704856656465
#>     Attrib V39    0.16172777364982585
#>     Attrib V4    0.03707645464696564
#>     Attrib V40    -0.07777886699697292
#>     Attrib V41    -0.1587316877553653
#>     Attrib V42    0.22059979999295612
#>     Attrib V43    0.3008103049948532
#>     Attrib V44    0.7575385418704329
#>     Attrib V45    0.3496969354613732
#>     Attrib V46    0.07504168039740562
#>     Attrib V47    -0.23290858620105231
#>     Attrib V48    0.33108706044341585
#>     Attrib V49    0.6196220513945637
#>     Attrib V5    -0.13091532608461018
#>     Attrib V50    -0.6520372799096277
#>     Attrib V51    0.01686554013866983
#>     Attrib V52    0.27746873231611024
#>     Attrib V53    0.47118210048891845
#>     Attrib V54    0.5998352669872028
#>     Attrib V55    -0.670095691381242
#>     Attrib V56    0.6760018877746022
#>     Attrib V57    0.07733417083212991
#>     Attrib V58    0.5147124096247977
#>     Attrib V59    0.5012066698930265
#>     Attrib V6    -0.21013946513216533
#>     Attrib V60    0.8434082224180034
#>     Attrib V7    0.0874257531618811
#>     Attrib V8    -0.5017217471786719
#>     Attrib V9    0.5291214564239193
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.3396387299483898
#>     Attrib V1    -0.4096125121108742
#>     Attrib V10    0.26782985106138973
#>     Attrib V11    0.13070691970261214
#>     Attrib V12    0.4464629182341835
#>     Attrib V13    -0.11422213810481825
#>     Attrib V14    -0.6286909117836605
#>     Attrib V15    -0.3611412341277842
#>     Attrib V16    -0.08745211999166017
#>     Attrib V17    0.33414306119000564
#>     Attrib V18    0.05737853316366692
#>     Attrib V19    0.28696359031092505
#>     Attrib V2    -0.20275255854674779
#>     Attrib V20    0.34426135662412227
#>     Attrib V21    0.9028518417759724
#>     Attrib V22    0.8360538836576735
#>     Attrib V23    0.364095485534338
#>     Attrib V24    0.33963475647980723
#>     Attrib V25    0.05478167058375159
#>     Attrib V26    -0.15960607080666683
#>     Attrib V27    -0.6019787961863774
#>     Attrib V28    -0.0038480086083242525
#>     Attrib V29    -0.8588995909721543
#>     Attrib V3    -0.20021221575900408
#>     Attrib V30    0.7670261778199504
#>     Attrib V31    -1.0864337908830883
#>     Attrib V32    -0.6931959658016382
#>     Attrib V33    0.2724311618940802
#>     Attrib V34    0.1902029721670304
#>     Attrib V35    0.06528785339011985
#>     Attrib V36    -0.5065003155179202
#>     Attrib V37    -0.5474377236327064
#>     Attrib V38    0.45838175966516376
#>     Attrib V39    0.28096496555783357
#>     Attrib V4    -0.09845378569351147
#>     Attrib V40    -0.144357878707672
#>     Attrib V41    -0.22809700049441853
#>     Attrib V42    0.046238598601544396
#>     Attrib V43    0.4568781231033646
#>     Attrib V44    1.31191233778107
#>     Attrib V45    0.6052544627396103
#>     Attrib V46    0.16788409293307527
#>     Attrib V47    -0.1753102980370644
#>     Attrib V48    0.4496412430282405
#>     Attrib V49    0.8121024447891003
#>     Attrib V5    -0.11929021653631001
#>     Attrib V50    -0.7906556260756458
#>     Attrib V51    0.18073635578488761
#>     Attrib V52    0.3360209653260123
#>     Attrib V53    0.4292124026278307
#>     Attrib V54    0.6193694129315362
#>     Attrib V55    -0.8497210658811878
#>     Attrib V56    0.7068739992124968
#>     Attrib V57    0.023891003506311428
#>     Attrib V58    0.6216148615057808
#>     Attrib V59    0.5708699796015042
#>     Attrib V6    -0.3469205280548805
#>     Attrib V60    0.8347361363424204
#>     Attrib V7    -0.060209242403519624
#>     Attrib V8    -0.667383023197142
#>     Attrib V9    0.6429586494459395
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.3492810998928209
#>     Attrib V1    0.4565587486189147
#>     Attrib V10    -0.8952564510052798
#>     Attrib V11    -0.9083660788080791
#>     Attrib V12    -0.8368361318653521
#>     Attrib V13    -0.26810375466098507
#>     Attrib V14    0.5047228527304684
#>     Attrib V15    0.41252889729498804
#>     Attrib V16    0.4786385384323302
#>     Attrib V17    0.2376061117258908
#>     Attrib V18    0.31036488373619103
#>     Attrib V19    0.13474443022630836
#>     Attrib V2    0.09917622984167067
#>     Attrib V20    0.2232078463568481
#>     Attrib V21    -0.24055819733721975
#>     Attrib V22    -0.46452976438430565
#>     Attrib V23    -0.3890522434971007
#>     Attrib V24    -0.34405035480454393
#>     Attrib V25    0.011097050048712271
#>     Attrib V26    -0.2433506746006921
#>     Attrib V27    -0.07220306231751783
#>     Attrib V28    -0.8067591558041916
#>     Attrib V29    -0.11282687207994088
#>     Attrib V3    0.2968309881920916
#>     Attrib V30    -0.8046732090170049
#>     Attrib V31    0.47272668608086416
#>     Attrib V32    0.22828696687290514
#>     Attrib V33    -0.03554842137411634
#>     Attrib V34    0.06580343220640694
#>     Attrib V35    -0.02210122774138997
#>     Attrib V36    0.8059775981616742
#>     Attrib V37    0.43489518815106093
#>     Attrib V38    0.08935747040692407
#>     Attrib V39    0.12791516100349146
#>     Attrib V4    -0.04621909805450145
#>     Attrib V40    0.30450017339953434
#>     Attrib V41    -0.13531674803351734
#>     Attrib V42    -0.23754468418876382
#>     Attrib V43    -0.22372357046327557
#>     Attrib V44    -0.47732468653124843
#>     Attrib V45    -0.28591362963595096
#>     Attrib V46    -0.4679339043367021
#>     Attrib V47    -0.49062411825712804
#>     Attrib V48    -0.5127457745409157
#>     Attrib V49    -0.7448944043594212
#>     Attrib V5    -0.46629751040716894
#>     Attrib V50    0.5653438306233847
#>     Attrib V51    -0.6763856826767749
#>     Attrib V52    -0.4504611357350986
#>     Attrib V53    0.02091636027076856
#>     Attrib V54    -0.21839384121401548
#>     Attrib V55    0.6075353391432462
#>     Attrib V56    0.2598815943649537
#>     Attrib V57    0.23283507774483156
#>     Attrib V58    -0.683031418787523
#>     Attrib V59    0.38751528307773125
#>     Attrib V6    -0.030891611552551053
#>     Attrib V60    -0.04490039057288312
#>     Attrib V7    0.33406338998965746
#>     Attrib V8    0.007298602334639313
#>     Attrib V9    -0.8926223710436286
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.01635953904950285
#>     Attrib V1    0.15411662046900126
#>     Attrib V10    -0.01149553554155467
#>     Attrib V11    -0.007355686440517993
#>     Attrib V12    0.21259237028467712
#>     Attrib V13    0.03096892360089665
#>     Attrib V14    0.004406240207272166
#>     Attrib V15    -0.023155417970885436
#>     Attrib V16    0.005830359744704939
#>     Attrib V17    7.22451429730018E-4
#>     Attrib V18    -0.08439435674288162
#>     Attrib V19    -0.053355904589
#>     Attrib V2    0.07889245548995188
#>     Attrib V20    0.04876209892562035
#>     Attrib V21    0.12085232395878293
#>     Attrib V22    -0.0574919173184299
#>     Attrib V23    -0.29418942584416297
#>     Attrib V24    -0.11820639025197678
#>     Attrib V25    -0.17034021666000343
#>     Attrib V26    -0.22411884712718896
#>     Attrib V27    -0.2859129247190517
#>     Attrib V28    -0.18212559164056322
#>     Attrib V29    -0.24899719117655733
#>     Attrib V3    0.08071051368178181
#>     Attrib V30    0.002212476399775993
#>     Attrib V31    -0.24899497161489853
#>     Attrib V32    -0.18818340174868392
#>     Attrib V33    -0.03690312436196567
#>     Attrib V34    0.02134761897994004
#>     Attrib V35    0.05579564971372579
#>     Attrib V36    -0.06816776792978697
#>     Attrib V37    0.009890184707223476
#>     Attrib V38    0.17909401582249762
#>     Attrib V39    0.17662920737513163
#>     Attrib V4    0.12979612154251594
#>     Attrib V40    0.0675681636003352
#>     Attrib V41    -0.030819292730396616
#>     Attrib V42    0.027138325182994704
#>     Attrib V43    0.12133082885436737
#>     Attrib V44    0.17699202556228902
#>     Attrib V45    0.03463329651505782
#>     Attrib V46    0.09118169248286566
#>     Attrib V47    -0.04555918006122832
#>     Attrib V48    0.15119273854300144
#>     Attrib V49    0.13032675435091404
#>     Attrib V5    0.08165117434503405
#>     Attrib V50    -0.11548200634441765
#>     Attrib V51    0.024069142558423778
#>     Attrib V52    0.07100379155430674
#>     Attrib V53    0.1988651612788216
#>     Attrib V54    0.23808299917157574
#>     Attrib V55    -0.09465073200257322
#>     Attrib V56    0.2817521368893033
#>     Attrib V57    0.17719585320789114
#>     Attrib V58    0.2460486645026692
#>     Attrib V59    0.3374410932864017
#>     Attrib V6    -0.015813517573016984
#>     Attrib V60    0.49637578683977285
#>     Attrib V7    -0.011749845504593553
#>     Attrib V8    -0.3206026480354284
#>     Attrib V9    0.06282707761042129
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.17393387471018032
#>     Attrib V1    0.03256118286293834
#>     Attrib V10    -0.07207236792551566
#>     Attrib V11    -0.02531847136288609
#>     Attrib V12    0.48973123224119197
#>     Attrib V13    0.06666910087884735
#>     Attrib V14    -0.32719020988770153
#>     Attrib V15    -0.21248790006607313
#>     Attrib V16    -0.06802989065572615
#>     Attrib V17    0.2959822943035569
#>     Attrib V18    0.06381889126473396
#>     Attrib V19    0.11042719767156807
#>     Attrib V2    -0.03194624644581587
#>     Attrib V20    0.25254948252107096
#>     Attrib V21    0.5421418915736465
#>     Attrib V22    0.37614247180931176
#>     Attrib V23    -0.06870437009611995
#>     Attrib V24    0.03648725648230997
#>     Attrib V25    -0.028064938323662122
#>     Attrib V26    -0.2793755297636599
#>     Attrib V27    -0.7722638543520932
#>     Attrib V28    -0.5507047660782852
#>     Attrib V29    -1.206833791619951
#>     Attrib V3    0.13613268983556162
#>     Attrib V30    0.16539568210863387
#>     Attrib V31    -0.695816446293721
#>     Attrib V32    -0.3785107789006756
#>     Attrib V33    0.29021573531529216
#>     Attrib V34    0.18215929035833459
#>     Attrib V35    -0.023271221641674767
#>     Attrib V36    -0.4922145538041369
#>     Attrib V37    -0.46241614938891584
#>     Attrib V38    0.321618043068703
#>     Attrib V39    0.35005006772655795
#>     Attrib V4    -0.0030756891134903967
#>     Attrib V40    -0.018796813209253874
#>     Attrib V41    -0.18232475790663905
#>     Attrib V42    0.13818240393558065
#>     Attrib V43    0.2933845030481797
#>     Attrib V44    0.5748873808880294
#>     Attrib V45    0.2650584525511384
#>     Attrib V46    0.06832761506142779
#>     Attrib V47    -0.19349700412916307
#>     Attrib V48    0.17375040274826153
#>     Attrib V49    0.33608506936512617
#>     Attrib V5    -0.19819264011548351
#>     Attrib V50    -0.5358615824826166
#>     Attrib V51    -0.08423116439066292
#>     Attrib V52    0.17566264475467896
#>     Attrib V53    0.441107225360407
#>     Attrib V54    0.6129806139796556
#>     Attrib V55    -0.5255833453611238
#>     Attrib V56    0.7447997145600809
#>     Attrib V57    0.09110736370464279
#>     Attrib V58    0.3197058750437937
#>     Attrib V59    0.5222517056190482
#>     Attrib V6    -0.2017022349062574
#>     Attrib V60    0.8523021748855452
#>     Attrib V7    -0.0052920442597728466
#>     Attrib V8    -0.6008688253655722
#>     Attrib V9    0.3550321019554537
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.5346864237703524
#>     Attrib V1    0.2783195266986899
#>     Attrib V10    -0.6913879362122417
#>     Attrib V11    -0.6813875527656456
#>     Attrib V12    -0.7821656910414003
#>     Attrib V13    -0.24305657090572455
#>     Attrib V14    0.5148623440606338
#>     Attrib V15    0.3638069105092116
#>     Attrib V16    0.47778157427946716
#>     Attrib V17    0.41194892517706994
#>     Attrib V18    0.4547584027902118
#>     Attrib V19    0.3009204501066971
#>     Attrib V2    0.10279484942606316
#>     Attrib V20    0.3327259463196439
#>     Attrib V21    -0.1207545770562681
#>     Attrib V22    -0.28062644915028134
#>     Attrib V23    -0.18272600084278418
#>     Attrib V24    -0.3690824180591066
#>     Attrib V25    0.06416530788348156
#>     Attrib V26    -0.06448795557716021
#>     Attrib V27    0.011282547740355042
#>     Attrib V28    -0.6487451353699588
#>     Attrib V29    -0.09072681839971254
#>     Attrib V3    0.22523252451138012
#>     Attrib V30    -0.5925228742509143
#>     Attrib V31    0.4125815690454843
#>     Attrib V32    0.2718727115303793
#>     Attrib V33    -0.07847607250565251
#>     Attrib V34    -0.057552984235216334
#>     Attrib V35    -0.16955235176371744
#>     Attrib V36    0.7514529246131624
#>     Attrib V37    0.28516006600439886
#>     Attrib V38    0.08388528380012712
#>     Attrib V39    0.06990165278496539
#>     Attrib V4    -0.029277161598550126
#>     Attrib V40    0.205936923353988
#>     Attrib V41    -0.31388709208940563
#>     Attrib V42    -0.22586338667492145
#>     Attrib V43    -0.11612154378754679
#>     Attrib V44    -0.33127152382017006
#>     Attrib V45    -0.18271331699846569
#>     Attrib V46    -0.44843192154351513
#>     Attrib V47    -0.37429153811825994
#>     Attrib V48    -0.4280408545158653
#>     Attrib V49    -0.5503352861423529
#>     Attrib V5    -0.6625567333457595
#>     Attrib V50    0.5693205945709581
#>     Attrib V51    -0.530174987580784
#>     Attrib V52    -0.23826802175515904
#>     Attrib V53    -0.08741417503368946
#>     Attrib V54    -0.26932827874765586
#>     Attrib V55    0.5787111091079933
#>     Attrib V56    0.3577072824435339
#>     Attrib V57    0.13585592174377334
#>     Attrib V58    -0.5656275186984931
#>     Attrib V59    0.09506810750873526
#>     Attrib V6    -0.10350800275353787
#>     Attrib V60    -0.3178995745237031
#>     Attrib V7    0.17479656004788444
#>     Attrib V8    0.2455120562857482
#>     Attrib V9    -0.6323520265193585
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.07237269353635703
#>     Attrib V1    -1.08411403154475
#>     Attrib V10    1.6579911896006512
#>     Attrib V11    1.5011349467247264
#>     Attrib V12    1.0609597066945138
#>     Attrib V13    -0.034562782180550145
#>     Attrib V14    -0.7280429092503896
#>     Attrib V15    -0.973643114404784
#>     Attrib V16    -0.8427315107770796
#>     Attrib V17    -0.33859402359781
#>     Attrib V18    -0.3759718182216401
#>     Attrib V19    0.051008256957746786
#>     Attrib V2    -0.2843530727335049
#>     Attrib V20    -0.25103563958542696
#>     Attrib V21    0.6327725984406948
#>     Attrib V22    0.9423500363329466
#>     Attrib V23    0.7037437149334953
#>     Attrib V24    0.43951756606508147
#>     Attrib V25    0.3426958697160088
#>     Attrib V26    0.9646812788968945
#>     Attrib V27    0.4806133965462596
#>     Attrib V28    1.2478798415513719
#>     Attrib V29    0.15676659580504831
#>     Attrib V3    -0.7585152662360176
#>     Attrib V30    1.6476929490782957
#>     Attrib V31    -0.4517635739862674
#>     Attrib V32    -0.3266358362673455
#>     Attrib V33    -0.13711487052484256
#>     Attrib V34    -0.3991147045127553
#>     Attrib V35    -0.4154326942537775
#>     Attrib V36    -0.9495120619586314
#>     Attrib V37    -0.7842613183833804
#>     Attrib V38    -0.29892968209635096
#>     Attrib V39    -0.1225894063499569
#>     Attrib V4    0.5764239229891419
#>     Attrib V40    -0.49511034244061736
#>     Attrib V41    -0.2165682514927963
#>     Attrib V42    0.3211783781045434
#>     Attrib V43    0.38025590657330716
#>     Attrib V44    1.175291600396407
#>     Attrib V45    0.5506745679346042
#>     Attrib V46    0.4116718113895461
#>     Attrib V47    0.8179230984614276
#>     Attrib V48    1.2255528562502285
#>     Attrib V49    1.6518178117105005
#>     Attrib V5    0.5324957001494863
#>     Attrib V50    -0.9582837911393597
#>     Attrib V51    1.1673508966687012
#>     Attrib V52    0.9170215417938598
#>     Attrib V53    -0.46651603015641663
#>     Attrib V54    0.08975392012412486
#>     Attrib V55    -1.2134572096219838
#>     Attrib V56    -0.3949854312686877
#>     Attrib V57    -0.37892008711703346
#>     Attrib V58    0.8633559446646355
#>     Attrib V59    -0.7509992397582848
#>     Attrib V6    -0.3525577636233526
#>     Attrib V60    0.0024646302485592146
#>     Attrib V7    -0.5335132929053301
#>     Attrib V8    0.37728187836224697
#>     Attrib V9    1.5213510583010519
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.20071855218428766
#>     Attrib V1    0.04760946242234687
#>     Attrib V10    -0.0453906299688741
#>     Attrib V11    -0.0760427960722458
#>     Attrib V12    0.04339466890453356
#>     Attrib V13    -0.015593505528623102
#>     Attrib V14    0.06886483461108771
#>     Attrib V15    0.002014060304397522
#>     Attrib V16    0.011107219294148882
#>     Attrib V17    0.05388436528194756
#>     Attrib V18    -0.03847680902114295
#>     Attrib V19    0.02454964039852092
#>     Attrib V2    0.06716869478881589
#>     Attrib V20    -0.047326156808213435
#>     Attrib V21    -0.06171584575167671
#>     Attrib V22    -0.08402998983834462
#>     Attrib V23    -0.04943131254565955
#>     Attrib V24    -0.04129316148444526
#>     Attrib V25    -0.024853152752005524
#>     Attrib V26    -0.07134413402274072
#>     Attrib V27    -0.019803771749735768
#>     Attrib V28    -0.021394905955259433
#>     Attrib V29    -0.0873018478981958
#>     Attrib V3    0.026529684023944018
#>     Attrib V30    -0.0775259635151524
#>     Attrib V31    -0.05790298347292056
#>     Attrib V32    -0.033282709329007315
#>     Attrib V33    0.052269497589719605
#>     Attrib V34    0.032573069479239984
#>     Attrib V35    0.1448908936418815
#>     Attrib V36    0.13717397021594965
#>     Attrib V37    0.1536997474746902
#>     Attrib V38    0.053989587809888384
#>     Attrib V39    0.08653085151741008
#>     Attrib V4    0.07956383481146684
#>     Attrib V40    0.08006470799881413
#>     Attrib V41    0.05576186450835892
#>     Attrib V42    0.07623710976664619
#>     Attrib V43    0.04970521198798024
#>     Attrib V44    0.024020428834852798
#>     Attrib V45    0.014394598177976012
#>     Attrib V46    0.025978109011225832
#>     Attrib V47    0.02542093953229124
#>     Attrib V48    0.0631037859973281
#>     Attrib V49    -0.0034497956612305858
#>     Attrib V5    0.022045256956753762
#>     Attrib V50    0.05510340146537888
#>     Attrib V51    0.033934272001600686
#>     Attrib V52    0.05333225323621829
#>     Attrib V53    0.06406667940613722
#>     Attrib V54    0.08269842484948996
#>     Attrib V55    0.08173050772692309
#>     Attrib V56    0.10122750726181125
#>     Attrib V57    0.10470312361631058
#>     Attrib V58    0.05694020659238031
#>     Attrib V59    0.06784580483663666
#>     Attrib V6    0.07861995499259845
#>     Attrib V60    0.18509416143362284
#>     Attrib V7    -0.003707298227025104
#>     Attrib V8    0.00962137766110736
#>     Attrib V9    -0.02612568191662627
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.22157593312784793
#>     Attrib V1    -0.019326903297692738
#>     Attrib V10    0.05709711784666401
#>     Attrib V11    -0.019175081121098246
#>     Attrib V12    0.40600498822699005
#>     Attrib V13    0.004977877266584301
#>     Attrib V14    -0.43868195837339924
#>     Attrib V15    -0.21552618966793832
#>     Attrib V16    -0.015759906985761466
#>     Attrib V17    0.27237992056210153
#>     Attrib V18    0.12214932973838903
#>     Attrib V19    0.13429103875594844
#>     Attrib V2    -0.027692924403526376
#>     Attrib V20    0.23639162257159235
#>     Attrib V21    0.6453245474633198
#>     Attrib V22    0.462529060969211
#>     Attrib V23    -0.021474121135557876
#>     Attrib V24    0.1266858748244812
#>     Attrib V25    -0.056932285625243835
#>     Attrib V26    -0.2673138826992036
#>     Attrib V27    -0.7369268969810477
#>     Attrib V28    -0.4525853131857466
#>     Attrib V29    -1.1251012886864953
#>     Attrib V3    0.05082134772283082
#>     Attrib V30    0.3038578804696352
#>     Attrib V31    -0.723066702891828
#>     Attrib V32    -0.4016668932893399
#>     Attrib V33    0.3022525535041113
#>     Attrib V34    0.207905791600606
#>     Attrib V35    -0.09356876462196866
#>     Attrib V36    -0.5836018386843869
#>     Attrib V37    -0.6013181906921948
#>     Attrib V38    0.2904680596116115
#>     Attrib V39    0.3300344638131881
#>     Attrib V4    -0.03218086162202745
#>     Attrib V40    -0.08334899303533448
#>     Attrib V41    -0.189075192819157
#>     Attrib V42    0.12838249921947834
#>     Attrib V43    0.2407495581144592
#>     Attrib V44    0.7193017093123172
#>     Attrib V45    0.3117778497543407
#>     Attrib V46    0.02796325055923018
#>     Attrib V47    -0.2641712397100086
#>     Attrib V48    0.2825268872011095
#>     Attrib V49    0.39519961425754524
#>     Attrib V5    -0.1918298102095005
#>     Attrib V50    -0.520747296253082
#>     Attrib V51    -0.011177892356206323
#>     Attrib V52    0.1709973770646336
#>     Attrib V53    0.4300009184167926
#>     Attrib V54    0.6068123513145302
#>     Attrib V55    -0.5869398758646232
#>     Attrib V56    0.6616908418682277
#>     Attrib V57    0.12811045376367297
#>     Attrib V58    0.3936494516784223
#>     Attrib V59    0.526628673908816
#>     Attrib V6    -0.19450850230333083
#>     Attrib V60    0.8631530905424498
#>     Attrib V7    -0.04546976435625062
#>     Attrib V8    -0.5698934717449778
#>     Attrib V9    0.4521804392108818
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.9513383965393268
#>     Attrib V1    0.7359666464275948
#>     Attrib V10    -1.6889569008406782
#>     Attrib V11    -1.7024377964415505
#>     Attrib V12    -1.2152886650459855
#>     Attrib V13    -0.435697207749352
#>     Attrib V14    0.7094096420218913
#>     Attrib V15    0.1179058212359191
#>     Attrib V16    0.8835326119789271
#>     Attrib V17    0.8774547581906599
#>     Attrib V18    1.0143538590907122
#>     Attrib V19    0.4808375047317311
#>     Attrib V2    -0.09737907822474709
#>     Attrib V20    0.38114981104189927
#>     Attrib V21    -0.9181347183663936
#>     Attrib V22    -1.1002850819863448
#>     Attrib V23    -1.415110547958865
#>     Attrib V24    -0.8173882869072662
#>     Attrib V25    0.655535654792538
#>     Attrib V26    -0.24301576797405766
#>     Attrib V27    -0.5433044504371415
#>     Attrib V28    -2.1873544323779437
#>     Attrib V29    -1.9793872333934528
#>     Attrib V3    0.24483601145295664
#>     Attrib V30    -1.5088842532618276
#>     Attrib V31    0.8519191163959438
#>     Attrib V32    0.8990347177054184
#>     Attrib V33    0.8047497602551029
#>     Attrib V34    0.2545859865108639
#>     Attrib V35    -0.6167151999405912
#>     Attrib V36    1.3584759950796967
#>     Attrib V37    0.27227243434610765
#>     Attrib V38    0.7693624010338748
#>     Attrib V39    0.8516138630305758
#>     Attrib V4    -0.6785349983324432
#>     Attrib V40    0.44848727889961426
#>     Attrib V41    -1.4311288849912736
#>     Attrib V42    -0.4477621954617209
#>     Attrib V43    -0.4803927143695728
#>     Attrib V44    -0.9155708474384413
#>     Attrib V45    -0.4688591204238782
#>     Attrib V46    -1.254332743742342
#>     Attrib V47    -1.3994207391036293
#>     Attrib V48    -0.5847585508641719
#>     Attrib V49    -1.1796174106335906
#>     Attrib V5    -2.0247032921289057
#>     Attrib V50    0.5529104169111347
#>     Attrib V51    -1.609009992765126
#>     Attrib V52    -0.8233173164177053
#>     Attrib V53    -0.026132968304533506
#>     Attrib V54    0.018337761686572238
#>     Attrib V55    0.6344727244795686
#>     Attrib V56    1.5347229302326786
#>     Attrib V57    0.13435117299413252
#>     Attrib V58    -1.490006063038165
#>     Attrib V59    0.566787055530494
#>     Attrib V6    -0.5739567545395633
#>     Attrib V60    0.733479367953846
#>     Attrib V7    0.4674145091750316
#>     Attrib V8    -0.27020061624699104
#>     Attrib V9    -1.15396784267857
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.15497583231693282
#>     Attrib V1    0.06762982713755372
#>     Attrib V10    -0.11497379758139756
#>     Attrib V11    0.0024874829659592866
#>     Attrib V12    0.2943585093346099
#>     Attrib V13    0.06231921715608029
#>     Attrib V14    -0.0078025992382976025
#>     Attrib V15    0.024541339930872267
#>     Attrib V16    -0.023819286977990874
#>     Attrib V17    0.08823773327283428
#>     Attrib V18    0.01206346785939456
#>     Attrib V19    0.029244088180742554
#>     Attrib V2    0.05582885674946267
#>     Attrib V20    0.21797818261491092
#>     Attrib V21    0.3937243013079193
#>     Attrib V22    0.1887177369675796
#>     Attrib V23    -0.2212052830526884
#>     Attrib V24    -0.06416909116564228
#>     Attrib V25    -0.11604582185546482
#>     Attrib V26    -0.3157185327696632
#>     Attrib V27    -0.4354541799736306
#>     Attrib V28    -0.20491745339538536
#>     Attrib V29    -0.35502578496666176
#>     Attrib V3    0.15733774277931786
#>     Attrib V30    0.058701222457199276
#>     Attrib V31    -0.47801850315660094
#>     Attrib V32    -0.29798295976097666
#>     Attrib V33    0.03415682920239237
#>     Attrib V34    0.02642229956495386
#>     Attrib V35    0.014906425456130102
#>     Attrib V36    -0.19544348706864326
#>     Attrib V37    -0.047913131776116384
#>     Attrib V38    0.2954876594935171
#>     Attrib V39    0.2915855510809127
#>     Attrib V4    0.06783307449710557
#>     Attrib V40    0.046314350389183266
#>     Attrib V41    0.0066665806643557484
#>     Attrib V42    0.05949395721888503
#>     Attrib V43    0.165048483090579
#>     Attrib V44    0.291450393195531
#>     Attrib V45    0.1803551162530189
#>     Attrib V46    0.05458780103969111
#>     Attrib V47    -0.08076067013477657
#>     Attrib V48    0.09666324126063261
#>     Attrib V49    0.15817185046886453
#>     Attrib V5    -0.008987577306399982
#>     Attrib V50    -0.24387887562364713
#>     Attrib V51    0.0021015107751249824
#>     Attrib V52    0.1016828313293674
#>     Attrib V53    0.3009764120550278
#>     Attrib V54    0.29154432375385014
#>     Attrib V55    -0.23663142538785342
#>     Attrib V56    0.3663225423181255
#>     Attrib V57    0.17875097691567973
#>     Attrib V58    0.23991383199245694
#>     Attrib V59    0.42432450714446807
#>     Attrib V6    -0.0619525794881231
#>     Attrib V60    0.5757770506600601
#>     Attrib V7    -0.04550958574278228
#>     Attrib V8    -0.39140052607620457
#>     Attrib V9    0.08301832662118001
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    0.03298431769840427
#>     Attrib V1    0.11982234907404478
#>     Attrib V10    0.001339603042122733
#>     Attrib V11    -0.011499937762025568
#>     Attrib V12    0.2685276552115374
#>     Attrib V13    0.10665157665210691
#>     Attrib V14    -0.027738326556619647
#>     Attrib V15    0.008504173185900014
#>     Attrib V16    -0.06154233039701864
#>     Attrib V17    0.02948291226231473
#>     Attrib V18    -0.07670710205245808
#>     Attrib V19    -0.05022130899465628
#>     Attrib V2    0.0723039095034307
#>     Attrib V20    0.03287372141066134
#>     Attrib V21    0.20567643724350107
#>     Attrib V22    0.033201301700764886
#>     Attrib V23    -0.18793697372763793
#>     Attrib V24    -0.12710969281464055
#>     Attrib V25    -0.10065094244647836
#>     Attrib V26    -0.14272256401712485
#>     Attrib V27    -0.27224325283836287
#>     Attrib V28    -0.11603762777736797
#>     Attrib V29    -0.32919062852211517
#>     Attrib V3    0.07990215443507608
#>     Attrib V30    0.04825523318841853
#>     Attrib V31    -0.2574754459052946
#>     Attrib V32    -0.2357204007044569
#>     Attrib V33    -0.048067113746330374
#>     Attrib V34    0.006470607785587587
#>     Attrib V35    0.08256024030335189
#>     Attrib V36    -0.08415059860003382
#>     Attrib V37    0.062248892862330596
#>     Attrib V38    0.21360018127911243
#>     Attrib V39    0.28268215840507155
#>     Attrib V4    0.12179991491795086
#>     Attrib V40    0.07497947297705308
#>     Attrib V41    0.009115194138564332
#>     Attrib V42    0.06799909848958288
#>     Attrib V43    0.05402585234785994
#>     Attrib V44    0.14879720843012775
#>     Attrib V45    0.08362230457536135
#>     Attrib V46    0.06229102306081694
#>     Attrib V47    -0.050187760733521936
#>     Attrib V48    0.11574943022721072
#>     Attrib V49    0.09295526341133079
#>     Attrib V5    0.011301117311579666
#>     Attrib V50    -0.1601257318470385
#>     Attrib V51    0.017061683782582812
#>     Attrib V52    0.07572397466516567
#>     Attrib V53    0.23850587229702613
#>     Attrib V54    0.25182595065586166
#>     Attrib V55    -0.1505571172719854
#>     Attrib V56    0.2704220987913947
#>     Attrib V57    0.11637447117477244
#>     Attrib V58    0.22517060184283869
#>     Attrib V59    0.3530278490317143
#>     Attrib V6    -0.03661491981193122
#>     Attrib V60    0.47519432856192667
#>     Attrib V7    -0.08084824625072455
#>     Attrib V8    -0.31033441599731987
#>     Attrib V9    0.03408779108201826
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.042811709638854396
#>     Attrib V1    0.10692364664536863
#>     Attrib V10    -0.07259040036093017
#>     Attrib V11    -0.004260205496829323
#>     Attrib V12    0.20285686233423597
#>     Attrib V13    0.0922920025021816
#>     Attrib V14    -0.011050260976338282
#>     Attrib V15    0.022867109380622416
#>     Attrib V16    -0.016088633330334688
#>     Attrib V17    0.08865423895630588
#>     Attrib V18    0.00894214906600776
#>     Attrib V19    0.027236929986924688
#>     Attrib V2    0.09605955385514346
#>     Attrib V20    0.1557748560352099
#>     Attrib V21    0.2069475999616392
#>     Attrib V22    0.11543794620672945
#>     Attrib V23    -0.138985386729779
#>     Attrib V24    -0.046698513898955796
#>     Attrib V25    -0.13738683124366496
#>     Attrib V26    -0.19382521168179626
#>     Attrib V27    -0.3737594573159703
#>     Attrib V28    -0.25020007330111976
#>     Attrib V29    -0.4365687296214712
#>     Attrib V3    0.059683229741693454
#>     Attrib V30    -0.015767528700953826
#>     Attrib V31    -0.3641357355627993
#>     Attrib V32    -0.2553756050629336
#>     Attrib V33    0.0521013440423412
#>     Attrib V34    0.0657461723268478
#>     Attrib V35    0.0679847503003256
#>     Attrib V36    -0.14650813985152816
#>     Attrib V37    -0.045670053950202114
#>     Attrib V38    0.26880540815150483
#>     Attrib V39    0.1955661330550287
#>     Attrib V4    0.09662346696121173
#>     Attrib V40    0.03894886858018512
#>     Attrib V41    -0.03731638001634913
#>     Attrib V42    0.05563929596361127
#>     Attrib V43    0.13170917390349116
#>     Attrib V44    0.2785873493502768
#>     Attrib V45    0.0805971595136844
#>     Attrib V46    0.05125717693979935
#>     Attrib V47    -0.06255064124986658
#>     Attrib V48    0.10060899707105415
#>     Attrib V49    0.13054059172431984
#>     Attrib V5    0.009314371493429023
#>     Attrib V50    -0.2002204743392445
#>     Attrib V51    -0.021936691624484392
#>     Attrib V52    0.07231203049822009
#>     Attrib V53    0.2875175942342008
#>     Attrib V54    0.32173716970137134
#>     Attrib V55    -0.15191529313280328
#>     Attrib V56    0.26881476522422143
#>     Attrib V57    0.14691399730995985
#>     Attrib V58    0.17250036535669508
#>     Attrib V59    0.3556784668478181
#>     Attrib V6    -0.06478054571528277
#>     Attrib V60    0.49682063931410153
#>     Attrib V7    -0.020901073936451908
#>     Attrib V8    -0.326172809656504
#>     Attrib V9    0.09605130162828523
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.10263996987202972
#>     Attrib V1    0.1561399460076612
#>     Attrib V10    -0.18380907543609643
#>     Attrib V11    -0.11947398381905787
#>     Attrib V12    0.20574028051310195
#>     Attrib V13    0.016716055311835207
#>     Attrib V14    -8.294932612426569E-5
#>     Attrib V15    0.06960719205723864
#>     Attrib V16    0.07277080016454626
#>     Attrib V17    0.13454093175202844
#>     Attrib V18    0.11416865424230095
#>     Attrib V19    0.08380272739061918
#>     Attrib V2    0.11407741997233983
#>     Attrib V20    0.2840271106345705
#>     Attrib V21    0.490541818871258
#>     Attrib V22    0.2165063649436654
#>     Attrib V23    -0.12324493738583905
#>     Attrib V24    -0.14320626045070778
#>     Attrib V25    -0.3051080949879706
#>     Attrib V26    -0.41356204637768046
#>     Attrib V27    -0.5004757153949122
#>     Attrib V28    -0.17392856607705529
#>     Attrib V29    -0.42192380378072236
#>     Attrib V3    0.185449040033038
#>     Attrib V30    0.15751105861138195
#>     Attrib V31    -0.582665775068988
#>     Attrib V32    -0.37039386998116375
#>     Attrib V33    0.09101767499666306
#>     Attrib V34    0.03947618391082732
#>     Attrib V35    -0.05478908877398366
#>     Attrib V36    -0.2231378694246563
#>     Attrib V37    -0.17295773943269832
#>     Attrib V38    0.2667029873569655
#>     Attrib V39    0.3269862034872639
#>     Attrib V4    0.0833664630105749
#>     Attrib V40    0.021118801709588828
#>     Attrib V41    -0.05833459137493584
#>     Attrib V42    0.18058385899388915
#>     Attrib V43    0.1356914192641052
#>     Attrib V44    0.40333925011830984
#>     Attrib V45    0.1844522571761593
#>     Attrib V46    0.04107879695329373
#>     Attrib V47    -0.14198728354872298
#>     Attrib V48    0.05528744612355897
#>     Attrib V49    0.2301308314601361
#>     Attrib V5    0.009040649257953342
#>     Attrib V50    -0.29114391517248484
#>     Attrib V51    -0.04281650145076036
#>     Attrib V52    0.09910453921787207
#>     Attrib V53    0.3249047048437785
#>     Attrib V54    0.2789107385384926
#>     Attrib V55    -0.34054423679949736
#>     Attrib V56    0.4173825999765178
#>     Attrib V57    0.15307109459784082
#>     Attrib V58    0.3157085091806668
#>     Attrib V59    0.442666237548154
#>     Attrib V6    -0.06189956700476257
#>     Attrib V60    0.5800042992760533
#>     Attrib V7    -0.0334753216923286
#>     Attrib V8    -0.3920356402268215
#>     Attrib V9    0.09674363249886411
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
