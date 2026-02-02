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
#>     Threshold    -0.10806649610508588
#>     Node 2    1.7773064100781069
#>     Node 3    1.4529353315960933
#>     Node 4    1.1066979007001698
#>     Node 5    -1.9015902129996098
#>     Node 6    0.6465322230373332
#>     Node 7    1.781258461876945
#>     Node 8    1.1303321574767449
#>     Node 9    3.624328430944259
#>     Node 10    -2.8884245036824066
#>     Node 11    1.8119780539398298
#>     Node 12    1.749169534512973
#>     Node 13    -0.05028636824599961
#>     Node 14    1.844872382815735
#>     Node 15    -1.2770569903968358
#>     Node 16    0.3900948767032065
#>     Node 17    -0.38388353940986647
#>     Node 18    -0.3400243905430218
#>     Node 19    2.234630235673793
#>     Node 20    1.8694473615650882
#>     Node 21    -1.8001338126351378
#>     Node 22    1.013881430755257
#>     Node 23    1.210630164691095
#>     Node 24    -1.0733844095132579
#>     Node 25    4.4387815049645525
#>     Node 26    -1.6677294128820443
#>     Node 27    1.851357155782235
#>     Node 28    -2.909879182034789
#>     Node 29    1.5285854721980152
#>     Node 30    -1.1314753124644714
#>     Node 31    0.9643452591655023
#>     Node 32    -0.2693805210853388
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.1495553828534997
#>     Node 2    -1.8242896414108698
#>     Node 3    -1.4292123000819088
#>     Node 4    -1.063862977384922
#>     Node 5    1.9132308640878752
#>     Node 6    -0.6239329030036719
#>     Node 7    -1.7676379059314287
#>     Node 8    -1.1668210956054736
#>     Node 9    -3.644906570044966
#>     Node 10    2.8681251342996124
#>     Node 11    -1.7717839306046113
#>     Node 12    -1.82176856796589
#>     Node 13    0.08836039273958701
#>     Node 14    -1.7700550233441108
#>     Node 15    1.261125940362855
#>     Node 16    -0.4098467284802147
#>     Node 17    0.3899404754430382
#>     Node 18    0.3607230186938773
#>     Node 19    -2.2312606789756884
#>     Node 20    -1.8478008626194613
#>     Node 21    1.8326313502139011
#>     Node 22    -1.0611142265746067
#>     Node 23    -1.249647568103662
#>     Node 24    1.0573560478070474
#>     Node 25    -4.444748714981421
#>     Node 26    1.5799630344090587
#>     Node 27    -1.8782478516562773
#>     Node 28    2.8954289271941045
#>     Node 29    -1.5512429326439388
#>     Node 30    1.2045100466937868
#>     Node 31    -0.9047371871821052
#>     Node 32    0.23030827304404372
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    6.207499339699517E-4
#>     Attrib V1    0.73352282012001
#>     Attrib V10    -0.5715252676783655
#>     Attrib V11    -0.07587635574310321
#>     Attrib V12    -0.09835078003417881
#>     Attrib V13    -0.4299665025952778
#>     Attrib V14    0.013699636963599954
#>     Attrib V15    0.2635804058327858
#>     Attrib V16    0.6270508192879644
#>     Attrib V17    0.5943662869936295
#>     Attrib V18    0.21470161296348922
#>     Attrib V19    -0.06011953556386331
#>     Attrib V2    0.23313120282209798
#>     Attrib V20    0.4994151665688836
#>     Attrib V21    0.33687803864083454
#>     Attrib V22    -0.005505446294481362
#>     Attrib V23    0.017225657309508355
#>     Attrib V24    -0.07095110692949531
#>     Attrib V25    -0.4669170321674603
#>     Attrib V26    -0.8109419794181143
#>     Attrib V27    -0.9104937091374723
#>     Attrib V28    -0.36526090235065156
#>     Attrib V29    -0.6500314784803134
#>     Attrib V3    0.08141104795823531
#>     Attrib V30    -0.06829218762066126
#>     Attrib V31    -0.7343677470831796
#>     Attrib V32    0.1825480422369556
#>     Attrib V33    0.35607795459351266
#>     Attrib V34    -0.07078523457920413
#>     Attrib V35    0.2570062875314261
#>     Attrib V36    -0.2589601624226992
#>     Attrib V37    -0.8546916676166595
#>     Attrib V38    0.02170290750275476
#>     Attrib V39    0.24672373151382593
#>     Attrib V4    0.1638443982237047
#>     Attrib V40    -0.16601477543328644
#>     Attrib V41    -0.34022265742720986
#>     Attrib V42    0.09121858152326506
#>     Attrib V43    0.24560593271418193
#>     Attrib V44    0.3412694574396891
#>     Attrib V45    0.35244219079506717
#>     Attrib V46    -0.13167069407348436
#>     Attrib V47    -0.3900117435595006
#>     Attrib V48    0.1077215193546975
#>     Attrib V49    0.38645994627785674
#>     Attrib V5    -0.09224255845864625
#>     Attrib V50    -0.34113334171660964
#>     Attrib V51    -0.4235346068106943
#>     Attrib V52    0.2221205122908862
#>     Attrib V53    0.3071236610641873
#>     Attrib V54    0.696081823833728
#>     Attrib V55    0.05493444820284667
#>     Attrib V56    0.4528203184849493
#>     Attrib V57    -0.10133015795523713
#>     Attrib V58    0.4535083267048996
#>     Attrib V59    0.5108529329041038
#>     Attrib V6    -0.38988540341170796
#>     Attrib V60    0.25077213829063033
#>     Attrib V7    -0.07647835274020318
#>     Attrib V8    -0.06091593272101488
#>     Attrib V9    0.0485255972477112
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.04222373653613664
#>     Attrib V1    0.5611990423537948
#>     Attrib V10    -0.4489900854887655
#>     Attrib V11    -0.020106698599148196
#>     Attrib V12    0.012864590911909841
#>     Attrib V13    -0.28098482312128953
#>     Attrib V14    -0.02045722083376545
#>     Attrib V15    0.1965478227331283
#>     Attrib V16    0.4434230862529663
#>     Attrib V17    0.4502757220508139
#>     Attrib V18    0.11768131925216013
#>     Attrib V19    -0.038302134853215174
#>     Attrib V2    0.19685207011389524
#>     Attrib V20    0.3693165624046506
#>     Attrib V21    0.2073391980649805
#>     Attrib V22    0.01965030334113554
#>     Attrib V23    0.07545427512714334
#>     Attrib V24    -0.024034728629117937
#>     Attrib V25    -0.3120812204154398
#>     Attrib V26    -0.6281211665036452
#>     Attrib V27    -0.7344642200904884
#>     Attrib V28    -0.26824763228157433
#>     Attrib V29    -0.5914502313736822
#>     Attrib V3    0.02769071450857947
#>     Attrib V30    -0.0033144577680915125
#>     Attrib V31    -0.5359466493990075
#>     Attrib V32    0.2174028894644635
#>     Attrib V33    0.3484851473670333
#>     Attrib V34    -0.11823398535095261
#>     Attrib V35    0.21260788832483427
#>     Attrib V36    -0.25652148168799116
#>     Attrib V37    -0.7651845250137507
#>     Attrib V38    -0.07662009652002967
#>     Attrib V39    0.19261268320603084
#>     Attrib V4    0.1543780529913413
#>     Attrib V40    -0.1654877093515314
#>     Attrib V41    -0.2777497705180818
#>     Attrib V42    0.05814424088391394
#>     Attrib V43    0.18640200647005017
#>     Attrib V44    0.2956132790430704
#>     Attrib V45    0.30805345619847807
#>     Attrib V46    -0.09813041520866628
#>     Attrib V47    -0.2660267304308815
#>     Attrib V48    0.1073939862896567
#>     Attrib V49    0.3566800490829769
#>     Attrib V5    -0.10001141648580752
#>     Attrib V50    -0.2979335923449231
#>     Attrib V51    -0.3073862966128315
#>     Attrib V52    0.2866228701194013
#>     Attrib V53    0.23523429233972054
#>     Attrib V54    0.6610431491473314
#>     Attrib V55    0.06605271154413579
#>     Attrib V56    0.3359131067789521
#>     Attrib V57    -0.10213911070821434
#>     Attrib V58    0.4411811508476588
#>     Attrib V59    0.3914518519426898
#>     Attrib V6    -0.3299328673105732
#>     Attrib V60    0.13694408869876565
#>     Attrib V7    -0.10587870559584671
#>     Attrib V8    -0.04799304401040098
#>     Attrib V9    0.06516731812848482
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.03188774209289357
#>     Attrib V1    0.4057002751243469
#>     Attrib V10    -0.35624136502682463
#>     Attrib V11    0.00903278309602976
#>     Attrib V12    0.012144406926101187
#>     Attrib V13    -0.20604515701680962
#>     Attrib V14    0.014354722494450333
#>     Attrib V15    0.1504517170828243
#>     Attrib V16    0.33902849483378344
#>     Attrib V17    0.36345157802982575
#>     Attrib V18    0.12110478314915644
#>     Attrib V19    -0.05702875797455764
#>     Attrib V2    0.12725697308418138
#>     Attrib V20    0.30197829142926425
#>     Attrib V21    0.22642529978162396
#>     Attrib V22    -0.042212941719980725
#>     Attrib V23    0.03530457644425022
#>     Attrib V24    -0.0691626223133652
#>     Attrib V25    -0.3039750272455598
#>     Attrib V26    -0.47914440775372413
#>     Attrib V27    -0.5869605924244807
#>     Attrib V28    -0.15766185521118153
#>     Attrib V29    -0.3604530768834704
#>     Attrib V3    0.04277516709552279
#>     Attrib V30    -0.03820024937725831
#>     Attrib V31    -0.43617392879976585
#>     Attrib V32    0.14274122163881237
#>     Attrib V33    0.27731068607385817
#>     Attrib V34    -0.05367612602845709
#>     Attrib V35    0.17558588805850275
#>     Attrib V36    -0.19697536977505592
#>     Attrib V37    -0.5563514180937686
#>     Attrib V38    -0.056572364977243474
#>     Attrib V39    0.15503720131011295
#>     Attrib V4    0.1301019351449679
#>     Attrib V40    -0.1375268477776555
#>     Attrib V41    -0.24309949344015716
#>     Attrib V42    0.04015325977120475
#>     Attrib V43    0.11962977667507244
#>     Attrib V44    0.23375576196991688
#>     Attrib V45    0.3197008975752562
#>     Attrib V46    -0.09280339530228675
#>     Attrib V47    -0.24373833249421403
#>     Attrib V48    0.14401407059219673
#>     Attrib V49    0.3464378152862807
#>     Attrib V5    -0.020908868376603586
#>     Attrib V50    -0.2077292771503409
#>     Attrib V51    -0.18216805107116923
#>     Attrib V52    0.2218025089858702
#>     Attrib V53    0.25289926157556125
#>     Attrib V54    0.42498146828802147
#>     Attrib V55    0.018714018999485993
#>     Attrib V56    0.2577598684986597
#>     Attrib V57    -0.055676249243295645
#>     Attrib V58    0.3000108911224479
#>     Attrib V59    0.2852573521615897
#>     Attrib V6    -0.26315576046423383
#>     Attrib V60    0.0985420307591912
#>     Attrib V7    -0.0945149292245196
#>     Attrib V8    -0.1116975174797387
#>     Attrib V9    0.104836150870176
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.4210947810779876
#>     Attrib V1    -0.6268003486251466
#>     Attrib V10    0.35816129414279324
#>     Attrib V11    -0.5532305077478986
#>     Attrib V12    -0.6962404291651257
#>     Attrib V13    0.08432135973643129
#>     Attrib V14    0.29953173250096693
#>     Attrib V15    0.32158860719156607
#>     Attrib V16    -0.01586637925397917
#>     Attrib V17    -0.06277312060970544
#>     Attrib V18    0.17759213377382566
#>     Attrib V19    0.5023560052337857
#>     Attrib V2    -0.007063930211631615
#>     Attrib V20    -0.39938578610705666
#>     Attrib V21    -0.2066612463988054
#>     Attrib V22    0.19729500534650227
#>     Attrib V23    -0.3019983676915716
#>     Attrib V24    -0.34527729083126607
#>     Attrib V25    0.1768147242550417
#>     Attrib V26    0.29842289534684907
#>     Attrib V27    0.2934910911666651
#>     Attrib V28    -0.5680959492457557
#>     Attrib V29    0.14026367779510823
#>     Attrib V3    0.26943676929175187
#>     Attrib V30    -0.23374421168245482
#>     Attrib V31    0.663165499813269
#>     Attrib V32    -0.43093128229718536
#>     Attrib V33    -0.3499834273711256
#>     Attrib V34    0.1890710261383805
#>     Attrib V35    -0.5052839340773092
#>     Attrib V36    0.45788045836995356
#>     Attrib V37    1.0208710727132797
#>     Attrib V38    0.10089764901765617
#>     Attrib V39    -0.2747557505028808
#>     Attrib V4    -0.14512852758853587
#>     Attrib V40    0.4590460838555494
#>     Attrib V41    0.28336405824392114
#>     Attrib V42    0.09288973979848016
#>     Attrib V43    -0.33004900687854305
#>     Attrib V44    -0.4625948335470668
#>     Attrib V45    -0.6818181001904021
#>     Attrib V46    -0.18610702660169726
#>     Attrib V47    0.11347096315061923
#>     Attrib V48    -0.5496374167761751
#>     Attrib V49    -0.8409844044236128
#>     Attrib V5    0.16699994183838643
#>     Attrib V50    0.876754098116962
#>     Attrib V51    -0.28062345420802515
#>     Attrib V52    -0.7877880008978032
#>     Attrib V53    -0.3147438081568826
#>     Attrib V54    -0.7926001342667602
#>     Attrib V55    0.3218979773722184
#>     Attrib V56    0.1542481181782463
#>     Attrib V57    0.6616642237793823
#>     Attrib V58    -0.46012384177935545
#>     Attrib V59    -0.07577348028312092
#>     Attrib V6    0.5086540956636041
#>     Attrib V60    0.3236874876717203
#>     Attrib V7    0.5781826998809766
#>     Attrib V8    0.5300821878006491
#>     Attrib V9    -0.4063187394341445
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.017807495283853673
#>     Attrib V1    0.271393143283375
#>     Attrib V10    -0.23169168867020595
#>     Attrib V11    0.010413658533469297
#>     Attrib V12    0.06459646232694057
#>     Attrib V13    -0.14535090150474334
#>     Attrib V14    0.005614752838129757
#>     Attrib V15    0.08127119839580083
#>     Attrib V16    0.2699199924282799
#>     Attrib V17    0.21715662715839273
#>     Attrib V18    0.15683447281794216
#>     Attrib V19    -0.032717733885314876
#>     Attrib V2    0.11184494403168482
#>     Attrib V20    0.16458600824393213
#>     Attrib V21    0.10464956514887115
#>     Attrib V22    -0.06198187847592216
#>     Attrib V23    6.30323005808565E-5
#>     Attrib V24    0.003175889668840181
#>     Attrib V25    -0.10227479263898843
#>     Attrib V26    -0.29237043100554455
#>     Attrib V27    -0.31134166156638005
#>     Attrib V28    -0.16200540063267205
#>     Attrib V29    -0.24868216375405156
#>     Attrib V3    0.05693946979797436
#>     Attrib V30    -0.04634595888408177
#>     Attrib V31    -0.26360567388556
#>     Attrib V32    0.10232921274538594
#>     Attrib V33    0.1513704514127637
#>     Attrib V34    -0.06291837934503298
#>     Attrib V35    0.10525739195714112
#>     Attrib V36    -0.1363306984239486
#>     Attrib V37    -0.3051791625687384
#>     Attrib V38    -0.0388110153632714
#>     Attrib V39    0.06228787293178557
#>     Attrib V4    0.15945688480296602
#>     Attrib V40    -0.11274457795204433
#>     Attrib V41    -0.07784339999822273
#>     Attrib V42    0.030355580837360167
#>     Attrib V43    0.08242553677706944
#>     Attrib V44    0.12188780163959859
#>     Attrib V45    0.14886807134446872
#>     Attrib V46    -0.030717056218874047
#>     Attrib V47    -0.1359914601978843
#>     Attrib V48    0.034931686199074
#>     Attrib V49    0.14975206455630682
#>     Attrib V5    0.00883467011182072
#>     Attrib V50    -0.10329282826058399
#>     Attrib V51    -0.13020461817687579
#>     Attrib V52    0.11721923794784654
#>     Attrib V53    0.2001004882317086
#>     Attrib V54    0.24427191594419495
#>     Attrib V55    0.03320929579634212
#>     Attrib V56    0.1688235907677258
#>     Attrib V57    0.02450664799315183
#>     Attrib V58    0.22471877880062638
#>     Attrib V59    0.24193939672360246
#>     Attrib V6    -0.08338434701709269
#>     Attrib V60    0.12403243279122819
#>     Attrib V7    -0.048128772933761714
#>     Attrib V8    -0.0012735344457736756
#>     Attrib V9    0.09181466406144995
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.370267304369654
#>     Attrib V1    0.632364789555299
#>     Attrib V10    -0.36287313703660196
#>     Attrib V11    0.5811317895985897
#>     Attrib V12    0.5863566848600258
#>     Attrib V13    -0.06774926003567434
#>     Attrib V14    -0.3319455631029964
#>     Attrib V15    -0.3966514113883315
#>     Attrib V16    0.017930259210523002
#>     Attrib V17    0.17634735832382134
#>     Attrib V18    -0.0014865833336757872
#>     Attrib V19    -0.39611366917625773
#>     Attrib V2    0.10030152390842739
#>     Attrib V20    0.4370722448561208
#>     Attrib V21    0.3102885375969873
#>     Attrib V22    -0.13080300858682162
#>     Attrib V23    0.4082912703575356
#>     Attrib V24    0.28540404329047847
#>     Attrib V25    -0.07519740428829276
#>     Attrib V26    -0.17058516062227447
#>     Attrib V27    -0.25806659040547775
#>     Attrib V28    0.5578546286965016
#>     Attrib V29    -0.06821836150858793
#>     Attrib V3    -0.1751254100507828
#>     Attrib V30    0.25876221287953527
#>     Attrib V31    -0.5530013609149723
#>     Attrib V32    0.4242292412674056
#>     Attrib V33    0.38862303590156205
#>     Attrib V34    -0.1802035074693457
#>     Attrib V35    0.5710406427238288
#>     Attrib V36    -0.32435285738421166
#>     Attrib V37    -0.8463804920409191
#>     Attrib V38    -0.035131580809565334
#>     Attrib V39    0.24974987673968618
#>     Attrib V4    0.1283777197822558
#>     Attrib V40    -0.3765605796281823
#>     Attrib V41    -0.25760753672801906
#>     Attrib V42    -0.02516257978545057
#>     Attrib V43    0.3464544987122356
#>     Attrib V44    0.5042016499675512
#>     Attrib V45    0.6204030890090197
#>     Attrib V46    0.15627529714177724
#>     Attrib V47    -0.034400159001881724
#>     Attrib V48    0.5630210367214092
#>     Attrib V49    0.771893735878922
#>     Attrib V5    -0.12469068966298738
#>     Attrib V50    -0.705010005748586
#>     Attrib V51    0.26530313520771237
#>     Attrib V52    0.6647318559989769
#>     Attrib V53    0.17672423960359895
#>     Attrib V54    0.7063640571556424
#>     Attrib V55    -0.32534071175635043
#>     Attrib V56    -0.08030253915072731
#>     Attrib V57    -0.6989453520516083
#>     Attrib V58    0.30290047756817606
#>     Attrib V59    0.056475325067777124
#>     Attrib V6    -0.4961687420190262
#>     Attrib V60    -0.2569294834006121
#>     Attrib V7    -0.4737056299501315
#>     Attrib V8    -0.5549578790346915
#>     Attrib V9    0.4161509369141614
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.19191413761758103
#>     Attrib V1    0.3438450761458069
#>     Attrib V10    -0.27812276056407637
#>     Attrib V11    0.23945965752037893
#>     Attrib V12    0.22322603676750868
#>     Attrib V13    -0.13092419597729132
#>     Attrib V14    -0.23169610150679057
#>     Attrib V15    -0.18156991692810556
#>     Attrib V16    0.14452630940936803
#>     Attrib V17    0.19495316202142424
#>     Attrib V18    0.015505016808732643
#>     Attrib V19    -0.23451528380206116
#>     Attrib V2    0.0670009264284736
#>     Attrib V20    0.19117441201159324
#>     Attrib V21    0.1445860282397752
#>     Attrib V22    -0.1003630470339411
#>     Attrib V23    0.12014634912524892
#>     Attrib V24    0.08962019539636677
#>     Attrib V25    -0.10356588779343293
#>     Attrib V26    -0.18211527569711267
#>     Attrib V27    -0.2508993948775513
#>     Attrib V28    0.23813781744735674
#>     Attrib V29    -0.1498304841443798
#>     Attrib V3    -0.13135991477580394
#>     Attrib V30    0.152969845835121
#>     Attrib V31    -0.43449768850072296
#>     Attrib V32    0.2568824938056494
#>     Attrib V33    0.3302364153704864
#>     Attrib V34    -0.08191597226315436
#>     Attrib V35    0.3137422512910413
#>     Attrib V36    -0.11924487095992536
#>     Attrib V37    -0.5404705477641286
#>     Attrib V38    0.03298429797820024
#>     Attrib V39    0.15544567908314358
#>     Attrib V4    0.14939970167566535
#>     Attrib V40    -0.2450026265318973
#>     Attrib V41    -0.23380724326135205
#>     Attrib V42    -0.12960922371320355
#>     Attrib V43    0.1817181010648186
#>     Attrib V44    0.3575287760742823
#>     Attrib V45    0.4124785603070248
#>     Attrib V46    0.06045677966788117
#>     Attrib V47    -0.10875271393802975
#>     Attrib V48    0.33126210911217374
#>     Attrib V49    0.4673818452640684
#>     Attrib V5    -0.10418803489646795
#>     Attrib V50    -0.450505386945467
#>     Attrib V51    -0.03938294697865228
#>     Attrib V52    0.32494577603216185
#>     Attrib V53    0.2054545272032516
#>     Attrib V54    0.46212971937186026
#>     Attrib V55    -0.1644700273415067
#>     Attrib V56    -0.040283306513709566
#>     Attrib V57    -0.2715573083614705
#>     Attrib V58    0.19902852534643728
#>     Attrib V59    0.15345382258991186
#>     Attrib V6    -0.38247295406592796
#>     Attrib V60    -0.05193249949875865
#>     Attrib V7    -0.28463050671417994
#>     Attrib V8    -0.27547387790278915
#>     Attrib V9    0.1842200049415066
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.02722191647595632
#>     Attrib V1    0.18871202923453503
#>     Attrib V10    0.6903110019404871
#>     Attrib V11    1.4769798633215894
#>     Attrib V12    1.6078791744059329
#>     Attrib V13    0.8362524094126502
#>     Attrib V14    -0.5782741876960872
#>     Attrib V15    -1.1305338403471932
#>     Attrib V16    -0.9098112587083925
#>     Attrib V17    -0.38781352913682554
#>     Attrib V18    0.2223719113482216
#>     Attrib V19    -0.23117297124560304
#>     Attrib V2    0.11892124927603283
#>     Attrib V20    0.3117032528423178
#>     Attrib V21    0.5597699734698325
#>     Attrib V22    0.11027125211599417
#>     Attrib V23    0.8447919631876432
#>     Attrib V24    0.9153982356072962
#>     Attrib V25    0.9333735509276443
#>     Attrib V26    0.8877344755338215
#>     Attrib V27    0.656807837392277
#>     Attrib V28    1.2029754712434748
#>     Attrib V29    0.3865359029471581
#>     Attrib V3    -0.2104387252161876
#>     Attrib V30    0.1615043579888961
#>     Attrib V31    -0.26338449705572026
#>     Attrib V32    0.4632407179986756
#>     Attrib V33    0.04277099176790214
#>     Attrib V34    -0.1781543574416957
#>     Attrib V35    0.6653589181858016
#>     Attrib V36    -0.23705400909687413
#>     Attrib V37    -0.46415831807374835
#>     Attrib V38    -0.25673878483690865
#>     Attrib V39    0.24351885427490066
#>     Attrib V4    0.37773205871999277
#>     Attrib V40    -0.447149061828897
#>     Attrib V41    0.158628756766763
#>     Attrib V42    -0.46120360448474995
#>     Attrib V43    0.25147273612379
#>     Attrib V44    0.4773591919589446
#>     Attrib V45    0.7310220837810784
#>     Attrib V46    0.6816493397670093
#>     Attrib V47    0.7927133247605588
#>     Attrib V48    1.2894127561277455
#>     Attrib V49    1.1550801007543767
#>     Attrib V5    0.26200474939410445
#>     Attrib V50    -0.5584129327126334
#>     Attrib V51    1.7991777600386711
#>     Attrib V52    1.1866341682006223
#>     Attrib V53    0.22194386384156417
#>     Attrib V54    0.9093286087556792
#>     Attrib V55    -0.15736978826678238
#>     Attrib V56    -0.8876016565938193
#>     Attrib V57    -0.8984868570922119
#>     Attrib V58    0.164376185123737
#>     Attrib V59    -0.27673652423417205
#>     Attrib V6    -0.1749386607435816
#>     Attrib V60    -0.4774614778513914
#>     Attrib V7    -0.6117297399379762
#>     Attrib V8    -0.4377314344791831
#>     Attrib V9    1.0504653302570446
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.2605974793030008
#>     Attrib V1    -0.3902080911703242
#>     Attrib V10    -0.6790665595434238
#>     Attrib V11    -1.3372124210838892
#>     Attrib V12    -1.2106399654497049
#>     Attrib V13    -0.5632756637703189
#>     Attrib V14    0.3587739679438523
#>     Attrib V15    0.6289767464719268
#>     Attrib V16    0.6561486415430826
#>     Attrib V17    0.45639354982625485
#>     Attrib V18    0.1488905293614172
#>     Attrib V19    0.3551265053197777
#>     Attrib V2    -0.15190955503495854
#>     Attrib V20    -0.32848290410126213
#>     Attrib V21    -0.49757343853265185
#>     Attrib V22    -0.044307074740109205
#>     Attrib V23    -0.43534081520205087
#>     Attrib V24    -0.5179477549744602
#>     Attrib V25    -0.5013611260047846
#>     Attrib V26    -0.6327353400187008
#>     Attrib V27    -0.5180328211120696
#>     Attrib V28    -1.1409636963735512
#>     Attrib V29    -0.5751537798023634
#>     Attrib V3    0.2546935262483735
#>     Attrib V30    -0.2830713298125333
#>     Attrib V31    0.3403467355344797
#>     Attrib V32    -0.4209045064382125
#>     Attrib V33    -0.046339771037659946
#>     Attrib V34    0.1833636085272297
#>     Attrib V35    -0.6191793732905625
#>     Attrib V36    0.09483709782124702
#>     Attrib V37    0.18401279539460885
#>     Attrib V38    0.07276028915823046
#>     Attrib V39    -0.23860457911742722
#>     Attrib V4    -0.2567063373129259
#>     Attrib V40    0.44867755317699404
#>     Attrib V41    0.025132579439819086
#>     Attrib V42    0.40659460750511534
#>     Attrib V43    -0.052807686213759725
#>     Attrib V44    -0.30872099927245106
#>     Attrib V45    -0.6678050926167097
#>     Attrib V46    -0.6029889541402575
#>     Attrib V47    -0.5799858400842592
#>     Attrib V48    -0.9946622576939663
#>     Attrib V49    -0.9047939120516861
#>     Attrib V5    -0.08145817623353663
#>     Attrib V50    0.5518889044537295
#>     Attrib V51    -1.4808771300683072
#>     Attrib V52    -1.0093965931776343
#>     Attrib V53    -0.0493187148467911
#>     Attrib V54    -0.8466523940982696
#>     Attrib V55    0.05755570169410838
#>     Attrib V56    0.773506690204034
#>     Attrib V57    0.6958713883251376
#>     Attrib V58    -0.24206142369807662
#>     Attrib V59    0.23691077667252086
#>     Attrib V6    0.21939152298865303
#>     Attrib V60    0.3341980849375632
#>     Attrib V7    0.4232062076621183
#>     Attrib V8    0.2634029399618363
#>     Attrib V9    -0.9285148993041625
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.05158076253503688
#>     Attrib V1    0.6976662711431132
#>     Attrib V10    -0.5736992049621068
#>     Attrib V11    0.004386929029790289
#>     Attrib V12    0.027771959453832838
#>     Attrib V13    -0.4419179461749529
#>     Attrib V14    -0.09140703627878917
#>     Attrib V15    0.17188145227899262
#>     Attrib V16    0.5840289385072492
#>     Attrib V17    0.6128333590342673
#>     Attrib V18    0.20631531467749037
#>     Attrib V19    -0.08952804787710122
#>     Attrib V2    0.17761773110964788
#>     Attrib V20    0.5055561002464195
#>     Attrib V21    0.28533424112464606
#>     Attrib V22    -0.016745273918044132
#>     Attrib V23    0.11099043538145928
#>     Attrib V24    0.005112205742986236
#>     Attrib V25    -0.3621173254891695
#>     Attrib V26    -0.779144022879774
#>     Attrib V27    -0.8900639426990272
#>     Attrib V28    -0.3189910195085792
#>     Attrib V29    -0.6974578555204954
#>     Attrib V3    -0.031615628166732544
#>     Attrib V30    -0.05975243046153534
#>     Attrib V31    -0.7250617441109664
#>     Attrib V32    0.1967855800378184
#>     Attrib V33    0.37569636532366696
#>     Attrib V34    -0.0481534530941072
#>     Attrib V35    0.3379404255019387
#>     Attrib V36    -0.2574757876711734
#>     Attrib V37    -0.9291092091320557
#>     Attrib V38    0.015437063542964535
#>     Attrib V39    0.23244815760112778
#>     Attrib V4    0.16095515213084743
#>     Attrib V40    -0.2323919029696818
#>     Attrib V41    -0.4211356153102347
#>     Attrib V42    0.05710859655665781
#>     Attrib V43    0.23877645924469762
#>     Attrib V44    0.3851546598899521
#>     Attrib V45    0.47448715076520764
#>     Attrib V46    -0.09456801487729959
#>     Attrib V47    -0.3176714553529817
#>     Attrib V48    0.19911659908965762
#>     Attrib V49    0.4710606866273756
#>     Attrib V5    -0.11029760072661707
#>     Attrib V50    -0.33974771212070526
#>     Attrib V51    -0.3110779702197133
#>     Attrib V52    0.24892812314744714
#>     Attrib V53    0.3023747133648555
#>     Attrib V54    0.7585950883792902
#>     Attrib V55    0.022294600048884273
#>     Attrib V56    0.422214989674096
#>     Attrib V57    -0.13345956979291382
#>     Attrib V58    0.5005287911321742
#>     Attrib V59    0.39575121815669023
#>     Attrib V6    -0.3734249841398778
#>     Attrib V60    0.1951343414733672
#>     Attrib V7    -0.13608311243686935
#>     Attrib V8    -0.08110955184370175
#>     Attrib V9    0.12569174185349077
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.12723033818018664
#>     Attrib V1    0.683319607216002
#>     Attrib V10    -0.6229005373506125
#>     Attrib V11    0.023863686148243423
#>     Attrib V12    -0.07787148521953627
#>     Attrib V13    -0.4136265586799242
#>     Attrib V14    -0.026130581660017096
#>     Attrib V15    0.20216674390867456
#>     Attrib V16    0.6195939979863103
#>     Attrib V17    0.562860757751241
#>     Attrib V18    0.1589086748315755
#>     Attrib V19    -0.02921733652727799
#>     Attrib V2    0.26297154078692064
#>     Attrib V20    0.44139589771535553
#>     Attrib V21    0.28061973113438327
#>     Attrib V22    0.013276148639161761
#>     Attrib V23    0.07816612812607057
#>     Attrib V24    -0.05913027264223083
#>     Attrib V25    -0.4699576284060856
#>     Attrib V26    -0.7865951206415981
#>     Attrib V27    -0.841205294781755
#>     Attrib V28    -0.34972894275973254
#>     Attrib V29    -0.612969197412465
#>     Attrib V3    -0.017276970870900705
#>     Attrib V30    -0.08317269484431672
#>     Attrib V31    -0.7346044864424542
#>     Attrib V32    0.15731623837171402
#>     Attrib V33    0.405808077148514
#>     Attrib V34    -0.05213034260531349
#>     Attrib V35    0.2764799576471503
#>     Attrib V36    -0.2714756381362864
#>     Attrib V37    -0.8788352011810338
#>     Attrib V38    -0.005287717014282126
#>     Attrib V39    0.20031345863483688
#>     Attrib V4    0.20216350280099044
#>     Attrib V40    -0.18309529737535726
#>     Attrib V41    -0.37569084935027797
#>     Attrib V42    0.025418611589217592
#>     Attrib V43    0.2605287286608454
#>     Attrib V44    0.29182004063020833
#>     Attrib V45    0.4209402902747319
#>     Attrib V46    -0.04547890641682648
#>     Attrib V47    -0.3687722691434073
#>     Attrib V48    0.17867606801464225
#>     Attrib V49    0.4217503733332981
#>     Attrib V5    -0.11909841113730311
#>     Attrib V50    -0.3762148596748047
#>     Attrib V51    -0.3807083597314041
#>     Attrib V52    0.30169824089453257
#>     Attrib V53    0.3404467021165183
#>     Attrib V54    0.722783677115093
#>     Attrib V55    0.021071156809056017
#>     Attrib V56    0.4342451245577055
#>     Attrib V57    -0.06596321682373672
#>     Attrib V58    0.5171083406295571
#>     Attrib V59    0.5003166897540582
#>     Attrib V6    -0.39133741885924506
#>     Attrib V60    0.20316213606251954
#>     Attrib V7    -0.06777775699154193
#>     Attrib V8    -0.06431978258582552
#>     Attrib V9    0.0941785027864689
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.21529150265679087
#>     Attrib V1    0.017547906479529536
#>     Attrib V10    0.003335372278182227
#>     Attrib V11    -0.011106287618755829
#>     Attrib V12    -0.00406468442047853
#>     Attrib V13    0.07394026503883287
#>     Attrib V14    0.025148539549506892
#>     Attrib V15    0.017473518309816752
#>     Attrib V16    0.012522383378800767
#>     Attrib V17    0.07301903989623638
#>     Attrib V18    0.0560541940051284
#>     Attrib V19    0.009468663851144393
#>     Attrib V2    0.06176004086820061
#>     Attrib V20    -0.006765502970904082
#>     Attrib V21    -0.020396174139023997
#>     Attrib V22    -0.05641324857963964
#>     Attrib V23    0.001084245313910978
#>     Attrib V24    -0.04476905624325323
#>     Attrib V25    -0.016980577334916116
#>     Attrib V26    -0.10092930387996069
#>     Attrib V27    -0.0321505991955757
#>     Attrib V28    -0.10204035039768615
#>     Attrib V29    -0.033914307640291526
#>     Attrib V3    0.160314471275989
#>     Attrib V30    -0.014593129143030967
#>     Attrib V31    -0.011942617294797743
#>     Attrib V32    0.0262623757085763
#>     Attrib V33    0.026226405293807736
#>     Attrib V34    0.08158692296608938
#>     Attrib V35    0.019150909715667925
#>     Attrib V36    0.046547054442208115
#>     Attrib V37    0.09756399351348058
#>     Attrib V38    0.06625392729996017
#>     Attrib V39    0.1209163289662487
#>     Attrib V4    0.11516124901072995
#>     Attrib V40    0.11276613998700882
#>     Attrib V41    0.09208202729912422
#>     Attrib V42    0.09187861907560844
#>     Attrib V43    0.035438282712917504
#>     Attrib V44    0.06911889973293034
#>     Attrib V45    0.0014782932335188302
#>     Attrib V46    0.048310270250942436
#>     Attrib V47    0.07774179239993212
#>     Attrib V48    0.004454014705310364
#>     Attrib V49    0.05543027846518346
#>     Attrib V5    0.13034834449404709
#>     Attrib V50    0.04716228945722056
#>     Attrib V51    -0.02948676490309598
#>     Attrib V52    -0.04535591449106667
#>     Attrib V53    0.031268523772429994
#>     Attrib V54    -0.045566732035689984
#>     Attrib V55    0.05419929791963249
#>     Attrib V56    0.10648661167207513
#>     Attrib V57    0.1144181709738548
#>     Attrib V58    0.04439069283838962
#>     Attrib V59    0.10979897482492908
#>     Attrib V6    0.10251282426946429
#>     Attrib V60    0.13054331551352305
#>     Attrib V7    0.09748279267920787
#>     Attrib V8    0.028893097612270217
#>     Attrib V9    0.020540969736072515
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.08046751905043564
#>     Attrib V1    0.7399308064939617
#>     Attrib V10    -0.5629272834997596
#>     Attrib V11    0.03515083287223381
#>     Attrib V12    -0.001408515608351842
#>     Attrib V13    -0.4331110289862934
#>     Attrib V14    -0.10672970514051892
#>     Attrib V15    0.2143882404794467
#>     Attrib V16    0.5591282885123903
#>     Attrib V17    0.5787055843745313
#>     Attrib V18    0.16999947036261312
#>     Attrib V19    -0.11875654800480252
#>     Attrib V2    0.20954484532141376
#>     Attrib V20    0.42982814483799625
#>     Attrib V21    0.26093321240286094
#>     Attrib V22    -0.010821298349849613
#>     Attrib V23    0.13351268688927653
#>     Attrib V24    -0.01997024293435542
#>     Attrib V25    -0.3882847491187193
#>     Attrib V26    -0.7214170775954402
#>     Attrib V27    -0.9033439650771673
#>     Attrib V28    -0.38938113135763264
#>     Attrib V29    -0.7424399819570562
#>     Attrib V3    -0.051918845695001
#>     Attrib V30    -0.05494016833263687
#>     Attrib V31    -0.6640662323674302
#>     Attrib V32    0.19783209890528236
#>     Attrib V33    0.407258662113014
#>     Attrib V34    -0.09392420203769646
#>     Attrib V35    0.3336617516374689
#>     Attrib V36    -0.2879741131846984
#>     Attrib V37    -0.8855955073796723
#>     Attrib V38    -0.06112984648724428
#>     Attrib V39    0.23344261440066288
#>     Attrib V4    0.14898651677569147
#>     Attrib V40    -0.2113429095429381
#>     Attrib V41    -0.3956028665399939
#>     Attrib V42    0.01320890614470124
#>     Attrib V43    0.21341425974092715
#>     Attrib V44    0.3781700950353899
#>     Attrib V45    0.3658053943481225
#>     Attrib V46    -0.05986965205820088
#>     Attrib V47    -0.3545336911458635
#>     Attrib V48    0.20176145975510634
#>     Attrib V49    0.5023770662068573
#>     Attrib V5    -0.17913078910616406
#>     Attrib V50    -0.3588597054064883
#>     Attrib V51    -0.37908149948272224
#>     Attrib V52    0.271049216569209
#>     Attrib V53    0.2796145669596484
#>     Attrib V54    0.7656720145249186
#>     Attrib V55    0.04730747485275265
#>     Attrib V56    0.43223398402361807
#>     Attrib V57    -0.13344277893994957
#>     Attrib V58    0.5118350575400978
#>     Attrib V59    0.44079902835430546
#>     Attrib V6    -0.3946965330316061
#>     Attrib V60    0.24472502657932593
#>     Attrib V7    -0.08323377599291998
#>     Attrib V8    -0.12670807224468522
#>     Attrib V9    0.11131840538535398
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.28350542353992847
#>     Attrib V1    -0.39132132463284636
#>     Attrib V10    0.22792103091147192
#>     Attrib V11    -0.406422006596332
#>     Attrib V12    -0.3556429315029302
#>     Attrib V13    0.08212124823411544
#>     Attrib V14    0.1895521545903804
#>     Attrib V15    0.26381919449792984
#>     Attrib V16    0.038326298529845475
#>     Attrib V17    -0.04526085814138266
#>     Attrib V18    0.07726312157427252
#>     Attrib V19    0.40105221765322446
#>     Attrib V2    -0.0362729967248857
#>     Attrib V20    -0.18042775157922444
#>     Attrib V21    -0.15389818432733532
#>     Attrib V22    0.1570496447108053
#>     Attrib V23    -0.20118493216953676
#>     Attrib V24    -0.1556147946494434
#>     Attrib V25    0.1257991705770735
#>     Attrib V26    0.29353028866183833
#>     Attrib V27    0.20676658186987065
#>     Attrib V28    -0.31507867784422844
#>     Attrib V29    0.0991335976528392
#>     Attrib V3    0.20236103455041105
#>     Attrib V30    -0.201096612328281
#>     Attrib V31    0.41637150777768234
#>     Attrib V32    -0.30877958955582335
#>     Attrib V33    -0.2749516551927279
#>     Attrib V34    0.17872130561812263
#>     Attrib V35    -0.3215247970840615
#>     Attrib V36    0.2881494036663536
#>     Attrib V37    0.7334304430388221
#>     Attrib V38    0.11557575517507616
#>     Attrib V39    -0.1285317307331854
#>     Attrib V4    -0.06362020218919366
#>     Attrib V40    0.28718789501636016
#>     Attrib V41    0.17109459403165478
#>     Attrib V42    0.017964740571726215
#>     Attrib V43    -0.25447337971316125
#>     Attrib V44    -0.349884607506573
#>     Attrib V45    -0.3828342823403851
#>     Attrib V46    -0.057140423128215816
#>     Attrib V47    0.08508221330784911
#>     Attrib V48    -0.36490504006478236
#>     Attrib V49    -0.5410319347055501
#>     Attrib V5    0.13685219059868692
#>     Attrib V50    0.5793440346610563
#>     Attrib V51    -0.15143562292195648
#>     Attrib V52    -0.5608788517899947
#>     Attrib V53    -0.15007213481304502
#>     Attrib V54    -0.5731821330697289
#>     Attrib V55    0.1631231297660337
#>     Attrib V56    0.12520721429495554
#>     Attrib V57    0.399407767454305
#>     Attrib V58    -0.33885146081341444
#>     Attrib V59    -0.10612439970584849
#>     Attrib V6    0.3300675145673716
#>     Attrib V60    0.15995802555463876
#>     Attrib V7    0.3175155057430143
#>     Attrib V8    0.2966021449444514
#>     Attrib V9    -0.2568601947988859
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.12971490712207975
#>     Attrib V1    0.1740069125421011
#>     Attrib V10    -0.09192587009382468
#>     Attrib V11    0.020140853150406292
#>     Attrib V12    0.033834500935505524
#>     Attrib V13    -0.03535510909283543
#>     Attrib V14    -0.010240269382505388
#>     Attrib V15    0.05020848250432331
#>     Attrib V16    0.1956192851457109
#>     Attrib V17    0.1980964635983809
#>     Attrib V18    0.12839892485628335
#>     Attrib V19    0.010468070366828813
#>     Attrib V2    0.05233078701623368
#>     Attrib V20    0.06324456027378961
#>     Attrib V21    0.005346835703231438
#>     Attrib V22    -0.07914212052097201
#>     Attrib V23    -0.06333005890347687
#>     Attrib V24    -0.02112321856884001
#>     Attrib V25    -0.09085950194871938
#>     Attrib V26    -0.22268907131290958
#>     Attrib V27    -0.23856535847431726
#>     Attrib V28    -0.08379119997850401
#>     Attrib V29    -0.1662162085944292
#>     Attrib V3    0.08410536501067528
#>     Attrib V30    -0.08910319590181986
#>     Attrib V31    -0.202383274817426
#>     Attrib V32    0.053033242931917156
#>     Attrib V33    0.05362071657197538
#>     Attrib V34    -0.0030548717033865086
#>     Attrib V35    0.06110261219182309
#>     Attrib V36    -0.07004533410660486
#>     Attrib V37    -0.14645868727245517
#>     Attrib V38    0.010582183407774953
#>     Attrib V39    0.07787058857164558
#>     Attrib V4    0.13311617253860936
#>     Attrib V40    -0.07735512659455557
#>     Attrib V41    -0.07295652526678525
#>     Attrib V42    0.019518172525874945
#>     Attrib V43    0.040933135094278005
#>     Attrib V44    0.061930505335066055
#>     Attrib V45    0.11534412115873215
#>     Attrib V46    6.271546411964134E-4
#>     Attrib V47    -0.05941253732206948
#>     Attrib V48    0.04775914441116219
#>     Attrib V49    0.10232750536181028
#>     Attrib V5    0.038376983388578464
#>     Attrib V50    -0.015912925537176943
#>     Attrib V51    -0.0383688941463781
#>     Attrib V52    0.12115082403477488
#>     Attrib V53    0.1684149369690867
#>     Attrib V54    0.14753422505717384
#>     Attrib V55    0.0910346344674284
#>     Attrib V56    0.13606837622304194
#>     Attrib V57    0.061540357596664284
#>     Attrib V58    0.20221608733083862
#>     Attrib V59    0.11165485962253931
#>     Attrib V6    -0.04328743736245672
#>     Attrib V60    0.11215783419168461
#>     Attrib V7    -0.03791694753124207
#>     Attrib V8    -0.047886831322881636
#>     Attrib V9    0.08217838031170999
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.14672665907564045
#>     Attrib V1    -0.07624654006611539
#>     Attrib V10    0.11650819156149342
#>     Attrib V11    -0.05459145946339513
#>     Attrib V12    -0.08948405248410261
#>     Attrib V13    0.012864082100318605
#>     Attrib V14    -0.004125823283339453
#>     Attrib V15    0.09368364477129362
#>     Attrib V16    0.02056751844365903
#>     Attrib V17    0.03886644081471991
#>     Attrib V18    0.06447177096923867
#>     Attrib V19    0.06762407384477409
#>     Attrib V2    0.10842184505798824
#>     Attrib V20    -0.16433946157717194
#>     Attrib V21    -0.10468454107905965
#>     Attrib V22    0.08532476382150152
#>     Attrib V23    -0.049746213965287264
#>     Attrib V24    -0.059075942556098236
#>     Attrib V25    -0.05749267048170113
#>     Attrib V26    -0.041404183859307615
#>     Attrib V27    -0.018933030034103585
#>     Attrib V28    -0.1266860200340217
#>     Attrib V29    -0.057613740022438936
#>     Attrib V3    0.11957338623511261
#>     Attrib V30    0.012933045473290878
#>     Attrib V31    0.22766246999972453
#>     Attrib V32    -0.005286128762502943
#>     Attrib V33    0.09141659869408338
#>     Attrib V34    0.08625968344860495
#>     Attrib V35    0.05215818480204273
#>     Attrib V36    0.15319712627696322
#>     Attrib V37    0.24203817838831482
#>     Attrib V38    0.15185964221218617
#>     Attrib V39    0.0894327333476247
#>     Attrib V4    0.06920971830196893
#>     Attrib V40    0.19718419652299632
#>     Attrib V41    0.2598382522639207
#>     Attrib V42    0.16537975682943193
#>     Attrib V43    0.13537081339226886
#>     Attrib V44    0.07743462238762813
#>     Attrib V45    -0.02136771215115221
#>     Attrib V46    -0.014671293603118212
#>     Attrib V47    0.03323594048305893
#>     Attrib V48    -0.024216821678629874
#>     Attrib V49    -0.11346074604921107
#>     Attrib V5    0.14323715580068463
#>     Attrib V50    0.17389425979018944
#>     Attrib V51    0.003993359554262007
#>     Attrib V52    -0.15776922879206665
#>     Attrib V53    -0.04921197846165936
#>     Attrib V54    -0.15125488306753138
#>     Attrib V55    0.07099115871857636
#>     Attrib V56    0.15393900891217493
#>     Attrib V57    0.22314027057683233
#>     Attrib V58    -0.04860460845505255
#>     Attrib V59    0.007230639125915056
#>     Attrib V6    0.21501435028837793
#>     Attrib V60    0.1009044049397485
#>     Attrib V7    0.12891670079217576
#>     Attrib V8    0.18166341673666558
#>     Attrib V9    -0.012529878008098462
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.23376083261676897
#>     Attrib V1    -0.10537369658523488
#>     Attrib V10    0.07111203690203802
#>     Attrib V11    -0.10683784772860869
#>     Attrib V12    -0.11494441526151879
#>     Attrib V13    0.022959433525613884
#>     Attrib V14    0.02069333921912884
#>     Attrib V15    0.008581788342633137
#>     Attrib V16    0.015228064189832777
#>     Attrib V17    -0.003910747816341731
#>     Attrib V18    0.10817501146278334
#>     Attrib V19    0.010586682619048783
#>     Attrib V2    0.06076004920830412
#>     Attrib V20    -0.11821919871302802
#>     Attrib V21    -0.05321523225048124
#>     Attrib V22    0.02058373700656075
#>     Attrib V23    -0.03773539819676724
#>     Attrib V24    -0.10500340942571425
#>     Attrib V25    -0.009566361681898576
#>     Attrib V26    0.012843822319470394
#>     Attrib V27    -0.004286788152998838
#>     Attrib V28    -0.1445243192861259
#>     Attrib V29    -0.04288501360244211
#>     Attrib V3    0.1720016232160772
#>     Attrib V30    -0.07417245290302799
#>     Attrib V31    0.13765295818874265
#>     Attrib V32    -0.005845555789529452
#>     Attrib V33    0.031154740671465404
#>     Attrib V34    0.12096357057193395
#>     Attrib V35    -0.03137759927671913
#>     Attrib V36    0.22541155376915345
#>     Attrib V37    0.24909720494368023
#>     Attrib V38    0.07586498999517881
#>     Attrib V39    0.0741710812800318
#>     Attrib V4    0.03231416744298149
#>     Attrib V40    0.17497189588107817
#>     Attrib V41    0.1581140794055863
#>     Attrib V42    0.14479142286223806
#>     Attrib V43    0.05960603801178646
#>     Attrib V44    0.05882392862899071
#>     Attrib V45    -0.1193609311269068
#>     Attrib V46    -0.029102035418744322
#>     Attrib V47    0.09104587459542964
#>     Attrib V48    -0.0690812779923693
#>     Attrib V49    -0.07155215859044732
#>     Attrib V5    0.12885633936779928
#>     Attrib V50    0.12543758622667378
#>     Attrib V51    0.03720331416079712
#>     Attrib V52    -0.14365033329097943
#>     Attrib V53    -0.018250036833014523
#>     Attrib V54    -0.17048361814059523
#>     Attrib V55    0.07518538715514199
#>     Attrib V56    0.1493960187020772
#>     Attrib V57    0.1363571966824474
#>     Attrib V58    -0.02093115057820845
#>     Attrib V59    0.06032213688019902
#>     Attrib V6    0.14847404473959958
#>     Attrib V60    0.12789481155686377
#>     Attrib V7    0.1698154853802886
#>     Attrib V8    0.16503293481526538
#>     Attrib V9    -0.029373658863562233
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.4397672816739743
#>     Attrib V1    0.6325178464526311
#>     Attrib V10    -0.4952272311407724
#>     Attrib V11    0.593009218779915
#>     Attrib V12    0.8818047487577589
#>     Attrib V13    0.02911388485784725
#>     Attrib V14    -0.348566956481962
#>     Attrib V15    -0.4451807735586139
#>     Attrib V16    -0.08855624960907461
#>     Attrib V17    0.23152532390662375
#>     Attrib V18    0.03678721908890244
#>     Attrib V19    -0.45835431035078633
#>     Attrib V2    0.078617323453783
#>     Attrib V20    0.43315858678421243
#>     Attrib V21    0.2627533279625245
#>     Attrib V22    -0.14796230941152463
#>     Attrib V23    0.4703517165801851
#>     Attrib V24    0.4354507808307508
#>     Attrib V25    0.03911767385842743
#>     Attrib V26    -0.2504704018408127
#>     Attrib V27    -0.32090915183936775
#>     Attrib V28    0.7053963383317297
#>     Attrib V29    -0.09098880852472616
#>     Attrib V3    -0.2675311631273183
#>     Attrib V30    0.3194544375060502
#>     Attrib V31    -0.6563896046060705
#>     Attrib V32    0.490680165275317
#>     Attrib V33    0.4264522654992744
#>     Attrib V34    -0.2524438877876198
#>     Attrib V35    0.7212993577395654
#>     Attrib V36    -0.413530442696508
#>     Attrib V37    -1.1513775726193136
#>     Attrib V38    -0.12693520088419644
#>     Attrib V39    0.3030677032091518
#>     Attrib V4    0.22742801540864185
#>     Attrib V40    -0.4333831957285651
#>     Attrib V41    -0.28397182729232534
#>     Attrib V42    -0.021021354660373772
#>     Attrib V43    0.39776374435224615
#>     Attrib V44    0.5503513977978757
#>     Attrib V45    0.7598455035651378
#>     Attrib V46    0.17139998408962806
#>     Attrib V47    -0.08091094432926502
#>     Attrib V48    0.6870498924816961
#>     Attrib V49    1.0055151007756462
#>     Attrib V5    -0.08027942333275036
#>     Attrib V50    -0.9418813582432947
#>     Attrib V51    0.4229970325483245
#>     Attrib V52    0.8884004623812708
#>     Attrib V53    0.3604336604993865
#>     Attrib V54    0.8808256362370095
#>     Attrib V55    -0.3721020570951646
#>     Attrib V56    -0.16700204193770943
#>     Attrib V57    -0.8730369675863219
#>     Attrib V58    0.41582706144454495
#>     Attrib V59    0.07387498855057524
#>     Attrib V6    -0.5259604289920274
#>     Attrib V60    -0.4049487916937004
#>     Attrib V7    -0.5654835054423806
#>     Attrib V8    -0.6968859707045972
#>     Attrib V9    0.3760776687061307
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.06792558184909739
#>     Attrib V1    0.8601056981940849
#>     Attrib V10    -0.5734998881611183
#>     Attrib V11    -0.007272102663420827
#>     Attrib V12    0.0296975763850659
#>     Attrib V13    -0.402014905217854
#>     Attrib V14    -0.054519744382041116
#>     Attrib V15    0.1989404957780976
#>     Attrib V16    0.5559926299521053
#>     Attrib V17    0.5851009667467129
#>     Attrib V18    0.22300959699978176
#>     Attrib V19    -0.0032667129367060558
#>     Attrib V2    0.25277755244098876
#>     Attrib V20    0.5882107399970427
#>     Attrib V21    0.45108355031878933
#>     Attrib V22    0.12851062977041486
#>     Attrib V23    0.2186102204077673
#>     Attrib V24    0.05361668650414621
#>     Attrib V25    -0.4040440881192864
#>     Attrib V26    -0.7542015772872788
#>     Attrib V27    -0.8806529549418978
#>     Attrib V28    -0.3523001956726673
#>     Attrib V29    -0.6475073019021029
#>     Attrib V3    -0.008002704263151137
#>     Attrib V30    -0.027137197629644266
#>     Attrib V31    -0.7082680829708224
#>     Attrib V32    0.17811723187167855
#>     Attrib V33    0.3521635362924161
#>     Attrib V34    -0.16117275584475238
#>     Attrib V35    0.33331177961592895
#>     Attrib V36    -0.20395569334699026
#>     Attrib V37    -0.8901655617508861
#>     Attrib V38    0.029180810907255078
#>     Attrib V39    0.2571627124962682
#>     Attrib V4    0.1814515955488873
#>     Attrib V40    -0.22691275788919618
#>     Attrib V41    -0.38290910997669614
#>     Attrib V42    0.04639747721406439
#>     Attrib V43    0.3039682738669569
#>     Attrib V44    0.42093513498434265
#>     Attrib V45    0.43724756196438364
#>     Attrib V46    -0.1173132440868958
#>     Attrib V47    -0.3844685288106001
#>     Attrib V48    0.20641744153973401
#>     Attrib V49    0.5180126440892621
#>     Attrib V5    -0.10370701779070386
#>     Attrib V50    -0.36171157603510967
#>     Attrib V51    -0.2906472582761447
#>     Attrib V52    0.2968673720956476
#>     Attrib V53    0.2840086451748323
#>     Attrib V54    0.8174911783195644
#>     Attrib V55    0.02795708999674955
#>     Attrib V56    0.46024061727187277
#>     Attrib V57    -0.22836074849571356
#>     Attrib V58    0.5237474419701117
#>     Attrib V59    0.47646171268913234
#>     Attrib V6    -0.4047742112711156
#>     Attrib V60    0.24017468978114725
#>     Attrib V7    -0.039492185320640916
#>     Attrib V8    -0.196857394899465
#>     Attrib V9    0.13677408688000947
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.3458916997479403
#>     Attrib V1    -0.6329183124124707
#>     Attrib V10    0.26957530776923583
#>     Attrib V11    -0.5522868394521488
#>     Attrib V12    -0.6044189192873283
#>     Attrib V13    0.10308745506048694
#>     Attrib V14    0.2084446535666453
#>     Attrib V15    0.18756073650487115
#>     Attrib V16    0.1318991268042978
#>     Attrib V17    0.18543530246029855
#>     Attrib V18    0.4496503128618315
#>     Attrib V19    0.441246767444188
#>     Attrib V2    -0.07386576352680042
#>     Attrib V20    -0.5080413019115195
#>     Attrib V21    -0.254395179931925
#>     Attrib V22    0.20981093164157585
#>     Attrib V23    -0.37033126779604864
#>     Attrib V24    -0.41527731614100244
#>     Attrib V25    0.14108772649803275
#>     Attrib V26    0.3380300358986182
#>     Attrib V27    0.2788649240866918
#>     Attrib V28    -0.4142524383360376
#>     Attrib V29    0.2021507445675469
#>     Attrib V3    0.13824254819630724
#>     Attrib V30    0.025898150539095107
#>     Attrib V31    0.8964220036109055
#>     Attrib V32    -0.1120645388153326
#>     Attrib V33    -0.057405681983358284
#>     Attrib V34    0.2307798499498683
#>     Attrib V35    -0.474886942142341
#>     Attrib V36    0.549505203217619
#>     Attrib V37    1.1335410789655471
#>     Attrib V38    0.11720129307452738
#>     Attrib V39    -0.2513267298722284
#>     Attrib V4    -0.017237713396083303
#>     Attrib V40    0.5223845799818879
#>     Attrib V41    0.4394013404359976
#>     Attrib V42    0.08200909300857029
#>     Attrib V43    -0.2672443494768625
#>     Attrib V44    -0.3509545657477936
#>     Attrib V45    -0.5948189146006502
#>     Attrib V46    -0.20498456424559405
#>     Attrib V47    0.05814392036388973
#>     Attrib V48    -0.34528295475914705
#>     Attrib V49    -0.6570996907025126
#>     Attrib V5    0.13701736624961888
#>     Attrib V50    0.7777831419278806
#>     Attrib V51    -0.16481143880339974
#>     Attrib V52    -0.7148499406385131
#>     Attrib V53    -0.34534029325966464
#>     Attrib V54    -0.6402661151995981
#>     Attrib V55    0.14780243447471572
#>     Attrib V56    0.11268443191727164
#>     Attrib V57    0.6985057129536901
#>     Attrib V58    -0.40753682749723563
#>     Attrib V59    -0.07479743219653104
#>     Attrib V6    0.5074164837098142
#>     Attrib V60    0.3399518432889512
#>     Attrib V7    0.5934951167630839
#>     Attrib V8    0.5034412051901372
#>     Attrib V9    -0.24772727590777058
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.03286926495911357
#>     Attrib V1    0.41785600686046764
#>     Attrib V10    -0.32266265383439807
#>     Attrib V11    -0.021298423016099736
#>     Attrib V12    -0.03380707950763338
#>     Attrib V13    -0.25419664983716267
#>     Attrib V14    0.016240847663871846
#>     Attrib V15    0.12082123893006351
#>     Attrib V16    0.4334969713686869
#>     Attrib V17    0.3935200308310304
#>     Attrib V18    0.1550790937041784
#>     Attrib V19    -0.050073521614489455
#>     Attrib V2    0.1552039163898724
#>     Attrib V20    0.2557991274017259
#>     Attrib V21    0.11754700272196704
#>     Attrib V22    -0.05704569784806097
#>     Attrib V23    -0.040078921390293246
#>     Attrib V24    -0.032054399065315896
#>     Attrib V25    -0.28181072157234494
#>     Attrib V26    -0.5009836527494257
#>     Attrib V27    -0.5745569180414153
#>     Attrib V28    -0.32503424860353103
#>     Attrib V29    -0.40673846921907114
#>     Attrib V3    0.01433755365233844
#>     Attrib V30    -0.09730958008310764
#>     Attrib V31    -0.36755018012214885
#>     Attrib V32    0.08500754597450236
#>     Attrib V33    0.18494357069605755
#>     Attrib V34    -0.05896593727063164
#>     Attrib V35    0.15252216127984766
#>     Attrib V36    -0.136171253403284
#>     Attrib V37    -0.4636385057134212
#>     Attrib V38    -0.05027165434377686
#>     Attrib V39    0.09121573409967731
#>     Attrib V4    0.14651553866188136
#>     Attrib V40    -0.08652622099432299
#>     Attrib V41    -0.23882663952667527
#>     Attrib V42    -0.019024438792890435
#>     Attrib V43    0.1591042095845482
#>     Attrib V44    0.17079064048510628
#>     Attrib V45    0.14830921250304102
#>     Attrib V46    -0.052970106280529665
#>     Attrib V47    -0.2569767678164517
#>     Attrib V48    0.09625709641828392
#>     Attrib V49    0.24991681113136793
#>     Attrib V5    -0.02327406348600056
#>     Attrib V50    -0.18608318850493036
#>     Attrib V51    -0.2617311144668029
#>     Attrib V52    0.1663106108673956
#>     Attrib V53    0.20119694098666957
#>     Attrib V54    0.43418281089905125
#>     Attrib V55    0.07414868000880893
#>     Attrib V56    0.30270086906683935
#>     Attrib V57    0.016562755110042182
#>     Attrib V58    0.3490030705276938
#>     Attrib V59    0.29484029816423996
#>     Attrib V6    -0.1614730668086158
#>     Attrib V60    0.18893622802722188
#>     Attrib V7    -0.03695097594443599
#>     Attrib V8    -0.09810100808195586
#>     Attrib V9    0.062209227865144524
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.002883958616739433
#>     Attrib V1    0.4769879453388401
#>     Attrib V10    -0.4600068879060068
#>     Attrib V11    -0.01670433652447848
#>     Attrib V12    -0.0061390034034635955
#>     Attrib V13    -0.2682370090627993
#>     Attrib V14    -0.0033852892088260364
#>     Attrib V15    0.1715329694374963
#>     Attrib V16    0.42083351931263635
#>     Attrib V17    0.49214749573598676
#>     Attrib V18    0.18924384440990397
#>     Attrib V19    -0.025092159969830947
#>     Attrib V2    0.12551510920392336
#>     Attrib V20    0.2779408726703427
#>     Attrib V21    0.13998956854563108
#>     Attrib V22    -0.016749801036695412
#>     Attrib V23    0.038639132842906966
#>     Attrib V24    -0.08154730803628067
#>     Attrib V25    -0.30324680104289103
#>     Attrib V26    -0.5204730998193566
#>     Attrib V27    -0.6695225203925803
#>     Attrib V28    -0.342750411798209
#>     Attrib V29    -0.5264127211366574
#>     Attrib V3    0.07150161205013354
#>     Attrib V30    -0.09284664337463971
#>     Attrib V31    -0.4807300052061866
#>     Attrib V32    0.09800700278649943
#>     Attrib V33    0.2442161271474209
#>     Attrib V34    -0.07797550196563721
#>     Attrib V35    0.22770609357122498
#>     Attrib V36    -0.15131506894327923
#>     Attrib V37    -0.5280445094889169
#>     Attrib V38    -0.03895904735114181
#>     Attrib V39    0.13504921415987783
#>     Attrib V4    0.20027654382528387
#>     Attrib V40    -0.16569184366074138
#>     Attrib V41    -0.25888667683055977
#>     Attrib V42    -0.014513083409323859
#>     Attrib V43    0.17543560819927065
#>     Attrib V44    0.2105433346945865
#>     Attrib V45    0.27064257602146113
#>     Attrib V46    -0.08495146675594213
#>     Attrib V47    -0.22804028848546698
#>     Attrib V48    0.04210524560524383
#>     Attrib V49    0.28983594243732047
#>     Attrib V5    -0.0560215315902855
#>     Attrib V50    -0.2491017195832625
#>     Attrib V51    -0.33880137944598054
#>     Attrib V52    0.21551012189942995
#>     Attrib V53    0.26422643740324636
#>     Attrib V54    0.4861033175986088
#>     Attrib V55    0.07745401090904812
#>     Attrib V56    0.3632364066038011
#>     Attrib V57    -0.038649929030218834
#>     Attrib V58    0.35655498736695895
#>     Attrib V59    0.3880039175979764
#>     Attrib V6    -0.2144546501826688
#>     Attrib V60    0.16269720208913827
#>     Attrib V7    -0.049517136772603325
#>     Attrib V8    -0.07288585165680628
#>     Attrib V9    0.04600363484509985
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.22844385308709486
#>     Attrib V1    -0.3342519933793672
#>     Attrib V10    0.16735891124349875
#>     Attrib V11    -0.34131873007894065
#>     Attrib V12    -0.3518100006016514
#>     Attrib V13    0.04789499429596613
#>     Attrib V14    0.17290521674458692
#>     Attrib V15    0.22253935776545633
#>     Attrib V16    -0.0011638737211883987
#>     Attrib V17    0.010389899851767288
#>     Attrib V18    0.08059325641928462
#>     Attrib V19    0.3044937491003892
#>     Attrib V2    -0.023927142512161905
#>     Attrib V20    -0.1594880843375742
#>     Attrib V21    -0.09915410197227637
#>     Attrib V22    0.09150953492449869
#>     Attrib V23    -0.12398885112296484
#>     Attrib V24    -0.16287380236704063
#>     Attrib V25    0.11336962809098883
#>     Attrib V26    0.23086773810000857
#>     Attrib V27    0.16068204811568082
#>     Attrib V28    -0.2674725959760614
#>     Attrib V29    0.06328664765528742
#>     Attrib V3    0.14937514020588805
#>     Attrib V30    -0.16672581565468014
#>     Attrib V31    0.33041906212862776
#>     Attrib V32    -0.23229099131639724
#>     Attrib V33    -0.261425128944502
#>     Attrib V34    0.1047350091854295
#>     Attrib V35    -0.2953431215507312
#>     Attrib V36    0.26744999396772845
#>     Attrib V37    0.5575587557865872
#>     Attrib V38    0.09187503348947612
#>     Attrib V39    -0.1289133563792726
#>     Attrib V4    -0.023728334678784633
#>     Attrib V40    0.2881572009386668
#>     Attrib V41    0.19008839439927463
#>     Attrib V42    0.026986302953957146
#>     Attrib V43    -0.1380672946957392
#>     Attrib V44    -0.2907168249409264
#>     Attrib V45    -0.4139906253565897
#>     Attrib V46    -0.08253083534281523
#>     Attrib V47    0.09661985310769004
#>     Attrib V48    -0.3393190304931722
#>     Attrib V49    -0.5099334345656003
#>     Attrib V5    0.07103563999957155
#>     Attrib V50    0.5026665652484273
#>     Attrib V51    -0.1473243208436258
#>     Attrib V52    -0.4164589383154491
#>     Attrib V53    -0.20351206198012511
#>     Attrib V54    -0.511662516430631
#>     Attrib V55    0.14693438337029785
#>     Attrib V56    0.11705755108572528
#>     Attrib V57    0.4321437233949357
#>     Attrib V58    -0.26708146482904044
#>     Attrib V59    -0.08329707885093808
#>     Attrib V6    0.31430500190518623
#>     Attrib V60    0.11635956541219158
#>     Attrib V7    0.28158447484922144
#>     Attrib V8    0.2789050785410353
#>     Attrib V9    -0.16864413428167935
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    -0.03454982883312144
#>     Attrib V1    -0.04498719843065698
#>     Attrib V10    0.6365744896490946
#>     Attrib V11    1.601190391711016
#>     Attrib V12    1.9095168126316173
#>     Attrib V13    0.9650839940521267
#>     Attrib V14    -0.6643378371645097
#>     Attrib V15    -1.5209377569903904
#>     Attrib V16    -1.2398354285474797
#>     Attrib V17    -0.36114063464906104
#>     Attrib V18    0.41718298997877573
#>     Attrib V19    -0.041256467847963794
#>     Attrib V2    0.07549293316372459
#>     Attrib V20    0.3708191029240246
#>     Attrib V21    0.4979763852134903
#>     Attrib V22    0.1829282700434604
#>     Attrib V23    1.1754757559082296
#>     Attrib V24    1.1675936090734995
#>     Attrib V25    1.0805113693827186
#>     Attrib V26    1.0122809193393962
#>     Attrib V27    0.8751962005446632
#>     Attrib V28    1.3340022718980107
#>     Attrib V29    0.3852953890310857
#>     Attrib V3    -0.03324653041151546
#>     Attrib V30    0.10488305969430024
#>     Attrib V31    -0.1947716962629382
#>     Attrib V32    0.47748983730092787
#>     Attrib V33    -0.0913584849791903
#>     Attrib V34    -0.16822799778636663
#>     Attrib V35    0.7279181948357386
#>     Attrib V36    -0.3722642890785579
#>     Attrib V37    -0.62864915000294
#>     Attrib V38    -0.35080631597007106
#>     Attrib V39    0.29852425116382236
#>     Attrib V4    0.5187982738380996
#>     Attrib V40    -0.4528111275435528
#>     Attrib V41    0.3425876240706508
#>     Attrib V42    -0.4091251047240262
#>     Attrib V43    0.3037968346250929
#>     Attrib V44    0.6713289624005863
#>     Attrib V45    0.7865760860038857
#>     Attrib V46    0.7382350210218489
#>     Attrib V47    0.8579354404899149
#>     Attrib V48    1.501655728179577
#>     Attrib V49    1.4223024906250696
#>     Attrib V5    0.5655872848120564
#>     Attrib V50    -0.5447044078047549
#>     Attrib V51    2.084532817617908
#>     Attrib V52    1.4419431942222136
#>     Attrib V53    0.267173439054675
#>     Attrib V54    0.9332790136895985
#>     Attrib V55    -0.2809457676656675
#>     Attrib V56    -1.0114823925874232
#>     Attrib V57    -0.8682807250466479
#>     Attrib V58    0.20488771536585118
#>     Attrib V59    -0.2884109888272631
#>     Attrib V6    -0.061570643521093885
#>     Attrib V60    -0.5877936364374464
#>     Attrib V7    -0.837703801335486
#>     Attrib V8    -0.7430978798018161
#>     Attrib V9    1.1553415783796477
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.3827961726634352
#>     Attrib V1    -0.5197474019633381
#>     Attrib V10    0.29637216028725
#>     Attrib V11    -0.5246374877833828
#>     Attrib V12    -0.5370500243859245
#>     Attrib V13    0.07985074683505389
#>     Attrib V14    0.30253023047068067
#>     Attrib V15    0.2534897822460634
#>     Attrib V16    0.028284921758598057
#>     Attrib V17    -0.03224209310188781
#>     Attrib V18    0.10458384841945521
#>     Attrib V19    0.494945979692029
#>     Attrib V2    -0.027042167012623488
#>     Attrib V20    -0.27620749187531973
#>     Attrib V21    -0.1735611081840102
#>     Attrib V22    0.16514347185844316
#>     Attrib V23    -0.269997258852634
#>     Attrib V24    -0.24979436160609111
#>     Attrib V25    0.15875091616899742
#>     Attrib V26    0.2622865789767044
#>     Attrib V27    0.31314709551187886
#>     Attrib V28    -0.40180444853280856
#>     Attrib V29    0.10952232701250071
#>     Attrib V3    0.18514104240367607
#>     Attrib V30    -0.2249300483700962
#>     Attrib V31    0.5316913963260504
#>     Attrib V32    -0.4087387387696484
#>     Attrib V33    -0.2810608716429363
#>     Attrib V34    0.15697508851122674
#>     Attrib V35    -0.41479705449007914
#>     Attrib V36    0.3785910920957829
#>     Attrib V37    0.9081789634627118
#>     Attrib V38    0.10484123577720976
#>     Attrib V39    -0.18942877799563654
#>     Attrib V4    -0.062105026490233334
#>     Attrib V40    0.3826231779169312
#>     Attrib V41    0.25558783600320595
#>     Attrib V42    0.08134525565670322
#>     Attrib V43    -0.29021905598006764
#>     Attrib V44    -0.4178899395798234
#>     Attrib V45    -0.5440735621070614
#>     Attrib V46    -0.12832910242006346
#>     Attrib V47    0.06885006599163604
#>     Attrib V48    -0.4450414842437813
#>     Attrib V49    -0.7166997847001487
#>     Attrib V5    0.10972466471283147
#>     Attrib V50    0.7224573320097988
#>     Attrib V51    -0.2552999997959308
#>     Attrib V52    -0.6863081425630437
#>     Attrib V53    -0.26658753158615056
#>     Attrib V54    -0.716400639100736
#>     Attrib V55    0.2023567959242011
#>     Attrib V56    0.11981234784279322
#>     Attrib V57    0.6026753527007706
#>     Attrib V58    -0.39008080306553045
#>     Attrib V59    -0.09792335422837387
#>     Attrib V6    0.46982921079721457
#>     Attrib V60    0.2980096021210939
#>     Attrib V7    0.4579792079331657
#>     Attrib V8    0.4484828983792916
#>     Attrib V9    -0.31339723515251117
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.1856853995492687
#>     Attrib V1    0.8738776813962895
#>     Attrib V10    -0.3343486324059326
#>     Attrib V11    0.44298193721064466
#>     Attrib V12    0.45929762450580136
#>     Attrib V13    -0.11830612767058188
#>     Attrib V14    -0.3571983227739474
#>     Attrib V15    -0.3112109339315924
#>     Attrib V16    0.11040503974699839
#>     Attrib V17    0.34113575033331056
#>     Attrib V18    0.19931571703748188
#>     Attrib V19    -0.23986513399999101
#>     Attrib V2    0.16879162907583328
#>     Attrib V20    0.5696277088567478
#>     Attrib V21    0.5265845818706085
#>     Attrib V22    0.27408342507223415
#>     Attrib V23    0.5775752232692793
#>     Attrib V24    0.3354071683932541
#>     Attrib V25    -0.02599345317486638
#>     Attrib V26    -0.20665005748443485
#>     Attrib V27    -0.4547808702731247
#>     Attrib V28    0.3085107175428449
#>     Attrib V29    -0.3255337801757269
#>     Attrib V3    -0.18861652762971712
#>     Attrib V30    0.2768815414939737
#>     Attrib V31    -0.66108152352744
#>     Attrib V32    0.43444279867955055
#>     Attrib V33    0.40223816018835884
#>     Attrib V34    -0.1960721759429873
#>     Attrib V35    0.6232499150367375
#>     Attrib V36    -0.1378900894195543
#>     Attrib V37    -0.9098377508640894
#>     Attrib V38    0.0620510776164535
#>     Attrib V39    0.3382006432711476
#>     Attrib V4    0.22343606645094724
#>     Attrib V40    -0.4588471768419649
#>     Attrib V41    -0.40170531748140487
#>     Attrib V42    7.533242923704016E-4
#>     Attrib V43    0.37409918008941995
#>     Attrib V44    0.6169232306913336
#>     Attrib V45    0.7217878047750232
#>     Attrib V46    -0.004058651255510339
#>     Attrib V47    -0.19430603800062055
#>     Attrib V48    0.5142147840900076
#>     Attrib V49    0.7642167123123328
#>     Attrib V5    -0.1937191418396542
#>     Attrib V50    -0.566038997518762
#>     Attrib V51    0.08774462833699291
#>     Attrib V52    0.555805842515977
#>     Attrib V53    0.18590039353402124
#>     Attrib V54    0.8243048811344181
#>     Attrib V55    -0.26736025783782236
#>     Attrib V56    0.09305230486857777
#>     Attrib V57    -0.6924197927607312
#>     Attrib V58    0.3427210622863066
#>     Attrib V59    0.1699895505786425
#>     Attrib V6    -0.5620852142228352
#>     Attrib V60    -0.05291711698051764
#>     Attrib V7    -0.4145226430897415
#>     Attrib V8    -0.46880976812317915
#>     Attrib V9    0.3917640656041988
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.16023055093198904
#>     Attrib V1    -0.37728130816089017
#>     Attrib V10    -0.6408885157113998
#>     Attrib V11    -1.3378417858772491
#>     Attrib V12    -1.3294238918572274
#>     Attrib V13    -0.6264211018412873
#>     Attrib V14    0.3422515185341332
#>     Attrib V15    0.780905825020829
#>     Attrib V16    0.7053699139352376
#>     Attrib V17    0.4071919167466344
#>     Attrib V18    0.07119962339367111
#>     Attrib V19    0.267330373121651
#>     Attrib V2    -0.1675997729103873
#>     Attrib V20    -0.3219761394091477
#>     Attrib V21    -0.4258704932258445
#>     Attrib V22    -0.03086636458580937
#>     Attrib V23    -0.6155855402675504
#>     Attrib V24    -0.5946878120890801
#>     Attrib V25    -0.594037252131573
#>     Attrib V26    -0.634447892838978
#>     Attrib V27    -0.489426521670589
#>     Attrib V28    -1.1629442442706923
#>     Attrib V29    -0.46968708751435595
#>     Attrib V3    0.26141540216678333
#>     Attrib V30    -0.2599208037478196
#>     Attrib V31    0.25965011033698343
#>     Attrib V32    -0.3861720610452366
#>     Attrib V33    -0.09224693190341111
#>     Attrib V34    0.19750428997293323
#>     Attrib V35    -0.6302962672530019
#>     Attrib V36    0.166218844780212
#>     Attrib V37    0.2741080718101657
#>     Attrib V38    0.12083675421082817
#>     Attrib V39    -0.18179417849595728
#>     Attrib V4    -0.23496147235690823
#>     Attrib V40    0.44136626592362077
#>     Attrib V41    0.010293080538342223
#>     Attrib V42    0.364562521812592
#>     Attrib V43    -0.10947832021535421
#>     Attrib V44    -0.398000978277871
#>     Attrib V45    -0.6597181931009485
#>     Attrib V46    -0.5522758281009396
#>     Attrib V47    -0.5962706156345455
#>     Attrib V48    -1.0086085024000335
#>     Attrib V49    -0.9743835375658637
#>     Attrib V5    -0.14453858763914598
#>     Attrib V50    0.5639487511575991
#>     Attrib V51    -1.5170419808173539
#>     Attrib V52    -0.9970788108232875
#>     Attrib V53    -0.14549787166468697
#>     Attrib V54    -0.8683667061211688
#>     Attrib V55    0.07714604281761743
#>     Attrib V56    0.7669421613085401
#>     Attrib V57    0.7686851948442418
#>     Attrib V58    -0.2221217959071703
#>     Attrib V59    0.24174826035494018
#>     Attrib V6    0.21823706814936397
#>     Attrib V60    0.34168683265471955
#>     Attrib V7    0.49295522533270414
#>     Attrib V8    0.3737764901276316
#>     Attrib V9    -0.8396644440028704
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.09980844798879902
#>     Attrib V1    0.659866656112852
#>     Attrib V10    -0.46613699266969505
#>     Attrib V11    0.2251793085795121
#>     Attrib V12    0.23085909279608277
#>     Attrib V13    -0.26696744231239444
#>     Attrib V14    -0.13790014907243425
#>     Attrib V15    -0.04855876268729279
#>     Attrib V16    0.33135501902475445
#>     Attrib V17    0.43144753024143656
#>     Attrib V18    0.16439423361156857
#>     Attrib V19    -0.15561074403857658
#>     Attrib V2    0.14818295299544834
#>     Attrib V20    0.4878109912476224
#>     Attrib V21    0.36692498002892326
#>     Attrib V22    0.1156634674695764
#>     Attrib V23    0.249580633013351
#>     Attrib V24    0.18750768985478544
#>     Attrib V25    -0.1520002569787743
#>     Attrib V26    -0.5525875856411769
#>     Attrib V27    -0.678858307855512
#>     Attrib V28    -0.09905804208411523
#>     Attrib V29    -0.4896263687167591
#>     Attrib V3    -0.04354845332643223
#>     Attrib V30    0.005669618503429648
#>     Attrib V31    -0.5842701988569784
#>     Attrib V32    0.3390164349885751
#>     Attrib V33    0.3830682697403286
#>     Attrib V34    -0.1278136652986827
#>     Attrib V35    0.3735505859804948
#>     Attrib V36    -0.27193816220503225
#>     Attrib V37    -0.8963781993145551
#>     Attrib V38    -0.04866158274303846
#>     Attrib V39    0.22831148311174518
#>     Attrib V4    0.1499508232141374
#>     Attrib V40    -0.2879909777740072
#>     Attrib V41    -0.3364870872478128
#>     Attrib V42    0.021644741367997582
#>     Attrib V43    0.32624695439483237
#>     Attrib V44    0.3469604653462249
#>     Attrib V45    0.5013276756037958
#>     Attrib V46    -0.03637662226316108
#>     Attrib V47    -0.20524673363858278
#>     Attrib V48    0.3232185776760457
#>     Attrib V49    0.5643832942573601
#>     Attrib V5    -0.17449884757797526
#>     Attrib V50    -0.39005569405142937
#>     Attrib V51    -0.10232198113045307
#>     Attrib V52    0.4184166736128801
#>     Attrib V53    0.2333246021073674
#>     Attrib V54    0.6946177000911625
#>     Attrib V55    -0.03702470769261377
#>     Attrib V56    0.2863680957904436
#>     Attrib V57    -0.33096169517502516
#>     Attrib V58    0.38062210864466134
#>     Attrib V59    0.27887963598174265
#>     Attrib V6    -0.40889662178749675
#>     Attrib V60    0.11347034914381343
#>     Attrib V7    -0.1914747563963457
#>     Attrib V8    -0.20516763902322485
#>     Attrib V9    0.21758258321141505
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.2627157178624588
#>     Attrib V1    -0.3432340801244138
#>     Attrib V10    0.2551172937916095
#>     Attrib V11    -0.35818005736659564
#>     Attrib V12    -0.37490164177958396
#>     Attrib V13    0.11456589275705421
#>     Attrib V14    0.18448929012629825
#>     Attrib V15    0.21169613438425208
#>     Attrib V16    0.03726065817588963
#>     Attrib V17    0.019091043216184506
#>     Attrib V18    0.11044559721615813
#>     Attrib V19    0.3098595439131719
#>     Attrib V2    0.004229746960118312
#>     Attrib V20    -0.20577510177470681
#>     Attrib V21    -0.08596152466453336
#>     Attrib V22    0.14125768511287537
#>     Attrib V23    -0.16264040904250074
#>     Attrib V24    -0.18212705520892658
#>     Attrib V25    0.15553810510388105
#>     Attrib V26    0.2581058209853609
#>     Attrib V27    0.2100766319500535
#>     Attrib V28    -0.2774726119773289
#>     Attrib V29    0.03866488620594073
#>     Attrib V3    0.14799229217233162
#>     Attrib V30    -0.13988613163399224
#>     Attrib V31    0.44631295033199797
#>     Attrib V32    -0.3021511337005059
#>     Attrib V33    -0.2556787882283855
#>     Attrib V34    0.10721059388503815
#>     Attrib V35    -0.27745299955101005
#>     Attrib V36    0.2605485857026646
#>     Attrib V37    0.6795361783115806
#>     Attrib V38    0.07016830477587645
#>     Attrib V39    -0.08245135265058089
#>     Attrib V4    -0.03895390585234145
#>     Attrib V40    0.3045003735836829
#>     Attrib V41    0.19839162072857003
#>     Attrib V42    0.10623966469029944
#>     Attrib V43    -0.21949392388272254
#>     Attrib V44    -0.33772573456659344
#>     Attrib V45    -0.39637197882837577
#>     Attrib V46    -0.09990926999514772
#>     Attrib V47    0.035152022395077066
#>     Attrib V48    -0.34512959571063784
#>     Attrib V49    -0.5396692807034921
#>     Attrib V5    0.07068994948345952
#>     Attrib V50    0.48974398933310864
#>     Attrib V51    -0.20461314536052122
#>     Attrib V52    -0.5136311969691914
#>     Attrib V53    -0.1979358291909613
#>     Attrib V54    -0.5376156444559762
#>     Attrib V55    0.11201410400915007
#>     Attrib V56    0.1312051675106524
#>     Attrib V57    0.3847866870276417
#>     Attrib V58    -0.2779899141957253
#>     Attrib V59    -0.06348102907573025
#>     Attrib V6    0.32123027663844256
#>     Attrib V60    0.17664278128087324
#>     Attrib V7    0.30308219304104705
#>     Attrib V8    0.2726119543506737
#>     Attrib V9    -0.24759240423610446
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.06452432733760209
#>     Attrib V1    0.35981131562157403
#>     Attrib V10    -0.3164123835774327
#>     Attrib V11    0.010290892540039533
#>     Attrib V12    -0.061838692525366716
#>     Attrib V13    -0.18180639609315769
#>     Attrib V14    0.03543806030521157
#>     Attrib V15    0.16481762895647875
#>     Attrib V16    0.3550716510164547
#>     Attrib V17    0.381129393200638
#>     Attrib V18    0.18466090584635206
#>     Attrib V19    -0.021176729109455898
#>     Attrib V2    0.181871291860904
#>     Attrib V20    0.25742621726040243
#>     Attrib V21    0.0753560534436201
#>     Attrib V22    0.0021669160050357956
#>     Attrib V23    0.029125572752620746
#>     Attrib V24    -0.02671767614950285
#>     Attrib V25    -0.25897252891651334
#>     Attrib V26    -0.4113002627878718
#>     Attrib V27    -0.5277481186251745
#>     Attrib V28    -0.29211442511033275
#>     Attrib V29    -0.4209130669151349
#>     Attrib V3    0.006037400751780191
#>     Attrib V30    -0.10520916140280971
#>     Attrib V31    -0.3388656317719753
#>     Attrib V32    0.06385630237251783
#>     Attrib V33    0.20551708739586458
#>     Attrib V34    -0.035398253994996264
#>     Attrib V35    0.18642775439010217
#>     Attrib V36    -0.125270939308723
#>     Attrib V37    -0.39460151727888043
#>     Attrib V38    0.030106695559177384
#>     Attrib V39    0.08625374626342303
#>     Attrib V4    0.16320612561661305
#>     Attrib V40    -0.10125022967524512
#>     Attrib V41    -0.21447304093416786
#>     Attrib V42    -0.025013674676686644
#>     Attrib V43    0.13721709371928767
#>     Attrib V44    0.20412626553884244
#>     Attrib V45    0.1623067668146368
#>     Attrib V46    -0.07174397382452945
#>     Attrib V47    -0.19317252017840814
#>     Attrib V48    0.0738839761798879
#>     Attrib V49    0.23028453929037557
#>     Attrib V5    -0.044520789269387157
#>     Attrib V50    -0.17478104141036244
#>     Attrib V51    -0.270645817474856
#>     Attrib V52    0.13317283409267153
#>     Attrib V53    0.22870480159539716
#>     Attrib V54    0.4263524229421489
#>     Attrib V55    0.09201747686439049
#>     Attrib V56    0.21257855991756228
#>     Attrib V57    0.005392342516593643
#>     Attrib V58    0.24751560330495018
#>     Attrib V59    0.27249434238699555
#>     Attrib V6    -0.17860172424176393
#>     Attrib V60    0.16047276094982543
#>     Attrib V7    -0.041812069622314894
#>     Attrib V8    -0.038014419740461144
#>     Attrib V9    0.07738871457556565
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.18692580010577423
#>     Attrib V1    -0.04283203466496553
#>     Attrib V10    0.008489344523158643
#>     Attrib V11    -0.056711648670494344
#>     Attrib V12    -0.05541780698563509
#>     Attrib V13    -0.0065292744133672465
#>     Attrib V14    0.06278875787643302
#>     Attrib V15    0.05681865295232646
#>     Attrib V16    0.056041543515329535
#>     Attrib V17    0.025891507672170418
#>     Attrib V18    0.12508135613185264
#>     Attrib V19    -0.007268282752139765
#>     Attrib V2    0.039928484128914185
#>     Attrib V20    -0.11342283907781098
#>     Attrib V21    -0.06616261014306538
#>     Attrib V22    0.001404471401275017
#>     Attrib V23    0.0017329661232697415
#>     Attrib V24    -0.07537498165676679
#>     Attrib V25    -0.07491402575102182
#>     Attrib V26    -0.05276175626647906
#>     Attrib V27    -0.04422037417805719
#>     Attrib V28    -0.0866055250636825
#>     Attrib V29    -0.027400304864220758
#>     Attrib V3    0.15332104729118842
#>     Attrib V30    0.017098956618933653
#>     Attrib V31    0.11100607760786825
#>     Attrib V32    -0.002585966437604402
#>     Attrib V33    0.05545214489567992
#>     Attrib V34    0.09374698226820126
#>     Attrib V35    0.027855678979778902
#>     Attrib V36    0.20888263825363068
#>     Attrib V37    0.23243415067537113
#>     Attrib V38    0.051772147755364525
#>     Attrib V39    0.06411387031006531
#>     Attrib V4    0.05830662086491355
#>     Attrib V40    0.16030562971388312
#>     Attrib V41    0.142493260154546
#>     Attrib V42    0.1435240956400201
#>     Attrib V43    0.03108851672452684
#>     Attrib V44    0.0635093391911262
#>     Attrib V45    -0.022277302035022137
#>     Attrib V46    -1.5229377247585584E-4
#>     Attrib V47    0.04975566471548819
#>     Attrib V48    -0.07931340611200217
#>     Attrib V49    -0.025080659099180842
#>     Attrib V5    0.13376862391784317
#>     Attrib V50    0.10987200870825767
#>     Attrib V51    -0.005297077175525071
#>     Attrib V52    -0.07919723404491749
#>     Attrib V53    -0.006849487538085744
#>     Attrib V54    -0.14344667991522908
#>     Attrib V55    0.029625003065698836
#>     Attrib V56    0.1268791087598588
#>     Attrib V57    0.16292908535711262
#>     Attrib V58    0.055703923146577045
#>     Attrib V59    0.03637610373710285
#>     Attrib V6    0.18897449813104836
#>     Attrib V60    0.08687251374046713
#>     Attrib V7    0.14024366222968418
#>     Attrib V8    0.16464299851114036
#>     Attrib V9    0.01595357152029466
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
#>  0.2318841 
```
