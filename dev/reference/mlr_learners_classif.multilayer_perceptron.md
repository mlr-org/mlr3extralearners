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
#>     Threshold    -0.27768808872911593
#>     Node 2    2.365858143687699
#>     Node 3    1.6817140062433842
#>     Node 4    1.367082625785765
#>     Node 5    -2.2182044291047607
#>     Node 6    1.876895908613956
#>     Node 7    2.1694865770216722
#>     Node 8    1.6505697395778143
#>     Node 9    2.3828215859875783
#>     Node 10    -1.4204881590389327
#>     Node 11    1.5801332522716287
#>     Node 12    1.806137108372601
#>     Node 13    0.3602223976038506
#>     Node 14    1.5989768431740696
#>     Node 15    -2.9624168323525555
#>     Node 16    0.4376509770822295
#>     Node 17    1.448086473630273
#>     Node 18    -1.2578654886337621
#>     Node 19    1.5684247850242874
#>     Node 20    2.018515898677554
#>     Node 21    -1.613685761115393
#>     Node 22    0.6737726981441566
#>     Node 23    1.1801230701603413
#>     Node 24    -1.6255443135777685
#>     Node 25    4.031921252195567
#>     Node 26    0.5446734486640673
#>     Node 27    1.7114812769766958
#>     Node 28    -1.7928618232741842
#>     Node 29    1.3874215233747318
#>     Node 30    -0.42915558723536046
#>     Node 31    1.364577455941447
#>     Node 32    -0.9730633320774232
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.28040148564726547
#>     Node 2    -2.398298396839839
#>     Node 3    -1.6644879013660545
#>     Node 4    -1.3244246668191515
#>     Node 5    2.2388206268290216
#>     Node 6    -1.8513911430398342
#>     Node 7    -2.152406748811699
#>     Node 8    -1.6959915591893924
#>     Node 9    -2.3837230483053746
#>     Node 10    1.3571697389617203
#>     Node 11    -1.5440854212281965
#>     Node 12    -1.8822122931494485
#>     Node 13    -0.3049808529713132
#>     Node 14    -1.5419111216811072
#>     Node 15    2.95129798079458
#>     Node 16    -0.45382475663064
#>     Node 17    -1.4130937259893281
#>     Node 18    1.2978698751690605
#>     Node 19    -1.561311796200725
#>     Node 20    -1.9897833846036042
#>     Node 21    1.6705768184999212
#>     Node 22    -0.7254206628047292
#>     Node 23    -1.2221730099882144
#>     Node 24    1.6096023218824633
#>     Node 25    -4.038748954492137
#>     Node 26    -0.6269160395311074
#>     Node 27    -1.7482838175317779
#>     Node 28    1.7414712049183234
#>     Node 29    -1.4164864357806795
#>     Node 30    0.5013794116807231
#>     Node 31    -1.3053294412880099
#>     Node 32    0.9523728934661502
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.18376331448100322
#>     Attrib V1    0.46842854700837744
#>     Attrib V10    0.4789864030423672
#>     Attrib V11    0.6815782901610323
#>     Attrib V12    0.39138154043380247
#>     Attrib V13    -0.014363378450014749
#>     Attrib V14    -0.7231402207368232
#>     Attrib V15    -0.49623988807790936
#>     Attrib V16    -0.2701182310308272
#>     Attrib V17    -0.010814721388130244
#>     Attrib V18    0.16840278294336233
#>     Attrib V19    0.6542531883844063
#>     Attrib V2    -0.26297728122300595
#>     Attrib V20    0.49504681596491024
#>     Attrib V21    1.1096586256775216
#>     Attrib V22    1.387122783284399
#>     Attrib V23    0.7571543628540222
#>     Attrib V24    0.6908867616973517
#>     Attrib V25    0.06622116460645874
#>     Attrib V26    -0.6394055905049667
#>     Attrib V27    -0.020581889852596787
#>     Attrib V28    0.5682413374025417
#>     Attrib V29    0.08618714237785503
#>     Attrib V3    -0.8388572536770833
#>     Attrib V30    0.01801714122837341
#>     Attrib V31    -0.9101492872203518
#>     Attrib V32    0.36410531789645695
#>     Attrib V33    0.4774594767432869
#>     Attrib V34    0.02410124388331191
#>     Attrib V35    0.16008544992105697
#>     Attrib V36    -0.16679005629014598
#>     Attrib V37    -0.15833280204886854
#>     Attrib V38    0.5804306815692156
#>     Attrib V39    0.7012720597631723
#>     Attrib V4    0.17452571493724905
#>     Attrib V40    0.08409439916676575
#>     Attrib V41    0.39550455452093414
#>     Attrib V42    -0.22840154578564123
#>     Attrib V43    0.6174505723781102
#>     Attrib V44    1.366845312832821
#>     Attrib V45    0.5935583249511784
#>     Attrib V46    0.12673345734741187
#>     Attrib V47    -0.08069579006813807
#>     Attrib V48    -0.225353775618532
#>     Attrib V49    0.0797221189337796
#>     Attrib V5    0.012142840482184588
#>     Attrib V50    -0.28922343109412196
#>     Attrib V51    -0.0727149740964408
#>     Attrib V52    0.04324599144027456
#>     Attrib V53    0.1606182068788506
#>     Attrib V54    0.561398003699755
#>     Attrib V55    -0.48370814431946757
#>     Attrib V56    0.26207822339859926
#>     Attrib V57    -0.03284206512398822
#>     Attrib V58    0.30462580786125115
#>     Attrib V59    0.539831659114073
#>     Attrib V6    0.2723639530745843
#>     Attrib V60    -0.21769897030399413
#>     Attrib V7    0.060452033597184165
#>     Attrib V8    -0.0755944979155933
#>     Attrib V9    0.6523178491929655
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.34501028360930625
#>     Attrib V1    0.3072810125115165
#>     Attrib V10    0.035714807144627506
#>     Attrib V11    0.33551010343292387
#>     Attrib V12    0.269590240227942
#>     Attrib V13    -0.13233691351116353
#>     Attrib V14    -0.506089642230889
#>     Attrib V15    -0.1619944318728088
#>     Attrib V16    -0.026097311105934582
#>     Attrib V17    0.04867832419489498
#>     Attrib V18    0.10769240739894831
#>     Attrib V19    0.4107263718653081
#>     Attrib V2    -0.0828758931487648
#>     Attrib V20    0.21055476479615848
#>     Attrib V21    0.5496113727124583
#>     Attrib V22    0.5829519298497966
#>     Attrib V23    0.047614109751901876
#>     Attrib V24    0.25621914751309655
#>     Attrib V25    -0.15263673284627627
#>     Attrib V26    -0.879585301049709
#>     Attrib V27    -0.44271428535441054
#>     Attrib V28    -0.057389440516394226
#>     Attrib V29    -0.44928792289371366
#>     Attrib V3    -0.5441630905279367
#>     Attrib V30    -0.2050314516398398
#>     Attrib V31    -0.525134762160733
#>     Attrib V32    0.43638216356464443
#>     Attrib V33    0.6125041562733692
#>     Attrib V34    0.023710894403591358
#>     Attrib V35    -0.15855003201298176
#>     Attrib V36    -0.6721946416171726
#>     Attrib V37    -0.7195873495707119
#>     Attrib V38    -0.056430061452554144
#>     Attrib V39    0.24063865961060432
#>     Attrib V4    0.2044366212297919
#>     Attrib V40    0.06086110941251547
#>     Attrib V41    0.306190960508928
#>     Attrib V42    0.0057419113207716295
#>     Attrib V43    0.3454448189228324
#>     Attrib V44    0.6509741984061704
#>     Attrib V45    0.2531976917465584
#>     Attrib V46    0.012055472023546045
#>     Attrib V47    -0.07594467749169553
#>     Attrib V48    -0.03638098113539756
#>     Attrib V49    0.08471558017837456
#>     Attrib V5    0.027399081995818197
#>     Attrib V50    -0.2699171684911745
#>     Attrib V51    -0.22588910357735664
#>     Attrib V52    0.007364281814340361
#>     Attrib V53    0.3267285134851303
#>     Attrib V54    0.625668659014408
#>     Attrib V55    -0.03810966583658946
#>     Attrib V56    0.1765718276650834
#>     Attrib V57    0.38154726230925495
#>     Attrib V58    0.49905908518564934
#>     Attrib V59    0.5596059766344144
#>     Attrib V6    0.20367252441971168
#>     Attrib V60    -0.09038173898618489
#>     Attrib V7    0.07595122031774164
#>     Attrib V8    0.09257922875784753
#>     Attrib V9    0.20075792965830389
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.1768030515049105
#>     Attrib V1    0.21464424501105842
#>     Attrib V10    -0.09041183963967932
#>     Attrib V11    0.15395124852894304
#>     Attrib V12    0.09490124529321424
#>     Attrib V13    -0.14905844295666157
#>     Attrib V14    -0.2953729533010395
#>     Attrib V15    -0.05122040966260326
#>     Attrib V16    0.031757519611584704
#>     Attrib V17    0.0805489996392453
#>     Attrib V18    0.12854196873092105
#>     Attrib V19    0.31724048118362513
#>     Attrib V2    -0.06807490347461186
#>     Attrib V20    0.23309035824770202
#>     Attrib V21    0.534319628045067
#>     Attrib V22    0.38209905587208215
#>     Attrib V23    -0.015396904984801568
#>     Attrib V24    0.13255416449151777
#>     Attrib V25    -0.2318493981537767
#>     Attrib V26    -0.7978904892276807
#>     Attrib V27    -0.5275569227585729
#>     Attrib V28    -0.1553495979878458
#>     Attrib V29    -0.3414623889219259
#>     Attrib V3    -0.32989867384977895
#>     Attrib V30    -0.24409748276503968
#>     Attrib V31    -0.479671075549432
#>     Attrib V32    0.2597819759763859
#>     Attrib V33    0.5279646648490874
#>     Attrib V34    0.1046630289288967
#>     Attrib V35    -0.11836877209514186
#>     Attrib V36    -0.5213419262191301
#>     Attrib V37    -0.5567565084943702
#>     Attrib V38    -0.04892696758413719
#>     Attrib V39    0.2036295483780348
#>     Attrib V4    0.17532237255095684
#>     Attrib V40    0.08850206564646673
#>     Attrib V41    0.1847357086270588
#>     Attrib V42    0.03927941647876808
#>     Attrib V43    0.22488164351804033
#>     Attrib V44    0.44619071420922796
#>     Attrib V45    0.25839154060014224
#>     Attrib V46    -0.003706624357395388
#>     Attrib V47    -0.11056155078915159
#>     Attrib V48    0.033064835021875426
#>     Attrib V49    0.11880708210801005
#>     Attrib V5    0.09453053378825196
#>     Attrib V50    -0.16047289891274066
#>     Attrib V51    -0.12791006117839354
#>     Attrib V52    -0.0185708049024918
#>     Attrib V53    0.30109663598396913
#>     Attrib V54    0.4562905715242847
#>     Attrib V55    0.022205743468892685
#>     Attrib V56    0.2310825101065732
#>     Attrib V57    0.3714168636568998
#>     Attrib V58    0.37109970140520065
#>     Attrib V59    0.45906774289749985
#>     Attrib V6    0.1724473266874903
#>     Attrib V60    -0.014095954147682761
#>     Attrib V7    0.12970035331789534
#>     Attrib V8    0.04147499477625136
#>     Attrib V9    0.1379445546817771
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.6627494906743749
#>     Attrib V1    -0.31948523474993
#>     Attrib V10    -0.5077076064036845
#>     Attrib V11    -1.0036626282267576
#>     Attrib V12    -0.9909121925016241
#>     Attrib V13    -0.31707681516795433
#>     Attrib V14    0.6135669398680319
#>     Attrib V15    0.48744310791651657
#>     Attrib V16    0.2632573974409889
#>     Attrib V17    0.16546037964418658
#>     Attrib V18    0.19044051251332508
#>     Attrib V19    0.16809606245652964
#>     Attrib V2    0.11597478155499104
#>     Attrib V20    0.6801907664121993
#>     Attrib V21    -0.008662069634694456
#>     Attrib V22    -0.0037246265224756964
#>     Attrib V23    0.49036782921788535
#>     Attrib V24    -0.19994413062002614
#>     Attrib V25    0.2048970083530213
#>     Attrib V26    0.18524307353025782
#>     Attrib V27    -0.5769039439047062
#>     Attrib V28    -0.9625909485997839
#>     Attrib V29    -0.4152502057527084
#>     Attrib V3    0.5850450999913794
#>     Attrib V30    -0.11199510481775306
#>     Attrib V31    0.22874988090192044
#>     Attrib V32    -0.17124633615437637
#>     Attrib V33    0.21783893056294018
#>     Attrib V34    0.4376015868360978
#>     Attrib V35    0.1737838349923803
#>     Attrib V36    1.0258597708020891
#>     Attrib V37    0.72923401930998
#>     Attrib V38    0.2995838515914755
#>     Attrib V39    0.07444414135152168
#>     Attrib V4    -0.9347727048324964
#>     Attrib V40    0.3689293926108984
#>     Attrib V41    -0.6359480617546209
#>     Attrib V42    0.13103614921210963
#>     Attrib V43    -0.13599387674089872
#>     Attrib V44    -0.4049387501995355
#>     Attrib V45    -0.4269839403970876
#>     Attrib V46    -0.40366058854446696
#>     Attrib V47    -0.20290242835890765
#>     Attrib V48    -0.2482914026836962
#>     Attrib V49    -0.2567863367995901
#>     Attrib V5    -0.292401114727994
#>     Attrib V50    0.4783905532287688
#>     Attrib V51    -0.061481815722440915
#>     Attrib V52    -0.09773995390710237
#>     Attrib V53    -0.5193178060551801
#>     Attrib V54    -0.3144656862161054
#>     Attrib V55    -0.14606526951204582
#>     Attrib V56    0.5338276465849323
#>     Attrib V57    -0.40570405845085505
#>     Attrib V58    -0.5992185622611883
#>     Attrib V59    -0.48970914719459724
#>     Attrib V6    -0.30325989223131333
#>     Attrib V60    0.05515299235402849
#>     Attrib V7    0.22341450365294244
#>     Attrib V8    -0.08773920793776936
#>     Attrib V9    -0.5758029610247886
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.3241027271001954
#>     Attrib V1    0.3471597010782727
#>     Attrib V10    -0.09413438335713224
#>     Attrib V11    0.231218990673206
#>     Attrib V12    0.16876465391802775
#>     Attrib V13    -0.2989284777519717
#>     Attrib V14    -0.49655658840010913
#>     Attrib V15    -0.14883295820750844
#>     Attrib V16    0.10174061915434789
#>     Attrib V17    0.0556855147188598
#>     Attrib V18    0.19359141234944885
#>     Attrib V19    0.3956883315735151
#>     Attrib V2    -0.08882970010981268
#>     Attrib V20    0.29479694395316364
#>     Attrib V21    0.6086983733374782
#>     Attrib V22    0.4938980721404354
#>     Attrib V23    0.041098770379042894
#>     Attrib V24    0.29880495256894923
#>     Attrib V25    -0.16136613341394732
#>     Attrib V26    -1.0060355214559433
#>     Attrib V27    -0.6346694635111185
#>     Attrib V28    -0.36367949506474234
#>     Attrib V29    -0.6656196540466687
#>     Attrib V3    -0.5199333701514411
#>     Attrib V30    -0.37597399945901633
#>     Attrib V31    -0.5952660058516086
#>     Attrib V32    0.4759827257688423
#>     Attrib V33    0.8129172602403031
#>     Attrib V34    0.23392355933163206
#>     Attrib V35    -0.09521096043917943
#>     Attrib V36    -0.6760828994719187
#>     Attrib V37    -0.781046823519126
#>     Attrib V38    -0.0713000660406629
#>     Attrib V39    0.23995083250503513
#>     Attrib V4    0.1544750734516657
#>     Attrib V40    0.11404447807523779
#>     Attrib V41    0.29209774449249826
#>     Attrib V42    0.05504232576701286
#>     Attrib V43    0.34462945000331796
#>     Attrib V44    0.5474793772163807
#>     Attrib V45    0.2388156812695799
#>     Attrib V46    0.0173309909014642
#>     Attrib V47    -0.15888877470145857
#>     Attrib V48    -0.04834608372330753
#>     Attrib V49    0.08154401676394152
#>     Attrib V5    0.026632192616614148
#>     Attrib V50    -0.21814275142741532
#>     Attrib V51    -0.216869414944889
#>     Attrib V52    -0.04892907178138145
#>     Attrib V53    0.3497579116755219
#>     Attrib V54    0.6136235538963783
#>     Attrib V55    -0.038013234270706076
#>     Attrib V56    0.29033793457216184
#>     Attrib V57    0.44091498751303526
#>     Attrib V58    0.5262631750355242
#>     Attrib V59    0.6173936487499299
#>     Attrib V6    0.30034766481982206
#>     Attrib V60    0.024442126771862072
#>     Attrib V7    0.22306864057869957
#>     Attrib V8    0.17024703233907376
#>     Attrib V9    0.23481291895830933
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5476407921691231
#>     Attrib V1    0.5226246598802406
#>     Attrib V10    0.5809163458772422
#>     Attrib V11    0.9731470795707142
#>     Attrib V12    0.7465892817992759
#>     Attrib V13    0.2523890616299378
#>     Attrib V14    -0.8298008155084762
#>     Attrib V15    -0.664813071107811
#>     Attrib V16    -0.43585735287574995
#>     Attrib V17    -0.13004371764008865
#>     Attrib V18    0.00595250523303072
#>     Attrib V19    0.4036081873538871
#>     Attrib V2    -0.11284680803419282
#>     Attrib V20    -0.020033488134819616
#>     Attrib V21    0.6556238758599869
#>     Attrib V22    0.8391259840003603
#>     Attrib V23    0.4944906227837349
#>     Attrib V24    0.7282116816596069
#>     Attrib V25    0.11236119710608615
#>     Attrib V26    -0.2802663225448133
#>     Attrib V27    0.3674364274529426
#>     Attrib V28    0.8640461271941131
#>     Attrib V29    0.3669343852260367
#>     Attrib V3    -0.8095920134657462
#>     Attrib V30    -0.02442718007512152
#>     Attrib V31    -0.47600450231475283
#>     Attrib V32    0.3003669568305778
#>     Attrib V33    0.042293689139094794
#>     Attrib V34    -0.1818489716447179
#>     Attrib V35    0.17852951976341183
#>     Attrib V36    -0.6044145685594687
#>     Attrib V37    -0.3025597095493505
#>     Attrib V38    0.0742192951897566
#>     Attrib V39    0.3324432062464777
#>     Attrib V4    0.3792572050708327
#>     Attrib V40    -0.04989797891039709
#>     Attrib V41    0.731938625081013
#>     Attrib V42    -0.1469911332750539
#>     Attrib V43    0.365674915992108
#>     Attrib V44    0.9598593136758392
#>     Attrib V45    0.5492336241898973
#>     Attrib V46    0.4206945583383466
#>     Attrib V47    0.31775143224825736
#>     Attrib V48    0.10482059786881741
#>     Attrib V49    0.18038814999452604
#>     Attrib V5    0.22760178885321733
#>     Attrib V50    -0.30983564671485303
#>     Attrib V51    0.06334065850747372
#>     Attrib V52    0.1442967507591294
#>     Attrib V53    0.271344963290682
#>     Attrib V54    0.4127091958297153
#>     Attrib V55    -0.48824396041852325
#>     Attrib V56    -0.2820184623593949
#>     Attrib V57    -0.10244053804439866
#>     Attrib V58    0.26066267634634466
#>     Attrib V59    0.28202538360643875
#>     Attrib V6    0.4882458940643014
#>     Attrib V60    -0.2801904620206441
#>     Attrib V7    -0.08260177853398144
#>     Attrib V8    -0.267225338974787
#>     Attrib V9    0.7242391618011953
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.5454016003012009
#>     Attrib V1    0.23656505776397158
#>     Attrib V10    0.33555876627071674
#>     Attrib V11    0.7009622743874951
#>     Attrib V12    0.5611165095206659
#>     Attrib V13    0.11235091204176938
#>     Attrib V14    -0.7072859764290086
#>     Attrib V15    -0.454475549926542
#>     Attrib V16    -0.22432406606957025
#>     Attrib V17    -0.08828257691158638
#>     Attrib V18    -0.14158317762628447
#>     Attrib V19    0.09784842712017118
#>     Attrib V2    -0.18507368191600487
#>     Attrib V20    -0.35077114275630056
#>     Attrib V21    0.3104722559862618
#>     Attrib V22    0.3269925921764905
#>     Attrib V23    -0.04528576667657377
#>     Attrib V24    0.44023982497118047
#>     Attrib V25    -0.03106224396941921
#>     Attrib V26    -0.32062713194027415
#>     Attrib V27    0.2645132479301456
#>     Attrib V28    0.6879348561231095
#>     Attrib V29    0.22160742133780467
#>     Attrib V3    -0.6866233736711409
#>     Attrib V30    0.013166586913155557
#>     Attrib V31    -0.44306928520591704
#>     Attrib V32    0.21788465951832225
#>     Attrib V33    0.07246889902065234
#>     Attrib V34    -0.15029914463141647
#>     Attrib V35    0.08772139539694632
#>     Attrib V36    -0.5275966030082387
#>     Attrib V37    -0.46095601125447855
#>     Attrib V38    -0.045247401961911994
#>     Attrib V39    0.14669129271056247
#>     Attrib V4    0.5388775436291401
#>     Attrib V40    -0.17548573893540043
#>     Attrib V41    0.45334287815919533
#>     Attrib V42    -0.23763850949139687
#>     Attrib V43    0.22071861090445774
#>     Attrib V44    0.69465968111354
#>     Attrib V45    0.45021654876329037
#>     Attrib V46    0.3216481410547426
#>     Attrib V47    0.1690829999373667
#>     Attrib V48    0.17812799922968806
#>     Attrib V49    0.16930179531950784
#>     Attrib V5    0.161375844155334
#>     Attrib V50    -0.40081122527597857
#>     Attrib V51    -0.07677080827677053
#>     Attrib V52    -0.013199485118556415
#>     Attrib V53    0.30559213927304624
#>     Attrib V54    0.26809160719993813
#>     Attrib V55    -0.17010364798494385
#>     Attrib V56    -0.31164658560772973
#>     Attrib V57    0.23519733101555257
#>     Attrib V58    0.28074611351815554
#>     Attrib V59    0.35183523907316056
#>     Attrib V6    0.2304493554589665
#>     Attrib V60    -0.20663222497479938
#>     Attrib V7    -0.10326140157682849
#>     Attrib V8    -0.09933807770707377
#>     Attrib V9    0.4467280776010412
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.4070751578089269
#>     Attrib V1    0.3713124914930483
#>     Attrib V10    0.8983834566203819
#>     Attrib V11    1.1367608952811645
#>     Attrib V12    0.984713836807223
#>     Attrib V13    0.4143938366010688
#>     Attrib V14    -0.9061512852590091
#>     Attrib V15    -0.7669160599605125
#>     Attrib V16    -0.5132226290645342
#>     Attrib V17    -0.11605754366058042
#>     Attrib V18    -0.0891908287560956
#>     Attrib V19    0.1521078345133971
#>     Attrib V2    -0.22187857021281193
#>     Attrib V20    -0.4618713248440378
#>     Attrib V21    0.31669684478436894
#>     Attrib V22    0.5166940666894425
#>     Attrib V23    0.30840741049260845
#>     Attrib V24    0.7227457291643646
#>     Attrib V25    0.27319591808483606
#>     Attrib V26    0.1578760124196491
#>     Attrib V27    0.7797011295841147
#>     Attrib V28    1.0954675955042323
#>     Attrib V29    0.3475862293866669
#>     Attrib V3    -0.8092635892876072
#>     Attrib V30    -0.0019727466605232408
#>     Attrib V31    -0.34476344867741787
#>     Attrib V32    0.251249427800657
#>     Attrib V33    -0.2022030727503371
#>     Attrib V34    -0.17412934924574283
#>     Attrib V35    0.2685030903367934
#>     Attrib V36    -0.6285829756304795
#>     Attrib V37    -0.41562835561450584
#>     Attrib V38    -0.13874550204307906
#>     Attrib V39    0.27381791523625026
#>     Attrib V4    0.5346667955597159
#>     Attrib V40    -0.20036935692163294
#>     Attrib V41    0.8012817535240463
#>     Attrib V42    -0.2019985781476209
#>     Attrib V43    0.29719077191637805
#>     Attrib V44    0.7912062752115516
#>     Attrib V45    0.5893826695908077
#>     Attrib V46    0.5649147454845097
#>     Attrib V47    0.5216095747304882
#>     Attrib V48    0.32193167695027447
#>     Attrib V49    0.35332673180589197
#>     Attrib V5    0.29515041045208834
#>     Attrib V50    -0.27784919259236257
#>     Attrib V51    0.2921843954514655
#>     Attrib V52    0.2383327701542394
#>     Attrib V53    0.339761430089718
#>     Attrib V54    0.22279613318393326
#>     Attrib V55    -0.3315431496235136
#>     Attrib V56    -0.5046239430237066
#>     Attrib V57    -0.18908339963169882
#>     Attrib V58    0.30874679663868326
#>     Attrib V59    0.19838284426970096
#>     Attrib V6    0.5044289383927164
#>     Attrib V60    -0.26795104832092653
#>     Attrib V7    -0.15934670103440002
#>     Attrib V8    -0.20706899625202085
#>     Attrib V9    0.824905942423174
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.43949382055556446
#>     Attrib V1    -0.23661649261565532
#>     Attrib V10    -0.34585069326181395
#>     Attrib V11    -0.667209820495023
#>     Attrib V12    -0.5544430156622221
#>     Attrib V13    -0.10249476401361633
#>     Attrib V14    0.5465214778317393
#>     Attrib V15    0.30508626664685234
#>     Attrib V16    0.23913647687703346
#>     Attrib V17    0.09493785508726899
#>     Attrib V18    0.17776295484972773
#>     Attrib V19    0.11097189082325888
#>     Attrib V2    0.07683873052152047
#>     Attrib V20    0.40944890961065233
#>     Attrib V21    -0.1028886460333024
#>     Attrib V22    -0.15392308721847464
#>     Attrib V23    0.20817547016683574
#>     Attrib V24    -0.24000192064196754
#>     Attrib V25    0.08143773119741321
#>     Attrib V26    0.37367574328714426
#>     Attrib V27    -0.09400657590686587
#>     Attrib V28    -0.4244702101159475
#>     Attrib V29    -0.14397464401588045
#>     Attrib V3    0.5340055211663258
#>     Attrib V30    0.01053924241456168
#>     Attrib V31    0.1801534972417165
#>     Attrib V32    -0.363167617003045
#>     Attrib V33    -0.03791364099825457
#>     Attrib V34    0.2712592928161641
#>     Attrib V35    0.1795419991673915
#>     Attrib V36    0.7463809456085542
#>     Attrib V37    0.594361172211347
#>     Attrib V38    0.23931593962442382
#>     Attrib V39    -0.013976356772626045
#>     Attrib V4    -0.4768658512323304
#>     Attrib V40    0.22583965470646275
#>     Attrib V41    -0.32993623068839073
#>     Attrib V42    0.08678542040388385
#>     Attrib V43    -0.11576290380571909
#>     Attrib V44    -0.2727267047130908
#>     Attrib V45    -0.19761337972687892
#>     Attrib V46    -0.2696392244675261
#>     Attrib V47    -0.1593354029253049
#>     Attrib V48    -0.18387240985511324
#>     Attrib V49    -0.1377519276480755
#>     Attrib V5    -0.11762277546355673
#>     Attrib V50    0.3099905819280568
#>     Attrib V51    -0.04114395134264349
#>     Attrib V52    -0.07356297058404894
#>     Attrib V53    -0.19695605891194284
#>     Attrib V54    -0.24871858115738116
#>     Attrib V55    -0.044363906094848006
#>     Attrib V56    0.2723761134935147
#>     Attrib V57    -0.26693070177154576
#>     Attrib V58    -0.3871512229283177
#>     Attrib V59    -0.3064561817702167
#>     Attrib V6    -0.162681823821198
#>     Attrib V60    0.08092266397186149
#>     Attrib V7    0.030944535168780832
#>     Attrib V8    -0.09416554549916341
#>     Attrib V9    -0.4514068292936553
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.2606340185112392
#>     Attrib V1    0.2563795513451159
#>     Attrib V10    -0.022646547817995476
#>     Attrib V11    0.26403469081439973
#>     Attrib V12    0.19285258800770877
#>     Attrib V13    -0.2311604751176248
#>     Attrib V14    -0.46220970084672874
#>     Attrib V15    -0.1703697621577397
#>     Attrib V16    0.025761807152349436
#>     Attrib V17    0.1190541142884653
#>     Attrib V18    0.1743582864376761
#>     Attrib V19    0.3602507603804874
#>     Attrib V2    -0.12111520111010665
#>     Attrib V20    0.27168992422047084
#>     Attrib V21    0.5426504296478797
#>     Attrib V22    0.47820636574563585
#>     Attrib V23    0.04351642380230698
#>     Attrib V24    0.23876035587768293
#>     Attrib V25    -0.13238597572583188
#>     Attrib V26    -0.8784202386053841
#>     Attrib V27    -0.50836388709256
#>     Attrib V28    -0.15751816849252506
#>     Attrib V29    -0.48331805565203656
#>     Attrib V3    -0.5080754891473335
#>     Attrib V30    -0.2835856209421564
#>     Attrib V31    -0.589352068590417
#>     Attrib V32    0.3392610690464829
#>     Attrib V33    0.6240833827749411
#>     Attrib V34    0.19663700147208377
#>     Attrib V35    -0.04412291027985569
#>     Attrib V36    -0.5227015172881935
#>     Attrib V37    -0.6475904239012755
#>     Attrib V38    0.03591628983993141
#>     Attrib V39    0.23898377429815168
#>     Attrib V4    0.16319274366674572
#>     Attrib V40    0.07708045204827628
#>     Attrib V41    0.18625110360782487
#>     Attrib V42    -0.020638307749675924
#>     Attrib V43    0.3052426119085445
#>     Attrib V44    0.606560412812526
#>     Attrib V45    0.305840760491696
#>     Attrib V46    0.013614033267067486
#>     Attrib V47    -0.08004765346842506
#>     Attrib V48    0.030993138520348806
#>     Attrib V49    0.08786905597815227
#>     Attrib V5    0.07835476480442902
#>     Attrib V50    -0.21690263448047248
#>     Attrib V51    -0.12957571747845506
#>     Attrib V52    -0.05604953870384478
#>     Attrib V53    0.27271809998098845
#>     Attrib V54    0.5769550633405885
#>     Attrib V55    -0.038690251103562286
#>     Attrib V56    0.2254817318556657
#>     Attrib V57    0.36184061989864486
#>     Attrib V58    0.4390468428355178
#>     Attrib V59    0.4392206990305253
#>     Attrib V6    0.2641427716601995
#>     Attrib V60    -0.05611444463925019
#>     Attrib V7    0.11697277451340286
#>     Attrib V8    0.1112788905765588
#>     Attrib V9    0.21892614238334016
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.4124939235677248
#>     Attrib V1    0.29584651051579
#>     Attrib V10    -0.11696506552901283
#>     Attrib V11    0.3363513135867831
#>     Attrib V12    0.16163638107341943
#>     Attrib V13    -0.2345061543922781
#>     Attrib V14    -0.49384443334407996
#>     Attrib V15    -0.200543144480248
#>     Attrib V16    0.045776238212952874
#>     Attrib V17    0.061620773158628836
#>     Attrib V18    0.14578791020015705
#>     Attrib V19    0.4463075381215672
#>     Attrib V2    -0.056979050507887416
#>     Attrib V20    0.23771445595938545
#>     Attrib V21    0.6083047312344343
#>     Attrib V22    0.5792685855460107
#>     Attrib V23    0.013539471641075468
#>     Attrib V24    0.21610305767171528
#>     Attrib V25    -0.25340501680068983
#>     Attrib V26    -1.0169863548554843
#>     Attrib V27    -0.5287383903992046
#>     Attrib V28    -0.19111380843032252
#>     Attrib V29    -0.4653184286980416
#>     Attrib V3    -0.5819054707232281
#>     Attrib V30    -0.32595425789634164
#>     Attrib V31    -0.6581842479608782
#>     Attrib V32    0.3845108239521184
#>     Attrib V33    0.7485991414454816
#>     Attrib V34    0.16932639781523204
#>     Attrib V35    -0.15018019711467473
#>     Attrib V36    -0.6820224964624934
#>     Attrib V37    -0.7749404981067101
#>     Attrib V38    -3.281195787095194E-4
#>     Attrib V39    0.22252496098915134
#>     Attrib V4    0.23399665969831954
#>     Attrib V40    0.124210387091408
#>     Attrib V41    0.2681203050564792
#>     Attrib V42    -0.011107847063703425
#>     Attrib V43    0.4062905559145559
#>     Attrib V44    0.6030021514361699
#>     Attrib V45    0.3016696775360644
#>     Attrib V46    0.061363497653339566
#>     Attrib V47    -0.15500183071142712
#>     Attrib V48    0.036697846740075514
#>     Attrib V49    0.086649016325193
#>     Attrib V5    0.05979901317666093
#>     Attrib V50    -0.32537865372643476
#>     Attrib V51    -0.2365304322270058
#>     Attrib V52    -0.009454391522643203
#>     Attrib V53    0.3905804405294843
#>     Attrib V54    0.6510101835803087
#>     Attrib V55    -0.04820987004070136
#>     Attrib V56    0.23812042974504014
#>     Attrib V57    0.46608866390351156
#>     Attrib V58    0.5289867238072052
#>     Attrib V59    0.631802251395287
#>     Attrib V6    0.23355558125736245
#>     Attrib V60    -0.04138218042782706
#>     Attrib V7    0.18362654728956673
#>     Attrib V8    0.1339403225248213
#>     Attrib V9    0.19863472370849466
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.1542513768728465
#>     Attrib V1    0.07156772203418109
#>     Attrib V10    -0.016031442397964637
#>     Attrib V11    0.04794498399094047
#>     Attrib V12    0.02266766378075413
#>     Attrib V13    0.032962742726266606
#>     Attrib V14    -0.0020778263670739316
#>     Attrib V15    0.018536230421014172
#>     Attrib V16    0.02672032797375908
#>     Attrib V17    0.08677034864058411
#>     Attrib V18    0.07290994843796245
#>     Attrib V19    0.08135221784017647
#>     Attrib V2    0.01938826818304279
#>     Attrib V20    0.06515974179393152
#>     Attrib V21    0.10073184305591211
#>     Attrib V22    0.019018127134128742
#>     Attrib V23    -0.006979758121201599
#>     Attrib V24    0.023842464831252602
#>     Attrib V25    -0.032216641067227623
#>     Attrib V26    -0.22798035985331386
#>     Attrib V27    -0.08472932916458031
#>     Attrib V28    -0.07536127110103685
#>     Attrib V29    -0.08796496708390279
#>     Attrib V3    0.022530420868844128
#>     Attrib V30    -0.06751684659596702
#>     Attrib V31    -0.15748411468370097
#>     Attrib V32    0.04953536026440257
#>     Attrib V33    0.08764056108980624
#>     Attrib V34    0.07262362740494292
#>     Attrib V35    0.013884925508070132
#>     Attrib V36    -0.08922195262650129
#>     Attrib V37    -0.0700217870696115
#>     Attrib V38    0.013511931568327407
#>     Attrib V39    0.117984778875761
#>     Attrib V4    0.10917521422543888
#>     Attrib V40    0.05325721899273102
#>     Attrib V41    0.043750189710852684
#>     Attrib V42    0.003573788128500215
#>     Attrib V43    0.01341909425271675
#>     Attrib V44    0.07512410928370172
#>     Attrib V45    0.03979136832257436
#>     Attrib V46    0.07840464439495312
#>     Attrib V47    0.08033847784237468
#>     Attrib V48    0.026005865721068
#>     Attrib V49    0.06732627831636877
#>     Attrib V5    0.12079424896968785
#>     Attrib V50    -0.012362840966270416
#>     Attrib V51    0.01970258249748048
#>     Attrib V52    0.042091338910290745
#>     Attrib V53    0.106227854695659
#>     Attrib V54    0.11189456229609161
#>     Attrib V55    0.08181320415342808
#>     Attrib V56    0.10352809081239614
#>     Attrib V57    0.15644349933002097
#>     Attrib V58    0.1373844010206732
#>     Attrib V59    0.19637764124629922
#>     Attrib V6    0.13100678300455854
#>     Attrib V60    0.12464125350230247
#>     Attrib V7    0.08389056880568364
#>     Attrib V8    0.007515681634120738
#>     Attrib V9    0.051842306953628806
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.5285356058634708
#>     Attrib V1    0.3361684445357996
#>     Attrib V10    0.21014050790462216
#>     Attrib V11    0.6273329580621001
#>     Attrib V12    0.498670167013604
#>     Attrib V13    -0.007652814355005498
#>     Attrib V14    -0.6894207335814629
#>     Attrib V15    -0.33083806915598757
#>     Attrib V16    -0.24062697402942407
#>     Attrib V17    -0.06118411952260831
#>     Attrib V18    -0.05925704613117514
#>     Attrib V19    0.11098735783343318
#>     Attrib V2    -0.15371104834870206
#>     Attrib V20    -0.18615974405890323
#>     Attrib V21    0.36865357155405615
#>     Attrib V22    0.41017426442204297
#>     Attrib V23    -0.0010746953609041326
#>     Attrib V24    0.31038111432109855
#>     Attrib V25    -0.10764689993782665
#>     Attrib V26    -0.5585616387032247
#>     Attrib V27    0.002071434767533494
#>     Attrib V28    0.4556044052189154
#>     Attrib V29    0.04040512073513637
#>     Attrib V3    -0.7117704717334684
#>     Attrib V30    -0.016003028587096783
#>     Attrib V31    -0.4174529999945903
#>     Attrib V32    0.34033770187974877
#>     Attrib V33    0.2615300030950213
#>     Attrib V34    -0.1494655890886435
#>     Attrib V35    -0.005353663347791398
#>     Attrib V36    -0.6956289425609087
#>     Attrib V37    -0.5532680755298505
#>     Attrib V38    -0.09945319702634733
#>     Attrib V39    0.16132954280770884
#>     Attrib V4    0.4185703259721594
#>     Attrib V40    -0.13502996654197352
#>     Attrib V41    0.36975913667543925
#>     Attrib V42    -0.1843909182776318
#>     Attrib V43    0.20688716717774386
#>     Attrib V44    0.6363564165965953
#>     Attrib V45    0.2752024284280083
#>     Attrib V46    0.18732300207169417
#>     Attrib V47    0.016008097494674974
#>     Attrib V48    0.062161509272430714
#>     Attrib V49    0.09418575364541261
#>     Attrib V5    0.0758761750034957
#>     Attrib V50    -0.3877291270363954
#>     Attrib V51    -0.17564208671772977
#>     Attrib V52    -0.04285852188705965
#>     Attrib V53    0.24173551556123632
#>     Attrib V54    0.388387507111042
#>     Attrib V55    -0.12342363645087483
#>     Attrib V56    -0.15072029638610424
#>     Attrib V57    0.223487493222297
#>     Attrib V58    0.36663383093381563
#>     Attrib V59    0.3424282928724939
#>     Attrib V6    0.19995226179029152
#>     Attrib V60    -0.20893526759274245
#>     Attrib V7    -0.04693458039059056
#>     Attrib V8    -0.11031416735105579
#>     Attrib V9    0.3535213963948421
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.7758515255191025
#>     Attrib V1    -0.4239776508731214
#>     Attrib V10    -0.9684801478249634
#>     Attrib V11    -1.502893040321352
#>     Attrib V12    -1.2527341125731666
#>     Attrib V13    -0.5285501987211695
#>     Attrib V14    0.8935670646893547
#>     Attrib V15    0.8179761897779038
#>     Attrib V16    0.49632846638096234
#>     Attrib V17    0.07529375637779787
#>     Attrib V18    0.11896283740498813
#>     Attrib V19    -0.025438626088945288
#>     Attrib V2    0.24243572097757063
#>     Attrib V20    0.7153065445019552
#>     Attrib V21    -0.2826245199225091
#>     Attrib V22    -0.35420145726874286
#>     Attrib V23    0.06527538982773975
#>     Attrib V24    -0.49493606290625985
#>     Attrib V25    0.021310004045444333
#>     Attrib V26    -0.08905829920601667
#>     Attrib V27    -1.0895046473883618
#>     Attrib V28    -1.466861917758128
#>     Attrib V29    -0.6561833679276531
#>     Attrib V3    0.7922030426378326
#>     Attrib V30    -0.11920192439945085
#>     Attrib V31    0.5024094957203014
#>     Attrib V32    -0.05595693881753611
#>     Attrib V33    0.49747920170468735
#>     Attrib V34    0.49657816764208507
#>     Attrib V35    -0.2641675814393883
#>     Attrib V36    0.7895110848402349
#>     Attrib V37    0.4624567724300853
#>     Attrib V38    0.1223158871816862
#>     Attrib V39    -0.1545957070468707
#>     Attrib V4    -1.0527422505990551
#>     Attrib V40    0.3803604367958851
#>     Attrib V41    -0.9431371205455106
#>     Attrib V42    0.2281031542142546
#>     Attrib V43    -0.23818438378337947
#>     Attrib V44    -0.9430451852146554
#>     Attrib V45    -0.703101080030149
#>     Attrib V46    -0.5495333340503494
#>     Attrib V47    -0.3688517685123472
#>     Attrib V48    -0.2927641982382822
#>     Attrib V49    -0.3742507218697547
#>     Attrib V5    -0.372782784952695
#>     Attrib V50    0.5589270069051095
#>     Attrib V51    -0.1842551808414399
#>     Attrib V52    -0.1904144181233895
#>     Attrib V53    -0.4381034715037972
#>     Attrib V54    -0.21619880968704072
#>     Attrib V55    0.11944047951977385
#>     Attrib V56    0.7581049730018663
#>     Attrib V57    -0.11128445409568898
#>     Attrib V58    -0.592498605154932
#>     Attrib V59    -0.46545286362728117
#>     Attrib V6    -0.46973258311893906
#>     Attrib V60    0.20119763296184293
#>     Attrib V7    0.2736749268966801
#>     Attrib V8    0.11568997875450301
#>     Attrib V9    -0.9016712736587703
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.09103045190953157
#>     Attrib V1    0.08314572254321503
#>     Attrib V10    -0.0038496243931166944
#>     Attrib V11    0.04884338306548493
#>     Attrib V12    0.03531543109333243
#>     Attrib V13    -0.010414957954351121
#>     Attrib V14    -0.06479316556376036
#>     Attrib V15    0.00674784643361821
#>     Attrib V16    0.09761701612413222
#>     Attrib V17    0.10130549337192397
#>     Attrib V18    0.10824697038419115
#>     Attrib V19    0.10880266740538153
#>     Attrib V2    -0.021032505467227642
#>     Attrib V20    -0.006693757193912479
#>     Attrib V21    0.06422597166511662
#>     Attrib V22    0.02112952328267286
#>     Attrib V23    -0.10854519084767407
#>     Attrib V24    0.04506241515151122
#>     Attrib V25    -0.0496716873656184
#>     Attrib V26    -0.26356794751640233
#>     Attrib V27    -0.169011885836561
#>     Attrib V28    -0.04393064057063035
#>     Attrib V29    -0.13143081512251226
#>     Attrib V3    -0.0400622413108665
#>     Attrib V30    -0.12903472594829252
#>     Attrib V31    -0.17313158847599144
#>     Attrib V32    0.07256554354365308
#>     Attrib V33    0.10708920355169299
#>     Attrib V34    0.04881088514850862
#>     Attrib V35    -0.020040460547208132
#>     Attrib V36    -0.16396827900123942
#>     Attrib V37    -0.14201803744307076
#>     Attrib V38    -0.013833718939457448
#>     Attrib V39    0.06764340193065957
#>     Attrib V4    0.12829301987748995
#>     Attrib V40    -0.008046381524663932
#>     Attrib V41    0.04014388560509365
#>     Attrib V42    0.016260380524469018
#>     Attrib V43    0.03504985823322032
#>     Attrib V44    0.048892802274362296
#>     Attrib V45    0.080770694665662
#>     Attrib V46    0.06293698430345926
#>     Attrib V47    0.030374342878048917
#>     Attrib V48    0.028323864518522732
#>     Attrib V49    0.010561581324868886
#>     Attrib V5    0.09430410079387425
#>     Attrib V50    0.02544944567529341
#>     Attrib V51    0.05857861983460611
#>     Attrib V52    0.08208751504682742
#>     Attrib V53    0.16900185598286951
#>     Attrib V54    0.14496261546755224
#>     Attrib V55    0.12290475111184697
#>     Attrib V56    0.12699196238043273
#>     Attrib V57    0.2007078712230925
#>     Attrib V58    0.21564609447712815
#>     Attrib V59    0.14661479308158187
#>     Attrib V6    0.12066101003207248
#>     Attrib V60    0.09228685789309057
#>     Attrib V7    0.04319963604307656
#>     Attrib V8    0.011703490343218213
#>     Attrib V9    0.08198411581037288
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.2172858470066672
#>     Attrib V1    0.2725048601803233
#>     Attrib V10    -0.03664638935055646
#>     Attrib V11    0.19950416456232414
#>     Attrib V12    0.0813931955496822
#>     Attrib V13    -0.22708572232534843
#>     Attrib V14    -0.3762229705321616
#>     Attrib V15    -0.037192852350938825
#>     Attrib V16    0.06270424470336136
#>     Attrib V17    0.08318271345085777
#>     Attrib V18    0.14098625784099328
#>     Attrib V19    0.3348849421303625
#>     Attrib V2    -0.00543139971042837
#>     Attrib V20    0.19303820112500913
#>     Attrib V21    0.45745222329636653
#>     Attrib V22    0.4408055729609733
#>     Attrib V23    -0.021872593192415666
#>     Attrib V24    0.221336267603395
#>     Attrib V25    -0.1934763071622393
#>     Attrib V26    -0.8369846223851223
#>     Attrib V27    -0.5400987476517021
#>     Attrib V28    -0.2769492950233553
#>     Attrib V29    -0.5064491539808847
#>     Attrib V3    -0.4112165933650955
#>     Attrib V30    -0.2536529195813635
#>     Attrib V31    -0.4237166592126969
#>     Attrib V32    0.28390505570739116
#>     Attrib V33    0.6147973614651862
#>     Attrib V34    0.11765733299432482
#>     Attrib V35    -0.07109877600859368
#>     Attrib V36    -0.5344895026141534
#>     Attrib V37    -0.6137947715855019
#>     Attrib V38    0.005738882480015452
#>     Attrib V39    0.2099749498543591
#>     Attrib V4    0.15023557841852445
#>     Attrib V40    0.04622299452034026
#>     Attrib V41    0.1937657108614153
#>     Attrib V42    -0.02133362050689308
#>     Attrib V43    0.29345547149885043
#>     Attrib V44    0.45009215971033245
#>     Attrib V45    0.2280436233327177
#>     Attrib V46    -0.009145723368296681
#>     Attrib V47    -0.14695998569403954
#>     Attrib V48    0.040107359945701984
#>     Attrib V49    0.042781708855587526
#>     Attrib V5    0.043139471901783126
#>     Attrib V50    -0.18737705458541398
#>     Attrib V51    -0.15518791127825907
#>     Attrib V52    -0.03867519800967942
#>     Attrib V53    0.2338276082576596
#>     Attrib V54    0.47783811027070516
#>     Attrib V55    0.07373330573170565
#>     Attrib V56    0.2453582533271092
#>     Attrib V57    0.4216138937119225
#>     Attrib V58    0.36985327158316766
#>     Attrib V59    0.4355682334002977
#>     Attrib V6    0.2266136153046574
#>     Attrib V60    0.03150779233037948
#>     Attrib V7    0.12375570733264961
#>     Attrib V8    0.13695220533199043
#>     Attrib V9    0.1511519553391314
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.4583267614501129
#>     Attrib V1    -0.28820860227425094
#>     Attrib V10    -0.2350264725705861
#>     Attrib V11    -0.581447569078354
#>     Attrib V12    -0.5354229942137454
#>     Attrib V13    -0.0940482804226884
#>     Attrib V14    0.5184941807545915
#>     Attrib V15    0.3153402450958397
#>     Attrib V16    0.23235820469492216
#>     Attrib V17    0.08384037466525456
#>     Attrib V18    0.13832004659592712
#>     Attrib V19    -0.05550556202464596
#>     Attrib V2    0.07109837717119188
#>     Attrib V20    0.26609250275890933
#>     Attrib V21    -0.22144690668832187
#>     Attrib V22    -0.3027375181046918
#>     Attrib V23    0.04907611191777307
#>     Attrib V24    -0.3046407500395833
#>     Attrib V25    0.10360792759919446
#>     Attrib V26    0.4888458550421269
#>     Attrib V27    0.033124674363310146
#>     Attrib V28    -0.3814792596529168
#>     Attrib V29    -0.0964476886768593
#>     Attrib V3    0.5997444836763214
#>     Attrib V30    -0.010147211175167252
#>     Attrib V31    0.23617321015766266
#>     Attrib V32    -0.3215177276820328
#>     Attrib V33    -0.14817385604357694
#>     Attrib V34    0.23211916896149146
#>     Attrib V35    0.10666039532168552
#>     Attrib V36    0.7272679885341153
#>     Attrib V37    0.5122279849971205
#>     Attrib V38    0.09846305565917832
#>     Attrib V39    -0.06074775188260973
#>     Attrib V4    -0.4237708855764214
#>     Attrib V40    0.10380931878212883
#>     Attrib V41    -0.3870406985118996
#>     Attrib V42    0.10454135843916251
#>     Attrib V43    -0.1507148830117864
#>     Attrib V44    -0.3219511796138713
#>     Attrib V45    -0.2468646411692225
#>     Attrib V46    -0.21487051499651363
#>     Attrib V47    -0.043472123034767676
#>     Attrib V48    -0.0622472941305407
#>     Attrib V49    -0.0396220787421081
#>     Attrib V5    -0.06990669619574708
#>     Attrib V50    0.24909773298091473
#>     Attrib V51    0.09712982482796839
#>     Attrib V52    -0.0341355312666671
#>     Attrib V53    -0.2082935647416981
#>     Attrib V54    -0.3104025002767382
#>     Attrib V55    0.07917737579461051
#>     Attrib V56    0.23977094185553324
#>     Attrib V57    -0.24413519454819077
#>     Attrib V58    -0.31007605102179087
#>     Attrib V59    -0.23664924888334202
#>     Attrib V6    -0.22538532732023023
#>     Attrib V60    0.19324689371492162
#>     Attrib V7    0.03853473276802748
#>     Attrib V8    -0.01902177163224802
#>     Attrib V9    -0.3543189697324627
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.3761565552032771
#>     Attrib V1    0.2847047537449047
#>     Attrib V10    0.007908490841949214
#>     Attrib V11    0.348150015620904
#>     Attrib V12    0.32437212750738526
#>     Attrib V13    -0.1265129220599385
#>     Attrib V14    -0.4924883944368374
#>     Attrib V15    -0.18023589914628177
#>     Attrib V16    -0.05386722507705298
#>     Attrib V17    0.05138176620931264
#>     Attrib V18    0.11478141277838153
#>     Attrib V19    0.3840594482615543
#>     Attrib V2    -0.09968920294209686
#>     Attrib V20    0.1400396868027286
#>     Attrib V21    0.5210144571295893
#>     Attrib V22    0.5475927589098207
#>     Attrib V23    0.006802021001114165
#>     Attrib V24    0.26355304137171015
#>     Attrib V25    -0.12991192543214958
#>     Attrib V26    -0.7863744804459297
#>     Attrib V27    -0.32145582625161007
#>     Attrib V28    0.04761418965656769
#>     Attrib V29    -0.3033113640277458
#>     Attrib V3    -0.5940690947139656
#>     Attrib V30    -0.2260446823408659
#>     Attrib V31    -0.5432010667839546
#>     Attrib V32    0.3357113209019849
#>     Attrib V33    0.5598611937201141
#>     Attrib V34    0.04515709902684295
#>     Attrib V35    -0.06547194965788145
#>     Attrib V36    -0.5874158396613853
#>     Attrib V37    -0.6588725761093537
#>     Attrib V38    -0.009227059138621313
#>     Attrib V39    0.23971695182245525
#>     Attrib V4    0.27071500584893504
#>     Attrib V40    0.052231719843578654
#>     Attrib V41    0.2625481933702683
#>     Attrib V42    -0.03629754138428992
#>     Attrib V43    0.29951850877507513
#>     Attrib V44    0.6098066210327474
#>     Attrib V45    0.34175601619223006
#>     Attrib V46    0.07547568380584047
#>     Attrib V47    -0.12108375924315956
#>     Attrib V48    0.010784203419220206
#>     Attrib V49    0.17704421261867467
#>     Attrib V5    0.0350865662196104
#>     Attrib V50    -0.3091627607856942
#>     Attrib V51    -0.221207744744331
#>     Attrib V52    0.021846483390780446
#>     Attrib V53    0.3545267438069524
#>     Attrib V54    0.5545013431122838
#>     Attrib V55    -0.07262832337815639
#>     Attrib V56    0.07339166543413518
#>     Attrib V57    0.2870720564575888
#>     Attrib V58    0.46601131989598205
#>     Attrib V59    0.47482375648792235
#>     Attrib V6    0.2138114885430523
#>     Attrib V60    -0.0838890057100828
#>     Attrib V7    0.10352242998738762
#>     Attrib V8    -0.013416586374109554
#>     Attrib V9    0.22224309759146815
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.2381253301209566
#>     Attrib V1    0.42382536884913835
#>     Attrib V10    0.3479030868121311
#>     Attrib V11    0.5566630044096249
#>     Attrib V12    0.39287605189192026
#>     Attrib V13    -0.015111584536912586
#>     Attrib V14    -0.6266324642002321
#>     Attrib V15    -0.4012695943631333
#>     Attrib V16    -0.2384961163169495
#>     Attrib V17    -0.007067903718066808
#>     Attrib V18    0.14941827433623148
#>     Attrib V19    0.6007113596341302
#>     Attrib V2    -0.20277151806816335
#>     Attrib V20    0.3865626773749435
#>     Attrib V21    0.9517577737351902
#>     Attrib V22    1.1772553350840942
#>     Attrib V23    0.6146879528192464
#>     Attrib V24    0.5925501477789985
#>     Attrib V25    0.0409118323221199
#>     Attrib V26    -0.5284186072628915
#>     Attrib V27    0.010649477188696094
#>     Attrib V28    0.3992633189459269
#>     Attrib V29    0.07605321924745344
#>     Attrib V3    -0.7664916338478891
#>     Attrib V30    0.0046437960424992476
#>     Attrib V31    -0.7169911514752884
#>     Attrib V32    0.22892024900650584
#>     Attrib V33    0.3741760663175744
#>     Attrib V34    -0.012169255929492832
#>     Attrib V35    0.17203291135416504
#>     Attrib V36    -0.10166571442977107
#>     Attrib V37    -0.0841271036253602
#>     Attrib V38    0.48432423877085723
#>     Attrib V39    0.572206453526797
#>     Attrib V4    0.17029634335388116
#>     Attrib V40    0.07627890932011407
#>     Attrib V41    0.35861771930795866
#>     Attrib V42    -0.26078139462154076
#>     Attrib V43    0.546693613285313
#>     Attrib V44    1.204845742041929
#>     Attrib V45    0.5275191970910208
#>     Attrib V46    0.11344729401472842
#>     Attrib V47    -0.1009085536998788
#>     Attrib V48    -0.1702390895659207
#>     Attrib V49    0.07742659784445392
#>     Attrib V5    0.02222112239311963
#>     Attrib V50    -0.2664371930483134
#>     Attrib V51    -0.041761587746978544
#>     Attrib V52    0.03630988734055239
#>     Attrib V53    0.16596395237119427
#>     Attrib V54    0.5195854635717546
#>     Attrib V55    -0.36287671295295415
#>     Attrib V56    0.20394372891463144
#>     Attrib V57    -0.002520484663813149
#>     Attrib V58    0.32604885068938577
#>     Attrib V59    0.4870188379488184
#>     Attrib V6    0.2652047268264662
#>     Attrib V60    -0.1695001954372247
#>     Attrib V7    0.06842664839200917
#>     Attrib V8    -0.16055855118161225
#>     Attrib V9    0.5378057818953086
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.5214959345972495
#>     Attrib V1    -0.3104180094371269
#>     Attrib V10    -0.3967601167321516
#>     Attrib V11    -0.8089613918427268
#>     Attrib V12    -0.6680304448533609
#>     Attrib V13    -0.1324244108837059
#>     Attrib V14    0.7063852521806734
#>     Attrib V15    0.48252503968863464
#>     Attrib V16    0.29183589991551684
#>     Attrib V17    0.13171878959408634
#>     Attrib V18    0.11216939312592324
#>     Attrib V19    -0.044604672640044224
#>     Attrib V2    0.11043914562594702
#>     Attrib V20    0.3559583205987669
#>     Attrib V21    -0.263453329167447
#>     Attrib V22    -0.422871340681309
#>     Attrib V23    0.026255761552627734
#>     Attrib V24    -0.3558538478453723
#>     Attrib V25    0.13705133725596286
#>     Attrib V26    0.6163001140027116
#>     Attrib V27    -0.01837558007022893
#>     Attrib V28    -0.4956546192052172
#>     Attrib V29    -0.050027093012907815
#>     Attrib V3    0.7171095393137766
#>     Attrib V30    0.07268162980415507
#>     Attrib V31    0.3583944096503123
#>     Attrib V32    -0.4563881593978746
#>     Attrib V33    -0.19492527208448776
#>     Attrib V34    0.2554438328148982
#>     Attrib V35    0.1436509015793523
#>     Attrib V36    0.8445649905331739
#>     Attrib V37    0.6996867289744314
#>     Attrib V38    0.12813066975330595
#>     Attrib V39    -0.08213928377242047
#>     Attrib V4    -0.46167630395029613
#>     Attrib V40    0.22928930254930877
#>     Attrib V41    -0.44035421234883904
#>     Attrib V42    0.1034130302062451
#>     Attrib V43    -0.1554785668487975
#>     Attrib V44    -0.46030835137821485
#>     Attrib V45    -0.2995225338315628
#>     Attrib V46    -0.26393871671671637
#>     Attrib V47    -0.12251330262505955
#>     Attrib V48    -0.07522480439357014
#>     Attrib V49    -0.11606088310426416
#>     Attrib V5    -0.08855466814895485
#>     Attrib V50    0.40715987601917664
#>     Attrib V51    0.06508418602000722
#>     Attrib V52    -0.021984687645480106
#>     Attrib V53    -0.25013667900733566
#>     Attrib V54    -0.3171946051953456
#>     Attrib V55    0.08200523015903023
#>     Attrib V56    0.33369043542188404
#>     Attrib V57    -0.17269249429326364
#>     Attrib V58    -0.4233196167356475
#>     Attrib V59    -0.2809825176270152
#>     Attrib V6    -0.26824362914374217
#>     Attrib V60    0.27933059173959335
#>     Attrib V7    0.05718674631353831
#>     Attrib V8    -0.08946298569174894
#>     Attrib V9    -0.4907615071802818
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.009736091263952026
#>     Attrib V1    0.1696732163663559
#>     Attrib V10    -0.032575632831301986
#>     Attrib V11    0.08467973039916535
#>     Attrib V12    0.048714631930554496
#>     Attrib V13    -0.10052410681474065
#>     Attrib V14    -0.08297628140532932
#>     Attrib V15    -0.022384982978469775
#>     Attrib V16    0.10990134751338308
#>     Attrib V17    0.08440595446327391
#>     Attrib V18    0.08099305029118196
#>     Attrib V19    0.10205815447759879
#>     Attrib V2    0.019087246212926443
#>     Attrib V20    0.05484034492459858
#>     Attrib V21    0.14463794467476523
#>     Attrib V22    0.05265558784270133
#>     Attrib V23    -0.14884351034065435
#>     Attrib V24    0.05640653060012202
#>     Attrib V25    -0.13855886160776343
#>     Attrib V26    -0.42498800565133094
#>     Attrib V27    -0.2776880843067242
#>     Attrib V28    -0.15759469641244048
#>     Attrib V29    -0.1615109442272377
#>     Attrib V3    -0.15533133231647192
#>     Attrib V30    -0.1358403112169357
#>     Attrib V31    -0.16935336594744976
#>     Attrib V32    0.09150023849393875
#>     Attrib V33    0.15567951666075083
#>     Attrib V34    -0.004642254223913839
#>     Attrib V35    -0.06302517930311761
#>     Attrib V36    -0.27446802643604895
#>     Attrib V37    -0.2890837138204617
#>     Attrib V38    -0.07742426611632248
#>     Attrib V39    0.03628117354447938
#>     Attrib V4    0.16324382013452843
#>     Attrib V40    0.024988552939322943
#>     Attrib V41    0.002892465943040673
#>     Attrib V42    -0.0504748652442371
#>     Attrib V43    0.11944460217149477
#>     Attrib V44    0.1271034730494285
#>     Attrib V45    0.03860564111549885
#>     Attrib V46    0.063726458783246
#>     Attrib V47    -0.03553677399316561
#>     Attrib V48    0.07524450564741714
#>     Attrib V49    0.049237131403335445
#>     Attrib V5    0.10510273493575155
#>     Attrib V50    -0.06344029089898387
#>     Attrib V51    -0.05297732522681724
#>     Attrib V52    0.038191056346277785
#>     Attrib V53    0.14328893496441872
#>     Attrib V54    0.2673504309695132
#>     Attrib V55    0.13961270679376647
#>     Attrib V56    0.17256045452780217
#>     Attrib V57    0.2570621055619703
#>     Attrib V58    0.2806039797414737
#>     Attrib V59    0.2677720068658128
#>     Attrib V6    0.12766435935810974
#>     Attrib V60    0.1084540216972886
#>     Attrib V7    0.06980124571813014
#>     Attrib V8    -0.009487073963090058
#>     Attrib V9    0.06547287147967729
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.142401012353999
#>     Attrib V1    0.2478772695047848
#>     Attrib V10    -0.1421598876886679
#>     Attrib V11    0.13529182377791985
#>     Attrib V12    0.10031280483535109
#>     Attrib V13    -0.15699587145154176
#>     Attrib V14    -0.23827015661107742
#>     Attrib V15    -0.034982338477801
#>     Attrib V16    0.047377343990602075
#>     Attrib V17    0.13563206067640124
#>     Attrib V18    0.1624468509803338
#>     Attrib V19    0.29595615196121317
#>     Attrib V2    -0.06057352123106232
#>     Attrib V20    0.1854359174973451
#>     Attrib V21    0.37554230711203224
#>     Attrib V22    0.31928185290624445
#>     Attrib V23    -9.044360312967292E-4
#>     Attrib V24    0.10282580843503546
#>     Attrib V25    -0.17537268880890017
#>     Attrib V26    -0.683345442888881
#>     Attrib V27    -0.5257913066935191
#>     Attrib V28    -0.3110691129230392
#>     Attrib V29    -0.4416341777345844
#>     Attrib V3    -0.2853055647939148
#>     Attrib V30    -0.27458701752758996
#>     Attrib V31    -0.4225687722180517
#>     Attrib V32    0.23445848155700275
#>     Attrib V33    0.47147138187301013
#>     Attrib V34    0.09458583672305049
#>     Attrib V35    -0.05072433585141985
#>     Attrib V36    -0.42242931677287765
#>     Attrib V37    -0.4424570996892176
#>     Attrib V38    -0.036918996672390354
#>     Attrib V39    0.15740030582654044
#>     Attrib V4    0.17305838791169617
#>     Attrib V40    0.04852543813767308
#>     Attrib V41    0.12184780281481937
#>     Attrib V42    -0.02473431110155723
#>     Attrib V43    0.23306539832259068
#>     Attrib V44    0.32894085142822044
#>     Attrib V45    0.17352160759834542
#>     Attrib V46    0.01612067923023608
#>     Attrib V47    -0.04184650572026227
#>     Attrib V48    -0.037513553542168364
#>     Attrib V49    0.04240921906055357
#>     Attrib V5    0.05993394067547471
#>     Attrib V50    -0.16320756675317827
#>     Attrib V51    -0.14548165324626391
#>     Attrib V52    0.0597770890316122
#>     Attrib V53    0.2682561097155432
#>     Attrib V54    0.4524800717779839
#>     Attrib V55    0.07928003683503353
#>     Attrib V56    0.2650138682785891
#>     Attrib V57    0.29910804192337126
#>     Attrib V58    0.3597597609981412
#>     Attrib V59    0.45903523296749077
#>     Attrib V6    0.1927936590884544
#>     Attrib V60    0.024441997624918055
#>     Attrib V7    0.1371089822274294
#>     Attrib V8    0.05392796863086286
#>     Attrib V9    0.0869188952529624
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.546672687849057
#>     Attrib V1    -0.3275722851120385
#>     Attrib V10    -0.39460772617321765
#>     Attrib V11    -0.7875585114321435
#>     Attrib V12    -0.6582486169187032
#>     Attrib V13    -0.14923373937887463
#>     Attrib V14    0.7063334755895115
#>     Attrib V15    0.5298656145245588
#>     Attrib V16    0.28674111588879037
#>     Attrib V17    0.16144854285011837
#>     Attrib V18    0.0779909761479464
#>     Attrib V19    -0.06518692168372223
#>     Attrib V2    0.12804093709515682
#>     Attrib V20    0.33788945560788197
#>     Attrib V21    -0.3230548258872867
#>     Attrib V22    -0.4481957124015013
#>     Attrib V23    0.052482390261319456
#>     Attrib V24    -0.3982166731717385
#>     Attrib V25    0.10262171899867337
#>     Attrib V26    0.5266672197552824
#>     Attrib V27    -0.14695825691983705
#>     Attrib V28    -0.5550467551326355
#>     Attrib V29    -0.15024084127002957
#>     Attrib V3    0.7074049722603524
#>     Attrib V30    0.041726722996709514
#>     Attrib V31    0.379275696930297
#>     Attrib V32    -0.2835216381736231
#>     Attrib V33    -0.15523864782364746
#>     Attrib V34    0.22991419096485372
#>     Attrib V35    0.0464228574144774
#>     Attrib V36    0.7413276064201824
#>     Attrib V37    0.5104844311769269
#>     Attrib V38    0.0844919579971304
#>     Attrib V39    -0.1525449139248954
#>     Attrib V4    -0.48739619090554037
#>     Attrib V40    0.19711512032282982
#>     Attrib V41    -0.473813910528093
#>     Attrib V42    0.13133605488864694
#>     Attrib V43    -0.15489075083833656
#>     Attrib V44    -0.5787835545922287
#>     Attrib V45    -0.3806838227204047
#>     Attrib V46    -0.2598557235037413
#>     Attrib V47    -0.07119555609509783
#>     Attrib V48    -0.08682559047035415
#>     Attrib V49    -0.1356500670615454
#>     Attrib V5    -0.12973090771454665
#>     Attrib V50    0.4219379446243331
#>     Attrib V51    0.08525416749234253
#>     Attrib V52    0.0254341864679568
#>     Attrib V53    -0.2942758213845575
#>     Attrib V54    -0.30295139205165045
#>     Attrib V55    0.15287585561297473
#>     Attrib V56    0.3735290213663958
#>     Attrib V57    -0.15272548814977507
#>     Attrib V58    -0.357796451900043
#>     Attrib V59    -0.3014587543580587
#>     Attrib V6    -0.2258731717561326
#>     Attrib V60    0.22687127748634126
#>     Attrib V7    0.030216918220821527
#>     Attrib V8    -0.011389191976707467
#>     Attrib V9    -0.4504546733777005
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.6986362718195223
#>     Attrib V1    0.49710986161782633
#>     Attrib V10    1.1540172523610188
#>     Attrib V11    1.6086282585900482
#>     Attrib V12    1.5708690457775165
#>     Attrib V13    0.8122973814002025
#>     Attrib V14    -0.7790998934668663
#>     Attrib V15    -0.7518944895955539
#>     Attrib V16    -0.5651919228483512
#>     Attrib V17    -0.08151592349795926
#>     Attrib V18    -0.2542172141409221
#>     Attrib V19    -0.1472576903043952
#>     Attrib V2    -0.0018452521441803045
#>     Attrib V20    -0.8002593399728365
#>     Attrib V21    0.17330711482680283
#>     Attrib V22    0.3834835715063579
#>     Attrib V23    0.17939117086090436
#>     Attrib V24    0.5671537325842686
#>     Attrib V25    0.0021480657461758162
#>     Attrib V26    0.538195803970091
#>     Attrib V27    1.4755973284022472
#>     Attrib V28    1.9989587116040257
#>     Attrib V29    1.3969857572000584
#>     Attrib V3    -0.4250188043085846
#>     Attrib V30    0.45512012421634923
#>     Attrib V31    -0.4352344265257818
#>     Attrib V32    -0.2282436778610016
#>     Attrib V33    -1.1564331954837812
#>     Attrib V34    -0.8029747260028294
#>     Attrib V35    0.2628336099430409
#>     Attrib V36    -0.7280801193370566
#>     Attrib V37    -0.06457449472361708
#>     Attrib V38    -0.11656547700782757
#>     Attrib V39    0.07715379113200353
#>     Attrib V4    1.2815001690085255
#>     Attrib V40    -0.548721813277828
#>     Attrib V41    1.0129379496146687
#>     Attrib V42    -0.2503513633906963
#>     Attrib V43    0.17516325209587189
#>     Attrib V44    1.0129655831356748
#>     Attrib V45    0.9041000146075026
#>     Attrib V46    0.7996351711547335
#>     Attrib V47    0.5730108982924379
#>     Attrib V48    0.3236777287162097
#>     Attrib V49    0.4161825933413759
#>     Attrib V5    0.7398938054543839
#>     Attrib V50    -0.461246157759113
#>     Attrib V51    0.4775296258995932
#>     Attrib V52    0.39157698367643456
#>     Attrib V53    0.6115871639478305
#>     Attrib V54    0.19551657411825346
#>     Attrib V55    -0.1291668952721493
#>     Attrib V56    -0.8576610536773833
#>     Attrib V57    0.052739661002584204
#>     Attrib V58    0.4903914303543373
#>     Attrib V59    0.43119913684909444
#>     Attrib V6    0.6516415259850596
#>     Attrib V60    -0.030792439868258102
#>     Attrib V7    -0.30963579062851704
#>     Attrib V8    -0.3049230146066361
#>     Attrib V9    0.8711046423055375
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.0665482975558795
#>     Attrib V1    0.12522209360879047
#>     Attrib V10    -0.05218210014971331
#>     Attrib V11    0.034404337345473796
#>     Attrib V12    0.06481162008607678
#>     Attrib V13    -0.07635237563812552
#>     Attrib V14    -0.02019308793865654
#>     Attrib V15    0.01854788403705489
#>     Attrib V16    0.06913121816757228
#>     Attrib V17    0.11200656812176606
#>     Attrib V18    0.062417544879458935
#>     Attrib V19    0.1994886120592753
#>     Attrib V2    0.031145426037577535
#>     Attrib V20    0.08664457005640734
#>     Attrib V21    0.18963061887930402
#>     Attrib V22    0.09711194408193591
#>     Attrib V23    -0.07339030413548699
#>     Attrib V24    0.010955906619683379
#>     Attrib V25    -0.11073906194711776
#>     Attrib V26    -0.3624568025334659
#>     Attrib V27    -0.18171355818169369
#>     Attrib V28    -0.04507189602493132
#>     Attrib V29    -0.1307294074977527
#>     Attrib V3    -0.12906788599160474
#>     Attrib V30    -0.12632246713137482
#>     Attrib V31    -0.2599845132357708
#>     Attrib V32    0.015140116371155874
#>     Attrib V33    0.17573532231197256
#>     Attrib V34    0.004727243626366146
#>     Attrib V35    0.02468464503735367
#>     Attrib V36    -0.15121731492797635
#>     Attrib V37    -0.15806273023884732
#>     Attrib V38    -0.013703503523943731
#>     Attrib V39    0.11161845192978023
#>     Attrib V4    0.18015708819832033
#>     Attrib V40    0.015880669960775015
#>     Attrib V41    0.035957200679332654
#>     Attrib V42    -0.007595520668908584
#>     Attrib V43    0.08804570349132348
#>     Attrib V44    0.15424411350409037
#>     Attrib V45    0.09787239331776326
#>     Attrib V46    0.017207491237041822
#>     Attrib V47    -0.021817542251208865
#>     Attrib V48    0.06674115590209115
#>     Attrib V49    0.025894061269975347
#>     Attrib V5    0.055249451480008004
#>     Attrib V50    -0.025493382641182297
#>     Attrib V51    -0.04070372747141106
#>     Attrib V52    0.021864146756633302
#>     Attrib V53    0.14453841979900833
#>     Attrib V54    0.21893526217092507
#>     Attrib V55    0.10684233167544875
#>     Attrib V56    0.15749788659783148
#>     Attrib V57    0.24207521084606012
#>     Attrib V58    0.21252895418030432
#>     Attrib V59    0.2661102459200137
#>     Attrib V6    0.14498313354499232
#>     Attrib V60    0.13235917262349656
#>     Attrib V7    0.018818037297073053
#>     Attrib V8    0.05554582162719697
#>     Attrib V9    0.02972757014803481
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.5270016026672921
#>     Attrib V1    0.40753359870828065
#>     Attrib V10    0.3076129280229976
#>     Attrib V11    0.6598346945518743
#>     Attrib V12    0.5160239029344182
#>     Attrib V13    0.05726814149122748
#>     Attrib V14    -0.7501452289806526
#>     Attrib V15    -0.42647088299374875
#>     Attrib V16    -0.2464276235440812
#>     Attrib V17    -0.07223030515932513
#>     Attrib V18    0.07537885451580179
#>     Attrib V19    0.3155274000845564
#>     Attrib V2    -0.16068594371825196
#>     Attrib V20    -0.024110252874893205
#>     Attrib V21    0.6455488041797653
#>     Attrib V22    0.7485775841474976
#>     Attrib V23    0.1620293652014889
#>     Attrib V24    0.4615538644510554
#>     Attrib V25    -0.08371820152489806
#>     Attrib V26    -0.5336278254016082
#>     Attrib V27    0.03203692239376158
#>     Attrib V28    0.4765371610831161
#>     Attrib V29    0.10510807419665126
#>     Attrib V3    -0.7315228692794019
#>     Attrib V30    -0.010683693741487789
#>     Attrib V31    -0.5547263879120465
#>     Attrib V32    0.3197140693677403
#>     Attrib V33    0.26046467762640046
#>     Attrib V34    -0.08686934764940529
#>     Attrib V35    0.06639162406921713
#>     Attrib V36    -0.49105722623876946
#>     Attrib V37    -0.39374911303249893
#>     Attrib V38    0.15826770869291962
#>     Attrib V39    0.3558034812139526
#>     Attrib V4    0.394196622944936
#>     Attrib V40    -0.1252298955302259
#>     Attrib V41    0.40222119230778347
#>     Attrib V42    -0.20756101895321255
#>     Attrib V43    0.3195940814413403
#>     Attrib V44    0.8926095447547064
#>     Attrib V45    0.4671328844103445
#>     Attrib V46    0.1392794556214404
#>     Attrib V47    -0.06589460465714532
#>     Attrib V48    -0.06798211073821636
#>     Attrib V49    0.014064144881745039
#>     Attrib V5    0.05074685371215616
#>     Attrib V50    -0.3460915086318964
#>     Attrib V51    -0.1356051423918265
#>     Attrib V52    -0.01357465353887374
#>     Attrib V53    0.29756917501000146
#>     Attrib V54    0.4330645303386667
#>     Attrib V55    -0.23476621774298173
#>     Attrib V56    -0.12149870950880745
#>     Attrib V57    0.14875765406901448
#>     Attrib V58    0.346798360164076
#>     Attrib V59    0.40921331319433835
#>     Attrib V6    0.27788509156045216
#>     Attrib V60    -0.24608876709331773
#>     Attrib V7    -0.06627582936606369
#>     Attrib V8    -0.10679309392165998
#>     Attrib V9    0.4781854117201765
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.5464527572017813
#>     Attrib V1    -0.2832734490621358
#>     Attrib V10    -0.5150980973050083
#>     Attrib V11    -0.9157684590871389
#>     Attrib V12    -0.8213495198167031
#>     Attrib V13    -0.20310048138835213
#>     Attrib V14    0.66264868694182
#>     Attrib V15    0.5417802542907075
#>     Attrib V16    0.33515511575421886
#>     Attrib V17    0.082080780286374
#>     Attrib V18    0.1511457050696132
#>     Attrib V19    -0.016754972041617293
#>     Attrib V2    0.11477627691821612
#>     Attrib V20    0.482546190204369
#>     Attrib V21    -0.14024989901112753
#>     Attrib V22    -0.22558790485614544
#>     Attrib V23    0.11432438514789461
#>     Attrib V24    -0.3222338346096309
#>     Attrib V25    0.04476283505984089
#>     Attrib V26    0.288143239615575
#>     Attrib V27    -0.31787750961564637
#>     Attrib V28    -0.698620861023883
#>     Attrib V29    -0.15460072580317522
#>     Attrib V3    0.686103921280192
#>     Attrib V30    0.04305592364848609
#>     Attrib V31    0.25925447798106055
#>     Attrib V32    -0.2689564776671399
#>     Attrib V33    -0.0425943697781314
#>     Attrib V34    0.2706515528351447
#>     Attrib V35    0.0685019248519401
#>     Attrib V36    0.8462695091827837
#>     Attrib V37    0.6238677462912698
#>     Attrib V38    0.24531306702672614
#>     Attrib V39    -0.022604467338307375
#>     Attrib V4    -0.5445377698395071
#>     Attrib V40    0.2116192295563061
#>     Attrib V41    -0.5328696696097219
#>     Attrib V42    0.1236262572956279
#>     Attrib V43    -0.16154847839034708
#>     Attrib V44    -0.5031822550988951
#>     Attrib V45    -0.31414322780268783
#>     Attrib V46    -0.30765754676284174
#>     Attrib V47    -0.21429466517932574
#>     Attrib V48    -0.18354888699330352
#>     Attrib V49    -0.21587158191321001
#>     Attrib V5    -0.1723987672209699
#>     Attrib V50    0.39437984192798986
#>     Attrib V51    -0.06741116863746334
#>     Attrib V52    -0.0324104677496417
#>     Attrib V53    -0.3626032592011537
#>     Attrib V54    -0.2700128583600913
#>     Attrib V55    0.004487523450222383
#>     Attrib V56    0.4238281882352635
#>     Attrib V57    -0.23797838538915703
#>     Attrib V58    -0.43805549049949555
#>     Attrib V59    -0.33040410826046035
#>     Attrib V6    -0.2595155495436712
#>     Attrib V60    0.1663251390156886
#>     Attrib V7    0.14270055704557508
#>     Attrib V8    -0.01244759564628451
#>     Attrib V9    -0.5000473267496055
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.20088097761436957
#>     Attrib V1    0.23416161274685354
#>     Attrib V10    -0.0753843807784987
#>     Attrib V11    0.2345081104707348
#>     Attrib V12    0.13905003656939813
#>     Attrib V13    -0.17732379083203578
#>     Attrib V14    -0.31357121926392867
#>     Attrib V15    -0.09214324892147303
#>     Attrib V16    0.029912388494920707
#>     Attrib V17    0.07711842269420784
#>     Attrib V18    0.16981586329453016
#>     Attrib V19    0.32378990720522566
#>     Attrib V2    -0.06518173844146463
#>     Attrib V20    0.28574035847447243
#>     Attrib V21    0.5395173962779661
#>     Attrib V22    0.47557374698976435
#>     Attrib V23    -0.002778512176485084
#>     Attrib V24    0.21789758995663264
#>     Attrib V25    -0.1336549263447129
#>     Attrib V26    -0.8343375534230735
#>     Attrib V27    -0.5229641154898304
#>     Attrib V28    -0.24617765345808373
#>     Attrib V29    -0.40215706408876006
#>     Attrib V3    -0.3660599160513146
#>     Attrib V30    -0.32272185464644004
#>     Attrib V31    -0.48540592496328483
#>     Attrib V32    0.32050664875754825
#>     Attrib V33    0.5670445644973829
#>     Attrib V34    0.13857165901324034
#>     Attrib V35    -0.07652741223865027
#>     Attrib V36    -0.513572876914678
#>     Attrib V37    -0.5419790751424403
#>     Attrib V38    -0.006004718388240089
#>     Attrib V39    0.2313249880981996
#>     Attrib V4    0.12740251517818915
#>     Attrib V40    0.09697721962018559
#>     Attrib V41    0.2225759741351815
#>     Attrib V42    -0.03557348312899441
#>     Attrib V43    0.3021556833752534
#>     Attrib V44    0.40860001144952857
#>     Attrib V45    0.23538344652289647
#>     Attrib V46    0.022686055588060312
#>     Attrib V47    -0.06625541997084264
#>     Attrib V48    -0.008944684938418842
#>     Attrib V49    0.055558290369896055
#>     Attrib V5    0.014613182350443392
#>     Attrib V50    -0.15006385608675632
#>     Attrib V51    -0.12548918005912332
#>     Attrib V52    0.03033529266192068
#>     Attrib V53    0.25921436028682354
#>     Attrib V54    0.49116297445043433
#>     Attrib V55    0.042387038774008456
#>     Attrib V56    0.2331079024618068
#>     Attrib V57    0.33814134686807434
#>     Attrib V58    0.3808051344779262
#>     Attrib V59    0.42158604858835463
#>     Attrib V6    0.24269556631229613
#>     Attrib V60    0.015437668136556159
#>     Attrib V7    0.15216176770181086
#>     Attrib V8    0.08655906190621793
#>     Attrib V9    0.15593425623395132
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.19104627712094993
#>     Attrib V1    -0.09984094781143257
#>     Attrib V10    -0.024879870443277795
#>     Attrib V11    -0.2048754860571895
#>     Attrib V12    -0.1638039180411859
#>     Attrib V13    0.006016730472397466
#>     Attrib V14    0.20546804527487222
#>     Attrib V15    0.17692468590772728
#>     Attrib V16    0.1550682483407534
#>     Attrib V17    0.16397713643215156
#>     Attrib V18    0.08729154402152974
#>     Attrib V19    -0.005452294193474327
#>     Attrib V2    0.05054565304562336
#>     Attrib V20    0.06767117577969635
#>     Attrib V21    -0.06584156516507593
#>     Attrib V22    -0.09995566397708988
#>     Attrib V23    0.02224780579766995
#>     Attrib V24    -0.13878941065603703
#>     Attrib V25    0.0559167406912235
#>     Attrib V26    0.2023814735815737
#>     Attrib V27    -0.025610701769383157
#>     Attrib V28    -0.18465443873145831
#>     Attrib V29    -0.1411163956363514
#>     Attrib V3    0.18426599968843901
#>     Attrib V30    -0.006953997175604246
#>     Attrib V31    0.17136125395935503
#>     Attrib V32    -0.12078594113767402
#>     Attrib V33    -0.10324555656640867
#>     Attrib V34    0.03240791591427138
#>     Attrib V35    0.06592178957263138
#>     Attrib V36    0.23528534524591616
#>     Attrib V37    0.24780707480125844
#>     Attrib V38    -0.013852157357244698
#>     Attrib V39    -0.02532312509423117
#>     Attrib V4    -0.1255956808394963
#>     Attrib V40    0.0464119078596073
#>     Attrib V41    -0.13616097894762316
#>     Attrib V42    0.05131709363858644
#>     Attrib V43    -0.11891403156230636
#>     Attrib V44    -0.24701335892139983
#>     Attrib V45    -0.11665077392443969
#>     Attrib V46    -0.09743102790199795
#>     Attrib V47    -0.039166858479321325
#>     Attrib V48    0.014080918099082492
#>     Attrib V49    -0.06571809765529381
#>     Attrib V5    -0.025029726829808682
#>     Attrib V50    0.08581784561401606
#>     Attrib V51    0.02427650624176834
#>     Attrib V52    0.004090374114169494
#>     Attrib V53    -0.08255885249992609
#>     Attrib V54    -0.12916373938398262
#>     Attrib V55    0.011630375870751896
#>     Attrib V56    0.09993579758661847
#>     Attrib V57    -0.08730823821930707
#>     Attrib V58    -0.0833587183082956
#>     Attrib V59    -0.06641382399455163
#>     Attrib V6    -0.034960083757341866
#>     Attrib V60    0.08412223273937232
#>     Attrib V7    -0.04423225607173562
#>     Attrib V8    -0.03713416585315527
#>     Attrib V9    -0.14149248651009427
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.12112502506416438
#>     Attrib V1    0.2576139906021575
#>     Attrib V10    -0.09525131148069377
#>     Attrib V11    0.16085597744982436
#>     Attrib V12    0.033346220755011806
#>     Attrib V13    -0.1615827387987846
#>     Attrib V14    -0.265280776204105
#>     Attrib V15    -0.038091534735277086
#>     Attrib V16    0.06724844117692451
#>     Attrib V17    0.10736322404240893
#>     Attrib V18    0.17569343179910643
#>     Attrib V19    0.3069870647910596
#>     Attrib V2    0.00999812273632816
#>     Attrib V20    0.269791405899841
#>     Attrib V21    0.3977415804916827
#>     Attrib V22    0.38437129813914217
#>     Attrib V23    0.04067215996757449
#>     Attrib V24    0.20263949261031589
#>     Attrib V25    -0.19815114019863075
#>     Attrib V26    -0.7654545830258512
#>     Attrib V27    -0.584425042402817
#>     Attrib V28    -0.3644864217470206
#>     Attrib V29    -0.526356749552852
#>     Attrib V3    -0.37110190660678416
#>     Attrib V30    -0.32686344044957827
#>     Attrib V31    -0.41742779848013994
#>     Attrib V32    0.27473332357982816
#>     Attrib V33    0.5779368052886368
#>     Attrib V34    0.18329143265412964
#>     Attrib V35    -0.04155509519830595
#>     Attrib V36    -0.4688367832765325
#>     Attrib V37    -0.5108157863045465
#>     Attrib V38    0.017274932481524313
#>     Attrib V39    0.1547041211888356
#>     Attrib V4    0.14011924098674994
#>     Attrib V40    0.09385251967770519
#>     Attrib V41    0.12049156682043957
#>     Attrib V42    -0.01879582391214868
#>     Attrib V43    0.24920702145404175
#>     Attrib V44    0.39699730316146903
#>     Attrib V45    0.128161626033367
#>     Attrib V46    0.00608883759080192
#>     Attrib V47    -0.09531945199770903
#>     Attrib V48    -0.0018835689848321182
#>     Attrib V49    0.05195675458603761
#>     Attrib V5    0.029800157512975982
#>     Attrib V50    -0.1661305108556235
#>     Attrib V51    -0.15735514783529594
#>     Attrib V52    0.00746652354802495
#>     Attrib V53    0.27173206157220486
#>     Attrib V54    0.5343137740314167
#>     Attrib V55    0.0781865780157522
#>     Attrib V56    0.2068050847012214
#>     Attrib V57    0.3401520810813356
#>     Attrib V58    0.3470236593672174
#>     Attrib V59    0.4241034653589103
#>     Attrib V6    0.20135520961666287
#>     Attrib V60    0.04563704386063436
#>     Attrib V7    0.1767064860863229
#>     Attrib V8    0.09535028445718356
#>     Attrib V9    0.15108937413507575
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.32035650499883245
#>     Attrib V1    -0.1965956520049896
#>     Attrib V10    -0.22431032717345278
#>     Attrib V11    -0.4359047497425618
#>     Attrib V12    -0.4040787900747875
#>     Attrib V13    -0.1141553734162651
#>     Attrib V14    0.439209573710642
#>     Attrib V15    0.2864360226133982
#>     Attrib V16    0.21709857026891152
#>     Attrib V17    0.07808978476672093
#>     Attrib V18    0.13344521740175708
#>     Attrib V19    -0.04838851566951855
#>     Attrib V2    0.035006285456497165
#>     Attrib V20    0.20504638130162978
#>     Attrib V21    -0.16959824750933003
#>     Attrib V22    -0.23090960604739336
#>     Attrib V23    0.07543079626719608
#>     Attrib V24    -0.2094964720558561
#>     Attrib V25    0.03391876096691406
#>     Attrib V26    0.33421135330084756
#>     Attrib V27    -0.010170118940005366
#>     Attrib V28    -0.29384480766497667
#>     Attrib V29    -0.10419203515924175
#>     Attrib V3    0.4485500590918439
#>     Attrib V30    0.03343082007207434
#>     Attrib V31    0.1874991147568864
#>     Attrib V32    -0.23339416724908085
#>     Attrib V33    -0.09759355377791337
#>     Attrib V34    0.15254211479820337
#>     Attrib V35    0.10158393393693001
#>     Attrib V36    0.5552853348165419
#>     Attrib V37    0.41131073299138404
#>     Attrib V38    0.044794351384362475
#>     Attrib V39    -0.07935175580824434
#>     Attrib V4    -0.3389020852292032
#>     Attrib V40    0.05731988643826293
#>     Attrib V41    -0.3272298902606217
#>     Attrib V42    0.07833957765087005
#>     Attrib V43    -0.1830778389059823
#>     Attrib V44    -0.2953923862339204
#>     Attrib V45    -0.15030166935957529
#>     Attrib V46    -0.16501068799388327
#>     Attrib V47    -0.07198920304903883
#>     Attrib V48    -0.0864333919226709
#>     Attrib V49    -0.030147003842801893
#>     Attrib V5    -0.0305659330061864
#>     Attrib V50    0.19063627504410255
#>     Attrib V51    0.05434761745002211
#>     Attrib V52    0.016266540850587465
#>     Attrib V53    -0.16567989702956604
#>     Attrib V54    -0.25555213208574723
#>     Attrib V55    0.02690219059720338
#>     Attrib V56    0.14915961888689624
#>     Attrib V57    -0.16018552961396768
#>     Attrib V58    -0.1822171155254958
#>     Attrib V59    -0.22053790000244602
#>     Attrib V6    -0.11261772323962896
#>     Attrib V60    0.1130581820093288
#>     Attrib V7    0.02002572673211094
#>     Attrib V8    -0.01022720388125616
#>     Attrib V9    -0.2500830499912107
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
#>  0.1594203 
```
