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
#>     Threshold    -0.5385964233842827
#>     Node 2    1.713611037884246
#>     Node 3    1.641377215955393
#>     Node 4    1.2100146345238225
#>     Node 5    -0.9808650192732619
#>     Node 6    1.3539870151784728
#>     Node 7    1.6348636383659543
#>     Node 8    0.8021262395768094
#>     Node 9    4.3018368208989095
#>     Node 10    -1.104475911928976
#>     Node 11    1.533949891909929
#>     Node 12    1.1682072457939807
#>     Node 13    -0.14040432295527483
#>     Node 14    1.5150039774413866
#>     Node 15    -2.1170227389204155
#>     Node 16    -0.2699946914306144
#>     Node 17    1.5555317761999148
#>     Node 18    -1.1406613761039421
#>     Node 19    1.37053142705216
#>     Node 20    1.2328628594003104
#>     Node 21    -2.2377325137198962
#>     Node 22    1.200925698846381
#>     Node 23    0.6526156466397041
#>     Node 24    -1.7506408736776848
#>     Node 25    5.491022537041123
#>     Node 26    -1.0725989413932404
#>     Node 27    1.1616137069759107
#>     Node 28    -2.1013984073083183
#>     Node 29    0.8363015089678509
#>     Node 30    -0.29742378057206
#>     Node 31    1.8654492212213178
#>     Node 32    0.4610386028642834
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.5347576793247266
#>     Node 2    -1.764689363356086
#>     Node 3    -1.6376427732225831
#>     Node 4    -1.1760176645220506
#>     Node 5    1.0069398705498624
#>     Node 6    -1.3427410434356353
#>     Node 7    -1.610766575005617
#>     Node 8    -0.831523319737847
#>     Node 9    -4.3038205814857
#>     Node 10    1.0502079757741651
#>     Node 11    -1.5111915392145512
#>     Node 12    -1.2545183823103796
#>     Node 13    0.19496255498444667
#>     Node 14    -1.453116723328288
#>     Node 15    2.111157013074027
#>     Node 16    0.25304631097127117
#>     Node 17    -1.5343510250134282
#>     Node 18    1.2006401028950437
#>     Node 19    -1.3528179061730938
#>     Node 20    -1.220520359472521
#>     Node 21    2.29680748391801
#>     Node 22    -1.260686843759973
#>     Node 23    -0.7052964920884269
#>     Node 24    1.739929457797551
#>     Node 25    -5.48548245325021
#>     Node 26    1.0147477527345052
#>     Node 27    -1.1909910416291316
#>     Node 28    2.0651771484471944
#>     Node 29    -0.8668411841512036
#>     Node 30    0.37147813528946205
#>     Node 31    -1.8260526952101899
#>     Node 32    -0.48178527204268085
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.07390239351219742
#>     Attrib V1    -0.08238669328839697
#>     Attrib V10    -0.06863794138472552
#>     Attrib V11    0.47955832589792596
#>     Attrib V12    0.20390480132149502
#>     Attrib V13    0.002999713778047102
#>     Attrib V14    -0.018139880703615087
#>     Attrib V15    -0.10988554681899836
#>     Attrib V16    -0.1179799550597435
#>     Attrib V17    -0.19860527056396435
#>     Attrib V18    -0.33030116180456626
#>     Attrib V19    -0.11838030844046803
#>     Attrib V2    0.06068262153958589
#>     Attrib V20    -0.08177909096028368
#>     Attrib V21    0.45812873931786396
#>     Attrib V22    0.5003313314994424
#>     Attrib V23    0.31963259612034084
#>     Attrib V24    0.37653159779086665
#>     Attrib V25    0.06226485437169668
#>     Attrib V26    0.08565591403081506
#>     Attrib V27    0.3460812814068654
#>     Attrib V28    0.8581831817355787
#>     Attrib V29    0.9641949747247368
#>     Attrib V3    0.05904250549119792
#>     Attrib V30    0.9176918164373776
#>     Attrib V31    -0.6631628857346419
#>     Attrib V32    0.15142373782942498
#>     Attrib V33    0.10851573930618258
#>     Attrib V34    -0.572173858806908
#>     Attrib V35    -0.5252651728339331
#>     Attrib V36    -0.42661285976918734
#>     Attrib V37    -0.33883518579388083
#>     Attrib V38    0.09699811705937521
#>     Attrib V39    0.34909584938199856
#>     Attrib V4    0.3635432550174166
#>     Attrib V40    -0.028205602116616886
#>     Attrib V41    0.2719714593431025
#>     Attrib V42    0.3511145451819391
#>     Attrib V43    0.18391726586142768
#>     Attrib V44    0.7120381585297735
#>     Attrib V45    0.48223172997796127
#>     Attrib V46    0.26963108870440733
#>     Attrib V47    -0.02232241289085663
#>     Attrib V48    0.3881315684124465
#>     Attrib V49    0.6057558671519606
#>     Attrib V5    0.48480173274023186
#>     Attrib V50    -0.6867389320576287
#>     Attrib V51    0.12295170223187282
#>     Attrib V52    0.5678257383012743
#>     Attrib V53    0.5060863966050809
#>     Attrib V54    -0.0861256283941524
#>     Attrib V55    -0.43699332306137534
#>     Attrib V56    -0.21568094877874805
#>     Attrib V57    -0.5093860047905735
#>     Attrib V58    0.46926773230579805
#>     Attrib V59    0.17443554250065377
#>     Attrib V6    -0.20288911700834303
#>     Attrib V60    0.04802466729776931
#>     Attrib V7    -0.3874130805552995
#>     Attrib V8    -0.05203022213259629
#>     Attrib V9    0.20316969433018067
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -6.757313856418281E-4
#>     Attrib V1    0.26148297081694255
#>     Attrib V10    -0.7020901877513414
#>     Attrib V11    -0.2048712033593574
#>     Attrib V12    -0.20906483643553408
#>     Attrib V13    -0.1347230391004518
#>     Attrib V14    0.18291081025395492
#>     Attrib V15    0.6529091010162181
#>     Attrib V16    0.43600934901832505
#>     Attrib V17    0.30914950804748786
#>     Attrib V18    -0.10419812533959216
#>     Attrib V19    0.06982998523197594
#>     Attrib V2    0.18891196959917514
#>     Attrib V20    0.5038995662631538
#>     Attrib V21    0.6277091731115045
#>     Attrib V22    0.15207360688833807
#>     Attrib V23    -0.07246003171520941
#>     Attrib V24    -0.09796159781297295
#>     Attrib V25    -0.685696089042829
#>     Attrib V26    -0.833605424467726
#>     Attrib V27    -0.6476206908512523
#>     Attrib V28    -0.3402672429908676
#>     Attrib V29    -0.16179665072522934
#>     Attrib V3    0.09657334089643452
#>     Attrib V30    0.3654001068748867
#>     Attrib V31    -0.7848718382743893
#>     Attrib V32    0.05467668736480684
#>     Attrib V33    0.3958609003405828
#>     Attrib V34    -0.14108213354742954
#>     Attrib V35    -0.13564188358512824
#>     Attrib V36    -0.3869645643253356
#>     Attrib V37    -0.5119580579286107
#>     Attrib V38    0.030731468109966614
#>     Attrib V39    0.12025672875683706
#>     Attrib V4    0.243811553451661
#>     Attrib V40    -0.3500192480990927
#>     Attrib V41    -0.3190553093152145
#>     Attrib V42    0.37173828800454267
#>     Attrib V43    0.2702160697633304
#>     Attrib V44    0.8144134648420719
#>     Attrib V45    0.6911229553980353
#>     Attrib V46    0.12526871198079811
#>     Attrib V47    -0.22776580476479702
#>     Attrib V48    0.022392907069466342
#>     Attrib V49    0.24899205424002718
#>     Attrib V5    -0.01731911700794991
#>     Attrib V50    -0.6118904445961874
#>     Attrib V51    -0.23287617169050503
#>     Attrib V52    0.3032980307240992
#>     Attrib V53    0.4100402166158389
#>     Attrib V54    0.26943465157763885
#>     Attrib V55    0.007709542562420935
#>     Attrib V56    0.42438250939153244
#>     Attrib V57    -0.11634865848310007
#>     Attrib V58    0.7346329795182769
#>     Attrib V59    0.2953111041406044
#>     Attrib V6    -0.35207423545860983
#>     Attrib V60    0.23951796720233506
#>     Attrib V7    -0.1545980745143526
#>     Attrib V8    0.014995042121187074
#>     Attrib V9    -0.2014814861513269
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.005472984605960006
#>     Attrib V1    0.1379049241573475
#>     Attrib V10    -0.5065871753741312
#>     Attrib V11    -0.06620556417937563
#>     Attrib V12    -0.15374798140547322
#>     Attrib V13    -0.10678066296330282
#>     Attrib V14    0.13693197745558908
#>     Attrib V15    0.446735527558934
#>     Attrib V16    0.30391099288067597
#>     Attrib V17    0.22362926266377034
#>     Attrib V18    -0.08032065617264106
#>     Attrib V19    0.03923402055277015
#>     Attrib V2    0.08396971176622804
#>     Attrib V20    0.3438532209971448
#>     Attrib V21    0.5295852009983787
#>     Attrib V22    0.07798182013753763
#>     Attrib V23    -0.08674579225234316
#>     Attrib V24    -0.09060787543416515
#>     Attrib V25    -0.5402887280960905
#>     Attrib V26    -0.5743326295733956
#>     Attrib V27    -0.47508953363808476
#>     Attrib V28    -0.15895793305128889
#>     Attrib V29    0.027891181159977352
#>     Attrib V3    0.06164689903261519
#>     Attrib V30    0.30338087803357355
#>     Attrib V31    -0.6388543156692029
#>     Attrib V32    0.022924165763359483
#>     Attrib V33    0.30573244130772576
#>     Attrib V34    -0.10038180739567198
#>     Attrib V35    -0.11647585875684924
#>     Attrib V36    -0.30576018488427087
#>     Attrib V37    -0.39348007323359924
#>     Attrib V38    0.027365048226708193
#>     Attrib V39    0.13336144359346483
#>     Attrib V4    0.1595774476969172
#>     Attrib V40    -0.21908531532868467
#>     Attrib V41    -0.20822801282575365
#>     Attrib V42    0.3103906710550028
#>     Attrib V43    0.17970933376944564
#>     Attrib V44    0.6296621086445834
#>     Attrib V45    0.6137591396316529
#>     Attrib V46    0.11276734554881748
#>     Attrib V47    -0.1943828433630546
#>     Attrib V48    0.11494294726758185
#>     Attrib V49    0.32074317029965344
#>     Attrib V5    0.055762195196285815
#>     Attrib V50    -0.4389571076509589
#>     Attrib V51    -0.09542192845833494
#>     Attrib V52    0.2383537840398294
#>     Attrib V53    0.396917264143015
#>     Attrib V54    0.106157552888228
#>     Attrib V55    -0.06919035943840285
#>     Attrib V56    0.25195486007025153
#>     Attrib V57    -0.1304981612594019
#>     Attrib V58    0.5357226622213208
#>     Attrib V59    0.21377760872816667
#>     Attrib V6    -0.2879992427958092
#>     Attrib V60    0.18197363633755315
#>     Attrib V7    -0.11307705922054873
#>     Attrib V8    -0.0325615202215331
#>     Attrib V9    -0.06556658236624728
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.07374160382047634
#>     Attrib V1    0.006943386122279613
#>     Attrib V10    0.1260030397022273
#>     Attrib V11    -0.2849438282841033
#>     Attrib V12    -0.2431360190009267
#>     Attrib V13    -0.03940520641371948
#>     Attrib V14    0.12000671415663725
#>     Attrib V15    0.07334566973059198
#>     Attrib V16    0.11461480033836093
#>     Attrib V17    0.26369221937656995
#>     Attrib V18    0.4499134748330236
#>     Attrib V19    0.08125370466004102
#>     Attrib V2    0.03131740589753139
#>     Attrib V20    -0.21729507614523616
#>     Attrib V21    -0.3487782582088051
#>     Attrib V22    -0.2141802834478393
#>     Attrib V23    -0.029955883647519943
#>     Attrib V24    -0.20785332229862855
#>     Attrib V25    0.10245840879691043
#>     Attrib V26    -0.04712497067352217
#>     Attrib V27    -0.1603271400242181
#>     Attrib V28    -0.19251724574522502
#>     Attrib V29    -0.00311947211812939
#>     Attrib V3    0.01908043511428892
#>     Attrib V30    -0.05535321254739357
#>     Attrib V31    0.6083978908593544
#>     Attrib V32    0.03659308902224973
#>     Attrib V33    -0.1200942541481249
#>     Attrib V34    0.12124412556695585
#>     Attrib V35    0.25550115306692733
#>     Attrib V36    0.5073011343395281
#>     Attrib V37    0.43581616152282426
#>     Attrib V38    -0.1397780148216407
#>     Attrib V39    -0.27347189254238646
#>     Attrib V4    -0.0949894459546485
#>     Attrib V40    0.18841202775706728
#>     Attrib V41    0.18712052952943795
#>     Attrib V42    0.05594093900144971
#>     Attrib V43    0.01766002046582126
#>     Attrib V44    -0.24255450301960152
#>     Attrib V45    -0.3518604170084546
#>     Attrib V46    -0.19754782124319817
#>     Attrib V47    0.11231482446235208
#>     Attrib V48    -0.10630127862673117
#>     Attrib V49    -0.3094298244243876
#>     Attrib V5    -0.09973862898642707
#>     Attrib V50    0.47982438331235816
#>     Attrib V51    0.13385680020852586
#>     Attrib V52    -0.21975202706157368
#>     Attrib V53    -0.2504802512949334
#>     Attrib V54    0.030286769840924183
#>     Attrib V55    0.1859982093408171
#>     Attrib V56    0.012678727357338802
#>     Attrib V57    0.10351779002250733
#>     Attrib V58    -0.3879889404853287
#>     Attrib V59    0.007666734080230667
#>     Attrib V6    0.18145505412364435
#>     Attrib V60    0.1381795880493929
#>     Attrib V7    0.23043845668231144
#>     Attrib V8    0.22090075385923091
#>     Attrib V9    -0.10294214035917862
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.030403643931144936
#>     Attrib V1    0.2518066462384746
#>     Attrib V10    -0.6654328555374289
#>     Attrib V11    -0.19118723608601787
#>     Attrib V12    -0.1501772615196279
#>     Attrib V13    -0.15925109583668315
#>     Attrib V14    0.1253559849158737
#>     Attrib V15    0.4931146488983311
#>     Attrib V16    0.4359742907660781
#>     Attrib V17    0.26932948716880967
#>     Attrib V18    0.001003286216441444
#>     Attrib V19    0.03936755089491879
#>     Attrib V2    0.15562529212562418
#>     Attrib V20    0.4521116056610835
#>     Attrib V21    0.5491221947444179
#>     Attrib V22    0.042388841863730466
#>     Attrib V23    -0.10828332963606005
#>     Attrib V24    -0.048538286942330935
#>     Attrib V25    -0.5354739680469924
#>     Attrib V26    -0.6937985587852156
#>     Attrib V27    -0.5471891073589172
#>     Attrib V28    -0.3698777023903257
#>     Attrib V29    -0.14413564415768312
#>     Attrib V3    0.08063175491766193
#>     Attrib V30    0.2188825645411337
#>     Attrib V31    -0.68027585677806
#>     Attrib V32    0.030701946201260696
#>     Attrib V33    0.3379541047926681
#>     Attrib V34    -0.03987374064224699
#>     Attrib V35    -0.037299332211962265
#>     Attrib V36    -0.30776476796619506
#>     Attrib V37    -0.38543833251851534
#>     Attrib V38    0.05888539224000853
#>     Attrib V39    0.08543097590006639
#>     Attrib V4    0.2259702870865932
#>     Attrib V40    -0.3155479213779598
#>     Attrib V41    -0.2655405241724059
#>     Attrib V42    0.3144778464214565
#>     Attrib V43    0.2254098285327754
#>     Attrib V44    0.6093196021475513
#>     Attrib V45    0.5733350106879845
#>     Attrib V46    0.13528649438444426
#>     Attrib V47    -0.21793328839400103
#>     Attrib V48    0.00917833444280674
#>     Attrib V49    0.1942819749639651
#>     Attrib V5    -0.021368687545999816
#>     Attrib V50    -0.4502137489546164
#>     Attrib V51    -0.17673606580877788
#>     Attrib V52    0.20696377119608367
#>     Attrib V53    0.4406542878402003
#>     Attrib V54    0.23180158328054065
#>     Attrib V55    0.027429036599499013
#>     Attrib V56    0.4061434754228399
#>     Attrib V57    -0.03541776781718723
#>     Attrib V58    0.6134789633606781
#>     Attrib V59    0.3060609036410964
#>     Attrib V6    -0.2534019805017598
#>     Attrib V60    0.24468641604582506
#>     Attrib V7    -0.09584928756460383
#>     Attrib V8    -0.007882198820822509
#>     Attrib V9    -0.13661829417386334
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.10743942405664184
#>     Attrib V1    0.026352741069829475
#>     Attrib V10    0.27688982312190563
#>     Attrib V11    0.9070599139370462
#>     Attrib V12    0.43112528375272813
#>     Attrib V13    0.026267133107142165
#>     Attrib V14    -0.08761841097599367
#>     Attrib V15    -0.2689396582224555
#>     Attrib V16    -0.27310486879895235
#>     Attrib V17    -0.5053364589727508
#>     Attrib V18    -0.5703096047065156
#>     Attrib V19    -0.38699922473484527
#>     Attrib V2    0.11788978460578242
#>     Attrib V20    -0.5617854365947296
#>     Attrib V21    -0.10637309146261825
#>     Attrib V22    0.005341907531972467
#>     Attrib V23    -0.16792666886001242
#>     Attrib V24    0.04887445126864047
#>     Attrib V25    0.0728455560416976
#>     Attrib V26    0.48794699867220415
#>     Attrib V27    0.5643777326535949
#>     Attrib V28    0.6918207641055137
#>     Attrib V29    0.7325951235914737
#>     Attrib V3    0.02776310182566244
#>     Attrib V30    0.5477070320473453
#>     Attrib V31    -0.21562446198900254
#>     Attrib V32    0.13245231246106223
#>     Attrib V33    0.05962215897222375
#>     Attrib V34    -0.37482941428872013
#>     Attrib V35    -0.42692341677515466
#>     Attrib V36    -0.3890672829461915
#>     Attrib V37    -0.2740594186524942
#>     Attrib V38    -0.04425475427188542
#>     Attrib V39    0.2534634275985521
#>     Attrib V4    0.15419002101542373
#>     Attrib V40    0.16028002675907005
#>     Attrib V41    0.23943252051853076
#>     Attrib V42    -0.023096018288276655
#>     Attrib V43    -0.046860471629767336
#>     Attrib V44    0.1288652272705763
#>     Attrib V45    0.23543019971607296
#>     Attrib V46    0.37787947544789785
#>     Attrib V47    0.17070941806133813
#>     Attrib V48    0.49716650112455785
#>     Attrib V49    0.7067145414841738
#>     Attrib V5    0.29199343070999306
#>     Attrib V50    -0.1258840022965598
#>     Attrib V51    0.19573752618092932
#>     Attrib V52    0.4413389810650502
#>     Attrib V53    0.29843536064053927
#>     Attrib V54    0.022912529570159282
#>     Attrib V55    -0.10043180370779194
#>     Attrib V56    -0.4765531647014346
#>     Attrib V57    -0.11424954973615893
#>     Attrib V58    0.4342033744459382
#>     Attrib V59    0.12141534350906642
#>     Attrib V6    -0.1276150166296375
#>     Attrib V60    0.028259489122756682
#>     Attrib V7    -0.2286026325769633
#>     Attrib V8    0.08284742808451745
#>     Attrib V9    0.3881391817274605
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.11578764617275744
#>     Attrib V1    0.10355153336170549
#>     Attrib V10    -0.2706234817656486
#>     Attrib V11    0.15724363227918725
#>     Attrib V12    0.007957408966852679
#>     Attrib V13    -0.06387202159786246
#>     Attrib V14    -0.010411294037613423
#>     Attrib V15    0.2031087247328219
#>     Attrib V16    0.19809438149772343
#>     Attrib V17    0.03810692731190677
#>     Attrib V18    -0.16197121888072277
#>     Attrib V19    0.008117768578059455
#>     Attrib V2    0.07578989215542195
#>     Attrib V20    0.0882785609364988
#>     Attrib V21    0.21578100746320705
#>     Attrib V22    -0.05613597027551326
#>     Attrib V23    -0.1841024934714062
#>     Attrib V24    -0.02640261727834811
#>     Attrib V25    -0.26412517161665366
#>     Attrib V26    -0.2369446252950573
#>     Attrib V27    -0.21041329921109486
#>     Attrib V28    -0.04503136280041921
#>     Attrib V29    0.07917139579314776
#>     Attrib V3    -0.00786375392012363
#>     Attrib V30    0.25905401324170335
#>     Attrib V31    -0.4489437774760446
#>     Attrib V32    0.029867459814552834
#>     Attrib V33    0.2084202314511123
#>     Attrib V34    -0.07105604201434748
#>     Attrib V35    -0.0793862275268455
#>     Attrib V36    -0.18275209889036756
#>     Attrib V37    -0.2794203615918772
#>     Attrib V38    0.11123443614517566
#>     Attrib V39    0.13561554691360986
#>     Attrib V4    0.15219552656658575
#>     Attrib V40    -0.13715045923089197
#>     Attrib V41    -0.12365041784227845
#>     Attrib V42    0.08650820705250922
#>     Attrib V43    0.13755366815440487
#>     Attrib V44    0.47052582413470856
#>     Attrib V45    0.4277552859001961
#>     Attrib V46    0.16378229126836985
#>     Attrib V47    -0.04402050909004604
#>     Attrib V48    0.22063114656653654
#>     Attrib V49    0.3104713998525572
#>     Attrib V5    0.04802594107547818
#>     Attrib V50    -0.30483563725081614
#>     Attrib V51    -0.07229192341729536
#>     Attrib V52    0.20991437273530905
#>     Attrib V53    0.3493549595210144
#>     Attrib V54    0.1792409638403426
#>     Attrib V55    -0.017946294861743945
#>     Attrib V56    0.07345065765024411
#>     Attrib V57    -0.030128933333769845
#>     Attrib V58    0.38834485468494634
#>     Attrib V59    0.20681470998430512
#>     Attrib V6    -0.2350136088047118
#>     Attrib V60    0.16059389742678326
#>     Attrib V7    -0.12913100237930805
#>     Attrib V8    -0.02616903908136102
#>     Attrib V9    -0.04745072821023994
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    -0.24203850486018116
#>     Attrib V1    -0.18579167946135014
#>     Attrib V10    0.9108220571481778
#>     Attrib V11    1.6362438557781347
#>     Attrib V12    1.0751129798194106
#>     Attrib V13    0.25392541816694886
#>     Attrib V14    -0.335188558357048
#>     Attrib V15    -1.0666540601708403
#>     Attrib V16    -0.810048213248927
#>     Attrib V17    -0.5295476332575383
#>     Attrib V18    -0.4318078386446686
#>     Attrib V19    -0.18273391348887438
#>     Attrib V2    0.17807102899490973
#>     Attrib V20    -0.7683223172305192
#>     Attrib V21    0.29434282214229013
#>     Attrib V22    0.9612126146005163
#>     Attrib V23    0.5371967173959938
#>     Attrib V24    0.6856546969960716
#>     Attrib V25    0.9586104557529315
#>     Attrib V26    1.492210344036358
#>     Attrib V27    1.1717059213227972
#>     Attrib V28    1.382057135459893
#>     Attrib V29    1.5578573538854088
#>     Attrib V3    0.17548546983355512
#>     Attrib V30    1.079588564183649
#>     Attrib V31    -0.4956733718778209
#>     Attrib V32    -0.20263344172745804
#>     Attrib V33    -0.3280128059993942
#>     Attrib V34    -0.6832938591201025
#>     Attrib V35    -0.7110965319515252
#>     Attrib V36    -0.47478953288699544
#>     Attrib V37    -0.24240753580626398
#>     Attrib V38    -0.03821298536094872
#>     Attrib V39    0.9742189438589945
#>     Attrib V4    0.3996183818894269
#>     Attrib V40    0.7934428940177426
#>     Attrib V41    0.9644593568256923
#>     Attrib V42    0.024488921318408612
#>     Attrib V43    0.003830815233604546
#>     Attrib V44    -0.1602718040479798
#>     Attrib V45    -0.061031109815969514
#>     Attrib V46    0.729075207093615
#>     Attrib V47    0.6427614101096002
#>     Attrib V48    1.0616707500505782
#>     Attrib V49    1.5495989780118948
#>     Attrib V5    1.0337658037115411
#>     Attrib V50    0.2580723999097555
#>     Attrib V51    0.9035850733633932
#>     Attrib V52    1.1316268408245338
#>     Attrib V53    1.2201082235940925
#>     Attrib V54    -0.31538300098549826
#>     Attrib V55    -0.7150529609303737
#>     Attrib V56    -0.9173675844172611
#>     Attrib V57    -0.5613463266174568
#>     Attrib V58    0.22975445424629065
#>     Attrib V59    -0.08248216796563095
#>     Attrib V6    0.2376640501328616
#>     Attrib V60    -0.21433372163191539
#>     Attrib V7    -0.4509149866372733
#>     Attrib V8    -0.46911315104403545
#>     Attrib V9    0.6739960125942621
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.11551494245795531
#>     Attrib V1    0.05241561065421059
#>     Attrib V10    0.14511329882057453
#>     Attrib V11    -0.38070425502299476
#>     Attrib V12    -0.22632675698866533
#>     Attrib V13    0.005852641940258291
#>     Attrib V14    0.18491764786342763
#>     Attrib V15    -0.010156575433400764
#>     Attrib V16    0.08735765909857443
#>     Attrib V17    0.06868390908455813
#>     Attrib V18    0.4072315960568578
#>     Attrib V19    0.1703300206344953
#>     Attrib V2    0.0019535244828600713
#>     Attrib V20    -0.03947307067693275
#>     Attrib V21    -0.31322538556101026
#>     Attrib V22    -0.2630641461584557
#>     Attrib V23    -0.06990791684890345
#>     Attrib V24    -0.2508056644684916
#>     Attrib V25    0.011368556410230757
#>     Attrib V26    0.0068299202464144355
#>     Attrib V27    -0.07710672904528132
#>     Attrib V28    -0.19453783531361313
#>     Attrib V29    -0.15939030062266157
#>     Attrib V3    0.004654520902742528
#>     Attrib V30    -0.2604845674085767
#>     Attrib V31    0.5812730010074728
#>     Attrib V32    -0.1388997474247741
#>     Attrib V33    -0.21794259902535995
#>     Attrib V34    0.14599587971624192
#>     Attrib V35    0.22753722000150667
#>     Attrib V36    0.45737996002285364
#>     Attrib V37    0.4357141237196636
#>     Attrib V38    -0.08935552723802677
#>     Attrib V39    -0.29251350457404046
#>     Attrib V4    -0.08407745997576631
#>     Attrib V40    0.20687105620262494
#>     Attrib V41    0.20005023505142747
#>     Attrib V42    -0.07433515218805413
#>     Attrib V43    -0.05930547179173158
#>     Attrib V44    -0.36134065786012365
#>     Attrib V45    -0.349901974437033
#>     Attrib V46    -0.19020447241744545
#>     Attrib V47    0.11861168503525031
#>     Attrib V48    -0.1644581305084897
#>     Attrib V49    -0.3409229374411796
#>     Attrib V5    -0.12041634089223124
#>     Attrib V50    0.6337103937479958
#>     Attrib V51    0.11085054793935158
#>     Attrib V52    -0.24560669796747567
#>     Attrib V53    -0.20480267600182375
#>     Attrib V54    0.03170945995766815
#>     Attrib V55    0.20064319262723765
#>     Attrib V56    -0.057990075873495216
#>     Attrib V57    0.19123328117452865
#>     Attrib V58    -0.44863211313002915
#>     Attrib V59    -0.056415315760522555
#>     Attrib V6    0.23422108271281525
#>     Attrib V60    0.05806487005337731
#>     Attrib V7    0.24040840274563355
#>     Attrib V8    0.2138455743475368
#>     Attrib V9    -0.1322387308237303
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.02123713673815117
#>     Attrib V1    0.1354417166969638
#>     Attrib V10    -0.654391132123981
#>     Attrib V11    -0.12197457639974169
#>     Attrib V12    -0.18833679433240222
#>     Attrib V13    -0.2112236615328964
#>     Attrib V14    0.07501424885411803
#>     Attrib V15    0.47066273680129295
#>     Attrib V16    0.41595406643623073
#>     Attrib V17    0.34740622241002683
#>     Attrib V18    -0.03240737789529555
#>     Attrib V19    0.07833341367923168
#>     Attrib V2    0.05424438241929632
#>     Attrib V20    0.5250477165262593
#>     Attrib V21    0.6397377820061204
#>     Attrib V22    0.14305539762016878
#>     Attrib V23    -0.01738086339776273
#>     Attrib V24    -0.011908419019181698
#>     Attrib V25    -0.5616580158968684
#>     Attrib V26    -0.7441351043100752
#>     Attrib V27    -0.52331113129632
#>     Attrib V28    -0.1570523472073145
#>     Attrib V29    0.026736397399876405
#>     Attrib V3    -0.016379848721169182
#>     Attrib V30    0.4200994469893587
#>     Attrib V31    -0.8881999167936493
#>     Attrib V32    -0.03257655935817489
#>     Attrib V33    0.3439756160543683
#>     Attrib V34    -0.09671949887941199
#>     Attrib V35    -0.06848709687335068
#>     Attrib V36    -0.2980001960106709
#>     Attrib V37    -0.45454847620887445
#>     Attrib V38    0.1666584614066819
#>     Attrib V39    0.13742770801683393
#>     Attrib V4    0.21531089770295106
#>     Attrib V40    -0.362922120550752
#>     Attrib V41    -0.32632225088401473
#>     Attrib V42    0.35682135763943573
#>     Attrib V43    0.2725906468515424
#>     Attrib V44    0.8828520576818984
#>     Attrib V45    0.7882841311263026
#>     Attrib V46    0.1678323853996827
#>     Attrib V47    -0.19077018993425943
#>     Attrib V48    0.12598111074012647
#>     Attrib V49    0.30159911504198206
#>     Attrib V5    0.05245200251876243
#>     Attrib V50    -0.5945674973188209
#>     Attrib V51    -0.10764839845282709
#>     Attrib V52    0.2693194175770136
#>     Attrib V53    0.4390555784186596
#>     Attrib V54    0.27602681227816844
#>     Attrib V55    -0.08713598035180356
#>     Attrib V56    0.36134743252835894
#>     Attrib V57    -0.16440004151461857
#>     Attrib V58    0.686545958677253
#>     Attrib V59    0.2110252303097704
#>     Attrib V6    -0.2996235918657299
#>     Attrib V60    0.22061321999144853
#>     Attrib V7    -0.14572020391940246
#>     Attrib V8    0.02015626860918623
#>     Attrib V9    -0.08835721011525104
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.017782984643776777
#>     Attrib V1    0.16353611040421956
#>     Attrib V10    -0.6245024943818613
#>     Attrib V11    -0.12833735065615312
#>     Attrib V12    -0.19469461722197964
#>     Attrib V13    -0.10837998369435607
#>     Attrib V14    0.15827101436744484
#>     Attrib V15    0.4586044293716102
#>     Attrib V16    0.39041706015477284
#>     Attrib V17    0.2736908951270958
#>     Attrib V18    -0.03180334594989652
#>     Attrib V19    0.10484180671988601
#>     Attrib V2    0.16722221490621786
#>     Attrib V20    0.3805680416002632
#>     Attrib V21    0.4375916417305628
#>     Attrib V22    0.07188251676267529
#>     Attrib V23    -0.07317373676894323
#>     Attrib V24    -0.09078585462132825
#>     Attrib V25    -0.5390223047696909
#>     Attrib V26    -0.6473262728300071
#>     Attrib V27    -0.49769859602737976
#>     Attrib V28    -0.34345371040616113
#>     Attrib V29    -0.10766763213277837
#>     Attrib V3    0.02593638278226177
#>     Attrib V30    0.1679249777185397
#>     Attrib V31    -0.641944999118182
#>     Attrib V32    -0.03179245319745716
#>     Attrib V33    0.3242555302538576
#>     Attrib V34    0.03975379688048053
#>     Attrib V35    0.007555959567383634
#>     Attrib V36    -0.21094886005764404
#>     Attrib V37    -0.3467103825909764
#>     Attrib V38    0.09601814012314444
#>     Attrib V39    0.06949065813701888
#>     Attrib V4    0.20704496962335148
#>     Attrib V40    -0.2040811885790475
#>     Attrib V41    -0.26804428753078996
#>     Attrib V42    0.22369712000210487
#>     Attrib V43    0.23910578713602132
#>     Attrib V44    0.5040937391690813
#>     Attrib V45    0.5262451083538644
#>     Attrib V46    0.1764181052394889
#>     Attrib V47    -0.18298670291011276
#>     Attrib V48    0.05127629795367407
#>     Attrib V49    0.14265602641693217
#>     Attrib V5    -0.016850537077690835
#>     Attrib V50    -0.4300456810017373
#>     Attrib V51    -0.13986010583484243
#>     Attrib V52    0.231298571018435
#>     Attrib V53    0.3669632223420443
#>     Attrib V54    0.22920134843517753
#>     Attrib V55    0.05459486691964096
#>     Attrib V56    0.37970693444537096
#>     Attrib V57    0.007985630405873202
#>     Attrib V58    0.5754809822695465
#>     Attrib V59    0.28510422303022165
#>     Attrib V6    -0.31249193337502895
#>     Attrib V60    0.20268445137261315
#>     Attrib V7    -0.07398966988540796
#>     Attrib V8    4.903961191457074E-4
#>     Attrib V9    -0.1556313371743651
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.18980705942328502
#>     Attrib V1    0.025322156679132343
#>     Attrib V10    0.024705975719797775
#>     Attrib V11    -0.02313903316293121
#>     Attrib V12    -0.00779265320795124
#>     Attrib V13    0.06792210761063139
#>     Attrib V14    0.058995040734338394
#>     Attrib V15    0.014535569531834897
#>     Attrib V16    -0.0021306635150109914
#>     Attrib V17    0.028665083112832997
#>     Attrib V18    0.02795850938506433
#>     Attrib V19    -0.005894945731194498
#>     Attrib V2    0.052300998793548936
#>     Attrib V20    -0.018815639766118376
#>     Attrib V21    -0.07917360475095735
#>     Attrib V22    -0.10202638913307102
#>     Attrib V23    0.010479416592751629
#>     Attrib V24    -0.010984751796262876
#>     Attrib V25    0.03760862994549818
#>     Attrib V26    -0.06938214007111576
#>     Attrib V27    0.0017315318937917053
#>     Attrib V28    -0.05137806742623382
#>     Attrib V29    0.0015596930667106774
#>     Attrib V3    0.13791065126249388
#>     Attrib V30    0.0071165663809696095
#>     Attrib V31    0.046264035063132855
#>     Attrib V32    0.02786968126597797
#>     Attrib V33    -1.702552314737947E-4
#>     Attrib V34    0.0819109947980523
#>     Attrib V35    0.05444775006960791
#>     Attrib V36    0.07999563255471921
#>     Attrib V37    0.10771359627555566
#>     Attrib V38    0.015398190995613062
#>     Attrib V39    0.06144887479832482
#>     Attrib V4    0.09844458745794536
#>     Attrib V40    0.09385888732630604
#>     Attrib V41    0.08556695503730438
#>     Attrib V42    0.0772812987109098
#>     Attrib V43    0.010834340752025606
#>     Attrib V44    -0.013876488828048216
#>     Attrib V45    -0.03034772846522478
#>     Attrib V46    0.06851794152417469
#>     Attrib V47    0.11100609321849024
#>     Attrib V48    0.01971684012966698
#>     Attrib V49    0.024121053355829807
#>     Attrib V5    0.10261681823339301
#>     Attrib V50    0.07742969443753302
#>     Attrib V51    0.05889954707463557
#>     Attrib V52    0.013659368854640754
#>     Attrib V53    0.01698904890453718
#>     Attrib V54    0.0013509676109206997
#>     Attrib V55    0.058201292928573366
#>     Attrib V56    0.06998504302272215
#>     Attrib V57    0.10034830906752971
#>     Attrib V58    -5.440020551814963E-6
#>     Attrib V59    0.09325152434993332
#>     Attrib V6    0.09643190079947624
#>     Attrib V60    0.0960084619331838
#>     Attrib V7    0.10587690837319699
#>     Attrib V8    0.049964712241880864
#>     Attrib V9    0.020179610558053684
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.10662058105246922
#>     Attrib V1    0.34817604996409596
#>     Attrib V10    -0.6064432455424372
#>     Attrib V11    0.06408773293315997
#>     Attrib V12    0.006088076994217054
#>     Attrib V13    -0.13050986636579265
#>     Attrib V14    0.12654674587089013
#>     Attrib V15    0.5688207825194225
#>     Attrib V16    0.35009694889594245
#>     Attrib V17    0.2534284982915934
#>     Attrib V18    -0.0879039342522779
#>     Attrib V19    -0.03149583753875205
#>     Attrib V2    0.1863213623491495
#>     Attrib V20    0.36496825446414216
#>     Attrib V21    0.4383033069092094
#>     Attrib V22    -0.04561189692163187
#>     Attrib V23    -0.19099690987012322
#>     Attrib V24    -0.14707637967731846
#>     Attrib V25    -0.5808485994968334
#>     Attrib V26    -0.6356021484504666
#>     Attrib V27    -0.6295213871244912
#>     Attrib V28    -0.5619797102388013
#>     Attrib V29    -0.3659383686556012
#>     Attrib V3    -0.016480781735110906
#>     Attrib V30    0.18041765487150951
#>     Attrib V31    -0.6532808074644922
#>     Attrib V32    0.062157762195609374
#>     Attrib V33    0.3940064912349675
#>     Attrib V34    -0.018241280463392833
#>     Attrib V35    -0.024625750925886435
#>     Attrib V36    -0.30007079080887766
#>     Attrib V37    -0.38518591614987147
#>     Attrib V38    0.07523351628073162
#>     Attrib V39    0.1370404489733128
#>     Attrib V4    0.1067152463210469
#>     Attrib V40    -0.30461180905136637
#>     Attrib V41    -0.4052890088384314
#>     Attrib V42    0.17038654485521662
#>     Attrib V43    0.22418445159709222
#>     Attrib V44    0.6787983433028714
#>     Attrib V45    0.5169100706033739
#>     Attrib V46    0.09111352742996731
#>     Attrib V47    -0.24380262197193392
#>     Attrib V48    0.15438755512638455
#>     Attrib V49    0.33773107473540837
#>     Attrib V5    -0.11110957992292851
#>     Attrib V50    -0.4473274985921846
#>     Attrib V51    -0.21206408854469128
#>     Attrib V52    0.2280068356093528
#>     Attrib V53    0.37879284158796356
#>     Attrib V54    0.3857854326794861
#>     Attrib V55    0.11397599556171538
#>     Attrib V56    0.3929081566813376
#>     Attrib V57    -0.020028480930938952
#>     Attrib V58    0.6651138957458775
#>     Attrib V59    0.26492520050480634
#>     Attrib V6    -0.36296420906808535
#>     Attrib V60    0.27416359150366026
#>     Attrib V7    -0.19678607444697144
#>     Attrib V8    -0.10134526525542409
#>     Attrib V9    -0.19043298656690696
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.03724569798288651
#>     Attrib V1    -0.09177783829213362
#>     Attrib V10    0.6175735537629987
#>     Attrib V11    -0.21139337677832964
#>     Attrib V12    0.10886193252928456
#>     Attrib V13    0.17559515862353914
#>     Attrib V14    0.10205194099466533
#>     Attrib V15    -0.28696129381195706
#>     Attrib V16    -0.2664417443577508
#>     Attrib V17    -0.2978628426294606
#>     Attrib V18    0.15977729597702536
#>     Attrib V19    -0.002777374428700821
#>     Attrib V2    -0.05757193798205428
#>     Attrib V20    -0.5310978878725414
#>     Attrib V21    -0.9868213900468209
#>     Attrib V22    -0.5076721950282417
#>     Attrib V23    -0.20680576298453407
#>     Attrib V24    -0.16130159946133577
#>     Attrib V25    0.579431699689516
#>     Attrib V26    0.8125317590623936
#>     Attrib V27    0.5591050597446694
#>     Attrib V28    0.11568275581702697
#>     Attrib V29    -0.08146150213205026
#>     Attrib V3    0.023034989118536235
#>     Attrib V30    -0.7768637955801729
#>     Attrib V31    1.1518087472994392
#>     Attrib V32    -0.05476738507360084
#>     Attrib V33    -0.669627884462958
#>     Attrib V34    0.222533213097732
#>     Attrib V35    0.19662009581792397
#>     Attrib V36    0.5112087004107577
#>     Attrib V37    0.7400904758565067
#>     Attrib V38    -0.2585103975319262
#>     Attrib V39    -0.33605950454587297
#>     Attrib V4    -0.31822381742936634
#>     Attrib V40    0.515445765012131
#>     Attrib V41    0.27708782059410536
#>     Attrib V42    -0.5607775568359232
#>     Attrib V43    -0.42910413184986873
#>     Attrib V44    -1.2247402060317312
#>     Attrib V45    -0.9840501680398153
#>     Attrib V46    -0.19468218414405683
#>     Attrib V47    0.3291942535032564
#>     Attrib V48    -0.19239792696679406
#>     Attrib V49    -0.5341828911495955
#>     Attrib V5    -0.17662763610893595
#>     Attrib V50    1.0765532331164005
#>     Attrib V51    0.22580589461904674
#>     Attrib V52    -0.4858356697814069
#>     Attrib V53    -0.532447099613523
#>     Attrib V54    -0.22310975422904886
#>     Attrib V55    0.3637843709167498
#>     Attrib V56    -0.3154071120549548
#>     Attrib V57    0.375900413181581
#>     Attrib V58    -0.8956898033024321
#>     Attrib V59    -0.23312721389287813
#>     Attrib V6    0.3614749233862632
#>     Attrib V60    -0.26491935980357606
#>     Attrib V7    0.17681849584640427
#>     Attrib V8    0.14084424078839883
#>     Attrib V9    -0.10968324439417426
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1484920023351263
#>     Attrib V1    0.008102227157855127
#>     Attrib V10    0.07273352058894365
#>     Attrib V11    -0.043863313345120454
#>     Attrib V12    -0.018381356642202216
#>     Attrib V13    0.03564741696857016
#>     Attrib V14    0.025392512483950472
#>     Attrib V15    0.01430101995043483
#>     Attrib V16    0.090206764961047
#>     Attrib V17    0.08294995120786333
#>     Attrib V18    0.11083455828676579
#>     Attrib V19    0.04886332941432206
#>     Attrib V2    0.006347121825523406
#>     Attrib V20    -0.08128460452775473
#>     Attrib V21    -0.1337157301739572
#>     Attrib V22    -0.07704810505132471
#>     Attrib V23    -0.045099515637751955
#>     Attrib V24    -9.296425052405794E-4
#>     Attrib V25    0.03853052983411625
#>     Attrib V26    -0.051323460188940295
#>     Attrib V27    -0.05927033303343858
#>     Attrib V28    -0.025360735862257653
#>     Attrib V29    -0.03335841452056372
#>     Attrib V3    0.09213473627780751
#>     Attrib V30    -0.058966161321258447
#>     Attrib V31    0.07848012163973025
#>     Attrib V32    0.017821912543424166
#>     Attrib V33    -0.037062910316336295
#>     Attrib V34    0.06400476586125399
#>     Attrib V35    0.06135353137753704
#>     Attrib V36    0.11552714347175264
#>     Attrib V37    0.1561663657111092
#>     Attrib V38    0.01824340146601995
#>     Attrib V39    -3.049363696228544E-4
#>     Attrib V4    0.07941424679722717
#>     Attrib V40    0.0542360432717409
#>     Attrib V41    0.11017126530583095
#>     Attrib V42    0.0893403373552748
#>     Attrib V43    0.014679571005199014
#>     Attrib V44    -0.08282906670400254
#>     Attrib V45    -0.02691076820261252
#>     Attrib V46    0.036882678607237596
#>     Attrib V47    0.07907604916348787
#>     Attrib V48    0.005298062246124616
#>     Attrib V49    -0.0564918074117358
#>     Attrib V5    0.07559264651022479
#>     Attrib V50    0.15801534535464917
#>     Attrib V51    0.12064400677739166
#>     Attrib V52    0.047653036843222925
#>     Attrib V53    0.031229489584450806
#>     Attrib V54    -0.014956743996780516
#>     Attrib V55    0.07547983048695157
#>     Attrib V56    0.05819327844904299
#>     Attrib V57    0.1199438275900003
#>     Attrib V58    0.0162323907400163
#>     Attrib V59    0.005455696056588677
#>     Attrib V6    0.0995679489725584
#>     Attrib V60    0.06214998789045334
#>     Attrib V7    0.060176605606058725
#>     Attrib V8    0.049535230546455936
#>     Attrib V9    0.05497525109757759
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.023109686311293336
#>     Attrib V1    0.2711599249726564
#>     Attrib V10    -0.676123900415723
#>     Attrib V11    -0.23236413824830482
#>     Attrib V12    -0.2725245421333393
#>     Attrib V13    -0.1796503899977516
#>     Attrib V14    0.14807224393837728
#>     Attrib V15    0.6430639349100908
#>     Attrib V16    0.4677412813037142
#>     Attrib V17    0.3420527312366695
#>     Attrib V18    -0.04417299389256678
#>     Attrib V19    0.06611385595586074
#>     Attrib V2    0.22741570554920126
#>     Attrib V20    0.4795590783505918
#>     Attrib V21    0.5682533970031277
#>     Attrib V22    0.1114567471242082
#>     Attrib V23    -0.1164637011356391
#>     Attrib V24    -0.08249271942507651
#>     Attrib V25    -0.7040505099766967
#>     Attrib V26    -0.8169556481981962
#>     Attrib V27    -0.6431624234936518
#>     Attrib V28    -0.4210263310732363
#>     Attrib V29    -0.20580696367898255
#>     Attrib V3    0.08038465283089509
#>     Attrib V30    0.24009991484429954
#>     Attrib V31    -0.7026503544887995
#>     Attrib V32    -0.017971288837756377
#>     Attrib V33    0.4128510804399233
#>     Attrib V34    -0.034669149706273966
#>     Attrib V35    -0.005618478653436657
#>     Attrib V36    -0.31497341175787646
#>     Attrib V37    -0.45352319009313086
#>     Attrib V38    0.11390846107940701
#>     Attrib V39    0.10921579943247045
#>     Attrib V4    0.2280200489471928
#>     Attrib V40    -0.3767198764698953
#>     Attrib V41    -0.3520060451228027
#>     Attrib V42    0.28167065293462085
#>     Attrib V43    0.2774004596295713
#>     Attrib V44    0.705741251227796
#>     Attrib V45    0.6550861075034962
#>     Attrib V46    0.1075545272484092
#>     Attrib V47    -0.2817845315664479
#>     Attrib V48    0.05878674606105842
#>     Attrib V49    0.18254714874587574
#>     Attrib V5    -0.05512881788567197
#>     Attrib V50    -0.5095409351297646
#>     Attrib V51    -0.18219968744754325
#>     Attrib V52    0.203021890059486
#>     Attrib V53    0.3486427334651256
#>     Attrib V54    0.2331327036968809
#>     Attrib V55    0.09562851676406489
#>     Attrib V56    0.48215932202752454
#>     Attrib V57    -0.014731171260419167
#>     Attrib V58    0.6222509817013616
#>     Attrib V59    0.25003078790701944
#>     Attrib V6    -0.30357754365321155
#>     Attrib V60    0.24003726287481678
#>     Attrib V7    -0.12246018661413242
#>     Attrib V8    0.007637093822462168
#>     Attrib V9    -0.18193853887856565
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.1519606863783478
#>     Attrib V1    0.05171187537653938
#>     Attrib V10    0.15511989865282227
#>     Attrib V11    -0.47138461619593763
#>     Attrib V12    -0.3341617487939177
#>     Attrib V13    -0.040083548022058046
#>     Attrib V14    0.16534520938007347
#>     Attrib V15    -0.005278798423200553
#>     Attrib V16    0.048252230478342324
#>     Attrib V17    0.011631627437058797
#>     Attrib V18    0.3493529628842667
#>     Attrib V19    0.08583252325781195
#>     Attrib V2    0.03528870780732604
#>     Attrib V20    4.1154960036514024E-4
#>     Attrib V21    -0.35026333790230874
#>     Attrib V22    -0.36917986406171044
#>     Attrib V23    -0.11701505260115874
#>     Attrib V24    -0.2229652994592229
#>     Attrib V25    0.08027871169801336
#>     Attrib V26    0.08868013664102413
#>     Attrib V27    0.007817496092909342
#>     Attrib V28    -0.2053271104157917
#>     Attrib V29    -0.21776314635663813
#>     Attrib V3    0.09415136192450756
#>     Attrib V30    -0.5286803453693077
#>     Attrib V31    0.5171182564852587
#>     Attrib V32    -0.1803793748641982
#>     Attrib V33    -0.3674412189572005
#>     Attrib V34    0.15920953081488792
#>     Attrib V35    0.21005388802400138
#>     Attrib V36    0.5185007368007791
#>     Attrib V37    0.421574508971751
#>     Attrib V38    -0.16552753985694327
#>     Attrib V39    -0.29231636280404694
#>     Attrib V4    -0.12467147346754916
#>     Attrib V40    0.12586154404917582
#>     Attrib V41    0.07093261266650838
#>     Attrib V42    -0.1223344670193972
#>     Attrib V43    -0.10667997904958519
#>     Attrib V44    -0.4197485050692278
#>     Attrib V45    -0.45793215885018335
#>     Attrib V46    -0.17763221989021014
#>     Attrib V47    0.17504239340573866
#>     Attrib V48    -0.19598226786003992
#>     Attrib V49    -0.3517345817336229
#>     Attrib V5    -0.14256850771350563
#>     Attrib V50    0.6466440825185615
#>     Attrib V51    0.17240941815167646
#>     Attrib V52    -0.27381118465629967
#>     Attrib V53    -0.2690592133123755
#>     Attrib V54    -0.017621418478096406
#>     Attrib V55    0.3074111946795185
#>     Attrib V56    -0.011354516788167669
#>     Attrib V57    0.200503056738997
#>     Attrib V58    -0.4873798588267542
#>     Attrib V59    -0.017806196374783038
#>     Attrib V6    0.18983836842023544
#>     Attrib V60    0.07618955399940083
#>     Attrib V7    0.30551059903610395
#>     Attrib V8    0.23911667496369937
#>     Attrib V9    -0.1588721986515003
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.13093043832755688
#>     Attrib V1    -0.01931057580671116
#>     Attrib V10    0.1151558418533958
#>     Attrib V11    0.6610434600623725
#>     Attrib V12    0.4480422187850506
#>     Attrib V13    0.06873130262358734
#>     Attrib V14    0.027502679251851268
#>     Attrib V15    -0.029797655887842008
#>     Attrib V16    -0.20143329297852997
#>     Attrib V17    -0.38857861506098823
#>     Attrib V18    -0.47810301911015785
#>     Attrib V19    -0.31173096773946535
#>     Attrib V2    0.09025269246345438
#>     Attrib V20    -0.5150801456736035
#>     Attrib V21    -0.20353969862844784
#>     Attrib V22    -0.10857750278635417
#>     Attrib V23    -0.32509766108621935
#>     Attrib V24    -0.04448207726416143
#>     Attrib V25    -0.039054441028383874
#>     Attrib V26    0.20711175930652023
#>     Attrib V27    0.37611186493257054
#>     Attrib V28    0.5228767578814028
#>     Attrib V29    0.4884380288636628
#>     Attrib V3    -0.05239028046446825
#>     Attrib V30    0.46472440117414116
#>     Attrib V31    -0.20704856859331544
#>     Attrib V32    0.18111343743514924
#>     Attrib V33    0.1578750742210642
#>     Attrib V34    -0.3333559009185572
#>     Attrib V35    -0.3960725834801474
#>     Attrib V36    -0.4858342174063123
#>     Attrib V37    -0.4732026112126229
#>     Attrib V38    -0.15855817491836122
#>     Attrib V39    0.14036495108751404
#>     Attrib V4    0.18944490806842604
#>     Attrib V40    0.05109289603796053
#>     Attrib V41    0.09795547577544031
#>     Attrib V42    0.03166423630304573
#>     Attrib V43    -0.023586923711777525
#>     Attrib V44    0.14339316859421386
#>     Attrib V45    0.2865113181770687
#>     Attrib V46    0.22330080703812813
#>     Attrib V47    -0.022672587576625387
#>     Attrib V48    0.40407097981427065
#>     Attrib V49    0.641822518677742
#>     Attrib V5    0.21036165889577146
#>     Attrib V50    -0.3094035389415492
#>     Attrib V51    0.08091029347643836
#>     Attrib V52    0.4051052259080139
#>     Attrib V53    0.38190957403103476
#>     Attrib V54    0.045269776493474266
#>     Attrib V55    -0.03223667015220305
#>     Attrib V56    -0.358530500888018
#>     Attrib V57    -0.15834255136905973
#>     Attrib V58    0.5483220003773385
#>     Attrib V59    0.1337702575696002
#>     Attrib V6    -0.14933451536149675
#>     Attrib V60    0.09261835679804911
#>     Attrib V7    -0.21263068897357634
#>     Attrib V8    0.07924756193278391
#>     Attrib V9    0.2163212204365276
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.04706906736409724
#>     Attrib V1    0.01923686060629828
#>     Attrib V10    -0.18618515501134647
#>     Attrib V11    0.2786434665572615
#>     Attrib V12    0.1388817694888031
#>     Attrib V13    -0.0315085691471957
#>     Attrib V14    -0.04785856752384882
#>     Attrib V15    -0.032101093997153204
#>     Attrib V16    -0.10473274475147959
#>     Attrib V17    -0.14676736196708323
#>     Attrib V18    -0.3045107658644056
#>     Attrib V19    -0.11855233180563898
#>     Attrib V2    0.040299271679911035
#>     Attrib V20    -0.018649147301454446
#>     Attrib V21    0.38847012720455404
#>     Attrib V22    0.36726560365036387
#>     Attrib V23    0.2136683802047847
#>     Attrib V24    0.2694807564251571
#>     Attrib V25    0.013127003083232268
#>     Attrib V26    0.06841778388694633
#>     Attrib V27    0.24623324859836568
#>     Attrib V28    0.48693091086013324
#>     Attrib V29    0.6584050615730414
#>     Attrib V3    -0.06472246142584938
#>     Attrib V30    0.7034404808051502
#>     Attrib V31    -0.4728773053197112
#>     Attrib V32    0.04008885768667121
#>     Attrib V33    0.15668019434329997
#>     Attrib V34    -0.35495742997011315
#>     Attrib V35    -0.29914972033821563
#>     Attrib V36    -0.23644719883172827
#>     Attrib V37    -0.19258411976215573
#>     Attrib V38    0.11628732916803085
#>     Attrib V39    0.2405713960805836
#>     Attrib V4    0.18913051451926005
#>     Attrib V40    -0.05638801970201235
#>     Attrib V41    0.07252043666379501
#>     Attrib V42    0.17566130295173554
#>     Attrib V43    0.17461121851817418
#>     Attrib V44    0.6029127791949249
#>     Attrib V45    0.4381264409660706
#>     Attrib V46    0.17466464939932
#>     Attrib V47    -0.09854760871440159
#>     Attrib V48    0.2522599078489596
#>     Attrib V49    0.3995695537832895
#>     Attrib V5    0.28380857924300185
#>     Attrib V50    -0.564273850087052
#>     Attrib V51    0.027820755413875343
#>     Attrib V52    0.367598501478023
#>     Attrib V53    0.3261603580572509
#>     Attrib V54    -0.005282738037092148
#>     Attrib V55    -0.285409495331882
#>     Attrib V56    -0.07210216128604861
#>     Attrib V57    -0.3685177148539725
#>     Attrib V58    0.40909435106536185
#>     Attrib V59    0.13361663618112937
#>     Attrib V6    -0.1767190243360331
#>     Attrib V60    0.04541611338989083
#>     Attrib V7    -0.22839497300586675
#>     Attrib V8    -0.15928751582248482
#>     Attrib V9    0.12729916750587217
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.04686729308433632
#>     Attrib V1    -0.0964926423565404
#>     Attrib V10    0.636339648217694
#>     Attrib V11    -0.14840866234443878
#>     Attrib V12    0.11474529425955364
#>     Attrib V13    0.1768291804581451
#>     Attrib V14    0.09113293008032906
#>     Attrib V15    -0.38786079181398814
#>     Attrib V16    -0.3260354521469534
#>     Attrib V17    -0.32366647452624386
#>     Attrib V18    0.17462621909538467
#>     Attrib V19    -0.09134485582095955
#>     Attrib V2    -0.07947331915547305
#>     Attrib V20    -0.6106628944061336
#>     Attrib V21    -1.0042687167525555
#>     Attrib V22    -0.6264988834379094
#>     Attrib V23    -0.2788191944033402
#>     Attrib V24    -0.18954938678733296
#>     Attrib V25    0.6113264109353057
#>     Attrib V26    0.8684022884799412
#>     Attrib V27    0.6351458160238639
#>     Attrib V28    0.059425527621328564
#>     Attrib V29    -0.1400128860246862
#>     Attrib V3    -0.043104836276187865
#>     Attrib V30    -0.804568343672072
#>     Attrib V31    1.254563236397093
#>     Attrib V32    -0.04542641096900202
#>     Attrib V33    -0.6488529997808365
#>     Attrib V34    0.20607617884601956
#>     Attrib V35    0.14581279688914525
#>     Attrib V36    0.4670669635998995
#>     Attrib V37    0.6839707034108272
#>     Attrib V38    -0.338851448521386
#>     Attrib V39    -0.3734423542405234
#>     Attrib V4    -0.2916344117793488
#>     Attrib V40    0.592613867750833
#>     Attrib V41    0.3605531815551239
#>     Attrib V42    -0.6131619934689625
#>     Attrib V43    -0.4039264580234335
#>     Attrib V44    -1.2633565863943954
#>     Attrib V45    -1.1068069040506474
#>     Attrib V46    -0.2618535699306029
#>     Attrib V47    0.27137523919738216
#>     Attrib V48    -0.21198842711991445
#>     Attrib V49    -0.5574086214477096
#>     Attrib V5    -0.158474617038528
#>     Attrib V50    1.1054369455754556
#>     Attrib V51    0.20562549698242497
#>     Attrib V52    -0.44852248718324267
#>     Attrib V53    -0.5672696502183118
#>     Attrib V54    -0.20716279493525766
#>     Attrib V55    0.38080726479723487
#>     Attrib V56    -0.46976989837689553
#>     Attrib V57    0.5010983332527623
#>     Attrib V58    -0.9049999616371271
#>     Attrib V59    -0.18520437189743366
#>     Attrib V6    0.3529529626658677
#>     Attrib V60    -0.25658562116452655
#>     Attrib V7    0.2229260097592336
#>     Attrib V8    0.14833534499000892
#>     Attrib V9    -0.07939381123197754
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -5.941663431762521E-4
#>     Attrib V1    0.29052030839870036
#>     Attrib V10    -0.5765171372647501
#>     Attrib V11    -0.10802783121504153
#>     Attrib V12    -0.058862622087788585
#>     Attrib V13    -0.09135348692610447
#>     Attrib V14    0.16909168609794525
#>     Attrib V15    0.44024365530066667
#>     Attrib V16    0.39176434447475494
#>     Attrib V17    0.264946763483134
#>     Attrib V18    -0.03625178154470509
#>     Attrib V19    -0.004202117146014238
#>     Attrib V2    0.1845282034284635
#>     Attrib V20    0.3707760312206888
#>     Attrib V21    0.35465582142781993
#>     Attrib V22    -0.09191082638471354
#>     Attrib V23    -0.2245903317353239
#>     Attrib V24    -0.0534987167421358
#>     Attrib V25    -0.4981831895423773
#>     Attrib V26    -0.630719002814155
#>     Attrib V27    -0.615123916265588
#>     Attrib V28    -0.5723177179000911
#>     Attrib V29    -0.30874521287891427
#>     Attrib V3    0.05395697453123582
#>     Attrib V30    0.03474711610074308
#>     Attrib V31    -0.5041480973777521
#>     Attrib V32    0.026697028988850926
#>     Attrib V33    0.2786655086964876
#>     Attrib V34    0.0788707449973038
#>     Attrib V35    0.054347343545295114
#>     Attrib V36    -0.17665792803213523
#>     Attrib V37    -0.28975247210750543
#>     Attrib V38    0.0788433515531023
#>     Attrib V39    0.0926539266352714
#>     Attrib V4    0.14003911968570215
#>     Attrib V40    -0.19288208730755094
#>     Attrib V41    -0.3618208299152478
#>     Attrib V42    0.16264063176421117
#>     Attrib V43    0.25108622334991604
#>     Attrib V44    0.4679561916699147
#>     Attrib V45    0.388075346474217
#>     Attrib V46    0.1049717348154078
#>     Attrib V47    -0.22946079985544177
#>     Attrib V48    0.06569194069954025
#>     Attrib V49    0.17816704623667715
#>     Attrib V5    -0.04937820645904271
#>     Attrib V50    -0.35540115921786225
#>     Attrib V51    -0.1889624006668353
#>     Attrib V52    0.17306201511268718
#>     Attrib V53    0.33288302224462313
#>     Attrib V54    0.3085146947557376
#>     Attrib V55    0.17558879281276474
#>     Attrib V56    0.4372410647101034
#>     Attrib V57    0.05065159974237752
#>     Attrib V58    0.5887523184410057
#>     Attrib V59    0.2742917532933701
#>     Attrib V6    -0.25754176888987595
#>     Attrib V60    0.23021724044337055
#>     Attrib V7    -0.10030283978656356
#>     Attrib V8    -0.13816495248525174
#>     Attrib V9    -0.20178732101150001
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.01625150308997263
#>     Attrib V1    0.1658985247004411
#>     Attrib V10    -0.40987683790649215
#>     Attrib V11    -0.008615421753632474
#>     Attrib V12    0.060235320521690186
#>     Attrib V13    -0.002621827015874255
#>     Attrib V14    0.10289819733777436
#>     Attrib V15    0.2414989225521871
#>     Attrib V16    0.12866625261583367
#>     Attrib V17    0.16701305727974572
#>     Attrib V18    -0.005598961453884513
#>     Attrib V19    0.044292697946431904
#>     Attrib V2    0.07837772002982475
#>     Attrib V20    0.16935699201991786
#>     Attrib V21    0.1403436891300329
#>     Attrib V22    -0.07155209948290385
#>     Attrib V23    -0.1058901927064505
#>     Attrib V24    -0.0426402309637976
#>     Attrib V25    -0.22149400294003005
#>     Attrib V26    -0.29370241388467005
#>     Attrib V27    -0.390566520213277
#>     Attrib V28    -0.3359970699585246
#>     Attrib V29    -0.18918969328482135
#>     Attrib V3    0.09837061540370985
#>     Attrib V30    0.01999802349871263
#>     Attrib V31    -0.34209948895793485
#>     Attrib V32    0.0020822559500501534
#>     Attrib V33    0.172291290776234
#>     Attrib V34    0.05970008092485117
#>     Attrib V35    0.1436268694551243
#>     Attrib V36    -0.0522191475349523
#>     Attrib V37    -0.10759747400370386
#>     Attrib V38    0.07264941254520395
#>     Attrib V39    0.10545704763288669
#>     Attrib V4    0.17366869608709293
#>     Attrib V40    -0.12689876584344092
#>     Attrib V41    -0.1612751901831672
#>     Attrib V42    0.12195208053291684
#>     Attrib V43    0.19471870144396675
#>     Attrib V44    0.30323127155708124
#>     Attrib V45    0.3169081462762776
#>     Attrib V46    0.09635875831031195
#>     Attrib V47    -0.030422911306124296
#>     Attrib V48    0.033799267249306215
#>     Attrib V49    0.13802630975484803
#>     Attrib V5    0.03612054947507136
#>     Attrib V50    -0.21834305480506136
#>     Attrib V51    -0.09199044981582587
#>     Attrib V52    0.2065307414777943
#>     Attrib V53    0.3278805759013163
#>     Attrib V54    0.2087136604626581
#>     Attrib V55    0.1399864230852107
#>     Attrib V56    0.3087255761891741
#>     Attrib V57    6.145010042735743E-4
#>     Attrib V58    0.37528003365531076
#>     Attrib V59    0.2610759560330075
#>     Attrib V6    -0.15149581948042196
#>     Attrib V60    0.11156990776698952
#>     Attrib V7    -0.08014998693332424
#>     Attrib V8    -0.09201459388642531
#>     Attrib V9    -0.16231466479463305
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    0.0867052323963035
#>     Attrib V1    -0.10059997995646858
#>     Attrib V10    0.3988170488279084
#>     Attrib V11    -0.19268233536626223
#>     Attrib V12    0.04503314752502339
#>     Attrib V13    0.09270957259853854
#>     Attrib V14    0.13235356810658186
#>     Attrib V15    -0.17791732891062823
#>     Attrib V16    -0.20855550346056925
#>     Attrib V17    -0.2159100048148812
#>     Attrib V18    0.0945119801916731
#>     Attrib V19    -0.07723996544399497
#>     Attrib V2    -0.08472522403933669
#>     Attrib V20    -0.4837811352045027
#>     Attrib V21    -0.8916829184860326
#>     Attrib V22    -0.6435672353973952
#>     Attrib V23    -0.2958811813215562
#>     Attrib V24    -0.2374332159783079
#>     Attrib V25    0.3999893072662334
#>     Attrib V26    0.5900084467166076
#>     Attrib V27    0.4051929967868504
#>     Attrib V28    0.02324875194074069
#>     Attrib V29    -0.2014894730113586
#>     Attrib V3    -0.04631427955951121
#>     Attrib V30    -0.704574335469299
#>     Attrib V31    0.9351648620739205
#>     Attrib V32    -0.00870192359531011
#>     Attrib V33    -0.5517880621901273
#>     Attrib V34    0.158235953735567
#>     Attrib V35    0.08402505188770672
#>     Attrib V36    0.34059312040173295
#>     Attrib V37    0.38549526438518744
#>     Attrib V38    -0.3090653449873755
#>     Attrib V39    -0.3590524069530486
#>     Attrib V4    -0.24968180298916146
#>     Attrib V40    0.4393327785943469
#>     Attrib V41    0.25888731909126406
#>     Attrib V42    -0.4509741669155407
#>     Attrib V43    -0.2809649895304248
#>     Attrib V44    -1.0237579857236494
#>     Attrib V45    -0.8807054420867988
#>     Attrib V46    -0.228455800621611
#>     Attrib V47    0.23013651006063668
#>     Attrib V48    -0.1857171571228384
#>     Attrib V49    -0.47770844049159145
#>     Attrib V5    -0.21380519932182523
#>     Attrib V50    0.864484364684704
#>     Attrib V51    0.10653875157332189
#>     Attrib V52    -0.3533830376625468
#>     Attrib V53    -0.4694393770501489
#>     Attrib V54    -0.1389721674978789
#>     Attrib V55    0.39118234270204283
#>     Attrib V56    -0.2975637889349669
#>     Attrib V57    0.4837838191610523
#>     Attrib V58    -0.6888659714932828
#>     Attrib V59    -0.13137679640156644
#>     Attrib V6    0.3090793449273301
#>     Attrib V60    -0.21800955545819578
#>     Attrib V7    0.15699314582721313
#>     Attrib V8    0.20260204191173564
#>     Attrib V9    -0.1051418626262899
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    -0.27713357446785386
#>     Attrib V1    -0.20796151410960267
#>     Attrib V10    0.8954628719473625
#>     Attrib V11    1.7538744079394932
#>     Attrib V12    1.1176658509923705
#>     Attrib V13    0.28162177193942256
#>     Attrib V14    -0.14857522319095448
#>     Attrib V15    -1.143894890300035
#>     Attrib V16    -0.8816879989806226
#>     Attrib V17    -0.40485135985499876
#>     Attrib V18    -0.29949056824379466
#>     Attrib V19    -0.015987684972788033
#>     Attrib V2    0.24740125358308201
#>     Attrib V20    -0.7694276987355417
#>     Attrib V21    0.5156193255294872
#>     Attrib V22    1.3547975650851327
#>     Attrib V23    0.8952613977751138
#>     Attrib V24    0.8002893055162591
#>     Attrib V25    0.8539489913861157
#>     Attrib V26    1.4403460976085565
#>     Attrib V27    1.2507424637263547
#>     Attrib V28    1.8107932891862846
#>     Attrib V29    2.2152106491167323
#>     Attrib V3    0.34783943539883605
#>     Attrib V30    1.495955904467933
#>     Attrib V31    -0.7536738766560706
#>     Attrib V32    -0.47064025128871817
#>     Attrib V33    -0.5221258231232871
#>     Attrib V34    -0.8958014619373185
#>     Attrib V35    -0.9205057093464928
#>     Attrib V36    -0.72652308537439
#>     Attrib V37    -0.5084892831492571
#>     Attrib V38    -0.27496536657058807
#>     Attrib V39    1.1404324561373085
#>     Attrib V4    0.6567199669843292
#>     Attrib V40    0.9821461070631173
#>     Attrib V41    1.3109432115223951
#>     Attrib V42    0.32968935550956585
#>     Attrib V43    0.028708733493503093
#>     Attrib V44    0.10549431662964026
#>     Attrib V45    0.041423609207195795
#>     Attrib V46    0.8156289138761283
#>     Attrib V47    0.593122569554195
#>     Attrib V48    1.0291476940428574
#>     Attrib V49    1.780664057135737
#>     Attrib V5    1.460068997545898
#>     Attrib V50    0.11973221209412856
#>     Attrib V51    1.0654423840303513
#>     Attrib V52    1.384802071583075
#>     Attrib V53    1.4195600900183507
#>     Attrib V54    -0.7172118106978539
#>     Attrib V55    -1.0495729437006456
#>     Attrib V56    -1.2239338992818398
#>     Attrib V57    -0.8471158807990957
#>     Attrib V58    0.31329951539962253
#>     Attrib V59    -0.008615371263688627
#>     Attrib V6    0.31522845219298745
#>     Attrib V60    -0.01876132149536953
#>     Attrib V7    -0.5604262832812905
#>     Attrib V8    -0.6344552696759695
#>     Attrib V9    0.7619946230729453
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.15877656560542058
#>     Attrib V1    0.04922040687243655
#>     Attrib V10    0.07304347087761426
#>     Attrib V11    -0.49697808513757735
#>     Attrib V12    -0.30693948985134845
#>     Attrib V13    -0.06663455818978524
#>     Attrib V14    0.17987930723301793
#>     Attrib V15    -0.0036885821405047503
#>     Attrib V16    0.03237582052315907
#>     Attrib V17    0.08694566071132291
#>     Attrib V18    0.27974122171942045
#>     Attrib V19    0.12442172981288767
#>     Attrib V2    0.041085786436627504
#>     Attrib V20    -0.07933501712311178
#>     Attrib V21    -0.36091135468664665
#>     Attrib V22    -0.3158978250425068
#>     Attrib V23    -0.08640488903415981
#>     Attrib V24    -0.1885020661339795
#>     Attrib V25    0.057747918539026374
#>     Attrib V26    -0.026082794722767894
#>     Attrib V27    -0.04315386835539189
#>     Attrib V28    -0.13776618501135682
#>     Attrib V29    -0.0948609265408729
#>     Attrib V3    0.0016406863672135087
#>     Attrib V30    -0.32805378544464314
#>     Attrib V31    0.5097346603866839
#>     Attrib V32    -0.09871793818442635
#>     Attrib V33    -0.2376507790649656
#>     Attrib V34    0.09407637084199662
#>     Attrib V35    0.27657278795540274
#>     Attrib V36    0.5153477349551692
#>     Attrib V37    0.49181539748839176
#>     Attrib V38    -0.14528179557112744
#>     Attrib V39    -0.2976532101898904
#>     Attrib V4    -0.04865212934106399
#>     Attrib V40    0.11700232851901154
#>     Attrib V41    0.1170164798197885
#>     Attrib V42    -0.02895496164905423
#>     Attrib V43    -0.042401586023252426
#>     Attrib V44    -0.3424052489225426
#>     Attrib V45    -0.3608734321580091
#>     Attrib V46    -0.18287918356019328
#>     Attrib V47    0.09293803596817797
#>     Attrib V48    -0.12499323555628035
#>     Attrib V49    -0.34621309525077154
#>     Attrib V5    -0.22222173416133675
#>     Attrib V50    0.5951520281437963
#>     Attrib V51    0.11039402131312341
#>     Attrib V52    -0.23225559584949448
#>     Attrib V53    -0.23876189544010376
#>     Attrib V54    0.011934027547536275
#>     Attrib V55    0.21856376939652938
#>     Attrib V56    0.010670719082694308
#>     Attrib V57    0.20072465057059194
#>     Attrib V58    -0.39301941009166563
#>     Attrib V59    -0.007528931885991622
#>     Attrib V6    0.17894679069917943
#>     Attrib V60    0.1470205625919128
#>     Attrib V7    0.19258878623533818
#>     Attrib V8    0.1922503246908774
#>     Attrib V9    -0.166071013198527
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.25450811015273905
#>     Attrib V1    0.1427841337454942
#>     Attrib V10    0.08550782950435332
#>     Attrib V11    0.614610759964803
#>     Attrib V12    0.29051298793616726
#>     Attrib V13    0.011306713013690305
#>     Attrib V14    -0.05365703630008015
#>     Attrib V15    -0.002453476622149802
#>     Attrib V16    -0.12755741006606244
#>     Attrib V17    -0.369939953887936
#>     Attrib V18    -0.4035746424599014
#>     Attrib V19    -0.3112445833342241
#>     Attrib V2    0.06231531863239633
#>     Attrib V20    -0.412067040016776
#>     Attrib V21    -0.10698005864716391
#>     Attrib V22    -0.2113947534309694
#>     Attrib V23    -0.45436835999915953
#>     Attrib V24    -0.14865284100758167
#>     Attrib V25    -0.19799839427025198
#>     Attrib V26    0.1647607363676702
#>     Attrib V27    0.2332896335950888
#>     Attrib V28    0.30075138731135087
#>     Attrib V29    0.3651575672882897
#>     Attrib V3    -0.09663940727402764
#>     Attrib V30    0.43644934460503376
#>     Attrib V31    -0.2594469339987658
#>     Attrib V32    0.15345738731617276
#>     Attrib V33    0.13677063221522492
#>     Attrib V34    -0.21462611371648482
#>     Attrib V35    -0.2857799973744115
#>     Attrib V36    -0.37137589232379997
#>     Attrib V37    -0.35902506657659927
#>     Attrib V38    -0.05751541878882048
#>     Attrib V39    0.15178611422078067
#>     Attrib V4    0.07358696006351734
#>     Attrib V40    -0.14173161815718233
#>     Attrib V41    -0.06496442114818507
#>     Attrib V42    -0.03756963613595473
#>     Attrib V43    -0.013231913326205495
#>     Attrib V44    0.29728997848190614
#>     Attrib V45    0.35669025948996685
#>     Attrib V46    0.12246322774615565
#>     Attrib V47    -0.06174235287448305
#>     Attrib V48    0.40320229846780015
#>     Attrib V49    0.47506294521669035
#>     Attrib V5    0.08472848580148008
#>     Attrib V50    -0.21915377967778704
#>     Attrib V51    0.06366949832371183
#>     Attrib V52    0.30798461450151715
#>     Attrib V53    0.3197829599796054
#>     Attrib V54    0.10993961428541658
#>     Attrib V55    -0.02031078031912022
#>     Attrib V56    -0.2804604031475522
#>     Attrib V57    -0.15217297256370657
#>     Attrib V58    0.471388434861024
#>     Attrib V59    0.13962479485259283
#>     Attrib V6    -0.19281905796643037
#>     Attrib V60    0.1069219954889434
#>     Attrib V7    -0.2711028628313783
#>     Attrib V8    0.08091186585515399
#>     Attrib V9    0.19953114652519918
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.12545989130251828
#>     Attrib V1    0.08198107380482061
#>     Attrib V10    0.3901008517698385
#>     Attrib V11    -0.5541370517574448
#>     Attrib V12    -0.22046353068745003
#>     Attrib V13    0.10562344267754656
#>     Attrib V14    0.24809791689521984
#>     Attrib V15    -0.0646376536502866
#>     Attrib V16    -0.040816576458264274
#>     Attrib V17    -0.1726107686484348
#>     Attrib V18    0.3527380114059044
#>     Attrib V19    -0.005079924590134296
#>     Attrib V2    0.005759543757623721
#>     Attrib V20    -0.38368125141131526
#>     Attrib V21    -0.9089518771608479
#>     Attrib V22    -0.6708707844710019
#>     Attrib V23    -0.28111169790169344
#>     Attrib V24    -0.25922323515980605
#>     Attrib V25    0.3678282106056839
#>     Attrib V26    0.5329474887121027
#>     Attrib V27    0.4110484556918001
#>     Attrib V28    -0.09329694902512432
#>     Attrib V29    -0.20410852847984598
#>     Attrib V3    0.07140745940343367
#>     Attrib V30    -0.9234867046822386
#>     Attrib V31    1.1128771173885643
#>     Attrib V32    -0.09688485420703986
#>     Attrib V33    -0.72935496293003
#>     Attrib V34    0.23678081544048118
#>     Attrib V35    0.24659158873233056
#>     Attrib V36    0.5356867599119015
#>     Attrib V37    0.6094622404187965
#>     Attrib V38    -0.34042288579740426
#>     Attrib V39    -0.4632700615320226
#>     Attrib V4    -0.23721926441749874
#>     Attrib V40    0.42067192404611836
#>     Attrib V41    0.19219530623392508
#>     Attrib V42    -0.4904981328489108
#>     Attrib V43    -0.36520822451759244
#>     Attrib V44    -1.17368240481111
#>     Attrib V45    -0.9432922746101221
#>     Attrib V46    -0.21979825272311465
#>     Attrib V47    0.29434454808356414
#>     Attrib V48    -0.2948677135181116
#>     Attrib V49    -0.6609568976878333
#>     Attrib V5    -0.32596255463425544
#>     Attrib V50    1.2550439398520468
#>     Attrib V51    0.14699685049842043
#>     Attrib V52    -0.43945324492431986
#>     Attrib V53    -0.5946685309118196
#>     Attrib V54    -0.14484892762704737
#>     Attrib V55    0.5323658221495994
#>     Attrib V56    -0.15792927820663769
#>     Attrib V57    0.531409228999739
#>     Attrib V58    -0.8518505302796252
#>     Attrib V59    -0.15737453713029453
#>     Attrib V6    0.3893372429438483
#>     Attrib V60    -0.1727399781049922
#>     Attrib V7    0.3625113206849837
#>     Attrib V8    0.29153875151594844
#>     Attrib V9    -0.19936982686720076
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.11530706855239839
#>     Attrib V1    0.12472436322367063
#>     Attrib V10    -0.27346377924047127
#>     Attrib V11    0.279589460825694
#>     Attrib V12    0.13316362330415032
#>     Attrib V13    -0.0615400822095926
#>     Attrib V14    0.09914834624473418
#>     Attrib V15    0.22519807913653356
#>     Attrib V16    0.10547861224207809
#>     Attrib V17    -0.031542508881092994
#>     Attrib V18    -0.17869659960166923
#>     Attrib V19    -0.10186849038521237
#>     Attrib V2    0.06329583823606069
#>     Attrib V20    0.0550680206157813
#>     Attrib V21    0.10711265285041725
#>     Attrib V22    -0.15571450541254567
#>     Attrib V23    -0.37067990506958104
#>     Attrib V24    -0.11955725690942971
#>     Attrib V25    -0.26889304870100544
#>     Attrib V26    -0.2790935872855479
#>     Attrib V27    -0.21050539907784283
#>     Attrib V28    -0.11348081696499088
#>     Attrib V29    0.060537666886199916
#>     Attrib V3    0.007793526188601175
#>     Attrib V30    0.18086864554942617
#>     Attrib V31    -0.39484263422113935
#>     Attrib V32    0.056081419574974097
#>     Attrib V33    0.19469928542152562
#>     Attrib V34    -0.058147627091492994
#>     Attrib V35    -0.043238869336245496
#>     Attrib V36    -0.23063395429228364
#>     Attrib V37    -0.2735461550876058
#>     Attrib V38    0.05700288545988058
#>     Attrib V39    0.1385647720413415
#>     Attrib V4    0.06649650466568836
#>     Attrib V40    -0.1399797633909237
#>     Attrib V41    -0.11972768875806684
#>     Attrib V42    0.10538333162346405
#>     Attrib V43    0.21001419777521035
#>     Attrib V44    0.3804613130645212
#>     Attrib V45    0.473802526764253
#>     Attrib V46    0.14157859683958357
#>     Attrib V47    -0.019877139120598415
#>     Attrib V48    0.24298642003991738
#>     Attrib V49    0.3279968117989583
#>     Attrib V5    0.02058019131821893
#>     Attrib V50    -0.20536837144986408
#>     Attrib V51    0.007674488913207243
#>     Attrib V52    0.2893356352733685
#>     Attrib V53    0.3433964975476473
#>     Attrib V54    0.20945578367775142
#>     Attrib V55    0.12278466567384397
#>     Attrib V56    0.11105364928290903
#>     Attrib V57    -0.05777785163108931
#>     Attrib V58    0.44128428427177285
#>     Attrib V59    0.20129375713585987
#>     Attrib V6    -0.20172998738636883
#>     Attrib V60    0.2159637067859637
#>     Attrib V7    -0.15895538411303722
#>     Attrib V8    0.032545091131406384
#>     Attrib V9    -0.06420086256653192
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.12259542190771545
#>     Attrib V1    0.039232502405245485
#>     Attrib V10    0.123827859500399
#>     Attrib V11    -0.03594497061343151
#>     Attrib V12    0.01510313154854601
#>     Attrib V13    0.05469705914362755
#>     Attrib V14    0.07832431238710227
#>     Attrib V15    0.0742086103234071
#>     Attrib V16    0.08631007734083297
#>     Attrib V17    0.12316951519087527
#>     Attrib V18    0.10724026322612237
#>     Attrib V19    0.02317873063546174
#>     Attrib V2    0.06849345164144281
#>     Attrib V20    -0.07740992033990743
#>     Attrib V21    -0.09673678674377466
#>     Attrib V22    -0.07474602032440855
#>     Attrib V23    -0.020329194416741074
#>     Attrib V24    -0.06938756222974288
#>     Attrib V25    0.06212527593958915
#>     Attrib V26    0.020913246058080048
#>     Attrib V27    -0.044768867364810644
#>     Attrib V28    -0.037750740655215116
#>     Attrib V29    -0.07848727998107326
#>     Attrib V3    0.053052502623369406
#>     Attrib V30    -0.02066356847759219
#>     Attrib V31    0.1938415908728319
#>     Attrib V32    -0.03799252509567207
#>     Attrib V33    -0.07809219368421397
#>     Attrib V34    0.01649746302100509
#>     Attrib V35    0.10790420620604857
#>     Attrib V36    0.13923165700758103
#>     Attrib V37    0.1909166062550047
#>     Attrib V38    -0.037822948968877376
#>     Attrib V39    0.024527796562895887
#>     Attrib V4    0.08792779406694694
#>     Attrib V40    0.11161215325682455
#>     Attrib V41    0.11910843598475901
#>     Attrib V42    0.0937319346239093
#>     Attrib V43    0.009021320224552983
#>     Attrib V44    -0.10840201461872107
#>     Attrib V45    -0.05196444205931086
#>     Attrib V46    0.004684913664201697
#>     Attrib V47    0.058662783449732976
#>     Attrib V48    0.03776762244034884
#>     Attrib V49    -0.07944750178474425
#>     Attrib V5    0.022818235261832416
#>     Attrib V50    0.11852823577298553
#>     Attrib V51    0.05091448199403581
#>     Attrib V52    -0.010884216017458176
#>     Attrib V53    -0.038692766347968484
#>     Attrib V54    0.006297014833422536
#>     Attrib V55    0.05269543685635658
#>     Attrib V56    0.08994898990558851
#>     Attrib V57    0.08956344113689288
#>     Attrib V58    -0.03151229689670828
#>     Attrib V59    0.07956673848966339
#>     Attrib V6    0.11054868098545075
#>     Attrib V60    0.06695334418421982
#>     Attrib V7    0.04229675855304321
#>     Attrib V8    0.08725083625944242
#>     Attrib V9    0.007214431881838609
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.05412190431352625
#>     Attrib V1    0.33307262620767925
#>     Attrib V10    -0.8315934218246764
#>     Attrib V11    -0.25059040355982076
#>     Attrib V12    -0.24115382350900763
#>     Attrib V13    -0.10232797025361512
#>     Attrib V14    0.23177063295051453
#>     Attrib V15    0.7126117441869536
#>     Attrib V16    0.5255485543418236
#>     Attrib V17    0.41640024703176315
#>     Attrib V18    -0.05633165026424778
#>     Attrib V19    -0.019268891986216202
#>     Attrib V2    0.2679326824688902
#>     Attrib V20    0.5942361364650562
#>     Attrib V21    0.5760786699294083
#>     Attrib V22    0.04280863037079273
#>     Attrib V23    -0.10924260557357701
#>     Attrib V24    -0.09055853822583883
#>     Attrib V25    -0.7845084127166758
#>     Attrib V26    -0.8934065493457197
#>     Attrib V27    -0.7862415313002031
#>     Attrib V28    -0.5963594268296045
#>     Attrib V29    -0.3309302490255092
#>     Attrib V3    0.07665258847666459
#>     Attrib V30    0.17161204713442435
#>     Attrib V31    -0.7497912860476122
#>     Attrib V32    0.003935434730141163
#>     Attrib V33    0.45087046183976504
#>     Attrib V34    0.07783468596512425
#>     Attrib V35    0.03097047870023087
#>     Attrib V36    -0.32470777126007805
#>     Attrib V37    -0.4221198510917364
#>     Attrib V38    0.15350711580837972
#>     Attrib V39    0.07089348242175468
#>     Attrib V4    0.23675196631638165
#>     Attrib V40    -0.39513117617410337
#>     Attrib V41    -0.5086805791438013
#>     Attrib V42    0.2784752506176076
#>     Attrib V43    0.29679939639338215
#>     Attrib V44    0.7631587945418771
#>     Attrib V45    0.6427469628746212
#>     Attrib V46    0.10249555093322901
#>     Attrib V47    -0.29907657849983305
#>     Attrib V48    -0.0039477574671973464
#>     Attrib V49    0.1714682137368241
#>     Attrib V5    -0.13307732706951952
#>     Attrib V50    -0.6000552380421272
#>     Attrib V51    -0.28345410607390803
#>     Attrib V52    0.2203588951050336
#>     Attrib V53    0.42720775479131523
#>     Attrib V54    0.37351528085639074
#>     Attrib V55    0.17119067842494684
#>     Attrib V56    0.568631746238329
#>     Attrib V57    0.01830699604033813
#>     Attrib V58    0.6806451953504947
#>     Attrib V59    0.3159476457384072
#>     Attrib V6    -0.35064251627451726
#>     Attrib V60    0.2623754612176602
#>     Attrib V7    -0.08974581677629653
#>     Attrib V8    -0.05561788583308427
#>     Attrib V9    -0.19504578453019772
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.09209630193428939
#>     Attrib V1    0.14705104653465162
#>     Attrib V10    -0.27367187050679154
#>     Attrib V11    -0.008897585568233765
#>     Attrib V12    -0.013521617741448754
#>     Attrib V13    -0.06510526511511731
#>     Attrib V14    0.10708170413877165
#>     Attrib V15    0.19199454177464886
#>     Attrib V16    0.14037221242469916
#>     Attrib V17    0.03139362043429946
#>     Attrib V18    0.005425249558833528
#>     Attrib V19    -0.03001661795747399
#>     Attrib V2    0.08795787420588458
#>     Attrib V20    0.1120090236529069
#>     Attrib V21    0.12406479499802599
#>     Attrib V22    -0.06727533934020805
#>     Attrib V23    -0.07954579937576155
#>     Attrib V24    -0.04675926057292216
#>     Attrib V25    -0.22801842941905362
#>     Attrib V26    -0.25179567165984007
#>     Attrib V27    -0.23538283946708813
#>     Attrib V28    -0.1275092785862373
#>     Attrib V29    -0.04316255084158177
#>     Attrib V3    0.10261051990541667
#>     Attrib V30    0.0990758371748274
#>     Attrib V31    -0.28046220017847656
#>     Attrib V32    -0.012896952943306363
#>     Attrib V33    0.14878538147729595
#>     Attrib V34    0.05944880745384851
#>     Attrib V35    0.08039489311509129
#>     Attrib V36    0.007754512045142197
#>     Attrib V37    -0.09694122651482329
#>     Attrib V38    0.03448570698022774
#>     Attrib V39    0.11162669768107235
#>     Attrib V4    0.11044910937346523
#>     Attrib V40    -0.07205511091278688
#>     Attrib V41    -0.10701471643777072
#>     Attrib V42    0.15129385495158007
#>     Attrib V43    0.08171713557459498
#>     Attrib V44    0.25207280475007016
#>     Attrib V45    0.279540126105935
#>     Attrib V46    0.12674206701254304
#>     Attrib V47    -0.009360157597367703
#>     Attrib V48    0.05618157294334437
#>     Attrib V49    0.17769383540461503
#>     Attrib V5    0.06828268694369176
#>     Attrib V50    -0.12650103705546253
#>     Attrib V51    0.006032969111440072
#>     Attrib V52    0.17416401585970903
#>     Attrib V53    0.21721698427390082
#>     Attrib V54    0.10682086391538412
#>     Attrib V55    0.07602538024855753
#>     Attrib V56    0.1657067750992841
#>     Attrib V57    0.013740145303156093
#>     Attrib V58    0.3417312400785162
#>     Attrib V59    0.15166039976724716
#>     Attrib V6    -0.08150948809028816
#>     Attrib V60    0.1015313459430271
#>     Attrib V7    -0.0391648823707095
#>     Attrib V8    0.018567338113215003
#>     Attrib V9    -0.05438527527832745
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
#>  0.1449275 
```
