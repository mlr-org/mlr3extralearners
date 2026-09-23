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
#>     Threshold    -0.4854578281658218
#>     Node 2    2.2267242082871292
#>     Node 3    1.6116974854798507
#>     Node 4    1.281833993850019
#>     Node 5    -2.133284299378483
#>     Node 6    0.5488315216522286
#>     Node 7    3.2444762693933957
#>     Node 8    0.7385166419503632
#>     Node 9    3.296817642224101
#>     Node 10    -2.310759693893213
#>     Node 11    1.3554897273351338
#>     Node 12    1.7479974477580256
#>     Node 13    0.36086960345538593
#>     Node 14    1.4226675714357535
#>     Node 15    -1.875487477998723
#>     Node 16    -0.6419280753888478
#>     Node 17    0.028721867253674687
#>     Node 18    0.19756311882761
#>     Node 19    2.4641909194937335
#>     Node 20    1.8636542439609154
#>     Node 21    -1.7958495130478025
#>     Node 22    0.5669614286028799
#>     Node 23    0.8356201967134528
#>     Node 24    -0.9311646668453585
#>     Node 25    5.582732464752737
#>     Node 26    -0.48700924417984603
#>     Node 27    1.113656654359575
#>     Node 28    -2.3545512839353604
#>     Node 29    1.1366197571343317
#>     Node 30    0.13625595461115905
#>     Node 31    -0.31459059649588605
#>     Node 32    0.5310025614013597
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.5214425170629768
#>     Node 2    -2.2640034040783226
#>     Node 3    -1.5804911036866494
#>     Node 4    -1.2333613243829284
#>     Node 5    2.1560968274939367
#>     Node 6    -0.5234896551172579
#>     Node 7    -3.25060732109383
#>     Node 8    -0.7710217678883089
#>     Node 9    -3.306002367692981
#>     Node 10    2.2698454515954145
#>     Node 11    -1.3120843337499457
#>     Node 12    -1.8119252180215064
#>     Node 13    -0.3086989868673117
#>     Node 14    -1.3449274887690894
#>     Node 15    1.8645927679991003
#>     Node 16    0.6239699308339148
#>     Node 17    -0.0076298892787260274
#>     Node 18    -0.1642987174538805
#>     Node 19    -2.4810516702086165
#>     Node 20    -1.839834583568786
#>     Node 21    1.8498314523488506
#>     Node 22    -0.6176831723096183
#>     Node 23    -0.8741709851310542
#>     Node 24    0.9244484948420703
#>     Node 25    -5.587308408393177
#>     Node 26    0.39461415335273375
#>     Node 27    -1.1553699234309833
#>     Node 28    2.3176586800769425
#>     Node 29    -1.1618910444649526
#>     Node 30    -0.06792554833357507
#>     Node 31    0.35867120079224857
#>     Node 32    -0.5479799338673728
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.23501372511634516
#>     Attrib V1    0.8634140289534941
#>     Attrib V10    -0.3568901970484009
#>     Attrib V11    0.013197071397259827
#>     Attrib V12    -0.19303632103848806
#>     Attrib V13    2.925359109309549E-4
#>     Attrib V14    0.40864706196834905
#>     Attrib V15    0.5252080868978597
#>     Attrib V16    0.39534716526492303
#>     Attrib V17    0.46079779657610276
#>     Attrib V18    0.7623996715319845
#>     Attrib V19    0.5729417751399982
#>     Attrib V2    0.5863224182651395
#>     Attrib V20    1.1286787030523602
#>     Attrib V21    0.9244453125838965
#>     Attrib V22    0.3576653698855045
#>     Attrib V23    0.20731253219321535
#>     Attrib V24    0.3094790195935736
#>     Attrib V25    -0.15814468447853597
#>     Attrib V26    -0.6760512614196439
#>     Attrib V27    -0.981553382233625
#>     Attrib V28    -0.6107861712857983
#>     Attrib V29    -0.08391595455400452
#>     Attrib V3    0.5103887157206054
#>     Attrib V30    -0.2671379273351553
#>     Attrib V31    -1.4222844669879666
#>     Attrib V32    -0.37657097137725054
#>     Attrib V33    0.21219124238332682
#>     Attrib V34    0.26485409018396616
#>     Attrib V35    0.3579761182174307
#>     Attrib V36    -0.1499147853975929
#>     Attrib V37    -0.343410764721393
#>     Attrib V38    0.17655526681432762
#>     Attrib V39    0.5650565453768738
#>     Attrib V4    -0.024872312571177228
#>     Attrib V40    0.21635489001582636
#>     Attrib V41    -0.013171522200387621
#>     Attrib V42    0.18029285201873574
#>     Attrib V43    0.08750665915075158
#>     Attrib V44    0.21983074677569597
#>     Attrib V45    0.30178200553418044
#>     Attrib V46    0.19393835425531758
#>     Attrib V47    -0.14370568644133697
#>     Attrib V48    0.1727334792550404
#>     Attrib V49    0.31184724806021813
#>     Attrib V5    -0.22230478312502194
#>     Attrib V50    -0.3484377416316916
#>     Attrib V51    0.19802436779608737
#>     Attrib V52    0.3711341840601124
#>     Attrib V53    0.7251962583843835
#>     Attrib V54    0.6296216166348717
#>     Attrib V55    0.25486999600244814
#>     Attrib V56    0.851655356606966
#>     Attrib V57    -0.15924936515246718
#>     Attrib V58    0.7632615824630211
#>     Attrib V59    0.523351010936897
#>     Attrib V6    -0.11943859774239658
#>     Attrib V60    0.1054563530446945
#>     Attrib V7    -0.14924679211113737
#>     Attrib V8    -0.23801161057920925
#>     Attrib V9    -0.05061690643276189
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.1989047385653835
#>     Attrib V1    0.6537844129848001
#>     Attrib V10    -0.28202904731054934
#>     Attrib V11    -0.001552367002063132
#>     Attrib V12    -0.11247715304309304
#>     Attrib V13    0.033736265923102735
#>     Attrib V14    0.3158929955257147
#>     Attrib V15    0.4653638077933406
#>     Attrib V16    0.29612798386493444
#>     Attrib V17    0.3588696861588566
#>     Attrib V18    0.5233717229457265
#>     Attrib V19    0.44263395637677316
#>     Attrib V2    0.4650960456027193
#>     Attrib V20    0.8058417868037615
#>     Attrib V21    0.6208568298974955
#>     Attrib V22    0.27928863894958955
#>     Attrib V23    0.14934249496299482
#>     Attrib V24    0.21496494386081305
#>     Attrib V25    -0.07896855067386273
#>     Attrib V26    -0.5008487807549581
#>     Attrib V27    -0.7948060016056233
#>     Attrib V28    -0.5703141152247152
#>     Attrib V29    -0.20901435338700744
#>     Attrib V3    0.3777389519602214
#>     Attrib V30    -0.2201560651671385
#>     Attrib V31    -1.0274830450130703
#>     Attrib V32    -0.233132103734102
#>     Attrib V33    0.20443791532696026
#>     Attrib V34    0.1881249718985141
#>     Attrib V35    0.3221094312208152
#>     Attrib V36    -0.0728486686838634
#>     Attrib V37    -0.24905830186073957
#>     Attrib V38    0.07623961859802664
#>     Attrib V39    0.4258773951609395
#>     Attrib V4    0.026890275808295387
#>     Attrib V40    0.1306531971419024
#>     Attrib V41    -0.04439177677546462
#>     Attrib V42    0.06592240693590476
#>     Attrib V43    0.005331989908431658
#>     Attrib V44    0.14802164692828132
#>     Attrib V45    0.21509106317786444
#>     Attrib V46    0.14298502543699076
#>     Attrib V47    -0.07153066098801815
#>     Attrib V48    0.09496323282923502
#>     Attrib V49    0.2214984557847995
#>     Attrib V5    -0.17543399062151535
#>     Attrib V50    -0.25615651657302163
#>     Attrib V51    0.15257329952547008
#>     Attrib V52    0.30226817008369666
#>     Attrib V53    0.492877182129214
#>     Attrib V54    0.5300975260841576
#>     Attrib V55    0.3026418067304295
#>     Attrib V56    0.6810191845725412
#>     Attrib V57    -0.05899379190426923
#>     Attrib V58    0.6361619055474922
#>     Attrib V59    0.4101712824678062
#>     Attrib V6    -0.10989496816907808
#>     Attrib V60    0.08378357979317326
#>     Attrib V7    -0.15545135141662758
#>     Attrib V8    -0.18319039487374314
#>     Attrib V9    -0.05321593973366515
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.19624930943856617
#>     Attrib V1    0.46686172071962584
#>     Attrib V10    -0.20315487054685377
#>     Attrib V11    0.059821752975026586
#>     Attrib V12    -0.12703081467735286
#>     Attrib V13    -0.025423989141983606
#>     Attrib V14    0.21670276825514234
#>     Attrib V15    0.32095741738899186
#>     Attrib V16    0.244496376839161
#>     Attrib V17    0.3253777022442589
#>     Attrib V18    0.4516880648538313
#>     Attrib V19    0.3154111668317801
#>     Attrib V2    0.2759317216520726
#>     Attrib V20    0.6524372667048453
#>     Attrib V21    0.5943038738590236
#>     Attrib V22    0.2246204482374815
#>     Attrib V23    0.19419047999310554
#>     Attrib V24    0.1963320531358015
#>     Attrib V25    -0.1108069091455422
#>     Attrib V26    -0.4265103001979254
#>     Attrib V27    -0.6571964387151001
#>     Attrib V28    -0.32756848237746156
#>     Attrib V29    -0.009851651418238249
#>     Attrib V3    0.2942603220829266
#>     Attrib V30    -0.1421521359014755
#>     Attrib V31    -0.9361331627379823
#>     Attrib V32    -0.17859968209109395
#>     Attrib V33    0.2046480393452283
#>     Attrib V34    0.18435497283778132
#>     Attrib V35    0.26402557847653074
#>     Attrib V36    -0.08965600603682101
#>     Attrib V37    -0.2685098882695824
#>     Attrib V38    0.018544939113206288
#>     Attrib V39    0.3095665132377422
#>     Attrib V4    0.04857463219181139
#>     Attrib V40    0.05161914056087583
#>     Attrib V41    -0.0350422314025746
#>     Attrib V42    0.08088718149037787
#>     Attrib V43    -0.039443451656441336
#>     Attrib V44    0.1446967997347099
#>     Attrib V45    0.2688814079414985
#>     Attrib V46    0.1019936476602567
#>     Attrib V47    -0.10222030665005738
#>     Attrib V48    0.15615921796077958
#>     Attrib V49    0.2784024504592696
#>     Attrib V5    -0.10812176715936266
#>     Attrib V50    -0.2772460630087734
#>     Attrib V51    0.22581156322274923
#>     Attrib V52    0.2733998306889376
#>     Attrib V53    0.45063106778382106
#>     Attrib V54    0.3013862198771904
#>     Attrib V55    0.1440419797425261
#>     Attrib V56    0.5411052125007838
#>     Attrib V57    -0.06879462665403525
#>     Attrib V58    0.5006989415324226
#>     Attrib V59    0.3353408993105021
#>     Attrib V6    -0.148409465011393
#>     Attrib V60    0.040037938846976324
#>     Attrib V7    -0.17552451908358402
#>     Attrib V8    -0.1862474639636681
#>     Attrib V9    0.08173757475913479
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.4908741696315804
#>     Attrib V1    -0.4094308921159221
#>     Attrib V10    -0.2412234434812302
#>     Attrib V11    -0.809365156102572
#>     Attrib V12    -0.5092750859092336
#>     Attrib V13    -0.02265447604956299
#>     Attrib V14    0.502111736483217
#>     Attrib V15    0.3551769798036637
#>     Attrib V16    0.21128778591387226
#>     Attrib V17    0.12505691404425076
#>     Attrib V18    -0.16688761934953114
#>     Attrib V19    0.096785426965806
#>     Attrib V2    0.03683019283951441
#>     Attrib V20    -0.4924325083999716
#>     Attrib V21    -0.3209166451610051
#>     Attrib V22    -0.07125774835496033
#>     Attrib V23    -0.49999633445827685
#>     Attrib V24    -0.6343942519365282
#>     Attrib V25    0.11223946121003335
#>     Attrib V26    0.3305092109007717
#>     Attrib V27    0.13399606985023818
#>     Attrib V28    -0.5889621680142942
#>     Attrib V29    -0.5742060437544955
#>     Attrib V3    -0.2712557596418559
#>     Attrib V30    -0.3326012743915212
#>     Attrib V31    1.4393447078476869
#>     Attrib V32    -0.05158603261512188
#>     Attrib V33    -0.0932582798210226
#>     Attrib V34    -0.08957084709187782
#>     Attrib V35    -0.3306577862941188
#>     Attrib V36    0.5837843886849639
#>     Attrib V37    0.5306624433663645
#>     Attrib V38    -0.20929401921842417
#>     Attrib V39    -0.543246439534177
#>     Attrib V4    0.11469597400539185
#>     Attrib V40    -0.26088835273548167
#>     Attrib V41    -0.6139662537125496
#>     Attrib V42    0.21707604726390411
#>     Attrib V43    0.27734117640817285
#>     Attrib V44    -0.23233940929016558
#>     Attrib V45    -0.5736889794492376
#>     Attrib V46    -0.31123684919168326
#>     Attrib V47    0.25635746309485935
#>     Attrib V48    -0.157913852643102
#>     Attrib V49    -0.7720893078719594
#>     Attrib V5    0.3877437717560493
#>     Attrib V50    1.0655686911421924
#>     Attrib V51    -0.38618238773461555
#>     Attrib V52    -0.7631103255463504
#>     Attrib V53    -0.7403880278168157
#>     Attrib V54    -0.019582697982039578
#>     Attrib V55    0.23871876139064846
#>     Attrib V56    -0.11971127791069432
#>     Attrib V57    0.7522367273585808
#>     Attrib V58    -0.8170770367690247
#>     Attrib V59    -0.0994976474486342
#>     Attrib V6    0.43139988465025264
#>     Attrib V60    0.7464549994671473
#>     Attrib V7    0.6972611812596871
#>     Attrib V8    0.3459400601727223
#>     Attrib V9    -0.7832189947890145
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.10794299723493857
#>     Attrib V1    0.28686135887287395
#>     Attrib V10    -0.11815493989718405
#>     Attrib V11    0.05574413989721831
#>     Attrib V12    0.04093847416299074
#>     Attrib V13    -0.027113369859548642
#>     Attrib V14    0.09823595091093107
#>     Attrib V15    0.1382684070607214
#>     Attrib V16    0.1802501649956986
#>     Attrib V17    0.14669318677015394
#>     Attrib V18    0.27359100652602203
#>     Attrib V19    0.12198524708948352
#>     Attrib V2    0.1284789207119441
#>     Attrib V20    0.2962103166953479
#>     Attrib V21    0.24947098591380146
#>     Attrib V22    0.0649029152375184
#>     Attrib V23    0.0510169939900313
#>     Attrib V24    0.10078744073287642
#>     Attrib V25    0.01819240449641755
#>     Attrib V26    -0.1734581736364207
#>     Attrib V27    -0.26155724429420124
#>     Attrib V28    -0.225172750941354
#>     Attrib V29    -0.07831628738293457
#>     Attrib V3    0.14342833685013132
#>     Attrib V30    -0.1143092154225478
#>     Attrib V31    -0.49455372444735374
#>     Attrib V32    -0.0423814319777623
#>     Attrib V33    0.10534635289385752
#>     Attrib V34    0.07580852897876063
#>     Attrib V35    0.16770952248899068
#>     Attrib V36    -0.060174684978026645
#>     Attrib V37    -0.12217918004694603
#>     Attrib V38    -0.0035442134865061
#>     Attrib V39    0.11451669759181218
#>     Attrib V4    0.07994604360202592
#>     Attrib V40    -0.0015552808273764948
#>     Attrib V41    0.053594767244405386
#>     Attrib V42    0.04146601933881088
#>     Attrib V43    -0.022030537043841468
#>     Attrib V44    0.04260560655794814
#>     Attrib V45    0.08856802869309237
#>     Attrib V46    0.08269759169796895
#>     Attrib V47    -0.04364649369805262
#>     Attrib V48    0.021714857224511
#>     Attrib V49    0.0768483154803445
#>     Attrib V5    -0.03985355449921053
#>     Attrib V50    -0.10699630828003256
#>     Attrib V51    0.1340764797718092
#>     Attrib V52    0.143267952203515
#>     Attrib V53    0.26995457157857033
#>     Attrib V54    0.18114997808292127
#>     Attrib V55    0.07652583375341206
#>     Attrib V56    0.276770592664087
#>     Attrib V57    0.01088164824072836
#>     Attrib V58    0.27282103747922587
#>     Attrib V59    0.23155501604927622
#>     Attrib V6    -0.022272570074499613
#>     Attrib V60    0.12549826248936094
#>     Attrib V7    -0.10292125711643274
#>     Attrib V8    -0.05636666465255588
#>     Attrib V9    0.09080827701746456
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.14707786255847277
#>     Attrib V1    0.24390084728586284
#>     Attrib V10    1.1410117725065632
#>     Attrib V11    1.1676345307366258
#>     Attrib V12    0.5798565850822515
#>     Attrib V13    -0.46434907756292115
#>     Attrib V14    -1.1068833475469142
#>     Attrib V15    -0.6304340332645973
#>     Attrib V16    -0.2459033347767559
#>     Attrib V17    -0.33184087137374746
#>     Attrib V18    -0.25219277211487295
#>     Attrib V19    -0.6149005743355674
#>     Attrib V2    -0.15831750181464452
#>     Attrib V20    -0.23815416464921998
#>     Attrib V21    -0.013297948049427888
#>     Attrib V22    0.11620346367893936
#>     Attrib V23    0.7067822959552392
#>     Attrib V24    0.23643358447473206
#>     Attrib V25    -0.48997978623983496
#>     Attrib V26    0.09317139435309986
#>     Attrib V27    0.8419509027621294
#>     Attrib V28    1.5757524548050215
#>     Attrib V29    1.2845893783475921
#>     Attrib V3    0.21711963935058448
#>     Attrib V30    0.7482485459119738
#>     Attrib V31    -1.157304597780545
#>     Attrib V32    -0.10603328290165122
#>     Attrib V33    -0.43709486496117295
#>     Attrib V34    -0.35940859501036404
#>     Attrib V35    0.08137276538370837
#>     Attrib V36    -0.8362891460053997
#>     Attrib V37    -0.3467711874659618
#>     Attrib V38    -0.22900424428642419
#>     Attrib V39    -0.23746857271910637
#>     Attrib V4    -0.1070509314353412
#>     Attrib V40    0.14498910695719888
#>     Attrib V41    1.2257642812393856
#>     Attrib V42    -0.33493138919573107
#>     Attrib V43    -0.4713362686786448
#>     Attrib V44    0.3677473378898035
#>     Attrib V45    0.7969465883457375
#>     Attrib V46    0.9701553479682699
#>     Attrib V47    0.5363224963541524
#>     Attrib V48    0.23023254806082408
#>     Attrib V49    0.790829640951916
#>     Attrib V5    0.10810877631330147
#>     Attrib V50    -0.23150875406597565
#>     Attrib V51    1.2134368703538905
#>     Attrib V52    1.3101676591308948
#>     Attrib V53    0.6438895842143222
#>     Attrib V54    0.11979178715549413
#>     Attrib V55    -0.41502815311098984
#>     Attrib V56    -0.7491972176250941
#>     Attrib V57    -0.8876610103148347
#>     Attrib V58    0.4636552699744269
#>     Attrib V59    -0.09771387203116597
#>     Attrib V6    0.03806835514102322
#>     Attrib V60    -0.24510910315178422
#>     Attrib V7    -0.5445676358399246
#>     Attrib V8    -0.23810153926113994
#>     Attrib V9    1.5625689888352408
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.060714289253111786
#>     Attrib V1    0.336119595957985
#>     Attrib V10    -0.053718207700782006
#>     Attrib V11    0.14908688116832217
#>     Attrib V12    -0.026602434680826497
#>     Attrib V13    -0.02637410469786044
#>     Attrib V14    0.02555424193750222
#>     Attrib V15    0.12381840979749369
#>     Attrib V16    0.1742125315337081
#>     Attrib V17    0.1777955982629129
#>     Attrib V18    0.24409672200584756
#>     Attrib V19    0.17129392533155985
#>     Attrib V2    0.15367538463249197
#>     Attrib V20    0.35348820409535836
#>     Attrib V21    0.32368405901269476
#>     Attrib V22    0.09969647702398877
#>     Attrib V23    0.07965791404995791
#>     Attrib V24    0.13573494770864275
#>     Attrib V25    -0.05631015016803141
#>     Attrib V26    -0.21787070067507433
#>     Attrib V27    -0.34942149959353
#>     Attrib V28    -0.16288330427900308
#>     Attrib V29    0.01664290165443223
#>     Attrib V3    0.14741436547818038
#>     Attrib V30    -0.04998429471038177
#>     Attrib V31    -0.6640298367994353
#>     Attrib V32    -0.09105318217015675
#>     Attrib V33    0.11554712734820202
#>     Attrib V34    0.09460158944820136
#>     Attrib V35    0.1754634643722667
#>     Attrib V36    -0.03322885477113913
#>     Attrib V37    -0.19402186509913721
#>     Attrib V38    0.08242944730795915
#>     Attrib V39    0.17459207670558843
#>     Attrib V4    0.10371524987818963
#>     Attrib V40    -0.039840420649361254
#>     Attrib V41    -0.0442368095041108
#>     Attrib V42    -0.10858840274423216
#>     Attrib V43    -0.06749727338262715
#>     Attrib V44    0.1188007612809376
#>     Attrib V45    0.17809998691391207
#>     Attrib V46    0.12460130583406866
#>     Attrib V47    -0.02362459764552646
#>     Attrib V48    0.16938315697083753
#>     Attrib V49    0.21383479630267965
#>     Attrib V5    -0.10770034841188154
#>     Attrib V50    -0.23632991914353918
#>     Attrib V51    0.1684528464356946
#>     Attrib V52    0.20407417226341698
#>     Attrib V53    0.2979557183670642
#>     Attrib V54    0.24584548165683856
#>     Attrib V55    0.07833788504776751
#>     Attrib V56    0.2748628630421041
#>     Attrib V57    0.012952240090798376
#>     Attrib V58    0.32136498433291455
#>     Attrib V59    0.266317608477485
#>     Attrib V6    -0.16368858468062508
#>     Attrib V60    0.08858854899092945
#>     Attrib V7    -0.1821071927338751
#>     Attrib V8    -0.1858236705612728
#>     Attrib V9    0.0990528668430212
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    -0.03689719685280993
#>     Attrib V1    -0.19173030895491439
#>     Attrib V10    0.9919105671161195
#>     Attrib V11    1.1050292466227938
#>     Attrib V12    0.8095319890012697
#>     Attrib V13    -0.25659761356748617
#>     Attrib V14    -1.1226026845611656
#>     Attrib V15    -0.8505595992267664
#>     Attrib V16    -0.26288176206165104
#>     Attrib V17    -0.15827679740323786
#>     Attrib V18    0.11819289590334621
#>     Attrib V19    -0.2064172097669271
#>     Attrib V2    -0.4763755669399703
#>     Attrib V20    -0.05801737170548209
#>     Attrib V21    0.060585045301347965
#>     Attrib V22    0.35904590141111553
#>     Attrib V23    1.1309855004501415
#>     Attrib V24    0.5737821424110735
#>     Attrib V25    0.026702284250515955
#>     Attrib V26    0.2645205881206814
#>     Attrib V27    0.8337881037240107
#>     Attrib V28    1.46463542518908
#>     Attrib V29    0.9415895297644057
#>     Attrib V3    0.03512592072787673
#>     Attrib V30    0.5884073268658055
#>     Attrib V31    -1.0481384829468359
#>     Attrib V32    0.19611022110404921
#>     Attrib V33    -0.07945922219497085
#>     Attrib V34    -0.026142186400188717
#>     Attrib V35    0.16475392951111528
#>     Attrib V36    -0.8316245304145673
#>     Attrib V37    -0.6390023348458908
#>     Attrib V38    -0.4542268514438248
#>     Attrib V39    -0.1753531177460446
#>     Attrib V4    -0.00608271129566487
#>     Attrib V40    0.33442002623957945
#>     Attrib V41    1.6133971365427993
#>     Attrib V42    0.03972928300691337
#>     Attrib V43    -0.2667302342379808
#>     Attrib V44    0.3735358582994402
#>     Attrib V45    0.6436650928502495
#>     Attrib V46    0.8469508697540504
#>     Attrib V47    0.5830107246665965
#>     Attrib V48    0.3624298317816402
#>     Attrib V49    1.0536811208563235
#>     Attrib V5    0.1135554958235687
#>     Attrib V50    -0.3583461018897761
#>     Attrib V51    1.3027846726391843
#>     Attrib V52    1.4166384114840522
#>     Attrib V53    0.7742121293698329
#>     Attrib V54    -0.12888468109423237
#>     Attrib V55    -0.5033465359476318
#>     Attrib V56    -0.7046419372908264
#>     Attrib V57    -1.2070208837022531
#>     Attrib V58    0.3944933457551781
#>     Attrib V59    -0.05565223561741598
#>     Attrib V6    -0.04286184313175571
#>     Attrib V60    -0.32694675745281926
#>     Attrib V7    -0.8409157259814695
#>     Attrib V8    -0.1304424574311497
#>     Attrib V9    1.4668257540031093
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.19492850686809632
#>     Attrib V1    0.057327239421670374
#>     Attrib V10    -0.4931184986675794
#>     Attrib V11    -0.860319905984093
#>     Attrib V12    -0.49479537081855485
#>     Attrib V13    0.12443084704752656
#>     Attrib V14    0.6951106352480128
#>     Attrib V15    0.49868615326744736
#>     Attrib V16    0.24099711993575712
#>     Attrib V17    0.08158876534268662
#>     Attrib V18    -0.18611292169381322
#>     Attrib V19    0.18477000967201307
#>     Attrib V2    0.2518773368741283
#>     Attrib V20    -0.07198289399439078
#>     Attrib V21    -0.02439246742840575
#>     Attrib V22    -0.16401856523892966
#>     Attrib V23    -0.805643467699577
#>     Attrib V24    -0.5926467732631057
#>     Attrib V25    -0.014191262736214422
#>     Attrib V26    0.018297477932740166
#>     Attrib V27    -0.3471893394182282
#>     Attrib V28    -1.0538403309954043
#>     Attrib V29    -0.9204380404665194
#>     Attrib V3    -0.11337341974756009
#>     Attrib V30    -0.5375482459773242
#>     Attrib V31    1.1322791004301502
#>     Attrib V32    -0.23941748031692597
#>     Attrib V33    -0.21944942378975854
#>     Attrib V34    -0.019338487992131396
#>     Attrib V35    -0.1067064194297887
#>     Attrib V36    0.7181941786145912
#>     Attrib V37    0.5415646583597719
#>     Attrib V38    0.2616320184376969
#>     Attrib V39    -0.06058947914863131
#>     Attrib V4    0.033664285224007086
#>     Attrib V40    -0.1632696931416868
#>     Attrib V41    -1.0609617666388624
#>     Attrib V42    -0.19475957744805744
#>     Attrib V43    0.14680778645627196
#>     Attrib V44    -0.3356445786141807
#>     Attrib V45    -0.4461368573798057
#>     Attrib V46    -0.4548974860815283
#>     Attrib V47    -0.09194542833059778
#>     Attrib V48    -0.3741059057072902
#>     Attrib V49    -0.8872014998293779
#>     Attrib V5    0.06983714707331645
#>     Attrib V50    0.7867986912892112
#>     Attrib V51    -0.8485558587276523
#>     Attrib V52    -1.1181176219269768
#>     Attrib V53    -0.6405269461179159
#>     Attrib V54    -0.03220154137346467
#>     Attrib V55    0.33781972298959106
#>     Attrib V56    0.25785666309639604
#>     Attrib V57    0.8981459168933711
#>     Attrib V58    -0.6640399957932579
#>     Attrib V59    -0.12539814995048532
#>     Attrib V6    0.20792356050608535
#>     Attrib V60    0.507988171201079
#>     Attrib V7    0.7866392011289186
#>     Attrib V8    0.1788021763858628
#>     Attrib V9    -1.025533903480098
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.18955257564056227
#>     Attrib V1    0.5313183133699548
#>     Attrib V10    -0.25700184433845386
#>     Attrib V11    0.04077025336748028
#>     Attrib V12    -0.05645511937173273
#>     Attrib V13    -0.039776293482417346
#>     Attrib V14    0.23948304268256157
#>     Attrib V15    0.33958080122824164
#>     Attrib V16    0.28161208010140726
#>     Attrib V17    0.3578692963902669
#>     Attrib V18    0.5027201737023241
#>     Attrib V19    0.3310154121608078
#>     Attrib V2    0.31703398923936565
#>     Attrib V20    0.7119440556447497
#>     Attrib V21    0.5248233922132156
#>     Attrib V22    0.17410994604072408
#>     Attrib V23    0.10733818993922939
#>     Attrib V24    0.17790149217734638
#>     Attrib V25    -0.055573777595683445
#>     Attrib V26    -0.45352621301138624
#>     Attrib V27    -0.6702146332796848
#>     Attrib V28    -0.46714123976257843
#>     Attrib V29    -0.15278827622095845
#>     Attrib V3    0.2481590275881513
#>     Attrib V30    -0.224181290061933
#>     Attrib V31    -0.9555928435070244
#>     Attrib V32    -0.23504645034346294
#>     Attrib V33    0.15246218657682054
#>     Attrib V34    0.23399312162194721
#>     Attrib V35    0.3308085684021937
#>     Attrib V36    -0.025863613886190562
#>     Attrib V37    -0.23385017505045627
#>     Attrib V38    0.13083908936637145
#>     Attrib V39    0.3325755798667877
#>     Attrib V4    0.025442110895903314
#>     Attrib V40    0.07185983578116201
#>     Attrib V41    -0.10029884378115372
#>     Attrib V42    0.02140821903491032
#>     Attrib V43    -0.015165731549749852
#>     Attrib V44    0.1386205496961674
#>     Attrib V45    0.23444447362744858
#>     Attrib V46    0.12095521228804701
#>     Attrib V47    -0.0564321775401768
#>     Attrib V48    0.1439698150425006
#>     Attrib V49    0.19463256173123894
#>     Attrib V5    -0.11600184919781992
#>     Attrib V50    -0.217210406313198
#>     Attrib V51    0.236874440180784
#>     Attrib V52    0.22345714081170165
#>     Attrib V53    0.44337327327063764
#>     Attrib V54    0.472540617995835
#>     Attrib V55    0.23787624958031026
#>     Attrib V56    0.5862596413645628
#>     Attrib V57    -0.017170691452398155
#>     Attrib V58    0.5327998102980028
#>     Attrib V59    0.3175489891164879
#>     Attrib V6    -0.07735916348421215
#>     Attrib V60    0.0971425265638796
#>     Attrib V7    -0.17171887808209238
#>     Attrib V8    -0.16534142383569314
#>     Attrib V9    0.0071457066156492876
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.13272900003918778
#>     Attrib V1    0.6618473336214179
#>     Attrib V10    -0.3515281882366887
#>     Attrib V11    0.07105946291907063
#>     Attrib V12    -0.19655042328058364
#>     Attrib V13    -0.03354159663816248
#>     Attrib V14    0.3011543482506271
#>     Attrib V15    0.4125638802147244
#>     Attrib V16    0.36369574814550015
#>     Attrib V17    0.38758756535192807
#>     Attrib V18    0.5907103481928316
#>     Attrib V19    0.5027268166240604
#>     Attrib V2    0.49838032475275035
#>     Attrib V20    0.8725872749907677
#>     Attrib V21    0.7065482941479818
#>     Attrib V22    0.33393209424761
#>     Attrib V23    0.22741051670407775
#>     Attrib V24    0.23723609461891568
#>     Attrib V25    -0.16073201840584386
#>     Attrib V26    -0.584910284881399
#>     Attrib V27    -0.7962870268562886
#>     Attrib V28    -0.5349048430848178
#>     Attrib V29    -0.04445304984952012
#>     Attrib V3    0.34376938989030675
#>     Attrib V30    -0.23595002753065494
#>     Attrib V31    -1.2308453372188615
#>     Attrib V32    -0.3370883573819364
#>     Attrib V33    0.23581237054374365
#>     Attrib V34    0.268152827800148
#>     Attrib V35    0.33394191283969826
#>     Attrib V36    -0.11352800078477712
#>     Attrib V37    -0.31275635021891507
#>     Attrib V38    0.12409781645253684
#>     Attrib V39    0.4019585351926586
#>     Attrib V4    0.06200308141752894
#>     Attrib V40    0.14524897379359472
#>     Attrib V41    -0.03669425221683434
#>     Attrib V42    0.0746240283210614
#>     Attrib V43    0.05227286046526435
#>     Attrib V44    0.11565874522937888
#>     Attrib V45    0.29151622391394694
#>     Attrib V46    0.23418009418396585
#>     Attrib V47    -0.11061361792085682
#>     Attrib V48    0.16659578267399472
#>     Attrib V49    0.24421110341107724
#>     Attrib V5    -0.17827398449816573
#>     Attrib V50    -0.3344812993412488
#>     Attrib V51    0.20610944549701105
#>     Attrib V52    0.3647640015860416
#>     Attrib V53    0.6178102661280988
#>     Attrib V54    0.5187927191398125
#>     Attrib V55    0.1975487377340051
#>     Attrib V56    0.7417886854904657
#>     Attrib V57    -0.05542805703584717
#>     Attrib V58    0.6895704215355806
#>     Attrib V59    0.46021639324909697
#>     Attrib V6    -0.12000534878353813
#>     Attrib V60    0.0870291177873795
#>     Attrib V7    -0.13476533729632312
#>     Attrib V8    -0.1952069361352717
#>     Attrib V9    0.00475589604755093
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.19394879642299445
#>     Attrib V1    0.17999431019569379
#>     Attrib V10    -0.04655321055959679
#>     Attrib V11    0.07554018004456424
#>     Attrib V12    0.026710052374447093
#>     Attrib V13    0.0576559189422731
#>     Attrib V14    0.06775006540314304
#>     Attrib V15    0.07112247920291727
#>     Attrib V16    0.05495005051354846
#>     Attrib V17    0.12396512119704567
#>     Attrib V18    0.1594067916751655
#>     Attrib V19    0.06713212068763523
#>     Attrib V2    0.05790116795443938
#>     Attrib V20    0.20359778995101604
#>     Attrib V21    0.13489920477528877
#>     Attrib V22    0.0070922548704854425
#>     Attrib V23    0.055214755243635394
#>     Attrib V24    0.04481241463319577
#>     Attrib V25    0.017493060954734876
#>     Attrib V26    -0.13895037383872128
#>     Attrib V27    -0.1339065306243521
#>     Attrib V28    -0.13524236397239114
#>     Attrib V29    -0.02616210625911223
#>     Attrib V3    0.15375056938772869
#>     Attrib V30    -0.06875865124598715
#>     Attrib V31    -0.38600623363108
#>     Attrib V32    -0.04416690697638231
#>     Attrib V33    0.03520294401393296
#>     Attrib V34    0.09655523841071928
#>     Attrib V35    0.10937235890663166
#>     Attrib V36    -0.021766433972817384
#>     Attrib V37    -0.04797496273803206
#>     Attrib V38    0.027892482323265952
#>     Attrib V39    0.13876535499009043
#>     Attrib V4    0.06702436896693344
#>     Attrib V40    0.038731461882893295
#>     Attrib V41    0.02361381893921026
#>     Attrib V42    0.007907592019499973
#>     Attrib V43    -0.048485588702747134
#>     Attrib V44    0.043131344088003544
#>     Attrib V45    0.04639269441249297
#>     Attrib V46    0.09987240723818691
#>     Attrib V47    0.03874135135905386
#>     Attrib V48    0.046373680081412474
#>     Attrib V49    0.11781796218366161
#>     Attrib V5    0.02057680197820824
#>     Attrib V50    -0.09955405926180423
#>     Attrib V51    0.10590201109471784
#>     Attrib V52    0.11687212300369967
#>     Attrib V53    0.17320375128158344
#>     Attrib V54    0.13286772576208444
#>     Attrib V55    0.06346690139829797
#>     Attrib V56    0.17028581304913074
#>     Attrib V57    0.029320491658605324
#>     Attrib V58    0.17257172682871713
#>     Attrib V59    0.178572318427703
#>     Attrib V6    -0.016744625065624307
#>     Attrib V60    0.1322998133286416
#>     Attrib V7    -0.05044755763251059
#>     Attrib V8    -0.09584405093294139
#>     Attrib V9    0.06637816741253905
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.16839691743191137
#>     Attrib V1    0.6287287931344412
#>     Attrib V10    -0.2564049023544444
#>     Attrib V11    0.0880281123977018
#>     Attrib V12    -0.03879583740419319
#>     Attrib V13    -0.00286121434455408
#>     Attrib V14    0.2413899983441414
#>     Attrib V15    0.40264707783924386
#>     Attrib V16    0.25047723635947083
#>     Attrib V17    0.3285255996835079
#>     Attrib V18    0.4805282620132238
#>     Attrib V19    0.31400264473000666
#>     Attrib V2    0.3857103109847316
#>     Attrib V20    0.6491392401663628
#>     Attrib V21    0.49760856223015026
#>     Attrib V22    0.16287289105970124
#>     Attrib V23    0.10958364859388071
#>     Attrib V24    0.14958151623887767
#>     Attrib V25    -0.0743636647482876
#>     Attrib V26    -0.3896787981094745
#>     Attrib V27    -0.7093638863871644
#>     Attrib V28    -0.5954488378420897
#>     Attrib V29    -0.23451854128349345
#>     Attrib V3    0.24144792803434012
#>     Attrib V30    -0.2574888475129144
#>     Attrib V31    -0.8688559291313638
#>     Attrib V32    -0.21958659987960422
#>     Attrib V33    0.15379741771920794
#>     Attrib V34    0.18105551836940706
#>     Attrib V35    0.3396724088363406
#>     Attrib V36    -0.040882992146405374
#>     Attrib V37    -0.1693913052704789
#>     Attrib V38    0.07928956205613051
#>     Attrib V39    0.36769125410979103
#>     Attrib V4    0.03482610322936654
#>     Attrib V40    0.07300834169552882
#>     Attrib V41    -0.1248735149828753
#>     Attrib V42    -0.06866063347583287
#>     Attrib V43    -0.03445782437895468
#>     Attrib V44    0.1356544942672257
#>     Attrib V45    0.1350315639751827
#>     Attrib V46    0.1469060028869593
#>     Attrib V47    -0.0977204483613552
#>     Attrib V48    0.14890741188688367
#>     Attrib V49    0.23941052071438465
#>     Attrib V5    -0.1686103901074552
#>     Attrib V50    -0.21327059229484893
#>     Attrib V51    0.1455010146633656
#>     Attrib V52    0.22022174475625916
#>     Attrib V53    0.41530677294583546
#>     Attrib V54    0.4983713484013524
#>     Attrib V55    0.328351890310717
#>     Attrib V56    0.6231523025487943
#>     Attrib V57    -5.228564195065554E-4
#>     Attrib V58    0.5534417430603666
#>     Attrib V59    0.3737204575336164
#>     Attrib V6    -0.09824240813860939
#>     Attrib V60    0.16297756704952365
#>     Attrib V7    -0.11718340963468427
#>     Attrib V8    -0.24239341405308043
#>     Attrib V9    -0.024384049098991608
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.14378054900301454
#>     Attrib V1    -0.4178520186665041
#>     Attrib V10    -0.04841682152071466
#>     Attrib V11    -0.6483424370061686
#>     Attrib V12    -0.22717301539009568
#>     Attrib V13    0.03603568800299146
#>     Attrib V14    0.3041437894711796
#>     Attrib V15    0.29502465515131254
#>     Attrib V16    0.13632753408373077
#>     Attrib V17    -0.07963488786721425
#>     Attrib V18    -0.33402537216827644
#>     Attrib V19    0.12041256851270424
#>     Attrib V2    -0.05267568637189063
#>     Attrib V20    -0.3724979153612917
#>     Attrib V21    -0.4901832108584322
#>     Attrib V22    -0.2896069801946239
#>     Attrib V23    -0.6069838054393026
#>     Attrib V24    -0.5736989757821278
#>     Attrib V25    -0.1272317819218441
#>     Attrib V26    0.3061464163894993
#>     Attrib V27    0.3012977532662882
#>     Attrib V28    -0.3438081375845958
#>     Attrib V29    -0.5289233595280263
#>     Attrib V3    -0.16460089106019307
#>     Attrib V30    -0.37952988575485663
#>     Attrib V31    1.3367645376603041
#>     Attrib V32    -0.07899468227735555
#>     Attrib V33    -0.26143848054452523
#>     Attrib V34    0.0036220077914857853
#>     Attrib V35    -0.194229413258361
#>     Attrib V36    0.4455707838352826
#>     Attrib V37    0.6522024311661845
#>     Attrib V38    -0.03283877545594592
#>     Attrib V39    -0.4272874866072364
#>     Attrib V4    0.0571214284645228
#>     Attrib V40    -0.17834136111111368
#>     Attrib V41    -0.4479847488090024
#>     Attrib V42    0.016934260446336235
#>     Attrib V43    0.17560866353683402
#>     Attrib V44    -0.18021091956974966
#>     Attrib V45    -0.2640222625818206
#>     Attrib V46    -0.16186260423064056
#>     Attrib V47    0.1796420335283379
#>     Attrib V48    -0.14634222338222178
#>     Attrib V49    -0.6162886257553605
#>     Attrib V5    0.4423155671415839
#>     Attrib V50    0.8932564969876022
#>     Attrib V51    -0.3827371887822235
#>     Attrib V52    -0.628796871990927
#>     Attrib V53    -0.48915025173824195
#>     Attrib V54    -0.13925490971048932
#>     Attrib V55    0.10610174943629869
#>     Attrib V56    -0.28104800221599174
#>     Attrib V57    0.5894695585004092
#>     Attrib V58    -0.8052097801018452
#>     Attrib V59    -0.3000036597366976
#>     Attrib V6    0.4103543358599519
#>     Attrib V60    0.32791271554251356
#>     Attrib V7    0.5459603351533676
#>     Attrib V8    0.19629428016049516
#>     Attrib V9    -0.5343842246870973
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.20489427256461124
#>     Attrib V1    -0.20918572830575416
#>     Attrib V10    -0.04339661914252865
#>     Attrib V11    -0.25710533564324234
#>     Attrib V12    -0.22190158032963034
#>     Attrib V13    -0.006429666661338594
#>     Attrib V14    0.11812650513645918
#>     Attrib V15    0.061930711936914226
#>     Attrib V16    0.12313579489369869
#>     Attrib V17    0.11289060315012533
#>     Attrib V18    1.7235206662297582E-4
#>     Attrib V19    0.04062353931745505
#>     Attrib V2    -0.056484353087528257
#>     Attrib V20    -0.22126361124309896
#>     Attrib V21    -0.15507010312854907
#>     Attrib V22    0.060812575187227
#>     Attrib V23    -0.04282433829339696
#>     Attrib V24    -0.06399744046635297
#>     Attrib V25    0.10050886008699005
#>     Attrib V26    0.07999686497900799
#>     Attrib V27    0.009910081368208977
#>     Attrib V28    -0.14866351367337693
#>     Attrib V29    -0.17749187110014414
#>     Attrib V3    -0.04606134158957541
#>     Attrib V30    -0.11311989935746256
#>     Attrib V31    0.36547331026434543
#>     Attrib V32    -0.03904185094115015
#>     Attrib V33    -0.0941062706979113
#>     Attrib V34    -0.05993606422875164
#>     Attrib V35    -0.11510821022206048
#>     Attrib V36    0.2610932561951182
#>     Attrib V37    0.2856880918470728
#>     Attrib V38    4.774729877429469E-4
#>     Attrib V39    -0.14895057495181568
#>     Attrib V4    0.10779190078405061
#>     Attrib V40    -0.05577034816869182
#>     Attrib V41    -0.12450896650877101
#>     Attrib V42    0.11629905487236343
#>     Attrib V43    0.08486061266451578
#>     Attrib V44    -0.0920246293967754
#>     Attrib V45    -0.14831690952815396
#>     Attrib V46    -0.10839260114513438
#>     Attrib V47    0.03164834007472054
#>     Attrib V48    -0.12474265866659523
#>     Attrib V49    -0.27028771244705685
#>     Attrib V5    0.14208557382621337
#>     Attrib V50    0.28185897291251294
#>     Attrib V51    -0.12540657861446305
#>     Attrib V52    -0.21954538365731457
#>     Attrib V53    -0.210682200906083
#>     Attrib V54    -0.051660570872326575
#>     Attrib V55    0.04638552464863989
#>     Attrib V56    -0.022686153159757538
#>     Attrib V57    0.3192346162744117
#>     Attrib V58    -0.13198022594778958
#>     Attrib V59    -0.061375506918734654
#>     Attrib V6    0.14152712291384395
#>     Attrib V60    0.20860551845823655
#>     Attrib V7    0.21298222335298214
#>     Attrib V8    0.17621708708035885
#>     Attrib V9    -0.1477048846825182
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.1262506674395817
#>     Attrib V1    0.10082497262047352
#>     Attrib V10    0.095163747846522
#>     Attrib V11    0.09546648035225024
#>     Attrib V12    0.01961922243596258
#>     Attrib V13    -0.024566619687154727
#>     Attrib V14    0.018804815315519918
#>     Attrib V15    0.10644240525694594
#>     Attrib V16    0.051683931087977704
#>     Attrib V17    0.043176438635073776
#>     Attrib V18    0.03522278873770365
#>     Attrib V19    0.032072248788280196
#>     Attrib V2    0.08926295556740196
#>     Attrib V20    -0.0065382456150430805
#>     Attrib V21    -0.03852445034396022
#>     Attrib V22    0.018597685416890598
#>     Attrib V23    -0.051887351718790074
#>     Attrib V24    -0.016788275736461307
#>     Attrib V25    -0.06468906858881582
#>     Attrib V26    -0.07921212569999404
#>     Attrib V27    -0.06936758196113028
#>     Attrib V28    -0.06269492198032289
#>     Attrib V29    -0.07904855047251373
#>     Attrib V3    0.06798877531466198
#>     Attrib V30    -0.01386355717439233
#>     Attrib V31    -0.06068235320725411
#>     Attrib V32    -0.03368889641957077
#>     Attrib V33    0.06575980456407461
#>     Attrib V34    0.016111656398520125
#>     Attrib V35    0.11797874158622816
#>     Attrib V36    0.02293017390406681
#>     Attrib V37    0.013813041743179221
#>     Attrib V38    0.0987972008658622
#>     Attrib V39    0.08686819603307652
#>     Attrib V4    0.07857825431693602
#>     Attrib V40    0.02194995128206865
#>     Attrib V41    0.09160424519453385
#>     Attrib V42    0.03753573614306197
#>     Attrib V43    0.08838438391410525
#>     Attrib V44    0.09321856259799129
#>     Attrib V45    0.10997501672696487
#>     Attrib V46    0.056199931409139335
#>     Attrib V47    0.023756408084496437
#>     Attrib V48    0.10175425980546544
#>     Attrib V49    0.03048645645632609
#>     Attrib V5    0.08184039340104064
#>     Attrib V50    0.03073614210542948
#>     Attrib V51    0.09845904439487099
#>     Attrib V52    0.06893336588706006
#>     Attrib V53    0.05301832910944147
#>     Attrib V54    0.07125121435822221
#>     Attrib V55    0.09576003203719993
#>     Attrib V56    0.10428812571327535
#>     Attrib V57    0.11946537955822525
#>     Attrib V58    0.05734716550165152
#>     Attrib V59    0.056175332050768294
#>     Attrib V6    0.04357246071918597
#>     Attrib V60    0.11167153450197624
#>     Attrib V7    -0.04435095042175039
#>     Attrib V8    0.06411963414995994
#>     Attrib V9    0.08774464778773995
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.20296623760107124
#>     Attrib V1    0.13804202599985008
#>     Attrib V10    0.046348433893359145
#>     Attrib V11    0.0830045813363682
#>     Attrib V12    0.02369553583837271
#>     Attrib V13    -0.003939977210371021
#>     Attrib V14    0.042854924929318985
#>     Attrib V15    0.035797747192173685
#>     Attrib V16    0.06109918314114526
#>     Attrib V17    0.030854672171852452
#>     Attrib V18    0.12351289509835078
#>     Attrib V19    -0.017295809594771932
#>     Attrib V2    0.06308300980574393
#>     Attrib V20    0.08758885002933385
#>     Attrib V21    0.05366024045141627
#>     Attrib V22    -0.029963063351189284
#>     Attrib V23    -0.025701677497010137
#>     Attrib V24    -0.04446856177854055
#>     Attrib V25    -0.020530631421752044
#>     Attrib V26    -0.04532856166085499
#>     Attrib V27    -0.08437564619399718
#>     Attrib V28    -0.07868526036422398
#>     Attrib V29    -0.05108043388195541
#>     Attrib V3    0.13970778013765908
#>     Attrib V30    -0.08734257711078693
#>     Attrib V31    -0.21931856415614712
#>     Attrib V32    -0.02799619093112822
#>     Attrib V33    0.03272264898984326
#>     Attrib V34    0.08244030956418663
#>     Attrib V35    0.08326333795915629
#>     Attrib V36    0.08490096549587275
#>     Attrib V37    -0.012776119579875933
#>     Attrib V38    0.027536881465360354
#>     Attrib V39    0.10442009361776425
#>     Attrib V4    0.03764238503245186
#>     Attrib V40    0.007759014793224832
#>     Attrib V41    -0.009476090232599686
#>     Attrib V42    0.002272563285772482
#>     Attrib V43    0.0015079549741397987
#>     Attrib V44    0.08810821742588092
#>     Attrib V45    0.03523695438267901
#>     Attrib V46    0.06540681807345035
#>     Attrib V47    0.08003964050196422
#>     Attrib V48    0.0758683578559565
#>     Attrib V49    0.10541763660214262
#>     Attrib V5    0.044013457428475754
#>     Attrib V50    -0.0507408954763334
#>     Attrib V51    0.16704701083071055
#>     Attrib V52    0.1109325362989827
#>     Attrib V53    0.12242083093089413
#>     Attrib V54    0.07508989024159293
#>     Attrib V55    0.0928807529003941
#>     Attrib V56    0.13486620627141072
#>     Attrib V57    0.008351725762502414
#>     Attrib V58    0.12967962443495892
#>     Attrib V59    0.12335815917583669
#>     Attrib V6    -0.02603423770985374
#>     Attrib V60    0.13050280147979265
#>     Attrib V7    -0.012477206246613927
#>     Attrib V8    0.019625272890855503
#>     Attrib V9    0.09761753771242061
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.05155066160579283
#>     Attrib V1    0.06908083956208438
#>     Attrib V10    0.8281835503299372
#>     Attrib V11    1.0304139182218146
#>     Attrib V12    0.8786123188889645
#>     Attrib V13    -0.18355251152541888
#>     Attrib V14    -0.840233007857956
#>     Attrib V15    -0.6351182968834574
#>     Attrib V16    -0.4533398371895906
#>     Attrib V17    -0.3898394088137153
#>     Attrib V18    -0.23501457781526783
#>     Attrib V19    -0.4568437588247937
#>     Attrib V2    -0.23778613282069191
#>     Attrib V20    -0.26484450821217004
#>     Attrib V21    -0.24900363864833935
#>     Attrib V22    0.035725752837538406
#>     Attrib V23    0.5910406344235986
#>     Attrib V24    0.3614094635525744
#>     Attrib V25    0.047302918506656605
#>     Attrib V26    0.348462681347317
#>     Attrib V27    0.7380893035220287
#>     Attrib V28    1.1353343698469562
#>     Attrib V29    0.7039508398062693
#>     Attrib V3    0.11864377528221594
#>     Attrib V30    0.49513929024717157
#>     Attrib V31    -0.7033123975626486
#>     Attrib V32    0.14168384040858026
#>     Attrib V33    -0.04426966485660869
#>     Attrib V34    0.026016591922381965
#>     Attrib V35    0.2888416547188615
#>     Attrib V36    -0.5574562392559939
#>     Attrib V37    -0.3479067223908279
#>     Attrib V38    -0.2321627720699046
#>     Attrib V39    -0.13547365728131144
#>     Attrib V4    0.03828230561266355
#>     Attrib V40    0.1780141735450046
#>     Attrib V41    1.0327812433829502
#>     Attrib V42    -0.10806480564015053
#>     Attrib V43    -0.2817458138320923
#>     Attrib V44    0.16924589914674223
#>     Attrib V45    0.5204325124792756
#>     Attrib V46    0.6558825744503491
#>     Attrib V47    0.3872271480398453
#>     Attrib V48    0.3884806804266014
#>     Attrib V49    0.8650120405353582
#>     Attrib V5    0.11252821571217825
#>     Attrib V50    -0.24874662241527565
#>     Attrib V51    1.0056080856666423
#>     Attrib V52    1.1035744450351728
#>     Attrib V53    0.553216046984459
#>     Attrib V54    0.12848662109423545
#>     Attrib V55    -0.1990649525330116
#>     Attrib V56    -0.5446245621915622
#>     Attrib V57    -0.6905826227625664
#>     Attrib V58    0.44267081356978133
#>     Attrib V59    0.01885933304389485
#>     Attrib V6    -0.09259101994328048
#>     Attrib V60    -0.22424090911397798
#>     Attrib V7    -0.707573687638741
#>     Attrib V8    -0.30392233215929615
#>     Attrib V9    1.134387695383204
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.14416712398855355
#>     Attrib V1    0.7779613565525993
#>     Attrib V10    -0.3306050184104088
#>     Attrib V11    0.03643238759924884
#>     Attrib V12    -0.07918117891105612
#>     Attrib V13    -3.433940968673512E-4
#>     Attrib V14    0.33640944475458406
#>     Attrib V15    0.46188749938703333
#>     Attrib V16    0.31602229316276675
#>     Attrib V17    0.39840947233288443
#>     Attrib V18    0.641416046628295
#>     Attrib V19    0.5013262861610632
#>     Attrib V2    0.49220505498127826
#>     Attrib V20    0.9293125640234875
#>     Attrib V21    0.7706480555714805
#>     Attrib V22    0.3095171107805783
#>     Attrib V23    0.194650564986978
#>     Attrib V24    0.2708872976041667
#>     Attrib V25    -0.13350745363789
#>     Attrib V26    -0.5472260802530817
#>     Attrib V27    -0.8108016930992118
#>     Attrib V28    -0.6148011576152078
#>     Attrib V29    -0.08798603445632526
#>     Attrib V3    0.3659377898960341
#>     Attrib V30    -0.2427469826294645
#>     Attrib V31    -1.1828463375014704
#>     Attrib V32    -0.3668721446174129
#>     Attrib V33    0.16827300829306047
#>     Attrib V34    0.20926662276927505
#>     Attrib V35    0.33956197021532486
#>     Attrib V36    -0.05218321868819974
#>     Attrib V37    -0.23005419749169778
#>     Attrib V38    0.1671669779161976
#>     Attrib V39    0.45674966934593325
#>     Attrib V4    0.0034430256492647224
#>     Attrib V40    0.14670399664427514
#>     Attrib V41    -0.04568974650323165
#>     Attrib V42    0.044088679359988996
#>     Attrib V43    0.06965480923677354
#>     Attrib V44    0.19658789684974903
#>     Attrib V45    0.2688139511900061
#>     Attrib V46    0.15306250152889667
#>     Attrib V47    -0.15688424785405253
#>     Attrib V48    0.16837149260656753
#>     Attrib V49    0.279849580983886
#>     Attrib V5    -0.15483523631941262
#>     Attrib V50    -0.3074588267645606
#>     Attrib V51    0.24050494062689953
#>     Attrib V52    0.35946333382207346
#>     Attrib V53    0.6135294069606382
#>     Attrib V54    0.6090379495385209
#>     Attrib V55    0.30134744895318505
#>     Attrib V56    0.7550712516426802
#>     Attrib V57    -0.10121585103104401
#>     Attrib V58    0.7081457001582436
#>     Attrib V59    0.4644463016249636
#>     Attrib V6    -0.07814963702525606
#>     Attrib V60    0.1015213226340526
#>     Attrib V7    -0.1136047607595847
#>     Attrib V8    -0.3115523784599064
#>     Attrib V9    -0.03309189847561118
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.04358482641911079
#>     Attrib V1    -0.30863213903145925
#>     Attrib V10    0.03187374345308667
#>     Attrib V11    -0.5550097067022072
#>     Attrib V12    -0.28197509700038076
#>     Attrib V13    -0.048441412662243624
#>     Attrib V14    0.1881228165536627
#>     Attrib V15    0.15874639786811454
#>     Attrib V16    0.03640057987854874
#>     Attrib V17    -0.12739356956394499
#>     Attrib V18    -0.35656195259298895
#>     Attrib V19    0.009738346170999043
#>     Attrib V2    -0.04726034341307653
#>     Attrib V20    -0.326010083926114
#>     Attrib V21    -0.36333890534945235
#>     Attrib V22    -0.3699567196947488
#>     Attrib V23    -0.6779856630438694
#>     Attrib V24    -0.6378372445277226
#>     Attrib V25    -0.2154705995425406
#>     Attrib V26    0.22274949740751854
#>     Attrib V27    0.29018050149762764
#>     Attrib V28    -0.33238945014555993
#>     Attrib V29    -0.48342917804390956
#>     Attrib V3    -0.2440856727777276
#>     Attrib V30    -0.28814430748593056
#>     Attrib V31    1.251090350791166
#>     Attrib V32    -0.1490856195274617
#>     Attrib V33    -0.2970775513738736
#>     Attrib V34    -0.0447096598555008
#>     Attrib V35    -0.1365235206768326
#>     Attrib V36    0.5092748553137502
#>     Attrib V37    0.73244061767906
#>     Attrib V38    0.09085706402594992
#>     Attrib V39    -0.3084194463892712
#>     Attrib V4    0.055575441552077845
#>     Attrib V40    -0.10224323800570156
#>     Attrib V41    -0.4134933055610839
#>     Attrib V42    -0.09604825205343129
#>     Attrib V43    0.1632445368870156
#>     Attrib V44    -0.11110787901092485
#>     Attrib V45    -0.19452746886959682
#>     Attrib V46    -0.1811117203851422
#>     Attrib V47    0.11776244009118073
#>     Attrib V48    -0.10533162773035143
#>     Attrib V49    -0.5555496434889386
#>     Attrib V5    0.36528376785902933
#>     Attrib V50    0.8772200013601927
#>     Attrib V51    -0.4177808244940463
#>     Attrib V52    -0.5941439862265065
#>     Attrib V53    -0.558372594309187
#>     Attrib V54    -0.1742876071595311
#>     Attrib V55    0.04513978521166808
#>     Attrib V56    -0.40488402414355695
#>     Attrib V57    0.6577191839727242
#>     Attrib V58    -0.8096273352384312
#>     Attrib V59    -0.32983928735701556
#>     Attrib V6    0.33695797549191014
#>     Attrib V60    0.26006843375189803
#>     Attrib V7    0.5930070816782012
#>     Attrib V8    0.1533444259763292
#>     Attrib V9    -0.43603632682117016
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.17387790416235055
#>     Attrib V1    0.36542585813469264
#>     Attrib V10    -0.045317210991184256
#>     Attrib V11    0.09702106167182466
#>     Attrib V12    0.019855470535389892
#>     Attrib V13    -0.0020660192388798166
#>     Attrib V14    0.1503055599537073
#>     Attrib V15    0.14532367330929108
#>     Attrib V16    0.1941922987970839
#>     Attrib V17    0.1768303218508365
#>     Attrib V18    0.2191270506240527
#>     Attrib V19    0.10645385671404235
#>     Attrib V2    0.1863928536716618
#>     Attrib V20    0.2982751344842326
#>     Attrib V21    0.18621361206482126
#>     Attrib V22    -0.007174972559338339
#>     Attrib V23    -0.06786610650937329
#>     Attrib V24    0.054829127073679505
#>     Attrib V25    -0.08917166758783902
#>     Attrib V26    -0.23243584092868652
#>     Attrib V27    -0.34787560849688753
#>     Attrib V28    -0.32095749771545673
#>     Attrib V29    -0.10019961807274555
#>     Attrib V3    0.13328524218851034
#>     Attrib V30    -0.17103568711787273
#>     Attrib V31    -0.43628109633472933
#>     Attrib V32    -0.09670944934065033
#>     Attrib V33    0.02068383852981793
#>     Attrib V34    0.08150605581361892
#>     Attrib V35    0.18782144586418653
#>     Attrib V36    0.017696037548092357
#>     Attrib V37    -0.07494132079274286
#>     Attrib V38    0.0300782903829348
#>     Attrib V39    0.1254791621353546
#>     Attrib V4    0.07829253804906061
#>     Attrib V40    0.012580329848595709
#>     Attrib V41    -0.11378301677379944
#>     Attrib V42    -0.08230007618509255
#>     Attrib V43    0.0219375567016355
#>     Attrib V44    0.05097293597373213
#>     Attrib V45    0.04937653281146373
#>     Attrib V46    0.11567101014645606
#>     Attrib V47    -0.04843577910895899
#>     Attrib V48    0.11577473309247294
#>     Attrib V49    0.12161641874507435
#>     Attrib V5    -0.013965589221873999
#>     Attrib V50    -0.08444668075790909
#>     Attrib V51    0.141995712581301
#>     Attrib V52    0.1695073888081405
#>     Attrib V53    0.21502466219791488
#>     Attrib V54    0.2620898315174669
#>     Attrib V55    0.19435464885456483
#>     Attrib V56    0.33381904242607024
#>     Attrib V57    0.06426250842296195
#>     Attrib V58    0.329879672055478
#>     Attrib V59    0.20988517413507973
#>     Attrib V6    -0.03749942362539981
#>     Attrib V60    0.16030091439324923
#>     Attrib V7    -0.07631830156812275
#>     Attrib V8    -0.15825645073897465
#>     Attrib V9    0.06928252233524367
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.15513766122885192
#>     Attrib V1    0.4296868078480473
#>     Attrib V10    -0.21120922964309222
#>     Attrib V11    0.08262678486773091
#>     Attrib V12    0.04900330796454531
#>     Attrib V13    0.044489234973263965
#>     Attrib V14    0.19832484096921812
#>     Attrib V15    0.22894066189362922
#>     Attrib V16    0.15639735507727218
#>     Attrib V17    0.27451525250149356
#>     Attrib V18    0.35122035673414426
#>     Attrib V19    0.22180954990455884
#>     Attrib V2    0.19402877543434077
#>     Attrib V20    0.4095742306129814
#>     Attrib V21    0.29750155675316886
#>     Attrib V22    0.10588484125161622
#>     Attrib V23    0.06821703551261929
#>     Attrib V24    0.08079619822574242
#>     Attrib V25    -0.025912715776639117
#>     Attrib V26    -0.22297976579823614
#>     Attrib V27    -0.4869043051883117
#>     Attrib V28    -0.4164083370243805
#>     Attrib V29    -0.17263473702652377
#>     Attrib V3    0.21894134184508093
#>     Attrib V30    -0.21877477231423054
#>     Attrib V31    -0.6385842716649769
#>     Attrib V32    -0.1365108586657055
#>     Attrib V33    0.0967979465559347
#>     Attrib V34    0.1220638023727145
#>     Attrib V35    0.2814897077390586
#>     Attrib V36    0.018763891665033332
#>     Attrib V37    -0.07663079608284687
#>     Attrib V38    0.047396518727682
#>     Attrib V39    0.21611790409470596
#>     Attrib V4    0.09189848557104695
#>     Attrib V40    0.01782533152132664
#>     Attrib V41    -0.06030778088777801
#>     Attrib V42    -0.04352140198936377
#>     Attrib V43    0.01439012474369368
#>     Attrib V44    0.05362461350157824
#>     Attrib V45    0.12765155748838314
#>     Attrib V46    0.09425605663494746
#>     Attrib V47    -0.012368767856836839
#>     Attrib V48    0.039431889404964504
#>     Attrib V49    0.12135771101247873
#>     Attrib V5    -0.0721101238304338
#>     Attrib V50    -0.16585457962449746
#>     Attrib V51    0.12738320398779507
#>     Attrib V52    0.24185664010698488
#>     Attrib V53    0.3584643760305894
#>     Attrib V54    0.3086142202313213
#>     Attrib V55    0.21156439702385899
#>     Attrib V56    0.45269690467281665
#>     Attrib V57    -0.017045543756407367
#>     Attrib V58    0.3493338955785156
#>     Attrib V59    0.3051447200470972
#>     Attrib V6    -0.04919628762135648
#>     Attrib V60    0.11376663505005638
#>     Attrib V7    -0.10441503483476539
#>     Attrib V8    -0.16170935979399673
#>     Attrib V9    0.006968003955296593
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.1961827709515484
#>     Attrib V1    -0.22207194058969734
#>     Attrib V10    -0.08865328759483813
#>     Attrib V11    -0.3302380937368718
#>     Attrib V12    -0.2325352414586386
#>     Attrib V13    -0.030597709368212354
#>     Attrib V14    0.2381628339706308
#>     Attrib V15    0.1794458858552768
#>     Attrib V16    0.06754227517450302
#>     Attrib V17    0.0803316935352988
#>     Attrib V18    -0.1329653591909059
#>     Attrib V19    0.0675902083078983
#>     Attrib V2    -0.018661923222882303
#>     Attrib V20    -0.1511481290969741
#>     Attrib V21    -0.11654150838293878
#>     Attrib V22    0.0332742600437391
#>     Attrib V23    -0.059238309658694574
#>     Attrib V24    -0.18816157260755048
#>     Attrib V25    0.0681036147359997
#>     Attrib V26    0.19870455764860845
#>     Attrib V27    0.06813168443170439
#>     Attrib V28    -0.20625584221001528
#>     Attrib V29    -0.286234885111529
#>     Attrib V3    -0.10582262259658823
#>     Attrib V30    -0.1897718600027783
#>     Attrib V31    0.5053984167395221
#>     Attrib V32    -0.06706195323165372
#>     Attrib V33    -0.2053775494501092
#>     Attrib V34    -0.14046115799118492
#>     Attrib V35    -0.19897288200751037
#>     Attrib V36    0.309340348420262
#>     Attrib V37    0.2316608222751887
#>     Attrib V38    -0.021627284730276662
#>     Attrib V39    -0.23300584227709148
#>     Attrib V4    0.16562943178314155
#>     Attrib V40    -0.09552343924962431
#>     Attrib V41    -0.2743252990256485
#>     Attrib V42    0.03257971666178452
#>     Attrib V43    0.1758886394109861
#>     Attrib V44    -0.11844290531229339
#>     Attrib V45    -0.26066292848630784
#>     Attrib V46    -0.16311531353659467
#>     Attrib V47    0.08837623181848901
#>     Attrib V48    -0.12480484068453547
#>     Attrib V49    -0.34688154470055216
#>     Attrib V5    0.14822417488691106
#>     Attrib V50    0.4423728057216173
#>     Attrib V51    -0.21977337887394408
#>     Attrib V52    -0.289463181652942
#>     Attrib V53    -0.36671948409401217
#>     Attrib V54    -0.041349242482657186
#>     Attrib V55    0.09621150186717309
#>     Attrib V56    -0.008284509386870054
#>     Attrib V57    0.46683990278003495
#>     Attrib V58    -0.26542270320215405
#>     Attrib V59    -0.03788069076059652
#>     Attrib V6    0.16498420916121287
#>     Attrib V60    0.23551482093684983
#>     Attrib V7    0.2550254039531199
#>     Attrib V8    0.22717410873363592
#>     Attrib V9    -0.2356483507667303
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    -0.017373426107972694
#>     Attrib V1    -0.5149678126702011
#>     Attrib V10    1.45244235257131
#>     Attrib V11    1.6465648595913738
#>     Attrib V12    1.2545816243060284
#>     Attrib V13    -0.47616154817057244
#>     Attrib V14    -1.6213204483799473
#>     Attrib V15    -1.2589828849128668
#>     Attrib V16    -0.3246191750789244
#>     Attrib V17    -0.16403260961983948
#>     Attrib V18    0.24911472719952138
#>     Attrib V19    0.06457056702838097
#>     Attrib V2    -0.5048255814874422
#>     Attrib V20    0.18562883419188375
#>     Attrib V21    0.10916508449058807
#>     Attrib V22    0.677807478586004
#>     Attrib V23    2.0943675763762313
#>     Attrib V24    1.0214086566230591
#>     Attrib V25    -0.058937416924324394
#>     Attrib V26    -0.018459687977621927
#>     Attrib V27    1.0750977098307473
#>     Attrib V28    2.335031235687035
#>     Attrib V29    1.508261835904725
#>     Attrib V3    0.1752117701771399
#>     Attrib V30    0.8558820786251474
#>     Attrib V31    -1.7099121309756757
#>     Attrib V32    0.18870437774129561
#>     Attrib V33    -0.23450904891459595
#>     Attrib V34    0.00621814408627889
#>     Attrib V35    0.18333292620766056
#>     Attrib V36    -1.4856138144161872
#>     Attrib V37    -1.0391739746941397
#>     Attrib V38    -0.5900636544724348
#>     Attrib V39    -0.14608161886687668
#>     Attrib V4    -0.0462564397778133
#>     Attrib V40    0.6642202804302733
#>     Attrib V41    2.664798559079329
#>     Attrib V42    0.4565731132236907
#>     Attrib V43    -0.4426800276703087
#>     Attrib V44    0.8081342721050865
#>     Attrib V45    1.054229230627473
#>     Attrib V46    1.2014889111939007
#>     Attrib V47    0.7519122907251623
#>     Attrib V48    0.3230505324798109
#>     Attrib V49    1.6781321321461313
#>     Attrib V5    0.17952809434495487
#>     Attrib V50    -0.6066339762501874
#>     Attrib V51    1.8667636722362257
#>     Attrib V52    2.2957968028103077
#>     Attrib V53    1.1642530109930675
#>     Attrib V54    -0.19259723132440007
#>     Attrib V55    -0.8724941333014338
#>     Attrib V56    -1.061525861792522
#>     Attrib V57    -2.0286773118951698
#>     Attrib V58    0.5768901151754847
#>     Attrib V59    -0.17387900417663635
#>     Attrib V6    -0.027840253167495423
#>     Attrib V60    -0.6389419934774462
#>     Attrib V7    -1.34383077649534
#>     Attrib V8    -0.2801910101825572
#>     Attrib V9    2.1172760331721205
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.19608136604957382
#>     Attrib V1    -0.1246145242721847
#>     Attrib V10    -0.02018385923039584
#>     Attrib V11    -0.15592719994816556
#>     Attrib V12    -0.08355285136898105
#>     Attrib V13    -0.014074143973143594
#>     Attrib V14    0.14103841955192845
#>     Attrib V15    0.04368868546487636
#>     Attrib V16    0.05576311151358123
#>     Attrib V17    0.08114398882277576
#>     Attrib V18    -0.047847879671400216
#>     Attrib V19    0.06666389307106887
#>     Attrib V2    0.013189015697793217
#>     Attrib V20    -0.14274799169732674
#>     Attrib V21    -0.0929690530496931
#>     Attrib V22    0.04046469929130981
#>     Attrib V23    0.014089810370260664
#>     Attrib V24    -0.06757076612870062
#>     Attrib V25    0.03176735485204283
#>     Attrib V26    -0.006158505892722177
#>     Attrib V27    0.005142019442457793
#>     Attrib V28    -0.08451703621307619
#>     Attrib V29    -0.11093884768243514
#>     Attrib V3    -0.03572144768952366
#>     Attrib V30    -0.07319311832455438
#>     Attrib V31    0.20368823301089609
#>     Attrib V32    -0.04821931800639962
#>     Attrib V33    -0.013897746751287276
#>     Attrib V34    -0.07073663013249958
#>     Attrib V35    -0.0016593983706188688
#>     Attrib V36    0.22798144372977885
#>     Attrib V37    0.23169689524005818
#>     Attrib V38    -0.014358750918585765
#>     Attrib V39    -0.07463301304586335
#>     Attrib V4    0.1281197484944911
#>     Attrib V40    0.015517788867653206
#>     Attrib V41    -0.021372326535084786
#>     Attrib V42    0.12410865449656436
#>     Attrib V43    0.10982614689342882
#>     Attrib V44    -0.0010987028886154948
#>     Attrib V45    -0.0961874445219315
#>     Attrib V46    -0.08820394153108
#>     Attrib V47    0.01856008708187888
#>     Attrib V48    -0.021862119564483376
#>     Attrib V49    -0.14814493188943992
#>     Attrib V5    0.1013164331228727
#>     Attrib V50    0.16915365884851913
#>     Attrib V51    -0.10416618554655756
#>     Attrib V52    -0.14148803198963855
#>     Attrib V53    -0.14172965289735884
#>     Attrib V54    0.005526469400513264
#>     Attrib V55    0.03535121499032812
#>     Attrib V56    0.028123059486208177
#>     Attrib V57    0.2392838321506956
#>     Attrib V58    -0.05721501006101228
#>     Attrib V59    0.05018063957666518
#>     Attrib V6    0.15009253019174806
#>     Attrib V60    0.20601383660091818
#>     Attrib V7    0.1377839281015213
#>     Attrib V8    0.19693147255282584
#>     Attrib V9    -0.10210490662782536
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.06355141199579604
#>     Attrib V1    0.5119126844070788
#>     Attrib V10    -0.03950950622133027
#>     Attrib V11    0.26965755751990894
#>     Attrib V12    -0.03937104603393763
#>     Attrib V13    -0.10792367837852929
#>     Attrib V14    -0.0678234866360649
#>     Attrib V15    0.05867867674150815
#>     Attrib V16    0.08158433750374235
#>     Attrib V17    0.17612387723498277
#>     Attrib V18    0.3943849030650811
#>     Attrib V19    0.1447918928894339
#>     Attrib V2    0.1699582819216075
#>     Attrib V20    0.4268129662204336
#>     Attrib V21    0.4541346937341113
#>     Attrib V22    0.21413110268512836
#>     Attrib V23    0.20727884130933544
#>     Attrib V24    0.25637832313562986
#>     Attrib V25    -0.0463114165807139
#>     Attrib V26    -0.21556478632990778
#>     Attrib V27    -0.3953626301123385
#>     Attrib V28    -0.12343005775350006
#>     Attrib V29    0.16840952197266051
#>     Attrib V3    0.11565451266551274
#>     Attrib V30    0.044507066965293586
#>     Attrib V31    -0.9446350634309291
#>     Attrib V32    -0.14601342818867463
#>     Attrib V33    0.06428128540379867
#>     Attrib V34    0.0829026537064821
#>     Attrib V35    0.21195424521195128
#>     Attrib V36    -0.10408395097344761
#>     Attrib V37    -0.27705447395248955
#>     Attrib V38    0.04262297161435474
#>     Attrib V39    0.27157658963729303
#>     Attrib V4    0.0545692053164238
#>     Attrib V40    -0.13974608583880282
#>     Attrib V41    -0.05865329499604373
#>     Attrib V42    -0.0918154073040515
#>     Attrib V43    -0.12180340968638577
#>     Attrib V44    0.17159469594268545
#>     Attrib V45    0.31780018343694527
#>     Attrib V46    0.07950364701849147
#>     Attrib V47    -0.11242245689999489
#>     Attrib V48    0.25965299679102327
#>     Attrib V49    0.3262144571504162
#>     Attrib V5    -0.20716361589483448
#>     Attrib V50    -0.32571022080104334
#>     Attrib V51    0.2682520619319029
#>     Attrib V52    0.3188424261584774
#>     Attrib V53    0.33195366460068626
#>     Attrib V54    0.30111453467681265
#>     Attrib V55    0.10996747575894142
#>     Attrib V56    0.32221260014658
#>     Attrib V57    -0.14247882938181602
#>     Attrib V58    0.5449978586756369
#>     Attrib V59    0.3349901695967894
#>     Attrib V6    -0.19833403120499682
#>     Attrib V60    -0.04447419870811019
#>     Attrib V7    -0.3525040383107936
#>     Attrib V8    -0.21970910573889418
#>     Attrib V9    0.1930115638208218
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.12312326284686519
#>     Attrib V1    -0.03790749845850329
#>     Attrib V10    -0.11712137560117036
#>     Attrib V11    -0.7938753980346065
#>     Attrib V12    -0.5901372895135237
#>     Attrib V13    -0.08633926526634811
#>     Attrib V14    0.42145023897455347
#>     Attrib V15    0.4079011571108525
#>     Attrib V16    0.20774966059288483
#>     Attrib V17    -0.061775791784472935
#>     Attrib V18    -0.3852159324979436
#>     Attrib V19    0.035864584160687274
#>     Attrib V2    0.04853516758552671
#>     Attrib V20    -0.24509245341886302
#>     Attrib V21    -0.1815241901267857
#>     Attrib V22    -0.38657046278672225
#>     Attrib V23    -1.1461872890149694
#>     Attrib V24    -0.8825458020472309
#>     Attrib V25    -0.25115603335727127
#>     Attrib V26    0.10110526208764098
#>     Attrib V27    -0.046649251293747564
#>     Attrib V28    -0.8685010623874321
#>     Attrib V29    -0.8514453648950766
#>     Attrib V3    -0.23558634062741352
#>     Attrib V30    -0.4235517541094517
#>     Attrib V31    1.3863090166821985
#>     Attrib V32    -0.0889278874348416
#>     Attrib V33    -0.2589144850999575
#>     Attrib V34    0.03455500844288063
#>     Attrib V35    -0.049160527316188814
#>     Attrib V36    0.8144221739039367
#>     Attrib V37    0.6468642015611488
#>     Attrib V38    0.17036343874707532
#>     Attrib V39    -0.23962714727721204
#>     Attrib V4    0.06605966457270558
#>     Attrib V40    -0.2931653728266078
#>     Attrib V41    -0.9557006418475054
#>     Attrib V42    -0.20770688821673905
#>     Attrib V43    0.09708583700943171
#>     Attrib V44    -0.33837789705545884
#>     Attrib V45    -0.3282024997611848
#>     Attrib V46    -0.31085901479892863
#>     Attrib V47    0.048427904424505584
#>     Attrib V48    -0.21782036185221162
#>     Attrib V49    -0.8515657987186893
#>     Attrib V5    0.13905043706346756
#>     Attrib V50    1.1068825552782207
#>     Attrib V51    -0.7007844283992923
#>     Attrib V52    -1.0166711529277244
#>     Attrib V53    -0.8361874398726347
#>     Attrib V54    -0.17763323656115557
#>     Attrib V55    0.17545515599110612
#>     Attrib V56    -0.22000626746569724
#>     Attrib V57    0.9149096541580498
#>     Attrib V58    -0.881518912133544
#>     Attrib V59    -0.31224512920915354
#>     Attrib V6    0.2613263252833445
#>     Attrib V60    0.5231826426399966
#>     Attrib V7    0.8289273439283061
#>     Attrib V8    0.3460737834334531
#>     Attrib V9    -0.6756330068506161
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.1510875897220173
#>     Attrib V1    0.471004586633791
#>     Attrib V10    -0.22862358700768495
#>     Attrib V11    0.1250285180572912
#>     Attrib V12    -0.019952104368874873
#>     Attrib V13    -0.005451125213574436
#>     Attrib V14    0.2517681032166849
#>     Attrib V15    0.2907329964317358
#>     Attrib V16    0.22566788026388032
#>     Attrib V17    0.28643527253105366
#>     Attrib V18    0.4410096805805999
#>     Attrib V19    0.25469540988777034
#>     Attrib V2    0.2858332746901663
#>     Attrib V20    0.6134415658908763
#>     Attrib V21    0.501148729688482
#>     Attrib V22    0.21338225855063614
#>     Attrib V23    0.0684101274220281
#>     Attrib V24    0.20054451462345274
#>     Attrib V25    -0.013916067539807208
#>     Attrib V26    -0.3856591223972363
#>     Attrib V27    -0.5911613669376884
#>     Attrib V28    -0.4519421199400285
#>     Attrib V29    -0.08977303082183163
#>     Attrib V3    0.2729938256753914
#>     Attrib V30    -0.24537976774090076
#>     Attrib V31    -0.8221941155701128
#>     Attrib V32    -0.1579681060694874
#>     Attrib V33    0.1534902412806191
#>     Attrib V34    0.17898735740925784
#>     Attrib V35    0.2911116666861347
#>     Attrib V36    -0.04429086711028811
#>     Attrib V37    -0.18019340220291677
#>     Attrib V38    0.06795054142122078
#>     Attrib V39    0.3071127418590914
#>     Attrib V4    0.019796711864775652
#>     Attrib V40    0.057145483702646285
#>     Attrib V41    -0.03091474462010108
#>     Attrib V42    -0.025672573608957715
#>     Attrib V43    0.028285914616321017
#>     Attrib V44    0.04723996895307613
#>     Attrib V45    0.21429506982911625
#>     Attrib V46    0.1270716389075258
#>     Attrib V47    -0.04478140519249182
#>     Attrib V48    0.12643158126787818
#>     Attrib V49    0.19135931747169685
#>     Attrib V5    -0.15860154594544804
#>     Attrib V50    -0.20184299319666013
#>     Attrib V51    0.20859453579517526
#>     Attrib V52    0.27710582267312905
#>     Attrib V53    0.3898867450597665
#>     Attrib V54    0.35514789798092167
#>     Attrib V55    0.2609123751234549
#>     Attrib V56    0.520203866096188
#>     Attrib V57    -0.03332480771020312
#>     Attrib V58    0.4468203397182128
#>     Attrib V59    0.3032714383825501
#>     Attrib V6    -0.07578826649144009
#>     Attrib V60    0.11631505424221639
#>     Attrib V7    -0.15523574847060512
#>     Attrib V8    -0.16017447534963508
#>     Attrib V9    0.026863526464762755
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.16217178784505717
#>     Attrib V1    0.14090466991964964
#>     Attrib V10    0.08929227404526364
#>     Attrib V11    0.08766034670685133
#>     Attrib V12    0.08721202692613518
#>     Attrib V13    0.05596978725744934
#>     Attrib V14    0.04621809981645103
#>     Attrib V15    0.0687231024538472
#>     Attrib V16    0.057119745004021345
#>     Attrib V17    0.09484839172769502
#>     Attrib V18    0.05858151225080899
#>     Attrib V19    -0.0072197669046398915
#>     Attrib V2    0.06848633065239182
#>     Attrib V20    0.017848278779876145
#>     Attrib V21    0.023897137142663668
#>     Attrib V22    -0.02860696245738029
#>     Attrib V23    -0.02501192016786542
#>     Attrib V24    -0.05275403792642786
#>     Attrib V25    -0.00392381291071145
#>     Attrib V26    -0.02013460399921837
#>     Attrib V27    -0.08788079192278654
#>     Attrib V28    -0.049968380089405504
#>     Attrib V29    -0.0891941787777624
#>     Attrib V3    0.06684224677395076
#>     Attrib V30    -0.03494086906456107
#>     Attrib V31    -0.09891182260819895
#>     Attrib V32    -0.030630783165682185
#>     Attrib V33    -0.007391649603230845
#>     Attrib V34    0.02114625768533608
#>     Attrib V35    0.11897457000748127
#>     Attrib V36    0.030721236884340388
#>     Attrib V37    0.0630256917129817
#>     Attrib V38    0.022595935523407575
#>     Attrib V39    0.1174461021195588
#>     Attrib V4    0.10261649211422542
#>     Attrib V40    0.055514477690256435
#>     Attrib V41    0.050332099722346015
#>     Attrib V42    0.05513871851900565
#>     Attrib V43    0.005651488304817436
#>     Attrib V44    0.014160146218918139
#>     Attrib V45    0.0685167683378972
#>     Attrib V46    0.072314821919664
#>     Attrib V47    0.022073190437691702
#>     Attrib V48    0.08707882196324859
#>     Attrib V49    0.04636314772753167
#>     Attrib V5    0.02030713641751795
#>     Attrib V50    -0.009552598856349947
#>     Attrib V51    0.08820766338408022
#>     Attrib V52    0.11443194919853195
#>     Attrib V53    0.1085607426764245
#>     Attrib V54    0.10720275603428246
#>     Attrib V55    0.044493571126580374
#>     Attrib V56    0.13772281590808866
#>     Attrib V57    0.03447063047618975
#>     Attrib V58    0.14037966092434045
#>     Attrib V59    0.13468555565879559
#>     Attrib V6    0.024082326390691383
#>     Attrib V60    0.12394930779226203
#>     Attrib V7    -0.07051459163082495
#>     Attrib V8    -0.016754182082585434
#>     Attrib V9    0.06477723214564365
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.16737507856932496
#>     Attrib V1    -0.07016958331818529
#>     Attrib V10    0.037449898263484764
#>     Attrib V11    -0.010079732648903909
#>     Attrib V12    -0.07878154946970185
#>     Attrib V13    0.03535851865178967
#>     Attrib V14    0.09828472414407802
#>     Attrib V15    0.06691926797741488
#>     Attrib V16    0.06256597838483173
#>     Attrib V17    0.09216295683813074
#>     Attrib V18    0.048576258208565856
#>     Attrib V19    6.25883391545959E-4
#>     Attrib V2    0.06642880185231069
#>     Attrib V20    -0.1156198530873642
#>     Attrib V21    -0.15711436430393963
#>     Attrib V22    0.05757352266457699
#>     Attrib V23    0.05799868023906436
#>     Attrib V24    -0.019195453846412948
#>     Attrib V25    -0.048317742008412705
#>     Attrib V26    -0.03903119886933942
#>     Attrib V27    -0.1060136043832371
#>     Attrib V28    -0.15830731596480807
#>     Attrib V29    -0.13890827512218146
#>     Attrib V3    2.0412401393905062E-4
#>     Attrib V30    -0.07098283636267429
#>     Attrib V31    0.19444875582721788
#>     Attrib V32    -0.01469671005220548
#>     Attrib V33    0.010161491766338791
#>     Attrib V34    -0.010978125173087834
#>     Attrib V35    0.03662114305708951
#>     Attrib V36    0.15626910854132095
#>     Attrib V37    0.21573412921349172
#>     Attrib V38    0.07502441388113004
#>     Attrib V39    -0.0773548987240187
#>     Attrib V4    0.1320855307500431
#>     Attrib V40    0.07133970251916906
#>     Attrib V41    0.06427977176817344
#>     Attrib V42    0.10548724362962851
#>     Attrib V43    0.1294261028453483
#>     Attrib V44    0.06722964391916937
#>     Attrib V45    -0.0534437507522756
#>     Attrib V46    0.008546016205989278
#>     Attrib V47    0.08990691672287435
#>     Attrib V48    -0.004643249868508815
#>     Attrib V49    -0.05487004013489551
#>     Attrib V5    0.15622961000013064
#>     Attrib V50    0.11594595063571701
#>     Attrib V51    -0.025284594648514326
#>     Attrib V52    -0.015962082261672016
#>     Attrib V53    -0.019892375906215252
#>     Attrib V54    0.07721968724117666
#>     Attrib V55    0.06369913273999112
#>     Attrib V56    -0.008898085834860403
#>     Attrib V57    0.16116934976921785
#>     Attrib V58    -0.03896382822019562
#>     Attrib V59    0.051013854860973436
#>     Attrib V6    0.13923761790702238
#>     Attrib V60    0.14469417612714117
#>     Attrib V7    0.16361310710918703
#>     Attrib V8    0.18194144449711577
#>     Attrib V9    0.030011352250829994
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.16307764709322017
#>     Attrib V1    0.2871895582669325
#>     Attrib V10    -0.12427936877122266
#>     Attrib V11    0.0666749850906947
#>     Attrib V12    -0.00795014470781171
#>     Attrib V13    -0.03707472718993124
#>     Attrib V14    0.1504891549167091
#>     Attrib V15    0.1702058812847357
#>     Attrib V16    0.1658731023088195
#>     Attrib V17    0.131266194554991
#>     Attrib V18    0.271353292908368
#>     Attrib V19    0.08480033349439087
#>     Attrib V2    0.10597327615242495
#>     Attrib V20    0.2810253087476394
#>     Attrib V21    0.22061287691825576
#>     Attrib V22    0.04777084675676098
#>     Attrib V23    0.04791009305320572
#>     Attrib V24    0.027193239246325926
#>     Attrib V25    -0.09771012277109518
#>     Attrib V26    -0.20102372324174012
#>     Attrib V27    -0.2827364770036632
#>     Attrib V28    -0.166955667157404
#>     Attrib V29    -0.05999668629654655
#>     Attrib V3    0.15151276298350352
#>     Attrib V30    -0.09466676670045944
#>     Attrib V31    -0.5065734746699992
#>     Attrib V32    -0.11966649115193105
#>     Attrib V33    0.06823221550909285
#>     Attrib V34    0.08475977992825706
#>     Attrib V35    0.16657050104435597
#>     Attrib V36    0.0450706303959905
#>     Attrib V37    -0.07820843295034481
#>     Attrib V38    0.003127124680173365
#>     Attrib V39    0.14654362885300395
#>     Attrib V4    0.023640143464683946
#>     Attrib V40    -0.010538822406709244
#>     Attrib V41    -0.06759999426308441
#>     Attrib V42    -0.008720925355160182
#>     Attrib V43    -0.07074993712900778
#>     Attrib V44    0.0797847227129957
#>     Attrib V45    0.12847704767894144
#>     Attrib V46    0.08752212991291561
#>     Attrib V47    -0.02287733160505832
#>     Attrib V48    0.026537444751275358
#>     Attrib V49    0.12614678111467864
#>     Attrib V5    -0.031171087571171607
#>     Attrib V50    -0.1358981176596699
#>     Attrib V51    0.14775823375493713
#>     Attrib V52    0.18765804198613895
#>     Attrib V53    0.22315765375883564
#>     Attrib V54    0.1607593596708849
#>     Attrib V55    0.09059705773356398
#>     Attrib V56    0.24489878389148598
#>     Attrib V57    9.623296199665071E-4
#>     Attrib V58    0.29635055716058756
#>     Attrib V59    0.15632859453440087
#>     Attrib V6    -0.02804476145466542
#>     Attrib V60    0.09277437325984404
#>     Attrib V7    -0.08941595920212937
#>     Attrib V8    -0.05567453648397669
#>     Attrib V9    0.07261892630341481
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
