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
#>     Threshold    0.2983357537184812
#>     Node 2    2.024548090310228
#>     Node 3    1.751256151007972
#>     Node 4    0.36137118126549084
#>     Node 5    -2.495809684813745
#>     Node 6    0.20717645858799208
#>     Node 7    3.1894299899039686
#>     Node 8    0.8381720984501618
#>     Node 9    2.5717941115158514
#>     Node 10    -3.059843516601533
#>     Node 11    1.199405810140067
#>     Node 12    1.5008467737459856
#>     Node 13    -0.0705786097475646
#>     Node 14    1.9646367596524292
#>     Node 15    -2.710896179434039
#>     Node 16    0.757500074406956
#>     Node 17    0.002841421110691249
#>     Node 18    -0.8481100987239785
#>     Node 19    2.496259643376842
#>     Node 20    1.5416470905135207
#>     Node 21    -2.9305113598705423
#>     Node 22    1.6752620127189577
#>     Node 23    1.8224915000805546
#>     Node 24    -0.26178507187247335
#>     Node 25    4.084000656127376
#>     Node 26    -0.48102342683975957
#>     Node 27    2.21703795648898
#>     Node 28    -1.8580377340468954
#>     Node 29    0.6885487452623565
#>     Node 30    0.5565477290616304
#>     Node 31    1.7125486658319624
#>     Node 32    -0.5490907770787746
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.26830145177812914
#>     Node 2    -2.0655640750291107
#>     Node 3    -1.736953005020119
#>     Node 4    -0.3209769991417378
#>     Node 5    2.51323175267766
#>     Node 6    -0.18785159813976435
#>     Node 7    -3.179932735654154
#>     Node 8    -0.8693434899396635
#>     Node 9    -2.5702577357095118
#>     Node 10    2.9990442528306236
#>     Node 11    -1.1632878009443353
#>     Node 12    -1.5646876022464735
#>     Node 13    0.11942820766482387
#>     Node 14    -1.9169617887474968
#>     Node 15    2.706554919890253
#>     Node 16    -0.7740192827240902
#>     Node 17    0.024404135033016198
#>     Node 18    0.8838669823545466
#>     Node 19    -2.4976517963631784
#>     Node 20    -1.51226037099927
#>     Node 21    2.997481077181406
#>     Node 22    -1.7221086408222084
#>     Node 23    -1.8650059148057654
#>     Node 24    0.2405385528711724
#>     Node 25    -4.0628297473469654
#>     Node 26    0.39214775659564505
#>     Node 27    -2.2685623158901707
#>     Node 28    1.809933350277707
#>     Node 29    -0.7205883204917303
#>     Node 30    -0.4804303147464506
#>     Node 31    -1.6559683155568645
#>     Node 32    0.5244104379848835
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.7126763374998829
#>     Attrib V1    0.04437508994475237
#>     Attrib V10    0.5814466242140657
#>     Attrib V11    0.41952579092422276
#>     Attrib V12    0.7766390592404622
#>     Attrib V13    0.1363424172731233
#>     Attrib V14    -0.43772788060088036
#>     Attrib V15    -0.03575490238554504
#>     Attrib V16    -0.19759871647588526
#>     Attrib V17    -0.1426143420062096
#>     Attrib V18    0.04969870569064519
#>     Attrib V19    0.2260446396092355
#>     Attrib V2    0.4661297384575204
#>     Attrib V20    0.25705176174838784
#>     Attrib V21    -0.06633680417493956
#>     Attrib V22    -0.19797331885929248
#>     Attrib V23    0.17319283583145206
#>     Attrib V24    0.699934983815992
#>     Attrib V25    0.06324323155160888
#>     Attrib V26    -0.6707159041639416
#>     Attrib V27    0.5635433543378489
#>     Attrib V28    1.1143554139510614
#>     Attrib V29    0.4117799480633909
#>     Attrib V3    0.1251011650891569
#>     Attrib V30    0.5312119229613824
#>     Attrib V31    -0.7015117544242415
#>     Attrib V32    -0.4772591971811738
#>     Attrib V33    -0.0668993428274938
#>     Attrib V34    -0.12026562523679557
#>     Attrib V35    0.07933890344924989
#>     Attrib V36    -0.9907998790431841
#>     Attrib V37    -0.23823314477301413
#>     Attrib V38    0.39201015025395786
#>     Attrib V39    0.251491510518993
#>     Attrib V4    0.5802841040797344
#>     Attrib V40    0.06743448571007515
#>     Attrib V41    0.573212118996025
#>     Attrib V42    -0.04070647282608847
#>     Attrib V43    0.21197475794291348
#>     Attrib V44    0.23731541127369826
#>     Attrib V45    0.31386962263381607
#>     Attrib V46    0.47122767190432724
#>     Attrib V47    0.1386776268105515
#>     Attrib V48    0.2456349425459017
#>     Attrib V49    0.3479926334868132
#>     Attrib V5    0.4546695792586472
#>     Attrib V50    -0.9730590281108478
#>     Attrib V51    0.23555577615829307
#>     Attrib V52    -0.01812843630989505
#>     Attrib V53    0.5433428548268495
#>     Attrib V54    0.2078028381636034
#>     Attrib V55    -0.2891287099663659
#>     Attrib V56    -0.39564835094744977
#>     Attrib V57    0.1847815622621433
#>     Attrib V58    -0.10345753075788845
#>     Attrib V59    0.419983637694734
#>     Attrib V6    -0.1351367789208858
#>     Attrib V60    0.14406296062513652
#>     Attrib V7    -0.933236114230606
#>     Attrib V8    -0.6061056553874736
#>     Attrib V9    0.7008148923270253
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.6635007264284369
#>     Attrib V1    -0.09754314185254834
#>     Attrib V10    0.6553129554219091
#>     Attrib V11    0.48981097382522487
#>     Attrib V12    0.7777649265065474
#>     Attrib V13    0.19661396266967135
#>     Attrib V14    -0.38254973210944077
#>     Attrib V15    -5.430804468057822E-4
#>     Attrib V16    -0.23837337028027886
#>     Attrib V17    -0.2557581848833966
#>     Attrib V18    -0.13623938971223679
#>     Attrib V19    0.1696647042691499
#>     Attrib V2    0.3082724746333878
#>     Attrib V20    0.008805754241252064
#>     Attrib V21    -0.25698817665005835
#>     Attrib V22    -0.22968144833545912
#>     Attrib V23    0.1248694452891528
#>     Attrib V24    0.8004408901745227
#>     Attrib V25    0.35810906302781476
#>     Attrib V26    -0.3551058329425872
#>     Attrib V27    0.434292155324515
#>     Attrib V28    0.5776123049836008
#>     Attrib V29    -0.2422082898372235
#>     Attrib V3    0.015565293504748194
#>     Attrib V30    0.2321312009986477
#>     Attrib V31    -0.4423767189644648
#>     Attrib V32    -0.132844319115869
#>     Attrib V33    0.18340259193377725
#>     Attrib V34    -0.019060690285705
#>     Attrib V35    0.021705705740425876
#>     Attrib V36    -1.0470303724737964
#>     Attrib V37    -0.5871544322345505
#>     Attrib V38    -0.0018610858914073535
#>     Attrib V39    0.05316471849210514
#>     Attrib V4    0.36675947810232873
#>     Attrib V40    0.03336758458075139
#>     Attrib V41    0.4162343470114604
#>     Attrib V42    0.03780176522981248
#>     Attrib V43    0.2575152306668367
#>     Attrib V44    0.15396564491464063
#>     Attrib V45    0.14492640706992652
#>     Attrib V46    0.30300124216439916
#>     Attrib V47    0.05436675802466984
#>     Attrib V48    0.16927564056817934
#>     Attrib V49    0.279113112618774
#>     Attrib V5    0.27061129061678757
#>     Attrib V50    -0.8318777860684501
#>     Attrib V51    0.09504317041666287
#>     Attrib V52    -0.019640268196369947
#>     Attrib V53    0.4734473634246786
#>     Attrib V54    0.37339693947570285
#>     Attrib V55    0.03229812046712605
#>     Attrib V56    -0.29170783085227403
#>     Attrib V57    0.29060537313305584
#>     Attrib V58    0.2039220764956754
#>     Attrib V59    0.3855950831767872
#>     Attrib V6    -0.15111493845603144
#>     Attrib V60    0.0711262181236552
#>     Attrib V7    -0.6122953009771385
#>     Attrib V8    -0.3227502000998659
#>     Attrib V9    0.7064927837930546
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.11608537637885079
#>     Attrib V1    0.018415079738491547
#>     Attrib V10    0.10296790047025109
#>     Attrib V11    0.055846659929778004
#>     Attrib V12    0.05227325347605604
#>     Attrib V13    0.025726456275699718
#>     Attrib V14    0.025192106762596585
#>     Attrib V15    0.05270234476051791
#>     Attrib V16    -0.03912583631417369
#>     Attrib V17    -0.007578347053870691
#>     Attrib V18    -0.04847100702263764
#>     Attrib V19    0.0016482714160507039
#>     Attrib V2    0.05849306262073228
#>     Attrib V20    0.020598705032866434
#>     Attrib V21    0.0027697205368815785
#>     Attrib V22    -0.09271553578794657
#>     Attrib V23    -0.04294101787029915
#>     Attrib V24    -0.028343060618071337
#>     Attrib V25    -0.09497592584640135
#>     Attrib V26    -0.1355304990566465
#>     Attrib V27    -0.0015174323642552028
#>     Attrib V28    0.12930902289029286
#>     Attrib V29    0.016201444976190978
#>     Attrib V3    0.07453287382708805
#>     Attrib V30    0.07555688831047959
#>     Attrib V31    -0.07001772468694838
#>     Attrib V32    -0.041030632532376994
#>     Attrib V33    0.06625825516974015
#>     Attrib V34    0.029517988338848028
#>     Attrib V35    0.02909223798759137
#>     Attrib V36    -0.1078798269313981
#>     Attrib V37    -0.02052232141328138
#>     Attrib V38    0.06961386384361148
#>     Attrib V39    0.09035802006673488
#>     Attrib V4    0.11930616222327649
#>     Attrib V40    0.00999585986658889
#>     Attrib V41    0.022530133429457064
#>     Attrib V42    0.05575903790487739
#>     Attrib V43    0.04442214872078125
#>     Attrib V44    0.09484258234338787
#>     Attrib V45    0.12491548988347116
#>     Attrib V46    0.028219636324150903
#>     Attrib V47    -0.007800712756951299
#>     Attrib V48    0.07458377115172823
#>     Attrib V49    0.1090509754978866
#>     Attrib V5    0.08290055250342376
#>     Attrib V50    -0.04521790606959178
#>     Attrib V51    0.08313618739227373
#>     Attrib V52    -0.0017133085531167785
#>     Attrib V53    0.0960881704329839
#>     Attrib V54    0.02559206293345481
#>     Attrib V55    0.047772058687249805
#>     Attrib V56    0.046532580414747816
#>     Attrib V57    0.15909368806045024
#>     Attrib V58    0.06696419023693853
#>     Attrib V59    0.09037429847688694
#>     Attrib V6    -0.020144776291170816
#>     Attrib V60    0.07717121266661373
#>     Attrib V7    -0.08060073924717612
#>     Attrib V8    -0.07275719066771849
#>     Attrib V9    0.17347286174348678
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.334584230144068
#>     Attrib V1    -0.016567281390374992
#>     Attrib V10    -0.9153242298297473
#>     Attrib V11    -0.5757269487819268
#>     Attrib V12    -0.42720743327451766
#>     Attrib V13    0.237048468718678
#>     Attrib V14    0.9696474193718143
#>     Attrib V15    0.3795952558354995
#>     Attrib V16    0.19426992814430147
#>     Attrib V17    -0.12451261679646312
#>     Attrib V18    -0.06559664159777859
#>     Attrib V19    -0.6855620922324733
#>     Attrib V2    -0.15898785317793845
#>     Attrib V20    -0.7760908750717704
#>     Attrib V21    -0.2880715764021416
#>     Attrib V22    -0.15339678524622627
#>     Attrib V23    -0.3236375645973118
#>     Attrib V24    -0.8381477262337055
#>     Attrib V25    0.06425269794568224
#>     Attrib V26    1.2226882451928767
#>     Attrib V27    0.25273783152303514
#>     Attrib V28    -0.10331173772646915
#>     Attrib V29    1.0921438876043443
#>     Attrib V3    0.4607169410751445
#>     Attrib V30    -0.20210253136709494
#>     Attrib V31    1.0449839622614812
#>     Attrib V32    0.3698586235735
#>     Attrib V33    -0.3503784224220527
#>     Attrib V34    0.2699133729324828
#>     Attrib V35    0.44412292747143367
#>     Attrib V36    1.403290982368756
#>     Attrib V37    1.0094622520147778
#>     Attrib V38    -0.6548785330409475
#>     Attrib V39    -0.16632153709879216
#>     Attrib V4    -0.6021781868603743
#>     Attrib V40    0.6434869302275072
#>     Attrib V41    -0.008538814974284327
#>     Attrib V42    -0.4109312537765401
#>     Attrib V43    -0.7538152486482287
#>     Attrib V44    -0.5328607611040391
#>     Attrib V45    -0.5190636017509824
#>     Attrib V46    -0.47201908145062005
#>     Attrib V47    -0.0789786981122226
#>     Attrib V48    -0.18624519244073187
#>     Attrib V49    -0.574622572084276
#>     Attrib V5    -0.24246410441096183
#>     Attrib V50    0.9439331505038095
#>     Attrib V51    -0.11404383175218295
#>     Attrib V52    0.5447459804160912
#>     Attrib V53    -0.0015678997965053948
#>     Attrib V54    -0.47092918359492963
#>     Attrib V55    0.15825509036748883
#>     Attrib V56    0.25574944022159424
#>     Attrib V57    -0.4456654340515959
#>     Attrib V58    -0.31723660929184094
#>     Attrib V59    -0.40621160600904666
#>     Attrib V6    0.14547629080360455
#>     Attrib V60    -0.19399526644381473
#>     Attrib V7    0.5132238226469824
#>     Attrib V8    0.13045208630835123
#>     Attrib V9    -1.2785608101045447
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.07309469127334015
#>     Attrib V1    0.08978385249299936
#>     Attrib V10    0.05027166178040133
#>     Attrib V11    0.04308090646417878
#>     Attrib V12    0.06163459586727918
#>     Attrib V13    -0.03965610534325034
#>     Attrib V14    0.011724759860934816
#>     Attrib V15    0.015037611964381371
#>     Attrib V16    0.041731218641173726
#>     Attrib V17    -0.02145581876070877
#>     Attrib V18    0.002368433455052145
#>     Attrib V19    -0.048051605474450115
#>     Attrib V2    0.08074508388674237
#>     Attrib V20    -0.021810912749338704
#>     Attrib V21    -0.02724786612573213
#>     Attrib V22    -0.09247270018834813
#>     Attrib V23    -0.05623421008269871
#>     Attrib V24    0.0049781716393045685
#>     Attrib V25    -0.006038734347799507
#>     Attrib V26    -0.07996638248674279
#>     Attrib V27    0.030273799207887725
#>     Attrib V28    0.008003714724146134
#>     Attrib V29    -0.04405521110943902
#>     Attrib V3    0.07093396497606744
#>     Attrib V30    0.034397235855197286
#>     Attrib V31    -0.03965827747448288
#>     Attrib V32    0.027021086417589588
#>     Attrib V33    0.06437458465228947
#>     Attrib V34    0.02221128499645587
#>     Attrib V35    0.07334223291757562
#>     Attrib V36    -0.02398841457118973
#>     Attrib V37    0.039574423639443815
#>     Attrib V38    0.05756498614738644
#>     Attrib V39    0.04105532762081455
#>     Attrib V4    0.1144126538457768
#>     Attrib V40    -0.006834934657216544
#>     Attrib V41    0.0894413725263067
#>     Attrib V42    0.08525526080182497
#>     Attrib V43    0.07070925930896986
#>     Attrib V44    0.07937477224989352
#>     Attrib V45    0.06757663678509872
#>     Attrib V46    0.047425296524445375
#>     Attrib V47    -0.006097735132657668
#>     Attrib V48    -0.005154541424343456
#>     Attrib V49    0.021495515874973864
#>     Attrib V5    0.04542126560726466
#>     Attrib V50    0.002776885636548144
#>     Attrib V51    0.04249529929371534
#>     Attrib V52    -0.0016561792722191086
#>     Attrib V53    0.10679225417883038
#>     Attrib V54    0.026094928008847863
#>     Attrib V55    0.030375591052404616
#>     Attrib V56    0.0746920090354321
#>     Attrib V57    0.1452354006759787
#>     Attrib V58    0.09292017153578151
#>     Attrib V59    0.11232593269245358
#>     Attrib V6    0.0899318742946504
#>     Attrib V60    0.13212843866527246
#>     Attrib V7    -0.003481216179901545
#>     Attrib V8    0.046393122908525986
#>     Attrib V9    0.1486862999819513
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.8178154539292918
#>     Attrib V1    0.32035929736633323
#>     Attrib V10    0.941550125185468
#>     Attrib V11    0.9373404926066982
#>     Attrib V12    1.5510091958882006
#>     Attrib V13    0.523773719688965
#>     Attrib V14    -0.4451767420958298
#>     Attrib V15    -0.060091713966035167
#>     Attrib V16    -0.42368091122874757
#>     Attrib V17    -0.4771622702138166
#>     Attrib V18    -0.16388304888229668
#>     Attrib V19    -0.4196459716139397
#>     Attrib V2    0.923547444150493
#>     Attrib V20    -0.35319942923735526
#>     Attrib V21    -0.2331223876618162
#>     Attrib V22    -0.06135558796154667
#>     Attrib V23    0.29816455158179034
#>     Attrib V24    0.8492109834256641
#>     Attrib V25    0.5132897300373964
#>     Attrib V26    0.35063444355554874
#>     Attrib V27    1.373971219938419
#>     Attrib V28    1.6015891601892274
#>     Attrib V29    0.8731529535728326
#>     Attrib V3    0.5704739185162346
#>     Attrib V30    0.47857624638177837
#>     Attrib V31    -0.3009178488557857
#>     Attrib V32    -0.512305755034425
#>     Attrib V33    -0.46076605804545584
#>     Attrib V34    -0.04675844584677112
#>     Attrib V35    0.398873854265713
#>     Attrib V36    -0.9700793815847847
#>     Attrib V37    0.2845470140953405
#>     Attrib V38    -0.03805756353272827
#>     Attrib V39    0.08758315733959263
#>     Attrib V4    0.25391043629313853
#>     Attrib V40    0.5239134880934501
#>     Attrib V41    0.9962468500929051
#>     Attrib V42    -0.5866298872321761
#>     Attrib V43    -0.16976898639965007
#>     Attrib V44    0.052040971718350065
#>     Attrib V45    0.43392221163106776
#>     Attrib V46    0.8429479670914651
#>     Attrib V47    0.482575411581125
#>     Attrib V48    0.6122942403540811
#>     Attrib V49    0.5818381499419506
#>     Attrib V5    0.6134316048212948
#>     Attrib V50    -0.8310217238952263
#>     Attrib V51    0.7684031389067135
#>     Attrib V52    0.552563102102877
#>     Attrib V53    0.9910013877915524
#>     Attrib V54    -0.1591055210447048
#>     Attrib V55    -0.556950196318673
#>     Attrib V56    -0.4553335964106101
#>     Attrib V57    0.32943939747423107
#>     Attrib V58    -0.1384721551135556
#>     Attrib V59    0.38472562685866074
#>     Attrib V6    0.2344728158212252
#>     Attrib V60    0.3863953262048409
#>     Attrib V7    -0.9573999504381544
#>     Attrib V8    -1.0663332601599171
#>     Attrib V9    0.8666602121275692
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.1563985635825679
#>     Attrib V1    -0.03207920749890494
#>     Attrib V10    0.2842627715182544
#>     Attrib V11    0.1516504447839224
#>     Attrib V12    0.1496734269392295
#>     Attrib V13    -0.05213179754632188
#>     Attrib V14    -0.31798351884487225
#>     Attrib V15    -0.11415311257239211
#>     Attrib V16    -0.04886358396361165
#>     Attrib V17    -0.01184495448714613
#>     Attrib V18    -0.047978860072959956
#>     Attrib V19    0.15132466002175685
#>     Attrib V2    0.12405505070353137
#>     Attrib V20    0.13282975261773128
#>     Attrib V21    0.010938314536960864
#>     Attrib V22    -0.05340912305393875
#>     Attrib V23    0.044525890365467946
#>     Attrib V24    0.22031514839928423
#>     Attrib V25    -0.060087809163385505
#>     Attrib V26    -0.3467683736496305
#>     Attrib V27    0.050287097367827965
#>     Attrib V28    0.21414147846071863
#>     Attrib V29    -0.1548367839853104
#>     Attrib V3    -0.06117463662239382
#>     Attrib V30    0.15982730987710628
#>     Attrib V31    -0.28139233908184136
#>     Attrib V32    -0.12500680668586459
#>     Attrib V33    0.1382007741942908
#>     Attrib V34    0.021479164252267112
#>     Attrib V35    0.04659907138372152
#>     Attrib V36    -0.3276308864984142
#>     Attrib V37    -0.1450125605849982
#>     Attrib V38    0.27114402282230127
#>     Attrib V39    0.07880359231933545
#>     Attrib V4    0.2588722229047906
#>     Attrib V40    -0.1222464389518754
#>     Attrib V41    0.07126999560922298
#>     Attrib V42    -0.059867817967019836
#>     Attrib V43    0.1309824291482841
#>     Attrib V44    0.20757233725547244
#>     Attrib V45    0.17937730351652934
#>     Attrib V46    0.1827838108097202
#>     Attrib V47    -0.002805912813174631
#>     Attrib V48    0.11100149764872855
#>     Attrib V49    0.18178358872671727
#>     Attrib V5    0.048488508015435465
#>     Attrib V50    -0.3822298924918103
#>     Attrib V51    0.014585480920435339
#>     Attrib V52    -0.11964320750556738
#>     Attrib V53    0.127567037885266
#>     Attrib V54    0.10684899216943594
#>     Attrib V55    -0.09600414742018981
#>     Attrib V56    -0.13676769756049328
#>     Attrib V57    0.19802849764446118
#>     Attrib V58    -0.011904843423511868
#>     Attrib V59    0.10739127064947879
#>     Attrib V6    -0.09895400461525576
#>     Attrib V60    0.11568473153780426
#>     Attrib V7    -0.3003579809362346
#>     Attrib V8    -0.22860953179577287
#>     Attrib V9    0.40046099340272984
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.5620219885545232
#>     Attrib V1    -0.0017517472620854453
#>     Attrib V10    1.018102321902704
#>     Attrib V11    0.870238238472819
#>     Attrib V12    1.4259244810890113
#>     Attrib V13    0.395847923713845
#>     Attrib V14    -0.6404357456365585
#>     Attrib V15    -0.23524303029434526
#>     Attrib V16    -0.4249124187673227
#>     Attrib V17    -0.3732365613708613
#>     Attrib V18    -0.08762089202369412
#>     Attrib V19    -0.22118095080207956
#>     Attrib V2    0.505430688006838
#>     Attrib V20    -0.3110337372458131
#>     Attrib V21    -0.33069416168928234
#>     Attrib V22    -0.1391757142522509
#>     Attrib V23    0.22934849605096205
#>     Attrib V24    1.0162607011978044
#>     Attrib V25    0.8587368212905038
#>     Attrib V26    0.41019765172886513
#>     Attrib V27    1.046121418307392
#>     Attrib V28    0.951781267898324
#>     Attrib V29    -0.07079735544167022
#>     Attrib V3    0.18172776480547875
#>     Attrib V30    0.09689766062643627
#>     Attrib V31    -0.28937527927642676
#>     Attrib V32    -0.3114136522664312
#>     Attrib V33    -0.15794837952855786
#>     Attrib V34    0.2563630358118868
#>     Attrib V35    0.5241006310857438
#>     Attrib V36    -0.7560902972340187
#>     Attrib V37    0.017073638691456318
#>     Attrib V38    -0.05277313685200561
#>     Attrib V39    0.09072949271781636
#>     Attrib V4    -0.07686764359692208
#>     Attrib V40    0.34229798039159565
#>     Attrib V41    0.6173125934562258
#>     Attrib V42    -0.6697056288095963
#>     Attrib V43    -0.08456006103240926
#>     Attrib V44    0.11131630444177672
#>     Attrib V45    0.3929812346922965
#>     Attrib V46    0.7406345050431624
#>     Attrib V47    0.42872950189826425
#>     Attrib V48    0.5900850800246885
#>     Attrib V49    0.5966608926273345
#>     Attrib V5    0.3706933140064764
#>     Attrib V50    -0.8101953979796409
#>     Attrib V51    0.5854042333688279
#>     Attrib V52    0.3564240669691803
#>     Attrib V53    0.9016169895947865
#>     Attrib V54    0.06703637715011722
#>     Attrib V55    -0.2972601418905217
#>     Attrib V56    -0.34700213773209754
#>     Attrib V57    0.19092977478897136
#>     Attrib V58    -0.13347462215721173
#>     Attrib V59    0.15023421329549824
#>     Attrib V6    0.14752951484319132
#>     Attrib V60    0.2326816627093295
#>     Attrib V7    -0.7348282628713736
#>     Attrib V8    -0.8467388753769792
#>     Attrib V9    0.8774190817231018
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.3799874623854212
#>     Attrib V1    0.05721526314688734
#>     Attrib V10    -0.8565424808691827
#>     Attrib V11    -0.4458032791213283
#>     Attrib V12    -0.1218047233679902
#>     Attrib V13    0.3711578658199144
#>     Attrib V14    0.9880004353936308
#>     Attrib V15    0.30230619843419726
#>     Attrib V16    0.11852302594245706
#>     Attrib V17    -0.21518660214784457
#>     Attrib V18    0.08863112592580884
#>     Attrib V19    -0.7628961399098546
#>     Attrib V2    -0.05550034502170038
#>     Attrib V20    -0.7713407070987569
#>     Attrib V21    -0.2755010681779276
#>     Attrib V22    -0.01929646551536213
#>     Attrib V23    -0.18509152272157772
#>     Attrib V24    -0.7514207041392218
#>     Attrib V25    0.21909607898566297
#>     Attrib V26    1.5031191212956707
#>     Attrib V27    0.46989976361929686
#>     Attrib V28    0.16814816971966529
#>     Attrib V29    1.5122996765696177
#>     Attrib V3    0.40908290832358246
#>     Attrib V30    0.0468029351817111
#>     Attrib V31    1.1524015816288773
#>     Attrib V32    0.012363041407203302
#>     Attrib V33    -0.7135449912436884
#>     Attrib V34    0.21516354518791136
#>     Attrib V35    0.6297867331670618
#>     Attrib V36    1.5800524206008946
#>     Attrib V37    1.4412039904923741
#>     Attrib V38    -0.5987653486866282
#>     Attrib V39    -0.16023805742623795
#>     Attrib V4    -0.8502830517341623
#>     Attrib V40    0.7513586882613903
#>     Attrib V41    0.1148058778929694
#>     Attrib V42    -0.8157930702785094
#>     Attrib V43    -0.9336141790465353
#>     Attrib V44    -0.5040748496011045
#>     Attrib V45    -0.29116898633762295
#>     Attrib V46    -0.27366784437243663
#>     Attrib V47    0.11960740567004711
#>     Attrib V48    -0.13267741504516978
#>     Attrib V49    -0.5256816593549947
#>     Attrib V5    -0.33229811636480944
#>     Attrib V50    0.932324209947497
#>     Attrib V51    0.16062791101221466
#>     Attrib V52    0.7700864080686454
#>     Attrib V53    0.2525853107943146
#>     Attrib V54    -0.863553580267972
#>     Attrib V55    -0.027424114061488845
#>     Attrib V56    0.10094933835842047
#>     Attrib V57    -0.4780718853577591
#>     Attrib V58    -0.492792836133379
#>     Attrib V59    -0.5946766598681389
#>     Attrib V6    0.21832312803030218
#>     Attrib V60    -0.3420300539995876
#>     Attrib V7    0.25025259556112445
#>     Attrib V8    -0.0869699157112206
#>     Attrib V9    -1.3222065826634952
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.138997399677741
#>     Attrib V1    -0.057720351478916805
#>     Attrib V10    0.36623942267628457
#>     Attrib V11    0.16032028918045854
#>     Attrib V12    0.15675616901807068
#>     Attrib V13    -0.18759893976604483
#>     Attrib V14    -0.4206864535842042
#>     Attrib V15    -0.15457853959331705
#>     Attrib V16    -0.06146146099000894
#>     Attrib V17    0.13642665229799056
#>     Attrib V18    0.08217106471670373
#>     Attrib V19    0.3093149909398763
#>     Attrib V2    0.053962478676281976
#>     Attrib V20    0.403525709300777
#>     Attrib V21    0.1119340774097076
#>     Attrib V22    0.021125034623942208
#>     Attrib V23    0.1231899101993064
#>     Attrib V24    0.24784071846090738
#>     Attrib V25    -0.10760201461379702
#>     Attrib V26    -0.6314248022695076
#>     Attrib V27    -0.05569492685168512
#>     Attrib V28    0.18602349432337323
#>     Attrib V29    -0.4105309961111197
#>     Attrib V3    -0.1897361500729099
#>     Attrib V30    0.1554368762243729
#>     Attrib V31    -0.5148175311811145
#>     Attrib V32    -0.2411404050291169
#>     Attrib V33    0.15685394528836044
#>     Attrib V34    0.018397882991879614
#>     Attrib V35    0.0762771523501262
#>     Attrib V36    -0.4648000981796032
#>     Attrib V37    -0.28066697113313244
#>     Attrib V38    0.44671629518806133
#>     Attrib V39    0.13208270461759555
#>     Attrib V4    0.2932436340510363
#>     Attrib V40    -0.22549335145598232
#>     Attrib V41    0.006931778110502062
#>     Attrib V42    0.09812132077874022
#>     Attrib V43    0.2684339043608784
#>     Attrib V44    0.3279171700828204
#>     Attrib V45    0.32507914665015875
#>     Attrib V46    0.19930010935458095
#>     Attrib V47    -0.010415571376327067
#>     Attrib V48    0.08904116771730662
#>     Attrib V49    0.21668385948215885
#>     Attrib V5    0.1320408325250536
#>     Attrib V50    -0.43662416247004254
#>     Attrib V51    0.054483167545398996
#>     Attrib V52    -0.29507105522231764
#>     Attrib V53    0.003892939736180752
#>     Attrib V54    0.20138581319707471
#>     Attrib V55    -0.08406797147290036
#>     Attrib V56    -0.1048221034701147
#>     Attrib V57    0.2018950401692208
#>     Attrib V58    0.06348967129021321
#>     Attrib V59    0.06807696532969083
#>     Attrib V6    -0.058284044377763494
#>     Attrib V60    0.0982433117435953
#>     Attrib V7    -0.3518500957800576
#>     Attrib V8    -0.15732872330395048
#>     Attrib V9    0.5791614773933929
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.5582007765563654
#>     Attrib V1    -0.09415136405941217
#>     Attrib V10    0.4121586875221946
#>     Attrib V11    0.31460320131168207
#>     Attrib V12    0.351708530048717
#>     Attrib V13    -0.0477939488866323
#>     Attrib V14    -0.39979886178922747
#>     Attrib V15    -0.1002470142121294
#>     Attrib V16    -0.11885745973726913
#>     Attrib V17    -0.08460742033517914
#>     Attrib V18    -0.018507078473230264
#>     Attrib V19    0.3138528217264201
#>     Attrib V2    0.2823217716564144
#>     Attrib V20    0.2554875388998924
#>     Attrib V21    -0.032778181659626
#>     Attrib V22    -0.07471952754780524
#>     Attrib V23    0.1371194776306688
#>     Attrib V24    0.4325343297142173
#>     Attrib V25    -0.08835599823680981
#>     Attrib V26    -0.6501654317082524
#>     Attrib V27    0.29426966427191276
#>     Attrib V28    0.613167739611744
#>     Attrib V29    0.044424163252699184
#>     Attrib V3    -0.12152004269377571
#>     Attrib V30    0.34168814964994243
#>     Attrib V31    -0.5983531539281379
#>     Attrib V32    -0.37718936372325057
#>     Attrib V33    0.12649485295341895
#>     Attrib V34    -0.037778151144010653
#>     Attrib V35    0.044045265865377284
#>     Attrib V36    -0.7894773380693444
#>     Attrib V37    -0.35979564415494303
#>     Attrib V38    0.35125506719111194
#>     Attrib V39    0.14204768831077424
#>     Attrib V4    0.485964895509061
#>     Attrib V40    -0.07849522519897653
#>     Attrib V41    0.2688744429959246
#>     Attrib V42    0.013063917048930356
#>     Attrib V43    0.3038901879233878
#>     Attrib V44    0.21405610514368145
#>     Attrib V45    0.31800354346633447
#>     Attrib V46    0.3794570232531036
#>     Attrib V47    0.00807892948717583
#>     Attrib V48    0.17060737120666947
#>     Attrib V49    0.27387019074211505
#>     Attrib V5    0.2193243196900991
#>     Attrib V50    -0.7553370715985261
#>     Attrib V51    0.06585779934843103
#>     Attrib V52    -0.1630834763441387
#>     Attrib V53    0.2774471332468747
#>     Attrib V54    0.17238293625353043
#>     Attrib V55    -0.1355129609793129
#>     Attrib V56    -0.2699507400431346
#>     Attrib V57    0.2465115140035424
#>     Attrib V58    0.06459279386253318
#>     Attrib V59    0.28059163121912234
#>     Attrib V6    -0.16352357328389128
#>     Attrib V60    0.06769053298777289
#>     Attrib V7    -0.6104029674976973
#>     Attrib V8    -0.33280701844588106
#>     Attrib V9    0.6632875354153058
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.23930621615368955
#>     Attrib V1    0.060850445691733236
#>     Attrib V10    -0.02001693863918331
#>     Attrib V11    -0.020592923165379813
#>     Attrib V12    -0.0699197441180936
#>     Attrib V13    0.02896580858658705
#>     Attrib V14    0.08336461008078407
#>     Attrib V15    0.022394356250795673
#>     Attrib V16    0.0018965307914827235
#>     Attrib V17    0.02012987472722134
#>     Attrib V18    -0.029061165478793012
#>     Attrib V19    -0.09718889473647827
#>     Attrib V2    0.03812989737643621
#>     Attrib V20    -0.08612613495456514
#>     Attrib V21    -0.07009225645483592
#>     Attrib V22    -0.09370127626355522
#>     Attrib V23    -0.026579763896061034
#>     Attrib V24    -0.07531426243377098
#>     Attrib V25    -0.004785817739607067
#>     Attrib V26    -0.019430449981310254
#>     Attrib V27    -0.025848010562026597
#>     Attrib V28    -0.1060623692335427
#>     Attrib V29    -3.281848106711723E-4
#>     Attrib V3    0.15463984697508032
#>     Attrib V30    3.685289373078196E-5
#>     Attrib V31    0.022975823924146578
#>     Attrib V32    0.04819813169735116
#>     Attrib V33    0.034220637278079516
#>     Attrib V34    0.12256348785221914
#>     Attrib V35    0.13163215991551983
#>     Attrib V36    0.1931398632838429
#>     Attrib V37    0.163581575753953
#>     Attrib V38    0.034112688378817126
#>     Attrib V39    0.11287228337651971
#>     Attrib V4    -1.1165000773111388E-4
#>     Attrib V40    0.15378826362675382
#>     Attrib V41    0.1138403178103428
#>     Attrib V42    0.13857893832009813
#>     Attrib V43    0.04972112646251001
#>     Attrib V44    0.08135101165380178
#>     Attrib V45    0.012559016841792725
#>     Attrib V46    0.05683079776683722
#>     Attrib V47    0.0655159662573559
#>     Attrib V48    -0.026760542376387822
#>     Attrib V49    0.010716831064034583
#>     Attrib V5    0.07568603199998693
#>     Attrib V50    0.07171252393088783
#>     Attrib V51    0.033375548974741084
#>     Attrib V52    0.023274616308509875
#>     Attrib V53    0.07735635705269145
#>     Attrib V54    -0.016411743761912255
#>     Attrib V55    0.05495043902229945
#>     Attrib V56    0.11285596036406238
#>     Attrib V57    0.09141218659533867
#>     Attrib V58    0.07082709826547129
#>     Attrib V59    0.08907705455460684
#>     Attrib V6    0.14485231747481253
#>     Attrib V60    0.16522957264889085
#>     Attrib V7    0.14619035394312227
#>     Attrib V8    0.08054711039680447
#>     Attrib V9    0.002058301490273832
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.5508961484733094
#>     Attrib V1    -0.07208644822454141
#>     Attrib V10    0.7132860931496204
#>     Attrib V11    0.7112543310774274
#>     Attrib V12    1.0982690324583007
#>     Attrib V13    0.12317956455413605
#>     Attrib V14    -0.660896940428467
#>     Attrib V15    -0.21544082454205288
#>     Attrib V16    -0.39152959242403557
#>     Attrib V17    -0.28652068560821936
#>     Attrib V18    -0.1470359842416188
#>     Attrib V19    -0.06492054860455335
#>     Attrib V2    0.36277858060667284
#>     Attrib V20    -0.18384221335936748
#>     Attrib V21    -0.47032453601835444
#>     Attrib V22    -0.40135225571908933
#>     Attrib V23    0.03559706185024367
#>     Attrib V24    0.788840727249046
#>     Attrib V25    0.5589656046080346
#>     Attrib V26    -0.011734982140355657
#>     Attrib V27    0.6055394921169154
#>     Attrib V28    0.5576434810849786
#>     Attrib V29    -0.3961981836438818
#>     Attrib V3    -0.017244548193837257
#>     Attrib V30    0.11721432108424644
#>     Attrib V31    -0.3659954465618696
#>     Attrib V32    -0.24588985401455343
#>     Attrib V33    0.11900777157703929
#>     Attrib V34    0.25394872121986556
#>     Attrib V35    0.3960837557309817
#>     Attrib V36    -0.7665224505702225
#>     Attrib V37    -0.17698578167335746
#>     Attrib V38    0.0687443145524706
#>     Attrib V39    0.06230634499497964
#>     Attrib V4    0.15507003007261194
#>     Attrib V40    0.06903268622938567
#>     Attrib V41    0.2888571366120325
#>     Attrib V42    -0.4035289674833738
#>     Attrib V43    0.01383751702922699
#>     Attrib V44    0.1735617975576282
#>     Attrib V45    0.2550377013755823
#>     Attrib V46    0.5396910472577442
#>     Attrib V47    0.20321358314606744
#>     Attrib V48    0.471271119434762
#>     Attrib V49    0.49842567069956084
#>     Attrib V5    0.1781933510473481
#>     Attrib V50    -0.8430714782964356
#>     Attrib V51    0.21969969599624598
#>     Attrib V52    0.09979640329162681
#>     Attrib V53    0.5412223301651375
#>     Attrib V54    0.3423781468869967
#>     Attrib V55    -0.08352830143130612
#>     Attrib V56    -0.2600829633838832
#>     Attrib V57    0.30333789788259163
#>     Attrib V58    -0.010184394444016413
#>     Attrib V59    0.2174611263625555
#>     Attrib V6    -0.16137949908555121
#>     Attrib V60    0.1843875357669778
#>     Attrib V7    -0.7732075447822915
#>     Attrib V8    -0.6837895251562081
#>     Attrib V9    0.7501886618521132
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.269858902204605
#>     Attrib V1    -0.016730723675105225
#>     Attrib V10    -0.7600884807258798
#>     Attrib V11    -0.42494716205482574
#>     Attrib V12    -0.08142661290931885
#>     Attrib V13    0.3064467420911806
#>     Attrib V14    0.8197825475802625
#>     Attrib V15    0.3373276292650394
#>     Attrib V16    0.1017986600496734
#>     Attrib V17    -0.18754182823710566
#>     Attrib V18    -0.0029103065684151826
#>     Attrib V19    -0.6703340642114018
#>     Attrib V2    -0.1079004867981162
#>     Attrib V20    -0.7018262131093089
#>     Attrib V21    -0.32585360230558585
#>     Attrib V22    -0.018864432167356303
#>     Attrib V23    -0.22978760449578117
#>     Attrib V24    -0.6693391735319534
#>     Attrib V25    0.1704877391785329
#>     Attrib V26    1.3609483868361936
#>     Attrib V27    0.42147297266351597
#>     Attrib V28    0.20287509283117802
#>     Attrib V29    1.4094587803777832
#>     Attrib V3    0.37690267109870773
#>     Attrib V30    -0.015541851978781824
#>     Attrib V31    0.9913651003555282
#>     Attrib V32    0.04537079269123871
#>     Attrib V33    -0.663493687429908
#>     Attrib V34    0.2663118628831432
#>     Attrib V35    0.5879338551802389
#>     Attrib V36    1.4421834620244953
#>     Attrib V37    1.3636675402537919
#>     Attrib V38    -0.5383887325254227
#>     Attrib V39    -0.11137355588477887
#>     Attrib V4    -0.6860826378779749
#>     Attrib V40    0.6379631434586948
#>     Attrib V41    0.07239789576046628
#>     Attrib V42    -0.7533198404564226
#>     Attrib V43    -0.8690124904533137
#>     Attrib V44    -0.5065957855275111
#>     Attrib V45    -0.24382734027488875
#>     Attrib V46    -0.16819316100340514
#>     Attrib V47    0.15224529802444547
#>     Attrib V48    -0.03276291705872787
#>     Attrib V49    -0.43826444258124
#>     Attrib V5    -0.2717000958595438
#>     Attrib V50    0.78366553945202
#>     Attrib V51    0.1649866089084717
#>     Attrib V52    0.6386753797894692
#>     Attrib V53    0.15630810190556826
#>     Attrib V54    -0.8002015846048303
#>     Attrib V55    -0.010451105094782493
#>     Attrib V56    0.10886001245940971
#>     Attrib V57    -0.4499117643302943
#>     Attrib V58    -0.4416778309015656
#>     Attrib V59    -0.4860458714307472
#>     Attrib V6    0.13446314680298238
#>     Attrib V60    -0.30504149213884374
#>     Attrib V7    0.17236093639801997
#>     Attrib V8    -0.13955784038205954
#>     Attrib V9    -1.1889653920190262
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    0.03390333289506051
#>     Attrib V1    0.005616927257340221
#>     Attrib V10    0.21946914596568942
#>     Attrib V11    0.07056916273714284
#>     Attrib V12    0.07385112979796576
#>     Attrib V13    -0.033266206395065334
#>     Attrib V14    -0.22410479468143535
#>     Attrib V15    -0.06287216690067364
#>     Attrib V16    0.023295165311893646
#>     Attrib V17    0.09184622447416639
#>     Attrib V18    0.0756473114040425
#>     Attrib V19    0.2126454302893058
#>     Attrib V2    0.04060446483063073
#>     Attrib V20    0.17591719888094517
#>     Attrib V21    0.043500173120877415
#>     Attrib V22    -0.016554815296770314
#>     Attrib V23    0.010788827992218161
#>     Attrib V24    0.19862346308921275
#>     Attrib V25    -0.05153997819567941
#>     Attrib V26    -0.4072861273716417
#>     Attrib V27    -0.06883709902849779
#>     Attrib V28    0.05821327230124139
#>     Attrib V29    -0.285340484563088
#>     Attrib V3    -0.05317102978948917
#>     Attrib V30    0.04834548857552057
#>     Attrib V31    -0.28998812278064756
#>     Attrib V32    -0.05405273094534298
#>     Attrib V33    0.14048415613552837
#>     Attrib V34    0.007568379961884899
#>     Attrib V35    -0.05715531704316069
#>     Attrib V36    -0.401855935580376
#>     Attrib V37    -0.23061618023592895
#>     Attrib V38    0.20196080628539675
#>     Attrib V39    0.07115074937635059
#>     Attrib V4    0.23013869461160227
#>     Attrib V40    -0.16130415782914237
#>     Attrib V41    0.051551996482953506
#>     Attrib V42    0.1298231319263684
#>     Attrib V43    0.1682618522843239
#>     Attrib V44    0.10822335788366577
#>     Attrib V45    0.11769431687906838
#>     Attrib V46    0.09282121069739283
#>     Attrib V47    -0.0649352337307635
#>     Attrib V48    0.010284038251350344
#>     Attrib V49    0.09432901539914783
#>     Attrib V5    0.07354467861432296
#>     Attrib V50    -0.2346951171231746
#>     Attrib V51    0.03948505938352152
#>     Attrib V52    -0.12880959923371868
#>     Attrib V53    0.10593895013183291
#>     Attrib V54    0.14290919539223543
#>     Attrib V55    0.017323225012120216
#>     Attrib V56    -0.03582619927855514
#>     Attrib V57    0.185309670601037
#>     Attrib V58    0.11682240048885599
#>     Attrib V59    0.09169770258835762
#>     Attrib V6    -0.02822279237738541
#>     Attrib V60    0.13003573812230626
#>     Attrib V7    -0.18871823680158822
#>     Attrib V8    -0.14087561024468453
#>     Attrib V9    0.3782405532627384
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.1420359119386588
#>     Attrib V1    0.09179445856298658
#>     Attrib V10    0.06977282489322653
#>     Attrib V11    0.030203093151322493
#>     Attrib V12    -0.0593168260904817
#>     Attrib V13    -0.05655729155387959
#>     Attrib V14    0.040479573658331984
#>     Attrib V15    0.09648269950111424
#>     Attrib V16    0.028189251639258145
#>     Attrib V17    0.0028936387117055092
#>     Attrib V18    -0.04035747240710567
#>     Attrib V19    -0.05750985136563262
#>     Attrib V2    0.1142044787608134
#>     Attrib V20    -0.12307648481950743
#>     Attrib V21    -0.10285253577661928
#>     Attrib V22    -0.020433748558538464
#>     Attrib V23    -0.0873170946860818
#>     Attrib V24    -0.058792854181712734
#>     Attrib V25    -0.06496393886035715
#>     Attrib V26    -0.029947789817509982
#>     Attrib V27    -0.045193716051165025
#>     Attrib V28    -0.054061525269493226
#>     Attrib V29    -0.04232786225244367
#>     Attrib V3    0.08298988221146075
#>     Attrib V30    0.033895437753822956
#>     Attrib V31    0.09524650281386195
#>     Attrib V32    -0.006375050860071623
#>     Attrib V33    0.07606554511596143
#>     Attrib V34    0.04652679803158472
#>     Attrib V35    0.16248916254576876
#>     Attrib V36    0.13674644884899148
#>     Attrib V37    0.10073861227516799
#>     Attrib V38    0.09856581251760844
#>     Attrib V39    0.09660841754105245
#>     Attrib V4    0.011621033957521456
#>     Attrib V40    0.08042067172353719
#>     Attrib V41    0.11932847283022457
#>     Attrib V42    0.09011545233483201
#>     Attrib V43    0.11993774976912606
#>     Attrib V44    0.11179163027146365
#>     Attrib V45    0.08525569646671698
#>     Attrib V46    0.011989068411727966
#>     Attrib V47    -0.006895624010089449
#>     Attrib V48    0.043352995437226864
#>     Attrib V49    -0.031320695144733034
#>     Attrib V5    0.050655586573101305
#>     Attrib V50    0.0810893787237431
#>     Attrib V51    0.056100708280238186
#>     Attrib V52    0.010320155987326234
#>     Attrib V53    0.05783165772343938
#>     Attrib V54    -0.0062618770059139125
#>     Attrib V55    0.09183694545308489
#>     Attrib V56    0.11618995838620039
#>     Attrib V57    0.1412376426842245
#>     Attrib V58    0.03538115323036011
#>     Attrib V59    0.012351132769177204
#>     Attrib V6    0.11674217452013097
#>     Attrib V60    0.12880178697273728
#>     Attrib V7    0.04084814548676876
#>     Attrib V8    0.12159444801317856
#>     Attrib V9    0.0449505462837226
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.2530577135204018
#>     Attrib V1    0.039189880213727504
#>     Attrib V10    -0.2724716946980251
#>     Attrib V11    -0.25766416352844973
#>     Attrib V12    -0.3649884033682017
#>     Attrib V13    -0.12844648943553114
#>     Attrib V14    0.2540643553660318
#>     Attrib V15    0.10132351623029724
#>     Attrib V16    0.19221408721892275
#>     Attrib V17    0.05693384754858085
#>     Attrib V18    0.07384836531003726
#>     Attrib V19    -0.2696742313791657
#>     Attrib V2    -0.08857659008755568
#>     Attrib V20    -0.2751304503825215
#>     Attrib V21    -0.06444193522398685
#>     Attrib V22    0.006292693476326388
#>     Attrib V23    0.03735556325705326
#>     Attrib V24    -0.17632675347344737
#>     Attrib V25    0.050435576064344186
#>     Attrib V26    0.28640094387580056
#>     Attrib V27    -0.21186866578394561
#>     Attrib V28    -0.3662672638997335
#>     Attrib V29    0.02678648327031243
#>     Attrib V3    0.25910491501094995
#>     Attrib V30    -0.2792668475928521
#>     Attrib V31    0.2133078691751213
#>     Attrib V32    0.07356251433335805
#>     Attrib V33    -0.07898966738425452
#>     Attrib V34    0.11394946170508356
#>     Attrib V35    0.26628734737135207
#>     Attrib V36    0.7699235681088132
#>     Attrib V37    0.3605647262944857
#>     Attrib V38    -0.28961075973231176
#>     Attrib V39    -0.09878543994808339
#>     Attrib V4    -0.21679024544102746
#>     Attrib V40    0.23042444558087444
#>     Attrib V41    0.08968503762799299
#>     Attrib V42    0.14597745079392618
#>     Attrib V43    -0.047979472664265804
#>     Attrib V44    -0.010034571370142558
#>     Attrib V45    -0.18691269098798924
#>     Attrib V46    -0.1946823357534692
#>     Attrib V47    -0.03826992155957143
#>     Attrib V48    -0.2513324592657465
#>     Attrib V49    -0.30046091045338225
#>     Attrib V5    0.05608163771286462
#>     Attrib V50    0.267684230956966
#>     Attrib V51    0.046585400335133746
#>     Attrib V52    0.19611939728231131
#>     Attrib V53    0.08763501348728603
#>     Attrib V54    -0.22536747757402634
#>     Attrib V55    0.025224834221902942
#>     Attrib V56    0.2095201603542291
#>     Attrib V57    -0.0767461720423685
#>     Attrib V58    0.04658880245111936
#>     Attrib V59    0.012617791910562748
#>     Attrib V6    0.23099916369796966
#>     Attrib V60    0.12989300242803462
#>     Attrib V7    0.41776071401772663
#>     Attrib V8    0.40086476914163616
#>     Attrib V9    -0.34682035964838054
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.7458861983144868
#>     Attrib V1    0.07163817996367813
#>     Attrib V10    0.5411585142414306
#>     Attrib V11    0.6840483330756081
#>     Attrib V12    1.3142420711184468
#>     Attrib V13    0.30964036149386787
#>     Attrib V14    -0.32014804036776
#>     Attrib V15    0.06277320467642261
#>     Attrib V16    -0.3313655037269137
#>     Attrib V17    -0.4610242762442866
#>     Attrib V18    -0.26952000899734835
#>     Attrib V19    -0.4007774340515562
#>     Attrib V2    0.7171819671440987
#>     Attrib V20    -0.5173894275260335
#>     Attrib V21    -0.6015342471657151
#>     Attrib V22    -0.5386932732241253
#>     Attrib V23    -0.2831384587087918
#>     Attrib V24    0.485403200852499
#>     Attrib V25    0.21961688836136803
#>     Attrib V26    0.03093356523174499
#>     Attrib V27    1.103079889919435
#>     Attrib V28    1.2090875335440932
#>     Attrib V29    0.4428002854074323
#>     Attrib V3    0.36652500459082976
#>     Attrib V30    0.2779115413048084
#>     Attrib V31    -0.3557392321753284
#>     Attrib V32    -0.3779851534399745
#>     Attrib V33    -0.06564677473443575
#>     Attrib V34    0.1659112005805252
#>     Attrib V35    0.35171311213787554
#>     Attrib V36    -0.8486746078656514
#>     Attrib V37    -0.05509625431502885
#>     Attrib V38    -0.08822488903632994
#>     Attrib V39    0.09283630916797796
#>     Attrib V4    0.4974343961610274
#>     Attrib V40    0.36105395456812434
#>     Attrib V41    0.6025267235636812
#>     Attrib V42    -0.43540181231987757
#>     Attrib V43    -0.15729441386702475
#>     Attrib V44    -0.05335629118455013
#>     Attrib V45    0.407223334133866
#>     Attrib V46    0.6742823498077577
#>     Attrib V47    0.19529718836583077
#>     Attrib V48    0.5410184000012136
#>     Attrib V49    0.5784310120961945
#>     Attrib V5    0.36367454700522756
#>     Attrib V50    -0.923228318654295
#>     Attrib V51    0.32591295967860096
#>     Attrib V52    0.3293179225892695
#>     Attrib V53    0.7436386412254782
#>     Attrib V54    0.04530738420710148
#>     Attrib V55    -0.06700045758384603
#>     Attrib V56    -0.5162354358500295
#>     Attrib V57    0.43271722275213564
#>     Attrib V58    0.12819360023927176
#>     Attrib V59    0.4144647384525174
#>     Attrib V6    -0.07614043814343967
#>     Attrib V60    0.1976106316315399
#>     Attrib V7    -0.8705334842375663
#>     Attrib V8    -0.7989261659576028
#>     Attrib V9    0.5420495250128626
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.4759373790656927
#>     Attrib V1    0.04224119852773678
#>     Attrib V10    0.44491958408201254
#>     Attrib V11    0.24048245336403168
#>     Attrib V12    0.3728617932253243
#>     Attrib V13    -0.016692430028882953
#>     Attrib V14    -0.32051179840483623
#>     Attrib V15    -0.04886439694600008
#>     Attrib V16    -0.14637951511126088
#>     Attrib V17    -0.009083293632879555
#>     Attrib V18    0.085386904169814
#>     Attrib V19    0.34308733271657915
#>     Attrib V2    0.2469437560672606
#>     Attrib V20    0.4049217068788923
#>     Attrib V21    0.15821325626922514
#>     Attrib V22    0.04089521823282556
#>     Attrib V23    0.2394801857946425
#>     Attrib V24    0.4158497889520175
#>     Attrib V25    -0.14350453521548226
#>     Attrib V26    -0.6253957290496001
#>     Attrib V27    0.3126563871168848
#>     Attrib V28    0.6365085002973134
#>     Attrib V29    0.16840940153036763
#>     Attrib V3    -0.11822692592621947
#>     Attrib V30    0.436368613466365
#>     Attrib V31    -0.595522422741551
#>     Attrib V32    -0.5105045475916566
#>     Attrib V33    -0.04428224530701148
#>     Attrib V34    -0.19477106716041862
#>     Attrib V35    0.0328010164539582
#>     Attrib V36    -0.6065129020567933
#>     Attrib V37    -0.12374872821049214
#>     Attrib V38    0.5366145562043639
#>     Attrib V39    0.22707151851189272
#>     Attrib V4    0.5282188039251715
#>     Attrib V40    -0.12477988381482674
#>     Attrib V41    0.2693612020085238
#>     Attrib V42    0.008892671605536343
#>     Attrib V43    0.34007318332645753
#>     Attrib V44    0.3796953795692763
#>     Attrib V45    0.36508625316526827
#>     Attrib V46    0.2963172796734051
#>     Attrib V47    -0.010622830886296357
#>     Attrib V48    0.13746226979331727
#>     Attrib V49    0.3002834070435871
#>     Attrib V5    0.27901582103623085
#>     Attrib V50    -0.6387529805858685
#>     Attrib V51    0.16975456000094916
#>     Attrib V52    -0.17134331515852655
#>     Attrib V53    0.19661138299567588
#>     Attrib V54    0.1837108827656209
#>     Attrib V55    -0.10694072291965022
#>     Attrib V56    -0.24800172087401243
#>     Attrib V57    0.15232331091877868
#>     Attrib V58    0.042303070720125784
#>     Attrib V59    0.29344717657076697
#>     Attrib V6    -0.0876487914727554
#>     Attrib V60    0.1117723015064391
#>     Attrib V7    -0.5434204218375925
#>     Attrib V8    -0.4036711934611102
#>     Attrib V9    0.6327620059874784
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.19287418491286162
#>     Attrib V1    0.04147024191064506
#>     Attrib V10    -0.8182613158449128
#>     Attrib V11    -0.44253180800053826
#>     Attrib V12    -0.08420911699560359
#>     Attrib V13    0.33957392286872606
#>     Attrib V14    0.9080733131221889
#>     Attrib V15    0.35220616382514164
#>     Attrib V16    0.08511306715050163
#>     Attrib V17    -0.21870109761566545
#>     Attrib V18    0.02870097751513885
#>     Attrib V19    -0.7969979680379641
#>     Attrib V2    -0.08026844222489145
#>     Attrib V20    -0.773746069687307
#>     Attrib V21    -0.274161652032627
#>     Attrib V22    -0.07063405127240531
#>     Attrib V23    -0.263825277337694
#>     Attrib V24    -0.7083249804682413
#>     Attrib V25    0.2161269021622099
#>     Attrib V26    1.4523177957738966
#>     Attrib V27    0.49951932627678386
#>     Attrib V28    0.1970186715271963
#>     Attrib V29    1.5464715101468591
#>     Attrib V3    0.3742821709759512
#>     Attrib V30    0.05471779809241774
#>     Attrib V31    1.162353691605895
#>     Attrib V32    0.06834094880952081
#>     Attrib V33    -0.7128646806920238
#>     Attrib V34    0.21489644028034685
#>     Attrib V35    0.5850703235125068
#>     Attrib V36    1.4868532371223253
#>     Attrib V37    1.4402820018709135
#>     Attrib V38    -0.6458886207970834
#>     Attrib V39    -0.1344968727205335
#>     Attrib V4    -0.6990112485298773
#>     Attrib V40    0.747923880076889
#>     Attrib V41    0.15583907046419362
#>     Attrib V42    -0.8348334155456621
#>     Attrib V43    -0.9040381251925509
#>     Attrib V44    -0.533813985485582
#>     Attrib V45    -0.35859087145599755
#>     Attrib V46    -0.24243373591685705
#>     Attrib V47    0.13252837255567665
#>     Attrib V48    -0.027344010159487245
#>     Attrib V49    -0.4907526617288599
#>     Attrib V5    -0.2616572543842067
#>     Attrib V50    0.8383584029680018
#>     Attrib V51    0.19250346850730143
#>     Attrib V52    0.7700983031577432
#>     Attrib V53    0.18289496472558664
#>     Attrib V54    -0.8652613375943219
#>     Attrib V55    -0.07536314650929483
#>     Attrib V56    0.022379937365255072
#>     Attrib V57    -0.38459946245507515
#>     Attrib V58    -0.4953693082773923
#>     Attrib V59    -0.4947709274890063
#>     Attrib V6    0.15147282681160493
#>     Attrib V60    -0.25399537789969356
#>     Attrib V7    0.2359069296785322
#>     Attrib V8    -0.20756070231335777
#>     Attrib V9    -1.2561943656693222
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.2053823916011094
#>     Attrib V1    0.07596580625085264
#>     Attrib V10    0.42122889650742457
#>     Attrib V11    0.15130997013124087
#>     Attrib V12    0.05980518649631118
#>     Attrib V13    -0.19940922553343793
#>     Attrib V14    -0.400714674574673
#>     Attrib V15    -0.10655336322834645
#>     Attrib V16    0.07396524595444112
#>     Attrib V17    0.16906148686844943
#>     Attrib V18    0.0547093691432638
#>     Attrib V19    0.43502942083267004
#>     Attrib V2    0.13840245096487316
#>     Attrib V20    0.506308235659987
#>     Attrib V21    0.21395572365395454
#>     Attrib V22    0.019150916184537875
#>     Attrib V23    0.10899375912261854
#>     Attrib V24    0.4203490094203189
#>     Attrib V25    -0.2326087858953923
#>     Attrib V26    -0.9511073997177939
#>     Attrib V27    -0.279395783372043
#>     Attrib V28    -0.11645264825315799
#>     Attrib V29    -0.7353669835766625
#>     Attrib V3    -0.20617628926791065
#>     Attrib V30    0.08142637622422531
#>     Attrib V31    -0.562695442509257
#>     Attrib V32    -0.08558280784137504
#>     Attrib V33    0.3554834878994915
#>     Attrib V34    -0.16912063298110658
#>     Attrib V35    -0.30843035742644315
#>     Attrib V36    -0.9144202976666925
#>     Attrib V37    -0.7476589107265612
#>     Attrib V38    0.35825609589215535
#>     Attrib V39    0.06637588885604256
#>     Attrib V4    0.5464163245756452
#>     Attrib V40    -0.3462754530711338
#>     Attrib V41    -0.010635301415933048
#>     Attrib V42    0.3943292901681
#>     Attrib V43    0.5444566399894648
#>     Attrib V44    0.2870997886348365
#>     Attrib V45    0.13667505785846093
#>     Attrib V46    0.1345405372486762
#>     Attrib V47    -0.21129395573461385
#>     Attrib V48    0.009001846660386422
#>     Attrib V49    0.22662360655699534
#>     Attrib V5    0.21110249231801875
#>     Attrib V50    -0.5219698412186421
#>     Attrib V51    -0.10764956526242242
#>     Attrib V52    -0.42530998359797645
#>     Attrib V53    -0.029476687414145282
#>     Attrib V54    0.4674511916803133
#>     Attrib V55    0.030893552769310523
#>     Attrib V56    -0.05214570839103081
#>     Attrib V57    0.36276387889447265
#>     Attrib V58    0.28273662421178253
#>     Attrib V59    0.35173462924595517
#>     Attrib V6    -0.05504512574872707
#>     Attrib V60    0.27353744023260623
#>     Attrib V7    -0.19175602389228474
#>     Attrib V8    -0.06088928269735982
#>     Attrib V9    0.7303251593234402
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.23151019377694096
#>     Attrib V1    0.05016273074597814
#>     Attrib V10    0.46374778799971117
#>     Attrib V11    0.25136364083423146
#>     Attrib V12    0.15717486046818605
#>     Attrib V13    -0.1790832504535572
#>     Attrib V14    -0.490895369098202
#>     Attrib V15    -0.13399073825815086
#>     Attrib V16    -0.04204367548355628
#>     Attrib V17    0.22623328682904562
#>     Attrib V18    0.08952201917298554
#>     Attrib V19    0.5348878411610641
#>     Attrib V2    0.07497381266357754
#>     Attrib V20    0.5442798060576624
#>     Attrib V21    0.2312262756801385
#>     Attrib V22    0.0761530746262264
#>     Attrib V23    0.21632866978883952
#>     Attrib V24    0.4294402417983072
#>     Attrib V25    -0.1880197836473654
#>     Attrib V26    -0.9120787855643868
#>     Attrib V27    -0.24940979315719314
#>     Attrib V28    -0.06693122793860551
#>     Attrib V29    -0.8875219965363962
#>     Attrib V3    -0.21367075469205443
#>     Attrib V30    0.10028750380618087
#>     Attrib V31    -0.7345934226748077
#>     Attrib V32    -0.1709846446474945
#>     Attrib V33    0.38210647828499317
#>     Attrib V34    -0.18017913816416994
#>     Attrib V35    -0.2407585928172483
#>     Attrib V36    -0.9247062091521767
#>     Attrib V37    -0.7140240415157021
#>     Attrib V38    0.5074439646877453
#>     Attrib V39    0.12471670137278368
#>     Attrib V4    0.6231086049501515
#>     Attrib V40    -0.48501874641930637
#>     Attrib V41    -0.020114389357153786
#>     Attrib V42    0.40460972398104805
#>     Attrib V43    0.5843733927540254
#>     Attrib V44    0.3698643678081455
#>     Attrib V45    0.2971721336402259
#>     Attrib V46    0.14794308175843351
#>     Attrib V47    -0.16042512878049625
#>     Attrib V48    -0.08317800669042796
#>     Attrib V49    0.2588135277021459
#>     Attrib V5    0.20052340425076384
#>     Attrib V50    -0.6028301288718602
#>     Attrib V51    -0.12441187357097934
#>     Attrib V52    -0.4438196741483423
#>     Attrib V53    -0.013516986574665366
#>     Attrib V54    0.4811840057402196
#>     Attrib V55    0.03626929814501946
#>     Attrib V56    -0.06275190277695632
#>     Attrib V57    0.332163917688776
#>     Attrib V58    0.2414614031983411
#>     Attrib V59    0.3902345198737692
#>     Attrib V6    -0.08698338640530821
#>     Attrib V60    0.23679582897358423
#>     Attrib V7    -0.22594572034409466
#>     Attrib V8    -0.05614706270774495
#>     Attrib V9    0.8298399167419622
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.17537225947764315
#>     Attrib V1    0.06867237749710038
#>     Attrib V10    -0.05469362552996374
#>     Attrib V11    -0.0544985782831175
#>     Attrib V12    -0.07280478940015338
#>     Attrib V13    -0.05494316367014323
#>     Attrib V14    0.09877759271728344
#>     Attrib V15    0.10401035510997585
#>     Attrib V16    0.061868616154805496
#>     Attrib V17    0.08465061736930639
#>     Attrib V18    -0.02641381877439132
#>     Attrib V19    -0.10898087333600634
#>     Attrib V2    0.02493510428393329
#>     Attrib V20    -0.15281092256261458
#>     Attrib V21    -0.09560726554315166
#>     Attrib V22    -0.07786219104726413
#>     Attrib V23    -0.025619765308959812
#>     Attrib V24    -0.14264525279291115
#>     Attrib V25    -0.04285350231701559
#>     Attrib V26    0.08141882798626864
#>     Attrib V27    -0.1475660814449254
#>     Attrib V28    -0.1291264020062409
#>     Attrib V29    -0.018784344775023283
#>     Attrib V3    0.10973759874982694
#>     Attrib V30    -0.04597447984238918
#>     Attrib V31    0.0864824386217237
#>     Attrib V32    0.08157717850896798
#>     Attrib V33    -0.029822914031660423
#>     Attrib V34    0.08001297418452702
#>     Attrib V35    0.17043366725837916
#>     Attrib V36    0.3258704237183834
#>     Attrib V37    0.16482804675918195
#>     Attrib V38    -0.008096197378746178
#>     Attrib V39    0.03060856302722854
#>     Attrib V4    -0.03202487497569493
#>     Attrib V40    0.199181148050909
#>     Attrib V41    0.15627978665166875
#>     Attrib V42    0.11478402081278188
#>     Attrib V43    0.12546749522352266
#>     Attrib V44    0.058769665317110774
#>     Attrib V45    -0.017325797468016966
#>     Attrib V46    0.030552477643317272
#>     Attrib V47    0.07957609266088679
#>     Attrib V48    -0.03476630444687877
#>     Attrib V49    -0.08823576009224249
#>     Attrib V5    0.01735733274615646
#>     Attrib V50    0.1811602124355269
#>     Attrib V51    0.08055145193014104
#>     Attrib V52    0.11998870076317465
#>     Attrib V53    0.05277638244486143
#>     Attrib V54    -0.05182614838320068
#>     Attrib V55    0.059061666826599094
#>     Attrib V56    0.1708038628624187
#>     Attrib V57    0.0974236036066103
#>     Attrib V58    0.06885350563819717
#>     Attrib V59    0.03515384230632153
#>     Attrib V6    0.17969544493974318
#>     Attrib V60    0.09180245488118659
#>     Attrib V7    0.13079753946058612
#>     Attrib V8    0.1801876753001871
#>     Attrib V9    0.00947727104389489
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    1.0757025303049297
#>     Attrib V1    0.37471858314164036
#>     Attrib V10    1.0530589346429469
#>     Attrib V11    1.0381373885449139
#>     Attrib V12    1.9440243269238608
#>     Attrib V13    0.6827142576440349
#>     Attrib V14    -0.5058929327640314
#>     Attrib V15    -0.07607650622085531
#>     Attrib V16    -0.5054857079021301
#>     Attrib V17    -0.48202721592446435
#>     Attrib V18    -0.10451134379204784
#>     Attrib V19    -0.5468690597285902
#>     Attrib V2    1.1827879316206995
#>     Attrib V20    -0.42248694605090675
#>     Attrib V21    -0.19343730019105346
#>     Attrib V22    0.1229810382070972
#>     Attrib V23    0.43365184251032024
#>     Attrib V24    0.9903521770492089
#>     Attrib V25    0.5575712971139365
#>     Attrib V26    0.4651737869975574
#>     Attrib V27    1.6658144201470195
#>     Attrib V28    1.897491761707396
#>     Attrib V29    1.0431276605987885
#>     Attrib V3    0.8172312309242992
#>     Attrib V30    0.5533014195227631
#>     Attrib V31    -0.3405549810920431
#>     Attrib V32    -0.5931472510853524
#>     Attrib V33    -0.6824948803726915
#>     Attrib V34    -0.13059854821831554
#>     Attrib V35    0.4435391687534047
#>     Attrib V36    -1.1890620782891377
#>     Attrib V37    0.3100499465555303
#>     Attrib V38    -0.13381248556208536
#>     Attrib V39    0.16271631966644307
#>     Attrib V4    0.20422016715782346
#>     Attrib V40    0.7049756573973157
#>     Attrib V41    1.2547317499385944
#>     Attrib V42    -0.7044664430485935
#>     Attrib V43    -0.16984118704145335
#>     Attrib V44    0.14653258905131777
#>     Attrib V45    0.5756442612927752
#>     Attrib V46    0.9632149237591846
#>     Attrib V47    0.5221548363376788
#>     Attrib V48    0.7541376536446471
#>     Attrib V49    0.7794756147963574
#>     Attrib V5    0.7130097871969208
#>     Attrib V50    -0.956079271986952
#>     Attrib V51    0.9843611231367837
#>     Attrib V52    0.7956764098909995
#>     Attrib V53    1.3398418694823475
#>     Attrib V54    -0.26545074207771185
#>     Attrib V55    -0.7564824055810865
#>     Attrib V56    -0.5101006456905687
#>     Attrib V57    0.39369143467758083
#>     Attrib V58    -0.16883313110644063
#>     Attrib V59    0.4785467836505262
#>     Attrib V6    0.3231284997998794
#>     Attrib V60    0.38233881431744887
#>     Attrib V7    -1.2332196366172212
#>     Attrib V8    -1.2184277739160534
#>     Attrib V9    0.9191994555701896
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.24505918759911607
#>     Attrib V1    0.06638051030273298
#>     Attrib V10    -0.11239162501791611
#>     Attrib V11    -0.1425452039430882
#>     Attrib V12    -0.14588242685246308
#>     Attrib V13    -0.07189357616187658
#>     Attrib V14    0.18461001433246196
#>     Attrib V15    0.05341380850126835
#>     Attrib V16    0.08436128422295572
#>     Attrib V17    0.05371702370946636
#>     Attrib V18    -0.0475504795462634
#>     Attrib V19    -0.11255618499897335
#>     Attrib V2    0.015138219350960798
#>     Attrib V20    -0.20918088310261623
#>     Attrib V21    -0.08330022399388094
#>     Attrib V22    -0.024356186006925
#>     Attrib V23    -0.029441527749710365
#>     Attrib V24    -0.13191793533513174
#>     Attrib V25    0.019908487709442098
#>     Attrib V26    0.11502358738142728
#>     Attrib V27    -0.12835182764066635
#>     Attrib V28    -0.18693375205122278
#>     Attrib V29    0.014233325265444564
#>     Attrib V3    0.10869743530257843
#>     Attrib V30    -0.09837785091849903
#>     Attrib V31    0.13730078722665645
#>     Attrib V32    0.059944524846154354
#>     Attrib V33    0.04549421880253704
#>     Attrib V34    0.08614481203726475
#>     Attrib V35    0.2762030364885846
#>     Attrib V36    0.47686759972960074
#>     Attrib V37    0.28893074608436325
#>     Attrib V38    -0.1102214428415459
#>     Attrib V39    0.00431615498145788
#>     Attrib V4    -0.09155438175980245
#>     Attrib V40    0.2052237678285191
#>     Attrib V41    0.14595813061543314
#>     Attrib V42    0.20824282294809593
#>     Attrib V43    0.09370050499245422
#>     Attrib V44    0.06430850458862314
#>     Attrib V45    -0.030123161095605304
#>     Attrib V46    -0.05771023458943696
#>     Attrib V47    -0.02308264938685399
#>     Attrib V48    -0.07610928417236172
#>     Attrib V49    -0.15952564376910863
#>     Attrib V5    0.00705173067517707
#>     Attrib V50    0.22076898309766269
#>     Attrib V51    -6.678301464065872E-4
#>     Attrib V52    0.055071924704120256
#>     Attrib V53    0.07763457718535736
#>     Attrib V54    -0.07934405713558879
#>     Attrib V55    0.040241262082898945
#>     Attrib V56    0.17363079173724683
#>     Attrib V57    0.05760601412927752
#>     Attrib V58    0.06927738598454616
#>     Attrib V59    0.023965715116797764
#>     Attrib V6    0.22110981610872016
#>     Attrib V60    0.1655078385042628
#>     Attrib V7    0.21646452200204813
#>     Attrib V8    0.2570979126262046
#>     Attrib V9    -0.14344019385016527
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.678750308554807
#>     Attrib V1    0.03119181991156702
#>     Attrib V10    0.818505750352398
#>     Attrib V11    0.7683000458515158
#>     Attrib V12    1.2614063543504006
#>     Attrib V13    0.287989007789406
#>     Attrib V14    -0.5873865931159362
#>     Attrib V15    -0.16223577544434292
#>     Attrib V16    -0.3922658423074791
#>     Attrib V17    -0.3851637191444875
#>     Attrib V18    -0.07955449305286899
#>     Attrib V19    -0.16789989648996362
#>     Attrib V2    0.4823266378884478
#>     Attrib V20    -0.3155058580340819
#>     Attrib V21    -0.392323300753254
#>     Attrib V22    -0.2870714845352635
#>     Attrib V23    0.045688044383370395
#>     Attrib V24    0.8654797852049836
#>     Attrib V25    0.587750719597207
#>     Attrib V26    0.20234105152009368
#>     Attrib V27    0.8895700275735132
#>     Attrib V28    0.8352412268897357
#>     Attrib V29    -0.035261900353578825
#>     Attrib V3    0.13915659205171316
#>     Attrib V30    0.1879891377120161
#>     Attrib V31    -0.3384688314236901
#>     Attrib V32    -0.3157994791407479
#>     Attrib V33    -0.0751473063164078
#>     Attrib V34    0.22330657473030519
#>     Attrib V35    0.3945733513634701
#>     Attrib V36    -0.8014174910169278
#>     Attrib V37    -0.07848016810437243
#>     Attrib V38    0.004146089157037549
#>     Attrib V39    0.0922071207685755
#>     Attrib V4    0.18697690141022968
#>     Attrib V40    0.17786618989236638
#>     Attrib V41    0.5040721062552974
#>     Attrib V42    -0.5020159017856327
#>     Attrib V43    -0.12473409008926463
#>     Attrib V44    0.12359816095049558
#>     Attrib V45    0.41527028015863454
#>     Attrib V46    0.5985358256727651
#>     Attrib V47    0.25811076937204513
#>     Attrib V48    0.5524596314947894
#>     Attrib V49    0.5005470006597252
#>     Attrib V5    0.35630166334721086
#>     Attrib V50    -0.8208139463541503
#>     Attrib V51    0.4154068642989153
#>     Attrib V52    0.2463855718247638
#>     Attrib V53    0.7055301343367549
#>     Attrib V54    0.1614590668303685
#>     Attrib V55    -0.1726508628580326
#>     Attrib V56    -0.4436968534112016
#>     Attrib V57    0.293795782374041
#>     Attrib V58    -0.04791032196830032
#>     Attrib V59    0.2645269997608425
#>     Attrib V6    0.029004356218985176
#>     Attrib V60    0.1935774351992739
#>     Attrib V7    -0.8119132116662469
#>     Attrib V8    -0.7775444659193887
#>     Attrib V9    0.783525883565084
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.3356192203448027
#>     Attrib V1    -0.02936837844336777
#>     Attrib V10    -0.8064762788928618
#>     Attrib V11    -0.5160972399158814
#>     Attrib V12    -0.40924681737273094
#>     Attrib V13    0.14357297567350052
#>     Attrib V14    0.7721475398457242
#>     Attrib V15    0.3027020529750111
#>     Attrib V16    0.22240226012379566
#>     Attrib V17    -0.07765033245071963
#>     Attrib V18    0.04719137907803007
#>     Attrib V19    -0.49292822292402344
#>     Attrib V2    -0.30596864511206423
#>     Attrib V20    -0.5406476948311557
#>     Attrib V21    -0.18686550018247886
#>     Attrib V22    -0.12780209653546598
#>     Attrib V23    -0.3276178123433097
#>     Attrib V24    -0.5949442060422448
#>     Attrib V25    0.08144485688415333
#>     Attrib V26    1.0151999153919817
#>     Attrib V27    0.22215960253248915
#>     Attrib V28    -0.1757916934769459
#>     Attrib V29    0.6751186360635638
#>     Attrib V3    0.2854201229975008
#>     Attrib V30    -0.2815664252163438
#>     Attrib V31    0.6685736119497052
#>     Attrib V32    0.22822950195178876
#>     Attrib V33    -0.3319804325183411
#>     Attrib V34    0.16539047521994787
#>     Attrib V35    0.3153447581924706
#>     Attrib V36    1.2212281745127902
#>     Attrib V37    0.7630907164650832
#>     Attrib V38    -0.3799968916070516
#>     Attrib V39    -0.11687861516624669
#>     Attrib V4    -0.30543365390892213
#>     Attrib V40    0.35936908043040183
#>     Attrib V41    -0.08755213356531584
#>     Attrib V42    -0.25420546043915304
#>     Attrib V43    -0.4429833630009613
#>     Attrib V44    -0.34355159309552247
#>     Attrib V45    -0.32564108053436674
#>     Attrib V46    -0.3913746468591493
#>     Attrib V47    -0.1669770915180843
#>     Attrib V48    -0.22939039375588643
#>     Attrib V49    -0.5022449577169285
#>     Attrib V5    -0.23250291990250957
#>     Attrib V50    0.8136586708431419
#>     Attrib V51    -0.2275976920465793
#>     Attrib V52    0.3819123740349527
#>     Attrib V53    0.003780982684350598
#>     Attrib V54    -0.2647238785215126
#>     Attrib V55    0.1573705383179053
#>     Attrib V56    0.19272912426493866
#>     Attrib V57    -0.21897330489986605
#>     Attrib V58    -0.15071039336271164
#>     Attrib V59    -0.23428554834841267
#>     Attrib V6    0.1156391769051315
#>     Attrib V60    -0.10920205212130618
#>     Attrib V7    0.4691674850844476
#>     Attrib V8    0.2560029063341779
#>     Attrib V9    -0.9174465924040687
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.08598832468988314
#>     Attrib V1    -0.022444868409594077
#>     Attrib V10    0.21784453605820997
#>     Attrib V11    0.1887923110728154
#>     Attrib V12    0.17858564223949708
#>     Attrib V13    -0.03762985455030107
#>     Attrib V14    -0.1447710207594854
#>     Attrib V15    -0.049768874157237866
#>     Attrib V16    -0.08569516826641554
#>     Attrib V17    -0.010167986762109161
#>     Attrib V18    -0.006917565376110215
#>     Attrib V19    0.09206250240372194
#>     Attrib V2    0.07960277086020999
#>     Attrib V20    0.17734777715152403
#>     Attrib V21    0.051106796299294086
#>     Attrib V22    0.005186279136682082
#>     Attrib V23    0.012858367727555501
#>     Attrib V24    0.21775743018789553
#>     Attrib V25    0.02012522990618642
#>     Attrib V26    -0.3201475504565143
#>     Attrib V27    0.05609299824153336
#>     Attrib V28    0.1345877865472281
#>     Attrib V29    -0.13975362368849828
#>     Attrib V3    -0.025051916992681392
#>     Attrib V30    0.065568242636848
#>     Attrib V31    -0.23677176679055137
#>     Attrib V32    -0.09294559546809375
#>     Attrib V33    0.10291057905461913
#>     Attrib V34    -0.0058888466700802045
#>     Attrib V35    0.02127403617363475
#>     Attrib V36    -0.35662033804544835
#>     Attrib V37    -0.1424205594785895
#>     Attrib V38    0.19048811794781387
#>     Attrib V39    0.09006654344935672
#>     Attrib V4    0.17516183919535872
#>     Attrib V40    -0.10496137503722901
#>     Attrib V41    0.059206078169579915
#>     Attrib V42    -0.004222740000577654
#>     Attrib V43    0.18428112848420689
#>     Attrib V44    0.09992541121167048
#>     Attrib V45    0.17029905503386275
#>     Attrib V46    0.11173619564743784
#>     Attrib V47    -0.0035305137460911883
#>     Attrib V48    0.055915299466424234
#>     Attrib V49    0.1158675024774476
#>     Attrib V5    0.035015788480240236
#>     Attrib V50    -0.26405495395982487
#>     Attrib V51    0.05107567417317523
#>     Attrib V52    -0.06902319995480975
#>     Attrib V53    0.06790777006475575
#>     Attrib V54    0.11022613496992567
#>     Attrib V55    0.04124627165318745
#>     Attrib V56    -0.037201895531415695
#>     Attrib V57    0.1657310152348256
#>     Attrib V58    0.048657285451604235
#>     Attrib V59    0.09034159142992329
#>     Attrib V6    -0.040693426595333475
#>     Attrib V60    0.11110101840675542
#>     Attrib V7    -0.22949435278067704
#>     Attrib V8    -0.14422570178369437
#>     Attrib V9    0.3452312578334064
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.014035273320212902
#>     Attrib V1    0.07469293288104356
#>     Attrib V10    0.2085176962247836
#>     Attrib V11    0.10579016027584869
#>     Attrib V12    0.13735664001092124
#>     Attrib V13    0.02477866686457974
#>     Attrib V14    -0.10116538325821298
#>     Attrib V15    -0.016377302766715708
#>     Attrib V16    -0.05207333703630142
#>     Attrib V17    0.022793817374947133
#>     Attrib V18    -0.0325424551236361
#>     Attrib V19    0.03501132917306095
#>     Attrib V2    0.1173911157319762
#>     Attrib V20    0.057830318925474564
#>     Attrib V21    0.01447840748097931
#>     Attrib V22    -0.0594668650011997
#>     Attrib V23    5.563340396177973E-4
#>     Attrib V24    0.06774654606492343
#>     Attrib V25    -0.01382728778073591
#>     Attrib V26    -0.1662352067461654
#>     Attrib V27    0.050329595332234155
#>     Attrib V28    0.12247405597432301
#>     Attrib V29    -0.15730819422635456
#>     Attrib V3    -0.02258641879350578
#>     Attrib V30    0.09110329018044064
#>     Attrib V31    -0.117060515005992
#>     Attrib V32    -0.10245150804105164
#>     Attrib V33    0.03486378275250227
#>     Attrib V34    -0.009255531907426973
#>     Attrib V35    0.04887900143337414
#>     Attrib V36    -0.21012133495729174
#>     Attrib V37    -0.033260912212263204
#>     Attrib V38    0.13471628851254336
#>     Attrib V39    0.1332716160625959
#>     Attrib V4    0.194244743445141
#>     Attrib V40    -0.04597712052814738
#>     Attrib V41    0.034439041820032205
#>     Attrib V42    0.05017953695828587
#>     Attrib V43    0.08276632608863205
#>     Attrib V44    0.06298162654040892
#>     Attrib V45    0.08818612906220902
#>     Attrib V46    0.058721548357067006
#>     Attrib V47    -0.04935002330126232
#>     Attrib V48    0.072931999922855
#>     Attrib V49    0.0799651205841188
#>     Attrib V5    -7.115729526594525E-4
#>     Attrib V50    -0.18302063505843372
#>     Attrib V51    0.023235714015296168
#>     Attrib V52    -0.038783845184337
#>     Attrib V53    0.09073715230939575
#>     Attrib V54    0.11171284003375476
#>     Attrib V55    0.006860866257731636
#>     Attrib V56    0.027267046341209474
#>     Attrib V57    0.1256910376765581
#>     Attrib V58    0.09834009798851912
#>     Attrib V59    0.15145697191547455
#>     Attrib V6    -0.027456790886019655
#>     Attrib V60    0.13954992438474167
#>     Attrib V7    -0.20856274267549404
#>     Attrib V8    -0.1370646447532522
#>     Attrib V9    0.2190541325070987
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.09469998670706832
#>     Attrib V1    0.040735454716594406
#>     Attrib V10    0.37723875154834885
#>     Attrib V11    0.15674232400208526
#>     Attrib V12    -0.028663464093844505
#>     Attrib V13    -0.15703694980495997
#>     Attrib V14    -0.3609360765652299
#>     Attrib V15    -0.06734020381648673
#>     Attrib V16    0.03798017954405573
#>     Attrib V17    0.21386564939759087
#>     Attrib V18    0.08242280495770547
#>     Attrib V19    0.45058864954219835
#>     Attrib V2    0.13392435961475402
#>     Attrib V20    0.5299498942994054
#>     Attrib V21    0.1897919499410383
#>     Attrib V22    0.0782449947849138
#>     Attrib V23    0.15791320217925947
#>     Attrib V24    0.35254022596816426
#>     Attrib V25    -0.2775529809286753
#>     Attrib V26    -0.9001178561361352
#>     Attrib V27    -0.34271561786077487
#>     Attrib V28    -0.18063535488781882
#>     Attrib V29    -0.8545814240758379
#>     Attrib V3    -0.23449231661131317
#>     Attrib V30    0.012973591635830208
#>     Attrib V31    -0.5913208897871002
#>     Attrib V32    -0.12413929624816494
#>     Attrib V33    0.4040183551217509
#>     Attrib V34    -0.10058287709731462
#>     Attrib V35    -0.22491659756753155
#>     Attrib V36    -0.8093245497696141
#>     Attrib V37    -0.670416453972793
#>     Attrib V38    0.4706314659975476
#>     Attrib V39    0.07041046017753327
#>     Attrib V4    0.5295692010642548
#>     Attrib V40    -0.39894409786145973
#>     Attrib V41    -0.05218948691084494
#>     Attrib V42    0.37929018350979954
#>     Attrib V43    0.5171968503834743
#>     Attrib V44    0.3526206714670169
#>     Attrib V45    0.16428990854824685
#>     Attrib V46    0.07998294905043594
#>     Attrib V47    -0.20973991365782935
#>     Attrib V48    -0.056333835657154094
#>     Attrib V49    0.198030552830346
#>     Attrib V5    0.14380509275547898
#>     Attrib V50    -0.48547021285118286
#>     Attrib V51    -0.13975719583506604
#>     Attrib V52    -0.44840325544853676
#>     Attrib V53    -0.014759187506281293
#>     Attrib V54    0.4894520946519531
#>     Attrib V55    0.08567768602477395
#>     Attrib V56    -0.07338129391293656
#>     Attrib V57    0.33710060178649687
#>     Attrib V58    0.20693421858729083
#>     Attrib V59    0.3033365947801138
#>     Attrib V6    -0.050047588496004596
#>     Attrib V60    0.2568475204887328
#>     Attrib V7    -0.11880270017157557
#>     Attrib V8    0.04473984045848587
#>     Attrib V9    0.7391889247662025
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.18587350633872432
#>     Attrib V1    0.09146300862995053
#>     Attrib V10    -0.15740344396118994
#>     Attrib V11    -0.08866518561031221
#>     Attrib V12    -0.16185287078227714
#>     Attrib V13    -0.1107730817996548
#>     Attrib V14    0.175855786508422
#>     Attrib V15    0.09102648746573089
#>     Attrib V16    0.13708426707349725
#>     Attrib V17    0.01963604775132788
#>     Attrib V18    0.03673780458682404
#>     Attrib V19    -0.21311011097038204
#>     Attrib V2    -0.018156571513846965
#>     Attrib V20    -0.2216257321817332
#>     Attrib V21    -0.10191067221713271
#>     Attrib V22    -0.0299934614592339
#>     Attrib V23    0.0614593568115155
#>     Attrib V24    -0.07810086022610134
#>     Attrib V25    -0.03571823601655393
#>     Attrib V26    0.08954844010754269
#>     Attrib V27    -0.19819743630223174
#>     Attrib V28    -0.22924296240044031
#>     Attrib V29    -0.025345047947671985
#>     Attrib V3    0.1913165192556637
#>     Attrib V30    -0.08192871544288838
#>     Attrib V31    0.1264950178886234
#>     Attrib V32    0.0593890815013611
#>     Attrib V33    0.027659652381892434
#>     Attrib V34    0.13308009358734724
#>     Attrib V35    0.2784642460704794
#>     Attrib V36    0.5436995224819879
#>     Attrib V37    0.29711176316641186
#>     Attrib V38    -0.1291357421607772
#>     Attrib V39    0.009859869044876573
#>     Attrib V4    -0.15988695070091388
#>     Attrib V40    0.22721112088894493
#>     Attrib V41    0.15388991411338282
#>     Attrib V42    0.22627731355897227
#>     Attrib V43    0.05065067051659084
#>     Attrib V44    0.0818147659998818
#>     Attrib V45    0.006786873962276264
#>     Attrib V46    -0.032047037748879174
#>     Attrib V47    -0.003329834279131881
#>     Attrib V48    -0.16546948687661037
#>     Attrib V49    -0.13321308240781796
#>     Attrib V5    0.06914881377851824
#>     Attrib V50    0.16039496105375425
#>     Attrib V51    0.05320544389994026
#>     Attrib V52    0.15125477662966189
#>     Attrib V53    0.09929645161633048
#>     Attrib V54    -0.14129651044324176
#>     Attrib V55    -0.006094202622169573
#>     Attrib V56    0.16319917745598167
#>     Attrib V57    0.004682136894075998
#>     Attrib V58    0.11880648718243728
#>     Attrib V59    0.004959290844597773
#>     Attrib V6    0.2431143492360455
#>     Attrib V60    0.10529600686959019
#>     Attrib V7    0.2653111591826726
#>     Attrib V8    0.30987023968334354
#>     Attrib V9    -0.10949503765899847
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
