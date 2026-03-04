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
#>     Threshold    -0.33260444989158383
#>     Node 2    2.239853479926981
#>     Node 3    1.7937346378234322
#>     Node 4    1.4693018729919205
#>     Node 5    -1.2260244668848839
#>     Node 6    1.2903337576014124
#>     Node 7    1.7299524266696633
#>     Node 8    1.3260925593021449
#>     Node 9    2.482466021958755
#>     Node 10    -1.7853505720190854
#>     Node 11    1.535905744930585
#>     Node 12    1.6274019892692693
#>     Node 13    0.926909953584581
#>     Node 14    1.5843962467749015
#>     Node 15    -1.4369947341493028
#>     Node 16    -0.7815750105829912
#>     Node 17    1.3426821937990276
#>     Node 18    0.48852552337584887
#>     Node 19    2.317145496932265
#>     Node 20    1.8470241057349128
#>     Node 21    -1.7784200434587238
#>     Node 22    1.4202584889289083
#>     Node 23    1.114900208921171
#>     Node 24    -1.3733801713135043
#>     Node 25    3.8199733115369363
#>     Node 26    -1.2666195344360804
#>     Node 27    1.455327048355274
#>     Node 28    -3.333477174201563
#>     Node 29    1.2660716869208037
#>     Node 30    -1.1419731505873914
#>     Node 31    1.4900154404878212
#>     Node 32    0.13045531365789995
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.37684937823318837
#>     Node 2    -2.2668179998832727
#>     Node 3    -1.7870556239207496
#>     Node 4    -1.4354174801720803
#>     Node 5    1.24347857021452
#>     Node 6    -1.2749884981867612
#>     Node 7    -1.7162172323589602
#>     Node 8    -1.3576893179115967
#>     Node 9    -2.4891445611448777
#>     Node 10    1.735768744963649
#>     Node 11    -1.5031075406279526
#>     Node 12    -1.7118520081241255
#>     Node 13    -0.8778547181246559
#>     Node 14    -1.5256118999746588
#>     Node 15    1.428527708727444
#>     Node 16    0.7694700505075525
#>     Node 17    -1.3150361710674794
#>     Node 18    -0.4541610274014142
#>     Node 19    -2.346238389940403
#>     Node 20    -1.8083604143339018
#>     Node 21    1.830729880260013
#>     Node 22    -1.482823603211662
#>     Node 23    -1.1656752863191011
#>     Node 24    1.357620658263037
#>     Node 25    -3.8260230481048407
#>     Node 26    1.1938775294905897
#>     Node 27    -1.4895577098742823
#>     Node 28    3.302850751778288
#>     Node 29    -1.3007307028469939
#>     Node 30    1.2266523577059203
#>     Node 31    -1.438985461864045
#>     Node 32    -0.1525954462787206
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.3767629471979511
#>     Attrib V1    0.2267577857232171
#>     Attrib V10    0.2417129984164877
#>     Attrib V11    0.7227485665630144
#>     Attrib V12    0.5814387096744076
#>     Attrib V13    -0.28664553577613067
#>     Attrib V14    -0.6201668925115738
#>     Attrib V15    -0.43446881773625684
#>     Attrib V16    -0.35246409874111084
#>     Attrib V17    -0.10394668482590641
#>     Attrib V18    0.1005260203880986
#>     Attrib V19    0.24641691666321122
#>     Attrib V2    0.4942670675976373
#>     Attrib V20    0.5550052815666953
#>     Attrib V21    0.6332101413089607
#>     Attrib V22    0.9074279792669591
#>     Attrib V23    0.8038690069319923
#>     Attrib V24    0.13674027444020842
#>     Attrib V25    0.12126409530893413
#>     Attrib V26    0.13759357290401003
#>     Attrib V27    -0.4131132879564448
#>     Attrib V28    0.32348926736862293
#>     Attrib V29    0.9714294558695704
#>     Attrib V3    -0.029601974468127228
#>     Attrib V30    0.6429938912238702
#>     Attrib V31    -0.8994783091359675
#>     Attrib V32    0.2380320342435118
#>     Attrib V33    0.0028576346697527675
#>     Attrib V34    -0.011301525666729036
#>     Attrib V35    -0.29364926224100396
#>     Attrib V36    -0.27949886825117476
#>     Attrib V37    -0.058269961041824476
#>     Attrib V38    0.18111675811542793
#>     Attrib V39    0.6595982923517396
#>     Attrib V4    0.4024635878975937
#>     Attrib V40    0.150096942160528
#>     Attrib V41    0.12992814361367902
#>     Attrib V42    -0.2314995303422445
#>     Attrib V43    0.5279138787774109
#>     Attrib V44    0.7730632809582733
#>     Attrib V45    0.09983487661340042
#>     Attrib V46    0.3997055108964548
#>     Attrib V47    0.3275132071957099
#>     Attrib V48    0.20383657772999175
#>     Attrib V49    0.557408287451236
#>     Attrib V5    0.8318849555887615
#>     Attrib V50    -1.346030359212546
#>     Attrib V51    0.0895054583503
#>     Attrib V52    0.665241066702361
#>     Attrib V53    0.13132778185814464
#>     Attrib V54    -0.05395800022907417
#>     Attrib V55    -0.46514226473208414
#>     Attrib V56    0.15734701944490034
#>     Attrib V57    -1.076379816951879
#>     Attrib V58    0.6092866727515265
#>     Attrib V59    -0.02387982227765615
#>     Attrib V6    0.27210330792759174
#>     Attrib V60    0.03791086950689997
#>     Attrib V7    -0.6301534035806978
#>     Attrib V8    0.009156924399161166
#>     Attrib V9    0.9889310280813498
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.36412000886539986
#>     Attrib V1    0.11517797131903264
#>     Attrib V10    -0.15694290360315646
#>     Attrib V11    0.21944691669352925
#>     Attrib V12    0.13186590502592804
#>     Attrib V13    -0.4124703884448263
#>     Attrib V14    -0.20300063299800403
#>     Attrib V15    0.16302810625386913
#>     Attrib V16    0.12587541924226167
#>     Attrib V17    0.1620994279366713
#>     Attrib V18    0.020258696303716024
#>     Attrib V19    0.1341508466533269
#>     Attrib V2    0.19054319358009572
#>     Attrib V20    0.3460436088292992
#>     Attrib V21    0.38520632636559354
#>     Attrib V22    0.4440660757437902
#>     Attrib V23    0.2030420391936243
#>     Attrib V24    -0.17938885074669497
#>     Attrib V25    -0.359980845695997
#>     Attrib V26    -0.6047750082593873
#>     Attrib V27    -0.8621291487433606
#>     Attrib V28    -0.5817903811446397
#>     Attrib V29    -0.20540596124577962
#>     Attrib V3    -0.04605383943452237
#>     Attrib V30    0.1433290282100282
#>     Attrib V31    -0.46543496526233247
#>     Attrib V32    0.4260563309521035
#>     Attrib V33    0.37754370307861723
#>     Attrib V34    0.03597888522226093
#>     Attrib V35    -0.5786889822765048
#>     Attrib V36    -0.6074707229825851
#>     Attrib V37    -0.7319348123468855
#>     Attrib V38    -0.27709885479401497
#>     Attrib V39    0.329643263504101
#>     Attrib V4    0.5670753980514825
#>     Attrib V40    0.13915387037028315
#>     Attrib V41    -0.09262391181278583
#>     Attrib V42    -0.049109097873353776
#>     Attrib V43    0.3927881272630952
#>     Attrib V44    0.30178396645092626
#>     Attrib V45    -0.16499202054769302
#>     Attrib V46    -0.04126025075297007
#>     Attrib V47    -0.014548137134778732
#>     Attrib V48    0.1514427800097652
#>     Attrib V49    0.3603397364987682
#>     Attrib V5    0.40200233924036055
#>     Attrib V50    -0.6040970380316919
#>     Attrib V51    -0.4415367894593354
#>     Attrib V52    0.3628295979091416
#>     Attrib V53    0.033069863242053806
#>     Attrib V54    0.24331632867447173
#>     Attrib V55    0.04299324904034127
#>     Attrib V56    0.3055964718744226
#>     Attrib V57    -0.08599152368544465
#>     Attrib V58    0.854111796597308
#>     Attrib V59    0.17980101481740496
#>     Attrib V6    -0.004712710236860139
#>     Attrib V60    0.020184532462562767
#>     Attrib V7    -0.4965723947077717
#>     Attrib V8    0.467441377143617
#>     Attrib V9    0.5735308499388969
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.27788133386859365
#>     Attrib V1    0.04976191180471152
#>     Attrib V10    -0.19334721138450897
#>     Attrib V11    0.17125439016082344
#>     Attrib V12    0.09941860840389029
#>     Attrib V13    -0.34298647194902604
#>     Attrib V14    -0.14903738685003284
#>     Attrib V15    0.127848123978261
#>     Attrib V16    0.10479971431706105
#>     Attrib V17    0.16364334820922874
#>     Attrib V18    0.04174708223533945
#>     Attrib V19    0.07854086970005067
#>     Attrib V2    0.09551945196792129
#>     Attrib V20    0.28052283929784666
#>     Attrib V21    0.3980702559396211
#>     Attrib V22    0.3248352517482297
#>     Attrib V23    0.15638748994099558
#>     Attrib V24    -0.16080986079049261
#>     Attrib V25    -0.3500943045393583
#>     Attrib V26    -0.5225049031361373
#>     Attrib V27    -0.7631706956269867
#>     Attrib V28    -0.4323614819863662
#>     Attrib V29    -0.06659363655775087
#>     Attrib V3    -0.03483809814812603
#>     Attrib V30    0.07613007424187039
#>     Attrib V31    -0.45174639559222024
#>     Attrib V32    0.2797947040007274
#>     Attrib V33    0.2836761861909592
#>     Attrib V34    0.06544639416209176
#>     Attrib V35    -0.4477259639997735
#>     Attrib V36    -0.44904296598587773
#>     Attrib V37    -0.55359019584377
#>     Attrib V38    -0.19699166667121243
#>     Attrib V39    0.3205155068907065
#>     Attrib V4    0.45997990621266555
#>     Attrib V40    0.11649528013503631
#>     Attrib V41    -0.12819966480038117
#>     Attrib V42    -0.054515517523040284
#>     Attrib V43    0.3111344369541984
#>     Attrib V44    0.2844056737454113
#>     Attrib V45    -0.049673591757661555
#>     Attrib V46    -0.02143983352660856
#>     Attrib V47    -0.045479812119072045
#>     Attrib V48    0.1833359955764748
#>     Attrib V49    0.3630554242659172
#>     Attrib V5    0.39568245332221696
#>     Attrib V50    -0.5041747050938418
#>     Attrib V51    -0.3229827918232506
#>     Attrib V52    0.2698765440449597
#>     Attrib V53    0.11488610261209146
#>     Attrib V54    0.14710788944850306
#>     Attrib V55    0.015021395759390604
#>     Attrib V56    0.2659150329625381
#>     Attrib V57    -0.06611404568687573
#>     Attrib V58    0.684006087174032
#>     Attrib V59    0.17169828286261082
#>     Attrib V6    0.0031506288547616377
#>     Attrib V60    0.047591176682218336
#>     Attrib V7    -0.3841723855590088
#>     Attrib V8    0.2984964036379368
#>     Attrib V9    0.5012619047532837
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.4012339742621076
#>     Attrib V1    0.02042224133381717
#>     Attrib V10    0.08039630324362085
#>     Attrib V11    -0.39262386707526503
#>     Attrib V12    -0.4300122329880297
#>     Attrib V13    0.22447379773126566
#>     Attrib V14    0.37239741936885645
#>     Attrib V15    0.19280764529186495
#>     Attrib V16    0.12222952875886436
#>     Attrib V17    0.15726684181476136
#>     Attrib V18    0.1423609317410692
#>     Attrib V19    0.054423666791209885
#>     Attrib V2    -0.21394794426008862
#>     Attrib V20    -0.05952422419794557
#>     Attrib V21    -0.12082338899217793
#>     Attrib V22    -0.31509704396948035
#>     Attrib V23    -0.20321708426550825
#>     Attrib V24    -0.015706611627698056
#>     Attrib V25    0.12045872576126927
#>     Attrib V26    0.08471822268818718
#>     Attrib V27    0.207632680292665
#>     Attrib V28    -0.18342733646577336
#>     Attrib V29    -0.3978786619981427
#>     Attrib V3    -0.005628445231419056
#>     Attrib V30    -0.22451493228465988
#>     Attrib V31    0.48411577222409513
#>     Attrib V32    -0.2405757683775234
#>     Attrib V33    -0.10334801741445844
#>     Attrib V34    -0.022647951007890486
#>     Attrib V35    0.38682150089472045
#>     Attrib V36    0.42572665364168943
#>     Attrib V37    0.2550569809904131
#>     Attrib V38    0.0647813159490432
#>     Attrib V39    -0.35085829836776383
#>     Attrib V4    -0.2786894522508153
#>     Attrib V40    -0.08384568857110421
#>     Attrib V41    -0.06790763129136282
#>     Attrib V42    0.23628971420792674
#>     Attrib V43    -0.27634380360412814
#>     Attrib V44    -0.25328301375186
#>     Attrib V45    0.037988163086128734
#>     Attrib V46    -0.23794296846812862
#>     Attrib V47    -0.14478224016907518
#>     Attrib V48    -0.21459242421566144
#>     Attrib V49    -0.4060555474602056
#>     Attrib V5    -0.34367393836152643
#>     Attrib V50    0.8730621833546361
#>     Attrib V51    0.00825257518162185
#>     Attrib V52    -0.5249344274441441
#>     Attrib V53    -0.19498179761778078
#>     Attrib V54    0.0517387880362319
#>     Attrib V55    0.19129150896026212
#>     Attrib V56    -0.01590564904832748
#>     Attrib V57    0.4189398304295082
#>     Attrib V58    -0.5633080100731209
#>     Attrib V59    -0.018686480775321597
#>     Attrib V6    -0.10669715652146601
#>     Attrib V60    -0.031093824597651587
#>     Attrib V7    0.46170434053441367
#>     Attrib V8    -0.02383600237886269
#>     Attrib V9    -0.5013822650578311
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.21264221857881435
#>     Attrib V1    0.13312489008549702
#>     Attrib V10    -0.23231664934685586
#>     Attrib V11    0.03211375003315747
#>     Attrib V12    0.034420512840574964
#>     Attrib V13    -0.34800988579024966
#>     Attrib V14    -0.06707714631373267
#>     Attrib V15    0.16099428693864076
#>     Attrib V16    0.21052556145471601
#>     Attrib V17    0.16607486714484002
#>     Attrib V18    0.12152490290179642
#>     Attrib V19    0.0630017720155481
#>     Attrib V2    0.06642282627518084
#>     Attrib V20    0.26420427588375356
#>     Attrib V21    0.3547165260771469
#>     Attrib V22    0.2419335254830844
#>     Attrib V23    0.05660896031543266
#>     Attrib V24    -0.14552073241577332
#>     Attrib V25    -0.30459008795516856
#>     Attrib V26    -0.5381296612624671
#>     Attrib V27    -0.6656920070788793
#>     Attrib V28    -0.5572282428189694
#>     Attrib V29    -0.253553937433151
#>     Attrib V3    -0.019509449768491536
#>     Attrib V30    -0.026783116885629097
#>     Attrib V31    -0.3759050353240609
#>     Attrib V32    0.24227655398753553
#>     Attrib V33    0.24193164133045258
#>     Attrib V34    0.021056167872012196
#>     Attrib V35    -0.32310801205523143
#>     Attrib V36    -0.33510954620694006
#>     Attrib V37    -0.44503914972536346
#>     Attrib V38    -0.12150724657275801
#>     Attrib V39    0.24746865780900482
#>     Attrib V4    0.4282255768520783
#>     Attrib V40    0.04075423931640503
#>     Attrib V41    -0.12092785985454219
#>     Attrib V42    -0.03497392899699504
#>     Attrib V43    0.2503460785599896
#>     Attrib V44    0.19820784968467253
#>     Attrib V45    -0.06269818148166272
#>     Attrib V46    -0.01267713624463687
#>     Attrib V47    -0.09228024680943823
#>     Attrib V48    0.036117382552084985
#>     Attrib V49    0.17771617332013157
#>     Attrib V5    0.27143472259078855
#>     Attrib V50    -0.2820770601493843
#>     Attrib V51    -0.3990198221989919
#>     Attrib V52    0.1475286899283404
#>     Attrib V53    0.10632865876430331
#>     Attrib V54    0.23673022628133364
#>     Attrib V55    0.08510446054339484
#>     Attrib V56    0.27464051618014956
#>     Attrib V57    0.10322733991028597
#>     Attrib V58    0.6209012668657534
#>     Attrib V59    0.20844693658967123
#>     Attrib V6    0.06375080219806695
#>     Attrib V60    0.15823665679438956
#>     Attrib V7    -0.2278405311671862
#>     Attrib V8    0.3325958219938148
#>     Attrib V9    0.4052113475676992
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4629324415355752
#>     Attrib V1    -0.009880651863325162
#>     Attrib V10    -0.0755466389115416
#>     Attrib V11    0.6425931103442173
#>     Attrib V12    0.6350955293190068
#>     Attrib V13    -0.044147392625602196
#>     Attrib V14    -0.44333768866836937
#>     Attrib V15    -0.40799567484623867
#>     Attrib V16    -0.30855819389611394
#>     Attrib V17    -0.3181911565425916
#>     Attrib V18    -0.13607141362120692
#>     Attrib V19    0.030848159440319267
#>     Attrib V2    0.37155619101641846
#>     Attrib V20    -0.02615569865604683
#>     Attrib V21    0.007876630698234343
#>     Attrib V22    0.1706452110453653
#>     Attrib V23    0.30654117056109564
#>     Attrib V24    0.17661967799983805
#>     Attrib V25    0.20475334568368347
#>     Attrib V26    0.24767632596204456
#>     Attrib V27    -0.0010524995719512651
#>     Attrib V28    0.5890623611007719
#>     Attrib V29    0.9528830686795999
#>     Attrib V3    0.099033013518348
#>     Attrib V30    0.3663566016243003
#>     Attrib V31    -0.5105368922549265
#>     Attrib V32    0.08950918144990988
#>     Attrib V33    -0.054976100544752056
#>     Attrib V34    0.08129352814012937
#>     Attrib V35    -0.19992528404697685
#>     Attrib V36    -0.397193598955955
#>     Attrib V37    -0.18792963267033022
#>     Attrib V38    -0.1651753348422672
#>     Attrib V39    0.35554649793074167
#>     Attrib V4    0.3845112032125065
#>     Attrib V40    0.23223575701513166
#>     Attrib V41    0.40080761812295124
#>     Attrib V42    -0.2030102461914221
#>     Attrib V43    0.23572876163238263
#>     Attrib V44    0.40174000086935124
#>     Attrib V45    0.08152926947268321
#>     Attrib V46    0.4830934642012351
#>     Attrib V47    0.33559011175343034
#>     Attrib V48    0.32311204382347564
#>     Attrib V49    0.5194322434530997
#>     Attrib V5    0.6368731585631623
#>     Attrib V50    -1.0772877976246211
#>     Attrib V51    0.13898616666834063
#>     Attrib V52    0.5812895355124018
#>     Attrib V53    0.3141601995217286
#>     Attrib V54    -0.13318083074251838
#>     Attrib V55    -0.1426254486353668
#>     Attrib V56    -0.11332723561256751
#>     Attrib V57    -0.6646234509540765
#>     Attrib V58    0.49056121970955857
#>     Attrib V59    0.2833420388641723
#>     Attrib V6    0.37778343325036345
#>     Attrib V60    0.1621700551585987
#>     Attrib V7    -0.38421111941990627
#>     Attrib V8    -0.10458317794913986
#>     Attrib V9    0.5061004773786286
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.36999374442262983
#>     Attrib V1    0.024883224409241757
#>     Attrib V10    -0.1639418405198626
#>     Attrib V11    0.23408642404886804
#>     Attrib V12    0.14434645056793713
#>     Attrib V13    -0.3277601149880814
#>     Attrib V14    -0.3035782557149415
#>     Attrib V15    -0.03024459552871345
#>     Attrib V16    0.08012314524444397
#>     Attrib V17    0.1046591058736394
#>     Attrib V18    0.01898365255103301
#>     Attrib V19    0.10222406450988265
#>     Attrib V2    0.14741423306993826
#>     Attrib V20    0.23469374012727007
#>     Attrib V21    0.36732726326574183
#>     Attrib V22    0.3807470689887966
#>     Attrib V23    0.2173049464960173
#>     Attrib V24    -0.055062060150236125
#>     Attrib V25    -0.22784996165998364
#>     Attrib V26    -0.33898490980214163
#>     Attrib V27    -0.5622684237464242
#>     Attrib V28    -0.24323355211117445
#>     Attrib V29    0.1134968477991561
#>     Attrib V3    -0.10086742547818023
#>     Attrib V30    0.16027317494436227
#>     Attrib V31    -0.563754228516482
#>     Attrib V32    0.1828333396583276
#>     Attrib V33    0.1937414025076918
#>     Attrib V34    0.061290810799813224
#>     Attrib V35    -0.3206774656370767
#>     Attrib V36    -0.22488941844558324
#>     Attrib V37    -0.3515504770595116
#>     Attrib V38    0.021084642636572174
#>     Attrib V39    0.3580564597723138
#>     Attrib V4    0.5120919240499953
#>     Attrib V40    0.06934567431780345
#>     Attrib V41    -0.11624856708612129
#>     Attrib V42    -0.2199461146331182
#>     Attrib V43    0.33470623249055187
#>     Attrib V44    0.4445160074155647
#>     Attrib V45    0.021833356978981623
#>     Attrib V46    0.12935842819728
#>     Attrib V47    0.013421463865861233
#>     Attrib V48    0.16151278381422254
#>     Attrib V49    0.35498626796209276
#>     Attrib V5    0.3770257878101787
#>     Attrib V50    -0.6589891501612761
#>     Attrib V51    -0.33546111491210623
#>     Attrib V52    0.29541036798683895
#>     Attrib V53    0.11139279810032678
#>     Attrib V54    0.16308465111220705
#>     Attrib V55    -0.04584856688215267
#>     Attrib V56    0.12861560236055436
#>     Attrib V57    -0.13830069131872924
#>     Attrib V58    0.6120600523454348
#>     Attrib V59    0.18092433754503953
#>     Attrib V6    0.05260597749615169
#>     Attrib V60    0.12027018698576938
#>     Attrib V7    -0.35711479248269773
#>     Attrib V8    0.20723197183507602
#>     Attrib V9    0.4696678090294352
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.4594019843162588
#>     Attrib V1    -0.08067773366373159
#>     Attrib V10    0.2539149134034792
#>     Attrib V11    0.9291788567434958
#>     Attrib V12    1.063917828377
#>     Attrib V13    0.26481854159116974
#>     Attrib V14    -0.5633865026357738
#>     Attrib V15    -0.5713689569032712
#>     Attrib V16    -0.433383110594128
#>     Attrib V17    -0.46365010502712006
#>     Attrib V18    -0.2083539802224181
#>     Attrib V19    0.012241463061579213
#>     Attrib V2    0.5279945334454187
#>     Attrib V20    -0.22186012843068093
#>     Attrib V21    -0.09556477738472775
#>     Attrib V22    0.18200496563232405
#>     Attrib V23    0.3230573970777903
#>     Attrib V24    0.32340623515599565
#>     Attrib V25    0.4464517735982924
#>     Attrib V26    0.6331841654512617
#>     Attrib V27    0.44225985045705435
#>     Attrib V28    0.9744379374984029
#>     Attrib V29    1.0961949881891755
#>     Attrib V3    0.15639551236294436
#>     Attrib V30    0.4084724307440799
#>     Attrib V31    -0.5808786294793148
#>     Attrib V32    0.06054106418540045
#>     Attrib V33    -0.15998854488282457
#>     Attrib V34    0.12767118103476222
#>     Attrib V35    -0.10924112375830143
#>     Attrib V36    -0.3967153316620052
#>     Attrib V37    -0.10040642052496691
#>     Attrib V38    -0.21903699903966384
#>     Attrib V39    0.41496025411511506
#>     Attrib V4    0.4163721983598488
#>     Attrib V40    0.3312200812529312
#>     Attrib V41    0.7516055243006438
#>     Attrib V42    -0.3282202534603177
#>     Attrib V43    0.20889003775679632
#>     Attrib V44    0.3307375312750447
#>     Attrib V45    0.10122849886850771
#>     Attrib V46    0.6171830107200417
#>     Attrib V47    0.47155278165582026
#>     Attrib V48    0.533723564125473
#>     Attrib V49    0.7808629782143597
#>     Attrib V5    0.7863425928759662
#>     Attrib V50    -1.2692312258718708
#>     Attrib V51    0.6411227414569061
#>     Attrib V52    0.6931499019564229
#>     Attrib V53    0.5767238712929297
#>     Attrib V54    -0.2602877552073205
#>     Attrib V55    -0.24577165050946886
#>     Attrib V56    -0.19654152418450763
#>     Attrib V57    -1.0125356139948303
#>     Attrib V58    0.41157436003340314
#>     Attrib V59    0.49174849249818686
#>     Attrib V6    0.5765544764477394
#>     Attrib V60    0.3662479933430821
#>     Attrib V7    -0.3866316914296872
#>     Attrib V8    -0.2564195225555117
#>     Attrib V9    0.5077472571407436
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.6136008190594834
#>     Attrib V1    0.11722807212127229
#>     Attrib V10    0.08337728189148841
#>     Attrib V11    -0.6199181738561101
#>     Attrib V12    -0.6430808923819789
#>     Attrib V13    0.21116237776898014
#>     Attrib V14    0.5874372070544109
#>     Attrib V15    0.2847644539997763
#>     Attrib V16    0.24460631105180244
#>     Attrib V17    0.21514703423285997
#>     Attrib V18    0.21797605073946819
#>     Attrib V19    0.04422854035063412
#>     Attrib V2    -0.36709993827814835
#>     Attrib V20    0.053813944418244504
#>     Attrib V21    -0.015682556910792237
#>     Attrib V22    -0.26964696448461184
#>     Attrib V23    -0.23352482363571153
#>     Attrib V24    -0.11165466030705049
#>     Attrib V25    -0.04606885586810547
#>     Attrib V26    -0.017899934337103518
#>     Attrib V27    0.14635040791797066
#>     Attrib V28    -0.42572149068896104
#>     Attrib V29    -0.7828910965938223
#>     Attrib V3    -0.08268150442332212
#>     Attrib V30    -0.3333889426066213
#>     Attrib V31    0.591960819286161
#>     Attrib V32    -0.3205202098148615
#>     Attrib V33    -0.0391486410274514
#>     Attrib V34    -0.08580128663225522
#>     Attrib V35    0.3655735681476322
#>     Attrib V36    0.5276767479525633
#>     Attrib V37    0.342567240058141
#>     Attrib V38    0.2110997041308219
#>     Attrib V39    -0.4100988419777376
#>     Attrib V4    -0.4674966603262799
#>     Attrib V40    -0.17135186024477997
#>     Attrib V41    -0.2704771710398056
#>     Attrib V42    0.2650574774805432
#>     Attrib V43    -0.30318965797772146
#>     Attrib V44    -0.34892614022366536
#>     Attrib V45    0.058970580783796134
#>     Attrib V46    -0.4094371469069076
#>     Attrib V47    -0.2886775924736466
#>     Attrib V48    -0.37170508531714286
#>     Attrib V49    -0.5975862344714998
#>     Attrib V5    -0.5956567547592858
#>     Attrib V50    1.2379310573220943
#>     Attrib V51    -0.1482263436970168
#>     Attrib V52    -0.6932503615701429
#>     Attrib V53    -0.2677289846445671
#>     Attrib V54    0.17872878774495451
#>     Attrib V55    0.18241305381567396
#>     Attrib V56    0.05750758515421045
#>     Attrib V57    0.6249696346864482
#>     Attrib V58    -0.6350445598328738
#>     Attrib V59    -0.22808716966171677
#>     Attrib V6    -0.3159639493230594
#>     Attrib V60    -0.09169904251769462
#>     Attrib V7    0.43953481777932485
#>     Attrib V8    -0.014894638539863576
#>     Attrib V9    -0.5500129553848528
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.26255641432280563
#>     Attrib V1    0.06534799221044921
#>     Attrib V10    -0.22184651943210912
#>     Attrib V11    0.14872539716931737
#>     Attrib V12    0.09273962860546947
#>     Attrib V13    -0.4511433579157826
#>     Attrib V14    -0.19903215446693426
#>     Attrib V15    0.07397298276865273
#>     Attrib V16    0.12250467067955724
#>     Attrib V17    0.23090400988585225
#>     Attrib V18    0.11453850840425452
#>     Attrib V19    0.09379608009981867
#>     Attrib V2    0.047046299281818645
#>     Attrib V20    0.38758010863348835
#>     Attrib V21    0.4179851611693363
#>     Attrib V22    0.3649925814865178
#>     Attrib V23    0.17587837700233808
#>     Attrib V24    -0.1710366740761981
#>     Attrib V25    -0.33951339750794746
#>     Attrib V26    -0.5998038847529887
#>     Attrib V27    -0.7750121215999975
#>     Attrib V28    -0.4941568713201324
#>     Attrib V29    -0.13533238076329082
#>     Attrib V3    -0.13470306374349753
#>     Attrib V30    0.05984861896496104
#>     Attrib V31    -0.6059119517207365
#>     Attrib V32    0.1824743818965687
#>     Attrib V33    0.23298095072798497
#>     Attrib V34    0.08642216333378876
#>     Attrib V35    -0.34975517360267294
#>     Attrib V36    -0.2867867886171257
#>     Attrib V37    -0.47758300256918723
#>     Attrib V38    -0.01578541417699183
#>     Attrib V39    0.3548132898031743
#>     Attrib V4    0.5070095131598065
#>     Attrib V40    0.0427916444572206
#>     Attrib V41    -0.25102362904023223
#>     Attrib V42    -0.11474040296306028
#>     Attrib V43    0.3787508008512639
#>     Attrib V44    0.4291999538847229
#>     Attrib V45    0.03581070051215366
#>     Attrib V46    0.030272527059086212
#>     Attrib V47    -0.006982159460413714
#>     Attrib V48    0.14667312692586582
#>     Attrib V49    0.30936329270068463
#>     Attrib V5    0.41741479131104703
#>     Attrib V50    -0.4733603561676281
#>     Attrib V51    -0.39035494501946266
#>     Attrib V52    0.2238344444767344
#>     Attrib V53    0.04543959199945086
#>     Attrib V54    0.2904594859560248
#>     Attrib V55    0.05004683890755077
#>     Attrib V56    0.26375579750209455
#>     Attrib V57    -0.02495672843962336
#>     Attrib V58    0.7452130221015519
#>     Attrib V59    0.11625750279870598
#>     Attrib V6    0.06599751994787197
#>     Attrib V60    0.06622738914656155
#>     Attrib V7    -0.3838439188547915
#>     Attrib V8    0.3792789775051747
#>     Attrib V9    0.5064688132950648
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.42229398850033667
#>     Attrib V1    0.05306873519315845
#>     Attrib V10    -0.24259132038630396
#>     Attrib V11    0.28545481106703685
#>     Attrib V12    0.10251597173890371
#>     Attrib V13    -0.45263121248220584
#>     Attrib V14    -0.23604037411235643
#>     Attrib V15    0.03927121305815896
#>     Attrib V16    0.12468814306356828
#>     Attrib V17    0.16221551258040517
#>     Attrib V18    0.04707296432269634
#>     Attrib V19    0.1366309031275594
#>     Attrib V2    0.16832589137617196
#>     Attrib V20    0.30637811082274086
#>     Attrib V21    0.3904075375592135
#>     Attrib V22    0.4418839608575531
#>     Attrib V23    0.22260594199446754
#>     Attrib V24    -0.18578898367078722
#>     Attrib V25    -0.3949915656241172
#>     Attrib V26    -0.5619197059525992
#>     Attrib V27    -0.7352839618670794
#>     Attrib V28    -0.5030206159774759
#>     Attrib V29    -0.03914780036375816
#>     Attrib V3    -0.1394956542804425
#>     Attrib V30    0.10126296318870531
#>     Attrib V31    -0.6226645187347489
#>     Attrib V32    0.2479228888214565
#>     Attrib V33    0.30509096599003255
#>     Attrib V34    0.09332534601062788
#>     Attrib V35    -0.4795325976179742
#>     Attrib V36    -0.44474510659552097
#>     Attrib V37    -0.5868905296728503
#>     Attrib V38    -0.12135859706626255
#>     Attrib V39    0.3456133868672374
#>     Attrib V4    0.5967554905295227
#>     Attrib V40    0.13850878383998144
#>     Attrib V41    -0.15325775126219038
#>     Attrib V42    -0.15658429240951116
#>     Attrib V43    0.4371106908230077
#>     Attrib V44    0.3341411643005297
#>     Attrib V45    -0.04790590919031846
#>     Attrib V46    0.08634901987893569
#>     Attrib V47    -0.02912318091894476
#>     Attrib V48    0.20956838493638663
#>     Attrib V49    0.35744577439571557
#>     Attrib V5    0.43900286979162134
#>     Attrib V50    -0.6764750948443806
#>     Attrib V51    -0.41213082710339577
#>     Attrib V52    0.3506516094271011
#>     Attrib V53    0.08103316321785513
#>     Attrib V54    0.21250789516024696
#>     Attrib V55    -0.01198236065296321
#>     Attrib V56    0.2648671350883304
#>     Attrib V57    -0.08313306644440091
#>     Attrib V58    0.826649510874481
#>     Attrib V59    0.2142540508819764
#>     Attrib V6    0.019902291346114855
#>     Attrib V60    0.06931474788782227
#>     Attrib V7    -0.43346505760140996
#>     Attrib V8    0.40620573498100415
#>     Attrib V9    0.585707058507103
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.06592683347524864
#>     Attrib V1    0.06716642185794737
#>     Attrib V10    -0.1971524269838201
#>     Attrib V11    0.06133854786819074
#>     Attrib V12    0.05619918705379799
#>     Attrib V13    -0.1385640293960896
#>     Attrib V14    -0.05757685073147776
#>     Attrib V15    0.05655032790275816
#>     Attrib V16    0.04915408476979793
#>     Attrib V17    0.13282688075402982
#>     Attrib V18    0.07339976579606593
#>     Attrib V19    0.03983425296427769
#>     Attrib V2    0.05014654980697566
#>     Attrib V20    0.17574577513015507
#>     Attrib V21    0.21680433541601038
#>     Attrib V22    0.13159969511825081
#>     Attrib V23    0.06801249950279097
#>     Attrib V24    -0.08415971895328568
#>     Attrib V25    -0.15183651528596928
#>     Attrib V26    -0.3746562985495477
#>     Attrib V27    -0.4366899485888988
#>     Attrib V28    -0.3324882290039719
#>     Attrib V29    -0.06279812495760444
#>     Attrib V3    0.040269320599424945
#>     Attrib V30    0.015911677631344524
#>     Attrib V31    -0.3456383988421608
#>     Attrib V32    0.12420354316280448
#>     Attrib V33    0.11887595977884864
#>     Attrib V34    0.08024485936890544
#>     Attrib V35    -0.22561988799332175
#>     Attrib V36    -0.21184215698410985
#>     Attrib V37    -0.27819316463892546
#>     Attrib V38    -0.06938986169705917
#>     Attrib V39    0.2712110932076468
#>     Attrib V4    0.332396908205538
#>     Attrib V40    0.08994459268875356
#>     Attrib V41    -0.07380194527055137
#>     Attrib V42    -0.06564735233296429
#>     Attrib V43    0.13932282920435746
#>     Attrib V44    0.1764542988539628
#>     Attrib V45    -0.06085117302377863
#>     Attrib V46    0.046520086340846825
#>     Attrib V47    -0.0033357612928618845
#>     Attrib V48    0.05843963184970113
#>     Attrib V49    0.20017938723037498
#>     Attrib V5    0.266791900076828
#>     Attrib V50    -0.3176757728609657
#>     Attrib V51    -0.2939335589240026
#>     Attrib V52    0.12134106629605768
#>     Attrib V53    0.10315358497363009
#>     Attrib V54    0.1584114880507373
#>     Attrib V55    0.09002651315449016
#>     Attrib V56    0.17096788496712548
#>     Attrib V57    0.04029267618562947
#>     Attrib V58    0.44743409177252863
#>     Attrib V59    0.22070256174641512
#>     Attrib V6    0.08912324678233005
#>     Attrib V60    0.1679013820954691
#>     Attrib V7    -0.13030440448697758
#>     Attrib V8    0.1451600930380199
#>     Attrib V9    0.25245342342940136
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.40158502705440213
#>     Attrib V1    0.11850972739791679
#>     Attrib V10    -0.15164619911791444
#>     Attrib V11    0.30857949809454577
#>     Attrib V12    0.1905004743672013
#>     Attrib V13    -0.43153349817557085
#>     Attrib V14    -0.30747018991183905
#>     Attrib V15    0.06718791406164985
#>     Attrib V16    0.04070774746867213
#>     Attrib V17    0.10234979481723944
#>     Attrib V18    0.006687231947334035
#>     Attrib V19    0.033137551616067226
#>     Attrib V2    0.1891729973972592
#>     Attrib V20    0.23852340674820222
#>     Attrib V21    0.29646901236433015
#>     Attrib V22    0.3436239163460135
#>     Attrib V23    0.22071325843974163
#>     Attrib V24    -0.15699887308639363
#>     Attrib V25    -0.30910878823412646
#>     Attrib V26    -0.4421095090200789
#>     Attrib V27    -0.6849696166132001
#>     Attrib V28    -0.4323781684330887
#>     Attrib V29    -0.050376059991144535
#>     Attrib V3    -0.12935537569295666
#>     Attrib V30    0.16148485841565569
#>     Attrib V31    -0.46957878586535
#>     Attrib V32    0.30184199572008913
#>     Attrib V33    0.2911640499185083
#>     Attrib V34    0.04515763789722172
#>     Attrib V35    -0.4793045719825878
#>     Attrib V36    -0.5347661428413824
#>     Attrib V37    -0.5584362306082764
#>     Attrib V38    -0.22163467885806548
#>     Attrib V39    0.30939067170993334
#>     Attrib V4    0.512703502089169
#>     Attrib V40    0.09169270250666686
#>     Attrib V41    -0.11660592176877727
#>     Attrib V42    -0.1669759368884654
#>     Attrib V43    0.3198448341331822
#>     Attrib V44    0.30649754600064644
#>     Attrib V45    -0.18530980762013644
#>     Attrib V46    0.041287983975090536
#>     Attrib V47    -0.014987050487646281
#>     Attrib V48    0.2317238344302769
#>     Attrib V49    0.42433978148943946
#>     Attrib V5    0.37557724270572146
#>     Attrib V50    -0.6484180703062811
#>     Attrib V51    -0.2912350012666469
#>     Attrib V52    0.360058637024771
#>     Attrib V53    0.044322648959094005
#>     Attrib V54    0.19372074055248362
#>     Attrib V55    -2.9459158317420703E-4
#>     Attrib V56    0.21771360409135296
#>     Attrib V57    -0.1666661694665415
#>     Attrib V58    0.7591229169362856
#>     Attrib V59    0.15967829649278392
#>     Attrib V6    0.05023074703684862
#>     Attrib V60    0.11334091072025221
#>     Attrib V7    -0.44580791416024484
#>     Attrib V8    0.28491304907134435
#>     Attrib V9    0.5421521871782097
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.4946515122173223
#>     Attrib V1    -0.014598503255931991
#>     Attrib V10    0.04748330539387614
#>     Attrib V11    -0.5519256838117649
#>     Attrib V12    -0.42814552653136195
#>     Attrib V13    0.26973623361629423
#>     Attrib V14    0.4428634223427419
#>     Attrib V15    0.2524267559457793
#>     Attrib V16    0.18844363526589494
#>     Attrib V17    0.136366517780206
#>     Attrib V18    0.1228511952161125
#>     Attrib V19    0.07561732742399156
#>     Attrib V2    -0.33995261098128016
#>     Attrib V20    -0.06419254456029504
#>     Attrib V21    -0.22026727735396265
#>     Attrib V22    -0.36783116611351857
#>     Attrib V23    -0.32828987570336055
#>     Attrib V24    -0.001118329894991282
#>     Attrib V25    0.0940558355041388
#>     Attrib V26    0.14853327934999985
#>     Attrib V27    0.2325120246323445
#>     Attrib V28    -0.1579389281273888
#>     Attrib V29    -0.4680058474646819
#>     Attrib V3    -0.016303979294656608
#>     Attrib V30    -0.3132444690333
#>     Attrib V31    0.565771029514817
#>     Attrib V32    -0.2789576575983849
#>     Attrib V33    -0.12552635987930055
#>     Attrib V34    0.002750097453604679
#>     Attrib V35    0.3775589660290475
#>     Attrib V36    0.4405033241270599
#>     Attrib V37    0.31432835732921116
#>     Attrib V38    0.08233552001014106
#>     Attrib V39    -0.3792830897251593
#>     Attrib V4    -0.2626939867471271
#>     Attrib V40    -0.11594509953003466
#>     Attrib V41    -0.06772850935296068
#>     Attrib V42    0.20518141128788744
#>     Attrib V43    -0.36329167018485997
#>     Attrib V44    -0.362124144045393
#>     Attrib V45    0.11105523143215308
#>     Attrib V46    -0.19691744841624517
#>     Attrib V47    -0.14873562292079412
#>     Attrib V48    -0.22292705767763782
#>     Attrib V49    -0.44841383802266277
#>     Attrib V5    -0.4081816500457167
#>     Attrib V50    1.0330009872245793
#>     Attrib V51    0.027516287049361925
#>     Attrib V52    -0.6336646096889452
#>     Attrib V53    -0.13699935745209188
#>     Attrib V54    0.04093200342748075
#>     Attrib V55    0.20143499610673066
#>     Attrib V56    -0.00807273880233789
#>     Attrib V57    0.5317388800155275
#>     Attrib V58    -0.6265810011893083
#>     Attrib V59    -0.015661516675576814
#>     Attrib V6    -0.15284200548126706
#>     Attrib V60    -0.03363040659870198
#>     Attrib V7    0.48091619464030205
#>     Attrib V8    -0.02102652242711229
#>     Attrib V9    -0.5628318468609331
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.26861146531980745
#>     Attrib V1    -0.017867233777039977
#>     Attrib V10    0.05384893015175929
#>     Attrib V11    -0.2842164747035366
#>     Attrib V12    -0.2671273920966479
#>     Attrib V13    0.1834803986904199
#>     Attrib V14    0.1849730134616095
#>     Attrib V15    0.07266127357639562
#>     Attrib V16    0.14194191245896076
#>     Attrib V17    0.1340870033840291
#>     Attrib V18    0.15200171717381275
#>     Attrib V19    0.06840394789668433
#>     Attrib V2    -0.21413759434329352
#>     Attrib V20    -0.04451648106312924
#>     Attrib V21    -0.12286440855381323
#>     Attrib V22    -0.19835193875577747
#>     Attrib V23    -0.16618982307021082
#>     Attrib V24    0.04587377795480865
#>     Attrib V25    0.09887460217447941
#>     Attrib V26    0.04332838266160092
#>     Attrib V27    0.1349960663061202
#>     Attrib V28    -0.05827794159033452
#>     Attrib V29    -0.24210263353920114
#>     Attrib V3    -0.010361671057199814
#>     Attrib V30    -0.17460013625527185
#>     Attrib V31    0.2650426126456942
#>     Attrib V32    -0.15958843673308287
#>     Attrib V33    -0.08577508988265671
#>     Attrib V34    0.0326321920170196
#>     Attrib V35    0.23596421096166115
#>     Attrib V36    0.2577367570231501
#>     Attrib V37    0.2079029330783679
#>     Attrib V38    0.03919304061008731
#>     Attrib V39    -0.2332385502111696
#>     Attrib V4    -0.16396498351679833
#>     Attrib V40    -0.06481606006536458
#>     Attrib V41    0.029551016220175544
#>     Attrib V42    0.1704548231187193
#>     Attrib V43    -0.21935346064709757
#>     Attrib V44    -0.2432975726556637
#>     Attrib V45    0.03579466126720503
#>     Attrib V46    -0.11558532945711975
#>     Attrib V47    -0.09767726821204951
#>     Attrib V48    -0.17730318469591366
#>     Attrib V49    -0.306973115168435
#>     Attrib V5    -0.24533219751933671
#>     Attrib V50    0.5458934214823702
#>     Attrib V51    0.06421152594258532
#>     Attrib V52    -0.292964449653117
#>     Attrib V53    -0.07917879641444339
#>     Attrib V54    -0.024404026877253276
#>     Attrib V55    0.08575575274471718
#>     Attrib V56    -0.038373311500798514
#>     Attrib V57    0.31595738272607066
#>     Attrib V58    -0.3125713541568173
#>     Attrib V59    -0.06811922782109742
#>     Attrib V6    -0.06280957146580214
#>     Attrib V60    -0.03597295762663656
#>     Attrib V7    0.25996525378941615
#>     Attrib V8    -0.05769152687899763
#>     Attrib V9    -0.2692383031333138
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.20146244052207737
#>     Attrib V1    0.13118931110216103
#>     Attrib V10    -0.1635761201763756
#>     Attrib V11    0.07972718569877933
#>     Attrib V12    -0.03220599955071094
#>     Attrib V13    -0.3695536376594562
#>     Attrib V14    -0.10441075187461173
#>     Attrib V15    0.21273586762187244
#>     Attrib V16    0.16753219564521454
#>     Attrib V17    0.19457248688717407
#>     Attrib V18    0.08392428400061494
#>     Attrib V19    0.10343156918431512
#>     Attrib V2    0.1293278179425773
#>     Attrib V20    0.256320645506193
#>     Attrib V21    0.3463343806870912
#>     Attrib V22    0.3453862673897638
#>     Attrib V23    0.06947128242348606
#>     Attrib V24    -0.14632650995388274
#>     Attrib V25    -0.3740844168563862
#>     Attrib V26    -0.5686019304663438
#>     Attrib V27    -0.7090160305109315
#>     Attrib V28    -0.5559966381290314
#>     Attrib V29    -0.27709891043278306
#>     Attrib V3    -0.05449269537011349
#>     Attrib V30    0.0025527527335088324
#>     Attrib V31    -0.36312502602761315
#>     Attrib V32    0.16558863266671145
#>     Attrib V33    0.25958924018637947
#>     Attrib V34    0.0016048209202022292
#>     Attrib V35    -0.317147677046912
#>     Attrib V36    -0.3216970622946895
#>     Attrib V37    -0.4605409201569685
#>     Attrib V38    -0.052212716851239946
#>     Attrib V39    0.2923729515251885
#>     Attrib V4    0.42181957163088263
#>     Attrib V40    0.01294853622259679
#>     Attrib V41    -0.16988935902476804
#>     Attrib V42    -0.09349097080050112
#>     Attrib V43    0.3253948848547692
#>     Attrib V44    0.28242974835433404
#>     Attrib V45    -0.01654587918564037
#>     Attrib V46    -0.044185127054852544
#>     Attrib V47    -0.1138558467747539
#>     Attrib V48    0.13018377558583522
#>     Attrib V49    0.2018063277918667
#>     Attrib V5    0.28041309008342113
#>     Attrib V50    -0.31201144770196854
#>     Attrib V51    -0.39408360343050386
#>     Attrib V52    0.16383774044754976
#>     Attrib V53    0.05897429836981808
#>     Attrib V54    0.2612247503135473
#>     Attrib V55    0.14512867397180357
#>     Attrib V56    0.29582287440457083
#>     Attrib V57    0.12430045749160422
#>     Attrib V58    0.6006388377763142
#>     Attrib V59    0.13408376042705122
#>     Attrib V6    0.03389576429946824
#>     Attrib V60    0.13350639492465718
#>     Attrib V7    -0.30100402863526143
#>     Attrib V8    0.34179014251660045
#>     Attrib V9    0.3997969084134188
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.09218077634205442
#>     Attrib V1    0.07056063552505666
#>     Attrib V10    -0.04647459108290794
#>     Attrib V11    0.0614516047246104
#>     Attrib V12    0.0473947242037749
#>     Attrib V13    -0.0662253253493794
#>     Attrib V14    0.004877037312905344
#>     Attrib V15    0.02205657192638475
#>     Attrib V16    0.04154067305259446
#>     Attrib V17    0.011322617285928333
#>     Attrib V18    0.06394498726293761
#>     Attrib V19    -0.03132290465941175
#>     Attrib V2    0.07810097020740286
#>     Attrib V20    0.05309430050525731
#>     Attrib V21    0.09032950736141973
#>     Attrib V22    0.017361791647843208
#>     Attrib V23    -0.02612598979179286
#>     Attrib V24    -0.09060755779758903
#>     Attrib V25    -0.07607733284776964
#>     Attrib V26    -0.13428316195906773
#>     Attrib V27    -0.19745973162803016
#>     Attrib V28    -0.14230009816150802
#>     Attrib V29    -0.0414539318535687
#>     Attrib V3    0.086873748637646
#>     Attrib V30    -0.03367339453580009
#>     Attrib V31    -0.16449910557624967
#>     Attrib V32    0.02103247078570042
#>     Attrib V33    0.0401123612552247
#>     Attrib V34    0.06121498491534037
#>     Attrib V35    -0.08229047444584744
#>     Attrib V36    -0.0013678698277262552
#>     Attrib V37    -0.12181967482269959
#>     Attrib V38    -0.04096134339238424
#>     Attrib V39    0.17259403049723465
#>     Attrib V4    0.13165041165322533
#>     Attrib V40    0.034801208904888074
#>     Attrib V41    -0.07120391732061872
#>     Attrib V42    -0.04057792566681945
#>     Attrib V43    0.07742736997055873
#>     Attrib V44    0.13232314827692865
#>     Attrib V45    -0.019273584518315443
#>     Attrib V46    0.034229736614822995
#>     Attrib V47    0.05468413747499831
#>     Attrib V48    0.07461418616947792
#>     Attrib V49    0.12932956116781388
#>     Attrib V5    0.14246493709681568
#>     Attrib V50    -0.1436093214568006
#>     Attrib V51    -0.06130132339149181
#>     Attrib V52    0.09577764523423782
#>     Attrib V53    0.1173951961723689
#>     Attrib V54    0.08117257229755363
#>     Attrib V55    0.13260496633055702
#>     Attrib V56    0.14867401737509472
#>     Attrib V57    0.021957604215793968
#>     Attrib V58    0.27208697510212904
#>     Attrib V59    0.16108388148629643
#>     Attrib V6    0.04239404921358554
#>     Attrib V60    0.16549561130742338
#>     Attrib V7    -0.03816672730038466
#>     Attrib V8    0.13121982726956938
#>     Attrib V9    0.15807401641725413
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.6031970455293237
#>     Attrib V1    -0.20075752584963813
#>     Attrib V10    -0.15799820590427469
#>     Attrib V11    0.7583117468568613
#>     Attrib V12    0.9869437622379097
#>     Attrib V13    0.06631225802029975
#>     Attrib V14    -0.49246380694219766
#>     Attrib V15    -0.41033496730943586
#>     Attrib V16    -0.3656069173248089
#>     Attrib V17    -0.44297673946494526
#>     Attrib V18    -0.30563075193057315
#>     Attrib V19    -0.1055226158847054
#>     Attrib V2    0.5427454162023676
#>     Attrib V20    -0.433837024725749
#>     Attrib V21    -0.40862471680334
#>     Attrib V22    -0.16672741735645957
#>     Attrib V23    -0.01745321238918559
#>     Attrib V24    0.1965147401069431
#>     Attrib V25    0.23198892418711614
#>     Attrib V26    0.3751121264241458
#>     Attrib V27    0.3650469893176542
#>     Attrib V28    0.866788172085281
#>     Attrib V29    0.9283050927321368
#>     Attrib V3    0.14452580504087595
#>     Attrib V30    0.3209837358366304
#>     Attrib V31    -0.5838945347696984
#>     Attrib V32    -0.032192452225624064
#>     Attrib V33    -0.12835701586679488
#>     Attrib V34    0.12475906851478546
#>     Attrib V35    -0.13004050750780297
#>     Attrib V36    -0.5164110467173599
#>     Attrib V37    -0.34682184542317224
#>     Attrib V38    -0.3761924372490014
#>     Attrib V39    0.2629001724029315
#>     Attrib V4    0.5402832821567964
#>     Attrib V40    0.3227599479619063
#>     Attrib V41    0.5925885166677027
#>     Attrib V42    -0.2822347738179374
#>     Attrib V43    0.18813669550097747
#>     Attrib V44    0.31792729157522126
#>     Attrib V45    0.1725742526243827
#>     Attrib V46    0.5599564758242987
#>     Attrib V47    0.27863353777492844
#>     Attrib V48    0.5014191350312294
#>     Attrib V49    0.7696145114090422
#>     Attrib V5    0.6696545595220154
#>     Attrib V50    -1.2965364821670633
#>     Attrib V51    0.3677206567808502
#>     Attrib V52    0.7123838213401761
#>     Attrib V53    0.611692930561003
#>     Attrib V54    -0.14597413983013782
#>     Attrib V55    0.05553217840918297
#>     Attrib V56    -0.29337387881109034
#>     Attrib V57    -0.6561529753391951
#>     Attrib V58    0.6141691340847135
#>     Attrib V59    0.5799342968591135
#>     Attrib V6    0.4237922493629
#>     Attrib V60    0.28930614659961373
#>     Attrib V7    -0.44474629050010817
#>     Attrib V8    -0.14951624707350167
#>     Attrib V9    0.2710542425812332
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.17933082295532876
#>     Attrib V1    0.14964781022423185
#>     Attrib V10    0.04839693481990252
#>     Attrib V11    0.3623925681940053
#>     Attrib V12    0.22930490328594122
#>     Attrib V13    -0.3966807676239171
#>     Attrib V14    -0.3444688952259354
#>     Attrib V15    -0.2016546448899708
#>     Attrib V16    -0.14917678852583674
#>     Attrib V17    0.12900425205762553
#>     Attrib V18    0.15778627230882164
#>     Attrib V19    0.23737452251970803
#>     Attrib V2    0.17214502924244657
#>     Attrib V20    0.5818615327210139
#>     Attrib V21    0.7741170758232611
#>     Attrib V22    0.9073129014257387
#>     Attrib V23    0.632729610727724
#>     Attrib V24    -0.04501846857153876
#>     Attrib V25    -0.1258003738709192
#>     Attrib V26    -0.09794591280871658
#>     Attrib V27    -0.4491465019055249
#>     Attrib V28    -0.14562162798293157
#>     Attrib V29    0.4106907761223311
#>     Attrib V3    -0.2617922549712714
#>     Attrib V30    0.34882534335738946
#>     Attrib V31    -0.8603284463636033
#>     Attrib V32    -1.204652555455348E-4
#>     Attrib V33    0.061537535046861484
#>     Attrib V34    -0.011400927110268069
#>     Attrib V35    -0.06900248430842941
#>     Attrib V36    0.25809892125340617
#>     Attrib V37    0.17377840312088455
#>     Attrib V38    0.4016417021476168
#>     Attrib V39    0.5944657493794989
#>     Attrib V4    0.45135223799569824
#>     Attrib V40    0.013230711368875249
#>     Attrib V41    -0.27403955405186614
#>     Attrib V42    -0.28358932610435755
#>     Attrib V43    0.587699475808098
#>     Attrib V44    0.9346415541564729
#>     Attrib V45    0.31159762471014407
#>     Attrib V46    0.2727875515113783
#>     Attrib V47    0.09177751020741105
#>     Attrib V48    0.10706820190880743
#>     Attrib V49    0.40142537298829667
#>     Attrib V5    0.5512748442292721
#>     Attrib V50    -0.7531626066494456
#>     Attrib V51    -0.26642931045603213
#>     Attrib V52    0.3676033516576283
#>     Attrib V53    -0.059029015827200985
#>     Attrib V54    0.17508563585735368
#>     Attrib V55    -0.20631468495836114
#>     Attrib V56    0.25662647881014067
#>     Attrib V57    -0.5491185556774757
#>     Attrib V58    0.641162456009048
#>     Attrib V59    -0.020132257171240203
#>     Attrib V6    0.12289638098164993
#>     Attrib V60    0.12329119226015091
#>     Attrib V7    -0.4127508301616721
#>     Attrib V8    0.10756590779187503
#>     Attrib V9    0.7512345091166424
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.4671116315134715
#>     Attrib V1    -0.013191303048193923
#>     Attrib V10    -0.07586444946791833
#>     Attrib V11    -0.7223958533193856
#>     Attrib V12    -0.6074950165040086
#>     Attrib V13    0.25084084105587406
#>     Attrib V14    0.56692963378947
#>     Attrib V15    0.31204856420086724
#>     Attrib V16    0.24981322950411933
#>     Attrib V17    0.1553004878196453
#>     Attrib V18    0.11698967498226838
#>     Attrib V19    -0.046376839185890854
#>     Attrib V2    -0.4359870489538908
#>     Attrib V20    -0.1688173346079815
#>     Attrib V21    -0.26194553004473387
#>     Attrib V22    -0.6303217385832078
#>     Attrib V23    -0.5251146997894127
#>     Attrib V24    -0.024412172025085107
#>     Attrib V25    0.06458083832855636
#>     Attrib V26    0.05280207227893454
#>     Attrib V27    0.2768647405403071
#>     Attrib V28    -0.2981590054011841
#>     Attrib V29    -0.6953433261578186
#>     Attrib V3    -0.06089874240098029
#>     Attrib V30    -0.4165620178800865
#>     Attrib V31    0.7440392318974849
#>     Attrib V32    -0.3468289500251321
#>     Attrib V33    -0.12225014773981627
#>     Attrib V34    -0.03764112760732881
#>     Attrib V35    0.37365635767177
#>     Attrib V36    0.42328620819281754
#>     Attrib V37    0.2325733562770806
#>     Attrib V38    0.023241388278379307
#>     Attrib V39    -0.4778024237900297
#>     Attrib V4    -0.23639291951845898
#>     Attrib V40    -0.09551843551026412
#>     Attrib V41    -0.06054719276306341
#>     Attrib V42    0.24462257670499685
#>     Attrib V43    -0.38068444607346014
#>     Attrib V44    -0.42335332513536256
#>     Attrib V45    0.03710606707295476
#>     Attrib V46    -0.3296369890830205
#>     Attrib V47    -0.27777506243560274
#>     Attrib V48    -0.27174105724097936
#>     Attrib V49    -0.5747773396707337
#>     Attrib V5    -0.5345307918522795
#>     Attrib V50    1.238350982388533
#>     Attrib V51    -0.07795543077869319
#>     Attrib V52    -0.7269870002081399
#>     Attrib V53    -0.17383906423383474
#>     Attrib V54    0.10191074479063628
#>     Attrib V55    0.32056919607126927
#>     Attrib V56    -0.09382749543420658
#>     Attrib V57    0.8825082889088106
#>     Attrib V58    -0.6999740266569722
#>     Attrib V59    0.09239304815412915
#>     Attrib V6    -0.2283073943011186
#>     Attrib V60    0.03358113070327216
#>     Attrib V7    0.6496485070684148
#>     Attrib V8    -0.0046566847793726995
#>     Attrib V9    -0.7328595317738079
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.20088863454263656
#>     Attrib V1    0.15879143554137534
#>     Attrib V10    -0.2213444498841568
#>     Attrib V11    0.030458919587008266
#>     Attrib V12    -0.02147349144321583
#>     Attrib V13    -0.39041369552559657
#>     Attrib V14    -0.06405955948700387
#>     Attrib V15    0.1544825387336608
#>     Attrib V16    0.22462376163078693
#>     Attrib V17    0.19925928063794413
#>     Attrib V18    0.0643022287983112
#>     Attrib V19    0.0434140011020499
#>     Attrib V2    0.08293794463452935
#>     Attrib V20    0.28303115223171493
#>     Attrib V21    0.33747593829326006
#>     Attrib V22    0.25606639751366284
#>     Attrib V23    0.02861811504197974
#>     Attrib V24    -0.1541608821357621
#>     Attrib V25    -0.4022546277376709
#>     Attrib V26    -0.6405897048880802
#>     Attrib V27    -0.7949234305212971
#>     Attrib V28    -0.6863212485488479
#>     Attrib V29    -0.30910199742720024
#>     Attrib V3    -0.05861491887805306
#>     Attrib V30    -0.07780146499437654
#>     Attrib V31    -0.3536962981056186
#>     Attrib V32    0.2281257631849112
#>     Attrib V33    0.2254501165278235
#>     Attrib V34    0.050181704913403485
#>     Attrib V35    -0.3617594834789464
#>     Attrib V36    -0.32284411300507865
#>     Attrib V37    -0.47952309891947864
#>     Attrib V38    -0.1528214777850683
#>     Attrib V39    0.24206920422025893
#>     Attrib V4    0.44120253632753637
#>     Attrib V40    0.08576529459169566
#>     Attrib V41    -0.23152111554442378
#>     Attrib V42    -0.09393608309460393
#>     Attrib V43    0.3589568940390812
#>     Attrib V44    0.232193192579666
#>     Attrib V45    -0.14211763170283886
#>     Attrib V46    -0.010690992478074356
#>     Attrib V47    -0.11018058970613766
#>     Attrib V48    0.12849925443149307
#>     Attrib V49    0.2367244828231796
#>     Attrib V5    0.29755449557203495
#>     Attrib V50    -0.2984330143071502
#>     Attrib V51    -0.43559059392039035
#>     Attrib V52    0.1735981946799076
#>     Attrib V53    0.04232818324558899
#>     Attrib V54    0.31548378317862763
#>     Attrib V55    0.12753138493771374
#>     Attrib V56    0.3264377275229994
#>     Attrib V57    0.12078059006027438
#>     Attrib V58    0.6961098042354174
#>     Attrib V59    0.17797409381940082
#>     Attrib V6    0.0369562452506246
#>     Attrib V60    0.18440449654439536
#>     Attrib V7    -0.2561525694053666
#>     Attrib V8    0.24996012368784168
#>     Attrib V9    0.385606460515194
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.16234194871688684
#>     Attrib V1    0.11352499874307528
#>     Attrib V10    -0.2352615641764378
#>     Attrib V11    0.08465547330582532
#>     Attrib V12    0.06529849498582885
#>     Attrib V13    -0.27401077313004335
#>     Attrib V14    -0.05753673946064454
#>     Attrib V15    0.1130143816582351
#>     Attrib V16    0.08846386908517816
#>     Attrib V17    0.2060101993498043
#>     Attrib V18    0.09346087093663907
#>     Attrib V19    0.07555294239562615
#>     Attrib V2    0.026622757205505387
#>     Attrib V20    0.21056438199950753
#>     Attrib V21    0.2700643902924906
#>     Attrib V22    0.2463945439966247
#>     Attrib V23    0.09284191771040719
#>     Attrib V24    -0.18104763658230988
#>     Attrib V25    -0.29739576298680886
#>     Attrib V26    -0.4325971997974407
#>     Attrib V27    -0.6372199416707532
#>     Attrib V28    -0.5109593154535608
#>     Attrib V29    -0.21109028861364157
#>     Attrib V3    -0.020450303630613228
#>     Attrib V30    -0.025021524106938763
#>     Attrib V31    -0.38257715188281183
#>     Attrib V32    0.13804696596996388
#>     Attrib V33    0.16359274844473926
#>     Attrib V34    0.012205477005910353
#>     Attrib V35    -0.22425791119084668
#>     Attrib V36    -0.19935274274660045
#>     Attrib V37    -0.30207105873002144
#>     Attrib V38    -0.08451126666149751
#>     Attrib V39    0.2510237981084228
#>     Attrib V4    0.3965436044412307
#>     Attrib V40    0.009788515636824174
#>     Attrib V41    -0.19832583322046649
#>     Attrib V42    -0.12315627332315397
#>     Attrib V43    0.2758017108298363
#>     Attrib V44    0.23766363608603783
#>     Attrib V45    -4.008296036105763E-4
#>     Attrib V46    -0.0014994643869889583
#>     Attrib V47    -0.023674639185970178
#>     Attrib V48    0.033250678258865
#>     Attrib V49    0.18297269726347098
#>     Attrib V5    0.2549798682979995
#>     Attrib V50    -0.32035861961419093
#>     Attrib V51    -0.3938260602434145
#>     Attrib V52    0.21267469606571118
#>     Attrib V53    0.09619678891105259
#>     Attrib V54    0.23905332578034555
#>     Attrib V55    0.1263814284120343
#>     Attrib V56    0.27521612374611065
#>     Attrib V57    0.036192540035396306
#>     Attrib V58    0.5594745976274734
#>     Attrib V59    0.19607977804825347
#>     Attrib V6    0.05231452424784573
#>     Attrib V60    0.11325025227910035
#>     Attrib V7    -0.22682394655409718
#>     Attrib V8    0.22740114129823055
#>     Attrib V9    0.3294267058827289
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.40124030732283045
#>     Attrib V1    -0.03404185289780467
#>     Attrib V10    -0.016883362318383176
#>     Attrib V11    -0.5187511213170815
#>     Attrib V12    -0.4731280517243237
#>     Attrib V13    0.19784557190506108
#>     Attrib V14    0.44540905266280734
#>     Attrib V15    0.2761774277878717
#>     Attrib V16    0.19080270439136296
#>     Attrib V17    0.1920794295384838
#>     Attrib V18    0.1070035460278856
#>     Attrib V19    0.015266034107221303
#>     Attrib V2    -0.33308861367275433
#>     Attrib V20    -0.08162491787013805
#>     Attrib V21    -0.20651343695366756
#>     Attrib V22    -0.45862232171062417
#>     Attrib V23    -0.32526104331478417
#>     Attrib V24    -0.06083630672248408
#>     Attrib V25    0.02941971920410338
#>     Attrib V26    0.061392963860089286
#>     Attrib V27    0.19632151817841803
#>     Attrib V28    -0.20122685865424952
#>     Attrib V29    -0.5517143830727221
#>     Attrib V3    -0.05780979192259821
#>     Attrib V30    -0.32121312113592354
#>     Attrib V31    0.5093013098434137
#>     Attrib V32    -0.2231634494073351
#>     Attrib V33    -0.1271042713334098
#>     Attrib V34    -0.043189082491286064
#>     Attrib V35    0.30494909592480884
#>     Attrib V36    0.3879692569301802
#>     Attrib V37    0.16224235561777745
#>     Attrib V38    0.032963013984109835
#>     Attrib V39    -0.40639573832659787
#>     Attrib V4    -0.23776266530420515
#>     Attrib V40    -0.0884203079860461
#>     Attrib V41    -0.06804991938777781
#>     Attrib V42    0.18895714904307304
#>     Attrib V43    -0.2839933154704155
#>     Attrib V44    -0.37916101546800757
#>     Attrib V45    -0.0029497752674082127
#>     Attrib V46    -0.24916965004747008
#>     Attrib V47    -0.16282597129210352
#>     Attrib V48    -0.237552422659853
#>     Attrib V49    -0.4751828150962646
#>     Attrib V5    -0.48981514109203794
#>     Attrib V50    0.9874819397470495
#>     Attrib V51    -0.0031040810853841814
#>     Attrib V52    -0.4963106166457588
#>     Attrib V53    -0.19278042437612045
#>     Attrib V54    0.055644032981384754
#>     Attrib V55    0.24675592337009686
#>     Attrib V56    -0.011878295913089086
#>     Attrib V57    0.6484821191132155
#>     Attrib V58    -0.5295482547233216
#>     Attrib V59    -0.010301662750606271
#>     Attrib V6    -0.16459547177290784
#>     Attrib V60    -0.07276715595359778
#>     Attrib V7    0.42212854688444185
#>     Attrib V8    0.02736686302141233
#>     Attrib V9    -0.499593656396375
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.6521596109864767
#>     Attrib V1    -0.0786615633291826
#>     Attrib V10    0.4716883569002932
#>     Attrib V11    1.2778796232070808
#>     Attrib V12    1.5230988193857178
#>     Attrib V13    0.48412230650063387
#>     Attrib V14    -0.668121345814075
#>     Attrib V15    -0.7644679093865809
#>     Attrib V16    -0.5357980266354276
#>     Attrib V17    -0.6035339244973376
#>     Attrib V18    -0.28210963095872893
#>     Attrib V19    -0.01264683506661853
#>     Attrib V2    0.9979691408582811
#>     Attrib V20    -0.4144313716625563
#>     Attrib V21    -0.23972321766219576
#>     Attrib V22    0.3245237382688345
#>     Attrib V23    0.5410613696975576
#>     Attrib V24    0.4811119637141761
#>     Attrib V25    0.5895439724940967
#>     Attrib V26    1.1253838522021147
#>     Attrib V27    1.012920047906897
#>     Attrib V28    1.5290454334121477
#>     Attrib V29    1.4173219769649072
#>     Attrib V3    0.33580781872040066
#>     Attrib V30    0.4476071749351975
#>     Attrib V31    -0.8011128094660249
#>     Attrib V32    -0.1048876556970208
#>     Attrib V33    -0.39294126926665995
#>     Attrib V34    0.1407032155113181
#>     Attrib V35    0.0379619397769886
#>     Attrib V36    -0.5349123636401121
#>     Attrib V37    0.07195869141756694
#>     Attrib V38    -0.25518972869924716
#>     Attrib V39    0.4067307750058516
#>     Attrib V4    0.3606332900965204
#>     Attrib V40    0.5397934174432821
#>     Attrib V41    1.3532181543807809
#>     Attrib V42    -0.3444251094482664
#>     Attrib V43    0.08702167665030938
#>     Attrib V44    0.3831886937718246
#>     Attrib V45    0.21043634423149396
#>     Attrib V46    0.7832426281509682
#>     Attrib V47    0.5213045186651316
#>     Attrib V48    0.7009871195023895
#>     Attrib V49    1.003877145001666
#>     Attrib V5    1.0258432679191205
#>     Attrib V50    -1.6132322310972855
#>     Attrib V51    1.2531722303497657
#>     Attrib V52    0.8858219810114129
#>     Attrib V53    0.7362786319604632
#>     Attrib V54    -0.1937269425415231
#>     Attrib V55    -0.35157691067641045
#>     Attrib V56    -0.25724639356926604
#>     Attrib V57    -1.3001935247570535
#>     Attrib V58    0.3334543088357682
#>     Attrib V59    0.7602528716445648
#>     Attrib V6    0.8163261783679142
#>     Attrib V60    0.7522459839538729
#>     Attrib V7    -0.49618341583363085
#>     Attrib V8    -0.6117082236830407
#>     Attrib V9    0.575380475272266
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.4330878409682857
#>     Attrib V1    -0.0019384517154948757
#>     Attrib V10    0.03263837781210601
#>     Attrib V11    -0.4661388060327308
#>     Attrib V12    -0.3923699667450734
#>     Attrib V13    0.21005944127645476
#>     Attrib V14    0.406418139779771
#>     Attrib V15    0.12804262656692839
#>     Attrib V16    0.11099029838043377
#>     Attrib V17    0.12597180932456184
#>     Attrib V18    0.0839154826640835
#>     Attrib V19    0.09996562114149096
#>     Attrib V2    -0.26376114661072797
#>     Attrib V20    -0.021473336693404635
#>     Attrib V21    -0.12204330554312225
#>     Attrib V22    -0.3022048544572792
#>     Attrib V23    -0.22987354845231478
#>     Attrib V24    0.012609768949936888
#>     Attrib V25    0.11885563131731378
#>     Attrib V26    0.08213525886196371
#>     Attrib V27    0.265633675197326
#>     Attrib V28    -0.093034975002281
#>     Attrib V29    -0.372185439885827
#>     Attrib V3    -0.07522163573683664
#>     Attrib V30    -0.2513831067806229
#>     Attrib V31    0.3945703083501356
#>     Attrib V32    -0.31430708507415595
#>     Attrib V33    -0.09339577011229093
#>     Attrib V34    -0.03801186215400926
#>     Attrib V35    0.40776323598304565
#>     Attrib V36    0.47499426675034606
#>     Attrib V37    0.3422387811941131
#>     Attrib V38    0.09995994274934165
#>     Attrib V39    -0.30332231880884
#>     Attrib V4    -0.20320283214937243
#>     Attrib V40    -0.1048115147101096
#>     Attrib V41    -0.049467600763187305
#>     Attrib V42    0.2252739439014086
#>     Attrib V43    -0.2537194128375727
#>     Attrib V44    -0.2335809339667187
#>     Attrib V45    0.09539534898459767
#>     Attrib V46    -0.20155664621624736
#>     Attrib V47    -0.1665658182144687
#>     Attrib V48    -0.19214845967498806
#>     Attrib V49    -0.4110325235183376
#>     Attrib V5    -0.3873770404177872
#>     Attrib V50    0.8310286097488585
#>     Attrib V51    -0.025350900368986153
#>     Attrib V52    -0.5238328125399174
#>     Attrib V53    -0.18935709893027058
#>     Attrib V54    0.029820550268129128
#>     Attrib V55    0.13732433704379463
#>     Attrib V56    -0.04966791850902587
#>     Attrib V57    0.483505786615578
#>     Attrib V58    -0.5374696852346018
#>     Attrib V59    -0.0032023291187362173
#>     Attrib V6    -0.10306524077602798
#>     Attrib V60    0.0185854077139219
#>     Attrib V7    0.3946883330066738
#>     Attrib V8    -0.03491339919658864
#>     Attrib V9    -0.49390933963225014
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.507776063270988
#>     Attrib V1    0.05514524653322894
#>     Attrib V10    -0.09443841281977342
#>     Attrib V11    0.41311758526693837
#>     Attrib V12    0.3147370393366091
#>     Attrib V13    -0.34452565365517207
#>     Attrib V14    -0.46954436870811617
#>     Attrib V15    -0.18718190671459564
#>     Attrib V16    -0.14906973941547896
#>     Attrib V17    -0.07372878612256062
#>     Attrib V18    0.004957590338141145
#>     Attrib V19    0.04753595237500765
#>     Attrib V2    0.21188041830683774
#>     Attrib V20    0.17289295996142073
#>     Attrib V21    0.31990025916159853
#>     Attrib V22    0.4573832894930248
#>     Attrib V23    0.3028095535276858
#>     Attrib V24    -0.02212125918680014
#>     Attrib V25    -0.1653279614805451
#>     Attrib V26    -0.11896083990471626
#>     Attrib V27    -0.3980849801744517
#>     Attrib V28    -0.07056322277928095
#>     Attrib V29    0.35843241429703687
#>     Attrib V3    -0.14800747483047083
#>     Attrib V30    0.2815577511970879
#>     Attrib V31    -0.6451034386381272
#>     Attrib V32    0.17044562915846878
#>     Attrib V33    0.10401476528817598
#>     Attrib V34    0.07208572089026014
#>     Attrib V35    -0.3035991010626399
#>     Attrib V36    -0.2554533081915003
#>     Attrib V37    -0.25466989287139546
#>     Attrib V38    -0.021422027983002703
#>     Attrib V39    0.4222997027258138
#>     Attrib V4    0.4179269092752703
#>     Attrib V40    0.017087243128142703
#>     Attrib V41    -0.0897812363288543
#>     Attrib V42    -0.24131389002375847
#>     Attrib V43    0.36957521618037864
#>     Attrib V44    0.5252049915832138
#>     Attrib V45    0.08426321630192421
#>     Attrib V46    0.16341667071805938
#>     Attrib V47    0.0307325667864642
#>     Attrib V48    0.16447438857930186
#>     Attrib V49    0.3599222589720665
#>     Attrib V5    0.41175322796709435
#>     Attrib V50    -0.8447791801626751
#>     Attrib V51    -0.17161007600732356
#>     Attrib V52    0.47220616436757684
#>     Attrib V53    0.0934604632644374
#>     Attrib V54    0.05561728618349908
#>     Attrib V55    -0.1137220071355998
#>     Attrib V56    0.011706821351292316
#>     Attrib V57    -0.44054164460238504
#>     Attrib V58    0.6475718371950392
#>     Attrib V59    0.08717366038484142
#>     Attrib V6    0.13147104516363098
#>     Attrib V60    0.056987113248573536
#>     Attrib V7    -0.5307796958805042
#>     Attrib V8    0.1524428728343846
#>     Attrib V9    0.5745370694771655
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.5010286032755361
#>     Attrib V1    0.0035527725179099667
#>     Attrib V10    -0.4563524717490987
#>     Attrib V11    -1.123929920143465
#>     Attrib V12    -1.329335484073478
#>     Attrib V13    -0.31302363887126383
#>     Attrib V14    0.6742807179652599
#>     Attrib V15    0.7751013936336993
#>     Attrib V16    0.6390730087878947
#>     Attrib V17    0.5389444674640981
#>     Attrib V18    0.23279333012871625
#>     Attrib V19    -0.18440876070840573
#>     Attrib V2    -0.8075129577332655
#>     Attrib V20    0.10365738953243894
#>     Attrib V21    -0.04063606851134557
#>     Attrib V22    -0.5284582772232718
#>     Attrib V23    -0.6960819622223801
#>     Attrib V24    -0.4717362984779305
#>     Attrib V25    -0.6583139505370359
#>     Attrib V26    -0.7800611710021218
#>     Attrib V27    -0.3741368093548624
#>     Attrib V28    -1.230289051200511
#>     Attrib V29    -1.430762248692422
#>     Attrib V3    -0.25019640084344785
#>     Attrib V30    -0.4994307141179933
#>     Attrib V31    0.7094948213452985
#>     Attrib V32    -0.07730068888756081
#>     Attrib V33    0.1944582003490662
#>     Attrib V34    -0.07962159747071931
#>     Attrib V35    0.1349512058392505
#>     Attrib V36    0.5794922204103881
#>     Attrib V37    0.0312684052121262
#>     Attrib V38    0.2084364884268455
#>     Attrib V39    -0.5106508567594962
#>     Attrib V4    -0.5162016487174059
#>     Attrib V40    -0.4674199338188216
#>     Attrib V41    -1.0835077617515034
#>     Attrib V42    0.3225720252640542
#>     Attrib V43    -0.15006260736541283
#>     Attrib V44    -0.4178035339299648
#>     Attrib V45    -0.0401787914955476
#>     Attrib V46    -0.6894827292169036
#>     Attrib V47    -0.6532751446090675
#>     Attrib V48    -0.6821023726014184
#>     Attrib V49    -1.0134088571727033
#>     Attrib V5    -1.1997324718190974
#>     Attrib V50    1.6653697356899961
#>     Attrib V51    -0.9676924329762774
#>     Attrib V52    -0.7154142729467278
#>     Attrib V53    -0.5765887174555492
#>     Attrib V54    0.3787950940292418
#>     Attrib V55    0.5167355466460839
#>     Attrib V56    0.18034093153457686
#>     Attrib V57    1.3967717196594014
#>     Attrib V58    -0.3666061928668811
#>     Attrib V59    -0.5137198851849961
#>     Attrib V6    -0.8529904991919426
#>     Attrib V60    -0.559398578536931
#>     Attrib V7    0.3833892400993242
#>     Attrib V8    0.47150904572772817
#>     Attrib V9    -0.6863907107669988
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.2910862808090508
#>     Attrib V1    0.03255931878125364
#>     Attrib V10    -0.19337237641038907
#>     Attrib V11    0.2527121795660349
#>     Attrib V12    0.16137679984774336
#>     Attrib V13    -0.33878961395504553
#>     Attrib V14    -0.15819354144848005
#>     Attrib V15    0.03320840709723273
#>     Attrib V16    0.0488360723810469
#>     Attrib V17    0.11175526552241226
#>     Attrib V18    0.06060968804058715
#>     Attrib V19    0.04553739153690263
#>     Attrib V2    0.10602170144614492
#>     Attrib V20    0.28155075709624183
#>     Attrib V21    0.3515389613467538
#>     Attrib V22    0.3657183159364443
#>     Attrib V23    0.13326246598632616
#>     Attrib V24    -0.07466179071574418
#>     Attrib V25    -0.206460707972237
#>     Attrib V26    -0.4466958468469842
#>     Attrib V27    -0.6191444773132367
#>     Attrib V28    -0.3663271767408709
#>     Attrib V29    0.048764437525878876
#>     Attrib V3    -0.05298918355970043
#>     Attrib V30    0.06844343277429024
#>     Attrib V31    -0.4479254314491226
#>     Attrib V32    0.24289230938614606
#>     Attrib V33    0.20666598339772302
#>     Attrib V34    0.03448146046465781
#>     Attrib V35    -0.35943610582987484
#>     Attrib V36    -0.34847237771757467
#>     Attrib V37    -0.4011208494375752
#>     Attrib V38    -0.1056034891436398
#>     Attrib V39    0.3166079279148001
#>     Attrib V4    0.40804832388677376
#>     Attrib V40    0.06957589672334283
#>     Attrib V41    -0.11808099689225623
#>     Attrib V42    -0.16693105909827724
#>     Attrib V43    0.3355924671752371
#>     Attrib V44    0.24955879813453324
#>     Attrib V45    -0.01907836559703704
#>     Attrib V46    0.04278032308154838
#>     Attrib V47    0.01234402085604059
#>     Attrib V48    0.13671750239947877
#>     Attrib V49    0.29313323740271185
#>     Attrib V5    0.32523193057390126
#>     Attrib V50    -0.5131670499276187
#>     Attrib V51    -0.2760159373116674
#>     Attrib V52    0.3249801665814955
#>     Attrib V53    0.08275278025518848
#>     Attrib V54    0.14043266327193057
#>     Attrib V55    0.05358684878346863
#>     Attrib V56    0.2126271098761363
#>     Attrib V57    -0.12156488267728152
#>     Attrib V58    0.6221981757456949
#>     Attrib V59    0.12828851632833624
#>     Attrib V6    0.07863792716621125
#>     Attrib V60    0.09228650669600988
#>     Attrib V7    -0.354241794984928
#>     Attrib V8    0.28003267424929457
#>     Attrib V9    0.4569147824860844
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.39901285847745754
#>     Attrib V1    0.028467376647747265
#>     Attrib V10    0.10694977250752241
#>     Attrib V11    -0.41819729327689803
#>     Attrib V12    -0.37652782414805064
#>     Attrib V13    0.269992681082104
#>     Attrib V14    0.37981342555528674
#>     Attrib V15    0.19040222719053848
#>     Attrib V16    0.15259487301423533
#>     Attrib V17    0.15959721486737424
#>     Attrib V18    0.12622374056969468
#>     Attrib V19    0.03350504628243183
#>     Attrib V2    -0.24407346759690318
#>     Attrib V20    -0.04447079874887985
#>     Attrib V21    -0.10572601231530446
#>     Attrib V22    -0.29391798833384314
#>     Attrib V23    -0.2319366951930373
#>     Attrib V24    -0.02625142211106184
#>     Attrib V25    0.11346627150608889
#>     Attrib V26    0.11557113363435166
#>     Attrib V27    0.21113191255590663
#>     Attrib V28    -0.1273598880098333
#>     Attrib V29    -0.43925399718336255
#>     Attrib V3    -0.059418824929168626
#>     Attrib V30    -0.21798297625197705
#>     Attrib V31    0.5036323290601666
#>     Attrib V32    -0.27095119995531114
#>     Attrib V33    -0.1253760161872483
#>     Attrib V34    -0.039806348538204514
#>     Attrib V35    0.36078983752133403
#>     Attrib V36    0.3772667863490385
#>     Attrib V37    0.29170814360387454
#>     Attrib V38    0.05117223013908155
#>     Attrib V39    -0.27584136127802494
#>     Attrib V4    -0.21319121132746016
#>     Attrib V40    -0.06661439104463097
#>     Attrib V41    -0.02568387466036581
#>     Attrib V42    0.24357076763395769
#>     Attrib V43    -0.30084867956662537
#>     Attrib V44    -0.3225467913570352
#>     Attrib V45    0.06594307008187546
#>     Attrib V46    -0.20256031038258987
#>     Attrib V47    -0.1691768802173359
#>     Attrib V48    -0.1969233222908804
#>     Attrib V49    -0.42101349049242986
#>     Attrib V5    -0.39735412579509666
#>     Attrib V50    0.7977968739609708
#>     Attrib V51    -0.013097739099975048
#>     Attrib V52    -0.4865769518720724
#>     Attrib V53    -0.16297717949886717
#>     Attrib V54    0.04278661632602058
#>     Attrib V55    0.12378391320636058
#>     Attrib V56    0.0015710633596453672
#>     Attrib V57    0.4330990486064422
#>     Attrib V58    -0.48512614503743184
#>     Attrib V59    0.005641335026135749
#>     Attrib V6    -0.12455896227845929
#>     Attrib V60    -0.013923328098131937
#>     Attrib V7    0.3704029562049122
#>     Attrib V8    -0.047056452941079525
#>     Attrib V9    -0.46504265655547733
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.14999908578825655
#>     Attrib V1    0.14286811609169148
#>     Attrib V10    -0.22892332247775354
#>     Attrib V11    0.0703866342361419
#>     Attrib V12    -0.06530689354819534
#>     Attrib V13    -0.35234933146127484
#>     Attrib V14    -0.03767932335763442
#>     Attrib V15    0.20501031191795796
#>     Attrib V16    0.17491390771676293
#>     Attrib V17    0.23240535211901095
#>     Attrib V18    0.10832590112964226
#>     Attrib V19    0.05979423524989117
#>     Attrib V2    0.10977458304327388
#>     Attrib V20    0.3374734630391222
#>     Attrib V21    0.34900467837424803
#>     Attrib V22    0.34277379642011624
#>     Attrib V23    0.12603930282688997
#>     Attrib V24    -0.16590564640385108
#>     Attrib V25    -0.43003646311745847
#>     Attrib V26    -0.6174024467332602
#>     Attrib V27    -0.8378058253948009
#>     Attrib V28    -0.687100132375442
#>     Attrib V29    -0.3196358861353067
#>     Attrib V3    -0.08596746894361751
#>     Attrib V30    -0.06786163453175074
#>     Attrib V31    -0.40423515114607017
#>     Attrib V32    0.19715398922601393
#>     Attrib V33    0.27159910464278025
#>     Attrib V34    0.06202956024611323
#>     Attrib V35    -0.3114146973920805
#>     Attrib V36    -0.30000483818466145
#>     Attrib V37    -0.44697131214752944
#>     Attrib V38    -0.05392380024869379
#>     Attrib V39    0.2659215588353602
#>     Attrib V4    0.45535035297413406
#>     Attrib V40    0.035879213570787924
#>     Attrib V41    -0.28264829524608415
#>     Attrib V42    -0.11211495635895277
#>     Attrib V43    0.3440365141288965
#>     Attrib V44    0.320049864057563
#>     Attrib V45    -0.06825749388203359
#>     Attrib V46    -0.021578599397696588
#>     Attrib V47    -0.08469101906392705
#>     Attrib V48    0.07598596558268586
#>     Attrib V49    0.216862167415978
#>     Attrib V5    0.25640465856168354
#>     Attrib V50    -0.3112810085066841
#>     Attrib V51    -0.5059083019709262
#>     Attrib V52    0.1753880083621343
#>     Attrib V53    0.0893759748571537
#>     Attrib V54    0.35514343285302613
#>     Attrib V55    0.1592751464547175
#>     Attrib V56    0.27211882238136237
#>     Attrib V57    0.11348952669731088
#>     Attrib V58    0.6428509836030929
#>     Attrib V59    0.14316911384738995
#>     Attrib V6    0.010374612369397889
#>     Attrib V60    0.12395344007488004
#>     Attrib V7    -0.25024617024139423
#>     Attrib V8    0.3575858512793809
#>     Attrib V9    0.4487241549641609
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.14283136046909048
#>     Attrib V1    0.10151590635139593
#>     Attrib V10    -0.01721679377146596
#>     Attrib V11    0.030423787736044254
#>     Attrib V12    0.016343487779481126
#>     Attrib V13    -0.015296079148600077
#>     Attrib V14    0.11154565141559925
#>     Attrib V15    0.07365570710820862
#>     Attrib V16    0.07332096706003638
#>     Attrib V17    0.01939847009826717
#>     Attrib V18    0.07394358136587321
#>     Attrib V19    -0.04745524454028066
#>     Attrib V2    0.02076133303534944
#>     Attrib V20    -0.0021152067832447387
#>     Attrib V21    0.005595706718831748
#>     Attrib V22    -0.04139463028611032
#>     Attrib V23    -0.005409429921906183
#>     Attrib V24    -0.05461402489638833
#>     Attrib V25    -0.09019724063973186
#>     Attrib V26    -0.07827841013834726
#>     Attrib V27    -0.07912102161658632
#>     Attrib V28    -0.049502400798353954
#>     Attrib V29    -0.0631570587746155
#>     Attrib V3    0.09335234629623035
#>     Attrib V30    -0.008710986707842427
#>     Attrib V31    -0.06452008493182973
#>     Attrib V32    -0.014491823407812118
#>     Attrib V33    0.03691721387054699
#>     Attrib V34    0.046658213543231526
#>     Attrib V35    0.07773754358049008
#>     Attrib V36    0.12881828824417335
#>     Attrib V37    0.05541538806345892
#>     Attrib V38    -0.019884169589110805
#>     Attrib V39    0.06741694058473036
#>     Attrib V4    0.0034649248997433452
#>     Attrib V40    0.030427760473176448
#>     Attrib V41    -0.020124736467770136
#>     Attrib V42    0.044829343226326875
#>     Attrib V43    -0.02522985998328742
#>     Attrib V44    0.033642753653716134
#>     Attrib V45    0.07032969446664085
#>     Attrib V46    0.04828550740853625
#>     Attrib V47    0.014047372168729685
#>     Attrib V48    -0.012590451439040825
#>     Attrib V49    0.046606855956492305
#>     Attrib V5    0.04836013005630921
#>     Attrib V50    0.02401536044608383
#>     Attrib V51    -0.003837174177259332
#>     Attrib V52    0.09304176445950081
#>     Attrib V53    0.08233667033117467
#>     Attrib V54    0.044763218995484494
#>     Attrib V55    0.06620726723778979
#>     Attrib V56    0.08640628814839271
#>     Attrib V57    0.10596511944406925
#>     Attrib V58    0.17653887344964067
#>     Attrib V59    0.05301357866594097
#>     Attrib V6    0.07974169769340549
#>     Attrib V60    0.08464390953012965
#>     Attrib V7    0.014701567642676203
#>     Attrib V8    0.10552496824089987
#>     Attrib V9    0.1091916744687389
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
#>  0.2173913 
```
