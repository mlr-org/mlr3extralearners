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
#>     Threshold    -1.3685309435829136
#>     Node 2    2.1109761881483857
#>     Node 3    1.2675930058047755
#>     Node 4    0.4964624631172204
#>     Node 5    -2.5733717220252235
#>     Node 6    1.7332029334669858
#>     Node 7    3.1636803336267896
#>     Node 8    0.6846398267421449
#>     Node 9    3.8596695012200692
#>     Node 10    -0.7097263801212911
#>     Node 11    0.948000646570806
#>     Node 12    1.2364016247271463
#>     Node 13    1.160455424514509
#>     Node 14    1.207141613301135
#>     Node 15    -2.522899465254363
#>     Node 16    0.28774656874807897
#>     Node 17    0.25363646334038814
#>     Node 18    0.1816613696966625
#>     Node 19    2.2913805101808116
#>     Node 20    1.9426851320240976
#>     Node 21    -2.3093381619477165
#>     Node 22    1.0367860321082862
#>     Node 23    2.54895253894046
#>     Node 24    -2.49140570740138
#>     Node 25    3.7623668555330996
#>     Node 26    0.32465498675620863
#>     Node 27    1.347093403717461
#>     Node 28    -2.9226937609963755
#>     Node 29    0.9270238136756828
#>     Node 30    0.64930780887285
#>     Node 31    2.9468266388689544
#>     Node 32    0.710113483461234
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    1.4063770342287754
#>     Node 2    -2.146242937062456
#>     Node 3    -1.2524834339824806
#>     Node 4    -0.45569226998082835
#>     Node 5    2.576963059161265
#>     Node 6    -1.7092251448247011
#>     Node 7    -3.1704362182970884
#>     Node 8    -0.7196817672670542
#>     Node 9    -3.8558757390136966
#>     Node 10    0.6608709036631862
#>     Node 11    -0.9179058147554543
#>     Node 12    -1.3149777113838166
#>     Node 13    -1.114056156873513
#>     Node 14    -1.1423953676153353
#>     Node 15    2.508838592504151
#>     Node 16    -0.30411562561241084
#>     Node 17    -0.21675206510118783
#>     Node 18    -0.14072971091258932
#>     Node 19    -2.289527377132293
#>     Node 20    -1.9455864356531196
#>     Node 21    2.363678547372261
#>     Node 22    -1.098141296352291
#>     Node 23    -2.5839536082670262
#>     Node 24    2.476875851768507
#>     Node 25    -3.7561500321965946
#>     Node 26    -0.41147502925375556
#>     Node 27    -1.3762012280879665
#>     Node 28    2.8940139576924655
#>     Node 29    -0.9602449911337259
#>     Node 30    -0.5766378232975324
#>     Node 31    -2.9086955004470174
#>     Node 32    -0.7351185670790664
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.2775834270150813
#>     Attrib V1    0.017410905614641425
#>     Attrib V10    0.24727969353482807
#>     Attrib V11    -0.04962160969364419
#>     Attrib V12    0.438173707821552
#>     Attrib V13    -0.06827527794836816
#>     Attrib V14    -0.271357259863593
#>     Attrib V15    0.07184559333662166
#>     Attrib V16    0.07933043255617461
#>     Attrib V17    0.27020185975514727
#>     Attrib V18    0.6233447920202424
#>     Attrib V19    0.6643322078911249
#>     Attrib V2    0.06456242213416145
#>     Attrib V20    -0.04469719647006697
#>     Attrib V21    0.03425471906461982
#>     Attrib V22    0.39695600096865646
#>     Attrib V23    0.5515906596236488
#>     Attrib V24    0.39735255913208595
#>     Attrib V25    -0.021465852146898747
#>     Attrib V26    -0.22571575557183715
#>     Attrib V27    -0.4715781413702839
#>     Attrib V28    -0.6910727107524621
#>     Attrib V29    -0.6042683239194832
#>     Attrib V3    -0.5577028233376684
#>     Attrib V30    0.5578044114228516
#>     Attrib V31    -0.2257601077991803
#>     Attrib V32    0.36245877953453587
#>     Attrib V33    0.8694589362151719
#>     Attrib V34    -0.06252840024364517
#>     Attrib V35    -0.8606456941377966
#>     Attrib V36    -1.3648032178261793
#>     Attrib V37    -1.3618187482083288
#>     Attrib V38    0.18952395983803094
#>     Attrib V39    0.2750269990019791
#>     Attrib V4    0.8447084011841577
#>     Attrib V40    -0.16085834758502532
#>     Attrib V41    0.025017814875048207
#>     Attrib V42    0.3870165023984437
#>     Attrib V43    0.7924476110795293
#>     Attrib V44    4.271770572334855E-4
#>     Attrib V45    -0.34926228456320313
#>     Attrib V46    -0.1679117574152736
#>     Attrib V47    -0.2146614036324454
#>     Attrib V48    0.01623798781581523
#>     Attrib V49    0.3061577397142888
#>     Attrib V5    0.2457050540867404
#>     Attrib V50    -0.9075257764452466
#>     Attrib V51    0.13770109163974167
#>     Attrib V52    0.3140870307116088
#>     Attrib V53    0.4652422926400273
#>     Attrib V54    0.5591242608702609
#>     Attrib V55    -0.3975400606515964
#>     Attrib V56    0.1790779962701428
#>     Attrib V57    0.2562327940781415
#>     Attrib V58    0.03119811251468354
#>     Attrib V59    0.23054786019140464
#>     Attrib V6    -0.15337968036834562
#>     Attrib V60    0.016563859358963755
#>     Attrib V7    0.054442068812927874
#>     Attrib V8    -0.03729989377442508
#>     Attrib V9    0.854822096568406
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.27818610533526933
#>     Attrib V1    0.09368738708776932
#>     Attrib V10    0.010534676137367166
#>     Attrib V11    -0.17583127624325393
#>     Attrib V12    0.26764827711678846
#>     Attrib V13    0.018662736362034686
#>     Attrib V14    -0.012250420305952081
#>     Attrib V15    0.11741083049942382
#>     Attrib V16    -0.004556463975815694
#>     Attrib V17    0.05003776034229202
#>     Attrib V18    0.18705196557706685
#>     Attrib V19    0.28918516946084
#>     Attrib V2    0.06723670847149592
#>     Attrib V20    -0.06913705585366424
#>     Attrib V21    0.03351835039743873
#>     Attrib V22    0.16728389998842846
#>     Attrib V23    0.1148028665784054
#>     Attrib V24    0.07926681949516222
#>     Attrib V25    -0.09070785082529181
#>     Attrib V26    -0.344245492874722
#>     Attrib V27    -0.3688215141934381
#>     Attrib V28    -0.4194419015053155
#>     Attrib V29    -0.5081867854602276
#>     Attrib V3    -0.24197711667399036
#>     Attrib V30    0.13152225606153847
#>     Attrib V31    -0.28121891822988637
#>     Attrib V32    0.10436635855860589
#>     Attrib V33    0.5410473070635334
#>     Attrib V34    -0.06486296970461213
#>     Attrib V35    -0.42593411823396315
#>     Attrib V36    -0.6559255966710414
#>     Attrib V37    -0.68131408491599
#>     Attrib V38    0.055352586080095086
#>     Attrib V39    0.2084843840872387
#>     Attrib V4    0.7020424027849029
#>     Attrib V40    -0.09428310796710136
#>     Attrib V41    0.023778357162488068
#>     Attrib V42    0.20181999290634312
#>     Attrib V43    0.37967812218197894
#>     Attrib V44    -0.06856197486133489
#>     Attrib V45    -0.232465825920792
#>     Attrib V46    -0.14965167555662942
#>     Attrib V47    -0.15186424767520065
#>     Attrib V48    0.05812039303113709
#>     Attrib V49    0.2153084268581959
#>     Attrib V5    0.15286209455415317
#>     Attrib V50    -0.45638955168649326
#>     Attrib V51    -0.06156810916681064
#>     Attrib V52    0.10433841526404299
#>     Attrib V53    0.23308572012847
#>     Attrib V54    0.5008265908422493
#>     Attrib V55    -0.11736012678365701
#>     Attrib V56    0.06250427365851387
#>     Attrib V57    0.436775923150656
#>     Attrib V58    0.16882629308267058
#>     Attrib V59    0.45437144267070767
#>     Attrib V6    -0.07643765744271631
#>     Attrib V60    0.16964632492269588
#>     Attrib V7    0.09852843350929115
#>     Attrib V8    -0.005274115360513905
#>     Attrib V9    0.37469161896545844
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.08245865943064484
#>     Attrib V1    0.10508664859659436
#>     Attrib V10    0.04895594746160207
#>     Attrib V11    0.012016255072218462
#>     Attrib V12    0.13611952755320408
#>     Attrib V13    0.06958372614243029
#>     Attrib V14    0.1126518980383243
#>     Attrib V15    0.10093343861615892
#>     Attrib V16    -0.0027937222996467156
#>     Attrib V17    -0.0033091066962280223
#>     Attrib V18    -0.005596879918233832
#>     Attrib V19    0.005905977013946317
#>     Attrib V2    0.07547856310516647
#>     Attrib V20    -0.07918834616511017
#>     Attrib V21    -0.02533056398025425
#>     Attrib V22    -0.09073425694840534
#>     Attrib V23    -0.0684599154697572
#>     Attrib V24    -0.08812896156501814
#>     Attrib V25    -0.13558296659362076
#>     Attrib V26    -0.1711663901146552
#>     Attrib V27    -0.11611106180017375
#>     Attrib V28    0.00414211300022717
#>     Attrib V29    -0.0553743368906712
#>     Attrib V3    0.05143805568856499
#>     Attrib V30    0.017769611187236516
#>     Attrib V31    -0.12091801397245032
#>     Attrib V32    -0.012624894539269509
#>     Attrib V33    0.19836466987255366
#>     Attrib V34    0.037709569795834785
#>     Attrib V35    -0.060124256246467965
#>     Attrib V36    -0.13650037255236902
#>     Attrib V37    -0.10326731810064285
#>     Attrib V38    0.06274479110941229
#>     Attrib V39    0.11640114324424412
#>     Attrib V4    0.3460975443997987
#>     Attrib V40    -0.027059202933295147
#>     Attrib V41    -0.022805506056412565
#>     Attrib V42    0.03901856093846956
#>     Attrib V43    0.07160592588742522
#>     Attrib V44    0.04591036782136888
#>     Attrib V45    0.10102014547478837
#>     Attrib V46    0.037630780563031506
#>     Attrib V47    0.016937253597266912
#>     Attrib V48    0.14155926851209638
#>     Attrib V49    0.18692999179643097
#>     Attrib V5    0.1773836788240431
#>     Attrib V50    -0.05726804393061562
#>     Attrib V51    0.08622054935453656
#>     Attrib V52    0.07855477910447835
#>     Attrib V53    0.14461550165254017
#>     Attrib V54    0.12459627080185111
#>     Attrib V55    0.034058145510498725
#>     Attrib V56    0.07874607070290454
#>     Attrib V57    0.33374434250934704
#>     Attrib V58    0.09609486442344424
#>     Attrib V59    0.2883643290203487
#>     Attrib V6    0.03866827615551573
#>     Attrib V60    0.20373120828735095
#>     Attrib V7    0.1234961025433785
#>     Attrib V8    -0.003459517676895679
#>     Attrib V9    0.2008834446790947
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.3278632893134556
#>     Attrib V1    -0.024776348072750136
#>     Attrib V10    -0.5734190640852816
#>     Attrib V11    -0.18079432800353412
#>     Attrib V12    -0.6004747745242842
#>     Attrib V13    -0.17671560752220833
#>     Attrib V14    0.548737727387799
#>     Attrib V15    0.22716705322572764
#>     Attrib V16    0.2099257995852238
#>     Attrib V17    -0.011410755195148206
#>     Attrib V18    -0.5235884084363227
#>     Attrib V19    -0.7972331598633711
#>     Attrib V2    -0.2935327399476155
#>     Attrib V20    -0.06724291218202708
#>     Attrib V21    -0.03718077412092735
#>     Attrib V22    -0.8121693548810406
#>     Attrib V23    -1.1025578850883815
#>     Attrib V24    -0.5665771512000819
#>     Attrib V25    0.027675558855793803
#>     Attrib V26    0.048626907472403565
#>     Attrib V27    0.1457069165469434
#>     Attrib V28    0.11381158909548333
#>     Attrib V29    0.3011725738175985
#>     Attrib V3    0.8542712184660294
#>     Attrib V30    -0.7068491622475501
#>     Attrib V31    0.6907127324861909
#>     Attrib V32    -0.08250251617439544
#>     Attrib V33    -0.9130240530257633
#>     Attrib V34    -0.01574506237576696
#>     Attrib V35    0.34377870214661416
#>     Attrib V36    0.8755087753551278
#>     Attrib V37    0.6842236206254522
#>     Attrib V38    -0.748790721755161
#>     Attrib V39    -0.5476924645736746
#>     Attrib V4    -1.0719387112555738
#>     Attrib V40    0.36173424029940826
#>     Attrib V41    0.07472544263157545
#>     Attrib V42    0.032812047022353484
#>     Attrib V43    -0.9545769016562365
#>     Attrib V44    -0.28511758304681234
#>     Attrib V45    -0.23802686844320484
#>     Attrib V46    -0.2584513075545972
#>     Attrib V47    0.029628551275343046
#>     Attrib V48    0.016030887272984896
#>     Attrib V49    -0.6902516668771305
#>     Attrib V5    -0.11731789229575014
#>     Attrib V50    1.2971737096488967
#>     Attrib V51    -0.3611739380597001
#>     Attrib V52    -0.6020386721873182
#>     Attrib V53    -0.4658238695193657
#>     Attrib V54    -0.48179931740352705
#>     Attrib V55    0.6409649668095602
#>     Attrib V56    0.10957973042861684
#>     Attrib V57    -0.0468005123263253
#>     Attrib V58    -0.036187760491336915
#>     Attrib V59    -0.057512521469063875
#>     Attrib V6    0.19217167163528825
#>     Attrib V60    0.23036222510828352
#>     Attrib V7    0.03718903863792436
#>     Attrib V8    0.32567663027620253
#>     Attrib V9    -1.306013297633671
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.3870472603022092
#>     Attrib V1    0.11206561780705265
#>     Attrib V10    0.0370140732296606
#>     Attrib V11    -0.2576660726546595
#>     Attrib V12    0.26248348397959875
#>     Attrib V13    -0.15465781969465778
#>     Attrib V14    -0.18576838392245149
#>     Attrib V15    0.035351095303663344
#>     Attrib V16    0.07775443758666054
#>     Attrib V17    0.13981697321031641
#>     Attrib V18    0.4484980599135794
#>     Attrib V19    0.43236545363698997
#>     Attrib V2    -0.055173042551454526
#>     Attrib V20    -0.07588777074718189
#>     Attrib V21    0.07323026424468285
#>     Attrib V22    0.24133686519240277
#>     Attrib V23    0.28243030472995184
#>     Attrib V24    0.2618340989691399
#>     Attrib V25    -0.048413008759298014
#>     Attrib V26    -0.3783150264537814
#>     Attrib V27    -0.4432368473669073
#>     Attrib V28    -0.6776695839617947
#>     Attrib V29    -0.7317862138530453
#>     Attrib V3    -0.42867200179367426
#>     Attrib V30    0.1465039416275181
#>     Attrib V31    -0.3693154544652147
#>     Attrib V32    0.16899255509613506
#>     Attrib V33    0.7216946860321647
#>     Attrib V34    -0.0523876947056932
#>     Attrib V35    -0.5746204876696897
#>     Attrib V36    -0.925865046820953
#>     Attrib V37    -0.9769995741280235
#>     Attrib V38    0.15112828888500304
#>     Attrib V39    0.23364423737370793
#>     Attrib V4    0.8620401498305084
#>     Attrib V40    -0.15971541826124355
#>     Attrib V41    0.06563444699769211
#>     Attrib V42    0.32614594272012326
#>     Attrib V43    0.5734223221626654
#>     Attrib V44    -0.0972560975509726
#>     Attrib V45    -0.315372593655256
#>     Attrib V46    -0.1731146938109903
#>     Attrib V47    -0.23363894441641925
#>     Attrib V48    0.05976784188220845
#>     Attrib V49    0.2757736272888901
#>     Attrib V5    0.2308751968522978
#>     Attrib V50    -0.580785866026587
#>     Attrib V51    0.011861960085021868
#>     Attrib V52    0.10015640571703728
#>     Attrib V53    0.3912657162061279
#>     Attrib V54    0.5862985553301947
#>     Attrib V55    -0.3600755936730315
#>     Attrib V56    0.08344387707853365
#>     Attrib V57    0.434930976921548
#>     Attrib V58    0.0963699446284614
#>     Attrib V59    0.4728522377338068
#>     Attrib V6    0.015490118152058053
#>     Attrib V60    0.2848124915040371
#>     Attrib V7    0.2443865188264289
#>     Attrib V8    -0.027174231134574473
#>     Attrib V9    0.6531656556346316
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5060269697455001
#>     Attrib V1    0.34329625250851725
#>     Attrib V10    0.9849161252129072
#>     Attrib V11    1.0653347570258023
#>     Attrib V12    1.522528606479871
#>     Attrib V13    0.6902968534714012
#>     Attrib V14    -0.5073784255680286
#>     Attrib V15    -0.3277031143150522
#>     Attrib V16    -0.5765000142365003
#>     Attrib V17    -1.0466134171220016
#>     Attrib V18    -0.6813346113063257
#>     Attrib V19    -0.18798510176638905
#>     Attrib V2    1.2437620818029471
#>     Attrib V20    -0.5674887416665051
#>     Attrib V21    -0.44193827195391555
#>     Attrib V22    0.1987647927499422
#>     Attrib V23    0.6074897209924925
#>     Attrib V24    0.13904398677808705
#>     Attrib V25    0.11763196977002259
#>     Attrib V26    0.9039064638468371
#>     Attrib V27    1.1058964617754543
#>     Attrib V28    1.5043497249396645
#>     Attrib V29    1.128759514648625
#>     Attrib V3    -0.2286451220962975
#>     Attrib V30    0.852742235471505
#>     Attrib V31    -0.4131988077757117
#>     Attrib V32    -0.2565773941556645
#>     Attrib V33    0.21726843929737022
#>     Attrib V34    0.14681993098246918
#>     Attrib V35    0.39975767853460414
#>     Attrib V36    -0.44640444875349405
#>     Attrib V37    0.5038741558677018
#>     Attrib V38    0.2952325534116618
#>     Attrib V39    0.5838174738023123
#>     Attrib V4    0.599890998431813
#>     Attrib V40    0.24498549936847258
#>     Attrib V41    0.550344503254435
#>     Attrib V42    -0.6628084236952847
#>     Attrib V43    -0.19502347458015354
#>     Attrib V44    -0.05491257287304964
#>     Attrib V45    0.6703996088056478
#>     Attrib V46    0.8357754797759772
#>     Attrib V47    0.38142103814522427
#>     Attrib V48    0.24759457746708774
#>     Attrib V49    0.7825267804225962
#>     Attrib V5    0.1133319261705214
#>     Attrib V50    -1.0082022519449318
#>     Attrib V51    0.49256540638302443
#>     Attrib V52    0.6167657163934547
#>     Attrib V53    0.25741653406298515
#>     Attrib V54    -0.21803034405074417
#>     Attrib V55    -0.20015181200797996
#>     Attrib V56    -0.24677725929942584
#>     Attrib V57    0.2477862673033876
#>     Attrib V58    -0.011265280484625152
#>     Attrib V59    0.5549129824730235
#>     Attrib V6    0.015132761309389814
#>     Attrib V60    0.5068658581745858
#>     Attrib V7    -0.18808765948313363
#>     Attrib V8    -0.774569212167048
#>     Attrib V9    0.9740980690117205
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.06002582109436689
#>     Attrib V1    0.15031454859000495
#>     Attrib V10    0.067197456256704
#>     Attrib V11    0.02574461410098413
#>     Attrib V12    0.17201095116201787
#>     Attrib V13    0.05527963982065125
#>     Attrib V14    0.017378334857639063
#>     Attrib V15    0.04948152727983176
#>     Attrib V16    0.05542023523315795
#>     Attrib V17    -0.029886605277598163
#>     Attrib V18    -0.02789891404981126
#>     Attrib V19    0.024961641609910316
#>     Attrib V2    0.11447129454425634
#>     Attrib V20    -0.15678123560449475
#>     Attrib V21    -0.09372218649679344
#>     Attrib V22    -0.11374332366023338
#>     Attrib V23    -0.10354903845743439
#>     Attrib V24    -0.02549148613398667
#>     Attrib V25    -0.09432080219254614
#>     Attrib V26    -0.16458411819693258
#>     Attrib V27    -0.07542857683344517
#>     Attrib V28    -0.006236213074974553
#>     Attrib V29    -0.10235876025302947
#>     Attrib V3    -0.024271790649722052
#>     Attrib V30    0.033108560295899654
#>     Attrib V31    -0.18544098695120523
#>     Attrib V32    -0.0011655278815975733
#>     Attrib V33    0.2716692704415667
#>     Attrib V34    0.04015110278674116
#>     Attrib V35    -0.0908350413786774
#>     Attrib V36    -0.1254470678643178
#>     Attrib V37    -0.13432996804510403
#>     Attrib V38    0.1848731920832772
#>     Attrib V39    0.10719225210400737
#>     Attrib V4    0.5101600801969582
#>     Attrib V40    -0.09116969492556803
#>     Attrib V41    -0.01828236792689349
#>     Attrib V42    -0.07280604348246117
#>     Attrib V43    0.08150179365427229
#>     Attrib V44    0.046116015974825654
#>     Attrib V45    0.059825479332272266
#>     Attrib V46    0.09725626980017354
#>     Attrib V47    0.03183964231163102
#>     Attrib V48    0.18477753506690764
#>     Attrib V49    0.21398631570160687
#>     Attrib V5    0.15704136120532006
#>     Attrib V50    -0.16782831814813184
#>     Attrib V51    0.012608055239787086
#>     Attrib V52    0.0587602778460503
#>     Attrib V53    0.16358789645373678
#>     Attrib V54    0.22066208015166722
#>     Attrib V55    -0.014778391206128588
#>     Attrib V56    -0.025604389983081424
#>     Attrib V57    0.43486116676790343
#>     Attrib V58    0.07321827256290542
#>     Attrib V59    0.39779151374522714
#>     Attrib V6    0.04597193807146663
#>     Attrib V60    0.31640740144430596
#>     Attrib V7    0.1764586620319825
#>     Attrib V8    -0.019412229498875843
#>     Attrib V9    0.2178567821392645
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.2707203157675257
#>     Attrib V1    -0.033152416587156855
#>     Attrib V10    1.41588800398442
#>     Attrib V11    1.5196567104918963
#>     Attrib V12    1.6441270512227293
#>     Attrib V13    0.7651351990549593
#>     Attrib V14    -0.685610183709725
#>     Attrib V15    -0.5025089339066704
#>     Attrib V16    -0.4305700535532323
#>     Attrib V17    -0.6983517806777727
#>     Attrib V18    -0.07914395402522909
#>     Attrib V19    0.3964294946814499
#>     Attrib V2    1.1883099760381148
#>     Attrib V20    -0.24059183639207077
#>     Attrib V21    -0.22038576786053868
#>     Attrib V22    0.5062840128877999
#>     Attrib V23    1.0178135448441883
#>     Attrib V24    0.12280670358884463
#>     Attrib V25    0.2229490925049474
#>     Attrib V26    1.2410505445104705
#>     Attrib V27    1.1769959676157056
#>     Attrib V28    1.5962727152817449
#>     Attrib V29    1.2675889315349826
#>     Attrib V3    -0.6410399464665315
#>     Attrib V30    1.2480580073084933
#>     Attrib V31    -0.5788666389944597
#>     Attrib V32    -0.20301032413496875
#>     Attrib V33    0.3275839144476352
#>     Attrib V34    0.03777539260091724
#>     Attrib V35    0.16198846441561943
#>     Attrib V36    -0.8153362925312196
#>     Attrib V37    0.03778077327988616
#>     Attrib V38    0.36192315266577973
#>     Attrib V39    1.117316884930264
#>     Attrib V4    0.4675995799351485
#>     Attrib V40    0.561099080368229
#>     Attrib V41    0.496525377473537
#>     Attrib V42    -0.8369903801235765
#>     Attrib V43    -9.593686369335174E-4
#>     Attrib V44    0.22790733304219077
#>     Attrib V45    0.9021395461638514
#>     Attrib V46    0.8787453219173733
#>     Attrib V47    0.5310038401439995
#>     Attrib V48    0.34567304671016136
#>     Attrib V49    1.0978677729126896
#>     Attrib V5    -0.1873760558148019
#>     Attrib V50    -1.1319950996617416
#>     Attrib V51    0.664770846420213
#>     Attrib V52    0.9429639999580492
#>     Attrib V53    0.3943966860879836
#>     Attrib V54    -0.593809177154585
#>     Attrib V55    -0.1581374807925986
#>     Attrib V56    -0.13565673692160066
#>     Attrib V57    -0.154693163208004
#>     Attrib V58    0.014789821005642807
#>     Attrib V59    -0.1589880416643423
#>     Attrib V6    -0.05121080333145143
#>     Attrib V60    -0.33551661980040587
#>     Attrib V7    -0.07129919605900163
#>     Attrib V8    -0.3913895399094542
#>     Attrib V9    1.40120701837929
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.18694752045917773
#>     Attrib V1    0.0400902282128979
#>     Attrib V10    -0.10268928371513236
#>     Attrib V11    -0.0564108009635424
#>     Attrib V12    -0.20579936918697053
#>     Attrib V13    -0.06157880395957797
#>     Attrib V14    0.1528855215798624
#>     Attrib V15    0.010134530593831416
#>     Attrib V16    0.08220727107415088
#>     Attrib V17    -0.005991304327926299
#>     Attrib V18    -0.06431951075864231
#>     Attrib V19    -0.09963139415671675
#>     Attrib V2    -0.1567180369487138
#>     Attrib V20    0.077851144170928
#>     Attrib V21    0.07643794767700962
#>     Attrib V22    -0.10757459778525783
#>     Attrib V23    -0.11357598695515336
#>     Attrib V24    -0.05764594077383102
#>     Attrib V25    0.040960257347436274
#>     Attrib V26    0.10929914516117802
#>     Attrib V27    0.006449572258363132
#>     Attrib V28    -0.13389102887072996
#>     Attrib V29    -0.08440484540056227
#>     Attrib V3    0.1872648355193436
#>     Attrib V30    -0.1641327445585877
#>     Attrib V31    0.23273664079241385
#>     Attrib V32    0.01130755417117725
#>     Attrib V33    -0.14824672951687054
#>     Attrib V34    -0.028933662224851855
#>     Attrib V35    -0.001773023122645216
#>     Attrib V36    0.1307067394443556
#>     Attrib V37    0.05142887093999361
#>     Attrib V38    -0.21206628411308936
#>     Attrib V39    -0.20048987238382537
#>     Attrib V4    -0.28294227154277635
#>     Attrib V40    0.11211193412808844
#>     Attrib V41    0.06247853307363955
#>     Attrib V42    0.057006066459450166
#>     Attrib V43    -0.23078172157190385
#>     Attrib V44    -0.09054461583824956
#>     Attrib V45    -0.12493346172101615
#>     Attrib V46    -0.18517840115584727
#>     Attrib V47    -0.0591416332590113
#>     Attrib V48    -0.13013150599175496
#>     Attrib V49    -0.3060644637889829
#>     Attrib V5    5.084841081471924E-4
#>     Attrib V50    0.3488318666270997
#>     Attrib V51    -0.06116130971687684
#>     Attrib V52    -0.1356882398471173
#>     Attrib V53    0.012663967749033573
#>     Attrib V54    -0.08803901041727671
#>     Attrib V55    0.11042235037444786
#>     Attrib V56    0.02973751748542567
#>     Attrib V57    -0.07505499321837575
#>     Attrib V58    -0.02091473634263315
#>     Attrib V59    -0.0942395932602137
#>     Attrib V6    0.13427675187408827
#>     Attrib V60    -0.023769165291583207
#>     Attrib V7    0.06692401042020714
#>     Attrib V8    0.1448385412554969
#>     Attrib V9    -0.32198162938552954
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.18844068769297304
#>     Attrib V1    0.0797259923377338
#>     Attrib V10    0.024887313818117627
#>     Attrib V11    -0.06269406229649728
#>     Attrib V12    0.24258671485992012
#>     Attrib V13    -0.05430899246852734
#>     Attrib V14    -0.03865045924253188
#>     Attrib V15    0.02378355549391485
#>     Attrib V16    0.013882773146273132
#>     Attrib V17    0.0785851380546431
#>     Attrib V18    0.16320856675033357
#>     Attrib V19    0.16199437821898993
#>     Attrib V2    -0.004463995475174609
#>     Attrib V20    -0.028589973465354503
#>     Attrib V21    -0.009959242604258293
#>     Attrib V22    0.01610244988463315
#>     Attrib V23    0.025964806480377065
#>     Attrib V24    0.014816930712305866
#>     Attrib V25    -0.10637256903037215
#>     Attrib V26    -0.3498074293341188
#>     Attrib V27    -0.24679209231657745
#>     Attrib V28    -0.19966066756160808
#>     Attrib V29    -0.317238007056941
#>     Attrib V3    -0.23670135367399764
#>     Attrib V30    0.055557475398566133
#>     Attrib V31    -0.32039327353057345
#>     Attrib V32    0.011765763718410097
#>     Attrib V33    0.3979403146379805
#>     Attrib V34    0.051378357075610614
#>     Attrib V35    -0.20388216677307847
#>     Attrib V36    -0.38532749083543416
#>     Attrib V37    -0.42119343732021647
#>     Attrib V38    0.20434837972977432
#>     Attrib V39    0.1422151130743721
#>     Attrib V4    0.5655479652097528
#>     Attrib V40    -0.16591625438706095
#>     Attrib V41    -0.10034435414519229
#>     Attrib V42    0.04909571087864178
#>     Attrib V43    0.25030078922991966
#>     Attrib V44    0.032153197314152025
#>     Attrib V45    0.015761312196438705
#>     Attrib V46    -0.024525938257994657
#>     Attrib V47    -0.04612950335443107
#>     Attrib V48    0.16786061517132206
#>     Attrib V49    0.22395482847006112
#>     Attrib V5    0.17020228369136525
#>     Attrib V50    -0.3028492697396523
#>     Attrib V51    0.03583828850815467
#>     Attrib V52    0.033267131378377945
#>     Attrib V53    0.16658404041291516
#>     Attrib V54    0.40025739628663837
#>     Attrib V55    -0.09586282177038011
#>     Attrib V56    0.01286527446823925
#>     Attrib V57    0.41082074756657816
#>     Attrib V58    0.11207735674548189
#>     Attrib V59    0.34073494442728874
#>     Attrib V6    0.018299098476456284
#>     Attrib V60    0.18458680473999234
#>     Attrib V7    0.11713551151579298
#>     Attrib V8    0.0031464078549861417
#>     Attrib V9    0.3479812542920731
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.42463377425789944
#>     Attrib V1    0.08780881988434339
#>     Attrib V10    0.0787442078324559
#>     Attrib V11    0.07247867267803725
#>     Attrib V12    0.4373541892000701
#>     Attrib V13    0.07458542344365689
#>     Attrib V14    -0.018105009569905624
#>     Attrib V15    0.010953853624850041
#>     Attrib V16    -0.03539280553012199
#>     Attrib V17    -0.090704699912267
#>     Attrib V18    0.05982320115593501
#>     Attrib V19    0.17657743789762742
#>     Attrib V2    0.17180633229455144
#>     Attrib V20    -0.2690698977136964
#>     Attrib V21    -0.1505548826343723
#>     Attrib V22    -0.024480645354454933
#>     Attrib V23    -0.058622076278982985
#>     Attrib V24    -0.0437512449690636
#>     Attrib V25    -0.12299335870786852
#>     Attrib V26    -0.15729316190920165
#>     Attrib V27    -0.04099656981689088
#>     Attrib V28    -0.1212038811314557
#>     Attrib V29    -0.1556514970488114
#>     Attrib V3    -0.28736016607170495
#>     Attrib V30    0.20657555123441645
#>     Attrib V31    -0.2957207414986184
#>     Attrib V32    0.06965552610926007
#>     Attrib V33    0.5577774096454526
#>     Attrib V34    0.03065346676050574
#>     Attrib V35    -0.3769778631662543
#>     Attrib V36    -0.6692287671911433
#>     Attrib V37    -0.6224109252920136
#>     Attrib V38    0.08964463404347797
#>     Attrib V39    0.16097750279754136
#>     Attrib V4    0.7782974038298862
#>     Attrib V40    -0.0668846606420871
#>     Attrib V41    0.05411551161698088
#>     Attrib V42    0.06779966164912093
#>     Attrib V43    0.31042121721004445
#>     Attrib V44    -0.1602688513093802
#>     Attrib V45    -0.10214392553367832
#>     Attrib V46    -4.8797543699204616E-5
#>     Attrib V47    -0.14740714372494626
#>     Attrib V48    0.19045884453316622
#>     Attrib V49    0.2812075886260163
#>     Attrib V5    0.18669333087126178
#>     Attrib V50    -0.5493212201755422
#>     Attrib V51    -0.04247962638498126
#>     Attrib V52    0.0964888310698776
#>     Attrib V53    0.2670541332516288
#>     Attrib V54    0.3412742269317977
#>     Attrib V55    -0.16863528055093344
#>     Attrib V56    -0.03339448492813968
#>     Attrib V57    0.5001847757834157
#>     Attrib V58    0.12365201519176329
#>     Attrib V59    0.533815736001614
#>     Attrib V6    -0.03765929395005595
#>     Attrib V60    0.1957421478490611
#>     Attrib V7    0.1764194480624848
#>     Attrib V8    -0.028251094663425565
#>     Attrib V9    0.46608253117680276
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.16850440010136583
#>     Attrib V1    0.12634429414604859
#>     Attrib V10    -0.08659599440525495
#>     Attrib V11    -0.2088117817175841
#>     Attrib V12    0.15719831377227386
#>     Attrib V13    0.03355887629406803
#>     Attrib V14    -0.003916313121064809
#>     Attrib V15    0.04970012971494642
#>     Attrib V16    0.006283456683177702
#>     Attrib V17    0.14102787091014787
#>     Attrib V18    0.27484871830866553
#>     Attrib V19    0.24615592650535825
#>     Attrib V2    -0.0156537745562994
#>     Attrib V20    -0.004793052809057175
#>     Attrib V21    0.08352896001098226
#>     Attrib V22    0.11610003662274276
#>     Attrib V23    0.1651255822846495
#>     Attrib V24    0.12535922464761962
#>     Attrib V25    -0.06803841337522445
#>     Attrib V26    -0.3993714340438087
#>     Attrib V27    -0.3214771083737104
#>     Attrib V28    -0.4270427279763294
#>     Attrib V29    -0.42455819655569715
#>     Attrib V3    -0.16138469831273478
#>     Attrib V30    0.013197983751945823
#>     Attrib V31    -0.400161360006089
#>     Attrib V32    0.017840646082249754
#>     Attrib V33    0.4443374472395863
#>     Attrib V34    5.475664740655937E-4
#>     Attrib V35    -0.38132893173392735
#>     Attrib V36    -0.5272130445893703
#>     Attrib V37    -0.5160158356182045
#>     Attrib V38    0.17585369219804386
#>     Attrib V39    0.24507999897847663
#>     Attrib V4    0.6725248134097132
#>     Attrib V40    -0.09640595560231043
#>     Attrib V41    0.010210396100677225
#>     Attrib V42    0.17467306375067804
#>     Attrib V43    0.30366548660835757
#>     Attrib V44    -0.05728647048602893
#>     Attrib V45    -0.21176003797922563
#>     Attrib V46    -0.07927604485615153
#>     Attrib V47    -0.11679307477727184
#>     Attrib V48    0.06452789878545555
#>     Attrib V49    0.22264219498755694
#>     Attrib V5    0.21059981545038917
#>     Attrib V50    -0.3966249085753736
#>     Attrib V51    -0.03305015821477613
#>     Attrib V52    0.03168087115568713
#>     Attrib V53    0.28473621033320856
#>     Attrib V54    0.4422221652256112
#>     Attrib V55    -0.1787843352083847
#>     Attrib V56    0.03469971402008362
#>     Attrib V57    0.41086291798652125
#>     Attrib V58    0.0763430171316923
#>     Attrib V59    0.4808224289563784
#>     Attrib V6    0.05052984219613376
#>     Attrib V60    0.28146470410690505
#>     Attrib V7    0.22753528103299145
#>     Attrib V8    -0.0900949195700441
#>     Attrib V9    0.32897938728030846
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.2966406993175438
#>     Attrib V1    0.1675107855450989
#>     Attrib V10    0.07981647835246564
#>     Attrib V11    0.0025871863858667942
#>     Attrib V12    0.35564337553540726
#>     Attrib V13    0.011871252465264135
#>     Attrib V14    -0.06102618559875012
#>     Attrib V15    0.07348206840122082
#>     Attrib V16    -0.06017563375428585
#>     Attrib V17    -0.03556515080476386
#>     Attrib V18    0.09339528865600158
#>     Attrib V19    0.12220272443553873
#>     Attrib V2    0.07682350462785692
#>     Attrib V20    -0.17175276204485487
#>     Attrib V21    -0.04866970455314371
#>     Attrib V22    0.016774865931798028
#>     Attrib V23    0.008979287434220133
#>     Attrib V24    -0.008426373448803787
#>     Attrib V25    -0.09325220273519566
#>     Attrib V26    -0.2267499927374306
#>     Attrib V27    -0.25665753192581947
#>     Attrib V28    -0.3372705137819624
#>     Attrib V29    -0.41322024981520533
#>     Attrib V3    -0.29060726845769624
#>     Attrib V30    0.10353038534582017
#>     Attrib V31    -0.24806081087499612
#>     Attrib V32    0.06532888491140208
#>     Attrib V33    0.5073026019235372
#>     Attrib V34    -0.0031016112568565107
#>     Attrib V35    -0.2998589076183887
#>     Attrib V36    -0.5774760637408219
#>     Attrib V37    -0.5539616756099914
#>     Attrib V38    0.048852829228067746
#>     Attrib V39    0.15819818537803862
#>     Attrib V4    0.6690764348026113
#>     Attrib V40    -0.13752935441983846
#>     Attrib V41    -0.0422510895507756
#>     Attrib V42    0.04209245031487166
#>     Attrib V43    0.25647158485671456
#>     Attrib V44    -0.0440504210699786
#>     Attrib V45    -0.16756767707503176
#>     Attrib V46    -0.04978864420343186
#>     Attrib V47    -0.14699075934363354
#>     Attrib V48    0.1770918206761626
#>     Attrib V49    0.30020620005410636
#>     Attrib V5    0.12288646888406574
#>     Attrib V50    -0.41177388766506184
#>     Attrib V51    -0.07434226037460247
#>     Attrib V52    0.0403944026745091
#>     Attrib V53    0.16742030941416808
#>     Attrib V54    0.44522689608295885
#>     Attrib V55    -0.08453797791877635
#>     Attrib V56    0.006939189004852504
#>     Attrib V57    0.4412601891229957
#>     Attrib V58    0.16801378085500607
#>     Attrib V59    0.46702308208143595
#>     Attrib V6    -0.021913437418153683
#>     Attrib V60    0.26266042235030934
#>     Attrib V7    0.19051186258604288
#>     Attrib V8    -0.03326230897871613
#>     Attrib V9    0.4099034377761935
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.798954279948165
#>     Attrib V1    0.26713672081196793
#>     Attrib V10    0.2612816110585043
#>     Attrib V11    0.19484153618531563
#>     Attrib V12    -0.3335698874085973
#>     Attrib V13    -0.16125403014206657
#>     Attrib V14    0.7633871210665961
#>     Attrib V15    0.8067872451289048
#>     Attrib V16    0.9985445394924987
#>     Attrib V17    0.8975425746434024
#>     Attrib V18    0.21017511653287543
#>     Attrib V19    -0.2530948859109294
#>     Attrib V2    -0.461976833061464
#>     Attrib V20    0.35420642785027057
#>     Attrib V21    0.34223310978959615
#>     Attrib V22    -0.6084906223504927
#>     Attrib V23    -1.5016793704691056
#>     Attrib V24    -0.4778554541907562
#>     Attrib V25    0.6922077025301467
#>     Attrib V26    0.7257014594218539
#>     Attrib V27    0.28081872355403403
#>     Attrib V28    -0.150318512642083
#>     Attrib V29    0.060636869876458756
#>     Attrib V3    0.7834379395783593
#>     Attrib V30    -0.26368466884904485
#>     Attrib V31    1.2702450378274153
#>     Attrib V32    0.04547125218473307
#>     Attrib V33    -0.9975600395846024
#>     Attrib V34    -0.08998757344114704
#>     Attrib V35    0.28790307900835765
#>     Attrib V36    1.001972337374429
#>     Attrib V37    0.6857017738125545
#>     Attrib V38    -0.6096678809172125
#>     Attrib V39    -0.35743429211677297
#>     Attrib V4    -0.9319380906744466
#>     Attrib V40    0.42764748178541623
#>     Attrib V41    -0.1519060174195356
#>     Attrib V42    0.36132869166781983
#>     Attrib V43    -0.7014164554354024
#>     Attrib V44    -0.20791787344726675
#>     Attrib V45    -0.337074178975029
#>     Attrib V46    -0.22221430010205728
#>     Attrib V47    0.11460032511242421
#>     Attrib V48    -0.2436108245594373
#>     Attrib V49    -0.8532968619998458
#>     Attrib V5    0.11419485003378418
#>     Attrib V50    1.288208940076835
#>     Attrib V51    -0.1789428660152251
#>     Attrib V52    -0.749667888988955
#>     Attrib V53    -0.6081929206780563
#>     Attrib V54    -0.6806206659149998
#>     Attrib V55    0.6374435403534622
#>     Attrib V56    0.2925975168208906
#>     Attrib V57    -0.1599817994739306
#>     Attrib V58    -0.34687679621377804
#>     Attrib V59    -0.4619918230670894
#>     Attrib V6    0.22383253667216838
#>     Attrib V60    0.3391756018339916
#>     Attrib V7    0.2524310174661837
#>     Attrib V8    0.6486576035579694
#>     Attrib V9    -0.7756190711883728
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1425099725738664
#>     Attrib V1    0.10895728323222754
#>     Attrib V10    0.05638618450461141
#>     Attrib V11    -0.0028269539263549113
#>     Attrib V12    0.05447282426250287
#>     Attrib V13    0.0563004003813587
#>     Attrib V14    0.03608988203966444
#>     Attrib V15    0.04096786114445987
#>     Attrib V16    0.08325088472230316
#>     Attrib V17    0.0645567287737047
#>     Attrib V18    0.06973847544616162
#>     Attrib V19    0.02695160141649636
#>     Attrib V2    0.04115403570451248
#>     Attrib V20    -0.09242599563125523
#>     Attrib V21    -0.08470256740393238
#>     Attrib V22    -0.07665756681586168
#>     Attrib V23    -0.09669830795152524
#>     Attrib V24    -0.023655313793904523
#>     Attrib V25    -0.0406405517343896
#>     Attrib V26    -0.13132057386360432
#>     Attrib V27    -0.08046666444274814
#>     Attrib V28    -0.035131472502610395
#>     Attrib V29    -0.10289342474916298
#>     Attrib V3    0.06975312661914637
#>     Attrib V30    -0.05717702073293568
#>     Attrib V31    -0.11847752191186217
#>     Attrib V32    0.004110293295102347
#>     Attrib V33    0.09657146440493887
#>     Attrib V34    0.05835607425421512
#>     Attrib V35    -0.009628976670101094
#>     Attrib V36    -0.04336201170739049
#>     Attrib V37    0.00725745288747413
#>     Attrib V38    0.09658837270952433
#>     Attrib V39    0.09107072377096252
#>     Attrib V4    0.25141682545028715
#>     Attrib V40    -0.021452548772180766
#>     Attrib V41    0.03806609546218857
#>     Attrib V42    0.06030145581616472
#>     Attrib V43    0.05892404083552431
#>     Attrib V44    0.015885586441827717
#>     Attrib V45    0.06358126884982933
#>     Attrib V46    0.0889087253995456
#>     Attrib V47    0.05852439305971216
#>     Attrib V48    0.07849210857815514
#>     Attrib V49    0.076392117739392
#>     Attrib V5    0.1404510110259279
#>     Attrib V50    0.03873459872913028
#>     Attrib V51    0.12212501815295211
#>     Attrib V52    0.10611324289666176
#>     Attrib V53    0.1511789067947949
#>     Attrib V54    0.09958852893411814
#>     Attrib V55    0.08021451410633532
#>     Attrib V56    0.08938919462710695
#>     Attrib V57    0.24456044153629342
#>     Attrib V58    0.14046851420575612
#>     Attrib V59    0.16581242429544804
#>     Attrib V6    0.1106973060992172
#>     Attrib V60    0.22413678008058743
#>     Attrib V7    0.10803915121225642
#>     Attrib V8    -0.0032809328189693115
#>     Attrib V9    0.15719838377173118
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.09667779198410156
#>     Attrib V1    0.12938617193814128
#>     Attrib V10    0.10008592575944916
#>     Attrib V11    0.04240084117337005
#>     Attrib V12    0.010261444587684293
#>     Attrib V13    -0.020411796707889594
#>     Attrib V14    0.03452736089820447
#>     Attrib V15    0.11161448264579922
#>     Attrib V16    0.034961928651660534
#>     Attrib V17    0.018787306094743546
#>     Attrib V18    0.010663411904415807
#>     Attrib V19    0.014112644325690338
#>     Attrib V2    0.1339419812315118
#>     Attrib V20    -0.07601072240413544
#>     Attrib V21    -0.06236103874502345
#>     Attrib V22    0.0032041571120885177
#>     Attrib V23    -0.06757587045420031
#>     Attrib V24    -0.031925320571489814
#>     Attrib V25    -0.08496983401915455
#>     Attrib V26    -0.11260531700298813
#>     Attrib V27    -0.043562771234856607
#>     Attrib V28    -0.03762053999114275
#>     Attrib V29    -0.11162707163272195
#>     Attrib V3    0.04094666346625346
#>     Attrib V30    0.010701012221025185
#>     Attrib V31    -0.024340902311393287
#>     Attrib V32    -0.0491211199786112
#>     Attrib V33    0.1301083169449153
#>     Attrib V34    0.010283512028639866
#>     Attrib V35    0.06758966686757778
#>     Attrib V36    -0.015732462209948967
#>     Attrib V37    -0.0024545705920703794
#>     Attrib V38    0.13249389846699758
#>     Attrib V39    0.11441868366823765
#>     Attrib V4    0.20627484148723182
#>     Attrib V40    -0.01132418981409712
#>     Attrib V41    0.044621444291788964
#>     Attrib V42    -0.0013328346808391118
#>     Attrib V43    0.10337552723720968
#>     Attrib V44    0.09346880722146189
#>     Attrib V45    0.1004047744431231
#>     Attrib V46    0.04813443788783807
#>     Attrib V47    0.025885837633869292
#>     Attrib V48    0.12433334762361488
#>     Attrib V49    0.06439701768544759
#>     Attrib V5    0.12643132880869462
#>     Attrib V50    0.022047822608720995
#>     Attrib V51    0.08034615826333127
#>     Attrib V52    0.04416922012297802
#>     Attrib V53    0.062350913855802596
#>     Attrib V54    0.06616077686161559
#>     Attrib V55    0.09181013443359722
#>     Attrib V56    0.09041845564357348
#>     Attrib V57    0.2441097410392051
#>     Attrib V58    0.050523259388901516
#>     Attrib V59    0.12641049485584854
#>     Attrib V6    0.10367863317337107
#>     Attrib V60    0.20211947322117124
#>     Attrib V7    0.06504766867629538
#>     Attrib V8    0.06320780542671751
#>     Attrib V9    0.12517916099496304
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.19482204671681397
#>     Attrib V1    0.09977502316576373
#>     Attrib V10    0.07242326013710403
#>     Attrib V11    0.022164391762354477
#>     Attrib V12    0.011168378178793093
#>     Attrib V13    0.014863781000467516
#>     Attrib V14    0.05878980219844861
#>     Attrib V15    0.028208479071796706
#>     Attrib V16    0.03990990971166161
#>     Attrib V17    -0.005359186604772898
#>     Attrib V18    0.06784114364682124
#>     Attrib V19    -0.040574333182826716
#>     Attrib V2    0.08460977595591412
#>     Attrib V20    -0.029334843804077606
#>     Attrib V21    -0.009112397854273924
#>     Attrib V22    -0.04647529872578052
#>     Attrib V23    -0.04009452877014166
#>     Attrib V24    -0.06906797834275112
#>     Attrib V25    -0.03246944156575194
#>     Attrib V26    -0.04774735010288927
#>     Attrib V27    -0.027682396676845133
#>     Attrib V28    -0.05034753639359479
#>     Attrib V29    -0.08821583211039348
#>     Attrib V3    0.11241057239400386
#>     Attrib V30    -0.05938761106895156
#>     Attrib V31    -0.07310708509280404
#>     Attrib V32    -0.019553536125340557
#>     Attrib V33    0.07411129795914738
#>     Attrib V34    0.06280643835594486
#>     Attrib V35    0.01536673423788238
#>     Attrib V36    0.07821990927514035
#>     Attrib V37    0.019132918596169904
#>     Attrib V38    0.05826680331518063
#>     Attrib V39    0.11343270311969628
#>     Attrib V4    0.14111075301027903
#>     Attrib V40    0.016921002855323056
#>     Attrib V41    -0.0010795144683387885
#>     Attrib V42    0.027916946030724827
#>     Attrib V43    0.057874030114951396
#>     Attrib V44    0.10977764548153005
#>     Attrib V45    0.029292178915543695
#>     Attrib V46    0.061288779476993904
#>     Attrib V47    0.11424112211133085
#>     Attrib V48    0.08806697403584242
#>     Attrib V49    0.1115047077310015
#>     Attrib V5    0.1258199347865971
#>     Attrib V50    -0.0010602247158003975
#>     Attrib V51    0.13749709420961398
#>     Attrib V52    0.06262788900616033
#>     Attrib V53    0.09175969489385352
#>     Attrib V54    0.04260272429108781
#>     Attrib V55    0.09034590773843292
#>     Attrib V56    0.10478904937853296
#>     Attrib V57    0.12657508351039165
#>     Attrib V58    0.08883460459927019
#>     Attrib V59    0.1689193287989703
#>     Attrib V6    0.06324707679660721
#>     Attrib V60    0.2140867937613479
#>     Attrib V7    0.12552949250347553
#>     Attrib V8    0.068784542889956
#>     Attrib V9    0.10990923750249773
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.6390432412285486
#>     Attrib V1    0.18629726097277036
#>     Attrib V10    0.40930552880312976
#>     Attrib V11    0.5531022562588663
#>     Attrib V12    1.2848002293226966
#>     Attrib V13    0.4681814749407207
#>     Attrib V14    -0.1385713178625913
#>     Attrib V15    -0.06572998284270615
#>     Attrib V16    -0.4429302630893486
#>     Attrib V17    -0.797713502591335
#>     Attrib V18    -0.6107229405572976
#>     Attrib V19    -0.31618692086444533
#>     Attrib V2    0.8201251060166806
#>     Attrib V20    -0.7996658519111394
#>     Attrib V21    -0.6403477479845738
#>     Attrib V22    -0.4194357926256493
#>     Attrib V23    -0.4502777601686033
#>     Attrib V24    -0.34418557252852694
#>     Attrib V25    -0.16728538118429068
#>     Attrib V26    0.3793729068518693
#>     Attrib V27    0.6645778406211826
#>     Attrib V28    0.7554168544700429
#>     Attrib V29    0.46239827723929794
#>     Attrib V3    -0.10650314127555326
#>     Attrib V30    0.4934705834788977
#>     Attrib V31    -0.24692140084654124
#>     Attrib V32    -0.0644079035977204
#>     Attrib V33    0.47672491470800404
#>     Attrib V34    0.26677761451068727
#>     Attrib V35    0.12082217621070174
#>     Attrib V36    -0.6786216781979229
#>     Attrib V37    -0.34144865004729574
#>     Attrib V38    -0.1459953458689538
#>     Attrib V39    0.2957614010901372
#>     Attrib V4    0.7757146976500753
#>     Attrib V40    0.14829241455699704
#>     Attrib V41    0.26130546330838944
#>     Attrib V42    -0.38528789090871496
#>     Attrib V43    -0.18630356147616361
#>     Attrib V44    -0.33109308972416057
#>     Attrib V45    0.28765071238976414
#>     Attrib V46    0.32663202298586763
#>     Attrib V47    -0.04595115382275589
#>     Attrib V48    0.322636326707772
#>     Attrib V49    0.7179097147053752
#>     Attrib V5    0.14351085889055318
#>     Attrib V50    -0.8127558600781368
#>     Attrib V51    -0.06387314743238959
#>     Attrib V52    0.20821469917058047
#>     Attrib V53    0.2082646363161679
#>     Attrib V54    -0.0510580370253338
#>     Attrib V55    0.014309134690006818
#>     Attrib V56    -0.3026426062391389
#>     Attrib V57    0.5251340584732307
#>     Attrib V58    0.2706259098105474
#>     Attrib V59    0.6746548053651024
#>     Attrib V6    -0.00747576589224051
#>     Attrib V60    0.33532729602123357
#>     Attrib V7    0.02870392758997635
#>     Attrib V8    -0.3405875058855451
#>     Attrib V9    0.5814707251720598
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.40166156805933945
#>     Attrib V1    0.1459332414390953
#>     Attrib V10    0.6912215955071823
#>     Attrib V11    0.5937017776443071
#>     Attrib V12    1.0274284795037518
#>     Attrib V13    0.3372370455379905
#>     Attrib V14    -0.3678045023441877
#>     Attrib V15    -0.26302029958067813
#>     Attrib V16    -0.43254217811092666
#>     Attrib V17    -0.4979504355237289
#>     Attrib V18    -0.17640365949602393
#>     Attrib V19    0.04086008890597406
#>     Attrib V2    0.5689394441696355
#>     Attrib V20    -0.39534456711420807
#>     Attrib V21    -0.2740205339147857
#>     Attrib V22    0.1976352071181089
#>     Attrib V23    0.3860762311679647
#>     Attrib V24    0.13488557350226282
#>     Attrib V25    0.14972871733621743
#>     Attrib V26    0.533165236910353
#>     Attrib V27    0.7289432279031077
#>     Attrib V28    0.8515919448813983
#>     Attrib V29    0.5156578755889388
#>     Attrib V3    -0.4194020150756827
#>     Attrib V30    0.604860810723605
#>     Attrib V31    -0.371249240381341
#>     Attrib V32    -0.23053113181313942
#>     Attrib V33    0.22388429324378506
#>     Attrib V34    0.03750675346828095
#>     Attrib V35    0.2145551447217362
#>     Attrib V36    -0.17173737948247095
#>     Attrib V37    0.2806715488773153
#>     Attrib V38    0.46957159744159543
#>     Attrib V39    0.4359169906633142
#>     Attrib V4    0.609965431992912
#>     Attrib V40    -0.051466791453766675
#>     Attrib V41    0.11628164998069318
#>     Attrib V42    -0.4851338273068446
#>     Attrib V43    0.07969488096866043
#>     Attrib V44    0.1344079109859553
#>     Attrib V45    0.47168757146752155
#>     Attrib V46    0.48815405889990987
#>     Attrib V47    0.2109030967560852
#>     Attrib V48    0.3302598909236957
#>     Attrib V49    0.6807784375826761
#>     Attrib V5    0.1858004290305821
#>     Attrib V50    -0.7161397407959939
#>     Attrib V51    0.32157660705496305
#>     Attrib V52    0.3142195876015694
#>     Attrib V53    0.07354641471014522
#>     Attrib V54    0.0065144487871647005
#>     Attrib V55    -0.2535191876624306
#>     Attrib V56    -0.25826483502794223
#>     Attrib V57    0.16937523137011093
#>     Attrib V58    -0.04613315605740872
#>     Attrib V59    0.39942740785296
#>     Attrib V6    -0.04448140303456758
#>     Attrib V60    0.27991301266901064
#>     Attrib V7    -0.00177218579006937
#>     Attrib V8    -0.5430481453103603
#>     Attrib V9    0.7444191807334822
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.6187441286266311
#>     Attrib V1    0.19580154826383056
#>     Attrib V10    -0.13310491539884364
#>     Attrib V11    -0.10063691664834165
#>     Attrib V12    -0.6317347947466778
#>     Attrib V13    -0.42631445805310664
#>     Attrib V14    0.5737894993318824
#>     Attrib V15    0.45731168965294283
#>     Attrib V16    0.6655424221615154
#>     Attrib V17    0.601797419395098
#>     Attrib V18    -0.12957560144786479
#>     Attrib V19    -0.6219264087357701
#>     Attrib V2    -0.6826805750746674
#>     Attrib V20    0.11816389441341703
#>     Attrib V21    0.2264762417568016
#>     Attrib V22    -0.7351604114005458
#>     Attrib V23    -1.1676060935572696
#>     Attrib V24    -0.250809115735512
#>     Attrib V25    0.5148331284584006
#>     Attrib V26    0.32471680710688394
#>     Attrib V27    0.049380723119754666
#>     Attrib V28    -0.207218786276885
#>     Attrib V29    0.040041213286381744
#>     Attrib V3    0.7437154133146644
#>     Attrib V30    -0.3783954303556685
#>     Attrib V31    1.1671669124360695
#>     Attrib V32    0.11373433227018666
#>     Attrib V33    -0.8681710959722488
#>     Attrib V34    -0.1081414694870116
#>     Attrib V35    0.1646100246536249
#>     Attrib V36    0.9271921716115666
#>     Attrib V37    0.5866279142838438
#>     Attrib V38    -0.6893198660012829
#>     Attrib V39    -0.48023309276495435
#>     Attrib V4    -0.8815933192097837
#>     Attrib V40    0.29398120461105204
#>     Attrib V41    -0.12453259873452512
#>     Attrib V42    0.2530572123137247
#>     Attrib V43    -0.7115516518759166
#>     Attrib V44    -0.2179756559165723
#>     Attrib V45    -0.5132369611105951
#>     Attrib V46    -0.4288826744105663
#>     Attrib V47    -0.1060095552810041
#>     Attrib V48    -0.33972978085461314
#>     Attrib V49    -1.1040762616706246
#>     Attrib V5    0.06544712803218485
#>     Attrib V50    1.3167073235277709
#>     Attrib V51    -0.21986623687875398
#>     Attrib V52    -0.6138542096972931
#>     Attrib V53    -0.4573464261089466
#>     Attrib V54    -0.47915332079090284
#>     Attrib V55    0.6230555117684606
#>     Attrib V56    0.2521520882622583
#>     Attrib V57    0.002729951028067298
#>     Attrib V58    -0.20479606727985336
#>     Attrib V59    -0.20339585866494372
#>     Attrib V6    0.33868008391076954
#>     Attrib V60    0.535908296249709
#>     Attrib V7    0.4099971893129196
#>     Attrib V8    0.63106606267093
#>     Attrib V9    -0.9483963134614515
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.1764802974164796
#>     Attrib V1    0.20816642816124611
#>     Attrib V10    -0.09673299436631728
#>     Attrib V11    -0.18652328228742762
#>     Attrib V12    0.12466492149230671
#>     Attrib V13    -0.04164618602059329
#>     Attrib V14    0.08144209589790152
#>     Attrib V15    0.0857581054581649
#>     Attrib V16    0.11273610314477936
#>     Attrib V17    0.09043400863227477
#>     Attrib V18    0.15248342912409873
#>     Attrib V19    0.1319884965696802
#>     Attrib V2    0.05642181336367611
#>     Attrib V20    -0.018433294067901014
#>     Attrib V21    0.055661229504048365
#>     Attrib V22    0.011279861740413325
#>     Attrib V23    -0.08501771296555168
#>     Attrib V24    -0.005874947491099587
#>     Attrib V25    -0.22799145555491213
#>     Attrib V26    -0.4679062472744234
#>     Attrib V27    -0.4113056343483508
#>     Attrib V28    -0.4561496193950454
#>     Attrib V29    -0.3992344035103577
#>     Attrib V3    -0.14148429091129605
#>     Attrib V30    -0.07884386911308565
#>     Attrib V31    -0.27864525393793665
#>     Attrib V32    -0.016493438205662774
#>     Attrib V33    0.35011725834341234
#>     Attrib V34    -0.017237935010519213
#>     Attrib V35    -0.2879824860484617
#>     Attrib V36    -0.3982030580474968
#>     Attrib V37    -0.41880997916612284
#>     Attrib V38    0.10727900841446202
#>     Attrib V39    0.10129409094414284
#>     Attrib V4    0.6154337927690579
#>     Attrib V40    -0.12680948188214702
#>     Attrib V41    -0.09134383924440466
#>     Attrib V42    0.09248747265533253
#>     Attrib V43    0.3180917684502356
#>     Attrib V44    -0.054086366377689085
#>     Attrib V45    -0.19134679868732893
#>     Attrib V46    -0.059314236001037156
#>     Attrib V47    -0.16697775260770797
#>     Attrib V48    0.13042543676362173
#>     Attrib V49    0.17293938020918068
#>     Attrib V5    0.1805431016982146
#>     Attrib V50    -0.2457184949487822
#>     Attrib V51    -0.06352590488250846
#>     Attrib V52    0.029552202917872653
#>     Attrib V53    0.2046869490359276
#>     Attrib V54    0.45359669531896213
#>     Attrib V55    -0.03228939791681219
#>     Attrib V56    0.08809468180839292
#>     Attrib V57    0.45478337273579417
#>     Attrib V58    0.17767970406394856
#>     Attrib V59    0.444973392774823
#>     Attrib V6    0.04114743197940678
#>     Attrib V60    0.3122609730425751
#>     Attrib V7    0.1748225261775449
#>     Attrib V8    -0.07145208986247631
#>     Attrib V9    0.24759448729555442
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.30070325368137085
#>     Attrib V1    0.06399569402154319
#>     Attrib V10    0.1534922611994382
#>     Attrib V11    -0.18488141356795826
#>     Attrib V12    0.3177772983956201
#>     Attrib V13    -0.15884521076239544
#>     Attrib V14    -0.32972105512259886
#>     Attrib V15    0.024488237674339195
#>     Attrib V16    -0.004057947672831237
#>     Attrib V17    0.34890763099063493
#>     Attrib V18    0.6880546784587923
#>     Attrib V19    0.753674599353702
#>     Attrib V2    -0.12854932388603424
#>     Attrib V20    -0.06030384187751439
#>     Attrib V21    -0.005824170870577765
#>     Attrib V22    0.41004152752957146
#>     Attrib V23    0.6422742981051265
#>     Attrib V24    0.4101186169890992
#>     Attrib V25    -0.14091109683138692
#>     Attrib V26    -0.4534968450635528
#>     Attrib V27    -0.6454881854891933
#>     Attrib V28    -0.8887761913149967
#>     Attrib V29    -0.9019886525936066
#>     Attrib V3    -0.6495083173462877
#>     Attrib V30    0.3225151194521233
#>     Attrib V31    -0.43711982702811947
#>     Attrib V32    0.27734597502728414
#>     Attrib V33    0.9694699982016743
#>     Attrib V34    -0.11458990390170472
#>     Attrib V35    -0.8808563762993022
#>     Attrib V36    -1.3665887906747138
#>     Attrib V37    -1.460296588453035
#>     Attrib V38    0.38407178615112636
#>     Attrib V39    0.3999017640927064
#>     Attrib V4    1.061267226026039
#>     Attrib V40    -0.31681489139789754
#>     Attrib V41    -0.1603348138665715
#>     Attrib V42    0.41332576434213514
#>     Attrib V43    1.0796626277910653
#>     Attrib V44    0.11703089018740755
#>     Attrib V45    -0.30187623209458164
#>     Attrib V46    -0.16698625382347063
#>     Attrib V47    -0.18161835896341086
#>     Attrib V48    0.012519605086013453
#>     Attrib V49    0.39685048236980547
#>     Attrib V5    0.25258050774070784
#>     Attrib V50    -0.8682149541788139
#>     Attrib V51    0.08876961549154821
#>     Attrib V52    0.3491477810533333
#>     Attrib V53    0.5161244738048044
#>     Attrib V54    0.8014007088212599
#>     Attrib V55    -0.4481535199254318
#>     Attrib V56    0.20666639387205743
#>     Attrib V57    0.37856262891934594
#>     Attrib V58    0.11479929978796163
#>     Attrib V59    0.25601352552491863
#>     Attrib V6    -0.0987376912419759
#>     Attrib V60    -0.05350826916118085
#>     Attrib V7    0.18327089849909473
#>     Attrib V8    -0.027019680370113906
#>     Attrib V9    0.9510849733981305
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.056136308300083516
#>     Attrib V1    -0.06738840233826747
#>     Attrib V10    -0.6419752206973746
#>     Attrib V11    -0.2714166948435061
#>     Attrib V12    -0.35972345538726125
#>     Attrib V13    -0.020926525722817644
#>     Attrib V14    0.5405480185940561
#>     Attrib V15    0.2050480964136483
#>     Attrib V16    0.09556575832552239
#>     Attrib V17    -0.12464877196913922
#>     Attrib V18    -0.6031668597074187
#>     Attrib V19    -0.7799466158757156
#>     Attrib V2    -0.22991693237035196
#>     Attrib V20    -0.22405058034932954
#>     Attrib V21    -0.20114577606247028
#>     Attrib V22    -0.8887295155882238
#>     Attrib V23    -1.1846688149628857
#>     Attrib V24    -0.6060884087662791
#>     Attrib V25    -0.14789657083728705
#>     Attrib V26    0.006314954705132245
#>     Attrib V27    0.12768888895051664
#>     Attrib V28    0.13960723668133151
#>     Attrib V29    0.2570294604247665
#>     Attrib V3    0.7769621854406799
#>     Attrib V30    -0.6218774491126756
#>     Attrib V31    0.6216463485244488
#>     Attrib V32    -0.039241668526317365
#>     Attrib V33    -0.7753005385529698
#>     Attrib V34    -0.01353575270429215
#>     Attrib V35    0.14941456760353178
#>     Attrib V36    0.5169674309400308
#>     Attrib V37    0.33629589343541955
#>     Attrib V38    -0.8145138258525905
#>     Attrib V39    -0.5519789826055936
#>     Attrib V4    -0.8101228399263677
#>     Attrib V40    0.37146858745528516
#>     Attrib V41    0.26070695445425224
#>     Attrib V42    -0.013914278516654026
#>     Attrib V43    -0.8916434109802218
#>     Attrib V44    -0.49725336429962386
#>     Attrib V45    -0.30151081502091104
#>     Attrib V46    -0.23639444627334397
#>     Attrib V47    0.01576451193048976
#>     Attrib V48    0.1411137171603558
#>     Attrib V49    -0.48497992611790863
#>     Attrib V5    -0.15201325991598083
#>     Attrib V50    1.0042404198447976
#>     Attrib V51    -0.3977039680608421
#>     Attrib V52    -0.5406895136896476
#>     Attrib V53    -0.39774213672930075
#>     Attrib V54    -0.5309412916691396
#>     Attrib V55    0.4871515737423476
#>     Attrib V56    0.059768345175767686
#>     Attrib V57    0.2190622543277077
#>     Attrib V58    0.024896298021069418
#>     Attrib V59    0.19105726356134722
#>     Attrib V6    0.13244767638275687
#>     Attrib V60    0.14492073595505142
#>     Attrib V7    -0.0699689916868974
#>     Attrib V8    0.17093218263434734
#>     Attrib V9    -1.131812290474048
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.7010300875497907
#>     Attrib V1    0.41056599993915444
#>     Attrib V10    1.007994337228855
#>     Attrib V11    1.2231686700150801
#>     Attrib V12    1.9026136784205172
#>     Attrib V13    0.7777398506209146
#>     Attrib V14    -0.5765204379837234
#>     Attrib V15    -0.3811704304343755
#>     Attrib V16    -0.6584986070001851
#>     Attrib V17    -1.1230208552746865
#>     Attrib V18    -0.6798124712155318
#>     Attrib V19    -0.2459879229242982
#>     Attrib V2    1.515756583256688
#>     Attrib V20    -0.644865901977612
#>     Attrib V21    -0.39291067093884835
#>     Attrib V22    0.3018976887367826
#>     Attrib V23    0.5793401893169139
#>     Attrib V24    -0.10818590744192429
#>     Attrib V25    -0.01984126212111049
#>     Attrib V26    1.2460416549924453
#>     Attrib V27    1.332309404140341
#>     Attrib V28    1.598517881771066
#>     Attrib V29    1.2052110379248304
#>     Attrib V3    -0.21665187391523058
#>     Attrib V30    1.0322966702167302
#>     Attrib V31    -0.6409126231673773
#>     Attrib V32    -0.4109960164207639
#>     Attrib V33    0.16416535313452219
#>     Attrib V34    0.07251473048824336
#>     Attrib V35    0.3257235617963627
#>     Attrib V36    -0.6346897055055931
#>     Attrib V37    0.4163709036910115
#>     Attrib V38    0.18798820669022512
#>     Attrib V39    0.7864429537022044
#>     Attrib V4    0.8118549980377658
#>     Attrib V40    0.3620154842949999
#>     Attrib V41    0.7076241028438489
#>     Attrib V42    -0.6871700611143688
#>     Attrib V43    -0.20069090067560502
#>     Attrib V44    0.030858580207668112
#>     Attrib V45    0.8284926742362608
#>     Attrib V46    0.798977051160228
#>     Attrib V47    0.24133147769510566
#>     Attrib V48    0.1693138943348323
#>     Attrib V49    0.8991034941287063
#>     Attrib V5    0.12545992356447627
#>     Attrib V50    -1.2692934390029484
#>     Attrib V51    0.49139871338073343
#>     Attrib V52    0.667453252271715
#>     Attrib V53    0.4207705022330811
#>     Attrib V54    -0.3933051176548772
#>     Attrib V55    -0.23173947165556275
#>     Attrib V56    -0.26122392396767113
#>     Attrib V57    0.3250495245918428
#>     Attrib V58    0.02014703873599502
#>     Attrib V59    0.6757380884926547
#>     Attrib V6    0.0494573202712052
#>     Attrib V60    0.5111255060383553
#>     Attrib V7    -0.20401985543225548
#>     Attrib V8    -0.7512069561080945
#>     Attrib V9    0.979541167834234
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.1539179201086304
#>     Attrib V1    0.14503663083917925
#>     Attrib V10    0.03015238693744152
#>     Attrib V11    -0.02259883794201723
#>     Attrib V12    0.09413185883409575
#>     Attrib V13    0.012543123718384609
#>     Attrib V14    0.11698491260532619
#>     Attrib V15    0.054407845603835124
#>     Attrib V16    0.031041506978755108
#>     Attrib V17    0.0461074055114593
#>     Attrib V18    -0.017186352145294986
#>     Attrib V19    0.04316945797146863
#>     Attrib V2    0.11066845285084606
#>     Attrib V20    -0.06497614839459721
#>     Attrib V21    -0.0475790140620255
#>     Attrib V22    -0.07416027396892136
#>     Attrib V23    -0.07463745516906899
#>     Attrib V24    -0.07932882417552069
#>     Attrib V25    -0.07551223883578359
#>     Attrib V26    -0.14657666556640878
#>     Attrib V27    -0.03540912376292594
#>     Attrib V28    -0.004345385758588778
#>     Attrib V29    -0.07126461279257336
#>     Attrib V3    0.02038372105674873
#>     Attrib V30    -0.02771521475810477
#>     Attrib V31    -0.15162388282063993
#>     Attrib V32    -0.06878915703271782
#>     Attrib V33    0.13580846196930413
#>     Attrib V34    0.0075398559325661795
#>     Attrib V35    0.04319253887266274
#>     Attrib V36    0.016530632228386324
#>     Attrib V37    0.04731350708644119
#>     Attrib V38    0.10302441316887287
#>     Attrib V39    0.117521947549585
#>     Attrib V4    0.3131172738744504
#>     Attrib V40    -0.023138492059611035
#>     Attrib V41    -0.004876518104585391
#>     Attrib V42    0.027291796280847862
#>     Attrib V43    0.0848110191005871
#>     Attrib V44    0.06509163101270418
#>     Attrib V45    0.06188783055652947
#>     Attrib V46    0.05702153645333585
#>     Attrib V47    0.03461426875937837
#>     Attrib V48    0.14553296280200803
#>     Attrib V49    0.10787479029387967
#>     Attrib V5    0.10679974541026836
#>     Attrib V50    0.007071051755393985
#>     Attrib V51    0.05480379804603644
#>     Attrib V52    0.057800344004730136
#>     Attrib V53    0.10033397886848205
#>     Attrib V54    0.12675218147625683
#>     Attrib V55    0.06304131227687162
#>     Attrib V56    0.08947205098639313
#>     Attrib V57    0.28522714753944256
#>     Attrib V58    0.10858036192033421
#>     Attrib V59    0.2557025136523199
#>     Attrib V6    0.12421595220102441
#>     Attrib V60    0.29383601898117007
#>     Attrib V7    0.08677166801858588
#>     Attrib V8    0.03674763683380205
#>     Attrib V9    0.11647926695985097
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.49459110192392763
#>     Attrib V1    0.11287640995782675
#>     Attrib V10    0.3693683439421736
#>     Attrib V11    0.17618281536398203
#>     Attrib V12    0.6444010744638198
#>     Attrib V13    0.1573458446712634
#>     Attrib V14    -0.2622502287979084
#>     Attrib V15    -0.07970755912947729
#>     Attrib V16    -0.1715255050488911
#>     Attrib V17    -0.22534113254375557
#>     Attrib V18    0.11602957598000499
#>     Attrib V19    0.17512648325080685
#>     Attrib V2    0.16447935802085248
#>     Attrib V20    -0.37994185691166404
#>     Attrib V21    -0.18262929144285983
#>     Attrib V22    0.08941291384614229
#>     Attrib V23    0.14972351977392825
#>     Attrib V24    0.2647692492111666
#>     Attrib V25    0.1283683173165746
#>     Attrib V26    0.14041057673098545
#>     Attrib V27    -0.020622852159156685
#>     Attrib V28    -0.21647682030623885
#>     Attrib V29    -0.3110000850394787
#>     Attrib V3    -0.4248107586590779
#>     Attrib V30    0.32134054117930194
#>     Attrib V31    -0.1062518961799696
#>     Attrib V32    0.22557844533813046
#>     Attrib V33    0.5869455233025653
#>     Attrib V34    0.09016811068014434
#>     Attrib V35    -0.312741874640196
#>     Attrib V36    -0.7602014097358938
#>     Attrib V37    -0.7261800764652385
#>     Attrib V38    0.01689449164560841
#>     Attrib V39    0.1763250861782962
#>     Attrib V4    0.7205793100015572
#>     Attrib V40    -0.14337730693479014
#>     Attrib V41    0.09611204262163926
#>     Attrib V42    0.033477857946587815
#>     Attrib V43    0.2737884427423568
#>     Attrib V44    -0.0861371881321228
#>     Attrib V45    -0.03648259150693115
#>     Attrib V46    -0.03735894776805998
#>     Attrib V47    -0.18886845049730425
#>     Attrib V48    0.11809679302664255
#>     Attrib V49    0.3285885252364799
#>     Attrib V5    0.14679427432859238
#>     Attrib V50    -0.6283662409598388
#>     Attrib V51    0.015760393569328086
#>     Attrib V52    0.13282952281072563
#>     Attrib V53    0.24760861200522757
#>     Attrib V54    0.3566474554049215
#>     Attrib V55    -0.17733217224431516
#>     Attrib V56    -0.14839067249892277
#>     Attrib V57    0.31186606898686764
#>     Attrib V58    0.10509996614740394
#>     Attrib V59    0.44041127861960233
#>     Attrib V6    0.019929112467154106
#>     Attrib V60    0.15917858533706536
#>     Attrib V7    0.1999180146062927
#>     Attrib V8    -0.01964924927452182
#>     Attrib V9    0.6980125436352556
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.6985336655055281
#>     Attrib V1    0.33524315517695225
#>     Attrib V10    -0.19556670381625443
#>     Attrib V11    -0.357587840674504
#>     Attrib V12    -0.7901175261283757
#>     Attrib V13    -0.7407063040957256
#>     Attrib V14    0.7358089851021176
#>     Attrib V15    0.703613933440013
#>     Attrib V16    0.8777642386966447
#>     Attrib V17    0.9516199319624087
#>     Attrib V18    0.4057951395194108
#>     Attrib V19    -1.1068700167870398
#>     Attrib V2    -0.982363421913652
#>     Attrib V20    -0.5247046592749034
#>     Attrib V21    -0.07487458314280943
#>     Attrib V22    -0.6821853602432091
#>     Attrib V23    -1.2968324531696822
#>     Attrib V24    -0.3725219988308659
#>     Attrib V25    0.7379315197813573
#>     Attrib V26    0.5139769295596758
#>     Attrib V27    0.04707770784068566
#>     Attrib V28    -0.28512873393468635
#>     Attrib V29    0.1608607390565713
#>     Attrib V3    0.7825209194009172
#>     Attrib V30    -0.18369429262467485
#>     Attrib V31    1.580966076841245
#>     Attrib V32    0.783371961133836
#>     Attrib V33    -0.520188099999955
#>     Attrib V34    -0.10334680066963794
#>     Attrib V35    0.14361295603022037
#>     Attrib V36    1.2896451019741362
#>     Attrib V37    0.9367156416314455
#>     Attrib V38    -0.6219611704916806
#>     Attrib V39    -0.44314628236819836
#>     Attrib V4    -0.8966803979523083
#>     Attrib V40    0.5576448612439588
#>     Attrib V41    0.23360217817405615
#>     Attrib V42    0.8017501429662028
#>     Attrib V43    -0.43098197781776154
#>     Attrib V44    -0.05922977587217368
#>     Attrib V45    -0.7073656576801381
#>     Attrib V46    -0.5494607607580027
#>     Attrib V47    -0.10880142953759996
#>     Attrib V48    -0.20888957471147554
#>     Attrib V49    -1.2443751510583503
#>     Attrib V5    0.1905834565743095
#>     Attrib V50    1.3740434025175319
#>     Attrib V51    -0.28328781601065617
#>     Attrib V52    -1.0426851518002387
#>     Attrib V53    -0.8305129015014988
#>     Attrib V54    -0.40322218456818815
#>     Attrib V55    0.23826446517963246
#>     Attrib V56    0.28559265178742493
#>     Attrib V57    -0.048978255166839756
#>     Attrib V58    -0.40889379701259154
#>     Attrib V59    -0.3609294883751301
#>     Attrib V6    0.4848559503964364
#>     Attrib V60    0.997854761839956
#>     Attrib V7    0.4147423117229771
#>     Attrib V8    0.6608631913890897
#>     Attrib V9    -1.037225011809771
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.24387931028852977
#>     Attrib V1    0.07530775489219642
#>     Attrib V10    0.059227872764857255
#>     Attrib V11    0.04047065790695114
#>     Attrib V12    0.31509423913941786
#>     Attrib V13    0.028704610634576844
#>     Attrib V14    0.002734286718744051
#>     Attrib V15    0.025445688128137092
#>     Attrib V16    -0.037630379089306075
#>     Attrib V17    -0.015635199326399684
#>     Attrib V18    0.13410735641856777
#>     Attrib V19    0.15257858711145114
#>     Attrib V2    0.05883630141914932
#>     Attrib V20    -0.062233281322736256
#>     Attrib V21    0.02642297929956348
#>     Attrib V22    0.11996494481920052
#>     Attrib V23    0.061872375004975964
#>     Attrib V24    0.1256104038772872
#>     Attrib V25    -0.024052313260518175
#>     Attrib V26    -0.28258174729909424
#>     Attrib V27    -0.21476252814014077
#>     Attrib V28    -0.21287949732897846
#>     Attrib V29    -0.21829576747015547
#>     Attrib V3    -0.2034144930988665
#>     Attrib V30    0.0755405403432717
#>     Attrib V31    -0.21928761037031277
#>     Attrib V32    0.08834947285285928
#>     Attrib V33    0.42669964428571683
#>     Attrib V34    -0.006337219441508104
#>     Attrib V35    -0.2710386204033967
#>     Attrib V36    -0.49073837772757406
#>     Attrib V37    -0.4345435196601301
#>     Attrib V38    0.13657168479454904
#>     Attrib V39    0.18772733777507203
#>     Attrib V4    0.5650718495403784
#>     Attrib V40    -0.13592376787127966
#>     Attrib V41    -0.018791714486813434
#>     Attrib V42    0.024392268546693317
#>     Attrib V43    0.3061944070656141
#>     Attrib V44    -0.0655581336215924
#>     Attrib V45    -0.006547554974962999
#>     Attrib V46    -0.014133524451454273
#>     Attrib V47    -0.06171749806894659
#>     Attrib V48    0.12586636593704406
#>     Attrib V49    0.24260500707094365
#>     Attrib V5    0.09380859043392087
#>     Attrib V50    -0.36236785483077105
#>     Attrib V51    0.018685607914466277
#>     Attrib V52    0.13186281647152448
#>     Attrib V53    0.18707521670836263
#>     Attrib V54    0.32792571065818926
#>     Attrib V55    -0.07227290085454248
#>     Attrib V56    0.012973177695813862
#>     Attrib V57    0.37244215202446335
#>     Attrib V58    0.09165418019120178
#>     Attrib V59    0.3648852552029021
#>     Attrib V6    0.007340997566826171
#>     Attrib V60    0.16074637100022193
#>     Attrib V7    0.1489359776598654
#>     Attrib V8    8.410187108496733E-4
#>     Attrib V9    0.39113397884950035
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.001038293292336276
#>     Attrib V1    0.19513254004135122
#>     Attrib V10    0.08750113356166726
#>     Attrib V11    0.020689543164311874
#>     Attrib V12    0.22104256953584023
#>     Attrib V13    0.11330989220551273
#>     Attrib V14    0.07912670379445695
#>     Attrib V15    0.07411209141141976
#>     Attrib V16    5.120761132078525E-4
#>     Attrib V17    0.006815056137125683
#>     Attrib V18    -0.0021146567985888226
#>     Attrib V19    -0.018091762390590512
#>     Attrib V2    0.1239813996028502
#>     Attrib V20    -0.13541189223991174
#>     Attrib V21    -0.04235809089197846
#>     Attrib V22    -0.07077754973702499
#>     Attrib V23    -0.07564030289635304
#>     Attrib V24    -0.07113923168276494
#>     Attrib V25    -0.060250586667010365
#>     Attrib V26    -0.12275240626633806
#>     Attrib V27    -0.08227597903028709
#>     Attrib V28    -0.05250701400863592
#>     Attrib V29    -0.18359274078342214
#>     Attrib V3    -0.011245968044133069
#>     Attrib V30    0.010365285632367086
#>     Attrib V31    -0.13335041024556465
#>     Attrib V32    -0.059609660236044644
#>     Attrib V33    0.1610312058148041
#>     Attrib V34    -0.01764083814191135
#>     Attrib V35    -0.08883565841501652
#>     Attrib V36    -0.19722724751940002
#>     Attrib V37    -0.11880899370383254
#>     Attrib V38    0.08072836719161167
#>     Attrib V39    0.15533335207424567
#>     Attrib V4    0.4680104768436744
#>     Attrib V40    -0.05416854074804717
#>     Attrib V41    0.0079521916687875
#>     Attrib V42    0.05747962528057312
#>     Attrib V43    0.0882380176226276
#>     Attrib V44    -0.0390531656105223
#>     Attrib V45    0.022709435459953357
#>     Attrib V46    0.03905423136421028
#>     Attrib V47    -0.02385413965124642
#>     Attrib V48    0.15237938233763101
#>     Attrib V49    0.1408918287808621
#>     Attrib V5    0.12054512509632041
#>     Attrib V50    -0.12700047974775963
#>     Attrib V51    0.032779497917764466
#>     Attrib V52    0.08357784765605403
#>     Attrib V53    0.16695197175579224
#>     Attrib V54    0.23592413442762467
#>     Attrib V55    0.015255500662734943
#>     Attrib V56    0.09630821817731794
#>     Attrib V57    0.3248377685507513
#>     Attrib V58    0.15983028591231094
#>     Attrib V59    0.4124755172664462
#>     Attrib V6    0.0923001654544993
#>     Attrib V60    0.30408320256138055
#>     Attrib V7    0.12339300994673122
#>     Attrib V8    0.007275194475278726
#>     Attrib V9    0.18286401437575886
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.27883466370159654
#>     Attrib V1    0.15502314407802373
#>     Attrib V10    -0.12154868990548083
#>     Attrib V11    -0.6528637335831711
#>     Attrib V12    -0.18434106793530514
#>     Attrib V13    -0.3038046507745446
#>     Attrib V14    -0.1406938171204323
#>     Attrib V15    0.1259674310252057
#>     Attrib V16    0.013853379319200727
#>     Attrib V17    0.24666283483682486
#>     Attrib V18    0.48554362237813103
#>     Attrib V19    0.5096598623984767
#>     Attrib V2    -0.33125209646767384
#>     Attrib V20    0.023055744749878038
#>     Attrib V21    0.11698186609496306
#>     Attrib V22    0.3600282264542565
#>     Attrib V23    0.5051668651327827
#>     Attrib V24    0.5116668613981246
#>     Attrib V25    -0.28469018150136444
#>     Attrib V26    -1.1247583233482694
#>     Attrib V27    -1.1372040626931974
#>     Attrib V28    -1.198247150376816
#>     Attrib V29    -1.4151614661481873
#>     Attrib V3    -0.5707333307286528
#>     Attrib V30    -0.2715162640401361
#>     Attrib V31    -0.6072820781300582
#>     Attrib V32    0.06497116872277656
#>     Attrib V33    1.0086304327524644
#>     Attrib V34    0.14772112437734086
#>     Attrib V35    -0.6231475966617066
#>     Attrib V36    -1.0073201042635256
#>     Attrib V37    -1.3106748614621804
#>     Attrib V38    0.46671543138145005
#>     Attrib V39    0.23531680513729933
#>     Attrib V4    1.0328116744550424
#>     Attrib V40    -0.4642139914887507
#>     Attrib V41    -0.3491181617446244
#>     Attrib V42    0.432648262550261
#>     Attrib V43    1.09477739762763
#>     Attrib V44    0.08782947583906851
#>     Attrib V45    -0.5291043620103579
#>     Attrib V46    -0.21529462871831995
#>     Attrib V47    -0.24119654419544748
#>     Attrib V48    0.18858720364243206
#>     Attrib V49    0.3383317276385173
#>     Attrib V5    0.2558185990607522
#>     Attrib V50    -0.5384965742024437
#>     Attrib V51    -0.0021119852078037914
#>     Attrib V52    0.1201273159700762
#>     Attrib V53    0.5458452421784765
#>     Attrib V54    1.230732222994644
#>     Attrib V55    -0.29440204399141895
#>     Attrib V56    0.05540796474507298
#>     Attrib V57    0.6559053446452547
#>     Attrib V58    0.16023495991287678
#>     Attrib V59    0.487467799358672
#>     Attrib V6    -0.04309902923830595
#>     Attrib V60    0.39681823193587545
#>     Attrib V7    0.42230430830883414
#>     Attrib V8    -0.039935235944652425
#>     Attrib V9    0.7514492473391258
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.05783672758845584
#>     Attrib V1    0.2003087024819509
#>     Attrib V10    -0.0758325263195371
#>     Attrib V11    -0.06971311521111218
#>     Attrib V12    0.11621318351033569
#>     Attrib V13    -0.02519087091445183
#>     Attrib V14    0.11317089868491122
#>     Attrib V15    0.10908854226905487
#>     Attrib V16    0.07431777506800469
#>     Attrib V17    0.022646245026659254
#>     Attrib V18    0.15520673824094966
#>     Attrib V19    0.06426139191892098
#>     Attrib V2    0.05788251068383115
#>     Attrib V20    -0.010184416428140665
#>     Attrib V21    0.058852567601647525
#>     Attrib V22    8.165742895342566E-4
#>     Attrib V23    -0.0175063808749504
#>     Attrib V24    -0.05316102785738601
#>     Attrib V25    -0.20669081007202356
#>     Attrib V26    -0.33588680856874864
#>     Attrib V27    -0.2512447544719084
#>     Attrib V28    -0.19951393565445869
#>     Attrib V29    -0.25342861608751793
#>     Attrib V3    -0.027378834026404023
#>     Attrib V30    0.0026160979831075975
#>     Attrib V31    -0.28778114251399267
#>     Attrib V32    -0.06041679726606531
#>     Attrib V33    0.28471551546482426
#>     Attrib V34    0.009885502027363121
#>     Attrib V35    -0.15362659124326583
#>     Attrib V36    -0.18209715129130158
#>     Attrib V37    -0.20610551040638064
#>     Attrib V38    0.13992502407878163
#>     Attrib V39    0.1450734275277305
#>     Attrib V4    0.4573516755591613
#>     Attrib V40    -0.13797366065693678
#>     Attrib V41    -0.08130934323755774
#>     Attrib V42    0.07493890696031537
#>     Attrib V43    0.14291404691877332
#>     Attrib V44    0.034887608579749624
#>     Attrib V45    0.023145886265679313
#>     Attrib V46    0.013663595956456207
#>     Attrib V47    -0.049743355250905175
#>     Attrib V48    0.0747952123012812
#>     Attrib V49    0.1935970212114215
#>     Attrib V5    0.15735971928782372
#>     Attrib V50    -0.17777493802840125
#>     Attrib V51    0.017612740854756236
#>     Attrib V52    0.08128510640118099
#>     Attrib V53    0.17590906555321187
#>     Attrib V54    0.27002685300673657
#>     Attrib V55    -0.024434929280099268
#>     Attrib V56    0.038969763704764175
#>     Attrib V57    0.3567457254382955
#>     Attrib V58    0.15490530217602008
#>     Attrib V59    0.34334132072637213
#>     Attrib V6    0.07362960783679931
#>     Attrib V60    0.24599231912703134
#>     Attrib V7    0.16416756785021014
#>     Attrib V8    0.03261825883846131
#>     Attrib V9    0.2312199144083048
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
