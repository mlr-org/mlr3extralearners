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
#>     Threshold    -0.4679012010573603
#>     Node 2    2.337365208498149
#>     Node 3    1.768876787897093
#>     Node 4    1.2882841659092152
#>     Node 5    -1.2785099153555923
#>     Node 6    1.5964079210668731
#>     Node 7    2.279948577384
#>     Node 8    1.0105143701155823
#>     Node 9    4.076481790866743
#>     Node 10    -0.6199978937912377
#>     Node 11    1.3187767554292893
#>     Node 12    1.0648714782572524
#>     Node 13    1.6089570619219415
#>     Node 14    1.4889508834122889
#>     Node 15    -2.7012928694705844
#>     Node 16    -1.4761074433485584
#>     Node 17    1.6345174761219532
#>     Node 18    0.5869714774931811
#>     Node 19    1.996013820846978
#>     Node 20    2.0522808308390497
#>     Node 21    -2.217589601823647
#>     Node 22    1.2585314912460563
#>     Node 23    1.554149185345
#>     Node 24    -2.1276445023448773
#>     Node 25    5.095564566583276
#>     Node 26    -0.49138509453350815
#>     Node 27    1.6138685994741777
#>     Node 28    -3.562904022972807
#>     Node 29    1.1047026939044042
#>     Node 30    0.46586659055672686
#>     Node 31    1.2918812339321284
#>     Node 32    1.2593008898999354
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.49555287661808084
#>     Node 2    -2.367162876993686
#>     Node 3    -1.755549793927033
#>     Node 4    -1.2498380529849207
#>     Node 5    1.3125043955690818
#>     Node 6    -1.5777715742954093
#>     Node 7    -2.293253735824051
#>     Node 8    -1.046522342161564
#>     Node 9    -4.077045553998708
#>     Node 10    0.5873803897289643
#>     Node 11    -1.2828574480627855
#>     Node 12    -1.1469588942707987
#>     Node 13    -1.5530130114243645
#>     Node 14    -1.4271599307076976
#>     Node 15    2.684747633727106
#>     Node 16    1.4639695698172939
#>     Node 17    -1.6059261955082091
#>     Node 18    -0.5444337582310287
#>     Node 19    -1.9902593133412187
#>     Node 20    -2.051430692160224
#>     Node 21    2.2640107033500425
#>     Node 22    -1.3158113257487207
#>     Node 23    -1.6033001055486593
#>     Node 24    2.102885268291702
#>     Node 25    -5.11975972960153
#>     Node 26    0.43379394006532973
#>     Node 27    -1.6585681573705733
#>     Node 28    3.5374106526793345
#>     Node 29    -1.1338370550691212
#>     Node 30    -0.3852619684636447
#>     Node 31    -1.2355252887682526
#>     Node 32    -1.280100561074829
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.03928226545219399
#>     Attrib V1    0.5544570433947916
#>     Attrib V10    -0.38267156118474305
#>     Attrib V11    0.3812110908364219
#>     Attrib V12    0.19353754806723691
#>     Attrib V13    -0.4602899502394126
#>     Attrib V14    -0.8360759946238682
#>     Attrib V15    -0.08843483163092286
#>     Attrib V16    0.030957390140734037
#>     Attrib V17    0.22490310536005442
#>     Attrib V18    -0.014875805891774778
#>     Attrib V19    0.6712777910430062
#>     Attrib V2    0.23318493897312584
#>     Attrib V20    0.47826147166511446
#>     Attrib V21    0.7125607749433549
#>     Attrib V22    0.96310697150031
#>     Attrib V23    0.2660523198448473
#>     Attrib V24    0.7976417011273939
#>     Attrib V25    0.2741734811107927
#>     Attrib V26    -0.5174008326242657
#>     Attrib V27    -1.006135733902229
#>     Attrib V28    -0.6840430150247798
#>     Attrib V29    -0.7584067703373547
#>     Attrib V3    0.15324385337569638
#>     Attrib V30    0.46268450264847644
#>     Attrib V31    -0.8098875306575779
#>     Attrib V32    0.33955062622990323
#>     Attrib V33    0.9902964269209003
#>     Attrib V34    0.15810441188714955
#>     Attrib V35    -0.32635793083421627
#>     Attrib V36    -1.0258403776610452
#>     Attrib V37    -1.2721823700558983
#>     Attrib V38    0.19545870205149368
#>     Attrib V39    0.4046936921414
#>     Attrib V4    -0.15174039369891842
#>     Attrib V40    -0.48155603288126403
#>     Attrib V41    -0.2755567241512453
#>     Attrib V42    0.6083536458741525
#>     Attrib V43    0.29542385911364916
#>     Attrib V44    0.24533277827064456
#>     Attrib V45    0.08460385206739272
#>     Attrib V46    0.49327455783495056
#>     Attrib V47    0.12579290125386666
#>     Attrib V48    0.5554544223376663
#>     Attrib V49    0.8287373469080764
#>     Attrib V5    0.21706993457440343
#>     Attrib V50    -1.0725836046621295
#>     Attrib V51    0.5387225464918196
#>     Attrib V52    0.11580250548994488
#>     Attrib V53    0.09438097542692779
#>     Attrib V54    0.7202371738453065
#>     Attrib V55    -0.437309672902448
#>     Attrib V56    0.8594672119982929
#>     Attrib V57    -0.3645016997987121
#>     Attrib V58    0.3584968923443935
#>     Attrib V59    0.470009015168218
#>     Attrib V6    -0.19272140709800334
#>     Attrib V60    0.5880708297380541
#>     Attrib V7    -0.534426541286408
#>     Attrib V8    -0.5783262984241486
#>     Attrib V9    0.5154203387018489
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.2801211783770054
#>     Attrib V1    0.6542763705884339
#>     Attrib V10    -0.7706600021764299
#>     Attrib V11    -0.021969544927432735
#>     Attrib V12    0.13243414206874446
#>     Attrib V13    -0.30060124213363365
#>     Attrib V14    -0.1640788486413788
#>     Attrib V15    0.3780691699373517
#>     Attrib V16    0.17135012189789686
#>     Attrib V17    0.17376377367631732
#>     Attrib V18    -0.14596085557608143
#>     Attrib V19    0.1906448892538024
#>     Attrib V2    0.37524199071363706
#>     Attrib V20    0.2205051735770083
#>     Attrib V21    0.4948507978196516
#>     Attrib V22    0.4132098692818771
#>     Attrib V23    -0.3067112496575061
#>     Attrib V24    0.1261137475196739
#>     Attrib V25    -0.33285013608233466
#>     Attrib V26    -0.8203959374644243
#>     Attrib V27    -0.8787805255716657
#>     Attrib V28    -0.6271324483866211
#>     Attrib V29    -0.32977244793963706
#>     Attrib V3    0.16202056023383804
#>     Attrib V30    0.2865272528373986
#>     Attrib V31    -0.6609860958416724
#>     Attrib V32    0.15089150040106222
#>     Attrib V33    0.5225120859379371
#>     Attrib V34    -0.18464749243683798
#>     Attrib V35    -0.5558033366030183
#>     Attrib V36    -0.8546449458066672
#>     Attrib V37    -0.7851080248605846
#>     Attrib V38    0.042856588893489915
#>     Attrib V39    0.3874058585905782
#>     Attrib V4    -0.08415775907162282
#>     Attrib V40    -0.16987747599474842
#>     Attrib V41    -0.1061520616523197
#>     Attrib V42    0.5749912554389194
#>     Attrib V43    0.24745547069045087
#>     Attrib V44    0.15950822316244645
#>     Attrib V45    -0.0817336379141419
#>     Attrib V46    0.2115738465654798
#>     Attrib V47    -0.12683588100124463
#>     Attrib V48    0.18837096755935165
#>     Attrib V49    0.4136431824872289
#>     Attrib V5    0.0811312042085848
#>     Attrib V50    -0.770738186507951
#>     Attrib V51    0.03889058013230051
#>     Attrib V52    0.06849252307876837
#>     Attrib V53    0.2947837650184226
#>     Attrib V54    0.6217089822527777
#>     Attrib V55    -0.09122737985348593
#>     Attrib V56    0.6110339059044166
#>     Attrib V57    0.16790667532439552
#>     Attrib V58    0.4454769153683482
#>     Attrib V59    0.6282222543417265
#>     Attrib V6    0.014986505529403922
#>     Attrib V60    0.3839957841578326
#>     Attrib V7    -0.3028300583324336
#>     Attrib V8    -0.2825097949265905
#>     Attrib V9    -0.0404669683143383
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.16171257110483678
#>     Attrib V1    0.5203727750772014
#>     Attrib V10    -0.5672802483599394
#>     Attrib V11    -0.0520097824935251
#>     Attrib V12    0.005645661176868385
#>     Attrib V13    -0.2803899729512537
#>     Attrib V14    -0.07331208092227741
#>     Attrib V15    0.3021628114971444
#>     Attrib V16    0.1485973909278307
#>     Attrib V17    0.159184027537669
#>     Attrib V18    -0.09043154452200418
#>     Attrib V19    0.07070747852127093
#>     Attrib V2    0.2607175225678208
#>     Attrib V20    0.14375421624867976
#>     Attrib V21    0.4494873623895094
#>     Attrib V22    0.23597295854704206
#>     Attrib V23    -0.29925761205249257
#>     Attrib V24    -0.007521870238379522
#>     Attrib V25    -0.39337022162438107
#>     Attrib V26    -0.6582499911802323
#>     Attrib V27    -0.7053602911916851
#>     Attrib V28    -0.42557555779800343
#>     Attrib V29    -0.1284113824670666
#>     Attrib V3    0.15456321358621858
#>     Attrib V30    0.2079672948994345
#>     Attrib V31    -0.5567170523022118
#>     Attrib V32    0.015162287178680331
#>     Attrib V33    0.31444629028158494
#>     Attrib V34    -0.15906311483180627
#>     Attrib V35    -0.35362292326831923
#>     Attrib V36    -0.5556369289587387
#>     Attrib V37    -0.5203146358526247
#>     Attrib V38    0.060576935779528
#>     Attrib V39    0.2769401158671498
#>     Attrib V4    -0.04925686033423808
#>     Attrib V40    -0.16958563049393044
#>     Attrib V41    -0.1635023045354618
#>     Attrib V42    0.35938323698418945
#>     Attrib V43    0.16629926589803412
#>     Attrib V44    0.19423486094619513
#>     Attrib V45    0.09252464130936411
#>     Attrib V46    0.17304501582158915
#>     Attrib V47    -0.12486168611016596
#>     Attrib V48    0.19416212036293426
#>     Attrib V49    0.3198034379706202
#>     Attrib V5    0.086678222365976
#>     Attrib V50    -0.5097436418005332
#>     Attrib V51    0.07597009232502001
#>     Attrib V52    0.02190055639034411
#>     Attrib V53    0.2782747263075785
#>     Attrib V54    0.3338650727645309
#>     Attrib V55    -0.08823511955913958
#>     Attrib V56    0.47297775468815545
#>     Attrib V57    0.2040103837792486
#>     Attrib V58    0.2970505411130172
#>     Attrib V59    0.47877349469166336
#>     Attrib V6    -0.024915509314474935
#>     Attrib V60    0.3295744121988935
#>     Attrib V7    -0.18101350733208565
#>     Attrib V8    -0.2481191699246356
#>     Attrib V9    0.039952854403633296
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.3252152013730227
#>     Attrib V1    -0.37140189016143177
#>     Attrib V10    0.15251381561997768
#>     Attrib V11    -0.3156429405240088
#>     Attrib V12    -0.3956097211435703
#>     Attrib V13    0.13734671829588152
#>     Attrib V14    0.5140277478878241
#>     Attrib V15    0.2162351596472371
#>     Attrib V16    0.263886997671614
#>     Attrib V17    0.27656776360581925
#>     Attrib V18    0.39646371063918834
#>     Attrib V19    -0.23675468508175412
#>     Attrib V2    -0.14699375153638936
#>     Attrib V20    -0.06509677694375149
#>     Attrib V21    -0.16226460141813415
#>     Attrib V22    -0.14221789810726834
#>     Attrib V23    0.3885532381954499
#>     Attrib V24    -0.2679690782194278
#>     Attrib V25    0.04182701603136569
#>     Attrib V26    0.020805581551992806
#>     Attrib V27    0.13317865255160696
#>     Attrib V28    0.07126717939546733
#>     Attrib V29    0.2333826922831462
#>     Attrib V3    0.058289362494497204
#>     Attrib V30    0.02768698247161673
#>     Attrib V31    0.8396726546359026
#>     Attrib V32    0.035420437958938525
#>     Attrib V33    -0.2930456662420579
#>     Attrib V34    -0.05228819744649328
#>     Attrib V35    0.19769299416774205
#>     Attrib V36    0.7657434687391912
#>     Attrib V37    0.8463335195654316
#>     Attrib V38    0.02501882073929999
#>     Attrib V39    -0.16120415943222896
#>     Attrib V4    0.14992807126253666
#>     Attrib V40    0.435035787497822
#>     Attrib V41    0.22904791559110593
#>     Attrib V42    0.05271516752534878
#>     Attrib V43    0.15796482243096022
#>     Attrib V44    -0.11548568086267508
#>     Attrib V45    -0.19322481052206225
#>     Attrib V46    -0.46349058871833515
#>     Attrib V47    -0.06426974863736301
#>     Attrib V48    -0.41063922911467243
#>     Attrib V49    -0.49643589461589527
#>     Attrib V5    0.024128616507132848
#>     Attrib V50    0.871641806919809
#>     Attrib V51    -0.21054547746411026
#>     Attrib V52    -0.16638876162642785
#>     Attrib V53    -0.08184415803099815
#>     Attrib V54    -0.13317509835747604
#>     Attrib V55    0.35603282973689604
#>     Attrib V56    -0.18882072616098633
#>     Attrib V57    0.17569101405241894
#>     Attrib V58    -0.2690520251175102
#>     Attrib V59    -0.20668666005334313
#>     Attrib V6    -0.08411434386379858
#>     Attrib V60    -0.21524870128847737
#>     Attrib V7    0.3323792979498943
#>     Attrib V8    0.43313236864500104
#>     Attrib V9    -0.3048957185881245
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.3356896261413941
#>     Attrib V1    0.6639709566315851
#>     Attrib V10    -0.7246534139579603
#>     Attrib V11    -0.04959960356330923
#>     Attrib V12    0.08569277863457817
#>     Attrib V13    -0.3841971527207443
#>     Attrib V14    -0.17123278357789154
#>     Attrib V15    0.3042231516581483
#>     Attrib V16    0.23429758395786102
#>     Attrib V17    0.13254501755624468
#>     Attrib V18    -0.08564394794294752
#>     Attrib V19    0.10769860736304532
#>     Attrib V2    0.323052606411735
#>     Attrib V20    0.19705356753799053
#>     Attrib V21    0.5075846146467087
#>     Attrib V22    0.308286791991596
#>     Attrib V23    -0.3646194445079801
#>     Attrib V24    0.08628992045292865
#>     Attrib V25    -0.32913503715276804
#>     Attrib V26    -0.7456837003680071
#>     Attrib V27    -0.7652313771690329
#>     Attrib V28    -0.6154542354651196
#>     Attrib V29    -0.2607799584774176
#>     Attrib V3    0.1125504294425594
#>     Attrib V30    0.222993490781875
#>     Attrib V31    -0.6749089601835324
#>     Attrib V32    0.08597627296323108
#>     Attrib V33    0.41466021524846247
#>     Attrib V34    -0.18083336719380172
#>     Attrib V35    -0.43612335784147693
#>     Attrib V36    -0.7131694209972416
#>     Attrib V37    -0.6426759096476465
#>     Attrib V38    0.09979098681150657
#>     Attrib V39    0.3213438971823515
#>     Attrib V4    -0.05211443612775948
#>     Attrib V40    -0.2169466262191735
#>     Attrib V41    -0.0989076463480659
#>     Attrib V42    0.47526400957163645
#>     Attrib V43    0.2011580900005015
#>     Attrib V44    0.13236038044433712
#>     Attrib V45    0.006130124633433638
#>     Attrib V46    0.24306595362211555
#>     Attrib V47    -0.1385257237639172
#>     Attrib V48    0.2077455582045362
#>     Attrib V49    0.3832190838182137
#>     Attrib V5    0.04435943534405189
#>     Attrib V50    -0.6200434772364714
#>     Attrib V51    0.04800965938539645
#>     Attrib V52    9.783236476011402E-4
#>     Attrib V53    0.33660417299107687
#>     Attrib V54    0.5112867527905288
#>     Attrib V55    -0.14527967817895102
#>     Attrib V56    0.5499637500966708
#>     Attrib V57    0.22450040920529715
#>     Attrib V58    0.38094205296350847
#>     Attrib V59    0.6337044892150396
#>     Attrib V6    0.046241410076498145
#>     Attrib V60    0.4717667432683
#>     Attrib V7    -0.16927696020440655
#>     Attrib V8    -0.25356688604027344
#>     Attrib V9    0.028732729885083113
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5601555930403513
#>     Attrib V1    0.5794722544837589
#>     Attrib V10    0.4485757241058883
#>     Attrib V11    0.7269956096740661
#>     Attrib V12    0.6431828908036447
#>     Attrib V13    -0.07550455445207095
#>     Attrib V14    -0.21066765800271758
#>     Attrib V15    -0.42131098797426253
#>     Attrib V16    -0.519876661124083
#>     Attrib V17    -0.45935899980694267
#>     Attrib V18    -0.20864151832664668
#>     Attrib V19    0.20871620422242698
#>     Attrib V2    0.26596022526052204
#>     Attrib V20    -0.40519396181132045
#>     Attrib V21    0.049765842073697796
#>     Attrib V22    0.21370690856306324
#>     Attrib V23    -0.4129630773633122
#>     Attrib V24    -0.10270124669863977
#>     Attrib V25    0.041928948376173766
#>     Attrib V26    0.7782589818934372
#>     Attrib V27    0.6894827152242033
#>     Attrib V28    1.0577830853280068
#>     Attrib V29    1.240360592084904
#>     Attrib V3    0.018744023746530922
#>     Attrib V30    0.825456732789782
#>     Attrib V31    -0.670641726650802
#>     Attrib V32    -0.21930043600117818
#>     Attrib V33    0.025801318421366893
#>     Attrib V34    0.12972386942269012
#>     Attrib V35    0.46907468028190935
#>     Attrib V36    -0.15524319571102213
#>     Attrib V37    -0.3759612789869539
#>     Attrib V38    -0.07502425680218433
#>     Attrib V39    0.18867268162545364
#>     Attrib V4    0.10222135003981002
#>     Attrib V40    -0.14325728547004096
#>     Attrib V41    0.4358083608464539
#>     Attrib V42    0.024384651784413642
#>     Attrib V43    -0.42722281950099933
#>     Attrib V44    0.36018530137922633
#>     Attrib V45    0.3723249956552465
#>     Attrib V46    0.6396731045895718
#>     Attrib V47    0.2894635632076576
#>     Attrib V48    0.6448166416695674
#>     Attrib V49    0.7302781040838703
#>     Attrib V5    0.20986376922902028
#>     Attrib V50    -0.9153448833088447
#>     Attrib V51    0.5910540754500104
#>     Attrib V52    0.47038735658807457
#>     Attrib V53    -0.04580314218009171
#>     Attrib V54    -0.11404975291839084
#>     Attrib V55    -1.0336389969001523
#>     Attrib V56    -0.11077270048778705
#>     Attrib V57    -0.5540040922250055
#>     Attrib V58    0.1399167830377037
#>     Attrib V59    0.39408431682498407
#>     Attrib V6    0.64615471579927
#>     Attrib V60    0.7093169956908278
#>     Attrib V7    -0.06480852096443072
#>     Attrib V8    -0.27621274540057134
#>     Attrib V9    0.6877051468997141
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.2508582831944134
#>     Attrib V1    0.4078835781398341
#>     Attrib V10    -0.3503516732872942
#>     Attrib V11    0.05244596716454384
#>     Attrib V12    0.05111238556695071
#>     Attrib V13    -0.24636030163950762
#>     Attrib V14    -0.1572106753834371
#>     Attrib V15    0.11898091456952471
#>     Attrib V16    0.10404065195753665
#>     Attrib V17    0.07189973588775973
#>     Attrib V18    -0.08717320266363857
#>     Attrib V19    0.1100090223075099
#>     Attrib V2    0.19844902998791406
#>     Attrib V20    0.0021470701985775694
#>     Attrib V21    0.2527672603204515
#>     Attrib V22    0.1237575140546147
#>     Attrib V23    -0.2986761226846173
#>     Attrib V24    0.10349777004285442
#>     Attrib V25    -0.1366489822673819
#>     Attrib V26    -0.2955656291619398
#>     Attrib V27    -0.38484058783318015
#>     Attrib V28    -0.2806505076255653
#>     Attrib V29    -0.12154798846748459
#>     Attrib V3    0.04985547582963558
#>     Attrib V30    0.19945141727196258
#>     Attrib V31    -0.4765458632892967
#>     Attrib V32    -0.05293791619525141
#>     Attrib V33    0.21823263139710433
#>     Attrib V34    -0.04689474693221704
#>     Attrib V35    -0.09388307248739541
#>     Attrib V36    -0.25979132273946753
#>     Attrib V37    -0.40660821020194415
#>     Attrib V38    0.12395859727770314
#>     Attrib V39    0.17216065474405298
#>     Attrib V4    0.039038386151464544
#>     Attrib V40    -0.19746470897191484
#>     Attrib V41    -0.12151823746997036
#>     Attrib V42    0.10994211825444125
#>     Attrib V43    0.10822373800511649
#>     Attrib V44    0.28345744487506214
#>     Attrib V45    0.16193492755680136
#>     Attrib V46    0.23641197050804125
#>     Attrib V47    -0.018738634518358672
#>     Attrib V48    0.3001939260621103
#>     Attrib V49    0.33650414455383654
#>     Attrib V5    0.06568837185998765
#>     Attrib V50    -0.44842334140184636
#>     Attrib V51    0.054172895429703834
#>     Attrib V52    0.041467081432512674
#>     Attrib V53    0.25494941876222665
#>     Attrib V54    0.36500832505105407
#>     Attrib V55    -0.1188702584460253
#>     Attrib V56    0.3022105093778698
#>     Attrib V57    0.20992912669313699
#>     Attrib V58    0.19540307964299944
#>     Attrib V59    0.4775480360252911
#>     Attrib V6    0.01269968046788026
#>     Attrib V60    0.41036349494940433
#>     Attrib V7    -0.07149160628159489
#>     Attrib V8    -0.22351042239374427
#>     Attrib V9    0.0721904941750786
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.12537366582518897
#>     Attrib V1    -0.2213284802016012
#>     Attrib V10    0.8563930276182598
#>     Attrib V11    1.0580796544270006
#>     Attrib V12    1.4983515192507424
#>     Attrib V13    0.44191140754467517
#>     Attrib V14    -0.8886836513920154
#>     Attrib V15    -1.1059372538841343
#>     Attrib V16    -1.0260598199641864
#>     Attrib V17    -0.5028430180767874
#>     Attrib V18    0.2854292430052824
#>     Attrib V19    1.124448263054222
#>     Attrib V2    0.15679134474779288
#>     Attrib V20    -0.6582181871486696
#>     Attrib V21    -0.5866022678702345
#>     Attrib V22    0.424535815938895
#>     Attrib V23    0.29374314175610566
#>     Attrib V24    1.1270997939994638
#>     Attrib V25    1.578922170832132
#>     Attrib V26    1.947828811370185
#>     Attrib V27    1.13680167337309
#>     Attrib V28    0.7797106573753452
#>     Attrib V29    0.1409943334114384
#>     Attrib V3    -0.135014188837002
#>     Attrib V30    0.472569827084182
#>     Attrib V31    -0.5560490918826159
#>     Attrib V32    -0.18123255239123304
#>     Attrib V33    0.2089762340011296
#>     Attrib V34    0.6653293352860201
#>     Attrib V35    0.8918619482882989
#>     Attrib V36    -0.3763896712051957
#>     Attrib V37    -1.0505941282512674
#>     Attrib V38    -0.20986321534115351
#>     Attrib V39    0.32262143378527147
#>     Attrib V4    -0.041225167295962116
#>     Attrib V40    0.04455700750257203
#>     Attrib V41    0.8492872063160558
#>     Attrib V42    -0.027961177828886977
#>     Attrib V43    -0.6575733006451445
#>     Attrib V44    0.040900186476042565
#>     Attrib V45    0.17946601740503437
#>     Attrib V46    0.7140620970741662
#>     Attrib V47    0.6678531897831466
#>     Attrib V48    1.078948880579477
#>     Attrib V49    1.2746746943312557
#>     Attrib V5    0.21544882346124777
#>     Attrib V50    -1.020390418237036
#>     Attrib V51    1.5003101875323754
#>     Attrib V52    1.1433994283293782
#>     Attrib V53    0.277277375783384
#>     Attrib V54    0.4264007703294592
#>     Attrib V55    -1.2699745760502013
#>     Attrib V56    -0.09184579725728824
#>     Attrib V57    -1.207585827224662
#>     Attrib V58    0.04960732173980136
#>     Attrib V59    0.22330868919740107
#>     Attrib V6    1.0494968023867188
#>     Attrib V60    1.044195797225903
#>     Attrib V7    0.001489630583225992
#>     Attrib V8    -0.5836773106628002
#>     Attrib V9    0.9669130144208906
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.21951910659440482
#>     Attrib V1    -0.08924349382765365
#>     Attrib V10    0.18654128081339874
#>     Attrib V11    -0.008133286791280265
#>     Attrib V12    0.03155691980138621
#>     Attrib V13    0.16764365871499728
#>     Attrib V14    0.24083754635106994
#>     Attrib V15    0.08536542463702981
#>     Attrib V16    0.22336199038828217
#>     Attrib V17    0.12756963362142232
#>     Attrib V18    0.2696052971460449
#>     Attrib V19    0.05403376839842538
#>     Attrib V2    -0.025450950706451793
#>     Attrib V20    0.08231807424587666
#>     Attrib V21    0.027497861314608876
#>     Attrib V22    0.03358637320875054
#>     Attrib V23    0.21568575279731023
#>     Attrib V24    -0.16334146845108471
#>     Attrib V25    -0.13805163688246097
#>     Attrib V26    -0.12361612173042541
#>     Attrib V27    -0.09401444462100005
#>     Attrib V28    -0.10358726530922938
#>     Attrib V29    -0.10262488921418376
#>     Attrib V3    0.03584586262304543
#>     Attrib V30    -0.0885015447796568
#>     Attrib V31    0.306746011393751
#>     Attrib V32    0.0732973726049081
#>     Attrib V33    0.05193089879471265
#>     Attrib V34    0.1334651305858939
#>     Attrib V35    0.14049077003663077
#>     Attrib V36    0.27657021838483825
#>     Attrib V37    0.347955393272374
#>     Attrib V38    0.09410776386223153
#>     Attrib V39    0.0485859194378518
#>     Attrib V4    0.12782534926636926
#>     Attrib V40    0.37436729658658746
#>     Attrib V41    0.33988711604136157
#>     Attrib V42    0.09866885668999846
#>     Attrib V43    0.07118027524681213
#>     Attrib V44    -0.06438594557449724
#>     Attrib V45    -0.0720882139536641
#>     Attrib V46    -0.13511266950320333
#>     Attrib V47    0.010006869705938434
#>     Attrib V48    -0.15761546535421425
#>     Attrib V49    -0.1515097392277305
#>     Attrib V5    0.08514746455140645
#>     Attrib V50    0.35028608811918643
#>     Attrib V51    0.010830256006507144
#>     Attrib V52    0.035436529735896505
#>     Attrib V53    0.01744106118135094
#>     Attrib V54    -0.1106406861776406
#>     Attrib V55    0.08723951773919975
#>     Attrib V56    -0.09839001817523617
#>     Attrib V57    0.08662857319992501
#>     Attrib V58    -0.002696706923717606
#>     Attrib V59    -0.08318491217706926
#>     Attrib V6    0.20900327810693786
#>     Attrib V60    -0.08572387030539504
#>     Attrib V7    0.22547329200828348
#>     Attrib V8    0.25933381709933223
#>     Attrib V9    -0.04023170573333353
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.16306887896620534
#>     Attrib V1    0.4235431201011279
#>     Attrib V10    -0.5211449178458141
#>     Attrib V11    0.002928238679996326
#>     Attrib V12    0.07701036451260203
#>     Attrib V13    -0.3718830312004786
#>     Attrib V14    -0.3159875140802206
#>     Attrib V15    0.14154907553143078
#>     Attrib V16    0.14676411821230953
#>     Attrib V17    0.2241825536894523
#>     Attrib V18    -0.03326849822554408
#>     Attrib V19    0.12381357062606345
#>     Attrib V2    0.16258606774665596
#>     Attrib V20    0.1739248135261638
#>     Attrib V21    0.3410346378796269
#>     Attrib V22    0.2586939263535545
#>     Attrib V23    -0.21895568061914064
#>     Attrib V24    0.20451111500849262
#>     Attrib V25    -0.1028313936320532
#>     Attrib V26    -0.5737479504613416
#>     Attrib V27    -0.67648184929252
#>     Attrib V28    -0.5638052373593817
#>     Attrib V29    -0.47053657676977056
#>     Attrib V3    0.00833794000769134
#>     Attrib V30    0.130235171294516
#>     Attrib V31    -0.5929676513148683
#>     Attrib V32    0.030359671452697128
#>     Attrib V33    0.3885187752418612
#>     Attrib V34    0.010978816346100144
#>     Attrib V35    -0.1931353176145074
#>     Attrib V36    -0.480800297438314
#>     Attrib V37    -0.5802011087345288
#>     Attrib V38    0.1502318690720338
#>     Attrib V39    0.2020236920029664
#>     Attrib V4    -0.12668981836294457
#>     Attrib V40    -0.24289792974942706
#>     Attrib V41    -0.2528499422529829
#>     Attrib V42    0.27116969719311257
#>     Attrib V43    0.1935489412040263
#>     Attrib V44    0.24451435059039728
#>     Attrib V45    0.1355204074296973
#>     Attrib V46    0.2248843073357656
#>     Attrib V47    -0.0334829703619002
#>     Attrib V48    0.2808789607657085
#>     Attrib V49    0.31222757868225043
#>     Attrib V5    0.040616911334476404
#>     Attrib V50    -0.5071006891324843
#>     Attrib V51    0.12499259245875323
#>     Attrib V52    -0.030265043300205817
#>     Attrib V53    0.22060051401413827
#>     Attrib V54    0.5395585791904249
#>     Attrib V55    -0.07143861970556166
#>     Attrib V56    0.5044367375648188
#>     Attrib V57    0.2140615183048613
#>     Attrib V58    0.28724786387660495
#>     Attrib V59    0.40215250656902934
#>     Attrib V6    -0.011001709989341532
#>     Attrib V60    0.36314521976187086
#>     Attrib V7    -0.16641072942724633
#>     Attrib V8    -0.2516350930681818
#>     Attrib V9    0.08624463562310777
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.2219490576327658
#>     Attrib V1    0.4272908529994397
#>     Attrib V10    -0.5412347316572583
#>     Attrib V11    -0.015490174887712751
#>     Attrib V12    -0.007913618791578309
#>     Attrib V13    -0.2536161589850147
#>     Attrib V14    -0.03072003138617581
#>     Attrib V15    0.22462402391883618
#>     Attrib V16    0.1623501159593168
#>     Attrib V17    0.1132617553760265
#>     Attrib V18    -0.07716431849734486
#>     Attrib V19    0.08142406842688629
#>     Attrib V2    0.2662025754460543
#>     Attrib V20    0.04103427667737652
#>     Attrib V21    0.24416358943929803
#>     Attrib V22    0.14549755543399925
#>     Attrib V23    -0.2933124103091336
#>     Attrib V24    -0.007571861361189085
#>     Attrib V25    -0.29440878236684165
#>     Attrib V26    -0.5265342705400647
#>     Attrib V27    -0.47213651172875537
#>     Attrib V28    -0.3971529163447708
#>     Attrib V29    -0.1451474424283053
#>     Attrib V3    0.055505355159644346
#>     Attrib V30    0.11058209787697218
#>     Attrib V31    -0.5010885767648601
#>     Attrib V32    -0.06270285016061516
#>     Attrib V33    0.21712516422473777
#>     Attrib V34    -0.10724731822974026
#>     Attrib V35    -0.2273811636768238
#>     Attrib V36    -0.38227607563042915
#>     Attrib V37    -0.4059069523411011
#>     Attrib V38    0.10858987022808624
#>     Attrib V39    0.18699165190037628
#>     Attrib V4    0.019716353457147735
#>     Attrib V40    -0.09584779280108367
#>     Attrib V41    -0.11208481836211925
#>     Attrib V42    0.2238273174962725
#>     Attrib V43    0.19429320778328205
#>     Attrib V44    0.11127272853630218
#>     Attrib V45    0.06268069610681727
#>     Attrib V46    0.2115919952992134
#>     Attrib V47    -0.08542117154227231
#>     Attrib V48    0.20050560538006515
#>     Attrib V49    0.1971309042779702
#>     Attrib V5    0.06798073561839976
#>     Attrib V50    -0.4002025213040132
#>     Attrib V51    0.041477494861541224
#>     Attrib V52    0.08510867079190387
#>     Attrib V53    0.3254053585587901
#>     Attrib V54    0.4001881447408935
#>     Attrib V55    -0.0017837062620664724
#>     Attrib V56    0.4273519518940293
#>     Attrib V57    0.3004796758695078
#>     Attrib V58    0.2994099102796758
#>     Attrib V59    0.5201179840273467
#>     Attrib V6    -0.014852748761043545
#>     Attrib V60    0.3488249041210534
#>     Attrib V7    -0.07423010223919738
#>     Attrib V8    -0.14054698682077466
#>     Attrib V9    -0.021051853629672407
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.19713046791045796
#>     Attrib V1    0.545672947807629
#>     Attrib V10    -0.687174177926845
#>     Attrib V11    0.004833470945873855
#>     Attrib V12    0.09318675202789947
#>     Attrib V13    -0.2818260895422932
#>     Attrib V14    -0.25460119310349044
#>     Attrib V15    0.20742779415591858
#>     Attrib V16    0.12120163146233977
#>     Attrib V17    0.1904333463491816
#>     Attrib V18    -0.06719669523189753
#>     Attrib V19    0.21396539157476746
#>     Attrib V2    0.23554625172098143
#>     Attrib V20    0.2381130587419807
#>     Attrib V21    0.5012175926117332
#>     Attrib V22    0.4157279207249866
#>     Attrib V23    -0.1722105882428347
#>     Attrib V24    0.2688018804536091
#>     Attrib V25    -0.1147203434335478
#>     Attrib V26    -0.6673197081603794
#>     Attrib V27    -0.751887497545243
#>     Attrib V28    -0.617856288965223
#>     Attrib V29    -0.3318469301094078
#>     Attrib V3    0.1313020149537489
#>     Attrib V30    0.23599314059989843
#>     Attrib V31    -0.7104527126002824
#>     Attrib V32    0.08131605426455542
#>     Attrib V33    0.4870476873261468
#>     Attrib V34    -0.054378418591557384
#>     Attrib V35    -0.4219187656654746
#>     Attrib V36    -0.7050566298763121
#>     Attrib V37    -0.6887704509643747
#>     Attrib V38    0.1476684341187187
#>     Attrib V39    0.4129055714219341
#>     Attrib V4    -0.0899829011901209
#>     Attrib V40    -0.18268379643158023
#>     Attrib V41    -0.11870064675796795
#>     Attrib V42    0.49649157831823426
#>     Attrib V43    0.18246238674567922
#>     Attrib V44    0.13228715514605335
#>     Attrib V45    -0.039195705206521256
#>     Attrib V46    0.28682390049839684
#>     Attrib V47    -0.05099619496197006
#>     Attrib V48    0.2749509065443313
#>     Attrib V49    0.4840431757317375
#>     Attrib V5    0.10745360806724012
#>     Attrib V50    -0.7249495024449972
#>     Attrib V51    0.10633100945499167
#>     Attrib V52    -0.006457871155524873
#>     Attrib V53    0.3087432276668279
#>     Attrib V54    0.6201432053079033
#>     Attrib V55    -0.17404050749325914
#>     Attrib V56    0.5691789075284344
#>     Attrib V57    0.13971185998063185
#>     Attrib V58    0.32124550597596474
#>     Attrib V59    0.6369661393229157
#>     Attrib V6    0.03311016258557265
#>     Attrib V60    0.5247154606967611
#>     Attrib V7    -0.18923863816460415
#>     Attrib V8    -0.3774590042181077
#>     Attrib V9    0.053043928895680846
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.23084827691254164
#>     Attrib V1    0.6497476328115275
#>     Attrib V10    -0.587785537977322
#>     Attrib V11    0.0236920206711439
#>     Attrib V12    0.10565623966316694
#>     Attrib V13    -0.33693347606142887
#>     Attrib V14    -0.20686082977604897
#>     Attrib V15    0.2985219919624529
#>     Attrib V16    0.1323913201535523
#>     Attrib V17    0.16933200385067237
#>     Attrib V18    -0.11729647014194637
#>     Attrib V19    -0.04344971791876226
#>     Attrib V2    0.3207207087327639
#>     Attrib V20    0.06513264914827628
#>     Attrib V21    0.3483255628662824
#>     Attrib V22    0.1974353678366579
#>     Attrib V23    -0.3471763612326496
#>     Attrib V24    0.02344756542814618
#>     Attrib V25    -0.27732228949873033
#>     Attrib V26    -0.6247080327281811
#>     Attrib V27    -0.7629487127316953
#>     Attrib V28    -0.7011131842247943
#>     Attrib V29    -0.4664442531139062
#>     Attrib V3    0.03483746691769549
#>     Attrib V30    0.10936075326527132
#>     Attrib V31    -0.5455209527329106
#>     Attrib V32    0.05633759639236729
#>     Attrib V33    0.34378367230019896
#>     Attrib V34    -0.13665471706641327
#>     Attrib V35    -0.29630825526321863
#>     Attrib V36    -0.5371868019541414
#>     Attrib V37    -0.49694457870726366
#>     Attrib V38    0.052827799397900346
#>     Attrib V39    0.23680807015248204
#>     Attrib V4    -0.07337289045520363
#>     Attrib V40    -0.20892203191173553
#>     Attrib V41    -0.2448206118810868
#>     Attrib V42    0.21222068819421921
#>     Attrib V43    0.15575851562281462
#>     Attrib V44    0.22140321362432944
#>     Attrib V45    -0.019279104859840173
#>     Attrib V46    0.1934335931195816
#>     Attrib V47    -0.1366950035868576
#>     Attrib V48    0.26382548132702216
#>     Attrib V49    0.33505225566674446
#>     Attrib V5    -0.023132951413656136
#>     Attrib V50    -0.5059233344413417
#>     Attrib V51    -0.02069105952018798
#>     Attrib V52    -0.020024361080287986
#>     Attrib V53    0.21387988635055363
#>     Attrib V54    0.5183301796909355
#>     Attrib V55    -0.0026743755721138607
#>     Attrib V56    0.526556985671694
#>     Attrib V57    0.3126885291206984
#>     Attrib V58    0.3347834348258892
#>     Attrib V59    0.5201769057071756
#>     Attrib V6    -0.0019757711978125488
#>     Attrib V60    0.43522471024696546
#>     Attrib V7    -0.06522776436038571
#>     Attrib V8    -0.2890053379184782
#>     Attrib V9    -0.009098834206782369
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.46915060825511556
#>     Attrib V1    -0.749942727547895
#>     Attrib V10    -0.4466211291319455
#>     Attrib V11    -0.961119558598637
#>     Attrib V12    -0.5445481732212137
#>     Attrib V13    0.25690348035624266
#>     Attrib V14    1.0012120358422685
#>     Attrib V15    0.5715311977650969
#>     Attrib V16    0.5245381260050593
#>     Attrib V17    0.23763666972541855
#>     Attrib V18    0.2608130465285133
#>     Attrib V19    -0.3437290715536704
#>     Attrib V2    -0.43134367736627177
#>     Attrib V20    0.2863094599396246
#>     Attrib V21    -0.3367971501204135
#>     Attrib V22    -0.7206315793368807
#>     Attrib V23    0.22092610174175398
#>     Attrib V24    -0.15724893562711625
#>     Attrib V25    0.15274300164860832
#>     Attrib V26    -0.012458109171616197
#>     Attrib V27    0.2647945593416753
#>     Attrib V28    -0.10433822998227309
#>     Attrib V29    -0.24923484550641195
#>     Attrib V3    0.10149693206678301
#>     Attrib V30    -0.8798379816001586
#>     Attrib V31    0.9330767412315615
#>     Attrib V32    -0.41577712366638125
#>     Attrib V33    -0.9745846472963869
#>     Attrib V34    -0.39167723466870397
#>     Attrib V35    -0.2908119155751269
#>     Attrib V36    0.6653015925194996
#>     Attrib V37    1.0169500142610948
#>     Attrib V38    0.14630875706847168
#>     Attrib V39    -0.015788224995079994
#>     Attrib V4    0.12707911917726508
#>     Attrib V40    0.8029837256054865
#>     Attrib V41    -3.009767722593413E-4
#>     Attrib V42    -0.16454608337812268
#>     Attrib V43    0.2698174571480639
#>     Attrib V44    -0.5995980852315089
#>     Attrib V45    -0.49845121682952054
#>     Attrib V46    -0.8053698384452107
#>     Attrib V47    -0.3239063359681394
#>     Attrib V48    -0.8012579576248263
#>     Attrib V49    -1.030564964732148
#>     Attrib V5    -0.10013084837945932
#>     Attrib V50    1.6598660681568393
#>     Attrib V51    -0.7902891640383717
#>     Attrib V52    -0.4826651018003115
#>     Attrib V53    0.5171742668479065
#>     Attrib V54    0.45396858747369995
#>     Attrib V55    1.522124599543216
#>     Attrib V56    -0.14834480860076074
#>     Attrib V57    0.9983715621833559
#>     Attrib V58    -0.3151576505955724
#>     Attrib V59    -0.00989701946231513
#>     Attrib V6    -0.45146281497145835
#>     Attrib V60    -0.3744260691683076
#>     Attrib V7    0.5186191651039627
#>     Attrib V8    0.5913045320106193
#>     Attrib V9    -1.122155277506453
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.3517274307690674
#>     Attrib V1    -0.40145526628829586
#>     Attrib V10    0.0843998456012711
#>     Attrib V11    -0.47943469144747414
#>     Attrib V12    -0.4924525657480822
#>     Attrib V13    0.12918047848665404
#>     Attrib V14    0.4888910301166526
#>     Attrib V15    0.09029598660869076
#>     Attrib V16    0.14723333502139718
#>     Attrib V17    0.06137941448104273
#>     Attrib V18    0.20431618746141278
#>     Attrib V19    -0.16813470097467495
#>     Attrib V2    -0.2367185462776409
#>     Attrib V20    0.1302549370463488
#>     Attrib V21    -0.1571396485578098
#>     Attrib V22    -0.25269327380110274
#>     Attrib V23    0.3254107565786074
#>     Attrib V24    -0.12984726706129623
#>     Attrib V25    0.09279229896907612
#>     Attrib V26    0.1806882498518536
#>     Attrib V27    0.44912585773348845
#>     Attrib V28    0.37748028231472636
#>     Attrib V29    0.3743178581856886
#>     Attrib V3    0.1219156771241168
#>     Attrib V30    -0.1676589207549165
#>     Attrib V31    0.5617889510367707
#>     Attrib V32    -0.35795141000440056
#>     Attrib V33    -0.6788332625514722
#>     Attrib V34    -0.0783941697169109
#>     Attrib V35    0.28537985844582714
#>     Attrib V36    0.8584259117311154
#>     Attrib V37    1.1058901079892032
#>     Attrib V38    0.2596910537922721
#>     Attrib V39    -0.09059622564744178
#>     Attrib V4    0.1762647813453994
#>     Attrib V40    0.29155411740440423
#>     Attrib V41    0.11373261350492347
#>     Attrib V42    -0.08894633570842331
#>     Attrib V43    0.13753866274727256
#>     Attrib V44    -0.08088091945618764
#>     Attrib V45    -0.02806606954470003
#>     Attrib V46    -0.35475206997702907
#>     Attrib V47    -0.07532455216552562
#>     Attrib V48    -0.5459229449707381
#>     Attrib V49    -0.6231898768527643
#>     Attrib V5    -0.021316346901405103
#>     Attrib V50    0.9876578991215468
#>     Attrib V51    -0.2862320057737263
#>     Attrib V52    -0.16163141975361148
#>     Attrib V53    0.1559064933722206
#>     Attrib V54    -0.14677638506563434
#>     Attrib V55    0.4081146117948329
#>     Attrib V56    -0.2578192265548367
#>     Attrib V57    0.2202825459382389
#>     Attrib V58    -0.30831664583231144
#>     Attrib V59    -0.28717732584206723
#>     Attrib V6    -0.21350220144242538
#>     Attrib V60    -0.2890019208521103
#>     Attrib V7    0.17074060614742792
#>     Attrib V8    0.17962365396332416
#>     Attrib V9    -0.43044235101214184
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.3042297205075316
#>     Attrib V1    0.7000187269647967
#>     Attrib V10    -0.6550213666860696
#>     Attrib V11    -0.032732147347556924
#>     Attrib V12    -0.03994175154312739
#>     Attrib V13    -0.43030768788649865
#>     Attrib V14    -0.18710896906828067
#>     Attrib V15    0.3875282618654695
#>     Attrib V16    0.24729249976234619
#>     Attrib V17    0.21104883646055164
#>     Attrib V18    -0.11756753681267386
#>     Attrib V19    0.08847428891737966
#>     Attrib V2    0.3955916189547176
#>     Attrib V20    0.1759914058891411
#>     Attrib V21    0.5158528964040748
#>     Attrib V22    0.38901985015497126
#>     Attrib V23    -0.40507132941763774
#>     Attrib V24    0.005632173219171067
#>     Attrib V25    -0.4976775546050213
#>     Attrib V26    -0.8514515013305036
#>     Attrib V27    -0.8104451973965734
#>     Attrib V28    -0.5526049631291607
#>     Attrib V29    -0.2161281174982728
#>     Attrib V3    0.1035459935761412
#>     Attrib V30    0.2685892848909738
#>     Attrib V31    -0.6608448218585349
#>     Attrib V32    0.015071006639904818
#>     Attrib V33    0.40133270362317436
#>     Attrib V34    -0.24864799614602795
#>     Attrib V35    -0.42972201796163684
#>     Attrib V36    -0.6650207861450201
#>     Attrib V37    -0.5941053188835272
#>     Attrib V38    0.18707630632832845
#>     Attrib V39    0.3167234734309703
#>     Attrib V4    -0.056108817276425506
#>     Attrib V40    -0.2972345594450188
#>     Attrib V41    -0.20564852185916319
#>     Attrib V42    0.3717367750194306
#>     Attrib V43    0.2949208208931825
#>     Attrib V44    0.28620221087498454
#>     Attrib V45    0.09559287231201222
#>     Attrib V46    0.21911468678987778
#>     Attrib V47    -0.18265964690925235
#>     Attrib V48    0.2607734780431763
#>     Attrib V49    0.34270317051608595
#>     Attrib V5    0.03547045659578753
#>     Attrib V50    -0.6279788032629461
#>     Attrib V51    0.01608556943660478
#>     Attrib V52    -0.025834552796905705
#>     Attrib V53    0.2565102257245106
#>     Attrib V54    0.46109621978914356
#>     Attrib V55    -0.07090511866279857
#>     Attrib V56    0.570076796388436
#>     Attrib V57    0.28844476577735007
#>     Attrib V58    0.3263464840834842
#>     Attrib V59    0.5391239468319444
#>     Attrib V6    -0.024312541149519605
#>     Attrib V60    0.4191725928008921
#>     Attrib V7    -0.24094688015649435
#>     Attrib V8    -0.2615670325489202
#>     Attrib V9    0.005627227770223421
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.06666085121851732
#>     Attrib V1    0.2485988550988464
#>     Attrib V10    -0.1463428502068808
#>     Attrib V11    0.031218773669544515
#>     Attrib V12    0.03859827857786639
#>     Attrib V13    -0.1206941453452092
#>     Attrib V14    -0.03956720797158858
#>     Attrib V15    0.05102767287775528
#>     Attrib V16    0.027581591203389055
#>     Attrib V17    -0.01635255427475956
#>     Attrib V18    -0.006528923570474117
#>     Attrib V19    -0.027942067899170028
#>     Attrib V2    0.15275437428322022
#>     Attrib V20    -0.040457117135057875
#>     Attrib V21    0.06368968700345884
#>     Attrib V22    -0.012759702264302305
#>     Attrib V23    -0.17762381570153063
#>     Attrib V24    0.030713592574341895
#>     Attrib V25    -0.0036173679445145146
#>     Attrib V26    -0.09651331551824797
#>     Attrib V27    -0.1502077388030311
#>     Attrib V28    -0.1653999411386456
#>     Attrib V29    -0.12113750394225466
#>     Attrib V3    0.14150211547645694
#>     Attrib V30    0.060132068678036096
#>     Attrib V31    -0.21883734476476221
#>     Attrib V32    -0.02796573921627918
#>     Attrib V33    0.11784158485759579
#>     Attrib V34    0.05702045732379294
#>     Attrib V35    0.00969345651093267
#>     Attrib V36    -0.04436961663170216
#>     Attrib V37    -0.19784602142537305
#>     Attrib V38    0.03033142707793897
#>     Attrib V39    0.13234825834957106
#>     Attrib V4    0.03298046302267389
#>     Attrib V40    -0.09303286864832108
#>     Attrib V41    -0.07275037143634919
#>     Attrib V42    0.08946069162684087
#>     Attrib V43    0.06776431108819825
#>     Attrib V44    0.126723779769849
#>     Attrib V45    0.043732841067108036
#>     Attrib V46    0.11097643350622417
#>     Attrib V47    0.06386196169688368
#>     Attrib V48    0.18609060062768581
#>     Attrib V49    0.20798703692333528
#>     Attrib V5    0.0764126583093403
#>     Attrib V50    -0.19554026321178772
#>     Attrib V51    0.1511374672525296
#>     Attrib V52    0.07377262397088817
#>     Attrib V53    0.18790627674128582
#>     Attrib V54    0.1668686402649784
#>     Attrib V55    0.04282363646265169
#>     Attrib V56    0.2780755912901515
#>     Attrib V57    0.1076453744456668
#>     Attrib V58    0.17092369791144849
#>     Attrib V59    0.326213317274225
#>     Attrib V6    -0.007335093859766633
#>     Attrib V60    0.337844054147979
#>     Attrib V7    -0.008001785102985343
#>     Attrib V8    -0.05233972091370484
#>     Attrib V9    0.0781637386104231
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.3748475229888865
#>     Attrib V1    0.020353995102219993
#>     Attrib V10    -0.11219671651289197
#>     Attrib V11    0.4566689854166409
#>     Attrib V12    0.8743116933728271
#>     Attrib V13    0.14726231728904007
#>     Attrib V14    -0.4008528954246385
#>     Attrib V15    -0.4113785801852519
#>     Attrib V16    -0.4769282460424836
#>     Attrib V17    -0.12316433832947586
#>     Attrib V18    0.09096810860821149
#>     Attrib V19    0.5522739961728141
#>     Attrib V2    0.03700127224888578
#>     Attrib V20    -0.21815800163354798
#>     Attrib V21    -0.0882918363228398
#>     Attrib V22    0.4042142269540065
#>     Attrib V23    0.04534831289896618
#>     Attrib V24    0.6318734169208655
#>     Attrib V25    0.6964504838138962
#>     Attrib V26    0.6233124657370706
#>     Attrib V27    0.2705878903673161
#>     Attrib V28    0.28143452834278926
#>     Attrib V29    0.09958223878024305
#>     Attrib V3    -0.11789673970504998
#>     Attrib V30    0.4539171985097402
#>     Attrib V31    -0.505628298443273
#>     Attrib V32    -0.025957982301273778
#>     Attrib V33    0.5891611701290131
#>     Attrib V34    0.5029875157180425
#>     Attrib V35    0.5081463455435278
#>     Attrib V36    -0.2795889290086016
#>     Attrib V37    -0.6943347291236923
#>     Attrib V38    -0.09611126083251519
#>     Attrib V39    0.08498316299744678
#>     Attrib V4    -0.03782091525937195
#>     Attrib V40    -0.1688842940465616
#>     Attrib V41    0.2766190428606668
#>     Attrib V42    0.40978705077451827
#>     Attrib V43    0.10841954261030425
#>     Attrib V44    0.3927109164508993
#>     Attrib V45    0.1905984488937138
#>     Attrib V46    0.40572071356429834
#>     Attrib V47    0.08557358286236019
#>     Attrib V48    0.5225610285464475
#>     Attrib V49    0.7171435528104109
#>     Attrib V5    0.23867174399501445
#>     Attrib V50    -1.1193362338799326
#>     Attrib V51    0.43833375966926935
#>     Attrib V52    0.3618318142451884
#>     Attrib V53    0.25434042378848637
#>     Attrib V54    0.4429351090849434
#>     Attrib V55    -0.7653648297614473
#>     Attrib V56    0.2611576413612634
#>     Attrib V57    -0.5931548091180182
#>     Attrib V58    0.09074047470103568
#>     Attrib V59    0.39197203076792303
#>     Attrib V6    0.43218753308498675
#>     Attrib V60    0.6297471479811826
#>     Attrib V7    -0.3646764125259052
#>     Attrib V8    -0.5762513313959727
#>     Attrib V9    0.37891223671997576
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.5153714700529197
#>     Attrib V1    0.1656480602256323
#>     Attrib V10    0.17150054868483264
#>     Attrib V11    0.3990092767268447
#>     Attrib V12    0.572653121662966
#>     Attrib V13    -0.126992852940247
#>     Attrib V14    -0.4577491465719084
#>     Attrib V15    -0.40759612791330874
#>     Attrib V16    -0.44658065972098687
#>     Attrib V17    -0.09990427081821635
#>     Attrib V18    0.13511300436152987
#>     Attrib V19    0.6756706165928272
#>     Attrib V2    0.05804334714982989
#>     Attrib V20    -0.04987078929104355
#>     Attrib V21    0.20251052970183392
#>     Attrib V22    0.5251566302469192
#>     Attrib V23    -0.01499854423506772
#>     Attrib V24    0.47764880751865557
#>     Attrib V25    0.4257875119836991
#>     Attrib V26    0.6907715305405342
#>     Attrib V27    0.3978636328342739
#>     Attrib V28    0.40874079363952476
#>     Attrib V29    0.37007702241663515
#>     Attrib V3    -0.19660380847159
#>     Attrib V30    0.6280499675635012
#>     Attrib V31    -0.6567108977099824
#>     Attrib V32    -0.3038241955474548
#>     Attrib V33    0.18575308050518077
#>     Attrib V34    0.18806581538665593
#>     Attrib V35    0.40635950803900944
#>     Attrib V36    -0.17651954798560252
#>     Attrib V37    -0.4444079935331685
#>     Attrib V38    0.18157672849006265
#>     Attrib V39    0.22140496861417522
#>     Attrib V4    -0.11511905153118461
#>     Attrib V40    -0.26121514444069743
#>     Attrib V41    0.1627467131574573
#>     Attrib V42    0.09210036951712393
#>     Attrib V43    0.005466586720983989
#>     Attrib V44    0.7144790593934304
#>     Attrib V45    0.37874914955614775
#>     Attrib V46    0.5404643323547839
#>     Attrib V47    0.2223605821629051
#>     Attrib V48    0.649486846275102
#>     Attrib V49    0.7761092926142736
#>     Attrib V5    0.29126430998548986
#>     Attrib V50    -0.9451640708675358
#>     Attrib V51    0.5850724786749301
#>     Attrib V52    0.36599994264368124
#>     Attrib V53    0.255283479086724
#>     Attrib V54    0.49686434753375464
#>     Attrib V55    -1.0404513954598111
#>     Attrib V56    0.1278216866377437
#>     Attrib V57    -0.6189165466511491
#>     Attrib V58    -0.02581326411807236
#>     Attrib V59    0.357882074258182
#>     Attrib V6    0.5228594050449484
#>     Attrib V60    0.5940345538932046
#>     Attrib V7    -0.1487114090731911
#>     Attrib V8    -0.596372671261237
#>     Attrib V9    0.5877958141679026
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.29905434638960526
#>     Attrib V1    -0.616003946567938
#>     Attrib V10    0.19713024977573051
#>     Attrib V11    -0.6406283406285894
#>     Attrib V12    -0.5326440623925268
#>     Attrib V13    0.1866938768467065
#>     Attrib V14    0.6944780941243068
#>     Attrib V15    0.038996494174686744
#>     Attrib V16    0.06172715337499361
#>     Attrib V17    -0.0039950053703853815
#>     Attrib V18    0.20359666823646777
#>     Attrib V19    -0.26989462559386995
#>     Attrib V2    -0.35689338390401404
#>     Attrib V20    0.16209099488936904
#>     Attrib V21    -0.20573141120273578
#>     Attrib V22    -0.42865510199543044
#>     Attrib V23    0.40293968144839537
#>     Attrib V24    -0.2340350222866178
#>     Attrib V25    0.10407920650781427
#>     Attrib V26    0.4119948061098943
#>     Attrib V27    0.7394631516853063
#>     Attrib V28    0.474799153249739
#>     Attrib V29    0.45638183779671687
#>     Attrib V3    0.040117551219406224
#>     Attrib V30    -0.31813002934452383
#>     Attrib V31    0.7293176481000733
#>     Attrib V32    -0.6895576723686679
#>     Attrib V33    -1.0547441656405045
#>     Attrib V34    -0.16112506825588224
#>     Attrib V35    0.4473810119197545
#>     Attrib V36    1.2878439917615983
#>     Attrib V37    1.6202216555246487
#>     Attrib V38    0.4326445345836791
#>     Attrib V39    -0.08532791784479159
#>     Attrib V4    0.2808813304170319
#>     Attrib V40    0.5064080315970062
#>     Attrib V41    0.2399236077811424
#>     Attrib V42    -0.37596148857085265
#>     Attrib V43    0.18154733556700364
#>     Attrib V44    0.0734814759064721
#>     Attrib V45    0.02408343458879789
#>     Attrib V46    -0.4896512944362168
#>     Attrib V47    -0.1385114251060675
#>     Attrib V48    -0.6357045287871689
#>     Attrib V49    -0.8288504663423849
#>     Attrib V5    0.03586397573007296
#>     Attrib V50    1.3592921755537315
#>     Attrib V51    -0.4553012671768791
#>     Attrib V52    -0.2698018730399622
#>     Attrib V53    0.19332092852575897
#>     Attrib V54    -0.08609409367003491
#>     Attrib V55    0.502285493393923
#>     Attrib V56    -0.51255091906429
#>     Attrib V57    0.4479774649069235
#>     Attrib V58    -0.5785683539726001
#>     Attrib V59    -0.20900186487644729
#>     Attrib V6    -0.17300404869142552
#>     Attrib V60    -0.28399403862226985
#>     Attrib V7    0.5027873797698055
#>     Attrib V8    0.3165844472887264
#>     Attrib V9    -0.5817940369045235
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.1848900685540195
#>     Attrib V1    0.5768430230682434
#>     Attrib V10    -0.5375590831876536
#>     Attrib V11    -0.06708213309491647
#>     Attrib V12    0.03821468534279076
#>     Attrib V13    -0.2835738509328633
#>     Attrib V14    -0.06317924149780842
#>     Attrib V15    0.24418653540697427
#>     Attrib V16    0.21741332288700543
#>     Attrib V17    0.14881098466247286
#>     Attrib V18    -0.11264128943670952
#>     Attrib V19    -0.06541826710449838
#>     Attrib V2    0.2909326783394386
#>     Attrib V20    0.06888927595648876
#>     Attrib V21    0.2864411540807909
#>     Attrib V22    0.08471895365671375
#>     Attrib V23    -0.42326579303291667
#>     Attrib V24    0.018054911672389522
#>     Attrib V25    -0.33462668993819866
#>     Attrib V26    -0.6388827905767205
#>     Attrib V27    -0.6671206070662031
#>     Attrib V28    -0.6199381640514926
#>     Attrib V29    -0.304845122406433
#>     Attrib V3    0.07272849846641688
#>     Attrib V30    0.05544250146494564
#>     Attrib V31    -0.429857979818132
#>     Attrib V32    0.02075083514127905
#>     Attrib V33    0.19228399542642538
#>     Attrib V34    -0.15549510124605193
#>     Attrib V35    -0.2854944640996685
#>     Attrib V36    -0.41745922109886596
#>     Attrib V37    -0.39413583789959067
#>     Attrib V38    0.06732915961651842
#>     Attrib V39    0.18944609395476286
#>     Attrib V4    -0.01886994092329035
#>     Attrib V40    -0.13296866151686423
#>     Attrib V41    -0.22137001548321084
#>     Attrib V42    0.19537617432494966
#>     Attrib V43    0.22093522635016935
#>     Attrib V44    0.13649678028234827
#>     Attrib V45    -0.030653435336485565
#>     Attrib V46    0.16688684754700378
#>     Attrib V47    -0.15023365530196495
#>     Attrib V48    0.2183470585029548
#>     Attrib V49    0.23220941997806221
#>     Attrib V5    0.03675910745651654
#>     Attrib V50    -0.38787691222330134
#>     Attrib V51    -0.0272665373130849
#>     Attrib V52    0.0054460474404101275
#>     Attrib V53    0.2478382503085403
#>     Attrib V54    0.41657545175463806
#>     Attrib V55    0.05191891847497684
#>     Attrib V56    0.5012111207449212
#>     Attrib V57    0.349388117097125
#>     Attrib V58    0.33380423166800505
#>     Attrib V59    0.5117341973876374
#>     Attrib V6    0.019391084393295368
#>     Attrib V60    0.40678565862778204
#>     Attrib V7    -0.03960328059114133
#>     Attrib V8    -0.25630695025740713
#>     Attrib V9    -0.04326091308096686
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.3161233077210084
#>     Attrib V1    0.6588531993672656
#>     Attrib V10    -0.7937003606545097
#>     Attrib V11    -0.07232653289125718
#>     Attrib V12    0.10621478689165832
#>     Attrib V13    -0.28860409731781655
#>     Attrib V14    -0.09512990486486675
#>     Attrib V15    0.3339845108543276
#>     Attrib V16    0.17419131422578707
#>     Attrib V17    0.23303780466264823
#>     Attrib V18    -0.08835137069686975
#>     Attrib V19    0.056196177497523585
#>     Attrib V2    0.29356190463933973
#>     Attrib V20    0.15939759548752638
#>     Attrib V21    0.4264055797651133
#>     Attrib V22    0.2685217170743463
#>     Attrib V23    -0.35279741973170853
#>     Attrib V24    0.029645773898816917
#>     Attrib V25    -0.36241402959144087
#>     Attrib V26    -0.7276364862326815
#>     Attrib V27    -0.8090999205180993
#>     Attrib V28    -0.665332981918919
#>     Attrib V29    -0.35306947918058945
#>     Attrib V3    0.14443139380414988
#>     Attrib V30    0.13784403826298508
#>     Attrib V31    -0.6274359688251927
#>     Attrib V32    -0.03145026144351806
#>     Attrib V33    0.28637759826479686
#>     Attrib V34    -0.2261133114904709
#>     Attrib V35    -0.3744825394749357
#>     Attrib V36    -0.549916245482166
#>     Attrib V37    -0.4359280153731421
#>     Attrib V38    0.20272213169817022
#>     Attrib V39    0.3470918556191679
#>     Attrib V4    -0.03032195458694338
#>     Attrib V40    -0.19870905770344127
#>     Attrib V41    -0.20074275837356778
#>     Attrib V42    0.3550102756181826
#>     Attrib V43    0.29570814267423806
#>     Attrib V44    0.1899298585324504
#>     Attrib V45    0.04617210854001646
#>     Attrib V46    0.18686078930136102
#>     Attrib V47    -0.12229098558514707
#>     Attrib V48    0.15735978134797357
#>     Attrib V49    0.29730513417829674
#>     Attrib V5    0.05289019454532241
#>     Attrib V50    -0.5564310782757044
#>     Attrib V51    -0.054427008206628706
#>     Attrib V52    0.022125202489213153
#>     Attrib V53    0.41498526274734215
#>     Attrib V54    0.617155014280488
#>     Attrib V55    -0.00748837199290231
#>     Attrib V56    0.6288356614399881
#>     Attrib V57    0.3181159400812881
#>     Attrib V58    0.3010793840732812
#>     Attrib V59    0.6675392659237357
#>     Attrib V6    0.033262210601712035
#>     Attrib V60    0.4157000309859047
#>     Attrib V7    -0.0804012824355136
#>     Attrib V8    -0.31846087760922265
#>     Attrib V9    -0.11476140597657178
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.36431939194043267
#>     Attrib V1    -0.6626398260690426
#>     Attrib V10    0.1989746217094985
#>     Attrib V11    -0.563529620295379
#>     Attrib V12    -0.47744386453462045
#>     Attrib V13    0.2304983974853904
#>     Attrib V14    0.6865453074881938
#>     Attrib V15    0.059266209581177204
#>     Attrib V16    0.0439841097414012
#>     Attrib V17    0.03826946578749556
#>     Attrib V18    0.19222316348974178
#>     Attrib V19    -0.27318807498407743
#>     Attrib V2    -0.34179784311753286
#>     Attrib V20    0.1323283454021504
#>     Attrib V21    -0.2952807466568825
#>     Attrib V22    -0.4846231914035771
#>     Attrib V23    0.43755275422741263
#>     Attrib V24    -0.2620516821402425
#>     Attrib V25    0.09404219391939685
#>     Attrib V26    0.4013792652648277
#>     Attrib V27    0.7117232681226482
#>     Attrib V28    0.5118438498881814
#>     Attrib V29    0.42298340433565706
#>     Attrib V3    0.05846498492841791
#>     Attrib V30    -0.33818167592290976
#>     Attrib V31    0.7107626907349052
#>     Attrib V32    -0.5595116868864942
#>     Attrib V33    -1.0244495189076581
#>     Attrib V34    -0.15974921208539022
#>     Attrib V35    0.3836925254832037
#>     Attrib V36    1.212599069476034
#>     Attrib V37    1.4399370615941705
#>     Attrib V38    0.37298841822958795
#>     Attrib V39    -0.13043281197094306
#>     Attrib V4    0.26204130719803354
#>     Attrib V40    0.5083814088392199
#>     Attrib V41    0.2195272010009641
#>     Attrib V42    -0.34802613555944395
#>     Attrib V43    0.19597201144557322
#>     Attrib V44    -0.02635449133053116
#>     Attrib V45    -0.03833358460476697
#>     Attrib V46    -0.4815887372067819
#>     Attrib V47    -0.08622184951642616
#>     Attrib V48    -0.6599559256459897
#>     Attrib V49    -0.8442531653054791
#>     Attrib V5    -0.03955297530401378
#>     Attrib V50    1.350422103081283
#>     Attrib V51    -0.4383199703630569
#>     Attrib V52    -0.19335447421675414
#>     Attrib V53    0.1359709376649597
#>     Attrib V54    -0.13584671738943982
#>     Attrib V55    0.598843122479293
#>     Attrib V56    -0.46026670919514673
#>     Attrib V57    0.4245678982855989
#>     Attrib V58    -0.5025271942082207
#>     Attrib V59    -0.2992541332057887
#>     Attrib V6    -0.1369863661292534
#>     Attrib V60    -0.4321635971861891
#>     Attrib V7    0.4224103786146573
#>     Attrib V8    0.4168288768657911
#>     Attrib V9    -0.5285983796214523
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.6336133506713953
#>     Attrib V1    0.5542234142438639
#>     Attrib V10    0.3988268373864277
#>     Attrib V11    0.6289632075722713
#>     Attrib V12    0.9181278807573028
#>     Attrib V13    0.1338344726514445
#>     Attrib V14    0.3138220043839364
#>     Attrib V15    -0.2655011168021949
#>     Attrib V16    -0.8787003847106507
#>     Attrib V17    -0.5591487738722373
#>     Attrib V18    0.46594428775707153
#>     Attrib V19    0.7985046539548919
#>     Attrib V2    0.7502046245375307
#>     Attrib V20    -0.3569145863081553
#>     Attrib V21    0.6541343699007556
#>     Attrib V22    1.3611495711222645
#>     Attrib V23    0.42609147008996257
#>     Attrib V24    -0.06744470213002317
#>     Attrib V25    -0.3881011496068436
#>     Attrib V26    1.0385943765793293
#>     Attrib V27    1.5762599723820612
#>     Attrib V28    2.2603622072959975
#>     Attrib V29    2.632820260868983
#>     Attrib V3    0.5009841204401155
#>     Attrib V30    1.126088379881535
#>     Attrib V31    -1.2874418275835406
#>     Attrib V32    -0.5356800402595553
#>     Attrib V33    -0.6627392766263016
#>     Attrib V34    -0.8779288674699488
#>     Attrib V35    -0.6339624323759987
#>     Attrib V36    -1.08115824554471
#>     Attrib V37    -0.41768335437870213
#>     Attrib V38    0.09523454111894347
#>     Attrib V39    1.1551950912351563
#>     Attrib V4    0.24406641263442994
#>     Attrib V40    0.6776265762009507
#>     Attrib V41    1.4662612259815762
#>     Attrib V42    1.3275215169470145
#>     Attrib V43    0.2746157489603464
#>     Attrib V44    1.3219748957779853
#>     Attrib V45    0.391837940058549
#>     Attrib V46    1.0164055536370158
#>     Attrib V47    0.3019492406821371
#>     Attrib V48    0.1575198734358924
#>     Attrib V49    1.1944771471338362
#>     Attrib V5    0.5975139429198191
#>     Attrib V50    -1.460365855631495
#>     Attrib V51    1.0793929423281272
#>     Attrib V52    1.7134802256461563
#>     Attrib V53    0.7217936747441336
#>     Attrib V54    0.034275332512313746
#>     Attrib V55    -2.320940262787435
#>     Attrib V56    -0.37212878558842877
#>     Attrib V57    -1.4940138230585367
#>     Attrib V58    0.34390214467566244
#>     Attrib V59    -0.26581264513811703
#>     Attrib V6    1.4570533130896954
#>     Attrib V60    0.4928240069641816
#>     Attrib V7    -0.8341008123719861
#>     Attrib V8    -0.4118808175153499
#>     Attrib V9    0.7787632053601248
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.2421114553790661
#>     Attrib V1    -0.12652393368414275
#>     Attrib V10    0.11632740725571812
#>     Attrib V11    -0.12031698663575165
#>     Attrib V12    -0.07133150137474224
#>     Attrib V13    0.07470329538639833
#>     Attrib V14    0.22005833070112268
#>     Attrib V15    0.08810789218674622
#>     Attrib V16    0.15615282829137267
#>     Attrib V17    0.13671001180530554
#>     Attrib V18    0.1297899011160013
#>     Attrib V19    0.029508648056330303
#>     Attrib V2    -0.014260482977312708
#>     Attrib V20    0.05586829140830138
#>     Attrib V21    -0.013588083580842639
#>     Attrib V22    -0.013980638021934265
#>     Attrib V23    0.1703880676538776
#>     Attrib V24    -0.10763430669610832
#>     Attrib V25    -0.04478141157019034
#>     Attrib V26    -0.10041336586946605
#>     Attrib V27    -0.005998051469826001
#>     Attrib V28    -0.0167623563044117
#>     Attrib V29    -0.019331195447416655
#>     Attrib V3    0.02621862347550628
#>     Attrib V30    -0.10790258187265633
#>     Attrib V31    0.24843661353897942
#>     Attrib V32    0.04533277234316827
#>     Attrib V33    -0.02067766507181971
#>     Attrib V34    0.03848306923696796
#>     Attrib V35    0.14744758196406665
#>     Attrib V36    0.3046206694854957
#>     Attrib V37    0.3928680393518633
#>     Attrib V38    0.0248367045204625
#>     Attrib V39    0.023760036051991913
#>     Attrib V4    0.13775689454727266
#>     Attrib V40    0.2626196031187244
#>     Attrib V41    0.2058364372829909
#>     Attrib V42    0.08920448163462821
#>     Attrib V43    0.06410840927216177
#>     Attrib V44    -0.1152873052252122
#>     Attrib V45    -0.1231850782628589
#>     Attrib V46    -0.16147958218162828
#>     Attrib V47    -0.018634664739269297
#>     Attrib V48    -0.12151213919754429
#>     Attrib V49    -0.1796980702190482
#>     Attrib V5    -0.006116753927119742
#>     Attrib V50    0.33479824525163154
#>     Attrib V51    -0.03174263690371213
#>     Attrib V52    0.011703873074143676
#>     Attrib V53    0.002207797245289646
#>     Attrib V54    -0.10342111887021042
#>     Attrib V55    0.11266289514236373
#>     Attrib V56    -0.0328667833556011
#>     Attrib V57    0.14524852331667137
#>     Attrib V58    0.010846590841002113
#>     Attrib V59    -0.0463090330931757
#>     Attrib V6    0.10426162869396426
#>     Attrib V60    -0.0032328753386146095
#>     Attrib V7    0.13185961944984875
#>     Attrib V8    0.2119325522944384
#>     Attrib V9    -0.06917527666840927
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.4766479754176747
#>     Attrib V1    0.771313230594133
#>     Attrib V10    -0.648416061525585
#>     Attrib V11    0.04116882126475984
#>     Attrib V12    0.08753290470735972
#>     Attrib V13    -0.36435472230014443
#>     Attrib V14    -0.19958388501370858
#>     Attrib V15    0.2556830163471765
#>     Attrib V16    0.10329836272890519
#>     Attrib V17    0.1390221339469248
#>     Attrib V18    -0.013263654097510553
#>     Attrib V19    0.17278480386676945
#>     Attrib V2    0.3317372100876727
#>     Attrib V20    0.16035196194543977
#>     Attrib V21    0.627600511392818
#>     Attrib V22    0.49656890284877175
#>     Attrib V23    -0.36057302119114737
#>     Attrib V24    0.08627890103177739
#>     Attrib V25    -0.37984683815272335
#>     Attrib V26    -0.5818677823196874
#>     Attrib V27    -0.7104816357469407
#>     Attrib V28    -0.460219219528996
#>     Attrib V29    -0.05942671371930995
#>     Attrib V3    0.05902840270910844
#>     Attrib V30    0.3900996357918562
#>     Attrib V31    -0.7989927154054335
#>     Attrib V32    -0.10435170600815916
#>     Attrib V33    0.2972850418310523
#>     Attrib V34    -0.23865155765874993
#>     Attrib V35    -0.412826688646777
#>     Attrib V36    -0.6264225285798345
#>     Attrib V37    -0.5970876499733336
#>     Attrib V38    0.24648327633828088
#>     Attrib V39    0.4142953439021297
#>     Attrib V4    -0.08481482438795414
#>     Attrib V40    -0.3578817910867782
#>     Attrib V41    -0.20991211676041388
#>     Attrib V42    0.42714587282586575
#>     Attrib V43    0.20977754985429622
#>     Attrib V44    0.43005481923749844
#>     Attrib V45    0.230726984689568
#>     Attrib V46    0.30814028464394666
#>     Attrib V47    -0.14010669732644346
#>     Attrib V48    0.3407315032552019
#>     Attrib V49    0.48097130999579446
#>     Attrib V5    0.0919709709462438
#>     Attrib V50    -0.699146517723872
#>     Attrib V51    0.09313595534632044
#>     Attrib V52    0.027210414379861582
#>     Attrib V53    0.3017365414258876
#>     Attrib V54    0.6358718438890284
#>     Attrib V55    -0.27820647140056176
#>     Attrib V56    0.46132602771761405
#>     Attrib V57    0.10654971154891169
#>     Attrib V58    0.2915070802061935
#>     Attrib V59    0.6043774487711425
#>     Attrib V6    0.09603012316484737
#>     Attrib V60    0.4604605589558786
#>     Attrib V7    -0.22846382677429428
#>     Attrib V8    -0.37010128804907066
#>     Attrib V9    0.09492986948413679
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.542611366125658
#>     Attrib V1    -0.6148100841622345
#>     Attrib V10    -0.5022457932027862
#>     Attrib V11    -0.8004570517360328
#>     Attrib V12    -0.7485273700898577
#>     Attrib V13    0.04599362215237419
#>     Attrib V14    0.12559625018459936
#>     Attrib V15    0.596306386371397
#>     Attrib V16    0.8642793565316619
#>     Attrib V17    0.5277919207684751
#>     Attrib V18    -0.1355887661583368
#>     Attrib V19    -0.8660119926031724
#>     Attrib V2    -0.57290765398421
#>     Attrib V20    0.129739454116067
#>     Attrib V21    -0.5923608580251664
#>     Attrib V22    -1.0666975007199786
#>     Attrib V23    -0.1764067823733474
#>     Attrib V24    -0.06517361232222042
#>     Attrib V25    0.018130604807731893
#>     Attrib V26    -0.9582015917057136
#>     Attrib V27    -0.9408921133605701
#>     Attrib V28    -1.693151263418582
#>     Attrib V29    -1.979851050908575
#>     Attrib V3    -0.20094170495298624
#>     Attrib V30    -1.2249294924033294
#>     Attrib V31    1.1760555005438846
#>     Attrib V32    0.44261223392065846
#>     Attrib V33    -0.0011852717866125486
#>     Attrib V34    0.27003030559981617
#>     Attrib V35    -0.06096184570921807
#>     Attrib V36    0.747484667285927
#>     Attrib V37    0.8915449581904777
#>     Attrib V38    0.14109805009935958
#>     Attrib V39    -0.646467168931576
#>     Attrib V4    -0.09509907534951326
#>     Attrib V40    -0.07456289979124713
#>     Attrib V41    -0.9823368276153667
#>     Attrib V42    -0.748574404279507
#>     Attrib V43    0.3005746192461705
#>     Attrib V44    -0.6419732561368234
#>     Attrib V45    -0.3606927253047718
#>     Attrib V46    -0.9368029696296647
#>     Attrib V47    -0.5368178367166748
#>     Attrib V48    -0.6246085986663946
#>     Attrib V49    -1.3464845020239797
#>     Attrib V5    -0.3680500009691738
#>     Attrib V50    1.1898116274675599
#>     Attrib V51    -1.1955347339507294
#>     Attrib V52    -0.9786503831743034
#>     Attrib V53    -0.29997273501735655
#>     Attrib V54    0.017699500530890915
#>     Attrib V55    1.7118701470699944
#>     Attrib V56    0.2129878318447926
#>     Attrib V57    1.2813075719213252
#>     Attrib V58    -0.3374776221182978
#>     Attrib V59    0.03526965864058859
#>     Attrib V6    -0.9069756052682355
#>     Attrib V60    -0.5451008868546086
#>     Attrib V7    0.6943328434412265
#>     Attrib V8    0.11100715138127897
#>     Attrib V9    -0.970924564984186
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.20280683655612355
#>     Attrib V1    0.3694623037162656
#>     Attrib V10    -0.42744660322024064
#>     Attrib V11    0.13939839271004614
#>     Attrib V12    0.17199918401381914
#>     Attrib V13    -0.2560428416613607
#>     Attrib V14    -0.23384066659896485
#>     Attrib V15    0.07526583919679523
#>     Attrib V16    0.01213295376874093
#>     Attrib V17    0.10026196224442502
#>     Attrib V18    -0.022336194171703034
#>     Attrib V19    0.1453368824464506
#>     Attrib V2    0.16979078509078874
#>     Attrib V20    0.10496618671215775
#>     Attrib V21    0.31813816422009095
#>     Attrib V22    0.3217721241967843
#>     Attrib V23    -0.2029969377547043
#>     Attrib V24    0.28118128811783666
#>     Attrib V25    0.044892905204907914
#>     Attrib V26    -0.3442647175099893
#>     Attrib V27    -0.5240890623676832
#>     Attrib V28    -0.4887090451093187
#>     Attrib V29    -0.3410345428344482
#>     Attrib V3    0.05485204783651079
#>     Attrib V30    0.11202758482841137
#>     Attrib V31    -0.48421981224395294
#>     Attrib V32    0.06038451808733413
#>     Attrib V33    0.3794139083938338
#>     Attrib V34    0.02488137608925727
#>     Attrib V35    -0.1367165177937088
#>     Attrib V36    -0.4861652562850672
#>     Attrib V37    -0.5769996610230617
#>     Attrib V38    0.030850768042383587
#>     Attrib V39    0.21195124425225847
#>     Attrib V4    -0.11387591031916214
#>     Attrib V40    -0.21602394960031582
#>     Attrib V41    -0.13996348457105312
#>     Attrib V42    0.20126837591258237
#>     Attrib V43    0.15661125974061726
#>     Attrib V44    0.12126064772143592
#>     Attrib V45    0.11337209360045956
#>     Attrib V46    0.2240684117100345
#>     Attrib V47    -0.01083921499360025
#>     Attrib V48    0.27491705150071266
#>     Attrib V49    0.33977452093157734
#>     Attrib V5    0.027667306465984996
#>     Attrib V50    -0.5405370928259821
#>     Attrib V51    0.14635558440727567
#>     Attrib V52    0.07345712124728188
#>     Attrib V53    0.16264097746661627
#>     Attrib V54    0.4135648608711972
#>     Attrib V55    -0.12830431358953046
#>     Attrib V56    0.41483496545692744
#>     Attrib V57    0.025061038377893547
#>     Attrib V58    0.20625595032044278
#>     Attrib V59    0.35845168904636265
#>     Attrib V6    0.06396215358718838
#>     Attrib V60    0.3717846169321325
#>     Attrib V7    -0.16858900362997795
#>     Attrib V8    -0.2767601194356844
#>     Attrib V9    0.13188695622145066
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.07502555803975185
#>     Attrib V1    0.21399404677087783
#>     Attrib V10    -0.03910996682839626
#>     Attrib V11    0.04887543242956398
#>     Attrib V12    0.10443559545503629
#>     Attrib V13    -0.013829155561149543
#>     Attrib V14    -0.007449895377388238
#>     Attrib V15    0.06425213474764804
#>     Attrib V16    -9.600240115078218E-4
#>     Attrib V17    0.025043430658018836
#>     Attrib V18    -0.05377390821005507
#>     Attrib V19    -0.02767522006378351
#>     Attrib V2    0.15568701924852366
#>     Attrib V20    -0.10546673453107562
#>     Attrib V21    -0.002114418971794838
#>     Attrib V22    -0.04014412350285859
#>     Attrib V23    -0.13132069909874813
#>     Attrib V24    0.017660488915341215
#>     Attrib V25    0.046309112458530144
#>     Attrib V26    -0.001621228647589529
#>     Attrib V27    -0.07331520201233487
#>     Attrib V28    -0.06154049654299354
#>     Attrib V29    -0.10294701625331783
#>     Attrib V3    0.0866182841300687
#>     Attrib V30    0.09700209786449426
#>     Attrib V31    -0.0626166671561523
#>     Attrib V32    -0.0277820032450738
#>     Attrib V33    0.047848265026697645
#>     Attrib V34    0.009798141376827435
#>     Attrib V35    0.07948458889959287
#>     Attrib V36    -0.06688866660579228
#>     Attrib V37    -0.07869477591276704
#>     Attrib V38    0.0012660991473616421
#>     Attrib V39    0.12594830983088764
#>     Attrib V4    0.1153300819900476
#>     Attrib V40    -0.014801897446798983
#>     Attrib V41    0.01421081288031789
#>     Attrib V42    0.11221369221691084
#>     Attrib V43    0.052107769079172646
#>     Attrib V44    0.028517887444297577
#>     Attrib V45    0.0664597178703139
#>     Attrib V46    0.09800548306133827
#>     Attrib V47    0.015636003532873848
#>     Attrib V48    0.1739705114122746
#>     Attrib V49    0.12771214488980082
#>     Attrib V5    0.04334685976995568
#>     Attrib V50    -0.10185982216154547
#>     Attrib V51    0.0901246210421527
#>     Attrib V52    0.11256286809120179
#>     Attrib V53    0.18170624139586347
#>     Attrib V54    0.1563968441584158
#>     Attrib V55    0.011677946405606928
#>     Attrib V56    0.25392817310537336
#>     Attrib V57    0.1001315462065742
#>     Attrib V58    0.18410551165167002
#>     Attrib V59    0.28041762732681064
#>     Attrib V6    0.04744531445457265
#>     Attrib V60    0.2835895528040571
#>     Attrib V7    -0.06806913002289477
#>     Attrib V8    -0.0718328376452802
#>     Attrib V9    0.056665317898492176
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.16329108540151555
#>     Attrib V1    0.5091150714948569
#>     Attrib V10    -0.5655202271513163
#>     Attrib V11    -0.011656448090155813
#>     Attrib V12    0.010983097680096358
#>     Attrib V13    -0.25772252894064634
#>     Attrib V14    -0.16025568412487853
#>     Attrib V15    0.23414511429290763
#>     Attrib V16    0.15424326632065982
#>     Attrib V17    0.18874613543927973
#>     Attrib V18    -0.053291590695437534
#>     Attrib V19    0.051715088741749286
#>     Attrib V2    0.30248658113997895
#>     Attrib V20    0.13593987062617305
#>     Attrib V21    0.2728921912001141
#>     Attrib V22    0.22379753659107052
#>     Attrib V23    -0.2599114101868019
#>     Attrib V24    0.16644331645557262
#>     Attrib V25    -0.20143934636626773
#>     Attrib V26    -0.545154656014948
#>     Attrib V27    -0.6928723879442368
#>     Attrib V28    -0.6388930637851762
#>     Attrib V29    -0.4487922920421924
#>     Attrib V3    0.046477126575207424
#>     Attrib V30    0.05555229376792892
#>     Attrib V31    -0.4940008195267635
#>     Attrib V32    -0.010723280734931666
#>     Attrib V33    0.3248425816421932
#>     Attrib V34    -0.059773382099048145
#>     Attrib V35    -0.20813309244069633
#>     Attrib V36    -0.4598768200451565
#>     Attrib V37    -0.44012515356383214
#>     Attrib V38    0.1675113671736621
#>     Attrib V39    0.20745529874859345
#>     Attrib V4    -0.04768552276619867
#>     Attrib V40    -0.18203214454015115
#>     Attrib V41    -0.20950663559337618
#>     Attrib V42    0.24530981653813358
#>     Attrib V43    0.21407436264147608
#>     Attrib V44    0.18762481702534525
#>     Attrib V45    0.023972556882407473
#>     Attrib V46    0.17182555497897492
#>     Attrib V47    -0.0923512892961681
#>     Attrib V48    0.23079228256765552
#>     Attrib V49    0.27535437318684525
#>     Attrib V5    -2.594854701514297E-4
#>     Attrib V50    -0.4628842636238004
#>     Attrib V51    0.004823035010667931
#>     Attrib V52    -0.003430430997813216
#>     Attrib V53    0.3036104400551557
#>     Attrib V54    0.568055468603896
#>     Attrib V55    0.03153152186455985
#>     Attrib V56    0.46368554193110734
#>     Attrib V57    0.2654508615849047
#>     Attrib V58    0.2305088762892655
#>     Attrib V59    0.4870082897022061
#>     Attrib V6    -0.011632492279070962
#>     Attrib V60    0.3946190169560669
#>     Attrib V7    -0.07335488164523038
#>     Attrib V8    -0.25395791941133306
#>     Attrib V9    0.010423201575187111
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.1764749192337162
#>     Attrib V1    0.5707702493727009
#>     Attrib V10    -0.6284875235703574
#>     Attrib V11    -0.09419176448554453
#>     Attrib V12    -0.025283964646807773
#>     Attrib V13    -0.3294179846302244
#>     Attrib V14    -0.02928914781268849
#>     Attrib V15    0.31688295051043014
#>     Attrib V16    0.2237458040404756
#>     Attrib V17    0.12764184557506056
#>     Attrib V18    -0.04216950392656293
#>     Attrib V19    -0.02136082274493868
#>     Attrib V2    0.26242731743384967
#>     Attrib V20    0.14207331652755548
#>     Attrib V21    0.41310257828781294
#>     Attrib V22    0.209194387445647
#>     Attrib V23    -0.29625922686299827
#>     Attrib V24    -0.029683605516272627
#>     Attrib V25    -0.42814378294163513
#>     Attrib V26    -0.6760963972534121
#>     Attrib V27    -0.6454559539848399
#>     Attrib V28    -0.4388082826241577
#>     Attrib V29    -0.17815389034641407
#>     Attrib V3    0.14410004299151286
#>     Attrib V30    0.1809230748191786
#>     Attrib V31    -0.5938931043903293
#>     Attrib V32    -0.0457994336769082
#>     Attrib V33    0.2365983307269682
#>     Attrib V34    -0.20398372320556654
#>     Attrib V35    -0.3427847480227709
#>     Attrib V36    -0.4211826511967689
#>     Attrib V37    -0.4036426197573299
#>     Attrib V38    0.10926486197150069
#>     Attrib V39    0.27509480231290423
#>     Attrib V4    -0.049018016144610876
#>     Attrib V40    -0.1929262242552151
#>     Attrib V41    -0.19876979445662996
#>     Attrib V42    0.3284905745549067
#>     Attrib V43    0.16474017986308276
#>     Attrib V44    0.19676858640182449
#>     Attrib V45    0.0844422159461114
#>     Attrib V46    0.19916930123052445
#>     Attrib V47    -0.1062504134466267
#>     Attrib V48    0.13207190335252672
#>     Attrib V49    0.2912181089232231
#>     Attrib V5    0.02734162773652388
#>     Attrib V50    -0.44985196163619656
#>     Attrib V51    0.02489571315376084
#>     Attrib V52    0.04973978991227886
#>     Attrib V53    0.295852143929513
#>     Attrib V54    0.3741988819039289
#>     Attrib V55    -0.05015768575244667
#>     Attrib V56    0.4583322799320669
#>     Attrib V57    0.27469200031927843
#>     Attrib V58    0.35394992645431267
#>     Attrib V59    0.4768622628281197
#>     Attrib V6    -4.669428429568008E-4
#>     Attrib V60    0.35457130042491997
#>     Attrib V7    -0.1049546129139179
#>     Attrib V8    -0.16796787411352773
#>     Attrib V9    -0.014434099815589782
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
#>   0.115942 
```
