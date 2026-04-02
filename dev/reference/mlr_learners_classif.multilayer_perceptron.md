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
#>     Threshold    -0.6318015015103566
#>     Node 2    2.126745417091327
#>     Node 3    1.9553038670115537
#>     Node 4    1.2001292753783628
#>     Node 5    -2.228314999509775
#>     Node 6    0.42204596888263357
#>     Node 7    3.218241491829146
#>     Node 8    1.4121046289274912
#>     Node 9    2.2065260058788976
#>     Node 10    -2.2257889056371396
#>     Node 11    1.2909972979382642
#>     Node 12    1.9439018001506025
#>     Node 13    -0.5126584356488993
#>     Node 14    1.5465687539267134
#>     Node 15    -0.3824660999375276
#>     Node 16    0.8442089179480856
#>     Node 17    0.40868406534086515
#>     Node 18    -2.7060743344472336
#>     Node 19    2.5574413114094976
#>     Node 20    1.4545847525018742
#>     Node 21    -2.3711479720485538
#>     Node 22    1.2928238608067761
#>     Node 23    1.0287794273148514
#>     Node 24    0.055145452112119485
#>     Node 25    4.319928754584711
#>     Node 26    -0.9960645066581042
#>     Node 27    1.3367941636914602
#>     Node 28    -0.9877918291538098
#>     Node 29    1.399409518245582
#>     Node 30    -0.8194332587483428
#>     Node 31    1.40777092827647
#>     Node 32    -0.02277435621496967
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.6528588887211121
#>     Node 2    -2.159887515888005
#>     Node 3    -1.9328594427960983
#>     Node 4    -1.1569810983859463
#>     Node 5    2.2315471043211788
#>     Node 6    -0.3987414731821151
#>     Node 7    -3.2105175783272872
#>     Node 8    -1.444225890228705
#>     Node 9    -2.1930715404619816
#>     Node 10    2.148552367295922
#>     Node 11    -1.2560689406208654
#>     Node 12    -2.0135516286050867
#>     Node 13    0.568435419213094
#>     Node 14    -1.4834030829638958
#>     Node 15    0.3699654729774118
#>     Node 16    -0.8631697314343867
#>     Node 17    -0.3737662805035956
#>     Node 18    2.735308315007478
#>     Node 19    -2.555529573848907
#>     Node 20    -1.439853622977404
#>     Node 21    2.414909481354247
#>     Node 22    -1.348243680570004
#>     Node 23    -1.0745680104916546
#>     Node 24    -0.06915801632407723
#>     Node 25    -4.299357926459669
#>     Node 26    0.913948728549412
#>     Node 27    -1.379520634993232
#>     Node 28    0.93270068755875
#>     Node 29    -1.4295994466253328
#>     Node 30    0.8931699530954779
#>     Node 31    -1.3524587172468194
#>     Node 32    0.0064216463867693176
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.058934167025844454
#>     Attrib V1    0.5127250779896604
#>     Attrib V10    -0.1718667482181852
#>     Attrib V11    -0.011794694592824626
#>     Attrib V12    0.29709534343193894
#>     Attrib V13    0.17693086212156836
#>     Attrib V14    0.3207742738346412
#>     Attrib V15    0.5600011708865605
#>     Attrib V16    -0.1372990640118977
#>     Attrib V17    -0.41215037993584674
#>     Attrib V18    -0.011752173261195858
#>     Attrib V19    0.398655678771871
#>     Attrib V2    0.14615937243595714
#>     Attrib V20    0.6306201394662904
#>     Attrib V21    0.6500094786855586
#>     Attrib V22    0.4447886315754727
#>     Attrib V23    0.3992531179893329
#>     Attrib V24    0.4772045398392932
#>     Attrib V25    -0.3048532823165052
#>     Attrib V26    -1.0666323791989396
#>     Attrib V27    0.36260734397986816
#>     Attrib V28    0.6466600294365135
#>     Attrib V29    0.5429083892303728
#>     Attrib V3    0.332291771470422
#>     Attrib V30    -0.060533703308510545
#>     Attrib V31    -1.6786043218790803
#>     Attrib V32    -0.2841335492451189
#>     Attrib V33    0.007238922909035803
#>     Attrib V34    -0.36987143289323277
#>     Attrib V35    0.6020299599611748
#>     Attrib V36    -0.6637992516520057
#>     Attrib V37    -0.5270619924960809
#>     Attrib V38    0.5979614277903816
#>     Attrib V39    0.3973086500313702
#>     Attrib V4    0.3236547605128058
#>     Attrib V40    0.04784632074199426
#>     Attrib V41    0.015319110090071045
#>     Attrib V42    0.05673710360032883
#>     Attrib V43    0.22151745519845165
#>     Attrib V44    0.1736096809134206
#>     Attrib V45    0.4339829611377176
#>     Attrib V46    0.6418292103420579
#>     Attrib V47    0.1798421826952728
#>     Attrib V48    0.24527692196855078
#>     Attrib V49    0.2530864148504567
#>     Attrib V5    0.024711013702583353
#>     Attrib V50    -0.6942260185166709
#>     Attrib V51    -0.4527256087590981
#>     Attrib V52    0.135475633876362
#>     Attrib V53    0.8733908675793294
#>     Attrib V54    0.7652300063854166
#>     Attrib V55    -0.5911683807234486
#>     Attrib V56    0.08346296346361584
#>     Attrib V57    -0.31390495741557634
#>     Attrib V58    0.11454457585493677
#>     Attrib V59    0.5067697258813265
#>     Attrib V6    -0.660529270366603
#>     Attrib V60    0.2711984653507573
#>     Attrib V7    -0.16055567965996598
#>     Attrib V8    -0.7625652160345582
#>     Attrib V9    0.22300283136610746
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.06567014842190017
#>     Attrib V1    0.42626930208607683
#>     Attrib V10    -0.40830631786481103
#>     Attrib V11    -0.17284914251219885
#>     Attrib V12    0.2728883280849868
#>     Attrib V13    0.04156000485276005
#>     Attrib V14    0.3904101988319296
#>     Attrib V15    0.7246190872410075
#>     Attrib V16    0.027306097132705348
#>     Attrib V17    -0.26202303983521075
#>     Attrib V18    -0.005781331149878382
#>     Attrib V19    0.37140978600618496
#>     Attrib V2    0.14073256963561015
#>     Attrib V20    0.4191226375412753
#>     Attrib V21    0.3336168398737924
#>     Attrib V22    0.16332671394395815
#>     Attrib V23    0.14233030286749568
#>     Attrib V24    0.4132645601703116
#>     Attrib V25    -0.24037815711754637
#>     Attrib V26    -1.0714560463501426
#>     Attrib V27    0.18217720247972466
#>     Attrib V28    0.33339966526379694
#>     Attrib V29    0.1690386839118915
#>     Attrib V3    0.24845449240525277
#>     Attrib V30    -0.16047280077786655
#>     Attrib V31    -1.2870017051396092
#>     Attrib V32    -0.17793919635096206
#>     Attrib V33    0.04135838272547227
#>     Attrib V34    -0.41244778147886446
#>     Attrib V35    0.31178053989549587
#>     Attrib V36    -0.848722933574149
#>     Attrib V37    -0.7387146959042935
#>     Attrib V38    0.3461061328065326
#>     Attrib V39    0.35584570934525706
#>     Attrib V4    0.24555535358559874
#>     Attrib V40    0.11203046183435449
#>     Attrib V41    -0.047026991566557985
#>     Attrib V42    0.08169752565634676
#>     Attrib V43    0.18300911231224407
#>     Attrib V44    0.05668400036677577
#>     Attrib V45    0.25137860657076944
#>     Attrib V46    0.44844376008576803
#>     Attrib V47    0.15609469423242478
#>     Attrib V48    0.34946148545016115
#>     Attrib V49    0.26681829011157854
#>     Attrib V5    -0.1039740423541244
#>     Attrib V50    -0.6137500954260638
#>     Attrib V51    -0.5046040769354484
#>     Attrib V52    0.179948480123169
#>     Attrib V53    0.8861734650809739
#>     Attrib V54    0.9237471085858756
#>     Attrib V55    -0.31842310332775914
#>     Attrib V56    0.21630398466547543
#>     Attrib V57    0.13736460372401818
#>     Attrib V58    0.28215513784403096
#>     Attrib V59    0.725672496295015
#>     Attrib V6    -0.6401621406659772
#>     Attrib V60    0.3260120635533274
#>     Attrib V7    -0.203306097188692
#>     Attrib V8    -0.6348734046725895
#>     Attrib V9    0.003666753856751974
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.07811436737938358
#>     Attrib V1    0.3028514015365492
#>     Attrib V10    -0.22233478773153129
#>     Attrib V11    -0.0036846044898250674
#>     Attrib V12    0.27539799248308666
#>     Attrib V13    0.0011019142966336686
#>     Attrib V14    0.2490428307916062
#>     Attrib V15    0.4678701498927896
#>     Attrib V16    0.011670750545938791
#>     Attrib V17    -0.12217992422684022
#>     Attrib V18    -0.016006129523036663
#>     Attrib V19    0.17474240471558225
#>     Attrib V2    0.0566479183462471
#>     Attrib V20    0.2939897201976462
#>     Attrib V21    0.2151569183524903
#>     Attrib V22    -0.025584802699832796
#>     Attrib V23    0.004448721106372962
#>     Attrib V24    0.20779134969367524
#>     Attrib V25    -0.18057416325591724
#>     Attrib V26    -0.6078801969136294
#>     Attrib V27    0.09074729420964436
#>     Attrib V28    0.12732202462563147
#>     Attrib V29    0.04541984198266575
#>     Attrib V3    0.16367107875088063
#>     Attrib V30    -0.1397228318467094
#>     Attrib V31    -0.8124739230515535
#>     Attrib V32    -0.10772160024920359
#>     Attrib V33    0.09028494430831714
#>     Attrib V34    -0.06469481272996694
#>     Attrib V35    0.4238227708422944
#>     Attrib V36    -0.3309899292820241
#>     Attrib V37    -0.2714333924072524
#>     Attrib V38    0.33317313967195905
#>     Attrib V39    0.21517104720184904
#>     Attrib V4    0.11920757563668893
#>     Attrib V40    0.005046752896514873
#>     Attrib V41    -0.17911887727659337
#>     Attrib V42    -0.08236614443389577
#>     Attrib V43    0.07244958366209929
#>     Attrib V44    0.07158131165025934
#>     Attrib V45    0.3109893469121643
#>     Attrib V46    0.288611542252138
#>     Attrib V47    0.03351564141646858
#>     Attrib V48    0.28844015670992984
#>     Attrib V49    0.20843506329925507
#>     Attrib V5    -0.0326835245961069
#>     Attrib V50    -0.3264821554491975
#>     Attrib V51    -0.31655211253266785
#>     Attrib V52    0.08966065961800755
#>     Attrib V53    0.5244492234377572
#>     Attrib V54    0.48058788808900726
#>     Attrib V55    -0.23031046024361643
#>     Attrib V56    0.1192526724428136
#>     Attrib V57    0.21860979376287767
#>     Attrib V58    0.08537194905362992
#>     Attrib V59    0.36153100182128345
#>     Attrib V6    -0.4490601621650658
#>     Attrib V60    0.1568554066170229
#>     Attrib V7    -0.11931067237052546
#>     Attrib V8    -0.5040650234124916
#>     Attrib V9    0.09933428903170669
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.3607368884264527
#>     Attrib V1    0.06213307258828583
#>     Attrib V10    0.08858734463665784
#>     Attrib V11    -0.3325442916883097
#>     Attrib V12    -0.879131695988834
#>     Attrib V13    -0.31695343964367084
#>     Attrib V14    -0.04979478002735841
#>     Attrib V15    -0.22586658514268235
#>     Attrib V16    0.2943773058599498
#>     Attrib V17    0.6069307935352684
#>     Attrib V18    0.24181162152808106
#>     Attrib V19    -0.28958137162389275
#>     Attrib V2    0.23963324273919015
#>     Attrib V20    -0.1949417490774665
#>     Attrib V21    -0.2694376340577446
#>     Attrib V22    -0.40390543174962396
#>     Attrib V23    -0.5572945750116965
#>     Attrib V24    -0.7551475220564491
#>     Attrib V25    0.29396660437417765
#>     Attrib V26    0.9333397802217511
#>     Attrib V27    -0.5423168303892227
#>     Attrib V28    -0.5230647358005663
#>     Attrib V29    -0.05856713939556446
#>     Attrib V3    -0.13783541240832003
#>     Attrib V30    0.1851659468458594
#>     Attrib V31    1.3373525167099172
#>     Attrib V32    0.20345976381797973
#>     Attrib V33    -0.23658550899751987
#>     Attrib V34    0.40657923703017307
#>     Attrib V35    -0.17958341019067992
#>     Attrib V36    1.502027653931852
#>     Attrib V37    1.2178306124606744
#>     Attrib V38    -0.14695748673672343
#>     Attrib V39    -0.1966145249877223
#>     Attrib V4    -0.45669845630604494
#>     Attrib V40    -0.2146427736220469
#>     Attrib V41    -0.5165676011802363
#>     Attrib V42    -0.19213637663346284
#>     Attrib V43    -0.34707648628759263
#>     Attrib V44    0.02021939326150776
#>     Attrib V45    -0.2119851709861966
#>     Attrib V46    -0.6449627005118986
#>     Attrib V47    -0.14815973522696418
#>     Attrib V48    -0.3642966294080521
#>     Attrib V49    -0.4869243872759539
#>     Attrib V5    -0.3620177514703153
#>     Attrib V50    1.0218306593564521
#>     Attrib V51    0.6039596179554595
#>     Attrib V52    -0.055062022154536795
#>     Attrib V53    -1.0091892400767903
#>     Attrib V54    -0.9629319748360248
#>     Attrib V55    0.39393192733231785
#>     Attrib V56    0.31426086488118604
#>     Attrib V57    0.037063820333956936
#>     Attrib V58    -0.26940213660623413
#>     Attrib V59    -0.5492106202048267
#>     Attrib V6    0.4012637165442909
#>     Attrib V60    0.052930622437634064
#>     Attrib V7    0.07711570821057083
#>     Attrib V8    0.4735327191010464
#>     Attrib V9    -0.4216355520356423
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.04432272735917556
#>     Attrib V1    0.2569533732072031
#>     Attrib V10    -0.0474847186702537
#>     Attrib V11    0.021937171019495397
#>     Attrib V12    0.1370462193902357
#>     Attrib V13    -0.041306535203776945
#>     Attrib V14    0.08834475200075702
#>     Attrib V15    0.14015835161550724
#>     Attrib V16    0.06883398568713336
#>     Attrib V17    -0.04862882572665659
#>     Attrib V18    0.012911687715988272
#>     Attrib V19    -0.03310284911119389
#>     Attrib V2    0.12081247809241523
#>     Attrib V20    0.05431560160566342
#>     Attrib V21    -1.5854408989878182E-4
#>     Attrib V22    -0.1386331501259751
#>     Attrib V23    -0.11033105511013087
#>     Attrib V24    0.03324691050892691
#>     Attrib V25    -0.02289086221166317
#>     Attrib V26    -0.21589456605310528
#>     Attrib V27    -0.004402438541453504
#>     Attrib V28    -0.06656359871286571
#>     Attrib V29    -0.0638898539368117
#>     Attrib V3    0.1428521263933172
#>     Attrib V30    -0.03684864339837553
#>     Attrib V31    -0.2059291727168076
#>     Attrib V32    0.05798793057801362
#>     Attrib V33    0.11464688687973938
#>     Attrib V34    0.05342044284529673
#>     Attrib V35    0.22810796583615722
#>     Attrib V36    -0.02676576138435021
#>     Attrib V37    0.0024850534326771676
#>     Attrib V38    0.14047708006911552
#>     Attrib V39    0.0773595274546
#>     Attrib V4    0.16134105838014254
#>     Attrib V40    -0.016224559792806258
#>     Attrib V41    -0.008645509680243363
#>     Attrib V42    -0.0015934862203305336
#>     Attrib V43    0.03288048944669851
#>     Attrib V44    0.04065155336881481
#>     Attrib V45    0.11840975602842886
#>     Attrib V46    0.12394313302395207
#>     Attrib V47    0.02185820504982295
#>     Attrib V48    0.08993261029326477
#>     Attrib V49    0.06404376011160766
#>     Attrib V5    0.049687425794539504
#>     Attrib V50    -9.203398695324655E-4
#>     Attrib V51    -0.058029213516015525
#>     Attrib V52    0.023517805808131616
#>     Attrib V53    0.21033734553490704
#>     Attrib V54    0.1546426335130146
#>     Attrib V55    -0.03167174860996148
#>     Attrib V56    0.12144928177322088
#>     Attrib V57    0.22623306673838744
#>     Attrib V58    0.13005761089744372
#>     Attrib V59    0.22627892588720458
#>     Attrib V6    -0.022399342966192223
#>     Attrib V60    0.1880255666549256
#>     Attrib V7    0.02814137784056044
#>     Attrib V8    -0.0627031437840748
#>     Attrib V9    0.12776740034702572
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5784218191779005
#>     Attrib V1    0.8218255239703561
#>     Attrib V10    1.1592086592688369
#>     Attrib V11    1.16921698438211
#>     Attrib V12    0.8991825387050522
#>     Attrib V13    -0.013457484029598421
#>     Attrib V14    -0.5205546578913293
#>     Attrib V15    -0.17680246595105842
#>     Attrib V16    -0.5727908134429037
#>     Attrib V17    -0.9362430947070159
#>     Attrib V18    -0.8206817602944466
#>     Attrib V19    -0.26783409636183475
#>     Attrib V2    0.25557935488289396
#>     Attrib V20    0.03383685037057664
#>     Attrib V21    0.3462666526979253
#>     Attrib V22    0.5090128445255707
#>     Attrib V23    0.5606315697795741
#>     Attrib V24    0.47900818434321774
#>     Attrib V25    -0.16705496629592634
#>     Attrib V26    0.17281138421632497
#>     Attrib V27    1.5978811518544687
#>     Attrib V28    1.3695249127354499
#>     Attrib V29    0.7822193390586436
#>     Attrib V3    0.19863892686420942
#>     Attrib V30    0.2917809890421486
#>     Attrib V31    -1.2009056795453352
#>     Attrib V32    -0.1780330163775737
#>     Attrib V33    0.23834926865760336
#>     Attrib V34    -0.1918756446424383
#>     Attrib V35    0.7456423922456451
#>     Attrib V36    -0.8929220633493519
#>     Attrib V37    -0.07424218050756808
#>     Attrib V38    0.2906207741245802
#>     Attrib V39    -0.08438934707212276
#>     Attrib V4    0.11099974046035832
#>     Attrib V40    0.13619669687736732
#>     Attrib V41    0.673527229873738
#>     Attrib V42    -0.25640464102855
#>     Attrib V43    -0.045481816900343155
#>     Attrib V44    0.020190022773978755
#>     Attrib V45    0.5687555103464245
#>     Attrib V46    1.1472661543096174
#>     Attrib V47    0.7836793639032055
#>     Attrib V48    0.8313922392996353
#>     Attrib V49    0.7862852949339665
#>     Attrib V5    0.5872096123083623
#>     Attrib V50    -0.005962716343066297
#>     Attrib V51    0.01947986409575485
#>     Attrib V52    0.4299591179190622
#>     Attrib V53    0.8027774061534328
#>     Attrib V54    0.6124672987134364
#>     Attrib V55    -0.8431425231107084
#>     Attrib V56    -0.5972110664073355
#>     Attrib V57    0.1307594103965149
#>     Attrib V58    -0.35652813340886663
#>     Attrib V59    -0.4430869629785344
#>     Attrib V6    0.10897502511044241
#>     Attrib V60    -0.2993137057985276
#>     Attrib V7    -0.06657842589483715
#>     Attrib V8    -0.7622156750721242
#>     Attrib V9    1.4595354854444231
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.24789958728097844
#>     Attrib V1    0.3235604578734137
#>     Attrib V10    0.3132108286699716
#>     Attrib V11    0.4817592801066205
#>     Attrib V12    0.5913715714084116
#>     Attrib V13    -0.003969723971474225
#>     Attrib V14    -0.09153306842203415
#>     Attrib V15    0.054477436933572564
#>     Attrib V16    -0.18582413565121875
#>     Attrib V17    -0.38774934726168486
#>     Attrib V18    -0.488026783490965
#>     Attrib V19    -0.38665287599007303
#>     Attrib V2    0.07909622496799192
#>     Attrib V20    -0.3124715105327914
#>     Attrib V21    -0.2948888660040209
#>     Attrib V22    -0.304471394480346
#>     Attrib V23    -0.16053454923756538
#>     Attrib V24    0.15279674849761674
#>     Attrib V25    0.04395748655240587
#>     Attrib V26    0.0396004041221005
#>     Attrib V27    0.6357249350336727
#>     Attrib V28    0.41229565374357374
#>     Attrib V29    0.06778136283293598
#>     Attrib V3    0.10260208783065072
#>     Attrib V30    0.0718347972453472
#>     Attrib V31    -0.4401862098340415
#>     Attrib V32    0.11725369158951102
#>     Attrib V33    0.29396927931875383
#>     Attrib V34    0.07716948439974537
#>     Attrib V35    0.3930244320367426
#>     Attrib V36    -0.21994042862207905
#>     Attrib V37    -0.10441402197205257
#>     Attrib V38    0.27022855936128015
#>     Attrib V39    -0.01918817514007006
#>     Attrib V4    0.1956135995400363
#>     Attrib V40    -0.09855768693426303
#>     Attrib V41    -0.05270599712208612
#>     Attrib V42    -0.2703502122938643
#>     Attrib V43    0.005347443937047969
#>     Attrib V44    0.049819266424997774
#>     Attrib V45    0.34267810433209994
#>     Attrib V46    0.45375098167311984
#>     Attrib V47    0.22828481644993062
#>     Attrib V48    0.5774570399033448
#>     Attrib V49    0.4305773045380626
#>     Attrib V5    0.11477791924757114
#>     Attrib V50    -0.07713499873316032
#>     Attrib V51    -0.2034188079672689
#>     Attrib V52    0.1309136201198292
#>     Attrib V53    0.27907242772791724
#>     Attrib V54    0.3673269477794222
#>     Attrib V55    -0.16002408706753066
#>     Attrib V56    -0.2761321025934008
#>     Attrib V57    0.5458886473670586
#>     Attrib V58    -0.01831533122516385
#>     Attrib V59    0.11646366318939105
#>     Attrib V6    -0.16101712510392724
#>     Attrib V60    0.08087386287343347
#>     Attrib V7    0.04237654288961975
#>     Attrib V8    -0.28069732078685194
#>     Attrib V9    0.470790589646309
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.40074653084701634
#>     Attrib V1    0.602236543868851
#>     Attrib V10    0.7649200717258159
#>     Attrib V11    0.8895352645188084
#>     Attrib V12    1.0207270894862075
#>     Attrib V13    0.08934172491091336
#>     Attrib V14    -0.3671265293688493
#>     Attrib V15    -0.15539471012326114
#>     Attrib V16    -0.5210580789825315
#>     Attrib V17    -0.7464353257498246
#>     Attrib V18    -0.7399527912286454
#>     Attrib V19    -0.4745222110980891
#>     Attrib V2    0.12072828560053907
#>     Attrib V20    -0.24946700952134004
#>     Attrib V21    -0.0679108174124823
#>     Attrib V22    0.05207697897844117
#>     Attrib V23    0.20360854739227613
#>     Attrib V24    0.45755143873399207
#>     Attrib V25    0.12934273435167026
#>     Attrib V26    0.19873524249239838
#>     Attrib V27    1.1897544855926727
#>     Attrib V28    0.8126724813434592
#>     Attrib V29    0.26796559753961535
#>     Attrib V3    0.1555676765155133
#>     Attrib V30    0.15809931140347236
#>     Attrib V31    -0.7488274313840947
#>     Attrib V32    -0.013098893007241185
#>     Attrib V33    0.2990865115572462
#>     Attrib V34    0.0231515881330537
#>     Attrib V35    0.5672752851976387
#>     Attrib V36    -0.5835018106939851
#>     Attrib V37    -0.11789054194970298
#>     Attrib V38    0.3496494572521039
#>     Attrib V39    0.08305348173312131
#>     Attrib V4    0.15914175561908334
#>     Attrib V40    -0.00937298005756207
#>     Attrib V41    0.2676623574406782
#>     Attrib V42    -0.2977912249140566
#>     Attrib V43    0.07760043731605228
#>     Attrib V44    -0.06972608463170518
#>     Attrib V45    0.3461295161109032
#>     Attrib V46    0.7574372723135584
#>     Attrib V47    0.4603034124527978
#>     Attrib V48    0.6819834138977894
#>     Attrib V49    0.6201269049657845
#>     Attrib V5    0.3477934064742004
#>     Attrib V50    -0.11451218843244576
#>     Attrib V51    -0.10506558589770418
#>     Attrib V52    0.2652162408113139
#>     Attrib V53    0.566746869337118
#>     Attrib V54    0.5726965982189183
#>     Attrib V55    -0.4029636085539686
#>     Attrib V56    -0.4139218788879689
#>     Attrib V57    0.3512464363604609
#>     Attrib V58    -0.19472650669876415
#>     Attrib V59    -0.008659039790471834
#>     Attrib V6    -0.03322318536993881
#>     Attrib V60    -0.07953604061428972
#>     Attrib V7    -0.06014042479729505
#>     Attrib V8    -0.575668397240254
#>     Attrib V9    0.924425860871197
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.34790932280628534
#>     Attrib V1    0.03308548163668866
#>     Attrib V10    0.26536944583544325
#>     Attrib V11    -0.2381872774106336
#>     Attrib V12    -0.7732227936579679
#>     Attrib V13    -0.19358556181655623
#>     Attrib V14    -0.029710813393534003
#>     Attrib V15    -0.4121151030633409
#>     Attrib V16    0.24020627544437145
#>     Attrib V17    0.4081462497771755
#>     Attrib V18    0.06997362376047855
#>     Attrib V19    -0.3037981249117223
#>     Attrib V2    0.03831730546350078
#>     Attrib V20    -0.01056986942455542
#>     Attrib V21    0.10077499743423991
#>     Attrib V22    -0.18853929984644863
#>     Attrib V23    -0.6002787146510831
#>     Attrib V24    -0.812455245234789
#>     Attrib V25    0.19974139770602756
#>     Attrib V26    0.8886123137850332
#>     Attrib V27    -0.8091572982850143
#>     Attrib V28    -0.796917479924646
#>     Attrib V29    -0.4827210500843044
#>     Attrib V3    -0.22109268605819551
#>     Attrib V30    0.04648377580489003
#>     Attrib V31    1.2427870928154634
#>     Attrib V32    -0.11584396599159517
#>     Attrib V33    -0.27314137406414035
#>     Attrib V34    0.34833666764527765
#>     Attrib V35    -0.4876923987601852
#>     Attrib V36    1.2491308042032105
#>     Attrib V37    0.8731339846862042
#>     Attrib V38    -0.06833494942484253
#>     Attrib V39    0.025644376072027488
#>     Attrib V4    -0.3828725114112018
#>     Attrib V40    -0.044127936482125235
#>     Attrib V41    -0.37870491655531424
#>     Attrib V42    -0.2931760346521549
#>     Attrib V43    -0.43627849793741863
#>     Attrib V44    -0.15717193584468042
#>     Attrib V45    -0.3033488204622722
#>     Attrib V46    -0.7475801790646267
#>     Attrib V47    -0.2541241624244826
#>     Attrib V48    -0.4199971394614962
#>     Attrib V49    -0.4993115365328883
#>     Attrib V5    -0.2425070995780187
#>     Attrib V50    0.9732650603824542
#>     Attrib V51    0.5762390271670014
#>     Attrib V52    -0.27306246334138234
#>     Attrib V53    -1.096059977150629
#>     Attrib V54    -1.0377118254229023
#>     Attrib V55    0.5024257626391395
#>     Attrib V56    0.09958244365557979
#>     Attrib V57    0.29760059474549216
#>     Attrib V58    -0.2161933426362982
#>     Attrib V59    -0.3076750433528995
#>     Attrib V6    0.4743178675027164
#>     Attrib V60    0.030846500690464917
#>     Attrib V7    0.2500360209536806
#>     Attrib V8    0.723751460890058
#>     Attrib V9    -0.3882648705316303
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.2961967287274456
#>     Attrib V1    0.20492090460043413
#>     Attrib V10    -0.04876361779041506
#>     Attrib V11    0.26257853918490126
#>     Attrib V12    0.6213750317675942
#>     Attrib V13    -0.025160599415469075
#>     Attrib V14    0.08215719150700516
#>     Attrib V15    0.259466973957683
#>     Attrib V16    -0.11295326995006347
#>     Attrib V17    -0.17124097810828695
#>     Attrib V18    -0.11378533770887624
#>     Attrib V19    -0.031165206093797165
#>     Attrib V2    -0.03834775502671783
#>     Attrib V20    0.0623507643333835
#>     Attrib V21    -0.16390508578829105
#>     Attrib V22    -0.2501596123268845
#>     Attrib V23    -0.08033000951425096
#>     Attrib V24    0.206731204589703
#>     Attrib V25    -0.028817216174024267
#>     Attrib V26    -0.3801554945975163
#>     Attrib V27    0.4226294821853244
#>     Attrib V28    0.25791377682002936
#>     Attrib V29    0.00960856310718606
#>     Attrib V3    0.01356895338251537
#>     Attrib V30    -0.00941066599301238
#>     Attrib V31    -0.6996198775717112
#>     Attrib V32    0.016916084461718738
#>     Attrib V33    0.19940387640703963
#>     Attrib V34    0.09695822559680985
#>     Attrib V35    0.5951096977090141
#>     Attrib V36    -0.2277416324629811
#>     Attrib V37    -0.16020590851107885
#>     Attrib V38    0.46289105801298025
#>     Attrib V39    0.140380081590305
#>     Attrib V4    0.0752154683344095
#>     Attrib V40    -0.05325179966387242
#>     Attrib V41    -0.20679365051968854
#>     Attrib V42    -0.2031388904658377
#>     Attrib V43    0.12930913136132258
#>     Attrib V44    0.12240107401631553
#>     Attrib V45    0.3876069849238913
#>     Attrib V46    0.3549432861558554
#>     Attrib V47    0.11066243446700577
#>     Attrib V48    0.4020238041518716
#>     Attrib V49    0.2632236318673914
#>     Attrib V5    0.021280582569019473
#>     Attrib V50    -0.3017374784318965
#>     Attrib V51    -0.3566371076227723
#>     Attrib V52    0.07457266608392886
#>     Attrib V53    0.4021996519044242
#>     Attrib V54    0.5268195892121835
#>     Attrib V55    -0.2849236404618209
#>     Attrib V56    -0.07977880967971365
#>     Attrib V57    0.2512526855085312
#>     Attrib V58    0.004053380467273143
#>     Attrib V59    0.12314264595918706
#>     Attrib V6    -0.3785467382485633
#>     Attrib V60    -0.025719927514468645
#>     Attrib V7    -0.15068334837787314
#>     Attrib V8    -0.459161754278982
#>     Attrib V9    0.23581355296134832
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.5100797583565567
#>     Attrib V1    0.3773447339868394
#>     Attrib V10    0.26558090478749447
#>     Attrib V11    0.41503362652720344
#>     Attrib V12    0.5050026107305997
#>     Attrib V13    -0.10633861892055663
#>     Attrib V14    -0.14679665893491828
#>     Attrib V15    0.18071489466030852
#>     Attrib V16    -0.21368919217375562
#>     Attrib V17    -0.46908178393852107
#>     Attrib V18    -0.3224169214758154
#>     Attrib V19    0.04499530038086106
#>     Attrib V2    0.10161644036435213
#>     Attrib V20    0.09070351508215307
#>     Attrib V21    0.16232207675659557
#>     Attrib V22    0.32083018945009595
#>     Attrib V23    0.45433949859383377
#>     Attrib V24    0.4544445642685752
#>     Attrib V25    -0.24987948199234752
#>     Attrib V26    -0.47403610299736937
#>     Attrib V27    1.0365664132012855
#>     Attrib V28    0.9105776436328812
#>     Attrib V29    0.559409786894294
#>     Attrib V3    0.08564014253041838
#>     Attrib V30    0.2241032182645387
#>     Attrib V31    -1.1664886439923703
#>     Attrib V32    -0.09652658098844537
#>     Attrib V33    0.3120536753218214
#>     Attrib V34    -0.18474330415700488
#>     Attrib V35    0.625710536301414
#>     Attrib V36    -0.7277602485542005
#>     Attrib V37    -0.3326215463561905
#>     Attrib V38    0.3562702590507868
#>     Attrib V39    -0.08653921298782419
#>     Attrib V4    0.2207396441578401
#>     Attrib V40    0.056131191574818516
#>     Attrib V41    0.3067560244930767
#>     Attrib V42    -0.10204750146105042
#>     Attrib V43    0.2045684523671513
#>     Attrib V44    0.14160787780622286
#>     Attrib V45    0.5785384434710455
#>     Attrib V46    0.8735604323061404
#>     Attrib V47    0.3804971461006656
#>     Attrib V48    0.6216901663667881
#>     Attrib V49    0.5427261217168194
#>     Attrib V5    0.29829905316850913
#>     Attrib V50    -0.41947527967745796
#>     Attrib V51    -0.4766109484103667
#>     Attrib V52    0.19570702337903167
#>     Attrib V53    0.6792567570493796
#>     Attrib V54    0.5868757530761893
#>     Attrib V55    -0.8054854179367658
#>     Attrib V56    -0.4279547070012429
#>     Attrib V57    0.09284588806792858
#>     Attrib V58    -0.18236093107911974
#>     Attrib V59    0.02328667108707504
#>     Attrib V6    -0.2534106306753291
#>     Attrib V60    -0.0949011691486495
#>     Attrib V7    -0.024326453645325936
#>     Attrib V8    -0.5929078840996671
#>     Attrib V9    0.7893688900375719
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.22207698192827363
#>     Attrib V1    -0.06275334557794762
#>     Attrib V10    -0.03402422142537843
#>     Attrib V11    -0.17960362763818205
#>     Attrib V12    -0.29342239839970824
#>     Attrib V13    0.021677828797983103
#>     Attrib V14    0.00284731842582892
#>     Attrib V15    -0.13341056399777868
#>     Attrib V16    0.04488459006337574
#>     Attrib V17    0.13106558609583302
#>     Attrib V18    0.07843040046670037
#>     Attrib V19    -0.028075923993646727
#>     Attrib V2    0.0024037701461841377
#>     Attrib V20    0.01601124299629818
#>     Attrib V21    0.060270404037972646
#>     Attrib V22    0.0050415921771192335
#>     Attrib V23    -0.037567886952068016
#>     Attrib V24    -0.1427721221473721
#>     Attrib V25    0.11969615594219744
#>     Attrib V26    0.16885569620724736
#>     Attrib V27    -0.1646351515324886
#>     Attrib V28    -0.21916736193097178
#>     Attrib V29    -0.13065081648619864
#>     Attrib V3    0.03781512809775236
#>     Attrib V30    -0.0524881492780725
#>     Attrib V31    0.3143090165924842
#>     Attrib V32    0.03390706606369407
#>     Attrib V33    -0.0414633677911778
#>     Attrib V34    0.10572323662464382
#>     Attrib V35    -0.1665385195634357
#>     Attrib V36    0.2658321199187917
#>     Attrib V37    0.21717414014959702
#>     Attrib V38    -0.10436781840074795
#>     Attrib V39    0.044763747529784445
#>     Attrib V4    -0.02158404329854114
#>     Attrib V40    0.1024352257119861
#>     Attrib V41    0.05581978229861911
#>     Attrib V42    0.0865793118534121
#>     Attrib V43    -0.04484374607100392
#>     Attrib V44    -0.014741089750148982
#>     Attrib V45    -0.22637248423531767
#>     Attrib V46    -0.2281176319994103
#>     Attrib V47    -0.060221987942212805
#>     Attrib V48    -0.21344698098029777
#>     Attrib V49    -0.15205521049202547
#>     Attrib V5    0.059992946320559605
#>     Attrib V50    0.17303496553816594
#>     Attrib V51    0.13701733896717885
#>     Attrib V52    -0.12849298024635142
#>     Attrib V53    -0.2044795138636525
#>     Attrib V54    -0.23012305994255228
#>     Attrib V55    0.127150753752383
#>     Attrib V56    0.05729376664247274
#>     Attrib V57    0.0767027611019542
#>     Attrib V58    -0.011868273030098183
#>     Attrib V59    0.021138090574068843
#>     Attrib V6    0.215432068326168
#>     Attrib V60    0.11336969082433523
#>     Attrib V7    0.09290479495639448
#>     Attrib V8    0.11846506807277975
#>     Attrib V9    -0.17426064889672377
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.21060659527527975
#>     Attrib V1    0.5120795084900498
#>     Attrib V10    -0.2866853306818235
#>     Attrib V11    0.15973844469397225
#>     Attrib V12    0.5388672235389972
#>     Attrib V13    -0.03062332207467418
#>     Attrib V14    0.27717991494423777
#>     Attrib V15    0.5838054837958139
#>     Attrib V16    0.048707894192415196
#>     Attrib V17    -0.08098841713845215
#>     Attrib V18    -0.00817678243943405
#>     Attrib V19    0.09960050049226166
#>     Attrib V2    0.12174302891876831
#>     Attrib V20    0.208278027058885
#>     Attrib V21    -9.766427571026523E-4
#>     Attrib V22    -0.2482609352245129
#>     Attrib V23    -0.17852455909551584
#>     Attrib V24    0.23626082613375135
#>     Attrib V25    -0.026937501710477114
#>     Attrib V26    -0.5741424089567183
#>     Attrib V27    -0.020526126989860588
#>     Attrib V28    -0.2320975560532687
#>     Attrib V29    -0.30859212858908336
#>     Attrib V3    0.08252473853944114
#>     Attrib V30    -0.256914241603814
#>     Attrib V31    -0.7322528908255117
#>     Attrib V32    -0.0792265993751237
#>     Attrib V33    0.10483544039563504
#>     Attrib V34    -0.02094746253664393
#>     Attrib V35    0.4970382024292081
#>     Attrib V36    -0.3453832437296517
#>     Attrib V37    -0.2988772018287567
#>     Attrib V38    0.4016616375647964
#>     Attrib V39    0.294787273549495
#>     Attrib V4    0.10912118605113717
#>     Attrib V40    -0.028924623320314882
#>     Attrib V41    -0.33119297483304116
#>     Attrib V42    -0.25785468557730745
#>     Attrib V43    0.05042991188135758
#>     Attrib V44    0.0024013468025821006
#>     Attrib V45    0.17287561049215433
#>     Attrib V46    0.3022287999010494
#>     Attrib V47    0.05449102381983106
#>     Attrib V48    0.47003927127693823
#>     Attrib V49    0.2592827838226867
#>     Attrib V5    -0.11651148841049762
#>     Attrib V50    -0.31552274715387907
#>     Attrib V51    -0.3507384800451946
#>     Attrib V52    0.16446277032201112
#>     Attrib V53    0.5529177911250804
#>     Attrib V54    0.7839328668173509
#>     Attrib V55    -0.02250918735698665
#>     Attrib V56    0.24104408169755576
#>     Attrib V57    0.5387073025927518
#>     Attrib V58    0.2187465243267745
#>     Attrib V59    0.5841403687949849
#>     Attrib V6    -0.4920887640601714
#>     Attrib V60    0.2859422410802992
#>     Attrib V7    -0.14483137609411326
#>     Attrib V8    -0.5750354911685552
#>     Attrib V9    -0.0019530859291904165
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.19347989575193164
#>     Attrib V1    -0.0121416716417955
#>     Attrib V10    7.32504204816694E-4
#>     Attrib V11    -0.1472281914843402
#>     Attrib V12    -0.13012454071924096
#>     Attrib V13    -0.00940269212842252
#>     Attrib V14    -0.010609825644968462
#>     Attrib V15    0.0053235067591951065
#>     Attrib V16    0.11274618903012418
#>     Attrib V17    0.11799050481392316
#>     Attrib V18    0.07963095099136504
#>     Attrib V19    0.07822111825574657
#>     Attrib V2    0.034323369969522614
#>     Attrib V20    4.8638985649681856E-4
#>     Attrib V21    0.013281714807077521
#>     Attrib V22    0.09754465311463456
#>     Attrib V23    -0.05679820516762123
#>     Attrib V24    -0.12248886918081654
#>     Attrib V25    0.03207975358352714
#>     Attrib V26    0.1801546732813959
#>     Attrib V27    -0.19764170987087418
#>     Attrib V28    -0.17656654217654305
#>     Attrib V29    -0.09180063867326241
#>     Attrib V3    0.05671372282883265
#>     Attrib V30    -0.04382932632003163
#>     Attrib V31    0.25294296023376556
#>     Attrib V32    0.03960405727689921
#>     Attrib V33    0.00945034218432249
#>     Attrib V34    0.13505858823038816
#>     Attrib V35    -0.035603709948814045
#>     Attrib V36    0.2105888679910119
#>     Attrib V37    0.2054642903367036
#>     Attrib V38    -0.05316703272823
#>     Attrib V39    0.03552231070122941
#>     Attrib V4    0.023701606515546474
#>     Attrib V40    0.1227910558717197
#>     Attrib V41    0.1060060714875816
#>     Attrib V42    0.08109676707500717
#>     Attrib V43    0.015889573876757844
#>     Attrib V44    0.0059023915215067205
#>     Attrib V45    -0.05259267635277147
#>     Attrib V46    -0.05535048026533006
#>     Attrib V47    0.03130580984603582
#>     Attrib V48    -0.06546614999597938
#>     Attrib V49    -0.06120560953130477
#>     Attrib V5    0.1023006182065061
#>     Attrib V50    0.22860972673030833
#>     Attrib V51    0.1640194627552076
#>     Attrib V52    -0.13004112090124725
#>     Attrib V53    -0.055592335841817886
#>     Attrib V54    -0.12882982851023445
#>     Attrib V55    0.11100768862783668
#>     Attrib V56    0.10716236805127624
#>     Attrib V57    -0.004723660740021904
#>     Attrib V58    0.0090280969569554
#>     Attrib V59    0.01272728156626192
#>     Attrib V6    0.17926176611813627
#>     Attrib V60    0.08132998344686973
#>     Attrib V7    0.021773683569880097
#>     Attrib V8    0.10172600918321245
#>     Attrib V9    -0.10047185048725359
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.05681546375917289
#>     Attrib V1    0.35053942963408824
#>     Attrib V10    -0.1734539355981506
#>     Attrib V11    -0.03137527496999122
#>     Attrib V12    0.1756036972279264
#>     Attrib V13    0.007906343295549238
#>     Attrib V14    0.18359352105086013
#>     Attrib V15    0.34839900223249903
#>     Attrib V16    0.16344332136268647
#>     Attrib V17    0.05019500201986126
#>     Attrib V18    0.08311063180189424
#>     Attrib V19    0.09620913174204426
#>     Attrib V2    0.08678509463174365
#>     Attrib V20    0.14569203032557895
#>     Attrib V21    0.009455199292504489
#>     Attrib V22    -0.19795407838319612
#>     Attrib V23    -0.24669351692402952
#>     Attrib V24    0.06704997478460002
#>     Attrib V25    -0.09522304122656618
#>     Attrib V26    -0.4807691016677568
#>     Attrib V27    -0.2084953912539994
#>     Attrib V28    -0.23354893819573122
#>     Attrib V29    -0.22781901594035567
#>     Attrib V3    0.17372708600892942
#>     Attrib V30    -0.23376550347768582
#>     Attrib V31    -0.44504420955354357
#>     Attrib V32    -0.026334381237589213
#>     Attrib V33    0.04203461594039298
#>     Attrib V34    0.09622506669430494
#>     Attrib V35    0.3057851244114143
#>     Attrib V36    -0.09395250127531939
#>     Attrib V37    -0.11594336285452188
#>     Attrib V38    0.2355842202226397
#>     Attrib V39    0.16807497506839483
#>     Attrib V4    0.13774162034908843
#>     Attrib V40    -0.04573678566243581
#>     Attrib V41    -0.18238742586492013
#>     Attrib V42    -0.08702997132940526
#>     Attrib V43    0.002107944355646239
#>     Attrib V44    -0.04767528281885736
#>     Attrib V45    0.12074330840641385
#>     Attrib V46    0.14566371830894811
#>     Attrib V47    4.1410739253749506E-4
#>     Attrib V48    0.1606092943246812
#>     Attrib V49    0.05004205378376482
#>     Attrib V5    -0.03827131906093308
#>     Attrib V50    -0.07378928933974846
#>     Attrib V51    -0.09421854738380095
#>     Attrib V52    0.08891396660073156
#>     Attrib V53    0.36682024767807225
#>     Attrib V54    0.3771346748560135
#>     Attrib V55    0.09284981841015556
#>     Attrib V56    0.2477742554869634
#>     Attrib V57    0.40525977780399347
#>     Attrib V58    0.2669169914945631
#>     Attrib V59    0.3640377186813508
#>     Attrib V6    -0.1942262332099404
#>     Attrib V60    0.29038108101409094
#>     Attrib V7    -0.03247661680867884
#>     Attrib V8    -0.26326585206854325
#>     Attrib V9    0.019105056787788198
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.06803757142128905
#>     Attrib V1    0.23517535487920488
#>     Attrib V10    0.0555417441086223
#>     Attrib V11    0.07531107411450565
#>     Attrib V12    0.09157403001418855
#>     Attrib V13    -0.042874857012722534
#>     Attrib V14    0.052349979036669304
#>     Attrib V15    0.1681420606737818
#>     Attrib V16    0.004592211003364633
#>     Attrib V17    -0.046479285774619496
#>     Attrib V18    -0.0508730703608943
#>     Attrib V19    -0.021995335091740766
#>     Attrib V2    0.16328871049727675
#>     Attrib V20    -0.004750621798548946
#>     Attrib V21    -0.07723577854668545
#>     Attrib V22    -0.08337176808708979
#>     Attrib V23    -0.12663273530495295
#>     Attrib V24    0.008577720102238005
#>     Attrib V25    -0.0875345551237633
#>     Attrib V26    -0.20281735962069092
#>     Attrib V27    0.0077034339070415824
#>     Attrib V28    -0.0257466785036607
#>     Attrib V29    -0.07412778912771266
#>     Attrib V3    0.11668269067140362
#>     Attrib V30    -0.0011328898150575347
#>     Attrib V31    -0.1231871228888029
#>     Attrib V32    0.01720835942530956
#>     Attrib V33    0.15005352845371958
#>     Attrib V34    0.06465660896288926
#>     Attrib V35    0.2612333240217381
#>     Attrib V36    0.0046482217874982
#>     Attrib V37    9.684831111019487E-4
#>     Attrib V38    0.20771702043168855
#>     Attrib V39    0.11601544728521886
#>     Attrib V4    0.13906023343239873
#>     Attrib V40    -0.020897431442489473
#>     Attrib V41    -0.025513608964930833
#>     Attrib V42    -0.05443423760888975
#>     Attrib V43    0.07731579322971822
#>     Attrib V44    0.08501405596204273
#>     Attrib V45    0.15447783147083455
#>     Attrib V46    0.09073468966818236
#>     Attrib V47    0.0024594161042348637
#>     Attrib V48    0.1729997981991633
#>     Attrib V49    0.06836083497922403
#>     Attrib V5    0.06138524781240141
#>     Attrib V50    0.006863069137566219
#>     Attrib V51    -0.040907672018525965
#>     Attrib V52    0.020374225433414613
#>     Attrib V53    0.13055477957373043
#>     Attrib V54    0.14164104446685358
#>     Attrib V55    0.024450779283097836
#>     Attrib V56    0.1033203235197658
#>     Attrib V57    0.2488181539491847
#>     Attrib V58    0.05577075913919626
#>     Attrib V59    0.12103532542590496
#>     Attrib V6    -0.03383678085394235
#>     Attrib V60    0.1642194583236104
#>     Attrib V7    -0.01273069984176358
#>     Attrib V8    -0.052930251264209825
#>     Attrib V9    0.11365162044712372
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.3036706204334685
#>     Attrib V1    -0.015317417752957885
#>     Attrib V10    0.40658146107119536
#>     Attrib V11    -0.25754339793158326
#>     Attrib V12    -0.9526344974242272
#>     Attrib V13    -0.32720178077412276
#>     Attrib V14    -0.1185132058224498
#>     Attrib V15    -0.4739828130533808
#>     Attrib V16    0.3014427323632481
#>     Attrib V17    0.5267219736983539
#>     Attrib V18    0.09698688162584275
#>     Attrib V19    -0.4474772643125891
#>     Attrib V2    0.026499462471260445
#>     Attrib V20    -0.019059297448992842
#>     Attrib V21    0.08682936644868752
#>     Attrib V22    -0.25059519637424793
#>     Attrib V23    -0.7667843221214398
#>     Attrib V24    -0.9707136011858043
#>     Attrib V25    0.2734873050298108
#>     Attrib V26    1.1104264743843821
#>     Attrib V27    -0.8989643856341355
#>     Attrib V28    -0.9288738956522491
#>     Attrib V29    -0.5192259074692324
#>     Attrib V3    -0.2656933048002609
#>     Attrib V30    0.06181056547420285
#>     Attrib V31    1.4947831547887929
#>     Attrib V32    -0.028026889307479146
#>     Attrib V33    -0.3055307363417206
#>     Attrib V34    0.5052084652836379
#>     Attrib V35    -0.5157924711957855
#>     Attrib V36    1.6773095058190348
#>     Attrib V37    1.1780244286902373
#>     Attrib V38    -0.08318088171562232
#>     Attrib V39    0.03520876452350959
#>     Attrib V4    -0.524096136575147
#>     Attrib V40    -0.13605123054866253
#>     Attrib V41    -0.553431261345629
#>     Attrib V42    -0.4065706299106448
#>     Attrib V43    -0.5276044389016639
#>     Attrib V44    -0.11974055551306911
#>     Attrib V45    -0.32542896498529944
#>     Attrib V46    -0.8064657440371765
#>     Attrib V47    -0.23830928715594907
#>     Attrib V48    -0.4430218259150936
#>     Attrib V49    -0.5501086013786334
#>     Attrib V5    -0.27942353592256985
#>     Attrib V50    1.1167962313616338
#>     Attrib V51    0.7105644612243981
#>     Attrib V52    -0.29627813943951803
#>     Attrib V53    -1.44969417292165
#>     Attrib V54    -1.3358885639841236
#>     Attrib V55    0.5419109103270892
#>     Attrib V56    0.11830659930697143
#>     Attrib V57    0.35770685131689645
#>     Attrib V58    -0.3282381367657474
#>     Attrib V59    -0.4218014627784007
#>     Attrib V6    0.5432106113207601
#>     Attrib V60    0.07384806262333593
#>     Attrib V7    0.3619677566857135
#>     Attrib V8    0.935544143267164
#>     Attrib V9    -0.30868476120227245
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.49434492573095923
#>     Attrib V1    0.5104136635724054
#>     Attrib V10    0.6639766072533139
#>     Attrib V11    0.8543492875982011
#>     Attrib V12    1.165097593750397
#>     Attrib V13    0.12931731968891302
#>     Attrib V14    -0.2999277420280099
#>     Attrib V15    -0.06354539093889039
#>     Attrib V16    -0.5822535259473474
#>     Attrib V17    -0.7628638239650102
#>     Attrib V18    -0.6605901395133926
#>     Attrib V19    -0.27625446049228847
#>     Attrib V2    0.13882167170455462
#>     Attrib V20    -0.32294394799750925
#>     Attrib V21    -0.1792797845739182
#>     Attrib V22    0.252484451788282
#>     Attrib V23    0.4772144072852301
#>     Attrib V24    0.6350368940326174
#>     Attrib V25    0.10404067776142188
#>     Attrib V26    0.06832166324643427
#>     Attrib V27    1.4507794557774643
#>     Attrib V28    1.1454960270435726
#>     Attrib V29    0.46542373765989925
#>     Attrib V3    0.1611700108026817
#>     Attrib V30    0.1578099518277773
#>     Attrib V31    -0.9541133457809863
#>     Attrib V32    -0.08300212901957359
#>     Attrib V33    0.31922014811338206
#>     Attrib V34    -0.1678735464045688
#>     Attrib V35    0.633190550694995
#>     Attrib V36    -0.8285893372096167
#>     Attrib V37    -0.25356728528356576
#>     Attrib V38    0.268655535288481
#>     Attrib V39    -0.04627458918637681
#>     Attrib V4    0.28462579290732876
#>     Attrib V40    0.09721062400157496
#>     Attrib V41    0.5178429468614456
#>     Attrib V42    -0.08518287354717244
#>     Attrib V43    0.1401369151076185
#>     Attrib V44    -0.0055086822547861635
#>     Attrib V45    0.42349888030585153
#>     Attrib V46    0.8722937312666311
#>     Attrib V47    0.4993460835347101
#>     Attrib V48    0.7228970143395975
#>     Attrib V49    0.7262644715608816
#>     Attrib V5    0.6384294691982976
#>     Attrib V50    -0.3169241473980763
#>     Attrib V51    -0.1889306824516864
#>     Attrib V52    0.39336004080559
#>     Attrib V53    0.8689661261039777
#>     Attrib V54    0.7502439642047334
#>     Attrib V55    -0.6532648637429702
#>     Attrib V56    -0.5728107156004278
#>     Attrib V57    0.25318405264776767
#>     Attrib V58    -0.1919976887518954
#>     Attrib V59    -0.007725419319942382
#>     Attrib V6    0.030841095899484083
#>     Attrib V60    -0.02362369557129575
#>     Attrib V7    -0.05058508126184503
#>     Attrib V8    -0.8088511577636386
#>     Attrib V9    0.9611109173083981
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.04320972675997081
#>     Attrib V1    0.5217288102887283
#>     Attrib V10    -0.3796922988335318
#>     Attrib V11    -0.12357204752908443
#>     Attrib V12    0.25533975234059625
#>     Attrib V13    -0.028572669693436338
#>     Attrib V14    0.3432052323501353
#>     Attrib V15    0.5786616350569636
#>     Attrib V16    0.08954941681287269
#>     Attrib V17    -0.0726255751388527
#>     Attrib V18    0.09991813660363953
#>     Attrib V19    0.2687468475358171
#>     Attrib V2    0.17397240103066958
#>     Attrib V20    0.41108259629428995
#>     Attrib V21    0.29965087435794185
#>     Attrib V22    0.005347314091158274
#>     Attrib V23    -0.048436473131003195
#>     Attrib V24    0.23503653516838285
#>     Attrib V25    -0.1851581659873667
#>     Attrib V26    -0.776751823602593
#>     Attrib V27    -0.07077856074132996
#>     Attrib V28    -0.12956156994816995
#>     Attrib V29    -0.035104956724422716
#>     Attrib V3    0.16135282995425657
#>     Attrib V30    -0.22776939344498837
#>     Attrib V31    -0.9167878049235714
#>     Attrib V32    -0.26406676371221854
#>     Attrib V33    -0.03929302324496142
#>     Attrib V34    -0.1729335499936197
#>     Attrib V35    0.3823774307411274
#>     Attrib V36    -0.2597297121092234
#>     Attrib V37    -0.26446241543470056
#>     Attrib V38    0.44972273161061793
#>     Attrib V39    0.28997681856382307
#>     Attrib V4    0.15427593142372203
#>     Attrib V40    0.019103652573992397
#>     Attrib V41    -0.21888513937377407
#>     Attrib V42    -0.14424517177485766
#>     Attrib V43    0.13314095770714995
#>     Attrib V44    0.05949320557882103
#>     Attrib V45    0.2035967498656846
#>     Attrib V46    0.2533179504827923
#>     Attrib V47    0.008166311254321481
#>     Attrib V48    0.2865774451543536
#>     Attrib V49    0.1400137538663791
#>     Attrib V5    -0.09038076225057254
#>     Attrib V50    -0.32270098892873883
#>     Attrib V51    -0.23744505406556718
#>     Attrib V52    0.15021798664448963
#>     Attrib V53    0.607638283300796
#>     Attrib V54    0.7086820404031833
#>     Attrib V55    -0.0820335799555191
#>     Attrib V56    0.2923571535384836
#>     Attrib V57    0.2820355430900497
#>     Attrib V58    0.22900008948034614
#>     Attrib V59    0.6298647508612915
#>     Attrib V6    -0.44173379906995636
#>     Attrib V60    0.37504145393386107
#>     Attrib V7    -0.07727191367297374
#>     Attrib V8    -0.5609158273629269
#>     Attrib V9    -0.06888657878440818
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.04910314444195741
#>     Attrib V1    -0.07332553743934425
#>     Attrib V10    0.35945917539466843
#>     Attrib V11    -0.19884214859342172
#>     Attrib V12    -0.6592260039846377
#>     Attrib V13    -0.24114225263359654
#>     Attrib V14    -0.0593167672845762
#>     Attrib V15    -0.30890601978923715
#>     Attrib V16    0.29193457220455094
#>     Attrib V17    0.5422032340845524
#>     Attrib V18    0.0954753381919814
#>     Attrib V19    -0.39980995999123853
#>     Attrib V2    -0.05513938695429366
#>     Attrib V20    -0.13487674399407742
#>     Attrib V21    -0.0768387704509572
#>     Attrib V22    -0.3128165328725671
#>     Attrib V23    -0.658133449926507
#>     Attrib V24    -0.8212821758286738
#>     Attrib V25    0.21679953113533848
#>     Attrib V26    1.0208131011406174
#>     Attrib V27    -0.612876938482051
#>     Attrib V28    -0.6589404476961801
#>     Attrib V29    -0.3394807187685504
#>     Attrib V3    -0.3503146525276797
#>     Attrib V30    0.11615965551675099
#>     Attrib V31    1.3005811116896824
#>     Attrib V32    -0.059501561279770694
#>     Attrib V33    -0.3081233990011544
#>     Attrib V34    0.4546409701388318
#>     Attrib V35    -0.22510511140449596
#>     Attrib V36    1.6365241870686313
#>     Attrib V37    1.3343810954717814
#>     Attrib V38    0.007434426165713834
#>     Attrib V39    -0.06217996628167669
#>     Attrib V4    -0.40027510626572055
#>     Attrib V40    -0.14026646068103518
#>     Attrib V41    -0.4471922464967204
#>     Attrib V42    -0.48074017084648585
#>     Attrib V43    -0.4004795484733646
#>     Attrib V44    -0.029632232404399654
#>     Attrib V45    -0.1563650569686172
#>     Attrib V46    -0.6437961761065095
#>     Attrib V47    -0.2722263706107107
#>     Attrib V48    -0.36636254676196933
#>     Attrib V49    -0.5272594912729257
#>     Attrib V5    -0.19196080933480847
#>     Attrib V50    1.0121152338011794
#>     Attrib V51    0.5445619142551154
#>     Attrib V52    -0.18060426819788006
#>     Attrib V53    -1.2777106708144246
#>     Attrib V54    -1.121660077851497
#>     Attrib V55    0.2895314137110071
#>     Attrib V56    -0.025457824298718183
#>     Attrib V57    0.42215813076310926
#>     Attrib V58    -0.3856484482386397
#>     Attrib V59    -0.4508428278046431
#>     Attrib V6    0.5109717123370751
#>     Attrib V60    0.08166995064585308
#>     Attrib V7    0.35936236768585467
#>     Attrib V8    0.6966762357765784
#>     Attrib V9    -0.2094822130857815
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.012974403142723483
#>     Attrib V1    0.5072868328017925
#>     Attrib V10    -0.34400395799824024
#>     Attrib V11    -0.0943163107979416
#>     Attrib V12    0.20103209740425754
#>     Attrib V13    -0.0693400949173601
#>     Attrib V14    0.3241259150012863
#>     Attrib V15    0.5170115551061286
#>     Attrib V16    0.2569115853345157
#>     Attrib V17    0.07670259451037659
#>     Attrib V18    0.09218170990803648
#>     Attrib V19    0.1229115433421143
#>     Attrib V2    0.18902374094403476
#>     Attrib V20    0.2834469766483823
#>     Attrib V21    0.07475851609685201
#>     Attrib V22    -0.23534092157782419
#>     Attrib V23    -0.26954527664007644
#>     Attrib V24    0.17092762284652288
#>     Attrib V25    -0.12330380524531294
#>     Attrib V26    -0.6671276992795254
#>     Attrib V27    -0.3761563652307595
#>     Attrib V28    -0.4909622320950787
#>     Attrib V29    -0.33818632398959164
#>     Attrib V3    0.16488249581599454
#>     Attrib V30    -0.3520456145586417
#>     Attrib V31    -0.5364844769485732
#>     Attrib V32    -0.11584985909392669
#>     Attrib V33    -0.026920938277519037
#>     Attrib V34    0.035713786948868065
#>     Attrib V35    0.387501960181752
#>     Attrib V36    -0.11759023548828944
#>     Attrib V37    -0.19319697111519912
#>     Attrib V38    0.26638453030203907
#>     Attrib V39    0.1923163569918888
#>     Attrib V4    0.13047139635461108
#>     Attrib V40    -0.0019948518888271267
#>     Attrib V41    -0.3146906540413143
#>     Attrib V42    -0.17246520822488368
#>     Attrib V43    0.08482415697051562
#>     Attrib V44    -0.04674834015633388
#>     Attrib V45    0.04785741660156525
#>     Attrib V46    0.169553768327048
#>     Attrib V47    -0.04687506231430429
#>     Attrib V48    0.25596393908205123
#>     Attrib V49    0.08386348260805963
#>     Attrib V5    -0.0876246018113213
#>     Attrib V50    -0.17149707522843913
#>     Attrib V51    -0.1953989568432363
#>     Attrib V52    0.09664391379194578
#>     Attrib V53    0.4202676626238026
#>     Attrib V54    0.5906018639352716
#>     Attrib V55    0.15220485305116419
#>     Attrib V56    0.39949908725258293
#>     Attrib V57    0.5336913261161346
#>     Attrib V58    0.34795040844987596
#>     Attrib V59    0.6008908278058527
#>     Attrib V6    -0.29124327958465684
#>     Attrib V60    0.41759345348019006
#>     Attrib V7    -0.06355211101542907
#>     Attrib V8    -0.4052245575759013
#>     Attrib V9    -0.10704367150139989
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.010698292274217801
#>     Attrib V1    0.4412349030487582
#>     Attrib V10    -0.3287872780380652
#>     Attrib V11    -0.05595324490360626
#>     Attrib V12    0.21237769424165928
#>     Attrib V13    -0.0038509679117052797
#>     Attrib V14    0.26893758952772034
#>     Attrib V15    0.43110964045779127
#>     Attrib V16    0.11124236971664395
#>     Attrib V17    0.08872234638129088
#>     Attrib V18    0.11051961024350429
#>     Attrib V19    0.14755962329044323
#>     Attrib V2    0.1324504852143901
#>     Attrib V20    0.24878368990061375
#>     Attrib V21    0.07409642854171924
#>     Attrib V22    -0.15201116524624445
#>     Attrib V23    -0.16018129611085014
#>     Attrib V24    0.0786983212037933
#>     Attrib V25    -0.10514424677118928
#>     Attrib V26    -0.5287208414536894
#>     Attrib V27    -0.30702387169155665
#>     Attrib V28    -0.36940010873681306
#>     Attrib V29    -0.2832597000746828
#>     Attrib V3    0.21661619315765615
#>     Attrib V30    -0.27533542683342715
#>     Attrib V31    -0.5416297468804189
#>     Attrib V32    -0.12047051577711401
#>     Attrib V33    0.004227047015135324
#>     Attrib V34    0.012003126744759986
#>     Attrib V35    0.40674563146339876
#>     Attrib V36    -0.05879798714789433
#>     Attrib V37    -0.07842218299999874
#>     Attrib V38    0.28594330399056545
#>     Attrib V39    0.196376935481307
#>     Attrib V4    0.1886193381879408
#>     Attrib V40    -0.0594254882860787
#>     Attrib V41    -0.24518115245892294
#>     Attrib V42    -0.15638855491483297
#>     Attrib V43    0.06959935667745665
#>     Attrib V44    -0.025485737205185613
#>     Attrib V45    0.12973202517018276
#>     Attrib V46    0.14242962918531338
#>     Attrib V47    0.023864849713835894
#>     Attrib V48    0.13233183170026408
#>     Attrib V49    0.06491655490732295
#>     Attrib V5    -0.05794399056800809
#>     Attrib V50    -0.1785129180499314
#>     Attrib V51    -0.1949371630134403
#>     Attrib V52    0.10233047896018581
#>     Attrib V53    0.42023114226320785
#>     Attrib V54    0.4707065733423415
#>     Attrib V55    0.08794951607353342
#>     Attrib V56    0.33557651026810087
#>     Attrib V57    0.35910831856103437
#>     Attrib V58    0.23865677952324063
#>     Attrib V59    0.5294987262053603
#>     Attrib V6    -0.25519718829791915
#>     Attrib V60    0.3050453109022912
#>     Attrib V7    -0.06698487471332167
#>     Attrib V8    -0.33806150982928457
#>     Attrib V9    -0.07325927548309873
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.14197945678655688
#>     Attrib V1    0.12437711241421016
#>     Attrib V10    0.013320114171341662
#>     Attrib V11    -0.007588482361120679
#>     Attrib V12    0.014356844556555986
#>     Attrib V13    -0.017020247672839987
#>     Attrib V14    0.035487409781808484
#>     Attrib V15    0.07222769147213308
#>     Attrib V16    0.008852285327761349
#>     Attrib V17    0.055385855868418064
#>     Attrib V18    -0.006117911692960836
#>     Attrib V19    -0.01708262455246309
#>     Attrib V2    0.08222106316894713
#>     Attrib V20    -0.0026365272677138863
#>     Attrib V21    -0.01889762706995553
#>     Attrib V22    -0.07018511326153926
#>     Attrib V23    -0.03228279930567183
#>     Attrib V24    -0.08754802314018523
#>     Attrib V25    -0.06025793986944045
#>     Attrib V26    -0.06128741944888654
#>     Attrib V27    -0.09979725390819781
#>     Attrib V28    -0.05700082969471632
#>     Attrib V29    -0.061544624423380614
#>     Attrib V3    0.09381503887932269
#>     Attrib V30    -0.016339411266942657
#>     Attrib V31    -0.029792098716148314
#>     Attrib V32    0.08585623812676053
#>     Attrib V33    0.0412287621027918
#>     Attrib V34    0.07385547679780698
#>     Attrib V35    0.1195994992870613
#>     Attrib V36    0.1195223710949868
#>     Attrib V37    0.05432973540828842
#>     Attrib V38    0.08572808986481487
#>     Attrib V39    0.07098995142346078
#>     Attrib V4    0.15159387876576835
#>     Attrib V40    0.10977716241696507
#>     Attrib V41    0.0851277830369184
#>     Attrib V42    0.018167640144361896
#>     Attrib V43    0.11106303946954948
#>     Attrib V44    0.059923396154749044
#>     Attrib V45    0.01864300873124093
#>     Attrib V46    0.07355953345821288
#>     Attrib V47    0.0919325239626644
#>     Attrib V48    0.06047474091048116
#>     Attrib V49    0.03191546147146181
#>     Attrib V5    0.06823195502595847
#>     Attrib V50    0.10730005697439511
#>     Attrib V51    0.06469317264341011
#>     Attrib V52    0.049275437476187685
#>     Attrib V53    0.04213271682942135
#>     Attrib V54    0.02583166163397758
#>     Attrib V55    0.03849942574826684
#>     Attrib V56    0.10763197301767957
#>     Attrib V57    0.14241428463746683
#>     Attrib V58    0.08660690088373567
#>     Attrib V59    0.10572924868463743
#>     Attrib V6    0.09503971085746936
#>     Attrib V60    0.10388452362575491
#>     Attrib V7    0.03167314203522402
#>     Attrib V8    0.034773430220121186
#>     Attrib V9    0.1131694541752612
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.10505094007171592
#>     Attrib V1    0.06278311479945811
#>     Attrib V10    1.0261584469784761
#>     Attrib V11    0.9807160471434438
#>     Attrib V12    0.7443222720361706
#>     Attrib V13    0.24656437434091513
#>     Attrib V14    -0.32680770593693587
#>     Attrib V15    -0.23648630092094694
#>     Attrib V16    -0.4909175458617999
#>     Attrib V17    -0.730726289503001
#>     Attrib V18    -0.24781566473214417
#>     Attrib V19    0.35663850753090526
#>     Attrib V2    0.30412964587257624
#>     Attrib V20    0.08886303794558882
#>     Attrib V21    0.4253482747154276
#>     Attrib V22    1.1438904526342946
#>     Attrib V23    1.3562351541536701
#>     Attrib V24    0.5547767296695446
#>     Attrib V25    -0.5320543020434136
#>     Attrib V26    -0.27944788559393374
#>     Attrib V27    2.036665030776521
#>     Attrib V28    2.3438448247159993
#>     Attrib V29    1.5616615502809699
#>     Attrib V3    0.3024879476845466
#>     Attrib V30    0.48149153407818984
#>     Attrib V31    -1.5297897163430527
#>     Attrib V32    0.05047464636192122
#>     Attrib V33    0.17642680839620759
#>     Attrib V34    -0.710513221976131
#>     Attrib V35    0.3314661066254403
#>     Attrib V36    -1.2013428838112326
#>     Attrib V37    -0.28813180439780167
#>     Attrib V38    0.03379477783210543
#>     Attrib V39    -0.10436118812111449
#>     Attrib V4    0.5650931603021342
#>     Attrib V40    0.2657179571317924
#>     Attrib V41    1.1981139337409772
#>     Attrib V42    0.33034124436344414
#>     Attrib V43    0.2939353747902953
#>     Attrib V44    0.6036251821979132
#>     Attrib V45    0.7009253086320638
#>     Attrib V46    1.2573453216733554
#>     Attrib V47    0.844258122268009
#>     Attrib V48    0.6025449753051546
#>     Attrib V49    0.9589331416972381
#>     Attrib V5    0.9176081908345799
#>     Attrib V50    -0.2505502158068245
#>     Attrib V51    0.04537646098067011
#>     Attrib V52    0.9208094838154843
#>     Attrib V53    1.3107906722777862
#>     Attrib V54    0.6522989911819324
#>     Attrib V55    -1.3556043934918005
#>     Attrib V56    -0.6283971192903782
#>     Attrib V57    -0.6969929795123725
#>     Attrib V58    -0.3673331770373176
#>     Attrib V59    -0.7214119033731697
#>     Attrib V6    0.18978597846316086
#>     Attrib V60    -0.36943639144638013
#>     Attrib V7    -0.17567265440667038
#>     Attrib V8    -0.8416053452426656
#>     Attrib V9    1.431792763537686
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.28422425466094214
#>     Attrib V1    -0.06954320862675994
#>     Attrib V10    -0.04047168968975394
#>     Attrib V11    -0.2768358991959074
#>     Attrib V12    -0.39214896787148434
#>     Attrib V13    -0.07725970968069706
#>     Attrib V14    0.052795244590148414
#>     Attrib V15    -0.1888618521103
#>     Attrib V16    0.11275827323520578
#>     Attrib V17    0.23948624441754054
#>     Attrib V18    0.06688314463617338
#>     Attrib V19    -0.024486831633192242
#>     Attrib V2    0.032469031107730535
#>     Attrib V20    -0.0420308698677301
#>     Attrib V21    0.011009343968561474
#>     Attrib V22    -0.03826635422296135
#>     Attrib V23    -0.1934343843378885
#>     Attrib V24    -0.296931884097971
#>     Attrib V25    0.18936700531256917
#>     Attrib V26    0.3720543525097724
#>     Attrib V27    -0.30177577165111064
#>     Attrib V28    -0.2627277817851977
#>     Attrib V29    -0.16879217747687103
#>     Attrib V3    -0.08483924961623171
#>     Attrib V30    -0.09034020628066121
#>     Attrib V31    0.5460721983937201
#>     Attrib V32    -0.038069446962005565
#>     Attrib V33    -0.13436876455452093
#>     Attrib V34    0.0499286701971242
#>     Attrib V35    -0.28226787375042056
#>     Attrib V36    0.5301340726183872
#>     Attrib V37    0.3931256981869139
#>     Attrib V38    -0.1497645424275078
#>     Attrib V39    0.0029005363247463084
#>     Attrib V4    -0.06947122032988526
#>     Attrib V40    0.0027691734075032614
#>     Attrib V41    -0.0914189386107952
#>     Attrib V42    0.029916746935955387
#>     Attrib V43    -0.10648760895274435
#>     Attrib V44    -0.07916418215002242
#>     Attrib V45    -0.31910512337896146
#>     Attrib V46    -0.4472398935380249
#>     Attrib V47    -0.16319458678614626
#>     Attrib V48    -0.22917221728181938
#>     Attrib V49    -0.29888869715004723
#>     Attrib V5    -0.08097802947864496
#>     Attrib V50    0.3913817878189558
#>     Attrib V51    0.2694573042189683
#>     Attrib V52    -0.11759667600890251
#>     Attrib V53    -0.3923876453554201
#>     Attrib V54    -0.3816529503104509
#>     Attrib V55    0.2322856622956167
#>     Attrib V56    0.1290610979142115
#>     Attrib V57    0.13411397026301555
#>     Attrib V58    -0.049625238826786135
#>     Attrib V59    -0.018709287078276075
#>     Attrib V6    0.2554704834989931
#>     Attrib V60    0.1820665894030567
#>     Attrib V7    0.01764256477698989
#>     Attrib V8    0.21748620714918543
#>     Attrib V9    -0.3328624841951101
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.1823833499950863
#>     Attrib V1    0.52206812651707
#>     Attrib V10    -0.29445662687262
#>     Attrib V11    0.0508217499435175
#>     Attrib V12    0.4084154615595397
#>     Attrib V13    0.010760829760868
#>     Attrib V14    0.2565079530840363
#>     Attrib V15    0.520718966601374
#>     Attrib V16    0.07272468148717885
#>     Attrib V17    -0.0947905150225206
#>     Attrib V18    0.07193997229318765
#>     Attrib V19    0.14377763354010534
#>     Attrib V2    0.14095032592035228
#>     Attrib V20    0.21291802392037545
#>     Attrib V21    0.08955060305157768
#>     Attrib V22    -0.1795304057878827
#>     Attrib V23    -0.21600321770604097
#>     Attrib V24    0.24433046061199667
#>     Attrib V25    -0.0634370434525785
#>     Attrib V26    -0.5297294673427795
#>     Attrib V27    -0.060778815722971294
#>     Attrib V28    -0.24425041071881315
#>     Attrib V29    -0.22327174496339658
#>     Attrib V3    0.13202089185430485
#>     Attrib V30    -0.2810878984173619
#>     Attrib V31    -0.7318381455390032
#>     Attrib V32    -0.12470966108299336
#>     Attrib V33    0.015553932816160028
#>     Attrib V34    -0.0021860887275295515
#>     Attrib V35    0.43323555658429425
#>     Attrib V36    -0.25559233218746896
#>     Attrib V37    -0.26065722279201375
#>     Attrib V38    0.40145551342400837
#>     Attrib V39    0.2843003018720819
#>     Attrib V4    0.1235893704853929
#>     Attrib V40    -0.07902317511401155
#>     Attrib V41    -0.28636286295737795
#>     Attrib V42    -0.19368470104864866
#>     Attrib V43    0.024288981357820986
#>     Attrib V44    0.00753912020478542
#>     Attrib V45    0.2509701039138001
#>     Attrib V46    0.23010722307518933
#>     Attrib V47    0.016752677901231555
#>     Attrib V48    0.37989907339312673
#>     Attrib V49    0.14072965997250708
#>     Attrib V5    -0.10015218401746807
#>     Attrib V50    -0.22499218052526787
#>     Attrib V51    -0.26919490793073897
#>     Attrib V52    0.1456132342929203
#>     Attrib V53    0.576417877258479
#>     Attrib V54    0.7120425564317624
#>     Attrib V55    0.009418648002834012
#>     Attrib V56    0.1934151370186651
#>     Attrib V57    0.4784344260816146
#>     Attrib V58    0.21776514898885535
#>     Attrib V59    0.5768273948365886
#>     Attrib V6    -0.3944525472893725
#>     Attrib V60    0.28987677006801815
#>     Attrib V7    -0.1537857454147449
#>     Attrib V8    -0.501527682998769
#>     Attrib V9    -0.01957554676743025
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.2359849604144823
#>     Attrib V1    -0.054257889868276676
#>     Attrib V10    -0.04241231055205384
#>     Attrib V11    -0.26759425428609646
#>     Attrib V12    -0.46202021738376925
#>     Attrib V13    -0.07806563455717298
#>     Attrib V14    -0.012573095641082893
#>     Attrib V15    -0.14320366603011553
#>     Attrib V16    0.13929545580459263
#>     Attrib V17    0.16489982948321114
#>     Attrib V18    0.11768129055977873
#>     Attrib V19    -0.13316442492076902
#>     Attrib V2    -0.018205316008892143
#>     Attrib V20    -0.08143424560963784
#>     Attrib V21    0.006606090650553347
#>     Attrib V22    -0.035383407431028524
#>     Attrib V23    -0.2271563509925102
#>     Attrib V24    -0.286892475495268
#>     Attrib V25    0.1495372051253462
#>     Attrib V26    0.3988507898396348
#>     Attrib V27    -0.31339198251557215
#>     Attrib V28    -0.31866285329520994
#>     Attrib V29    -0.2014111020352819
#>     Attrib V3    -0.043034663252701985
#>     Attrib V30    -0.09418554521363427
#>     Attrib V31    0.5444576163065667
#>     Attrib V32    0.03442573392637756
#>     Attrib V33    -0.18999505838091477
#>     Attrib V34    0.07722044927914717
#>     Attrib V35    -0.2925629215897076
#>     Attrib V36    0.5644384585468735
#>     Attrib V37    0.36633605470708913
#>     Attrib V38    -0.09605949022172013
#>     Attrib V39    0.014042038535715609
#>     Attrib V4    -0.059862957696787934
#>     Attrib V40    0.0024685526415902893
#>     Attrib V41    -0.06942347796455002
#>     Attrib V42    -0.017189896696417052
#>     Attrib V43    -0.11555234006991248
#>     Attrib V44    -0.09992629068363812
#>     Attrib V45    -0.29943686543512343
#>     Attrib V46    -0.4497605633019039
#>     Attrib V47    -0.19390517386843176
#>     Attrib V48    -0.27720644680023754
#>     Attrib V49    -0.3179500761156591
#>     Attrib V5    -0.0850625341038
#>     Attrib V50    0.4215329396611665
#>     Attrib V51    0.2728910355776463
#>     Attrib V52    -0.04054810301199806
#>     Attrib V53    -0.4102228152966321
#>     Attrib V54    -0.3516005210087833
#>     Attrib V55    0.2109313917677497
#>     Attrib V56    0.11778194774621224
#>     Attrib V57    0.10760041012238263
#>     Attrib V58    -0.046630686125607924
#>     Attrib V59    -0.03164239863475476
#>     Attrib V6    0.2406624635783342
#>     Attrib V60    0.11376867480971815
#>     Attrib V7    0.06935701895861691
#>     Attrib V8    0.24524668191833726
#>     Attrib V9    -0.25821488806938
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.058661304351703976
#>     Attrib V1    0.4595151202287538
#>     Attrib V10    -0.39882944642264795
#>     Attrib V11    -0.005534752891979274
#>     Attrib V12    0.33418701936535156
#>     Attrib V13    -0.02948654507964689
#>     Attrib V14    0.3598855171179889
#>     Attrib V15    0.5720999230669779
#>     Attrib V16    0.09672433293389811
#>     Attrib V17    -0.0626494419604344
#>     Attrib V18    0.05934447364451904
#>     Attrib V19    0.1744134892908629
#>     Attrib V2    0.14821586467009265
#>     Attrib V20    0.38730240678804445
#>     Attrib V21    0.2058947594749359
#>     Attrib V22    -0.0652912808079055
#>     Attrib V23    -0.1551654863221109
#>     Attrib V24    0.2786378267330227
#>     Attrib V25    -0.07572325137706531
#>     Attrib V26    -0.7590496662874818
#>     Attrib V27    -0.11397075697658057
#>     Attrib V28    -0.19065523519154035
#>     Attrib V29    -0.13339051583585176
#>     Attrib V3    0.23130624409512843
#>     Attrib V30    -0.3495769077035034
#>     Attrib V31    -0.8654730407399057
#>     Attrib V32    -0.17966790342818587
#>     Attrib V33    -0.0055952071533491125
#>     Attrib V34    -0.07805270061597838
#>     Attrib V35    0.4381497157043019
#>     Attrib V36    -0.29743280957975937
#>     Attrib V37    -0.24965544433578207
#>     Attrib V38    0.4432927058922632
#>     Attrib V39    0.3362298503685886
#>     Attrib V4    0.12931840850684387
#>     Attrib V40    0.007902120524396296
#>     Attrib V41    -0.24416092726227107
#>     Attrib V42    -0.16589546440488626
#>     Attrib V43    0.13584778550677676
#>     Attrib V44    -0.04402616923218585
#>     Attrib V45    0.24456440438986182
#>     Attrib V46    0.2897497160157779
#>     Attrib V47    0.07877051172439938
#>     Attrib V48    0.2902066052276101
#>     Attrib V49    0.12567471810059827
#>     Attrib V5    -0.12488078947314446
#>     Attrib V50    -0.29518288828609573
#>     Attrib V51    -0.27571099658656256
#>     Attrib V52    0.1500582482404384
#>     Attrib V53    0.6080208797676923
#>     Attrib V54    0.6520930144425313
#>     Attrib V55    -0.03813625429789293
#>     Attrib V56    0.30113893379760587
#>     Attrib V57    0.4080226604167651
#>     Attrib V58    0.17855215299917815
#>     Attrib V59    0.5764867210079161
#>     Attrib V6    -0.4146409239946385
#>     Attrib V60    0.3562230124221217
#>     Attrib V7    -0.13978748495986926
#>     Attrib V8    -0.5032575702877622
#>     Attrib V9    -0.05998143239929515
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.21686581345850142
#>     Attrib V1    -0.04766254161641984
#>     Attrib V10    0.03855540226554358
#>     Attrib V11    -0.18356463815436627
#>     Attrib V12    -0.29407966816565745
#>     Attrib V13    0.024678109241643317
#>     Attrib V14    0.028212967151405557
#>     Attrib V15    -0.12253491661036754
#>     Attrib V16    0.1483837703685849
#>     Attrib V17    0.27682451431570926
#>     Attrib V18    0.15370079314267587
#>     Attrib V19    -0.038277697378725925
#>     Attrib V2    0.0389655623533318
#>     Attrib V20    -0.04352227909286441
#>     Attrib V21    0.07050512091712206
#>     Attrib V22    0.028007861544998236
#>     Attrib V23    -0.16657057804444958
#>     Attrib V24    -0.2840991854370384
#>     Attrib V25    0.2027480981317602
#>     Attrib V26    0.39611525286329813
#>     Attrib V27    -0.2875537637515675
#>     Attrib V28    -0.255638918482806
#>     Attrib V29    -0.21572522274167935
#>     Attrib V3    -0.0697652376323997
#>     Attrib V30    -0.03593630929147741
#>     Attrib V31    0.5788642854114506
#>     Attrib V32    -0.009924791296986759
#>     Attrib V33    -0.1271236957144963
#>     Attrib V34    0.04557300627601262
#>     Attrib V35    -0.27544459504020463
#>     Attrib V36    0.3812485566235081
#>     Attrib V37    0.31467846341623346
#>     Attrib V38    -0.15470783980459718
#>     Attrib V39    0.04935026483833117
#>     Attrib V4    -0.05504760174129455
#>     Attrib V40    0.07415582941490623
#>     Attrib V41    -0.010841255355777442
#>     Attrib V42    0.08865690811559283
#>     Attrib V43    -0.09305356111196195
#>     Attrib V44    -0.10855343728554769
#>     Attrib V45    -0.2759843806675755
#>     Attrib V46    -0.36581843243597933
#>     Attrib V47    -0.13555045940651972
#>     Attrib V48    -0.2035308734935844
#>     Attrib V49    -0.25793787077902286
#>     Attrib V5    -0.05183657770476175
#>     Attrib V50    0.3083921231326079
#>     Attrib V51    0.19377126418572826
#>     Attrib V52    -0.16610625531975054
#>     Attrib V53    -0.3287536020542355
#>     Attrib V54    -0.30700221141148165
#>     Attrib V55    0.18587240326823715
#>     Attrib V56    0.1284972795110161
#>     Attrib V57    0.08055386720760141
#>     Attrib V58    -0.04737998514134193
#>     Attrib V59    -0.007764298377465924
#>     Attrib V6    0.20643828768302272
#>     Attrib V60    0.10224936726157122
#>     Attrib V7    -0.009653354262528295
#>     Attrib V8    0.16632508263074922
#>     Attrib V9    -0.2829116960046703
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.005561613632648877
#>     Attrib V1    0.5072836780500971
#>     Attrib V10    -0.42160477889167336
#>     Attrib V11    -0.10474735164817398
#>     Attrib V12    0.15259053192506236
#>     Attrib V13    -0.031946080055887595
#>     Attrib V14    0.3435620485503565
#>     Attrib V15    0.5895444069887817
#>     Attrib V16    0.19998730026758182
#>     Attrib V17    0.08165887214566307
#>     Attrib V18    0.12272171004822877
#>     Attrib V19    0.15652555069335664
#>     Attrib V2    0.2325205914804476
#>     Attrib V20    0.34166985558540314
#>     Attrib V21    0.0704597587051187
#>     Attrib V22    -0.16725957248766518
#>     Attrib V23    -0.1823619925278234
#>     Attrib V24    0.1885680622043109
#>     Attrib V25    -0.15659967671966143
#>     Attrib V26    -0.6893118468134992
#>     Attrib V27    -0.3879071923538979
#>     Attrib V28    -0.4691313740014285
#>     Attrib V29    -0.344439705520954
#>     Attrib V3    0.17440150029309281
#>     Attrib V30    -0.3593194434560933
#>     Attrib V31    -0.6227369940923743
#>     Attrib V32    -0.17719642404170885
#>     Attrib V33    -0.006902190288674399
#>     Attrib V34    0.039055260817907264
#>     Attrib V35    0.4481694567996108
#>     Attrib V36    -0.14854555226410693
#>     Attrib V37    -0.18841305607144915
#>     Attrib V38    0.3719843323653433
#>     Attrib V39    0.22415412250543418
#>     Attrib V4    0.15791471949542119
#>     Attrib V40    -0.019037120013606905
#>     Attrib V41    -0.3184991645501135
#>     Attrib V42    -0.1673911415353392
#>     Attrib V43    0.08663137026503659
#>     Attrib V44    0.006273974619687108
#>     Attrib V45    0.09302285760865428
#>     Attrib V46    0.16528597167058115
#>     Attrib V47    -0.0053754654659585385
#>     Attrib V48    0.2265257349476579
#>     Attrib V49    0.07216453963699518
#>     Attrib V5    -0.14026965252595777
#>     Attrib V50    -0.22650840702059757
#>     Attrib V51    -0.2317836674268961
#>     Attrib V52    0.09248414549242669
#>     Attrib V53    0.5168410960550848
#>     Attrib V54    0.6395420108705094
#>     Attrib V55    0.12011182242009112
#>     Attrib V56    0.35111430688929546
#>     Attrib V57    0.4777470741004496
#>     Attrib V58    0.2652787043080131
#>     Attrib V59    0.6239099011527064
#>     Attrib V6    -0.3425001896101459
#>     Attrib V60    0.4076868705023734
#>     Attrib V7    -0.07294844394579843
#>     Attrib V8    -0.3775070331616831
#>     Attrib V9    -0.10753279902661216
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.16656555346076168
#>     Attrib V1    0.12517503825233012
#>     Attrib V10    -0.0010050602309170141
#>     Attrib V11    0.003851037865969349
#>     Attrib V12    -0.027320436589787132
#>     Attrib V13    -0.020041244522816106
#>     Attrib V14    0.07205986209066856
#>     Attrib V15    0.01637862873637105
#>     Attrib V16    0.04817692947677125
#>     Attrib V17    -0.006633312795018155
#>     Attrib V18    0.07604932047625013
#>     Attrib V19    -0.04079955013796041
#>     Attrib V2    0.07188835254052854
#>     Attrib V20    0.013570249708314159
#>     Attrib V21    0.029945051545858397
#>     Attrib V22    4.033790039798571E-4
#>     Attrib V23    0.020374118849387585
#>     Attrib V24    -0.04025053075347678
#>     Attrib V25    -0.06328688662924388
#>     Attrib V26    -0.06770955921848233
#>     Attrib V27    -0.08620537598204991
#>     Attrib V28    -0.0518067012079526
#>     Attrib V29    -0.05346767013097061
#>     Attrib V3    0.12484856429037343
#>     Attrib V30    0.01933699507644758
#>     Attrib V31    0.007982187310712199
#>     Attrib V32    0.023338998385099695
#>     Attrib V33    0.07649291314498884
#>     Attrib V34    0.07961172335212861
#>     Attrib V35    0.10656718097490843
#>     Attrib V36    0.17106089902133412
#>     Attrib V37    0.10963875214313161
#>     Attrib V38    0.019212831239503635
#>     Attrib V39    0.08114390091170035
#>     Attrib V4    0.08522653627241186
#>     Attrib V40    0.07580053182213689
#>     Attrib V41    0.04916019493096138
#>     Attrib V42    0.0906256750298091
#>     Attrib V43    0.041407488126631
#>     Attrib V44    0.113900718395187
#>     Attrib V45    0.07406236870053519
#>     Attrib V46    0.03800976244120001
#>     Attrib V47    0.03363097069783281
#>     Attrib V48    -0.015407103722226912
#>     Attrib V49    0.06638592619919863
#>     Attrib V5    0.12553595811224766
#>     Attrib V50    0.05363614766905887
#>     Attrib V51    0.06761477088872789
#>     Attrib V52    0.01662366414503458
#>     Attrib V53    0.04843484554334874
#>     Attrib V54    -0.030110546923935663
#>     Attrib V55    0.01505511928314705
#>     Attrib V56    0.06707496227057066
#>     Attrib V57    0.05321148400615247
#>     Attrib V58    0.12709423528541586
#>     Attrib V59    0.06679050907431296
#>     Attrib V6    0.13851971769875515
#>     Attrib V60    0.1081710104906442
#>     Attrib V7    0.08486321132468544
#>     Attrib V8    0.0984153888925454
#>     Attrib V9    0.07861177259576213
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
#>  0.2028986 
```
