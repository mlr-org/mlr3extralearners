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
#>     Threshold    -0.9913691202834373
#>     Node 2    2.2585610648994017
#>     Node 3    1.611241814380796
#>     Node 4    1.3692449101927238
#>     Node 5    -1.5570866416797395
#>     Node 6    1.563771614989348
#>     Node 7    2.858232477294889
#>     Node 8    1.0928733622156512
#>     Node 9    2.274578230130245
#>     Node 10    -2.2651118444713894
#>     Node 11    1.5371975287049482
#>     Node 12    1.4973529024478178
#>     Node 13    0.8086047897202574
#>     Node 14    1.3791119557573577
#>     Node 15    -2.6452182184708226
#>     Node 16    0.38719369891060423
#>     Node 17    0.7761928377851066
#>     Node 18    -2.4514006674188162
#>     Node 19    1.8785432935799231
#>     Node 20    2.4341142318731013
#>     Node 21    -0.7665994640917954
#>     Node 22    1.7618605642365899
#>     Node 23    1.5978729142831876
#>     Node 24    -0.2762494374561782
#>     Node 25    4.302110078798302
#>     Node 26    0.6089061833420365
#>     Node 27    1.3020070004867879
#>     Node 28    -2.629033183509603
#>     Node 29    0.8818453452029954
#>     Node 30    0.9448149299005237
#>     Node 31    1.0882211569224751
#>     Node 32    1.0657983889572036
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    1.013010701109551
#>     Node 2    -2.310166999168639
#>     Node 3    -1.6018060172515283
#>     Node 4    -1.3443625678309705
#>     Node 5    1.5700984415277637
#>     Node 6    -1.5570535948642465
#>     Node 7    -2.8393927985102048
#>     Node 8    -1.1259233955407386
#>     Node 9    -2.2560336195057746
#>     Node 10    2.203368729952249
#>     Node 11    -1.5094346595708468
#>     Node 12    -1.5860057827306204
#>     Node 13    -0.7607652639321866
#>     Node 14    -1.3221990771341474
#>     Node 15    2.637463094213475
#>     Node 16    -0.4045346129572955
#>     Node 17    -0.7472240029409206
#>     Node 18    2.5008558473119913
#>     Node 19    -1.8677729811969541
#>     Node 20    -2.420438381872203
#>     Node 21    0.8208648588490163
#>     Node 22    -1.8181045300209093
#>     Node 23    -1.6480244071593613
#>     Node 24    0.26502585626106795
#>     Node 25    -4.2829670289995665
#>     Node 26    -0.6962447199372832
#>     Node 27    -1.3474207920350343
#>     Node 28    2.5829155770972827
#>     Node 29    -0.9183618589730053
#>     Node 30    -0.8725569816022537
#>     Node 31    -1.0360900039298557
#>     Node 32    -1.0891677659429388
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.45940295014401916
#>     Attrib V1    0.2065817689662888
#>     Attrib V10    0.8138937786051295
#>     Attrib V11    0.9636624779035317
#>     Attrib V12    1.1479457522538203
#>     Attrib V13    0.44295327239637317
#>     Attrib V14    -0.582332355148264
#>     Attrib V15    -0.743260249467864
#>     Attrib V16    -0.9111327453130376
#>     Attrib V17    -0.9094457985163761
#>     Attrib V18    -0.20378790794818488
#>     Attrib V19    -0.08564906108732741
#>     Attrib V2    0.25679813613069635
#>     Attrib V20    -0.36828094296193487
#>     Attrib V21    -0.014555202568686794
#>     Attrib V22    0.030518643806518406
#>     Attrib V23    0.2122184142581672
#>     Attrib V24    0.2378580830347202
#>     Attrib V25    -0.26774499476344366
#>     Attrib V26    0.370550431131759
#>     Attrib V27    0.8376940399199165
#>     Attrib V28    0.830346220456302
#>     Attrib V29    0.7171265813209877
#>     Attrib V3    0.008073968349107117
#>     Attrib V30    0.1460869430351657
#>     Attrib V31    -0.7524384860208325
#>     Attrib V32    0.0708002204020544
#>     Attrib V33    -0.28866465386411405
#>     Attrib V34    -0.2293437562333588
#>     Attrib V35    0.3445516830050278
#>     Attrib V36    -0.663730203733797
#>     Attrib V37    0.05366785912878857
#>     Attrib V38    -0.2770757116766756
#>     Attrib V39    0.2610608848110333
#>     Attrib V4    0.016184235710264294
#>     Attrib V40    0.01673052854707995
#>     Attrib V41    1.0191684513077217
#>     Attrib V42    -0.21393539912328785
#>     Attrib V43    0.08447629997789637
#>     Attrib V44    0.32626498963649403
#>     Attrib V45    0.5318885572548567
#>     Attrib V46    0.5196514196985531
#>     Attrib V47    0.39801435817596603
#>     Attrib V48    0.3444043451884905
#>     Attrib V49    0.5943228510656651
#>     Attrib V5    0.38525926390161935
#>     Attrib V50    -1.0063993544527423
#>     Attrib V51    0.40091323917784377
#>     Attrib V52    0.21026947994512937
#>     Attrib V53    0.3758512181943249
#>     Attrib V54    -0.021205811569356588
#>     Attrib V55    -0.6009068334658494
#>     Attrib V56    -0.2179149384662118
#>     Attrib V57    -0.21599532494666318
#>     Attrib V58    0.48759907110238665
#>     Attrib V59    0.8091109996369115
#>     Attrib V6    0.37573215260937565
#>     Attrib V60    0.29671940305879435
#>     Attrib V7    -0.4774356559346829
#>     Attrib V8    -0.6031864395712951
#>     Attrib V9    0.7428191573334176
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.3820766479749882
#>     Attrib V1    0.14296050246379668
#>     Attrib V10    0.6038419893472025
#>     Attrib V11    0.649922464674313
#>     Attrib V12    0.7571476729128813
#>     Attrib V13    0.3452334595649055
#>     Attrib V14    -0.4043912597254958
#>     Attrib V15    -0.4506731850068734
#>     Attrib V16    -0.5694733384215974
#>     Attrib V17    -0.5301402283826256
#>     Attrib V18    -0.10519650299005176
#>     Attrib V19    0.14310698382434456
#>     Attrib V2    0.0386844981407023
#>     Attrib V20    -0.15120155006756603
#>     Attrib V21    0.033156426454032016
#>     Attrib V22    0.12048363585091598
#>     Attrib V23    0.2621187970183476
#>     Attrib V24    0.242432180553046
#>     Attrib V25    -0.1416953254312644
#>     Attrib V26    0.21065383394270407
#>     Attrib V27    0.4497111110004903
#>     Attrib V28    0.42122493268898653
#>     Attrib V29    0.29246149837041135
#>     Attrib V3    -0.04831531181625676
#>     Attrib V30    0.2597131514921251
#>     Attrib V31    -0.24398732630539421
#>     Attrib V32    0.3825379183911515
#>     Attrib V33    0.20488904692056997
#>     Attrib V34    -0.03766403662715612
#>     Attrib V35    0.17242440710843565
#>     Attrib V36    -0.7081061517749341
#>     Attrib V37    -0.365941061517552
#>     Attrib V38    -0.47879022816611855
#>     Attrib V39    0.10393229100750093
#>     Attrib V4    0.011782514177135361
#>     Attrib V40    -0.04047795711516832
#>     Attrib V41    0.8202155237077765
#>     Attrib V42    0.078808722731116
#>     Attrib V43    0.06731682810488279
#>     Attrib V44    -0.04588337814249681
#>     Attrib V45    0.1492057283703315
#>     Attrib V46    0.19839837214143086
#>     Attrib V47    0.26488228711348627
#>     Attrib V48    0.3102083994974778
#>     Attrib V49    0.5485774410357884
#>     Attrib V5    0.20869414439255649
#>     Attrib V50    -0.7118571598602367
#>     Attrib V51    0.3047777961961083
#>     Attrib V52    0.1440310657276758
#>     Attrib V53    0.16437259479235303
#>     Attrib V54    0.07253572234813907
#>     Attrib V55    -0.362642679396583
#>     Attrib V56    -0.08632046329393754
#>     Attrib V57    -0.07854477043573473
#>     Attrib V58    0.5012694620446821
#>     Attrib V59    0.676276531819183
#>     Attrib V6    0.14428089444338688
#>     Attrib V60    0.11695318174640663
#>     Attrib V7    -0.39299667868151245
#>     Attrib V8    -0.23993881012126153
#>     Attrib V9    0.6512065520119745
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.24718537381275077
#>     Attrib V1    0.15321544957172792
#>     Attrib V10    0.23237420922974053
#>     Attrib V11    0.24302844644426524
#>     Attrib V12    0.22345393289276003
#>     Attrib V13    0.23348097524060013
#>     Attrib V14    -0.06364236018728449
#>     Attrib V15    -0.05561538158660506
#>     Attrib V16    -0.08542645411897282
#>     Attrib V17    0.004199449733334044
#>     Attrib V18    0.20511595111178627
#>     Attrib V19    0.33879112554315455
#>     Attrib V2    -0.22021382271747675
#>     Attrib V20    0.2974106741326981
#>     Attrib V21    0.4085217384824994
#>     Attrib V22    0.2789961800655671
#>     Attrib V23    0.2462367198722607
#>     Attrib V24    -0.043875901109225755
#>     Attrib V25    -0.5782544864007471
#>     Attrib V26    -0.38821081765252524
#>     Attrib V27    -0.040161646444647765
#>     Attrib V28    0.11334309204390043
#>     Attrib V29    0.0375913402775349
#>     Attrib V3    -0.09735136983274405
#>     Attrib V30    0.25749257845397083
#>     Attrib V31    -0.2573078285239735
#>     Attrib V32    0.1842239288503161
#>     Attrib V33    0.30307141351875166
#>     Attrib V34    -0.13701386808473387
#>     Attrib V35    -0.1413755641456156
#>     Attrib V36    -0.6966808285023638
#>     Attrib V37    -0.6231449015536025
#>     Attrib V38    -0.2914672588650119
#>     Attrib V39    0.09494010024626956
#>     Attrib V4    -0.02253949607627965
#>     Attrib V40    -0.2604951182861089
#>     Attrib V41    0.3162528252516615
#>     Attrib V42    0.37686298576895205
#>     Attrib V43    0.176220948200313
#>     Attrib V44    -0.2714888806400276
#>     Attrib V45    0.021464227823729788
#>     Attrib V46    -0.12892954030071047
#>     Attrib V47    -0.002235016519243454
#>     Attrib V48    0.3169089701116276
#>     Attrib V49    0.5052164652962033
#>     Attrib V5    0.12390156805674171
#>     Attrib V50    -0.5777491367025563
#>     Attrib V51    0.30308880054860315
#>     Attrib V52    -0.016964909863066382
#>     Attrib V53    -0.06429239238414482
#>     Attrib V54    0.3799871795264611
#>     Attrib V55    -0.19576018931117545
#>     Attrib V56    0.08492678331211204
#>     Attrib V57    0.10196338957019241
#>     Attrib V58    0.3938429859969917
#>     Attrib V59    0.6482043098062223
#>     Attrib V6    -0.13932095758408364
#>     Attrib V60    0.048869109390209206
#>     Attrib V7    -0.23247652986141149
#>     Attrib V8    -0.057611126650381754
#>     Attrib V9    0.4972935856864397
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.3251631634996581
#>     Attrib V1    -0.1657136868233833
#>     Attrib V10    -0.20779739519908336
#>     Attrib V11    -0.2869329783054119
#>     Attrib V12    -0.2934505232099704
#>     Attrib V13    -0.23195589288893345
#>     Attrib V14    0.2419207766946318
#>     Attrib V15    0.2627154647779556
#>     Attrib V16    0.178629132284842
#>     Attrib V17    0.10098546369270797
#>     Attrib V18    -0.25146342029137186
#>     Attrib V19    -0.42273248779105277
#>     Attrib V2    0.2569216999194721
#>     Attrib V20    -0.26711612637596427
#>     Attrib V21    -0.3598992040500291
#>     Attrib V22    -0.4376815495234064
#>     Attrib V23    -0.40572021650972817
#>     Attrib V24    -0.10550923860992518
#>     Attrib V25    0.5963953132550688
#>     Attrib V26    0.2942420478610594
#>     Attrib V27    -0.1097306269550482
#>     Attrib V28    -0.24351397276274747
#>     Attrib V29    -0.11134101583467457
#>     Attrib V3    0.20443057405154574
#>     Attrib V30    -0.23186900175584135
#>     Attrib V31    0.47855911381271937
#>     Attrib V32    -0.09189885468591083
#>     Attrib V33    -0.2627215787638563
#>     Attrib V34    0.056080373899294024
#>     Attrib V35    -0.08403086482745391
#>     Attrib V36    0.5684526320917
#>     Attrib V37    0.39316173222475054
#>     Attrib V38    0.09444998061376625
#>     Attrib V39    -0.295215805062752
#>     Attrib V4    -0.010794944661348015
#>     Attrib V40    0.280571180186557
#>     Attrib V41    -0.49459751178010075
#>     Attrib V42    -0.27274652165665425
#>     Attrib V43    -0.2686346133911371
#>     Attrib V44    0.14052165039526845
#>     Attrib V45    -0.1746672514644332
#>     Attrib V46    -0.0811504590795969
#>     Attrib V47    -0.11344239193280288
#>     Attrib V48    -0.3180546734242576
#>     Attrib V49    -0.6173720713372679
#>     Attrib V5    -0.037253294437951764
#>     Attrib V50    0.851401208098301
#>     Attrib V51    -0.35568151994137853
#>     Attrib V52    0.018219031499660247
#>     Attrib V53    0.14096236907549364
#>     Attrib V54    -0.3141685041449077
#>     Attrib V55    0.3707313137014577
#>     Attrib V56    0.0531327420934038
#>     Attrib V57    -0.09152468301851682
#>     Attrib V58    -0.5028475394329917
#>     Attrib V59    -0.6687708714974663
#>     Attrib V6    0.1732853889720127
#>     Attrib V60    -0.07047619531079671
#>     Attrib V7    0.3864533012143101
#>     Attrib V8    0.2321240375294992
#>     Attrib V9    -0.475737462248712
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.3220754330226358
#>     Attrib V1    0.30346539192877636
#>     Attrib V10    0.1725959167279581
#>     Attrib V11    0.1775022556100799
#>     Attrib V12    0.1333226793461462
#>     Attrib V13    0.09971109485841273
#>     Attrib V14    -0.09003304107171678
#>     Attrib V15    -0.07543809084188463
#>     Attrib V16    0.045506978122827245
#>     Attrib V17    0.08287370064211041
#>     Attrib V18    0.3170219866188438
#>     Attrib V19    0.4010471654945335
#>     Attrib V2    -0.2862287375828701
#>     Attrib V20    0.37937317509765994
#>     Attrib V21    0.4538588424858258
#>     Attrib V22    0.3455473789406004
#>     Attrib V23    0.27430645277560206
#>     Attrib V24    0.013774444784837766
#>     Attrib V25    -0.5131069234285002
#>     Attrib V26    -0.3983075985293193
#>     Attrib V27    0.0060735701371015935
#>     Attrib V28    -0.046478452345956024
#>     Attrib V29    -0.13033956243803455
#>     Attrib V3    -0.15108389609087675
#>     Attrib V30    0.3072739029851372
#>     Attrib V31    -0.3090872278166598
#>     Attrib V32    0.18177094480791078
#>     Attrib V33    0.331747270336196
#>     Attrib V34    -0.2573089395677884
#>     Attrib V35    -0.2490326606445282
#>     Attrib V36    -0.698084005929559
#>     Attrib V37    -0.686407095775454
#>     Attrib V38    -0.20200783373119469
#>     Attrib V39    0.11040047513192781
#>     Attrib V4    0.05660363688336239
#>     Attrib V40    -0.31835277477329577
#>     Attrib V41    0.3593007626575693
#>     Attrib V42    0.5571898406014743
#>     Attrib V43    0.29514561425201635
#>     Attrib V44    -0.32851491966953517
#>     Attrib V45    -0.07903827660964743
#>     Attrib V46    -0.17817521697295163
#>     Attrib V47    -0.061805642941761135
#>     Attrib V48    0.23245374495668086
#>     Attrib V49    0.45057595050743354
#>     Attrib V5    0.08936424894007601
#>     Attrib V50    -0.5172503918784696
#>     Attrib V51    0.2767003680482957
#>     Attrib V52    -0.06463690321009201
#>     Attrib V53    -0.04915015670710971
#>     Attrib V54    0.5429190967395318
#>     Attrib V55    -0.21953117237677416
#>     Attrib V56    0.13484217160216225
#>     Attrib V57    0.19288519766279272
#>     Attrib V58    0.45904004877533766
#>     Attrib V59    0.825898579972638
#>     Attrib V6    -0.14194530953695475
#>     Attrib V60    0.19573134134512693
#>     Attrib V7    -0.11197481388565093
#>     Attrib V8    0.13278554098995057
#>     Attrib V9    0.525431474905928
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.38335338205848635
#>     Attrib V1    0.26072293288842463
#>     Attrib V10    0.8384158443304053
#>     Attrib V11    1.1447356178488817
#>     Attrib V12    1.3823049207095424
#>     Attrib V13    0.5159802137612574
#>     Attrib V14    -0.6691288513725547
#>     Attrib V15    -0.8369828849879534
#>     Attrib V16    -1.0583371900729936
#>     Attrib V17    -1.112994235627838
#>     Attrib V18    -0.34201739958401023
#>     Attrib V19    -0.25565032581376307
#>     Attrib V2    0.5150371119763683
#>     Attrib V20    -0.6652253673315764
#>     Attrib V21    -0.24459010089156571
#>     Attrib V22    -0.12487136417190904
#>     Attrib V23    0.22174822039530512
#>     Attrib V24    0.27676835938072586
#>     Attrib V25    -0.14589642166808003
#>     Attrib V26    0.6760776323859773
#>     Attrib V27    1.0647548239648041
#>     Attrib V28    1.0061837190151812
#>     Attrib V29    0.9795404269949474
#>     Attrib V3    0.177829772626089
#>     Attrib V30    0.010450183975016287
#>     Attrib V31    -0.7593241211443027
#>     Attrib V32    -0.07975337260670055
#>     Attrib V33    -0.6095377971333171
#>     Attrib V34    -0.2977723946960703
#>     Attrib V35    0.47392099479690053
#>     Attrib V36    -0.7475531480376741
#>     Attrib V37    0.283774986785824
#>     Attrib V38    -0.3040036139817391
#>     Attrib V39    0.28786418851569745
#>     Attrib V4    0.10873080516636692
#>     Attrib V40    0.12757345600012568
#>     Attrib V41    1.1433673975010632
#>     Attrib V42    -0.4688921044352571
#>     Attrib V43    -0.041300449481081025
#>     Attrib V44    0.41309917763482684
#>     Attrib V45    0.6626497465901608
#>     Attrib V46    0.8160710082462732
#>     Attrib V47    0.5517744551059222
#>     Attrib V48    0.24230302950305896
#>     Attrib V49    0.5036323696719708
#>     Attrib V5    0.42140065778259067
#>     Attrib V50    -1.0749056196019275
#>     Attrib V51    0.46761123786955144
#>     Attrib V52    0.34418374922004596
#>     Attrib V53    0.620192524697548
#>     Attrib V54    -0.12248364657272202
#>     Attrib V55    -0.6587344821104926
#>     Attrib V56    -0.3095684773461391
#>     Attrib V57    -0.2007943753765269
#>     Attrib V58    0.5530564902841146
#>     Attrib V59    0.6692116467933502
#>     Attrib V6    0.6148019220270999
#>     Attrib V60    0.4804054044816691
#>     Attrib V7    -0.4257007807193887
#>     Attrib V8    -0.8306984305280433
#>     Attrib V9    0.8408737026036681
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.26931960488050183
#>     Attrib V1    0.10699421150558813
#>     Attrib V10    0.28666870036598935
#>     Attrib V11    0.3425244949687423
#>     Attrib V12    0.2604018228600876
#>     Attrib V13    0.05174355869220962
#>     Attrib V14    -0.36517120019833527
#>     Attrib V15    -0.3491324713396418
#>     Attrib V16    -0.32268023759904524
#>     Attrib V17    -0.3350225224664031
#>     Attrib V18    -0.07949684836232208
#>     Attrib V19    0.09558973591875126
#>     Attrib V2    -0.07565895875240965
#>     Attrib V20    -0.06638266950763586
#>     Attrib V21    0.19124224905770892
#>     Attrib V22    0.2143509702059506
#>     Attrib V23    0.32763713380586235
#>     Attrib V24    0.28932351845730775
#>     Attrib V25    -0.08445983058489091
#>     Attrib V26    0.19671704308034993
#>     Attrib V27    0.3858942259258754
#>     Attrib V28    0.3741893068369561
#>     Attrib V29    0.2846644041522022
#>     Attrib V3    -0.08313949799633896
#>     Attrib V30    0.24884804183504747
#>     Attrib V31    -0.28253155037548205
#>     Attrib V32    0.0661230662354423
#>     Attrib V33    0.04712370626250402
#>     Attrib V34    -0.06743155315234331
#>     Attrib V35    0.15441043849517522
#>     Attrib V36    -0.2993916260798186
#>     Attrib V37    -0.10124164035408825
#>     Attrib V38    -0.09234361806626944
#>     Attrib V39    0.18101514166063812
#>     Attrib V4    0.060430118128322725
#>     Attrib V40    -0.08560305431569047
#>     Attrib V41    0.4933094743554537
#>     Attrib V42    0.10990779974631416
#>     Attrib V43    0.20058403445501552
#>     Attrib V44    0.17816168304618923
#>     Attrib V45    0.23906163202234962
#>     Attrib V46    0.24796683792996133
#>     Attrib V47    0.2544516826572175
#>     Attrib V48    0.3427326630851684
#>     Attrib V49    0.4784231354135454
#>     Attrib V5    0.13464579090829457
#>     Attrib V50    -0.5012123744821219
#>     Attrib V51    0.239956675832126
#>     Attrib V52    0.04240241239099088
#>     Attrib V53    0.14866156569543562
#>     Attrib V54    0.1698392247097312
#>     Attrib V55    -0.34384575531032974
#>     Attrib V56    -0.0913883769882279
#>     Attrib V57    0.1014644331171846
#>     Attrib V58    0.3066124731614181
#>     Attrib V59    0.5532170150730308
#>     Attrib V6    -0.04003476595045268
#>     Attrib V60    0.18361719291757328
#>     Attrib V7    -0.2659119773409188
#>     Attrib V8    -0.23241847295385004
#>     Attrib V9    0.3908048900766754
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.30534900235665746
#>     Attrib V1    0.17872458174652323
#>     Attrib V10    0.8190315793458528
#>     Attrib V11    0.9439572521866
#>     Attrib V12    1.1831169767363252
#>     Attrib V13    0.482497002598116
#>     Attrib V14    -0.6215427623580893
#>     Attrib V15    -0.7057932390787318
#>     Attrib V16    -0.8425400159319852
#>     Attrib V17    -0.8811514338708026
#>     Attrib V18    -0.30951615781216024
#>     Attrib V19    -0.23849877577737263
#>     Attrib V2    0.35068529327926734
#>     Attrib V20    -0.5463612522658294
#>     Attrib V21    -0.15987692105195594
#>     Attrib V22    -0.08550121065914343
#>     Attrib V23    0.13232602424249176
#>     Attrib V24    0.24342020953627075
#>     Attrib V25    -0.08932991570594091
#>     Attrib V26    0.5094806203499567
#>     Attrib V27    0.8379175434220646
#>     Attrib V28    0.7565232706312871
#>     Attrib V29    0.6516390814437626
#>     Attrib V3    0.07153606328028149
#>     Attrib V30    0.028333309826191703
#>     Attrib V31    -0.5699948258709608
#>     Attrib V32    0.11127152073062471
#>     Attrib V33    -0.29281151595184146
#>     Attrib V34    -0.09618169042164461
#>     Attrib V35    0.38900769419449754
#>     Attrib V36    -0.6048003920127473
#>     Attrib V37    0.09165320080212232
#>     Attrib V38    -0.2925735983522942
#>     Attrib V39    0.25614581752814897
#>     Attrib V4    0.07218415593430356
#>     Attrib V40    0.0068116491797628005
#>     Attrib V41    0.9009131471755697
#>     Attrib V42    -0.3967581362769831
#>     Attrib V43    0.030766728874375843
#>     Attrib V44    0.2665099123087024
#>     Attrib V45    0.5382392372120434
#>     Attrib V46    0.633368118089538
#>     Attrib V47    0.4192850379480838
#>     Attrib V48    0.21959081811404915
#>     Attrib V49    0.51439391897895
#>     Attrib V5    0.3078844806936237
#>     Attrib V50    -0.886744925252259
#>     Attrib V51    0.39518327348903476
#>     Attrib V52    0.2532857372321743
#>     Attrib V53    0.4734018281152845
#>     Attrib V54    -0.12780403560112485
#>     Attrib V55    -0.5029651402615658
#>     Attrib V56    -0.20569798654049634
#>     Attrib V57    -0.24148796660838534
#>     Attrib V58    0.45543649243002543
#>     Attrib V59    0.5751630834058006
#>     Attrib V6    0.4460921301168464
#>     Attrib V60    0.293952576303008
#>     Attrib V7    -0.43134612515512377
#>     Attrib V8    -0.5561674397291787
#>     Attrib V9    0.7476089896031993
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.5014545093313697
#>     Attrib V1    -0.1703611259242026
#>     Attrib V10    -0.22578464791509237
#>     Attrib V11    -0.36463001707112863
#>     Attrib V12    -0.17197863202816693
#>     Attrib V13    -0.2238684235761822
#>     Attrib V14    0.33247684820380113
#>     Attrib V15    0.24879278494084486
#>     Attrib V16    0.2630835477536365
#>     Attrib V17    0.048680924734180536
#>     Attrib V18    -0.2211758816813947
#>     Attrib V19    -0.5329886872517238
#>     Attrib V2    0.4197147603750636
#>     Attrib V20    -0.4369627295383542
#>     Attrib V21    -0.6278194414826347
#>     Attrib V22    -0.7576712843468018
#>     Attrib V23    -0.7229402411815304
#>     Attrib V24    -0.22856168964484805
#>     Attrib V25    0.7346946136707977
#>     Attrib V26    0.4278405620323822
#>     Attrib V27    -0.20153111502077253
#>     Attrib V28    -0.35463219005913804
#>     Attrib V29    -0.21084282990318476
#>     Attrib V3    0.3114999188940538
#>     Attrib V30    -0.4096982786871041
#>     Attrib V31    0.6529798632400371
#>     Attrib V32    -0.1041148997255204
#>     Attrib V33    -0.3391355981173761
#>     Attrib V34    0.09985723321516456
#>     Attrib V35    -0.2155427868515218
#>     Attrib V36    0.45058148726053787
#>     Attrib V37    0.3497343678402085
#>     Attrib V38    -0.04604694548492153
#>     Attrib V39    -0.48283934003442985
#>     Attrib V4    0.06044572122023363
#>     Attrib V40    0.4633357045772993
#>     Attrib V41    -0.4413333650492128
#>     Attrib V42    -0.5477322397736148
#>     Attrib V43    -0.5757923746213458
#>     Attrib V44    -0.013396982503651901
#>     Attrib V45    -0.2607039469836786
#>     Attrib V46    -0.08724079249028613
#>     Attrib V47    -0.15332197033173126
#>     Attrib V48    -0.4862782915213729
#>     Attrib V49    -0.8989597440886349
#>     Attrib V5    -0.006942050588048175
#>     Attrib V50    1.0789930500595177
#>     Attrib V51    -0.450411321626723
#>     Attrib V52    0.08656432900931879
#>     Attrib V53    0.4360152735789981
#>     Attrib V54    -0.5689527978501524
#>     Attrib V55    0.37516533613847336
#>     Attrib V56    -0.0037113377486522755
#>     Attrib V57    -0.1733640409132596
#>     Attrib V58    -0.6930063246210628
#>     Attrib V59    -1.0502530893849076
#>     Attrib V6    0.4234365010667621
#>     Attrib V60    -0.10391314432162733
#>     Attrib V7    0.5412679945072211
#>     Attrib V8    0.24623085764809238
#>     Attrib V9    -0.5404833400312914
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.13545599696222274
#>     Attrib V1    0.2710845641591035
#>     Attrib V10    0.10240469622771531
#>     Attrib V11    0.07523879513830752
#>     Attrib V12    -0.005965640507273438
#>     Attrib V13    0.06864796045487499
#>     Attrib V14    0.10019541465346507
#>     Attrib V15    0.15597297563725462
#>     Attrib V16    0.1698784621355172
#>     Attrib V17    0.27461027944043254
#>     Attrib V18    0.3159881218780313
#>     Attrib V19    0.36186468412518863
#>     Attrib V2    -0.2332151293358748
#>     Attrib V20    0.5501261089716409
#>     Attrib V21    0.5081841921063767
#>     Attrib V22    0.3417298682179914
#>     Attrib V23    0.17191792324188876
#>     Attrib V24    -0.20631010467600688
#>     Attrib V25    -0.7322785039425168
#>     Attrib V26    -0.6946241862363054
#>     Attrib V27    -0.15942905123238188
#>     Attrib V28    -0.0062795516720536146
#>     Attrib V29    -0.10698425500288197
#>     Attrib V3    -0.12019223722623798
#>     Attrib V30    0.22808956985860482
#>     Attrib V31    -0.4605620249073847
#>     Attrib V32    -0.1868848878685275
#>     Attrib V33    0.04657659749897156
#>     Attrib V34    -0.3449673254963192
#>     Attrib V35    -0.2694253721921209
#>     Attrib V36    -0.4391761120210592
#>     Attrib V37    -0.4222970152099212
#>     Attrib V38    0.06254368010820253
#>     Attrib V39    0.13967726299645
#>     Attrib V4    0.06316573062510415
#>     Attrib V40    -0.41159796444963387
#>     Attrib V41    -0.0642357772149427
#>     Attrib V42    0.4153586873386401
#>     Attrib V43    0.34464961356689183
#>     Attrib V44    -0.015496298441512396
#>     Attrib V45    0.12633364847219275
#>     Attrib V46    -0.13828120140359937
#>     Attrib V47    -0.001200241004667693
#>     Attrib V48    0.2686124607958099
#>     Attrib V49    0.3815962630207915
#>     Attrib V5    0.1359715140517021
#>     Attrib V50    -0.36688322233554094
#>     Attrib V51    0.30105615857189755
#>     Attrib V52    0.005110928133842843
#>     Attrib V53    -0.10418215545175676
#>     Attrib V54    0.7597943675388147
#>     Attrib V55    -0.03829668275973087
#>     Attrib V56    0.23327157060980924
#>     Attrib V57    0.3356553545998684
#>     Attrib V58    0.4687880213025324
#>     Attrib V59    0.660661934623508
#>     Attrib V6    -0.1498392008446381
#>     Attrib V60    0.16420309670030342
#>     Attrib V7    -0.12572040539429236
#>     Attrib V8    0.09655328650489589
#>     Attrib V9    0.34570036811223265
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.5173887407351093
#>     Attrib V1    0.12608005253699717
#>     Attrib V10    0.36720526040768875
#>     Attrib V11    0.5255134505312486
#>     Attrib V12    0.3727780204136976
#>     Attrib V13    0.1539824941900929
#>     Attrib V14    -0.4017903610275614
#>     Attrib V15    -0.4351310745405561
#>     Attrib V16    -0.41085975135229896
#>     Attrib V17    -0.3562731300326497
#>     Attrib V18    0.047887514507793716
#>     Attrib V19    0.29763196910595313
#>     Attrib V2    -0.13752828118064547
#>     Attrib V20    0.06807209043663674
#>     Attrib V21    0.2997764286500371
#>     Attrib V22    0.3578558788276303
#>     Attrib V23    0.42121164691161167
#>     Attrib V24    0.14818115211031174
#>     Attrib V25    -0.459240834836976
#>     Attrib V26    -0.029269091829682018
#>     Attrib V27    0.4359681442735675
#>     Attrib V28    0.41440089429542865
#>     Attrib V29    0.3514947800826215
#>     Attrib V3    -0.22967533607489884
#>     Attrib V30    0.3274455338088525
#>     Attrib V31    -0.4915275235977885
#>     Attrib V32    0.11594698706067787
#>     Attrib V33    0.20774623599166453
#>     Attrib V34    -0.12122546415529231
#>     Attrib V35    0.1277527910980535
#>     Attrib V36    -0.6543041665478434
#>     Attrib V37    -0.3466784943188453
#>     Attrib V38    -0.25351171710747017
#>     Attrib V39    0.1747002672666325
#>     Attrib V4    -0.0365879985272259
#>     Attrib V40    -0.175216531915605
#>     Attrib V41    0.6593346088249008
#>     Attrib V42    0.263807032938735
#>     Attrib V43    0.3058465605526962
#>     Attrib V44    -0.04768607914357574
#>     Attrib V45    0.2099818753354479
#>     Attrib V46    0.19915792730248277
#>     Attrib V47    0.19958871228649683
#>     Attrib V48    0.436620013358642
#>     Attrib V49    0.628403820249204
#>     Attrib V5    0.1607681722747634
#>     Attrib V50    -0.8408060956058417
#>     Attrib V51    0.35956906963383933
#>     Attrib V52    0.05758313150040419
#>     Attrib V53    0.07254051674874938
#>     Attrib V54    0.239164891884202
#>     Attrib V55    -0.4982858638655692
#>     Attrib V56    -0.08236855362333488
#>     Attrib V57    0.029980411630334425
#>     Attrib V58    0.5170044173223137
#>     Attrib V59    0.7923664671013753
#>     Attrib V6    -0.057244846563207635
#>     Attrib V60    0.09723459500909631
#>     Attrib V7    -0.3678666087184376
#>     Attrib V8    -0.27262145298991475
#>     Attrib V9    0.6196271999408023
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.008487699909706919
#>     Attrib V1    0.14695257994756844
#>     Attrib V10    0.08545307567894772
#>     Attrib V11    0.1264970802489902
#>     Attrib V12    0.10888998577389307
#>     Attrib V13    0.19890673408797765
#>     Attrib V14    0.042998452186768864
#>     Attrib V15    0.006152994237288097
#>     Attrib V16    0.004573010858299012
#>     Attrib V17    0.12265336361119965
#>     Attrib V18    0.2165702003965211
#>     Attrib V19    0.22525877852270942
#>     Attrib V2    -0.10341407871365399
#>     Attrib V20    0.22262408011123117
#>     Attrib V21    0.25774479394521854
#>     Attrib V22    0.14519530331347655
#>     Attrib V23    0.12123693935762404
#>     Attrib V24    -0.047381622879046875
#>     Attrib V25    -0.29112780383618464
#>     Attrib V26    -0.3112977875087549
#>     Attrib V27    -0.027104297458267597
#>     Attrib V28    -0.0595215918203021
#>     Attrib V29    -0.08158195548476302
#>     Attrib V3    0.024522693865279218
#>     Attrib V30    0.06727098474417108
#>     Attrib V31    -0.2879563239371024
#>     Attrib V32    0.009343208867067736
#>     Attrib V33    0.07100696078636444
#>     Attrib V34    -0.09369365937144693
#>     Attrib V35    -0.09209334057191307
#>     Attrib V36    -0.3143886413183427
#>     Attrib V37    -0.2675015520834737
#>     Attrib V38    -0.0381243755110353
#>     Attrib V39    0.1524006610664689
#>     Attrib V4    0.0787389918825779
#>     Attrib V40    -0.14730057125268414
#>     Attrib V41    0.10436325811642055
#>     Attrib V42    0.1626174466133872
#>     Attrib V43    0.09323268642353144
#>     Attrib V44    -0.1123604929481469
#>     Attrib V45    -0.02610207050371682
#>     Attrib V46    -0.0399887769708154
#>     Attrib V47    0.028427139867157163
#>     Attrib V48    0.11846780784498225
#>     Attrib V49    0.25554186823935315
#>     Attrib V5    0.10545900548822144
#>     Attrib V50    -0.2900293881998903
#>     Attrib V51    0.1361097191161719
#>     Attrib V52    -0.04521550839404232
#>     Attrib V53    -0.023312385380843476
#>     Attrib V54    0.30237018531752174
#>     Attrib V55    -0.03834112307899213
#>     Attrib V56    0.10873982299463979
#>     Attrib V57    0.14412919202972843
#>     Attrib V58    0.25577397479325814
#>     Attrib V59    0.46709716420964253
#>     Attrib V6    -0.07285164997888255
#>     Attrib V60    0.2062427957061942
#>     Attrib V7    -0.043108815133853624
#>     Attrib V8    -0.024048866505019185
#>     Attrib V9    0.2347373826294722
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.414752598592849
#>     Attrib V1    0.23935804037939004
#>     Attrib V10    0.3758673198573091
#>     Attrib V11    0.46674554367651283
#>     Attrib V12    0.4184415545761173
#>     Attrib V13    0.19052164616874045
#>     Attrib V14    -0.32880241888805
#>     Attrib V15    -0.2221422367789477
#>     Attrib V16    -0.29826190709948125
#>     Attrib V17    -0.20140102271303392
#>     Attrib V18    0.10946591719920172
#>     Attrib V19    0.20817983975031462
#>     Attrib V2    -0.1462206107875457
#>     Attrib V20    0.08300690386145972
#>     Attrib V21    0.23619963388681156
#>     Attrib V22    0.2422766298067445
#>     Attrib V23    0.31930299048524297
#>     Attrib V24    0.05448654855798944
#>     Attrib V25    -0.4559984436089831
#>     Attrib V26    -0.12537435175102096
#>     Attrib V27    0.21507866275809867
#>     Attrib V28    0.20924708553436946
#>     Attrib V29    0.08218349522573663
#>     Attrib V3    -0.19407434295867557
#>     Attrib V30    0.26666953524393555
#>     Attrib V31    -0.3373763999484005
#>     Attrib V32    0.158202344369414
#>     Attrib V33    0.194371193341274
#>     Attrib V34    -0.1627759698576365
#>     Attrib V35    0.04410319965925409
#>     Attrib V36    -0.6910753806037937
#>     Attrib V37    -0.4089614469887721
#>     Attrib V38    -0.30120593296281156
#>     Attrib V39    0.11831093049940988
#>     Attrib V4    -0.05886323258935317
#>     Attrib V40    -0.25655954132111985
#>     Attrib V41    0.4748038413172353
#>     Attrib V42    0.18409775845713647
#>     Attrib V43    0.15617333876915482
#>     Attrib V44    -0.11883056447652403
#>     Attrib V45    -0.002118573562601418
#>     Attrib V46    0.045222191788321625
#>     Attrib V47    0.08094530048426048
#>     Attrib V48    0.31107208926891855
#>     Attrib V49    0.5259720057185816
#>     Attrib V5    0.08287537418334513
#>     Attrib V50    -0.6983927704483296
#>     Attrib V51    0.2739107537432021
#>     Attrib V52    -0.008672990399112084
#>     Attrib V53    -0.0019124941477475783
#>     Attrib V54    0.38047786347348933
#>     Attrib V55    -0.2883706501647567
#>     Attrib V56    -0.005530559248996006
#>     Attrib V57    0.04373370593969129
#>     Attrib V58    0.4672242794423929
#>     Attrib V59    0.6799379578323325
#>     Attrib V6    -0.0819645526351786
#>     Attrib V60    0.15426583413512343
#>     Attrib V7    -0.33565891480940807
#>     Attrib V8    -0.2378899379259168
#>     Attrib V9    0.5387855633633748
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.4983926376195561
#>     Attrib V1    -0.2775944924066154
#>     Attrib V10    -0.0963092949779227
#>     Attrib V11    -0.3004948788211046
#>     Attrib V12    0.044999198067509454
#>     Attrib V13    -0.22461003925362782
#>     Attrib V14    0.16211179914630414
#>     Attrib V15    0.26730006486164526
#>     Attrib V16    0.1857681669363603
#>     Attrib V17    -0.034587114757900723
#>     Attrib V18    -0.28259990110403166
#>     Attrib V19    -0.5761154495803078
#>     Attrib V2    0.5618607158751818
#>     Attrib V20    -0.6422262702439413
#>     Attrib V21    -0.8431958456971291
#>     Attrib V22    -0.8198148092593215
#>     Attrib V23    -0.800945742238477
#>     Attrib V24    -0.13668043983385125
#>     Attrib V25    0.8702460199116011
#>     Attrib V26    0.5887952462749456
#>     Attrib V27    -0.2609322943766264
#>     Attrib V28    -0.36940592330849653
#>     Attrib V29    -0.09040374035730782
#>     Attrib V3    0.36833421562861013
#>     Attrib V30    -0.5484141584498805
#>     Attrib V31    0.7330495382494426
#>     Attrib V32    0.11266505073988771
#>     Attrib V33    -0.43728925721166173
#>     Attrib V34    0.19428315951220906
#>     Attrib V35    -0.1302892767428481
#>     Attrib V36    0.3658027281929002
#>     Attrib V37    0.44612613170969695
#>     Attrib V38    -0.2251740319977247
#>     Attrib V39    -0.529894288081735
#>     Attrib V4    0.062453957859900176
#>     Attrib V40    0.5811090269601692
#>     Attrib V41    -0.3177095516914837
#>     Attrib V42    -0.842282712971601
#>     Attrib V43    -0.8237867076544096
#>     Attrib V44    -0.16419626324087028
#>     Attrib V45    -0.30425107673778573
#>     Attrib V46    0.059462417417156514
#>     Attrib V47    -0.10950452158083575
#>     Attrib V48    -0.5843133855915753
#>     Attrib V49    -0.9969479622633215
#>     Attrib V5    0.03372576154619934
#>     Attrib V50    1.0750662788525616
#>     Attrib V51    -0.4046503356068899
#>     Attrib V52    0.11982157620613493
#>     Attrib V53    0.5703523137615211
#>     Attrib V54    -0.7405315293818442
#>     Attrib V55    0.3766032674354875
#>     Attrib V56    -0.04642112921464204
#>     Attrib V57    -0.3769296525082951
#>     Attrib V58    -0.7219313427678146
#>     Attrib V59    -1.1997516568993023
#>     Attrib V6    0.5225426869603732
#>     Attrib V60    -0.0798745677927483
#>     Attrib V7    0.48309183881025486
#>     Attrib V8    0.14368078747316818
#>     Attrib V9    -0.4388427987217306
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.09003109685940563
#>     Attrib V1    0.10438616642958452
#>     Attrib V10    0.09552925837855006
#>     Attrib V11    0.08886081555469272
#>     Attrib V12    0.08632249171795632
#>     Attrib V13    0.12348087685483951
#>     Attrib V14    0.037799491453369534
#>     Attrib V15    0.03077236290676452
#>     Attrib V16    0.09092347125561018
#>     Attrib V17    0.117216777143312
#>     Attrib V18    0.15551623112537327
#>     Attrib V19    0.12536713658531992
#>     Attrib V2    -0.019940043062155636
#>     Attrib V20    0.04534544905030524
#>     Attrib V21    0.06510696099403578
#>     Attrib V22    0.009097711497337126
#>     Attrib V23    -0.05111170755203654
#>     Attrib V24    -0.025339447213346848
#>     Attrib V25    -0.1289857623927401
#>     Attrib V26    -0.1718643828992014
#>     Attrib V27    -0.0767188238859861
#>     Attrib V28    -0.031153486418159203
#>     Attrib V29    -0.08629287858525796
#>     Attrib V3    0.07610575376455739
#>     Attrib V30    -0.0451244012700702
#>     Attrib V31    -0.1584550535448908
#>     Attrib V32    0.005107181488696369
#>     Attrib V33    -0.007233539100043846
#>     Attrib V34    -0.051303306980978035
#>     Attrib V35    -0.050272489618332784
#>     Attrib V36    -0.15777397471734594
#>     Attrib V37    -0.09852573040403388
#>     Attrib V38    0.0014521329180955998
#>     Attrib V39    0.08043611487114333
#>     Attrib V4    0.10384791129238558
#>     Attrib V40    -0.10746393659454974
#>     Attrib V41    0.029790302229955868
#>     Attrib V42    0.08013396652314905
#>     Attrib V43    0.04739422714726793
#>     Attrib V44    -0.06558998398376864
#>     Attrib V45    0.04400773062991685
#>     Attrib V46    0.01709481176645637
#>     Attrib V47    0.0319845390135723
#>     Attrib V48    0.07420585264146896
#>     Attrib V49    0.09347902172781876
#>     Attrib V5    0.09417683394374575
#>     Attrib V50    -0.05474847163469491
#>     Attrib V51    0.14902861508922569
#>     Attrib V52    0.050035419892310175
#>     Attrib V53    0.0707807442830983
#>     Attrib V54    0.14739378287805843
#>     Attrib V55    0.059753208000051294
#>     Attrib V56    0.12326583062333467
#>     Attrib V57    0.13803846415751536
#>     Attrib V58    0.2093198913367905
#>     Attrib V59    0.1937191250726808
#>     Attrib V6    -0.006785583702909311
#>     Attrib V60    0.15081665873688152
#>     Attrib V7    -0.03976388776903541
#>     Attrib V8    -0.0032223070842702707
#>     Attrib V9    0.17831987583815243
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.04992538546531107
#>     Attrib V1    0.18305041965368235
#>     Attrib V10    0.14576582991513812
#>     Attrib V11    0.1433276101668782
#>     Attrib V12    0.06174543295104874
#>     Attrib V13    0.08923917117962639
#>     Attrib V14    0.043162448271750926
#>     Attrib V15    0.12035963930976179
#>     Attrib V16    0.0759827235844541
#>     Attrib V17    0.13483471366552446
#>     Attrib V18    0.1945826363114814
#>     Attrib V19    0.233558827623439
#>     Attrib V2    3.993697140406081E-4
#>     Attrib V20    0.18619872286820163
#>     Attrib V21    0.2350462874976036
#>     Attrib V22    0.21411007104943847
#>     Attrib V23    0.04853191518188461
#>     Attrib V24    -0.061542887119684773
#>     Attrib V25    -0.37106124598536483
#>     Attrib V26    -0.34039755358643226
#>     Attrib V27    -0.11081437465556083
#>     Attrib V28    -0.07648049663260327
#>     Attrib V29    -0.14769592354085542
#>     Attrib V3    -0.014445165066776646
#>     Attrib V30    0.07615833780264844
#>     Attrib V31    -0.18456172596086942
#>     Attrib V32    -0.05162927441611011
#>     Attrib V33    0.09613325647323866
#>     Attrib V34    -0.1614567878756877
#>     Attrib V35    -0.04664300492956389
#>     Attrib V36    -0.2879336656626545
#>     Attrib V37    -0.2649650286839514
#>     Attrib V38    0.031182092963679856
#>     Attrib V39    0.12596000077716674
#>     Attrib V4    0.08190620211927463
#>     Attrib V40    -0.22556440352392637
#>     Attrib V41    0.05114315626381135
#>     Attrib V42    0.1090295564715017
#>     Attrib V43    0.17697097112613452
#>     Attrib V44    -0.027769426938409093
#>     Attrib V45    0.08578673312184186
#>     Attrib V46    -0.0794913160887194
#>     Attrib V47    -0.049458549757858426
#>     Attrib V48    0.16740508917396874
#>     Attrib V49    0.18357895583781234
#>     Attrib V5    0.08170332957732562
#>     Attrib V50    -0.2342399120172605
#>     Attrib V51    0.1526731808693662
#>     Attrib V52    -0.03445480282300948
#>     Attrib V53    -0.07409508607812286
#>     Attrib V54    0.29779429630112364
#>     Attrib V55    0.0425413284301659
#>     Attrib V56    0.16300585402403833
#>     Attrib V57    0.19452723867353997
#>     Attrib V58    0.23148404614949153
#>     Attrib V59    0.3644999809450019
#>     Attrib V6    -0.07627397893480353
#>     Attrib V60    0.1752026323320772
#>     Attrib V7    -0.13458048524409089
#>     Attrib V8    0.06553843573227781
#>     Attrib V9    0.24543412392551206
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.4666889954649152
#>     Attrib V1    -0.37532560834148126
#>     Attrib V10    -0.1767638063441778
#>     Attrib V11    -0.2578212352281383
#>     Attrib V12    -0.06551208405079664
#>     Attrib V13    -0.18762864119262226
#>     Attrib V14    0.10678962681056106
#>     Attrib V15    0.09973453275421268
#>     Attrib V16    0.028765077868638505
#>     Attrib V17    -0.14982432300966267
#>     Attrib V18    -0.2709436270131385
#>     Attrib V19    -0.6492650277609595
#>     Attrib V2    0.49773955364168193
#>     Attrib V20    -0.6343735533091667
#>     Attrib V21    -0.7028526057093493
#>     Attrib V22    -0.6710290597865693
#>     Attrib V23    -0.5970716707390642
#>     Attrib V24    -0.10144564273219517
#>     Attrib V25    0.8095448650385692
#>     Attrib V26    0.5936837783171537
#>     Attrib V27    0.004217070001340153
#>     Attrib V28    -0.11331232955282014
#>     Attrib V29    0.068586569329309
#>     Attrib V3    0.2741574969538411
#>     Attrib V30    -0.538191771209312
#>     Attrib V31    0.39107831102264984
#>     Attrib V32    -0.13135073318564422
#>     Attrib V33    -0.5085925559573501
#>     Attrib V34    0.24063731115146292
#>     Attrib V35    0.18012524433147029
#>     Attrib V36    0.7950535038182918
#>     Attrib V37    0.8345827693072285
#>     Attrib V38    0.11975911224153715
#>     Attrib V39    -0.2698815590167622
#>     Attrib V4    -0.05198760478185399
#>     Attrib V40    0.46643736929276775
#>     Attrib V41    -0.4042837785549929
#>     Attrib V42    -0.8539407220666226
#>     Attrib V43    -0.5872397506465942
#>     Attrib V44    0.351387700747897
#>     Attrib V45    0.004632890567894503
#>     Attrib V46    0.21233065782177135
#>     Attrib V47    -0.0036036277924433855
#>     Attrib V48    -0.5706916850650045
#>     Attrib V49    -0.8707159913014548
#>     Attrib V5    -0.026208327020438422
#>     Attrib V50    0.8220654182027147
#>     Attrib V51    -0.4247933088435008
#>     Attrib V52    0.03988063729064714
#>     Attrib V53    0.30619466343010615
#>     Attrib V54    -0.8036547672976432
#>     Attrib V55    0.2825313020186916
#>     Attrib V56    -0.17165388541881618
#>     Attrib V57    -0.4297521215766918
#>     Attrib V58    -0.7104990184503541
#>     Attrib V59    -1.1268651154403182
#>     Attrib V6    0.3545033451770056
#>     Attrib V60    -0.0762235790662839
#>     Attrib V7    0.38846055521550327
#>     Attrib V8    -0.05623018764577087
#>     Attrib V9    -0.5509404136971988
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.31265409383618814
#>     Attrib V1    0.1326310995919513
#>     Attrib V10    0.574062452700625
#>     Attrib V11    0.6974516101086529
#>     Attrib V12    0.9155954122108453
#>     Attrib V13    0.29844468320584583
#>     Attrib V14    -0.49335210737900187
#>     Attrib V15    -0.5624039136773067
#>     Attrib V16    -0.7468542501322102
#>     Attrib V17    -0.7231740341370081
#>     Attrib V18    -0.21500145460812253
#>     Attrib V19    -0.02022959805475692
#>     Attrib V2    0.21787955507979131
#>     Attrib V20    -0.38276230778013737
#>     Attrib V21    -0.09662701033648056
#>     Attrib V22    0.053840221419532756
#>     Attrib V23    0.23007287129011997
#>     Attrib V24    0.3138733711855121
#>     Attrib V25    -0.01687538877340522
#>     Attrib V26    0.4223739466597465
#>     Attrib V27    0.6836333971818941
#>     Attrib V28    0.6536704034792241
#>     Attrib V29    0.5549319029371771
#>     Attrib V3    -0.0255613375026931
#>     Attrib V30    0.09223514295089255
#>     Attrib V31    -0.43481911811219887
#>     Attrib V32    0.121543670834533
#>     Attrib V33    -0.11058582106046555
#>     Attrib V34    -0.05909299079314936
#>     Attrib V35    0.4053267328319241
#>     Attrib V36    -0.5229699820193542
#>     Attrib V37    -0.027975709605071116
#>     Attrib V38    -0.30778604850652963
#>     Attrib V39    0.2074860271446025
#>     Attrib V4    0.09338354594757926
#>     Attrib V40    0.03738212999928189
#>     Attrib V41    0.8114737652552134
#>     Attrib V42    -0.16445034249332205
#>     Attrib V43    0.019162959136375685
#>     Attrib V44    0.19913125947653493
#>     Attrib V45    0.4701457033464114
#>     Attrib V46    0.5053431027237839
#>     Attrib V47    0.351808255087509
#>     Attrib V48    0.328516321420245
#>     Attrib V49    0.6057018159566232
#>     Attrib V5    0.2959712095819492
#>     Attrib V50    -0.7721963804984945
#>     Attrib V51    0.33151663122991526
#>     Attrib V52    0.22261773996394052
#>     Attrib V53    0.37688094043765724
#>     Attrib V54    -0.04146704844812022
#>     Attrib V55    -0.45883599054544677
#>     Attrib V56    -0.234841551528463
#>     Attrib V57    -0.1623791717480667
#>     Attrib V58    0.4770710531576138
#>     Attrib V59    0.5731945679171434
#>     Attrib V6    0.2944565332794463
#>     Attrib V60    0.26007840539050997
#>     Attrib V7    -0.3638410572273075
#>     Attrib V8    -0.5256246060984755
#>     Attrib V9    0.58652755923018
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.42997383295883645
#>     Attrib V1    0.2166120185904761
#>     Attrib V10    0.7062153353344532
#>     Attrib V11    0.8763855399358103
#>     Attrib V12    1.122945528483602
#>     Attrib V13    0.3233730084418585
#>     Attrib V14    -0.6181181444933882
#>     Attrib V15    -0.7067758880098197
#>     Attrib V16    -0.9216776940748332
#>     Attrib V17    -0.9028255546353191
#>     Attrib V18    -0.16955922189070824
#>     Attrib V19    -0.032038163631099834
#>     Attrib V2    0.2665027383248704
#>     Attrib V20    -0.4768906246194831
#>     Attrib V21    -0.06538363494209941
#>     Attrib V22    0.07648882618088286
#>     Attrib V23    0.3628264505723936
#>     Attrib V24    0.4269528201889429
#>     Attrib V25    -0.05993660846658576
#>     Attrib V26    0.6049579010377819
#>     Attrib V27    0.9707198380326332
#>     Attrib V28    0.8278652991354942
#>     Attrib V29    0.8367382863599945
#>     Attrib V3    -0.041912832293145665
#>     Attrib V30    0.1509145870371996
#>     Attrib V31    -0.6635222200539178
#>     Attrib V32    -0.09704242429708315
#>     Attrib V33    -0.5023242570300138
#>     Attrib V34    -0.31779741619853846
#>     Attrib V35    0.3714892254037349
#>     Attrib V36    -0.6445758582457916
#>     Attrib V37    0.13909968254654562
#>     Attrib V38    -0.30855894689292523
#>     Attrib V39    0.301563836299089
#>     Attrib V4    0.06302774591669962
#>     Attrib V40    0.11323816531945545
#>     Attrib V41    1.1240623463006116
#>     Attrib V42    -0.26628722295281493
#>     Attrib V43    0.09980777171702772
#>     Attrib V44    0.3971847127600735
#>     Attrib V45    0.5129306320017479
#>     Attrib V46    0.6173519641601866
#>     Attrib V47    0.4918041630917274
#>     Attrib V48    0.3848241395820653
#>     Attrib V49    0.5973321318882285
#>     Attrib V5    0.44074033707972243
#>     Attrib V50    -0.9411209574604829
#>     Attrib V51    0.524603107953792
#>     Attrib V52    0.29967042218351747
#>     Attrib V53    0.6218728393041596
#>     Attrib V54    0.04018980333015807
#>     Attrib V55    -0.6223427239781979
#>     Attrib V56    -0.27236232469280675
#>     Attrib V57    -0.1571447596041891
#>     Attrib V58    0.5402914522165018
#>     Attrib V59    0.7727678308753845
#>     Attrib V6    0.4673726176025959
#>     Attrib V60    0.3716675581656616
#>     Attrib V7    -0.3162238945440057
#>     Attrib V8    -0.7419950152550705
#>     Attrib V9    0.6499461524836383
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.12166070794916663
#>     Attrib V1    -0.08719926046399737
#>     Attrib V10    -0.17310537588575814
#>     Attrib V11    -0.23709242294490745
#>     Attrib V12    -0.22906540529533562
#>     Attrib V13    -0.1741316218537772
#>     Attrib V14    0.11807471536340218
#>     Attrib V15    0.12929866495153045
#>     Attrib V16    0.11947862025153817
#>     Attrib V17    0.06788998596365771
#>     Attrib V18    -0.1274610486613657
#>     Attrib V19    -0.2265111666589586
#>     Attrib V2    0.048479299026713774
#>     Attrib V20    -0.06441699621897197
#>     Attrib V21    -0.1052168767584996
#>     Attrib V22    -0.22353429812613126
#>     Attrib V23    -0.2584401084455444
#>     Attrib V24    -0.0858217093087192
#>     Attrib V25    0.26944689089309737
#>     Attrib V26    0.17397960156807857
#>     Attrib V27    -0.04904337115365263
#>     Attrib V28    -0.11608649800818113
#>     Attrib V29    -0.03575834643512358
#>     Attrib V3    0.02803787939569503
#>     Attrib V30    -0.07153517289797034
#>     Attrib V31    0.2406433213318629
#>     Attrib V32    -0.12849576969866966
#>     Attrib V33    -0.14751300252351465
#>     Attrib V34    -0.003540435241458551
#>     Attrib V35    -0.07106470896636206
#>     Attrib V36    0.35566370786497625
#>     Attrib V37    0.31411195238793643
#>     Attrib V38    0.12466203107780831
#>     Attrib V39    -0.0691274200709656
#>     Attrib V4    0.022161161318314578
#>     Attrib V40    0.18733856504447424
#>     Attrib V41    -0.2557319874760109
#>     Attrib V42    -0.14161514347211737
#>     Attrib V43    -0.0944905437910445
#>     Attrib V44    0.06614730445872599
#>     Attrib V45    -0.12168253717811055
#>     Attrib V46    -0.07955816348326915
#>     Attrib V47    -0.11102135752925728
#>     Attrib V48    -0.15813449596293963
#>     Attrib V49    -0.3381764572617805
#>     Attrib V5    -0.05262842138662568
#>     Attrib V50    0.4476004135331194
#>     Attrib V51    -0.18934177149473402
#>     Attrib V52    -0.00442323550094895
#>     Attrib V53    0.05487788797866447
#>     Attrib V54    -0.13248181628853284
#>     Attrib V55    0.14300139524066266
#>     Attrib V56    -0.02313702743999681
#>     Attrib V57    0.04651619700988925
#>     Attrib V58    -0.27178971318824335
#>     Attrib V59    -0.31009028175315934
#>     Attrib V6    -0.00429335647446287
#>     Attrib V60    -0.03644885001444421
#>     Attrib V7    0.20024249419356646
#>     Attrib V8    0.09125033894834209
#>     Attrib V9    -0.23500961277185906
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.18096921839159996
#>     Attrib V1    0.39803227140580033
#>     Attrib V10    0.11183055196262406
#>     Attrib V11    0.017956617452370576
#>     Attrib V12    -0.12381851169686173
#>     Attrib V13    0.04827041811865318
#>     Attrib V14    0.14818521538226823
#>     Attrib V15    0.20267498020558136
#>     Attrib V16    0.28148441782256384
#>     Attrib V17    0.2700637069321786
#>     Attrib V18    0.26891764380047684
#>     Attrib V19    0.3625722127391092
#>     Attrib V2    -0.21229444462155606
#>     Attrib V20    0.5862514108576897
#>     Attrib V21    0.5672145035103928
#>     Attrib V22    0.3737748628900421
#>     Attrib V23    0.11260273364984781
#>     Attrib V24    -0.22931576782064297
#>     Attrib V25    -0.9162710043634998
#>     Attrib V26    -0.8285790576538395
#>     Attrib V27    -0.2236349291013363
#>     Attrib V28    -0.11560914436974644
#>     Attrib V29    -0.11631367763187822
#>     Attrib V3    -0.12762217229836909
#>     Attrib V30    0.20539036111233477
#>     Attrib V31    -0.42605173782042216
#>     Attrib V32    -0.1926700247915844
#>     Attrib V33    0.04866839539590713
#>     Attrib V34    -0.4311100457410717
#>     Attrib V35    -0.3797261163158472
#>     Attrib V36    -0.47946412212570905
#>     Attrib V37    -0.4172329469445431
#>     Attrib V38    -0.005984537277291797
#>     Attrib V39    0.11040741260822598
#>     Attrib V4    0.08611506025143768
#>     Attrib V40    -0.4265570431224608
#>     Attrib V41    -0.09687935020590346
#>     Attrib V42    0.4612981095710349
#>     Attrib V43    0.43087006487489976
#>     Attrib V44    -0.0703664630378003
#>     Attrib V45    0.007960728769595896
#>     Attrib V46    -0.15248011632303096
#>     Attrib V47    -0.1126791163961723
#>     Attrib V48    0.2835248399814701
#>     Attrib V49    0.41190177481129675
#>     Attrib V5    0.14428297036259943
#>     Attrib V50    -0.3997982816306706
#>     Attrib V51    0.22552454589145798
#>     Attrib V52    0.03810270885041358
#>     Attrib V53    -0.15408072946364937
#>     Attrib V54    0.8580093567203891
#>     Attrib V55    -0.013561071674955474
#>     Attrib V56    0.2969302800943427
#>     Attrib V57    0.37416212245048036
#>     Attrib V58    0.5410069111914326
#>     Attrib V59    0.795923743982405
#>     Attrib V6    -0.1328825174132089
#>     Attrib V60    0.2574681948146526
#>     Attrib V7    -0.03838457325829219
#>     Attrib V8    0.013490502800335365
#>     Attrib V9    0.36112931947615645
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.15759164945794898
#>     Attrib V1    0.3584538570410847
#>     Attrib V10    0.021288084803301358
#>     Attrib V11    0.03218663501485499
#>     Attrib V12    -0.09365494250279657
#>     Attrib V13    0.0765013478991903
#>     Attrib V14    0.15489919635929758
#>     Attrib V15    0.22299048172933672
#>     Attrib V16    0.1913569818491327
#>     Attrib V17    0.31508921694589226
#>     Attrib V18    0.29973575991270035
#>     Attrib V19    0.3804674798845342
#>     Attrib V2    -0.2395653652338672
#>     Attrib V20    0.5178606554615375
#>     Attrib V21    0.5333036590792136
#>     Attrib V22    0.39801498734245755
#>     Attrib V23    0.18353605673944726
#>     Attrib V24    -0.25816001118851567
#>     Attrib V25    -0.8080731920147542
#>     Attrib V26    -0.6904521041297873
#>     Attrib V27    -0.22722469889919092
#>     Attrib V28    -0.1199586528158158
#>     Attrib V29    -0.18375967044289726
#>     Attrib V3    -0.05659378456092353
#>     Attrib V30    0.1732319979460094
#>     Attrib V31    -0.46903154237110917
#>     Attrib V32    -0.22772070407675177
#>     Attrib V33    0.0280209490187189
#>     Attrib V34    -0.4267381531872833
#>     Attrib V35    -0.28224296153807277
#>     Attrib V36    -0.38638082492492043
#>     Attrib V37    -0.31633982572892855
#>     Attrib V38    0.05454434590288745
#>     Attrib V39    0.1484467681643496
#>     Attrib V4    0.13383074159023767
#>     Attrib V40    -0.451926751911734
#>     Attrib V41    -0.09331897669545527
#>     Attrib V42    0.4062343281616871
#>     Attrib V43    0.4094822061868979
#>     Attrib V44    -0.029510284079452206
#>     Attrib V45    0.0940133273032902
#>     Attrib V46    -0.1532622955488275
#>     Attrib V47    -0.02446026962885736
#>     Attrib V48    0.18458824943895694
#>     Attrib V49    0.36352204866776444
#>     Attrib V5    0.11028685883726033
#>     Attrib V50    -0.3509170657929265
#>     Attrib V51    0.2080101197575987
#>     Attrib V52    0.07070884687399294
#>     Attrib V53    -0.06722618756816043
#>     Attrib V54    0.7909066270754954
#>     Attrib V55    0.00939295337159912
#>     Attrib V56    0.3115767449717109
#>     Attrib V57    0.3336431854617455
#>     Attrib V58    0.47145389225373574
#>     Attrib V59    0.7765871643816153
#>     Attrib V6    -0.1773820269654134
#>     Attrib V60    0.21630878978023493
#>     Attrib V7    -0.03681461389882052
#>     Attrib V8    0.05142928462381266
#>     Attrib V9    0.2916788989877661
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.12151674600877327
#>     Attrib V1    0.002612775406001774
#>     Attrib V10    -0.027128146256251703
#>     Attrib V11    -0.05895033458136021
#>     Attrib V12    -0.06482652192551135
#>     Attrib V13    -0.07578717803238892
#>     Attrib V14    0.0348355338436291
#>     Attrib V15    0.09991652458426215
#>     Attrib V16    0.03652171003259464
#>     Attrib V17    0.06322834469180547
#>     Attrib V18    -0.07797857785167889
#>     Attrib V19    -0.10665366068629865
#>     Attrib V2    0.052793377729210125
#>     Attrib V20    -0.061361801262101986
#>     Attrib V21    -0.10875343063898903
#>     Attrib V22    -0.1430202849495534
#>     Attrib V23    -0.07193332918959418
#>     Attrib V24    -0.10900788326685619
#>     Attrib V25    -0.002742221671494346
#>     Attrib V26    4.36511584260859E-4
#>     Attrib V27    -0.11174126378272145
#>     Attrib V28    -0.061414857787075755
#>     Attrib V29    -0.05623986038834166
#>     Attrib V3    0.05075823812958037
#>     Attrib V30    -0.02887396296822655
#>     Attrib V31    0.06249406281975833
#>     Attrib V32    0.04978328415454946
#>     Attrib V33    -0.015344049513971775
#>     Attrib V34    0.08146353598999431
#>     Attrib V35    0.07451551451443458
#>     Attrib V36    0.20826873099726542
#>     Attrib V37    0.10936246000259875
#>     Attrib V38    0.09332730828758216
#>     Attrib V39    0.015003509485057442
#>     Attrib V4    0.07228625601902801
#>     Attrib V40    0.16613335233271756
#>     Attrib V41    0.02800153899084928
#>     Attrib V42    0.011919940395172898
#>     Attrib V43    0.05432328982200917
#>     Attrib V44    -0.0018655685996841684
#>     Attrib V45    -0.0665205572250256
#>     Attrib V46    0.04277837503928341
#>     Attrib V47    0.055468166774241864
#>     Attrib V48    -0.049042469284576215
#>     Attrib V49    -0.1142986090308424
#>     Attrib V5    -0.011888775125882739
#>     Attrib V50    0.2550286985514762
#>     Attrib V51    0.04588620383233985
#>     Attrib V52    0.11882882629044386
#>     Attrib V53    0.05238798046247834
#>     Attrib V54    -0.015250897611176439
#>     Attrib V55    0.12529448350054082
#>     Attrib V56    0.061903830966202625
#>     Attrib V57    0.08389894756181449
#>     Attrib V58    -0.020174740335890624
#>     Attrib V59    -0.07231911384017528
#>     Attrib V6    0.0671303642107943
#>     Attrib V60    0.002198151213344932
#>     Attrib V7    0.06888120506730198
#>     Attrib V8    0.10964375092336803
#>     Attrib V9    0.0176437348174674
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.6781828191522606
#>     Attrib V1    0.07855178071397292
#>     Attrib V10    0.7982934129207877
#>     Attrib V11    1.1847240287973042
#>     Attrib V12    1.4577564158171097
#>     Attrib V13    0.4313380321684917
#>     Attrib V14    -0.938648485104178
#>     Attrib V15    -1.1855866521030234
#>     Attrib V16    -1.12903032699738
#>     Attrib V17    -0.9094113149001446
#>     Attrib V18    0.32128482064690217
#>     Attrib V19    0.6314072492611873
#>     Attrib V2    0.29398981205950264
#>     Attrib V20    -0.28968826898472183
#>     Attrib V21    0.10237636879226075
#>     Attrib V22    0.5172095232115888
#>     Attrib V23    1.1665341114710752
#>     Attrib V24    1.0147140769646732
#>     Attrib V25    0.32059731665390867
#>     Attrib V26    1.1406712650755293
#>     Attrib V27    1.306885700187207
#>     Attrib V28    1.2312110109941639
#>     Attrib V29    1.2135811657921522
#>     Attrib V3    0.037641780205257866
#>     Attrib V30    0.27405829059799147
#>     Attrib V31    -0.7160906906452135
#>     Attrib V32    0.20118925652161726
#>     Attrib V33    -0.6146057707850332
#>     Attrib V34    -0.1787100306982366
#>     Attrib V35    0.637240113073873
#>     Attrib V36    -1.0312708522036953
#>     Attrib V37    -0.19825966468269557
#>     Attrib V38    -0.7068099278403789
#>     Attrib V39    0.735683378095111
#>     Attrib V4    0.16135378493935695
#>     Attrib V40    0.5841881902489784
#>     Attrib V41    2.039123143728345
#>     Attrib V42    -0.14834373580532137
#>     Attrib V43    -0.03556349659147943
#>     Attrib V44    0.3006844725442864
#>     Attrib V45    0.4925077830169149
#>     Attrib V46    0.9082995447811808
#>     Attrib V47    0.9074615736468784
#>     Attrib V48    0.6620606324073377
#>     Attrib V49    1.147162478036603
#>     Attrib V5    0.5385121843581462
#>     Attrib V50    -1.0490471061206137
#>     Attrib V51    0.8404258494637625
#>     Attrib V52    0.8945398088086961
#>     Attrib V53    1.3884968538858928
#>     Attrib V54    -0.06992776368560769
#>     Attrib V55    -1.1135267320870506
#>     Attrib V56    -0.7001065960583968
#>     Attrib V57    -0.24772453004697692
#>     Attrib V58    0.6381170588409679
#>     Attrib V59    0.6407537341016111
#>     Attrib V6    0.6299304766185164
#>     Attrib V60    0.08260844555992479
#>     Attrib V7    -0.38457243002283403
#>     Attrib V8    -0.9894175378176534
#>     Attrib V9    0.9113060623500093
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.04783117405540575
#>     Attrib V1    0.15743766383361577
#>     Attrib V10    0.06502509794364335
#>     Attrib V11    0.07212617711700242
#>     Attrib V12    0.10211957859571219
#>     Attrib V13    0.09778417534587648
#>     Attrib V14    0.11550677475567198
#>     Attrib V15    0.057670389038846616
#>     Attrib V16    0.0683073693538588
#>     Attrib V17    0.16292635796580776
#>     Attrib V18    0.1647060823015705
#>     Attrib V19    0.2478771171068613
#>     Attrib V2    -0.01947203095335766
#>     Attrib V20    0.1866653003486244
#>     Attrib V21    0.23189817977797425
#>     Attrib V22    0.1351631319072328
#>     Attrib V23    0.04883907004979149
#>     Attrib V24    -0.09237734901701322
#>     Attrib V25    -0.3001348655099273
#>     Attrib V26    -0.29534052156055535
#>     Attrib V27    -0.05984938439892788
#>     Attrib V28    -0.026180257036561284
#>     Attrib V29    -0.08849686495164996
#>     Attrib V3    -0.01826420991792382
#>     Attrib V30    0.013762814536944005
#>     Attrib V31    -0.2783686336596899
#>     Attrib V32    -0.10362408997612627
#>     Attrib V33    0.02551532005588634
#>     Attrib V34    -0.1558139352344539
#>     Attrib V35    -0.011965608668545891
#>     Attrib V36    -0.15392118684884518
#>     Attrib V37    -0.10761155154914169
#>     Attrib V38    0.0212924433989499
#>     Attrib V39    0.13364439658776714
#>     Attrib V4    0.11797595388111419
#>     Attrib V40    -0.17132303147497405
#>     Attrib V41    0.006128289366492574
#>     Attrib V42    0.1135700436106571
#>     Attrib V43    0.13793519386839936
#>     Attrib V44    -0.007708888740611846
#>     Attrib V45    0.06113381477914365
#>     Attrib V46    -0.046031366370169725
#>     Attrib V47    -0.008411527020284535
#>     Attrib V48    0.1609567933210145
#>     Attrib V49    0.18127526822988124
#>     Attrib V5    0.04787816459798755
#>     Attrib V50    -0.17733104926252702
#>     Attrib V51    0.11257766541106756
#>     Attrib V52    -0.02845897604427765
#>     Attrib V53    -0.026091943267716074
#>     Attrib V54    0.29319190981067783
#>     Attrib V55    0.012571668178007873
#>     Attrib V56    0.15199933111819816
#>     Attrib V57    0.1885008540485747
#>     Attrib V58    0.24645957653797892
#>     Attrib V59    0.3832176835972523
#>     Attrib V6    -0.049586222289918776
#>     Attrib V60    0.2320754951697329
#>     Attrib V7    -0.10034930152343266
#>     Attrib V8    0.016506019013500618
#>     Attrib V9    0.16346209116652224
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.4396252788651892
#>     Attrib V1    0.23137485790470794
#>     Attrib V10    0.3761594199392692
#>     Attrib V11    0.4465732836984265
#>     Attrib V12    0.38632815835939155
#>     Attrib V13    0.16249255067609591
#>     Attrib V14    -0.4045798640993065
#>     Attrib V15    -0.37518208062995734
#>     Attrib V16    -0.41648297954797153
#>     Attrib V17    -0.3769725825286436
#>     Attrib V18    0.05625093134959315
#>     Attrib V19    0.1545286690125533
#>     Attrib V2    -0.13623073627474247
#>     Attrib V20    -0.014540712542334718
#>     Attrib V21    0.2598584891877863
#>     Attrib V22    0.2810756706276243
#>     Attrib V23    0.32989212771309884
#>     Attrib V24    0.20760284493501566
#>     Attrib V25    -0.3053312984745353
#>     Attrib V26    0.1399498854604134
#>     Attrib V27    0.4126541994542194
#>     Attrib V28    0.3363330227673079
#>     Attrib V29    0.26351048197613297
#>     Attrib V3    -0.176339822691811
#>     Attrib V30    0.27139180683078823
#>     Attrib V31    -0.3810664153946604
#>     Attrib V32    0.09418409944103127
#>     Attrib V33    0.07892238105452672
#>     Attrib V34    -0.10912045389573306
#>     Attrib V35    0.12536849704461753
#>     Attrib V36    -0.49112722125716773
#>     Attrib V37    -0.20800638324257076
#>     Attrib V38    -0.17573479089924096
#>     Attrib V39    0.21519545106302101
#>     Attrib V4    -0.03480315092081028
#>     Attrib V40    -0.21252727325414547
#>     Attrib V41    0.5531222218219737
#>     Attrib V42    0.19879300567303984
#>     Attrib V43    0.19811373135061816
#>     Attrib V44    0.08764937661379547
#>     Attrib V45    0.23943233214230925
#>     Attrib V46    0.13156279776763322
#>     Attrib V47    0.14167713625583075
#>     Attrib V48    0.3331139197384643
#>     Attrib V49    0.5025790931554093
#>     Attrib V5    0.12714409636852328
#>     Attrib V50    -0.5956077527568716
#>     Attrib V51    0.2984613238526871
#>     Attrib V52    0.0348018988482648
#>     Attrib V53    0.08877599070802994
#>     Attrib V54    0.3023419703067485
#>     Attrib V55    -0.3442638642356257
#>     Attrib V56    -0.1252711917899655
#>     Attrib V57    0.019353972210054395
#>     Attrib V58    0.43824284704133276
#>     Attrib V59    0.6842936386010593
#>     Attrib V6    -0.009637489925863631
#>     Attrib V60    0.13666698181639594
#>     Attrib V7    -0.3564629136404265
#>     Attrib V8    -0.25255467942930837
#>     Attrib V9    0.5298052563506777
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.7344876178944836
#>     Attrib V1    -0.19645933912925817
#>     Attrib V10    -0.601333502372139
#>     Attrib V11    -0.7472042939967003
#>     Attrib V12    -0.6947401183283733
#>     Attrib V13    -0.40007676492514915
#>     Attrib V14    0.5576312152882659
#>     Attrib V15    0.47597101428333266
#>     Attrib V16    0.5034268117549341
#>     Attrib V17    0.3343262672759977
#>     Attrib V18    -0.15241993530299253
#>     Attrib V19    -0.5211663983533913
#>     Attrib V2    0.23857108364105928
#>     Attrib V20    -0.22928518061963737
#>     Attrib V21    -0.44502117940664304
#>     Attrib V22    -0.573996360177792
#>     Attrib V23    -0.7323987476505317
#>     Attrib V24    -0.15479453773111912
#>     Attrib V25    1.020731994250149
#>     Attrib V26    0.4714592701720891
#>     Attrib V27    -0.32636311371784515
#>     Attrib V28    -0.578741190983754
#>     Attrib V29    -0.43882965734706253
#>     Attrib V3    0.3316034583062695
#>     Attrib V30    -0.48707340992189624
#>     Attrib V31    0.6750838787264054
#>     Attrib V32    -0.22641868263135242
#>     Attrib V33    -0.36852002779368165
#>     Attrib V34    0.2369702845297196
#>     Attrib V35    -0.10717633667262833
#>     Attrib V36    1.2188037406903618
#>     Attrib V37    0.6781133669042129
#>     Attrib V38    0.4527362932445959
#>     Attrib V39    -0.27896225154938187
#>     Attrib V4    0.21636301762642593
#>     Attrib V40    0.5052213782006826
#>     Attrib V41    -0.8967415234491243
#>     Attrib V42    -0.5111684401788417
#>     Attrib V43    -0.37618944273382765
#>     Attrib V44    0.2844098892966194
#>     Attrib V45    -0.1543814729558514
#>     Attrib V46    -0.14124211822359414
#>     Attrib V47    -0.29614294068538444
#>     Attrib V48    -0.5966897466571909
#>     Attrib V49    -1.0637775193948957
#>     Attrib V5    -0.17680398039998385
#>     Attrib V50    1.5474129077492993
#>     Attrib V51    -0.6724490548938853
#>     Attrib V52    0.016951070658229508
#>     Attrib V53    0.14873253674339346
#>     Attrib V54    -0.5024460031591012
#>     Attrib V55    0.5912304164334979
#>     Attrib V56    0.11527712324834744
#>     Attrib V57    -0.019567946013038868
#>     Attrib V58    -0.815630557383126
#>     Attrib V59    -1.0992501190500052
#>     Attrib V6    0.15154831901786753
#>     Attrib V60    -0.05097304291588977
#>     Attrib V7    0.6890292589187901
#>     Attrib V8    0.5773874940375928
#>     Attrib V9    -0.7716178933394173
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.0657064953843348
#>     Attrib V1    0.15382854893572998
#>     Attrib V10    0.09762288922453603
#>     Attrib V11    0.18837935714373205
#>     Attrib V12    0.16108477246161004
#>     Attrib V13    0.181525899644485
#>     Attrib V14    0.13109951982704277
#>     Attrib V15    0.07966650026181595
#>     Attrib V16    0.05336791580897186
#>     Attrib V17    0.12329160490327513
#>     Attrib V18    0.2247208979943442
#>     Attrib V19    0.22056438141612603
#>     Attrib V2    -0.09783849084369198
#>     Attrib V20    0.2899744385564648
#>     Attrib V21    0.31614574226595493
#>     Attrib V22    0.22347657682917926
#>     Attrib V23    0.04441208325061406
#>     Attrib V24    -0.07950959609241735
#>     Attrib V25    -0.3872915025732752
#>     Attrib V26    -0.4080132531603236
#>     Attrib V27    -0.10567634501310941
#>     Attrib V28    -0.05755506357067485
#>     Attrib V29    -0.05665585524480774
#>     Attrib V3    0.004672040787967145
#>     Attrib V30    0.037339630528965745
#>     Attrib V31    -0.2538023627862871
#>     Attrib V32    -6.071684972699554E-4
#>     Attrib V33    0.08265066739687814
#>     Attrib V34    -0.1707821699902306
#>     Attrib V35    -0.11012529851040646
#>     Attrib V36    -0.3472200579662935
#>     Attrib V37    -0.28024952648993606
#>     Attrib V38    -0.026376466792292705
#>     Attrib V39    0.11427664318246727
#>     Attrib V4    0.04848484741457226
#>     Attrib V40    -0.23245298825637284
#>     Attrib V41    0.06236369277539054
#>     Attrib V42    0.14186912530120324
#>     Attrib V43    0.20864168132214098
#>     Attrib V44    -0.13507726277441362
#>     Attrib V45    0.0717463739383751
#>     Attrib V46    -0.07101008857692769
#>     Attrib V47    0.009205394510643353
#>     Attrib V48    0.14490490961138563
#>     Attrib V49    0.2306965867625402
#>     Attrib V5    0.05597968061458808
#>     Attrib V50    -0.26585916599050835
#>     Attrib V51    0.18969855374925026
#>     Attrib V52    0.03647659480055738
#>     Attrib V53    -0.07050946570356831
#>     Attrib V54    0.38597956078063067
#>     Attrib V55    0.0486932163576743
#>     Attrib V56    0.17634684737685405
#>     Attrib V57    0.18375895421744048
#>     Attrib V58    0.28886644276915613
#>     Attrib V59    0.44601467423173397
#>     Attrib V6    -0.07992986766314011
#>     Attrib V60    0.17521664393816605
#>     Attrib V7    -0.11307166632312811
#>     Attrib V8    0.04172375551107744
#>     Attrib V9    0.27560492178913937
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    0.05058651983859896
#>     Attrib V1    0.2254263027086452
#>     Attrib V10    0.15701357176153688
#>     Attrib V11    0.12785297172984775
#>     Attrib V12    0.13872586890201435
#>     Attrib V13    0.1946553097064714
#>     Attrib V14    0.06822535084126659
#>     Attrib V15    0.0802022345120465
#>     Attrib V16    0.0676394572897635
#>     Attrib V17    0.16552268856042346
#>     Attrib V18    0.21752371133807552
#>     Attrib V19    0.2214096021994317
#>     Attrib V2    -0.06317410941073288
#>     Attrib V20    0.21063251317119996
#>     Attrib V21    0.30140755678446907
#>     Attrib V22    0.19521832755414534
#>     Attrib V23    0.10415577924770444
#>     Attrib V24    -0.10084837182551491
#>     Attrib V25    -0.3720519289996167
#>     Attrib V26    -0.3329606100230408
#>     Attrib V27    -0.11940498455240935
#>     Attrib V28    -0.05407573284334814
#>     Attrib V29    -0.1728890905900372
#>     Attrib V3    -0.0390147358509999
#>     Attrib V30    0.08518325466785952
#>     Attrib V31    -0.21321063942276205
#>     Attrib V32    -0.042646192201260306
#>     Attrib V33    0.037733467368025214
#>     Attrib V34    -0.1937285249628838
#>     Attrib V35    -0.09808198226323368
#>     Attrib V36    -0.3277132640082935
#>     Attrib V37    -0.26313300635040043
#>     Attrib V38    -0.038383174299243476
#>     Attrib V39    0.16486282911091474
#>     Attrib V4    0.10793964469900778
#>     Attrib V40    -0.1917199471756393
#>     Attrib V41    0.05759486722174795
#>     Attrib V42    0.20329986050810106
#>     Attrib V43    0.14260466651071663
#>     Attrib V44    -0.15781917188389974
#>     Attrib V45    0.0025647661210618073
#>     Attrib V46    -0.09701786290810133
#>     Attrib V47    -0.05626614647617404
#>     Attrib V48    0.14733085587429734
#>     Attrib V49    0.2104963409674342
#>     Attrib V5    0.041972623771778385
#>     Attrib V50    -0.2770466549152776
#>     Attrib V51    0.15194009873859377
#>     Attrib V52    -0.007566726192283533
#>     Attrib V53    -0.03708456037623766
#>     Attrib V54    0.4152091252267139
#>     Attrib V55    -0.00893890622558446
#>     Attrib V56    0.19825804223385182
#>     Attrib V57    0.14386908988310926
#>     Attrib V58    0.33649724340371295
#>     Attrib V59    0.5153424127696734
#>     Attrib V6    -0.10270221476110301
#>     Attrib V60    0.22007935266399561
#>     Attrib V7    -0.1163777708501391
#>     Attrib V8    0.022564814712459576
#>     Attrib V9    0.24313070613657997
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -4.085928007781644E-4
#>     Attrib V1    0.24890788360713303
#>     Attrib V10    0.09235359981521954
#>     Attrib V11    0.1144180745720227
#>     Attrib V12    -0.015744602137034526
#>     Attrib V13    0.1572824373799757
#>     Attrib V14    0.1686936155051156
#>     Attrib V15    0.17730493873582445
#>     Attrib V16    0.1588120247091964
#>     Attrib V17    0.24442118663396692
#>     Attrib V18    0.26614749683018624
#>     Attrib V19    0.25445024844726366
#>     Attrib V2    -0.030654741812198297
#>     Attrib V20    0.3470907754911737
#>     Attrib V21    0.291947468036939
#>     Attrib V22    0.23666916896414292
#>     Attrib V23    0.08695177193472033
#>     Attrib V24    -0.14411062491028542
#>     Attrib V25    -0.5545947178161719
#>     Attrib V26    -0.48470123524106484
#>     Attrib V27    -0.22694229891316517
#>     Attrib V28    -0.16158479251452335
#>     Attrib V29    -0.18999370361530216
#>     Attrib V3    -0.040926187318455425
#>     Attrib V30    0.04218488079277839
#>     Attrib V31    -0.2728644448672625
#>     Attrib V32    -0.10066219781192347
#>     Attrib V33    0.07547669539320741
#>     Attrib V34    -0.20357171784979458
#>     Attrib V35    -0.14299406998540004
#>     Attrib V36    -0.3193446560200361
#>     Attrib V37    -0.2647647734891604
#>     Attrib V38    0.06154552776525268
#>     Attrib V39    0.07402767421205333
#>     Attrib V4    0.13341813652004267
#>     Attrib V40    -0.28811736852386555
#>     Attrib V41    -0.0774937007736886
#>     Attrib V42    0.18853105510389026
#>     Attrib V43    0.21965874817628073
#>     Attrib V44    -0.044964024953209995
#>     Attrib V45    0.013526209348986119
#>     Attrib V46    -0.10229575989496653
#>     Attrib V47    -0.0394633389725668
#>     Attrib V48    0.15298925842144256
#>     Attrib V49    0.24776847115422743
#>     Attrib V5    0.08275231115386003
#>     Attrib V50    -0.25015432474632915
#>     Attrib V51    0.1577015363798637
#>     Attrib V52    0.019388954640905995
#>     Attrib V53    -0.04271917379442921
#>     Attrib V54    0.5435339954114895
#>     Attrib V55    0.0898336369005513
#>     Attrib V56    0.17781076615784028
#>     Attrib V57    0.23360607565717728
#>     Attrib V58    0.30857883740112646
#>     Attrib V59    0.49854417347154484
#>     Attrib V6    -0.1149150800704703
#>     Attrib V60    0.20757866745626358
#>     Attrib V7    -0.04715115495249964
#>     Attrib V8    0.08249371276266991
#>     Attrib V9    0.29666427882009716
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.027528591674983536
#>     Attrib V1    0.2583494101344044
#>     Attrib V10    0.04796809090060678
#>     Attrib V11    0.09399844997874418
#>     Attrib V12    0.021858367204441793
#>     Attrib V13    0.09220791817537542
#>     Attrib V14    0.1628331478137403
#>     Attrib V15    0.15825474617418633
#>     Attrib V16    0.1752788888043663
#>     Attrib V17    0.18961290387194032
#>     Attrib V18    0.32081961539012277
#>     Attrib V19    0.2444030338448085
#>     Attrib V2    -0.10851979679787152
#>     Attrib V20    0.34313028057213735
#>     Attrib V21    0.37987090052885114
#>     Attrib V22    0.22718807611325512
#>     Attrib V23    0.10062769296162986
#>     Attrib V24    -0.17876576003302627
#>     Attrib V25    -0.5796156429506502
#>     Attrib V26    -0.5123610384138582
#>     Attrib V27    -0.18466768403974157
#>     Attrib V28    -0.07060692869047074
#>     Attrib V29    -0.1333350450713367
#>     Attrib V3    0.006296550025196242
#>     Attrib V30    0.12477298873683333
#>     Attrib V31    -0.35431623048163136
#>     Attrib V32    -0.11839483628417956
#>     Attrib V33    0.06678365521937332
#>     Attrib V34    -0.2353821751882989
#>     Attrib V35    -0.16714562111059655
#>     Attrib V36    -0.274168987237297
#>     Attrib V37    -0.28801946195150213
#>     Attrib V38    -0.0073926937961099936
#>     Attrib V39    0.1337335324928996
#>     Attrib V4    0.07298986159028015
#>     Attrib V40    -0.3043279793078523
#>     Attrib V41    -0.061366342635135615
#>     Attrib V42    0.2516256557523867
#>     Attrib V43    0.1745951716074661
#>     Attrib V44    -0.04420686659731576
#>     Attrib V45    0.0906514534975077
#>     Attrib V46    -0.08089535423313744
#>     Attrib V47    -0.031801789516045245
#>     Attrib V48    0.13307683047070892
#>     Attrib V49    0.30885844522270245
#>     Attrib V5    0.10044364722808508
#>     Attrib V50    -0.29310894819063815
#>     Attrib V51    0.20024198321160647
#>     Attrib V52    0.026973761341318146
#>     Attrib V53    -0.06462060626732595
#>     Attrib V54    0.46104219237866806
#>     Attrib V55    -9.98184042185109E-4
#>     Attrib V56    0.1875380466079675
#>     Attrib V57    0.21507025162889368
#>     Attrib V58    0.3903532277296202
#>     Attrib V59    0.49481195255080024
#>     Attrib V6    -0.09732336526648795
#>     Attrib V60    0.18736739180666984
#>     Attrib V7    -0.05589121305829883
#>     Attrib V8    0.08812672882867663
#>     Attrib V9    0.2895080901905163
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
#>  0.2318841 
```
