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
#>     Threshold    -0.24986793262079868
#>     Node 2    2.2358216214420588
#>     Node 3    1.3176359585208572
#>     Node 4    0.5710791444190637
#>     Node 5    -1.4623520644644445
#>     Node 6    2.2063141764716723
#>     Node 7    3.2456393187415853
#>     Node 8    1.137410582672104
#>     Node 9    3.0731975021707543
#>     Node 10    -2.7424716395522775
#>     Node 11    1.0867570756756026
#>     Node 12    1.9356951042048811
#>     Node 13    0.8179619892413219
#>     Node 14    1.7860741822270685
#>     Node 15    -2.6374884409119552
#>     Node 16    0.843330409859174
#>     Node 17    0.7349984422795433
#>     Node 18    0.37958462885983935
#>     Node 19    1.9165581576511856
#>     Node 20    1.603108124067357
#>     Node 21    -1.7328242722968605
#>     Node 22    1.8330867089586873
#>     Node 23    1.8932228617299849
#>     Node 24    -0.928339360296322
#>     Node 25    3.6358171821869223
#>     Node 26    0.5230605307214664
#>     Node 27    1.9070158291210788
#>     Node 28    -4.473898946272912
#>     Node 29    1.221076868664849
#>     Node 30    0.31089948891125796
#>     Node 31    2.0443209303220935
#>     Node 32    1.2587970913548705
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.27626373051342434
#>     Node 2    -2.2639631460001644
#>     Node 3    -1.29547532962461
#>     Node 4    -0.5347443118929603
#>     Node 5    1.4722695133126218
#>     Node 6    -2.172118246702101
#>     Node 7    -3.2577003513883382
#>     Node 8    -1.1672963021394478
#>     Node 9    -3.0959385136569373
#>     Node 10    2.6848957630816184
#>     Node 11    -1.0477536299351395
#>     Node 12    -1.9922124480012562
#>     Node 13    -0.7665463293005487
#>     Node 14    -1.7201336712658624
#>     Node 15    2.6340249723075746
#>     Node 16    -0.8601485492696316
#>     Node 17    -0.7045870017483712
#>     Node 18    -0.3489806169444569
#>     Node 19    -1.9177195778864806
#>     Node 20    -1.581616403046731
#>     Node 21    1.777029965867125
#>     Node 22    -1.8778795635709717
#>     Node 23    -1.92833784285674
#>     Node 24    0.9094141227871471
#>     Node 25    -3.651508806426982
#>     Node 26    -0.6159382782011813
#>     Node 27    -1.9427356875815172
#>     Node 28    4.455558138298233
#>     Node 29    -1.249083132628603
#>     Node 30    -0.24573829188307855
#>     Node 31    -1.979379061612814
#>     Node 32    -1.265753238641589
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.251526336499443
#>     Attrib V1    0.5565219479667662
#>     Attrib V10    -0.1990369570490547
#>     Attrib V11    -0.48825895986920964
#>     Attrib V12    -0.02766586908682062
#>     Attrib V13    -0.34619637644654716
#>     Attrib V14    0.33428173373562825
#>     Attrib V15    0.41409586338882465
#>     Attrib V16    0.04335366281283644
#>     Attrib V17    0.11928620206368803
#>     Attrib V18    0.11279988711696444
#>     Attrib V19    -0.1846576272065785
#>     Attrib V2    0.15898535240875034
#>     Attrib V20    0.6116185651879447
#>     Attrib V21    0.9368464585653443
#>     Attrib V22    0.44319672756629674
#>     Attrib V23    -0.05164612629830283
#>     Attrib V24    -2.906659992523037E-4
#>     Attrib V25    -0.3418904296949327
#>     Attrib V26    -1.3389543854608745
#>     Attrib V27    -1.3971735711810267
#>     Attrib V28    -0.004405019032837749
#>     Attrib V29    0.17646461383262696
#>     Attrib V3    0.04582402094989099
#>     Attrib V30    0.11975157001398182
#>     Attrib V31    -1.1580483117294402
#>     Attrib V32    0.1341550462594976
#>     Attrib V33    0.6467713684411254
#>     Attrib V34    -0.5980353949966475
#>     Attrib V35    -0.46140261963912466
#>     Attrib V36    -0.869524933342745
#>     Attrib V37    -1.148480635737979
#>     Attrib V38    0.1476976207261351
#>     Attrib V39    0.42403329018282154
#>     Attrib V4    0.5817453267292916
#>     Attrib V40    -0.2570018859281587
#>     Attrib V41    -0.10784617424973929
#>     Attrib V42    0.5088819748792925
#>     Attrib V43    0.5492197493619526
#>     Attrib V44    0.49232583204623065
#>     Attrib V45    0.16078438824067903
#>     Attrib V46    0.024938370332500646
#>     Attrib V47    -0.31468060904799083
#>     Attrib V48    -0.09524374825347098
#>     Attrib V49    0.416224786202531
#>     Attrib V5    -0.22051434971091194
#>     Attrib V50    -0.5521437033534807
#>     Attrib V51    -0.06684121150092312
#>     Attrib V52    0.035635297313571665
#>     Attrib V53    0.7856818706361974
#>     Attrib V54    0.3855954085338829
#>     Attrib V55    -0.5706460647775257
#>     Attrib V56    0.12167824023277977
#>     Attrib V57    0.4882854632334229
#>     Attrib V58    0.5427099541263432
#>     Attrib V59    0.8546170903858025
#>     Attrib V6    -0.4838698538758549
#>     Attrib V60    0.3662346527906214
#>     Attrib V7    -0.07199242392573205
#>     Attrib V8    -0.08875371172341473
#>     Attrib V9    0.2848106385616326
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.19122777411881087
#>     Attrib V1    0.39239141184967874
#>     Attrib V10    -0.09291857726862078
#>     Attrib V11    -0.244079489535376
#>     Attrib V12    0.15919852470177642
#>     Attrib V13    -0.13969403547348747
#>     Attrib V14    0.1983976906300719
#>     Attrib V15    0.27706912382658827
#>     Attrib V16    -0.04941799304001559
#>     Attrib V17    0.015172351678188893
#>     Attrib V18    0.0025709754665799367
#>     Attrib V19    -0.1725787273727755
#>     Attrib V2    0.18663235818310478
#>     Attrib V20    0.2210368653392012
#>     Attrib V21    0.3869988081714411
#>     Attrib V22    0.16247882718841591
#>     Attrib V23    -0.17325365464584722
#>     Attrib V24    -0.06991299392661804
#>     Attrib V25    -0.16766544733651284
#>     Attrib V26    -0.7612104781619727
#>     Attrib V27    -0.8246070176433221
#>     Attrib V28    -0.1817593936876943
#>     Attrib V29    -0.22290675436472393
#>     Attrib V3    0.0754837538408904
#>     Attrib V30    0.030802812664005468
#>     Attrib V31    -0.5553823102121186
#>     Attrib V32    0.09655886059698901
#>     Attrib V33    0.4190673886389239
#>     Attrib V34    -0.2757633345067756
#>     Attrib V35    -0.16393926738766215
#>     Attrib V36    -0.5074844729000981
#>     Attrib V37    -0.6893277732020967
#>     Attrib V38    -0.040359431858914
#>     Attrib V39    0.20238324058873852
#>     Attrib V4    0.34393458115374675
#>     Attrib V40    -0.1391964234498542
#>     Attrib V41    -0.07392401330782432
#>     Attrib V42    0.1839773341220567
#>     Attrib V43    0.20124112923557774
#>     Attrib V44    0.18627471424667735
#>     Attrib V45    0.02478877687118393
#>     Attrib V46    -0.04120004687955283
#>     Attrib V47    -0.1675938635663177
#>     Attrib V48    -0.050064843534716075
#>     Attrib V49    0.18254060819246135
#>     Attrib V5    -0.1820864789721194
#>     Attrib V50    -0.34668742951974785
#>     Attrib V51    -0.0679064860066169
#>     Attrib V52    0.030924118900020628
#>     Attrib V53    0.4391388527223069
#>     Attrib V54    0.37148095317022206
#>     Attrib V55    -0.21342842696098174
#>     Attrib V56    0.09304862131044261
#>     Attrib V57    0.4495681364614728
#>     Attrib V58    0.37149989893905666
#>     Attrib V59    0.5968107183787013
#>     Attrib V6    -0.23768820621484243
#>     Attrib V60    0.2849543697947305
#>     Attrib V7    -0.04952185226886155
#>     Attrib V8    -0.0867049061741012
#>     Attrib V9    0.1534471638932111
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.06586431312994806
#>     Attrib V1    0.20194337877468763
#>     Attrib V10    0.030212342782376125
#>     Attrib V11    -0.03188243655784418
#>     Attrib V12    0.09821104902413329
#>     Attrib V13    -0.07021352204923983
#>     Attrib V14    0.08632386257226986
#>     Attrib V15    0.11019386820701782
#>     Attrib V16    -0.0734669198521997
#>     Attrib V17    -0.04844371032345788
#>     Attrib V18    -0.05633721493159782
#>     Attrib V19    -0.16381152118463208
#>     Attrib V2    0.11997656138829157
#>     Attrib V20    0.053086062312740434
#>     Attrib V21    0.11538353471308332
#>     Attrib V22    -0.032287984229434956
#>     Attrib V23    -0.09342837824869335
#>     Attrib V24    -0.10373564132245833
#>     Attrib V25    -0.1472762874147509
#>     Attrib V26    -0.2572784503226507
#>     Attrib V27    -0.19630848624142308
#>     Attrib V28    0.13230478583733948
#>     Attrib V29    0.030157252889913194
#>     Attrib V3    0.14096668553219852
#>     Attrib V30    0.03583451108904637
#>     Attrib V31    -0.22355059773031763
#>     Attrib V32    -0.0642659992809924
#>     Attrib V33    0.08415917534613303
#>     Attrib V34    -0.04321893642641229
#>     Attrib V35    0.07904623633842024
#>     Attrib V36    -0.12023237749383987
#>     Attrib V37    -0.14448496490236967
#>     Attrib V38    0.04260826103985423
#>     Attrib V39    0.13791642353695527
#>     Attrib V4    0.17271384885674537
#>     Attrib V40    -0.019196571720259976
#>     Attrib V41    -0.06280681895124567
#>     Attrib V42    -0.01769534857029446
#>     Attrib V43    -0.006070972047386297
#>     Attrib V44    0.0899532309057438
#>     Attrib V45    0.1153527033965654
#>     Attrib V46    0.04657864741539841
#>     Attrib V47    0.01145798081054422
#>     Attrib V48    0.10210714819748076
#>     Attrib V49    0.1623727250981781
#>     Attrib V5    -0.01153053397211297
#>     Attrib V50    -0.06960393095547442
#>     Attrib V51    0.11700582990856245
#>     Attrib V52    0.07170759170311672
#>     Attrib V53    0.1800228794986424
#>     Attrib V54    0.08331588678224183
#>     Attrib V55    -0.03198181963135215
#>     Attrib V56    0.09732403476932201
#>     Attrib V57    0.2871492964599245
#>     Attrib V58    0.1298170232486099
#>     Attrib V59    0.2414100200165634
#>     Attrib V6    -0.14838377567577943
#>     Attrib V60    0.16456950446819352
#>     Attrib V7    -0.14460339299606265
#>     Attrib V8    -0.11817437510791859
#>     Attrib V9    0.15524095866210036
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.6464703595880245
#>     Attrib V1    0.03328208889509391
#>     Attrib V10    0.09458204924292561
#>     Attrib V11    0.13748203715426993
#>     Attrib V12    -0.6042503818331258
#>     Attrib V13    0.07120832055479384
#>     Attrib V14    0.4313758418772618
#>     Attrib V15    0.36973875697000574
#>     Attrib V16    0.5231745295141931
#>     Attrib V17    0.5147328287103488
#>     Attrib V18    0.13117135297638882
#>     Attrib V19    0.5447437182970335
#>     Attrib V2    0.1642058385540638
#>     Attrib V20    0.11413170717869531
#>     Attrib V21    -0.1249063412713163
#>     Attrib V22    -0.21116988281637436
#>     Attrib V23    -0.1780540166785592
#>     Attrib V24    -0.17970741894903677
#>     Attrib V25    0.18554894492733523
#>     Attrib V26    0.6931742251979369
#>     Attrib V27    0.6233351225690442
#>     Attrib V28    -0.2694868119837828
#>     Attrib V29    -0.03328533657049574
#>     Attrib V3    0.3312808364028414
#>     Attrib V30    0.0911301774265734
#>     Attrib V31    0.7142920561829366
#>     Attrib V32    -0.04198504007599949
#>     Attrib V33    -0.573097465753702
#>     Attrib V34    -0.13909746753465577
#>     Attrib V35    -0.32679094523137975
#>     Attrib V36    0.4601093901951085
#>     Attrib V37    0.4677835695301982
#>     Attrib V38    -0.020487892598976067
#>     Attrib V39    -0.3051746789743021
#>     Attrib V4    0.026048710843016618
#>     Attrib V40    -0.3189385717783674
#>     Attrib V41    -0.7383867765493866
#>     Attrib V42    -0.43578488301079626
#>     Attrib V43    -0.5377446623712109
#>     Attrib V44    -0.28713967185180955
#>     Attrib V45    -0.3739566285610044
#>     Attrib V46    -0.464662376720226
#>     Attrib V47    -0.16148295800502296
#>     Attrib V48    -0.18086481398081866
#>     Attrib V49    -0.45630042503954144
#>     Attrib V5    0.4256472839438715
#>     Attrib V50    0.5246082308038944
#>     Attrib V51    -0.09655257449983883
#>     Attrib V52    0.11950232510150488
#>     Attrib V53    -0.3083160746213442
#>     Attrib V54    0.04991996793848562
#>     Attrib V55    0.6193586332546529
#>     Attrib V56    0.3035251672157258
#>     Attrib V57    0.1231463150186158
#>     Attrib V58    -0.23963832386808553
#>     Attrib V59    -0.2463890038864761
#>     Attrib V6    0.24805049772616194
#>     Attrib V60    0.13021430988323462
#>     Attrib V7    0.30916989745184265
#>     Attrib V8    0.30891521199084626
#>     Attrib V9    -0.2563828543161329
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.2114917648386555
#>     Attrib V1    0.18430714404419285
#>     Attrib V10    -0.02874576688695678
#>     Attrib V11    -0.30553164804883026
#>     Attrib V12    0.2878848973640343
#>     Attrib V13    -0.2817142093350597
#>     Attrib V14    0.01048153333794808
#>     Attrib V15    0.19727945554754717
#>     Attrib V16    -0.02493015375687969
#>     Attrib V17    0.04557821353714894
#>     Attrib V18    0.1938373083440451
#>     Attrib V19    0.0011914724023097507
#>     Attrib V2    6.224072514145568E-5
#>     Attrib V20    0.47708575901146855
#>     Attrib V21    0.7742046729849592
#>     Attrib V22    0.49907118744158946
#>     Attrib V23    0.08894335845522944
#>     Attrib V24    0.3589787373813097
#>     Attrib V25    0.24247968009706627
#>     Attrib V26    -0.867414562507055
#>     Attrib V27    -1.3426873266445756
#>     Attrib V28    -0.3842018284262943
#>     Attrib V29    -0.5654324597326319
#>     Attrib V3    -0.1432414244199729
#>     Attrib V30    -0.1492394161632267
#>     Attrib V31    -1.0261530960284986
#>     Attrib V32    0.3064621695996101
#>     Attrib V33    0.8772058874021345
#>     Attrib V34    -0.41678031326279524
#>     Attrib V35    -0.3125411805681489
#>     Attrib V36    -0.9364955556475417
#>     Attrib V37    -1.4967854882983065
#>     Attrib V38    -0.19332919715133454
#>     Attrib V39    0.19522329264342753
#>     Attrib V4    0.5771811471726949
#>     Attrib V40    -0.36689351866951614
#>     Attrib V41    -0.15183748815733455
#>     Attrib V42    0.46610743559469875
#>     Attrib V43    0.5255543726535893
#>     Attrib V44    0.4335134937628633
#>     Attrib V45    0.03461099051305409
#>     Attrib V46    -0.02233495961784587
#>     Attrib V47    -0.29022012404419717
#>     Attrib V48    -0.04031977611067458
#>     Attrib V49    0.5414763377959387
#>     Attrib V5    -0.2628448226754679
#>     Attrib V50    -0.4975649576266733
#>     Attrib V51    0.09215436777477257
#>     Attrib V52    -0.007937908739507801
#>     Attrib V53    0.8294874643650185
#>     Attrib V54    0.6611831242674588
#>     Attrib V55    -0.48774329422316365
#>     Attrib V56    0.1285682138066949
#>     Attrib V57    0.327932748030788
#>     Attrib V58    0.6363289007717695
#>     Attrib V59    0.7772666055494245
#>     Attrib V6    -0.42855894231778763
#>     Attrib V60    0.521962408763011
#>     Attrib V7    0.10146937391685366
#>     Attrib V8    0.06702697380544112
#>     Attrib V9    0.5500103001034897
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.8203924041492482
#>     Attrib V1    0.954981203982159
#>     Attrib V10    1.3069401920087826
#>     Attrib V11    1.028963110467697
#>     Attrib V12    1.6189976715679402
#>     Attrib V13    0.07395691816311654
#>     Attrib V14    -0.3149898923748218
#>     Attrib V15    -0.2873634638595516
#>     Attrib V16    -0.912108019662889
#>     Attrib V17    -0.8521350299603919
#>     Attrib V18    -0.3453192652256875
#>     Attrib V19    -1.0674004904496923
#>     Attrib V2    0.30697863004560566
#>     Attrib V20    -0.4886085642421003
#>     Attrib V21    -0.2587139328038573
#>     Attrib V22    -0.109281232332809
#>     Attrib V23    -0.009903169165881784
#>     Attrib V24    -0.26909704661352657
#>     Attrib V25    -0.402565884682432
#>     Attrib V26    0.07924386260407147
#>     Attrib V27    1.0939283928976649
#>     Attrib V28    1.9753909572452804
#>     Attrib V29    1.129689518860774
#>     Attrib V3    0.3678744974568626
#>     Attrib V30    0.4231291205464906
#>     Attrib V31    -0.858171462757832
#>     Attrib V32    -0.6913363942123254
#>     Attrib V33    -0.3383651539577643
#>     Attrib V34    -0.07514462511039409
#>     Attrib V35    0.869553459967361
#>     Attrib V36    -0.525697692139723
#>     Attrib V37    0.07909055201159221
#>     Attrib V38    -0.013038903301522606
#>     Attrib V39    0.2967157678868267
#>     Attrib V4    0.23102719934949523
#>     Attrib V40    0.39032814381841835
#>     Attrib V41    0.9323163432783835
#>     Attrib V42    -0.2467075037975519
#>     Attrib V43    -0.43845724720931195
#>     Attrib V44    -0.3916622082522803
#>     Attrib V45    -0.03999220128342174
#>     Attrib V46    0.7039560805254224
#>     Attrib V47    0.6954694289001859
#>     Attrib V48    0.7044774038649353
#>     Attrib V49    0.5824941886353476
#>     Attrib V5    0.1907008619710179
#>     Attrib V50    -0.803124841764862
#>     Attrib V51    0.9057572848791096
#>     Attrib V52    0.23456311803299265
#>     Attrib V53    0.1443589080197687
#>     Attrib V54    -0.1306933371810685
#>     Attrib V55    -0.8344665008762158
#>     Attrib V56    -0.4539589409327192
#>     Attrib V57    -0.12338873013692483
#>     Attrib V58    0.011278499596806733
#>     Attrib V59    0.30981994138678737
#>     Attrib V6    0.579286344202723
#>     Attrib V60    0.48085748903024983
#>     Attrib V7    -0.27968507590142966
#>     Attrib V8    -0.7416129334345168
#>     Attrib V9    1.0826108472449487
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.26479328524554874
#>     Attrib V1    0.32392558290527573
#>     Attrib V10    0.14229612772051045
#>     Attrib V11    -0.07127705779843899
#>     Attrib V12    0.2314710724156236
#>     Attrib V13    -0.22516868754847255
#>     Attrib V14    -0.05302719914754082
#>     Attrib V15    0.07775867110197443
#>     Attrib V16    -0.06226093152243974
#>     Attrib V17    0.003191015293201845
#>     Attrib V18    0.06340974045087425
#>     Attrib V19    -0.13364405780555563
#>     Attrib V2    0.10771469292467485
#>     Attrib V20    0.21476545220991466
#>     Attrib V21    0.3548071330678738
#>     Attrib V22    0.2291698952667548
#>     Attrib V23    0.0068582973911308215
#>     Attrib V24    0.018277276121668053
#>     Attrib V25    -0.12838029880699542
#>     Attrib V26    -0.6412005576525802
#>     Attrib V27    -0.5981532919883639
#>     Attrib V28    0.2446296245756854
#>     Attrib V29    0.09266746277265539
#>     Attrib V3    -3.518231109626205E-4
#>     Attrib V30    0.10838792466934079
#>     Attrib V31    -0.6671928775506073
#>     Attrib V32    -0.021405937929748278
#>     Attrib V33    0.3475495903986516
#>     Attrib V34    -0.22449052416073564
#>     Attrib V35    0.015799138089172278
#>     Attrib V36    -0.43425358698956346
#>     Attrib V37    -0.6045007457156717
#>     Attrib V38    0.08745043538529011
#>     Attrib V39    0.2355542519811944
#>     Attrib V4    0.37264028885165956
#>     Attrib V40    -0.136635038695692
#>     Attrib V41    -0.05356984098786075
#>     Attrib V42    -0.039539386279851076
#>     Attrib V43    0.09988637570498944
#>     Attrib V44    0.2744196595537895
#>     Attrib V45    0.18742658579539337
#>     Attrib V46    0.17842962243617677
#>     Attrib V47    0.05170382668141156
#>     Attrib V48    0.2445895545078858
#>     Attrib V49    0.43229312089306415
#>     Attrib V5    -0.17809889131826107
#>     Attrib V50    -0.49652562099913045
#>     Attrib V51    0.12744302811506178
#>     Attrib V52    0.049228465232021165
#>     Attrib V53    0.3350153879853238
#>     Attrib V54    0.18256818169856018
#>     Attrib V55    -0.45309225534162534
#>     Attrib V56    -0.01118545941713545
#>     Attrib V57    0.29618609911715893
#>     Attrib V58    0.21142803914112168
#>     Attrib V59    0.44428921942729
#>     Attrib V6    -0.2664106674942824
#>     Attrib V60    0.29166500754685964
#>     Attrib V7    -0.2087693336635769
#>     Attrib V8    -0.2677192966542859
#>     Attrib V9    0.34914350868495037
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.3858511815992092
#>     Attrib V1    -0.20259072325988764
#>     Attrib V10    1.3605244876770235
#>     Attrib V11    1.0499467949774117
#>     Attrib V12    1.9261864154080244
#>     Attrib V13    0.2521762195488591
#>     Attrib V14    -1.054641924729588
#>     Attrib V15    -0.8022662250036434
#>     Attrib V16    -0.8323981885092118
#>     Attrib V17    -0.37179701679271476
#>     Attrib V18    0.33477911475684674
#>     Attrib V19    -0.0938700353142373
#>     Attrib V2    -0.15066110416132755
#>     Attrib V20    -0.2786727054698841
#>     Attrib V21    -0.5401082174211829
#>     Attrib V22    0.3564995035620277
#>     Attrib V23    0.9259503198795712
#>     Attrib V24    0.9175253458219803
#>     Attrib V25    1.183499711329616
#>     Attrib V26    0.8296793344642487
#>     Attrib V27    0.8741285590312606
#>     Attrib V28    1.6118858015294275
#>     Attrib V29    -0.011704536904704136
#>     Attrib V3    -0.10639653782710104
#>     Attrib V30    -0.017060122409002614
#>     Attrib V31    -0.7242122817464008
#>     Attrib V32    -0.35099378070191495
#>     Attrib V33    -7.703177072277538E-4
#>     Attrib V34    0.3376337578147611
#>     Attrib V35    1.2811153469764704
#>     Attrib V36    -0.43191847417474183
#>     Attrib V37    -0.4547739576632582
#>     Attrib V38    -0.26832251553454567
#>     Attrib V39    0.2946783693579066
#>     Attrib V4    0.1009097271826969
#>     Attrib V40    0.4680046745199089
#>     Attrib V41    0.8767667957848433
#>     Attrib V42    -0.49112834768345637
#>     Attrib V43    -0.5526314395599271
#>     Attrib V44    -0.22952839198199096
#>     Attrib V45    0.013809280557874393
#>     Attrib V46    0.8165351327500385
#>     Attrib V47    1.08103448077006
#>     Attrib V48    1.0731351164015612
#>     Attrib V49    1.1558862742488998
#>     Attrib V5    0.28045078451073335
#>     Attrib V50    -0.8281795669660024
#>     Attrib V51    1.3870731976810144
#>     Attrib V52    0.6055476374076716
#>     Attrib V53    0.3527885569092567
#>     Attrib V54    0.29346470923150164
#>     Attrib V55    -0.533918252009182
#>     Attrib V56    -0.1396103731820594
#>     Attrib V57    -0.7359980213965847
#>     Attrib V58    0.06661579927575234
#>     Attrib V59    0.1535231633276377
#>     Attrib V6    0.4180114774949656
#>     Attrib V60    0.4640513506541572
#>     Attrib V7    -0.3637161336208896
#>     Attrib V8    -0.7770759994553962
#>     Attrib V9    1.1611849232478706
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.522364103195369
#>     Attrib V1    -0.0960336066002079
#>     Attrib V10    -1.3116911623246978
#>     Attrib V11    -0.7234693668537511
#>     Attrib V12    -1.3044973376077984
#>     Attrib V13    -0.09275497845968722
#>     Attrib V14    0.5044501206834769
#>     Attrib V15    0.28362012689195254
#>     Attrib V16    0.5918106151865563
#>     Attrib V17    0.2783513992536676
#>     Attrib V18    -0.22432412379799452
#>     Attrib V19    0.31429947523147
#>     Attrib V2    -0.008445998170306836
#>     Attrib V20    0.025323624360944465
#>     Attrib V21    -0.13514261235785394
#>     Attrib V22    -0.7547307528626909
#>     Attrib V23    -0.8331425665688819
#>     Attrib V24    -0.22191303848737573
#>     Attrib V25    0.033407456149292976
#>     Attrib V26    0.11282556939241814
#>     Attrib V27    -0.7747756115606818
#>     Attrib V28    -2.2430507677845837
#>     Attrib V29    -1.2439727920083397
#>     Attrib V3    -0.05703756586431198
#>     Attrib V30    -0.6025756469862877
#>     Attrib V31    0.9787646644818996
#>     Attrib V32    0.40523322212087604
#>     Attrib V33    0.1805797547651505
#>     Attrib V34    0.4259869678952148
#>     Attrib V35    -0.5300237606203955
#>     Attrib V36    0.8196844416615386
#>     Attrib V37    0.5118579213004364
#>     Attrib V38    0.1745330312981685
#>     Attrib V39    -0.3747903973599823
#>     Attrib V4    -0.4280535476701288
#>     Attrib V40    -0.28808043106486897
#>     Attrib V41    -0.8160939112036288
#>     Attrib V42    -0.020352992969059812
#>     Attrib V43    0.06941332238323336
#>     Attrib V44    -0.15645584608161284
#>     Attrib V45    -0.24753005133901224
#>     Attrib V46    -0.9041898645018456
#>     Attrib V47    -0.8237895297478928
#>     Attrib V48    -0.6751239975616489
#>     Attrib V49    -1.0635972414334025
#>     Attrib V5    -0.25759328361903194
#>     Attrib V50    0.883481097149368
#>     Attrib V51    -1.048641198418859
#>     Attrib V52    -0.43744459505286143
#>     Attrib V53    -0.13487368749390746
#>     Attrib V54    0.23058770571583243
#>     Attrib V55    0.9275250228861419
#>     Attrib V56    0.33266581846963794
#>     Attrib V57    0.6275877450953975
#>     Attrib V58    -0.1970156613132803
#>     Attrib V59    -0.09889706456923558
#>     Attrib V6    -0.20551468575874166
#>     Attrib V60    -0.31193647102219635
#>     Attrib V7    0.4852785203392852
#>     Attrib V8    0.41617599886056594
#>     Attrib V9    -1.2897501477763331
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.11842936175164157
#>     Attrib V1    0.3048020471960873
#>     Attrib V10    -0.02787588513454741
#>     Attrib V11    -0.17001843188715263
#>     Attrib V12    0.13221143580723707
#>     Attrib V13    -0.2825623979954875
#>     Attrib V14    0.03145669951174134
#>     Attrib V15    0.1243461386477612
#>     Attrib V16    -0.03712291193915016
#>     Attrib V17    0.07356061800502842
#>     Attrib V18    0.0928901638208069
#>     Attrib V19    -0.16444093386638275
#>     Attrib V2    0.08597991354393819
#>     Attrib V20    0.2718666847517027
#>     Attrib V21    0.3396673946107904
#>     Attrib V22    0.1569245233959849
#>     Attrib V23    -0.0734584018373108
#>     Attrib V24    -0.07319073755286733
#>     Attrib V25    -0.16763348518736135
#>     Attrib V26    -0.7057757075306537
#>     Attrib V27    -0.6302774838772771
#>     Attrib V28    0.04845419173934557
#>     Attrib V29    -0.039108443419037804
#>     Attrib V3    -0.013304153158202272
#>     Attrib V30    0.08224315420303574
#>     Attrib V31    -0.577820628869061
#>     Attrib V32    -0.03428175963698835
#>     Attrib V33    0.284413426700177
#>     Attrib V34    -0.1843564607909036
#>     Attrib V35    -0.021381782215735445
#>     Attrib V36    -0.39150812927368006
#>     Attrib V37    -0.5625663129802398
#>     Attrib V38    0.09658424379982432
#>     Attrib V39    0.17051723743485617
#>     Attrib V4    0.29208301187945207
#>     Attrib V40    -0.1712629351556427
#>     Attrib V41    -0.15539302021902754
#>     Attrib V42    0.0518219403892504
#>     Attrib V43    0.14888394062869403
#>     Attrib V44    0.26372205717402497
#>     Attrib V45    0.20156270553528693
#>     Attrib V46    0.08743997607323227
#>     Attrib V47    -0.012883779070417368
#>     Attrib V48    0.11783416415140444
#>     Attrib V49    0.2564516352418841
#>     Attrib V5    -0.14269219581765205
#>     Attrib V50    -0.3021026717579481
#>     Attrib V51    0.11252312706011197
#>     Attrib V52    0.02191028982379828
#>     Attrib V53    0.31091826486874585
#>     Attrib V54    0.26493853466838535
#>     Attrib V55    -0.27127209284815146
#>     Attrib V56    0.06786826975928442
#>     Attrib V57    0.3749700468167829
#>     Attrib V58    0.2744308139966438
#>     Attrib V59    0.3877240474574407
#>     Attrib V6    -0.24030750279046167
#>     Attrib V60    0.23462346709434323
#>     Attrib V7    -0.2077329082322932
#>     Attrib V8    -0.13331791667067486
#>     Attrib V9    0.2504579676339515
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.3300225299030036
#>     Attrib V1    0.4927850095074654
#>     Attrib V10    -0.18135376588755636
#>     Attrib V11    -0.37441863777051054
#>     Attrib V12    -0.029814856517102747
#>     Attrib V13    -0.34891139223245005
#>     Attrib V14    0.26153636443929856
#>     Attrib V15    0.33949780403215163
#>     Attrib V16    0.04727901897854751
#>     Attrib V17    0.09884920799594457
#>     Attrib V18    0.08420330413250095
#>     Attrib V19    -0.14018541028232673
#>     Attrib V2    0.19351387461127648
#>     Attrib V20    0.46722961195800483
#>     Attrib V21    0.755028864293179
#>     Attrib V22    0.41819004275661265
#>     Attrib V23    -0.05577712533297806
#>     Attrib V24    -0.07571617369502376
#>     Attrib V25    -0.3607147747627495
#>     Attrib V26    -1.2294976807645164
#>     Attrib V27    -1.1801497357041353
#>     Attrib V28    -0.004131021378989108
#>     Attrib V29    0.17352747135852745
#>     Attrib V3    -0.02314197851272141
#>     Attrib V30    0.10433811025197949
#>     Attrib V31    -1.0430972681808701
#>     Attrib V32    0.04272440765252574
#>     Attrib V33    0.6211728685885198
#>     Attrib V34    -0.4900475901701436
#>     Attrib V35    -0.363399724914398
#>     Attrib V36    -0.7923475083599475
#>     Attrib V37    -1.0231597275867497
#>     Attrib V38    0.12143398772833752
#>     Attrib V39    0.3207540569381647
#>     Attrib V4    0.5764840009274834
#>     Attrib V40    -0.22773472759223876
#>     Attrib V41    -0.1162947900165417
#>     Attrib V42    0.35970376545622906
#>     Attrib V43    0.47520915702867494
#>     Attrib V44    0.3901117273082482
#>     Attrib V45    0.23159578620202637
#>     Attrib V46    0.12223659073164848
#>     Attrib V47    -0.23762226636397576
#>     Attrib V48    0.0013950876870245006
#>     Attrib V49    0.37997042152728966
#>     Attrib V5    -0.22901862221962221
#>     Attrib V50    -0.5644109891364761
#>     Attrib V51    -0.041888333675037186
#>     Attrib V52    0.04696156347380176
#>     Attrib V53    0.6684869990032668
#>     Attrib V54    0.32997356813166806
#>     Attrib V55    -0.5843207070675069
#>     Attrib V56    0.10807895027855226
#>     Attrib V57    0.5350883712527209
#>     Attrib V58    0.49884343184353436
#>     Attrib V59    0.7679915029362164
#>     Attrib V6    -0.4207322201919401
#>     Attrib V60    0.33525550382566116
#>     Attrib V7    -0.08055833964990378
#>     Attrib V8    -0.11522983985848462
#>     Attrib V9    0.31879230087246524
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.018851106631751394
#>     Attrib V1    0.3057992172471296
#>     Attrib V10    -0.055156167980506585
#>     Attrib V11    -0.09265053115984104
#>     Attrib V12    0.14603736563267877
#>     Attrib V13    -0.053927071729445324
#>     Attrib V14    0.09586251369972318
#>     Attrib V15    0.09728507132207034
#>     Attrib V16    -0.08062822105410218
#>     Attrib V17    0.004742776739997729
#>     Attrib V18    0.019696095416729037
#>     Attrib V19    -0.1726996159829491
#>     Attrib V2    0.1342551815580638
#>     Attrib V20    0.14762812858057406
#>     Attrib V21    0.21818923949032715
#>     Attrib V22    0.029708758138278345
#>     Attrib V23    -0.06648619239888724
#>     Attrib V24    -0.008089655712510118
#>     Attrib V25    -0.031780207145296537
#>     Attrib V26    -0.4095217266894919
#>     Attrib V27    -0.33256882125591536
#>     Attrib V28    -0.039289947347402154
#>     Attrib V29    -0.08198027590275075
#>     Attrib V3    0.12795022063522418
#>     Attrib V30    -0.018427743676681034
#>     Attrib V31    -0.4503408353217397
#>     Attrib V32    -0.037384003488984636
#>     Attrib V33    0.16611170606867515
#>     Attrib V34    -0.08174946839886253
#>     Attrib V35    -0.01029186322981872
#>     Attrib V36    -0.24500836561427244
#>     Attrib V37    -0.30761735369355936
#>     Attrib V38    0.059394695743423306
#>     Attrib V39    0.2026741659927406
#>     Attrib V4    0.26962849276013057
#>     Attrib V40    -0.0511743425444662
#>     Attrib V41    -0.03604805436934813
#>     Attrib V42    0.03992024878580251
#>     Attrib V43    0.043299214851820804
#>     Attrib V44    0.08721450445260623
#>     Attrib V45    0.00996872060426965
#>     Attrib V46    0.0445186143365182
#>     Attrib V47    -0.026204254504621653
#>     Attrib V48    0.04555068632593752
#>     Attrib V49    0.19331878359599067
#>     Attrib V5    -0.06030639445249973
#>     Attrib V50    -0.21167629223699527
#>     Attrib V51    0.035706226426508544
#>     Attrib V52    0.024195938929276285
#>     Attrib V53    0.2987556199868821
#>     Attrib V54    0.21963246051178995
#>     Attrib V55    -0.12193298883316785
#>     Attrib V56    0.09266740297107318
#>     Attrib V57    0.34515499256410964
#>     Attrib V58    0.20428777760373143
#>     Attrib V59    0.45714053220402723
#>     Attrib V6    -0.10960831907961112
#>     Attrib V60    0.3199731796848959
#>     Attrib V7    -0.04403473603830077
#>     Attrib V8    -0.1530194451338436
#>     Attrib V9    0.13450427272964052
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.2704057082071131
#>     Attrib V1    0.3375503418463283
#>     Attrib V10    0.15065218265589495
#>     Attrib V11    -0.08616676821174099
#>     Attrib V12    0.3537216775484445
#>     Attrib V13    -0.31116465108561625
#>     Attrib V14    -0.09265772446514346
#>     Attrib V15    0.12855114117072677
#>     Attrib V16    -0.16225506182717672
#>     Attrib V17    0.04843973964775798
#>     Attrib V18    0.1385025661890929
#>     Attrib V19    -0.08401304135871303
#>     Attrib V2    0.0494417600827688
#>     Attrib V20    0.290362497511721
#>     Attrib V21    0.4776477415588523
#>     Attrib V22    0.2902006300174904
#>     Attrib V23    -0.03664774087344914
#>     Attrib V24    0.17550842190028998
#>     Attrib V25    0.14973086408235062
#>     Attrib V26    -0.7524452715615264
#>     Attrib V27    -1.2151394162279034
#>     Attrib V28    -0.3910196903283776
#>     Attrib V29    -0.5926829998725225
#>     Attrib V3    -0.16161241264393295
#>     Attrib V30    -0.11058903076735795
#>     Attrib V31    -0.796865135856583
#>     Attrib V32    0.28403166587279366
#>     Attrib V33    0.8119961048588379
#>     Attrib V34    -0.21536520074851537
#>     Attrib V35    -0.06945153841252645
#>     Attrib V36    -0.7768706508725014
#>     Attrib V37    -1.2030599652811276
#>     Attrib V38    -0.1819045929772944
#>     Attrib V39    0.19177622757437873
#>     Attrib V4    0.3709192071563786
#>     Attrib V40    -0.25508726160112527
#>     Attrib V41    -0.22519112556470236
#>     Attrib V42    0.13068266715049484
#>     Attrib V43    0.26039949425582953
#>     Attrib V44    0.3379302361277409
#>     Attrib V45    0.02102283675349717
#>     Attrib V46    0.026569454184629165
#>     Attrib V47    -0.1638774457664326
#>     Attrib V48    0.21577151002032086
#>     Attrib V49    0.5717802893770998
#>     Attrib V5    -0.354221572052779
#>     Attrib V50    -0.5859927070613832
#>     Attrib V51    0.055821185705600775
#>     Attrib V52    -0.0061415016802056285
#>     Attrib V53    0.5381413213823603
#>     Attrib V54    0.5335527007473372
#>     Attrib V55    -0.4418249069403623
#>     Attrib V56    0.0924675215253351
#>     Attrib V57    0.30113302762666566
#>     Attrib V58    0.4684996079408251
#>     Attrib V59    0.6123766805211681
#>     Attrib V6    -0.3891743713142361
#>     Attrib V60    0.43615703358548746
#>     Attrib V7    0.018591179167644443
#>     Attrib V8    -0.1844693644134797
#>     Attrib V9    0.47401415099151756
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.46467889412219976
#>     Attrib V1    0.21682132265655418
#>     Attrib V10    -1.4874625293249037
#>     Attrib V11    -0.9271784691399255
#>     Attrib V12    -1.591876029933216
#>     Attrib V13    -0.33540684694298806
#>     Attrib V14    0.6813231714595253
#>     Attrib V15    0.46418056663029456
#>     Attrib V16    0.5777744384988526
#>     Attrib V17    0.2510372676042488
#>     Attrib V18    -0.3698424982549015
#>     Attrib V19    -0.06417579628066791
#>     Attrib V2    0.10736772421986128
#>     Attrib V20    0.009283866520578818
#>     Attrib V21    0.057444642459463256
#>     Attrib V22    -0.650546040555851
#>     Attrib V23    -1.186972834234186
#>     Attrib V24    -0.9626351064197565
#>     Attrib V25    -0.7745728182257896
#>     Attrib V26    -0.1560054723872542
#>     Attrib V27    -0.45013031451128166
#>     Attrib V28    -1.7985453537948357
#>     Attrib V29    -0.46364305365036684
#>     Attrib V3    0.10764591585717624
#>     Attrib V30    -0.22546937536201225
#>     Attrib V31    1.0194469698231665
#>     Attrib V32    -0.019703507385603353
#>     Attrib V33    -0.3602224391890541
#>     Attrib V34    0.14659727469430214
#>     Attrib V35    -0.7105700656311672
#>     Attrib V36    1.0806873111922055
#>     Attrib V37    1.1551441078403177
#>     Attrib V38    0.47288071724662906
#>     Attrib V39    -0.06483400075090293
#>     Attrib V4    -0.3041928636771745
#>     Attrib V40    -0.1885769192900848
#>     Attrib V41    -0.9371138389427826
#>     Attrib V42    -0.2661560649901132
#>     Attrib V43    -0.0842585639719028
#>     Attrib V44    -0.12510851472520568
#>     Attrib V45    -0.005755185541769435
#>     Attrib V46    -0.7276707522189284
#>     Attrib V47    -0.7631456968258618
#>     Attrib V48    -0.6191535926051684
#>     Attrib V49    -1.1960329536026633
#>     Attrib V5    -0.1600423569157136
#>     Attrib V50    0.9341043655705805
#>     Attrib V51    -1.1955558809229176
#>     Attrib V52    -0.5822974695411857
#>     Attrib V53    -0.47393676019071457
#>     Attrib V54    -0.12550010858063668
#>     Attrib V55    0.8652234278619493
#>     Attrib V56    0.2127215804134321
#>     Attrib V57    1.0067729137623076
#>     Attrib V58    -0.40853357049418937
#>     Attrib V59    -0.09512075221393222
#>     Attrib V6    -0.20027199259599063
#>     Attrib V60    -0.26663456552692766
#>     Attrib V7    0.22443823994575862
#>     Attrib V8    0.3686314208552783
#>     Attrib V9    -1.3643612201022481
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    0.04791963584070719
#>     Attrib V1    0.32458288223952725
#>     Attrib V10    -0.044445555190742524
#>     Attrib V11    -0.12269161391434891
#>     Attrib V12    0.12155298922899152
#>     Attrib V13    -0.1072616597662899
#>     Attrib V14    0.06320393905188089
#>     Attrib V15    0.11031652574539369
#>     Attrib V16    0.004195430308155647
#>     Attrib V17    0.007095405816577656
#>     Attrib V18    0.029181798165229526
#>     Attrib V19    -0.1710613535368461
#>     Attrib V2    0.10887280463760281
#>     Attrib V20    0.06790083625248289
#>     Attrib V21    0.17669094961132153
#>     Attrib V22    -0.0011230686988294716
#>     Attrib V23    -0.21607284300519375
#>     Attrib V24    -0.05992726448000666
#>     Attrib V25    -0.13078127468678663
#>     Attrib V26    -0.4831749501056852
#>     Attrib V27    -0.43553817664702044
#>     Attrib V28    -0.057257199621551846
#>     Attrib V29    -0.13338145557662884
#>     Attrib V3    0.09746013168585886
#>     Attrib V30    -0.05258519096752509
#>     Attrib V31    -0.402378989193991
#>     Attrib V32    0.006459027690721259
#>     Attrib V33    0.1912399056880688
#>     Attrib V34    -0.09487084587532982
#>     Attrib V35    -0.04920299868597605
#>     Attrib V36    -0.3074619074653421
#>     Attrib V37    -0.3755316857071743
#>     Attrib V38    0.03314576064301427
#>     Attrib V39    0.1328517884045197
#>     Attrib V4    0.26959880738126374
#>     Attrib V40    -0.12241099704837556
#>     Attrib V41    -0.053564021249032236
#>     Attrib V42    0.07928198363072295
#>     Attrib V43    0.08969391567795412
#>     Attrib V44    0.06463048394975963
#>     Attrib V45    0.05917771411911823
#>     Attrib V46    0.0322845042846799
#>     Attrib V47    -0.08842919501014376
#>     Attrib V48    0.021301416321714808
#>     Attrib V49    0.09968649015273219
#>     Attrib V5    -0.09626446163813827
#>     Attrib V50    -0.14771164750486945
#>     Attrib V51    0.06342438161383289
#>     Attrib V52    0.06242634911637666
#>     Attrib V53    0.35730601289470504
#>     Attrib V54    0.23247510416800074
#>     Attrib V55    -0.07582322060960625
#>     Attrib V56    0.09641318122772587
#>     Attrib V57    0.39977014742675826
#>     Attrib V58    0.28075620832180465
#>     Attrib V59    0.3903881587980639
#>     Attrib V6    -0.11741036205879662
#>     Attrib V60    0.2925751915258634
#>     Attrib V7    -0.06315701262140583
#>     Attrib V8    -0.1335266439906408
#>     Attrib V9    0.1639083566817384
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.05118079438071727
#>     Attrib V1    0.3149106727617982
#>     Attrib V10    0.06615272916394761
#>     Attrib V11    -0.02034415928241993
#>     Attrib V12    0.0865475038221204
#>     Attrib V13    -0.1743503284059128
#>     Attrib V14    0.03644621773535454
#>     Attrib V15    0.14744304314730217
#>     Attrib V16    -0.054598096797322714
#>     Attrib V17    -0.054178930634367115
#>     Attrib V18    -0.04760051568619116
#>     Attrib V19    -0.17989393669499096
#>     Attrib V2    0.21274815848915243
#>     Attrib V20    0.04024853476007772
#>     Attrib V21    0.10021844722338022
#>     Attrib V22    0.036376565568593304
#>     Attrib V23    -0.1749693999286802
#>     Attrib V24    -0.10818382697530948
#>     Attrib V25    -0.21136061943293402
#>     Attrib V26    -0.4158315710363588
#>     Attrib V27    -0.2941888153977224
#>     Attrib V28    0.028702982037354566
#>     Attrib V29    -0.08263068984821698
#>     Attrib V3    0.08326072418159935
#>     Attrib V30    0.04609809490918999
#>     Attrib V31    -0.2704295890516184
#>     Attrib V32    -0.07270762685816366
#>     Attrib V33    0.16716878976648095
#>     Attrib V34    -0.13571186802877586
#>     Attrib V35    0.04441163752094605
#>     Attrib V36    -0.2305472386276285
#>     Attrib V37    -0.2939826061051844
#>     Attrib V38    0.09431966658539298
#>     Attrib V39    0.14754171535431757
#>     Attrib V4    0.23756297786423808
#>     Attrib V40    -0.11975601426022706
#>     Attrib V41    -0.05661194862398088
#>     Attrib V42    -0.04748298499322446
#>     Attrib V43    0.08167874956341852
#>     Attrib V44    0.11426260949730743
#>     Attrib V45    0.09978271037449492
#>     Attrib V46    0.029234968361593054
#>     Attrib V47    -0.04910475234699823
#>     Attrib V48    0.1436300031207678
#>     Attrib V49    0.1419116651343593
#>     Attrib V5    -0.0907428544309303
#>     Attrib V50    -0.12913683203559898
#>     Attrib V51    0.08521959718968394
#>     Attrib V52    0.046032204313667245
#>     Attrib V53    0.1816462837420369
#>     Attrib V54    0.1632603445131944
#>     Attrib V55    -0.022303274386779013
#>     Attrib V56    0.0858917986533308
#>     Attrib V57    0.37272422175512265
#>     Attrib V58    0.1528882156829793
#>     Attrib V59    0.28501709788281865
#>     Attrib V6    -0.1467951556816625
#>     Attrib V60    0.24075050218492305
#>     Attrib V7    -0.1830702699687742
#>     Attrib V8    -0.05293467101837563
#>     Attrib V9    0.16689701852386057
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.15557701377718264
#>     Attrib V1    0.1793234176225042
#>     Attrib V10    0.055425338304977166
#>     Attrib V11    3.070555846541503E-5
#>     Attrib V12    0.05827014016342914
#>     Attrib V13    -0.06400985296159034
#>     Attrib V14    0.02808811894367917
#>     Attrib V15    0.02846709315417525
#>     Attrib V16    -0.023067234495550242
#>     Attrib V17    -0.05681313946270547
#>     Attrib V18    0.02628041777254644
#>     Attrib V19    -0.1339569734967357
#>     Attrib V2    0.14024183758928804
#>     Attrib V20    0.05787900514450708
#>     Attrib V21    0.0630173091701093
#>     Attrib V22    -0.025507462948804717
#>     Attrib V23    -0.05890858492725918
#>     Attrib V24    -0.05631085582881147
#>     Attrib V25    -0.021539254504498603
#>     Attrib V26    -0.11528482702232572
#>     Attrib V27    -0.09815784031897164
#>     Attrib V28    0.0020167045989536083
#>     Attrib V29    -0.10088378717091126
#>     Attrib V3    0.15879296269316223
#>     Attrib V30    -0.07872279817611191
#>     Attrib V31    -0.1910322775953103
#>     Attrib V32    -0.03699177583249755
#>     Attrib V33    0.06980648405013755
#>     Attrib V34    0.040952754094819466
#>     Attrib V35    0.079935316417029
#>     Attrib V36    0.03800164479353717
#>     Attrib V37    -0.063481787122956
#>     Attrib V38    0.06836829634627264
#>     Attrib V39    0.13455623475844405
#>     Attrib V4    0.1333202362301909
#>     Attrib V40    -0.024423042444829804
#>     Attrib V41    -0.06698707128924038
#>     Attrib V42    -0.04750599941986787
#>     Attrib V43    -0.0028033258161283083
#>     Attrib V44    0.10010444462755122
#>     Attrib V45    0.002456372369908732
#>     Attrib V46    0.0472755208726313
#>     Attrib V47    0.07903324724666819
#>     Attrib V48    0.08203261538814074
#>     Attrib V49    0.1244329300948262
#>     Attrib V5    0.00771278711060516
#>     Attrib V50    -0.06602103107750312
#>     Attrib V51    0.14598121104878406
#>     Attrib V52    0.06518131111782177
#>     Attrib V53    0.12918792333239656
#>     Attrib V54    0.09055777262651675
#>     Attrib V55    0.05565201329312996
#>     Attrib V56    0.12128185334946313
#>     Attrib V57    0.16709394458884547
#>     Attrib V58    0.11769223340623193
#>     Attrib V59    0.19868848048857862
#>     Attrib V6    -0.09415078477695768
#>     Attrib V60    0.21420030255120887
#>     Attrib V7    -0.06246071521569016
#>     Attrib V8    -0.01903284860239982
#>     Attrib V9    0.12308918861052032
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.3049268960523592
#>     Attrib V1    0.0409126649439083
#>     Attrib V10    0.42852236133036303
#>     Attrib V11    0.23906888458924566
#>     Attrib V12    1.1700764435573936
#>     Attrib V13    0.37681668784643996
#>     Attrib V14    -0.01921299848474172
#>     Attrib V15    0.013734381903330123
#>     Attrib V16    -0.4073068215601825
#>     Attrib V17    -0.12757146201126918
#>     Attrib V18    0.19420404926928922
#>     Attrib V19    0.03878213671746715
#>     Attrib V2    -0.010674244492085778
#>     Attrib V20    0.12656647258743622
#>     Attrib V21    0.19650303199817548
#>     Attrib V22    0.48592859212020734
#>     Attrib V23    0.528102666195464
#>     Attrib V24    0.8748390646988111
#>     Attrib V25    0.9658869201995507
#>     Attrib V26    0.028026067578875897
#>     Attrib V27    -0.47941415016088473
#>     Attrib V28    0.37864571381873946
#>     Attrib V29    -0.19232473793708502
#>     Attrib V3    -0.0683047251420842
#>     Attrib V30    -0.1380951983628187
#>     Attrib V31    -0.822942630407276
#>     Attrib V32    0.3312234524941336
#>     Attrib V33    0.7403517918698301
#>     Attrib V34    -0.24444033619062705
#>     Attrib V35    0.10270755873335323
#>     Attrib V36    -0.8673100800542133
#>     Attrib V37    -1.2163726765513239
#>     Attrib V38    -0.2687834646391881
#>     Attrib V39    0.137368339195122
#>     Attrib V4    0.4973476458517972
#>     Attrib V40    -0.016382396512315732
#>     Attrib V41    0.3553484936997878
#>     Attrib V42    0.43685648847091985
#>     Attrib V43    0.256902036099007
#>     Attrib V44    0.04984912602750623
#>     Attrib V45    -0.2552293617900606
#>     Attrib V46    0.033234405218583986
#>     Attrib V47    -0.0994391379527861
#>     Attrib V48    0.008957100018295066
#>     Attrib V49    0.633190896982287
#>     Attrib V5    0.03338920172469531
#>     Attrib V50    -0.8233118634164334
#>     Attrib V51    0.4220258629149573
#>     Attrib V52    0.23574579030267626
#>     Attrib V53    0.9045087613261227
#>     Attrib V54    0.6522283834010137
#>     Attrib V55    -0.5907630862145057
#>     Attrib V56    0.04228670266241323
#>     Attrib V57    -0.33931044627974927
#>     Attrib V58    0.5891405018056104
#>     Attrib V59    0.6286175744316559
#>     Attrib V6    0.003181190868941611
#>     Attrib V60    0.44012165691701355
#>     Attrib V7    0.15722688721662567
#>     Attrib V8    -0.31721589449615867
#>     Attrib V9    0.6321941719869808
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.1317656886501619
#>     Attrib V1    0.4100308446854502
#>     Attrib V10    0.2259781936810137
#>     Attrib V11    -0.09450819026904811
#>     Attrib V12    0.36229840578326883
#>     Attrib V13    -0.12212410231557767
#>     Attrib V14    0.046263837582723205
#>     Attrib V15    0.1224538019443625
#>     Attrib V16    -0.1826138086843593
#>     Attrib V17    0.10683698778985191
#>     Attrib V18    0.28089292206427247
#>     Attrib V19    0.07059536618927076
#>     Attrib V2    0.12227596572276846
#>     Attrib V20    0.5879012871669546
#>     Attrib V21    0.808134569392827
#>     Attrib V22    0.7660351480491663
#>     Attrib V23    0.4930456754189198
#>     Attrib V24    0.3671304611436969
#>     Attrib V25    0.21368670038880255
#>     Attrib V26    -0.5990353430430646
#>     Attrib V27    -0.9094570298977573
#>     Attrib V28    0.058052567674196254
#>     Attrib V29    0.02145661770094591
#>     Attrib V3    -0.06318465387681135
#>     Attrib V30    0.052249525055285864
#>     Attrib V31    -0.9992286387688754
#>     Attrib V32    -0.025804162860300996
#>     Attrib V33    0.44902338408989845
#>     Attrib V34    -0.5060530886713234
#>     Attrib V35    -0.12489293981513722
#>     Attrib V36    -0.5263964803261085
#>     Attrib V37    -0.809363771775707
#>     Attrib V38    0.1407350462329925
#>     Attrib V39    0.29974733848998564
#>     Attrib V4    0.5089461338389651
#>     Attrib V40    -0.23560648432545978
#>     Attrib V41    -0.028984656963863993
#>     Attrib V42    0.28791658143470134
#>     Attrib V43    0.4979674846538283
#>     Attrib V44    0.4956297937284713
#>     Attrib V45    0.1432286009788461
#>     Attrib V46    0.04320914259538577
#>     Attrib V47    -0.10807660873555763
#>     Attrib V48    0.06940430055838136
#>     Attrib V49    0.5265402533175549
#>     Attrib V5    -0.1398627513974657
#>     Attrib V50    -0.4174852852985973
#>     Attrib V51    0.3492954511374746
#>     Attrib V52    0.16538029817507627
#>     Attrib V53    0.5794109405346476
#>     Attrib V54    0.36962423953667467
#>     Attrib V55    -0.632441383307247
#>     Attrib V56    0.16406049322675043
#>     Attrib V57    -0.003189358503273696
#>     Attrib V58    0.4263720971644108
#>     Attrib V59    0.5281004730871657
#>     Attrib V6    -0.2973219311708281
#>     Attrib V60    0.3355184621840415
#>     Attrib V7    -0.03759074201209379
#>     Attrib V8    -0.2241388466584954
#>     Attrib V9    0.5275412823535948
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.3265810430200762
#>     Attrib V1    -0.0688806923256293
#>     Attrib V10    -1.0024995382779451
#>     Attrib V11    -0.5834135597215403
#>     Attrib V12    -1.0822630604250603
#>     Attrib V13    -0.03753125008853665
#>     Attrib V14    0.4171421889988797
#>     Attrib V15    0.25507610622618127
#>     Attrib V16    0.47530827225796235
#>     Attrib V17    0.23648653823008337
#>     Attrib V18    -0.18628745728604607
#>     Attrib V19    0.1017912189002203
#>     Attrib V2    -0.0015150146384857322
#>     Attrib V20    -0.05877712445240109
#>     Attrib V21    -0.02106516719173788
#>     Attrib V22    -0.4931239830497671
#>     Attrib V23    -0.6026324478290225
#>     Attrib V24    -0.35119539790792265
#>     Attrib V25    -0.20742215529944827
#>     Attrib V26    0.24417674308203274
#>     Attrib V27    -0.001233954478433363
#>     Attrib V28    -1.21304354126253
#>     Attrib V29    -0.4547945426890791
#>     Attrib V3    0.029863364244263155
#>     Attrib V30    -0.29617872938358825
#>     Attrib V31    0.8094130989602062
#>     Attrib V32    -0.04602346488815516
#>     Attrib V33    -0.3762197423785721
#>     Attrib V34    0.20549815696320603
#>     Attrib V35    -0.39930112467989665
#>     Attrib V36    0.9004051308679143
#>     Attrib V37    0.9581583727685525
#>     Attrib V38    0.26361926222125753
#>     Attrib V39    -0.1194383920943858
#>     Attrib V4    -0.2966905925594398
#>     Attrib V40    0.05746271726680934
#>     Attrib V41    -0.3758632401839106
#>     Attrib V42    -0.12292905664888569
#>     Attrib V43    -0.09620110852012574
#>     Attrib V44    -0.22828405334040427
#>     Attrib V45    -0.1740776810438729
#>     Attrib V46    -0.5347652859171422
#>     Attrib V47    -0.526945164858535
#>     Attrib V48    -0.5233877342291954
#>     Attrib V49    -0.9293017964554954
#>     Attrib V5    0.05935784997678909
#>     Attrib V50    0.8513772034618176
#>     Attrib V51    -0.8134359637173411
#>     Attrib V52    -0.33860140408741946
#>     Attrib V53    -0.3377252778579818
#>     Attrib V54    0.023769117294417195
#>     Attrib V55    0.8064402994437396
#>     Attrib V56    0.1420491487979231
#>     Attrib V57    0.6376506659285386
#>     Attrib V58    -0.299985749939709
#>     Attrib V59    -0.09541518043956523
#>     Attrib V6    0.06437148475981391
#>     Attrib V60    -0.05554049368970125
#>     Attrib V7    0.46276924476188624
#>     Attrib V8    0.3475945785249438
#>     Attrib V9    -0.9845928525966514
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.24143011738160308
#>     Attrib V1    0.6154557938754363
#>     Attrib V10    -0.24194630314897514
#>     Attrib V11    -0.4264011858000934
#>     Attrib V12    0.0012791561158378188
#>     Attrib V13    -0.34064462576415266
#>     Attrib V14    0.26463529375703215
#>     Attrib V15    0.3183842252848819
#>     Attrib V16    0.07770924706844416
#>     Attrib V17    0.06153527727185814
#>     Attrib V18    0.009643459035113502
#>     Attrib V19    -0.2801948283367819
#>     Attrib V2    0.2297365102641541
#>     Attrib V20    0.3454928517951271
#>     Attrib V21    0.5965201282106434
#>     Attrib V22    0.1844666506109536
#>     Attrib V23    -0.3102040622215816
#>     Attrib V24    -0.14164764805793256
#>     Attrib V25    -0.4115853543861239
#>     Attrib V26    -1.1509784115834962
#>     Attrib V27    -1.196323812991549
#>     Attrib V28    -0.3751820941053084
#>     Attrib V29    -0.13095498412955406
#>     Attrib V3    0.04141561537306685
#>     Attrib V30    -0.013570351577764348
#>     Attrib V31    -0.6467803623118337
#>     Attrib V32    0.14790484931119735
#>     Attrib V33    0.5306359358854313
#>     Attrib V34    -0.30096881515166896
#>     Attrib V35    -0.26897789381762305
#>     Attrib V36    -0.6609027468724215
#>     Attrib V37    -0.8695245903043681
#>     Attrib V38    -0.0010547120436691646
#>     Attrib V39    0.20177662167215812
#>     Attrib V4    0.45180249149754764
#>     Attrib V40    -0.25030346170813506
#>     Attrib V41    -0.2621281812302519
#>     Attrib V42    0.20201914758265302
#>     Attrib V43    0.3862033749925707
#>     Attrib V44    0.2796817956348411
#>     Attrib V45    0.03279014194473451
#>     Attrib V46    0.025835135679805103
#>     Attrib V47    -0.28270719093999447
#>     Attrib V48    0.016739101015497568
#>     Attrib V49    0.2584936185406999
#>     Attrib V5    -0.22900318592587124
#>     Attrib V50    -0.4251052706186934
#>     Attrib V51    -0.14560667445881764
#>     Attrib V52    -0.020956986001876985
#>     Attrib V53    0.5548612950976881
#>     Attrib V54    0.36588400836967944
#>     Attrib V55    -0.38929249449618725
#>     Attrib V56    0.15174422906789478
#>     Attrib V57    0.6128281435899803
#>     Attrib V58    0.4319669174647318
#>     Attrib V59    0.7371069739425953
#>     Attrib V6    -0.30869909599243
#>     Attrib V60    0.42726638128245203
#>     Attrib V7    -0.08212108855798576
#>     Attrib V8    -0.31995724769793926
#>     Attrib V9    0.13950052899067722
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.2716157613452849
#>     Attrib V1    0.5169071869211621
#>     Attrib V10    -0.27797669582849155
#>     Attrib V11    -0.4101587537757527
#>     Attrib V12    0.08541547100352948
#>     Attrib V13    -0.2840499741257768
#>     Attrib V14    0.23744304173499836
#>     Attrib V15    0.351769332831266
#>     Attrib V16    -0.006439897869451382
#>     Attrib V17    0.12245746240935013
#>     Attrib V18    0.08403348969748771
#>     Attrib V19    -0.16584540164481507
#>     Attrib V2    0.1401996050536419
#>     Attrib V20    0.42636733427527435
#>     Attrib V21    0.7106680824950342
#>     Attrib V22    0.3460353924738866
#>     Attrib V23    -0.1234713565205042
#>     Attrib V24    -0.06660365739970868
#>     Attrib V25    -0.25688544220425613
#>     Attrib V26    -1.0757309809218227
#>     Attrib V27    -1.2848138478543774
#>     Attrib V28    -0.3226334410540951
#>     Attrib V29    -0.16751770364537868
#>     Attrib V3    0.025235404068929834
#>     Attrib V30    -0.02817727155887955
#>     Attrib V31    -0.8913725307092337
#>     Attrib V32    0.09365850256215767
#>     Attrib V33    0.5898289899208332
#>     Attrib V34    -0.4090377084505815
#>     Attrib V35    -0.2681988351014124
#>     Attrib V36    -0.6835121135305575
#>     Attrib V37    -0.9444010304067397
#>     Attrib V38    0.037671572553612406
#>     Attrib V39    0.2738920845628041
#>     Attrib V4    0.5292660507561661
#>     Attrib V40    -0.32396163256237726
#>     Attrib V41    -0.21297589328053756
#>     Attrib V42    0.2887207202611376
#>     Attrib V43    0.4548493790069011
#>     Attrib V44    0.3472389335039658
#>     Attrib V45    0.12208603470508846
#>     Attrib V46    -0.005256967692641843
#>     Attrib V47    -0.23863427090576633
#>     Attrib V48    -0.09477085607819556
#>     Attrib V49    0.31792481804024025
#>     Attrib V5    -0.2477528380196451
#>     Attrib V50    -0.4285846678297367
#>     Attrib V51    -0.10427960378138275
#>     Attrib V52    0.02485072856021704
#>     Attrib V53    0.7194205208639499
#>     Attrib V54    0.47667753389926115
#>     Attrib V55    -0.40683161411604274
#>     Attrib V56    0.1530526216721149
#>     Attrib V57    0.5086567660801103
#>     Attrib V58    0.4690620905337607
#>     Attrib V59    0.81339405574828
#>     Attrib V6    -0.34648782501721426
#>     Attrib V60    0.4067220854177255
#>     Attrib V7    -0.0012239402217399699
#>     Attrib V8    -0.1907272470600392
#>     Attrib V9    0.20480530270652328
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.4443998822948979
#>     Attrib V1    0.0015667500396710002
#>     Attrib V10    -0.007064181179873707
#>     Attrib V11    0.03230741953333797
#>     Attrib V12    -0.4098674560661695
#>     Attrib V13    0.08360209505952497
#>     Attrib V14    0.319190006206369
#>     Attrib V15    0.2936259427725273
#>     Attrib V16    0.395101727631182
#>     Attrib V17    0.4232480899245591
#>     Attrib V18    0.12864405027383505
#>     Attrib V19    0.37499469185237744
#>     Attrib V2    0.05319523788999097
#>     Attrib V20    0.09876207590780003
#>     Attrib V21    -0.07691414774099434
#>     Attrib V22    -0.13902058818484964
#>     Attrib V23    -0.07492476772118768
#>     Attrib V24    -0.1445577417878086
#>     Attrib V25    0.05384732339203161
#>     Attrib V26    0.45173482977777835
#>     Attrib V27    0.3167063915449856
#>     Attrib V28    -0.2338573734706905
#>     Attrib V29    -0.05518906878374817
#>     Attrib V3    0.20264606796905416
#>     Attrib V30    0.0318965196333654
#>     Attrib V31    0.47356760556950656
#>     Attrib V32    0.040748914581952164
#>     Attrib V33    -0.35301611209780387
#>     Attrib V34    -0.021096704281034953
#>     Attrib V35    -0.21178753017202187
#>     Attrib V36    0.3762561088666171
#>     Attrib V37    0.366155865775119
#>     Attrib V38    0.00423290521376382
#>     Attrib V39    -0.21667117118822662
#>     Attrib V4    0.07845933162385212
#>     Attrib V40    -0.1230956959470487
#>     Attrib V41    -0.3402472307135477
#>     Attrib V42    -0.2618935133619045
#>     Attrib V43    -0.287593396505667
#>     Attrib V44    -0.24168708591240584
#>     Attrib V45    -0.29502767293727794
#>     Attrib V46    -0.2977985957672595
#>     Attrib V47    -0.10005488658001303
#>     Attrib V48    -0.17784015189351648
#>     Attrib V49    -0.3858738580445471
#>     Attrib V5    0.2639061783862229
#>     Attrib V50    0.38446923032282726
#>     Attrib V51    -0.060984819256819985
#>     Attrib V52    0.13244665771868014
#>     Attrib V53    -0.24508628688511175
#>     Attrib V54    -0.04111708156615388
#>     Attrib V55    0.39102290282143454
#>     Attrib V56    0.22918712859421972
#>     Attrib V57    0.1492747416743485
#>     Attrib V58    -0.12337369964176573
#>     Attrib V59    -0.1907291649387909
#>     Attrib V6    0.21432002594162167
#>     Attrib V60    0.027346197093236733
#>     Attrib V7    0.18485812981650984
#>     Attrib V8    0.25602803927471013
#>     Attrib V9    -0.11609719296951374
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.6616930963026884
#>     Attrib V1    -0.22155104347068053
#>     Attrib V10    1.588940735257341
#>     Attrib V11    1.1534845362431048
#>     Attrib V12    2.1885681063648934
#>     Attrib V13    0.24565853176899488
#>     Attrib V14    -1.069334426937543
#>     Attrib V15    -0.8598731753676995
#>     Attrib V16    -0.9436957636580103
#>     Attrib V17    -0.4598865732442709
#>     Attrib V18    0.3028277101103444
#>     Attrib V19    -0.31887725115654425
#>     Attrib V2    -0.24337365442188072
#>     Attrib V20    -0.4405003379061892
#>     Attrib V21    -0.5620371478110128
#>     Attrib V22    0.5151101283891589
#>     Attrib V23    1.038294906316379
#>     Attrib V24    0.8419371226845619
#>     Attrib V25    0.9660894015024611
#>     Attrib V26    0.7086683326865473
#>     Attrib V27    0.9980103823437105
#>     Attrib V28    1.877961145360116
#>     Attrib V29    0.0939810935004095
#>     Attrib V3    -0.052324451596991985
#>     Attrib V30    0.03435771883408743
#>     Attrib V31    -0.8359953874980061
#>     Attrib V32    -0.49173458430672606
#>     Attrib V33    -0.10260381546325179
#>     Attrib V34    0.2939466005125903
#>     Attrib V35    1.3324642834218237
#>     Attrib V36    -0.6538302491622929
#>     Attrib V37    -0.4644655389234742
#>     Attrib V38    -0.4751050196930594
#>     Attrib V39    0.24210883133523947
#>     Attrib V4    0.0804159249997386
#>     Attrib V40    0.6538317282759875
#>     Attrib V41    1.2738198475460896
#>     Attrib V42    -0.4144606572879463
#>     Attrib V43    -0.7529267482051802
#>     Attrib V44    -0.21197084056164808
#>     Attrib V45    0.08702642109322589
#>     Attrib V46    0.9516101044581299
#>     Attrib V47    1.1890590001297703
#>     Attrib V48    1.2648262337093634
#>     Attrib V49    1.2622445094054262
#>     Attrib V5    0.48139319704051714
#>     Attrib V50    -1.083002448704126
#>     Attrib V51    1.4779865158817622
#>     Attrib V52    0.6149811750689759
#>     Attrib V53    0.2253119941064938
#>     Attrib V54    0.22299684788563678
#>     Attrib V55    -0.778543287704622
#>     Attrib V56    -0.26975222305298296
#>     Attrib V57    -0.6914109654444801
#>     Attrib V58    -0.028259199542546763
#>     Attrib V59    0.21613589514381623
#>     Attrib V6    0.657247815145996
#>     Attrib V60    0.6224579472477703
#>     Attrib V7    -0.3689334514396304
#>     Attrib V8    -0.9377613870581397
#>     Attrib V9    1.3481075247245526
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.08085693163808498
#>     Attrib V1    0.2568841387019854
#>     Attrib V10    0.005201783299171266
#>     Attrib V11    -0.06201532997546503
#>     Attrib V12    0.11918660109906576
#>     Attrib V13    -0.12081017229984604
#>     Attrib V14    0.08746494499548454
#>     Attrib V15    0.053236620092344346
#>     Attrib V16    -0.05634872123384504
#>     Attrib V17    -0.02078762215677391
#>     Attrib V18    -0.0793053525499087
#>     Attrib V19    -0.11650615719694637
#>     Attrib V2    0.16829852845262222
#>     Attrib V20    0.04987252523464307
#>     Attrib V21    0.07370190756661936
#>     Attrib V22    -0.04145997318734544
#>     Attrib V23    -0.12471931639163561
#>     Attrib V24    -0.10466568607334123
#>     Attrib V25    -0.10187463748505757
#>     Attrib V26    -0.24627274391886514
#>     Attrib V27    -0.10572370862421437
#>     Attrib V28    0.11252119326662743
#>     Attrib V29    -0.014368348037816357
#>     Attrib V3    0.0776878874923959
#>     Attrib V30    -0.01108786206464752
#>     Attrib V31    -0.2781946848404735
#>     Attrib V32    -0.11891197932157482
#>     Attrib V33    0.06392649859247884
#>     Attrib V34    -0.057891456909789675
#>     Attrib V35    0.13733118538582106
#>     Attrib V36    -0.014296510275797092
#>     Attrib V37    -0.02862500066768798
#>     Attrib V38    0.1111228668417171
#>     Attrib V39    0.16581006884816685
#>     Attrib V4    0.23317265058821776
#>     Attrib V40    -0.040342584404715116
#>     Attrib V41    -0.07494932760989614
#>     Attrib V42    -0.05389352857808965
#>     Attrib V43    0.016372384713894912
#>     Attrib V44    0.08769874860729268
#>     Attrib V45    0.07661252331026308
#>     Attrib V46    0.058307474757841815
#>     Attrib V47    0.007124311310451661
#>     Attrib V48    0.13383802361435687
#>     Attrib V49    0.12208480837724278
#>     Attrib V5    -0.06709237179030315
#>     Attrib V50    -0.05293199243309022
#>     Attrib V51    0.05347040928051775
#>     Attrib V52    0.04807409057202359
#>     Attrib V53    0.14814346055000235
#>     Attrib V54    0.14105476236137393
#>     Attrib V55    -0.0013874036795387837
#>     Attrib V56    0.10539350150400652
#>     Attrib V57    0.329746105070575
#>     Attrib V58    0.1439275293776514
#>     Attrib V59    0.2843481056243739
#>     Attrib V6    -0.07108946084991559
#>     Attrib V60    0.2768115676450478
#>     Attrib V7    -0.16655658210068247
#>     Attrib V8    -0.0806199089457481
#>     Attrib V9    0.10240805761516328
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.2081968040859501
#>     Attrib V1    0.28969040134391716
#>     Attrib V10    0.3366162588119442
#>     Attrib V11    0.007579111810209399
#>     Attrib V12    0.46483592066774154
#>     Attrib V13    -0.13734266713420887
#>     Attrib V14    -0.14791953275016503
#>     Attrib V15    0.04552902037928657
#>     Attrib V16    -0.20092851987640217
#>     Attrib V17    0.07107834011784374
#>     Attrib V18    0.33987328848453147
#>     Attrib V19    0.1063796657099024
#>     Attrib V2    0.04091750639259892
#>     Attrib V20    0.45366452237730825
#>     Attrib V21    0.7310345991212246
#>     Attrib V22    0.686099981444971
#>     Attrib V23    0.3436675205299711
#>     Attrib V24    0.5123238537740435
#>     Attrib V25    0.4168662652291412
#>     Attrib V26    -0.5490719654798485
#>     Attrib V27    -1.2224402699096246
#>     Attrib V28    -0.24555969864405428
#>     Attrib V29    -0.4547896041102254
#>     Attrib V3    -0.15252756988261348
#>     Attrib V30    -0.10823044984392628
#>     Attrib V31    -1.0538215622132534
#>     Attrib V32    0.23418604870757048
#>     Attrib V33    0.7534965123158582
#>     Attrib V34    -0.4031232021945265
#>     Attrib V35    -0.15808137873339895
#>     Attrib V36    -0.8378489481584094
#>     Attrib V37    -1.361895553349728
#>     Attrib V38    -0.13574377511376837
#>     Attrib V39    0.24976969349188727
#>     Attrib V4    0.524779219587293
#>     Attrib V40    -0.3451523112745363
#>     Attrib V41    -0.11528732374963616
#>     Attrib V42    0.3341202583960687
#>     Attrib V43    0.4336267769562666
#>     Attrib V44    0.4904034253910504
#>     Attrib V45    0.15032621823378647
#>     Attrib V46    -0.01712295877057461
#>     Attrib V47    -0.17382446380646233
#>     Attrib V48    0.1477227103216558
#>     Attrib V49    0.6319150376715684
#>     Attrib V5    -0.27324891100364673
#>     Attrib V50    -0.5283141585568989
#>     Attrib V51    0.3085089241276318
#>     Attrib V52    0.12291834120380661
#>     Attrib V53    0.7199593408171918
#>     Attrib V54    0.5815736226012037
#>     Attrib V55    -0.5761625257375811
#>     Attrib V56    0.09720081661637833
#>     Attrib V57    0.020866718496748878
#>     Attrib V58    0.5729564677830258
#>     Attrib V59    0.5791492219857871
#>     Attrib V6    -0.38094940685113726
#>     Attrib V60    0.3689486051869361
#>     Attrib V7    0.008972657352157222
#>     Attrib V8    -0.04413644196337868
#>     Attrib V9    0.6972845868414325
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.21949600069836972
#>     Attrib V1    0.7249037084164016
#>     Attrib V10    -2.009669861459001
#>     Attrib V11    -1.1606722494882413
#>     Attrib V12    -1.8841142532415107
#>     Attrib V13    -0.14894326386484538
#>     Attrib V14    1.4100558631190359
#>     Attrib V15    1.1028109614138226
#>     Attrib V16    0.8184857572555355
#>     Attrib V17    0.23064775575930804
#>     Attrib V18    -0.6607233696631091
#>     Attrib V19    -0.43089656284761363
#>     Attrib V2    0.23661711011156494
#>     Attrib V20    -0.11225980230752695
#>     Attrib V21    0.24011029552664512
#>     Attrib V22    -1.0745730715806245
#>     Attrib V23    -1.822638592812777
#>     Attrib V24    -1.0882513663558542
#>     Attrib V25    -0.9816777679834637
#>     Attrib V26    -0.2791953000105908
#>     Attrib V27    -0.8753946648092038
#>     Attrib V28    -2.7633381076387575
#>     Attrib V29    -0.6929110009197335
#>     Attrib V3    0.20688761573228642
#>     Attrib V30    -0.4766741600866283
#>     Attrib V31    1.0921559631246742
#>     Attrib V32    0.39597098812501436
#>     Attrib V33    -0.05560104809482411
#>     Attrib V34    0.1193884949285209
#>     Attrib V35    -1.1151580119657514
#>     Attrib V36    1.129334871234141
#>     Attrib V37    1.153040976766476
#>     Attrib V38    0.5554130423849324
#>     Attrib V39    -0.32348166573693576
#>     Attrib V4    -0.21482109612771358
#>     Attrib V40    -0.6818861006576271
#>     Attrib V41    -1.2138203584066316
#>     Attrib V42    0.1609615699580372
#>     Attrib V43    0.4293166557413063
#>     Attrib V44    -0.2938787352309679
#>     Attrib V45    -0.5288173247972786
#>     Attrib V46    -1.3892224458156452
#>     Attrib V47    -1.5892989662064834
#>     Attrib V48    -1.3805352096079744
#>     Attrib V49    -1.9349188506804893
#>     Attrib V5    -0.34748530657104765
#>     Attrib V50    1.0462799617611234
#>     Attrib V51    -1.82695861840516
#>     Attrib V52    -0.8946121941954752
#>     Attrib V53    -0.11780367676456768
#>     Attrib V54    0.37808124386030695
#>     Attrib V55    0.9721045023046706
#>     Attrib V56    0.1956019333555722
#>     Attrib V57    1.3515225590372257
#>     Attrib V58    -0.11254095524062084
#>     Attrib V59    0.3738274716716648
#>     Attrib V6    -0.233729915349672
#>     Attrib V60    -0.35628658995914353
#>     Attrib V7    0.5640816988389821
#>     Attrib V8    0.4770917602048578
#>     Attrib V9    -1.8045039351523575
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.20383301423178363
#>     Attrib V1    0.32815696946634076
#>     Attrib V10    -0.07320114780034759
#>     Attrib V11    -0.13965266386622813
#>     Attrib V12    0.1921563106762388
#>     Attrib V13    -0.2037472822258781
#>     Attrib V14    0.1474305806551821
#>     Attrib V15    0.18933089343452217
#>     Attrib V16    -0.05357631147754729
#>     Attrib V17    0.044340118279103675
#>     Attrib V18    0.10865836731727961
#>     Attrib V19    -0.16591071885454756
#>     Attrib V2    0.12007344480966436
#>     Attrib V20    0.30547523068580507
#>     Attrib V21    0.48824562497051327
#>     Attrib V22    0.2838216492169123
#>     Attrib V23    -0.08189910229681505
#>     Attrib V24    0.08449206162237433
#>     Attrib V25    -0.027365756134551666
#>     Attrib V26    -0.7316137432777152
#>     Attrib V27    -0.823253857711596
#>     Attrib V28    -0.13142470000601394
#>     Attrib V29    -0.09398606697543083
#>     Attrib V3    0.030283156744742416
#>     Attrib V30    -0.03466227684136234
#>     Attrib V31    -0.6375647847514838
#>     Attrib V32    0.05988007698404693
#>     Attrib V33    0.3972196124287472
#>     Attrib V34    -0.2783141665166652
#>     Attrib V35    -0.1077709757298349
#>     Attrib V36    -0.5090728757824746
#>     Attrib V37    -0.6908663352468286
#>     Attrib V38    0.004884354786753099
#>     Attrib V39    0.20742726175584936
#>     Attrib V4    0.3094345190992695
#>     Attrib V40    -0.1725572605979556
#>     Attrib V41    -0.07349888674393038
#>     Attrib V42    0.12746578800324926
#>     Attrib V43    0.26526620030217435
#>     Attrib V44    0.17158938097161852
#>     Attrib V45    0.12575829117574477
#>     Attrib V46    0.02120895746707299
#>     Attrib V47    -0.11588895152741376
#>     Attrib V48    0.03554836777761138
#>     Attrib V49    0.27673980892200223
#>     Attrib V5    -0.22925453865386047
#>     Attrib V50    -0.33701387021657364
#>     Attrib V51    0.06057936355462405
#>     Attrib V52    0.0769646052589344
#>     Attrib V53    0.46379649143937873
#>     Attrib V54    0.32466479967025047
#>     Attrib V55    -0.2508642026978392
#>     Attrib V56    0.0967130969277886
#>     Attrib V57    0.3655681386452011
#>     Attrib V58    0.320248666495631
#>     Attrib V59    0.5163366469271777
#>     Attrib V6    -0.2206051513040315
#>     Attrib V60    0.308483322281136
#>     Attrib V7    -0.045354442299213295
#>     Attrib V8    -0.10661178911657014
#>     Attrib V9    0.2547488879310672
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.13697860051818014
#>     Attrib V1    0.17768582551296402
#>     Attrib V10    0.09490778300878724
#>     Attrib V11    0.020660084642372345
#>     Attrib V12    0.0942217312091817
#>     Attrib V13    0.015697562267731262
#>     Attrib V14    0.04033807055715584
#>     Attrib V15    0.06934091862567694
#>     Attrib V16    -0.008950021682174755
#>     Attrib V17    0.018880529152495464
#>     Attrib V18    -0.03072285299850348
#>     Attrib V19    -0.1059668178917485
#>     Attrib V2    0.14795367789988553
#>     Attrib V20    -0.0014108332209214422
#>     Attrib V21    0.028986215277214088
#>     Attrib V22    -0.03472107563019403
#>     Attrib V23    -0.0461444945372017
#>     Attrib V24    -0.053194080087215205
#>     Attrib V25    0.004092623875543451
#>     Attrib V26    -0.04281208969604822
#>     Attrib V27    -0.06422117138275246
#>     Attrib V28    0.031351844060165376
#>     Attrib V29    -0.11572579371702438
#>     Attrib V3    0.10220865035766238
#>     Attrib V30    -0.02570337781152359
#>     Attrib V31    -0.0688861681017044
#>     Attrib V32    -0.040591684716334786
#>     Attrib V33    0.012129180367629893
#>     Attrib V34    0.005942960524565449
#>     Attrib V35    0.13477903063878904
#>     Attrib V36    0.016717185407875125
#>     Attrib V37    0.05602249261825691
#>     Attrib V38    0.066841714286344
#>     Attrib V39    0.1476322717139346
#>     Attrib V4    0.17416302284881738
#>     Attrib V40    0.03589854252465356
#>     Attrib V41    -0.004522558722494141
#>     Attrib V42    -0.004268601265804953
#>     Attrib V43    -0.02483376705003285
#>     Attrib V44    0.011428016602591302
#>     Attrib V45    0.028083960302043385
#>     Attrib V46    0.049690681882937605
#>     Attrib V47    0.014607664527784836
#>     Attrib V48    0.08159759693417547
#>     Attrib V49    0.05078973263939736
#>     Attrib V5    -0.01191041759347753
#>     Attrib V50    -0.00863938706706514
#>     Attrib V51    0.06965896833740855
#>     Attrib V52    0.08380110126250936
#>     Attrib V53    0.11529558928098235
#>     Attrib V54    0.1115111447703732
#>     Attrib V55    0.040194848916500464
#>     Attrib V56    0.1464608581284473
#>     Attrib V57    0.15695130982699254
#>     Attrib V58    0.13511888362935146
#>     Attrib V59    0.17456944992940468
#>     Attrib V6    -0.03376492937642687
#>     Attrib V60    0.1754098959937369
#>     Attrib V7    -0.12050271834912633
#>     Attrib V8    -0.047731920234437605
#>     Attrib V9    0.08108993738883441
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.21368414351594228
#>     Attrib V1    0.5679785858255548
#>     Attrib V10    -0.3044480892499912
#>     Attrib V11    -0.4419951654719344
#>     Attrib V12    -0.05347511251045465
#>     Attrib V13    -0.3205318664736172
#>     Attrib V14    0.272940112360872
#>     Attrib V15    0.4069384784230152
#>     Attrib V16    0.04963758317075313
#>     Attrib V17    0.08965809434817397
#>     Attrib V18    0.04820894194228683
#>     Attrib V19    -0.21458193656338273
#>     Attrib V2    0.2586235834141073
#>     Attrib V20    0.4531024977902545
#>     Attrib V21    0.6584874334554263
#>     Attrib V22    0.30592208879126276
#>     Attrib V23    -0.1917555878870698
#>     Attrib V24    -0.0641406722332786
#>     Attrib V25    -0.36366233661684777
#>     Attrib V26    -1.1700493821966653
#>     Attrib V27    -1.3673233761076784
#>     Attrib V28    -0.43864879801948153
#>     Attrib V29    -0.23887658788686095
#>     Attrib V3    -0.0015199955382623974
#>     Attrib V30    -0.06422484543787879
#>     Attrib V31    -0.7802281319301969
#>     Attrib V32    0.1285693120754592
#>     Attrib V33    0.6409971051908291
#>     Attrib V34    -0.3126031289888499
#>     Attrib V35    -0.24818345473649694
#>     Attrib V36    -0.7045887344300394
#>     Attrib V37    -0.9910427993594852
#>     Attrib V38    0.047308288316642626
#>     Attrib V39    0.21156515211763546
#>     Attrib V4    0.4878667797172202
#>     Attrib V40    -0.326062889861294
#>     Attrib V41    -0.2912458171387397
#>     Attrib V42    0.26032150081868577
#>     Attrib V43    0.44980662011989136
#>     Attrib V44    0.38683315060129314
#>     Attrib V45    0.06729396006542722
#>     Attrib V46    -0.0019389288765603108
#>     Attrib V47    -0.2679040957475732
#>     Attrib V48    -0.03552115900897839
#>     Attrib V49    0.2989559159033536
#>     Attrib V5    -0.30389173741539954
#>     Attrib V50    -0.42319074784441235
#>     Attrib V51    -0.12721539757143774
#>     Attrib V52    -0.016292958410070744
#>     Attrib V53    0.705727269943893
#>     Attrib V54    0.4910673124528259
#>     Attrib V55    -0.37308356881185684
#>     Attrib V56    0.10616275983503637
#>     Attrib V57    0.5886773337895126
#>     Attrib V58    0.43426500989226235
#>     Attrib V59    0.7739402040232788
#>     Attrib V6    -0.39049724745460784
#>     Attrib V60    0.4279843782612127
#>     Attrib V7    -0.05329564792692707
#>     Attrib V8    -0.21030963556830845
#>     Attrib V9    0.18435620526972704
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.10955916182460089
#>     Attrib V1    0.4290001597345389
#>     Attrib V10    -0.20814376834077086
#>     Attrib V11    -0.2961503014484059
#>     Attrib V12    -0.01906097682077905
#>     Attrib V13    -0.2729105492269706
#>     Attrib V14    0.21233260242161428
#>     Attrib V15    0.27162721835454545
#>     Attrib V16    0.06272435101234389
#>     Attrib V17    0.02982349657882358
#>     Attrib V18    0.1026096450380737
#>     Attrib V19    -0.2331856768971959
#>     Attrib V2    0.16162685179408512
#>     Attrib V20    0.27953646066925736
#>     Attrib V21    0.48653051636462086
#>     Attrib V22    0.1957977815380312
#>     Attrib V23    -0.11406647517096798
#>     Attrib V24    -0.16296088510728582
#>     Attrib V25    -0.3788654017124691
#>     Attrib V26    -0.8445855412552945
#>     Attrib V27    -0.7638803614352286
#>     Attrib V28    -0.03734354330591336
#>     Attrib V29    0.016390949315043982
#>     Attrib V3    0.09093910063549901
#>     Attrib V30    0.10411701121565567
#>     Attrib V31    -0.6069650377100456
#>     Attrib V32    -0.025912664165488163
#>     Attrib V33    0.3284728252183921
#>     Attrib V34    -0.2870205859503666
#>     Attrib V35    -0.1742671041370955
#>     Attrib V36    -0.41395274775428664
#>     Attrib V37    -0.5795085758394335
#>     Attrib V38    0.03245895820262912
#>     Attrib V39    0.2092337528444156
#>     Attrib V4    0.33710917473058005
#>     Attrib V40    -0.21218389901511767
#>     Attrib V41    -0.16815048042637026
#>     Attrib V42    0.16975431761746843
#>     Attrib V43    0.19387868032084443
#>     Attrib V44    0.27642445323110143
#>     Attrib V45    0.18257047428091305
#>     Attrib V46    0.08138828595909016
#>     Attrib V47    -0.13045169293710918
#>     Attrib V48    -0.03227546980923258
#>     Attrib V49    0.2507949100418782
#>     Attrib V5    -0.16130254504883645
#>     Attrib V50    -0.31598404804191416
#>     Attrib V51    -0.024690454997219953
#>     Attrib V52    0.04045995602802114
#>     Attrib V53    0.3835971188900986
#>     Attrib V54    0.19345166938609873
#>     Attrib V55    -0.2814028260700437
#>     Attrib V56    0.07128778088961789
#>     Attrib V57    0.429855803842437
#>     Attrib V58    0.3472245172077649
#>     Attrib V59    0.4787163061860567
#>     Attrib V6    -0.2502368036713935
#>     Attrib V60    0.26413600276132254
#>     Attrib V7    -0.1396816989700087
#>     Attrib V8    -0.10716734494387543
#>     Attrib V9    0.18584541418106723
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
#> 0.08695652 
```
