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
#>     Threshold    -0.17366518093997865
#>     Node 2    2.17060901228812
#>     Node 3    1.5340382186307406
#>     Node 4    1.6066724965797456
#>     Node 5    -2.9214900350515625
#>     Node 6    2.0297275334924336
#>     Node 7    2.3929492138314523
#>     Node 8    1.4767709094944188
#>     Node 9    2.9222921112616143
#>     Node 10    -1.1325476393255933
#>     Node 11    1.304169760530603
#>     Node 12    1.6793856054716771
#>     Node 13    1.1941032798717175
#>     Node 14    1.3153082416786617
#>     Node 15    -2.5109617882588564
#>     Node 16    -0.21941096248566977
#>     Node 17    1.7148698045633668
#>     Node 18    0.09178514864546773
#>     Node 19    1.7141509084337723
#>     Node 20    1.8406389708289064
#>     Node 21    -1.6999793669407568
#>     Node 22    0.36210627584610366
#>     Node 23    0.9297142612389544
#>     Node 24    -1.6286414274769072
#>     Node 25    4.086357967747913
#>     Node 26    -0.34773524098202346
#>     Node 27    1.4658837618858227
#>     Node 28    -2.8448596686484553
#>     Node 29    1.4687397635805344
#>     Node 30    -0.49516717202868926
#>     Node 31    1.4103582150248246
#>     Node 32    1.0722752010861092
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.19972528718706498
#>     Node 2    -2.2287974802049626
#>     Node 3    -1.522965197327407
#>     Node 4    -1.5665574312883128
#>     Node 5    2.948368234609371
#>     Node 6    -2.0177561893880513
#>     Node 7    -2.387670913311926
#>     Node 8    -1.4894243907303786
#>     Node 9    -2.9313870335763155
#>     Node 10    1.0728738172095056
#>     Node 11    -1.274387238482669
#>     Node 12    -1.7562749931911519
#>     Node 13    -1.146690095691196
#>     Node 14    -1.2535603714329413
#>     Node 15    2.5037708758653765
#>     Node 16    0.20919822600408416
#>     Node 17    -1.6876040847752556
#>     Node 18    -0.047206487196887595
#>     Node 19    -1.7096260393299885
#>     Node 20    -1.8132920981951992
#>     Node 21    1.7484202056720142
#>     Node 22    -0.41588557426921546
#>     Node 23    -0.984051759086481
#>     Node 24    1.6052312103467656
#>     Node 25    -4.0943009413275755
#>     Node 26    0.2734891644921841
#>     Node 27    -1.4929763824856783
#>     Node 28    2.8076124788479833
#>     Node 29    -1.501456820793
#>     Node 30    0.5789868413595102
#>     Node 31    -1.3642131861119438
#>     Node 32    -1.0966710798589188
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.15908944135858297
#>     Attrib V1    0.05516798349529858
#>     Attrib V10    0.1487877052789861
#>     Attrib V11    -0.1137621002839293
#>     Attrib V12    -0.4567839373368123
#>     Attrib V13    0.03131384567747655
#>     Attrib V14    0.1879376835527083
#>     Attrib V15    0.10509381803387638
#>     Attrib V16    0.10745243297585812
#>     Attrib V17    0.2191244523757347
#>     Attrib V18    0.23677739981723175
#>     Attrib V19    0.3748068937551642
#>     Attrib V2    0.07793761066158122
#>     Attrib V20    0.7188007563364642
#>     Attrib V21    0.9303241998287723
#>     Attrib V22    0.7129016456095206
#>     Attrib V23    0.2609051711418334
#>     Attrib V24    -0.015258564948973484
#>     Attrib V25    -0.7686670589642003
#>     Attrib V26    -0.899058680200316
#>     Attrib V27    -0.7963493418432304
#>     Attrib V28    -0.31701576295540457
#>     Attrib V29    -0.4096191883169616
#>     Attrib V3    -0.005323687616348515
#>     Attrib V30    0.16059283267861715
#>     Attrib V31    -0.9682581787731118
#>     Attrib V32    0.10918978021163636
#>     Attrib V33    0.6394099795049522
#>     Attrib V34    -0.21306144247746148
#>     Attrib V35    -0.527871738682158
#>     Attrib V36    -0.8096737390419203
#>     Attrib V37    -0.19659610364856991
#>     Attrib V38    1.107021112764107
#>     Attrib V39    0.4141234978633062
#>     Attrib V4    0.45328448266566257
#>     Attrib V40    -0.387141913421352
#>     Attrib V41    -0.010510115399385062
#>     Attrib V42    0.35863014583217223
#>     Attrib V43    0.3639670946178705
#>     Attrib V44    0.6169470321073743
#>     Attrib V45    0.3682480938407125
#>     Attrib V46    0.22865129988580835
#>     Attrib V47    -0.33501627209312196
#>     Attrib V48    -0.15600948983599816
#>     Attrib V49    0.16488867916712496
#>     Attrib V5    0.285096857246336
#>     Attrib V50    -0.8196874955586848
#>     Attrib V51    -0.10859760765818073
#>     Attrib V52    0.1802897855484064
#>     Attrib V53    0.30128949589553033
#>     Attrib V54    0.4321264902638704
#>     Attrib V55    -0.35523794165171635
#>     Attrib V56    0.7186694513163667
#>     Attrib V57    0.011147919371017494
#>     Attrib V58    0.5194272963203633
#>     Attrib V59    0.5019332876023829
#>     Attrib V6    -0.012841772830888004
#>     Attrib V60    0.2143885373121824
#>     Attrib V7    0.22518788779992
#>     Attrib V8    -0.20478953215002704
#>     Attrib V9    0.5946673024498571
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.2332327283009966
#>     Attrib V1    -0.01880430004101526
#>     Attrib V10    0.1324144401522567
#>     Attrib V11    -0.04678908037017601
#>     Attrib V12    -0.2507608185017656
#>     Attrib V13    0.05449626836943189
#>     Attrib V14    0.11709568476798089
#>     Attrib V15    0.15416819727790973
#>     Attrib V16    0.06364491698442876
#>     Attrib V17    0.1126546924591021
#>     Attrib V18    0.12537582468736766
#>     Attrib V19    0.27626293316704204
#>     Attrib V2    0.06246059481977821
#>     Attrib V20    0.36995007150356324
#>     Attrib V21    0.5417058219880551
#>     Attrib V22    0.4905787545453598
#>     Attrib V23    0.12285699786340801
#>     Attrib V24    0.006020967032678698
#>     Attrib V25    -0.4675473098716167
#>     Attrib V26    -0.5779729846975886
#>     Attrib V27    -0.5298153823632435
#>     Attrib V28    -0.2127209904477952
#>     Attrib V29    -0.2880121782871219
#>     Attrib V3    -0.061453375230860835
#>     Attrib V30    0.22130682286843514
#>     Attrib V31    -0.5759067498101634
#>     Attrib V32    0.18529915201784197
#>     Attrib V33    0.5010253553210728
#>     Attrib V34    -0.22464367300709284
#>     Attrib V35    -0.44066025995837543
#>     Attrib V36    -0.7463555464503571
#>     Attrib V37    -0.27422143877029775
#>     Attrib V38    0.607144559063376
#>     Attrib V39    0.24879392526465374
#>     Attrib V4    0.2944721195660369
#>     Attrib V40    -0.2538917276418187
#>     Attrib V41    0.08000825121920029
#>     Attrib V42    0.22120658956446418
#>     Attrib V43    0.2116187635144714
#>     Attrib V44    0.4371179646072829
#>     Attrib V45    0.19723051166982533
#>     Attrib V46    0.11154641784260114
#>     Attrib V47    -0.24287476589496068
#>     Attrib V48    -0.11054835275332436
#>     Attrib V49    0.14835149343238885
#>     Attrib V5    0.14532645788287213
#>     Attrib V50    -0.656047975680547
#>     Attrib V51    -0.1400554087492646
#>     Attrib V52    0.1355666170188113
#>     Attrib V53    0.28638385370336794
#>     Attrib V54    0.4146567251166339
#>     Attrib V55    -0.16821531046173874
#>     Attrib V56    0.4930128601859741
#>     Attrib V57    0.08774356338691407
#>     Attrib V58    0.47395902416831326
#>     Attrib V59    0.42084977919789035
#>     Attrib V6    -0.04789001359831747
#>     Attrib V60    0.1249091944151974
#>     Attrib V7    0.06656642392025051
#>     Attrib V8    -0.12817091171628026
#>     Attrib V9    0.44599483566930626
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.15221760463635117
#>     Attrib V1    -0.03219318888327922
#>     Attrib V10    0.1262101230465696
#>     Attrib V11    -0.041311274142070885
#>     Attrib V12    -0.31492405872123774
#>     Attrib V13    0.041155104545084704
#>     Attrib V14    0.13521114139801774
#>     Attrib V15    0.12352664776285709
#>     Attrib V16    0.06024077262619924
#>     Attrib V17    0.1522227679085492
#>     Attrib V18    0.16636029854377526
#>     Attrib V19    0.2832181877913287
#>     Attrib V2    0.033407472292604545
#>     Attrib V20    0.4666138120918524
#>     Attrib V21    0.7067068464951921
#>     Attrib V22    0.5421677610321772
#>     Attrib V23    0.1818265740206245
#>     Attrib V24    -0.026286584875408824
#>     Attrib V25    -0.5754173902246986
#>     Attrib V26    -0.6207158897171507
#>     Attrib V27    -0.5878412585943246
#>     Attrib V28    -0.18364755597247495
#>     Attrib V29    -0.2220428883674595
#>     Attrib V3    -0.025045507894655206
#>     Attrib V30    0.16424592229101015
#>     Attrib V31    -0.6591320805924693
#>     Attrib V32    0.1037300351849691
#>     Attrib V33    0.5025090996048615
#>     Attrib V34    -0.17033904476991849
#>     Attrib V35    -0.38249916811113915
#>     Attrib V36    -0.6626109005366567
#>     Attrib V37    -0.1645280479827324
#>     Attrib V38    0.726343687208821
#>     Attrib V39    0.2982243543397941
#>     Attrib V4    0.31509052790296455
#>     Attrib V40    -0.2869283391792657
#>     Attrib V41    -0.006825315678178192
#>     Attrib V42    0.22121548130107205
#>     Attrib V43    0.21915884639995567
#>     Attrib V44    0.5016514246016308
#>     Attrib V45    0.3425694852802713
#>     Attrib V46    0.15668142045594755
#>     Attrib V47    -0.2576112547249149
#>     Attrib V48    -0.05611831369539203
#>     Attrib V49    0.22607096485429365
#>     Attrib V5    0.21403030690813057
#>     Attrib V50    -0.6361537080664739
#>     Attrib V51    -0.056474751640125914
#>     Attrib V52    0.12238555620809953
#>     Attrib V53    0.27855120504938635
#>     Attrib V54    0.3068604862529736
#>     Attrib V55    -0.2852022737354483
#>     Attrib V56    0.5305463398366964
#>     Attrib V57    0.06465147335358429
#>     Attrib V58    0.41493590970443756
#>     Attrib V59    0.3681432323593664
#>     Attrib V6    -0.04577623616691877
#>     Attrib V60    0.12150920577090692
#>     Attrib V7    0.10219331471912034
#>     Attrib V8    -0.21850742137410528
#>     Attrib V9    0.5228205903631825
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.7639245149719387
#>     Attrib V1    0.2779939685234554
#>     Attrib V10    -1.2397357914139464
#>     Attrib V11    -1.027652734130135
#>     Attrib V12    -0.7146614859309162
#>     Attrib V13    -0.4310274058195705
#>     Attrib V14    0.21733488293915335
#>     Attrib V15    0.26273242848883116
#>     Attrib V16    0.7027421668311189
#>     Attrib V17    0.9119405215426271
#>     Attrib V18    0.09813731753471273
#>     Attrib V19    -0.04448340590516704
#>     Attrib V2    -0.048838598832613364
#>     Attrib V20    0.7012424333292373
#>     Attrib V21    0.04321032658059048
#>     Attrib V22    -0.7216179586348436
#>     Attrib V23    -0.5633466966936632
#>     Attrib V24    -0.5273501642764136
#>     Attrib V25    0.09606926950808478
#>     Attrib V26    -0.5454244384273494
#>     Attrib V27    -0.9209260900339424
#>     Attrib V28    -1.2823114486609564
#>     Attrib V29    -1.124473798530623
#>     Attrib V3    0.150255632752757
#>     Attrib V30    -0.38380168423767563
#>     Attrib V31    0.7309205931745163
#>     Attrib V32    0.041371422559108195
#>     Attrib V33    0.15613963570505482
#>     Attrib V34    0.23397785196235676
#>     Attrib V35    -0.11902998106877687
#>     Attrib V36    1.1043244888594146
#>     Attrib V37    0.07644583409456032
#>     Attrib V38    0.11791612135381223
#>     Attrib V39    -0.14845093993903294
#>     Attrib V4    -0.07720779638272028
#>     Attrib V40    -0.1928512476797353
#>     Attrib V41    -1.3832525711107002
#>     Attrib V42    0.2780822112091532
#>     Attrib V43    -0.010823724671649958
#>     Attrib V44    -0.6830930056977633
#>     Attrib V45    -0.4045243867779534
#>     Attrib V46    -0.846800564025398
#>     Attrib V47    -0.37484897544851303
#>     Attrib V48    -0.5655802497836913
#>     Attrib V49    -0.9568999810410493
#>     Attrib V5    -0.5169153139923478
#>     Attrib V50    1.1512546878156524
#>     Attrib V51    -0.42661178662161076
#>     Attrib V52    -0.49811577600017953
#>     Attrib V53    -0.8735115399521635
#>     Attrib V54    0.14723123047904418
#>     Attrib V55    0.7753299202492411
#>     Attrib V56    0.21815931798188204
#>     Attrib V57    0.3713970595931642
#>     Attrib V58    -0.4560744449102391
#>     Attrib V59    -0.5128118239784775
#>     Attrib V6    -0.8049017919288171
#>     Attrib V60    -0.5314411345991586
#>     Attrib V7    0.26435441466453696
#>     Attrib V8    0.7497727932232384
#>     Attrib V9    -1.191018083523597
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.2750308348138305
#>     Attrib V1    0.0798655102629883
#>     Attrib V10    -0.04011330992289167
#>     Attrib V11    -0.2479348553453588
#>     Attrib V12    -0.41853189688437803
#>     Attrib V13    -0.07272067532812994
#>     Attrib V14    0.13188456983572994
#>     Attrib V15    0.17602345308656195
#>     Attrib V16    0.23107720709179522
#>     Attrib V17    0.1892063533037232
#>     Attrib V18    0.16389907252688732
#>     Attrib V19    0.257515338014313
#>     Attrib V2    0.06429241729488336
#>     Attrib V20    0.5435803779824444
#>     Attrib V21    0.7684326188191942
#>     Attrib V22    0.5084866245023422
#>     Attrib V23    0.10021687491943015
#>     Attrib V24    0.0020764959860355586
#>     Attrib V25    -0.6543341979396535
#>     Attrib V26    -0.8928541262700769
#>     Attrib V27    -0.7785489110975118
#>     Attrib V28    -0.4562198586124246
#>     Attrib V29    -0.5029702985140959
#>     Attrib V3    -0.04922971633195919
#>     Attrib V30    0.07670773334776504
#>     Attrib V31    -0.7784537248898312
#>     Attrib V32    0.13079996684464062
#>     Attrib V33    0.6276636785880834
#>     Attrib V34    -0.16669254563619432
#>     Attrib V35    -0.4913972418543133
#>     Attrib V36    -0.8099674821395326
#>     Attrib V37    -0.24649668460835414
#>     Attrib V38    0.9012520029891401
#>     Attrib V39    0.35173619549113005
#>     Attrib V4    0.4185715948582903
#>     Attrib V40    -0.3461927522029813
#>     Attrib V41    0.03293656774494216
#>     Attrib V42    0.326914320037367
#>     Attrib V43    0.24746906380434655
#>     Attrib V44    0.4043425502045761
#>     Attrib V45    0.2607134551736209
#>     Attrib V46    0.1638618472367702
#>     Attrib V47    -0.3735070058603744
#>     Attrib V48    -0.19827803530569285
#>     Attrib V49    0.08598260682372923
#>     Attrib V5    0.20860572319550005
#>     Attrib V50    -0.6743113607573229
#>     Attrib V51    -0.1714491918496897
#>     Attrib V52    0.04675084421050373
#>     Attrib V53    0.3656097653354605
#>     Attrib V54    0.4699319080486733
#>     Attrib V55    -0.20863028735977626
#>     Attrib V56    0.6633453087781938
#>     Attrib V57    0.20247693924188107
#>     Attrib V58    0.5383904748165014
#>     Attrib V59    0.6039280285805515
#>     Attrib V6    0.08300602955329624
#>     Attrib V60    0.3320681412592263
#>     Attrib V7    0.27269188687255624
#>     Attrib V8    -0.1504764082536527
#>     Attrib V9    0.4998968268882924
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5946984690126783
#>     Attrib V1    -0.09903027839643484
#>     Attrib V10    1.0369547362317035
#>     Attrib V11    0.9943994368636694
#>     Attrib V12    0.5542255962050553
#>     Attrib V13    0.26974053915517154
#>     Attrib V14    -0.23674194792108905
#>     Attrib V15    -0.26915920476236793
#>     Attrib V16    -0.6219716922801362
#>     Attrib V17    -0.8361006399780472
#>     Attrib V18    -0.21416928106101316
#>     Attrib V19    -0.0836075090270273
#>     Attrib V2    0.16098853353829018
#>     Attrib V20    -0.5822148509006635
#>     Attrib V21    -0.025023554796634817
#>     Attrib V22    0.46607371424484223
#>     Attrib V23    0.44595007416372806
#>     Attrib V24    0.34864748163430825
#>     Attrib V25    -0.08316357924920995
#>     Attrib V26    0.5150872685375742
#>     Attrib V27    0.8181998098763806
#>     Attrib V28    1.092461940715837
#>     Attrib V29    1.0093197801021752
#>     Attrib V3    -0.03772906673047031
#>     Attrib V30    0.3874661317182061
#>     Attrib V31    -0.5311465170493046
#>     Attrib V32    -0.05195080273354138
#>     Attrib V33    -0.11682514740864204
#>     Attrib V34    -0.17282749519605223
#>     Attrib V35    0.1780016745170898
#>     Attrib V36    -0.8575020151560205
#>     Attrib V37    0.005315670593960641
#>     Attrib V38    -0.12319004884036559
#>     Attrib V39    0.03643484630005477
#>     Attrib V4    0.05636687616125937
#>     Attrib V40    0.1252503243338352
#>     Attrib V41    1.0123849134368548
#>     Attrib V42    -0.24235353484320643
#>     Attrib V43    0.004326895311723774
#>     Attrib V44    0.5722380284428513
#>     Attrib V45    0.3581507583794965
#>     Attrib V46    0.7358946134229039
#>     Attrib V47    0.37362463724970607
#>     Attrib V48    0.4720070749862511
#>     Attrib V49    0.6968500450038998
#>     Attrib V5    0.42916122097532644
#>     Attrib V50    -0.841074629033124
#>     Attrib V51    0.3751981092087316
#>     Attrib V52    0.4867120650909676
#>     Attrib V53    0.5972701516067184
#>     Attrib V54    -0.08244810408567604
#>     Attrib V55    -0.5637182068757768
#>     Attrib V56    -0.14817585887865656
#>     Attrib V57    -0.2949617116059003
#>     Attrib V58    0.30513551621101137
#>     Attrib V59    0.36893559577016605
#>     Attrib V6    0.5396892593637829
#>     Attrib V60    0.4719751248613499
#>     Attrib V7    -0.22411564613156335
#>     Attrib V8    -0.6178102009973561
#>     Attrib V9    1.031565536323984
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.363721260097508
#>     Attrib V1    -0.0705455514099746
#>     Attrib V10    0.3019127142354894
#>     Attrib V11    0.13518438224267748
#>     Attrib V12    -0.20805960911316868
#>     Attrib V13    -0.03363691462569855
#>     Attrib V14    -0.17079075927780174
#>     Attrib V15    -0.12537854848431323
#>     Attrib V16    -0.14206066729763725
#>     Attrib V17    -0.12804408236734133
#>     Attrib V18    0.008086378145003853
#>     Attrib V19    0.185098809806343
#>     Attrib V2    0.06993554974028203
#>     Attrib V20    0.1998789380919479
#>     Attrib V21    0.5805074962595733
#>     Attrib V22    0.6749861336246532
#>     Attrib V23    0.30995239988301526
#>     Attrib V24    0.14879848746100882
#>     Attrib V25    -0.3346163646813521
#>     Attrib V26    -0.18907179718667383
#>     Attrib V27    -0.12620358967058887
#>     Attrib V28    0.18536059774203947
#>     Attrib V29    0.17102110915239369
#>     Attrib V3    -0.1327889900423107
#>     Attrib V30    0.3220629492269797
#>     Attrib V31    -0.7067311162893076
#>     Attrib V32    -0.08680206124912264
#>     Attrib V33    0.25407603925052286
#>     Attrib V34    -0.18807866163391188
#>     Attrib V35    -0.14708908307482368
#>     Attrib V36    -0.3926174135094685
#>     Attrib V37    0.16924011986255943
#>     Attrib V38    0.7276459046739527
#>     Attrib V39    0.2533346363919265
#>     Attrib V4    0.287971819320619
#>     Attrib V40    -0.25554640176120114
#>     Attrib V41    0.18833154830173157
#>     Attrib V42    -0.0618556921708836
#>     Attrib V43    0.2235905835976944
#>     Attrib V44    0.7822893923017926
#>     Attrib V45    0.4707070845084614
#>     Attrib V46    0.4196723534961607
#>     Attrib V47    -0.02276351248438904
#>     Attrib V48    0.0969361927233837
#>     Attrib V49    0.3804162095616933
#>     Attrib V5    0.2559935988681133
#>     Attrib V50    -0.7522615030854645
#>     Attrib V51    -0.030235133080303955
#>     Attrib V52    0.13213881389885565
#>     Attrib V53    0.26924358910213925
#>     Attrib V54    0.1371775457746758
#>     Attrib V55    -0.5456202348539797
#>     Attrib V56    0.26866600345399183
#>     Attrib V57    0.0034100488826082414
#>     Attrib V58    0.14677659182499958
#>     Attrib V59    0.3724503525289785
#>     Attrib V6    0.12413869463339548
#>     Attrib V60    0.26919817279248687
#>     Attrib V7    -0.05023414720846843
#>     Attrib V8    -0.409780359548704
#>     Attrib V9    0.5771100448565143
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.6410908759186811
#>     Attrib V1    -0.13645251893309135
#>     Attrib V10    1.3170402358579625
#>     Attrib V11    1.2416011554363386
#>     Attrib V12    0.8807831236314121
#>     Attrib V13    0.45588385449589086
#>     Attrib V14    -0.3332675419659051
#>     Attrib V15    -0.3052660399988428
#>     Attrib V16    -0.7366894853923648
#>     Attrib V17    -0.9361472787189774
#>     Attrib V18    -0.23026828879524078
#>     Attrib V19    -0.16261015963922962
#>     Attrib V2    0.19244188270564122
#>     Attrib V20    -0.8052612908984891
#>     Attrib V21    -0.14089679299512162
#>     Attrib V22    0.499985481302113
#>     Attrib V23    0.5214223861844189
#>     Attrib V24    0.49673176550301124
#>     Attrib V25    0.08981221616560477
#>     Attrib V26    0.7623905154950436
#>     Attrib V27    1.0834465445399126
#>     Attrib V28    1.229358010538514
#>     Attrib V29    1.0005623611660457
#>     Attrib V3    -0.060503767775096674
#>     Attrib V30    0.3349697155565853
#>     Attrib V31    -0.5748610009859378
#>     Attrib V32    -0.041279951291372546
#>     Attrib V33    -0.2535313134679035
#>     Attrib V34    -0.11380235123547301
#>     Attrib V35    0.3447296880134418
#>     Attrib V36    -0.8968351393396808
#>     Attrib V37    0.0029169661550159896
#>     Attrib V38    -0.234560437702974
#>     Attrib V39    0.16865180035367705
#>     Attrib V4    -0.010794419950841747
#>     Attrib V40    0.26431673166769604
#>     Attrib V41    1.234663384015522
#>     Attrib V42    -0.43638176321761984
#>     Attrib V43    -0.00521245825408514
#>     Attrib V44    0.5852302566949924
#>     Attrib V45    0.37751657506506725
#>     Attrib V46    0.7873253683468153
#>     Attrib V47    0.4327378043015057
#>     Attrib V48    0.560189253899608
#>     Attrib V49    0.8724716727318443
#>     Attrib V5    0.427731938974469
#>     Attrib V50    -0.8967332447012444
#>     Attrib V51    0.5280561550201384
#>     Attrib V52    0.5558622494378204
#>     Attrib V53    0.8204404941122098
#>     Attrib V54    -0.15511045229725834
#>     Attrib V55    -0.5344159278064567
#>     Attrib V56    -0.16265137095236598
#>     Attrib V57    -0.41058538297334884
#>     Attrib V58    0.3973617079214164
#>     Attrib V59    0.38117571804916733
#>     Attrib V6    0.612620767847643
#>     Attrib V60    0.4617601784331361
#>     Attrib V7    -0.31592034067193464
#>     Attrib V8    -0.6584152125734682
#>     Attrib V9    1.1110359248201693
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.4420302202584525
#>     Attrib V1    0.17933740409994584
#>     Attrib V10    -0.2094123220642004
#>     Attrib V11    -0.24047453987198172
#>     Attrib V12    -0.07688432867147783
#>     Attrib V13    -0.10215163679869685
#>     Attrib V14    0.16113277218950134
#>     Attrib V15    -0.012424243325808316
#>     Attrib V16    0.2353560348148803
#>     Attrib V17    0.2579977583611703
#>     Attrib V18    0.2404614504876452
#>     Attrib V19    0.11579309373674522
#>     Attrib V2    -0.022380791441115704
#>     Attrib V20    0.14605422705296547
#>     Attrib V21    -0.11252142241565352
#>     Attrib V22    -0.2647849426635463
#>     Attrib V23    -0.1573029013491004
#>     Attrib V24    -0.25369289124613914
#>     Attrib V25    0.28553252608358826
#>     Attrib V26    0.29024057333241093
#>     Attrib V27    0.1373547732014797
#>     Attrib V28    -0.1436462664518472
#>     Attrib V29    -0.07639864617501635
#>     Attrib V3    0.08657038675187136
#>     Attrib V30    -0.07511585971428403
#>     Attrib V31    0.5039982481999619
#>     Attrib V32    -0.18914788226385304
#>     Attrib V33    -0.2255476013010193
#>     Attrib V34    0.1425232054951031
#>     Attrib V35    0.28808381991304066
#>     Attrib V36    0.8219809062333526
#>     Attrib V37    0.24569345421878466
#>     Attrib V38    -0.19409875531671622
#>     Attrib V39    -0.0986206863414844
#>     Attrib V4    -0.06319560201884493
#>     Attrib V40    0.23204756938270066
#>     Attrib V41    -0.25875186570577224
#>     Attrib V42    -0.02148325949918294
#>     Attrib V43    -0.06607158154564005
#>     Attrib V44    -0.1961776679174522
#>     Attrib V45    -0.09205167233872917
#>     Attrib V46    -0.29163332455315344
#>     Attrib V47    0.09653582108923915
#>     Attrib V48    -0.050888193638658465
#>     Attrib V49    -0.28025501132494424
#>     Attrib V5    -0.10435608349369939
#>     Attrib V50    0.8417607990146941
#>     Attrib V51    -0.03167200605266552
#>     Attrib V52    -0.2113517904749552
#>     Attrib V53    -0.39869316365404384
#>     Attrib V54    -0.16725194287273668
#>     Attrib V55    0.21480369895691626
#>     Attrib V56    -0.1719942611547042
#>     Attrib V57    0.1402971740008035
#>     Attrib V58    -0.3218657441088317
#>     Attrib V59    -0.2746948343663508
#>     Attrib V6    -0.04938788449665185
#>     Attrib V60    -0.051349026983158554
#>     Attrib V7    0.12176975175273576
#>     Attrib V8    0.39057747412312743
#>     Attrib V9    -0.43853535977370617
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.09814337299621552
#>     Attrib V1    0.0010990924453585737
#>     Attrib V10    0.012687918599483008
#>     Attrib V11    -0.09586102264243439
#>     Attrib V12    -0.21558248674677272
#>     Attrib V13    -0.04225974361984557
#>     Attrib V14    0.08350315575699513
#>     Attrib V15    0.09935752688504053
#>     Attrib V16    0.1177414391816707
#>     Attrib V17    0.20436292058321845
#>     Attrib V18    0.1766447396888453
#>     Attrib V19    0.20798569722717222
#>     Attrib V2    0.02664428632475851
#>     Attrib V20    0.3930163794009445
#>     Attrib V21    0.489460096369272
#>     Attrib V22    0.3543098240536574
#>     Attrib V23    0.06510883849161199
#>     Attrib V24    -0.028777662002460947
#>     Attrib V25    -0.41190707619118233
#>     Attrib V26    -0.6038541716848355
#>     Attrib V27    -0.5329774888677385
#>     Attrib V28    -0.2693646188232808
#>     Attrib V29    -0.3378803181622888
#>     Attrib V3    -0.06078020321558393
#>     Attrib V30    0.07584126625748347
#>     Attrib V31    -0.5396167769562152
#>     Attrib V32    0.06342475181797468
#>     Attrib V33    0.3857733655849693
#>     Attrib V34    -0.07272152532773214
#>     Attrib V35    -0.26719986853314764
#>     Attrib V36    -0.4994638624495175
#>     Attrib V37    -0.17023279856985976
#>     Attrib V38    0.6369198389482799
#>     Attrib V39    0.22192585715679655
#>     Attrib V4    0.26886236919296336
#>     Attrib V40    -0.24499222191057793
#>     Attrib V41    -0.0704128179739174
#>     Attrib V42    0.12735177775014594
#>     Attrib V43    0.1510580713317537
#>     Attrib V44    0.3440444932658842
#>     Attrib V45    0.23741504257988766
#>     Attrib V46    0.11162774288569677
#>     Attrib V47    -0.18142004964760383
#>     Attrib V48    -0.055233729443643284
#>     Attrib V49    0.08518486208222394
#>     Attrib V5    0.1805025682021843
#>     Attrib V50    -0.47113842624311214
#>     Attrib V51    -0.017626430838661392
#>     Attrib V52    0.045750555886232384
#>     Attrib V53    0.2204193039497663
#>     Attrib V54    0.4044873376562802
#>     Attrib V55    -0.10767648950352372
#>     Attrib V56    0.4389486103689342
#>     Attrib V57    0.14354775181901178
#>     Attrib V58    0.38382608616520875
#>     Attrib V59    0.32363320786907296
#>     Attrib V6    -0.017594210387942046
#>     Attrib V60    0.18657949318749795
#>     Attrib V7    0.06503480410322969
#>     Attrib V8    -0.1215821271952492
#>     Attrib V9    0.3507148597247532
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.30085119763673507
#>     Attrib V1    -0.06190724403063043
#>     Attrib V10    0.08699039621351
#>     Attrib V11    -3.0899470929161827E-4
#>     Attrib V12    -0.3488058383900533
#>     Attrib V13    0.01902711796295029
#>     Attrib V14    0.10374693274460851
#>     Attrib V15    0.02796638935107786
#>     Attrib V16    0.05596158917440292
#>     Attrib V17    0.11467639399754526
#>     Attrib V18    0.16446730642874616
#>     Attrib V19    0.3317942188886994
#>     Attrib V2    0.05949153693482859
#>     Attrib V20    0.42120021870674546
#>     Attrib V21    0.6548044027693642
#>     Attrib V22    0.6053458247934004
#>     Attrib V23    0.14979918912980597
#>     Attrib V24    -0.06918870889983744
#>     Attrib V25    -0.6117955794261535
#>     Attrib V26    -0.6379128171092722
#>     Attrib V27    -0.4917665913840858
#>     Attrib V28    -0.18366882441092297
#>     Attrib V29    -0.20746344361484198
#>     Attrib V3    -0.14730347754688988
#>     Attrib V30    0.16015428944905657
#>     Attrib V31    -0.8095139582023344
#>     Attrib V32    0.03922258449982886
#>     Attrib V33    0.5324111027297772
#>     Attrib V34    -0.16666684383917366
#>     Attrib V35    -0.39611249891664974
#>     Attrib V36    -0.6538734650449143
#>     Attrib V37    -0.13863758283218325
#>     Attrib V38    0.8770255859673688
#>     Attrib V39    0.28826676045867394
#>     Attrib V4    0.38891597273766954
#>     Attrib V40    -0.31117578732856965
#>     Attrib V41    0.0045508784924201415
#>     Attrib V42    0.16333020553222574
#>     Attrib V43    0.3022990169116656
#>     Attrib V44    0.5268690720175725
#>     Attrib V45    0.3551025648100147
#>     Attrib V46    0.2665165583766965
#>     Attrib V47    -0.2697193296747922
#>     Attrib V48    -0.04558994755856951
#>     Attrib V49    0.18553350708286143
#>     Attrib V5    0.2144110474268575
#>     Attrib V50    -0.7715026524402651
#>     Attrib V51    -0.10596632342547087
#>     Attrib V52    0.14376093390356148
#>     Attrib V53    0.27503552084560695
#>     Attrib V54    0.3762990580031173
#>     Attrib V55    -0.3501987321813058
#>     Attrib V56    0.5312242187407193
#>     Attrib V57    0.1019504405918325
#>     Attrib V58    0.4531001380502814
#>     Attrib V59    0.4695351210481428
#>     Attrib V6    -0.022986135254062817
#>     Attrib V60    0.1987666458913438
#>     Attrib V7    0.13243847485010393
#>     Attrib V8    -0.22164029120243625
#>     Attrib V9    0.5286910389577404
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.022886950085993125
#>     Attrib V1    0.029728370591696227
#>     Attrib V10    -0.04109512734479001
#>     Attrib V11    -0.13735887559069077
#>     Attrib V12    -0.2274883545707434
#>     Attrib V13    0.0757121344497544
#>     Attrib V14    0.12595238028651787
#>     Attrib V15    0.10775374880412704
#>     Attrib V16    0.08978529540326916
#>     Attrib V17    0.1760440640587249
#>     Attrib V18    0.15889326563642162
#>     Attrib V19    0.17610934600045025
#>     Attrib V2    0.04997557326240523
#>     Attrib V20    0.32463393978708904
#>     Attrib V21    0.44734548540397423
#>     Attrib V22    0.2932340936122978
#>     Attrib V23    0.06795106945360503
#>     Attrib V24    -0.010480251178514234
#>     Attrib V25    -0.33218369890051164
#>     Attrib V26    -0.5566368164632917
#>     Attrib V27    -0.474901109068116
#>     Attrib V28    -0.34144390498955546
#>     Attrib V29    -0.33120051448820975
#>     Attrib V3    0.049226074479245256
#>     Attrib V30    0.007928531114270845
#>     Attrib V31    -0.48393640304292573
#>     Attrib V32    0.09701949235542301
#>     Attrib V33    0.3576154058384394
#>     Attrib V34    -0.03597586249643263
#>     Attrib V35    -0.26700773443300263
#>     Attrib V36    -0.4541186682105218
#>     Attrib V37    -0.1051830847725309
#>     Attrib V38    0.5297076778183998
#>     Attrib V39    0.2660890500543082
#>     Attrib V4    0.285273659244272
#>     Attrib V40    -0.1510527251377515
#>     Attrib V41    -0.005548857073732676
#>     Attrib V42    0.11258020058016661
#>     Attrib V43    0.06704960618209746
#>     Attrib V44    0.19289784699677337
#>     Attrib V45    0.07796659992772896
#>     Attrib V46    0.10475054542567835
#>     Attrib V47    -0.1724880382971324
#>     Attrib V48    -0.10724467374049025
#>     Attrib V49    0.08189680113398587
#>     Attrib V5    0.1744789912462898
#>     Attrib V50    -0.4442530382731327
#>     Attrib V51    -0.08600268683457422
#>     Attrib V52    0.02759250271499007
#>     Attrib V53    0.23184159348587824
#>     Attrib V54    0.32856054071485946
#>     Attrib V55    -0.08392590521430772
#>     Attrib V56    0.3978310274420218
#>     Attrib V57    0.14587529687887008
#>     Attrib V58    0.321056348650121
#>     Attrib V59    0.4092294444548484
#>     Attrib V6    0.013065338153137365
#>     Attrib V60    0.28319838741635095
#>     Attrib V7    0.16909149606554946
#>     Attrib V8    -0.17489542106197323
#>     Attrib V9    0.2686861582483318
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.1578950712731198
#>     Attrib V1    0.06715925089323393
#>     Attrib V10    0.03025299295354108
#>     Attrib V11    -0.03988272928510922
#>     Attrib V12    -0.2048098312559364
#>     Attrib V13    -0.02485531754926161
#>     Attrib V14    0.06588080400467143
#>     Attrib V15    0.1499916648638248
#>     Attrib V16    0.07947217508080792
#>     Attrib V17    0.13889828802595255
#>     Attrib V18    0.12978998545745246
#>     Attrib V19    0.15558972957343425
#>     Attrib V2    0.05742848824763111
#>     Attrib V20    0.27996402465561476
#>     Attrib V21    0.43852856001401397
#>     Attrib V22    0.33531633349138296
#>     Attrib V23    0.06400321769666888
#>     Attrib V24    -0.04045002758775696
#>     Attrib V25    -0.39661321784382775
#>     Attrib V26    -0.5017629886020771
#>     Attrib V27    -0.5147840214563045
#>     Attrib V28    -0.3164498269517556
#>     Attrib V29    -0.35166593732658924
#>     Attrib V3    -0.10862934395795747
#>     Attrib V30    0.084240322619514
#>     Attrib V31    -0.464974362560722
#>     Attrib V32    0.08954179891436605
#>     Attrib V33    0.4120254526161592
#>     Attrib V34    -0.13127072230003553
#>     Attrib V35    -0.28589951096621363
#>     Attrib V36    -0.55737163631719
#>     Attrib V37    -0.15193665995463698
#>     Attrib V38    0.5236845548697409
#>     Attrib V39    0.22120403275931008
#>     Attrib V4    0.2528890152421845
#>     Attrib V40    -0.2231785573877005
#>     Attrib V41    -0.029247902026110467
#>     Attrib V42    0.06932058408093657
#>     Attrib V43    0.11995498963753902
#>     Attrib V44    0.3386983996070394
#>     Attrib V45    0.10349668102237172
#>     Attrib V46    0.11356414109431077
#>     Attrib V47    -0.24132627394962783
#>     Attrib V48    -0.03276453015675495
#>     Attrib V49    0.144434725576375
#>     Attrib V5    0.09862795667390475
#>     Attrib V50    -0.5082510645405975
#>     Attrib V51    -0.12058054169010245
#>     Attrib V52    0.04127880657956884
#>     Attrib V53    0.23783671515898308
#>     Attrib V54    0.4210164348893271
#>     Attrib V55    -0.053764431326357734
#>     Attrib V56    0.43311896090671215
#>     Attrib V57    0.15803544382023574
#>     Attrib V58    0.4010712457748966
#>     Attrib V59    0.409728122196147
#>     Attrib V6    -0.03583276983390313
#>     Attrib V60    0.26830978767589847
#>     Attrib V7    0.10442896686710007
#>     Attrib V8    -0.19432597224493217
#>     Attrib V9    0.32761388020281956
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.7364117180812282
#>     Attrib V1    0.26292520998901664
#>     Attrib V10    -1.158657795508806
#>     Attrib V11    -0.93598965323745
#>     Attrib V12    -0.3793195869037411
#>     Attrib V13    -0.30142641364187805
#>     Attrib V14    0.17297695749046785
#>     Attrib V15    0.22845111424746933
#>     Attrib V16    0.6409326925213029
#>     Attrib V17    0.7707346456812649
#>     Attrib V18    0.06418045047383755
#>     Attrib V19    -0.05463731927279445
#>     Attrib V2    -0.07885092247261652
#>     Attrib V20    0.4942691045636917
#>     Attrib V21    -0.1857082821976252
#>     Attrib V22    -0.7245830000361289
#>     Attrib V23    -0.5686453332809458
#>     Attrib V24    -0.3708189759344605
#>     Attrib V25    0.25280857698073494
#>     Attrib V26    -0.2474943500357165
#>     Attrib V27    -0.6663460384529879
#>     Attrib V28    -1.055320770446831
#>     Attrib V29    -1.037462689661893
#>     Attrib V3    0.1876031589980886
#>     Attrib V30    -0.4970322324063574
#>     Attrib V31    0.7322388628286043
#>     Attrib V32    -0.012520720460575046
#>     Attrib V33    -0.024161963857692766
#>     Attrib V34    0.3138114685298952
#>     Attrib V35    0.06138489039988082
#>     Attrib V36    1.1538046688263592
#>     Attrib V37    0.1891487661687436
#>     Attrib V38    -0.025378563898691513
#>     Attrib V39    -0.13446452748737647
#>     Attrib V4    -0.06497898050022369
#>     Attrib V40    -0.04416902211311287
#>     Attrib V41    -1.1165583573676152
#>     Attrib V42    0.11480584349705532
#>     Attrib V43    -0.118103932538314
#>     Attrib V44    -0.7581803428535252
#>     Attrib V45    -0.3430894816067284
#>     Attrib V46    -0.7216674296888667
#>     Attrib V47    -0.28990292122251093
#>     Attrib V48    -0.480655171081092
#>     Attrib V49    -0.8896301227969439
#>     Attrib V5    -0.45703311037542793
#>     Attrib V50    1.1455022058950723
#>     Attrib V51    -0.30542828489951224
#>     Attrib V52    -0.49453782248766537
#>     Attrib V53    -0.7018841134033631
#>     Attrib V54    0.12349198451321569
#>     Attrib V55    0.7314457551854927
#>     Attrib V56    0.13536102699727656
#>     Attrib V57    0.38493174244001777
#>     Attrib V58    -0.42716569200059723
#>     Attrib V59    -0.39680582736149433
#>     Attrib V6    -0.7154585420966085
#>     Attrib V60    -0.3319073762193495
#>     Attrib V7    0.14816611862378648
#>     Attrib V8    0.6516753075714373
#>     Attrib V9    -1.1529309468285598
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.2188213255795306
#>     Attrib V1    0.05143951282547492
#>     Attrib V10    0.015890918569038966
#>     Attrib V11    -0.03706532148832614
#>     Attrib V12    0.0035139040816677923
#>     Attrib V13    0.031750092379528076
#>     Attrib V14    -0.0029736511518853237
#>     Attrib V15    0.00683493498129636
#>     Attrib V16    0.13020388084203
#>     Attrib V17    0.15632321962409898
#>     Attrib V18    0.14076055980227464
#>     Attrib V19    0.03066175100988653
#>     Attrib V2    0.020550892830235496
#>     Attrib V20    -0.05915939301568988
#>     Attrib V21    -0.13817582065960293
#>     Attrib V22    -0.11553094697722381
#>     Attrib V23    -0.1178416501588817
#>     Attrib V24    -0.11344680804393507
#>     Attrib V25    0.005244135868447444
#>     Attrib V26    -0.03317459748873524
#>     Attrib V27    -0.06006750275769624
#>     Attrib V28    -0.05230582493016771
#>     Attrib V29    -0.02278692789193848
#>     Attrib V3    0.11762242439247679
#>     Attrib V30    -0.023089430528899144
#>     Attrib V31    0.13292959854588918
#>     Attrib V32    0.08030230833999254
#>     Attrib V33    0.010451991350451975
#>     Attrib V34    0.13867671895472042
#>     Attrib V35    0.14219609566867425
#>     Attrib V36    0.2318336413328863
#>     Attrib V37    0.18396448135051435
#>     Attrib V38    0.007599323765536497
#>     Attrib V39    0.039700025832770144
#>     Attrib V4    0.06011866232424424
#>     Attrib V40    0.12616052188786103
#>     Attrib V41    0.07242885477842409
#>     Attrib V42    0.10254437750511011
#>     Attrib V43    0.013631997630051301
#>     Attrib V44    -0.08050803793731827
#>     Attrib V45    -0.01548404127313173
#>     Attrib V46    0.02144514112538826
#>     Attrib V47    0.08817742110881613
#>     Attrib V48    -8.819910171197055E-4
#>     Attrib V49    -0.05476146101837489
#>     Attrib V5    0.05319257509133449
#>     Attrib V50    0.27025343470341223
#>     Attrib V51    0.11583611565079112
#>     Attrib V52    0.05466090667051744
#>     Attrib V53    -0.015578824039249546
#>     Attrib V54    -0.06408812718869912
#>     Attrib V55    0.08661873553245072
#>     Attrib V56    0.02390947409292893
#>     Attrib V57    0.08898481702265089
#>     Attrib V58    0.03272129220653691
#>     Attrib V59    -0.08776663381969967
#>     Attrib V6    0.010481100744241236
#>     Attrib V60    0.05535084060231788
#>     Attrib V7    0.0015551383531482077
#>     Attrib V8    0.07628244130129484
#>     Attrib V9    0.008119564047604545
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.1871822646412657
#>     Attrib V1    0.058956273959691656
#>     Attrib V10    0.029662491468105314
#>     Attrib V11    -0.15134244461070517
#>     Attrib V12    -0.3983488481920856
#>     Attrib V13    -0.06676876636580169
#>     Attrib V14    0.09734729518196397
#>     Attrib V15    0.2099652328962206
#>     Attrib V16    0.1784803757500258
#>     Attrib V17    0.21982645258450223
#>     Attrib V18    0.15039973130786197
#>     Attrib V19    0.2762453284007823
#>     Attrib V2    0.12309299074107564
#>     Attrib V20    0.4460597735134259
#>     Attrib V21    0.6322681511886351
#>     Attrib V22    0.5290231440923724
#>     Attrib V23    0.08381494821547882
#>     Attrib V24    -2.2471945720118697E-4
#>     Attrib V25    -0.604147717967124
#>     Attrib V26    -0.7808956623975627
#>     Attrib V27    -0.696746895240457
#>     Attrib V28    -0.39330468435514504
#>     Attrib V29    -0.47376349677757623
#>     Attrib V3    -0.044619885895595124
#>     Attrib V30    0.07638516736749537
#>     Attrib V31    -0.5954450322305832
#>     Attrib V32    0.06968404477227255
#>     Attrib V33    0.5476304382007261
#>     Attrib V34    -0.1497826246426012
#>     Attrib V35    -0.36128612826306866
#>     Attrib V36    -0.6534766022405698
#>     Attrib V37    -0.20221661094104437
#>     Attrib V38    0.8117648001103915
#>     Attrib V39    0.3168941147559103
#>     Attrib V4    0.35936205891682305
#>     Attrib V40    -0.3345949413025863
#>     Attrib V41    -0.03272553881514251
#>     Attrib V42    0.17417225154464738
#>     Attrib V43    0.2502019435428138
#>     Attrib V44    0.412789763613943
#>     Attrib V45    0.2582454285965308
#>     Attrib V46    0.10829802332478482
#>     Attrib V47    -0.3352741586148202
#>     Attrib V48    -0.09029361720314014
#>     Attrib V49    0.08078738658825753
#>     Attrib V5    0.18110061188969054
#>     Attrib V50    -0.6016978654739454
#>     Attrib V51    -0.11274112656057739
#>     Attrib V52    0.05801386873942348
#>     Attrib V53    0.26252163960972286
#>     Attrib V54    0.41377652420896943
#>     Attrib V55    -0.10518013902990687
#>     Attrib V56    0.5884527689431132
#>     Attrib V57    0.20538518754243204
#>     Attrib V58    0.43166731315458273
#>     Attrib V59    0.43023354067088543
#>     Attrib V6    0.013925142448196563
#>     Attrib V60    0.2541639563436038
#>     Attrib V7    0.13546837565590036
#>     Attrib V8    -0.14523611737188022
#>     Attrib V9    0.4002447941970976
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.21721234762768943
#>     Attrib V1    0.05465388312286776
#>     Attrib V10    0.03817874354730548
#>     Attrib V11    -0.00737477022640115
#>     Attrib V12    -0.01565892903794054
#>     Attrib V13    0.00537640299549905
#>     Attrib V14    0.05235867411263915
#>     Attrib V15    0.014820233073966082
#>     Attrib V16    0.04421079502252312
#>     Attrib V17    0.009238318687471271
#>     Attrib V18    0.08149686294055056
#>     Attrib V19    -0.03161980012455802
#>     Attrib V2    0.10106956065448537
#>     Attrib V20    0.01079977379435481
#>     Attrib V21    -0.0011552711064362353
#>     Attrib V22    -0.05368710716270753
#>     Attrib V23    -0.058427275958902666
#>     Attrib V24    -0.10353610064575641
#>     Attrib V25    -0.033859595962019276
#>     Attrib V26    -0.034279048206417556
#>     Attrib V27    -0.04173538051095849
#>     Attrib V28    -0.05867881438508383
#>     Attrib V29    -0.0664528486504265
#>     Attrib V3    0.15862109524031054
#>     Attrib V30    -0.05949706775759794
#>     Attrib V31    -0.001238549092868736
#>     Attrib V32    0.002889768985656341
#>     Attrib V33    0.019295856619893872
#>     Attrib V34    0.07697176725597224
#>     Attrib V35    0.04863671790892074
#>     Attrib V36    0.11957166348601422
#>     Attrib V37    0.055889382227825316
#>     Attrib V38    0.040320624482184
#>     Attrib V39    0.09797069170929114
#>     Attrib V4    0.08241122883176018
#>     Attrib V40    0.03697193414713648
#>     Attrib V41    -0.03219111322818146
#>     Attrib V42    -0.001132484274048965
#>     Attrib V43    0.004297288551710133
#>     Attrib V44    0.019909544932202015
#>     Attrib V45    -0.027249606928307572
#>     Attrib V46    0.03272983112799381
#>     Attrib V47    0.1002993215258217
#>     Attrib V48    0.027901401985121914
#>     Attrib V49    0.03421212206355125
#>     Attrib V5    0.1013662986311189
#>     Attrib V50    0.04799647671730919
#>     Attrib V51    0.12497023858964075
#>     Attrib V52    0.055344693711380503
#>     Attrib V53    0.02705080470343103
#>     Attrib V54    0.0015225396369906096
#>     Attrib V55    0.10571023809285543
#>     Attrib V56    0.11194035683384555
#>     Attrib V57    0.04769958016015157
#>     Attrib V58    0.06717333242102508
#>     Attrib V59    0.07199980486305385
#>     Attrib V6    -0.03995135510209965
#>     Attrib V60    0.15068253037321006
#>     Attrib V7    0.030499309373350145
#>     Attrib V8    0.06455276966221668
#>     Attrib V9    0.04954606273359357
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.5400351364619083
#>     Attrib V1    -0.19097781126030833
#>     Attrib V10    0.5977348774970181
#>     Attrib V11    0.49373169920788146
#>     Attrib V12    0.29431359382425276
#>     Attrib V13    0.24512731895478673
#>     Attrib V14    -0.04119324077865798
#>     Attrib V15    -0.059516430864510174
#>     Attrib V16    -0.45634959390633795
#>     Attrib V17    -0.5402643378808486
#>     Attrib V18    -0.09388342029832042
#>     Attrib V19    -0.021601471414923187
#>     Attrib V2    0.04884031767109596
#>     Attrib V20    -0.36031473469793807
#>     Attrib V21    0.05560319037720517
#>     Attrib V22    0.4041113565357437
#>     Attrib V23    0.2169119802175599
#>     Attrib V24    0.21501763829513926
#>     Attrib V25    -0.12172842692901063
#>     Attrib V26    0.20442241713362716
#>     Attrib V27    0.4181068650273374
#>     Attrib V28    0.7203242193650012
#>     Attrib V29    0.6672631013608562
#>     Attrib V3    -0.17475543372021143
#>     Attrib V30    0.34892286100273745
#>     Attrib V31    -0.5038853879563727
#>     Attrib V32    -0.03502998523940913
#>     Attrib V33    0.10491911180009662
#>     Attrib V34    -0.18187871913997047
#>     Attrib V35    -0.024576049476421297
#>     Attrib V36    -0.8276880781395133
#>     Attrib V37    -0.19227956906170363
#>     Attrib V38    0.03486793848941839
#>     Attrib V39    0.04501702988791764
#>     Attrib V4    0.1190500085710943
#>     Attrib V40    -0.022225407909382353
#>     Attrib V41    0.597137950538653
#>     Attrib V42    -0.06743825526179771
#>     Attrib V43    0.09567455678926969
#>     Attrib V44    0.5053059980318549
#>     Attrib V45    0.3273475085012768
#>     Attrib V46    0.4915238379685336
#>     Attrib V47    0.07536899567959275
#>     Attrib V48    0.2774278302380314
#>     Attrib V49    0.5601312492210659
#>     Attrib V5    0.26571840201833713
#>     Attrib V50    -0.8360745533568374
#>     Attrib V51    0.11902313516049218
#>     Attrib V52    0.3165917254257325
#>     Attrib V53    0.6196590982512914
#>     Attrib V54    -0.001845495360690475
#>     Attrib V55    -0.3717170327376442
#>     Attrib V56    0.02175683844038527
#>     Attrib V57    -0.24062080835061217
#>     Attrib V58    0.4244244085832429
#>     Attrib V59    0.3638912303919118
#>     Attrib V6    0.33987577282516523
#>     Attrib V60    0.2807152648507721
#>     Attrib V7    -0.0970356914824881
#>     Attrib V8    -0.49160377168792757
#>     Attrib V9    0.7166228257204136
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.2774141798482753
#>     Attrib V1    -0.07439237581449161
#>     Attrib V10    0.1814489698692271
#>     Attrib V11    -0.012032943496563787
#>     Attrib V12    -0.3093985676616397
#>     Attrib V13    0.004455190066383437
#>     Attrib V14    0.019714409720376944
#>     Attrib V15    -0.12002800314223817
#>     Attrib V16    -0.1869169109448919
#>     Attrib V17    -0.004999916258632146
#>     Attrib V18    0.14069678539756186
#>     Attrib V19    0.2777089458087896
#>     Attrib V2    0.019104553549372582
#>     Attrib V20    0.43012507636348773
#>     Attrib V21    0.7706774724893561
#>     Attrib V22    0.8105204950669884
#>     Attrib V23    0.3167970985912797
#>     Attrib V24    -0.0028410411805731613
#>     Attrib V25    -0.5263520998454884
#>     Attrib V26    -0.38516505239660204
#>     Attrib V27    -0.2534398658092566
#>     Attrib V28    0.06485543848460913
#>     Attrib V29    0.04740387092575773
#>     Attrib V3    -0.19254854510861108
#>     Attrib V30    0.2923173165386823
#>     Attrib V31    -0.9344091278139758
#>     Attrib V32    -0.20057826850325086
#>     Attrib V33    0.3278760057900318
#>     Attrib V34    -0.2499590980721584
#>     Attrib V35    -0.1956038441981151
#>     Attrib V36    -0.2731756418489693
#>     Attrib V37    0.32677827332956305
#>     Attrib V38    1.1261724556526689
#>     Attrib V39    0.40725265476274575
#>     Attrib V4    0.3454653465147008
#>     Attrib V40    -0.38657081621981704
#>     Attrib V41    -0.008253007481601592
#>     Attrib V42    0.032404376820860774
#>     Attrib V43    0.3733437832992562
#>     Attrib V44    0.9498520261673824
#>     Attrib V45    0.6066387284321847
#>     Attrib V46    0.38972429222770333
#>     Attrib V47    -0.1687311653845617
#>     Attrib V48    0.029954403218692544
#>     Attrib V49    0.36131552904055597
#>     Attrib V5    0.2973416420941202
#>     Attrib V50    -0.8148019039795429
#>     Attrib V51    -0.014681206722659254
#>     Attrib V52    0.15136391280122508
#>     Attrib V53    0.07983007884846868
#>     Attrib V54    0.25785904519420366
#>     Attrib V55    -0.5178711827706316
#>     Attrib V56    0.46582084814479474
#>     Attrib V57    -0.06283849875850302
#>     Attrib V58    0.2966855249690986
#>     Attrib V59    0.38877664909879817
#>     Attrib V6    0.04217861907664055
#>     Attrib V60    0.20768004368311813
#>     Attrib V7    0.06024321278763191
#>     Attrib V8    -0.4530513529099003
#>     Attrib V9    0.5555862533317438
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.5878965596585758
#>     Attrib V1    0.21325463042781453
#>     Attrib V10    -0.5055104132693244
#>     Attrib V11    -0.4849986590576607
#>     Attrib V12    -0.131270563515393
#>     Attrib V13    -0.20231663357845076
#>     Attrib V14    0.24325652052749216
#>     Attrib V15    0.13996514091146492
#>     Attrib V16    0.382177922123197
#>     Attrib V17    0.4006250773312863
#>     Attrib V18    0.17052121211620028
#>     Attrib V19    0.03663300784230389
#>     Attrib V2    -0.05205913674852953
#>     Attrib V20    0.1500696828417711
#>     Attrib V21    -0.27319108921040414
#>     Attrib V22    -0.625762868260623
#>     Attrib V23    -0.3371156587315201
#>     Attrib V24    -0.2600483293920225
#>     Attrib V25    0.42727144465463035
#>     Attrib V26    0.3150752140757053
#>     Attrib V27    0.1404071479827968
#>     Attrib V28    -0.2709859581086892
#>     Attrib V29    -0.1661600486639776
#>     Attrib V3    0.1801793913611697
#>     Attrib V30    -0.3282180809302077
#>     Attrib V31    0.7640689018817718
#>     Attrib V32    -0.29105222270372677
#>     Attrib V33    -0.485485033154241
#>     Attrib V34    0.21867760679933182
#>     Attrib V35    0.3676154061465997
#>     Attrib V36    1.1098379485993437
#>     Attrib V37    0.2165670333325411
#>     Attrib V38    -0.48259346841383943
#>     Attrib V39    -0.1369438528059168
#>     Attrib V4    -0.09137723180275298
#>     Attrib V40    0.32582054300982316
#>     Attrib V41    -0.496730377252396
#>     Attrib V42    -0.1209381824145878
#>     Attrib V43    -0.12485936074584028
#>     Attrib V44    -0.48745593290115297
#>     Attrib V45    -0.2860073072497444
#>     Attrib V46    -0.438601026320502
#>     Attrib V47    0.11327147128866723
#>     Attrib V48    -0.06920029415688458
#>     Attrib V49    -0.5077310699609411
#>     Attrib V5    -0.19861945599656536
#>     Attrib V50    1.243002541646377
#>     Attrib V51    -0.030870691325109285
#>     Attrib V52    -0.2538301037957693
#>     Attrib V53    -0.45037003118802443
#>     Attrib V54    -0.1565928484763538
#>     Attrib V55    0.6141278256134665
#>     Attrib V56    -0.28788096539413033
#>     Attrib V57    0.34862508398360137
#>     Attrib V58    -0.3685353287150521
#>     Attrib V59    -0.27952681525898887
#>     Attrib V6    -0.2255388338477907
#>     Attrib V60    -0.012660359225519882
#>     Attrib V7    0.15759999890511878
#>     Attrib V8    0.5629859717930221
#>     Attrib V9    -0.7516184046324642
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.10553405740854063
#>     Attrib V1    0.08501980137935371
#>     Attrib V10    0.0589436491130506
#>     Attrib V11    0.018367814633969935
#>     Attrib V12    -0.004398302865930061
#>     Attrib V13    0.024140613426939118
#>     Attrib V14    0.10277439017512878
#>     Attrib V15    0.03313238045535525
#>     Attrib V16    0.088185449566496
#>     Attrib V17    0.04920345367411183
#>     Attrib V18    0.04672748283937374
#>     Attrib V19    0.019775311044270813
#>     Attrib V2    0.10806322773239059
#>     Attrib V20    0.04726660421856686
#>     Attrib V21    0.05074979189281279
#>     Attrib V22    0.002094919351062504
#>     Attrib V23    -0.08697439747448817
#>     Attrib V24    -0.0047234406807510725
#>     Attrib V25    -0.10617539365655092
#>     Attrib V26    -0.16514443045410013
#>     Attrib V27    -0.1611473795039543
#>     Attrib V28    -0.1496943330812967
#>     Attrib V29    -0.10419974307602926
#>     Attrib V3    0.05827416323108603
#>     Attrib V30    -0.039069599900872776
#>     Attrib V31    -0.05356840931887092
#>     Attrib V32    0.017402707607032778
#>     Attrib V33    0.04429442701294224
#>     Attrib V34    -0.01720393769815988
#>     Attrib V35    -0.021057212222834402
#>     Attrib V36    -0.1210289550416765
#>     Attrib V37    -0.025895843797446316
#>     Attrib V38    0.09615516084198929
#>     Attrib V39    0.047580951830287224
#>     Attrib V4    0.16836335039888112
#>     Attrib V40    -0.014628866779069875
#>     Attrib V41    -0.0562320347131987
#>     Attrib V42    -0.03829824170134549
#>     Attrib V43    0.06285844860432939
#>     Attrib V44    0.023130983208170305
#>     Attrib V45    -0.017137414830660242
#>     Attrib V46    0.09174842057117154
#>     Attrib V47    -0.03394727166908477
#>     Attrib V48    0.04358941212206144
#>     Attrib V49    0.03817932576153804
#>     Attrib V5    0.13905582587008056
#>     Attrib V50    -0.07257377439848288
#>     Attrib V51    0.03703035262420786
#>     Attrib V52    0.07973151856119613
#>     Attrib V53    0.09533184642259299
#>     Attrib V54    0.15835658022074142
#>     Attrib V55    0.09897538257098584
#>     Attrib V56    0.2067754390810645
#>     Attrib V57    0.1229932177277181
#>     Attrib V58    0.2140159166408971
#>     Attrib V59    0.16507283397347566
#>     Attrib V6    0.0020641909038857905
#>     Attrib V60    0.20794866364345535
#>     Attrib V7    0.029062927405563065
#>     Attrib V8    -0.09226563495293948
#>     Attrib V9    0.1336409995673317
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.05814607303001987
#>     Attrib V1    0.06322585865161343
#>     Attrib V10    -0.07035235237354132
#>     Attrib V11    -0.06758954377364366
#>     Attrib V12    -0.0975568995040271
#>     Attrib V13    0.05418289873812505
#>     Attrib V14    0.1233382702269074
#>     Attrib V15    0.09868484152849333
#>     Attrib V16    0.07036582730798663
#>     Attrib V17    0.17883204462037924
#>     Attrib V18    0.14475582796866676
#>     Attrib V19    0.166298541300664
#>     Attrib V2    0.05396113902765128
#>     Attrib V20    0.21545452848800406
#>     Attrib V21    0.3092680861361309
#>     Attrib V22    0.24417726426626193
#>     Attrib V23    0.03009995651112579
#>     Attrib V24    -0.04470395765183115
#>     Attrib V25    -0.2726651314893816
#>     Attrib V26    -0.3792231261991194
#>     Attrib V27    -0.44421548965996666
#>     Attrib V28    -0.3296299257831006
#>     Attrib V29    -0.35412585255642165
#>     Attrib V3    0.04264745199159572
#>     Attrib V30    -0.03876135787466069
#>     Attrib V31    -0.35358763926511644
#>     Attrib V32    0.05170914831808935
#>     Attrib V33    0.2645380210473237
#>     Attrib V34    -0.08241291406738804
#>     Attrib V35    -0.14126741650688998
#>     Attrib V36    -0.3301174666201417
#>     Attrib V37    -0.04084575872830115
#>     Attrib V38    0.416238003099717
#>     Attrib V39    0.17034179293231166
#>     Attrib V4    0.2865927641822092
#>     Attrib V40    -0.17888726420369574
#>     Attrib V41    -0.03676204050604695
#>     Attrib V42    0.04041408393219224
#>     Attrib V43    0.11958924834694812
#>     Attrib V44    0.15227899207325624
#>     Attrib V45    0.12283141977456466
#>     Attrib V46    0.07180569131011484
#>     Attrib V47    -0.11811316570374655
#>     Attrib V48    -0.09984309488444656
#>     Attrib V49    0.04027572138881234
#>     Attrib V5    0.144196847093349
#>     Attrib V50    -0.3448300332123443
#>     Attrib V51    -0.0604475501555755
#>     Attrib V52    0.10721318578844792
#>     Attrib V53    0.2369257873181746
#>     Attrib V54    0.3219539644286811
#>     Attrib V55    0.01803547797022828
#>     Attrib V56    0.3912616383105252
#>     Attrib V57    0.1034559956509693
#>     Attrib V58    0.2769734991945713
#>     Attrib V59    0.3651537934570492
#>     Attrib V6    -0.025504370895796224
#>     Attrib V60    0.2102496922076697
#>     Attrib V7    0.08317464537879683
#>     Attrib V8    -0.15474834144121813
#>     Attrib V9    0.19726899144995483
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.5575800238475253
#>     Attrib V1    0.15041225722953971
#>     Attrib V10    -0.4767059910278886
#>     Attrib V11    -0.416044267708321
#>     Attrib V12    -0.0918687502861696
#>     Attrib V13    -0.17745439869492735
#>     Attrib V14    0.23798225766154907
#>     Attrib V15    0.16431777267537026
#>     Attrib V16    0.33960188832378035
#>     Attrib V17    0.41169708515945275
#>     Attrib V18    0.14625179131408522
#>     Attrib V19    0.04302180475614722
#>     Attrib V2    -0.061515024137283686
#>     Attrib V20    0.11497995779724897
#>     Attrib V21    -0.33187725951680225
#>     Attrib V22    -0.6206418621217533
#>     Attrib V23    -0.2809473997884017
#>     Attrib V24    -0.26879485436942724
#>     Attrib V25    0.39260552082429473
#>     Attrib V26    0.29393177778481105
#>     Attrib V27    0.11700507953236404
#>     Attrib V28    -0.20990103605928848
#>     Attrib V29    -0.17729081637310765
#>     Attrib V3    0.17510491556251184
#>     Attrib V30    -0.3310956355369131
#>     Attrib V31    0.6711033525383028
#>     Attrib V32    -0.18394654851818854
#>     Attrib V33    -0.4732563033421617
#>     Attrib V34    0.1986188915372906
#>     Attrib V35    0.3347777548188178
#>     Attrib V36    1.0289776354796967
#>     Attrib V37    0.09301763658766235
#>     Attrib V38    -0.4835843264724285
#>     Attrib V39    -0.1789196376162325
#>     Attrib V4    -0.10006343934102398
#>     Attrib V40    0.29820901462530924
#>     Attrib V41    -0.4585056740193602
#>     Attrib V42    -0.09452644045507538
#>     Attrib V43    -0.10086348310805934
#>     Attrib V44    -0.5192887722604799
#>     Attrib V45    -0.3219949868814705
#>     Attrib V46    -0.4115862979384673
#>     Attrib V47    0.1408881132352447
#>     Attrib V48    -0.08829926750365268
#>     Attrib V49    -0.49030922176844804
#>     Attrib V5    -0.2455937484505901
#>     Attrib V50    1.1652136764540413
#>     Attrib V51    -0.018727027495588904
#>     Attrib V52    -0.18461237369758576
#>     Attrib V53    -0.428740655180327
#>     Attrib V54    -0.148899264839279
#>     Attrib V55    0.6279896340998442
#>     Attrib V56    -0.2224269346415969
#>     Attrib V57    0.30882065781530976
#>     Attrib V58    -0.2869263378297285
#>     Attrib V59    -0.2917447253131264
#>     Attrib V6    -0.17826162606494142
#>     Attrib V60    -0.09964962567928272
#>     Attrib V7    0.07895091473605804
#>     Attrib V8    0.5703475889518923
#>     Attrib V9    -0.6723403612907761
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.8762070476626989
#>     Attrib V1    -0.2754312705885105
#>     Attrib V10    1.634809393618879
#>     Attrib V11    1.8021697954701557
#>     Attrib V12    1.2836433601140083
#>     Attrib V13    0.6928337734506639
#>     Attrib V14    -0.34800361465009066
#>     Attrib V15    -0.38978542751008755
#>     Attrib V16    -0.8874230816903341
#>     Attrib V17    -1.0372397283970518
#>     Attrib V18    -0.11121077839730897
#>     Attrib V19    -0.027682784959465256
#>     Attrib V2    0.3871392435851488
#>     Attrib V20    -0.9215782462451243
#>     Attrib V21    -0.2162554197772023
#>     Attrib V22    0.7590124074833496
#>     Attrib V23    0.9995683274984184
#>     Attrib V24    0.7332447722438236
#>     Attrib V25    0.08604678961411408
#>     Attrib V26    1.0848723932293665
#>     Attrib V27    1.4470811726023234
#>     Attrib V28    1.5758072912274226
#>     Attrib V29    1.2882760349683817
#>     Attrib V3    0.042908421664953865
#>     Attrib V30    0.3437814027255284
#>     Attrib V31    -0.7142960531966571
#>     Attrib V32    -0.08368908020404431
#>     Attrib V33    -0.548666008920258
#>     Attrib V34    -0.13169726019793962
#>     Attrib V35    0.594988678922426
#>     Attrib V36    -1.2475229418951423
#>     Attrib V37    -0.039865145932279314
#>     Attrib V38    -0.5038662997240024
#>     Attrib V39    0.20070848797728735
#>     Attrib V4    -0.16454385127098634
#>     Attrib V40    0.5017489831950163
#>     Attrib V41    1.7733874873672513
#>     Attrib V42    -0.5542300869822027
#>     Attrib V43    -0.0931192259097746
#>     Attrib V44    0.8381143055131879
#>     Attrib V45    0.5448172244606528
#>     Attrib V46    0.9548878477370453
#>     Attrib V47    0.5237748737332527
#>     Attrib V48    0.715487152285287
#>     Attrib V49    1.257210513124537
#>     Attrib V5    0.46609204184349984
#>     Attrib V50    -1.0177310972680302
#>     Attrib V51    0.7668449014740465
#>     Attrib V52    0.817702601480036
#>     Attrib V53    1.178156379437631
#>     Attrib V54    -0.2714099045554099
#>     Attrib V55    -0.4962068015093919
#>     Attrib V56    -0.2571160873805933
#>     Attrib V57    -0.6183039081742222
#>     Attrib V58    0.6348727654891652
#>     Attrib V59    0.15961853558636044
#>     Attrib V6    0.7097549573126155
#>     Attrib V60    0.19448907133995302
#>     Attrib V7    -0.6124362533071879
#>     Attrib V8    -0.7939843075024242
#>     Attrib V9    1.4625697757239227
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.2322763622206037
#>     Attrib V1    0.06376851115072968
#>     Attrib V10    -0.034694523313120555
#>     Attrib V11    -0.08326209812178897
#>     Attrib V12    0.022719536921524362
#>     Attrib V13    -0.02530975674497772
#>     Attrib V14    0.06701725162275408
#>     Attrib V15    0.003658948523882861
#>     Attrib V16    0.09167657627615176
#>     Attrib V17    0.15993207545693852
#>     Attrib V18    0.08261133094126838
#>     Attrib V19    0.0732897219735568
#>     Attrib V2    0.05426669265695159
#>     Attrib V20    -0.004983543328172768
#>     Attrib V21    -0.09744668041470007
#>     Attrib V22    -0.11288243356191574
#>     Attrib V23    -0.09156338563809352
#>     Attrib V24    -0.1619522102421764
#>     Attrib V25    0.025577414493973636
#>     Attrib V26    -0.003256717189564974
#>     Attrib V27    0.0021733104265817976
#>     Attrib V28    -0.04133583541561097
#>     Attrib V29    0.00835668744532184
#>     Attrib V3    0.04994910898869107
#>     Attrib V30    0.005956473976448329
#>     Attrib V31    0.1805175804353127
#>     Attrib V32    0.036410915463287674
#>     Attrib V33    0.029347521472202737
#>     Attrib V34    0.09504029205615706
#>     Attrib V35    0.20329801407219675
#>     Attrib V36    0.32855625108609715
#>     Attrib V37    0.18908813115702106
#>     Attrib V38    -0.06644467592803187
#>     Attrib V39    0.019166655664330963
#>     Attrib V4    0.055725706961686466
#>     Attrib V40    0.14956108313831662
#>     Attrib V41    0.01933328045949622
#>     Attrib V42    0.0826555144012144
#>     Attrib V43    0.024184078606930778
#>     Attrib V44    -0.06465115453785099
#>     Attrib V45    -0.05892923825455508
#>     Attrib V46    -0.06940402233202371
#>     Attrib V47    0.043967993282027926
#>     Attrib V48    0.027439560168946293
#>     Attrib V49    -0.08408947632712273
#>     Attrib V5    -0.02055332034312946
#>     Attrib V50    0.29285072255348715
#>     Attrib V51    0.020374139954837566
#>     Attrib V52    -0.03011551835368714
#>     Attrib V53    -0.11627537010560586
#>     Attrib V54    -0.06842154398050641
#>     Attrib V55    0.07332368795019845
#>     Attrib V56    0.008473113368758193
#>     Attrib V57    0.09613550431103166
#>     Attrib V58    -0.03974209491813195
#>     Attrib V59    -0.06227606125595969
#>     Attrib V6    0.023816345741665936
#>     Attrib V60    0.07381141910868567
#>     Attrib V7    -0.007815036419375
#>     Attrib V8    0.15169290849083927
#>     Attrib V9    -0.08955972721438403
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.3808928712051245
#>     Attrib V1    -0.02520583359910001
#>     Attrib V10    0.27657339612937193
#>     Attrib V11    0.11271173415996727
#>     Attrib V12    -0.2066048251752001
#>     Attrib V13    0.02938623075362835
#>     Attrib V14    -0.1082447051682195
#>     Attrib V15    -0.10122105811023321
#>     Attrib V16    -0.16468335799172953
#>     Attrib V17    -0.07852517716873542
#>     Attrib V18    0.15282094401997887
#>     Attrib V19    0.18811499570015722
#>     Attrib V2    0.015400831295986975
#>     Attrib V20    0.21435206860179795
#>     Attrib V21    0.5827113905192117
#>     Attrib V22    0.6441082458550947
#>     Attrib V23    0.1973735551489493
#>     Attrib V24    0.05313053670690595
#>     Attrib V25    -0.40582936343186155
#>     Attrib V26    -0.2049345927219046
#>     Attrib V27    -0.19421672926023323
#>     Attrib V28    0.04506490422059282
#>     Attrib V29    0.038469905565385175
#>     Attrib V3    -0.18943482135086565
#>     Attrib V30    0.27791876275824123
#>     Attrib V31    -0.7233783138067711
#>     Attrib V32    -0.06242883988181905
#>     Attrib V33    0.2807359422938886
#>     Attrib V34    -0.18862396719048963
#>     Attrib V35    -0.19577965071788328
#>     Attrib V36    -0.46157279495432785
#>     Attrib V37    0.11918360646384658
#>     Attrib V38    0.7803493692024114
#>     Attrib V39    0.2988878580352864
#>     Attrib V4    0.26107752714189386
#>     Attrib V40    -0.35530041308594656
#>     Attrib V41    0.09223208932034535
#>     Attrib V42    0.026801829505366713
#>     Attrib V43    0.20516708280564736
#>     Attrib V44    0.7482722360234233
#>     Attrib V45    0.4915795406247344
#>     Attrib V46    0.3000637852230553
#>     Attrib V47    -0.17869091812199414
#>     Attrib V48    0.024038944201808236
#>     Attrib V49    0.28379055488602706
#>     Attrib V5    0.1839811246032924
#>     Attrib V50    -0.6974210099074647
#>     Attrib V51    -0.04104072355632848
#>     Attrib V52    0.11979340352253155
#>     Attrib V53    0.24346914626196126
#>     Attrib V54    0.2274859013758315
#>     Attrib V55    -0.4317673651412482
#>     Attrib V56    0.29911242952402
#>     Attrib V57    -0.044289491331288476
#>     Attrib V58    0.29935959176906907
#>     Attrib V59    0.3665852902750916
#>     Attrib V6    0.08916224790753614
#>     Attrib V60    0.21790199163816218
#>     Attrib V7    -0.015668379391545414
#>     Attrib V8    -0.3537606360384123
#>     Attrib V9    0.5726773596679255
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.6904332585912915
#>     Attrib V1    0.24781619245003408
#>     Attrib V10    -1.2579167886680078
#>     Attrib V11    -1.09041745816182
#>     Attrib V12    -0.7315203247515023
#>     Attrib V13    -0.4013757573921247
#>     Attrib V14    0.21385072551279266
#>     Attrib V15    0.2866722459781865
#>     Attrib V16    0.7523773827986193
#>     Attrib V17    0.8353452441501349
#>     Attrib V18    0.1684212676851861
#>     Attrib V19    -0.032047666135875334
#>     Attrib V2    -0.1578497422495871
#>     Attrib V20    0.7036830770144645
#>     Attrib V21    0.08898159125599996
#>     Attrib V22    -0.6269895074142624
#>     Attrib V23    -0.6050106538848609
#>     Attrib V24    -0.46370580001685036
#>     Attrib V25    0.038562301670383686
#>     Attrib V26    -0.562770396890833
#>     Attrib V27    -0.9118292241173748
#>     Attrib V28    -1.23392452648964
#>     Attrib V29    -1.0721022030702925
#>     Attrib V3    0.10692905469417702
#>     Attrib V30    -0.3652753664312014
#>     Attrib V31    0.6477415290871371
#>     Attrib V32    0.06014083019623314
#>     Attrib V33    0.13658915475250671
#>     Attrib V34    0.23294405658188713
#>     Attrib V35    -0.15505670783122705
#>     Attrib V36    1.052571803615101
#>     Attrib V37    0.05444878168748254
#>     Attrib V38    0.1653040786886318
#>     Attrib V39    -0.12281558619477813
#>     Attrib V4    0.012462606627704348
#>     Attrib V40    -0.22504516948156217
#>     Attrib V41    -1.271814764112304
#>     Attrib V42    0.2439879235203858
#>     Attrib V43    -0.011128674832288878
#>     Attrib V44    -0.6787503770178998
#>     Attrib V45    -0.33275730097150874
#>     Attrib V46    -0.7623651692139218
#>     Attrib V47    -0.40371056443032227
#>     Attrib V48    -0.5604340220758004
#>     Attrib V49    -0.9399153013076764
#>     Attrib V5    -0.5268548600426292
#>     Attrib V50    1.0610275439701535
#>     Attrib V51    -0.4870765742500948
#>     Attrib V52    -0.4493836743218911
#>     Attrib V53    -0.8386208850491943
#>     Attrib V54    0.162233975106789
#>     Attrib V55    0.6635389935192534
#>     Attrib V56    0.1724894530760162
#>     Attrib V57    0.38588004746066074
#>     Attrib V58    -0.4195587069284326
#>     Attrib V59    -0.45219865522571706
#>     Attrib V6    -0.7246050884788527
#>     Attrib V60    -0.4937065452013937
#>     Attrib V7    0.27342587918096767
#>     Attrib V8    0.7294359620708768
#>     Attrib V9    -1.0660922890688695
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.2018806094795893
#>     Attrib V1    -0.02840046038709265
#>     Attrib V10    0.10823251883450669
#>     Attrib V11    0.03174809967384197
#>     Attrib V12    -0.24392017563978938
#>     Attrib V13    0.030970877907796224
#>     Attrib V14    0.13421291319993803
#>     Attrib V15    0.07141989831889847
#>     Attrib V16    0.03874416860500292
#>     Attrib V17    0.13209697560610303
#>     Attrib V18    0.19068366103968806
#>     Attrib V19    0.24239550286751735
#>     Attrib V2    0.02788242838238188
#>     Attrib V20    0.4506814495110804
#>     Attrib V21    0.652612188783231
#>     Attrib V22    0.5832142128814004
#>     Attrib V23    0.13237441458431018
#>     Attrib V24    0.03301574232941357
#>     Attrib V25    -0.4508883860594937
#>     Attrib V26    -0.5904237793944175
#>     Attrib V27    -0.5013811818379186
#>     Attrib V28    -0.20091889100871838
#>     Attrib V29    -0.17246292122248627
#>     Attrib V3    -0.0427029160232395
#>     Attrib V30    0.13691279008309593
#>     Attrib V31    -0.6367774414258995
#>     Attrib V32    0.09436500202944294
#>     Attrib V33    0.4449494581112304
#>     Attrib V34    -0.18466711062773877
#>     Attrib V35    -0.3355489675270222
#>     Attrib V36    -0.6029389209314225
#>     Attrib V37    -0.08071358053535291
#>     Attrib V38    0.7708419342589756
#>     Attrib V39    0.3008021478730897
#>     Attrib V4    0.2874971149741961
#>     Attrib V40    -0.2994458125816976
#>     Attrib V41    0.021445357224336877
#>     Attrib V42    0.12470836244574719
#>     Attrib V43    0.2618064637024368
#>     Attrib V44    0.4393048666239734
#>     Attrib V45    0.33612171249697603
#>     Attrib V46    0.19784385202700938
#>     Attrib V47    -0.19928164260501002
#>     Attrib V48    -0.07083683166494999
#>     Attrib V49    0.17181163074031458
#>     Attrib V5    0.1467339106825845
#>     Attrib V50    -0.6224194770556194
#>     Attrib V51    -0.054838504441636224
#>     Attrib V52    0.16327032604527975
#>     Attrib V53    0.24675914769860854
#>     Attrib V54    0.3241919961535913
#>     Attrib V55    -0.2496135990798868
#>     Attrib V56    0.4863474158517262
#>     Attrib V57    0.04438364481813774
#>     Attrib V58    0.3829845784622552
#>     Attrib V59    0.3513513662779081
#>     Attrib V6    0.009711328941723085
#>     Attrib V60    0.19035945263140572
#>     Attrib V7    0.10423094528590551
#>     Attrib V8    -0.19997559995098987
#>     Attrib V9    0.48571235180953687
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.2315842448074842
#>     Attrib V1    0.09132782967094745
#>     Attrib V10    -0.00935993810974318
#>     Attrib V11    -0.07833464306024544
#>     Attrib V12    0.013677431558172148
#>     Attrib V13    0.014621749283563497
#>     Attrib V14    0.04581646607800822
#>     Attrib V15    0.04997981412686077
#>     Attrib V16    0.1928152018852974
#>     Attrib V17    0.2973573495924184
#>     Attrib V18    0.22059712064450318
#>     Attrib V19    0.03857406605827773
#>     Attrib V2    0.035667496728288776
#>     Attrib V20    -0.01698451840357446
#>     Attrib V21    -0.09270253111863457
#>     Attrib V22    -0.11142715890933456
#>     Attrib V23    -0.12735313308941987
#>     Attrib V24    -0.23821378980806135
#>     Attrib V25    0.11866586989713829
#>     Attrib V26    0.13411891096516873
#>     Attrib V27    0.015886059506328695
#>     Attrib V28    -0.07142767481658233
#>     Attrib V29    -0.034952058821388104
#>     Attrib V3    0.04475415940717477
#>     Attrib V30    0.05603676547831028
#>     Attrib V31    0.37921302066958534
#>     Attrib V32    0.0477496749239753
#>     Attrib V33    -0.04793399916943081
#>     Attrib V34    0.10579539196473128
#>     Attrib V35    0.22165248692025655
#>     Attrib V36    0.4392393468497789
#>     Attrib V37    0.23510926234390775
#>     Attrib V38    -0.13901900684709395
#>     Attrib V39    0.01877758100575756
#>     Attrib V4    0.01937847026880035
#>     Attrib V40    0.23932711043365412
#>     Attrib V41    0.023584285571550345
#>     Attrib V42    0.1262638290275382
#>     Attrib V43    -0.007862462183333481
#>     Attrib V44    -0.13888362282657563
#>     Attrib V45    -0.07345512801273488
#>     Attrib V46    -0.10545712685444797
#>     Attrib V47    0.05710804612701836
#>     Attrib V48    0.01572059989902721
#>     Attrib V49    -0.13432863601900383
#>     Attrib V5    -0.06113400751490782
#>     Attrib V50    0.37895986928556913
#>     Attrib V51    -0.009395785562625056
#>     Attrib V52    -0.0837999159653219
#>     Attrib V53    -0.23446503764710325
#>     Attrib V54    -0.11028800980768003
#>     Attrib V55    0.053206737826409056
#>     Attrib V56    -0.026784675849004277
#>     Attrib V57    0.04767529617355061
#>     Attrib V58    -0.10787966761774999
#>     Attrib V59    -0.10720555774221874
#>     Attrib V6    -0.013693679477521363
#>     Attrib V60    0.01328009286059586
#>     Attrib V7    0.0060649291833553024
#>     Attrib V8    0.19176651776291637
#>     Attrib V9    -0.16314965373148863
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.07075898579696063
#>     Attrib V1    0.0753951378736328
#>     Attrib V10    -0.06107587994304186
#>     Attrib V11    -0.14133807043974445
#>     Attrib V12    -0.32320819744692464
#>     Attrib V13    0.019619470577052895
#>     Attrib V14    0.16002328607704905
#>     Attrib V15    0.17847543078113884
#>     Attrib V16    0.17290343435579195
#>     Attrib V17    0.22863682829853144
#>     Attrib V18    0.15659824915517087
#>     Attrib V19    0.18788670366622923
#>     Attrib V2    0.14384714166475912
#>     Attrib V20    0.40091597183172195
#>     Attrib V21    0.4548764783717726
#>     Attrib V22    0.3735522308327075
#>     Attrib V23    0.07602009131313267
#>     Attrib V24    0.008376270129817702
#>     Attrib V25    -0.4713361278244781
#>     Attrib V26    -0.6214675431742595
#>     Attrib V27    -0.6467104172089793
#>     Attrib V28    -0.45260419100338734
#>     Attrib V29    -0.48462219854093747
#>     Attrib V3    -0.03307866418940415
#>     Attrib V30    -0.04423201740644835
#>     Attrib V31    -0.459196941911381
#>     Attrib V32    0.0652181274315035
#>     Attrib V33    0.432491240627077
#>     Attrib V34    -0.057428476893008194
#>     Attrib V35    -0.2563326008078183
#>     Attrib V36    -0.4932383279010222
#>     Attrib V37    -0.10111132600981046
#>     Attrib V38    0.6627474119549881
#>     Attrib V39    0.21128951790714826
#>     Attrib V4    0.32464594788528645
#>     Attrib V40    -0.2226863705098478
#>     Attrib V41    -0.08029199617061783
#>     Attrib V42    0.1166331579900125
#>     Attrib V43    0.15908130849676
#>     Attrib V44    0.26293960064440924
#>     Attrib V45    0.11170158844225055
#>     Attrib V46    0.07974018152613863
#>     Attrib V47    -0.24284534565227137
#>     Attrib V48    -0.10777000421505056
#>     Attrib V49    0.05183167099026669
#>     Attrib V5    0.13671910371987075
#>     Attrib V50    -0.45471158606996664
#>     Attrib V51    -0.1084198192589233
#>     Attrib V52    0.05772538930573895
#>     Attrib V53    0.2719822678403316
#>     Attrib V54    0.4576142192820079
#>     Attrib V55    0.005788452799709087
#>     Attrib V56    0.4420071537179713
#>     Attrib V57    0.17422273593225399
#>     Attrib V58    0.3487921986297545
#>     Attrib V59    0.3940171835251429
#>     Attrib V6    -0.01394766518589086
#>     Attrib V60    0.24909901796347572
#>     Attrib V7    0.17154704553415084
#>     Attrib V8    -0.13907030206905305
#>     Attrib V9    0.31152064037545607
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.03593273621052419
#>     Attrib V1    0.07156925177254672
#>     Attrib V10    -0.06615654473923452
#>     Attrib V11    -0.10996706775537075
#>     Attrib V12    -0.20692590203595473
#>     Attrib V13    -0.026238396423264674
#>     Attrib V14    0.15584753365448004
#>     Attrib V15    0.1462105482213919
#>     Attrib V16    0.15733385504727565
#>     Attrib V17    0.13204263306457692
#>     Attrib V18    0.19467430733815916
#>     Attrib V19    0.1381508813271331
#>     Attrib V2    0.06597257785026091
#>     Attrib V20    0.2992812315318932
#>     Attrib V21    0.4319869204662925
#>     Attrib V22    0.2880903525616865
#>     Attrib V23    0.06060439364420231
#>     Attrib V24    -0.033246712267233594
#>     Attrib V25    -0.3927751602732466
#>     Attrib V26    -0.5162540221305271
#>     Attrib V27    -0.49007300382324404
#>     Attrib V28    -0.28322622022385097
#>     Attrib V29    -0.34041595744810366
#>     Attrib V3    0.04050798296902854
#>     Attrib V30    0.02320156789418893
#>     Attrib V31    -0.4301377584782601
#>     Attrib V32    0.06288149352088965
#>     Attrib V33    0.3497106057036994
#>     Attrib V34    -0.05590191688075583
#>     Attrib V35    -0.21639565421130466
#>     Attrib V36    -0.35611194025316534
#>     Attrib V37    -0.10482815840729935
#>     Attrib V38    0.4564717643694614
#>     Attrib V39    0.21926159455663768
#>     Attrib V4    0.2406761695628276
#>     Attrib V40    -0.1941057934896982
#>     Attrib V41    -0.07753687999645273
#>     Attrib V42    0.10826208246621082
#>     Attrib V43    0.0701840417148826
#>     Attrib V44    0.22017077906916874
#>     Attrib V45    0.1564850772450688
#>     Attrib V46    0.09444915483296684
#>     Attrib V47    -0.18336852294188874
#>     Attrib V48    -0.11476952912777708
#>     Attrib V49    0.08838537193653646
#>     Attrib V5    0.14701123648124453
#>     Attrib V50    -0.39577165478988807
#>     Attrib V51    -0.04705016674231823
#>     Attrib V52    0.07946352308465214
#>     Attrib V53    0.19882557702513615
#>     Attrib V54    0.3008645525026985
#>     Attrib V55    -0.04592445720352687
#>     Attrib V56    0.3726514042964848
#>     Attrib V57    0.1292885765040641
#>     Attrib V58    0.36422505292361357
#>     Attrib V59    0.295887092758242
#>     Attrib V6    -0.017199373503960932
#>     Attrib V60    0.1979421158351023
#>     Attrib V7    0.10472736475846157
#>     Attrib V8    -0.0927225897232847
#>     Attrib V9    0.27386660644349076
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
#>  0.1304348 
```
