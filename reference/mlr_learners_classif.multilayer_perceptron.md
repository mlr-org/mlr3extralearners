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
#>     Threshold    -0.5203789152974061
#>     Node 2    2.6769289040661737
#>     Node 3    1.6723144057695798
#>     Node 4    0.9202946888860583
#>     Node 5    -2.2425094100219987
#>     Node 6    1.9776119422961274
#>     Node 7    3.486975585605241
#>     Node 8    1.2998856181349359
#>     Node 9    3.264034831318985
#>     Node 10    -1.466947562341305
#>     Node 11    0.9934525125111405
#>     Node 12    1.6431002555321919
#>     Node 13    0.4719207566659121
#>     Node 14    1.487050652819954
#>     Node 15    -2.8276362057836475
#>     Node 16    0.2209504247016559
#>     Node 17    0.6556826588320498
#>     Node 18    -0.9698533535930054
#>     Node 19    2.0845128479064
#>     Node 20    1.7660389294464607
#>     Node 21    -2.2280800825482974
#>     Node 22    0.946089774548816
#>     Node 23    1.0422041632211327
#>     Node 24    -0.9207907118280274
#>     Node 25    5.329860680234015
#>     Node 26    0.09138610691596014
#>     Node 27    2.363171484165206
#>     Node 28    -2.1263622640797135
#>     Node 29    1.0822384069117166
#>     Node 30    -0.19360153349814313
#>     Node 31    1.3442882654994879
#>     Node 32    0.22456154230728723
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.5226539800977003
#>     Node 2    -2.70269980337827
#>     Node 3    -1.6656214997532999
#>     Node 4    -0.8840667812371171
#>     Node 5    2.250272793160991
#>     Node 6    -1.9558020880502098
#>     Node 7    -3.4700874976976737
#>     Node 8    -1.3166110613439768
#>     Node 9    -3.252208000184536
#>     Node 10    1.4043640907783355
#>     Node 11    -0.9553912943439703
#>     Node 12    -1.7224723371436093
#>     Node 13    -0.4177378610163025
#>     Node 14    -1.428058253121907
#>     Node 15    2.8161981293789173
#>     Node 16    -0.23746418582839102
#>     Node 17    -0.623076130189434
#>     Node 18    1.0062581576260952
#>     Node 19    -2.0696383973489727
#>     Node 20    -1.733257209698649
#>     Node 21    2.283507288308377
#>     Node 22    -1.0038052886543063
#>     Node 23    -1.0835020323752105
#>     Node 24    0.9032955660890575
#>     Node 25    -5.356558524990136
#>     Node 26    -0.1715631475370322
#>     Node 27    -2.383695340735127
#>     Node 28    2.0776987502769684
#>     Node 29    -1.1106482417640025
#>     Node 30    0.2718571365606966
#>     Node 31    -1.287672387240818
#>     Node 32    -0.2405403183770721
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.03822417288239896
#>     Attrib V1    0.8066925064194593
#>     Attrib V10    -0.14874770710716875
#>     Attrib V11    0.10596647404852454
#>     Attrib V12    0.3037627890196521
#>     Attrib V13    -0.06694957889945292
#>     Attrib V14    0.04034497775844638
#>     Attrib V15    0.008944409963591927
#>     Attrib V16    -0.14087435544651278
#>     Attrib V17    0.2049154716244713
#>     Attrib V18    0.28649517968592736
#>     Attrib V19    0.2751821123048483
#>     Attrib V2    0.26669030643582414
#>     Attrib V20    1.0613420573126056
#>     Attrib V21    1.0641706748057898
#>     Attrib V22    1.0874297701112892
#>     Attrib V23    1.039209586767291
#>     Attrib V24    0.6366488966063382
#>     Attrib V25    0.24924583180609913
#>     Attrib V26    -0.4822072550362908
#>     Attrib V27    -0.661504928018773
#>     Attrib V28    0.876383492670133
#>     Attrib V29    1.2362606248363386
#>     Attrib V3    -0.37068342533573995
#>     Attrib V30    0.3485899128058436
#>     Attrib V31    -2.0958019421524234
#>     Attrib V32    -0.2738233034307451
#>     Attrib V33    0.37599092744494417
#>     Attrib V34    -0.33697448196450125
#>     Attrib V35    -0.07832816619989554
#>     Attrib V36    0.27941176552196
#>     Attrib V37    0.058725885739073176
#>     Attrib V38    0.8214979318637904
#>     Attrib V39    0.6174553994096657
#>     Attrib V4    0.5260412852883947
#>     Attrib V40    -0.5014071111153643
#>     Attrib V41    0.04809219108014347
#>     Attrib V42    0.3727353568667468
#>     Attrib V43    0.25967161936227884
#>     Attrib V44    0.717252520982075
#>     Attrib V45    0.8505296360953107
#>     Attrib V46    0.5095317694622193
#>     Attrib V47    -0.04943398176201928
#>     Attrib V48    -0.044713586298705074
#>     Attrib V49    0.4043828635285801
#>     Attrib V5    -0.17951954778107637
#>     Attrib V50    -0.45095076345588986
#>     Attrib V51    0.5774295946679977
#>     Attrib V52    0.6840226822743356
#>     Attrib V53    0.4121041600581659
#>     Attrib V54    0.42664303111275587
#>     Attrib V55    -0.5403168214662931
#>     Attrib V56    -0.32631563621226745
#>     Attrib V57    -0.07608374319952368
#>     Attrib V58    -0.1367816317878836
#>     Attrib V59    0.5889981859796731
#>     Attrib V6    -0.279374852183725
#>     Attrib V60    0.8802589995305687
#>     Attrib V7    -0.2918110582656224
#>     Attrib V8    -0.37179534178582085
#>     Attrib V9    0.39802276400579595
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.34650478801218104
#>     Attrib V1    0.7007319586445143
#>     Attrib V10    -0.35490595978141176
#>     Attrib V11    -0.07624787975312561
#>     Attrib V12    0.19145125580405398
#>     Attrib V13    -0.1332915746652479
#>     Attrib V14    0.17813118038532788
#>     Attrib V15    0.325652719440456
#>     Attrib V16    -0.03672395707547622
#>     Attrib V17    0.0279355160024067
#>     Attrib V18    -0.02442432848499107
#>     Attrib V19    0.05411330041867965
#>     Attrib V2    0.21115864542620003
#>     Attrib V20    0.5431796817922433
#>     Attrib V21    0.5067825881186371
#>     Attrib V22    0.3784934325397395
#>     Attrib V23    0.29685538505551545
#>     Attrib V24    0.19111510482777694
#>     Attrib V25    -0.2713089354030422
#>     Attrib V26    -0.9525541939647324
#>     Attrib V27    -0.9809258248914718
#>     Attrib V28    0.0479513937577474
#>     Attrib V29    0.17609171725853595
#>     Attrib V3    -0.27938375598347576
#>     Attrib V30    -0.02235692221158304
#>     Attrib V31    -1.121367438097634
#>     Attrib V32    0.16725496685426372
#>     Attrib V33    0.5797526965289943
#>     Attrib V34    -0.18963913345069391
#>     Attrib V35    -0.46086855601671667
#>     Attrib V36    -0.5142453188485225
#>     Attrib V37    -0.6884247370030927
#>     Attrib V38    0.04999187016602714
#>     Attrib V39    0.3707472266378715
#>     Attrib V4    0.5358449395761297
#>     Attrib V40    -0.1719408596763979
#>     Attrib V41    0.052702005985995455
#>     Attrib V42    0.3033137786925793
#>     Attrib V43    -0.008792552998180167
#>     Attrib V44    0.0868510142102574
#>     Attrib V45    0.24420457785727462
#>     Attrib V46    0.1683842820275683
#>     Attrib V47    -0.1518991611858897
#>     Attrib V48    0.07491103497833917
#>     Attrib V49    0.372398957587007
#>     Attrib V5    -0.23287068200907207
#>     Attrib V50    -0.4001367239309807
#>     Attrib V51    0.2536368985522524
#>     Attrib V52    0.45287790846844284
#>     Attrib V53    0.26770709808052284
#>     Attrib V54    0.3188903956763138
#>     Attrib V55    -0.18041111918676594
#>     Attrib V56    -0.2619319554789946
#>     Attrib V57    0.239936403058382
#>     Attrib V58    0.37139880640518785
#>     Attrib V59    0.7189619025184377
#>     Attrib V6    -0.29005329922688544
#>     Attrib V60    0.619841635586593
#>     Attrib V7    -0.25003349142921155
#>     Attrib V8    -0.014259753451948633
#>     Attrib V9    0.15420559035268325
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.13543362821809327
#>     Attrib V1    0.36763224262432154
#>     Attrib V10    -0.12416533791080474
#>     Attrib V11    0.07426058694757358
#>     Attrib V12    0.17987655690421445
#>     Attrib V13    -0.06355499566250829
#>     Attrib V14    0.03737370891120649
#>     Attrib V15    0.06131340658999716
#>     Attrib V16    -0.14288549740854314
#>     Attrib V17    -0.0354288039825357
#>     Attrib V18    -0.07262479853533806
#>     Attrib V19    -0.10387364919417144
#>     Attrib V2    0.05713125660058248
#>     Attrib V20    0.17358705447631753
#>     Attrib V21    0.2121392927872186
#>     Attrib V22    0.033035859435666844
#>     Attrib V23    0.03942247102201819
#>     Attrib V24    0.04290131895567914
#>     Attrib V25    -0.14298771892592915
#>     Attrib V26    -0.28253842605378193
#>     Attrib V27    -0.25103665744930637
#>     Attrib V28    0.2876948888432382
#>     Attrib V29    0.2855176539199331
#>     Attrib V3    -0.10248811318480944
#>     Attrib V30    0.09469054051946482
#>     Attrib V31    -0.6113324719743846
#>     Attrib V32    0.02720587100181256
#>     Attrib V33    0.24883686088572543
#>     Attrib V34    -0.02383920148445495
#>     Attrib V35    -0.06138951408206036
#>     Attrib V36    -0.16448732258497953
#>     Attrib V37    -0.209158511960207
#>     Attrib V38    0.05731251506482453
#>     Attrib V39    0.18375273275165907
#>     Attrib V4    0.3077641050777789
#>     Attrib V40    -0.11607045302604745
#>     Attrib V41    0.0016177014847852146
#>     Attrib V42    0.08400782764801053
#>     Attrib V43    -0.02223862194801338
#>     Attrib V44    0.14941186051283573
#>     Attrib V45    0.3036297789436449
#>     Attrib V46    0.10549685152397151
#>     Attrib V47    -0.14542262321383334
#>     Attrib V48    0.07495506649326239
#>     Attrib V49    0.23929347018308667
#>     Attrib V5    -0.057109883033159524
#>     Attrib V50    -0.28977061360784934
#>     Attrib V51    0.2112525921078665
#>     Attrib V52    0.2862306767084308
#>     Attrib V53    0.21886816085281716
#>     Attrib V54    0.06552838387384038
#>     Attrib V55    -0.13945821480388296
#>     Attrib V56    -0.17522791748500405
#>     Attrib V57    0.1203193498462163
#>     Attrib V58    0.12032470382350886
#>     Attrib V59    0.3115444900849391
#>     Attrib V6    -0.1970450903350039
#>     Attrib V60    0.3480685746756315
#>     Attrib V7    -0.21633080662849996
#>     Attrib V8    -0.1891514476475761
#>     Attrib V9    0.19531025776593333
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.6913934757193168
#>     Attrib V1    -0.8216314845268272
#>     Attrib V10    0.48121241001908027
#>     Attrib V11    -0.0819853951748703
#>     Attrib V12    -0.5044212762808993
#>     Attrib V13    0.12527241596640754
#>     Attrib V14    -0.08391971774995412
#>     Attrib V15    -0.20394566417839524
#>     Attrib V16    0.04511145379510105
#>     Attrib V17    0.041855700703190606
#>     Attrib V18    0.008900193418780209
#>     Attrib V19    -0.10117842559397411
#>     Attrib V2    -0.19521620670537182
#>     Attrib V20    -0.6516740150560119
#>     Attrib V21    -0.5299472310723253
#>     Attrib V22    -0.41360147665806846
#>     Attrib V23    -0.4865002059335409
#>     Attrib V24    -0.5290429013340465
#>     Attrib V25    0.2324502449541349
#>     Attrib V26    1.0564401119170481
#>     Attrib V27    1.1061964334411662
#>     Attrib V28    -0.31744383567485823
#>     Attrib V29    -0.43830763055888466
#>     Attrib V3    0.5025238866016245
#>     Attrib V30    0.016034615859665934
#>     Attrib V31    1.29112764243339
#>     Attrib V32    -0.4341738044668225
#>     Attrib V33    -0.7680975325256356
#>     Attrib V34    0.14452893642061737
#>     Attrib V35    0.7588296576243582
#>     Attrib V36    0.8911059815090328
#>     Attrib V37    0.9770429631584949
#>     Attrib V38    -0.06413874437783469
#>     Attrib V39    -0.4597001862776332
#>     Attrib V4    -0.671959018170201
#>     Attrib V40    0.12699383207320197
#>     Attrib V41    -0.32254545837732657
#>     Attrib V42    -0.36511139056200076
#>     Attrib V43    0.06198360779022625
#>     Attrib V44    0.008210643837548994
#>     Attrib V45    -0.3038783245468923
#>     Attrib V46    -0.2869520343623703
#>     Attrib V47    0.15155566060266398
#>     Attrib V48    -0.29837906753422105
#>     Attrib V49    -0.8070961810209932
#>     Attrib V5    0.39558032218258776
#>     Attrib V50    0.7811114113808972
#>     Attrib V51    -0.4860894322876729
#>     Attrib V52    -0.722830828856515
#>     Attrib V53    -0.3698858305366775
#>     Attrib V54    -0.1916247490862114
#>     Attrib V55    0.33556833396509317
#>     Attrib V56    0.3878614970257507
#>     Attrib V57    -0.20582303103638624
#>     Attrib V58    -0.3932345564802489
#>     Attrib V59    -0.8500652652695161
#>     Attrib V6    0.399365546458303
#>     Attrib V60    -0.6769845535371453
#>     Attrib V7    0.4392798175685062
#>     Attrib V8    0.0289619051594942
#>     Attrib V9    -0.3256326246103691
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.21911683494997153
#>     Attrib V1    0.7194031567903909
#>     Attrib V10    -0.560152460328465
#>     Attrib V11    -0.3005373739210908
#>     Attrib V12    0.04618451696489574
#>     Attrib V13    -0.21932355543784116
#>     Attrib V14    0.2744721032783335
#>     Attrib V15    0.44158702801170135
#>     Attrib V16    0.13359767531429528
#>     Attrib V17    0.010528566518527521
#>     Attrib V18    0.014849537368920378
#>     Attrib V19    -0.04262781789326036
#>     Attrib V2    0.24719585465702362
#>     Attrib V20    0.5959075101901472
#>     Attrib V21    0.6887704287854112
#>     Attrib V22    0.41492127699863973
#>     Attrib V23    0.1984787076594407
#>     Attrib V24    0.048527816036021854
#>     Attrib V25    -0.4372365022935896
#>     Attrib V26    -1.1870803877437406
#>     Attrib V27    -1.1860449016033563
#>     Attrib V28    -0.28184845835587474
#>     Attrib V29    0.05447705246064575
#>     Attrib V3    -0.2228324920311197
#>     Attrib V30    -0.22502591898370528
#>     Attrib V31    -1.2653862904901532
#>     Attrib V32    -0.006370919430551656
#>     Attrib V33    0.5389181557492492
#>     Attrib V34    -0.24809428284149168
#>     Attrib V35    -0.5393179183169399
#>     Attrib V36    -0.5053909024594976
#>     Attrib V37    -0.6450419665326903
#>     Attrib V38    0.12405151152237487
#>     Attrib V39    0.3651627351591409
#>     Attrib V4    0.5833701357655362
#>     Attrib V40    -0.28853675852205457
#>     Attrib V41    -0.04305674528920297
#>     Attrib V42    0.3460003108081073
#>     Attrib V43    0.05668734138924066
#>     Attrib V44    0.06345748349503072
#>     Attrib V45    0.20493476435078223
#>     Attrib V46    0.1872503668430967
#>     Attrib V47    -0.21880884567412223
#>     Attrib V48    -0.05970541591933732
#>     Attrib V49    0.17283060248053367
#>     Attrib V5    -0.2111144211743876
#>     Attrib V50    -0.1717651481944099
#>     Attrib V51    0.19883081066743843
#>     Attrib V52    0.3507630840035055
#>     Attrib V53    0.42108043277712653
#>     Attrib V54    0.42610427225994635
#>     Attrib V55    -0.1608034715166001
#>     Attrib V56    -0.1558366376862014
#>     Attrib V57    0.41791374625564054
#>     Attrib V58    0.41772765202415457
#>     Attrib V59    0.8072330097660639
#>     Attrib V6    -0.15097984896798936
#>     Attrib V60    0.7615997394432588
#>     Attrib V7    -0.0437448360220775
#>     Attrib V8    -0.02933549327278697
#>     Attrib V9    0.045199861061502436
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.43081843546215876
#>     Attrib V1    0.427877414144976
#>     Attrib V10    0.6069653842233849
#>     Attrib V11    1.2645721584442613
#>     Attrib V12    1.3206783622895155
#>     Attrib V13    0.29017639691466146
#>     Attrib V14    -0.5145231963005686
#>     Attrib V15    -0.6421363242221465
#>     Attrib V16    -0.5573414708399144
#>     Attrib V17    -0.16845235365949177
#>     Attrib V18    0.12987985169385918
#>     Attrib V19    0.15837011372836843
#>     Attrib V2    -9.575598691501493E-4
#>     Attrib V20    0.042170797475413024
#>     Attrib V21    -0.1038730341747737
#>     Attrib V22    0.00969877442642983
#>     Attrib V23    0.8050999298665297
#>     Attrib V24    1.0375327093465925
#>     Attrib V25    0.8524368635969011
#>     Attrib V26    1.1958824214003358
#>     Attrib V27    1.0941158128480766
#>     Attrib V28    1.6494401749426324
#>     Attrib V29    1.0922514123903748
#>     Attrib V3    -0.09035893425848178
#>     Attrib V30    0.43926698732319786
#>     Attrib V31    -0.5696698989000359
#>     Attrib V32    0.3530832900943802
#>     Attrib V33    0.0337120214679824
#>     Attrib V34    0.24940932135108343
#>     Attrib V35    0.2999267394934299
#>     Attrib V36    -0.6203308415547922
#>     Attrib V37    -0.30881526797220166
#>     Attrib V38    -0.42728593529128106
#>     Attrib V39    -0.09288873219311101
#>     Attrib V4    0.3939643245853495
#>     Attrib V40    0.18589662470650434
#>     Attrib V41    1.1262919265243052
#>     Attrib V42    0.29261252003639077
#>     Attrib V43    0.07331256349120875
#>     Attrib V44    0.3940533367135255
#>     Attrib V45    0.5502194299196398
#>     Attrib V46    0.7021819988180901
#>     Attrib V47    0.44586309849513667
#>     Attrib V48    0.5862985430992241
#>     Attrib V49    1.135802772628871
#>     Attrib V5    0.4887382978659828
#>     Attrib V50    -0.8750213069030487
#>     Attrib V51    1.1140555306011548
#>     Attrib V52    1.1596230299177597
#>     Attrib V53    0.5790343490208798
#>     Attrib V54    0.1648056734646175
#>     Attrib V55    -0.3879005114273935
#>     Attrib V56    -0.5667648218526923
#>     Attrib V57    -0.5519738799561777
#>     Attrib V58    -0.23054836678308097
#>     Attrib V59    -0.02094770086243167
#>     Attrib V6    0.11973888754226518
#>     Attrib V60    0.4814811114333693
#>     Attrib V7    -0.6983550671744897
#>     Attrib V8    -0.4220007660252515
#>     Attrib V9    1.0164154006388564
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.23386462487281834
#>     Attrib V1    0.43078173648956103
#>     Attrib V10    0.11278412168790726
#>     Attrib V11    0.36309336330527164
#>     Attrib V12    0.38009907783542546
#>     Attrib V13    -0.08795532008009313
#>     Attrib V14    -0.2301682054273887
#>     Attrib V15    -0.2034787437540635
#>     Attrib V16    -0.2670017891437877
#>     Attrib V17    -0.1992016871465829
#>     Attrib V18    -0.2594777201930895
#>     Attrib V19    -0.2629638033122557
#>     Attrib V2    0.10925986760498141
#>     Attrib V20    -0.0758576916080944
#>     Attrib V21    -0.07588529125516381
#>     Attrib V22    -0.19309745869521916
#>     Attrib V23    -0.1139684434133402
#>     Attrib V24    0.09192904563286426
#>     Attrib V25    0.006298192483553038
#>     Attrib V26    0.11221839712009671
#>     Attrib V27    0.22886216995001474
#>     Attrib V28    0.6778381728780798
#>     Attrib V29    0.540468515058902
#>     Attrib V3    -0.08901082897867398
#>     Attrib V30    0.3076775495123182
#>     Attrib V31    -0.6354817469654335
#>     Attrib V32    0.023290798065822575
#>     Attrib V33    0.1285723290603551
#>     Attrib V34    0.03313574232672885
#>     Attrib V35    0.1921570704860515
#>     Attrib V36    0.08615116070034474
#>     Attrib V37    0.05922281575047835
#>     Attrib V38    0.21462200401874193
#>     Attrib V39    0.14096293735564636
#>     Attrib V4    0.3727627448172064
#>     Attrib V40    -0.15795484104969829
#>     Attrib V41    0.11120888505562979
#>     Attrib V42    -0.08748511922213571
#>     Attrib V43    0.0337832599724149
#>     Attrib V44    0.3441159738606827
#>     Attrib V45    0.48629088266540493
#>     Attrib V46    0.3349474361116935
#>     Attrib V47    -0.008704009656643799
#>     Attrib V48    0.2116342468242604
#>     Attrib V49    0.3770302539354427
#>     Attrib V5    -0.011326657622340185
#>     Attrib V50    -0.44076259055812234
#>     Attrib V51    0.2764974153548467
#>     Attrib V52    0.3785981282482115
#>     Attrib V53    0.2572989745280595
#>     Attrib V54    0.15437476162118052
#>     Attrib V55    -0.16030341985478794
#>     Attrib V56    -0.3270035217347053
#>     Attrib V57    0.10125278960867609
#>     Attrib V58    -0.04329182422019515
#>     Attrib V59    0.23121816754521454
#>     Attrib V6    -0.18477354343763547
#>     Attrib V60    0.4657950727127382
#>     Attrib V7    -0.30907863375313205
#>     Attrib V8    -0.3258793631218526
#>     Attrib V9    0.35677546316083797
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.29900845031919737
#>     Attrib V1    0.30936414146464675
#>     Attrib V10    0.5783721276030462
#>     Attrib V11    1.1410477236130714
#>     Attrib V12    1.3404526207187442
#>     Attrib V13    0.3796464356219933
#>     Attrib V14    -0.4878671529853207
#>     Attrib V15    -0.6402789214018595
#>     Attrib V16    -0.5182025768823232
#>     Attrib V17    -0.07416316402903288
#>     Attrib V18    0.1981289229962597
#>     Attrib V19    0.19021531232756592
#>     Attrib V2    -0.0480066923750775
#>     Attrib V20    -0.0022659386952842394
#>     Attrib V21    -0.14841564819436692
#>     Attrib V22    -0.03698221970932348
#>     Attrib V23    0.7055570792636532
#>     Attrib V24    1.0511056323800665
#>     Attrib V25    0.9833122371431885
#>     Attrib V26    1.3097718937837786
#>     Attrib V27    1.1860659179397053
#>     Attrib V28    1.5692108977729788
#>     Attrib V29    0.934089413157862
#>     Attrib V3    -0.10717975350879785
#>     Attrib V30    0.4228008286526729
#>     Attrib V31    -0.4396612987128327
#>     Attrib V32    0.4185328086016852
#>     Attrib V33    0.11906084133647858
#>     Attrib V34    0.3544598929948221
#>     Attrib V35    0.38068696418403714
#>     Attrib V36    -0.46251761957208914
#>     Attrib V37    -0.29616672796656124
#>     Attrib V38    -0.3180196279397323
#>     Attrib V39    0.03097555531641339
#>     Attrib V4    0.37250538305365366
#>     Attrib V40    0.15759442618484237
#>     Attrib V41    0.979455942258555
#>     Attrib V42    0.23072843188482697
#>     Attrib V43    0.10581963019259595
#>     Attrib V44    0.24444539458856288
#>     Attrib V45    0.3901426142644675
#>     Attrib V46    0.612605939353895
#>     Attrib V47    0.3949202560476535
#>     Attrib V48    0.5310330961294618
#>     Attrib V49    1.092341409406612
#>     Attrib V5    0.39723908362169597
#>     Attrib V50    -0.7976068958982169
#>     Attrib V51    1.09344130412742
#>     Attrib V52    1.1260390501798416
#>     Attrib V53    0.6765273633247273
#>     Attrib V54    0.12321785046378668
#>     Attrib V55    -0.2806631980021847
#>     Attrib V56    -0.46057796131086526
#>     Attrib V57    -0.5275339832459487
#>     Attrib V58    -0.1433668039455118
#>     Attrib V59    -0.006839457566146678
#>     Attrib V6    0.06678981919236272
#>     Attrib V60    0.43135510293199786
#>     Attrib V7    -0.6631037546843794
#>     Attrib V8    -0.3536723570392542
#>     Attrib V9    0.8385839343385605
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.551345444747674
#>     Attrib V1    -0.42906798899654225
#>     Attrib V10    0.10027900998563576
#>     Attrib V11    -0.32884722879030687
#>     Attrib V12    -0.5291646284589065
#>     Attrib V13    0.10324996725156108
#>     Attrib V14    0.25837115718891807
#>     Attrib V15    0.020180489686476625
#>     Attrib V16    0.2186590173606416
#>     Attrib V17    0.06391643828684995
#>     Attrib V18    0.1110550134404873
#>     Attrib V19    0.11874391093759316
#>     Attrib V2    -0.09309906219093947
#>     Attrib V20    -0.16023520163432076
#>     Attrib V21    -0.09646929675301988
#>     Attrib V22    -0.0700871573763735
#>     Attrib V23    -0.2163424819452626
#>     Attrib V24    -0.29506311679734926
#>     Attrib V25    0.14641655053492555
#>     Attrib V26    0.47707878185698843
#>     Attrib V27    0.35439369228735956
#>     Attrib V28    -0.5322505326081731
#>     Attrib V29    -0.5569697523734647
#>     Attrib V3    0.3225657035297308
#>     Attrib V30    -0.1362921576147233
#>     Attrib V31    0.7804212796812869
#>     Attrib V32    -0.3964342713878059
#>     Attrib V33    -0.36685717799703005
#>     Attrib V34    0.0728827860837684
#>     Attrib V35    0.33172300676959804
#>     Attrib V36    0.5819790966962021
#>     Attrib V37    0.469822456763526
#>     Attrib V38    0.058228896610269844
#>     Attrib V39    -0.16562075888210737
#>     Attrib V4    -0.39773173116893706
#>     Attrib V40    0.2064906635403876
#>     Attrib V41    -0.2498367314473904
#>     Attrib V42    -0.2194433887498931
#>     Attrib V43    0.01970411646681979
#>     Attrib V44    -0.058185142030300153
#>     Attrib V45    -0.25766700668568987
#>     Attrib V46    -0.33135898828888494
#>     Attrib V47    0.05500526772755641
#>     Attrib V48    -0.16746823072347536
#>     Attrib V49    -0.4901777921002269
#>     Attrib V5    0.14782199416789024
#>     Attrib V50    0.7498624433539519
#>     Attrib V51    -0.46451249199968025
#>     Attrib V52    -0.6123514340682781
#>     Attrib V53    -0.1717053836352804
#>     Attrib V54    0.024029920044295165
#>     Attrib V55    0.238981996178777
#>     Attrib V56    0.40888919213038577
#>     Attrib V57    0.060810915722017474
#>     Attrib V58    -0.17443945970226313
#>     Attrib V59    -0.31442982178602674
#>     Attrib V6    0.24932819673315906
#>     Attrib V60    -0.42542475760372406
#>     Attrib V7    0.38165665885213435
#>     Attrib V8    0.10508037701253416
#>     Attrib V9    -0.4161860777379026
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.12803425930008042
#>     Attrib V1    0.3282851968442752
#>     Attrib V10    -0.14198838601119176
#>     Attrib V11    0.08619438326979724
#>     Attrib V12    0.22518103759163138
#>     Attrib V13    -0.13949844496933683
#>     Attrib V14    -0.05353961851332089
#>     Attrib V15    -0.04239457698480209
#>     Attrib V16    -0.13730956903014116
#>     Attrib V17    0.016999743919319313
#>     Attrib V18    0.008318267691488444
#>     Attrib V19    -0.012924376576531685
#>     Attrib V2    0.02812141861005448
#>     Attrib V20    0.32028938970939985
#>     Attrib V21    0.24866957734368572
#>     Attrib V22    0.1536167618009061
#>     Attrib V23    0.15786500101451606
#>     Attrib V24    0.1426863774298762
#>     Attrib V25    -0.0017190900436904828
#>     Attrib V26    -0.26083907216877805
#>     Attrib V27    -0.21267340118279082
#>     Attrib V28    0.32926597245709055
#>     Attrib V29    0.33261109183626525
#>     Attrib V3    -0.2032971056529716
#>     Attrib V30    0.12060896353253588
#>     Attrib V31    -0.8228837792128604
#>     Attrib V32    -0.06725865410425932
#>     Attrib V33    0.20946522783892813
#>     Attrib V34    0.009295757090841909
#>     Attrib V35    0.06279708231266554
#>     Attrib V36    0.02249728130559815
#>     Attrib V37    -0.0992081200739588
#>     Attrib V38    0.25178261024894116
#>     Attrib V39    0.20254080387704626
#>     Attrib V4    0.29832277694194254
#>     Attrib V40    -0.1885181317818402
#>     Attrib V41    -0.02169568161134727
#>     Attrib V42    0.07174684733142635
#>     Attrib V43    0.04657368801882533
#>     Attrib V44    0.2666595197888932
#>     Attrib V45    0.3898473708248377
#>     Attrib V46    0.1764704603238281
#>     Attrib V47    -0.09459487295686991
#>     Attrib V48    0.03317780400037528
#>     Attrib V49    0.19464184718010394
#>     Attrib V5    -0.06697011570403037
#>     Attrib V50    -0.2894056733586147
#>     Attrib V51    0.24446318848051296
#>     Attrib V52    0.30356686127168275
#>     Attrib V53    0.21123871837183075
#>     Attrib V54    0.1983248609973208
#>     Attrib V55    -0.14918203013507686
#>     Attrib V56    -0.20111050879730638
#>     Attrib V57    0.11182016291855904
#>     Attrib V58    0.09538256515379998
#>     Attrib V59    0.26478547062855584
#>     Attrib V6    -0.15218549567610293
#>     Attrib V60    0.3851884207535004
#>     Attrib V7    -0.2603836110828981
#>     Attrib V8    -0.16474025833507705
#>     Attrib V9    0.19684647608854924
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.23173052613930736
#>     Attrib V1    0.5795804440588522
#>     Attrib V10    -0.47289315945325855
#>     Attrib V11    -0.11892827663358749
#>     Attrib V12    0.04941468044356429
#>     Attrib V13    -0.17220166436153886
#>     Attrib V14    0.23016487684564804
#>     Attrib V15    0.32931297782581853
#>     Attrib V16    0.07583776760185433
#>     Attrib V17    0.05867199480276923
#>     Attrib V18    0.0022601086100117475
#>     Attrib V19    0.026644986601873047
#>     Attrib V2    0.22005497351560926
#>     Attrib V20    0.5043997503706596
#>     Attrib V21    0.557514292484507
#>     Attrib V22    0.42775845137633073
#>     Attrib V23    0.2679208606670425
#>     Attrib V24    0.06180188474543019
#>     Attrib V25    -0.4035561664877004
#>     Attrib V26    -1.012450910896433
#>     Attrib V27    -0.947872252542191
#>     Attrib V28    -0.0931693331892072
#>     Attrib V29    0.2106436204660096
#>     Attrib V3    -0.27827574148151013
#>     Attrib V30    -0.12886362939000573
#>     Attrib V31    -1.2577082201988956
#>     Attrib V32    -0.08552745768350459
#>     Attrib V33    0.4822670317412451
#>     Attrib V34    -0.18478202824525602
#>     Attrib V35    -0.4491378504216805
#>     Attrib V36    -0.3697389081758796
#>     Attrib V37    -0.5274188102694762
#>     Attrib V38    0.1859723122309189
#>     Attrib V39    0.3097061339187045
#>     Attrib V4    0.560472419596842
#>     Attrib V40    -0.24213114816248846
#>     Attrib V41    -0.08273344619482238
#>     Attrib V42    0.20970693745921382
#>     Attrib V43    0.07484890991504979
#>     Attrib V44    0.08630792884744022
#>     Attrib V45    0.294422374438292
#>     Attrib V46    0.2442214731716907
#>     Attrib V47    -0.19530044483339512
#>     Attrib V48    0.009616118036968945
#>     Attrib V49    0.16525335684075684
#>     Attrib V5    -0.17088872824344867
#>     Attrib V50    -0.3069336419274684
#>     Attrib V51    0.24043192086109408
#>     Attrib V52    0.42979150330757854
#>     Attrib V53    0.3388602110176241
#>     Attrib V54    0.35864558471906205
#>     Attrib V55    -0.1763310947856039
#>     Attrib V56    -0.20844782409104445
#>     Attrib V57    0.3532700921848616
#>     Attrib V58    0.3561519447291048
#>     Attrib V59    0.7089310651306344
#>     Attrib V6    -0.207421845650272
#>     Attrib V60    0.6685083937398301
#>     Attrib V7    -0.08133017602534698
#>     Attrib V8    -0.04823804756024585
#>     Attrib V9    0.0914224852239605
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.12273774493404992
#>     Attrib V1    0.22387991402641624
#>     Attrib V10    -0.050568294655457244
#>     Attrib V11    0.06433093518443357
#>     Attrib V12    0.10236582101751046
#>     Attrib V13    0.03621582139444431
#>     Attrib V14    0.03955077840681375
#>     Attrib V15    -0.017837122547321678
#>     Attrib V16    -0.0957347546003395
#>     Attrib V17    -0.018866115383803467
#>     Attrib V18    -0.03679214004985603
#>     Attrib V19    -0.08607656455953014
#>     Attrib V2    0.06127136458639631
#>     Attrib V20    0.08340570432738068
#>     Attrib V21    0.06041802402443513
#>     Attrib V22    -0.06268626786795306
#>     Attrib V23    -0.014988447167378391
#>     Attrib V24    0.016035611760743043
#>     Attrib V25    0.01229083586837707
#>     Attrib V26    -0.0973422478259845
#>     Attrib V27    -0.017906494092961994
#>     Attrib V28    0.07525960689815389
#>     Attrib V29    0.0882284963058658
#>     Attrib V3    0.04687714991511673
#>     Attrib V30    0.006355706542441547
#>     Attrib V31    -0.34474464156140716
#>     Attrib V32    0.017303182557333596
#>     Attrib V33    0.10712102260912836
#>     Attrib V34    0.05918597723792796
#>     Attrib V35    0.03849530752158946
#>     Attrib V36    0.0031052706249055663
#>     Attrib V37    -0.013078285049995819
#>     Attrib V38    0.07958265236797017
#>     Attrib V39    0.14780072061817906
#>     Attrib V4    0.20855528995685496
#>     Attrib V40    -0.02648443796945972
#>     Attrib V41    0.0166155612531304
#>     Attrib V42    0.03563723365603926
#>     Attrib V43    -0.0020831155002300063
#>     Attrib V44    0.10716165219137101
#>     Attrib V45    0.10507394690738368
#>     Attrib V46    0.11847324683856811
#>     Attrib V47    0.013126130573314139
#>     Attrib V48    0.05126756342057068
#>     Attrib V49    0.1434583648000705
#>     Attrib V5    0.03407417691764435
#>     Attrib V50    -0.0884248389980355
#>     Attrib V51    0.11322766090353012
#>     Attrib V52    0.15574123890906347
#>     Attrib V53    0.16027720493716757
#>     Attrib V54    0.10000584707396679
#>     Attrib V55    -0.004386797133792331
#>     Attrib V56    -0.010617326983397611
#>     Attrib V57    0.14068595398962896
#>     Attrib V58    0.08940125012603845
#>     Attrib V59    0.23661679259552917
#>     Attrib V6    -0.025118780311546848
#>     Attrib V60    0.29603616596154214
#>     Attrib V7    -0.04072594881957682
#>     Attrib V8    -0.1252954615896322
#>     Attrib V9    0.08424672592245175
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.339930256825856
#>     Attrib V1    0.6887996902147819
#>     Attrib V10    -0.29885636963667905
#>     Attrib V11    0.06198896447678454
#>     Attrib V12    0.24854001354048444
#>     Attrib V13    -0.1841307226866298
#>     Attrib V14    0.07990731518413668
#>     Attrib V15    0.24823340267202448
#>     Attrib V16    -0.08024194282497242
#>     Attrib V17    -0.01981525610559063
#>     Attrib V18    -0.055805590499027974
#>     Attrib V19    -0.08206425184153672
#>     Attrib V2    0.1779643780923698
#>     Attrib V20    0.370806087472254
#>     Attrib V21    0.3462338408813444
#>     Attrib V22    0.17571109615234795
#>     Attrib V23    0.15419555310274724
#>     Attrib V24    0.08223249452787162
#>     Attrib V25    -0.2819022880340604
#>     Attrib V26    -0.7647507155749131
#>     Attrib V27    -0.8020599413274809
#>     Attrib V28    -0.03614863229987933
#>     Attrib V29    0.08524983535438799
#>     Attrib V3    -0.28623005209378877
#>     Attrib V30    -0.019432884703366494
#>     Attrib V31    -0.9165355623590551
#>     Attrib V32    0.13157932026489613
#>     Attrib V33    0.4901681163710464
#>     Attrib V34    -0.10579050209289731
#>     Attrib V35    -0.3249277600510036
#>     Attrib V36    -0.4446053166902068
#>     Attrib V37    -0.5275366696663822
#>     Attrib V38    0.031391556011447476
#>     Attrib V39    0.28649434220893494
#>     Attrib V4    0.49591070943289284
#>     Attrib V40    -0.18772317420170134
#>     Attrib V41    -0.024567808592963564
#>     Attrib V42    0.08993180181489814
#>     Attrib V43    -0.07285080099773689
#>     Attrib V44    0.08633302356817761
#>     Attrib V45    0.20039292147892251
#>     Attrib V46    0.17056215436281577
#>     Attrib V47    -0.18036943421308416
#>     Attrib V48    0.1591231035437625
#>     Attrib V49    0.37875694151029976
#>     Attrib V5    -0.22131985776187219
#>     Attrib V50    -0.38117834707400744
#>     Attrib V51    0.211975579126479
#>     Attrib V52    0.37037875556457994
#>     Attrib V53    0.20095626854243698
#>     Attrib V54    0.296937006002907
#>     Attrib V55    -0.13220606218587158
#>     Attrib V56    -0.21848662992229156
#>     Attrib V57    0.2483830035177657
#>     Attrib V58    0.319616811898725
#>     Attrib V59    0.6172596050050989
#>     Attrib V6    -0.24376091042854214
#>     Attrib V60    0.6276298046682046
#>     Attrib V7    -0.2187690818978442
#>     Attrib V8    -0.14368727078948426
#>     Attrib V9    0.173106337349395
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.8370500596161644
#>     Attrib V1    -0.9752854616249155
#>     Attrib V10    0.6095488849236311
#>     Attrib V11    -0.12449404255044619
#>     Attrib V12    -0.5358092782610935
#>     Attrib V13    0.11028556707978135
#>     Attrib V14    -0.2108573161442622
#>     Attrib V15    -0.2996620886546254
#>     Attrib V16    0.06536748803160514
#>     Attrib V17    0.05124012278625652
#>     Attrib V18    0.03110319052763897
#>     Attrib V19    -0.14223697890571912
#>     Attrib V2    -0.28528002986642276
#>     Attrib V20    -0.7942716544504936
#>     Attrib V21    -0.6886501566096156
#>     Attrib V22    -0.4833207613190559
#>     Attrib V23    -0.7054250379472119
#>     Attrib V24    -0.6669407223046255
#>     Attrib V25    0.1364447048698146
#>     Attrib V26    1.2952365001691595
#>     Attrib V27    1.3364645651820009
#>     Attrib V28    -0.30028456154070127
#>     Attrib V29    -0.45513955720089455
#>     Attrib V3    0.6097530641914626
#>     Attrib V30    0.05379187891495394
#>     Attrib V31    1.411271483590474
#>     Attrib V32    -0.6133676957910839
#>     Attrib V33    -0.9755335980572352
#>     Attrib V34    0.21745509680883213
#>     Attrib V35    0.9684090075186454
#>     Attrib V36    1.1588463319871025
#>     Attrib V37    1.3966438388345475
#>     Attrib V38    0.040563042693899695
#>     Attrib V39    -0.5658165206980312
#>     Attrib V4    -0.7765752843309556
#>     Attrib V40    0.05406746721364515
#>     Attrib V41    -0.4011863030184737
#>     Attrib V42    -0.6455077922121404
#>     Attrib V43    -0.014164464954089207
#>     Attrib V44    0.013356847794848232
#>     Attrib V45    -0.1597479092163998
#>     Attrib V46    -0.17982030649605135
#>     Attrib V47    0.1981255657592015
#>     Attrib V48    -0.3434627410186073
#>     Attrib V49    -0.9845100401917811
#>     Attrib V5    0.45235168705429407
#>     Attrib V50    0.8587408986679644
#>     Attrib V51    -0.5099785409342851
#>     Attrib V52    -0.8494237383272852
#>     Attrib V53    -0.4458312727215896
#>     Attrib V54    -0.293789748771695
#>     Attrib V55    0.3426561641246874
#>     Attrib V56    0.3776600541148837
#>     Attrib V57    -0.24144490184523784
#>     Attrib V58    -0.5058102092321103
#>     Attrib V59    -1.1190826024811902
#>     Attrib V6    0.4728618068245354
#>     Attrib V60    -0.8202027335408771
#>     Attrib V7    0.4944951625998884
#>     Attrib V8    -0.056446826883568724
#>     Attrib V9    -0.2757006804959476
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.16116494672469375
#>     Attrib V1    0.13742993693948813
#>     Attrib V10    0.029652325298429285
#>     Attrib V11    0.04273426567459612
#>     Attrib V12    0.04922751553119503
#>     Attrib V13    0.022267339637787046
#>     Attrib V14    0.004518284736259354
#>     Attrib V15    -0.012163817178767768
#>     Attrib V16    0.026491106887782067
#>     Attrib V17    0.027070807702711624
#>     Attrib V18    0.02095888561193704
#>     Attrib V19    -0.027689534961928622
#>     Attrib V2    0.03164650715089571
#>     Attrib V20    -0.01424619229784668
#>     Attrib V21    -0.03582276666362337
#>     Attrib V22    -0.07970659563659854
#>     Attrib V23    -0.10693851759577915
#>     Attrib V24    -0.00727388414414691
#>     Attrib V25    -0.0074753139544728765
#>     Attrib V26    -0.05350193946302406
#>     Attrib V27    -0.04453837755960637
#>     Attrib V28    0.034955583714406074
#>     Attrib V29    -0.005674791279157186
#>     Attrib V3    0.05918649440022174
#>     Attrib V30    -0.055365847219908
#>     Attrib V31    -0.16727656640186367
#>     Attrib V32    0.03999771154428081
#>     Attrib V33    0.05931689584385152
#>     Attrib V34    0.05681559032066624
#>     Attrib V35    0.0525554949526331
#>     Attrib V36    0.03340738932407707
#>     Attrib V37    0.04308967220509484
#>     Attrib V38    0.06934334801952353
#>     Attrib V39    0.08113302658084598
#>     Attrib V4    0.15196227125931658
#>     Attrib V40    -0.026364104663239865
#>     Attrib V41    0.02368066133603984
#>     Attrib V42    0.055412143952730315
#>     Attrib V43    0.01904996848570715
#>     Attrib V44    0.04635771546827636
#>     Attrib V45    0.09573987272981349
#>     Attrib V46    0.09120162225992369
#>     Attrib V47    0.02018872976889152
#>     Attrib V48    0.04895504022046747
#>     Attrib V49    0.04928874659362038
#>     Attrib V5    0.0616771596989526
#>     Attrib V50    0.049696982908785846
#>     Attrib V51    0.15635924996605952
#>     Attrib V52    0.1681094686088621
#>     Attrib V53    0.16581166725009977
#>     Attrib V54    0.059488463240711546
#>     Attrib V55    0.05928808212093208
#>     Attrib V56    0.04486196121634113
#>     Attrib V57    0.1327393395429452
#>     Attrib V58    0.13687261600861522
#>     Attrib V59    0.0856317499104455
#>     Attrib V6    0.02343592268237927
#>     Attrib V60    0.1787102803367235
#>     Attrib V7    -0.03305980223910174
#>     Attrib V8    -0.05973133840052933
#>     Attrib V9    0.1093687193685285
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.034770324028675956
#>     Attrib V1    0.35476014010706214
#>     Attrib V10    0.002873903107735228
#>     Attrib V11    0.12267118955811006
#>     Attrib V12    0.11405364127221673
#>     Attrib V13    -0.10365481660214401
#>     Attrib V14    -0.015525668066392969
#>     Attrib V15    0.05220382041839075
#>     Attrib V16    -0.102571583481514
#>     Attrib V17    -0.08795708852054429
#>     Attrib V18    -0.11450008732919871
#>     Attrib V19    -0.12953173294968232
#>     Attrib V2    0.14695708019031498
#>     Attrib V20    0.01930414782257219
#>     Attrib V21    0.0012842211842628989
#>     Attrib V22    -0.05582832525790777
#>     Attrib V23    -0.14255747497427673
#>     Attrib V24    -0.02118155562759528
#>     Attrib V25    -0.13821441202323584
#>     Attrib V26    -0.17431246512282308
#>     Attrib V27    -0.08956371286518024
#>     Attrib V28    0.1311975699020192
#>     Attrib V29    0.07436798999700871
#>     Attrib V3    -0.0617998310031607
#>     Attrib V30    0.06056990345885035
#>     Attrib V31    -0.3345009754289512
#>     Attrib V32    0.024211986227822807
#>     Attrib V33    0.2070839176837129
#>     Attrib V34    -0.028266000115066216
#>     Attrib V35    0.02490321704020261
#>     Attrib V36    -0.0914873272780862
#>     Attrib V37    -0.13333172934459553
#>     Attrib V38    0.12299891217572761
#>     Attrib V39    0.14607147964375733
#>     Attrib V4    0.2642735614918731
#>     Attrib V40    -0.12446786118538662
#>     Attrib V41    0.005601745187529835
#>     Attrib V42    -0.028748110149836806
#>     Attrib V43    0.04373838357681799
#>     Attrib V44    0.1424815766629078
#>     Attrib V45    0.223187730328799
#>     Attrib V46    0.08092557622014544
#>     Attrib V47    -0.09417083727587858
#>     Attrib V48    0.15349284896026807
#>     Attrib V49    0.15016845254811045
#>     Attrib V5    -0.033767052958119784
#>     Attrib V50    -0.11608871750385559
#>     Attrib V51    0.1774280522932218
#>     Attrib V52    0.20136564255618317
#>     Attrib V53    0.1465083519649376
#>     Attrib V54    0.1332433204523159
#>     Attrib V55    0.0363332130120221
#>     Attrib V56    -0.05645861291652667
#>     Attrib V57    0.20424165066124841
#>     Attrib V58    0.10691801676528329
#>     Attrib V59    0.23522996419628414
#>     Attrib V6    -0.10283481874883617
#>     Attrib V60    0.33245873495214057
#>     Attrib V7    -0.18016729360557196
#>     Attrib V8    -0.09236563334636429
#>     Attrib V9    0.13224720905778758
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.36991036922579
#>     Attrib V1    -0.30498082437966617
#>     Attrib V10    0.13234200182615075
#>     Attrib V11    -0.15236217288083248
#>     Attrib V12    -0.34204302525377456
#>     Attrib V13    0.057955962568553634
#>     Attrib V14    0.21313371845567458
#>     Attrib V15    0.19967479974301675
#>     Attrib V16    0.3329351888443284
#>     Attrib V17    0.1986637876025057
#>     Attrib V18    0.20035472839235405
#>     Attrib V19    0.13529070918994002
#>     Attrib V2    -0.03082339855317218
#>     Attrib V20    -0.058817071223753334
#>     Attrib V21    -0.07303211275458912
#>     Attrib V22    -0.08390166724779953
#>     Attrib V23    -0.17324798041807118
#>     Attrib V24    -0.1871095148578154
#>     Attrib V25    0.10598834904552909
#>     Attrib V26    0.2862403280322941
#>     Attrib V27    0.20498541403086012
#>     Attrib V28    -0.3928556758733545
#>     Attrib V29    -0.4076056028569791
#>     Attrib V3    0.2864169518343493
#>     Attrib V30    -0.1386284244594678
#>     Attrib V31    0.5604758575762357
#>     Attrib V32    -0.22119841410529892
#>     Attrib V33    -0.2809157337899204
#>     Attrib V34    0.10126222578604051
#>     Attrib V35    0.1773479998979347
#>     Attrib V36    0.34389424188710027
#>     Attrib V37    0.2149555426284517
#>     Attrib V38    -0.13380037894046717
#>     Attrib V39    -0.1358185449701312
#>     Attrib V4    -0.2238820562307453
#>     Attrib V40    0.11612815462318227
#>     Attrib V41    -0.21324155067135858
#>     Attrib V42    -0.15303143356625235
#>     Attrib V43    -0.11655731270126776
#>     Attrib V44    -0.18098810014249508
#>     Attrib V45    -0.34153321152308114
#>     Attrib V46    -0.24070628858153317
#>     Attrib V47    0.09785819343267936
#>     Attrib V48    -0.09993143376984269
#>     Attrib V49    -0.3021689327691085
#>     Attrib V5    0.20390767068272744
#>     Attrib V50    0.32065398177739957
#>     Attrib V51    -0.17298961839429475
#>     Attrib V52    -0.35446054349903167
#>     Attrib V53    -0.17466723674089127
#>     Attrib V54    -0.10900405204796736
#>     Attrib V55    0.22931065007465343
#>     Attrib V56    0.33865158385411587
#>     Attrib V57    0.02025165420293338
#>     Attrib V58    -0.03872649583630561
#>     Attrib V59    -0.1581824163473356
#>     Attrib V6    0.17830498840846043
#>     Attrib V60    -0.20319350301225558
#>     Attrib V7    0.29686846589068894
#>     Attrib V8    0.18741941361143893
#>     Attrib V9    -0.21103459740557065
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.5035390592891444
#>     Attrib V1    0.37838679419759635
#>     Attrib V10    0.0998350353292568
#>     Attrib V11    0.5286055593519612
#>     Attrib V12    0.887239098748226
#>     Attrib V13    0.11340680347105667
#>     Attrib V14    -0.14774818420671942
#>     Attrib V15    -0.16436880206781757
#>     Attrib V16    -0.3733500235841369
#>     Attrib V17    -0.08711230025488875
#>     Attrib V18    0.006606645908308307
#>     Attrib V19    -0.01818347595180685
#>     Attrib V2    -0.013684696159402007
#>     Attrib V20    0.03094836052536753
#>     Attrib V21    -0.11954593090979379
#>     Attrib V22    0.04173461431308461
#>     Attrib V23    0.38623101532449183
#>     Attrib V24    0.5499190673204127
#>     Attrib V25    0.3623220555397293
#>     Attrib V26    0.27899940850993943
#>     Attrib V27    0.468202490976278
#>     Attrib V28    1.256733144754554
#>     Attrib V29    0.9368138776749917
#>     Attrib V3    -0.2966893492914275
#>     Attrib V30    0.4205304652846727
#>     Attrib V31    -0.8410491407905051
#>     Attrib V32    0.06609638762806887
#>     Attrib V33    0.1733511928086033
#>     Attrib V34    0.013847429662580263
#>     Attrib V35    0.12877154700810928
#>     Attrib V36    -0.2990234493064952
#>     Attrib V37    -0.2564691863079578
#>     Attrib V38    -0.06344567575410151
#>     Attrib V39    0.05231198184023325
#>     Attrib V4    0.5460994481539715
#>     Attrib V40    -0.12375586108555525
#>     Attrib V41    0.5052217808656341
#>     Attrib V42    0.28626392536214684
#>     Attrib V43    0.0713133461686358
#>     Attrib V44    0.31785542582087956
#>     Attrib V45    0.5741750083337139
#>     Attrib V46    0.4470407872569883
#>     Attrib V47    -0.03647174238328184
#>     Attrib V48    0.20221794364158985
#>     Attrib V49    0.7052695367862938
#>     Attrib V5    0.24900378737273512
#>     Attrib V50    -0.83795487119073
#>     Attrib V51    0.530873061353536
#>     Attrib V52    0.7485244605484281
#>     Attrib V53    0.4936689004419503
#>     Attrib V54    0.31579506290431886
#>     Attrib V55    -0.38242509903583183
#>     Attrib V56    -0.5628999957499
#>     Attrib V57    -0.23571568131793144
#>     Attrib V58    -0.08063228510565303
#>     Attrib V59    0.30522189784212184
#>     Attrib V6    -0.03837179064016823
#>     Attrib V60    0.7139633738624603
#>     Attrib V7    -0.45699250628661614
#>     Attrib V8    -0.4212125101867276
#>     Attrib V9    0.5676970412412584
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.02977143151073011
#>     Attrib V1    0.5317718323989565
#>     Attrib V10    -0.21154081880374143
#>     Attrib V11    -0.001382148840423621
#>     Attrib V12    0.25448294475603866
#>     Attrib V13    -0.09208759491531364
#>     Attrib V14    0.04820538964465813
#>     Attrib V15    0.040055666159435795
#>     Attrib V16    -0.136290707240497
#>     Attrib V17    0.1228290354135544
#>     Attrib V18    0.17119739070372583
#>     Attrib V19    0.17322427643736946
#>     Attrib V2    0.14995035677092594
#>     Attrib V20    0.6572818464280175
#>     Attrib V21    0.7375920920901475
#>     Attrib V22    0.7251190343113127
#>     Attrib V23    0.6150771286900072
#>     Attrib V24    0.3335635454754463
#>     Attrib V25    0.055405894942703655
#>     Attrib V26    -0.35373669128919766
#>     Attrib V27    -0.4127582854058395
#>     Attrib V28    0.45053742388680057
#>     Attrib V29    0.7487447397032866
#>     Attrib V3    -0.283613840260751
#>     Attrib V30    0.16468258315271203
#>     Attrib V31    -1.487836844460095
#>     Attrib V32    -0.3431895670818098
#>     Attrib V33    0.2227932099515713
#>     Attrib V34    -0.21434127545038092
#>     Attrib V35    0.012008943976426963
#>     Attrib V36    0.30826941773839184
#>     Attrib V37    0.15400481837295946
#>     Attrib V38    0.57965248634659
#>     Attrib V39    0.38571814959481476
#>     Attrib V4    0.44470866553645155
#>     Attrib V40    -0.3666624196577156
#>     Attrib V41    -0.00898452723020507
#>     Attrib V42    0.15180930612443144
#>     Attrib V43    0.21806485386710367
#>     Attrib V44    0.532457304011249
#>     Attrib V45    0.571655793740425
#>     Attrib V46    0.30788910599112523
#>     Attrib V47    -0.17139570172336943
#>     Attrib V48    -0.10213146645092289
#>     Attrib V49    0.1981795624029733
#>     Attrib V5    -0.08333689647519636
#>     Attrib V50    -0.32713099559170483
#>     Attrib V51    0.3721954271393314
#>     Attrib V52    0.4904383289244542
#>     Attrib V53    0.3057758225448752
#>     Attrib V54    0.3747650414674847
#>     Attrib V55    -0.2850203169321299
#>     Attrib V56    -0.24255628518501368
#>     Attrib V57    0.050369085481255696
#>     Attrib V58    0.004535705937721108
#>     Attrib V59    0.47674417104717853
#>     Attrib V6    -0.14331861911671392
#>     Attrib V60    0.7216293818734134
#>     Attrib V7    -0.1343616112712122
#>     Attrib V8    -0.3650290016593605
#>     Attrib V9    0.2261284438075579
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.5022763067684627
#>     Attrib V1    -0.6772821255630807
#>     Attrib V10    0.48354683472023086
#>     Attrib V11    -0.1372004653513343
#>     Attrib V12    -0.5037482527378535
#>     Attrib V13    0.03578342169602535
#>     Attrib V14    -0.14731990157057726
#>     Attrib V15    -0.24582789586805984
#>     Attrib V16    0.022314328823132334
#>     Attrib V17    -0.0019744734235547724
#>     Attrib V18    -0.04294495652505148
#>     Attrib V19    -0.1992456017439692
#>     Attrib V2    -0.23831388715059523
#>     Attrib V20    -0.6359978564803809
#>     Attrib V21    -0.48244538744627985
#>     Attrib V22    -0.48657124338895447
#>     Attrib V23    -0.69234806536919
#>     Attrib V24    -0.5824596867882729
#>     Attrib V25    0.12169256124694142
#>     Attrib V26    1.0170757967706718
#>     Attrib V27    1.0873845660789125
#>     Attrib V28    -0.22816037627337502
#>     Attrib V29    -0.36054285087134624
#>     Attrib V3    0.43835161669867584
#>     Attrib V30    0.06913719733273757
#>     Attrib V31    1.141818498314967
#>     Attrib V32    -0.5377350489138708
#>     Attrib V33    -0.7901276173758414
#>     Attrib V34    0.17431999680338564
#>     Attrib V35    0.8282131805893411
#>     Attrib V36    1.0126910233645492
#>     Attrib V37    1.1880684901823109
#>     Attrib V38    0.08747798533608862
#>     Attrib V39    -0.38713817366053155
#>     Attrib V4    -0.6066334853320585
#>     Attrib V40    0.12788084364816804
#>     Attrib V41    -0.28756513495472097
#>     Attrib V42    -0.570832210418181
#>     Attrib V43    -0.014445908628993446
#>     Attrib V44    0.010404076793801174
#>     Attrib V45    -0.1881064749941134
#>     Attrib V46    -0.21749977083607594
#>     Attrib V47    0.11136705946383632
#>     Attrib V48    -0.21355668799046673
#>     Attrib V49    -0.7804309354628376
#>     Attrib V5    0.32868468568135456
#>     Attrib V50    0.7027473699513849
#>     Attrib V51    -0.4896297991773249
#>     Attrib V52    -0.7434533817177901
#>     Attrib V53    -0.42040235895796935
#>     Attrib V54    -0.22377757615240135
#>     Attrib V55    0.20287466670629714
#>     Attrib V56    0.23520366997064907
#>     Attrib V57    -0.09850802572502453
#>     Attrib V58    -0.4746861905602368
#>     Attrib V59    -0.8181266896695739
#>     Attrib V6    0.3476734970686232
#>     Attrib V60    -0.5742023665740792
#>     Attrib V7    0.4641649544699527
#>     Attrib V8    -0.1359115171553948
#>     Attrib V9    -0.21648461722238582
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.06872829021418556
#>     Attrib V1    0.530689601834315
#>     Attrib V10    -0.15417318377493255
#>     Attrib V11    0.008134374583259942
#>     Attrib V12    0.10687305721823778
#>     Attrib V13    -0.14800877213580815
#>     Attrib V14    0.0982178826289858
#>     Attrib V15    0.10339319052206748
#>     Attrib V16    -0.013915613273389839
#>     Attrib V17    -0.06884476050893272
#>     Attrib V18    -0.12229421899467233
#>     Attrib V19    -0.18739357196708584
#>     Attrib V2    0.17811371198488068
#>     Attrib V20    0.1405300915510364
#>     Attrib V21    0.12209991610673662
#>     Attrib V22    -0.08416569173031983
#>     Attrib V23    -0.17731800725451805
#>     Attrib V24    -0.0477835286166391
#>     Attrib V25    -0.2986042885602136
#>     Attrib V26    -0.5347490805252008
#>     Attrib V27    -0.5005895903305377
#>     Attrib V28    -0.194161230847755
#>     Attrib V29    -0.08008014386570973
#>     Attrib V3    -0.07567803968867498
#>     Attrib V30    -0.11270109630821863
#>     Attrib V31    -0.47114368116315797
#>     Attrib V32    0.07176688408318334
#>     Attrib V33    0.24492082065164322
#>     Attrib V34    -0.039500331446718544
#>     Attrib V35    -0.1669305056417575
#>     Attrib V36    -0.2381616542957431
#>     Attrib V37    -0.2937526815155581
#>     Attrib V38    0.03251453467282592
#>     Attrib V39    0.14652828662629885
#>     Attrib V4    0.37789030237765603
#>     Attrib V40    -0.08898620870469573
#>     Attrib V41    -0.10138345393963981
#>     Attrib V42    -0.01326140093706855
#>     Attrib V43    0.013511219432550906
#>     Attrib V44    0.00906604841752553
#>     Attrib V45    0.0705832913749257
#>     Attrib V46    0.10618546741313431
#>     Attrib V47    -0.13535868521456054
#>     Attrib V48    0.1466694537991772
#>     Attrib V49    0.1866833982511933
#>     Attrib V5    -0.054413960071192494
#>     Attrib V50    -0.11822683810588061
#>     Attrib V51    0.1538759766190357
#>     Attrib V52    0.2519900459966028
#>     Attrib V53    0.1874599369492443
#>     Attrib V54    0.24292146111081475
#>     Attrib V55    0.049744752402229996
#>     Attrib V56    -0.018487117092895432
#>     Attrib V57    0.3011397821207103
#>     Attrib V58    0.3278020551766
#>     Attrib V59    0.4564260041353389
#>     Attrib V6    -0.11930679676055105
#>     Attrib V60    0.4804920779480289
#>     Attrib V7    -0.09398853089998876
#>     Attrib V8    -0.1703381599670564
#>     Attrib V9    0.0834939555162251
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.09585267402211992
#>     Attrib V1    0.42027900829221476
#>     Attrib V10    -0.2892348740262227
#>     Attrib V11    0.0066509827270231645
#>     Attrib V12    0.19076641144206355
#>     Attrib V13    -0.08006069519592904
#>     Attrib V14    0.07148820241787919
#>     Attrib V15    0.06374151394210234
#>     Attrib V16    -0.12497814532411362
#>     Attrib V17    0.06321851903185591
#>     Attrib V18    0.04728356427135737
#>     Attrib V19    0.03875963640785075
#>     Attrib V2    0.07286330066487609
#>     Attrib V20    0.3586475045773344
#>     Attrib V21    0.3786942797430157
#>     Attrib V22    0.31147172125452316
#>     Attrib V23    0.22820389691088397
#>     Attrib V24    0.09294609814076468
#>     Attrib V25    -0.08475065214533573
#>     Attrib V26    -0.3743189163766689
#>     Attrib V27    -0.5072556926292008
#>     Attrib V28    0.022829722493332517
#>     Attrib V29    0.17770346656228783
#>     Attrib V3    -0.13156521403622057
#>     Attrib V30    -0.048024469784445384
#>     Attrib V31    -0.9436223230365776
#>     Attrib V32    -0.1138398175130416
#>     Attrib V33    0.25581220307639385
#>     Attrib V34    -0.08094813581880199
#>     Attrib V35    -0.0064694581405690815
#>     Attrib V36    0.037983430033004896
#>     Attrib V37    -0.03713200750374572
#>     Attrib V38    0.26966408516094814
#>     Attrib V39    0.25706822451034156
#>     Attrib V4    0.40697504969263315
#>     Attrib V40    -0.27099194780961544
#>     Attrib V41    -0.087545879483117
#>     Attrib V42    0.07064083791322406
#>     Attrib V43    0.09858778023200267
#>     Attrib V44    0.17789639006438726
#>     Attrib V45    0.2773132157945295
#>     Attrib V46    0.13670390988872216
#>     Attrib V47    -0.12208402217846108
#>     Attrib V48    -0.09067514544553856
#>     Attrib V49    0.12530494198795022
#>     Attrib V5    -0.12770939151893607
#>     Attrib V50    -0.23972018657050329
#>     Attrib V51    0.15627640704927853
#>     Attrib V52    0.37781381880241366
#>     Attrib V53    0.2923059218598868
#>     Attrib V54    0.2395140708841051
#>     Attrib V55    -0.10297216613136394
#>     Attrib V56    -0.09258585607839324
#>     Attrib V57    0.15044384365894478
#>     Attrib V58    0.1588650313897038
#>     Attrib V59    0.4500999454929774
#>     Attrib V6    -0.15951394536476857
#>     Attrib V60    0.46331549133412325
#>     Attrib V7    -0.15650742809249044
#>     Attrib V8    -0.22462325554109636
#>     Attrib V9    0.0669371529546841
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.28022983369065957
#>     Attrib V1    -0.24858348554155588
#>     Attrib V10    0.15524142001215013
#>     Attrib V11    -0.036935151350842695
#>     Attrib V12    -0.1897281127301833
#>     Attrib V13    0.03289969923434893
#>     Attrib V14    0.15950493308443656
#>     Attrib V15    0.3127453656328064
#>     Attrib V16    0.42468029086467507
#>     Attrib V17    0.46138030390463014
#>     Attrib V18    0.2988078099516767
#>     Attrib V19    0.17866759308939187
#>     Attrib V2    -0.00597403934878187
#>     Attrib V20    -0.15798801881591445
#>     Attrib V21    -0.1527257908995711
#>     Attrib V22    -0.09022220789998284
#>     Attrib V23    -0.11389500187756152
#>     Attrib V24    -0.18833908906916044
#>     Attrib V25    0.05965927184046844
#>     Attrib V26    0.21727412942338697
#>     Attrib V27    0.019497486563838727
#>     Attrib V28    -0.36578746320755473
#>     Attrib V29    -0.2926909923970662
#>     Attrib V3    0.2108036158227072
#>     Attrib V30    0.027694463176562854
#>     Attrib V31    0.5069960938572676
#>     Attrib V32    -0.14244354769137613
#>     Attrib V33    -0.25827721134975196
#>     Attrib V34    0.12764216945583365
#>     Attrib V35    0.29914273517055834
#>     Attrib V36    0.430093311266062
#>     Attrib V37    0.3290666789465904
#>     Attrib V38    -0.08454950752073613
#>     Attrib V39    -0.1291774003652951
#>     Attrib V4    -0.0870501827596896
#>     Attrib V40    0.24074338413644464
#>     Attrib V41    0.035745355609044974
#>     Attrib V42    -0.04207702659705733
#>     Attrib V43    0.0033250053737161724
#>     Attrib V44    -0.15708915532614054
#>     Attrib V45    -0.241838962523801
#>     Attrib V46    -0.10115321236233721
#>     Attrib V47    0.1489012827646633
#>     Attrib V48    -0.07097913396516123
#>     Attrib V49    -0.2782247544670778
#>     Attrib V5    0.22832365026860146
#>     Attrib V50    0.27409181263704907
#>     Attrib V51    -0.069774125002831
#>     Attrib V52    -0.1729357363782576
#>     Attrib V53    -0.21295091796741974
#>     Attrib V54    -0.16092650552815874
#>     Attrib V55    0.19120398609570707
#>     Attrib V56    0.30084420068207773
#>     Attrib V57    0.10609511154583513
#>     Attrib V58    0.006749396463992286
#>     Attrib V59    -0.12368422606631428
#>     Attrib V6    0.2991729427347617
#>     Attrib V60    -0.1656744439366876
#>     Attrib V7    0.26291864392904013
#>     Attrib V8    0.26969386195473743
#>     Attrib V9    -0.03766103702669879
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    1.626568938537768
#>     Attrib V1    1.2659067093450163
#>     Attrib V10    0.4554915506262737
#>     Attrib V11    1.707146927758785
#>     Attrib V12    1.9318513507513355
#>     Attrib V13    0.736235259987904
#>     Attrib V14    -0.5311242923574558
#>     Attrib V15    -0.37023493068531005
#>     Attrib V16    -0.5586688644463752
#>     Attrib V17    0.029193229843215988
#>     Attrib V18    -0.0037851703189650974
#>     Attrib V19    -0.518806083431521
#>     Attrib V2    0.6677670945109674
#>     Attrib V20    -0.5555293996674605
#>     Attrib V21    -0.7213772265048866
#>     Attrib V22    -1.0398161984757346
#>     Attrib V23    0.06707905701474703
#>     Attrib V24    0.752103152225473
#>     Attrib V25    -0.2171782179401192
#>     Attrib V26    1.1358513716263983
#>     Attrib V27    1.2988427859502671
#>     Attrib V28    0.743372917660426
#>     Attrib V29    -0.5391375495235476
#>     Attrib V3    0.18424992839830812
#>     Attrib V30    0.1451827030610188
#>     Attrib V31    1.0879277927594972
#>     Attrib V32    1.4591988460331027
#>     Attrib V33    0.21618111880404126
#>     Attrib V34    0.401803284976798
#>     Attrib V35    -0.37401391519807814
#>     Attrib V36    -2.3850858622021307
#>     Attrib V37    -1.5641937606476235
#>     Attrib V38    -1.6599251847592746
#>     Attrib V39    -0.7407383704638136
#>     Attrib V4    0.616469642742709
#>     Attrib V40    0.6323007302737905
#>     Attrib V41    1.4921521566921192
#>     Attrib V42    0.35848062536707676
#>     Attrib V43    -0.030919700521752327
#>     Attrib V44    -0.18044838340641667
#>     Attrib V45    0.3248253719241034
#>     Attrib V46    0.5178091699477693
#>     Attrib V47    -0.05861372080368628
#>     Attrib V48    0.8809441079636535
#>     Attrib V49    1.7596669536146792
#>     Attrib V5    0.4195841085775016
#>     Attrib V50    -1.2089243744796796
#>     Attrib V51    1.2246729221952397
#>     Attrib V52    1.3023291562114412
#>     Attrib V53    1.2329486636650064
#>     Attrib V54    -0.08351779084688983
#>     Attrib V55    -0.228301903496392
#>     Attrib V56    -0.7467565182488368
#>     Attrib V57    -0.7229435343996748
#>     Attrib V58    0.5672489589552466
#>     Attrib V59    -0.08560266541903988
#>     Attrib V6    -0.0609584636756677
#>     Attrib V60    -0.18704277163610117
#>     Attrib V7    -1.271665536773383
#>     Attrib V8    0.13056581003472742
#>     Attrib V9    1.2285986599623406
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.21189791256634985
#>     Attrib V1    0.10622083068812448
#>     Attrib V10    0.021558812499699903
#>     Attrib V11    0.017460960395449386
#>     Attrib V12    0.0561845158057901
#>     Attrib V13    -0.015335549064495654
#>     Attrib V14    0.07858002108766703
#>     Attrib V15    0.002851918870087189
#>     Attrib V16    0.011326954558747965
#>     Attrib V17    0.04717851392382898
#>     Attrib V18    -0.029387792114982884
#>     Attrib V19    0.01877531495453917
#>     Attrib V2    0.09144800739641006
#>     Attrib V20    0.008743263350677766
#>     Attrib V21    -0.0010643226256695972
#>     Attrib V22    -0.06267614019513379
#>     Attrib V23    -0.07179405879810175
#>     Attrib V24    -0.055607068967043816
#>     Attrib V25    -0.011911493062026747
#>     Attrib V26    -0.030133915444978305
#>     Attrib V27    -0.002748353957691484
#>     Attrib V28    0.013466103921049292
#>     Attrib V29    0.003755781306296187
#>     Attrib V3    0.03198775950222894
#>     Attrib V30    -0.02271252543683166
#>     Attrib V31    -0.11289095605968417
#>     Attrib V32    -0.02566254249747943
#>     Attrib V33    0.07050921223662843
#>     Attrib V34    0.02941679796789373
#>     Attrib V35    0.1484306841967883
#>     Attrib V36    0.15101947401410168
#>     Attrib V37    0.12328579540422646
#>     Attrib V38    0.048863694986793396
#>     Attrib V39    0.08897481265195907
#>     Attrib V4    0.1405514100109397
#>     Attrib V40    0.02310612442600128
#>     Attrib V41    0.007504001606958896
#>     Attrib V42    0.03905589676932298
#>     Attrib V43    0.04705377362823945
#>     Attrib V44    0.0877792479234494
#>     Attrib V45    0.0661850521899328
#>     Attrib V46    0.047410780038470386
#>     Attrib V47    0.013109007186726388
#>     Attrib V48    0.08588885708120772
#>     Attrib V49    0.03812446051297265
#>     Attrib V5    0.039899334305741926
#>     Attrib V50    0.05795414215503349
#>     Attrib V51    0.0699448215676115
#>     Attrib V52    0.08551432975559761
#>     Attrib V53    0.0892053023921626
#>     Attrib V54    0.048299342773620496
#>     Attrib V55    0.053720662156716135
#>     Attrib V56    0.08147799448014874
#>     Attrib V57    0.13527946314292452
#>     Attrib V58    0.08375239350137338
#>     Attrib V59    0.10287998639182966
#>     Attrib V6    0.08091384119389716
#>     Attrib V60    0.18139949660777144
#>     Attrib V7    -0.01185457920491368
#>     Attrib V8    0.031184460230281753
#>     Attrib V9    0.051539291177022585
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.5300249487227412
#>     Attrib V1    0.7668336578967939
#>     Attrib V10    0.4947973024277025
#>     Attrib V11    0.867076300794199
#>     Attrib V12    0.938848724358529
#>     Attrib V13    -0.002103802761657645
#>     Attrib V14    -0.43613378073273223
#>     Attrib V15    -0.3696008071768823
#>     Attrib V16    -0.591029337499841
#>     Attrib V17    -0.4277295589157974
#>     Attrib V18    -0.31525421173431695
#>     Attrib V19    -0.4363213034482072
#>     Attrib V2    0.15095226089426175
#>     Attrib V20    -0.27028468072923917
#>     Attrib V21    -0.2866552404360628
#>     Attrib V22    -0.29699385427240493
#>     Attrib V23    -0.008996409658566771
#>     Attrib V24    0.32174108589505945
#>     Attrib V25    0.12880885281190904
#>     Attrib V26    0.4276744958649303
#>     Attrib V27    0.6580876686191196
#>     Attrib V28    1.243980105320371
#>     Attrib V29    0.8607417852513602
#>     Attrib V3    -0.11083128599690668
#>     Attrib V30    0.46536085115604137
#>     Attrib V31    -0.7866698099395097
#>     Attrib V32    0.056042499628605844
#>     Attrib V33    -0.044144448918302714
#>     Attrib V34    0.05381872931593801
#>     Attrib V35    0.2831750321276245
#>     Attrib V36    -0.17689206040674643
#>     Attrib V37    0.03769531995890334
#>     Attrib V38    -0.04606218120965536
#>     Attrib V39    -0.008116560888499076
#>     Attrib V4    0.46888210862827223
#>     Attrib V40    -0.25745194897956747
#>     Attrib V41    0.4458197548665985
#>     Attrib V42    -0.02285738271807398
#>     Attrib V43    -0.04188174954348064
#>     Attrib V44    0.3534219560030022
#>     Attrib V45    0.6867132543341884
#>     Attrib V46    0.5137006919102091
#>     Attrib V47    0.10600375543340597
#>     Attrib V48    0.40100863282591315
#>     Attrib V49    0.6390727986427662
#>     Attrib V5    0.21320308150018272
#>     Attrib V50    -0.7391446220071117
#>     Attrib V51    0.6635780627901283
#>     Attrib V52    0.6726181505403839
#>     Attrib V53    0.3051315608125089
#>     Attrib V54    0.2114206161928693
#>     Attrib V55    -0.2969957457178274
#>     Attrib V56    -0.579316285394808
#>     Attrib V57    -0.14874555026992542
#>     Attrib V58    -0.12492443930092283
#>     Attrib V59    0.28053311194127944
#>     Attrib V6    -0.047443068952856944
#>     Attrib V60    0.7710325696336516
#>     Attrib V7    -0.5571603346262229
#>     Attrib V8    -0.5102990449284605
#>     Attrib V9    0.7731857736913645
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.5990510961199569
#>     Attrib V1    -0.5720727569514269
#>     Attrib V10    0.3612213846633203
#>     Attrib V11    -0.28130691342342307
#>     Attrib V12    -0.7443042250652109
#>     Attrib V13    -0.030270718429929424
#>     Attrib V14    -0.026934650828732306
#>     Attrib V15    -0.10314621358915226
#>     Attrib V16    0.15029605980634206
#>     Attrib V17    0.016015723788147446
#>     Attrib V18    0.02865693345952401
#>     Attrib V19    -0.13557179643910464
#>     Attrib V2    -0.24440688713415543
#>     Attrib V20    -0.4708573772186769
#>     Attrib V21    -0.2706360323377371
#>     Attrib V22    -0.3358331206612889
#>     Attrib V23    -0.7111095947823055
#>     Attrib V24    -0.608277650196116
#>     Attrib V25    0.013748764833936401
#>     Attrib V26    0.7734261155594339
#>     Attrib V27    0.7921316304154498
#>     Attrib V28    -0.5228787082968885
#>     Attrib V29    -0.584574476130637
#>     Attrib V3    0.4877407978674366
#>     Attrib V30    -0.07400749731976451
#>     Attrib V31    0.9433030953898883
#>     Attrib V32    -0.5231945945576714
#>     Attrib V33    -0.7038809980747365
#>     Attrib V34    0.1509473915773397
#>     Attrib V35    0.7912252614046751
#>     Attrib V36    1.1029177696080905
#>     Attrib V37    1.025988302974946
#>     Attrib V38    0.2073100261278656
#>     Attrib V39    -0.24868097139574757
#>     Attrib V4    -0.5626275164235902
#>     Attrib V40    0.09807740855645568
#>     Attrib V41    -0.416622906364227
#>     Attrib V42    -0.5282314724178331
#>     Attrib V43    0.004493168268403438
#>     Attrib V44    0.0026438223587879326
#>     Attrib V45    -0.12819866705871838
#>     Attrib V46    -0.2349018939895204
#>     Attrib V47    0.06520933616923189
#>     Attrib V48    -0.2037946910100348
#>     Attrib V49    -0.7632731748283114
#>     Attrib V5    0.19764513259123684
#>     Attrib V50    0.9186196337000863
#>     Attrib V51    -0.6401123526073157
#>     Attrib V52    -0.8130596273770578
#>     Attrib V53    -0.407606756534614
#>     Attrib V54    -0.09082185944436363
#>     Attrib V55    0.29882039827650986
#>     Attrib V56    0.3187083808482943
#>     Attrib V57    -0.005134003924389736
#>     Attrib V58    -0.3231968007276162
#>     Attrib V59    -0.6832555952977873
#>     Attrib V6    0.3194949118137307
#>     Attrib V60    -0.6089523206245899
#>     Attrib V7    0.5458071960876971
#>     Attrib V8    0.07756249131290115
#>     Attrib V9    -0.2255159651517505
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.14224373898219766
#>     Attrib V1    0.3661423203890143
#>     Attrib V10    -0.2074776164993743
#>     Attrib V11    0.1117963486450361
#>     Attrib V12    0.23576177547778482
#>     Attrib V13    -0.10243912715041892
#>     Attrib V14    0.026911776623468376
#>     Attrib V15    -0.004177190504722741
#>     Attrib V16    -0.14816903168597403
#>     Attrib V17    0.012911374520787113
#>     Attrib V18    0.0499247330862221
#>     Attrib V19    0.026324999609964164
#>     Attrib V2    0.0745532700504252
#>     Attrib V20    0.4102593354804113
#>     Attrib V21    0.41599260953260936
#>     Attrib V22    0.36449648354983166
#>     Attrib V23    0.257691308436795
#>     Attrib V24    0.2568017984593179
#>     Attrib V25    0.05929814128896431
#>     Attrib V26    -0.30280263403597596
#>     Attrib V27    -0.33712552566210163
#>     Attrib V28    0.26019289353846914
#>     Attrib V29    0.41390975237102695
#>     Attrib V3    -0.16371810786813248
#>     Attrib V30    0.03340979614689635
#>     Attrib V31    -0.9377386636103058
#>     Attrib V32    -0.06722883282819248
#>     Attrib V33    0.25202848995838373
#>     Attrib V34    -0.047111964033753236
#>     Attrib V35    0.03062042072043724
#>     Attrib V36    0.029667594947796656
#>     Attrib V37    -0.0534696145729985
#>     Attrib V38    0.2536524823725676
#>     Attrib V39    0.2705413885468864
#>     Attrib V4    0.3214139347695917
#>     Attrib V40    -0.20256642337912684
#>     Attrib V41    0.030294567532644576
#>     Attrib V42    0.07624736907108175
#>     Attrib V43    0.11331096840424866
#>     Attrib V44    0.2054876181612183
#>     Attrib V45    0.3832439755244025
#>     Attrib V46    0.2032867614059068
#>     Attrib V47    -0.11022570621451715
#>     Attrib V48    -0.03934535769065846
#>     Attrib V49    0.187864337274543
#>     Attrib V5    -0.15013364089455294
#>     Attrib V50    -0.29926092171903285
#>     Attrib V51    0.23938201624179908
#>     Attrib V52    0.4028675579828529
#>     Attrib V53    0.25227254464653603
#>     Attrib V54    0.17297633541228702
#>     Attrib V55    -0.14000510506097494
#>     Attrib V56    -0.1824516153015841
#>     Attrib V57    0.09931278777663596
#>     Attrib V58    0.07350368921492138
#>     Attrib V59    0.34084559691017524
#>     Attrib V6    -0.1632487787829596
#>     Attrib V60    0.4874502805536466
#>     Attrib V7    -0.22690225366638694
#>     Attrib V8    -0.18926106717812147
#>     Attrib V9    0.17888159489669686
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.18988088182767526
#>     Attrib V1    0.0023866985389368843
#>     Attrib V10    0.132697704558116
#>     Attrib V11    0.057315251171920704
#>     Attrib V12    0.020254494590671874
#>     Attrib V13    0.07087732244110447
#>     Attrib V14    0.06353508099707422
#>     Attrib V15    0.09766301784270652
#>     Attrib V16    0.15498163485375233
#>     Attrib V17    0.19313691000577501
#>     Attrib V18    0.12631360092981322
#>     Attrib V19    0.034890326960994304
#>     Attrib V2    0.07377051028614687
#>     Attrib V20    -0.04943388148271711
#>     Attrib V21    0.003043560757161073
#>     Attrib V22    -0.007341452857092489
#>     Attrib V23    -0.03637420974548977
#>     Attrib V24    -0.08375319772251083
#>     Attrib V25    0.03137768491317461
#>     Attrib V26    0.028362654902960614
#>     Attrib V27    -0.055040259489228305
#>     Attrib V28    -0.11190291073913233
#>     Attrib V29    -0.13629428064255833
#>     Attrib V3    0.07460159513093671
#>     Attrib V30    0.010122839549405484
#>     Attrib V31    0.15222499686873334
#>     Attrib V32    -0.04106851333379534
#>     Attrib V33    -0.05896010901072624
#>     Attrib V34    0.03246585460062395
#>     Attrib V35    0.17334171884496583
#>     Attrib V36    0.1808160770061419
#>     Attrib V37    0.21045699804534027
#>     Attrib V38    0.007692077832767418
#>     Attrib V39    0.0844805048833924
#>     Attrib V4    0.06199655298189289
#>     Attrib V40    0.13293471154860018
#>     Attrib V41    0.07708467156821272
#>     Attrib V42    0.09306796951133861
#>     Attrib V43    0.024065827342158456
#>     Attrib V44    -0.004745073961658093
#>     Attrib V45    -0.0012944230720628403
#>     Attrib V46    0.013526049670412113
#>     Attrib V47    0.041421076764640324
#>     Attrib V48    0.03524161710705481
#>     Attrib V49    -0.057266463389120024
#>     Attrib V5    0.09360526526961671
#>     Attrib V50    0.05874797292064156
#>     Attrib V51    0.010999112231968514
#>     Attrib V52    0.015236757008299191
#>     Attrib V53    0.014470924605018335
#>     Attrib V54    -0.02132423573531235
#>     Attrib V55    0.04450586979829988
#>     Attrib V56    0.15365173924952205
#>     Attrib V57    0.04812991509881124
#>     Attrib V58    0.08727156068110026
#>     Attrib V59    0.04688611900706215
#>     Attrib V6    0.1390999186332405
#>     Attrib V60    0.03629077743819768
#>     Attrib V7    0.0646721879478637
#>     Attrib V8    0.10508317778000933
#>     Attrib V9    0.03609688690564897
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.06407377979220372
#>     Attrib V1    0.5453848663135243
#>     Attrib V10    -0.3646944791535494
#>     Attrib V11    -0.11006349777105055
#>     Attrib V12    0.03536030149363981
#>     Attrib V13    -0.1084285587615024
#>     Attrib V14    0.19385965719158232
#>     Attrib V15    0.27097110817025916
#>     Attrib V16    0.023997096275363585
#>     Attrib V17    0.04776662209148962
#>     Attrib V18    0.028022231537988652
#>     Attrib V19    -0.012393863750754037
#>     Attrib V2    0.2350112933300053
#>     Attrib V20    0.4392726609771379
#>     Attrib V21    0.3890390936963907
#>     Attrib V22    0.2844105429891939
#>     Attrib V23    0.13630835130088004
#>     Attrib V24    0.05857761189157367
#>     Attrib V25    -0.3117259419677968
#>     Attrib V26    -0.7580127851773057
#>     Attrib V27    -0.8864804492970582
#>     Attrib V28    -0.2928452074470192
#>     Attrib V29    -0.060551487630092916
#>     Attrib V3    -0.19712647092525917
#>     Attrib V30    -0.21107747893415496
#>     Attrib V31    -0.8883906637763389
#>     Attrib V32    -0.03363053598624126
#>     Attrib V33    0.3949095698340407
#>     Attrib V34    -0.10471575183369622
#>     Attrib V35    -0.2587492895235351
#>     Attrib V36    -0.2693040560281522
#>     Attrib V37    -0.3624086971194236
#>     Attrib V38    0.19672900370862492
#>     Attrib V39    0.24848488553894035
#>     Attrib V4    0.4246215171505458
#>     Attrib V40    -0.21334424883347833
#>     Attrib V41    -0.10952748153265206
#>     Attrib V42    0.1327059561858457
#>     Attrib V43    0.05572953997945379
#>     Attrib V44    0.0990684626822202
#>     Attrib V45    0.12665547166134777
#>     Attrib V46    0.09899349582478145
#>     Attrib V47    -0.1648562524065521
#>     Attrib V48    0.005396939963853978
#>     Attrib V49    0.1352768391416715
#>     Attrib V5    -0.17197524419460414
#>     Attrib V50    -0.15893096426002665
#>     Attrib V51    0.16703520670842048
#>     Attrib V52    0.32071621565373004
#>     Attrib V53    0.3356109303149008
#>     Attrib V54    0.39185089338307394
#>     Attrib V55    -0.008646069803218538
#>     Attrib V56    -0.11760963798839033
#>     Attrib V57    0.31600088330605086
#>     Attrib V58    0.2627148019868424
#>     Attrib V59    0.5713881160975333
#>     Attrib V6    -0.1649442630638566
#>     Attrib V60    0.5693930548308017
#>     Attrib V7    -0.07099477035935702
#>     Attrib V8    -0.11582017317885221
#>     Attrib V9    0.04407872830297097
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.14469058916092242
#>     Attrib V1    0.16798817135585783
#>     Attrib V10    -0.02409910188502535
#>     Attrib V11    0.06862354693115197
#>     Attrib V12    0.053498087093708624
#>     Attrib V13    -0.040198617711204844
#>     Attrib V14    0.07827815396853324
#>     Attrib V15    0.024323059137457616
#>     Attrib V16    0.010022289625152853
#>     Attrib V17    -0.035228167459577756
#>     Attrib V18    0.0314945796506637
#>     Attrib V19    -0.09272072207181278
#>     Attrib V2    0.05992289072398084
#>     Attrib V20    0.029778652083237798
#>     Attrib V21    0.025374684852566387
#>     Attrib V22    -0.06202934844343839
#>     Attrib V23    -0.03653951662819068
#>     Attrib V24    -0.0426870126035278
#>     Attrib V25    -0.07337893579264461
#>     Attrib V26    -0.04472640989885607
#>     Attrib V27    -0.034382415743234924
#>     Attrib V28    0.04818759246331055
#>     Attrib V29    0.01346862697567799
#>     Attrib V3    0.06855731538925028
#>     Attrib V30    0.013480995066342392
#>     Attrib V31    -0.18660680379345382
#>     Attrib V32    -0.018207240571976667
#>     Attrib V33    0.07321615696142146
#>     Attrib V34    0.03827916023853148
#>     Attrib V35    0.09468120864317568
#>     Attrib V36    0.12468710442908679
#>     Attrib V37    0.04314662916365085
#>     Attrib V38    0.030135300277041976
#>     Attrib V39    0.0897615031838538
#>     Attrib V4    0.11298723664888256
#>     Attrib V40    -0.023118394273093434
#>     Attrib V41    -0.03249891413303201
#>     Attrib V42    0.0343558727626022
#>     Attrib V43    -0.0036367304641570734
#>     Attrib V44    0.10922822304156996
#>     Attrib V45    0.12195692879479364
#>     Attrib V46    0.08031593084999017
#>     Attrib V47    0.01126139952165016
#>     Attrib V48    0.02129463688992921
#>     Attrib V49    0.10555282262564125
#>     Attrib V5    0.060954587948410764
#>     Attrib V50    -0.011056650930008658
#>     Attrib V51    0.12133784262960025
#>     Attrib V52    0.16994352809482682
#>     Attrib V53    0.1228159766887898
#>     Attrib V54    0.03964607938057264
#>     Attrib V55    0.02358824231571954
#>     Attrib V56    0.029854463414275664
#>     Attrib V57    0.09718673243868432
#>     Attrib V58    0.14139580102534902
#>     Attrib V59    0.09675122989510232
#>     Attrib V6    0.040822363440811166
#>     Attrib V60    0.15476989211902278
#>     Attrib V7    -0.010239436918012861
#>     Attrib V8    0.015823286467002564
#>     Attrib V9    0.10190706439285104
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
