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
#>     Threshold    -0.4200492192627934
#>     Node 2    2.409793944952633
#>     Node 3    1.4980437177820176
#>     Node 4    0.48068529550259315
#>     Node 5    -1.5820047411420568
#>     Node 6    0.9428403358908112
#>     Node 7    3.5885778206596037
#>     Node 8    0.7923041480492772
#>     Node 9    3.600609932428074
#>     Node 10    -2.079325026647879
#>     Node 11    1.0419495634977158
#>     Node 12    1.3124807306425743
#>     Node 13    -0.19534553261182092
#>     Node 14    1.8911469030501808
#>     Node 15    -2.0940175556046303
#>     Node 16    0.9816327233547262
#>     Node 17    0.3963893912184861
#>     Node 18    -1.5029988674909565
#>     Node 19    1.5450397919107284
#>     Node 20    1.5794927536744787
#>     Node 21    -2.114088786031219
#>     Node 22    1.4264465296678466
#>     Node 23    1.8100332609782426
#>     Node 24    -0.5485599344724212
#>     Node 25    4.767698524319977
#>     Node 26    -0.5269940120379247
#>     Node 27    1.2802518467774215
#>     Node 28    -2.5814226428767157
#>     Node 29    0.659062614783183
#>     Node 30    0.9629054073983875
#>     Node 31    2.153615675809842
#>     Node 32    0.42817382782819874
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.4545557937518275
#>     Node 2    -2.458714886718712
#>     Node 3    -1.4837085757331663
#>     Node 4    -0.43829612432917625
#>     Node 5    1.599845858519642
#>     Node 6    -0.9219814141006355
#>     Node 7    -3.591645692829902
#>     Node 8    -0.8242278711674709
#>     Node 9    -3.60390173990588
#>     Node 10    2.0216930852101376
#>     Node 11    -1.0071740777862224
#>     Node 12    -1.3901980755128027
#>     Node 13    0.25167873421496967
#>     Node 14    -1.8302469195592752
#>     Node 15    2.083661920596801
#>     Node 16    -0.9990151111987392
#>     Node 17    -0.3598952844501537
#>     Node 18    1.5510101180015117
#>     Node 19    -1.539900684713193
#>     Node 20    -1.5703013984236
#>     Node 21    2.1684936144431575
#>     Node 22    -1.4792629311261947
#>     Node 23    -1.8525999702426248
#>     Node 24    0.5407464217869771
#>     Node 25    -4.768888267400013
#>     Node 26    0.45011302289290916
#>     Node 27    -1.3198704083895731
#>     Node 28    2.5324265562755848
#>     Node 29    -0.6910785325750374
#>     Node 30    -0.8898616312232566
#>     Node 31    -2.0929315488308524
#>     Node 32    -0.4449968741031969
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.11336241493340705
#>     Attrib V1    0.8265025608132621
#>     Attrib V10    -0.3124026442736903
#>     Attrib V11    0.11566360369357409
#>     Attrib V12    -0.3744851497893541
#>     Attrib V13    -0.41614363060086745
#>     Attrib V14    0.0700983166615903
#>     Attrib V15    0.44983545015831555
#>     Attrib V16    0.26730477364127175
#>     Attrib V17    0.574073952106595
#>     Attrib V18    0.6332335512267879
#>     Attrib V19    0.027765518890153884
#>     Attrib V2    0.20666516885210245
#>     Attrib V20    0.8955562476375581
#>     Attrib V21    1.0542084122001583
#>     Attrib V22    0.5549374898627906
#>     Attrib V23    0.3491363175131621
#>     Attrib V24    0.15291339944656587
#>     Attrib V25    -0.24138572474069117
#>     Attrib V26    -0.7168651706974261
#>     Attrib V27    -0.7456863486767588
#>     Attrib V28    0.2485136975662405
#>     Attrib V29    0.41670823593884465
#>     Attrib V3    0.16418842037749493
#>     Attrib V30    0.09277982436991876
#>     Attrib V31    -1.670856872847166
#>     Attrib V32    0.13664870599383358
#>     Attrib V33    0.9332261406558281
#>     Attrib V34    0.2100886872384382
#>     Attrib V35    0.1502514480506669
#>     Attrib V36    -0.6988704538791243
#>     Attrib V37    -0.5906047375206235
#>     Attrib V38    0.7104342607643409
#>     Attrib V39    0.40942188585576633
#>     Attrib V4    0.6262124427026469
#>     Attrib V40    -0.44235919957738423
#>     Attrib V41    0.13811540362165925
#>     Attrib V42    0.9149896758513131
#>     Attrib V43    0.3438949085907244
#>     Attrib V44    0.3894240309565377
#>     Attrib V45    0.7096368263359059
#>     Attrib V46    0.4860420837247955
#>     Attrib V47    -0.20526561577521366
#>     Attrib V48    0.006119540228270694
#>     Attrib V49    0.25721549282342215
#>     Attrib V5    -0.0440333359726991
#>     Attrib V50    -0.7347435332604602
#>     Attrib V51    0.08444195719424324
#>     Attrib V52    0.5847593492988594
#>     Attrib V53    0.21746898908176188
#>     Attrib V54    0.5317730967510024
#>     Attrib V55    -0.3737368467916384
#>     Attrib V56    -0.10293057815257914
#>     Attrib V57    -0.17038623234905992
#>     Attrib V58    0.8428953325754884
#>     Attrib V59    0.07308441884707872
#>     Attrib V6    -0.22472102884501313
#>     Attrib V60    0.19327732690119626
#>     Attrib V7    -0.8079821824341247
#>     Attrib V8    -0.5577953051988267
#>     Attrib V9    0.38187563165231314
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.21649185741664967
#>     Attrib V1    0.4628374817483319
#>     Attrib V10    -0.32446055464981516
#>     Attrib V11    0.036185849583462194
#>     Attrib V12    -0.21755615218879693
#>     Attrib V13    -0.3442963001643401
#>     Attrib V14    0.046489474795444734
#>     Attrib V15    0.4073086889696577
#>     Attrib V16    0.1953310838061715
#>     Attrib V17    0.33342733749702785
#>     Attrib V18    0.3169965532999174
#>     Attrib V19    -0.04329432682392815
#>     Attrib V2    0.14176520893139244
#>     Attrib V20    0.41417602489774774
#>     Attrib V21    0.48838211957608557
#>     Attrib V22    0.13336544922975108
#>     Attrib V23    -0.009669045174751735
#>     Attrib V24    0.04135889832677906
#>     Attrib V25    -0.24858943689882662
#>     Attrib V26    -0.5166322036208979
#>     Attrib V27    -0.47252086728609055
#>     Attrib V28    0.04223010161815378
#>     Attrib V29    0.09548918117646787
#>     Attrib V3    0.021658551971032322
#>     Attrib V30    0.06242266299662544
#>     Attrib V31    -0.9582417203597133
#>     Attrib V32    0.08677314633420005
#>     Attrib V33    0.602210104010131
#>     Attrib V34    0.05472290027230102
#>     Attrib V35    -0.0014023219874369703
#>     Attrib V36    -0.6796199928187209
#>     Attrib V37    -0.5904353462193392
#>     Attrib V38    0.19311719878245762
#>     Attrib V39    0.16245793873299058
#>     Attrib V4    0.381598174093012
#>     Attrib V40    -0.25911246738465993
#>     Attrib V41    0.062311113102581354
#>     Attrib V42    0.5107414842220943
#>     Attrib V43    0.1205186504796113
#>     Attrib V44    0.1869277117080468
#>     Attrib V45    0.4190549821955972
#>     Attrib V46    0.28997799286736525
#>     Attrib V47    -0.12409197373938632
#>     Attrib V48    0.07344881994565342
#>     Attrib V49    0.17370424228867462
#>     Attrib V5    -0.131938117982017
#>     Attrib V50    -0.5454166399388319
#>     Attrib V51    -0.03258258280872515
#>     Attrib V52    0.4820773720153835
#>     Attrib V53    0.15794421415248805
#>     Attrib V54    0.47804227874037103
#>     Attrib V55    -0.027778871456606024
#>     Attrib V56    -0.0546054743475813
#>     Attrib V57    0.1877641376287359
#>     Attrib V58    0.6819059796686351
#>     Attrib V59    0.17583342715155895
#>     Attrib V6    -0.18006822283529442
#>     Attrib V60    0.19100512195268618
#>     Attrib V7    -0.6040058098672959
#>     Attrib V8    -0.227074712705092
#>     Attrib V9    0.1693503598870506
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.08411991922142152
#>     Attrib V1    0.1573552730483179
#>     Attrib V10    -0.03829689189371957
#>     Attrib V11    0.08450434891685996
#>     Attrib V12    -0.00857168116843051
#>     Attrib V13    -0.07721325980194305
#>     Attrib V14    0.06153166505120667
#>     Attrib V15    0.1372188571051099
#>     Attrib V16    0.022271755667534424
#>     Attrib V17    0.06305532873861157
#>     Attrib V18    0.01124234352739494
#>     Attrib V19    -0.1214222971571789
#>     Attrib V2    0.07544712798585701
#>     Attrib V20    0.0421209681860381
#>     Attrib V21    0.06702507736636533
#>     Attrib V22    -0.14044554779994714
#>     Attrib V23    -0.12565003366603203
#>     Attrib V24    -0.07007083915913914
#>     Attrib V25    -0.1331905643919843
#>     Attrib V26    -0.11468194066510365
#>     Attrib V27    -0.12038656665801421
#>     Attrib V28    0.031328230086365726
#>     Attrib V29    0.06255327804863427
#>     Attrib V3    0.09586448694838907
#>     Attrib V30    0.04221954392490206
#>     Attrib V31    -0.18733031588243398
#>     Attrib V32    0.05318330313798447
#>     Attrib V33    0.21259777316084466
#>     Attrib V34    0.07232650375798773
#>     Attrib V35    0.045302742796554864
#>     Attrib V36    -0.18148389667341522
#>     Attrib V37    -0.12035555746708672
#>     Attrib V38    0.031149058083569953
#>     Attrib V39    0.048907492630301384
#>     Attrib V4    0.1419647446944471
#>     Attrib V40    -0.059073458958686806
#>     Attrib V41    -0.0481891931448205
#>     Attrib V42    0.0846165490501336
#>     Attrib V43    -0.03481158710143925
#>     Attrib V44    0.06261097180125474
#>     Attrib V45    0.19794497933772523
#>     Attrib V46    0.09092599852339402
#>     Attrib V47    -0.034283659044446406
#>     Attrib V48    0.11088888252828508
#>     Attrib V49    0.11215661192851366
#>     Attrib V5    0.03359437522038488
#>     Attrib V50    -0.06358948589412182
#>     Attrib V51    0.07367812704957824
#>     Attrib V52    0.1945470167059969
#>     Attrib V53    0.16028311710647625
#>     Attrib V54    0.1280565372797134
#>     Attrib V55    0.07475057307565412
#>     Attrib V56    0.015372200244386175
#>     Attrib V57    0.20100380782179186
#>     Attrib V58    0.20336190402589902
#>     Attrib V59    0.0617838922378967
#>     Attrib V6    -0.059715942988743546
#>     Attrib V60    -0.012041723914492927
#>     Attrib V7    -0.1588237875196862
#>     Attrib V8    -0.07019056877390517
#>     Attrib V9    0.15618091091390773
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.37143744633409603
#>     Attrib V1    -0.2893157382213159
#>     Attrib V10    0.2854098610944929
#>     Attrib V11    -0.29201426830360777
#>     Attrib V12    -0.15237901762801961
#>     Attrib V13    0.10845785978508643
#>     Attrib V14    0.09019650979824453
#>     Attrib V15    -0.19209460266493555
#>     Attrib V16    -0.009899053249137948
#>     Attrib V17    -0.16804610347729199
#>     Attrib V18    -0.2898397287676064
#>     Attrib V19    0.28734352233329796
#>     Attrib V2    0.023151875693717974
#>     Attrib V20    -0.20972775109395972
#>     Attrib V21    -0.41887384801393535
#>     Attrib V22    -0.254448690612039
#>     Attrib V23    -0.20898472547362157
#>     Attrib V24    -0.36160688981167355
#>     Attrib V25    0.027968753560886746
#>     Attrib V26    0.14015944633017172
#>     Attrib V27    0.15364567590868466
#>     Attrib V28    -0.3963342029612282
#>     Attrib V29    -0.45148646806138476
#>     Attrib V3    0.14552172186757506
#>     Attrib V30    -0.167623263910246
#>     Attrib V31    0.9013163876908109
#>     Attrib V32    -0.11325269156249498
#>     Attrib V33    -0.4559373547661701
#>     Attrib V34    0.11976403088264713
#>     Attrib V35    0.12298352917489737
#>     Attrib V36    0.8477478851306083
#>     Attrib V37    0.4526521929398159
#>     Attrib V38    -0.33732020127943657
#>     Attrib V39    -0.15211986866653598
#>     Attrib V4    -0.4654404845879947
#>     Attrib V40    0.34796176980863014
#>     Attrib V41    -0.23573325570738446
#>     Attrib V42    -0.5987267461101878
#>     Attrib V43    -0.2562919565912367
#>     Attrib V44    -0.11886416554327385
#>     Attrib V45    -0.373953470083465
#>     Attrib V46    -0.48118509793882663
#>     Attrib V47    0.05707629858369695
#>     Attrib V48    -0.03045637474862628
#>     Attrib V49    -0.24364457671862544
#>     Attrib V5    0.03357826713226555
#>     Attrib V50    0.80582743012596
#>     Attrib V51    -0.14855592739252946
#>     Attrib V52    -0.589882588953458
#>     Attrib V53    -0.13531742819079817
#>     Attrib V54    -0.5472761759094265
#>     Attrib V55    0.20029287208045626
#>     Attrib V56    0.26002735252704495
#>     Attrib V57    -0.0017151707484637868
#>     Attrib V58    -0.7040099247317475
#>     Attrib V59    -0.06345343662438578
#>     Attrib V6    0.02417969335126383
#>     Attrib V60    -0.16014848773477472
#>     Attrib V7    0.810429768351788
#>     Attrib V8    0.3546995945350701
#>     Attrib V9    -0.2890556509162693
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.10870377192750794
#>     Attrib V1    0.35722961541974185
#>     Attrib V10    -0.28173784373509286
#>     Attrib V11    0.005922573973368097
#>     Attrib V12    -0.09606731753790662
#>     Attrib V13    -0.24027568117483333
#>     Attrib V14    0.057153941012121866
#>     Attrib V15    0.25190266331050515
#>     Attrib V16    0.21962875676092633
#>     Attrib V17    0.20976439204016
#>     Attrib V18    0.2615940735204719
#>     Attrib V19    -0.05721568721762061
#>     Attrib V2    0.12978534589468999
#>     Attrib V20    0.26463759982494095
#>     Attrib V21    0.3052187542595888
#>     Attrib V22    -0.017252228389138265
#>     Attrib V23    -0.06668274126617628
#>     Attrib V24    0.06330535426417733
#>     Attrib V25    -0.10164907525017428
#>     Attrib V26    -0.2929095551890127
#>     Attrib V27    -0.256158062939318
#>     Attrib V28    -0.07593194741072833
#>     Attrib V29    0.014746954209926916
#>     Attrib V3    0.04739006689780904
#>     Attrib V30    -0.024801497598973373
#>     Attrib V31    -0.583649557298718
#>     Attrib V32    0.0387960113634134
#>     Attrib V33    0.3553832222220012
#>     Attrib V34    0.04398341539162379
#>     Attrib V35    0.03720086855027586
#>     Attrib V36    -0.3731721916713843
#>     Attrib V37    -0.3052691138557504
#>     Attrib V38    0.12804117414234914
#>     Attrib V39    0.07043366212934277
#>     Attrib V4    0.2727489203720178
#>     Attrib V40    -0.20411927308196773
#>     Attrib V41    0.02615767675130745
#>     Attrib V42    0.2766146790398815
#>     Attrib V43    0.06002657597933816
#>     Attrib V44    0.09318157606320292
#>     Attrib V45    0.26689498747837903
#>     Attrib V46    0.16962312032392804
#>     Attrib V47    -0.13520300179703332
#>     Attrib V48    0.006084832269330949
#>     Attrib V49    0.07044501935245948
#>     Attrib V5    -0.07996641620180985
#>     Attrib V50    -0.2385139673262924
#>     Attrib V51    0.004132587785527532
#>     Attrib V52    0.2574363320065554
#>     Attrib V53    0.25891535506792
#>     Attrib V54    0.28147700854127977
#>     Attrib V55    0.010359294946149358
#>     Attrib V56    0.0035434784223312855
#>     Attrib V57    0.20344846225430122
#>     Attrib V58    0.4168949824578512
#>     Attrib V59    0.20428896919346262
#>     Attrib V6    -0.06419228769324918
#>     Attrib V60    0.17727745707319587
#>     Attrib V7    -0.29091145794708567
#>     Attrib V8    -0.12783424058574228
#>     Attrib V9    0.12936272900422266
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4474216974428964
#>     Attrib V1    0.18802401231909738
#>     Attrib V10    1.126657255706986
#>     Attrib V11    1.5898816930316575
#>     Attrib V12    1.0650466722496288
#>     Attrib V13    0.2687186867700304
#>     Attrib V14    -0.5691925865287173
#>     Attrib V15    -0.4989820777566439
#>     Attrib V16    -0.8249326209747073
#>     Attrib V17    -0.47292128417851703
#>     Attrib V18    -0.2732514654203496
#>     Attrib V19    -0.9333669392580609
#>     Attrib V2    0.16498316732962368
#>     Attrib V20    -0.285096066715473
#>     Attrib V21    0.45187335950221713
#>     Attrib V22    0.7304368171897269
#>     Attrib V23    0.9900670211169242
#>     Attrib V24    0.9042978637359756
#>     Attrib V25    0.638411415600092
#>     Attrib V26    1.2600896025257904
#>     Attrib V27    1.0961615698452902
#>     Attrib V28    1.0389455598892734
#>     Attrib V29    1.1141439231126569
#>     Attrib V3    -0.22846285187946988
#>     Attrib V30    0.6465789237825419
#>     Attrib V31    -0.3532830680725391
#>     Attrib V32    -0.05067324832788688
#>     Attrib V33    -0.3461666621865315
#>     Attrib V34    -0.29505381704892986
#>     Attrib V35    0.33300205795393445
#>     Attrib V36    -0.7398109022184364
#>     Attrib V37    0.4015213261337978
#>     Attrib V38    0.2520511094787041
#>     Attrib V39    -0.08272671851451166
#>     Attrib V4    0.3787260065287823
#>     Attrib V40    -0.0015292459310197908
#>     Attrib V41    0.5819184666009796
#>     Attrib V42    0.020970293774360497
#>     Attrib V43    -0.07203807766483439
#>     Attrib V44    0.1367503343259171
#>     Attrib V45    0.6011038047015926
#>     Attrib V46    1.2418970618144287
#>     Attrib V47    1.009391969372777
#>     Attrib V48    0.8787469431621997
#>     Attrib V49    0.9410647748039263
#>     Attrib V5    0.4466950213654734
#>     Attrib V50    -0.12308752415709028
#>     Attrib V51    1.042560400115354
#>     Attrib V52    1.2586527790473425
#>     Attrib V53    -0.18739076901480053
#>     Attrib V54    0.5807857507677229
#>     Attrib V55    -0.2957622099747762
#>     Attrib V56    -0.7511094608411985
#>     Attrib V57    -0.032460902104829166
#>     Attrib V58    0.2748963107150494
#>     Attrib V59    -0.4051659020547618
#>     Attrib V6    0.6954185045519159
#>     Attrib V60    -0.10531070351678827
#>     Attrib V7    -0.7197620791970152
#>     Attrib V8    -0.08167991190953561
#>     Attrib V9    1.076511363559541
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.11317984136014081
#>     Attrib V1    0.20835333488830607
#>     Attrib V10    0.05183232927217123
#>     Attrib V11    0.2825123285500084
#>     Attrib V12    0.050347274201962
#>     Attrib V13    -0.1549088974447233
#>     Attrib V14    -0.11118701771080977
#>     Attrib V15    0.05046267085957053
#>     Attrib V16    -5.884466187161897E-4
#>     Attrib V17    -0.02723787552482202
#>     Attrib V18    -0.0941885932526141
#>     Attrib V19    -0.3042093794702041
#>     Attrib V2    0.10646599878958465
#>     Attrib V20    -0.10289147034100433
#>     Attrib V21    -0.019193653701285122
#>     Attrib V22    -0.22454238551396605
#>     Attrib V23    -0.21542373650731844
#>     Attrib V24    -0.02648630086868569
#>     Attrib V25    -0.1272152931895523
#>     Attrib V26    -0.034377936099285945
#>     Attrib V27    0.04025624815100241
#>     Attrib V28    0.17909459765168204
#>     Attrib V29    0.20768216715590318
#>     Attrib V3    -0.0022110212648986795
#>     Attrib V30    0.18711981532865374
#>     Attrib V31    -0.24924599167103997
#>     Attrib V32    0.12635440966465433
#>     Attrib V33    0.24605824259604794
#>     Attrib V34    -0.008282589409666478
#>     Attrib V35    -3.4085858469426645E-4
#>     Attrib V36    -0.31879159042988087
#>     Attrib V37    -0.19068105075325806
#>     Attrib V38    0.11334062656447343
#>     Attrib V39    -0.019047150595079942
#>     Attrib V4    0.24795910098872448
#>     Attrib V40    -0.19646266142973642
#>     Attrib V41    -0.08549820976010282
#>     Attrib V42    -0.03334533525360924
#>     Attrib V43    -0.05634442030179136
#>     Attrib V44    0.09124809116846452
#>     Attrib V45    0.25016321109241124
#>     Attrib V46    0.26095796052550896
#>     Attrib V47    0.025663084862679795
#>     Attrib V48    0.23790511236445505
#>     Attrib V49    0.19539637926335035
#>     Attrib V5    -0.043715682833948576
#>     Attrib V50    -0.2299638039490773
#>     Attrib V51    0.06818297007265102
#>     Attrib V52    0.35958138235771014
#>     Attrib V53    0.15330303828600958
#>     Attrib V54    0.2629114083157744
#>     Attrib V55    0.04133614935174202
#>     Attrib V56    -0.18898984959838305
#>     Attrib V57    0.2475208377097846
#>     Attrib V58    0.2784805824320106
#>     Attrib V59    -0.008619029293209788
#>     Attrib V6    -0.06432698884628288
#>     Attrib V60    -0.01837831198077044
#>     Attrib V7    -0.29652553851965935
#>     Attrib V8    -0.0534427090871842
#>     Attrib V9    0.2742395726743191
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.3293453600099759
#>     Attrib V1    0.06080668076715016
#>     Attrib V10    1.1603792205419092
#>     Attrib V11    1.5397844033721648
#>     Attrib V12    1.2485323513758404
#>     Attrib V13    0.4633596481519812
#>     Attrib V14    -0.5523933433067223
#>     Attrib V15    -0.47729671868650037
#>     Attrib V16    -0.8124204729221636
#>     Attrib V17    -0.46751140149448167
#>     Attrib V18    -0.33459905510440885
#>     Attrib V19    -1.0112086023469675
#>     Attrib V2    0.1308428022834469
#>     Attrib V20    -0.4550662254586894
#>     Attrib V21    0.2785560008384864
#>     Attrib V22    0.6093516184674737
#>     Attrib V23    0.8741699581579389
#>     Attrib V24    0.8940905923149264
#>     Attrib V25    0.703696539844293
#>     Attrib V26    1.3610291769708827
#>     Attrib V27    1.2453213701203971
#>     Attrib V28    1.010040318735873
#>     Attrib V29    0.9747082943477994
#>     Attrib V3    -0.2405445896523557
#>     Attrib V30    0.5902639691444053
#>     Attrib V31    -0.2486364103107087
#>     Attrib V32    -0.03431017205774459
#>     Attrib V33    -0.3904850294442067
#>     Attrib V34    -0.2612297586723656
#>     Attrib V35    0.28379060058754674
#>     Attrib V36    -0.6961933779262062
#>     Attrib V37    0.40679345619809526
#>     Attrib V38    0.20182844921507606
#>     Attrib V39    -0.06418221015619273
#>     Attrib V4    0.38618055923332995
#>     Attrib V40    -0.019508200795326704
#>     Attrib V41    0.5269621841287594
#>     Attrib V42    -0.06397147344297134
#>     Attrib V43    0.03617996123084081
#>     Attrib V44    0.1390055195025055
#>     Attrib V45    0.5501393713222605
#>     Attrib V46    1.2105087224076656
#>     Attrib V47    0.9784764503339771
#>     Attrib V48    0.8028534935492351
#>     Attrib V49    0.9103865172577926
#>     Attrib V5    0.4584838801860421
#>     Attrib V50    -0.17559177058018074
#>     Attrib V51    1.0562064215926048
#>     Attrib V52    1.2463910382714634
#>     Attrib V53    -0.05263966995848725
#>     Attrib V54    0.5405464177054705
#>     Attrib V55    -0.2045671578986688
#>     Attrib V56    -0.6678050355584422
#>     Attrib V57    -0.07022959557720554
#>     Attrib V58    0.23675660699870132
#>     Attrib V59    -0.304699552099973
#>     Attrib V6    0.7199050822311016
#>     Attrib V60    -0.1232968142474774
#>     Attrib V7    -0.6829954880741685
#>     Attrib V8    -0.026336677098087825
#>     Attrib V9    0.9482021056676065
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.49512955228375327
#>     Attrib V1    -0.2827608615103022
#>     Attrib V10    0.37447958849533036
#>     Attrib V11    -0.41981660908497054
#>     Attrib V12    -0.18333794364265807
#>     Attrib V13    0.18394410732014982
#>     Attrib V14    0.14733214974056863
#>     Attrib V15    -0.3273703132252743
#>     Attrib V16    0.02527340601453732
#>     Attrib V17    -0.2995492597028657
#>     Attrib V18    -0.36092044488619923
#>     Attrib V19    0.3573228041550217
#>     Attrib V2    -0.006099953420676573
#>     Attrib V20    -0.19233530360518852
#>     Attrib V21    -0.5018321448595893
#>     Attrib V22    -0.32939235318910665
#>     Attrib V23    -0.3085521912033303
#>     Attrib V24    -0.44739965044149327
#>     Attrib V25    -0.029850441086785064
#>     Attrib V26    0.21299090281008612
#>     Attrib V27    0.22025446084528877
#>     Attrib V28    -0.4616451661977444
#>     Attrib V29    -0.5950049251471167
#>     Attrib V3    0.12989879409693778
#>     Attrib V30    -0.15481640284434262
#>     Attrib V31    1.1617524333372495
#>     Attrib V32    -0.2396075833173303
#>     Attrib V33    -0.5932048952343953
#>     Attrib V34    0.15442637592796613
#>     Attrib V35    0.1946761421981975
#>     Attrib V36    1.1560277133232713
#>     Attrib V37    0.6863668450660939
#>     Attrib V38    -0.32238416026883515
#>     Attrib V39    -0.16817998388310995
#>     Attrib V4    -0.5882191461185988
#>     Attrib V40    0.4761648824305181
#>     Attrib V41    -0.24503813155567797
#>     Attrib V42    -0.8920740147565032
#>     Attrib V43    -0.38077804001571053
#>     Attrib V44    -0.13716935601061203
#>     Attrib V45    -0.3505849113120383
#>     Attrib V46    -0.5248149238596431
#>     Attrib V47    0.0594986625507043
#>     Attrib V48    -0.07474704566943438
#>     Attrib V49    -0.3051866973944928
#>     Attrib V5    0.011712217725841844
#>     Attrib V50    1.0557120763097951
#>     Attrib V51    -0.2000433355495868
#>     Attrib V52    -0.7579653034585214
#>     Attrib V53    -0.11572644266882402
#>     Attrib V54    -0.7235006147215175
#>     Attrib V55    0.18797378554193891
#>     Attrib V56    0.2121718706871331
#>     Attrib V57    0.021576748056491814
#>     Attrib V58    -0.9190146773204314
#>     Attrib V59    -0.1537385998615473
#>     Attrib V6    0.018090538279151448
#>     Attrib V60    -0.2911265580675319
#>     Attrib V7    1.0175066386751204
#>     Attrib V8    0.45221814072299527
#>     Attrib V9    -0.302428512500583
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.15404550607730183
#>     Attrib V1    0.2666800503282079
#>     Attrib V10    -0.12350830440029575
#>     Attrib V11    0.17910950131957185
#>     Attrib V12    -0.03401462060718048
#>     Attrib V13    -0.3180984822526604
#>     Attrib V14    -0.07229202262587112
#>     Attrib V15    0.14830047636318727
#>     Attrib V16    0.057685640144974265
#>     Attrib V17    0.16459065366955455
#>     Attrib V18    0.1278853524906213
#>     Attrib V19    -0.2396306752465824
#>     Attrib V2    0.0323089372951218
#>     Attrib V20    0.13759790636119382
#>     Attrib V21    0.14151877931150092
#>     Attrib V22    -0.15312057839612725
#>     Attrib V23    -0.20176154244300346
#>     Attrib V24    -0.08235192440605173
#>     Attrib V25    -0.20266816470453197
#>     Attrib V26    -0.2688774015561521
#>     Attrib V27    -0.1314160498740292
#>     Attrib V28    0.1632313753837465
#>     Attrib V29    0.19202213006749455
#>     Attrib V3    -0.0759780935805732
#>     Attrib V30    0.15878738975070852
#>     Attrib V31    -0.5540018734079347
#>     Attrib V32    0.08186134116268019
#>     Attrib V33    0.35268124278020424
#>     Attrib V34    0.064699700553545
#>     Attrib V35    0.05276729291488808
#>     Attrib V36    -0.46661935886666894
#>     Attrib V37    -0.35606286415547733
#>     Attrib V38    0.15344100203793504
#>     Attrib V39    0.007178218796684022
#>     Attrib V4    0.24145811600359834
#>     Attrib V40    -0.2617674857025517
#>     Attrib V41    -0.0929617487834592
#>     Attrib V42    0.19257851108586158
#>     Attrib V43    0.008953015006979106
#>     Attrib V44    0.14094196748489735
#>     Attrib V45    0.37604804744972875
#>     Attrib V46    0.26060887427506335
#>     Attrib V47    -0.028399882917367923
#>     Attrib V48    0.20615932555059222
#>     Attrib V49    0.16224371227217102
#>     Attrib V5    -0.03622215865129657
#>     Attrib V50    -0.34062619408991873
#>     Attrib V51    0.0887412330383737
#>     Attrib V52    0.3842725866233242
#>     Attrib V53    0.11447718227806328
#>     Attrib V54    0.33981431759653136
#>     Attrib V55    -0.011988062661014673
#>     Attrib V56    -0.14145573434251
#>     Attrib V57    0.1899410957888999
#>     Attrib V58    0.42982392801902763
#>     Attrib V59    -0.06361992585058988
#>     Attrib V6    -0.05989793584994885
#>     Attrib V60    -0.022295979071730004
#>     Attrib V7    -0.4775130358110497
#>     Attrib V8    -0.10118190175717615
#>     Attrib V9    0.27188997792279973
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.3423438321393518
#>     Attrib V1    0.27007624816660036
#>     Attrib V10    -0.05086190953319851
#>     Attrib V11    0.38155805440843005
#>     Attrib V12    -0.07205185895489007
#>     Attrib V13    -0.3455323461685457
#>     Attrib V14    -0.15933929314910225
#>     Attrib V15    0.10731603692236213
#>     Attrib V16    -0.005042488936245836
#>     Attrib V17    0.0658581179478147
#>     Attrib V18    0.059964838468855454
#>     Attrib V19    -0.3335322746192093
#>     Attrib V2    0.08131474325266089
#>     Attrib V20    0.0234417699980099
#>     Attrib V21    0.1951796989317794
#>     Attrib V22    -0.06232361227718174
#>     Attrib V23    -0.1707559823128592
#>     Attrib V24    -0.10154386154470918
#>     Attrib V25    -0.3165196026602296
#>     Attrib V26    -0.22556894330943192
#>     Attrib V27    0.018205555706938513
#>     Attrib V28    0.3620158665546776
#>     Attrib V29    0.45210527933498534
#>     Attrib V3    -0.15911009244126093
#>     Attrib V30    0.2610705427317846
#>     Attrib V31    -0.6745475068138752
#>     Attrib V32    0.12745215401576937
#>     Attrib V33    0.423194867694944
#>     Attrib V34    -0.02790542745916155
#>     Attrib V35    -0.005488526794333187
#>     Attrib V36    -0.6977700686249705
#>     Attrib V37    -0.42790814860273546
#>     Attrib V38    0.11294500289301576
#>     Attrib V39    -0.07656956495524482
#>     Attrib V4    0.3473699303091604
#>     Attrib V40    -0.3353447758451607
#>     Attrib V41    -0.026093433974851428
#>     Attrib V42    0.25149016902616117
#>     Attrib V43    0.06631588963414198
#>     Attrib V44    0.0897774625665326
#>     Attrib V45    0.4408031697136247
#>     Attrib V46    0.47579354869822427
#>     Attrib V47    -0.007697759844448838
#>     Attrib V48    0.2737873852782247
#>     Attrib V49    0.22260424989261438
#>     Attrib V5    -0.05618734763525189
#>     Attrib V50    -0.5396300310636225
#>     Attrib V51    0.12118577736172557
#>     Attrib V52    0.5961710584348546
#>     Attrib V53    0.07372328713082968
#>     Attrib V54    0.3321550776918162
#>     Attrib V55    -0.11521790813221798
#>     Attrib V56    -0.2877258430620688
#>     Attrib V57    0.15179473382796402
#>     Attrib V58    0.5538812873420503
#>     Attrib V59    -0.12675008130858137
#>     Attrib V6    -0.076369915782245
#>     Attrib V60    -0.0387297692496242
#>     Attrib V7    -0.6022879651636254
#>     Attrib V8    -0.07346182060151722
#>     Attrib V9    0.442594840032805
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.2570697712957576
#>     Attrib V1    -0.010354601063256225
#>     Attrib V10    0.026666520781413666
#>     Attrib V11    -0.06329546220625085
#>     Attrib V12    -0.05426027499294187
#>     Attrib V13    0.07663255283982483
#>     Attrib V14    0.02487375536605727
#>     Attrib V15    -0.04411213615749401
#>     Attrib V16    -0.023854867560459434
#>     Attrib V17    -0.011376808010683434
#>     Attrib V18    -0.03308908522870192
#>     Attrib V19    0.0010742081145289494
#>     Attrib V2    0.03697600886730598
#>     Attrib V20    -0.06900342282015264
#>     Attrib V21    -0.08161896015899638
#>     Attrib V22    -0.08645068973436111
#>     Attrib V23    -0.01970532564440953
#>     Attrib V24    -0.06008186096316325
#>     Attrib V25    -0.013956616140146894
#>     Attrib V26    -0.09056486012109498
#>     Attrib V27    -0.03151161706156312
#>     Attrib V28    -0.10551259098803764
#>     Attrib V29    -0.03706963963421432
#>     Attrib V3    0.15319183761959784
#>     Attrib V30    -0.006572616367974926
#>     Attrib V31    0.08476617806240894
#>     Attrib V32    0.0482626664843221
#>     Attrib V33    0.023487920632520667
#>     Attrib V34    0.10740993839129646
#>     Attrib V35    0.06409255538600794
#>     Attrib V36    0.16600253195311926
#>     Attrib V37    0.16755763554171796
#>     Attrib V38    0.03424386619661879
#>     Attrib V39    0.12791912778685172
#>     Attrib V4    0.05356036016073985
#>     Attrib V40    0.18223239246998463
#>     Attrib V41    0.13699211543669418
#>     Attrib V42    0.08115173247756018
#>     Attrib V43    0.04166870361641993
#>     Attrib V44    0.07868247194051037
#>     Attrib V45    -0.022311425316077927
#>     Attrib V46    0.033062868352646484
#>     Attrib V47    0.1121692367942447
#>     Attrib V48    0.0011652761640561732
#>     Attrib V49    0.039291523278202525
#>     Attrib V5    0.11984393443914267
#>     Attrib V50    0.11569551172923204
#>     Attrib V51    0.05775276630349736
#>     Attrib V52    -0.09066546830030894
#>     Attrib V53    0.05827384439651182
#>     Attrib V54    -0.0600559240724634
#>     Attrib V55    0.05429234796566654
#>     Attrib V56    0.123148062216247
#>     Attrib V57    0.0967854513167985
#>     Attrib V58    0.0538384875598085
#>     Attrib V59    0.1534033194758435
#>     Attrib V6    0.12776343406876448
#>     Attrib V60    0.15556493024781218
#>     Attrib V7    0.21086863319493285
#>     Attrib V8    0.0967128305088181
#>     Attrib V9    0.009624923830222586
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.3974528767085108
#>     Attrib V1    0.33199654132418027
#>     Attrib V10    0.3775702392803546
#>     Attrib V11    0.8671691778881289
#>     Attrib V12    0.3204086613901493
#>     Attrib V13    -0.4041876080645549
#>     Attrib V14    -0.35956709957151445
#>     Attrib V15    0.10231625944896913
#>     Attrib V16    -0.23897548539755453
#>     Attrib V17    -0.1729467619102116
#>     Attrib V18    -0.24200673436521303
#>     Attrib V19    -0.7643461676693701
#>     Attrib V2    0.12627988113021552
#>     Attrib V20    -0.356175231903582
#>     Attrib V21    -0.0775015982768547
#>     Attrib V22    -0.3890488962164571
#>     Attrib V23    -0.4839602104440441
#>     Attrib V24    -0.2506990304107547
#>     Attrib V25    -0.3777768767856469
#>     Attrib V26    0.07738844463403209
#>     Attrib V27    0.24521056890336307
#>     Attrib V28    0.3534684307075842
#>     Attrib V29    0.4163674470830915
#>     Attrib V3    -0.21833655551354755
#>     Attrib V30    0.4492576438972816
#>     Attrib V31    -0.389635928682435
#>     Attrib V32    0.17594429636018807
#>     Attrib V33    0.2528619045527814
#>     Attrib V34    -0.10410685028027332
#>     Attrib V35    0.03469907036950824
#>     Attrib V36    -0.9257409607235372
#>     Attrib V37    -0.4012388651170022
#>     Attrib V38    -0.062490768223728954
#>     Attrib V39    -0.1782148631746851
#>     Attrib V4    0.3034075954366625
#>     Attrib V40    -0.44468946879620563
#>     Attrib V41    -0.22788143967443106
#>     Attrib V42    -0.047505787414139945
#>     Attrib V43    -0.11655749255854875
#>     Attrib V44    0.09051247638885403
#>     Attrib V45    0.39948852038915406
#>     Attrib V46    0.6220080799701232
#>     Attrib V47    0.15968866005030308
#>     Attrib V48    0.5711809265588418
#>     Attrib V49    0.4723620638120525
#>     Attrib V5    -0.071827846377729
#>     Attrib V50    -0.5200509781375084
#>     Attrib V51    0.27378831131156656
#>     Attrib V52    0.7857176254342252
#>     Attrib V53    -0.06116913786904813
#>     Attrib V54    0.555021643268903
#>     Attrib V55    0.17147313924774824
#>     Attrib V56    -0.38241958866360953
#>     Attrib V57    0.19088356063345
#>     Attrib V58    0.7053882154892261
#>     Attrib V59    -0.24965861912912066
#>     Attrib V6    0.04473792626869868
#>     Attrib V60    0.026302207480404793
#>     Attrib V7    -0.6799218296013487
#>     Attrib V8    0.06519178093673642
#>     Attrib V9    0.7151557725440196
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.329139063961022
#>     Attrib V1    -0.5738103356126383
#>     Attrib V10    0.4335014181906998
#>     Attrib V11    -0.18308928129259924
#>     Attrib V12    0.24856403012765738
#>     Attrib V13    0.34819093990371736
#>     Attrib V14    -0.024386011733209787
#>     Attrib V15    -0.3807008963667137
#>     Attrib V16    -0.19642799601253536
#>     Attrib V17    -0.4307946264311715
#>     Attrib V18    -0.5049226587910246
#>     Attrib V19    0.13149823826970328
#>     Attrib V2    -0.1367371358564542
#>     Attrib V20    -0.5544932224571106
#>     Attrib V21    -0.7963856864729657
#>     Attrib V22    -0.3220087503190574
#>     Attrib V23    -0.23572511460025625
#>     Attrib V24    -0.22245444029925612
#>     Attrib V25    0.1823403780229374
#>     Attrib V26    0.5967722295098287
#>     Attrib V27    0.5609015307637749
#>     Attrib V28    -0.19545823805196172
#>     Attrib V29    -0.33362327470881453
#>     Attrib V3    0.025741411752846034
#>     Attrib V30    -0.06726983924540876
#>     Attrib V31    1.3441852106879653
#>     Attrib V32    -0.13353951628228924
#>     Attrib V33    -0.8229317491522922
#>     Attrib V34    -0.026959299289570214
#>     Attrib V35    0.06571653078151106
#>     Attrib V36    0.9025141706720431
#>     Attrib V37    0.7808598860627228
#>     Attrib V38    -0.4566972985618671
#>     Attrib V39    -0.3103996948208667
#>     Attrib V4    -0.5144883061571024
#>     Attrib V40    0.3392698291015862
#>     Attrib V41    -0.18833786529008617
#>     Attrib V42    -0.827529637799654
#>     Attrib V43    -0.321753172786917
#>     Attrib V44    -0.2240155438124688
#>     Attrib V45    -0.47263616964059363
#>     Attrib V46    -0.4116608644193757
#>     Attrib V47    0.1884302418571794
#>     Attrib V48    -0.04401268777652577
#>     Attrib V49    -0.3383767668305504
#>     Attrib V5    0.11663969494867674
#>     Attrib V50    0.7444731806478091
#>     Attrib V51    -0.012240746404837919
#>     Attrib V52    -0.6188550666762959
#>     Attrib V53    -0.18477519859971364
#>     Attrib V54    -0.6467886075888946
#>     Attrib V55    0.14963252788686787
#>     Attrib V56    0.14736348075059133
#>     Attrib V57    -0.07073207168861965
#>     Attrib V58    -0.9272648872142027
#>     Attrib V59    -0.165228861979602
#>     Attrib V6    0.09604473273299535
#>     Attrib V60    -0.23365198590218977
#>     Attrib V7    0.7332770873328472
#>     Attrib V8    0.4065543132346994
#>     Attrib V9    -0.26366246617840294
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    0.029207186564941392
#>     Attrib V1    0.35723082443580223
#>     Attrib V10    -0.27857194167229493
#>     Attrib V11    -0.030423059623409323
#>     Attrib V12    -0.16337809278753013
#>     Attrib V13    -0.20977187844411954
#>     Attrib V14    0.04579900133192794
#>     Attrib V15    0.26477884534117696
#>     Attrib V16    0.2550675971729459
#>     Attrib V17    0.2954661975891208
#>     Attrib V18    0.2839142355147614
#>     Attrib V19    0.010446791566845878
#>     Attrib V2    0.0926907529134274
#>     Attrib V20    0.24997949995531843
#>     Attrib V21    0.254846614406729
#>     Attrib V22    -0.04439338536431183
#>     Attrib V23    -0.14812271179505682
#>     Attrib V24    0.03210031420711431
#>     Attrib V25    -0.16093846600337822
#>     Attrib V26    -0.3606676524903647
#>     Attrib V27    -0.3449084106704659
#>     Attrib V28    -0.1054866781483437
#>     Attrib V29    -0.0499940385646099
#>     Attrib V3    0.0707575251117452
#>     Attrib V30    -0.09225253894073472
#>     Attrib V31    -0.6071766753359249
#>     Attrib V32    0.026173567771108706
#>     Attrib V33    0.34829711695043203
#>     Attrib V34    0.12190825786264244
#>     Attrib V35    0.02281079108017731
#>     Attrib V36    -0.3601583850607749
#>     Attrib V37    -0.32161895609480107
#>     Attrib V38    0.14449305396267126
#>     Attrib V39    0.09551154961300566
#>     Attrib V4    0.2588194151775322
#>     Attrib V40    -0.20209092979214346
#>     Attrib V41    -0.023502039340763815
#>     Attrib V42    0.27623207755100176
#>     Attrib V43    0.04940855534164504
#>     Attrib V44    0.07229760731467745
#>     Attrib V45    0.2683602628906388
#>     Attrib V46    0.15777147353913
#>     Attrib V47    -0.14918381117227508
#>     Attrib V48    0.022682401085269636
#>     Attrib V49    0.04364577018120821
#>     Attrib V5    -0.07846480236575963
#>     Attrib V50    -0.2369214366796298
#>     Attrib V51    0.03368128741933611
#>     Attrib V52    0.3123284847954217
#>     Attrib V53    0.2915296229952805
#>     Attrib V54    0.3032180614013691
#>     Attrib V55    0.0780470329589362
#>     Attrib V56    0.03648779667870702
#>     Attrib V57    0.23325088819021125
#>     Attrib V58    0.4476037188446864
#>     Attrib V59    0.15420750829066598
#>     Attrib V6    -0.09372447733738644
#>     Attrib V60    0.17992025824180605
#>     Attrib V7    -0.308243404237386
#>     Attrib V8    -0.20659857703879536
#>     Attrib V9    0.10758575882514898
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.048542670117878085
#>     Attrib V1    0.19605249491269644
#>     Attrib V10    0.01923940743499103
#>     Attrib V11    0.10968551979294096
#>     Attrib V12    -0.026784071004185266
#>     Attrib V13    -0.1267356953776901
#>     Attrib V14    0.0032141359833692614
#>     Attrib V15    0.14215567416171326
#>     Attrib V16    0.041039789740096505
#>     Attrib V17    0.05071918374841048
#>     Attrib V18    0.008430074265557553
#>     Attrib V19    -0.09303398962964356
#>     Attrib V2    0.15921945872688284
#>     Attrib V20    -0.004145248321657047
#>     Attrib V21    -0.01475584011467236
#>     Attrib V22    -0.06645552466528452
#>     Attrib V23    -0.1349682600270885
#>     Attrib V24    -0.01762798267273916
#>     Attrib V25    -0.10667787695698815
#>     Attrib V26    -0.1123600230552334
#>     Attrib V27    -0.07108886887516724
#>     Attrib V28    -0.03466340467940946
#>     Attrib V29    -0.02707155025067425
#>     Attrib V3    0.061963778346082674
#>     Attrib V30    0.045501863619315616
#>     Attrib V31    -0.12246915129368888
#>     Attrib V32    0.01651255619869921
#>     Attrib V33    0.21360302558894456
#>     Attrib V34    0.04459197079185456
#>     Attrib V35    0.09199933409356296
#>     Attrib V36    -0.12843207768992992
#>     Attrib V37    -0.08899979103879876
#>     Attrib V38    0.11869887240701225
#>     Attrib V39    0.06485225579210874
#>     Attrib V4    0.1597426169664556
#>     Attrib V40    -0.09506853854250157
#>     Attrib V41    -0.008542905284084915
#>     Attrib V42    0.020906414865647933
#>     Attrib V43    0.028190470760190944
#>     Attrib V44    0.0749944938181127
#>     Attrib V45    0.16157256469413578
#>     Attrib V46    0.06761145042116015
#>     Attrib V47    -0.057181014160657316
#>     Attrib V48    0.11904177882189607
#>     Attrib V49    0.042633215310068855
#>     Attrib V5    0.013517767958992032
#>     Attrib V50    -0.04882908302527227
#>     Attrib V51    0.05253516093982248
#>     Attrib V52    0.13569545964272328
#>     Attrib V53    0.10437586154015095
#>     Attrib V54    0.13677065884654202
#>     Attrib V55    0.1157879856323771
#>     Attrib V56    0.027882479334178416
#>     Attrib V57    0.22994713075033943
#>     Attrib V58    0.15373825009690031
#>     Attrib V59    0.0346968565324357
#>     Attrib V6    0.004303233856221673
#>     Attrib V60    0.02105036141474028
#>     Attrib V7    -0.14930489124888455
#>     Attrib V8    0.009046427506734253
#>     Attrib V9    0.1313675825369008
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.45969278070598946
#>     Attrib V1    -0.22825754999944886
#>     Attrib V10    0.21381284124111824
#>     Attrib V11    -0.40502830017101116
#>     Attrib V12    -0.24441155357024102
#>     Attrib V13    0.08762099103679297
#>     Attrib V14    0.14120091997731105
#>     Attrib V15    -0.18834693100696398
#>     Attrib V16    0.06561113784274586
#>     Attrib V17    -0.18547420011891805
#>     Attrib V18    -0.1907094225450588
#>     Attrib V19    0.3256707358780516
#>     Attrib V2    0.017272746888515864
#>     Attrib V20    -0.04689394619963872
#>     Attrib V21    -0.2773039782006624
#>     Attrib V22    -0.18108027537417204
#>     Attrib V23    -0.22220553392175255
#>     Attrib V24    -0.35035947084623137
#>     Attrib V25    0.004118463556887527
#>     Attrib V26    0.07463139859081169
#>     Attrib V27    0.057348944184646415
#>     Attrib V28    -0.4235919140823937
#>     Attrib V29    -0.5043985171707984
#>     Attrib V3    0.20533407714093393
#>     Attrib V30    -0.2713026253654763
#>     Attrib V31    0.7544841826856686
#>     Attrib V32    -0.16145512865679867
#>     Attrib V33    -0.38746426824944646
#>     Attrib V34    0.19898535411948065
#>     Attrib V35    0.06576061666611435
#>     Attrib V36    0.891522862023775
#>     Attrib V37    0.4008918515493152
#>     Attrib V38    -0.2913698450914409
#>     Attrib V39    -0.04921531637510953
#>     Attrib V4    -0.4345194126575328
#>     Attrib V40    0.33456354703486124
#>     Attrib V41    -0.23455612329238262
#>     Attrib V42    -0.5846950521117545
#>     Attrib V43    -0.2669844322314225
#>     Attrib V44    -0.1174380329415707
#>     Attrib V45    -0.36977240429507635
#>     Attrib V46    -0.4697988316872607
#>     Attrib V47    0.06922384422776945
#>     Attrib V48    -0.06654353731673476
#>     Attrib V49    -0.21051487904253102
#>     Attrib V5    -0.008985986241028681
#>     Attrib V50    0.7464497017304056
#>     Attrib V51    -0.13055684200596732
#>     Attrib V52    -0.6147196923895282
#>     Attrib V53    -0.1049093289592118
#>     Attrib V54    -0.6045353259961976
#>     Attrib V55    0.19760365001129884
#>     Attrib V56    0.3044801013107488
#>     Attrib V57    0.03983909292469636
#>     Attrib V58    -0.6261389508191932
#>     Attrib V59    0.008234865043504664
#>     Attrib V6    -0.046947745440647864
#>     Attrib V60    -0.07525636296114947
#>     Attrib V7    0.8326511917200813
#>     Attrib V8    0.3571575081341698
#>     Attrib V9    -0.2868476164203173
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.38246620871613407
#>     Attrib V1    0.2066556723541421
#>     Attrib V10    0.12632207198891074
#>     Attrib V11    0.5350340805229696
#>     Attrib V12    0.18507025926360407
#>     Attrib V13    -0.2891827456907033
#>     Attrib V14    -0.25510259043335953
#>     Attrib V15    0.07635207522656218
#>     Attrib V16    -0.20358299445826472
#>     Attrib V17    -0.07306969138397636
#>     Attrib V18    -0.02924966542135739
#>     Attrib V19    -0.5312515928862901
#>     Attrib V2    0.04932152817041603
#>     Attrib V20    -0.13479705785337356
#>     Attrib V21    0.143079454835427
#>     Attrib V22    -0.02061814059356942
#>     Attrib V23    -0.09689511757754338
#>     Attrib V24    0.049786075577030874
#>     Attrib V25    -0.17383591874537724
#>     Attrib V26    -0.026648742595699885
#>     Attrib V27    0.17550707864040124
#>     Attrib V28    0.5423078238417064
#>     Attrib V29    0.5846196441925116
#>     Attrib V3    -0.20962993166629262
#>     Attrib V30    0.3656161261722167
#>     Attrib V31    -0.5778103009511448
#>     Attrib V32    0.15006614109289984
#>     Attrib V33    0.33766547524460366
#>     Attrib V34    -0.10786206240048071
#>     Attrib V35    0.06797777377049326
#>     Attrib V36    -0.7554138513573438
#>     Attrib V37    -0.3924382503712742
#>     Attrib V38    0.03745912839030536
#>     Attrib V39    -0.13699912786002427
#>     Attrib V4    0.36750949048107917
#>     Attrib V40    -0.36439954638330846
#>     Attrib V41    -0.00852655191818643
#>     Attrib V42    0.2229489542794964
#>     Attrib V43    -0.016793137866827342
#>     Attrib V44    0.08764198202573188
#>     Attrib V45    0.49551409789690476
#>     Attrib V46    0.5754562211998602
#>     Attrib V47    0.029028122860060197
#>     Attrib V48    0.26729998205505123
#>     Attrib V49    0.39253610427201185
#>     Attrib V5    -0.01856925418601161
#>     Attrib V50    -0.5950904143438658
#>     Attrib V51    0.16470289326815737
#>     Attrib V52    0.7202569122801334
#>     Attrib V53    4.4601894601089246E-4
#>     Attrib V54    0.4476787216324402
#>     Attrib V55    9.850041681181917E-5
#>     Attrib V56    -0.5092806026578132
#>     Attrib V57    0.06334196599816268
#>     Attrib V58    0.670478851006251
#>     Attrib V59    -0.2174968739358856
#>     Attrib V6    0.04764240568681068
#>     Attrib V60    -0.02575022520648175
#>     Attrib V7    -0.6377026369366674
#>     Attrib V8    -0.02767328525677994
#>     Attrib V9    0.5528613897561396
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.3499074778999381
#>     Attrib V1    0.3717455900248089
#>     Attrib V10    0.2084492953138239
#>     Attrib V11    0.5281753680648423
#>     Attrib V12    0.13391048935415686
#>     Attrib V13    -0.26727020980428123
#>     Attrib V14    -0.2928476182774762
#>     Attrib V15    0.024179190913650617
#>     Attrib V16    -0.23782358722545055
#>     Attrib V17    -0.01357575120558826
#>     Attrib V18    0.06855576075821845
#>     Attrib V19    -0.4793463170918898
#>     Attrib V2    0.04693080608285088
#>     Attrib V20    0.1052285436074877
#>     Attrib V21    0.48088832718681784
#>     Attrib V22    0.35779767532406637
#>     Attrib V23    0.3381165787818837
#>     Attrib V24    0.2941890234981145
#>     Attrib V25    0.002507947051827971
#>     Attrib V26    0.09481740946525759
#>     Attrib V27    0.18991265402636875
#>     Attrib V28    0.5916312816978703
#>     Attrib V29    0.7716296441547086
#>     Attrib V3    -0.19775798924882088
#>     Attrib V30    0.5054951707076971
#>     Attrib V31    -0.729954135350994
#>     Attrib V32    0.11939854784694279
#>     Attrib V33    0.315321908324273
#>     Attrib V34    -0.1639178892478713
#>     Attrib V35    0.07846015168685765
#>     Attrib V36    -0.6008613803369701
#>     Attrib V37    -0.11651364240486414
#>     Attrib V38    0.38196366124726383
#>     Attrib V39    0.02813498988542337
#>     Attrib V4    0.373501469506301
#>     Attrib V40    -0.35734858736210984
#>     Attrib V41    0.16147867490144205
#>     Attrib V42    0.3379189763617297
#>     Attrib V43    0.15703572555103798
#>     Attrib V44    0.2527245232563851
#>     Attrib V45    0.5229151617658533
#>     Attrib V46    0.5813655933406215
#>     Attrib V47    0.09267919329310463
#>     Attrib V48    0.24716943571994554
#>     Attrib V49    0.37086522253518733
#>     Attrib V5    0.07425153347023407
#>     Attrib V50    -0.5776353784287112
#>     Attrib V51    0.34218198114667425
#>     Attrib V52    0.6700307822810714
#>     Attrib V53    -0.10538856848865137
#>     Attrib V54    0.47169469621780963
#>     Attrib V55    -0.26629501075449025
#>     Attrib V56    -0.47488220938532866
#>     Attrib V57    -0.11145394700918301
#>     Attrib V58    0.5194055133651959
#>     Attrib V59    -0.22721126998903698
#>     Attrib V6    0.04150674788271176
#>     Attrib V60    -0.023481108160993202
#>     Attrib V7    -0.7251734626951356
#>     Attrib V8    -0.24462782578344006
#>     Attrib V9    0.6068031789619327
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.1839269105318918
#>     Attrib V1    -0.6092035222718494
#>     Attrib V10    0.3356059729894665
#>     Attrib V11    -0.180469317704717
#>     Attrib V12    0.23849007288804827
#>     Attrib V13    0.3080547213410905
#>     Attrib V14    0.004620027764955771
#>     Attrib V15    -0.3704745478610414
#>     Attrib V16    -0.1754225246989634
#>     Attrib V17    -0.45042189793734283
#>     Attrib V18    -0.541733468610805
#>     Attrib V19    0.007805334007232761
#>     Attrib V2    -0.16318930882495894
#>     Attrib V20    -0.6693806737187943
#>     Attrib V21    -0.8515065086602018
#>     Attrib V22    -0.5626811336806936
#>     Attrib V23    -0.4045597165146771
#>     Attrib V24    -0.2611988446593666
#>     Attrib V25    0.14455066496319752
#>     Attrib V26    0.5560656010525316
#>     Attrib V27    0.5869461952917082
#>     Attrib V28    -0.2669357317211567
#>     Attrib V29    -0.3799243825431841
#>     Attrib V3    -0.06729926967048246
#>     Attrib V30    -0.07007722696918807
#>     Attrib V31    1.4189903484823607
#>     Attrib V32    -0.1513283366910208
#>     Attrib V33    -0.8284066186046927
#>     Attrib V34    -0.08099537409759977
#>     Attrib V35    -0.044350396726785854
#>     Attrib V36    0.7228957094862092
#>     Attrib V37    0.6157915655434832
#>     Attrib V38    -0.6144522956082761
#>     Attrib V39    -0.37216336846033893
#>     Attrib V4    -0.5219157569319088
#>     Attrib V40    0.405997044055838
#>     Attrib V41    -0.13284243374181973
#>     Attrib V42    -0.8552034056341993
#>     Attrib V43    -0.31448063341796434
#>     Attrib V44    -0.2471571977085406
#>     Attrib V45    -0.57538657739648
#>     Attrib V46    -0.4756323787650805
#>     Attrib V47    0.1440295294778295
#>     Attrib V48    0.015679651914281827
#>     Attrib V49    -0.3367473296396692
#>     Attrib V5    0.07446504360710922
#>     Attrib V50    0.7058423555346828
#>     Attrib V51    -0.0752709262114754
#>     Attrib V52    -0.5223152932818388
#>     Attrib V53    -0.17753048443813343
#>     Attrib V54    -0.6129713230292232
#>     Attrib V55    0.24257417808776957
#>     Attrib V56    0.07816429905069225
#>     Attrib V57    0.15344433780697742
#>     Attrib V58    -0.8813226068739216
#>     Attrib V59    -0.09687674030602952
#>     Attrib V6    0.06325649082851256
#>     Attrib V60    -0.2068277597981121
#>     Attrib V7    0.765258250820619
#>     Attrib V8    0.4429726244698266
#>     Attrib V9    -0.29882970910345613
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.14601008729472909
#>     Attrib V1    0.5419359931475706
#>     Attrib V10    -0.3772949091527446
#>     Attrib V11    -0.002858127886467442
#>     Attrib V12    -0.21759582409457856
#>     Attrib V13    -0.38107082710939694
#>     Attrib V14    0.08530866357277188
#>     Attrib V15    0.3648189050707719
#>     Attrib V16    0.34729932038751454
#>     Attrib V17    0.3874302818239477
#>     Attrib V18    0.33453701214504805
#>     Attrib V19    -0.024758085465789104
#>     Attrib V2    0.20038396675738968
#>     Attrib V20    0.4344684725799426
#>     Attrib V21    0.42823967395780993
#>     Attrib V22    -0.016538363106948825
#>     Attrib V23    -0.15704718084356942
#>     Attrib V24    0.0327193615242073
#>     Attrib V25    -0.2967800973333287
#>     Attrib V26    -0.560110757478653
#>     Attrib V27    -0.5548280788716594
#>     Attrib V28    -0.2315124733442512
#>     Attrib V29    -0.051218750198821224
#>     Attrib V3    0.03197751281045509
#>     Attrib V30    -0.09688249886701361
#>     Attrib V31    -0.8136414544385661
#>     Attrib V32    0.03607178226632174
#>     Attrib V33    0.5242116785254131
#>     Attrib V34    0.15283910016172622
#>     Attrib V35    0.03238724129871864
#>     Attrib V36    -0.5332931053648392
#>     Attrib V37    -0.524505008714745
#>     Attrib V38    0.17606889206534876
#>     Attrib V39    0.11769105245183664
#>     Attrib V4    0.3452365918188549
#>     Attrib V40    -0.23211592007780765
#>     Attrib V41    -0.08273347813756621
#>     Attrib V42    0.3713314166009707
#>     Attrib V43    0.15472113754521577
#>     Attrib V44    0.1297565138934142
#>     Attrib V45    0.3117364204654889
#>     Attrib V46    0.23014253279671776
#>     Attrib V47    -0.23878404927804145
#>     Attrib V48    0.10162514314428844
#>     Attrib V49    0.13999650080350126
#>     Attrib V5    -0.12490756538226044
#>     Attrib V50    -0.43354510691715625
#>     Attrib V51    -0.05103542191542353
#>     Attrib V52    0.3950227917654991
#>     Attrib V53    0.2518939253480286
#>     Attrib V54    0.489128234990486
#>     Attrib V55    0.07261349585046886
#>     Attrib V56    0.08573041662385637
#>     Attrib V57    0.2561021732527602
#>     Attrib V58    0.6164889539004743
#>     Attrib V59    0.2327513719996824
#>     Attrib V6    -0.15592207646856712
#>     Attrib V60    0.2588700420664823
#>     Attrib V7    -0.4444648278092881
#>     Attrib V8    -0.30880454090577125
#>     Attrib V9    0.1259170750911854
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.1527167109632089
#>     Attrib V1    0.6531251326365265
#>     Attrib V10    -0.5705008795407468
#>     Attrib V11    -0.04337136672248242
#>     Attrib V12    -0.24758971965438475
#>     Attrib V13    -0.3888809054251769
#>     Attrib V14    0.14749363693364012
#>     Attrib V15    0.5396935355064544
#>     Attrib V16    0.41057896442899156
#>     Attrib V17    0.5642408887683624
#>     Attrib V18    0.4333693982769698
#>     Attrib V19    0.031257782116896775
#>     Attrib V2    0.21355697152575875
#>     Attrib V20    0.5438481628314117
#>     Attrib V21    0.5163646695472445
#>     Attrib V22    0.053704032354045035
#>     Attrib V23    -0.07858245662383571
#>     Attrib V24    -0.04653724639627007
#>     Attrib V25    -0.37281954762239833
#>     Attrib V26    -0.6848435909336578
#>     Attrib V27    -0.7196500351945648
#>     Attrib V28    -0.250318942419741
#>     Attrib V29    -0.11069437059071009
#>     Attrib V3    0.12175212134233555
#>     Attrib V30    -0.15519303322325273
#>     Attrib V31    -1.1152786984649619
#>     Attrib V32    5.047220460293476E-4
#>     Attrib V33    0.6436620448617741
#>     Attrib V34    0.18569054877259322
#>     Attrib V35    0.10649037324886866
#>     Attrib V36    -0.5011350793526805
#>     Attrib V37    -0.5026998533446038
#>     Attrib V38    0.33204850950920034
#>     Attrib V39    0.22350295806241224
#>     Attrib V4    0.4466412279733421
#>     Attrib V40    -0.3417084415944469
#>     Attrib V41    -0.09540590731034272
#>     Attrib V42    0.47336283132564927
#>     Attrib V43    0.2217562409334221
#>     Attrib V44    0.18350222696366292
#>     Attrib V45    0.47622886360282085
#>     Attrib V46    0.25480352003532103
#>     Attrib V47    -0.2494971684978283
#>     Attrib V48    -0.057709571245207605
#>     Attrib V49    0.11010089765399494
#>     Attrib V5    -0.14846083085076747
#>     Attrib V50    -0.5184767448121868
#>     Attrib V51    -0.08564789480225235
#>     Attrib V52    0.46443926328821006
#>     Attrib V53    0.37443794629337485
#>     Attrib V54    0.5628109585367765
#>     Attrib V55    0.10147200083237898
#>     Attrib V56    0.09380381101768948
#>     Attrib V57    0.19149039876623822
#>     Attrib V58    0.6789696535013495
#>     Attrib V59    0.32025282616535783
#>     Attrib V6    -0.2344052671244461
#>     Attrib V60    0.2401677807498724
#>     Attrib V7    -0.5140598806760077
#>     Attrib V8    -0.339410746006651
#>     Attrib V9    0.0882780631297391
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.20457792377961545
#>     Attrib V1    -0.12026897905200905
#>     Attrib V10    0.008093455120506854
#>     Attrib V11    -0.2429393188810058
#>     Attrib V12    -0.16082617657552403
#>     Attrib V13    -0.03342964830872027
#>     Attrib V14    0.038192386283918064
#>     Attrib V15    -0.04364960554126643
#>     Attrib V16    -0.007936678961440742
#>     Attrib V17    -0.02625673157391013
#>     Attrib V18    -0.09454224406532208
#>     Attrib V19    0.13518890762697985
#>     Attrib V2    -0.04512008211985047
#>     Attrib V20    -0.06797544680376648
#>     Attrib V21    -0.13724657814411276
#>     Attrib V22    -0.07825671782704867
#>     Attrib V23    -0.023586695641164664
#>     Attrib V24    -0.14107108236364818
#>     Attrib V25    -9.687867677950676E-4
#>     Attrib V26    0.04038671537904902
#>     Attrib V27    -0.06012626335452728
#>     Attrib V28    -0.16666713910850234
#>     Attrib V29    -0.17854837959765252
#>     Attrib V3    0.050631413236775176
#>     Attrib V30    -0.11094619832872826
#>     Attrib V31    0.2600712614872799
#>     Attrib V32    0.008278767698316333
#>     Attrib V33    -0.1328963133361573
#>     Attrib V34    0.08318137979707853
#>     Attrib V35    0.04613583929097911
#>     Attrib V36    0.3922635354054015
#>     Attrib V37    0.15793681455114728
#>     Attrib V38    -0.11728113197917726
#>     Attrib V39    -0.04663188459440286
#>     Attrib V4    -0.10499633767660982
#>     Attrib V40    0.19301998564528966
#>     Attrib V41    0.018617325829122223
#>     Attrib V42    -0.17407774957734298
#>     Attrib V43    -0.015213689801501708
#>     Attrib V44    -0.057465695937086135
#>     Attrib V45    -0.204800865951698
#>     Attrib V46    -0.20067154417069535
#>     Attrib V47    0.03661209647995067
#>     Attrib V48    -0.06744406117043057
#>     Attrib V49    -0.14396517954835752
#>     Attrib V5    -0.035464915656141724
#>     Attrib V50    0.33275761459054937
#>     Attrib V51    -0.013023533757712405
#>     Attrib V52    -0.2075520428018737
#>     Attrib V53    -0.053457212240279016
#>     Attrib V54    -0.26674313634429986
#>     Attrib V55    0.04145932173629035
#>     Attrib V56    0.149896062023781
#>     Attrib V57    0.10411659066465341
#>     Attrib V58    -0.15910239140649668
#>     Attrib V59    0.04989618150302538
#>     Attrib V6    0.04077490313079926
#>     Attrib V60    0.002188043563668302
#>     Attrib V7    0.28057961255735475
#>     Attrib V8    0.14362039139193652
#>     Attrib V9    -0.09082221983824978
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.6334704773609701
#>     Attrib V1    -0.07121774815129127
#>     Attrib V10    1.289715250491654
#>     Attrib V11    1.8122617834117136
#>     Attrib V12    1.5670814703488805
#>     Attrib V13    0.5948054513745593
#>     Attrib V14    -0.5853324530664298
#>     Attrib V15    -0.6761214602764873
#>     Attrib V16    -1.025351316952392
#>     Attrib V17    -0.45680456260828634
#>     Attrib V18    -0.18755013144694735
#>     Attrib V19    -1.0201172761440171
#>     Attrib V2    0.05260320727980484
#>     Attrib V20    -0.3847964395482353
#>     Attrib V21    0.4073718147474153
#>     Attrib V22    0.9668490961883366
#>     Attrib V23    1.4587842579690657
#>     Attrib V24    1.3468642199010297
#>     Attrib V25    0.977038410582987
#>     Attrib V26    1.623269917998633
#>     Attrib V27    1.4518372350922908
#>     Attrib V28    1.266771194694154
#>     Attrib V29    1.1773378674781179
#>     Attrib V3    -0.33271555558387905
#>     Attrib V30    0.5868845206659767
#>     Attrib V31    -0.3664118124298343
#>     Attrib V32    -0.03436869471956463
#>     Attrib V33    -0.5624041446189119
#>     Attrib V34    -0.3325505928117317
#>     Attrib V35    0.3910141409445281
#>     Attrib V36    -0.9754995579466043
#>     Attrib V37    0.38816271712608763
#>     Attrib V38    0.19449473753193755
#>     Attrib V39    -0.02752124176785909
#>     Attrib V4    0.38530660543642126
#>     Attrib V40    0.17547571343898238
#>     Attrib V41    0.9918559948846853
#>     Attrib V42    0.19299395556614335
#>     Attrib V43    0.012027373577710455
#>     Attrib V44    0.2174848461643365
#>     Attrib V45    0.6697635055975012
#>     Attrib V46    1.4153992311894594
#>     Attrib V47    1.2347658344990753
#>     Attrib V48    1.0915124564583953
#>     Attrib V49    1.3177621549051775
#>     Attrib V5    0.6762993244226725
#>     Attrib V50    -0.08787109828364975
#>     Attrib V51    1.3459434590991866
#>     Attrib V52    1.7059675491412107
#>     Attrib V53    0.0207503054079665
#>     Attrib V54    0.5874942963742416
#>     Attrib V55    -0.42982883215919776
#>     Attrib V56    -0.8482519068851737
#>     Attrib V57    -0.0600814430781674
#>     Attrib V58    0.23697867800683825
#>     Attrib V59    -0.36787892541775796
#>     Attrib V6    1.0108674768483028
#>     Attrib V60    -0.09915488605543953
#>     Attrib V7    -0.8660733843636613
#>     Attrib V8    -0.16916768109505378
#>     Attrib V9    1.0172825761710125
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.27547069285017345
#>     Attrib V1    -0.08381240127918739
#>     Attrib V10    0.029022174878272532
#>     Attrib V11    -0.23047826260624546
#>     Attrib V12    -0.12857191160276632
#>     Attrib V13    -0.011286573069080768
#>     Attrib V14    0.060963223895577054
#>     Attrib V15    -0.1155485150718517
#>     Attrib V16    -0.01722360858233232
#>     Attrib V17    -0.05476312663321511
#>     Attrib V18    -0.1018166312450121
#>     Attrib V19    0.16860670944068426
#>     Attrib V2    0.00976038898803164
#>     Attrib V20    -0.07842749217167924
#>     Attrib V21    -0.12596646408040954
#>     Attrib V22    -0.05057040879628399
#>     Attrib V23    -0.048255060657072524
#>     Attrib V24    -0.12823160990551424
#>     Attrib V25    -0.00634555733647083
#>     Attrib V26    -0.035910248145933285
#>     Attrib V27    0.011082014189245997
#>     Attrib V28    -0.08542636561546331
#>     Attrib V29    -0.09574523590862542
#>     Attrib V3    0.048249465225162845
#>     Attrib V30    -0.07704376554608763
#>     Attrib V31    0.2455307215355333
#>     Attrib V32    -0.019681955917735156
#>     Attrib V33    -0.038803322041081695
#>     Attrib V34    0.05174436352869655
#>     Attrib V35    0.10134091174367735
#>     Attrib V36    0.37379935299548983
#>     Attrib V37    0.23127784664545803
#>     Attrib V38    -0.11455090104175879
#>     Attrib V39    -4.958566280223396E-4
#>     Attrib V4    -0.06917518408199975
#>     Attrib V40    0.16271748608736702
#>     Attrib V41    0.026241720753638186
#>     Attrib V42    -0.06879987824882568
#>     Attrib V43    -0.009533961093320442
#>     Attrib V44    0.0047748780719716645
#>     Attrib V45    -0.13761566031263356
#>     Attrib V46    -0.20186223224876315
#>     Attrib V47    -0.009733447596386143
#>     Attrib V48    -0.016809341700571752
#>     Attrib V49    -0.09959539150716487
#>     Attrib V5    -0.019432154065126536
#>     Attrib V50    0.28809438343633537
#>     Attrib V51    -0.02947739496314465
#>     Attrib V52    -0.24724976416532585
#>     Attrib V53    -0.019152771752690638
#>     Attrib V54    -0.20177668452708125
#>     Attrib V55    0.038915706025290354
#>     Attrib V56    0.14649027590457467
#>     Attrib V57    0.08047901426644585
#>     Attrib V58    -0.09602480166663412
#>     Attrib V59    0.08708296988101366
#>     Attrib V6    0.0773884058360458
#>     Attrib V60    0.13284032698371417
#>     Attrib V7    0.2629324851002369
#>     Attrib V8    0.15017636052687253
#>     Attrib V9    -0.12543457802185223
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.37244713925440964
#>     Attrib V1    0.3512913840587706
#>     Attrib V10    0.038350959139992896
#>     Attrib V11    0.3969955838863993
#>     Attrib V12    0.0476553437961639
#>     Attrib V13    -0.27144419163839084
#>     Attrib V14    -0.22746627170517053
#>     Attrib V15    0.1051202347244384
#>     Attrib V16    -0.06933510977381843
#>     Attrib V17    -0.004249721251819402
#>     Attrib V18    0.07815484179684573
#>     Attrib V19    -0.43101721019983946
#>     Attrib V2    0.053255048213363534
#>     Attrib V20    -0.06568269219879935
#>     Attrib V21    0.1899582118734575
#>     Attrib V22    -0.07783315292873345
#>     Attrib V23    -0.18839924698060215
#>     Attrib V24    -0.0013020079797463335
#>     Attrib V25    -0.207231513215492
#>     Attrib V26    -0.039185207398636
#>     Attrib V27    0.030725252820883456
#>     Attrib V28    0.31150205051536406
#>     Attrib V29    0.413234928520099
#>     Attrib V3    -0.15830062997189812
#>     Attrib V30    0.29538355510562914
#>     Attrib V31    -0.546721687634025
#>     Attrib V32    0.1383411768698191
#>     Attrib V33    0.2917869319336291
#>     Attrib V34    -0.06447988622530791
#>     Attrib V35    5.653595872949295E-4
#>     Attrib V36    -0.6338813047321756
#>     Attrib V37    -0.33122466965319025
#>     Attrib V38    0.13905952722921341
#>     Attrib V39    -0.011080253292214794
#>     Attrib V4    0.274447364249189
#>     Attrib V40    -0.41346246814550275
#>     Attrib V41    -0.06981155352680335
#>     Attrib V42    0.17341248135539777
#>     Attrib V43    -0.01997526269017076
#>     Attrib V44    0.14932029934489396
#>     Attrib V45    0.4395828879307457
#>     Attrib V46    0.36717833041329806
#>     Attrib V47    -0.05736619535575049
#>     Attrib V48    0.24660489087581455
#>     Attrib V49    0.21689896751847274
#>     Attrib V5    -0.11717049021689824
#>     Attrib V50    -0.43147203724337635
#>     Attrib V51    0.13123444839150614
#>     Attrib V52    0.5751433759295377
#>     Attrib V53    0.06436285404781417
#>     Attrib V54    0.39212441156819094
#>     Attrib V55    -0.018943560966930124
#>     Attrib V56    -0.36181645673714474
#>     Attrib V57    0.10558987543565947
#>     Attrib V58    0.5235086367691767
#>     Attrib V59    -0.12029949667066328
#>     Attrib V6    -0.03674028419466286
#>     Attrib V60    0.04203431613419095
#>     Attrib V7    -0.6208563670442598
#>     Attrib V8    -0.10118807799641873
#>     Attrib V9    0.42713189355230996
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.200004950072693
#>     Attrib V1    -0.7117665948563549
#>     Attrib V10    0.09222587854697102
#>     Attrib V11    -0.4293473823116487
#>     Attrib V12    0.04452791050342819
#>     Attrib V13    0.24009969197623415
#>     Attrib V14    0.14398837515559465
#>     Attrib V15    -0.24987198832637506
#>     Attrib V16    0.06006439686518411
#>     Attrib V17    -0.4610079770390519
#>     Attrib V18    -0.5060742430953777
#>     Attrib V19    0.14791539865134087
#>     Attrib V2    -0.24263583950009454
#>     Attrib V20    -0.7559419758947575
#>     Attrib V21    -1.1485457434301227
#>     Attrib V22    -1.020452625402092
#>     Attrib V23    -0.9695687574116187
#>     Attrib V24    -0.6171076698965536
#>     Attrib V25    -0.22512792162962786
#>     Attrib V26    0.19566709207311295
#>     Attrib V27    0.3907875551711379
#>     Attrib V28    -0.6040415407362998
#>     Attrib V29    -0.7795237774159154
#>     Attrib V3    -0.037329022959455616
#>     Attrib V30    -0.35032034325567324
#>     Attrib V31    1.5411727332230059
#>     Attrib V32    -0.10842294514600544
#>     Attrib V33    -0.857485263234358
#>     Attrib V34    0.02011773593214581
#>     Attrib V35    -0.07079295798516407
#>     Attrib V36    0.6985715254918343
#>     Attrib V37    0.2005052981728134
#>     Attrib V38    -0.9708053700805512
#>     Attrib V39    -0.48314217265093845
#>     Attrib V4    -0.6508149486227018
#>     Attrib V40    0.4679361099516743
#>     Attrib V41    -0.24800826133541776
#>     Attrib V42    -0.9552819210107837
#>     Attrib V43    -0.4282270182673716
#>     Attrib V44    -0.37562317192305095
#>     Attrib V45    -0.6311328030979423
#>     Attrib V46    -0.6023950910882482
#>     Attrib V47    0.002265467507700436
#>     Attrib V48    -0.011614588927976822
#>     Attrib V49    -0.44081077149802195
#>     Attrib V5    -0.06558492740546688
#>     Attrib V50    0.8868512954563041
#>     Attrib V51    -0.3504341753121951
#>     Attrib V52    -0.6086940350619426
#>     Attrib V53    -0.01909730117057393
#>     Attrib V54    -0.7133308501010849
#>     Attrib V55    0.5334428987573309
#>     Attrib V56    0.21003989057567785
#>     Attrib V57    0.3294723911558654
#>     Attrib V58    -0.7687651997529156
#>     Attrib V59    -0.0031070324660124314
#>     Attrib V6    -0.010508571239762945
#>     Attrib V60    -0.19531100797286002
#>     Attrib V7    0.9968492139310815
#>     Attrib V8    0.7258344197768836
#>     Attrib V9    -0.45991802222082495
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.055501113953344436
#>     Attrib V1    0.21720990987008615
#>     Attrib V10    -0.11613951551715047
#>     Attrib V11    0.18510575709216986
#>     Attrib V12    0.028438722842919678
#>     Attrib V13    -0.1617167852240051
#>     Attrib V14    0.04552980447421932
#>     Attrib V15    0.12984512696653172
#>     Attrib V16    0.02176698017900589
#>     Attrib V17    0.07649039031766014
#>     Attrib V18    0.06961151103462881
#>     Attrib V19    -0.20586406923586734
#>     Attrib V2    0.08099359490364023
#>     Attrib V20    0.09901973108301892
#>     Attrib V21    0.11979405359947645
#>     Attrib V22    -0.06950467544169264
#>     Attrib V23    -0.1637349700477243
#>     Attrib V24    0.02459974417192635
#>     Attrib V25    -0.04311427970873895
#>     Attrib V26    -0.1469946230473091
#>     Attrib V27    -0.09057569056977056
#>     Attrib V28    0.02415810128453073
#>     Attrib V29    0.1197998579165048
#>     Attrib V3    0.045029597963599746
#>     Attrib V30    0.02750450761112365
#>     Attrib V31    -0.32026068356313436
#>     Attrib V32    0.0705416385051352
#>     Attrib V33    0.24748653500277085
#>     Attrib V34    0.03896444509486241
#>     Attrib V35    0.05041752786914297
#>     Attrib V36    -0.28902042089421437
#>     Attrib V37    -0.16154120555542015
#>     Attrib V38    0.10543075276949312
#>     Attrib V39    0.04724249612469566
#>     Attrib V4    0.1630606312654304
#>     Attrib V40    -0.14401441098780302
#>     Attrib V41    -0.038502974815974374
#>     Attrib V42    0.06805234049854654
#>     Attrib V43    0.04746321174241799
#>     Attrib V44    0.021555180838319303
#>     Attrib V45    0.24746778969050107
#>     Attrib V46    0.17205511180058056
#>     Attrib V47    -0.021729293272929176
#>     Attrib V48    0.10553202099139929
#>     Attrib V49    0.08743541628440854
#>     Attrib V5    -0.07490766070598665
#>     Attrib V50    -0.17138892771909198
#>     Attrib V51    0.0593027021811469
#>     Attrib V52    0.32602206491980146
#>     Attrib V53    0.14927666690025207
#>     Attrib V54    0.23376651036577434
#>     Attrib V55    0.1081119942494674
#>     Attrib V56    -0.04079113668522492
#>     Attrib V57    0.19123249692592012
#>     Attrib V58    0.27784005589662175
#>     Attrib V59    0.04596828962404462
#>     Attrib V6    -0.048485130463686354
#>     Attrib V60    0.06720440953342312
#>     Attrib V7    -0.2781526937652777
#>     Attrib V8    -0.09078861243263874
#>     Attrib V9    0.15631250428983717
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    0.14649938800220663
#>     Attrib V1    0.3425635082713585
#>     Attrib V10    -0.13935405451946875
#>     Attrib V11    0.12220391916541984
#>     Attrib V12    -0.028727958107239458
#>     Attrib V13    -0.17347886413485455
#>     Attrib V14    -0.013073785145404531
#>     Attrib V15    0.21649015768400676
#>     Attrib V16    0.09070645492836771
#>     Attrib V17    0.20567768076281465
#>     Attrib V18    0.17048693035115875
#>     Attrib V19    -0.16012203901390518
#>     Attrib V2    0.10888362054160243
#>     Attrib V20    0.1697263497586764
#>     Attrib V21    0.303725059061323
#>     Attrib V22    0.029496904395879982
#>     Attrib V23    -0.0224119598500558
#>     Attrib V24    0.05537999350188047
#>     Attrib V25    -0.06172518291811797
#>     Attrib V26    -0.16302868695724268
#>     Attrib V27    -0.20256207061067172
#>     Attrib V28    0.053226467433109485
#>     Attrib V29    0.07305555233176152
#>     Attrib V3    -0.03770159376066607
#>     Attrib V30    0.07875697909977075
#>     Attrib V31    -0.5151428710475411
#>     Attrib V32    0.016629962191138513
#>     Attrib V33    0.29301398121668293
#>     Attrib V34    0.008256683130300816
#>     Attrib V35    0.04226744186199841
#>     Attrib V36    -0.431133227993307
#>     Attrib V37    -0.26448039480773566
#>     Attrib V38    0.1500562695546059
#>     Attrib V39    0.12665871501250459
#>     Attrib V4    0.27429862893868895
#>     Attrib V40    -0.20016776233602795
#>     Attrib V41    -0.016009993176968544
#>     Attrib V42    0.26893507634646296
#>     Attrib V43    0.04125153115046497
#>     Attrib V44    0.05726544834597845
#>     Attrib V45    0.27296922724191064
#>     Attrib V46    0.1912307323468344
#>     Attrib V47    -0.1251067310263708
#>     Attrib V48    0.10337734907050806
#>     Attrib V49    0.10340370447279212
#>     Attrib V5    -0.13491842637588813
#>     Attrib V50    -0.34806777708015213
#>     Attrib V51    0.017047285291031954
#>     Attrib V52    0.34791922932615355
#>     Attrib V53    0.1821288039775875
#>     Attrib V54    0.33496361936135743
#>     Attrib V55    -0.03459855699585359
#>     Attrib V56    -0.03834215232695889
#>     Attrib V57    0.11118682716300243
#>     Attrib V58    0.43256445516978875
#>     Attrib V59    0.13919744799621603
#>     Attrib V6    -0.10061822937311651
#>     Attrib V60    0.148155277884571
#>     Attrib V7    -0.4388810071833146
#>     Attrib V8    -0.21066382641315093
#>     Attrib V9    0.13240799792789532
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.1352523338564017
#>     Attrib V1    0.7149502261771246
#>     Attrib V10    -0.618872589965086
#>     Attrib V11    -0.06718594692195419
#>     Attrib V12    -0.3721659047486864
#>     Attrib V13    -0.42869544683899974
#>     Attrib V14    0.20198423005925129
#>     Attrib V15    0.6694761596459807
#>     Attrib V16    0.5416572382367383
#>     Attrib V17    0.6033420225360239
#>     Attrib V18    0.45456026810379974
#>     Attrib V19    0.021468290212667853
#>     Attrib V2    0.3267618091912442
#>     Attrib V20    0.6498486066356057
#>     Attrib V21    0.5227259833352915
#>     Attrib V22    0.041850130120858746
#>     Attrib V23    -0.11159947536855444
#>     Attrib V24    -0.013610556628908678
#>     Attrib V25    -0.4764019018595423
#>     Attrib V26    -0.8127903986651431
#>     Attrib V27    -0.8229839608102313
#>     Attrib V28    -0.30977885163842295
#>     Attrib V29    -0.1486314266363479
#>     Attrib V3    0.07701345715893798
#>     Attrib V30    -0.19015022959743008
#>     Attrib V31    -1.1967149171960703
#>     Attrib V32    -0.001961312647683816
#>     Attrib V33    0.7497049826821657
#>     Attrib V34    0.2600867468337442
#>     Attrib V35    0.0922411508435143
#>     Attrib V36    -0.5952288591387607
#>     Attrib V37    -0.6088793297163616
#>     Attrib V38    0.41534311519704725
#>     Attrib V39    0.2331792447386429
#>     Attrib V4    0.4546449467772662
#>     Attrib V40    -0.3441138489479012
#>     Attrib V41    -0.12263392107477587
#>     Attrib V42    0.5559166278374629
#>     Attrib V43    0.25738775885273735
#>     Attrib V44    0.2567786352268564
#>     Attrib V45    0.476234611693388
#>     Attrib V46    0.28068055691904253
#>     Attrib V47    -0.3284301791227856
#>     Attrib V48    -0.03287912333265319
#>     Attrib V49    0.11091647923424806
#>     Attrib V5    -0.19530263135547168
#>     Attrib V50    -0.5753012433588083
#>     Attrib V51    -0.10995117553092916
#>     Attrib V52    0.46913040165527137
#>     Attrib V53    0.42316578167397534
#>     Attrib V54    0.6839554944398594
#>     Attrib V55    0.13633521495674486
#>     Attrib V56    0.04955289178654185
#>     Attrib V57    0.2357873030610793
#>     Attrib V58    0.7298670107302617
#>     Attrib V59    0.29577450613538675
#>     Attrib V6    -0.29246621975622045
#>     Attrib V60    0.283104872422049
#>     Attrib V7    -0.5654490735526111
#>     Attrib V8    -0.34831978841279027
#>     Attrib V9    0.13115130830504476
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.0679561386934803
#>     Attrib V1    0.21561439748184932
#>     Attrib V10    -0.0979105546660353
#>     Attrib V11    0.07301434727491536
#>     Attrib V12    -0.01745947546474662
#>     Attrib V13    -0.1276203304161291
#>     Attrib V14    0.07677899656560364
#>     Attrib V15    0.11448409426040883
#>     Attrib V16    0.07445842972103728
#>     Attrib V17    0.035705961358606104
#>     Attrib V18    0.08712464804478484
#>     Attrib V19    -0.13060363317535498
#>     Attrib V2    0.0814386389157057
#>     Attrib V20    0.060775923659840345
#>     Attrib V21    0.0634256489125143
#>     Attrib V22    -0.10294406496850873
#>     Attrib V23    -0.07112843748459742
#>     Attrib V24    -0.025617751455011592
#>     Attrib V25    -0.11869499239127033
#>     Attrib V26    -0.12249914489323567
#>     Attrib V27    -0.09876477470414922
#>     Attrib V28    -0.002302289723206037
#>     Attrib V29    0.007978559026030637
#>     Attrib V3    0.09431193747351276
#>     Attrib V30    0.03361162977136298
#>     Attrib V31    -0.2419331922902138
#>     Attrib V32    0.013676160178280513
#>     Attrib V33    0.19158898166023267
#>     Attrib V34    0.07456806346412626
#>     Attrib V35    0.06417310206880743
#>     Attrib V36    -0.07253312772957712
#>     Attrib V37    -0.08339535408742192
#>     Attrib V38    0.039439327100835676
#>     Attrib V39    0.05639003847790588
#>     Attrib V4    0.13923106000752403
#>     Attrib V40    -0.09276309361287804
#>     Attrib V41    -0.06528458199438808
#>     Attrib V42    0.0764256202402571
#>     Attrib V43    -0.04242555474905658
#>     Attrib V44    0.07548604144128292
#>     Attrib V45    0.17011303263983962
#>     Attrib V46    0.10667794781542861
#>     Attrib V47    -0.03145802918072138
#>     Attrib V48    0.03273883614073634
#>     Attrib V49    0.10289516316434053
#>     Attrib V5    0.011957075727180204
#>     Attrib V50    -0.09596467695856443
#>     Attrib V51    0.051677733509100834
#>     Attrib V52    0.19350335258434231
#>     Attrib V53    0.14509935241716843
#>     Attrib V54    0.11979236473504815
#>     Attrib V55    0.05515965925481463
#>     Attrib V56    0.006907415737319325
#>     Attrib V57    0.16628132530957598
#>     Attrib V58    0.2627339208009971
#>     Attrib V59    0.06747775867015078
#>     Attrib V6    0.016574499460022166
#>     Attrib V60    0.025309924630415856
#>     Attrib V7    -0.10611095194976286
#>     Attrib V8    -0.001310898522286531
#>     Attrib V9    0.13206472669421448
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
