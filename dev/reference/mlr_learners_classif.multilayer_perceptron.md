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
#>     Threshold    -0.4274481187014275
#>     Node 2    1.7628556975795635
#>     Node 3    1.855050330230522
#>     Node 4    1.4479445247891598
#>     Node 5    -2.758136904730356
#>     Node 6    2.3582852277233792
#>     Node 7    2.0975224781750823
#>     Node 8    1.4907560776582385
#>     Node 9    3.4796022849944057
#>     Node 10    -1.6687061909740672
#>     Node 11    1.5791590080176625
#>     Node 12    2.1554451460476196
#>     Node 13    1.0704669953615844
#>     Node 14    2.1615921995001566
#>     Node 15    -2.157675646502115
#>     Node 16    -0.1143661396516061
#>     Node 17    1.9327280779656855
#>     Node 18    -1.8702290783576596
#>     Node 19    2.28344725304238
#>     Node 20    1.7444057809010651
#>     Node 21    -1.877204942916521
#>     Node 22    1.2044035896768752
#>     Node 23    -0.9579084740296727
#>     Node 24    -0.6465397161398587
#>     Node 25    5.402159520622699
#>     Node 26    -0.11656560516378527
#>     Node 27    1.8798196575157151
#>     Node 28    -1.8855284149092288
#>     Node 29    2.3381733649617513
#>     Node 30    -1.4622847803021533
#>     Node 31    1.169089054071392
#>     Node 32    0.6000138487016022
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.43110864902721185
#>     Node 2    -1.8147995463988056
#>     Node 3    -1.851178804215388
#>     Node 4    -1.4007629076693993
#>     Node 5    2.752787005105025
#>     Node 6    -2.3586230631464655
#>     Node 7    -2.0719157871867586
#>     Node 8    -1.5220103010736854
#>     Node 9    -3.4778526740039273
#>     Node 10    1.5991630746114431
#>     Node 11    -1.5411733111956802
#>     Node 12    -2.230473997577573
#>     Node 13    -1.0148244503691657
#>     Node 14    -2.114466251124334
#>     Node 15    2.133698964760004
#>     Node 16    0.12136090398100095
#>     Node 17    -1.9042372515751078
#>     Node 18    1.9057511590148617
#>     Node 19    -2.278140557881641
#>     Node 20    -1.7419761653899424
#>     Node 21    1.9251931884908522
#>     Node 22    -1.2574009617115516
#>     Node 23    0.9288717369580838
#>     Node 24    0.6597471002381539
#>     Node 25    -5.398814748916051
#>     Node 26    0.06137989377154148
#>     Node 27    -1.9158798985692147
#>     Node 28    1.8351793391761593
#>     Node 29    -2.370742136091771
#>     Node 30    1.5399257382098326
#>     Node 31    -1.1168234752504773
#>     Node 32    -0.6074728789129995
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.22694156083424882
#>     Attrib V1    -0.24715407980053974
#>     Attrib V10    0.2538760731217849
#>     Attrib V11    0.3026389657316989
#>     Attrib V12    0.48522508181967633
#>     Attrib V13    -0.1261126914543936
#>     Attrib V14    -0.2630951269302888
#>     Attrib V15    -0.2500404517089468
#>     Attrib V16    -0.4921453052936574
#>     Attrib V17    -0.1068877977017752
#>     Attrib V18    0.10765701977083496
#>     Attrib V19    -0.0010910256750018893
#>     Attrib V2    0.0018818725791629155
#>     Attrib V20    0.24328820772700818
#>     Attrib V21    0.25623626114328374
#>     Attrib V22    0.49696258754947464
#>     Attrib V23    0.49681924474729316
#>     Attrib V24    0.3008943649779527
#>     Attrib V25    -0.03174456569209286
#>     Attrib V26    -0.4831695103752102
#>     Attrib V27    -0.11479720387435356
#>     Attrib V28    0.29654204280045254
#>     Attrib V29    -0.06916701073561378
#>     Attrib V3    -0.04234982050095231
#>     Attrib V30    0.6921255159077654
#>     Attrib V31    -1.04453830669537
#>     Attrib V32    -0.09538241685168167
#>     Attrib V33    0.8528137748108129
#>     Attrib V34    0.132036294498626
#>     Attrib V35    0.08375233333535136
#>     Attrib V36    -0.6063502337522313
#>     Attrib V37    -0.5524281880242986
#>     Attrib V38    0.5347230780415362
#>     Attrib V39    0.2831978217574677
#>     Attrib V4    0.6472477519300962
#>     Attrib V40    -0.3568493262514107
#>     Attrib V41    -0.21073918817368362
#>     Attrib V42    -0.02755292351593768
#>     Attrib V43    0.4401757937527449
#>     Attrib V44    0.32971616510177976
#>     Attrib V45    0.04263948306077181
#>     Attrib V46    0.27370600844394016
#>     Attrib V47    0.1276346021953525
#>     Attrib V48    0.3780684233350339
#>     Attrib V49    0.6570712969937378
#>     Attrib V5    -0.22558890344517263
#>     Attrib V50    -1.3908188600108622
#>     Attrib V51    -0.09227826123438346
#>     Attrib V52    -0.1346579284880812
#>     Attrib V53    0.21804435785783557
#>     Attrib V54    0.3980132769673407
#>     Attrib V55    -0.4950312688561246
#>     Attrib V56    0.14040810455317246
#>     Attrib V57    -0.17939112336364957
#>     Attrib V58    0.17794187591302132
#>     Attrib V59    0.5965217462859503
#>     Attrib V6    -0.04012169186545322
#>     Attrib V60    0.3206213775504437
#>     Attrib V7    -0.45345087752406793
#>     Attrib V8    -0.2695844978419105
#>     Attrib V9    0.8559124054601459
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.6679386686998342
#>     Attrib V1    -0.12979180518897385
#>     Attrib V10    0.4761181305804735
#>     Attrib V11    0.6263994401338143
#>     Attrib V12    0.9534979642663014
#>     Attrib V13    0.26932543339350856
#>     Attrib V14    -0.038584638952193565
#>     Attrib V15    -0.16895552298526917
#>     Attrib V16    -0.3943402172361546
#>     Attrib V17    -0.5983339722029639
#>     Attrib V18    -0.26128752685624546
#>     Attrib V19    -0.2896917603942626
#>     Attrib V2    0.1688350093153235
#>     Attrib V20    -0.4992803043521136
#>     Attrib V21    -0.24491525019550972
#>     Attrib V22    -0.022615385582785204
#>     Attrib V23    -0.11825668981632052
#>     Attrib V24    0.1327873087326397
#>     Attrib V25    0.2551052905563624
#>     Attrib V26    0.24089606118003518
#>     Attrib V27    0.4124311826610395
#>     Attrib V28    0.36731096553284087
#>     Attrib V29    -0.3639655734895027
#>     Attrib V3    -0.26800541391288457
#>     Attrib V30    0.31079648604662496
#>     Attrib V31    -0.1541893100576205
#>     Attrib V32    0.36072492974559484
#>     Attrib V33    0.6043811390617239
#>     Attrib V34    0.16316678351645303
#>     Attrib V35    -0.04448114029509651
#>     Attrib V36    -0.848483444743341
#>     Attrib V37    -0.9243555128707467
#>     Attrib V38    -0.4403031210888654
#>     Attrib V39    -0.001236563027120291
#>     Attrib V4    0.45158305960125145
#>     Attrib V40    -0.08616513566547672
#>     Attrib V41    0.20743656214119752
#>     Attrib V42    0.0639015941153597
#>     Attrib V43    -0.014760156646331611
#>     Attrib V44    -0.18750089342882995
#>     Attrib V45    -0.04305192596073119
#>     Attrib V46    0.15643117455787423
#>     Attrib V47    0.050507500896100406
#>     Attrib V48    0.43017996544307313
#>     Attrib V49    0.592667394654539
#>     Attrib V5    -0.20099123618520814
#>     Attrib V50    -0.6882974283775709
#>     Attrib V51    0.11224689220764705
#>     Attrib V52    0.21913458603051458
#>     Attrib V53    0.2274714123851486
#>     Attrib V54    0.2393626929700433
#>     Attrib V55    0.13734854796083365
#>     Attrib V56    -0.3276170400814639
#>     Attrib V57    0.042393654511129794
#>     Attrib V58    0.42393108726318923
#>     Attrib V59    0.5402610629140702
#>     Attrib V6    0.4310133403387269
#>     Attrib V60    0.17805294767405414
#>     Attrib V7    -0.07884822868526023
#>     Attrib V8    0.2836833950194775
#>     Attrib V9    0.5795791137170004
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.3496449541003947
#>     Attrib V1    -0.26134470386040554
#>     Attrib V10    0.3136050945486264
#>     Attrib V11    0.3304948986322816
#>     Attrib V12    0.4553593867263569
#>     Attrib V13    -0.08522586453817706
#>     Attrib V14    -0.1873663278179813
#>     Attrib V15    -0.2077895479962385
#>     Attrib V16    -0.34234978422177714
#>     Attrib V17    -0.22849883564745396
#>     Attrib V18    -0.0028956112523978363
#>     Attrib V19    -0.09186356667739212
#>     Attrib V2    0.0456638732256639
#>     Attrib V20    -0.011851986365419944
#>     Attrib V21    0.12316436004223834
#>     Attrib V22    0.2675464654441876
#>     Attrib V23    0.25404097879366755
#>     Attrib V24    0.02410798969508217
#>     Attrib V25    -0.2121971133145465
#>     Attrib V26    -0.30498920560713244
#>     Attrib V27    0.15465184395783432
#>     Attrib V28    0.5915402364623372
#>     Attrib V29    0.11812681873837026
#>     Attrib V3    -0.14234537798598632
#>     Attrib V30    0.5066468650246282
#>     Attrib V31    -0.6689806410746879
#>     Attrib V32    -0.036892094465041256
#>     Attrib V33    0.5862746592183355
#>     Attrib V34    0.1129141249219808
#>     Attrib V35    0.07950115883325537
#>     Attrib V36    -0.5478022804611862
#>     Attrib V37    -0.4235280306086175
#>     Attrib V38    0.20188732352802818
#>     Attrib V39    0.16361122990333504
#>     Attrib V4    0.48719460367858175
#>     Attrib V40    -0.2414151054285064
#>     Attrib V41    -0.06944759201942784
#>     Attrib V42    -0.009334467072308722
#>     Attrib V43    0.17368073499858513
#>     Attrib V44    0.1525878049350991
#>     Attrib V45    0.14221837138895604
#>     Attrib V46    0.2860519611141738
#>     Attrib V47    0.11890911346152548
#>     Attrib V48    0.3646907610384867
#>     Attrib V49    0.626546607352086
#>     Attrib V5    -0.208075082960304
#>     Attrib V50    -0.9347412104325633
#>     Attrib V51    0.05753754916492481
#>     Attrib V52    0.039924173556930224
#>     Attrib V53    0.18953757744108193
#>     Attrib V54    0.11358309412453499
#>     Attrib V55    -0.30425505997805885
#>     Attrib V56    -0.14534604527417455
#>     Attrib V57    -0.12371528485090869
#>     Attrib V58    0.15795213480703824
#>     Attrib V59    0.34889279864452766
#>     Attrib V6    0.05669659113352644
#>     Attrib V60    0.14141711985210306
#>     Attrib V7    -0.4275619049098747
#>     Attrib V8    -0.09533576335189299
#>     Attrib V9    0.700400035944227
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.07210968324589383
#>     Attrib V1    0.4788292553429257
#>     Attrib V10    -1.2513347090478635
#>     Attrib V11    -0.9773582877870766
#>     Attrib V12    -0.7784829164931903
#>     Attrib V13    0.14684299353283997
#>     Attrib V14    0.6284132051071513
#>     Attrib V15    0.6505320788150198
#>     Attrib V16    0.7961957186971484
#>     Attrib V17    0.48270819758842803
#>     Attrib V18    -0.024441227209621386
#>     Attrib V19    0.06313308824825134
#>     Attrib V2    -0.18684453531977907
#>     Attrib V20    -0.1281961816267432
#>     Attrib V21    -0.3340223932352248
#>     Attrib V22    -0.9981767895766566
#>     Attrib V23    -0.8733535665732945
#>     Attrib V24    -0.26020681438942594
#>     Attrib V25    0.15753461697994492
#>     Attrib V26    0.21047187703720732
#>     Attrib V27    -0.2624619364277654
#>     Attrib V28    -0.7468554811640754
#>     Attrib V29    0.11534261893777904
#>     Attrib V3    0.1692023845039248
#>     Attrib V30    -0.9579683367811765
#>     Attrib V31    1.0648027901266994
#>     Attrib V32    -0.03363163427127502
#>     Attrib V33    -1.07389685396961
#>     Attrib V34    -0.15155115432754906
#>     Attrib V35    -0.1147635274805052
#>     Attrib V36    0.8933151186729282
#>     Attrib V37    0.6623970746983757
#>     Attrib V38    -0.5552515470694293
#>     Attrib V39    -0.27547512672181645
#>     Attrib V4    -0.9161580283533713
#>     Attrib V40    0.5655024838624293
#>     Attrib V41    0.2902862595727053
#>     Attrib V42    0.310852941266962
#>     Attrib V43    -0.36133263808521054
#>     Attrib V44    -0.588350824182892
#>     Attrib V45    -0.36535235887192313
#>     Attrib V46    -0.7177457070437552
#>     Attrib V47    -0.5658190720541126
#>     Attrib V48    -0.8398033322936085
#>     Attrib V49    -1.2491787127558824
#>     Attrib V5    0.38042884608656014
#>     Attrib V50    1.7744886608371
#>     Attrib V51    -0.4337070830988422
#>     Attrib V52    -0.25372398537968444
#>     Attrib V53    0.13127701751796017
#>     Attrib V54    -0.026956461177114015
#>     Attrib V55    0.6643629773656012
#>     Attrib V56    0.06246026885532887
#>     Attrib V57    0.7020238570314523
#>     Attrib V58    -0.355712061230007
#>     Attrib V59    0.1030585409336508
#>     Attrib V6    0.1338138753885221
#>     Attrib V60    0.02813935761994094
#>     Attrib V7    0.7271020595734435
#>     Attrib V8    0.08591315505483836
#>     Attrib V9    -1.7785643417136554
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.12576914999503086
#>     Attrib V1    -0.05104688887718941
#>     Attrib V10    -0.21385778858533488
#>     Attrib V11    -0.020422772731050698
#>     Attrib V12    0.18813128818977617
#>     Attrib V13    -0.07300074087870526
#>     Attrib V14    -0.0768608605463215
#>     Attrib V15    0.15257154412055157
#>     Attrib V16    -0.13465659701290572
#>     Attrib V17    0.10007506996598221
#>     Attrib V18    0.0032321629925237965
#>     Attrib V19    0.022533057373082394
#>     Attrib V2    -0.11581604829013312
#>     Attrib V20    0.39031851869006134
#>     Attrib V21    0.23350619558551797
#>     Attrib V22    0.12521829591843806
#>     Attrib V23    0.19384332869650645
#>     Attrib V24    0.5245619856442388
#>     Attrib V25    0.1417960933656595
#>     Attrib V26    -0.8417788805590604
#>     Attrib V27    -1.0593942493751816
#>     Attrib V28    -1.2707696677693394
#>     Attrib V29    -1.3521944682651619
#>     Attrib V3    0.11096064403917957
#>     Attrib V30    -0.08216521250519525
#>     Attrib V31    -1.0178310440747405
#>     Attrib V32    -0.01873502224993626
#>     Attrib V33    1.215861749172641
#>     Attrib V34    0.5222838670436253
#>     Attrib V35    0.19700760840000395
#>     Attrib V36    -0.6313078148685949
#>     Attrib V37    -0.9485453466074271
#>     Attrib V38    0.15519908415721456
#>     Attrib V39    -0.07218008950536342
#>     Attrib V4    0.5443144071625693
#>     Attrib V40    -0.3689820710427232
#>     Attrib V41    -0.2585856498040383
#>     Attrib V42    0.04973122787025731
#>     Attrib V43    0.36454608267323785
#>     Attrib V44    0.040405026525104776
#>     Attrib V45    -0.06716704592434734
#>     Attrib V46    -0.016850704375632696
#>     Attrib V47    -0.13049383575724538
#>     Attrib V48    0.19897842890705464
#>     Attrib V49    0.3542955504701651
#>     Attrib V5    -0.11685511793445924
#>     Attrib V50    -0.9874580336018932
#>     Attrib V51    -0.39706100348916656
#>     Attrib V52    -0.548930909076019
#>     Attrib V53    0.38491683935103155
#>     Attrib V54    1.1074088418998496
#>     Attrib V55    0.0027212112329557314
#>     Attrib V56    0.49955477306967827
#>     Attrib V57    0.41120024543411626
#>     Attrib V58    0.5806519208860974
#>     Attrib V59    1.0290968380859762
#>     Attrib V6    0.11839341948680282
#>     Attrib V60    0.557638192114139
#>     Attrib V7    0.3372090251983584
#>     Attrib V8    0.1762447054225578
#>     Attrib V9    0.7302604388483989
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.49250294673796713
#>     Attrib V1    0.20993514688394135
#>     Attrib V10    0.5515210721046904
#>     Attrib V11    0.7909906483517637
#>     Attrib V12    0.9999776733214379
#>     Attrib V13    0.10980379355603354
#>     Attrib V14    -0.14819174613385663
#>     Attrib V15    -0.32827730134373995
#>     Attrib V16    -0.3986883101418838
#>     Attrib V17    -0.6376236376083614
#>     Attrib V18    -0.23220971306995516
#>     Attrib V19    -0.46176918712169834
#>     Attrib V2    0.4883412357133052
#>     Attrib V20    -0.24912075992017893
#>     Attrib V21    0.008799728517852792
#>     Attrib V22    0.22380356268008098
#>     Attrib V23    0.0834303965551749
#>     Attrib V24    -0.24663378522090623
#>     Attrib V25    -0.1096764816335769
#>     Attrib V26    0.3398055581045216
#>     Attrib V27    0.8999535454388309
#>     Attrib V28    1.312448103908852
#>     Attrib V29    0.7594726007823066
#>     Attrib V3    -0.11316425118931625
#>     Attrib V30    0.6873206344669451
#>     Attrib V31    -0.2468981196594698
#>     Attrib V32    -0.20659382921878133
#>     Attrib V33    0.013365465072081225
#>     Attrib V34    1.1836745920300802E-4
#>     Attrib V35    0.17390782752469033
#>     Attrib V36    -0.309611580243273
#>     Attrib V37    0.10971947440589996
#>     Attrib V38    0.20592788582814606
#>     Attrib V39    0.2392131921177622
#>     Attrib V4    0.5822687162498921
#>     Attrib V40    -0.045927985092558556
#>     Attrib V41    0.1858555218094908
#>     Attrib V42    -0.25609154284478164
#>     Attrib V43    -0.1639522590717982
#>     Attrib V44    -0.008968667088629596
#>     Attrib V45    0.2726198755465888
#>     Attrib V46    0.6023130847039361
#>     Attrib V47    0.4226957902376429
#>     Attrib V48    0.5520592016479684
#>     Attrib V49    0.6116487858087161
#>     Attrib V5    -0.20429684674187412
#>     Attrib V50    -0.5804275672179402
#>     Attrib V51    0.34933977697676083
#>     Attrib V52    0.44517810954226633
#>     Attrib V53    0.14717677470616417
#>     Attrib V54    -0.06250160352706728
#>     Attrib V55    -0.20951646220488243
#>     Attrib V56    -0.42405794918121137
#>     Attrib V57    -0.04151082157814002
#>     Attrib V58    -0.10463325789426374
#>     Attrib V59    0.18623343854251206
#>     Attrib V6    0.33643729112790294
#>     Attrib V60    0.275844734780189
#>     Attrib V7    -0.4476666369868204
#>     Attrib V8    -0.09974112699361763
#>     Attrib V9    0.6216505351080213
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.2691381229631747
#>     Attrib V1    -0.19893052740802472
#>     Attrib V10    0.1335604612457126
#>     Attrib V11    0.18708183387813146
#>     Attrib V12    0.30725751794924183
#>     Attrib V13    -0.08699407589503409
#>     Attrib V14    -0.18815716638518545
#>     Attrib V15    -0.05732822578430539
#>     Attrib V16    -0.18505460354490766
#>     Attrib V17    -0.01986151947884676
#>     Attrib V18    0.06842530975320579
#>     Attrib V19    0.06696562091156649
#>     Attrib V2    -0.022335037377922726
#>     Attrib V20    0.14937551343968405
#>     Attrib V21    0.18305718921552855
#>     Attrib V22    0.31650484602324563
#>     Attrib V23    0.30662929307895986
#>     Attrib V24    0.28188264405334196
#>     Attrib V25    -0.06436979829678485
#>     Attrib V26    -0.5092457890346875
#>     Attrib V27    -0.24550055391727033
#>     Attrib V28    0.006586344429629721
#>     Attrib V29    -0.26790207096160334
#>     Attrib V3    -0.06658458155117811
#>     Attrib V30    0.4164772422791374
#>     Attrib V31    -0.7859209298786923
#>     Attrib V32    0.026166327082897522
#>     Attrib V33    0.8388898015528039
#>     Attrib V34    0.1351288678792011
#>     Attrib V35    -0.026563644049673305
#>     Attrib V36    -0.6175351435758134
#>     Attrib V37    -0.6711039243239645
#>     Attrib V38    0.2884105437208858
#>     Attrib V39    0.08648768525361114
#>     Attrib V4    0.5771342603231049
#>     Attrib V40    -0.34319133320986356
#>     Attrib V41    -0.19862209327585095
#>     Attrib V42    -0.09275824939144643
#>     Attrib V43    0.29773235477888765
#>     Attrib V44    0.20419894117320128
#>     Attrib V45    -0.001982559771792424
#>     Attrib V46    0.1998561841916589
#>     Attrib V47    0.05181857884572272
#>     Attrib V48    0.2742828101094295
#>     Attrib V49    0.5094596761763874
#>     Attrib V5    -0.17619224374137485
#>     Attrib V50    -1.1113458720621703
#>     Attrib V51    -0.18339479902240702
#>     Attrib V52    -0.19122291992228205
#>     Attrib V53    0.29434204400997815
#>     Attrib V54    0.49373091183210227
#>     Attrib V55    -0.3120002446105482
#>     Attrib V56    0.06835325394337827
#>     Attrib V57    0.08531939465130249
#>     Attrib V58    0.24976903520916083
#>     Attrib V59    0.6081226667937106
#>     Attrib V6    0.046776168954510276
#>     Attrib V60    0.37918658596505955
#>     Attrib V7    -0.16804867946511434
#>     Attrib V8    -0.1493010333692903
#>     Attrib V9    0.6918349601944266
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.394946527124169
#>     Attrib V1    0.040044275784534844
#>     Attrib V10    0.8980858638191281
#>     Attrib V11    1.112150000590588
#>     Attrib V12    1.6148613556135054
#>     Attrib V13    0.6620751163000475
#>     Attrib V14    -0.0503652706543858
#>     Attrib V15    -0.6355637245582727
#>     Attrib V16    -0.7799815973545199
#>     Attrib V17    -0.705002935758361
#>     Attrib V18    0.029239119182703263
#>     Attrib V19    -0.549386374882693
#>     Attrib V2    0.7716466837990702
#>     Attrib V20    -0.36993886184492875
#>     Attrib V21    0.3345507886199005
#>     Attrib V22    0.8702178588327705
#>     Attrib V23    0.7187656390389422
#>     Attrib V24    0.11928524580011476
#>     Attrib V25    0.2927102770773648
#>     Attrib V26    0.9946348398205351
#>     Attrib V27    1.4366538082161797
#>     Attrib V28    1.783475092947793
#>     Attrib V29    1.0528782369581438
#>     Attrib V3    -0.016384975151783734
#>     Attrib V30    0.7429891577499
#>     Attrib V31    -0.42358435265054517
#>     Attrib V32    -0.5069314777721828
#>     Attrib V33    -0.5178037578672234
#>     Attrib V34    -0.5097827322813001
#>     Attrib V35    -0.1397657576191475
#>     Attrib V36    -0.6645181747269328
#>     Attrib V37    -0.1710489231905987
#>     Attrib V38    -0.05070882936440075
#>     Attrib V39    0.5402995952456872
#>     Attrib V4    0.7671401431199645
#>     Attrib V40    0.17554677731868917
#>     Attrib V41    0.574364834899774
#>     Attrib V42    -0.28651106148202776
#>     Attrib V43    0.039143505691296016
#>     Attrib V44    0.4543619952396021
#>     Attrib V45    0.4602162763707551
#>     Attrib V46    0.7555286378935925
#>     Attrib V47    0.6758766058806224
#>     Attrib V48    0.956336010092035
#>     Attrib V49    1.0349522850290562
#>     Attrib V5    -0.2059538177387633
#>     Attrib V50    -0.7362143353401244
#>     Attrib V51    1.0044130120628434
#>     Attrib V52    0.7765544268268335
#>     Attrib V53    0.44386092035004193
#>     Attrib V54    -0.2907946515818591
#>     Attrib V55    -0.42531433001164387
#>     Attrib V56    -0.3592892770407049
#>     Attrib V57    -0.3615928162765031
#>     Attrib V58    -0.1219370010317243
#>     Attrib V59    -0.03514908137655819
#>     Attrib V6    0.8669967137345725
#>     Attrib V60    -0.2185106616607719
#>     Attrib V7    -0.6813441536184689
#>     Attrib V8    0.12515704862385088
#>     Attrib V9    0.8698999653247677
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.20728937368326422
#>     Attrib V1    0.24609711390733233
#>     Attrib V10    -0.12404668494110613
#>     Attrib V11    -0.20476735645264446
#>     Attrib V12    -0.30884449017681737
#>     Attrib V13    0.195956122855418
#>     Attrib V14    0.3135913556612135
#>     Attrib V15    0.07238951532081205
#>     Attrib V16    0.2581582409327268
#>     Attrib V17    -0.14090484816171361
#>     Attrib V18    -0.16176295105539598
#>     Attrib V19    -0.0696714398359567
#>     Attrib V2    -0.02358601382182061
#>     Attrib V20    -0.30289756716095534
#>     Attrib V21    -0.28167679584453365
#>     Attrib V22    -0.46537346684912345
#>     Attrib V23    -0.49092015990643656
#>     Attrib V24    -0.35763027810334824
#>     Attrib V25    0.1451612424580408
#>     Attrib V26    0.609945873218848
#>     Attrib V27    0.20438755341289516
#>     Attrib V28    -0.08090065803350913
#>     Attrib V29    0.2934750203724877
#>     Attrib V3    -0.006245278374340169
#>     Attrib V30    -0.32270544359270187
#>     Attrib V31    0.9459721394166976
#>     Attrib V32    -0.05013941754093077
#>     Attrib V33    -0.8156393993305181
#>     Attrib V34    -0.10147666645645394
#>     Attrib V35    0.05311013871796377
#>     Attrib V36    0.7740740625861501
#>     Attrib V37    0.6800242128203766
#>     Attrib V38    -0.4150755248933704
#>     Attrib V39    -0.2821976912859877
#>     Attrib V4    -0.5683999949595862
#>     Attrib V40    0.31712022058516276
#>     Attrib V41    0.2781724851862372
#>     Attrib V42    0.04574188351439086
#>     Attrib V43    -0.4895087248845809
#>     Attrib V44    -0.35778433026038925
#>     Attrib V45    -0.06914374715106923
#>     Attrib V46    -0.3309590985577494
#>     Attrib V47    -0.19247502661206306
#>     Attrib V48    -0.4253590100235571
#>     Attrib V49    -0.7310008568141015
#>     Attrib V5    0.25089535057354456
#>     Attrib V50    1.2281146468733795
#>     Attrib V51    0.09185091077864248
#>     Attrib V52    0.102196684052656
#>     Attrib V53    -0.2688429633566528
#>     Attrib V54    -0.2754606456074362
#>     Attrib V55    0.3180806410916915
#>     Attrib V56    -0.28098808283211874
#>     Attrib V57    -0.0016933305488003772
#>     Attrib V58    -0.32516681083457494
#>     Attrib V59    -0.5357897712517619
#>     Attrib V6    0.08389246073749804
#>     Attrib V60    -0.1930563173010948
#>     Attrib V7    0.3115280101822448
#>     Attrib V8    0.2207799756010221
#>     Attrib V9    -0.7385658025116586
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.26336082313427106
#>     Attrib V1    -0.2878849155289733
#>     Attrib V10    0.1308241448276932
#>     Attrib V11    0.2043970322219466
#>     Attrib V12    0.4169186153831711
#>     Attrib V13    -0.2131751917938738
#>     Attrib V14    -0.335644645628705
#>     Attrib V15    -0.2541335269214627
#>     Attrib V16    -0.38657105526820396
#>     Attrib V17    -0.08370323774063679
#>     Attrib V18    0.049506948190325986
#>     Attrib V19    -0.07474711060979809
#>     Attrib V2    -0.042449451909428816
#>     Attrib V20    0.16121164017918987
#>     Attrib V21    0.1078219978036017
#>     Attrib V22    0.3427785065054
#>     Attrib V23    0.3668206603529928
#>     Attrib V24    0.2031033342415622
#>     Attrib V25    -0.05986065655108965
#>     Attrib V26    -0.49390023143791495
#>     Attrib V27    -0.042906641693911625
#>     Attrib V28    0.2958261409150057
#>     Attrib V29    -0.11988698458085302
#>     Attrib V3    -0.14734391640155695
#>     Attrib V30    0.5647426146859806
#>     Attrib V31    -0.8854335397566405
#>     Attrib V32    -0.12236735650290208
#>     Attrib V33    0.730340699665989
#>     Attrib V34    0.21789228969824093
#>     Attrib V35    0.18705957611896307
#>     Attrib V36    -0.473957140798618
#>     Attrib V37    -0.46462275492805094
#>     Attrib V38    0.4651770787292731
#>     Attrib V39    0.19073940868024342
#>     Attrib V4    0.5033151364327123
#>     Attrib V40    -0.33120816344785
#>     Attrib V41    -0.23061479269194393
#>     Attrib V42    -0.06868525236870603
#>     Attrib V43    0.3429498013039272
#>     Attrib V44    0.2777567125062785
#>     Attrib V45    0.16513854272758594
#>     Attrib V46    0.3033334074508772
#>     Attrib V47    0.1678498732183825
#>     Attrib V48    0.3534567423436088
#>     Attrib V49    0.581000283425752
#>     Attrib V5    -0.2537010030483124
#>     Attrib V50    -1.1248981733214463
#>     Attrib V51    -0.06505884608194022
#>     Attrib V52    -0.17809423992373485
#>     Attrib V53    0.16861782650752793
#>     Attrib V54    0.41381760176842164
#>     Attrib V55    -0.38345462960635407
#>     Attrib V56    0.09470044952778499
#>     Attrib V57    -0.04166009716350528
#>     Attrib V58    0.19556182363491614
#>     Attrib V59    0.4665410019351355
#>     Attrib V6    -0.011492736823753395
#>     Attrib V60    0.27638385006764404
#>     Attrib V7    -0.460603260269155
#>     Attrib V8    -0.181447700974646
#>     Attrib V9    0.7368454759563696
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.17620955919824058
#>     Attrib V1    -0.24872820123956715
#>     Attrib V10    -0.017279976103620535
#>     Attrib V11    0.0793008831057219
#>     Attrib V12    -0.002149096622894328
#>     Attrib V13    -0.2834094328845803
#>     Attrib V14    -0.06761112779261179
#>     Attrib V15    0.11036621606411516
#>     Attrib V16    -0.1495973585238302
#>     Attrib V17    0.15811652137224674
#>     Attrib V18    0.14653079610998604
#>     Attrib V19    0.18948621877794553
#>     Attrib V2    -0.1587203979616272
#>     Attrib V20    0.3858236715494623
#>     Attrib V21    0.3408769620592036
#>     Attrib V22    0.3850830844211384
#>     Attrib V23    0.36854536384404524
#>     Attrib V24    0.2510937915358415
#>     Attrib V25    -0.3402391091084922
#>     Attrib V26    -1.1335584550957665
#>     Attrib V27    -0.7839939182830734
#>     Attrib V28    -0.559177825779934
#>     Attrib V29    -0.6605451756124383
#>     Attrib V3    0.0014333437590217473
#>     Attrib V30    0.29665041955877053
#>     Attrib V31    -1.232087261428189
#>     Attrib V32    -0.010316599878994562
#>     Attrib V33    1.3405908717585013
#>     Attrib V34    0.3567403306286112
#>     Attrib V35    -0.01901597646421424
#>     Attrib V36    -0.8259473533231648
#>     Attrib V37    -1.0275305112853867
#>     Attrib V38    0.3172744013597121
#>     Attrib V39    0.01569262133386385
#>     Attrib V4    0.6972502442749875
#>     Attrib V40    -0.43138945482982005
#>     Attrib V41    -0.3816931195816259
#>     Attrib V42    0.0724538332357726
#>     Attrib V43    0.5816215353107138
#>     Attrib V44    0.24973485567567444
#>     Attrib V45    -0.02296937851146654
#>     Attrib V46    0.19475426009041058
#>     Attrib V47    -0.034791241006551975
#>     Attrib V48    0.2729572993848618
#>     Attrib V49    0.4990102474255027
#>     Attrib V5    -0.10078646094232797
#>     Attrib V50    -1.3104135334719698
#>     Attrib V51    -0.3971016694658
#>     Attrib V52    -0.36243213973082666
#>     Attrib V53    0.27856744228964325
#>     Attrib V54    0.7500085891656085
#>     Attrib V55    -0.2747744280430986
#>     Attrib V56    0.3131226072960898
#>     Attrib V57    0.2734999293687413
#>     Attrib V58    0.6040021887842068
#>     Attrib V59    0.814668739267361
#>     Attrib V6    -0.05559961909790106
#>     Attrib V60    0.45452753819070846
#>     Attrib V7    0.03929557513847501
#>     Attrib V8    -0.029161868227494572
#>     Attrib V9    0.9055047139036976
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.04490188057884965
#>     Attrib V1    0.05584798098429526
#>     Attrib V10    -0.2124250953860476
#>     Attrib V11    -0.08873964293767392
#>     Attrib V12    0.05263004429754514
#>     Attrib V13    0.01654720353641374
#>     Attrib V14    0.06975422165562462
#>     Attrib V15    0.13940081538686952
#>     Attrib V16    -0.032783072893409884
#>     Attrib V17    0.15155168708221034
#>     Attrib V18    0.10583451840739998
#>     Attrib V19    0.018861145202170523
#>     Attrib V2    0.03497622992277938
#>     Attrib V20    0.25881840367246345
#>     Attrib V21    0.1843347953946522
#>     Attrib V22    0.09251245170292481
#>     Attrib V23    0.1518058162927744
#>     Attrib V24    0.16383360308732822
#>     Attrib V25    -0.03839521179414922
#>     Attrib V26    -0.5414620400510735
#>     Attrib V27    -0.40936404288285405
#>     Attrib V28    -0.4077110566153494
#>     Attrib V29    -0.4147374447413478
#>     Attrib V3    0.15414993967230983
#>     Attrib V30    0.01043874375322569
#>     Attrib V31    -0.600183129233946
#>     Attrib V32    -0.10736618872351575
#>     Attrib V33    0.4399011684643967
#>     Attrib V34    0.17140175309718034
#>     Attrib V35    0.05464640099059297
#>     Attrib V36    -0.2393374792833662
#>     Attrib V37    -0.29970653218294335
#>     Attrib V38    0.18608998047681988
#>     Attrib V39    0.10946392080418431
#>     Attrib V4    0.37758432836424416
#>     Attrib V40    -0.12738206293200074
#>     Attrib V41    -0.09968202782148414
#>     Attrib V42    0.027415581342085067
#>     Attrib V43    0.16106994834266944
#>     Attrib V44    0.02191631022819199
#>     Attrib V45    -0.08149798235366663
#>     Attrib V46    0.033269441663933495
#>     Attrib V47    -0.042029217971453044
#>     Attrib V48    0.02526364004022896
#>     Attrib V49    0.20884176804304702
#>     Attrib V5    0.023901798827838685
#>     Attrib V50    -0.4548206458148191
#>     Attrib V51    -0.19759306781868471
#>     Attrib V52    -0.2006453918634273
#>     Attrib V53    0.28388438560304013
#>     Attrib V54    0.45747101286247965
#>     Attrib V55    0.008440728519148621
#>     Attrib V56    0.23824049399019404
#>     Attrib V57    0.3173314900494813
#>     Attrib V58    0.26523974340144585
#>     Attrib V59    0.6149322728128804
#>     Attrib V6    0.1268557760183292
#>     Attrib V60    0.3940348170603063
#>     Attrib V7    0.12963173980561052
#>     Attrib V8    -0.04247817033175884
#>     Attrib V9    0.22958651444624872
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.17697934175935814
#>     Attrib V1    -0.02181521171774632
#>     Attrib V10    -0.1472028570450549
#>     Attrib V11    0.09401190134319025
#>     Attrib V12    0.2626835222561392
#>     Attrib V13    -0.07041835182500303
#>     Attrib V14    -0.08352286773225129
#>     Attrib V15    0.1614348892440322
#>     Attrib V16    -0.2112456146507878
#>     Attrib V17    0.10225515094948483
#>     Attrib V18    0.028867024424358873
#>     Attrib V19    0.020166836039409674
#>     Attrib V2    -0.11026312299383018
#>     Attrib V20    0.30356759366880703
#>     Attrib V21    0.16937779027386554
#>     Attrib V22    0.1418739629015956
#>     Attrib V23    0.22762109199641944
#>     Attrib V24    0.4352107696604066
#>     Attrib V25    0.12310337098774506
#>     Attrib V26    -0.7027608540607201
#>     Attrib V27    -0.9191690422324885
#>     Attrib V28    -1.0797274851006073
#>     Attrib V29    -1.2561538559953396
#>     Attrib V3    -0.024137851382965796
#>     Attrib V30    -0.035061505754357625
#>     Attrib V31    -0.9215868713383044
#>     Attrib V32    -0.02541941171451921
#>     Attrib V33    1.1462070442523669
#>     Attrib V34    0.44018109173513403
#>     Attrib V35    0.17359582425905257
#>     Attrib V36    -0.613404018800728
#>     Attrib V37    -0.8596512312264055
#>     Attrib V38    0.1486613933579606
#>     Attrib V39    0.016573020684893826
#>     Attrib V4    0.5044583343180817
#>     Attrib V40    -0.3167529188057728
#>     Attrib V41    -0.3197427889700372
#>     Attrib V42    -0.031095093704890383
#>     Attrib V43    0.35168998783806216
#>     Attrib V44    0.11323919455499873
#>     Attrib V45    -0.10963459250951141
#>     Attrib V46    -0.0038420773436457444
#>     Attrib V47    -0.10401069417025087
#>     Attrib V48    0.29747727507203653
#>     Attrib V49    0.4330447847541002
#>     Attrib V5    -0.15712739141494295
#>     Attrib V50    -0.9896282083143859
#>     Attrib V51    -0.36218452873807067
#>     Attrib V52    -0.4254219805737515
#>     Attrib V53    0.3551849435262295
#>     Attrib V54    1.0968480187849143
#>     Attrib V55    0.021728212620309956
#>     Attrib V56    0.42544235724894547
#>     Attrib V57    0.354174860753025
#>     Attrib V58    0.5491000597907105
#>     Attrib V59    0.9443429540345859
#>     Attrib V6    0.07479479732816016
#>     Attrib V60    0.5347689344946083
#>     Attrib V7    0.22170570779320012
#>     Attrib V8    0.03575811786109549
#>     Attrib V9    0.6471748006372663
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.09183419479642894
#>     Attrib V1    0.2246507553947125
#>     Attrib V10    -0.18575193792930317
#>     Attrib V11    -0.2647789437092396
#>     Attrib V12    -0.1450620004215227
#>     Attrib V13    0.2409435442739031
#>     Attrib V14    0.22887470972874496
#>     Attrib V15    0.06590926867316185
#>     Attrib V16    0.24025311119490067
#>     Attrib V17    -0.23534406395502622
#>     Attrib V18    -0.28906464194241344
#>     Attrib V19    -0.1887461576879182
#>     Attrib V2    0.059953791192454566
#>     Attrib V20    -0.4815935541457659
#>     Attrib V21    -0.44956683278203474
#>     Attrib V22    -0.4741107621219852
#>     Attrib V23    -0.6232593514372452
#>     Attrib V24    -0.41462766489230996
#>     Attrib V25    0.2527296193820701
#>     Attrib V26    1.0446715655203413
#>     Attrib V27    0.6102594000152332
#>     Attrib V28    0.2901244482013336
#>     Attrib V29    0.6348245616476922
#>     Attrib V3    -0.026430379297037745
#>     Attrib V30    -0.33025281035779785
#>     Attrib V31    1.1994907260827887
#>     Attrib V32    -0.0683009303639794
#>     Attrib V33    -1.2561363391555953
#>     Attrib V34    -0.18988054871463017
#>     Attrib V35    0.08247258308484073
#>     Attrib V36    0.9606708381017484
#>     Attrib V37    1.0390036730089514
#>     Attrib V38    -0.46861177879530885
#>     Attrib V39    -0.19715042682480846
#>     Attrib V4    -0.6620265223961656
#>     Attrib V40    0.45228295403875846
#>     Attrib V41    0.418745276132519
#>     Attrib V42    -0.04308172025765843
#>     Attrib V43    -0.6864010999772912
#>     Attrib V44    -0.5367427295221894
#>     Attrib V45    -0.010737510124422872
#>     Attrib V46    -0.20871355341479408
#>     Attrib V47    -0.09992644157594457
#>     Attrib V48    -0.3634696588853742
#>     Attrib V49    -0.761339569843188
#>     Attrib V5    0.218235646708804
#>     Attrib V50    1.4114066975078434
#>     Attrib V51    0.24750618578159314
#>     Attrib V52    0.17787190580338016
#>     Attrib V53    -0.29569600283008185
#>     Attrib V54    -0.5438614538713891
#>     Attrib V55    0.3175335594458684
#>     Attrib V56    -0.3610656805922342
#>     Attrib V57    -0.060970412031771254
#>     Attrib V58    -0.5313589826800013
#>     Attrib V59    -0.5768656337170363
#>     Attrib V6    0.07351000804883921
#>     Attrib V60    -0.21169586035500992
#>     Attrib V7    0.07118309593010909
#>     Attrib V8    0.11340577638761996
#>     Attrib V9    -0.9934355819662725
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.21723729889053303
#>     Attrib V1    0.017728628968171758
#>     Attrib V10    0.037685949178886236
#>     Attrib V11    -0.027858096134133013
#>     Attrib V12    -0.0673360322362782
#>     Attrib V13    0.030492518240448095
#>     Attrib V14    0.022098920313324107
#>     Attrib V15    0.0155499113320437
#>     Attrib V16    0.11836120746588845
#>     Attrib V17    0.12247004568832116
#>     Attrib V18    0.09534024168308174
#>     Attrib V19    0.02375617640246704
#>     Attrib V2    0.017118185758786247
#>     Attrib V20    -0.1146447819171285
#>     Attrib V21    -0.11385210085019905
#>     Attrib V22    -0.08622666707466194
#>     Attrib V23    -0.101972330571068
#>     Attrib V24    -0.035676648721743275
#>     Attrib V25    0.018490077973080936
#>     Attrib V26    -0.005926282697154568
#>     Attrib V27    -0.07563075901088714
#>     Attrib V28    -0.068434401751721
#>     Attrib V29    -0.023668085231928034
#>     Attrib V3    0.10850232280371284
#>     Attrib V30    -0.052250187656556105
#>     Attrib V31    0.075832982214641
#>     Attrib V32    0.030612889271513136
#>     Attrib V33    -0.044194430980897
#>     Attrib V34    0.04229275020220538
#>     Attrib V35    0.06462166802085652
#>     Attrib V36    0.16931062904934388
#>     Attrib V37    0.18965641402515676
#>     Attrib V38    0.032737562086468656
#>     Attrib V39    0.02880850392192097
#>     Attrib V4    0.03946582493042081
#>     Attrib V40    0.07220609378466473
#>     Attrib V41    0.12181454052691992
#>     Attrib V42    0.11476855184992775
#>     Attrib V43    0.022239957099657676
#>     Attrib V44    0.018793132934821533
#>     Attrib V45    0.021901619583124757
#>     Attrib V46    0.038155077181062744
#>     Attrib V47    0.04297300944845544
#>     Attrib V48    -0.003942466837570448
#>     Attrib V49    -0.044489241748045964
#>     Attrib V5    0.11238355774029557
#>     Attrib V50    0.17214711821622067
#>     Attrib V51    0.12852749401465008
#>     Attrib V52    0.07543309972808415
#>     Attrib V53    0.06910658009847233
#>     Attrib V54    -0.022869959164597702
#>     Attrib V55    0.07967170391623057
#>     Attrib V56    0.04735882661777915
#>     Attrib V57    0.10414659829937026
#>     Attrib V58    0.07035838479217577
#>     Attrib V59    -0.03344518409426021
#>     Attrib V6    0.06456141565034551
#>     Attrib V60    0.08251020097659063
#>     Attrib V7    0.04351763110021373
#>     Attrib V8    0.032652276644861984
#>     Attrib V9    0.03759468743105148
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.08953260581955573
#>     Attrib V1    -0.1202729134404174
#>     Attrib V10    -0.011671685356527673
#>     Attrib V11    0.00916504931655705
#>     Attrib V12    0.005409663732567029
#>     Attrib V13    -0.21578774409308477
#>     Attrib V14    -0.1004656025487559
#>     Attrib V15    0.1797527126198689
#>     Attrib V16    -0.1321079125964468
#>     Attrib V17    0.1561783203543876
#>     Attrib V18    0.09266360980007189
#>     Attrib V19    0.10921956351196298
#>     Attrib V2    -0.08591104450437224
#>     Attrib V20    0.34107603247575813
#>     Attrib V21    0.27921005403818594
#>     Attrib V22    0.3335068937448073
#>     Attrib V23    0.2713577395315884
#>     Attrib V24    0.31889192750220474
#>     Attrib V25    -0.20642679969192576
#>     Attrib V26    -0.9549233219278255
#>     Attrib V27    -0.8245648334747556
#>     Attrib V28    -0.739520986195034
#>     Attrib V29    -0.8707900873916992
#>     Attrib V3    0.06475525710767643
#>     Attrib V30    0.13842532160207383
#>     Attrib V31    -0.9817766344869733
#>     Attrib V32    -0.04168646646174308
#>     Attrib V33    1.1339119457859639
#>     Attrib V34    0.3073406312781882
#>     Attrib V35    0.06369950668600242
#>     Attrib V36    -0.6595467645141211
#>     Attrib V37    -0.8734030135574421
#>     Attrib V38    0.2540754511626047
#>     Attrib V39    8.73333167093556E-4
#>     Attrib V4    0.5571674943075372
#>     Attrib V40    -0.4216745140941514
#>     Attrib V41    -0.285445782530787
#>     Attrib V42    0.04260277902407356
#>     Attrib V43    0.4663821807829437
#>     Attrib V44    0.20450094344965744
#>     Attrib V45    -0.026338125913902263
#>     Attrib V46    0.03882690613045377
#>     Attrib V47    -0.114907335421771
#>     Attrib V48    0.22056944277762616
#>     Attrib V49    0.3766096147497394
#>     Attrib V5    -0.08083936120028137
#>     Attrib V50    -1.0195088041579057
#>     Attrib V51    -0.35122316925374947
#>     Attrib V52    -0.399774202915939
#>     Attrib V53    0.2343327918773713
#>     Attrib V54    0.751368125716634
#>     Attrib V55    -0.11260985193491144
#>     Attrib V56    0.3454112685964769
#>     Attrib V57    0.3100652175320583
#>     Attrib V58    0.47992400381909506
#>     Attrib V59    0.7235842269269593
#>     Attrib V6    0.06005790295339734
#>     Attrib V60    0.4696512893944518
#>     Attrib V7    0.10365808369927129
#>     Attrib V8    0.054404049087952516
#>     Attrib V9    0.727974769444734
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.20377699602645144
#>     Attrib V1    0.21012864818244845
#>     Attrib V10    -0.20129321820164464
#>     Attrib V11    -0.29791874956212605
#>     Attrib V12    -0.38490405837963243
#>     Attrib V13    0.16989896858548564
#>     Attrib V14    0.3062457867743082
#>     Attrib V15    0.10965629886809168
#>     Attrib V16    0.3442713673433054
#>     Attrib V17    -0.1310237320911149
#>     Attrib V18    -0.16115254107863344
#>     Attrib V19    -0.13640238121391723
#>     Attrib V2    -0.02256038604415631
#>     Attrib V20    -0.3865931234231921
#>     Attrib V21    -0.36648037999554456
#>     Attrib V22    -0.603942068387196
#>     Attrib V23    -0.644407115863144
#>     Attrib V24    -0.40013723628461373
#>     Attrib V25    0.1708305470718266
#>     Attrib V26    0.6677897974472206
#>     Attrib V27    0.2321226833500591
#>     Attrib V28    -0.13565292109350974
#>     Attrib V29    0.3272284696105417
#>     Attrib V3    0.04441940370996329
#>     Attrib V30    -0.4788144210147089
#>     Attrib V31    1.0922242386136523
#>     Attrib V32    0.04352941623354894
#>     Attrib V33    -0.9710200742365199
#>     Attrib V34    -0.10218099013401083
#>     Attrib V35    -0.020977770799604386
#>     Attrib V36    0.8431186256013862
#>     Attrib V37    0.6851365187756802
#>     Attrib V38    -0.5918779305118035
#>     Attrib V39    -0.2915803926230487
#>     Attrib V4    -0.6969482402278196
#>     Attrib V40    0.3642977944843396
#>     Attrib V41    0.300470806290535
#>     Attrib V42    0.08769069795023668
#>     Attrib V43    -0.5472250063426557
#>     Attrib V44    -0.4259343355889122
#>     Attrib V45    -0.17677044750734147
#>     Attrib V46    -0.354487055974375
#>     Attrib V47    -0.17840540144695827
#>     Attrib V48    -0.459577317486197
#>     Attrib V49    -0.8135823081565192
#>     Attrib V5    0.26628038889639527
#>     Attrib V50    1.3310498307240803
#>     Attrib V51    0.14464708566690943
#>     Attrib V52    0.12637915999142532
#>     Attrib V53    -0.2939807613970847
#>     Attrib V54    -0.36685981144035135
#>     Attrib V55    0.4252326693532241
#>     Attrib V56    -0.2688711380284809
#>     Attrib V57    0.02570330479845561
#>     Attrib V58    -0.3389886515602037
#>     Attrib V59    -0.5185569456829243
#>     Attrib V6    0.06134853501214797
#>     Attrib V60    -0.12600295195420197
#>     Attrib V7    0.3680863968121395
#>     Attrib V8    0.2909971169363041
#>     Attrib V9    -0.8827301169275333
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.8800627221114609
#>     Attrib V1    0.06154892569637356
#>     Attrib V10    0.2604996651375939
#>     Attrib V11    0.6362417951346016
#>     Attrib V12    1.296527646860465
#>     Attrib V13    0.36616875325919646
#>     Attrib V14    0.08660059635732327
#>     Attrib V15    -0.09590292164269229
#>     Attrib V16    -0.4213821362257488
#>     Attrib V17    -0.7762962292606959
#>     Attrib V18    -0.4184767175544067
#>     Attrib V19    -0.6114151578788621
#>     Attrib V2    0.35431629237997103
#>     Attrib V20    -0.7596273408773354
#>     Attrib V21    -0.4458139860174438
#>     Attrib V22    -0.27901785953900177
#>     Attrib V23    -0.5024601898819273
#>     Attrib V24    -0.16568813625554246
#>     Attrib V25    0.07309633772725561
#>     Attrib V26    0.31058178873778103
#>     Attrib V27    0.7792845630978638
#>     Attrib V28    0.7224821203564317
#>     Attrib V29    -0.015661850631186663
#>     Attrib V3    -0.25607202787936956
#>     Attrib V30    0.33045005665364174
#>     Attrib V31    -0.08183340865231224
#>     Attrib V32    0.14792967971069082
#>     Attrib V33    0.3393667255529306
#>     Attrib V34    0.09100879123388558
#>     Attrib V35    -0.054310069925189705
#>     Attrib V36    -0.8202799335122304
#>     Attrib V37    -0.7759682118931923
#>     Attrib V38    -0.4471795301301212
#>     Attrib V39    0.031205592117983228
#>     Attrib V4    0.572438295757184
#>     Attrib V40    0.013254310418712598
#>     Attrib V41    0.29312088514840146
#>     Attrib V42    0.06274294703420015
#>     Attrib V43    -0.12624369765492308
#>     Attrib V44    -0.37965355848549537
#>     Attrib V45    0.09310793637374344
#>     Attrib V46    0.30989104155588393
#>     Attrib V47    0.07327086352881222
#>     Attrib V48    0.6225555003124357
#>     Attrib V49    0.7309880345559454
#>     Attrib V5    -0.17476251325129002
#>     Attrib V50    -0.6201270857654284
#>     Attrib V51    0.14004420770464343
#>     Attrib V52    0.3273337720190439
#>     Attrib V53    0.3886779354126471
#>     Attrib V54    0.21607625807484324
#>     Attrib V55    0.11444371355894348
#>     Attrib V56    -0.4677386387535713
#>     Attrib V57    0.20395326253281731
#>     Attrib V58    0.3640785562761541
#>     Attrib V59    0.6711154773666856
#>     Attrib V6    0.6396629970118276
#>     Attrib V60    0.3766555605950599
#>     Attrib V7    -0.0923699888152451
#>     Attrib V8    0.15027711072225855
#>     Attrib V9    0.3825460532732063
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.11306275800930801
#>     Attrib V1    0.019970564649683466
#>     Attrib V10    -0.17280318926151036
#>     Attrib V11    -0.06266773149289008
#>     Attrib V12    0.12414964367786648
#>     Attrib V13    -0.09589062944884179
#>     Attrib V14    0.05184803390822458
#>     Attrib V15    0.200110223749182
#>     Attrib V16    -0.14197563550798853
#>     Attrib V17    0.1323699005255452
#>     Attrib V18    0.09226094912487875
#>     Attrib V19    0.026817548311473857
#>     Attrib V2    -0.07113257838213323
#>     Attrib V20    0.3343478447985026
#>     Attrib V21    0.3088633629200215
#>     Attrib V22    0.24911913932182703
#>     Attrib V23    0.24107922321273126
#>     Attrib V24    0.3007903645669635
#>     Attrib V25    -0.08621937294285337
#>     Attrib V26    -0.7679047403948638
#>     Attrib V27    -0.7496029745449343
#>     Attrib V28    -0.7933576165023263
#>     Attrib V29    -0.7860479730443457
#>     Attrib V3    0.039771287794647295
#>     Attrib V30    0.04923318009211784
#>     Attrib V31    -0.9388406852259573
#>     Attrib V32    -0.14223081970699947
#>     Attrib V33    0.904368357596847
#>     Attrib V34    0.2307747343212301
#>     Attrib V35    0.020516318249832872
#>     Attrib V36    -0.4650103291862263
#>     Attrib V37    -0.6440230186368496
#>     Attrib V38    0.259549041036415
#>     Attrib V39    0.013088123120316054
#>     Attrib V4    0.5038218198680829
#>     Attrib V40    -0.29362922900794436
#>     Attrib V41    -0.235492990372844
#>     Attrib V42    0.017261634132035977
#>     Attrib V43    0.39241491306019494
#>     Attrib V44    0.13323856013417829
#>     Attrib V45    -0.057041574722977176
#>     Attrib V46    -0.012600202045105995
#>     Attrib V47    -0.1404669554848033
#>     Attrib V48    0.16624817261185226
#>     Attrib V49    0.3024195760695855
#>     Attrib V5    -0.03095883605913598
#>     Attrib V50    -0.8687487621128351
#>     Attrib V51    -0.2710142784159496
#>     Attrib V52    -0.3303481009515196
#>     Attrib V53    0.2996668494589597
#>     Attrib V54    0.850811646720829
#>     Attrib V55    -0.033835071148286794
#>     Attrib V56    0.3538141704223458
#>     Attrib V57    0.3230872408616464
#>     Attrib V58    0.49020274085306775
#>     Attrib V59    0.8441752090816873
#>     Attrib V6    0.05431410481163311
#>     Attrib V60    0.4678086930754818
#>     Attrib V7    0.18034911725378885
#>     Attrib V8    -0.02996694748813975
#>     Attrib V9    0.547570329397633
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.0206128216981676
#>     Attrib V1    0.22880677649659062
#>     Attrib V10    -0.2003589497200457
#>     Attrib V11    -0.27090044314806355
#>     Attrib V12    -0.24012700351820443
#>     Attrib V13    0.17386337692334683
#>     Attrib V14    0.2460798713997569
#>     Attrib V15    0.08227330871353376
#>     Attrib V16    0.242609405796453
#>     Attrib V17    -0.20905266283163276
#>     Attrib V18    -0.2819764029747001
#>     Attrib V19    -0.2123304392228209
#>     Attrib V2    -0.007857986981306075
#>     Attrib V20    -0.47449818020338647
#>     Attrib V21    -0.3847975960354811
#>     Attrib V22    -0.6042343325601918
#>     Attrib V23    -0.6961722764944186
#>     Attrib V24    -0.3997391327146262
#>     Attrib V25    0.189922912285719
#>     Attrib V26    0.8040780895980283
#>     Attrib V27    0.40477752457948224
#>     Attrib V28    0.04317021982801677
#>     Attrib V29    0.4621088087901894
#>     Attrib V3    -0.05739824535087765
#>     Attrib V30    -0.34322233362872456
#>     Attrib V31    1.1238621297547424
#>     Attrib V32    -0.025200267950378066
#>     Attrib V33    -1.03853899363343
#>     Attrib V34    -0.1577014256635003
#>     Attrib V35    0.01017521567293126
#>     Attrib V36    0.7850686167880149
#>     Attrib V37    0.8057297718437662
#>     Attrib V38    -0.5485715510453278
#>     Attrib V39    -0.2596613431954751
#>     Attrib V4    -0.5950350907129871
#>     Attrib V40    0.43675483068771387
#>     Attrib V41    0.4060689474527566
#>     Attrib V42    -0.0039897938690322795
#>     Attrib V43    -0.5774182319453383
#>     Attrib V44    -0.4832234863316187
#>     Attrib V45    -0.1433861437204677
#>     Attrib V46    -0.3138348783688978
#>     Attrib V47    -0.1979203294083895
#>     Attrib V48    -0.37252929262807816
#>     Attrib V49    -0.7913506192533002
#>     Attrib V5    0.23879534745007489
#>     Attrib V50    1.2816577285336308
#>     Attrib V51    0.13813028709112046
#>     Attrib V52    0.16515834162224333
#>     Attrib V53    -0.2888849167228765
#>     Attrib V54    -0.39244719201333195
#>     Attrib V55    0.3050777785133833
#>     Attrib V56    -0.368249896244247
#>     Attrib V57    0.10336231690381636
#>     Attrib V58    -0.4132562842462667
#>     Attrib V59    -0.464159449732158
#>     Attrib V6    0.0735935017443239
#>     Attrib V60    -0.10778419460990958
#>     Attrib V7    0.2481730330957472
#>     Attrib V8    0.1275861292338252
#>     Attrib V9    -0.8754316572041518
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.04229191489446756
#>     Attrib V1    0.10709169975783553
#>     Attrib V10    -0.22367731679392314
#>     Attrib V11    -0.09011879147342873
#>     Attrib V12    0.05929772852234754
#>     Attrib V13    -0.08095539100134408
#>     Attrib V14    0.07855686140218919
#>     Attrib V15    0.15855935588098305
#>     Attrib V16    0.05321140931271319
#>     Attrib V17    0.15104938505428278
#>     Attrib V18    0.08442773874428099
#>     Attrib V19    -0.007885630605154376
#>     Attrib V2    0.04674381408772886
#>     Attrib V20    0.2509000750120716
#>     Attrib V21    0.1564631628782211
#>     Attrib V22    0.0591668464970649
#>     Attrib V23    0.04028027576881233
#>     Attrib V24    0.19324212510374
#>     Attrib V25    -0.1064706525580025
#>     Attrib V26    -0.6031812052753265
#>     Attrib V27    -0.5589078501136435
#>     Attrib V28    -0.5941029257067176
#>     Attrib V29    -0.557538766398465
#>     Attrib V3    0.08050369533808538
#>     Attrib V30    -0.05525082444432729
#>     Attrib V31    -0.5914534383732235
#>     Attrib V32    -0.12275184855673718
#>     Attrib V33    0.5007079542246551
#>     Attrib V34    0.15724630860668248
#>     Attrib V35    0.061249013700669666
#>     Attrib V36    -0.297130814436741
#>     Attrib V37    -0.38545260035791495
#>     Attrib V38    0.14986424022117595
#>     Attrib V39    0.0116276568502615
#>     Attrib V4    0.3897801629866645
#>     Attrib V40    -0.14656460700121415
#>     Attrib V41    -0.18482908581591231
#>     Attrib V42    0.009645549011140729
#>     Attrib V43    0.30037849066849553
#>     Attrib V44    0.025925196741290478
#>     Attrib V45    -0.11266593849826625
#>     Attrib V46    0.010949745908165463
#>     Attrib V47    -0.13363468923172808
#>     Attrib V48    0.08813789461494403
#>     Attrib V49    0.1797740768590066
#>     Attrib V5    -0.006456767154809258
#>     Attrib V50    -0.4942172672793459
#>     Attrib V51    -0.24669671591500972
#>     Attrib V52    -0.2155968077304139
#>     Attrib V53    0.32051874555271515
#>     Attrib V54    0.6189972531946247
#>     Attrib V55    0.05252928591870276
#>     Attrib V56    0.3186617870693577
#>     Attrib V57    0.3705592224833668
#>     Attrib V58    0.379909494980707
#>     Attrib V59    0.6588376702223172
#>     Attrib V6    0.09003634298501002
#>     Attrib V60    0.42082538015327225
#>     Attrib V7    0.1099901740624228
#>     Attrib V8    -0.07864607510123209
#>     Attrib V9    0.2480401439107257
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.21295359881325793
#>     Attrib V1    0.0642181239896052
#>     Attrib V10    -0.09457395042137184
#>     Attrib V11    -0.12632510982981884
#>     Attrib V12    -0.30788137291385037
#>     Attrib V13    0.060852359139403865
#>     Attrib V14    0.20629032188237148
#>     Attrib V15    0.07757772429718209
#>     Attrib V16    0.1764390504937431
#>     Attrib V17    0.17199736395807386
#>     Attrib V18    0.06373757408775782
#>     Attrib V19    -0.009939740677659055
#>     Attrib V2    -0.11868847515484272
#>     Attrib V20    -0.28059663414184
#>     Attrib V21    -0.2623780545488314
#>     Attrib V22    -0.260253744227243
#>     Attrib V23    -0.24827122532703058
#>     Attrib V24    -0.21511723935804228
#>     Attrib V25    0.1470999709489211
#>     Attrib V26    0.32268716774945017
#>     Attrib V27    -0.08603003421292152
#>     Attrib V28    -0.19454081687236244
#>     Attrib V29    0.17429700609709814
#>     Attrib V3    0.04373496492904634
#>     Attrib V30    -0.14910252542841768
#>     Attrib V31    0.6187014019182728
#>     Attrib V32    0.14740858287567912
#>     Attrib V33    -0.3373406813279684
#>     Attrib V34    -0.14486868345291998
#>     Attrib V35    -0.008111920314110002
#>     Attrib V36    0.5467687903958484
#>     Attrib V37    0.4420543043641134
#>     Attrib V38    -0.3172078367302278
#>     Attrib V39    -0.24413015384640172
#>     Attrib V4    -0.25062653992269396
#>     Attrib V40    0.08292788176485741
#>     Attrib V41    0.11823652341443466
#>     Attrib V42    0.09319435954280163
#>     Attrib V43    -0.1819242720581381
#>     Attrib V44    -0.14890753672068063
#>     Attrib V45    -0.09966371041291275
#>     Attrib V46    -0.25799543656806817
#>     Attrib V47    -0.10100876327742392
#>     Attrib V48    -0.2829683898363182
#>     Attrib V49    -0.4223728694768056
#>     Attrib V5    0.22060542593815607
#>     Attrib V50    0.6600755050810333
#>     Attrib V51    0.040684751021106205
#>     Attrib V52    0.09525087756829463
#>     Attrib V53    -0.1821291261106876
#>     Attrib V54    -0.11365100056402087
#>     Attrib V55    0.19595991942405006
#>     Attrib V56    -0.09705584747782203
#>     Attrib V57    0.013201342863079581
#>     Attrib V58    -0.12111408247344883
#>     Attrib V59    -0.3015754200618211
#>     Attrib V6    -0.00646533401106674
#>     Attrib V60    -0.12714530670435997
#>     Attrib V7    0.24118745112207762
#>     Attrib V8    0.1598932649254968
#>     Attrib V9    -0.3280420916988986
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.185465431667493
#>     Attrib V1    -3.366571143726179E-4
#>     Attrib V10    -0.0522739900746679
#>     Attrib V11    -0.11847870472939559
#>     Attrib V12    -0.21647203080514318
#>     Attrib V13    0.01688131904180572
#>     Attrib V14    0.1219243272725313
#>     Attrib V15    0.1030421161485209
#>     Attrib V16    0.15954514943229167
#>     Attrib V17    0.21919111555124232
#>     Attrib V18    0.13080786317680365
#>     Attrib V19    0.011632804000660772
#>     Attrib V2    -0.07289447293030009
#>     Attrib V20    -0.2054211304297048
#>     Attrib V21    -0.15526591105520746
#>     Attrib V22    -0.16691277329535179
#>     Attrib V23    -0.1493890361787448
#>     Attrib V24    -0.16559703739184325
#>     Attrib V25    0.10082219801418377
#>     Attrib V26    0.19355500798297706
#>     Attrib V27    -0.15358232414785203
#>     Attrib V28    -0.15640107184673152
#>     Attrib V29    0.10664486953952411
#>     Attrib V3    -0.0040452865606336345
#>     Attrib V30    -0.04867634205893107
#>     Attrib V31    0.44833706691490605
#>     Attrib V32    0.20281369971875735
#>     Attrib V33    -0.1821770645663108
#>     Attrib V34    -0.07373946600655565
#>     Attrib V35    -0.01174801808520711
#>     Attrib V36    0.4434984379339626
#>     Attrib V37    0.27671872888589005
#>     Attrib V38    -0.15913899481630728
#>     Attrib V39    -0.11704180353054876
#>     Attrib V4    -0.1623344727419483
#>     Attrib V40    0.1837255653545729
#>     Attrib V41    0.18656803701041597
#>     Attrib V42    0.12745242128651796
#>     Attrib V43    -0.020268888236313252
#>     Attrib V44    -0.04524905663737424
#>     Attrib V45    -0.11499565297437993
#>     Attrib V46    -0.15007672478378234
#>     Attrib V47    -0.028180275418180065
#>     Attrib V48    -0.1332513172636779
#>     Attrib V49    -0.28386306180788784
#>     Attrib V5    0.11051795062759183
#>     Attrib V50    0.4547647422613303
#>     Attrib V51    0.08337856600557468
#>     Attrib V52    0.04912204725259921
#>     Attrib V53    -0.18274783193433708
#>     Attrib V54    -0.09176235790234716
#>     Attrib V55    0.09341746786749841
#>     Attrib V56    -0.057412649299556244
#>     Attrib V57    0.04768279956239113
#>     Attrib V58    -0.08709817582040176
#>     Attrib V59    -0.2340903747484281
#>     Attrib V6    0.016917371378404013
#>     Attrib V60    -0.09945359134958848
#>     Attrib V7    0.14621164049444457
#>     Attrib V8    0.14305469271758595
#>     Attrib V9    -0.13711137906820722
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.5362300849672549
#>     Attrib V1    -0.09476130147293609
#>     Attrib V10    1.0849871596355254
#>     Attrib V11    1.1730433663443236
#>     Attrib V12    1.455773004741434
#>     Attrib V13    0.8256254515069473
#>     Attrib V14    0.3637291063319749
#>     Attrib V15    -0.665233930729408
#>     Attrib V16    -0.9388752224476401
#>     Attrib V17    -0.8080036875423358
#>     Attrib V18    0.2606605824611943
#>     Attrib V19    -0.5275454735942009
#>     Attrib V2    0.9596620045342444
#>     Attrib V20    -0.4381574429823721
#>     Attrib V21    0.7426449914104358
#>     Attrib V22    1.5712394211708198
#>     Attrib V23    1.3809613482948928
#>     Attrib V24    0.13063920785306907
#>     Attrib V25    0.01811523175269145
#>     Attrib V26    0.84651702607843
#>     Attrib V27    1.7108158291537063
#>     Attrib V28    2.5939885561629366
#>     Attrib V29    1.881065072618042
#>     Attrib V3    0.25107454306668897
#>     Attrib V30    0.9983967191765971
#>     Attrib V31    -0.9383606430409958
#>     Attrib V32    -0.8706109920162434
#>     Attrib V33    -0.8412707040612822
#>     Attrib V34    -1.0824856237781963
#>     Attrib V35    -0.5029083679599525
#>     Attrib V36    -1.1137948177562476
#>     Attrib V37    -0.5173355965012443
#>     Attrib V38    -0.34895147944921767
#>     Attrib V39    0.710223218826723
#>     Attrib V4    1.1322051947990042
#>     Attrib V40    0.33282763831168644
#>     Attrib V41    1.1229770557219123
#>     Attrib V42    0.027750902760960983
#>     Attrib V43    0.2416950739810709
#>     Attrib V44    1.1260839697309468
#>     Attrib V45    0.7864939691494961
#>     Attrib V46    0.9151539973515431
#>     Attrib V47    0.7567306500150132
#>     Attrib V48    1.1328779486718399
#>     Attrib V49    1.3744983535682216
#>     Attrib V5    0.022096161865454378
#>     Attrib V50    -1.0895811032496798
#>     Attrib V51    1.3394858513660108
#>     Attrib V52    0.9786525410380355
#>     Attrib V53    0.41482578435484835
#>     Attrib V54    -0.8890641198601843
#>     Attrib V55    -0.7967766966346976
#>     Attrib V56    -0.5822112011245477
#>     Attrib V57    -0.5021731511023642
#>     Attrib V58    0.05328829279635667
#>     Attrib V59    -0.30643672993101717
#>     Attrib V6    1.4870421724641372
#>     Attrib V60    -0.483437377932848
#>     Attrib V7    -0.6854776426349612
#>     Attrib V8    0.4141633717391612
#>     Attrib V9    1.2213839770892558
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.24859548504377454
#>     Attrib V1    0.03412358268494344
#>     Attrib V10    0.005514054726368788
#>     Attrib V11    -0.062403837879160325
#>     Attrib V12    -0.0521718908350042
#>     Attrib V13    -0.015083835764836127
#>     Attrib V14    0.09470216879703915
#>     Attrib V15    0.018164122319218
#>     Attrib V16    0.059551428367508645
#>     Attrib V17    0.09425273783621747
#>     Attrib V18    6.508453138480815E-4
#>     Attrib V19    0.03380236227155959
#>     Attrib V2    0.08040229100801886
#>     Attrib V20    -0.09277628185064847
#>     Attrib V21    -0.08908049323584159
#>     Attrib V22    -0.0932892208047265
#>     Attrib V23    -0.07652612258633411
#>     Attrib V24    -0.07720192622254461
#>     Attrib V25    0.00697161882829972
#>     Attrib V26    0.0037773801208907183
#>     Attrib V27    -0.02692339086169761
#>     Attrib V28    -0.04699654281588264
#>     Attrib V29    0.00876088657753013
#>     Attrib V3    0.06730929084667751
#>     Attrib V30    -0.016935955012179885
#>     Attrib V31    0.09726312757317626
#>     Attrib V32    -0.004294195843038962
#>     Attrib V33    -0.0070846752905715776
#>     Attrib V34    -0.0011557486593815423
#>     Attrib V35    0.13268098202520232
#>     Attrib V36    0.23455867739464148
#>     Attrib V37    0.20864297151301112
#>     Attrib V38    -0.004868375274866062
#>     Attrib V39    0.023899711328023186
#>     Attrib V4    0.058450680330046495
#>     Attrib V40    0.084669399962605
#>     Attrib V41    0.09289039328544403
#>     Attrib V42    0.09430757020052356
#>     Attrib V43    0.05300095709235209
#>     Attrib V44    0.06360315906137064
#>     Attrib V45    0.0014541072869821592
#>     Attrib V46    -0.010820857413269656
#>     Attrib V47    0.005287567917194661
#>     Attrib V48    0.03639866544723862
#>     Attrib V49    -0.03924246002709102
#>     Attrib V5    0.06490024150671764
#>     Attrib V50    0.16204650729584533
#>     Attrib V51    0.054596147126388675
#>     Attrib V52    0.019780859544532448
#>     Attrib V53    0.022980422254553406
#>     Attrib V54    0.0014055544677559248
#>     Attrib V55    0.07811443794897988
#>     Attrib V56    0.058770888880041734
#>     Attrib V57    0.12638179119887646
#>     Attrib V58    0.04472922091574897
#>     Attrib V59    0.023612877489887982
#>     Attrib V6    0.08224513031204121
#>     Attrib V60    0.13366485916871484
#>     Attrib V7    0.03250687139668253
#>     Attrib V8    0.088684505433798
#>     Attrib V9    -0.016339021019738772
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.7552339775156774
#>     Attrib V1    0.12261136393558407
#>     Attrib V10    0.41793533216833206
#>     Attrib V11    0.6678980782139998
#>     Attrib V12    1.0424507425385032
#>     Attrib V13    0.19055331268703718
#>     Attrib V14    -0.1352727162678073
#>     Attrib V15    -0.22062197193016028
#>     Attrib V16    -0.41983094930657855
#>     Attrib V17    -0.7310212348694075
#>     Attrib V18    -0.30341677858245564
#>     Attrib V19    -0.5487486634437304
#>     Attrib V2    0.27789908024402166
#>     Attrib V20    -0.5525295948169948
#>     Attrib V21    -0.24534292077284794
#>     Attrib V22    -0.13398907371975277
#>     Attrib V23    -0.4002059601159539
#>     Attrib V24    -0.22128784904290405
#>     Attrib V25    -0.019859423154207096
#>     Attrib V26    0.3032454042446562
#>     Attrib V27    0.6663655676754769
#>     Attrib V28    0.7313134841083133
#>     Attrib V29    0.1001943140161526
#>     Attrib V3    -0.28614864283802255
#>     Attrib V30    0.45362962670193363
#>     Attrib V31    -0.18029888663721697
#>     Attrib V32    0.019042481439091614
#>     Attrib V33    0.2826292430464408
#>     Attrib V34    0.1858479922534122
#>     Attrib V35    0.13043460748287045
#>     Attrib V36    -0.45783207905892703
#>     Attrib V37    -0.3250239438938363
#>     Attrib V38    -0.0634121987100817
#>     Attrib V39    0.17347381476806456
#>     Attrib V4    0.49921445146794635
#>     Attrib V40    -0.1275707260205538
#>     Attrib V41    0.11253252266320775
#>     Attrib V42    -0.19787318774597673
#>     Attrib V43    -0.23927631797343424
#>     Attrib V44    -0.22120045605407526
#>     Attrib V45    0.19471035310319573
#>     Attrib V46    0.32021121524105617
#>     Attrib V47    0.1296549565248319
#>     Attrib V48    0.5689205908081107
#>     Attrib V49    0.5999626882888334
#>     Attrib V5    -0.25291343748325235
#>     Attrib V50    -0.5787087817214062
#>     Attrib V51    0.15163960550838212
#>     Attrib V52    0.2517938291224273
#>     Attrib V53    0.23044618658923363
#>     Attrib V54    0.19124440818055283
#>     Attrib V55    0.050216881107664334
#>     Attrib V56    -0.5137145767763385
#>     Attrib V57    0.11679702047395242
#>     Attrib V58    0.15921048918885247
#>     Attrib V59    0.5023990823877013
#>     Attrib V6    0.3994105117569659
#>     Attrib V60    0.3390397402495061
#>     Attrib V7    -0.23525635348386217
#>     Attrib V8    0.08575991696938894
#>     Attrib V9    0.5102974712325956
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.12548118179537743
#>     Attrib V1    0.17953374737805383
#>     Attrib V10    -0.28074511594635426
#>     Attrib V11    -0.30525518851026645
#>     Attrib V12    -0.40869576686727077
#>     Attrib V13    0.14565642614599125
#>     Attrib V14    0.34189676137910485
#>     Attrib V15    0.24788999722187893
#>     Attrib V16    0.4520428853961477
#>     Attrib V17    -0.047021744754789006
#>     Attrib V18    -0.11747758958309493
#>     Attrib V19    -0.08796344680991723
#>     Attrib V2    -0.15323218328654423
#>     Attrib V20    -0.4558124435994118
#>     Attrib V21    -0.44974472436557417
#>     Attrib V22    -0.6940994068367505
#>     Attrib V23    -0.7571908746934887
#>     Attrib V24    -0.3860864543473869
#>     Attrib V25    0.06469144759549063
#>     Attrib V26    0.4309807191585614
#>     Attrib V27    0.005640126212783808
#>     Attrib V28    -0.34441132359884985
#>     Attrib V29    0.20771779827223244
#>     Attrib V3    -0.020262757111190622
#>     Attrib V30    -0.4709705019345905
#>     Attrib V31    1.0278172432788066
#>     Attrib V32    0.17790702055647353
#>     Attrib V33    -0.7979723822960042
#>     Attrib V34    -0.0714448144275895
#>     Attrib V35    -0.043442750348644865
#>     Attrib V36    0.7233254462201664
#>     Attrib V37    0.49660956809739837
#>     Attrib V38    -0.6338117946613364
#>     Attrib V39    -0.3835412097248715
#>     Attrib V4    -0.5971775306251577
#>     Attrib V40    0.3113736289076026
#>     Attrib V41    0.3027567416810027
#>     Attrib V42    0.1047274846123936
#>     Attrib V43    -0.5297218307439666
#>     Attrib V44    -0.49672995780086704
#>     Attrib V45    -0.16536423489027088
#>     Attrib V46    -0.42056785571989536
#>     Attrib V47    -0.3269952329650123
#>     Attrib V48    -0.45766238171206214
#>     Attrib V49    -0.8869657401350906
#>     Attrib V5    0.26507255355129694
#>     Attrib V50    1.3275949499320485
#>     Attrib V51    0.0017984891424619469
#>     Attrib V52    0.1681539887475758
#>     Attrib V53    -0.30896375989925023
#>     Attrib V54    -0.1685980326826953
#>     Attrib V55    0.47290731794190427
#>     Attrib V56    -0.28914287900412433
#>     Attrib V57    0.12437695721535226
#>     Attrib V58    -0.22821584976417236
#>     Attrib V59    -0.4674650950139812
#>     Attrib V6    0.1511517988747242
#>     Attrib V60    -0.14671354975830017
#>     Attrib V7    0.4751242292036557
#>     Attrib V8    0.3713878678880319
#>     Attrib V9    -0.7926246636433906
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.39913797164816556
#>     Attrib V1    0.10713997489244494
#>     Attrib V10    0.6702152226703549
#>     Attrib V11    0.9255505365856387
#>     Attrib V12    1.2274779135324212
#>     Attrib V13    0.24504940484683752
#>     Attrib V14    -0.13144826084824635
#>     Attrib V15    -0.4311350007323293
#>     Attrib V16    -0.5548087849647757
#>     Attrib V17    -0.6658510725211819
#>     Attrib V18    -0.17337899484564667
#>     Attrib V19    -0.4837438891499296
#>     Attrib V2    0.5547144351215348
#>     Attrib V20    -0.2382219528778748
#>     Attrib V21    0.09318667379860529
#>     Attrib V22    0.4497754132784344
#>     Attrib V23    0.21374843104798674
#>     Attrib V24    -0.04347689595092687
#>     Attrib V25    0.15964653923487324
#>     Attrib V26    0.558005859670029
#>     Attrib V27    1.049513000142028
#>     Attrib V28    1.3963887770273005
#>     Attrib V29    0.770803821830726
#>     Attrib V3    -0.09160225675439737
#>     Attrib V30    0.6804676144920768
#>     Attrib V31    -0.23544435892237606
#>     Attrib V32    -0.17739461671291623
#>     Attrib V33    -0.08213853544017939
#>     Attrib V34    -0.09888337457908879
#>     Attrib V35    0.15365595190410158
#>     Attrib V36    -0.4225335782475703
#>     Attrib V37    -0.004179263922155261
#>     Attrib V38    0.11818105081206037
#>     Attrib V39    0.3314854536546837
#>     Attrib V4    0.6070843656075462
#>     Attrib V40    -0.012197054446975247
#>     Attrib V41    0.2648382249994057
#>     Attrib V42    -0.3245155802077007
#>     Attrib V43    -0.10092753559660322
#>     Attrib V44    0.08695373347705611
#>     Attrib V45    0.40740079245229066
#>     Attrib V46    0.6273397616501047
#>     Attrib V47    0.5175209368212503
#>     Attrib V48    0.6871098586756006
#>     Attrib V49    0.7389818258743908
#>     Attrib V5    -0.22715241186691415
#>     Attrib V50    -0.617253504001757
#>     Attrib V51    0.5797456383830853
#>     Attrib V52    0.5566051425619107
#>     Attrib V53    0.2316632505465527
#>     Attrib V54    -0.15166103293418184
#>     Attrib V55    -0.20293030242319707
#>     Attrib V56    -0.33647433458308834
#>     Attrib V57    -0.15976633406668006
#>     Attrib V58    -0.1292827380132302
#>     Attrib V59    0.08079567137116882
#>     Attrib V6    0.46066677226032565
#>     Attrib V60    0.1037493567090487
#>     Attrib V7    -0.5645873406611222
#>     Attrib V8    0.014156142107686492
#>     Attrib V9    0.707328995613804
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.21373699754958106
#>     Attrib V1    0.1895469361556167
#>     Attrib V10    -0.0677112576921476
#>     Attrib V11    -0.19841189711732235
#>     Attrib V12    -0.3163623313326727
#>     Attrib V13    0.17379309222719386
#>     Attrib V14    0.2677852662861875
#>     Attrib V15    0.13684883802098816
#>     Attrib V16    0.28185785827465465
#>     Attrib V17    0.011801814247385248
#>     Attrib V18    -0.13519728566332248
#>     Attrib V19    -0.06937517529748574
#>     Attrib V2    -0.032238607984303634
#>     Attrib V20    -0.3401577793894742
#>     Attrib V21    -0.2884019460359957
#>     Attrib V22    -0.44762113193133823
#>     Attrib V23    -0.46528994652278494
#>     Attrib V24    -0.28335121959242354
#>     Attrib V25    0.22585366209903265
#>     Attrib V26    0.5526198563662467
#>     Attrib V27    0.09355091844097996
#>     Attrib V28    -0.13573754914007585
#>     Attrib V29    0.23533123130700617
#>     Attrib V3    -0.00417724631604401
#>     Attrib V30    -0.31136785305988024
#>     Attrib V31    0.9453971061935816
#>     Attrib V32    0.06418264561228815
#>     Attrib V33    -0.7414409957030229
#>     Attrib V34    -0.14508800647951264
#>     Attrib V35    -0.006338722812563042
#>     Attrib V36    0.6394319355594978
#>     Attrib V37    0.5820043424141096
#>     Attrib V38    -0.509124122761054
#>     Attrib V39    -0.25242505608817073
#>     Attrib V4    -0.4759187725548459
#>     Attrib V40    0.2610365220268009
#>     Attrib V41    0.2325294959232624
#>     Attrib V42    0.11928811324815512
#>     Attrib V43    -0.45546595703251136
#>     Attrib V44    -0.3817323961160548
#>     Attrib V45    -0.13858861577956252
#>     Attrib V46    -0.32805967959032895
#>     Attrib V47    -0.22023416329161805
#>     Attrib V48    -0.37723986750262867
#>     Attrib V49    -0.7296927423402708
#>     Attrib V5    0.22742733277502164
#>     Attrib V50    1.0663633167979194
#>     Attrib V51    0.07439102745540138
#>     Attrib V52    0.11200156198340182
#>     Attrib V53    -0.2667700191414912
#>     Attrib V54    -0.23603485127594737
#>     Attrib V55    0.2848401978844966
#>     Attrib V56    -0.15919875506177114
#>     Attrib V57    0.0194192509164161
#>     Attrib V58    -0.2145723425719585
#>     Attrib V59    -0.4311806325762693
#>     Attrib V6    0.06282543921578045
#>     Attrib V60    -0.11030130957637013
#>     Attrib V7    0.2733730947204237
#>     Attrib V8    0.2008472689749592
#>     Attrib V9    -0.65731124671134
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.0010108393811225636
#>     Attrib V1    0.03844021615990885
#>     Attrib V10    -0.1554345439185015
#>     Attrib V11    -0.01258010048814948
#>     Attrib V12    0.050875152040611285
#>     Attrib V13    -0.035644347919019576
#>     Attrib V14    0.022277011157302046
#>     Attrib V15    0.13490854775099395
#>     Attrib V16    -0.044985830826426404
#>     Attrib V17    0.14538500151141082
#>     Attrib V18    0.08611931281603945
#>     Attrib V19    0.0021545284047147445
#>     Attrib V2    0.06131479828238007
#>     Attrib V20    0.236413706757902
#>     Attrib V21    0.09036377361082011
#>     Attrib V22    0.14614834829527087
#>     Attrib V23    0.17851681786724236
#>     Attrib V24    0.25079102168283235
#>     Attrib V25    -0.04471820208789259
#>     Attrib V26    -0.48553806677864175
#>     Attrib V27    -0.5307347539804649
#>     Attrib V28    -0.5883210988072215
#>     Attrib V29    -0.6638175159037126
#>     Attrib V3    0.04616423035821925
#>     Attrib V30    -0.0647043023387362
#>     Attrib V31    -0.549673907021452
#>     Attrib V32    -0.10476594164403133
#>     Attrib V33    0.5508653418633259
#>     Attrib V34    0.22261963012661937
#>     Attrib V35    0.14550767880929402
#>     Attrib V36    -0.26652011798411407
#>     Attrib V37    -0.36083162549772396
#>     Attrib V38    0.2015036201347855
#>     Attrib V39    -0.01353143862596699
#>     Attrib V4    0.36936885986981405
#>     Attrib V40    -0.1814437059336333
#>     Attrib V41    -0.17049447101101792
#>     Attrib V42    -0.019032569540506267
#>     Attrib V43    0.25102845165209897
#>     Attrib V44    0.06569744660221176
#>     Attrib V45    -0.07643699329330318
#>     Attrib V46    0.0030109269475984673
#>     Attrib V47    -0.06791753061922225
#>     Attrib V48    0.07952035861648186
#>     Attrib V49    0.19543792834140944
#>     Attrib V5    -0.04527196270043875
#>     Attrib V50    -0.5071736840469692
#>     Attrib V51    -0.21530466335984125
#>     Attrib V52    -0.20321583427552037
#>     Attrib V53    0.294097548235565
#>     Attrib V54    0.5918587934017536
#>     Attrib V55    0.05168025856083409
#>     Attrib V56    0.2251594345966522
#>     Attrib V57    0.2857749641015196
#>     Attrib V58    0.2569828114621476
#>     Attrib V59    0.5706181420718519
#>     Attrib V6    0.09024984420026448
#>     Attrib V60    0.37185587942825155
#>     Attrib V7    0.12708428015436576
#>     Attrib V8    0.0012309816553688622
#>     Attrib V9    0.33532813737060285
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.0666497236657325
#>     Attrib V1    0.11575259033349626
#>     Attrib V10    -0.1418180130975015
#>     Attrib V11    -0.03482950032548583
#>     Attrib V12    0.027070072646099043
#>     Attrib V13    -0.07622012616289889
#>     Attrib V14    0.11100822590234312
#>     Attrib V15    0.13725032350095795
#>     Attrib V16    0.047547198239448654
#>     Attrib V17    0.04522167255004924
#>     Attrib V18    0.10595291707662863
#>     Attrib V19    -0.04809474350328992
#>     Attrib V2    0.08844130154763948
#>     Attrib V20    0.1315380266684024
#>     Attrib V21    0.11037220357886655
#>     Attrib V22    0.053172094398615054
#>     Attrib V23    0.07913175911928418
#>     Attrib V24    0.005656870594643895
#>     Attrib V25    -0.16447799847955424
#>     Attrib V26    -0.33832730805332406
#>     Attrib V27    -0.20894761981529508
#>     Attrib V28    -0.12231608619365834
#>     Attrib V29    -0.19912958600970904
#>     Attrib V3    0.13914502060443712
#>     Attrib V30    0.04798630053194259
#>     Attrib V31    -0.37463358549434433
#>     Attrib V32    -0.15588013149231325
#>     Attrib V33    0.20477778903626762
#>     Attrib V34    0.06917830041183039
#>     Attrib V35    0.09142251049670282
#>     Attrib V36    -0.01417609693630416
#>     Attrib V37    -0.08617563444916683
#>     Attrib V38    0.12393648896867995
#>     Attrib V39    0.07580231845794654
#>     Attrib V4    0.2503075239199328
#>     Attrib V40    -0.10394299230562443
#>     Attrib V41    -0.08376426581152813
#>     Attrib V42    0.029502565664052075
#>     Attrib V43    0.07822285412152695
#>     Attrib V44    0.038990065530092995
#>     Attrib V45    0.03156389398928035
#>     Attrib V46    0.05324979116736974
#>     Attrib V47    -0.023757554175462926
#>     Attrib V48    -0.002936415510291533
#>     Attrib V49    0.16676574868585067
#>     Attrib V5    0.04888029035042608
#>     Attrib V50    -0.19306541881953873
#>     Attrib V51    -0.05411940073185477
#>     Attrib V52    -0.015351661318631441
#>     Attrib V53    0.1930155558438129
#>     Attrib V54    0.2146626006827809
#>     Attrib V55    0.042675462304051566
#>     Attrib V56    0.13441816212712612
#>     Attrib V57    0.24309153970285574
#>     Attrib V58    0.23352172731672294
#>     Attrib V59    0.34242171331917787
#>     Attrib V6    0.10347142681894148
#>     Attrib V60    0.2622821315863713
#>     Attrib V7    0.046961099150655335
#>     Attrib V8    0.020434766062377947
#>     Attrib V9    0.15560372603626882
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
#> 0.08695652 
```
