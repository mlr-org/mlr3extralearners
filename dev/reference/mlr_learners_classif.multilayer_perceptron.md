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
#>     Threshold    -0.36464936734166553
#>     Node 2    1.947148162677039
#>     Node 3    1.4332358195525765
#>     Node 4    1.0466441395640902
#>     Node 5    -1.2268735994834046
#>     Node 6    1.5222550463892899
#>     Node 7    2.415179164022003
#>     Node 8    1.1237365352071729
#>     Node 9    3.663442826729701
#>     Node 10    -0.42042029774163836
#>     Node 11    1.4414901593940095
#>     Node 12    1.300579656061264
#>     Node 13    0.8501460019430007
#>     Node 14    1.627860141828819
#>     Node 15    -2.7078100994141123
#>     Node 16    0.050800959874756295
#>     Node 17    1.0870856374588096
#>     Node 18    -0.7308437866523605
#>     Node 19    2.550369403318248
#>     Node 20    1.2714536764260014
#>     Node 21    -3.0637200859185474
#>     Node 22    0.82297297182738
#>     Node 23    1.1339889211779384
#>     Node 24    -2.167549454998531
#>     Node 25    4.45634186690136
#>     Node 26    -0.3928636170861101
#>     Node 27    1.7743595203232077
#>     Node 28    -3.1442549686296655
#>     Node 29    1.180854146531057
#>     Node 30    0.2962987735348465
#>     Node 31    1.5790573804940737
#>     Node 32    0.8311249600793431
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.3777144044445718
#>     Node 2    -2.014339662442079
#>     Node 3    -1.4238777998597987
#>     Node 4    -1.005609663100434
#>     Node 5    1.2320161998635948
#>     Node 6    -1.5086402702452089
#>     Node 7    -2.4021668960452254
#>     Node 8    -1.1501870695563605
#>     Node 9    -3.6668769223426123
#>     Node 10    0.37258100887155576
#>     Node 11    -1.4051577687802985
#>     Node 12    -1.383327983529811
#>     Node 13    -0.798610477637696
#>     Node 14    -1.5686034101641761
#>     Node 15    2.701669913150536
#>     Node 16    -0.05067088463394172
#>     Node 17    -1.0557589590532483
#>     Node 18    0.7737751000976634
#>     Node 19    -2.538686832945452
#>     Node 20    -1.267685006308173
#>     Node 21    3.1200482142867294
#>     Node 22    -0.8758540986918716
#>     Node 23    -1.1878911743106972
#>     Node 24    2.155885588497434
#>     Node 25    -4.451315793364231
#>     Node 26    0.32678705139832437
#>     Node 27    -1.809719119195495
#>     Node 28    3.090493554607054
#>     Node 29    -1.2118576263865972
#>     Node 30    -0.20815253911319678
#>     Node 31    -1.5368714881784933
#>     Node 32    -0.8512922969759513
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.3297424627061495
#>     Attrib V1    0.09120797448080034
#>     Attrib V10    0.3023162544380212
#>     Attrib V11    0.5792449940108054
#>     Attrib V12    0.4747007126461846
#>     Attrib V13    -0.5027345872603438
#>     Attrib V14    -0.28308087673715604
#>     Attrib V15    -0.21895336979944452
#>     Attrib V16    0.01204513498585599
#>     Attrib V17    0.2891014379757738
#>     Attrib V18    0.29968077782692154
#>     Attrib V19    -0.034561990214752564
#>     Attrib V2    -0.16611830043855705
#>     Attrib V20    0.5354117156166609
#>     Attrib V21    0.48774466889180706
#>     Attrib V22    0.06585234376308872
#>     Attrib V23    0.3594442563148666
#>     Attrib V24    0.37525893820093936
#>     Attrib V25    -0.3547841033896125
#>     Attrib V26    -0.46532565561755346
#>     Attrib V27    -0.36310215797062495
#>     Attrib V28    -0.18975726956141234
#>     Attrib V29    -0.20887897458898907
#>     Attrib V3    -0.15032124052803272
#>     Attrib V30    0.5055920126054024
#>     Attrib V31    -1.2210252590045243
#>     Attrib V32    0.1731471898626342
#>     Attrib V33    0.4003743860101953
#>     Attrib V34    0.10588552320188348
#>     Attrib V35    -0.22892849690368444
#>     Attrib V36    -1.1088895380261452
#>     Attrib V37    -0.694587743878381
#>     Attrib V38    0.07239109329075445
#>     Attrib V39    0.33538310542638505
#>     Attrib V4    1.1558668709225266
#>     Attrib V40    0.04518481922587987
#>     Attrib V41    0.4741455583429612
#>     Attrib V42    0.48463272037174626
#>     Attrib V43    0.1693953322004815
#>     Attrib V44    0.33325732706401745
#>     Attrib V45    0.33421284313011956
#>     Attrib V46    -0.07248681362456103
#>     Attrib V47    -0.38094673358990533
#>     Attrib V48    0.1818825291955776
#>     Attrib V49    0.5507549787988437
#>     Attrib V5    -0.3397775816560525
#>     Attrib V50    -0.8440431674011385
#>     Attrib V51    0.0034940075716062137
#>     Attrib V52    0.24197398533860018
#>     Attrib V53    0.18185088591791604
#>     Attrib V54    0.7743350839308992
#>     Attrib V55    -0.48374308063536436
#>     Attrib V56    -0.15526185861824623
#>     Attrib V57    0.0016865174393699471
#>     Attrib V58    0.3415034108227047
#>     Attrib V59    0.4277746116428453
#>     Attrib V6    -0.26199631760460057
#>     Attrib V60    -0.17840684588378952
#>     Attrib V7    -0.28959727868301
#>     Attrib V8    0.4362096600896337
#>     Attrib V9    0.5991491391217278
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.16197070931489577
#>     Attrib V1    0.05943944065411863
#>     Attrib V10    0.13637114510777407
#>     Attrib V11    0.2917789714246537
#>     Attrib V12    0.23846388537308746
#>     Attrib V13    -0.26788103625645815
#>     Attrib V14    -0.04520039213057477
#>     Attrib V15    0.07025886577716872
#>     Attrib V16    0.04162811202564166
#>     Attrib V17    0.1287066405072913
#>     Attrib V18    0.08318975326450424
#>     Attrib V19    -0.011621814206933333
#>     Attrib V2    -0.012208072654363456
#>     Attrib V20    0.22501487128393036
#>     Attrib V21    0.15014671355532805
#>     Attrib V22    -0.08527565769414101
#>     Attrib V23    0.05370148970402659
#>     Attrib V24    0.11942189944709364
#>     Attrib V25    -0.27691019273582407
#>     Attrib V26    -0.40445205418111846
#>     Attrib V27    -0.34167015072513107
#>     Attrib V28    -0.3059737046985752
#>     Attrib V29    -0.37528030118123407
#>     Attrib V3    -0.06730542276207148
#>     Attrib V30    0.2843468474895628
#>     Attrib V31    -0.5795245912658492
#>     Attrib V32    0.2109035621538735
#>     Attrib V33    0.3735281786386338
#>     Attrib V34    0.050488166508356296
#>     Attrib V35    -0.24655125630652738
#>     Attrib V36    -0.8934160138201336
#>     Attrib V37    -0.6701594907452729
#>     Attrib V38    -0.1371257191995808
#>     Attrib V39    0.10361959324233994
#>     Attrib V4    0.746146596227331
#>     Attrib V40    -0.04065958501067334
#>     Attrib V41    0.1928752356337041
#>     Attrib V42    0.26215932880154547
#>     Attrib V43    0.04446296997917103
#>     Attrib V44    0.1419874573621435
#>     Attrib V45    0.18523324575284514
#>     Attrib V46    -0.1119148702658898
#>     Attrib V47    -0.2450673645164035
#>     Attrib V48    0.09435414783263348
#>     Attrib V49    0.3232687121525169
#>     Attrib V5    -0.2408692957036452
#>     Attrib V50    -0.4366096981906132
#>     Attrib V51    -0.015079363219778055
#>     Attrib V52    0.24493493051748308
#>     Attrib V53    0.14241137437458845
#>     Attrib V54    0.49492039791353054
#>     Attrib V55    -0.04913193839066151
#>     Attrib V56    -0.04301425808362312
#>     Attrib V57    0.11571439153412647
#>     Attrib V58    0.424729300472307
#>     Attrib V59    0.36060152449916455
#>     Attrib V6    -0.20539163196572816
#>     Attrib V60    -0.027963940205334645
#>     Attrib V7    -0.16128647731492826
#>     Attrib V8    0.35096842490662195
#>     Attrib V9    0.32735918441500617
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.12381707879049093
#>     Attrib V1    0.0048908784695954255
#>     Attrib V10    0.1076478119379938
#>     Attrib V11    0.26988014717370845
#>     Attrib V12    0.25899709462291687
#>     Attrib V13    -0.10863391128798146
#>     Attrib V14    0.008863465932138383
#>     Attrib V15    8.999765496450285E-4
#>     Attrib V16    -0.047773129686505454
#>     Attrib V17    0.049065147738688766
#>     Attrib V18    0.022601274008877854
#>     Attrib V19    -0.1409198593410863
#>     Attrib V2    -0.018411703736121516
#>     Attrib V20    0.03946951529277463
#>     Attrib V21    0.024800482910414506
#>     Attrib V22    -0.2819745456960861
#>     Attrib V23    -0.061734783804513894
#>     Attrib V24    0.0349454303802387
#>     Attrib V25    -0.2596656651516901
#>     Attrib V26    -0.2521305164606468
#>     Attrib V27    -0.1361803612208116
#>     Attrib V28    -0.004263814580914527
#>     Attrib V29    -0.06129172485863634
#>     Attrib V3    -0.06707772866927644
#>     Attrib V30    0.21030295873817872
#>     Attrib V31    -0.3655998392706056
#>     Attrib V32    0.15616021133341135
#>     Attrib V33    0.23906021457210605
#>     Attrib V34    0.05531203038218778
#>     Attrib V35    -0.14436033147597924
#>     Attrib V36    -0.7094951776012739
#>     Attrib V37    -0.5094685465285818
#>     Attrib V38    -0.14702647477805172
#>     Attrib V39    0.049648625123715595
#>     Attrib V4    0.5535478472083167
#>     Attrib V40    -0.06148624979920779
#>     Attrib V41    0.06900686105197731
#>     Attrib V42    0.12950517934135003
#>     Attrib V43    -0.05064434328081699
#>     Attrib V44    0.048506299162484605
#>     Attrib V45    0.22970570922725525
#>     Attrib V46    -0.044396550220504837
#>     Attrib V47    -0.17572502928619044
#>     Attrib V48    0.16430668370590643
#>     Attrib V49    0.3048747215262278
#>     Attrib V5    -0.09805778528646564
#>     Attrib V50    -0.2977353771136648
#>     Attrib V51    0.04920393154905759
#>     Attrib V52    0.19783702203383577
#>     Attrib V53    0.14510119753842624
#>     Attrib V54    0.1985019078678081
#>     Attrib V55    -0.0541394697897704
#>     Attrib V56    -0.14004744651550474
#>     Attrib V57    0.05817441215851213
#>     Attrib V58    0.23552102487374507
#>     Attrib V59    0.16315653790450144
#>     Attrib V6    -0.12393817739936275
#>     Attrib V60    -0.0744575016393238
#>     Attrib V7    -0.1273448634101182
#>     Attrib V8    0.1598018729033428
#>     Attrib V9    0.2920536730144066
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.35073848202109703
#>     Attrib V1    -0.0626744879264005
#>     Attrib V10    -0.06694100754265754
#>     Attrib V11    -0.3725983604376144
#>     Attrib V12    -0.4708553981091593
#>     Attrib V13    0.22866926109527164
#>     Attrib V14    0.27245749127893665
#>     Attrib V15    0.3157506458550993
#>     Attrib V16    0.13705545662613028
#>     Attrib V17    0.005093288807087976
#>     Attrib V18    -0.040143159034853555
#>     Attrib V19    0.15429374072212104
#>     Attrib V2    0.12127183331426443
#>     Attrib V20    -0.27414183660819963
#>     Attrib V21    -0.12949301305561806
#>     Attrib V22    0.11363006438415281
#>     Attrib V23    -0.1219586358168984
#>     Attrib V24    -0.2221432994951085
#>     Attrib V25    0.28709350874539585
#>     Attrib V26    0.17691967523910973
#>     Attrib V27    -0.024823929005852924
#>     Attrib V28    -0.1770859728490062
#>     Attrib V29    -0.055938371893312695
#>     Attrib V3    0.21313128094261383
#>     Attrib V30    -0.2592417586628264
#>     Attrib V31    0.730362376615274
#>     Attrib V32    0.009591689469950298
#>     Attrib V33    -0.11070677793461627
#>     Attrib V34    -0.09513653478663255
#>     Attrib V35    0.02373591995683134
#>     Attrib V36    0.6881651207399121
#>     Attrib V37    0.2022248964885321
#>     Attrib V38    -0.13487874122502258
#>     Attrib V39    -0.34420521969054
#>     Attrib V4    -0.7276518158345681
#>     Attrib V40    -0.058892809784110156
#>     Attrib V41    -0.3417325914350689
#>     Attrib V42    -0.15984340472747888
#>     Attrib V43    -0.04091729325753865
#>     Attrib V44    -0.14632338070037013
#>     Attrib V45    -0.37707828473027133
#>     Attrib V46    -0.17602390655872277
#>     Attrib V47    0.10908949259545134
#>     Attrib V48    -0.1502572241291378
#>     Attrib V49    -0.36069019625689297
#>     Attrib V5    0.20976612480955323
#>     Attrib V50    0.6471268511469064
#>     Attrib V51    0.046592030548406445
#>     Attrib V52    -0.11273924186270347
#>     Attrib V53    -0.043817261034451035
#>     Attrib V54    -0.4519220235780305
#>     Attrib V55    0.33204472288239956
#>     Attrib V56    0.3226871590381761
#>     Attrib V57    -0.017689615006939944
#>     Attrib V58    -0.20190076743988636
#>     Attrib V59    -0.09781223454736547
#>     Attrib V6    0.15580440454343417
#>     Attrib V60    0.17215641221112465
#>     Attrib V7    0.41932439675958266
#>     Attrib V8    -0.08266099625360178
#>     Attrib V9    -0.33966930752156
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.1694159458341167
#>     Attrib V1    0.10466702128558557
#>     Attrib V10    0.04325342867274202
#>     Attrib V11    0.256807138887039
#>     Attrib V12    0.189809438581724
#>     Attrib V13    -0.45297469356434167
#>     Attrib V14    -0.13875797337185125
#>     Attrib V15    -0.014505440838680208
#>     Attrib V16    0.16454022407433808
#>     Attrib V17    0.21726162236305765
#>     Attrib V18    0.23929136522652597
#>     Attrib V19    0.04614564556773814
#>     Attrib V2    -0.07331079624820996
#>     Attrib V20    0.4117107141199571
#>     Attrib V21    0.3659252099515152
#>     Attrib V22    -0.006194809929481122
#>     Attrib V23    0.1227111766736313
#>     Attrib V24    0.18561316845919273
#>     Attrib V25    -0.26979416768779185
#>     Attrib V26    -0.42372060673871154
#>     Attrib V27    -0.3588970011048365
#>     Attrib V28    -0.4111993395991461
#>     Attrib V29    -0.39536852991928934
#>     Attrib V3    -0.03659108822227215
#>     Attrib V30    0.24289361386417543
#>     Attrib V31    -0.7699589490497208
#>     Attrib V32    0.1197792352062526
#>     Attrib V33    0.36516115029139595
#>     Attrib V34    0.10004798716417077
#>     Attrib V35    -0.1891035526705354
#>     Attrib V36    -0.8532856103017443
#>     Attrib V37    -0.6186112914590726
#>     Attrib V38    -0.07391244894804494
#>     Attrib V39    0.15299352721451642
#>     Attrib V4    0.838323519778467
#>     Attrib V40    -0.02396915271000991
#>     Attrib V41    0.2864874297578297
#>     Attrib V42    0.3693418305514624
#>     Attrib V43    0.1179890805126695
#>     Attrib V44    0.18002328293537848
#>     Attrib V45    0.19037156760583598
#>     Attrib V46    -0.09115786842223121
#>     Attrib V47    -0.3178065866520706
#>     Attrib V48    0.048886064076959335
#>     Attrib V49    0.3272704365452691
#>     Attrib V5    -0.25995376995834574
#>     Attrib V50    -0.4375270120391176
#>     Attrib V51    -0.00622875443730891
#>     Attrib V52    0.17755605312784858
#>     Attrib V53    0.29483141121882256
#>     Attrib V54    0.5604817952661142
#>     Attrib V55    -0.16980452830211065
#>     Attrib V56    0.05007436069719055
#>     Attrib V57    0.2045010053132723
#>     Attrib V58    0.4114619343071874
#>     Attrib V59    0.45123367676721715
#>     Attrib V6    -0.1252082650548757
#>     Attrib V60    0.010287279523539482
#>     Attrib V7    -0.12070674089919024
#>     Attrib V8    0.3981316077806408
#>     Attrib V9    0.3968149177715465
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.20333378587119957
#>     Attrib V1    0.004582112821730029
#>     Attrib V10    0.4835716985783797
#>     Attrib V11    0.8671826860684184
#>     Attrib V12    0.8674770857685794
#>     Attrib V13    -0.07853769709089974
#>     Attrib V14    -0.26136220101012625
#>     Attrib V15    -0.7204428575980673
#>     Attrib V16    -0.4792270619554833
#>     Attrib V17    -0.23950819392636924
#>     Attrib V18    0.10657063932426698
#>     Attrib V19    -0.26063954644139326
#>     Attrib V2    -0.12380242459286268
#>     Attrib V20    0.1700460875017338
#>     Attrib V21    0.23853517667613292
#>     Attrib V22    0.1932029007915896
#>     Attrib V23    0.8869090062319392
#>     Attrib V24    0.7486341791810334
#>     Attrib V25    0.24262057249867394
#>     Attrib V26    0.46448841343144015
#>     Attrib V27    0.7655275057311712
#>     Attrib V28    0.9991834928472619
#>     Attrib V29    0.8234692794287941
#>     Attrib V3    -0.4622656147055197
#>     Attrib V30    0.5520727185865715
#>     Attrib V31    -0.6593319903032269
#>     Attrib V32    0.1881807982272506
#>     Attrib V33    -0.0037926702808409344
#>     Attrib V34    -0.0033731368207893264
#>     Attrib V35    0.07448462686022503
#>     Attrib V36    -0.7979493715787106
#>     Attrib V37    -0.10298819727792204
#>     Attrib V38    0.14382054661450197
#>     Attrib V39    0.33972844606008645
#>     Attrib V4    0.8173722216752609
#>     Attrib V40    0.2457390159102499
#>     Attrib V41    0.8615764501361561
#>     Attrib V42    0.2838119712449871
#>     Attrib V43    -0.011749360228661949
#>     Attrib V44    0.19704697428394818
#>     Attrib V45    0.6111636687238663
#>     Attrib V46    0.6723138022107024
#>     Attrib V47    0.3673169152374448
#>     Attrib V48    0.5121658573207591
#>     Attrib V49    0.6962937809470642
#>     Attrib V5    0.015399852301598042
#>     Attrib V50    -0.4473618032136384
#>     Attrib V51    0.36437133406162925
#>     Attrib V52    0.3847757359498639
#>     Attrib V53    0.04088389044768659
#>     Attrib V54    0.451644405018236
#>     Attrib V55    -0.32200078792324155
#>     Attrib V56    -0.7031243937551942
#>     Attrib V57    0.012528429262343255
#>     Attrib V58    0.08232255613685067
#>     Attrib V59    -0.43853361462165213
#>     Attrib V6    0.3268741189885458
#>     Attrib V60    -0.43944336831225916
#>     Attrib V7    -0.19109244779280818
#>     Attrib V8    0.1307879467936648
#>     Attrib V9    0.7884914745383664
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.25677742936769754
#>     Attrib V1    0.009086248350977183
#>     Attrib V10    0.14104050245529878
#>     Attrib V11    0.36858786157760803
#>     Attrib V12    0.37465272542604944
#>     Attrib V13    -0.11647860162472347
#>     Attrib V14    -0.15163952244456136
#>     Attrib V15    -0.18789653596415734
#>     Attrib V16    -0.0921361178420026
#>     Attrib V17    -0.028614574014878894
#>     Attrib V18    -0.033657000379588436
#>     Attrib V19    -0.22386574614360302
#>     Attrib V2    -0.012594456635747105
#>     Attrib V20    -0.044715251046628
#>     Attrib V21    -0.06730872796357203
#>     Attrib V22    -0.3228888212727754
#>     Attrib V23    -0.020777810920611095
#>     Attrib V24    0.141011406231853
#>     Attrib V25    -0.2096239239669435
#>     Attrib V26    -0.1595590567845288
#>     Attrib V27    0.05824816109830488
#>     Attrib V28    0.1817659420956754
#>     Attrib V29    0.0871902201578434
#>     Attrib V3    -0.1789963952463061
#>     Attrib V30    0.28246224557492905
#>     Attrib V31    -0.4222074879805847
#>     Attrib V32    0.15925763741528248
#>     Attrib V33    0.19309940076633156
#>     Attrib V34    0.04461233328162497
#>     Attrib V35    -0.08019975385585033
#>     Attrib V36    -0.6871689213232479
#>     Attrib V37    -0.4220943280165733
#>     Attrib V38    -0.02457713258573524
#>     Attrib V39    0.08946239192410971
#>     Attrib V4    0.656690531787799
#>     Attrib V40    -0.03660815170127031
#>     Attrib V41    0.1872362652348095
#>     Attrib V42    0.022459496871151022
#>     Attrib V43    -0.06625764185728884
#>     Attrib V44    0.06726267764288266
#>     Attrib V45    0.2662459660261025
#>     Attrib V46    0.12566434630404316
#>     Attrib V47    -0.05743180847001793
#>     Attrib V48    0.2635349071003752
#>     Attrib V49    0.34498586737259623
#>     Attrib V5    -0.10946682181477545
#>     Attrib V50    -0.41585491419003034
#>     Attrib V51    0.018406832544201338
#>     Attrib V52    0.18304845519338445
#>     Attrib V53    0.1376660124641296
#>     Attrib V54    0.24325742766793024
#>     Attrib V55    -0.1566314780428858
#>     Attrib V56    -0.34142349421170454
#>     Attrib V57    0.06307660135754418
#>     Attrib V58    0.14473752864690714
#>     Attrib V59    0.07163052924066851
#>     Attrib V6    -0.06483247875396021
#>     Attrib V60    -0.09923540084429772
#>     Attrib V7    -0.2021565512468486
#>     Attrib V8    0.13502907444437187
#>     Attrib V9    0.3064330318934888
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.304018142547934
#>     Attrib V1    0.08606775015381515
#>     Attrib V10    0.8048115969905544
#>     Attrib V11    1.2242159126834171
#>     Attrib V12    1.5885275778080277
#>     Attrib V13    0.5313295531558185
#>     Attrib V14    -0.3028552246652605
#>     Attrib V15    -0.8687845826459965
#>     Attrib V16    -0.6420487556269224
#>     Attrib V17    -0.3516114487226306
#>     Attrib V18    -0.04427530512103455
#>     Attrib V19    -0.4668070527035614
#>     Attrib V2    0.2459974410061125
#>     Attrib V20    -0.07565007583426085
#>     Attrib V21    0.1152017650081599
#>     Attrib V22    0.08035905220718163
#>     Attrib V23    0.9297489943344084
#>     Attrib V24    0.8004569511503846
#>     Attrib V25    0.13395100203749988
#>     Attrib V26    0.5812415700684926
#>     Attrib V27    1.2744564145104378
#>     Attrib V28    1.623847816468959
#>     Attrib V29    1.2159639847609796
#>     Attrib V3    -0.49712316894064373
#>     Attrib V30    0.4822319027497986
#>     Attrib V31    -0.804262959545
#>     Attrib V32    0.05149031739408657
#>     Attrib V33    -0.46041789402751304
#>     Attrib V34    -0.15805438902818814
#>     Attrib V35    0.1937964075505407
#>     Attrib V36    -0.9833387592333253
#>     Attrib V37    0.004646537739284579
#>     Attrib V38    0.2659834043003561
#>     Attrib V39    0.5549500148256273
#>     Attrib V4    0.8006905454292694
#>     Attrib V40    0.4214544710289701
#>     Attrib V41    1.0619927568750656
#>     Attrib V42    -0.24005240850264634
#>     Attrib V43    -0.13381703155745373
#>     Attrib V44    0.2290492226985857
#>     Attrib V45    0.9190518613953838
#>     Attrib V46    0.9814160868450673
#>     Attrib V47    0.5526526195206094
#>     Attrib V48    0.563157619790712
#>     Attrib V49    0.816132532286641
#>     Attrib V5    0.2985487901766626
#>     Attrib V50    -0.5578047782508025
#>     Attrib V51    0.6186969505704566
#>     Attrib V52    0.4809547832356097
#>     Attrib V53    0.07417040759350693
#>     Attrib V54    0.49476475631146105
#>     Attrib V55    -0.12978187784313935
#>     Attrib V56    -0.8644785525026012
#>     Attrib V57    -0.2413790529261439
#>     Attrib V58    0.10586839726012798
#>     Attrib V59    -0.6070423500231527
#>     Attrib V6    0.8365546718781773
#>     Attrib V60    -0.29325257914208086
#>     Attrib V7    -0.08491163548053525
#>     Attrib V8    0.008867894568395263
#>     Attrib V9    0.9136332952777543
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.22955417753034066
#>     Attrib V1    0.04198061264661275
#>     Attrib V10    -0.029030930022229902
#>     Attrib V11    -0.17859250434283294
#>     Attrib V12    -0.15843463023575216
#>     Attrib V13    0.08334014276325248
#>     Attrib V14    0.14963475865273532
#>     Attrib V15    0.056330497510640475
#>     Attrib V16    0.058839128727729395
#>     Attrib V17    -0.06200592086264042
#>     Attrib V18    0.007347866627795367
#>     Attrib V19    0.03617339312928722
#>     Attrib V2    0.08697442807524246
#>     Attrib V20    -0.12712060771522687
#>     Attrib V21    -0.06691939923424428
#>     Attrib V22    0.027841457786498106
#>     Attrib V23    -0.009787004986672418
#>     Attrib V24    -0.08711003965771989
#>     Attrib V25    0.017964273753436094
#>     Attrib V26    -0.04354424929249312
#>     Attrib V27    -0.1370135135295169
#>     Attrib V28    -0.12093460562454884
#>     Attrib V29    -0.06806353130336695
#>     Attrib V3    0.09100729684171358
#>     Attrib V30    -0.04313581729288007
#>     Attrib V31    0.26445522545172717
#>     Attrib V32    -0.026527736125404808
#>     Attrib V33    0.04097707612150626
#>     Attrib V34    0.023740373318358026
#>     Attrib V35    0.09678191856572081
#>     Attrib V36    0.3258725170718059
#>     Attrib V37    0.16454364797329726
#>     Attrib V38    0.07744732772752536
#>     Attrib V39    -0.057278401744317774
#>     Attrib V4    -0.19089684140773072
#>     Attrib V40    0.12529147346759376
#>     Attrib V41    0.07438623302393461
#>     Attrib V42    0.03524424246092446
#>     Attrib V43    0.05382801138147123
#>     Attrib V44    0.012633991033931927
#>     Attrib V45    -0.08863292249165304
#>     Attrib V46    -0.02750285867761397
#>     Attrib V47    0.0734438510893771
#>     Attrib V48    -0.034253019111896765
#>     Attrib V49    -0.08719606723201614
#>     Attrib V5    0.11362277310223858
#>     Attrib V50    0.30012877986845077
#>     Attrib V51    0.06027949733090136
#>     Attrib V52    -0.02911635937292132
#>     Attrib V53    0.07856191702690625
#>     Attrib V54    -0.11846843104007587
#>     Attrib V55    0.08039692731471074
#>     Attrib V56    0.10442952805735342
#>     Attrib V57    0.028140120083976133
#>     Attrib V58    -0.04519102844897762
#>     Attrib V59    -0.015081597669078203
#>     Attrib V6    0.1636478591651722
#>     Attrib V60    0.1031658014758936
#>     Attrib V7    0.21407384235548568
#>     Attrib V8    0.05497327095007451
#>     Attrib V9    -0.10611916073987722
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.33305794393260146
#>     Attrib V1    -0.014818926203790762
#>     Attrib V10    0.12510968925611712
#>     Attrib V11    0.40688763457107147
#>     Attrib V12    0.4554517099529665
#>     Attrib V13    -0.3789850261630872
#>     Attrib V14    -0.2872888665025283
#>     Attrib V15    -0.3313813906087535
#>     Attrib V16    -0.19006121123668115
#>     Attrib V17    0.042580696503845335
#>     Attrib V18    0.046755471121287445
#>     Attrib V19    -0.2822772144686038
#>     Attrib V2    -0.12015766451254649
#>     Attrib V20    0.1975614683490976
#>     Attrib V21    0.07856908904930603
#>     Attrib V22    -0.20721185496222055
#>     Attrib V23    0.18067315176026685
#>     Attrib V24    0.2395285945281037
#>     Attrib V25    -0.23711451820223473
#>     Attrib V26    -0.27860691994787634
#>     Attrib V27    0.015375448648785511
#>     Attrib V28    0.22327960538649416
#>     Attrib V29    0.0815278819936934
#>     Attrib V3    -0.3058481305482108
#>     Attrib V30    0.39704792690500595
#>     Attrib V31    -0.7696268611098859
#>     Attrib V32    0.05512014864702945
#>     Attrib V33    0.1659216178960001
#>     Attrib V34    0.09177328489504837
#>     Attrib V35    -0.0013983313337266922
#>     Attrib V36    -0.7926434339815105
#>     Attrib V37    -0.36599580655265
#>     Attrib V38    0.07677934292957073
#>     Attrib V39    0.2304518982883157
#>     Attrib V4    0.771628922942926
#>     Attrib V40    0.022166852981416463
#>     Attrib V41    0.31143381194963804
#>     Attrib V42    0.2215377520168808
#>     Attrib V43    0.001370759721439028
#>     Attrib V44    0.17680451575850878
#>     Attrib V45    0.4349677612781916
#>     Attrib V46    0.1367549057220962
#>     Attrib V47    -0.0839577723517991
#>     Attrib V48    0.2960689556597001
#>     Attrib V49    0.4221399936905417
#>     Attrib V5    -0.18736668978614884
#>     Attrib V50    -0.593903282282683
#>     Attrib V51    0.05536255905540299
#>     Attrib V52    0.1181448311605539
#>     Attrib V53    0.037219117731760114
#>     Attrib V54    0.4258088189416796
#>     Attrib V55    -0.35206063190380127
#>     Attrib V56    -0.3909420401378467
#>     Attrib V57    0.016293025579079995
#>     Attrib V58    0.16605639065407596
#>     Attrib V59    -0.02397678947616566
#>     Attrib V6    -0.047227012901304946
#>     Attrib V60    -0.2698952341565579
#>     Attrib V7    -0.37562198811422837
#>     Attrib V8    0.23612780046033816
#>     Attrib V9    0.41482083362617606
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.22921722071779144
#>     Attrib V1    0.017728518020392228
#>     Attrib V10    0.06587526533888555
#>     Attrib V11    0.35150515356277867
#>     Attrib V12    0.20639606701701638
#>     Attrib V13    -0.3156196221638983
#>     Attrib V14    -0.08460010709561797
#>     Attrib V15    -0.0679519659297462
#>     Attrib V16    0.05305760397562546
#>     Attrib V17    0.14231384898101337
#>     Attrib V18    0.13262673744674525
#>     Attrib V19    0.007817038784089429
#>     Attrib V2    -0.018246333184498573
#>     Attrib V20    0.21114792172955704
#>     Attrib V21    0.15199939781920918
#>     Attrib V22    -0.09577559178059285
#>     Attrib V23    0.07221371733232453
#>     Attrib V24    0.11329791666755182
#>     Attrib V25    -0.29524071240626576
#>     Attrib V26    -0.3522600351093801
#>     Attrib V27    -0.20594915713395354
#>     Attrib V28    -0.21231270007110234
#>     Attrib V29    -0.20382066298386042
#>     Attrib V3    -0.14360171429021568
#>     Attrib V30    0.2623852643405142
#>     Attrib V31    -0.6396618765605467
#>     Attrib V32    0.127805690794347
#>     Attrib V33    0.3379837757836315
#>     Attrib V34    0.09444945788051676
#>     Attrib V35    -0.19373883916004847
#>     Attrib V36    -0.8336586404128656
#>     Attrib V37    -0.6245663999844652
#>     Attrib V38    -0.07371946512161888
#>     Attrib V39    0.07096629751917903
#>     Attrib V4    0.7759868686645132
#>     Attrib V40    -0.008790090307155095
#>     Attrib V41    0.19124643249355341
#>     Attrib V42    0.21788305753079662
#>     Attrib V43    0.08795891410794382
#>     Attrib V44    0.0755108696285697
#>     Attrib V45    0.2164601034751998
#>     Attrib V46    -0.00904807424787556
#>     Attrib V47    -0.243522571044425
#>     Attrib V48    0.17137476452590827
#>     Attrib V49    0.31786912878106827
#>     Attrib V5    -0.20438805800497697
#>     Attrib V50    -0.47171191482079067
#>     Attrib V51    0.018118959974607725
#>     Attrib V52    0.24352802387197747
#>     Attrib V53    0.22067342530326722
#>     Attrib V54    0.4295826453091062
#>     Attrib V55    -0.17591403949126488
#>     Attrib V56    -0.09386890545751053
#>     Attrib V57    0.12314595321861058
#>     Attrib V58    0.33792424942104154
#>     Attrib V59    0.31483982659152226
#>     Attrib V6    -0.1892057505587998
#>     Attrib V60    -0.05735524857945006
#>     Attrib V7    -0.14296994964930637
#>     Attrib V8    0.3167000739317224
#>     Attrib V9    0.359714919711961
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.0052113295586849245
#>     Attrib V1    0.07532412767721142
#>     Attrib V10    0.031451853490636145
#>     Attrib V11    0.20088872523917872
#>     Attrib V12    0.18762399069870944
#>     Attrib V13    -0.08125283219286152
#>     Attrib V14    -0.013702924488805116
#>     Attrib V15    -0.021175210904285067
#>     Attrib V16    -0.004499793982548082
#>     Attrib V17    0.1255717929261882
#>     Attrib V18    0.11654323086490738
#>     Attrib V19    -0.02864150052448565
#>     Attrib V2    -0.011273881711331868
#>     Attrib V20    0.18377510748863796
#>     Attrib V21    0.12971383548035909
#>     Attrib V22    -0.12390382842254866
#>     Attrib V23    0.032571099647010576
#>     Attrib V24    0.07177580991974067
#>     Attrib V25    -0.137760576371527
#>     Attrib V26    -0.26170710655530893
#>     Attrib V27    -0.12568896753315237
#>     Attrib V28    -0.15483944924533888
#>     Attrib V29    -0.14990252250502858
#>     Attrib V3    0.027772558287152006
#>     Attrib V30    0.11848274892996988
#>     Attrib V31    -0.4479705547958763
#>     Attrib V32    0.06181748842019381
#>     Attrib V33    0.14585007998068764
#>     Attrib V34    0.09022681420383175
#>     Attrib V35    -0.09850574524659284
#>     Attrib V36    -0.5169808870653348
#>     Attrib V37    -0.36768524982135214
#>     Attrib V38    -0.05301226242732643
#>     Attrib V39    0.1351283712614167
#>     Attrib V4    0.5183374701842461
#>     Attrib V40    -0.01284102576678037
#>     Attrib V41    0.0877304985720254
#>     Attrib V42    0.11962250061281478
#>     Attrib V43    -0.013980531506969377
#>     Attrib V44    0.06209944949411306
#>     Attrib V45    0.07998025263276134
#>     Attrib V46    -0.0016195595139305492
#>     Attrib V47    -0.11019043865629331
#>     Attrib V48    0.04939574005550706
#>     Attrib V49    0.23145520240113895
#>     Attrib V5    -0.07808171802911226
#>     Attrib V50    -0.25595630029424843
#>     Attrib V51    0.0033585076712267944
#>     Attrib V52    0.13375137854425034
#>     Attrib V53    0.16345074631706852
#>     Attrib V54    0.2771381200976942
#>     Attrib V55    -0.024865665572083806
#>     Attrib V56    -0.024100129027456684
#>     Attrib V57    0.12053248599402863
#>     Attrib V58    0.2403429183335961
#>     Attrib V59    0.2666333173293852
#>     Attrib V6    -0.04317933000312819
#>     Attrib V60    0.05245473595523957
#>     Attrib V7    -0.04465261049710869
#>     Attrib V8    0.1420003700012471
#>     Attrib V9    0.1973594450785498
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.204467709243911
#>     Attrib V1    0.11364408184122621
#>     Attrib V10    0.147455830513529
#>     Attrib V11    0.4200889708944753
#>     Attrib V12    0.2654450419495964
#>     Attrib V13    -0.44690084567186883
#>     Attrib V14    -0.18595935017236073
#>     Attrib V15    0.011377753390534031
#>     Attrib V16    0.06792517613971712
#>     Attrib V17    0.21993736973350028
#>     Attrib V18    0.16982790788459035
#>     Attrib V19    -0.030605939974979894
#>     Attrib V2    -0.06381052806327189
#>     Attrib V20    0.3261264482371041
#>     Attrib V21    0.25824557135988635
#>     Attrib V22    -0.052996687818919974
#>     Attrib V23    0.1509176960827949
#>     Attrib V24    0.15134706968592848
#>     Attrib V25    -0.33022831508930806
#>     Attrib V26    -0.39997246102391054
#>     Attrib V27    -0.4036000391359684
#>     Attrib V28    -0.43045926767880865
#>     Attrib V29    -0.43281099936923145
#>     Attrib V3    -0.15444877084486477
#>     Attrib V30    0.3179046347616143
#>     Attrib V31    -0.7249932567920252
#>     Attrib V32    0.17077208042124697
#>     Attrib V33    0.42919400662090623
#>     Attrib V34    0.11618746552604182
#>     Attrib V35    -0.2033596224866474
#>     Attrib V36    -0.940691702956082
#>     Attrib V37    -0.6277138644682949
#>     Attrib V38    -0.0749297746521961
#>     Attrib V39    0.16617484571766378
#>     Attrib V4    0.8339889519742612
#>     Attrib V40    -0.03964480078905808
#>     Attrib V41    0.20045020964691815
#>     Attrib V42    0.24756196114480722
#>     Attrib V43    0.05124656083773137
#>     Attrib V44    0.22385742761099028
#>     Attrib V45    0.20806449471525995
#>     Attrib V46    -0.072712269062465
#>     Attrib V47    -0.33037498032555346
#>     Attrib V48    0.1760750432086508
#>     Attrib V49    0.4619291403987223
#>     Attrib V5    -0.3256701739371508
#>     Attrib V50    -0.5238774435713482
#>     Attrib V51    -0.025232525176364987
#>     Attrib V52    0.20580638407337348
#>     Attrib V53    0.1610522011580468
#>     Attrib V54    0.613833797924717
#>     Attrib V55    -0.14708739905544277
#>     Attrib V56    -0.019704989228236363
#>     Attrib V57    0.12786354981104153
#>     Attrib V58    0.4353680551515025
#>     Attrib V59    0.3783057566328213
#>     Attrib V6    -0.22089121350328353
#>     Attrib V60    0.007543934148247634
#>     Attrib V7    -0.18014105387605703
#>     Attrib V8    0.31423720109194436
#>     Attrib V9    0.4289934768383961
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.15108042373984507
#>     Attrib V1    -0.24019775585022649
#>     Attrib V10    -0.5565938826184256
#>     Attrib V11    -0.773143282322508
#>     Attrib V12    -0.3562352053158778
#>     Attrib V13    0.5454132900296387
#>     Attrib V14    0.3612515778519439
#>     Attrib V15    0.21656506856488358
#>     Attrib V16    -0.09253152010357493
#>     Attrib V17    -0.5336063046724608
#>     Attrib V18    -0.48026591295904864
#>     Attrib V19    -0.26497111995100886
#>     Attrib V2    0.3284815408376838
#>     Attrib V20    -1.1425175922665243
#>     Attrib V21    -1.1499989788889609
#>     Attrib V22    -0.6803665636996244
#>     Attrib V23    -0.8084941336593636
#>     Attrib V24    -0.36782075126594443
#>     Attrib V25    0.4694320177102318
#>     Attrib V26    0.567826954015243
#>     Attrib V27    0.7087416978256921
#>     Attrib V28    0.4580924053378988
#>     Attrib V29    0.35548905089439714
#>     Attrib V3    0.01562160371103147
#>     Attrib V30    -0.4638620879589618
#>     Attrib V31    1.6624384848566196
#>     Attrib V32    0.049706799840662654
#>     Attrib V33    -0.4323252542409604
#>     Attrib V34    -0.25495672128139824
#>     Attrib V35    -0.04650065960214483
#>     Attrib V36    0.8295981236996263
#>     Attrib V37    0.5195227143200817
#>     Attrib V38    -0.21777648530027172
#>     Attrib V39    -0.5567962246542397
#>     Attrib V4    -1.4710186420009403
#>     Attrib V40    0.1036809690534062
#>     Attrib V41    -0.3823237969384264
#>     Attrib V42    -0.6255903741559375
#>     Attrib V43    -0.34876897261373324
#>     Attrib V44    -0.6322532151988622
#>     Attrib V45    -0.38438014365859857
#>     Attrib V46    0.0383867679794737
#>     Attrib V47    0.35947797219371797
#>     Attrib V48    -0.028758554927868482
#>     Attrib V49    -0.6495380669930966
#>     Attrib V5    0.42267414353196264
#>     Attrib V50    0.9205601652370528
#>     Attrib V51    -0.10180196179188179
#>     Attrib V52    -0.35835874158925823
#>     Attrib V53    -0.08393356347559748
#>     Attrib V54    -0.8785339078203476
#>     Attrib V55    0.7026839900733782
#>     Attrib V56    -0.2721002118291903
#>     Attrib V57    0.0325764824238072
#>     Attrib V58    -0.6827618716991076
#>     Attrib V59    -0.6526860202539247
#>     Attrib V6    0.3384258549955889
#>     Attrib V60    0.1776307544154513
#>     Attrib V7    0.2192262936489848
#>     Attrib V8    -0.42741371391900546
#>     Attrib V9    -0.8335424307237893
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.180846898756927
#>     Attrib V1    0.035400447161014655
#>     Attrib V10    0.03772971111922475
#>     Attrib V11    -0.0038048327708026237
#>     Attrib V12    4.95152579901296E-4
#>     Attrib V13    0.03692802138480341
#>     Attrib V14    0.02902253620377759
#>     Attrib V15    0.021028567887135162
#>     Attrib V16    0.07385115615284071
#>     Attrib V17    0.06005196149528719
#>     Attrib V18    0.03442492018499463
#>     Attrib V19    -0.02010455213807791
#>     Attrib V2    0.02102006271317773
#>     Attrib V20    -0.08225233731196609
#>     Attrib V21    -0.08764240008512814
#>     Attrib V22    -0.09133486419652702
#>     Attrib V23    -0.10260938407510452
#>     Attrib V24    -0.01551241284584553
#>     Attrib V25    2.784788645466497E-5
#>     Attrib V26    -0.06585988997120538
#>     Attrib V27    -0.049248892104259985
#>     Attrib V28    -0.003982370542353314
#>     Attrib V29    -0.027532934446824038
#>     Attrib V3    0.09729637985365612
#>     Attrib V30    -0.03733823436838839
#>     Attrib V31    -0.028555774331573913
#>     Attrib V32    0.025068973922682636
#>     Attrib V33    0.0026498291189526995
#>     Attrib V34    0.043645023027381664
#>     Attrib V35    0.031967352812501494
#>     Attrib V36    0.020806937207852125
#>     Attrib V37    0.04828573136726691
#>     Attrib V38    0.0395184934553492
#>     Attrib V39    0.05164946890340886
#>     Attrib V4    0.09244320209739373
#>     Attrib V40    0.03424859438721318
#>     Attrib V41    0.06033999165522838
#>     Attrib V42    0.07491572168325007
#>     Attrib V43    0.02256544119146916
#>     Attrib V44    -0.004677165667289796
#>     Attrib V45    0.023001749541149422
#>     Attrib V46    0.06736323943038773
#>     Attrib V47    0.05843698540646941
#>     Attrib V48    0.04119871978378847
#>     Attrib V49    0.01592103578674594
#>     Attrib V5    0.08295038838313255
#>     Attrib V50    0.10756568792723262
#>     Attrib V51    0.1147727395763601
#>     Attrib V52    0.08622470439409209
#>     Attrib V53    0.10898068479676881
#>     Attrib V54    -0.0027715260752885903
#>     Attrib V55    0.0929647370037654
#>     Attrib V56    0.08643444356274742
#>     Attrib V57    0.1235098702825226
#>     Attrib V58    0.11306626773045976
#>     Attrib V59    0.025487058593266693
#>     Attrib V6    0.10291729331807477
#>     Attrib V60    0.07177077644365375
#>     Attrib V7    0.06304250463262584
#>     Attrib V8    0.04605531371423926
#>     Attrib V9    0.08122775683776162
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.14930614940116513
#>     Attrib V1    0.08063297124072091
#>     Attrib V10    0.1429637465013241
#>     Attrib V11    0.30060785250545197
#>     Attrib V12    0.2133816898438408
#>     Attrib V13    -0.25978552404704486
#>     Attrib V14    -0.10575750650002386
#>     Attrib V15    0.0025241415823000057
#>     Attrib V16    0.015076323294855186
#>     Attrib V17    0.11409115264352102
#>     Attrib V18    0.09319265911389374
#>     Attrib V19    -0.04355134257720939
#>     Attrib V2    0.03050044772288309
#>     Attrib V20    0.1688758688122374
#>     Attrib V21    0.11680068363072248
#>     Attrib V22    -0.07841331976810449
#>     Attrib V23    -0.0015865795929050973
#>     Attrib V24    0.09199430110760042
#>     Attrib V25    -0.29912173013712734
#>     Attrib V26    -0.3438427303324299
#>     Attrib V27    -0.19929439129383897
#>     Attrib V28    -0.17345556488830555
#>     Attrib V29    -0.22755111131831326
#>     Attrib V3    -0.10022365251464253
#>     Attrib V30    0.2292913838962825
#>     Attrib V31    -0.4605014732773991
#>     Attrib V32    0.10424323647721442
#>     Attrib V33    0.2908921157483388
#>     Attrib V34    0.04368633333592626
#>     Attrib V35    -0.11616259208974453
#>     Attrib V36    -0.7017177571838864
#>     Attrib V37    -0.4943856432598539
#>     Attrib V38    -3.531896981355246E-4
#>     Attrib V39    0.13616277024473303
#>     Attrib V4    0.6211961611233182
#>     Attrib V40    -0.08767055452547062
#>     Attrib V41    0.13390359500381702
#>     Attrib V42    0.11018593829405424
#>     Attrib V43    0.04870138974465189
#>     Attrib V44    0.12485923785141449
#>     Attrib V45    0.2218318212994389
#>     Attrib V46    -0.06386339835805638
#>     Attrib V47    -0.2484526071939605
#>     Attrib V48    0.1479581116234508
#>     Attrib V49    0.2551025426042087
#>     Attrib V5    -0.16918174422086069
#>     Attrib V50    -0.35159562180348775
#>     Attrib V51    0.015879108974805864
#>     Attrib V52    0.1633557882333542
#>     Attrib V53    0.08968303213072348
#>     Attrib V54    0.3179375594809701
#>     Attrib V55    -0.05003674908053161
#>     Attrib V56    -0.06699931638813068
#>     Attrib V57    0.13687266791081842
#>     Attrib V58    0.23363104181696825
#>     Attrib V59    0.1840212839809916
#>     Attrib V6    -0.08163291863406236
#>     Attrib V60    -0.05009197931101122
#>     Attrib V7    -0.17947028131086423
#>     Attrib V8    0.24677451744852263
#>     Attrib V9    0.31323213734765853
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.2775323154541277
#>     Attrib V1    -0.06832123227740491
#>     Attrib V10    -0.06618858771608441
#>     Attrib V11    -0.3118400391769436
#>     Attrib V12    -0.36709506753757687
#>     Attrib V13    0.08785082574738166
#>     Attrib V14    0.15695632002924628
#>     Attrib V15    0.14451874210023433
#>     Attrib V16    0.09029961993599538
#>     Attrib V17    -0.06630057199572137
#>     Attrib V18    0.007387483746013506
#>     Attrib V19    0.05410228774791427
#>     Attrib V2    0.054235401440475624
#>     Attrib V20    -0.11394130212149195
#>     Attrib V21    -0.024172673313166644
#>     Attrib V22    0.11252249970941341
#>     Attrib V23    -0.037200256562793785
#>     Attrib V24    -0.08612221733875663
#>     Attrib V25    0.20139104762633014
#>     Attrib V26    0.10212047256146989
#>     Attrib V27    -0.05217846925359095
#>     Attrib V28    -0.1396880863897667
#>     Attrib V29    -0.0900011071845577
#>     Attrib V3    0.17884530603402204
#>     Attrib V30    -0.22081458882252983
#>     Attrib V31    0.38676341987688523
#>     Attrib V32    -0.02434512280516797
#>     Attrib V33    -0.06919992375457666
#>     Attrib V34    -0.03840696066547687
#>     Attrib V35    -0.02314352282968057
#>     Attrib V36    0.50378388085155
#>     Attrib V37    0.14015841481316893
#>     Attrib V38    -0.06394900634111964
#>     Attrib V39    -0.16849447865083342
#>     Attrib V4    -0.4467187474798004
#>     Attrib V40    -0.04635469184195312
#>     Attrib V41    -0.21355159410471083
#>     Attrib V42    -0.09261908348486053
#>     Attrib V43    -0.02042770662062948
#>     Attrib V44    -0.061750715462623465
#>     Attrib V45    -0.27801037261302647
#>     Attrib V46    -0.12114694403029844
#>     Attrib V47    0.08145548032092574
#>     Attrib V48    -0.12146595293879812
#>     Attrib V49    -0.19301352641628908
#>     Attrib V5    0.09832308845858476
#>     Attrib V50    0.3299612697506775
#>     Attrib V51    0.06083962339814973
#>     Attrib V52    -0.08178427233734499
#>     Attrib V53    -0.0044566483156945275
#>     Attrib V54    -0.32856407658537445
#>     Attrib V55    0.16358486384201007
#>     Attrib V56    0.21333615153278623
#>     Attrib V57    -0.02433604549897593
#>     Attrib V58    -0.10781191087215741
#>     Attrib V59    -0.04092674756294737
#>     Attrib V6    0.04083802140898082
#>     Attrib V60    0.12933603491709594
#>     Attrib V7    0.2841575097583513
#>     Attrib V8    -0.0025491881507534496
#>     Attrib V9    -0.18437499208326993
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.49918476884468604
#>     Attrib V1    0.12130350572835497
#>     Attrib V10    0.31499755919521705
#>     Attrib V11    0.864669197062918
#>     Attrib V12    1.117304505776017
#>     Attrib V13    0.2438141539206136
#>     Attrib V14    0.07519707065539581
#>     Attrib V15    -0.1047716794643584
#>     Attrib V16    -0.24815990774358446
#>     Attrib V17    -0.2943122574909383
#>     Attrib V18    -0.21025413381900976
#>     Attrib V19    -0.5395915561472341
#>     Attrib V2    0.21367668879574928
#>     Attrib V20    -0.5562150154094345
#>     Attrib V21    -0.7236516174401117
#>     Attrib V22    -0.9905709011082803
#>     Attrib V23    -0.2674337106268771
#>     Attrib V24    0.28762395558401754
#>     Attrib V25    -0.14561248773754734
#>     Attrib V26    0.06371697106906866
#>     Attrib V27    0.703827068517362
#>     Attrib V28    0.7257379232530428
#>     Attrib V29    0.3256242730668252
#>     Attrib V3    -0.27521279053566267
#>     Attrib V30    0.3803074700745544
#>     Attrib V31    -0.22388022907355737
#>     Attrib V32    0.4453180514158738
#>     Attrib V33    0.21403889748808314
#>     Attrib V34    -0.04606113304297523
#>     Attrib V35    -0.222752889847909
#>     Attrib V36    -1.365270041649338
#>     Attrib V37    -0.8895706553022035
#>     Attrib V38    -0.33689260440159124
#>     Attrib V39    -0.049074435578608466
#>     Attrib V4    0.913393346566244
#>     Attrib V40    0.08923157720481498
#>     Attrib V41    0.4746750386666232
#>     Attrib V42    0.09120425193103841
#>     Attrib V43    -0.20584915342983112
#>     Attrib V44    -0.1542395141199097
#>     Attrib V45    0.6267592453477033
#>     Attrib V46    0.40168266002772257
#>     Attrib V47    -0.010579906584256121
#>     Attrib V48    0.42743144768027735
#>     Attrib V49    0.6250401003736914
#>     Attrib V5    0.1048048679142929
#>     Attrib V50    -0.5698978401187185
#>     Attrib V51    0.12661848727081887
#>     Attrib V52    0.4137535076743995
#>     Attrib V53    0.30222681110481386
#>     Attrib V54    0.44711136979010274
#>     Attrib V55    0.2014481827480514
#>     Attrib V56    -0.6976656321927885
#>     Attrib V57    0.059105195291766006
#>     Attrib V58    0.5419331913680933
#>     Attrib V59    -0.11009832002468756
#>     Attrib V6    0.309648954543721
#>     Attrib V60    0.08231136640312185
#>     Attrib V7    -0.03399751732259103
#>     Attrib V8    0.3734296653695427
#>     Attrib V9    0.5856224695790725
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.3065562008246748
#>     Attrib V1    0.08478019337150236
#>     Attrib V10    0.16036445950104386
#>     Attrib V11    0.4094186200513178
#>     Attrib V12    0.44964792353300387
#>     Attrib V13    -0.27664915832983034
#>     Attrib V14    -0.2019773212014017
#>     Attrib V15    -0.22725168579124405
#>     Attrib V16    -0.1404894431696391
#>     Attrib V17    0.09806226032675014
#>     Attrib V18    0.14386574990307202
#>     Attrib V19    -0.09480001102956594
#>     Attrib V2    -0.10521228686214264
#>     Attrib V20    0.28733656886579123
#>     Attrib V21    0.27157986239831955
#>     Attrib V22    -0.003830189010829284
#>     Attrib V23    0.25277710779599133
#>     Attrib V24    0.2459143042204649
#>     Attrib V25    -0.22221632973795408
#>     Attrib V26    -0.19809781623335704
#>     Attrib V27    -0.04283378523408203
#>     Attrib V28    0.020756138813167884
#>     Attrib V29    0.02344707065369186
#>     Attrib V3    -0.2335502346871264
#>     Attrib V30    0.3723530461030362
#>     Attrib V31    -0.736749258789284
#>     Attrib V32    0.037320887268114965
#>     Attrib V33    0.18606503699019986
#>     Attrib V34    0.05481314024593831
#>     Attrib V35    -0.037148402895836555
#>     Attrib V36    -0.6740933627013261
#>     Attrib V37    -0.3173745281200413
#>     Attrib V38    0.08198001983164836
#>     Attrib V39    0.2262320056510002
#>     Attrib V4    0.7587027508047316
#>     Attrib V40    0.011826843466563309
#>     Attrib V41    0.30098829138669286
#>     Attrib V42    0.1753237843548478
#>     Attrib V43    0.08713692722411467
#>     Attrib V44    0.23099512681321757
#>     Attrib V45    0.31091714034310397
#>     Attrib V46    0.023071314124105586
#>     Attrib V47    -0.23304042416752885
#>     Attrib V48    0.17710341973344867
#>     Attrib V49    0.39104457030904044
#>     Attrib V5    -0.19848017049791108
#>     Attrib V50    -0.5834499119666126
#>     Attrib V51    0.053541346471099316
#>     Attrib V52    0.17919408284405802
#>     Attrib V53    0.05323983870048974
#>     Attrib V54    0.4839328802801766
#>     Attrib V55    -0.2779127912721014
#>     Attrib V56    -0.23398860717814707
#>     Attrib V57    -0.051178917071339196
#>     Attrib V58    0.2450757907569242
#>     Attrib V59    0.1745518118503775
#>     Attrib V6    -0.12057616388033324
#>     Attrib V60    -0.18929870527089804
#>     Attrib V7    -0.2582696365357507
#>     Attrib V8    0.12256311423643565
#>     Attrib V9    0.39154235471868204
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.03842573696898874
#>     Attrib V1    -0.13721563147411645
#>     Attrib V10    -0.7225610177859675
#>     Attrib V11    -0.9726450841277586
#>     Attrib V12    -0.619729737087837
#>     Attrib V13    0.5753500401592089
#>     Attrib V14    0.6102157036197777
#>     Attrib V15    0.5823341696797982
#>     Attrib V16    0.25709749964743667
#>     Attrib V17    -0.2747045251190252
#>     Attrib V18    -0.2629053676622441
#>     Attrib V19    0.10078901282905678
#>     Attrib V2    0.4198392107855636
#>     Attrib V20    -1.203910936301006
#>     Attrib V21    -1.2349854292137488
#>     Attrib V22    -1.2218883106055272
#>     Attrib V23    -1.3916107073461168
#>     Attrib V24    -0.5316337112382656
#>     Attrib V25    0.21963878321757951
#>     Attrib V26    0.010479954532726385
#>     Attrib V27    0.0820562697790429
#>     Attrib V28    -0.38100835536894856
#>     Attrib V29    -0.413984739907452
#>     Attrib V3    0.25711173989863556
#>     Attrib V30    -0.8867719890963556
#>     Attrib V31    1.877798981854279
#>     Attrib V32    0.10548915565057404
#>     Attrib V33    -0.26624358541966514
#>     Attrib V34    -0.23497997713489885
#>     Attrib V35    -0.22369266481980943
#>     Attrib V36    0.40441047107362627
#>     Attrib V37    -0.27252085255483566
#>     Attrib V38    -0.7817653858260627
#>     Attrib V39    -0.9544399424691685
#>     Attrib V4    -1.319530602908897
#>     Attrib V40    0.05840497296454323
#>     Attrib V41    -0.49119393081266016
#>     Attrib V42    -0.5206481282944718
#>     Attrib V43    -0.3405687977010409
#>     Attrib V44    -0.8304809722664824
#>     Attrib V45    -0.8386727156699255
#>     Attrib V46    -0.40202186662788164
#>     Attrib V47    0.08226219492944457
#>     Attrib V48    -0.06560609801015257
#>     Attrib V49    -0.8446069552821438
#>     Attrib V5    0.6683409558135573
#>     Attrib V50    1.0738260668309465
#>     Attrib V51    -0.1687597384753944
#>     Attrib V52    -0.07799910555952938
#>     Attrib V53    0.4936939043803424
#>     Attrib V54    -0.8304925848154743
#>     Attrib V55    0.867249194977812
#>     Attrib V56    -0.1371384982776237
#>     Attrib V57    0.10851696366450907
#>     Attrib V58    -0.440097452289363
#>     Attrib V59    -0.27697243180926084
#>     Attrib V6    0.2856333575714617
#>     Attrib V60    0.8126777787921282
#>     Attrib V7    0.5998010971613521
#>     Attrib V8    -0.28601605029503696
#>     Attrib V9    -1.0387625771506364
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.024580039011080926
#>     Attrib V1    0.15041320559967467
#>     Attrib V10    0.07241947605659979
#>     Attrib V11    0.21725624223157816
#>     Attrib V12    0.19220108640989964
#>     Attrib V13    -0.09540165640495503
#>     Attrib V14    0.0758993360740356
#>     Attrib V15    0.053485649750697375
#>     Attrib V16    0.1296323611099567
#>     Attrib V17    0.12605632503395872
#>     Attrib V18    0.08794369424310583
#>     Attrib V19    -0.03518399870090222
#>     Attrib V2    0.079200632838322
#>     Attrib V20    0.12273749789406323
#>     Attrib V21    0.024008858535880348
#>     Attrib V22    -0.21244622044836148
#>     Attrib V23    -0.1550256080184229
#>     Attrib V24    0.0019156743319277338
#>     Attrib V25    -0.22909576533892032
#>     Attrib V26    -0.27196727268029663
#>     Attrib V27    -0.200491325291549
#>     Attrib V28    -0.25355497992171444
#>     Attrib V29    -0.23390944963866792
#>     Attrib V3    0.019640464217953162
#>     Attrib V30    0.020061911578488772
#>     Attrib V31    -0.2876955231572634
#>     Attrib V32    0.040382807979662316
#>     Attrib V33    0.10808573534374373
#>     Attrib V34    0.05223853037654853
#>     Attrib V35    -0.07632173853020076
#>     Attrib V36    -0.45260103732501983
#>     Attrib V37    -0.38067106890405406
#>     Attrib V38    -0.09087018090611815
#>     Attrib V39    0.029126847749015573
#>     Attrib V4    0.4886098185625205
#>     Attrib V40    -0.04323085880804222
#>     Attrib V41    -0.048166035464553864
#>     Attrib V42    0.014913496745242059
#>     Attrib V43    0.05354190322867219
#>     Attrib V44    0.04486554422095599
#>     Attrib V45    0.05433081082773419
#>     Attrib V46    0.003695052942218844
#>     Attrib V47    -0.155595899397773
#>     Attrib V48    0.10927716495523004
#>     Attrib V49    0.2130217395317679
#>     Attrib V5    -0.036676058930440736
#>     Attrib V50    -0.12531263967250805
#>     Attrib V51    0.04401946424222535
#>     Attrib V52    0.21778913896808938
#>     Attrib V53    0.19803709717039056
#>     Attrib V54    0.3141183826797432
#>     Attrib V55    0.14844255571010428
#>     Attrib V56    0.0872870722294953
#>     Attrib V57    0.17707471533938146
#>     Attrib V58    0.369706620802304
#>     Attrib V59    0.30292735624826306
#>     Attrib V6    -0.055614764776578014
#>     Attrib V60    0.13149284374206233
#>     Attrib V7    -0.06192090767702018
#>     Attrib V8    0.0992386827123487
#>     Attrib V9    0.19339410215209213
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.07599762302188866
#>     Attrib V1    0.13160185739593883
#>     Attrib V10    0.003088104005037266
#>     Attrib V11    0.2609463491017948
#>     Attrib V12    0.20246431545380972
#>     Attrib V13    -0.2712730384279439
#>     Attrib V14    -0.05242629173584725
#>     Attrib V15    0.02279830509425814
#>     Attrib V16    0.07941948223577268
#>     Attrib V17    0.26242867562691924
#>     Attrib V18    0.2144986422458145
#>     Attrib V19    0.09985264111085643
#>     Attrib V2    -0.06293102751877264
#>     Attrib V20    0.3415275255487373
#>     Attrib V21    0.264619100469812
#>     Attrib V22    0.019261398727015048
#>     Attrib V23    0.09012618939312465
#>     Attrib V24    0.05580021501144881
#>     Attrib V25    -0.24733214394471692
#>     Attrib V26    -0.2958129790118446
#>     Attrib V27    -0.3494810781408182
#>     Attrib V28    -0.3766416983879412
#>     Attrib V29    -0.38631046214132786
#>     Attrib V3    0.014764069973078076
#>     Attrib V30    0.11373306146660714
#>     Attrib V31    -0.6105814962948196
#>     Attrib V32    0.009869047759336322
#>     Attrib V33    0.21106637057681807
#>     Attrib V34    0.08372422769983609
#>     Attrib V35    -0.03900478687116633
#>     Attrib V36    -0.5467523790707932
#>     Attrib V37    -0.4005146335205129
#>     Attrib V38    -0.032687799849274106
#>     Attrib V39    0.14514841207671464
#>     Attrib V4    0.6884907520528438
#>     Attrib V40    -0.06431220665531603
#>     Attrib V41    0.0858845298242879
#>     Attrib V42    0.15394775188459964
#>     Attrib V43    0.12387500532872842
#>     Attrib V44    0.16259558405409738
#>     Attrib V45    0.1870150022592402
#>     Attrib V46    -0.06806702375088947
#>     Attrib V47    -0.19310882057082923
#>     Attrib V48    0.01084310327143441
#>     Attrib V49    0.26755240530532653
#>     Attrib V5    -0.18476862775767952
#>     Attrib V50    -0.317912015490904
#>     Attrib V51    -0.007423140217311327
#>     Attrib V52    0.23525344146209468
#>     Attrib V53    0.27440929972533495
#>     Attrib V54    0.4843173292056766
#>     Attrib V55    -0.0070324613925805066
#>     Attrib V56    0.12573166572832045
#>     Attrib V57    0.1550204289652167
#>     Attrib V58    0.3782185872135212
#>     Attrib V59    0.4217621092256723
#>     Attrib V6    -0.12956779373248667
#>     Attrib V60    0.03877191942021312
#>     Attrib V7    -0.11901385359937773
#>     Attrib V8    0.21216779228020813
#>     Attrib V9    0.24673101517713006
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.13192282720405332
#>     Attrib V1    -0.15865880843226474
#>     Attrib V10    -0.5593912951509517
#>     Attrib V11    -0.775944867737735
#>     Attrib V12    -0.5654206745964451
#>     Attrib V13    0.3205531094745329
#>     Attrib V14    0.37216355460155187
#>     Attrib V15    0.3414164666400996
#>     Attrib V16    0.0332862633271353
#>     Attrib V17    -0.3369723072694678
#>     Attrib V18    -0.40345521163977965
#>     Attrib V19    -0.12432557895519501
#>     Attrib V2    0.2615719043011858
#>     Attrib V20    -0.9443195855144767
#>     Attrib V21    -0.9346380812411609
#>     Attrib V22    -0.737931611207953
#>     Attrib V23    -0.7822689395045616
#>     Attrib V24    -0.3436249303528155
#>     Attrib V25    0.3509435348864301
#>     Attrib V26    0.29978911181117857
#>     Attrib V27    0.326595700899804
#>     Attrib V28    0.09099694532278176
#>     Attrib V29    0.010696304612052347
#>     Attrib V3    0.12471919141556362
#>     Attrib V30    -0.5090105142218783
#>     Attrib V31    1.429689035708437
#>     Attrib V32    0.1187607462163909
#>     Attrib V33    -0.2662661302258027
#>     Attrib V34    -0.2021457632120083
#>     Attrib V35    -0.1693781452377974
#>     Attrib V36    0.5474085594956698
#>     Attrib V37    0.016556840233577733
#>     Attrib V38    -0.4555152305001869
#>     Attrib V39    -0.6578999282624187
#>     Attrib V4    -1.1918757149611527
#>     Attrib V40    0.09360227510999908
#>     Attrib V41    -0.2678484902450185
#>     Attrib V42    -0.30565031917119156
#>     Attrib V43    -0.16507597487576456
#>     Attrib V44    -0.5762134587338285
#>     Attrib V45    -0.5397466531089689
#>     Attrib V46    -0.10934684278709354
#>     Attrib V47    0.26906343022792795
#>     Attrib V48    -0.06323806891886817
#>     Attrib V49    -0.6699567549958798
#>     Attrib V5    0.38464621878213157
#>     Attrib V50    0.8117241568115078
#>     Attrib V51    -0.11393505917810018
#>     Attrib V52    -0.20541253514388025
#>     Attrib V53    0.058283349436713115
#>     Attrib V54    -0.7004970730862663
#>     Attrib V55    0.6811404581322034
#>     Attrib V56    -0.05067646211130291
#>     Attrib V57    0.21687185466580544
#>     Attrib V58    -0.4085832759805518
#>     Attrib V59    -0.41882816864281314
#>     Attrib V6    0.32548221934164895
#>     Attrib V60    0.31501781540566515
#>     Attrib V7    0.3501421196266969
#>     Attrib V8    -0.160912099855206
#>     Attrib V9    -0.686417277913687
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.4857835953719317
#>     Attrib V1    0.1396699397115251
#>     Attrib V10    0.8812753926166867
#>     Attrib V11    1.5043018587989287
#>     Attrib V12    2.0156414145870643
#>     Attrib V13    0.7429509896017519
#>     Attrib V14    -0.27786863480107066
#>     Attrib V15    -0.951157166656378
#>     Attrib V16    -0.7388469465234603
#>     Attrib V17    -0.4443121629043907
#>     Attrib V18    -0.2372502723557765
#>     Attrib V19    -0.6484574838986622
#>     Attrib V2    0.49120661086463924
#>     Attrib V20    -0.23614265690115227
#>     Attrib V21    -0.09116870411556033
#>     Attrib V22    -0.08981837781510603
#>     Attrib V23    0.9144394769637253
#>     Attrib V24    0.7598098517614272
#>     Attrib V25    -0.0696171567866098
#>     Attrib V26    0.6328887021915416
#>     Attrib V27    1.5983454207053
#>     Attrib V28    1.9879170721559185
#>     Attrib V29    1.4700011067542496
#>     Attrib V3    -0.3839866254917344
#>     Attrib V30    0.48581357259184876
#>     Attrib V31    -0.9680304258788532
#>     Attrib V32    -0.022831188146192727
#>     Attrib V33    -0.6632838313816002
#>     Attrib V34    -0.21708450265813345
#>     Attrib V35    0.25895668121903836
#>     Attrib V36    -1.2075784849089661
#>     Attrib V37    0.10433782010155931
#>     Attrib V38    0.39114100581934585
#>     Attrib V39    0.6042320621471724
#>     Attrib V4    0.792675095414727
#>     Attrib V40    0.5056553733972841
#>     Attrib V41    1.2219086859190402
#>     Attrib V42    -0.3898550196114988
#>     Attrib V43    -0.2976816673041023
#>     Attrib V44    0.3551572095605228
#>     Attrib V45    1.1861473687503592
#>     Attrib V46    1.0825116498649756
#>     Attrib V47    0.49326842331379983
#>     Attrib V48    0.5713344293976695
#>     Attrib V49    0.8736317853901933
#>     Attrib V5    0.4234194594327505
#>     Attrib V50    -0.8130550390815133
#>     Attrib V51    0.6809109115680703
#>     Attrib V52    0.5503260295303418
#>     Attrib V53    -0.032040331934478895
#>     Attrib V54    0.6479381564393366
#>     Attrib V55    -0.05104199047214697
#>     Attrib V56    -0.942275363771384
#>     Attrib V57    -0.2421003910841031
#>     Attrib V58    0.17701476126925922
#>     Attrib V59    -0.6272591050194313
#>     Attrib V6    1.0604896967894692
#>     Attrib V60    -0.1511430472180323
#>     Attrib V7    -0.15346273785500786
#>     Attrib V8    -0.11628645906385104
#>     Attrib V9    1.0414863999321342
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.23791480460208572
#>     Attrib V1    -0.0096693245039135
#>     Attrib V10    -0.038003198203571266
#>     Attrib V11    -0.2080476975621689
#>     Attrib V12    -0.17076132770989477
#>     Attrib V13    0.034776135031872726
#>     Attrib V14    0.14733276536826945
#>     Attrib V15    0.07910372394145947
#>     Attrib V16    0.04961582289993575
#>     Attrib V17    0.011538021247804623
#>     Attrib V18    -0.06725513779813018
#>     Attrib V19    0.058762278086205016
#>     Attrib V2    0.09394762819953872
#>     Attrib V20    -0.1237461094288934
#>     Attrib V21    -0.0650061520864109
#>     Attrib V22    0.02529604598706489
#>     Attrib V23    -0.04059075861814134
#>     Attrib V24    -0.06244763648796353
#>     Attrib V25    0.06954966437456339
#>     Attrib V26    -0.05311299257984451
#>     Attrib V27    -0.07955131742810767
#>     Attrib V28    -0.05667772774031464
#>     Attrib V29    -0.012647205645822465
#>     Attrib V3    0.07965712214254657
#>     Attrib V30    -0.08348479411364254
#>     Attrib V31    0.1943262474014385
#>     Attrib V32    -0.02638531393595166
#>     Attrib V33    0.001846188807280484
#>     Attrib V34    -0.05340873327488696
#>     Attrib V35    0.09348285193158058
#>     Attrib V36    0.3410657446030888
#>     Attrib V37    0.19713173667838768
#>     Attrib V38    0.003495733212585753
#>     Attrib V39    -0.0541065459768994
#>     Attrib V4    -0.1433613443336604
#>     Attrib V40    0.05371724105655303
#>     Attrib V41    -0.008376804871820076
#>     Attrib V42    0.037259867984604705
#>     Attrib V43    0.04588190085022354
#>     Attrib V44    -0.014031595066810138
#>     Attrib V45    -0.13006021334129633
#>     Attrib V46    -0.045909585211378647
#>     Attrib V47    0.03869690224638624
#>     Attrib V48    0.01292677234562395
#>     Attrib V49    -0.10118475092623282
#>     Attrib V5    0.06144330101793302
#>     Attrib V50    0.2448123634919727
#>     Attrib V51    0.028934258326947637
#>     Attrib V52    -0.03872699377157202
#>     Attrib V53    0.012684629082076283
#>     Attrib V54    -0.15012913209664197
#>     Attrib V55    0.09380707551420843
#>     Attrib V56    0.15081720255446254
#>     Attrib V57    0.08346209892486058
#>     Attrib V58    -0.019723314701432338
#>     Attrib V59    0.021759539601421244
#>     Attrib V6    0.14121367859599224
#>     Attrib V60    0.164684576312635
#>     Attrib V7    0.17413416198607198
#>     Attrib V8    0.07834304904694665
#>     Attrib V9    -0.08539344033614689
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.41123018836098796
#>     Attrib V1    0.005190720552224985
#>     Attrib V10    0.3186045097544672
#>     Attrib V11    0.6566016066773342
#>     Attrib V12    0.6456962504482329
#>     Attrib V13    -0.22893649152769094
#>     Attrib V14    -0.28366755281957023
#>     Attrib V15    -0.4199568323131656
#>     Attrib V16    -0.3037498436721948
#>     Attrib V17    -0.18661461201026994
#>     Attrib V18    0.04268791426829064
#>     Attrib V19    -0.3965456260485991
#>     Attrib V2    -0.14180216940535254
#>     Attrib V20    -0.028538512213140216
#>     Attrib V21    0.009446216378840275
#>     Attrib V22    -0.17173190968924837
#>     Attrib V23    0.34419305736272926
#>     Attrib V24    0.45890355413878275
#>     Attrib V25    -0.15931384083469077
#>     Attrib V26    0.008404508072932006
#>     Attrib V27    0.2915673120162525
#>     Attrib V28    0.44324381757600406
#>     Attrib V29    0.33979039152354007
#>     Attrib V3    -0.48024675259655386
#>     Attrib V30    0.46963018965276404
#>     Attrib V31    -0.6814032804447157
#>     Attrib V32    0.19562152571062055
#>     Attrib V33    0.17419844549225702
#>     Attrib V34    0.06597762846201734
#>     Attrib V35    -0.043075235366459456
#>     Attrib V36    -0.8819200959241071
#>     Attrib V37    -0.32531799071898276
#>     Attrib V38    0.05965123101417012
#>     Attrib V39    0.296926819534145
#>     Attrib V4    0.8245402012628193
#>     Attrib V40    0.03834116695259438
#>     Attrib V41    0.5158718390927476
#>     Attrib V42    0.16252298255727352
#>     Attrib V43    -0.09440237194545792
#>     Attrib V44    0.1743400766575014
#>     Attrib V45    0.6305730558641511
#>     Attrib V46    0.36101270620575693
#>     Attrib V47    0.006732911484977666
#>     Attrib V48    0.4419494427683577
#>     Attrib V49    0.576278805665891
#>     Attrib V5    -0.18128360173762548
#>     Attrib V50    -0.5809038444635043
#>     Attrib V51    0.1365538003093934
#>     Attrib V52    0.2280430661337001
#>     Attrib V53    0.04261262787759897
#>     Attrib V54    0.3929522416318253
#>     Attrib V55    -0.22111992983799986
#>     Attrib V56    -0.6998833362931853
#>     Attrib V57    0.05674455345731568
#>     Attrib V58    0.25278477740795163
#>     Attrib V59    -0.13480149096424937
#>     Attrib V6    0.10154639340889043
#>     Attrib V60    -0.372317044316815
#>     Attrib V7    -0.3142401192664642
#>     Attrib V8    0.30126285161951205
#>     Attrib V9    0.61364066346154
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.027196659170339744
#>     Attrib V1    -0.13916934732952804
#>     Attrib V10    -0.8151576698969348
#>     Attrib V11    -1.0522263683858228
#>     Attrib V12    -0.7488297775970758
#>     Attrib V13    0.5532357549390324
#>     Attrib V14    0.6360621750974726
#>     Attrib V15    0.6514690515250576
#>     Attrib V16    0.31857713596827436
#>     Attrib V17    -0.3025824687181398
#>     Attrib V18    -0.2193556301256926
#>     Attrib V19    0.09369134714584412
#>     Attrib V2    0.38439111540164045
#>     Attrib V20    -1.2460202943069398
#>     Attrib V21    -1.2712359108130193
#>     Attrib V22    -1.2051116924670016
#>     Attrib V23    -1.4738352298328439
#>     Attrib V24    -0.5812415210257045
#>     Attrib V25    0.19350119337761407
#>     Attrib V26    -0.014053018219930614
#>     Attrib V27    0.0744215035733385
#>     Attrib V28    -0.4174271916415971
#>     Attrib V29    -0.48056123200320067
#>     Attrib V3    0.33053954180360634
#>     Attrib V30    -0.9435205068304815
#>     Attrib V31    1.8207796251764914
#>     Attrib V32    0.13261534807049818
#>     Attrib V33    -0.2706721424806169
#>     Attrib V34    -0.21079563392609785
#>     Attrib V35    -0.1848342553748097
#>     Attrib V36    0.47700565826971586
#>     Attrib V37    -0.41217943539916063
#>     Attrib V38    -0.7815050562539869
#>     Attrib V39    -0.9335188181630982
#>     Attrib V4    -1.3206234500933043
#>     Attrib V40    -0.023209439300067997
#>     Attrib V41    -0.5936803770923974
#>     Attrib V42    -0.45309961050331093
#>     Attrib V43    -0.3064639934321268
#>     Attrib V44    -0.8541659749843491
#>     Attrib V45    -0.8269658227259017
#>     Attrib V46    -0.4020551283471461
#>     Attrib V47    0.0579773663684547
#>     Attrib V48    -0.09371108712488704
#>     Attrib V49    -0.8622651601339489
#>     Attrib V5    0.6257399391886889
#>     Attrib V50    1.1188098834047728
#>     Attrib V51    -0.26838941884990913
#>     Attrib V52    -0.06357509442287322
#>     Attrib V53    0.49521965194749024
#>     Attrib V54    -0.861293723829249
#>     Attrib V55    0.9121261435644377
#>     Attrib V56    -0.06712176004821567
#>     Attrib V57    0.07826767642135857
#>     Attrib V58    -0.39627900528485793
#>     Attrib V59    -0.2164407937843706
#>     Attrib V6    0.2396973608665196
#>     Attrib V60    0.7622748361277255
#>     Attrib V7    0.5775459467800282
#>     Attrib V8    -0.19578403097273125
#>     Attrib V9    -1.0710070359808914
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.3069303965678019
#>     Attrib V1    -0.004385065238333238
#>     Attrib V10    0.1250244085458501
#>     Attrib V11    0.4447238393674042
#>     Attrib V12    0.4354787159113561
#>     Attrib V13    -0.20085913357941576
#>     Attrib V14    -0.13553364260788503
#>     Attrib V15    -0.2193745492546889
#>     Attrib V16    -0.17142858011498366
#>     Attrib V17    -0.019355242741578786
#>     Attrib V18    0.013040157192511927
#>     Attrib V19    -0.27419956031761133
#>     Attrib V2    -0.05545365029267618
#>     Attrib V20    0.0867765765054977
#>     Attrib V21    0.0475390157298769
#>     Attrib V22    -0.18558649949817327
#>     Attrib V23    0.050002890833571054
#>     Attrib V24    0.21461667549215457
#>     Attrib V25    -0.16638395136588985
#>     Attrib V26    -0.22443221548132286
#>     Attrib V27    0.025791093732371043
#>     Attrib V28    0.1381760945281467
#>     Attrib V29    0.09429476146380619
#>     Attrib V3    -0.19464753717431227
#>     Attrib V30    0.26381777202108975
#>     Attrib V31    -0.5345749877096267
#>     Attrib V32    0.15628471104796607
#>     Attrib V33    0.19741850707990027
#>     Attrib V34    0.05560193628195559
#>     Attrib V35    -0.05530910706289688
#>     Attrib V36    -0.773115045973719
#>     Attrib V37    -0.3671850060427799
#>     Attrib V38    -0.031543700731489474
#>     Attrib V39    0.16353821876503108
#>     Attrib V4    0.6312177991273961
#>     Attrib V40    -0.015464281982802853
#>     Attrib V41    0.2610285189734122
#>     Attrib V42    0.1202677341495188
#>     Attrib V43    0.016785006672854142
#>     Attrib V44    0.02969313668993205
#>     Attrib V45    0.3411967188195744
#>     Attrib V46    0.10283066405012284
#>     Attrib V47    -0.09175259866809414
#>     Attrib V48    0.20613742386872927
#>     Attrib V49    0.3361907960734129
#>     Attrib V5    -0.20564361195487207
#>     Attrib V50    -0.4622414862147968
#>     Attrib V51    0.02891873690976545
#>     Attrib V52    0.20237067974296807
#>     Attrib V53    0.03490763850823582
#>     Attrib V54    0.28070276456189364
#>     Attrib V55    -0.16148228844198947
#>     Attrib V56    -0.3216226232599555
#>     Attrib V57    -0.006896538625064163
#>     Attrib V58    0.1765057619920928
#>     Attrib V59    0.02316737311464034
#>     Attrib V6    -0.04926390158250623
#>     Attrib V60    -0.1600698906971785
#>     Attrib V7    -0.25252763416551316
#>     Attrib V8    0.18563250435073203
#>     Attrib V9    0.35363949972010633
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.1242916249375627
#>     Attrib V1    0.09064849093731984
#>     Attrib V10    0.09223523428120554
#>     Attrib V11    0.08989940719077433
#>     Attrib V12    0.12992355474727632
#>     Attrib V13    0.05310321453791153
#>     Attrib V14    0.0633030394792425
#>     Attrib V15    0.045312527735332606
#>     Attrib V16    0.017426268353031554
#>     Attrib V17    0.06430206336357669
#>     Attrib V18    0.0016821812053133423
#>     Attrib V19    -0.07684960972554537
#>     Attrib V2    0.08232182494628638
#>     Attrib V20    -0.036342473693674014
#>     Attrib V21    -0.016891403474871426
#>     Attrib V22    -0.11972380476528402
#>     Attrib V23    -0.07721098819800166
#>     Attrib V24    -0.06368689201118134
#>     Attrib V25    -0.026224125413606955
#>     Attrib V26    -0.02170100056334847
#>     Attrib V27    -0.01400767842605536
#>     Attrib V28    0.019025943220094557
#>     Attrib V29    -0.07079280330005776
#>     Attrib V3    0.0357117205643576
#>     Attrib V30    0.03605459235231747
#>     Attrib V31    -0.03046453740355583
#>     Attrib V32    -0.006162931618685164
#>     Attrib V33    -0.0040357662509584655
#>     Attrib V34    0.0014219441978766453
#>     Attrib V35    0.04776896427931727
#>     Attrib V36    -0.11361611524093797
#>     Attrib V37    -0.042494048151850886
#>     Attrib V38    -0.023874546128835078
#>     Attrib V39    0.1069322285242637
#>     Attrib V4    0.21566539667640836
#>     Attrib V40    0.04337397043515847
#>     Attrib V41    0.030090393640976775
#>     Attrib V42    0.0470877449182934
#>     Attrib V43    -0.005586942705002825
#>     Attrib V44    -0.014336655771488668
#>     Attrib V45    0.03799922180368631
#>     Attrib V46    0.03276240545780954
#>     Attrib V47    -0.00868718134247178
#>     Attrib V48    0.09022091287124129
#>     Attrib V49    0.06273999640900066
#>     Attrib V5    -5.895018856637659E-4
#>     Attrib V50    -0.005960023554533221
#>     Attrib V51    0.04451944736514912
#>     Attrib V52    0.09726848738198339
#>     Attrib V53    0.0978714677681287
#>     Attrib V54    0.0726212001409395
#>     Attrib V55    0.05857237335209907
#>     Attrib V56    0.08855566602238761
#>     Attrib V57    0.0875322106310573
#>     Attrib V58    0.15020333455242457
#>     Attrib V59    0.13054836870586978
#>     Attrib V6    0.06397851951921923
#>     Attrib V60    0.06544625245657897
#>     Attrib V7    -0.022686273021431388
#>     Attrib V8    0.06382869970043384
#>     Attrib V9    0.07150191026571194
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.04504889748716141
#>     Attrib V1    0.1261013457126274
#>     Attrib V10    0.050472891210997205
#>     Attrib V11    0.2875817396866803
#>     Attrib V12    0.06806416804688242
#>     Attrib V13    -0.4523451047461532
#>     Attrib V14    -0.11248209208872467
#>     Attrib V15    0.05440558960206571
#>     Attrib V16    0.17296116117562835
#>     Attrib V17    0.3247445495050086
#>     Attrib V18    0.24202186027223624
#>     Attrib V19    0.10472907429640518
#>     Attrib V2    -0.07099506013558939
#>     Attrib V20    0.5408826423776069
#>     Attrib V21    0.3976794799693561
#>     Attrib V22    0.12563125694397928
#>     Attrib V23    0.16636780658722491
#>     Attrib V24    0.14110901144472288
#>     Attrib V25    -0.3789329233410951
#>     Attrib V26    -0.4413783714992479
#>     Attrib V27    -0.5231186853946425
#>     Attrib V28    -0.5496943795206705
#>     Attrib V29    -0.5084328490844957
#>     Attrib V3    -0.048525107052795474
#>     Attrib V30    0.17022532884473
#>     Attrib V31    -0.7894222894375836
#>     Attrib V32    -0.008666963173019895
#>     Attrib V33    0.34187660749011944
#>     Attrib V34    0.17633310587310272
#>     Attrib V35    -0.10631556240376525
#>     Attrib V36    -0.7254405153333597
#>     Attrib V37    -0.5290678702313142
#>     Attrib V38    0.03311609493366353
#>     Attrib V39    0.19477384547727805
#>     Attrib V4    0.80989990240783
#>     Attrib V40    -0.023534715668428036
#>     Attrib V41    0.13038762099793588
#>     Attrib V42    0.28446766087961345
#>     Attrib V43    0.1757769267507105
#>     Attrib V44    0.28801094458088633
#>     Attrib V45    0.17465863543072258
#>     Attrib V46    -0.10103778480423531
#>     Attrib V47    -0.3167370154038209
#>     Attrib V48    0.04155260818151146
#>     Attrib V49    0.31621314563413083
#>     Attrib V5    -0.2900158741783144
#>     Attrib V50    -0.45419404080048037
#>     Attrib V51    -0.026638869660122202
#>     Attrib V52    0.1867425843452687
#>     Attrib V53    0.2951362837427255
#>     Attrib V54    0.6900777739572744
#>     Attrib V55    -0.052329049238608046
#>     Attrib V56    0.12936793452883105
#>     Attrib V57    0.2586619413964498
#>     Attrib V58    0.44602554950265016
#>     Attrib V59    0.4735974285499222
#>     Attrib V6    -0.18624046008673453
#>     Attrib V60    0.03216173907619842
#>     Attrib V7    -0.12693766937122533
#>     Attrib V8    0.3608522508313335
#>     Attrib V9    0.37941229184229514
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    5.771602811354541E-4
#>     Attrib V1    0.11421318201072996
#>     Attrib V10    0.012715874791249629
#>     Attrib V11    0.19561158827552463
#>     Attrib V12    0.15896040069320921
#>     Attrib V13    -0.17375623726750564
#>     Attrib V14    0.056018686309050825
#>     Attrib V15    0.060368436914736784
#>     Attrib V16    0.10267431715804537
#>     Attrib V17    0.11016858433324421
#>     Attrib V18    0.18040086895150842
#>     Attrib V19    -0.026182339244460482
#>     Attrib V2    0.0034908250279257168
#>     Attrib V20    0.19585210022490696
#>     Attrib V21    0.14965254794579239
#>     Attrib V22    -0.10583858361647822
#>     Attrib V23    -0.014670299043007288
#>     Attrib V24    -0.008188679392266352
#>     Attrib V25    -0.26784144062626714
#>     Attrib V26    -0.2877724014966308
#>     Attrib V27    -0.20770854400753386
#>     Attrib V28    -0.16854469776226774
#>     Attrib V29    -0.22379424301099796
#>     Attrib V3    0.027696530573419142
#>     Attrib V30    0.10415069954987521
#>     Attrib V31    -0.43893777045676957
#>     Attrib V32    0.023490380142287815
#>     Attrib V33    0.17968756545744433
#>     Attrib V34    0.07363195783439686
#>     Attrib V35    -0.06457652934373828
#>     Attrib V36    -0.4114503272041701
#>     Attrib V37    -0.36013786355862887
#>     Attrib V38    -0.0668061529765074
#>     Attrib V39    0.11196854761389051
#>     Attrib V4    0.4762857000143665
#>     Attrib V40    -0.060454953367902096
#>     Attrib V41    0.003615254261696959
#>     Attrib V42    0.10513478934267723
#>     Attrib V43    -0.010147919821762927
#>     Attrib V44    0.10811430741174145
#>     Attrib V45    0.15955771387559525
#>     Attrib V46    -0.017398850382126574
#>     Attrib V47    -0.15258373714759163
#>     Attrib V48    0.02754587122620061
#>     Attrib V49    0.2394667064913958
#>     Attrib V5    -0.07709976920776569
#>     Attrib V50    -0.22056015380422966
#>     Attrib V51    0.04150238598221515
#>     Attrib V52    0.2032613971629533
#>     Attrib V53    0.1774304884665288
#>     Attrib V54    0.26023523677731136
#>     Attrib V55    0.01614005555043093
#>     Attrib V56    0.012502240336855522
#>     Attrib V57    0.12283890403271137
#>     Attrib V58    0.33329703628460033
#>     Attrib V59    0.2451938734131914
#>     Attrib V6    -0.036542280041446704
#>     Attrib V60    0.023311328601708675
#>     Attrib V7    -0.06770129630065948
#>     Attrib V8    0.20680299499418914
#>     Attrib V9    0.22952390742132872
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
#>   0.173913 
```
