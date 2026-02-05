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
#>     Threshold    0.11580729795479877
#>     Node 2    2.7527725724533405
#>     Node 3    1.2218949982238816
#>     Node 4    0.6785458254327313
#>     Node 5    -3.9700507113896144
#>     Node 6    0.24838633746914804
#>     Node 7    3.4816312080476464
#>     Node 8    0.48453453936285384
#>     Node 9    2.4236687459772597
#>     Node 10    -0.8500275792305365
#>     Node 11    1.3574094208875314
#>     Node 12    2.1441655454379833
#>     Node 13    0.44927504035770977
#>     Node 14    1.8646588085419757
#>     Node 15    -1.5659933066572922
#>     Node 16    0.36046766439826167
#>     Node 17    -1.3216058102881882
#>     Node 18    -0.14702883426344093
#>     Node 19    1.813009772733015
#>     Node 20    2.3688627769504484
#>     Node 21    -2.0267787125402674
#>     Node 22    1.2249535251953967
#>     Node 23    2.174667890353684
#>     Node 24    -1.1929093623746252
#>     Node 25    2.950278673555104
#>     Node 26    0.40232733511568036
#>     Node 27    1.887588475912663
#>     Node 28    -2.9762694021977874
#>     Node 29    0.7797889427470118
#>     Node 30    -0.24813454329873758
#>     Node 31    1.3448952041710256
#>     Node 32    0.5813927958357556
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.10516794810704864
#>     Node 2    -2.773251425268565
#>     Node 3    -1.197161085908047
#>     Node 4    -0.6359022245505371
#>     Node 5    3.9907339935272157
#>     Node 6    -0.2291948605177728
#>     Node 7    -3.487752837994737
#>     Node 8    -0.5194841061492204
#>     Node 9    -2.4298893988588186
#>     Node 10    0.7746459121431474
#>     Node 11    -1.3338815023562705
#>     Node 12    -2.2013578738266473
#>     Node 13    -0.3983018731482604
#>     Node 14    -1.7956874697171372
#>     Node 15    1.5443439705958806
#>     Node 16    -0.37802751319107886
#>     Node 17    1.3486587776628074
#>     Node 18    0.18086843800050156
#>     Node 19    -1.799239025385084
#>     Node 20    -2.3350482472832583
#>     Node 21    2.071924938910936
#>     Node 22    -1.2720841931378122
#>     Node 23    -2.2017229602415265
#>     Node 24    1.170453905468162
#>     Node 25    -2.9485827960798483
#>     Node 26    -0.48879254674047157
#>     Node 27    -1.9208440030209644
#>     Node 28    2.9208948215236297
#>     Node 29    -0.8098084613645294
#>     Node 30    0.31859802832263157
#>     Node 31    -1.2836383695129532
#>     Node 32    -0.5990072985901405
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.1911263201856717
#>     Attrib V1    0.3638057717084458
#>     Attrib V10    -0.4386790541631114
#>     Attrib V11    -0.011904663530742357
#>     Attrib V12    -0.10187099846843967
#>     Attrib V13    0.0036784452586352636
#>     Attrib V14    0.40602130376877504
#>     Attrib V15    0.4513338292696463
#>     Attrib V16    -0.0612904854826502
#>     Attrib V17    -0.056022470456182846
#>     Attrib V18    0.3239380241724059
#>     Attrib V19    0.15523590080561028
#>     Attrib V2    0.003210723519794284
#>     Attrib V20    1.1928160046584955
#>     Attrib V21    1.2198385736021025
#>     Attrib V22    0.8342631038098458
#>     Attrib V23    0.5963514908246785
#>     Attrib V24    -0.07105380939420768
#>     Attrib V25    -0.7730358898924216
#>     Attrib V26    -0.8746710664955154
#>     Attrib V27    -0.39721376611753173
#>     Attrib V28    0.42966760484669897
#>     Attrib V29    0.38311573315832154
#>     Attrib V3    0.003946088607493193
#>     Attrib V30    0.4829478843128686
#>     Attrib V31    -2.1216331193965847
#>     Attrib V32    -0.668507694521589
#>     Attrib V33    0.21077204559648177
#>     Attrib V34    -0.2384487168277922
#>     Attrib V35    0.6477405465837134
#>     Attrib V36    0.3776911077803501
#>     Attrib V37    -0.2555359283277794
#>     Attrib V38    -0.054870879394514814
#>     Attrib V39    0.14808034302523598
#>     Attrib V4    0.6402570368839571
#>     Attrib V40    -0.5629962900873737
#>     Attrib V41    -0.1768456451669044
#>     Attrib V42    0.2468821983196232
#>     Attrib V43    0.5138780119784178
#>     Attrib V44    0.7324826458096172
#>     Attrib V45    0.7709718665743658
#>     Attrib V46    -0.5673247702819837
#>     Attrib V47    -0.352740353373818
#>     Attrib V48    0.6034025138538008
#>     Attrib V49    0.528249240714885
#>     Attrib V5    -0.018033721703598873
#>     Attrib V50    -0.9687540615419886
#>     Attrib V51    -0.14093666289583084
#>     Attrib V52    0.38957255209968855
#>     Attrib V53    0.11145043628905196
#>     Attrib V54    1.0479053975885353
#>     Attrib V55    -0.7392026519683923
#>     Attrib V56    0.4647714855072594
#>     Attrib V57    0.07471945874890165
#>     Attrib V58    0.5333466997054064
#>     Attrib V59    1.0193784293657517
#>     Attrib V6    -0.2168919711123395
#>     Attrib V60    0.3148629637882755
#>     Attrib V7    0.055883188907639575
#>     Attrib V8    -0.06596279566557327
#>     Attrib V9    0.22692166949085496
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.04019870388393756
#>     Attrib V1    0.1921248633019966
#>     Attrib V10    -0.13824208165439847
#>     Attrib V11    -0.05487996099556051
#>     Attrib V12    0.0020969900726179815
#>     Attrib V13    0.04366874599851465
#>     Attrib V14    0.18147526168421635
#>     Attrib V15    0.34715096842883286
#>     Attrib V16    0.11497546675749183
#>     Attrib V17    0.06599220782515229
#>     Attrib V18    0.16996790846175155
#>     Attrib V19    0.18583392883930255
#>     Attrib V2    0.03587755715751811
#>     Attrib V20    0.508891364166207
#>     Attrib V21    0.4372761575449708
#>     Attrib V22    0.2701596730045826
#>     Attrib V23    0.14837932559147263
#>     Attrib V24    0.030187536292594762
#>     Attrib V25    -0.17082620117229072
#>     Attrib V26    -0.46799816766935437
#>     Attrib V27    -0.46514173321393676
#>     Attrib V28    -0.16114288652056363
#>     Attrib V29    -0.3354149635026555
#>     Attrib V3    -0.03264657775841766
#>     Attrib V30    -0.06081812315557247
#>     Attrib V31    -0.8555895842229985
#>     Attrib V32    -0.11811123070492117
#>     Attrib V33    0.263852958298772
#>     Attrib V34    -0.014096762326046041
#>     Attrib V35    0.33671197909837774
#>     Attrib V36    0.12978650875164793
#>     Attrib V37    -0.15325556889333045
#>     Attrib V38    -0.1578850618681573
#>     Attrib V39    0.06392678477267245
#>     Attrib V4    0.24299247601450796
#>     Attrib V40    -0.20016306538216966
#>     Attrib V41    -0.10393173949292023
#>     Attrib V42    -0.039896558714445925
#>     Attrib V43    0.10969524779902533
#>     Attrib V44    0.2662666540741607
#>     Attrib V45    0.2701809492523605
#>     Attrib V46    -0.2797199306882867
#>     Attrib V47    -0.13921261227338974
#>     Attrib V48    0.2783580077134211
#>     Attrib V49    0.1781200287356327
#>     Attrib V5    -0.036024341409572065
#>     Attrib V50    -0.4182739627600585
#>     Attrib V51    -0.10216699555137414
#>     Attrib V52    0.04365236117637222
#>     Attrib V53    -0.019454638869278784
#>     Attrib V54    0.6252507625087126
#>     Attrib V55    -0.1504432843749869
#>     Attrib V56    0.3128560285664983
#>     Attrib V57    0.23713461195055058
#>     Attrib V58    0.3343519936451387
#>     Attrib V59    0.6032331113535878
#>     Attrib V6    -0.08478480978751315
#>     Attrib V60    0.33359317615359624
#>     Attrib V7    0.14120660771545232
#>     Attrib V8    4.0381754585343385E-4
#>     Attrib V9    0.10365798585984543
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.022979836277478162
#>     Attrib V1    0.11024814380496831
#>     Attrib V10    0.05374366081261761
#>     Attrib V11    0.0869427049326121
#>     Attrib V12    0.12805663477849497
#>     Attrib V13    0.08567876841455474
#>     Attrib V14    0.09276310829802749
#>     Attrib V15    0.11684992322021105
#>     Attrib V16    -0.018885276991330115
#>     Attrib V17    -0.07491456112887199
#>     Attrib V18    -0.06010192813757645
#>     Attrib V19    -0.0610689936966485
#>     Attrib V2    0.03171493775157858
#>     Attrib V20    0.10057006917481746
#>     Attrib V21    0.12647475579781176
#>     Attrib V22    -0.09993348501134137
#>     Attrib V23    -0.10432273085844711
#>     Attrib V24    -0.10561669747368894
#>     Attrib V25    -0.1137126138923917
#>     Attrib V26    -0.12852575390723134
#>     Attrib V27    -0.06276080781413715
#>     Attrib V28    0.2610190977403859
#>     Attrib V29    0.10404366456199901
#>     Attrib V3    0.05810909540561829
#>     Attrib V30    0.04330427077515037
#>     Attrib V31    -0.34241975301415584
#>     Attrib V32    0.05546602174957319
#>     Attrib V33    0.17046226474038945
#>     Attrib V34    0.027016374128967804
#>     Attrib V35    0.20684399679778667
#>     Attrib V36    0.012585537890853022
#>     Attrib V37    0.010395875012802461
#>     Attrib V38    -0.03450894331940638
#>     Attrib V39    0.1309330002920062
#>     Attrib V4    0.1513754550802675
#>     Attrib V40    -0.10897983461354047
#>     Attrib V41    -0.041012704284193145
#>     Attrib V42    -0.08374398663265055
#>     Attrib V43    -0.012876088712949579
#>     Attrib V44    0.12230129721885623
#>     Attrib V45    0.25404734027379233
#>     Attrib V46    -0.0572421536602584
#>     Attrib V47    -0.015289191105914464
#>     Attrib V48    0.34568585154862175
#>     Attrib V49    0.2678869369538286
#>     Attrib V5    0.05298190002458123
#>     Attrib V50    -0.1465149232348982
#>     Attrib V51    0.06454162209561753
#>     Attrib V52    0.04625292489850882
#>     Attrib V53    0.0757725958406906
#>     Attrib V54    0.1204582271360162
#>     Attrib V55    -0.13334411286291584
#>     Attrib V56    0.08830361119445686
#>     Attrib V57    0.1514246676940444
#>     Attrib V58    0.09936713212024711
#>     Attrib V59    0.2448303435092958
#>     Attrib V6    -0.07999598878788687
#>     Attrib V60    0.19032843194291732
#>     Attrib V7    0.009193110905285145
#>     Attrib V8    -0.11570598751703283
#>     Attrib V9    0.20062649562325485
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.1660485928338622
#>     Attrib V1    0.7242181845889166
#>     Attrib V10    -1.168362848878806
#>     Attrib V11    -1.2669669089182143
#>     Attrib V12    -1.8512282419525805
#>     Attrib V13    -0.7290538085974758
#>     Attrib V14    0.6783874196083263
#>     Attrib V15    0.9736290782732907
#>     Attrib V16    0.701654634751555
#>     Attrib V17    0.4027142675340309
#>     Attrib V18    -0.23231057180694697
#>     Attrib V19    -0.02858947320765927
#>     Attrib V2    -0.02382863095994991
#>     Attrib V20    0.5103594812895393
#>     Attrib V21    -0.16799485254068014
#>     Attrib V22    -0.5603909155717451
#>     Attrib V23    -0.9789195180986286
#>     Attrib V24    -0.5439706418974806
#>     Attrib V25    0.33931579227183245
#>     Attrib V26    -0.2437227714327367
#>     Attrib V27    -1.0204837653178804
#>     Attrib V28    -1.6425505779624794
#>     Attrib V29    -0.15166731966662536
#>     Attrib V3    -0.23566587017417218
#>     Attrib V30    -0.03387000237548068
#>     Attrib V31    1.4896381381130668
#>     Attrib V32    -0.17938033818951812
#>     Attrib V33    -0.16429572685507926
#>     Attrib V34    0.11452375647405164
#>     Attrib V35    -0.6596787636173875
#>     Attrib V36    1.2001171236009134
#>     Attrib V37    0.9209131963514797
#>     Attrib V38    1.0942866524381416
#>     Attrib V39    -0.12588982052316416
#>     Attrib V4    -0.6431873515277732
#>     Attrib V40    0.44780326465016596
#>     Attrib V41    -1.191400030457066
#>     Attrib V42    0.48777693942158085
#>     Attrib V43    -0.4014273241397405
#>     Attrib V44    -0.6644168060741258
#>     Attrib V45    -0.559578757786838
#>     Attrib V46    -0.24686759749386183
#>     Attrib V47    -0.5316660460592635
#>     Attrib V48    -2.020253779362059
#>     Attrib V49    -1.6687878992478438
#>     Attrib V5    -0.14419054674969306
#>     Attrib V50    0.8077156629848244
#>     Attrib V51    -1.2417307194163754
#>     Attrib V52    -1.5779004300146247
#>     Attrib V53    -1.0130569121048705
#>     Attrib V54    0.5413219933573783
#>     Attrib V55    1.7437506411801098
#>     Attrib V56    0.3780979144607264
#>     Attrib V57    1.1820807203457613
#>     Attrib V58    -0.5797304248594833
#>     Attrib V59    0.179578822519458
#>     Attrib V6    -0.207486771910375
#>     Attrib V60    0.37562215371818186
#>     Attrib V7    0.7414130794916941
#>     Attrib V8    0.8815031352561391
#>     Attrib V9    -1.6705816899287236
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.09529822898198546
#>     Attrib V1    0.14432489827937975
#>     Attrib V10    0.012410514117790162
#>     Attrib V11    0.03995966739662173
#>     Attrib V12    0.06244438259457607
#>     Attrib V13    -0.0066892313630611665
#>     Attrib V14    0.06558457791076502
#>     Attrib V15    0.07681158303992415
#>     Attrib V16    0.10073838976385294
#>     Attrib V17    0.012500664248544655
#>     Attrib V18    0.05200746155856833
#>     Attrib V19    -0.03890007974074438
#>     Attrib V2    0.11295969427028595
#>     Attrib V20    0.03377423194908993
#>     Attrib V21    0.03233513818723326
#>     Attrib V22    -0.07290420432039646
#>     Attrib V23    -0.0513719798291004
#>     Attrib V24    0.016467500484071945
#>     Attrib V25    0.050058589447592984
#>     Attrib V26    -0.040400506806421
#>     Attrib V27    -0.026352529746465927
#>     Attrib V28    -0.020661428354796237
#>     Attrib V29    -0.06935858370142974
#>     Attrib V3    0.1082425837779378
#>     Attrib V30    -0.03996814688923582
#>     Attrib V31    -0.12859905668565058
#>     Attrib V32    0.07539429973837622
#>     Attrib V33    0.09525062948601723
#>     Attrib V34    0.014953076664824556
#>     Attrib V35    0.1315626472590403
#>     Attrib V36    0.02188903854324525
#>     Attrib V37    0.022485102899030385
#>     Attrib V38    -0.019599645285581533
#>     Attrib V39    0.05259071861405783
#>     Attrib V4    0.16077758699761566
#>     Attrib V40    -0.014646476119585574
#>     Attrib V41    0.05957797820136207
#>     Attrib V42    0.03430177863881599
#>     Attrib V43    0.04390851027438606
#>     Attrib V44    0.08259622077253145
#>     Attrib V45    0.09810644799457932
#>     Attrib V46    0.03483395622240604
#>     Attrib V47    0.0031869098371501998
#>     Attrib V48    0.056108996102022274
#>     Attrib V49    0.05156144695475607
#>     Attrib V5    0.08188788020832156
#>     Attrib V50    0.0010747319651709525
#>     Attrib V51    0.039136555621388285
#>     Attrib V52    6.220871343597245E-5
#>     Attrib V53    0.048440943207538924
#>     Attrib V54    0.04759066239352955
#>     Attrib V55    -0.0032385123608770477
#>     Attrib V56    0.10780785243067069
#>     Attrib V57    0.14679611641027004
#>     Attrib V58    0.13363484226257305
#>     Attrib V59    0.18831887553859566
#>     Attrib V6    0.10214649528740634
#>     Attrib V60    0.18105713673792123
#>     Attrib V7    0.06456509501443823
#>     Attrib V8    0.057523164800224756
#>     Attrib V9    0.1463280088170534
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.31812494975557953
#>     Attrib V1    -0.4584450571490601
#>     Attrib V10    1.0120502886835328
#>     Attrib V11    1.176724749827462
#>     Attrib V12    1.5937275542023084
#>     Attrib V13    0.5723963582240605
#>     Attrib V14    -0.5867578216263947
#>     Attrib V15    -0.8456953604992428
#>     Attrib V16    -0.5959691129842795
#>     Attrib V17    -0.4480590691528535
#>     Attrib V18    0.1307151588290682
#>     Attrib V19    -0.035787345140835494
#>     Attrib V2    0.07313263185772244
#>     Attrib V20    -0.4305445345232337
#>     Attrib V21    0.20909342163778402
#>     Attrib V22    0.35861634124634484
#>     Attrib V23    0.7811226815992154
#>     Attrib V24    0.38093147110827796
#>     Attrib V25    -0.22024844783450928
#>     Attrib V26    0.3311925284157434
#>     Attrib V27    0.9100824797925557
#>     Attrib V28    1.5032080917849409
#>     Attrib V29    0.2480979303312971
#>     Attrib V3    0.19210449105024355
#>     Attrib V30    -0.007939837823646505
#>     Attrib V31    -1.293264538444395
#>     Attrib V32    0.1964675149913388
#>     Attrib V33    0.20930954027432347
#>     Attrib V34    -0.1411847777780036
#>     Attrib V35    0.6399885960896994
#>     Attrib V36    -0.9814044488371144
#>     Attrib V37    -0.6608162393414924
#>     Attrib V38    -0.9406232799896578
#>     Attrib V39    0.07005483192419219
#>     Attrib V4    0.4507392313893344
#>     Attrib V40    -0.35096496411885136
#>     Attrib V41    1.021582834385756
#>     Attrib V42    -0.4541267459294506
#>     Attrib V43    0.22162636421118426
#>     Attrib V44    0.4541225526319126
#>     Attrib V45    0.41958866675344264
#>     Attrib V46    0.2055835846590271
#>     Attrib V47    0.507425623097835
#>     Attrib V48    1.8238284502827484
#>     Attrib V49    1.4243212691596987
#>     Attrib V5    0.11838384370475256
#>     Attrib V50    -0.6377135403647695
#>     Attrib V51    1.0257261576677394
#>     Attrib V52    1.2536755437531504
#>     Attrib V53    0.8055357929279154
#>     Attrib V54    -0.4524593387525519
#>     Attrib V55    -1.466045868753061
#>     Attrib V56    -0.4264886418978099
#>     Attrib V57    -0.9461555562742163
#>     Attrib V58    0.4639858703237261
#>     Attrib V59    -0.03610034763492894
#>     Attrib V6    0.20842778044608734
#>     Attrib V60    -0.0930743840420609
#>     Attrib V7    -0.49340462698223925
#>     Attrib V8    -0.7452140909143433
#>     Attrib V9    1.5062885647258106
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.04989109747283428
#>     Attrib V1    0.137267393678175
#>     Attrib V10    0.10111759570827644
#>     Attrib V11    0.11248658081248072
#>     Attrib V12    0.07711154753792038
#>     Attrib V13    0.05912783704636963
#>     Attrib V14    0.01950534630634208
#>     Attrib V15    0.07119096402652152
#>     Attrib V16    0.08076015442118677
#>     Attrib V17    -0.025029911086832567
#>     Attrib V18    -0.06395341864451476
#>     Attrib V19    -0.049460094638184994
#>     Attrib V2    0.10641331512294384
#>     Attrib V20    -0.01002759447901752
#>     Attrib V21    0.0034782507647262762
#>     Attrib V22    -0.1341790282401446
#>     Attrib V23    -0.12825846072624167
#>     Attrib V24    -0.03211181197119511
#>     Attrib V25    -0.007021132141817378
#>     Attrib V26    -0.0361806320043497
#>     Attrib V27    -0.026241626957783072
#>     Attrib V28    0.15020753032441897
#>     Attrib V29    0.032223152731669785
#>     Attrib V3    0.08447932444676304
#>     Attrib V30    0.019172381766540555
#>     Attrib V31    -0.20804899574312366
#>     Attrib V32    0.08538750966132079
#>     Attrib V33    0.14724493703048788
#>     Attrib V34    0.027345376622063572
#>     Attrib V35    0.1688118054890709
#>     Attrib V36    0.08512808717866285
#>     Attrib V37    0.03980656167075165
#>     Attrib V38    0.060057229421549646
#>     Attrib V39    0.09553416895645396
#>     Attrib V4    0.2112404687718086
#>     Attrib V40    -0.06326111315837207
#>     Attrib V41    -0.005810287018948792
#>     Attrib V42    -0.12627890655047053
#>     Attrib V43    -0.003995300769339182
#>     Attrib V44    0.12756092322058105
#>     Attrib V45    0.1753949039922462
#>     Attrib V46    0.05879707080692524
#>     Attrib V47    0.05400572137094071
#>     Attrib V48    0.2746635826596921
#>     Attrib V49    0.19206669024789735
#>     Attrib V5    0.056055770552547665
#>     Attrib V50    -0.10473631765328766
#>     Attrib V51    0.039757808446633215
#>     Attrib V52    0.01570771356510066
#>     Attrib V53    0.07551120204011076
#>     Attrib V54    0.12923552023425092
#>     Attrib V55    -0.05967593578222478
#>     Attrib V56    0.03665281159631064
#>     Attrib V57    0.20918093011706068
#>     Attrib V58    0.08910977685525495
#>     Attrib V59    0.2302186926888271
#>     Attrib V6    -0.01895744884644074
#>     Attrib V60    0.25124131144405604
#>     Attrib V7    0.05276981618407389
#>     Attrib V8    -0.04994328436844126
#>     Attrib V9    0.16888110218548266
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.2828470331231463
#>     Attrib V1    -0.15182993757903598
#>     Attrib V10    0.7987771126575561
#>     Attrib V11    0.8383162377506803
#>     Attrib V12    1.3221847415069998
#>     Attrib V13    0.42727965832782283
#>     Attrib V14    -0.5477493960752663
#>     Attrib V15    -0.5325786336930017
#>     Attrib V16    -0.3854108721703863
#>     Attrib V17    -0.39234679226295327
#>     Attrib V18    -0.12890745477146479
#>     Attrib V19    -0.3169400130251664
#>     Attrib V2    0.0269979898236657
#>     Attrib V20    -0.5450491530849256
#>     Attrib V21    -0.08630570751396983
#>     Attrib V22    -0.057430370862463394
#>     Attrib V23    0.20690710506572316
#>     Attrib V24    0.25813488461203354
#>     Attrib V25    0.10537246052386212
#>     Attrib V26    0.35718193169129775
#>     Attrib V27    0.679622358502625
#>     Attrib V28    0.9846014088589914
#>     Attrib V29    -0.0553897264961759
#>     Attrib V3    0.05904171664059163
#>     Attrib V30    -0.10703812337617206
#>     Attrib V31    -0.7599397283685917
#>     Attrib V32    0.36939857435445433
#>     Attrib V33    0.35153068332086945
#>     Attrib V34    0.07946187558892602
#>     Attrib V35    0.462061430302438
#>     Attrib V36    -0.695696541098784
#>     Attrib V37    -0.4482853667318885
#>     Attrib V38    -0.6504819400428307
#>     Attrib V39    0.12592003314300482
#>     Attrib V4    0.25584845022372266
#>     Attrib V40    -0.2828990156492376
#>     Attrib V41    0.6761100728864207
#>     Attrib V42    -0.4989930429431904
#>     Attrib V43    0.029261827180528385
#>     Attrib V44    0.09342749206222208
#>     Attrib V45    0.2302013293325492
#>     Attrib V46    0.21608073610932582
#>     Attrib V47    0.4295956670295617
#>     Attrib V48    1.3588110435950769
#>     Attrib V49    0.9760962207847018
#>     Attrib V5    0.09243529674145252
#>     Attrib V50    -0.4756590301303226
#>     Attrib V51    0.6861498295396662
#>     Attrib V52    0.6791605686446829
#>     Attrib V53    0.6210881593460792
#>     Attrib V54    -0.24840174698363496
#>     Attrib V55    -0.9604628767147115
#>     Attrib V56    -0.29402268476594023
#>     Attrib V57    -0.49213564409066607
#>     Attrib V58    0.2708475647722774
#>     Attrib V59    0.14688442889175302
#>     Attrib V6    0.22177568250991356
#>     Attrib V60    0.12310110779854057
#>     Attrib V7    -0.21509083106176885
#>     Attrib V8    -0.5963511379783374
#>     Attrib V9    0.9877346845735104
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.2650743627000921
#>     Attrib V1    0.09541917724617108
#>     Attrib V10    -0.10375781163933409
#>     Attrib V11    -0.26375254854963004
#>     Attrib V12    -0.4225015994968979
#>     Attrib V13    -0.1297942149455503
#>     Attrib V14    0.12085987914729959
#>     Attrib V15    -0.018889214877010986
#>     Attrib V16    0.10904788870761628
#>     Attrib V17    0.056906807262056436
#>     Attrib V18    0.04385278916245043
#>     Attrib V19    0.08634179855294372
#>     Attrib V2    0.07651739297092937
#>     Attrib V20    -0.050108565900869574
#>     Attrib V21    -0.11925454164255408
#>     Attrib V22    -0.03090228989090394
#>     Attrib V23    -0.02988364514959447
#>     Attrib V24    -0.07201211123959521
#>     Attrib V25    0.11495740906118185
#>     Attrib V26    0.19409008115854096
#>     Attrib V27    -0.04504236967256452
#>     Attrib V28    -0.39268737497318673
#>     Attrib V29    -0.14960556585354207
#>     Attrib V3    0.05354364921774207
#>     Attrib V30    0.0023444885116101644
#>     Attrib V31    0.7044958434135499
#>     Attrib V32    0.007636073354895633
#>     Attrib V33    -0.03473630122721687
#>     Attrib V34    0.09834900484965263
#>     Attrib V35    -0.16866634981469666
#>     Attrib V36    0.25076451399009736
#>     Attrib V37    0.23383646676613135
#>     Attrib V38    0.22787057161737437
#>     Attrib V39    -0.09954714899889294
#>     Attrib V4    -0.10898756033438958
#>     Attrib V40    0.2758461347967007
#>     Attrib V41    -0.02744279844757108
#>     Attrib V42    0.19922904618533666
#>     Attrib V43    -0.034531381673368756
#>     Attrib V44    -0.16086483861986176
#>     Attrib V45    -0.20668700278899926
#>     Attrib V46    0.09026165092215119
#>     Attrib V47    0.0019155863589615202
#>     Attrib V48    -0.5738955112421272
#>     Attrib V49    -0.3748527548303796
#>     Attrib V5    0.09963497221766505
#>     Attrib V50    0.5465133571376569
#>     Attrib V51    -0.08043344973807463
#>     Attrib V52    -0.18234804680683447
#>     Attrib V53    -0.08114306129626041
#>     Attrib V54    -0.1153315577800263
#>     Attrib V55    0.37821464982920794
#>     Attrib V56    -0.0838529124608362
#>     Attrib V57    0.19758983898786311
#>     Attrib V58    -0.14361855606497223
#>     Attrib V59    -0.15954512349435318
#>     Attrib V6    0.11812827420996926
#>     Attrib V60    0.024901610241798156
#>     Attrib V7    0.13479175615882863
#>     Attrib V8    0.2866910982917778
#>     Attrib V9    -0.2897193891417707
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.05988493983458081
#>     Attrib V1    -0.040955111673114226
#>     Attrib V10    0.008752959501974444
#>     Attrib V11    0.1383670184327122
#>     Attrib V12    0.1880503445944592
#>     Attrib V13    -0.05715813276954154
#>     Attrib V14    -0.11254970896406508
#>     Attrib V15    0.014260344157498593
#>     Attrib V16    0.017831304097629033
#>     Attrib V17    0.13926473718276353
#>     Attrib V18    0.31837231976409713
#>     Attrib V19    0.1898106006996904
#>     Attrib V2    -0.1522791611342578
#>     Attrib V20    0.4623641335242957
#>     Attrib V21    0.3940918837914996
#>     Attrib V22    0.27040650082801043
#>     Attrib V23    0.29339362300936644
#>     Attrib V24    0.13597170106043643
#>     Attrib V25    -0.04664786037121077
#>     Attrib V26    -0.27662877713647877
#>     Attrib V27    -0.14382959715112362
#>     Attrib V28    0.23171561730718204
#>     Attrib V29    -0.20401952695259287
#>     Attrib V3    -0.1921683328943243
#>     Attrib V30    -0.016573796107780103
#>     Attrib V31    -1.1627705602140954
#>     Attrib V32    -0.15718712861443565
#>     Attrib V33    0.2784977015123744
#>     Attrib V34    0.11980629549579751
#>     Attrib V35    0.6801434121121535
#>     Attrib V36    0.31416061928872635
#>     Attrib V37    -0.06431494873232294
#>     Attrib V38    -0.055255256132379284
#>     Attrib V39    0.12160883630349262
#>     Attrib V4    0.25482200103708924
#>     Attrib V40    -0.2883319912085976
#>     Attrib V41    -0.08039886650360675
#>     Attrib V42    -0.20554536938336962
#>     Attrib V43    0.1843030685288873
#>     Attrib V44    0.5170580306832291
#>     Attrib V45    0.5748887049518099
#>     Attrib V46    -0.2251276743351523
#>     Attrib V47    -0.08210396637041938
#>     Attrib V48    0.5906805936932603
#>     Attrib V49    0.39074006659595645
#>     Attrib V5    -0.058004232626716536
#>     Attrib V50    -0.5212542109183133
#>     Attrib V51    0.06489866399000563
#>     Attrib V52    0.06578837385679831
#>     Attrib V53    -0.07729972328621712
#>     Attrib V54    0.4332616964918182
#>     Attrib V55    -0.4846663242041918
#>     Attrib V56    0.15100765741685754
#>     Attrib V57    -0.04570560347608072
#>     Attrib V58    0.2557419304031684
#>     Attrib V59    0.3863606755710975
#>     Attrib V6    -0.08389834155836431
#>     Attrib V60    0.20001714725578842
#>     Attrib V7    -0.0548619673921703
#>     Attrib V8    -0.22262034446176024
#>     Attrib V9    0.3792555434387051
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.1937532685924973
#>     Attrib V1    0.23365660431770297
#>     Attrib V10    -0.35394019695906653
#>     Attrib V11    -0.038016756087130774
#>     Attrib V12    -0.1362749770048401
#>     Attrib V13    -0.03245533385198606
#>     Attrib V14    0.30008262952925335
#>     Attrib V15    0.39885545609759476
#>     Attrib V16    0.09127155395372828
#>     Attrib V17    0.022466126538979666
#>     Attrib V18    0.2896830623110251
#>     Attrib V19    0.2403571756872937
#>     Attrib V2    -0.015185534637262174
#>     Attrib V20    0.8711580802964557
#>     Attrib V21    0.851732641344125
#>     Attrib V22    0.6080767499903283
#>     Attrib V23    0.44341019097435247
#>     Attrib V24    -0.01755489880793749
#>     Attrib V25    -0.5469135714409711
#>     Attrib V26    -0.7773508829882574
#>     Attrib V27    -0.4535269550201591
#>     Attrib V28    0.10462339406855868
#>     Attrib V29    0.022244553527108427
#>     Attrib V3    -0.12672871093159163
#>     Attrib V30    0.11985161994490934
#>     Attrib V31    -1.703625025146804
#>     Attrib V32    -0.48132841725520625
#>     Attrib V33    0.31715443126244675
#>     Attrib V34    -0.07951456806428546
#>     Attrib V35    0.5665494462567916
#>     Attrib V36    0.3152259557857609
#>     Attrib V37    -0.24867352276550048
#>     Attrib V38    -0.1319526675345924
#>     Attrib V39    0.05407549811399742
#>     Attrib V4    0.5118984661081034
#>     Attrib V40    -0.39431068195966495
#>     Attrib V41    -0.1812376407058602
#>     Attrib V42    0.02398196064095196
#>     Attrib V43    0.3535269066177113
#>     Attrib V44    0.48628191448294833
#>     Attrib V45    0.5850020900656958
#>     Attrib V46    -0.4171828448089984
#>     Attrib V47    -0.2801016394004829
#>     Attrib V48    0.583006630751944
#>     Attrib V49    0.3994292506459436
#>     Attrib V5    -0.029971152583082247
#>     Attrib V50    -0.7936743437084057
#>     Attrib V51    -0.10372409760458778
#>     Attrib V52    0.18428097854649408
#>     Attrib V53    0.009297744515110154
#>     Attrib V54    0.9052018759149886
#>     Attrib V55    -0.5797490099573944
#>     Attrib V56    0.42945346182963673
#>     Attrib V57    0.24753249424047907
#>     Attrib V58    0.5119578959507067
#>     Attrib V59    0.9834806423850249
#>     Attrib V6    -0.11363464219434222
#>     Attrib V60    0.5004066644000043
#>     Attrib V7    0.20323016834250746
#>     Attrib V8    -0.04176637550978937
#>     Attrib V9    0.23966878446399362
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.13571325052554759
#>     Attrib V1    0.12483734301394592
#>     Attrib V10    0.008254189554985051
#>     Attrib V11    0.05448189387780304
#>     Attrib V12    0.05932441025314946
#>     Attrib V13    0.09494636119968992
#>     Attrib V14    0.07332903476852441
#>     Attrib V15    0.06905874839652126
#>     Attrib V16    0.008320149438580466
#>     Attrib V17    0.02035528510718367
#>     Attrib V18    0.024876472515094696
#>     Attrib V19    -0.029139251206224286
#>     Attrib V2    0.06352866503524067
#>     Attrib V20    0.10368772644297126
#>     Attrib V21    0.07342949497865714
#>     Attrib V22    -0.06982926070411359
#>     Attrib V23    -0.020864830125025217
#>     Attrib V24    -0.009654373561848053
#>     Attrib V25    0.02297180346237962
#>     Attrib V26    -0.1149245472519834
#>     Attrib V27    -0.02266528533009842
#>     Attrib V28    0.052119104532788806
#>     Attrib V29    -0.013170872760799026
#>     Attrib V3    0.11337940569545374
#>     Attrib V30    -0.024965213990542617
#>     Attrib V31    -0.30328610887862745
#>     Attrib V32    0.03493780647192093
#>     Attrib V33    0.09694104815428625
#>     Attrib V34    0.0654469860963864
#>     Attrib V35    0.15397795045743212
#>     Attrib V36    0.03103895804725673
#>     Attrib V37    0.010332197306923644
#>     Attrib V38    -0.013221335560669135
#>     Attrib V39    0.12514543954202906
#>     Attrib V4    0.16939008896825664
#>     Attrib V40    -0.030355426780493643
#>     Attrib V41    0.002902514271563474
#>     Attrib V42    -0.041318690007360555
#>     Attrib V43    -0.008307870447446544
#>     Attrib V44    0.09350395926918689
#>     Attrib V45    0.1023223672666978
#>     Attrib V46    0.015894554115100077
#>     Attrib V47    0.040590166724370165
#>     Attrib V48    0.17569743758881368
#>     Attrib V49    0.16887780157158322
#>     Attrib V5    0.08063513219745515
#>     Attrib V50    -0.11039041257185522
#>     Attrib V51    0.01913463272303026
#>     Attrib V52    0.0035257600900381733
#>     Attrib V53    0.036600807924068446
#>     Attrib V54    0.11806282810170056
#>     Attrib V55    -0.041876911525029197
#>     Attrib V56    0.09689008910399576
#>     Attrib V57    0.14342503431288764
#>     Attrib V58    0.11367444262701126
#>     Attrib V59    0.2556465819073886
#>     Attrib V6    0.045745646245957665
#>     Attrib V60    0.24312086572792765
#>     Attrib V7    0.09355025667947603
#>     Attrib V8    -0.06351127513204442
#>     Attrib V9    0.12202893623801585
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.0738300473120819
#>     Attrib V1    0.14815186944708275
#>     Attrib V10    -0.08158735603954344
#>     Attrib V11    0.08382498562832608
#>     Attrib V12    0.016752549532849548
#>     Attrib V13    -0.09347430689077509
#>     Attrib V14    -0.007336509964853306
#>     Attrib V15    0.2914783657555349
#>     Attrib V16    0.05150587670387519
#>     Attrib V17    0.052769922212394474
#>     Attrib V18    0.26137883516926314
#>     Attrib V19    0.12145855863663202
#>     Attrib V2    -0.13073733139482296
#>     Attrib V20    0.5655735896253785
#>     Attrib V21    0.5545689641597499
#>     Attrib V22    0.4138783889873157
#>     Attrib V23    0.4383114095169534
#>     Attrib V24    0.19142717852534138
#>     Attrib V25    -0.1546024378179309
#>     Attrib V26    -0.4948590114865619
#>     Attrib V27    -0.5662264879418122
#>     Attrib V28    -0.3132049497962391
#>     Attrib V29    -0.6587051121804283
#>     Attrib V3    -0.26804557750889774
#>     Attrib V30    -0.1533787465800183
#>     Attrib V31    -1.350538281454876
#>     Attrib V32    -0.20301019690834368
#>     Attrib V33    0.483064110020962
#>     Attrib V34    0.09619096672816732
#>     Attrib V35    0.5955307834218214
#>     Attrib V36    0.18066210455153098
#>     Attrib V37    -0.36420448182691456
#>     Attrib V38    -0.37265556696105134
#>     Attrib V39    -0.025717740812385936
#>     Attrib V4    0.2963816133030747
#>     Attrib V40    -0.33383799853684704
#>     Attrib V41    -0.19396783678523252
#>     Attrib V42    -0.1222062442237161
#>     Attrib V43    0.23182756451501477
#>     Attrib V44    0.5135044582621189
#>     Attrib V45    0.42875217008523103
#>     Attrib V46    -0.3776329044787364
#>     Attrib V47    -0.14706904713954624
#>     Attrib V48    0.6818527936068132
#>     Attrib V49    0.4205823594576341
#>     Attrib V5    -0.12913382767069317
#>     Attrib V50    -0.6728555702662801
#>     Attrib V51    -0.044769286114707846
#>     Attrib V52    0.06770823706007875
#>     Attrib V53    -0.20643820352695555
#>     Attrib V54    0.8967590702295088
#>     Attrib V55    -0.4525416270526845
#>     Attrib V56    0.3623194838760412
#>     Attrib V57    0.13551876785799524
#>     Attrib V58    0.45850967679633925
#>     Attrib V59    0.7629832838619239
#>     Attrib V6    -0.06376702956119201
#>     Attrib V60    0.46120224770007945
#>     Attrib V7    0.26217257853350123
#>     Attrib V8    -0.06895294832850299
#>     Attrib V9    0.3259759729139317
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.3193829716024754
#>     Attrib V1    0.13004608454302546
#>     Attrib V10    -0.20346400070672566
#>     Attrib V11    -0.4669645007515401
#>     Attrib V12    -0.7332847607904783
#>     Attrib V13    -0.2683202122528963
#>     Attrib V14    0.1820702839947363
#>     Attrib V15    0.17723690650199145
#>     Attrib V16    0.2681325972560985
#>     Attrib V17    0.2036484204188464
#>     Attrib V18    -0.06594249149276284
#>     Attrib V19    0.183580959428489
#>     Attrib V2    0.06892519987923165
#>     Attrib V20    -0.007607975230075122
#>     Attrib V21    -0.227320185901543
#>     Attrib V22    -0.09941138242020589
#>     Attrib V23    -0.31926323299877885
#>     Attrib V24    -0.1346310802751622
#>     Attrib V25    0.3137058564085222
#>     Attrib V26    0.41076388310616213
#>     Attrib V27    -0.12481816727615327
#>     Attrib V28    -0.6875444228036133
#>     Attrib V29    -0.17307038988235796
#>     Attrib V3    0.05260611810065242
#>     Attrib V30    -0.13559221912921138
#>     Attrib V31    1.1506678931207825
#>     Attrib V32    -0.06553925035294283
#>     Attrib V33    -0.31776128996513553
#>     Attrib V34    0.06354637962015652
#>     Attrib V35    -0.46758108360971734
#>     Attrib V36    0.4202197686286903
#>     Attrib V37    0.47992358591240325
#>     Attrib V38    0.4669666048419859
#>     Attrib V39    -0.09957009406249202
#>     Attrib V4    -0.23380793893186044
#>     Attrib V40    0.33390108632631527
#>     Attrib V41    -0.36945604422370726
#>     Attrib V42    0.244418969246614
#>     Attrib V43    -0.16877931342424726
#>     Attrib V44    -0.3941495168576435
#>     Attrib V45    -0.32748870855758916
#>     Attrib V46    0.2562511310884924
#>     Attrib V47    -0.0015013765754464108
#>     Attrib V48    -1.044941513302344
#>     Attrib V49    -0.7104708224395048
#>     Attrib V5    0.1291813622087837
#>     Attrib V50    0.8893949647789703
#>     Attrib V51    -0.2725281913424594
#>     Attrib V52    -0.5570079425801149
#>     Attrib V53    -0.27928002659556694
#>     Attrib V54    -0.16358794855438902
#>     Attrib V55    0.86284280405662
#>     Attrib V56    -0.05627456804561104
#>     Attrib V57    0.44374959012836235
#>     Attrib V58    -0.3153944381728171
#>     Attrib V59    -0.24040712624403035
#>     Attrib V6    -0.03314947516668432
#>     Attrib V60    0.06693050977787741
#>     Attrib V7    0.2089898149363493
#>     Attrib V8    0.53979981007904
#>     Attrib V9    -0.5705139451544468
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.12940108918722817
#>     Attrib V1    0.12994991923375884
#>     Attrib V10    0.059412415895556694
#>     Attrib V11    0.05704093940786561
#>     Attrib V12    0.06277005160139873
#>     Attrib V13    0.06071859992134854
#>     Attrib V14    0.034326082795575794
#>     Attrib V15    0.061606001703438405
#>     Attrib V16    0.08198680997530572
#>     Attrib V17    0.0356782103486092
#>     Attrib V18    0.045591172384484575
#>     Attrib V19    -5.856495821119914E-4
#>     Attrib V2    0.03997100902608435
#>     Attrib V20    0.028606953650198944
#>     Attrib V21    0.0020687363618854234
#>     Attrib V22    -0.09017456547329221
#>     Attrib V23    -0.11329386474957226
#>     Attrib V24    -9.365040533517931E-4
#>     Attrib V25    0.018016013636551455
#>     Attrib V26    -0.0957747430352203
#>     Attrib V27    -0.08151015768508876
#>     Attrib V28    0.06224722217775597
#>     Attrib V29    -0.04938496201920437
#>     Attrib V3    0.09414016629412587
#>     Attrib V30    -0.06740802789159506
#>     Attrib V31    -0.23705316115041566
#>     Attrib V32    0.05792060005052243
#>     Attrib V33    0.08441567110094902
#>     Attrib V34    0.05979356216890127
#>     Attrib V35    0.1393856485108103
#>     Attrib V36    0.029981209554117625
#>     Attrib V37    0.024691695908438643
#>     Attrib V38    0.009704140549485969
#>     Attrib V39    0.09368548498922744
#>     Attrib V4    0.16492205156735606
#>     Attrib V40    -0.06748422647937354
#>     Attrib V41    -0.005851649626810213
#>     Attrib V42    -0.009873955792734796
#>     Attrib V43    0.01936435716291911
#>     Attrib V44    0.06081520394206385
#>     Attrib V45    0.14510372182336345
#>     Attrib V46    0.028428773255132645
#>     Attrib V47    0.024620286741812096
#>     Attrib V48    0.17052401176393361
#>     Attrib V49    0.1095677246617513
#>     Attrib V5    0.07080159211815228
#>     Attrib V50    -0.022401237840634358
#>     Attrib V51    0.08979917140663225
#>     Attrib V52    0.05067051268921167
#>     Attrib V53    0.07996647182667208
#>     Attrib V54    0.11817817962600109
#>     Attrib V55    0.011750608554439126
#>     Attrib V56    0.11830296914126084
#>     Attrib V57    0.16368519290953934
#>     Attrib V58    0.1678510981062706
#>     Attrib V59    0.16279723594801662
#>     Attrib V6    0.044301918627536734
#>     Attrib V60    0.21726071244979436
#>     Attrib V7    0.05416807969079051
#>     Attrib V8    -0.03505952225670916
#>     Attrib V9    0.15994252013040094
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.2282522208731226
#>     Attrib V1    0.1713657009547153
#>     Attrib V10    -0.0752395617950693
#>     Attrib V11    -0.33743724765207145
#>     Attrib V12    -0.7514327734786901
#>     Attrib V13    -0.2901642882724267
#>     Attrib V14    0.1255653520452899
#>     Attrib V15    0.1658813400540571
#>     Attrib V16    0.21917248021887753
#>     Attrib V17    0.1346453526289123
#>     Attrib V18    -0.09191724050387272
#>     Attrib V19    0.12545024503713326
#>     Attrib V2    0.14936559045811088
#>     Attrib V20    -0.011108399873830823
#>     Attrib V21    -0.16153527984528795
#>     Attrib V22    -0.06195047307416856
#>     Attrib V23    -0.28186370254452253
#>     Attrib V24    -0.09661851781444929
#>     Attrib V25    0.24968104045406947
#>     Attrib V26    0.30004711379936294
#>     Attrib V27    -0.053938973351590945
#>     Attrib V28    -0.5659026592629051
#>     Attrib V29    -0.2007788684471391
#>     Attrib V3    0.003132371852073037
#>     Attrib V30    -0.08638805797044449
#>     Attrib V31    1.0151122347381003
#>     Attrib V32    -0.09155856598901557
#>     Attrib V33    -0.21266205653938722
#>     Attrib V34    -0.002857400899533797
#>     Attrib V35    -0.3419944928884239
#>     Attrib V36    0.3485616725667298
#>     Attrib V37    0.36980808292252926
#>     Attrib V38    0.45271562195275605
#>     Attrib V39    -0.062455063213903116
#>     Attrib V4    -0.2189834889451732
#>     Attrib V40    0.2600424913037194
#>     Attrib V41    -0.29129326396983235
#>     Attrib V42    0.22884499543579187
#>     Attrib V43    -0.08218173211100259
#>     Attrib V44    -0.2893296643968025
#>     Attrib V45    -0.2635560594275867
#>     Attrib V46    0.1675166935078286
#>     Attrib V47    -0.060634513228639546
#>     Attrib V48    -0.9071044457290586
#>     Attrib V49    -0.6720443987663149
#>     Attrib V5    0.08328219057905122
#>     Attrib V50    0.7459705819719505
#>     Attrib V51    -0.2442811814454099
#>     Attrib V52    -0.4573069685367271
#>     Attrib V53    -0.3137723333304902
#>     Attrib V54    -0.15204124451028345
#>     Attrib V55    0.7656057487042256
#>     Attrib V56    -0.10914546493913829
#>     Attrib V57    0.46146000908421586
#>     Attrib V58    -0.29238213670894825
#>     Attrib V59    -0.2684391365821788
#>     Attrib V6    -0.02306525915275824
#>     Attrib V60    0.05772442489229688
#>     Attrib V7    0.1842614559238069
#>     Attrib V8    0.5381698012484241
#>     Attrib V9    -0.4194123944159393
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.2428006521625905
#>     Attrib V1    0.055229825259752265
#>     Attrib V10    0.0010585365029330486
#>     Attrib V11    -0.08284423383857431
#>     Attrib V12    -0.17218998950035588
#>     Attrib V13    -0.055022068748343166
#>     Attrib V14    0.04663767522341098
#>     Attrib V15    0.0038361765829373388
#>     Attrib V16    0.04944943847787665
#>     Attrib V17    0.012948645783427566
#>     Attrib V18    0.06028983730466799
#>     Attrib V19    -0.05340762058781853
#>     Attrib V2    0.10642197145484993
#>     Attrib V20    -0.033758670921149966
#>     Attrib V21    -0.045037498655927675
#>     Attrib V22    -0.043879902682577
#>     Attrib V23    -0.009662728768321811
#>     Attrib V24    -0.035022644808345195
#>     Attrib V25    0.033098201138863116
#>     Attrib V26    0.03620573525938885
#>     Attrib V27    -0.04340577121901905
#>     Attrib V28    -0.15956293370789648
#>     Attrib V29    -0.09767741731372442
#>     Attrib V3    0.1548367534077865
#>     Attrib V30    -0.0675316197630233
#>     Attrib V31    0.15096814646294002
#>     Attrib V32    0.04605454526993415
#>     Attrib V33    0.027006354605959404
#>     Attrib V34    0.08672276082244995
#>     Attrib V35    0.0045823385332254595
#>     Attrib V36    0.1767299007124788
#>     Attrib V37    0.08875490389924084
#>     Attrib V38    0.05038035331303692
#>     Attrib V39    0.06666400403365368
#>     Attrib V4    0.01885121378776901
#>     Attrib V40    0.12450472952002241
#>     Attrib V41    0.01906188589236312
#>     Attrib V42    0.08715466616843878
#>     Attrib V43    0.022858067276664066
#>     Attrib V44    0.034670080510971514
#>     Attrib V45    -0.08718340967623198
#>     Attrib V46    0.03601504790585327
#>     Attrib V47    0.0448022369207652
#>     Attrib V48    -0.1464570525926699
#>     Attrib V49    -0.06312995844830523
#>     Attrib V5    0.09699341071811364
#>     Attrib V50    0.10341136692947805
#>     Attrib V51    0.07810411743859116
#>     Attrib V52    -5.284555210996635E-5
#>     Attrib V53    5.428120431721726E-4
#>     Attrib V54    -0.06327890361787532
#>     Attrib V55    0.15760111098403506
#>     Attrib V56    0.06160501852273212
#>     Attrib V57    0.05838944898176024
#>     Attrib V58    0.05306464645756582
#>     Attrib V59    0.04357058018121949
#>     Attrib V6    0.08908367424511737
#>     Attrib V60    0.11477021380380098
#>     Attrib V7    0.10985263545244697
#>     Attrib V8    0.14667568989326338
#>     Attrib V9    0.005676232962373597
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.10142794138219878
#>     Attrib V1    0.09903131615199284
#>     Attrib V10    -0.1339702128103282
#>     Attrib V11    0.025325401811892936
#>     Attrib V12    0.04118728691161439
#>     Attrib V13    -0.05618783060900742
#>     Attrib V14    0.06474598177340116
#>     Attrib V15    0.27489725582900765
#>     Attrib V16    0.006286753411885861
#>     Attrib V17    0.03830683818424181
#>     Attrib V18    0.2745478331461791
#>     Attrib V19    0.1761777398719602
#>     Attrib V2    -0.07878955645402608
#>     Attrib V20    0.6070089492377345
#>     Attrib V21    0.6250620327615902
#>     Attrib V22    0.5260640492579944
#>     Attrib V23    0.42560169127010317
#>     Attrib V24    0.16315166323622135
#>     Attrib V25    -0.21320822371514705
#>     Attrib V26    -0.5015635756308433
#>     Attrib V27    -0.4037399455716088
#>     Attrib V28    -0.011473601730531162
#>     Attrib V29    -0.33819940694342215
#>     Attrib V3    -0.21723215216544603
#>     Attrib V30    -0.006687983197178614
#>     Attrib V31    -1.4208680749372913
#>     Attrib V32    -0.2810368959861675
#>     Attrib V33    0.4081356309101625
#>     Attrib V34    0.029734884256361643
#>     Attrib V35    0.6484327562972627
#>     Attrib V36    0.25367335613974706
#>     Attrib V37    -0.3540722046787601
#>     Attrib V38    -0.2870747656995005
#>     Attrib V39    0.0053028972686085234
#>     Attrib V4    0.4056578680099339
#>     Attrib V40    -0.35902634710422504
#>     Attrib V41    -0.161807694586139
#>     Attrib V42    -0.04964769993273674
#>     Attrib V43    0.25408988137380023
#>     Attrib V44    0.48544243471603465
#>     Attrib V45    0.607426593480289
#>     Attrib V46    -0.3468800274231847
#>     Attrib V47    -0.19726606788428377
#>     Attrib V48    0.616677580210292
#>     Attrib V49    0.4881065308062711
#>     Attrib V5    -0.08264607013493636
#>     Attrib V50    -0.7217888508389323
#>     Attrib V51    -0.039049870972027986
#>     Attrib V52    0.16368399747907786
#>     Attrib V53    -0.12010657540280849
#>     Attrib V54    0.8098612427801405
#>     Attrib V55    -0.5071607070745829
#>     Attrib V56    0.24418032582995855
#>     Attrib V57    0.026429855929789744
#>     Attrib V58    0.47407040499340164
#>     Attrib V59    0.7260838435399398
#>     Attrib V6    -0.09934320228699686
#>     Attrib V60    0.39555713237789153
#>     Attrib V7    0.19767204408064573
#>     Attrib V8    -0.12364796935771669
#>     Attrib V9    0.32411806605478105
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.15147762253346952
#>     Attrib V1    0.263352367760753
#>     Attrib V10    -0.3488141249664645
#>     Attrib V11    -0.05518365473715674
#>     Attrib V12    -0.04664013057277013
#>     Attrib V13    -0.05021686931757038
#>     Attrib V14    0.28648624711870146
#>     Attrib V15    0.3617438023956717
#>     Attrib V16    -0.05153466441660028
#>     Attrib V17    -0.011100363427933068
#>     Attrib V18    0.34518480192844414
#>     Attrib V19    0.2173936135435502
#>     Attrib V2    -0.07422512990575579
#>     Attrib V20    0.9193729956312782
#>     Attrib V21    0.9352412892405173
#>     Attrib V22    0.695216000077393
#>     Attrib V23    0.5075185865994157
#>     Attrib V24    -0.048492347131278944
#>     Attrib V25    -0.5988214384387542
#>     Attrib V26    -0.671981987020723
#>     Attrib V27    -0.23655638574036644
#>     Attrib V28    0.36057880556290106
#>     Attrib V29    0.2692463782216848
#>     Attrib V3    -0.13633587230862693
#>     Attrib V30    0.3150852990452631
#>     Attrib V31    -1.8598504917417196
#>     Attrib V32    -0.660664500963198
#>     Attrib V33    0.20722995087819404
#>     Attrib V34    -0.164458359140719
#>     Attrib V35    0.7097168248188926
#>     Attrib V36    0.5505234246607842
#>     Attrib V37    -0.08230515964110595
#>     Attrib V38    -0.035438292952575175
#>     Attrib V39    0.12419320522459806
#>     Attrib V4    0.5489159708218694
#>     Attrib V40    -0.4592855561352373
#>     Attrib V41    -0.16985257471779622
#>     Attrib V42    -0.026247045954956454
#>     Attrib V43    0.4121500639368914
#>     Attrib V44    0.6895247211908357
#>     Attrib V45    0.6702825354076459
#>     Attrib V46    -0.5246045732379471
#>     Attrib V47    -0.3441893585970973
#>     Attrib V48    0.5803880980668817
#>     Attrib V49    0.4609581435587456
#>     Attrib V5    -0.01897180137376377
#>     Attrib V50    -0.8363198233264283
#>     Attrib V51    -0.07231321779406824
#>     Attrib V52    0.22335214835079964
#>     Attrib V53    -0.037037386523291575
#>     Attrib V54    0.8926240182716262
#>     Attrib V55    -0.6597663625487181
#>     Attrib V56    0.352129612844152
#>     Attrib V57    0.06364574898571967
#>     Attrib V58    0.4944845373185257
#>     Attrib V59    0.9632570541126506
#>     Attrib V6    -0.13624596208967604
#>     Attrib V60    0.44824918712193135
#>     Attrib V7    0.11046813960305248
#>     Attrib V8    -0.2214482710385208
#>     Attrib V9    0.24642796419989751
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.2712358151702636
#>     Attrib V1    0.2784999915251691
#>     Attrib V10    -0.31871469632123944
#>     Attrib V11    -0.6423678080745246
#>     Attrib V12    -0.989861763078799
#>     Attrib V13    -0.37671189197759464
#>     Attrib V14    0.23746965954866578
#>     Attrib V15    0.19945526338501304
#>     Attrib V16    0.32950822672370994
#>     Attrib V17    0.25016849213842196
#>     Attrib V18    -0.06796476822999807
#>     Attrib V19    0.14336760557457845
#>     Attrib V2    0.06411742719622739
#>     Attrib V20    0.0023890647280451166
#>     Attrib V21    -0.1905809109561591
#>     Attrib V22    -0.2281219869796234
#>     Attrib V23    -0.4932543053331029
#>     Attrib V24    -0.18676515507370225
#>     Attrib V25    0.42616900264554114
#>     Attrib V26    0.40987390652164973
#>     Attrib V27    -0.1863087152967022
#>     Attrib V28    -0.9032719414803001
#>     Attrib V29    -0.2117335516658058
#>     Attrib V3    -0.017817390723931202
#>     Attrib V30    -0.19698667738507536
#>     Attrib V31    1.4401208334101137
#>     Attrib V32    -0.14939136255382893
#>     Attrib V33    -0.3839234473213805
#>     Attrib V34    0.05684798073780009
#>     Attrib V35    -0.5890477372746933
#>     Attrib V36    0.5741765656586502
#>     Attrib V37    0.6576488964025025
#>     Attrib V38    0.6022930243354683
#>     Attrib V39    -0.1099868403893493
#>     Attrib V4    -0.30005811044284564
#>     Attrib V40    0.49810046757150783
#>     Attrib V41    -0.4129892984188621
#>     Attrib V42    0.28817393000918307
#>     Attrib V43    -0.20062206225405047
#>     Attrib V44    -0.501621053813631
#>     Attrib V45    -0.5225976647467376
#>     Attrib V46    0.25408606668243144
#>     Attrib V47    -0.08178273386634946
#>     Attrib V48    -1.3660483322458392
#>     Attrib V49    -0.988970046062011
#>     Attrib V5    0.14102374831112707
#>     Attrib V50    1.0299078556414902
#>     Attrib V51    -0.4823268145802949
#>     Attrib V52    -0.807383700172622
#>     Attrib V53    -0.44602334008803923
#>     Attrib V54    -0.15447811128260872
#>     Attrib V55    1.0812851435392787
#>     Attrib V56    -0.11762950282764395
#>     Attrib V57    0.7891884632490793
#>     Attrib V58    -0.41636587532218733
#>     Attrib V59    -0.12680588856040195
#>     Attrib V6    -0.04145388626124799
#>     Attrib V60    0.29732112375179703
#>     Attrib V7    0.41380043692528495
#>     Attrib V8    0.6151781265317321
#>     Attrib V9    -0.7590431846343471
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.06615620750328555
#>     Attrib V1    0.25299946293689446
#>     Attrib V10    -0.1558980597445066
#>     Attrib V11    -0.036346460870877915
#>     Attrib V12    -0.013845983953950996
#>     Attrib V13    -0.025405566806195073
#>     Attrib V14    0.15222686991654158
#>     Attrib V15    0.2646511817065787
#>     Attrib V16    0.2075949119361223
#>     Attrib V17    0.10227402981515885
#>     Attrib V18    0.20480137719745053
#>     Attrib V19    0.1306375378847538
#>     Attrib V2    0.0146658116429966
#>     Attrib V20    0.4971286232331307
#>     Attrib V21    0.4152774983068106
#>     Attrib V22    0.18689158673233905
#>     Attrib V23    0.09778337665636426
#>     Attrib V24    0.10843552551176709
#>     Attrib V25    -0.1620172809159411
#>     Attrib V26    -0.48040916536478867
#>     Attrib V27    -0.5037731047075329
#>     Attrib V28    -0.2844527783009496
#>     Attrib V29    -0.3329216890630803
#>     Attrib V3    -0.09215161406602947
#>     Attrib V30    -0.1639910324056186
#>     Attrib V31    -0.8286702667753112
#>     Attrib V32    -0.1424438306868132
#>     Attrib V33    0.23350833489293293
#>     Attrib V34    0.04978784333406754
#>     Attrib V35    0.362704874897118
#>     Attrib V36    0.1661910774676167
#>     Attrib V37    -0.128353864345546
#>     Attrib V38    -0.14939399433447306
#>     Attrib V39    0.007511392714092386
#>     Attrib V4    0.23212237012070625
#>     Attrib V40    -0.19307100420126522
#>     Attrib V41    -0.17122479031649934
#>     Attrib V42    -0.08706442182346641
#>     Attrib V43    0.15515952930377677
#>     Attrib V44    0.22168951612439838
#>     Attrib V45    0.21783809784009198
#>     Attrib V46    -0.23755337122826622
#>     Attrib V47    -0.19671428742603447
#>     Attrib V48    0.35753581953272506
#>     Attrib V49    0.20259873878854098
#>     Attrib V5    -0.013015001669705723
#>     Attrib V50    -0.42274596393946345
#>     Attrib V51    -0.09243488328954234
#>     Attrib V52    0.0018615544838854108
#>     Attrib V53    0.0013226190405837312
#>     Attrib V54    0.6281786973597598
#>     Attrib V55    -0.15217625098407028
#>     Attrib V56    0.34443304431707733
#>     Attrib V57    0.2601606294243896
#>     Attrib V58    0.3383941189156407
#>     Attrib V59    0.6183762536883017
#>     Attrib V6    -0.02283096257313702
#>     Attrib V60    0.4281205813405691
#>     Attrib V7    0.20658285264899662
#>     Attrib V8    -0.10490149839625927
#>     Attrib V9    0.12532095165181414
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.10626956849869294
#>     Attrib V1    0.3604822414402528
#>     Attrib V10    -0.35457913590104573
#>     Attrib V11    -0.1168740487986721
#>     Attrib V12    -0.14732636831168
#>     Attrib V13    -0.07257270878450008
#>     Attrib V14    0.2767928098698396
#>     Attrib V15    0.5052016345777712
#>     Attrib V16    0.1540196457951918
#>     Attrib V17    0.12444236994264272
#>     Attrib V18    0.28920820464320984
#>     Attrib V19    0.1819658051719986
#>     Attrib V2    -0.060690561364159956
#>     Attrib V20    0.8341277949092115
#>     Attrib V21    0.7746892565221412
#>     Attrib V22    0.5156107362761214
#>     Attrib V23    0.3724478866506448
#>     Attrib V24    0.03250685546960945
#>     Attrib V25    -0.41072655213570913
#>     Attrib V26    -0.76388135090627
#>     Attrib V27    -0.7419202421615373
#>     Attrib V28    -0.3070485091796656
#>     Attrib V29    -0.37394289411321374
#>     Attrib V3    -0.07525998182428961
#>     Attrib V30    -0.10332049989892884
#>     Attrib V31    -1.5792565184465728
#>     Attrib V32    -0.4434008393263436
#>     Attrib V33    0.32621278242192453
#>     Attrib V34    -0.018534260779566488
#>     Attrib V35    0.58706845432953
#>     Attrib V36    0.30657083107754857
#>     Attrib V37    -0.2629517929252541
#>     Attrib V38    -0.2704909534471065
#>     Attrib V39    0.013152817377349075
#>     Attrib V4    0.4418292322558139
#>     Attrib V40    -0.35697454465486594
#>     Attrib V41    -0.22071051839418693
#>     Attrib V42    7.854500291551696E-6
#>     Attrib V43    0.30986848374475345
#>     Attrib V44    0.44881828558490794
#>     Attrib V45    0.4898246039381921
#>     Attrib V46    -0.4683723174669412
#>     Attrib V47    -0.22961435525649299
#>     Attrib V48    0.4422672511720417
#>     Attrib V49    0.2963872879309425
#>     Attrib V5    -0.05160834085020321
#>     Attrib V50    -0.7366890846140156
#>     Attrib V51    -0.16193312449467648
#>     Attrib V52    0.07744146916043058
#>     Attrib V53    -0.023294266815471674
#>     Attrib V54    1.0301025472977996
#>     Attrib V55    -0.398355323311243
#>     Attrib V56    0.551744419848601
#>     Attrib V57    0.29361137971001067
#>     Attrib V58    0.5170030964197883
#>     Attrib V59    1.0168265754605248
#>     Attrib V6    0.01868805294541215
#>     Attrib V60    0.5629320960174465
#>     Attrib V7    0.34308114813109614
#>     Attrib V8    0.025286503999965647
#>     Attrib V9    0.18922674839241926
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.2647875465241877
#>     Attrib V1    0.0818518990880692
#>     Attrib V10    -0.18461343778284606
#>     Attrib V11    -0.3683364546967009
#>     Attrib V12    -0.6210707129753795
#>     Attrib V13    -0.2377490109383835
#>     Attrib V14    0.14353053932090745
#>     Attrib V15    0.10910228430081867
#>     Attrib V16    0.16569719868563462
#>     Attrib V17    0.22283666974339922
#>     Attrib V18    -0.026467908863447763
#>     Attrib V19    0.11079994113898374
#>     Attrib V2    0.060755679228835714
#>     Attrib V20    -0.030400860933725515
#>     Attrib V21    -0.1583530275244081
#>     Attrib V22    -0.10353566980122474
#>     Attrib V23    -0.16487549142571134
#>     Attrib V24    -0.10154351993114889
#>     Attrib V25    0.2705163139804372
#>     Attrib V26    0.34491940261000664
#>     Attrib V27    -0.06403222872436155
#>     Attrib V28    -0.5153782741341043
#>     Attrib V29    -0.16661671514303442
#>     Attrib V3    0.03798176083538398
#>     Attrib V30    -0.11614977440947855
#>     Attrib V31    0.8782497800613538
#>     Attrib V32    -0.01564481441925274
#>     Attrib V33    -0.2980461237169776
#>     Attrib V34    -0.00939578075959565
#>     Attrib V35    -0.3822938552712846
#>     Attrib V36    0.3322723835259504
#>     Attrib V37    0.29327472856082215
#>     Attrib V38    0.33179829615586004
#>     Attrib V39    -0.12127942161797604
#>     Attrib V4    -0.13591018320034698
#>     Attrib V40    0.28646735076357455
#>     Attrib V41    -0.22423817082218786
#>     Attrib V42    0.21625651462860773
#>     Attrib V43    -0.038761143541029865
#>     Attrib V44    -0.28662552174419653
#>     Attrib V45    -0.3335974639029489
#>     Attrib V46    0.17998356468677743
#>     Attrib V47    0.021020318547957058
#>     Attrib V48    -0.8371464964741584
#>     Attrib V49    -0.587150236874503
#>     Attrib V5    0.0703321435129729
#>     Attrib V50    0.714931348244619
#>     Attrib V51    -0.18393221649059124
#>     Attrib V52    -0.32270689059890173
#>     Attrib V53    -0.2674141129898909
#>     Attrib V54    -0.16878838684224118
#>     Attrib V55    0.6542593655541544
#>     Attrib V56    -0.03295508879701941
#>     Attrib V57    0.4199157822390915
#>     Attrib V58    -0.21145146704732967
#>     Attrib V59    -0.18508185426660959
#>     Attrib V6    0.02538782144168287
#>     Attrib V60    0.026083548635011767
#>     Attrib V7    0.129542012622845
#>     Attrib V8    0.4081707188293534
#>     Attrib V9    -0.3819250263666643
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.3351791091241646
#>     Attrib V1    -0.35746354761699256
#>     Attrib V10    0.8032726263439578
#>     Attrib V11    0.9092235124527912
#>     Attrib V12    1.5306328547096855
#>     Attrib V13    0.45696043285653065
#>     Attrib V14    -0.5556303492795585
#>     Attrib V15    -0.7155585952504475
#>     Attrib V16    -0.5296566064417668
#>     Attrib V17    -0.334020024025247
#>     Attrib V18    0.0564910143914011
#>     Attrib V19    -0.16884430353041505
#>     Attrib V2    -0.013208610762996759
#>     Attrib V20    -0.5706885073779572
#>     Attrib V21    -0.06561151140480427
#>     Attrib V22    0.15689541478447555
#>     Attrib V23    0.521149645419986
#>     Attrib V24    0.3798163447553567
#>     Attrib V25    -0.05396439599126099
#>     Attrib V26    0.32690508324299794
#>     Attrib V27    0.8629837383913271
#>     Attrib V28    1.2114552756545816
#>     Attrib V29    -0.008313966054302261
#>     Attrib V3    0.17163483060739088
#>     Attrib V30    -0.091272593082921
#>     Attrib V31    -1.0011483520593258
#>     Attrib V32    0.29722918309242974
#>     Attrib V33    0.24454879266306911
#>     Attrib V34    -0.013683314628881848
#>     Attrib V35    0.5543644276977848
#>     Attrib V36    -0.8406078554596655
#>     Attrib V37    -0.6156836597213897
#>     Attrib V38    -0.809108454501551
#>     Attrib V39    0.1451132356721027
#>     Attrib V4    0.3917960821056485
#>     Attrib V40    -0.34693213916849325
#>     Attrib V41    0.9088876042263974
#>     Attrib V42    -0.46046826479586933
#>     Attrib V43    0.08266961002756706
#>     Attrib V44    0.33613161089476734
#>     Attrib V45    0.30837707131491504
#>     Attrib V46    0.15944971153946452
#>     Attrib V47    0.3817396763172086
#>     Attrib V48    1.5824214869114746
#>     Attrib V49    1.2712755906542947
#>     Attrib V5    0.22014629021510934
#>     Attrib V50    -0.5878814141227419
#>     Attrib V51    0.8371935858051461
#>     Attrib V52    0.9646617813023021
#>     Attrib V53    0.7489254508860504
#>     Attrib V54    -0.402305491404612
#>     Attrib V55    -1.341509238412918
#>     Attrib V56    -0.33428650397961956
#>     Attrib V57    -0.5628442788931035
#>     Attrib V58    0.38333819691763193
#>     Attrib V59    0.2371462201354853
#>     Attrib V6    0.32941725941128547
#>     Attrib V60    0.0907775441300357
#>     Attrib V7    -0.3699000708732776
#>     Attrib V8    -0.8917900743088835
#>     Attrib V9    1.1288943540197867
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.14446529391472518
#>     Attrib V1    0.1590547979096381
#>     Attrib V10    0.016993773088331828
#>     Attrib V11    0.020403024026901157
#>     Attrib V12    0.07080368897902868
#>     Attrib V13    0.011373111670581311
#>     Attrib V14    0.1169618407988675
#>     Attrib V15    0.09383193436340537
#>     Attrib V16    0.06185726801786044
#>     Attrib V17    0.059166214046232506
#>     Attrib V18    0.0032003623458316784
#>     Attrib V19    0.05210261197288053
#>     Attrib V2    0.10886083041535093
#>     Attrib V20    0.10228105592996749
#>     Attrib V21    0.07700385777602797
#>     Attrib V22    -0.05278832377597975
#>     Attrib V23    -0.07213232228117927
#>     Attrib V24    -0.05373496058286235
#>     Attrib V25    -0.02162735522944751
#>     Attrib V26    -0.11139023629492664
#>     Attrib V27    -0.04814749017503955
#>     Attrib V28    0.08066053036382388
#>     Attrib V29    -0.02242035542903247
#>     Attrib V3    0.0443966820121186
#>     Attrib V30    -0.049118326476316934
#>     Attrib V31    -0.29196123513917527
#>     Attrib V32    -0.016902780208301348
#>     Attrib V33    0.12185587715650581
#>     Attrib V34    0.023021829602068736
#>     Attrib V35    0.23615619636480117
#>     Attrib V36    0.13250780871761228
#>     Attrib V37    0.09185020739350433
#>     Attrib V38    0.00957397213812688
#>     Attrib V39    0.11724417991571985
#>     Attrib V4    0.19609505659443746
#>     Attrib V40    -0.04753337916808534
#>     Attrib V41    -0.030449770539888617
#>     Attrib V42    -0.045447773840661745
#>     Attrib V43    0.03558225080669966
#>     Attrib V44    0.11374731670137936
#>     Attrib V45    0.13684117964996453
#>     Attrib V46    -0.029477627990635042
#>     Attrib V47    -0.031007376215168726
#>     Attrib V48    0.19782056425251074
#>     Attrib V49    0.10989709962806687
#>     Attrib V5    0.02510475473035874
#>     Attrib V50    -0.0640625058974059
#>     Attrib V51    0.002106352837206494
#>     Attrib V52    -0.009575711776359306
#>     Attrib V53    0.02303381652518329
#>     Attrib V54    0.13349130731260428
#>     Attrib V55    -0.015745364159626185
#>     Attrib V56    0.12225642147707531
#>     Attrib V57    0.1800013111976031
#>     Attrib V58    0.13382903763514384
#>     Attrib V59    0.23872739530393655
#>     Attrib V6    0.06116335304908343
#>     Attrib V60    0.2680286599015653
#>     Attrib V7    0.026321740214958585
#>     Attrib V8    -0.0045026823090109965
#>     Attrib V9    0.11237151590258661
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.14998854308460552
#>     Attrib V1    0.12930814379751776
#>     Attrib V10    -0.092339501627321
#>     Attrib V11    0.10503059570177316
#>     Attrib V12    0.035412887916991695
#>     Attrib V13    -0.04016163994682808
#>     Attrib V14    -0.027838518177282206
#>     Attrib V15    0.17482877960153903
#>     Attrib V16    -0.038845801228976795
#>     Attrib V17    -0.02130499324030148
#>     Attrib V18    0.34780689344575705
#>     Attrib V19    0.16900377499285288
#>     Attrib V2    -0.145569887458678
#>     Attrib V20    0.6002387307940201
#>     Attrib V21    0.6867469248043913
#>     Attrib V22    0.5667452823345334
#>     Attrib V23    0.48236648766388374
#>     Attrib V24    0.17984100499700215
#>     Attrib V25    -0.27114014895099947
#>     Attrib V26    -0.3970254013133683
#>     Attrib V27    -0.3263648060064195
#>     Attrib V28    0.02489287448296747
#>     Attrib V29    -0.29214902425550027
#>     Attrib V3    -0.23394292667291947
#>     Attrib V30    0.05019534790389747
#>     Attrib V31    -1.5466177242530172
#>     Attrib V32    -0.32666240002339736
#>     Attrib V33    0.3546796834160889
#>     Attrib V34    0.041832416772141764
#>     Attrib V35    0.6843197782373829
#>     Attrib V36    0.31789155298814065
#>     Attrib V37    -0.3063963108527589
#>     Attrib V38    -0.2561137091437214
#>     Attrib V39    0.04282864360253765
#>     Attrib V4    0.4065492468748536
#>     Attrib V40    -0.48422056459845747
#>     Attrib V41    -0.17132616084060337
#>     Attrib V42    -0.09386741069156686
#>     Attrib V43    0.2944318644661605
#>     Attrib V44    0.6362341053726038
#>     Attrib V45    0.6795404370704398
#>     Attrib V46    -0.42858294003685965
#>     Attrib V47    -0.19897763922002426
#>     Attrib V48    0.7077885404282864
#>     Attrib V49    0.4373590985411088
#>     Attrib V5    -0.09886868113261654
#>     Attrib V50    -0.6958888346528894
#>     Attrib V51    0.008127172213095368
#>     Attrib V52    0.17172108634874383
#>     Attrib V53    -0.13304148414874664
#>     Attrib V54    0.8208097815665393
#>     Attrib V55    -0.594090395726474
#>     Attrib V56    0.22385083584182433
#>     Attrib V57    -0.00820802522544928
#>     Attrib V58    0.4439670822598409
#>     Attrib V59    0.7620704165281524
#>     Attrib V6    -0.08819886811879739
#>     Attrib V60    0.3583467267556051
#>     Attrib V7    0.09212554667868936
#>     Attrib V8    -0.12878352361139356
#>     Attrib V9    0.4026204184691895
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.16611884684842976
#>     Attrib V1    0.5022874087849571
#>     Attrib V10    -0.9095459957375949
#>     Attrib V11    -1.0213860069802114
#>     Attrib V12    -1.4697090961308001
#>     Attrib V13    -0.5022782622188597
#>     Attrib V14    0.5108179447722683
#>     Attrib V15    0.7031949644840095
#>     Attrib V16    0.6127133942450791
#>     Attrib V17    0.3039909641450516
#>     Attrib V18    -0.0674501030554641
#>     Attrib V19    0.05957699913455659
#>     Attrib V2    -0.029517952994326035
#>     Attrib V20    0.3733499577675237
#>     Attrib V21    -0.07594140689349828
#>     Attrib V22    -0.3224587679336899
#>     Attrib V23    -0.778339313150336
#>     Attrib V24    -0.35891320792998693
#>     Attrib V25    0.30417084416430157
#>     Attrib V26    -0.07723329042936332
#>     Attrib V27    -0.8259001029910517
#>     Attrib V28    -1.3625744694310777
#>     Attrib V29    -0.14661677903240006
#>     Attrib V3    -0.15673322326777311
#>     Attrib V30    -0.09766660510430465
#>     Attrib V31    1.2475030165013719
#>     Attrib V32    -0.17872493381373294
#>     Attrib V33    -0.2666922203980818
#>     Attrib V34    0.12248851046980722
#>     Attrib V35    -0.5323029965236057
#>     Attrib V36    0.9186764290800012
#>     Attrib V37    0.7149402537377048
#>     Attrib V38    0.8628886945654407
#>     Attrib V39    -0.07218795096584706
#>     Attrib V4    -0.47337178406470976
#>     Attrib V40    0.42775551537336354
#>     Attrib V41    -0.8099983430126142
#>     Attrib V42    0.39148020030329966
#>     Attrib V43    -0.3060163825102092
#>     Attrib V44    -0.5825636534584527
#>     Attrib V45    -0.4304282651446991
#>     Attrib V46    -0.0472226136787223
#>     Attrib V47    -0.41462813997523756
#>     Attrib V48    -1.7103540310839112
#>     Attrib V49    -1.3580048928907862
#>     Attrib V5    -0.1488080039154292
#>     Attrib V50    0.7586230187317295
#>     Attrib V51    -1.0080307396995551
#>     Attrib V52    -1.1584699632756243
#>     Attrib V53    -0.7238782920436735
#>     Attrib V54    0.30741176191431324
#>     Attrib V55    1.4365701215979787
#>     Attrib V56    0.213435813597237
#>     Attrib V57    0.9235406689340947
#>     Attrib V58    -0.42499126080975924
#>     Attrib V59    0.04119659157867515
#>     Attrib V6    -0.19672417272302342
#>     Attrib V60    0.20663360361534044
#>     Attrib V7    0.5546194600338064
#>     Attrib V8    0.806407550616685
#>     Attrib V9    -1.2030292410161085
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.08156523155363501
#>     Attrib V1    0.10797147568234604
#>     Attrib V10    -0.007727508506735636
#>     Attrib V11    0.15186753325983948
#>     Attrib V12    0.1832091866087938
#>     Attrib V13    0.04981289880172336
#>     Attrib V14    0.09134546317059587
#>     Attrib V15    0.10266272492483489
#>     Attrib V16    -0.005025755771220593
#>     Attrib V17    -0.058288558023668065
#>     Attrib V18    0.03899803739166616
#>     Attrib V19    -0.017728029820455904
#>     Attrib V2    -0.0032717900925592976
#>     Attrib V20    0.23967825446676802
#>     Attrib V21    0.2228490623143207
#>     Attrib V22    0.048712954241128724
#>     Attrib V23    -0.06672826154824957
#>     Attrib V24    2.7621259891128435E-4
#>     Attrib V25    -0.027437552573766906
#>     Attrib V26    -0.20851582692871007
#>     Attrib V27    -0.08683930024391814
#>     Attrib V28    0.1879664020302368
#>     Attrib V29    0.03887853151876839
#>     Attrib V3    -0.010643921228440364
#>     Attrib V30    -0.05333901032071793
#>     Attrib V31    -0.5347090408170719
#>     Attrib V32    0.03736531100963177
#>     Attrib V33    0.20030914952399922
#>     Attrib V34    0.030288580972101
#>     Attrib V35    0.2988876720771286
#>     Attrib V36    0.052955168366306204
#>     Attrib V37    0.012220583084082574
#>     Attrib V38    -0.015289009721297847
#>     Attrib V39    0.12418733963386966
#>     Attrib V4    0.16168571519679628
#>     Attrib V40    -0.18927428524991383
#>     Attrib V41    -0.03818004614311488
#>     Attrib V42    -0.16714205936411491
#>     Attrib V43    0.08278094637117574
#>     Attrib V44    0.12568321866299378
#>     Attrib V45    0.30517072014474467
#>     Attrib V46    -0.08614465108049184
#>     Attrib V47    0.00567474618528643
#>     Attrib V48    0.3948033140952715
#>     Attrib V49    0.25294553274048526
#>     Attrib V5    -0.020640716757470527
#>     Attrib V50    -0.23945931856989885
#>     Attrib V51    0.031165492396043302
#>     Attrib V52    0.08586831451621538
#>     Attrib V53    0.04087612852070464
#>     Attrib V54    0.26665916087895375
#>     Attrib V55    -0.13976821161767672
#>     Attrib V56    0.1301687902765216
#>     Attrib V57    0.13426567011694443
#>     Attrib V58    0.12605855940424823
#>     Attrib V59    0.3055385693534665
#>     Attrib V6    -0.052930639249973516
#>     Attrib V60    0.2592250106032416
#>     Attrib V7    0.01348639407200869
#>     Attrib V8    -0.11774424784826702
#>     Attrib V9    0.18432433624632572
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.19963416186950622
#>     Attrib V1    0.07000929144809483
#>     Attrib V10    0.025934433147098646
#>     Attrib V11    -0.0965103094624066
#>     Attrib V12    -0.16499621444574575
#>     Attrib V13    -0.012128667197776813
#>     Attrib V14    0.05917639484372822
#>     Attrib V15    0.048283948287708885
#>     Attrib V16    0.08612307224742966
#>     Attrib V17    0.13493986728224347
#>     Attrib V18    0.03936459282907923
#>     Attrib V19    -0.008681112091272819
#>     Attrib V2    0.10561340555372825
#>     Attrib V20    -0.07621741997090825
#>     Attrib V21    -0.05596496623650821
#>     Attrib V22    -0.020664474098001824
#>     Attrib V23    -0.024093060587519227
#>     Attrib V24    -0.060609556504598976
#>     Attrib V25    0.07039062111949765
#>     Attrib V26    0.0952768578253772
#>     Attrib V27    -0.057429107004185964
#>     Attrib V28    -0.19060342610130432
#>     Attrib V29    -0.13363135192531136
#>     Attrib V3    0.07081844454476377
#>     Attrib V30    -0.010181726627094337
#>     Attrib V31    0.3220074904689397
#>     Attrib V32    0.009648656248088073
#>     Attrib V33    -0.044564035387955156
#>     Attrib V34    0.021185753052943002
#>     Attrib V35    -0.010826555562545817
#>     Attrib V36    0.12415378093229176
#>     Attrib V37    0.16916908336391703
#>     Attrib V38    0.05380503052984662
#>     Attrib V39    0.049484708153159626
#>     Attrib V4    0.03591773464385812
#>     Attrib V40    0.1818962963944625
#>     Attrib V41    0.04556998786061419
#>     Attrib V42    0.1519078126112712
#>     Attrib V43    -0.011422280597352457
#>     Attrib V44    -0.08687363398213882
#>     Attrib V45    -0.08529566724039422
#>     Attrib V46    0.06600031470817558
#>     Attrib V47    -0.013684099028821839
#>     Attrib V48    -0.20758350055039243
#>     Attrib V49    -0.17519761661908542
#>     Attrib V5    0.04982199481620741
#>     Attrib V50    0.1889828143946323
#>     Attrib V51    -0.017916109333742134
#>     Attrib V52    -0.03558464616361537
#>     Attrib V53    -0.04476379099979047
#>     Attrib V54    -0.062559799103333
#>     Attrib V55    0.16836792211815277
#>     Attrib V56    0.05312528222407663
#>     Attrib V57    0.09053939564268565
#>     Attrib V58    0.036911842053174694
#>     Attrib V59    0.015605602470344586
#>     Attrib V6    0.11765496261076588
#>     Attrib V60    0.0797394317562819
#>     Attrib V7    0.04164082596645218
#>     Attrib V8    0.12848274683231156
#>     Attrib V9    -0.0660460855818829
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.011399766369396092
#>     Attrib V1    0.22359238846281698
#>     Attrib V10    -0.18868655731734155
#>     Attrib V11    -0.015928774185163523
#>     Attrib V12    -0.0656605667470627
#>     Attrib V13    0.00969892516946426
#>     Attrib V14    0.16569952257965545
#>     Attrib V15    0.32321651626609527
#>     Attrib V16    0.1745493685842759
#>     Attrib V17    0.14886732350270881
#>     Attrib V18    0.2570999067309334
#>     Attrib V19    0.1506028791465133
#>     Attrib V2    0.056972594718073255
#>     Attrib V20    0.5267231602797388
#>     Attrib V21    0.3950877052245765
#>     Attrib V22    0.2576106049239355
#>     Attrib V23    0.16206143861752428
#>     Attrib V24    0.11102255778087879
#>     Attrib V25    -0.13800885531338367
#>     Attrib V26    -0.4276094828167936
#>     Attrib V27    -0.5376176098509842
#>     Attrib V28    -0.3128674662954373
#>     Attrib V29    -0.413780949445859
#>     Attrib V3    -0.11147056584767316
#>     Attrib V30    -0.20589194200131583
#>     Attrib V31    -0.8910800320185257
#>     Attrib V32    -0.1854461151245884
#>     Attrib V33    0.27921283282334597
#>     Attrib V34    0.09643268137879929
#>     Attrib V35    0.4539525889603324
#>     Attrib V36    0.2019569415770595
#>     Attrib V37    -0.11762871960592042
#>     Attrib V38    -0.10112937716767725
#>     Attrib V39    0.01184198222730179
#>     Attrib V4    0.2497896052943529
#>     Attrib V40    -0.1999833767984491
#>     Attrib V41    -0.17547103322066626
#>     Attrib V42    -0.08671263760495075
#>     Attrib V43    0.1676145584695661
#>     Attrib V44    0.31154396008692803
#>     Attrib V45    0.27919670101727345
#>     Attrib V46    -0.26302492569608155
#>     Attrib V47    -0.16235224463326056
#>     Attrib V48    0.32853919437632034
#>     Attrib V49    0.1874536362957205
#>     Attrib V5    -0.06469167100288944
#>     Attrib V50    -0.4398084572897788
#>     Attrib V51    -0.12292577005387018
#>     Attrib V52    -0.04786564529667047
#>     Attrib V53    0.009957063093709416
#>     Attrib V54    0.6939783423094046
#>     Attrib V55    -0.11876518335517013
#>     Attrib V56    0.3122535561948635
#>     Attrib V57    0.25717757436374106
#>     Attrib V58    0.27648368954624947
#>     Attrib V59    0.6211013375388412
#>     Attrib V6    -0.04735093920925647
#>     Attrib V60    0.40969862619915953
#>     Attrib V7    0.2019901718178839
#>     Attrib V8    -0.036669722314424474
#>     Attrib V9    0.1480627417621384
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.030941566840515577
#>     Attrib V1    0.1704918301107871
#>     Attrib V10    -0.04418105819796595
#>     Attrib V11    0.06795220066713249
#>     Attrib V12    0.07070489909157254
#>     Attrib V13    0.0010914344222661245
#>     Attrib V14    0.1147996611068153
#>     Attrib V15    0.12648513557276708
#>     Attrib V16    0.0810496351589576
#>     Attrib V17    -0.013238518828622524
#>     Attrib V18    0.10175271417079616
#>     Attrib V19    -0.018151912065491976
#>     Attrib V2    0.04193337345810934
#>     Attrib V20    0.17314938788472922
#>     Attrib V21    0.15983162787164512
#>     Attrib V22    -0.006219610047725512
#>     Attrib V23    6.603888020270776E-4
#>     Attrib V24    -0.02453076501034675
#>     Attrib V25    -0.08582169877821325
#>     Attrib V26    -0.15025743624617224
#>     Attrib V27    -0.11105409451055098
#>     Attrib V28    0.09551588775769053
#>     Attrib V29    -0.043045876500600835
#>     Attrib V3    0.05243171345561217
#>     Attrib V30    -2.356811269494671E-4
#>     Attrib V31    -0.4214726971019192
#>     Attrib V32    -0.03387684396443891
#>     Attrib V33    0.12750935183168208
#>     Attrib V34    0.02031887858098078
#>     Attrib V35    0.2189583181342694
#>     Attrib V36    0.11939895538023293
#>     Attrib V37    -0.00345747854993479
#>     Attrib V38    -0.058706673894339256
#>     Attrib V39    0.08877124293870638
#>     Attrib V4    0.14163110573071822
#>     Attrib V40    -0.13786499639642058
#>     Attrib V41    -0.08659049368278124
#>     Attrib V42    -0.05801735078285983
#>     Attrib V43    -0.004479783949143392
#>     Attrib V44    0.1486926660163197
#>     Attrib V45    0.216220826710075
#>     Attrib V46    -0.04930158926103492
#>     Attrib V47    -0.04142405678336252
#>     Attrib V48    0.19269785571912318
#>     Attrib V49    0.19966595963446393
#>     Attrib V5    0.030582311588389866
#>     Attrib V50    -0.18856132373209766
#>     Attrib V51    0.021511966907929447
#>     Attrib V52    0.05365648904137534
#>     Attrib V53    0.03612606703198591
#>     Attrib V54    0.15984943431941528
#>     Attrib V55    -0.09354227086706557
#>     Attrib V56    0.10545241048478542
#>     Attrib V57    0.12055738357666076
#>     Attrib V58    0.19360191871974716
#>     Attrib V59    0.25374920611170426
#>     Attrib V6    0.0046240233047382265
#>     Attrib V60    0.21145904835285428
#>     Attrib V7    0.049133805385872545
#>     Attrib V8    -0.021943841901797777
#>     Attrib V9    0.16133223819078316
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
