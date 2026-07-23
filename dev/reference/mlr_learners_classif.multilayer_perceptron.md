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
#>     Threshold    -0.20359946476414628
#>     Node 2    2.350931336031498
#>     Node 3    1.5903132324309532
#>     Node 4    0.37597364784273024
#>     Node 5    -1.9527664293211726
#>     Node 6    1.5566765446735102
#>     Node 7    3.1470521467378973
#>     Node 8    0.6460441111313292
#>     Node 9    3.0813245884196228
#>     Node 10    -1.8112099321187036
#>     Node 11    0.9083447014315935
#>     Node 12    1.3916386998443895
#>     Node 13    1.0102362181714992
#>     Node 14    1.7308591395855286
#>     Node 15    -2.5566975504963128
#>     Node 16    0.2786208660464779
#>     Node 17    0.38510640422890896
#>     Node 18    0.34413709908322143
#>     Node 19    1.826172814391044
#>     Node 20    1.9611988164948537
#>     Node 21    -2.269518186159207
#>     Node 22    1.2363667710427262
#>     Node 23    2.043456911974113
#>     Node 24    -1.5876211254727346
#>     Node 25    3.5053103291325454
#>     Node 26    0.02738548672891946
#>     Node 27    1.72527521314257
#>     Node 28    -3.3735325584247646
#>     Node 29    0.8568864081741405
#>     Node 30    0.8687471705911602
#>     Node 31    1.571629665656971
#>     Node 32    0.6069391370573509
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.2247688158311489
#>     Node 2    -2.3750978986637756
#>     Node 3    -1.5781604501241702
#>     Node 4    -0.3390334704461508
#>     Node 5    1.9785448670456367
#>     Node 6    -1.5385488196756334
#>     Node 7    -3.1573476895783648
#>     Node 8    -0.6859282059966388
#>     Node 9    -3.10289946763282
#>     Node 10    1.7627872021560778
#>     Node 11    -0.8832879333039847
#>     Node 12    -1.4726570137193586
#>     Node 13    -0.962967724183689
#>     Node 14    -1.670646929424061
#>     Node 15    2.5610042995801345
#>     Node 16    -0.29835304302940613
#>     Node 17    -0.35612192805193715
#>     Node 18    -0.306621852076128
#>     Node 19    -1.824326275619113
#>     Node 20    -1.9256520248964133
#>     Node 21    2.3230494803817527
#>     Node 22    -1.2826844347794117
#>     Node 23    -2.0762384256715256
#>     Node 24    1.5736252892829852
#>     Node 25    -3.5065257781971977
#>     Node 26    -0.11288605345548385
#>     Node 27    -1.7479528397683204
#>     Node 28    3.3289567995446943
#>     Node 29    -0.8974045153235465
#>     Node 30    -0.8022186673677274
#>     Node 31    -1.5068699467423605
#>     Node 32    -0.628926806360862
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.15025660109555738
#>     Attrib V1    0.3052008724704436
#>     Attrib V10    0.21999706256159204
#>     Attrib V11    0.2761245622651035
#>     Attrib V12    0.13945952575549175
#>     Attrib V13    0.40263724945532775
#>     Attrib V14    0.21778234427926133
#>     Attrib V15    0.3057161988972817
#>     Attrib V16    -0.1255268497897413
#>     Attrib V17    -0.156939708569014
#>     Attrib V18    0.029521677856377538
#>     Attrib V19    0.5028380329348009
#>     Attrib V2    0.1557251790074734
#>     Attrib V20    0.8699377161634944
#>     Attrib V21    0.8714423667341318
#>     Attrib V22    0.3547567180047849
#>     Attrib V23    0.4326303138884304
#>     Attrib V24    0.5187775527863333
#>     Attrib V25    -0.5938606282699312
#>     Attrib V26    -0.4543433992574672
#>     Attrib V27    -0.2865108287899544
#>     Attrib V28    0.16070256798520038
#>     Attrib V29    0.23481693514085084
#>     Attrib V3    0.36896408874724174
#>     Attrib V30    0.2702953875500095
#>     Attrib V31    -1.6075576529667883
#>     Attrib V32    -0.8816828030998168
#>     Attrib V33    -0.38994684474105573
#>     Attrib V34    -0.25612081286683147
#>     Attrib V35    0.33171618613709464
#>     Attrib V36    -0.5030396895386215
#>     Attrib V37    -0.30498622279628207
#>     Attrib V38    0.9499291735365525
#>     Attrib V39    0.42559336391505426
#>     Attrib V4    0.1877061150421697
#>     Attrib V40    -0.6797626331950658
#>     Attrib V41    -0.48150584427524623
#>     Attrib V42    0.4949246310461478
#>     Attrib V43    0.7181769950856945
#>     Attrib V44    0.9309447210131632
#>     Attrib V45    0.969566433661403
#>     Attrib V46    0.7799756688400554
#>     Attrib V47    0.1699116490195094
#>     Attrib V48    -0.10429366550739108
#>     Attrib V49    0.41824063545918344
#>     Attrib V5    0.03417562449160266
#>     Attrib V50    -0.81272020452114
#>     Attrib V51    -0.12633143095744473
#>     Attrib V52    0.01005221569962289
#>     Attrib V53    0.589399532907595
#>     Attrib V54    0.22480541564491882
#>     Attrib V55    -0.1457797452275216
#>     Attrib V56    0.16923372695355166
#>     Attrib V57    -0.04420491848046929
#>     Attrib V58    0.09915797488743228
#>     Attrib V59    0.5424887167389115
#>     Attrib V6    -0.9196924350704807
#>     Attrib V60    -0.04315115847778716
#>     Attrib V7    -0.4602228064221647
#>     Attrib V8    -0.3323228186238766
#>     Attrib V9    0.26893765875485803
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.027438682300885472
#>     Attrib V1    0.2795497684184242
#>     Attrib V10    0.12013284031076855
#>     Attrib V11    0.20127730292794818
#>     Attrib V12    0.2066682531278039
#>     Attrib V13    0.3839479572662031
#>     Attrib V14    0.16152533599587504
#>     Attrib V15    0.12065991090603845
#>     Attrib V16    -0.2153538073642323
#>     Attrib V17    -0.23275491270549487
#>     Attrib V18    -0.07873559276900084
#>     Attrib V19    0.4541243980313733
#>     Attrib V2    0.12644298105776441
#>     Attrib V20    0.6439530843182966
#>     Attrib V21    0.576036137719465
#>     Attrib V22    0.24637979982013689
#>     Attrib V23    0.41700246037389366
#>     Attrib V24    0.652740609962414
#>     Attrib V25    0.048096064935010424
#>     Attrib V26    -0.1291582485273547
#>     Attrib V27    -0.4513677607427767
#>     Attrib V28    -0.3510596700130503
#>     Attrib V29    -0.3595553559446794
#>     Attrib V3    0.2614319923774219
#>     Attrib V30    0.14674148868387876
#>     Attrib V31    -0.6121310942793338
#>     Attrib V32    -0.05768555502236501
#>     Attrib V33    0.3396904329508966
#>     Attrib V34    0.19508097993107418
#>     Attrib V35    0.2985626576767773
#>     Attrib V36    -0.5738091398436923
#>     Attrib V37    -0.7138292772153525
#>     Attrib V38    0.23306511398908997
#>     Attrib V39    0.30453420798263864
#>     Attrib V4    0.16317669631766665
#>     Attrib V40    -0.2707547521728938
#>     Attrib V41    -0.06882305265343265
#>     Attrib V42    0.41409901613225686
#>     Attrib V43    0.20396381140286463
#>     Attrib V44    -0.01700551221654647
#>     Attrib V45    0.2628869667158797
#>     Attrib V46    0.2684586129402049
#>     Attrib V47    0.09870032224477325
#>     Attrib V48    0.09316294286123761
#>     Attrib V49    0.4388688704636251
#>     Attrib V5    -0.040795707515667155
#>     Attrib V50    -0.4699947774592892
#>     Attrib V51    0.022416035384584643
#>     Attrib V52    -0.016379717949791022
#>     Attrib V53    0.2072733627882528
#>     Attrib V54    0.16683140922955872
#>     Attrib V55    0.18569113415609512
#>     Attrib V56    0.2904365981883582
#>     Attrib V57    2.7552767338048345E-4
#>     Attrib V58    0.26568639757692486
#>     Attrib V59    0.5745060016653717
#>     Attrib V6    -0.645124985363369
#>     Attrib V60    -0.041528712142621674
#>     Attrib V7    -0.3912742959403596
#>     Attrib V8    -0.015679462128126605
#>     Attrib V9    0.26828942149202584
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.1182550743466368
#>     Attrib V1    0.02558309234258245
#>     Attrib V10    0.08185439304556079
#>     Attrib V11    0.07881201452760542
#>     Attrib V12    0.07492653398968194
#>     Attrib V13    0.108552647383746
#>     Attrib V14    0.059278286047876674
#>     Attrib V15    0.048205060785878516
#>     Attrib V16    -0.04725840781714558
#>     Attrib V17    -0.045125776092384946
#>     Attrib V18    -0.03941346057819615
#>     Attrib V19    0.03990972688216
#>     Attrib V2    0.0448219789560221
#>     Attrib V20    0.03394318826732052
#>     Attrib V21    0.03343540986230683
#>     Attrib V22    -0.08838340510589202
#>     Attrib V23    -0.028849070976987964
#>     Attrib V24    0.005985234212059077
#>     Attrib V25    -0.06854967816559622
#>     Attrib V26    0.004368857699415943
#>     Attrib V27    -0.07361908688281768
#>     Attrib V28    0.01961835794958634
#>     Attrib V29    0.03931248617293943
#>     Attrib V3    0.10236455661616897
#>     Attrib V30    0.09323225251286833
#>     Attrib V31    -0.027855254237906905
#>     Attrib V32    0.061325040815526956
#>     Attrib V33    0.12435686407997827
#>     Attrib V34    0.10341336443593158
#>     Attrib V35    0.1303506850184318
#>     Attrib V36    -0.083472973043285
#>     Attrib V37    -0.06305337128159982
#>     Attrib V38    0.047084128173719916
#>     Attrib V39    0.13545337830196544
#>     Attrib V4    0.05250798984077503
#>     Attrib V40    0.05454059463582453
#>     Attrib V41    0.03421976241370908
#>     Attrib V42    0.06704961838581104
#>     Attrib V43    0.005159893344532648
#>     Attrib V44    0.04080923612951515
#>     Attrib V45    0.12678365860481167
#>     Attrib V46    0.05040149750980012
#>     Attrib V47    0.029347934147882223
#>     Attrib V48    0.1139274791934956
#>     Attrib V49    0.1465525909896163
#>     Attrib V5    0.08076618655876563
#>     Attrib V50    -0.03610112474392426
#>     Attrib V51    0.10704080490005716
#>     Attrib V52    0.07430284926537689
#>     Attrib V53    0.10645370158366517
#>     Attrib V54    -0.03218873237961954
#>     Attrib V55    0.0638614513137877
#>     Attrib V56    0.09485399542723387
#>     Attrib V57    0.05485643772688032
#>     Attrib V58    0.05446285012114629
#>     Attrib V59    0.09033076227625196
#>     Attrib V6    -0.0739817752854972
#>     Attrib V60    -0.024133865454795216
#>     Attrib V7    -0.061349109273562547
#>     Attrib V8    -0.009461152724039551
#>     Attrib V9    0.15156109157655034
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.6547137759776691
#>     Attrib V1    -0.3393736070157673
#>     Attrib V10    -0.7260804429874063
#>     Attrib V11    -0.7353651648475552
#>     Attrib V12    -0.6823741237025227
#>     Attrib V13    -0.3836511636014778
#>     Attrib V14    0.40022958551927695
#>     Attrib V15    0.33883902085905704
#>     Attrib V16    0.3332052887052669
#>     Attrib V17    0.6411822901563701
#>     Attrib V18    0.2507661838421308
#>     Attrib V19    -0.25975924525671445
#>     Attrib V2    -0.270934915145719
#>     Attrib V20    0.039985333065794194
#>     Attrib V21    -0.013087546821919073
#>     Attrib V22    -0.0789869724086376
#>     Attrib V23    -0.33448911316693974
#>     Attrib V24    -0.6971779301331126
#>     Attrib V25    0.02711263996360499
#>     Attrib V26    -0.4196410694710673
#>     Attrib V27    -0.31927896027543357
#>     Attrib V28    -0.598725877520423
#>     Attrib V29    -0.5226024252002072
#>     Attrib V3    0.09750882787143979
#>     Attrib V30    -0.4964242870212791
#>     Attrib V31    0.44012192399092076
#>     Attrib V32    -0.3171429443710566
#>     Attrib V33    -0.443205906973902
#>     Attrib V34    -0.3094629172121173
#>     Attrib V35    -0.5598905890207337
#>     Attrib V36    0.9541446542092192
#>     Attrib V37    0.603764253018997
#>     Attrib V38    -0.06683903418460696
#>     Attrib V39    -0.27075816196630464
#>     Attrib V4    0.015917408090443997
#>     Attrib V40    -0.01689365215932844
#>     Attrib V41    -0.7246508792682902
#>     Attrib V42    -0.19262510107382705
#>     Attrib V43    0.1251116891459389
#>     Attrib V44    -0.05697548011462537
#>     Attrib V45    -0.3834485193876377
#>     Attrib V46    -0.5426325368631162
#>     Attrib V47    -0.1872651485259597
#>     Attrib V48    -0.447920599606919
#>     Attrib V49    -0.7712923095598821
#>     Attrib V5    -0.023019692834747908
#>     Attrib V50    0.8145032855740243
#>     Attrib V51    -0.13145714021437668
#>     Attrib V52    -0.2744809594291778
#>     Attrib V53    -0.5324298792718828
#>     Attrib V54    0.2821363268813546
#>     Attrib V55    0.1365988914082959
#>     Attrib V56    0.15958794208518198
#>     Attrib V57    0.10239264031958578
#>     Attrib V58    -0.28415773797658417
#>     Attrib V59    -0.12093331693233791
#>     Attrib V6    0.156466302782266
#>     Attrib V60    -0.014101167551907932
#>     Attrib V7    0.5482675358720315
#>     Attrib V8    0.3027382555647599
#>     Attrib V9    -0.7280317846528748
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.054291907392516464
#>     Attrib V1    0.2896568809136199
#>     Attrib V10    0.08215786470657149
#>     Attrib V11    0.21829351928191873
#>     Attrib V12    0.22294046406920823
#>     Attrib V13    0.31001138246841636
#>     Attrib V14    0.10542390808360562
#>     Attrib V15    0.04788864809228803
#>     Attrib V16    -0.13928233191336842
#>     Attrib V17    -0.22693478594995717
#>     Attrib V18    0.0035108382240832533
#>     Attrib V19    0.4166699912056377
#>     Attrib V2    0.10687858429205999
#>     Attrib V20    0.6242978485980125
#>     Attrib V21    0.6186476515260884
#>     Attrib V22    0.21241724783740787
#>     Attrib V23    0.40015555962734595
#>     Attrib V24    0.685221430970443
#>     Attrib V25    0.08534220909875319
#>     Attrib V26    -0.08434453043829948
#>     Attrib V27    -0.3808258390996715
#>     Attrib V28    -0.36119205925156717
#>     Attrib V29    -0.29710478941883384
#>     Attrib V3    0.24825220349255714
#>     Attrib V30    0.12575301027677632
#>     Attrib V31    -0.635542068551461
#>     Attrib V32    -0.050603708957973996
#>     Attrib V33    0.32337009735813643
#>     Attrib V34    0.1827437416675223
#>     Attrib V35    0.2908657251329715
#>     Attrib V36    -0.5975720211499184
#>     Attrib V37    -0.7164015502233465
#>     Attrib V38    0.22975918170644322
#>     Attrib V39    0.25453587442161496
#>     Attrib V4    0.20524643394698758
#>     Attrib V40    -0.33009705636481246
#>     Attrib V41    -0.028273715098105938
#>     Attrib V42    0.4386135064577722
#>     Attrib V43    0.20462203032164133
#>     Attrib V44    -0.06200479992787756
#>     Attrib V45    0.28182073478472947
#>     Attrib V46    0.2999234532905095
#>     Attrib V47    0.06210891314925604
#>     Attrib V48    0.08015195833962765
#>     Attrib V49    0.44417912978983753
#>     Attrib V5    -0.030627254209711522
#>     Attrib V50    -0.4304066181193362
#>     Attrib V51    0.07268139100819072
#>     Attrib V52    -0.06027098085248869
#>     Attrib V53    0.2718867387362122
#>     Attrib V54    0.10195746559417446
#>     Attrib V55    0.12238996288311964
#>     Attrib V56    0.27696579935170745
#>     Attrib V57    -0.007859325085529207
#>     Attrib V58    0.25320266478393466
#>     Attrib V59    0.6013206870548224
#>     Attrib V6    -0.5727233236882799
#>     Attrib V60    0.03390288765033472
#>     Attrib V7    -0.34922241477157007
#>     Attrib V8    0.01062715699675724
#>     Attrib V9    0.3488092627750735
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.9550107099228593
#>     Attrib V1    0.5256617404504581
#>     Attrib V10    1.5119970815918182
#>     Attrib V11    1.1322445482312016
#>     Attrib V12    0.6410004826966078
#>     Attrib V13    0.1966299231654261
#>     Attrib V14    -0.6204752998177573
#>     Attrib V15    -0.2343861490362899
#>     Attrib V16    -0.10869146444637182
#>     Attrib V17    -0.8369326042685007
#>     Attrib V18    -0.3354328882040214
#>     Attrib V19    0.0813213551777325
#>     Attrib V2    0.7039312853686585
#>     Attrib V20    -0.21810984076306753
#>     Attrib V21    0.272027035843996
#>     Attrib V22    0.5362869221512286
#>     Attrib V23    0.48720323349534295
#>     Attrib V24    0.018560341606431316
#>     Attrib V25    -0.9732689056106136
#>     Attrib V26    0.31499650523125555
#>     Attrib V27    0.982883778982791
#>     Attrib V28    1.6077465134094935
#>     Attrib V29    1.543625167100185
#>     Attrib V3    -0.23137288463392278
#>     Attrib V30    0.575163518811008
#>     Attrib V31    -1.1619941881385034
#>     Attrib V32    -0.2844454088137052
#>     Attrib V33    -0.3477061920236013
#>     Attrib V34    -0.39308272623018076
#>     Attrib V35    0.3849352742902447
#>     Attrib V36    -1.2859870088420124
#>     Attrib V37    -0.25829223993112493
#>     Attrib V38    -0.10223030604336064
#>     Attrib V39    0.1564006964748519
#>     Attrib V4    -0.13709197277327656
#>     Attrib V40    0.25414794612263303
#>     Attrib V41    0.9407186704512472
#>     Attrib V42    -0.1698583572006362
#>     Attrib V43    -0.12339789077604217
#>     Attrib V44    0.788192065349445
#>     Attrib V45    0.8027016255770559
#>     Attrib V46    1.0763189678323293
#>     Attrib V47    0.49977120754116083
#>     Attrib V48    0.4675872980246704
#>     Attrib V49    0.7156134954191827
#>     Attrib V5    0.12132212194146677
#>     Attrib V50    -0.5678985912287184
#>     Attrib V51    0.159738333821739
#>     Attrib V52    0.5363908443207891
#>     Attrib V53    0.6768623792620656
#>     Attrib V54    -0.36284275912536085
#>     Attrib V55    -0.5982323309307617
#>     Attrib V56    -0.6265483132970492
#>     Attrib V57    -0.24800149267576688
#>     Attrib V58    0.3081978136378113
#>     Attrib V59    -0.5092119445456892
#>     Attrib V6    0.39692043096859775
#>     Attrib V60    0.2989329057503298
#>     Attrib V7    -0.30639112064806845
#>     Attrib V8    -0.16835626595117606
#>     Attrib V9    1.311948176777651
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.09061788365969477
#>     Attrib V1    0.07770986528374914
#>     Attrib V10    0.2149802649081497
#>     Attrib V11    0.24858318998544784
#>     Attrib V12    0.1481251222904725
#>     Attrib V13    0.13276004048861723
#>     Attrib V14    -0.1123375463741436
#>     Attrib V15    -0.08700615393412424
#>     Attrib V16    -0.050290843084987664
#>     Attrib V17    -0.13535790622934316
#>     Attrib V18    -0.09602963769751668
#>     Attrib V19    0.09249785914379291
#>     Attrib V2    0.08509736240828009
#>     Attrib V20    0.006326303520262523
#>     Attrib V21    0.013049925211085936
#>     Attrib V22    -0.08963124454347923
#>     Attrib V23    -0.010152255213687867
#>     Attrib V24    0.15700064005816222
#>     Attrib V25    0.0036322100170801835
#>     Attrib V26    0.13630453811283572
#>     Attrib V27    0.040672195255939333
#>     Attrib V28    0.08521399547342018
#>     Attrib V29    0.08510107147498154
#>     Attrib V3    0.02170417824953395
#>     Attrib V30    0.2221549539207947
#>     Attrib V31    -0.08314517631055718
#>     Attrib V32    0.10336342338085912
#>     Attrib V33    0.15354608579719148
#>     Attrib V34    0.0898253687406807
#>     Attrib V35    0.19528544215995094
#>     Attrib V36    -0.1332995904526631
#>     Attrib V37    -0.12679839147476749
#>     Attrib V38    0.17439760689672648
#>     Attrib V39    0.17203953488801377
#>     Attrib V4    0.08253380389164296
#>     Attrib V40    -0.012661251563489163
#>     Attrib V41    0.05953586014758213
#>     Attrib V42    -0.04289845456190304
#>     Attrib V43    -0.014719626226989817
#>     Attrib V44    0.11850574057534666
#>     Attrib V45    0.16545213520755497
#>     Attrib V46    0.1395818217863188
#>     Attrib V47    0.05280763210059415
#>     Attrib V48    0.20339919795896688
#>     Attrib V49    0.2377777862423701
#>     Attrib V5    -0.0010087306064526763
#>     Attrib V50    -0.23427468000599305
#>     Attrib V51    0.06075298745698413
#>     Attrib V52    0.0788722105007167
#>     Attrib V53    0.15696454920490632
#>     Attrib V54    -0.03225730671283082
#>     Attrib V55    0.025927099101719933
#>     Attrib V56    -0.004036612875738475
#>     Attrib V57    0.031246720876170687
#>     Attrib V58    0.0516802112295807
#>     Attrib V59    0.12503381001099004
#>     Attrib V6    -0.14737090069764994
#>     Attrib V60    -0.0038213908434483095
#>     Attrib V7    -0.1504831056124709
#>     Attrib V8    -0.04181121039803126
#>     Attrib V9    0.2442036584329447
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.7321772349442682
#>     Attrib V1    0.7571484660089615
#>     Attrib V10    1.471965853079211
#>     Attrib V11    1.250631559382864
#>     Attrib V12    1.1835067289553358
#>     Attrib V13    0.49597202025347975
#>     Attrib V14    -0.5396295154413627
#>     Attrib V15    -0.29070352699498336
#>     Attrib V16    -0.3783352124987288
#>     Attrib V17    -1.0669903603255255
#>     Attrib V18    -0.7258352222749709
#>     Attrib V19    -0.5607702657333689
#>     Attrib V2    0.799564224616015
#>     Attrib V20    -0.7454727193076202
#>     Attrib V21    -0.4485884833135073
#>     Attrib V22    -0.19977657605596616
#>     Attrib V23    -0.08088921020417357
#>     Attrib V24    0.049688966827470045
#>     Attrib V25    -0.3395822249906607
#>     Attrib V26    0.5921073398894589
#>     Attrib V27    0.9176249848231917
#>     Attrib V28    1.0661062974296978
#>     Attrib V29    0.9690498751012083
#>     Attrib V3    -0.14549557301327706
#>     Attrib V30    0.6008260469181211
#>     Attrib V31    -0.09957109207543069
#>     Attrib V32    0.21427172842026998
#>     Attrib V33    -0.14559141018026855
#>     Attrib V34    -0.21018872940181907
#>     Attrib V35    0.0650085388557637
#>     Attrib V36    -1.4405171383040662
#>     Attrib V37    -0.5070717704101372
#>     Attrib V38    -0.340887322499772
#>     Attrib V39    0.25201585929690584
#>     Attrib V4    -0.07591092032867784
#>     Attrib V40    0.4084436374661951
#>     Attrib V41    0.8746054237205859
#>     Attrib V42    -0.37490878943948236
#>     Attrib V43    -0.452897399788079
#>     Attrib V44    -0.0524951751883373
#>     Attrib V45    0.3218326033155467
#>     Attrib V46    0.6044574078681574
#>     Attrib V47    0.3291363778163689
#>     Attrib V48    0.5649389193878226
#>     Attrib V49    0.5406110148580625
#>     Attrib V5    0.17411296043883312
#>     Attrib V50    -0.4528533275841235
#>     Attrib V51    0.3329964910384013
#>     Attrib V52    0.6200655935117717
#>     Attrib V53    0.8834286063527158
#>     Attrib V54    -0.1109546170657737
#>     Attrib V55    -0.17462579240029455
#>     Attrib V56    -0.24226286131708608
#>     Attrib V57    -0.058835577114539954
#>     Attrib V58    0.3291158016014808
#>     Attrib V59    -0.2328771833387928
#>     Attrib V6    0.6641381877804436
#>     Attrib V60    0.37706909219402096
#>     Attrib V7    -0.06387068040105297
#>     Attrib V8    0.0955291787753736
#>     Attrib V9    1.2184417118033717
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.5611385798918785
#>     Attrib V1    -0.296537874820864
#>     Attrib V10    -0.7264322330952345
#>     Attrib V11    -0.7534553344133701
#>     Attrib V12    -0.6770782606043627
#>     Attrib V13    -0.3611864395379591
#>     Attrib V14    0.3524547221219159
#>     Attrib V15    0.25917905552069115
#>     Attrib V16    0.3247970976793165
#>     Attrib V17    0.5196736023833054
#>     Attrib V18    0.25385775072516126
#>     Attrib V19    -0.1558700422538071
#>     Attrib V2    -0.31102463948419395
#>     Attrib V20    0.17272560303204884
#>     Attrib V21    0.09475285481476871
#>     Attrib V22    0.002614910872768176
#>     Attrib V23    -0.23588772549423864
#>     Attrib V24    -0.5885381435250316
#>     Attrib V25    -0.08019528650205314
#>     Attrib V26    -0.3663222591817949
#>     Attrib V27    -0.24217959403411138
#>     Attrib V28    -0.4190093291706828
#>     Attrib V29    -0.3819595324115999
#>     Attrib V3    0.04078124918731075
#>     Attrib V30    -0.37735420152749827
#>     Attrib V31    0.15728972860981882
#>     Attrib V32    -0.5456916536803966
#>     Attrib V33    -0.41935686307407105
#>     Attrib V34    -0.2101972046166489
#>     Attrib V35    -0.373800677246328
#>     Attrib V36    0.9462539486008751
#>     Attrib V37    0.6922881377433009
#>     Attrib V38    0.13256250510400283
#>     Attrib V39    -0.2397039196654411
#>     Attrib V4    -0.02011110255958819
#>     Attrib V40    -0.0523612443586864
#>     Attrib V41    -0.6169175688407146
#>     Attrib V42    -0.14227837815515695
#>     Attrib V43    0.21269491795964704
#>     Attrib V44    0.15516074725454804
#>     Attrib V45    -0.12450915658867173
#>     Attrib V46    -0.36462189456247507
#>     Attrib V47    -0.17242386685010752
#>     Attrib V48    -0.5077167229312414
#>     Attrib V49    -0.7222789464185754
#>     Attrib V5    -0.07905887862976739
#>     Attrib V50    0.6421800857299004
#>     Attrib V51    -0.21810065353147426
#>     Attrib V52    -0.2900284515436277
#>     Attrib V53    -0.3954404634873624
#>     Attrib V54    0.19475764565280204
#>     Attrib V55    -0.017411087955071205
#>     Attrib V56    0.025006216948621696
#>     Attrib V57    0.09992934987173115
#>     Attrib V58    -0.3359209578637306
#>     Attrib V59    -0.1671444088945695
#>     Attrib V6    0.06788341911676449
#>     Attrib V60    -0.0552617019148968
#>     Attrib V7    0.4243683203577001
#>     Attrib V8    0.1385865269088828
#>     Attrib V9    -0.7076165055920239
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.12480459811504815
#>     Attrib V1    0.07314669157523881
#>     Attrib V10    0.15569119286616212
#>     Attrib V11    0.2708215243287129
#>     Attrib V12    0.2890486378110823
#>     Attrib V13    0.21456013355446804
#>     Attrib V14    -0.02205514636637897
#>     Attrib V15    -0.06598408921644414
#>     Attrib V16    -0.11191885288123635
#>     Attrib V17    -0.07558125828232222
#>     Attrib V18    0.028020722478776423
#>     Attrib V19    0.2530372244146089
#>     Attrib V2    -0.006288708699194045
#>     Attrib V20    0.297838482660771
#>     Attrib V21    0.1663325155246144
#>     Attrib V22    -0.039038123209628295
#>     Attrib V23    0.09774227800426309
#>     Attrib V24    0.26837079339288433
#>     Attrib V25    -0.014292683497173109
#>     Attrib V26    -0.03981964313265976
#>     Attrib V27    -0.132608624464111
#>     Attrib V28    -0.05709891366879581
#>     Attrib V29    -0.08074085654899978
#>     Attrib V3    -0.024578678584651122
#>     Attrib V30    0.17824050334052277
#>     Attrib V31    -0.3370641229708304
#>     Attrib V32    0.008074919826559564
#>     Attrib V33    0.17480429520710739
#>     Attrib V34    0.20915014648966257
#>     Attrib V35    0.3474764579544216
#>     Attrib V36    -0.23965087559815804
#>     Attrib V37    -0.2834527296190512
#>     Attrib V38    0.296308537567687
#>     Attrib V39    0.239191606002598
#>     Attrib V4    0.00829835340246181
#>     Attrib V40    -0.12355459536473151
#>     Attrib V41    -0.05884584155581385
#>     Attrib V42    0.09792857125996189
#>     Attrib V43    0.0686482550985982
#>     Attrib V44    0.11995659718783107
#>     Attrib V45    0.26045506096126836
#>     Attrib V46    0.1341549194152156
#>     Attrib V47    0.012392372688631439
#>     Attrib V48    0.15689342433269057
#>     Attrib V49    0.2727684148579706
#>     Attrib V5    -0.011701476907378699
#>     Attrib V50    -0.31972559537946327
#>     Attrib V51    0.09264558713396652
#>     Attrib V52    0.007204182188274515
#>     Attrib V53    0.13800882312745097
#>     Attrib V54    0.04131721724687795
#>     Attrib V55    0.0962140640785196
#>     Attrib V56    0.049338328666898724
#>     Attrib V57    -0.07102853933155788
#>     Attrib V58    0.09184306629307057
#>     Attrib V59    0.14707605755639447
#>     Attrib V6    -0.3021842715875293
#>     Attrib V60    -0.10547227753440934
#>     Attrib V7    -0.324945493397147
#>     Attrib V8    -0.054193774322293484
#>     Attrib V9    0.2562986845307063
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.10077991285357452
#>     Attrib V1    0.16474649695016205
#>     Attrib V10    0.12058390480917376
#>     Attrib V11    0.31452243741005703
#>     Attrib V12    0.17792394518180876
#>     Attrib V13    0.3323135316170288
#>     Attrib V14    0.0952471630579809
#>     Attrib V15    -8.092034106968356E-4
#>     Attrib V16    -0.1562902310122772
#>     Attrib V17    -0.19165862562521463
#>     Attrib V18    0.002402082013229269
#>     Attrib V19    0.5076248366718307
#>     Attrib V2    0.11435366671556484
#>     Attrib V20    0.5622763335198531
#>     Attrib V21    0.5461415547744549
#>     Attrib V22    0.28317615566342696
#>     Attrib V23    0.4208447995224181
#>     Attrib V24    0.5526018343252012
#>     Attrib V25    -0.0668663709549235
#>     Attrib V26    -0.09953047515625786
#>     Attrib V27    -0.2864041843030637
#>     Attrib V28    -0.2291417941528373
#>     Attrib V29    -0.1500611862498531
#>     Attrib V3    0.1436023875782113
#>     Attrib V30    0.13590092738887177
#>     Attrib V31    -0.7135393850859403
#>     Attrib V32    -0.13022452881507413
#>     Attrib V33    0.304069777455168
#>     Attrib V34    0.22857203731465547
#>     Attrib V35    0.3571572542908766
#>     Attrib V36    -0.4662870169714314
#>     Attrib V37    -0.5969641275513958
#>     Attrib V38    0.3067421697518171
#>     Attrib V39    0.23391359866297515
#>     Attrib V4    0.1754681958027116
#>     Attrib V40    -0.24176997720392618
#>     Attrib V41    -0.05734879060753853
#>     Attrib V42    0.3263032359586813
#>     Attrib V43    0.27385033612936116
#>     Attrib V44    0.02557772710628381
#>     Attrib V45    0.3255483338568133
#>     Attrib V46    0.36753064892347004
#>     Attrib V47    0.07601494666609826
#>     Attrib V48    0.1367779674759876
#>     Attrib V49    0.41950980224880285
#>     Attrib V5    -0.023150734426692767
#>     Attrib V50    -0.5071181801248409
#>     Attrib V51    0.06704660298144723
#>     Attrib V52    0.015696916742275337
#>     Attrib V53    0.22734593908695863
#>     Attrib V54    0.045454601773766916
#>     Attrib V55    0.06855142229788291
#>     Attrib V56    0.17262476980291389
#>     Attrib V57    -0.04938900733957844
#>     Attrib V58    0.19817221262642182
#>     Attrib V59    0.4878293144704846
#>     Attrib V6    -0.6243709679377081
#>     Attrib V60    -0.038751798278797066
#>     Attrib V7    -0.3833027089522622
#>     Attrib V8    -0.044330693458292915
#>     Attrib V9    0.33247684089596147
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.051258389171726974
#>     Attrib V1    0.15636104475494012
#>     Attrib V10    0.06648625353683964
#>     Attrib V11    0.18266457455830717
#>     Attrib V12    0.205259732930751
#>     Attrib V13    0.3304431473283334
#>     Attrib V14    0.08890571504933308
#>     Attrib V15    0.004068113886319813
#>     Attrib V16    -0.13901678112417606
#>     Attrib V17    -0.09755930354669676
#>     Attrib V18    0.02519262768184628
#>     Attrib V19    0.2899947856285104
#>     Attrib V2    0.07697983826799165
#>     Attrib V20    0.3739683859802766
#>     Attrib V21    0.3306448417028486
#>     Attrib V22    0.09077879444356031
#>     Attrib V23    0.2758960516970601
#>     Attrib V24    0.4285192197927599
#>     Attrib V25    0.08714542523330177
#>     Attrib V26    -0.05880282504653173
#>     Attrib V27    -0.20563104614372943
#>     Attrib V28    -0.24194424563317973
#>     Attrib V29    -0.18243369258035458
#>     Attrib V3    0.18856417121339775
#>     Attrib V30    0.04344787479014716
#>     Attrib V31    -0.4215508108148784
#>     Attrib V32    0.02220467598725239
#>     Attrib V33    0.22382757892764749
#>     Attrib V34    0.20537309967928166
#>     Attrib V35    0.2130823318701999
#>     Attrib V36    -0.40671673509037237
#>     Attrib V37    -0.45650741608754675
#>     Attrib V38    0.09897991926828005
#>     Attrib V39    0.21746426887187129
#>     Attrib V4    0.12383278384777667
#>     Attrib V40    -0.11958818592704834
#>     Attrib V41    0.026328989708536685
#>     Attrib V42    0.2154778738906358
#>     Attrib V43    0.04216692636250687
#>     Attrib V44    -0.09244051844224081
#>     Attrib V45    0.08531837005854527
#>     Attrib V46    0.17480680821186523
#>     Attrib V47    0.060297418808687823
#>     Attrib V48    0.08242735212599277
#>     Attrib V49    0.3177859016039549
#>     Attrib V5    0.029135317454504664
#>     Attrib V50    -0.33542261660206807
#>     Attrib V51    0.04668554631355847
#>     Attrib V52    -0.008233466428149544
#>     Attrib V53    0.17479165824585421
#>     Attrib V54    0.031671730361326596
#>     Attrib V55    0.11068746667663
#>     Attrib V56    0.16907058492999621
#>     Attrib V57    -0.012152650377413072
#>     Attrib V58    0.14094136459404555
#>     Attrib V59    0.3613415026117465
#>     Attrib V6    -0.3032627568354749
#>     Attrib V60    0.033843220014535
#>     Attrib V7    -0.21029046632798903
#>     Attrib V8    -0.08253878228793315
#>     Attrib V9    0.20708791701353063
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.09901805306283268
#>     Attrib V1    0.3432023322104957
#>     Attrib V10    0.1782282017019365
#>     Attrib V11    0.38412494462257685
#>     Attrib V12    0.288609317785427
#>     Attrib V13    0.3483414004178027
#>     Attrib V14    0.04586030733917614
#>     Attrib V15    0.05190569185639512
#>     Attrib V16    -0.26344085140094203
#>     Attrib V17    -0.2512601676099944
#>     Attrib V18    -0.05050661791078702
#>     Attrib V19    0.4522528125353019
#>     Attrib V2    0.12684718892863353
#>     Attrib V20    0.6708304204034751
#>     Attrib V21    0.6133925380165051
#>     Attrib V22    0.23764192434029344
#>     Attrib V23    0.4771920750261264
#>     Attrib V24    0.6926494550173686
#>     Attrib V25    0.039067161989045175
#>     Attrib V26    -0.024641018211408464
#>     Attrib V27    -0.40628698083746495
#>     Attrib V28    -0.35869770833802356
#>     Attrib V29    -0.31469656529983164
#>     Attrib V3    0.16302565655414633
#>     Attrib V30    0.17819382908593423
#>     Attrib V31    -0.7216697398683078
#>     Attrib V32    -0.15196100616856756
#>     Attrib V33    0.31139405251006835
#>     Attrib V34    0.20967095734342758
#>     Attrib V35    0.40834062028422735
#>     Attrib V36    -0.5586644548854176
#>     Attrib V37    -0.6467230294430877
#>     Attrib V38    0.3360396304588164
#>     Attrib V39    0.33928343854143195
#>     Attrib V4    0.13878384141680558
#>     Attrib V40    -0.3711119020146206
#>     Attrib V41    -0.17497895111946174
#>     Attrib V42    0.3483422372114947
#>     Attrib V43    0.22197875687578883
#>     Attrib V44    0.07750322533404506
#>     Attrib V45    0.3155520303668177
#>     Attrib V46    0.3710347156692101
#>     Attrib V47    0.07655648644227428
#>     Attrib V48    0.16267041183228623
#>     Attrib V49    0.569411528298088
#>     Attrib V5    -0.098022072416997
#>     Attrib V50    -0.5253250147627133
#>     Attrib V51    0.02570483999363788
#>     Attrib V52    -0.05155472702155806
#>     Attrib V53    0.2314227674923766
#>     Attrib V54    0.17329409434088386
#>     Attrib V55    0.16517841409613282
#>     Attrib V56    0.23784975055483604
#>     Attrib V57    -0.057234499743645556
#>     Attrib V58    0.22732098251793464
#>     Attrib V59    0.5732695510338304
#>     Attrib V6    -0.7118157732084008
#>     Attrib V60    0.027306643618852298
#>     Attrib V7    -0.447258001893285
#>     Attrib V8    -0.12618453162098972
#>     Attrib V9    0.33859575274733156
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.9331390488789991
#>     Attrib V1    -0.3880657851694329
#>     Attrib V10    -1.1868764446314803
#>     Attrib V11    -1.0805763686205876
#>     Attrib V12    -0.7515293450499706
#>     Attrib V13    -0.31700624670514904
#>     Attrib V14    0.5632624921110471
#>     Attrib V15    0.5025819913073928
#>     Attrib V16    0.3300401473787116
#>     Attrib V17    0.6990169810475777
#>     Attrib V18    0.10710949997456434
#>     Attrib V19    -0.4542399035425479
#>     Attrib V2    -0.45318634122594015
#>     Attrib V20    0.037908924282274915
#>     Attrib V21    -0.23743609623237813
#>     Attrib V22    -0.4101354209079064
#>     Attrib V23    -0.6893254013553669
#>     Attrib V24    -0.6595715655574291
#>     Attrib V25    0.2126248327131053
#>     Attrib V26    -0.5069736748332908
#>     Attrib V27    -0.7055418471697301
#>     Attrib V28    -1.0453289401367225
#>     Attrib V29    -0.8902073181168652
#>     Attrib V3    0.2491871474168275
#>     Attrib V30    -0.5718738672482733
#>     Attrib V31    0.7275677175277809
#>     Attrib V32    -0.231297657935505
#>     Attrib V33    -0.2490217421219075
#>     Attrib V34    -0.04502428777923318
#>     Attrib V35    -0.5855410331284546
#>     Attrib V36    1.1635144960351642
#>     Attrib V37    0.6786848108018698
#>     Attrib V38    0.10266172182429548
#>     Attrib V39    -0.3241655662696435
#>     Attrib V4    0.06740502713230384
#>     Attrib V40    -0.2513847949724298
#>     Attrib V41    -1.0583602325615722
#>     Attrib V42    -0.14749906460586942
#>     Attrib V43    0.15866295455596474
#>     Attrib V44    -0.29196955576303957
#>     Attrib V45    -0.3317914102441299
#>     Attrib V46    -0.5903530613651247
#>     Attrib V47    -0.29469556700891086
#>     Attrib V48    -0.6112575503179204
#>     Attrib V49    -0.994594630924361
#>     Attrib V5    -0.11792654862744191
#>     Attrib V50    0.7748926279493907
#>     Attrib V51    -0.24224707634749715
#>     Attrib V52    -0.4996217965895891
#>     Attrib V53    -0.7025958209336719
#>     Attrib V54    0.4055967864148425
#>     Attrib V55    0.34593156744676307
#>     Attrib V56    0.3797207490765174
#>     Attrib V57    0.24531665931999033
#>     Attrib V58    -0.3657026757493189
#>     Attrib V59    0.07645277185471488
#>     Attrib V6    -0.15794093534160972
#>     Attrib V60    -0.16051686753837824
#>     Attrib V7    0.5252454793515072
#>     Attrib V8    0.22437535655710464
#>     Attrib V9    -1.04004490687518
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.11936570686980878
#>     Attrib V1    0.05798227384687158
#>     Attrib V10    0.07983150708808272
#>     Attrib V11    0.06062278082788576
#>     Attrib V12    0.05589443827876507
#>     Attrib V13    0.08943180201313661
#>     Attrib V14    -0.017274913313962647
#>     Attrib V15    -0.013751843951517791
#>     Attrib V16    0.022586136320628288
#>     Attrib V17    0.011679760174771132
#>     Attrib V18    0.03391198242851036
#>     Attrib V19    0.05667551561451785
#>     Attrib V2    0.021030780665501698
#>     Attrib V20    -0.009437513733245527
#>     Attrib V21    -0.039219242311273675
#>     Attrib V22    -0.07577138822917036
#>     Attrib V23    -0.058834072308489756
#>     Attrib V24    0.06537824822332355
#>     Attrib V25    0.007528430755447699
#>     Attrib V26    -0.02204371019613148
#>     Attrib V27    -0.05929454823025789
#>     Attrib V28    -0.018038409282458073
#>     Attrib V29    -0.025280992010011695
#>     Attrib V3    0.08936519672288647
#>     Attrib V30    0.028629664320254756
#>     Attrib V31    -0.06202060973123857
#>     Attrib V32    0.07207040671419299
#>     Attrib V33    0.07672726819512189
#>     Attrib V34    0.10193954867016142
#>     Attrib V35    0.09229146211132312
#>     Attrib V36    -0.07341892186054738
#>     Attrib V37    -0.036444215319689326
#>     Attrib V38    0.0661043763005462
#>     Attrib V39    0.09604856463556555
#>     Attrib V4    0.08820126898244281
#>     Attrib V40    -0.010306848635881714
#>     Attrib V41    0.04480650605973932
#>     Attrib V42    0.06691785920944748
#>     Attrib V43    0.00643649432828264
#>     Attrib V44    -0.019161735758683265
#>     Attrib V45    0.07749821000919878
#>     Attrib V46    0.08652804637428374
#>     Attrib V47    0.04662155603210518
#>     Attrib V48    0.07117798295922248
#>     Attrib V49    0.07253595093964506
#>     Attrib V5    0.05618024153805838
#>     Attrib V50    -0.0033430267377586942
#>     Attrib V51    0.11801436950464225
#>     Attrib V52    0.09816635531744167
#>     Attrib V53    0.11529963612233946
#>     Attrib V54    -6.18150118404727E-5
#>     Attrib V55    0.08070870304658406
#>     Attrib V56    0.08071918266082119
#>     Attrib V57    0.059759151300677785
#>     Attrib V58    0.10607750269243625
#>     Attrib V59    0.057853666084270054
#>     Attrib V6    -0.010495774525137903
#>     Attrib V60    0.028730964284234745
#>     Attrib V7    -0.04114389886989765
#>     Attrib V8    -0.01329028849633165
#>     Attrib V9    0.13806496498422655
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.04415755549775278
#>     Attrib V1    0.08583601869651725
#>     Attrib V10    0.14187780308965978
#>     Attrib V11    0.1305446477603423
#>     Attrib V12    0.05213619528103017
#>     Attrib V13    0.03280307594207249
#>     Attrib V14    -0.021094001008249933
#>     Attrib V15    0.05267021832598206
#>     Attrib V16    -0.029059362516475458
#>     Attrib V17    -0.04590367825929898
#>     Attrib V18    -0.03392194575345299
#>     Attrib V19    0.053550926554477705
#>     Attrib V2    0.12244342039026565
#>     Attrib V20    -0.007041128151496301
#>     Attrib V21    -0.040270693041354215
#>     Attrib V22    -0.035414948104054066
#>     Attrib V23    -0.06742637839471974
#>     Attrib V24    0.05018015711784396
#>     Attrib V25    -0.05313969815777305
#>     Attrib V26    3.8952571641990197E-4
#>     Attrib V27    -0.01969773045662729
#>     Attrib V28    -0.015321160494529203
#>     Attrib V29    -0.023950545684569904
#>     Attrib V3    0.054645096271473265
#>     Attrib V30    0.12818453807664895
#>     Attrib V31    0.013443988956545699
#>     Attrib V32    0.03340607042021088
#>     Attrib V33    0.13708413243815126
#>     Attrib V34    0.06059877651845813
#>     Attrib V35    0.17293494587195288
#>     Attrib V36    -0.08004667056529811
#>     Attrib V37    -0.06897377378187028
#>     Attrib V38    0.1421020740742036
#>     Attrib V39    0.1534964511668485
#>     Attrib V4    0.07472955624286268
#>     Attrib V40    -0.00847718529031193
#>     Attrib V41    0.06021109293904993
#>     Attrib V42    0.012039249535948711
#>     Attrib V43    0.06633602175834792
#>     Attrib V44    0.07030640129125637
#>     Attrib V45    0.12765597017805294
#>     Attrib V46    0.05152539616865222
#>     Attrib V47    0.001370595055041114
#>     Attrib V48    0.14302673122326
#>     Attrib V49    0.09188499255582985
#>     Attrib V5    0.04603172664249098
#>     Attrib V50    -0.06495005805186366
#>     Attrib V51    0.08271881474576297
#>     Attrib V52    0.05298809805162106
#>     Attrib V53    0.053090583597974556
#>     Attrib V54    -0.009389452267044868
#>     Attrib V55    0.1058797180053258
#>     Attrib V56    0.09099422787071254
#>     Attrib V57    0.0770063086224462
#>     Attrib V58    0.03421512171603534
#>     Attrib V59    0.05838846075904173
#>     Attrib V6    -0.029779038363326193
#>     Attrib V60    0.008949538433488568
#>     Attrib V7    -0.09698494874848125
#>     Attrib V8    0.057061613500230375
#>     Attrib V9    0.1495666741978405
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.13737588028699851
#>     Attrib V1    0.0822320331909704
#>     Attrib V10    0.09718382639842277
#>     Attrib V11    0.0886417623785767
#>     Attrib V12    0.049095628137524515
#>     Attrib V13    0.06099908854325303
#>     Attrib V14    0.010506562218356913
#>     Attrib V15    -0.01936493527473311
#>     Attrib V16    -0.025821369146005167
#>     Attrib V17    -0.06926911636423126
#>     Attrib V18    0.03710687979375006
#>     Attrib V19    0.012911843147487721
#>     Attrib V2    0.08595339592295986
#>     Attrib V20    0.05941039041539362
#>     Attrib V21    0.04269906923912721
#>     Attrib V22    -0.05464650918546893
#>     Attrib V23    -0.010216288910980446
#>     Attrib V24    0.03290740410765088
#>     Attrib V25    0.0014399283061733968
#>     Attrib V26    0.031731605688274135
#>     Attrib V27    -0.029533038886442858
#>     Attrib V28    -0.04856008477311503
#>     Attrib V29    -0.03710854230856376
#>     Attrib V3    0.12698893415108792
#>     Attrib V30    0.029945359845838595
#>     Attrib V31    -0.0765983296468477
#>     Attrib V32    0.03720524125681951
#>     Attrib V33    0.09612372515443458
#>     Attrib V34    0.11256830685772846
#>     Attrib V35    0.09909951608659529
#>     Attrib V36    -0.00864738723311482
#>     Attrib V37    -0.07978546295409117
#>     Attrib V38    0.06165653965492447
#>     Attrib V39    0.13912279165383318
#>     Attrib V4    0.05623504867123883
#>     Attrib V40    -0.008457466493154202
#>     Attrib V41    -0.004810935545816281
#>     Attrib V42    0.035821033631076936
#>     Attrib V43    0.024883010806421753
#>     Attrib V44    0.07114404214038454
#>     Attrib V45    0.046615154462190785
#>     Attrib V46    0.06266639414791746
#>     Attrib V47    0.08752584104796207
#>     Attrib V48    0.0994311497574973
#>     Attrib V49    0.14262722694305455
#>     Attrib V5    0.05970815200697401
#>     Attrib V50    -0.09860021834265745
#>     Attrib V51    0.12842631451317757
#>     Attrib V52    0.06399215454422755
#>     Attrib V53    0.0827327584190417
#>     Attrib V54    -0.009270485192897441
#>     Attrib V55    0.09283801025865822
#>     Attrib V56    0.1010281990446985
#>     Attrib V57    -0.0032461248926592733
#>     Attrib V58    0.06644586001525349
#>     Attrib V59    0.13645337962346105
#>     Attrib V6    -0.068184389785817
#>     Attrib V60    0.05762809322294621
#>     Attrib V7    -0.018269039882616932
#>     Attrib V8    0.05012071554478792
#>     Attrib V9    0.13516027564623756
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.39512693329809584
#>     Attrib V1    0.3169131224010963
#>     Attrib V10    0.4296440249707611
#>     Attrib V11    0.5214262708086056
#>     Attrib V12    0.5231362208411796
#>     Attrib V13    0.44927294860479594
#>     Attrib V14    -0.06616747554226445
#>     Attrib V15    -0.06515466105638869
#>     Attrib V16    -0.34792370476166323
#>     Attrib V17    -0.39163573554361897
#>     Attrib V18    -0.10663717874314736
#>     Attrib V19    0.5172429277266979
#>     Attrib V2    0.24981499238581528
#>     Attrib V20    0.5582881382509944
#>     Attrib V21    0.5736333972596922
#>     Attrib V22    0.4141419884886563
#>     Attrib V23    0.6329616432677243
#>     Attrib V24    0.8452542084468816
#>     Attrib V25    0.023078217100262772
#>     Attrib V26    0.19333462471872057
#>     Attrib V27    -0.004385735914318399
#>     Attrib V28    0.10659154799324763
#>     Attrib V29    0.08728181525869176
#>     Attrib V3    0.10958616549883746
#>     Attrib V30    0.2285565270641353
#>     Attrib V31    -0.9664315043029527
#>     Attrib V32    -0.24435238917244162
#>     Attrib V33    0.20424306781022228
#>     Attrib V34    0.11044359628524024
#>     Attrib V35    0.4616594197130066
#>     Attrib V36    -0.7691887309750611
#>     Attrib V37    -0.6595041548745653
#>     Attrib V38    0.2471844907036166
#>     Attrib V39    0.2567058302513864
#>     Attrib V4    0.13781419669948206
#>     Attrib V40    -0.2191584651523718
#>     Attrib V41    0.19030123473948923
#>     Attrib V42    0.43417497624268797
#>     Attrib V43    0.14980027909273239
#>     Attrib V44    0.12144376511837768
#>     Attrib V45    0.5053506839194134
#>     Attrib V46    0.5371363557459322
#>     Attrib V47    0.08875008294002018
#>     Attrib V48    0.14101232418874304
#>     Attrib V49    0.7040134269201895
#>     Attrib V5    0.05007949719872291
#>     Attrib V50    -0.7428984042591292
#>     Attrib V51    0.029968828001398017
#>     Attrib V52    0.10356522941488537
#>     Attrib V53    0.46566157955502735
#>     Attrib V54    -0.1129519239587702
#>     Attrib V55    -0.08242944223531312
#>     Attrib V56    0.006532686697530163
#>     Attrib V57    -0.2624012738703607
#>     Attrib V58    0.18713994218114752
#>     Attrib V59    0.4201728036883445
#>     Attrib V6    -0.44528823667572626
#>     Attrib V60    0.1069538624007186
#>     Attrib V7    -0.4589999127017725
#>     Attrib V8    -0.2028180835305593
#>     Attrib V9    0.5941074635396332
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.2703075111820633
#>     Attrib V1    0.2913166891362586
#>     Attrib V10    0.2033440009253469
#>     Attrib V11    0.279375804200159
#>     Attrib V12    0.240188449790687
#>     Attrib V13    0.3782082775468396
#>     Attrib V14    0.15290580174771942
#>     Attrib V15    0.2320087424292863
#>     Attrib V16    -0.11650124264535486
#>     Attrib V17    -0.10544990825368047
#>     Attrib V18    0.07288642334590066
#>     Attrib V19    0.4810417230774681
#>     Attrib V2    0.1446091888315368
#>     Attrib V20    0.6905337426151529
#>     Attrib V21    0.6784683970017142
#>     Attrib V22    0.29768660329916197
#>     Attrib V23    0.36594424363237366
#>     Attrib V24    0.44056425858198894
#>     Attrib V25    -0.5093097036880001
#>     Attrib V26    -0.29789337712139496
#>     Attrib V27    -0.16367352338134988
#>     Attrib V28    0.0596000366538308
#>     Attrib V29    0.22657530917367985
#>     Attrib V3    0.18624253988780134
#>     Attrib V30    0.2439608334837894
#>     Attrib V31    -1.2741701236563177
#>     Attrib V32    -0.7979865080415021
#>     Attrib V33    -0.3703454576712251
#>     Attrib V34    -0.2566094990059688
#>     Attrib V35    0.33154314956838227
#>     Attrib V36    -0.37484525713052497
#>     Attrib V37    -0.1696319954257491
#>     Attrib V38    0.8182684382356232
#>     Attrib V39    0.3388262864829139
#>     Attrib V4    0.11582112825069496
#>     Attrib V40    -0.5518339088953396
#>     Attrib V41    -0.36595056985281904
#>     Attrib V42    0.3061850132443059
#>     Attrib V43    0.6060469058228484
#>     Attrib V44    0.8905795595398951
#>     Attrib V45    0.8857797173497318
#>     Attrib V46    0.6360114304877335
#>     Attrib V47    0.07396944341829158
#>     Attrib V48    -0.05029395285561023
#>     Attrib V49    0.38427056052545866
#>     Attrib V5    0.0428219184005354
#>     Attrib V50    -0.7096168982733332
#>     Attrib V51    -0.04358924950731298
#>     Attrib V52    0.058469599719170776
#>     Attrib V53    0.564180899222064
#>     Attrib V54    0.2449013678109399
#>     Attrib V55    -0.07509488693223754
#>     Attrib V56    0.1703499127807628
#>     Attrib V57    -0.057662929502657286
#>     Attrib V58    0.12079446359946126
#>     Attrib V59    0.47548255949555185
#>     Attrib V6    -0.6933602520456077
#>     Attrib V60    -0.007156902684357177
#>     Attrib V7    -0.3805126821229705
#>     Attrib V8    -0.3813679092302588
#>     Attrib V9    0.271268401482349
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.4406149224415555
#>     Attrib V1    -0.3863720607677489
#>     Attrib V10    -0.5348641374819262
#>     Attrib V11    -0.7203885227408358
#>     Attrib V12    -0.8814091044918647
#>     Attrib V13    -0.8003279842018425
#>     Attrib V14    -0.04289255224316223
#>     Attrib V15    0.014565684182540822
#>     Attrib V16    0.3634352554459689
#>     Attrib V17    0.6072102638013427
#>     Attrib V18    0.21707955249399435
#>     Attrib V19    -0.4237603948531221
#>     Attrib V2    -0.4078623344345306
#>     Attrib V20    -0.23805642883202335
#>     Attrib V21    -0.296237566717776
#>     Attrib V22    -0.2811510353088277
#>     Attrib V23    -0.7189669499752692
#>     Attrib V24    -1.092182065913623
#>     Attrib V25    -0.032676258306679334
#>     Attrib V26    0.008106738045619115
#>     Attrib V27    0.17355750961477417
#>     Attrib V28    -0.06989310213819012
#>     Attrib V29    0.025405684218793714
#>     Attrib V3    -0.22515768005611403
#>     Attrib V30    -0.05595379137329009
#>     Attrib V31    0.858625909029104
#>     Attrib V32    -0.1947012547275277
#>     Attrib V33    -0.36842648831310404
#>     Attrib V34    -0.09814463460354664
#>     Attrib V35    -0.2374747201467577
#>     Attrib V36    1.5445292243657966
#>     Attrib V37    1.3091786192178767
#>     Attrib V38    0.08677811212608905
#>     Attrib V39    -0.16303063053392858
#>     Attrib V4    -0.061019580030114665
#>     Attrib V40    0.3567599330506426
#>     Attrib V41    -0.36503128068291557
#>     Attrib V42    -0.4745413677173466
#>     Attrib V43    0.08442832597377618
#>     Attrib V44    0.4507014935857887
#>     Attrib V45    -0.12264461105966531
#>     Attrib V46    -0.4708346587031951
#>     Attrib V47    -0.15982199130560565
#>     Attrib V48    -0.24828887496810206
#>     Attrib V49    -0.7459519212962091
#>     Attrib V5    -0.06990819665848107
#>     Attrib V50    1.0005966684168401
#>     Attrib V51    -0.09967009925761783
#>     Attrib V52    -0.1425305883739064
#>     Attrib V53    -0.5892601873572132
#>     Attrib V54    -0.0014389943863918509
#>     Attrib V55    -0.08703466193509025
#>     Attrib V56    -0.22355306887617915
#>     Attrib V57    0.17752201748207216
#>     Attrib V58    -0.4343568068092534
#>     Attrib V59    -0.4652488938747564
#>     Attrib V6    0.3704665421068248
#>     Attrib V60    0.02130185056867201
#>     Attrib V7    0.6031047741814582
#>     Attrib V8    0.31195456001303146
#>     Attrib V9    -0.5467241139258471
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.01298480287576531
#>     Attrib V1    0.3518538690804693
#>     Attrib V10    0.04133831953901089
#>     Attrib V11    0.17108807380435215
#>     Attrib V12    0.18681758189247863
#>     Attrib V13    0.29223874935217703
#>     Attrib V14    0.19032165518273564
#>     Attrib V15    0.1463480962671937
#>     Attrib V16    -0.015624260887355686
#>     Attrib V17    -0.09142621469058913
#>     Attrib V18    -0.004072048707597136
#>     Attrib V19    0.2650130717097895
#>     Attrib V2    0.1759300648107682
#>     Attrib V20    0.5089395459982253
#>     Attrib V21    0.4215674957912991
#>     Attrib V22    0.05972308685397318
#>     Attrib V23    0.14978121459482593
#>     Attrib V24    0.4788836017180655
#>     Attrib V25    -0.05501635951035757
#>     Attrib V26    -0.23147823205944032
#>     Attrib V27    -0.4701140539881468
#>     Attrib V28    -0.4814947979314712
#>     Attrib V29    -0.3326117752275861
#>     Attrib V3    0.20499768364389218
#>     Attrib V30    -0.03319789156205416
#>     Attrib V31    -0.5147848315478002
#>     Attrib V32    -0.20200497393238054
#>     Attrib V33    0.08429338700832176
#>     Attrib V34    0.10758082880411833
#>     Attrib V35    0.22866726818392677
#>     Attrib V36    -0.40864997079904636
#>     Attrib V37    -0.4314667120353707
#>     Attrib V38    0.30053544267759513
#>     Attrib V39    0.24376078104533513
#>     Attrib V4    0.14066797550591673
#>     Attrib V40    -0.23442574993906826
#>     Attrib V41    -0.21049403181633794
#>     Attrib V42    0.23804981869678943
#>     Attrib V43    0.24506040810528434
#>     Attrib V44    0.05926427304632314
#>     Attrib V45    0.27138517285361746
#>     Attrib V46    0.2832649357320157
#>     Attrib V47    0.01341881051024413
#>     Attrib V48    0.1088702063229961
#>     Attrib V49    0.2771852375040815
#>     Attrib V5    0.031005279726376282
#>     Attrib V50    -0.3626133677620453
#>     Attrib V51    -0.0036496192160287958
#>     Attrib V52    -0.010553158457861674
#>     Attrib V53    0.27023206293971286
#>     Attrib V54    0.30733525332271516
#>     Attrib V55    0.21789027240280007
#>     Attrib V56    0.35174064572171976
#>     Attrib V57    0.11468959441935137
#>     Attrib V58    0.2373451503933255
#>     Attrib V59    0.4809573833573822
#>     Attrib V6    -0.44111084315285487
#>     Attrib V60    0.05873132627796549
#>     Attrib V7    -0.21862143751967006
#>     Attrib V8    -0.1790949371852964
#>     Attrib V9    0.1594604039468362
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.13481097328432676
#>     Attrib V1    0.5366604321115703
#>     Attrib V10    -0.07098830602564507
#>     Attrib V11    0.19604692701903742
#>     Attrib V12    0.21119108394791142
#>     Attrib V13    0.3896225861330544
#>     Attrib V14    0.2816659255451936
#>     Attrib V15    0.38655349321335747
#>     Attrib V16    -0.09531361655201225
#>     Attrib V17    -0.08738413712361719
#>     Attrib V18    -0.031556605300724766
#>     Attrib V19    0.308783982803659
#>     Attrib V2    0.21156284104512996
#>     Attrib V20    0.7723601039260325
#>     Attrib V21    0.7299077740551354
#>     Attrib V22    0.22971780792576982
#>     Attrib V23    0.27901592499268885
#>     Attrib V24    0.5717778231292898
#>     Attrib V25    -0.12158531310259643
#>     Attrib V26    -0.3062553096155466
#>     Attrib V27    -0.6038466476525218
#>     Attrib V28    -0.5653496582064461
#>     Attrib V29    -0.43840309202764843
#>     Attrib V3    0.3911292311018386
#>     Attrib V30    -0.07732724289564111
#>     Attrib V31    -1.0268841609061903
#>     Attrib V32    -0.7060951098610825
#>     Attrib V33    -0.24861487492839643
#>     Attrib V34    -0.13619259116493773
#>     Attrib V35    0.24097189312847883
#>     Attrib V36    -0.48700198341220025
#>     Attrib V37    -0.3807033428439027
#>     Attrib V38    0.6093353720589406
#>     Attrib V39    0.4137118000795725
#>     Attrib V4    0.21956021256242167
#>     Attrib V40    -0.4631030115099361
#>     Attrib V41    -0.39203363673708025
#>     Attrib V42    0.36112084239438447
#>     Attrib V43    0.4099128385433885
#>     Attrib V44    0.2908094621332422
#>     Attrib V45    0.6615254025024785
#>     Attrib V46    0.48341523756324517
#>     Attrib V47    0.16871954163958466
#>     Attrib V48    0.003780208174585762
#>     Attrib V49    0.3109283231372105
#>     Attrib V5    0.05420514607300093
#>     Attrib V50    -0.4878487752114003
#>     Attrib V51    -0.10680436863528522
#>     Attrib V52    -0.023574253615643293
#>     Attrib V53    0.6207539706232106
#>     Attrib V54    0.5972605786777804
#>     Attrib V55    0.20287083719096202
#>     Attrib V56    0.5201047681424723
#>     Attrib V57    0.26726528856466414
#>     Attrib V58    0.2347444767513765
#>     Attrib V59    0.7324152919369026
#>     Attrib V6    -0.6103776404568831
#>     Attrib V60    0.0730198021399294
#>     Attrib V7    -0.1494960909434396
#>     Attrib V8    -0.22159738022133155
#>     Attrib V9    0.090894230008277
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.4860526010362554
#>     Attrib V1    -0.28318023235272705
#>     Attrib V10    -0.482223672967732
#>     Attrib V11    -0.6396742363687782
#>     Attrib V12    -0.7058479642907637
#>     Attrib V13    -0.6412704067189795
#>     Attrib V14    0.02543997783665882
#>     Attrib V15    0.09406488877928297
#>     Attrib V16    0.21474330649653503
#>     Attrib V17    0.44400685364818604
#>     Attrib V18    0.12106547115923831
#>     Attrib V19    -0.31810062744440726
#>     Attrib V2    -0.24977650064893417
#>     Attrib V20    -0.1491352295004057
#>     Attrib V21    -0.18075032446503314
#>     Attrib V22    -0.09667488679886296
#>     Attrib V23    -0.3236180507730726
#>     Attrib V24    -0.6867022476605191
#>     Attrib V25    0.0774732122159743
#>     Attrib V26    0.013084349640817717
#>     Attrib V27    0.09460060861701847
#>     Attrib V28    -0.06473388973084482
#>     Attrib V29    -0.05818654919478928
#>     Attrib V3    -0.036596313402303744
#>     Attrib V30    -0.16196131029362923
#>     Attrib V31    0.5753788116270476
#>     Attrib V32    -0.07739821532461263
#>     Attrib V33    -0.2915460844210602
#>     Attrib V34    -0.1461223959342858
#>     Attrib V35    -0.3915194400781739
#>     Attrib V36    0.9526175578894401
#>     Attrib V37    0.6874864719131839
#>     Attrib V38    -0.13779275835792837
#>     Attrib V39    -0.2817447903381456
#>     Attrib V4    0.06265788709263004
#>     Attrib V40    0.21421347218084194
#>     Attrib V41    -0.2553579107084922
#>     Attrib V42    -0.21687349343344314
#>     Attrib V43    0.11110891187155099
#>     Attrib V44    0.14537716818465513
#>     Attrib V45    -0.25185171607067564
#>     Attrib V46    -0.32485693522275344
#>     Attrib V47    0.003506313106318463
#>     Attrib V48    -0.253566048342822
#>     Attrib V49    -0.6129716989455067
#>     Attrib V5    -0.0034242820121894845
#>     Attrib V50    0.7846573259839024
#>     Attrib V51    -0.034921304839138544
#>     Attrib V52    -0.05574434514938569
#>     Attrib V53    -0.46427744294409407
#>     Attrib V54    0.05732454512336279
#>     Attrib V55    -0.07144230364283542
#>     Attrib V56    -0.03686289707949457
#>     Attrib V57    0.17353184840555683
#>     Attrib V58    -0.27785328463854797
#>     Attrib V59    -0.24709470404510564
#>     Attrib V6    0.34243148604469825
#>     Attrib V60    0.044116694562723595
#>     Attrib V7    0.4224957839923979
#>     Attrib V8    0.21581223622978385
#>     Attrib V9    -0.4390853414427378
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.741918337715129
#>     Attrib V1    0.16992726213599949
#>     Attrib V10    1.3535039905410262
#>     Attrib V11    0.927637979267986
#>     Attrib V12    0.6171265908076338
#>     Attrib V13    0.11239412947751445
#>     Attrib V14    -0.5513882068357957
#>     Attrib V15    -0.4426935327847254
#>     Attrib V16    -0.26689375923568587
#>     Attrib V17    -0.7029605982387647
#>     Attrib V18    -0.0441613668064737
#>     Attrib V19    0.3348913022345781
#>     Attrib V2    0.5558660863993733
#>     Attrib V20    -0.1677307899851858
#>     Attrib V21    0.2862348340804176
#>     Attrib V22    0.7774379674527184
#>     Attrib V23    0.9325682336985537
#>     Attrib V24    0.38195753916563385
#>     Attrib V25    -0.7359889351480471
#>     Attrib V26    0.4870830845016919
#>     Attrib V27    1.2697316151188454
#>     Attrib V28    1.8053630718698646
#>     Attrib V29    1.5919848349232129
#>     Attrib V3    -0.061223801604421646
#>     Attrib V30    0.5980220216238512
#>     Attrib V31    -1.184938291478625
#>     Attrib V32    -0.24954524232455433
#>     Attrib V33    -0.520040854424925
#>     Attrib V34    -0.5727877998724268
#>     Attrib V35    0.1561753118644661
#>     Attrib V36    -1.337149265921085
#>     Attrib V37    -0.40052434374398177
#>     Attrib V38    -0.11075209513934772
#>     Attrib V39    0.35602207960076465
#>     Attrib V4    0.134989787075004
#>     Attrib V40    0.33508833475424643
#>     Attrib V41    1.1051416690042901
#>     Attrib V42    0.20411731846851008
#>     Attrib V43    0.17014814030499528
#>     Attrib V44    1.0315475026707872
#>     Attrib V45    0.6700329256335182
#>     Attrib V46    1.0389752656064777
#>     Attrib V47    0.5722448526368707
#>     Attrib V48    0.6219044930277373
#>     Attrib V49    1.0780261957116157
#>     Attrib V5    0.37682216683497377
#>     Attrib V50    -0.5678745060514028
#>     Attrib V51    0.3525096128982861
#>     Attrib V52    0.8181080234137916
#>     Attrib V53    1.1178942462350094
#>     Attrib V54    -0.38254378539477807
#>     Attrib V55    -0.894873337208718
#>     Attrib V56    -0.6798709106355669
#>     Attrib V57    -0.31173293661966867
#>     Attrib V58    0.24758169383126064
#>     Attrib V59    -0.46692856938683913
#>     Attrib V6    0.45627612913562515
#>     Attrib V60    0.10827770369720637
#>     Attrib V7    -0.437753369220433
#>     Attrib V8    -0.29561413271963466
#>     Attrib V9    1.1671900270609241
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.20566388875801517
#>     Attrib V1    0.03585398624587329
#>     Attrib V10    0.008355708556743151
#>     Attrib V11    -0.04076724608129909
#>     Attrib V12    -0.004885522096073938
#>     Attrib V13    -0.034209268260048026
#>     Attrib V14    0.05744976189797183
#>     Attrib V15    0.009362843194331163
#>     Attrib V16    0.005965328218765651
#>     Attrib V17    0.04938558794765142
#>     Attrib V18    -0.026033350656661833
#>     Attrib V19    0.05040846344719974
#>     Attrib V2    0.07312806993607943
#>     Attrib V20    0.0026533694618856283
#>     Attrib V21    -0.009431410807765477
#>     Attrib V22    -0.04167326164999475
#>     Attrib V23    -0.023854099300258585
#>     Attrib V24    -0.03767839464124293
#>     Attrib V25    -0.02158082184953293
#>     Attrib V26    -0.0442698079769006
#>     Attrib V27    -0.017618581841531186
#>     Attrib V28    -0.022101113973331123
#>     Attrib V29    -0.014953106361665493
#>     Attrib V3    0.058779049144288616
#>     Attrib V30    0.0018844205997582987
#>     Attrib V31    -0.02581628131409332
#>     Attrib V32    0.007957039332250164
#>     Attrib V33    0.08631763809410149
#>     Attrib V34    0.04546702610535811
#>     Attrib V35    0.10912961996328958
#>     Attrib V36    0.0908993641582081
#>     Attrib V37    0.0947546046755811
#>     Attrib V38    0.017800960020409273
#>     Attrib V39    0.06368943724497382
#>     Attrib V4    0.12764657189613327
#>     Attrib V40    0.04517559434312453
#>     Attrib V41    0.030645370140790915
#>     Attrib V42    0.04926256489328333
#>     Attrib V43    0.04671762768537219
#>     Attrib V44    0.03121803087040573
#>     Attrib V45    0.0259987250933583
#>     Attrib V46    0.02428243964968929
#>     Attrib V47    0.03122558859541925
#>     Attrib V48    0.08359567572129517
#>     Attrib V49    0.025318142529602024
#>     Attrib V5    0.04316804079312341
#>     Attrib V50    0.06583646401516129
#>     Attrib V51    0.05389714821959021
#>     Attrib V52    0.053448072382294855
#>     Attrib V53    0.028594861720273968
#>     Attrib V54    0.019051813668891145
#>     Attrib V55    0.04621472846915549
#>     Attrib V56    0.08942323732110813
#>     Attrib V57    0.09393746110734709
#>     Attrib V58    0.05943264585985479
#>     Attrib V59    0.08568696672336391
#>     Attrib V6    0.08092200871734641
#>     Attrib V60    0.08973807718368357
#>     Attrib V7    5.891589319869299E-4
#>     Attrib V8    0.06979270802985214
#>     Attrib V9    0.042373100917769434
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.38176906083676443
#>     Attrib V1    0.3491774040942962
#>     Attrib V10    0.30407445477604694
#>     Attrib V11    0.40833608441844005
#>     Attrib V12    0.3165271755615517
#>     Attrib V13    0.41403645270490924
#>     Attrib V14    -7.698059455284669E-4
#>     Attrib V15    0.1255412236899108
#>     Attrib V16    -0.14063252606610463
#>     Attrib V17    -0.19804290253496373
#>     Attrib V18    0.06946765030383768
#>     Attrib V19    0.43556575685987625
#>     Attrib V2    0.18174922474276844
#>     Attrib V20    0.5483181124134888
#>     Attrib V21    0.5505992245324128
#>     Attrib V22    0.21995320170058272
#>     Attrib V23    0.28152093106881765
#>     Attrib V24    0.4783543700963449
#>     Attrib V25    -0.36890994658595483
#>     Attrib V26    -0.0860103348808563
#>     Attrib V27    -0.13663537522756652
#>     Attrib V28    0.011037245659962199
#>     Attrib V29    0.14122734960962557
#>     Attrib V3    0.13337162729425758
#>     Attrib V30    0.24783294398022318
#>     Attrib V31    -1.1057275193481784
#>     Attrib V32    -0.6133046652093814
#>     Attrib V33    -0.27396540047290524
#>     Attrib V34    -0.1327411234548993
#>     Attrib V35    0.3764470555698607
#>     Attrib V36    -0.47621391925375656
#>     Attrib V37    -0.25331599277370453
#>     Attrib V38    0.664124168872672
#>     Attrib V39    0.3433559007576676
#>     Attrib V4    0.084905514380435
#>     Attrib V40    -0.5485311025102315
#>     Attrib V41    -0.27025559466335136
#>     Attrib V42    0.27391456863037605
#>     Attrib V43    0.3796725064040437
#>     Attrib V44    0.7008738112419132
#>     Attrib V45    0.8281062372058235
#>     Attrib V46    0.5594418832327027
#>     Attrib V47    0.04324712423645813
#>     Attrib V48    0.00882178148624103
#>     Attrib V49    0.38006526740939817
#>     Attrib V5    -1.6880676905482936E-4
#>     Attrib V50    -0.6236050298526639
#>     Attrib V51    -0.052237305818096436
#>     Attrib V52    0.06132696309366469
#>     Attrib V53    0.5980382035913314
#>     Attrib V54    0.2039877896683098
#>     Attrib V55    -0.060173265171731376
#>     Attrib V56    0.036253000076769
#>     Attrib V57    -0.06508559052626445
#>     Attrib V58    0.08024155776695772
#>     Attrib V59    0.418893602005054
#>     Attrib V6    -0.5752402387302105
#>     Attrib V60    0.05275491797166629
#>     Attrib V7    -0.44859568515796905
#>     Attrib V8    -0.32588647920710445
#>     Attrib V9    0.3461103659664203
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.828645536148551
#>     Attrib V1    -0.23751620628315034
#>     Attrib V10    -1.4095788886050562
#>     Attrib V11    -0.9624690050362422
#>     Attrib V12    -0.669216586057816
#>     Attrib V13    -0.1596913448237719
#>     Attrib V14    0.5601649866646622
#>     Attrib V15    0.42325095525545486
#>     Attrib V16    0.28817731919598794
#>     Attrib V17    0.7018090512143464
#>     Attrib V18    0.12185619535375627
#>     Attrib V19    -0.42481512628980567
#>     Attrib V2    -0.5755203957803057
#>     Attrib V20    0.13097640534914193
#>     Attrib V21    -0.2949359213353428
#>     Attrib V22    -0.6875215792862694
#>     Attrib V23    -0.8503610689056104
#>     Attrib V24    -0.4470164294403272
#>     Attrib V25    0.630135725848413
#>     Attrib V26    -0.45571064037678966
#>     Attrib V27    -1.1395086192919623
#>     Attrib V28    -1.7565179836670723
#>     Attrib V29    -1.511320797285115
#>     Attrib V3    0.13929178243644924
#>     Attrib V30    -0.5821990135974151
#>     Attrib V31    1.1559163157236931
#>     Attrib V32    0.2957196169023674
#>     Attrib V33    0.4516849721698096
#>     Attrib V34    0.5838033162372187
#>     Attrib V35    -0.18704379949778036
#>     Attrib V36    1.3561588790994876
#>     Attrib V37    0.38527429346806974
#>     Attrib V38    0.012704722047556478
#>     Attrib V39    -0.3589248360221943
#>     Attrib V4    -0.06756293552007879
#>     Attrib V40    -0.3089889369276379
#>     Attrib V41    -1.0482892223555043
#>     Attrib V42    -0.19337312274077254
#>     Attrib V43    -0.14135868861037673
#>     Attrib V44    -0.9826516620612558
#>     Attrib V45    -0.6425218219230837
#>     Attrib V46    -1.0110214370072705
#>     Attrib V47    -0.5985147642689717
#>     Attrib V48    -0.660193970170385
#>     Attrib V49    -1.0879979652073695
#>     Attrib V5    -0.3714767844967128
#>     Attrib V50    0.6479810921897879
#>     Attrib V51    -0.35153643604366414
#>     Attrib V52    -0.6730935650683665
#>     Attrib V53    -1.1610166366737253
#>     Attrib V54    0.3961829061784797
#>     Attrib V55    0.8394286886425182
#>     Attrib V56    0.6383682539477368
#>     Attrib V57    0.24962298700994975
#>     Attrib V58    -0.2577133742115252
#>     Attrib V59    0.4213375367087198
#>     Attrib V6    -0.40861438211596324
#>     Attrib V60    -0.11767974410639072
#>     Attrib V7    0.41942880013490286
#>     Attrib V8    0.3512820939951453
#>     Attrib V9    -1.0579081130480799
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.036442564122781136
#>     Attrib V1    0.12037609777259778
#>     Attrib V10    0.07938266015708036
#>     Attrib V11    0.25683428511479994
#>     Attrib V12    0.2647728763744607
#>     Attrib V13    0.2595390024556483
#>     Attrib V14    0.1110828951936529
#>     Attrib V15    0.012045840131779176
#>     Attrib V16    -0.12855806593044078
#>     Attrib V17    -0.1384304489904388
#>     Attrib V18    -0.003848395469223876
#>     Attrib V19    0.2256298828871357
#>     Attrib V2    0.07084007848392185
#>     Attrib V20    0.342464015426183
#>     Attrib V21    0.283097016569196
#>     Attrib V22    0.09134633170493439
#>     Attrib V23    0.12503870637397704
#>     Attrib V24    0.36222318205143
#>     Attrib V25    0.07278450883248172
#>     Attrib V26    -0.04692925619245029
#>     Attrib V27    -0.20839620151643673
#>     Attrib V28    -0.207063261490393
#>     Attrib V29    -0.13517310688525627
#>     Attrib V3    0.11972124312794832
#>     Attrib V30    0.0035838013459327076
#>     Attrib V31    -0.3035352759678467
#>     Attrib V32    0.03979935093430896
#>     Attrib V33    0.22068866168440418
#>     Attrib V34    0.18479245085611243
#>     Attrib V35    0.2650688124373969
#>     Attrib V36    -0.3342635570300041
#>     Attrib V37    -0.35227672353300993
#>     Attrib V38    0.13164412158952965
#>     Attrib V39    0.1964325468027768
#>     Attrib V4    0.0487340424941947
#>     Attrib V40    -0.11870147139836063
#>     Attrib V41    0.006042122308771831
#>     Attrib V42    0.1038333924599745
#>     Attrib V43    0.09335219891471853
#>     Attrib V44    -0.10964988848325415
#>     Attrib V45    0.16206871949165383
#>     Attrib V46    0.13217704339845415
#>     Attrib V47    0.0370024754498538
#>     Attrib V48    0.09478659522060108
#>     Attrib V49    0.23101013051259078
#>     Attrib V5    -0.036611786861422295
#>     Attrib V50    -0.2596961491114827
#>     Attrib V51    0.07514192856160164
#>     Attrib V52    0.06344868630190868
#>     Attrib V53    0.13160696692016183
#>     Attrib V54    0.028787541054550114
#>     Attrib V55    0.18487986599272338
#>     Attrib V56    0.14832669131583817
#>     Attrib V57    -0.017927911823946745
#>     Attrib V58    0.0959231167849341
#>     Attrib V59    0.23578462989144247
#>     Attrib V6    -0.27102581458460434
#>     Attrib V60    -0.009442557392232336
#>     Attrib V7    -0.2485313152486316
#>     Attrib V8    -0.04844181516766891
#>     Attrib V9    0.20196242422179178
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    0.03498633530066107
#>     Attrib V1    0.1774132855709103
#>     Attrib V10    0.1483908118914423
#>     Attrib V11    0.21100439094799112
#>     Attrib V12    0.2554782127461065
#>     Attrib V13    0.2780662095111191
#>     Attrib V14    0.032607256993798225
#>     Attrib V15    8.349908373024485E-4
#>     Attrib V16    -0.10547856088619363
#>     Attrib V17    -0.07705169661394205
#>     Attrib V18    -0.0022903586791450676
#>     Attrib V19    0.213507292709586
#>     Attrib V2    0.10378516474152637
#>     Attrib V20    0.23068921389533606
#>     Attrib V21    0.22703683050327678
#>     Attrib V22    0.03037298893808306
#>     Attrib V23    0.1499096275072624
#>     Attrib V24    0.29982213253044293
#>     Attrib V25    0.07256527959235864
#>     Attrib V26    0.035220042124781595
#>     Attrib V27    -0.19676495988102186
#>     Attrib V28    -0.17393044130482835
#>     Attrib V29    -0.21141972135078024
#>     Attrib V3    0.06378839844413488
#>     Attrib V30    0.08962892190067596
#>     Attrib V31    -0.19945739538483329
#>     Attrib V32    0.02687834062149626
#>     Attrib V33    0.17435406718055035
#>     Attrib V34    0.1516211478001273
#>     Attrib V35    0.2658423175227743
#>     Attrib V36    -0.30116925814735385
#>     Attrib V37    -0.30843508812872616
#>     Attrib V38    0.10528000062024885
#>     Attrib V39    0.24037495145131982
#>     Attrib V4    0.10042881610678324
#>     Attrib V40    -0.0857963234670462
#>     Attrib V41    9.087355160057584E-4
#>     Attrib V42    0.14176177216738692
#>     Attrib V43    0.015822480778222354
#>     Attrib V44    -0.10253642963952675
#>     Attrib V45    0.10613338529912858
#>     Attrib V46    0.08695350496824811
#>     Attrib V47    -0.03799630301900613
#>     Attrib V48    0.12252051554931205
#>     Attrib V49    0.21823097526416824
#>     Attrib V5    -0.052031604858158956
#>     Attrib V50    -0.28698505750311054
#>     Attrib V51    0.03813921493861679
#>     Attrib V52    0.0335197727623466
#>     Attrib V53    0.15503237761982602
#>     Attrib V54    0.03754808709846658
#>     Attrib V55    0.10439269578664195
#>     Attrib V56    0.1648546975752585
#>     Attrib V57    -0.055820238412331656
#>     Attrib V58    0.14454338520584317
#>     Attrib V59    0.29600330010999865
#>     Attrib V6    -0.2549258299619393
#>     Attrib V60    0.011621871899393926
#>     Attrib V7    -0.2579691204287944
#>     Attrib V8    -0.07279855273948375
#>     Attrib V9    0.17267189454091947
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.022026141466282154
#>     Attrib V1    0.40342904827176856
#>     Attrib V10    -0.004257137784999979
#>     Attrib V11    0.20330118401921507
#>     Attrib V12    0.14725852896155367
#>     Attrib V13    0.3786780095498876
#>     Attrib V14    0.2670176092362745
#>     Attrib V15    0.31799854360480573
#>     Attrib V16    -0.02910003510360726
#>     Attrib V17    -0.06639847800756052
#>     Attrib V18    -0.006545223058763755
#>     Attrib V19    0.2633852866745018
#>     Attrib V2    0.25061467869462806
#>     Attrib V20    0.6257456349728974
#>     Attrib V21    0.47809400279385916
#>     Attrib V22    0.12339022253329555
#>     Attrib V23    0.18201994964759355
#>     Attrib V24    0.4526186378322769
#>     Attrib V25    -0.16169155944342523
#>     Attrib V26    -0.2715825000835045
#>     Attrib V27    -0.5239746490972705
#>     Attrib V28    -0.4797437383683745
#>     Attrib V29    -0.3698055418509524
#>     Attrib V3    0.24505404129057767
#>     Attrib V30    -0.06691885979954386
#>     Attrib V31    -0.7396062344570553
#>     Attrib V32    -0.45368540549694053
#>     Attrib V33    -0.03895818666454081
#>     Attrib V34    0.028985013507143862
#>     Attrib V35    0.26109066254756835
#>     Attrib V36    -0.41765624525043377
#>     Attrib V37    -0.35776172681652285
#>     Attrib V38    0.5133675966831109
#>     Attrib V39    0.29574261834004173
#>     Attrib V4    0.17337311194935734
#>     Attrib V40    -0.350544718269398
#>     Attrib V41    -0.32459556215607693
#>     Attrib V42    0.2584267915889528
#>     Attrib V43    0.3135920350824469
#>     Attrib V44    0.24188366574793485
#>     Attrib V45    0.45660178481290964
#>     Attrib V46    0.35224335905601917
#>     Attrib V47    0.07645662193897969
#>     Attrib V48    0.05207901538532784
#>     Attrib V49    0.2559687803437361
#>     Attrib V5    0.011322379885024127
#>     Attrib V50    -0.4014437602277499
#>     Attrib V51    -0.051542441817585584
#>     Attrib V52    -0.011407907800965605
#>     Attrib V53    0.4217115352150619
#>     Attrib V54    0.46588172549328627
#>     Attrib V55    0.2637913774944646
#>     Attrib V56    0.3562282631732048
#>     Attrib V57    0.18971895577375603
#>     Attrib V58    0.18084103536776813
#>     Attrib V59    0.5485230635587721
#>     Attrib V6    -0.5135903109382032
#>     Attrib V60    0.07133983864482223
#>     Attrib V7    -0.17867212804100965
#>     Attrib V8    -0.15198944044616722
#>     Attrib V9    0.1542311209399693
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.020215259080625693
#>     Attrib V1    0.12772333193874152
#>     Attrib V10    0.05176209184858544
#>     Attrib V11    0.16647742157768294
#>     Attrib V12    0.1533302190928089
#>     Attrib V13    0.1402727063214313
#>     Attrib V14    0.06425551563963164
#>     Attrib V15    0.008903069316679127
#>     Attrib V16    -0.041730614548857764
#>     Attrib V17    -0.10359638394686893
#>     Attrib V18    0.06308836310283758
#>     Attrib V19    0.1346178162887596
#>     Attrib V2    0.0389337259067044
#>     Attrib V20    0.18630799908397894
#>     Attrib V21    0.1616154462288487
#>     Attrib V22    -0.003477198360407642
#>     Attrib V23    0.09404688895316482
#>     Attrib V24    0.1794554384213085
#>     Attrib V25    -0.05880250702730458
#>     Attrib V26    -0.030288583045184673
#>     Attrib V27    -0.12127108878541062
#>     Attrib V28    -0.06518665920971115
#>     Attrib V29    -0.06753370459799747
#>     Attrib V3    0.07703042557393605
#>     Attrib V30    0.12457616915904139
#>     Attrib V31    -0.2359812668978303
#>     Attrib V32    0.015415162910268582
#>     Attrib V33    0.1693028440303418
#>     Attrib V34    0.13181306122220726
#>     Attrib V35    0.20630479746730265
#>     Attrib V36    -0.15803347148995814
#>     Attrib V37    -0.21407470715411334
#>     Attrib V38    0.10822780341062004
#>     Attrib V39    0.17158696361190415
#>     Attrib V4    0.035727014090415454
#>     Attrib V40    -0.09848313249449601
#>     Attrib V41    -0.04528515064639885
#>     Attrib V42    0.0984183009949243
#>     Attrib V43    0.012123451810420188
#>     Attrib V44    0.053288665119123654
#>     Attrib V45    0.16846583227325987
#>     Attrib V46    0.10728523099569034
#>     Attrib V47    -8.39317044813701E-4
#>     Attrib V48    0.06508991809815867
#>     Attrib V49    0.22122599854441552
#>     Attrib V5    0.00530659439350206
#>     Attrib V50    -0.24026108261633256
#>     Attrib V51    0.0516315351574665
#>     Attrib V52    0.06201770090419783
#>     Attrib V53    0.10664956449729572
#>     Attrib V54    -0.01150553073110305
#>     Attrib V55    0.06317457985121581
#>     Attrib V56    0.06860999409630458
#>     Attrib V57    -0.04142719111172852
#>     Attrib V58    0.12856926665298324
#>     Attrib V59    0.15085511086379513
#>     Attrib V6    -0.1808881336968216
#>     Attrib V60    -0.036355940998810024
#>     Attrib V7    -0.16814567220536406
#>     Attrib V8    -0.018856421384755368
#>     Attrib V9    0.18736731451901756
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
