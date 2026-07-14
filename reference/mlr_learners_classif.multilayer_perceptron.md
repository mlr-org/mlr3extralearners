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
#>     Threshold    -0.2311218887745518
#>     Node 2    1.814479359745345
#>     Node 3    1.129940875131027
#>     Node 4    0.7004570942137541
#>     Node 5    -2.027323644886688
#>     Node 6    1.4430980833714593
#>     Node 7    2.722421223510937
#>     Node 8    1.290579283828265
#>     Node 9    2.756124031833912
#>     Node 10    -2.165451706931941
#>     Node 11    1.0429731575250891
#>     Node 12    1.8026433174724332
#>     Node 13    1.5281545704435828
#>     Node 14    1.9061869136359626
#>     Node 15    -2.055743823396441
#>     Node 16    0.2729320109930181
#>     Node 17    -0.47022915837629325
#>     Node 18    0.8245644929471784
#>     Node 19    1.7454930242160231
#>     Node 20    1.9509808468648941
#>     Node 21    -1.5670274158003283
#>     Node 22    1.4664252820681678
#>     Node 23    2.0369820143286788
#>     Node 24    -1.194690477113645
#>     Node 25    4.355899399268559
#>     Node 26    0.12952946645180374
#>     Node 27    1.6418827372783065
#>     Node 28    -4.789727029244023
#>     Node 29    0.7569867244091759
#>     Node 30    1.0301713535845236
#>     Node 31    1.2431862731120384
#>     Node 32    0.745042897919162
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.26002199661962655
#>     Node 2    -1.8636193539763566
#>     Node 3    -1.11089790821912
#>     Node 4    -0.6598938760195262
#>     Node 5    2.0394284944938037
#>     Node 6    -1.417175066454875
#>     Node 7    -2.7307660887316914
#>     Node 8    -1.3242325074184658
#>     Node 9    -2.7623647041803996
#>     Node 10    2.114070558297624
#>     Node 11    -1.0080597191174172
#>     Node 12    -1.8794160176201906
#>     Node 13    -1.470603992036204
#>     Node 14    -1.835464619960574
#>     Node 15    2.0333734129434293
#>     Node 16    -0.2905079733753805
#>     Node 17    0.49833859155116655
#>     Node 18    -0.7841286958170252
#>     Node 19    -1.736735923461605
#>     Node 20    -1.9570616997547878
#>     Node 21    1.6121466822493884
#>     Node 22    -1.5165772848008028
#>     Node 23    -2.0755442925202634
#>     Node 24    1.1777357590585356
#>     Node 25    -4.365590341344999
#>     Node 26    -0.2158676621895263
#>     Node 27    -1.6812036968316393
#>     Node 28    4.774328271506083
#>     Node 29    -0.7886183854679749
#>     Node 30    -0.9537617379552675
#>     Node 31    -1.1835092895535386
#>     Node 32    -0.7635338842028231
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.17598247874085332
#>     Attrib V1    0.05894505615574901
#>     Attrib V10    -0.10814825252107861
#>     Attrib V11    0.2603640389729403
#>     Attrib V12    -0.07685363766177318
#>     Attrib V13    -0.43932672867209877
#>     Attrib V14    -0.2576309413858039
#>     Attrib V15    0.014361995534537505
#>     Attrib V16    0.3075222760840664
#>     Attrib V17    0.43432863037210817
#>     Attrib V18    -0.03459666812076262
#>     Attrib V19    -0.014601248441164387
#>     Attrib V2    -0.12424278334848228
#>     Attrib V20    0.24782610396794902
#>     Attrib V21    0.30535985205053423
#>     Attrib V22    0.24425236171902426
#>     Attrib V23    0.3278308211402029
#>     Attrib V24    0.2743678305366307
#>     Attrib V25    -0.21124992664661243
#>     Attrib V26    -0.6005291399509074
#>     Attrib V27    -0.5721878056419367
#>     Attrib V28    -0.5755420092666464
#>     Attrib V29    -0.49861101517075
#>     Attrib V3    -0.09016582815859381
#>     Attrib V30    0.3166203632458727
#>     Attrib V31    -0.8459609642784783
#>     Attrib V32    0.27230538277235444
#>     Attrib V33    0.7023872399488749
#>     Attrib V34    0.015110064289994772
#>     Attrib V35    -0.42874988585017537
#>     Attrib V36    -0.7154423675500672
#>     Attrib V37    -0.9513270648821842
#>     Attrib V38    0.1452208294300339
#>     Attrib V39    0.1055119629490659
#>     Attrib V4    0.43285725481866544
#>     Attrib V40    -0.24673952651632872
#>     Attrib V41    -0.07831094300969775
#>     Attrib V42    0.06496684565306957
#>     Attrib V43    0.5898379217053814
#>     Attrib V44    0.054261421602009384
#>     Attrib V45    -0.35301179977831804
#>     Attrib V46    -0.04699646691687164
#>     Attrib V47    -0.08990388708603315
#>     Attrib V48    0.6054585531371197
#>     Attrib V49    0.5444814941205058
#>     Attrib V5    0.23571661596684085
#>     Attrib V50    -0.7857862185988238
#>     Attrib V51    0.19637224975691264
#>     Attrib V52    -0.48648495774131867
#>     Attrib V53    0.25047787959736123
#>     Attrib V54    0.9052964309752294
#>     Attrib V55    -0.19288497904743554
#>     Attrib V56    0.21663800557695317
#>     Attrib V57    0.2029095847496492
#>     Attrib V58    0.35298564563921975
#>     Attrib V59    0.9590532442316327
#>     Attrib V6    -0.21309001557946272
#>     Attrib V60    0.32335820647128893
#>     Attrib V7    0.05496321998824402
#>     Attrib V8    0.16838543898260477
#>     Attrib V9    0.3130768037697437
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.07904077520427931
#>     Attrib V1    0.09565751727546866
#>     Attrib V10    -0.1610234135501404
#>     Attrib V11    0.012977272509786088
#>     Attrib V12    -0.1488498391163287
#>     Attrib V13    -0.2441855524145584
#>     Attrib V14    -0.029209898782292548
#>     Attrib V15    0.18692565375937228
#>     Attrib V16    0.24149064381215346
#>     Attrib V17    0.25099119406643833
#>     Attrib V18    -0.05873738757384026
#>     Attrib V19    0.016493663766442554
#>     Attrib V2    0.028155377676374972
#>     Attrib V20    0.19017635139961464
#>     Attrib V21    0.16848698292170936
#>     Attrib V22    0.1463436578105033
#>     Attrib V23    0.1425972124597178
#>     Attrib V24    0.06715689695446529
#>     Attrib V25    -0.2126026248601906
#>     Attrib V26    -0.42228941513586254
#>     Attrib V27    -0.43052303711842566
#>     Attrib V28    -0.4209179898851862
#>     Attrib V29    -0.3733077007925534
#>     Attrib V3    -0.01724296561566216
#>     Attrib V30    0.12545329002961692
#>     Attrib V31    -0.5594866785538808
#>     Attrib V32    0.04870385943714806
#>     Attrib V33    0.3454563283894258
#>     Attrib V34    -0.07385309012825413
#>     Attrib V35    -0.2304257213447677
#>     Attrib V36    -0.36560600558268247
#>     Attrib V37    -0.518251464071261
#>     Attrib V38    0.03896420768214658
#>     Attrib V39    0.08867691636884405
#>     Attrib V4    0.3140251524965747
#>     Attrib V40    -0.14377714332766703
#>     Attrib V41    -0.07148265850557511
#>     Attrib V42    0.02805024079249751
#>     Attrib V43    0.311805055360806
#>     Attrib V44    0.00869615992300066
#>     Attrib V45    -0.19533503434126273
#>     Attrib V46    -6.934505928032076E-4
#>     Attrib V47    -0.04273235223525171
#>     Attrib V48    0.26123541531619
#>     Attrib V49    0.28641893743390795
#>     Attrib V5    0.14169241121980836
#>     Attrib V50    -0.3311719128070888
#>     Attrib V51    0.08303504908281507
#>     Attrib V52    -0.2477986163638467
#>     Attrib V53    0.16977332478029916
#>     Attrib V54    0.6394009241126332
#>     Attrib V55    0.0682556207528511
#>     Attrib V56    0.16764464117156322
#>     Attrib V57    0.25809893712233273
#>     Attrib V58    0.35788422895346905
#>     Attrib V59    0.6712322713006977
#>     Attrib V6    -0.13586350729942018
#>     Attrib V60    0.24998857197061777
#>     Attrib V7    0.022709773899032584
#>     Attrib V8    0.1756972323493369
#>     Attrib V9    0.0902053350962014
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.021824699611340745
#>     Attrib V1    0.07045175912324028
#>     Attrib V10    -0.08312081762310977
#>     Attrib V11    0.040459041099163526
#>     Attrib V12    -0.08433221833952731
#>     Attrib V13    -0.12963007909624566
#>     Attrib V14    0.034211288428326464
#>     Attrib V15    0.11448304829145753
#>     Attrib V16    0.12550593420866293
#>     Attrib V17    0.14444099375160088
#>     Attrib V18    -0.03274826607689126
#>     Attrib V19    -0.033508088035282386
#>     Attrib V2    0.028499582916312896
#>     Attrib V20    0.1221065200126896
#>     Attrib V21    0.1623251577005975
#>     Attrib V22    0.03206362704727048
#>     Attrib V23    0.07082758289354578
#>     Attrib V24    -0.01476459771370645
#>     Attrib V25    -0.19151350729694555
#>     Attrib V26    -0.21314311272264647
#>     Attrib V27    -0.2274496172646984
#>     Attrib V28    -0.12231317250380963
#>     Attrib V29    -0.11793452482708495
#>     Attrib V3    0.036045630079333764
#>     Attrib V30    0.05225454878199467
#>     Attrib V31    -0.4248748149114581
#>     Attrib V32    -0.051397015718197735
#>     Attrib V33    0.19312816252256282
#>     Attrib V34    0.03405926401917831
#>     Attrib V35    -0.05446893239907323
#>     Attrib V36    -0.16239125509085403
#>     Attrib V37    -0.2747741705636112
#>     Attrib V38    0.06709759440357631
#>     Attrib V39    0.10223114278791239
#>     Attrib V4    0.2326545164590297
#>     Attrib V40    -0.1024902901472323
#>     Attrib V41    -0.09334348209487156
#>     Attrib V42    0.014407302476436507
#>     Attrib V43    0.16316009222769748
#>     Attrib V44    -0.006253828847228728
#>     Attrib V45    -0.006234465516071081
#>     Attrib V46    0.04505462414573565
#>     Attrib V47    -0.04024602780844725
#>     Attrib V48    0.2360913883838513
#>     Attrib V49    0.27665498488580625
#>     Attrib V5    0.17015374746183
#>     Attrib V50    -0.13098413220742777
#>     Attrib V51    0.14142094820742035
#>     Attrib V52    -0.09060786195729924
#>     Attrib V53    0.1959426594566103
#>     Attrib V54    0.3031505981309596
#>     Attrib V55    0.03571887415548919
#>     Attrib V56    0.10261321590614018
#>     Attrib V57    0.18208527893809648
#>     Attrib V58    0.1925164402631442
#>     Attrib V59    0.4227355769211392
#>     Attrib V6    -0.07449816303887645
#>     Attrib V60    0.193352039924062
#>     Attrib V7    0.024042203145697147
#>     Attrib V8    0.06616432779211665
#>     Attrib V9    0.14401338799872723
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5331874699058563
#>     Attrib V1    -0.01484017902520363
#>     Attrib V10    -0.008495859650086117
#>     Attrib V11    -0.7275452450066628
#>     Attrib V12    -0.8475007755828259
#>     Attrib V13    0.018034131352194196
#>     Attrib V14    0.7671809342215951
#>     Attrib V15    0.7583566221985582
#>     Attrib V16    0.20108316178589777
#>     Attrib V17    -0.08624339097771387
#>     Attrib V18    0.39404953727667347
#>     Attrib V19    0.2027176688874735
#>     Attrib V2    -0.07442302848550414
#>     Attrib V20    -0.09517133133927826
#>     Attrib V21    -0.21819798932873186
#>     Attrib V22    -0.4190745003258717
#>     Attrib V23    -0.3981704714788155
#>     Attrib V24    -0.19182413108534116
#>     Attrib V25    0.18012540107718497
#>     Attrib V26    0.19939061745720235
#>     Attrib V27    -0.17887963852439617
#>     Attrib V28    -0.3432690815466486
#>     Attrib V29    -0.05813703078285215
#>     Attrib V3    0.26553954908709465
#>     Attrib V30    -0.5386731570283146
#>     Attrib V31    1.2575065822807538
#>     Attrib V32    -0.15160283926244159
#>     Attrib V33    -0.4937201921887289
#>     Attrib V34    -0.04718947909767225
#>     Attrib V35    0.2668146089428839
#>     Attrib V36    0.6058679125924376
#>     Attrib V37    0.6052089115690846
#>     Attrib V38    -0.39096907136793074
#>     Attrib V39    -0.44006144180473383
#>     Attrib V4    -0.5756300270759133
#>     Attrib V40    0.2791449666371112
#>     Attrib V41    -0.12514240207836883
#>     Attrib V42    0.11767717590364332
#>     Attrib V43    -0.6182747006228441
#>     Attrib V44    0.09047737095973464
#>     Attrib V45    -0.023893489303433307
#>     Attrib V46    -0.34955513780948955
#>     Attrib V47    -0.1624362650959313
#>     Attrib V48    -0.9993302528532657
#>     Attrib V49    -0.8631940859250211
#>     Attrib V5    -0.11004130812560502
#>     Attrib V50    1.2731453026767865
#>     Attrib V51    -0.4102201398999556
#>     Attrib V52    0.13288259709489858
#>     Attrib V53    -0.32963796388992567
#>     Attrib V54    -0.3203447628319931
#>     Attrib V55    1.0131661282791506
#>     Attrib V56    0.04863913339399761
#>     Attrib V57    0.20287663642964418
#>     Attrib V58    0.20077755123432875
#>     Attrib V59    -0.5768264182196792
#>     Attrib V6    0.021983773435765838
#>     Attrib V60    -0.14745019920127234
#>     Attrib V7    0.4676065945818744
#>     Attrib V8    0.2457927156312376
#>     Attrib V9    -0.48110635614259406
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.19125202956458506
#>     Attrib V1    0.15369080843917074
#>     Attrib V10    -0.18520157792156464
#>     Attrib V11    0.08038250943082445
#>     Attrib V12    -0.16556020733878202
#>     Attrib V13    -0.4205512091260282
#>     Attrib V14    -0.1608667567201137
#>     Attrib V15    0.10929989747509772
#>     Attrib V16    0.34633376056724646
#>     Attrib V17    0.2891119462123681
#>     Attrib V18    -0.03847925928295026
#>     Attrib V19    -0.03494567856727713
#>     Attrib V2    -0.022985922544145762
#>     Attrib V20    0.25721970177017334
#>     Attrib V21    0.29154549695669374
#>     Attrib V22    0.16177929850993034
#>     Attrib V23    0.18546140826954763
#>     Attrib V24    0.159032213948014
#>     Attrib V25    -0.2380617253797075
#>     Attrib V26    -0.526859216926755
#>     Attrib V27    -0.49225275942246854
#>     Attrib V28    -0.566612098306088
#>     Attrib V29    -0.42684628162287414
#>     Attrib V3    -0.059845540336927856
#>     Attrib V30    0.17293702595487917
#>     Attrib V31    -0.6851644056543837
#>     Attrib V32    0.12806133596102823
#>     Attrib V33    0.5007096926164154
#>     Attrib V34    -0.033521654854087764
#>     Attrib V35    -0.2854311698618849
#>     Attrib V36    -0.50529691559602
#>     Attrib V37    -0.6332852346483916
#>     Attrib V38    0.11734401426483436
#>     Attrib V39    0.08298004872056049
#>     Attrib V4    0.39182852912319077
#>     Attrib V40    -0.22702301603863195
#>     Attrib V41    -0.0490225768846656
#>     Attrib V42    0.05255674023226216
#>     Attrib V43    0.3959497844025016
#>     Attrib V44    -0.006646795930502021
#>     Attrib V45    -0.21809817301284384
#>     Attrib V46    0.019011995474537243
#>     Attrib V47    -0.11737154968088757
#>     Attrib V48    0.337342758574295
#>     Attrib V49    0.3572527331404186
#>     Attrib V5    0.15773445464718625
#>     Attrib V50    -0.4658087016662437
#>     Attrib V51    0.11739330949570724
#>     Attrib V52    -0.39852766141519996
#>     Attrib V53    0.24904446669673136
#>     Attrib V54    0.7117299933451068
#>     Attrib V55    -0.08321242092912118
#>     Attrib V56    0.192944650005479
#>     Attrib V57    0.2645196620546274
#>     Attrib V58    0.37452662450090113
#>     Attrib V59    0.8214056979114353
#>     Attrib V6    -0.08684954015587505
#>     Attrib V60    0.329862852515073
#>     Attrib V7    0.10878083026665347
#>     Attrib V8    0.2350190321615114
#>     Attrib V9    0.278218142257438
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.30850193427467226
#>     Attrib V1    0.37721480047464306
#>     Attrib V10    0.5128168011160176
#>     Attrib V11    0.9919184744418731
#>     Attrib V12    1.180818115976341
#>     Attrib V13    0.337400846600878
#>     Attrib V14    -0.4530162972982587
#>     Attrib V15    -0.8341321654161988
#>     Attrib V16    -0.38463697024993393
#>     Attrib V17    -0.20615116303762296
#>     Attrib V18    -0.40348586840199013
#>     Attrib V19    -0.4377313274062694
#>     Attrib V2    0.5921674969090481
#>     Attrib V20    -0.28984285153560074
#>     Attrib V21    0.004915836754605846
#>     Attrib V22    0.06229939039466745
#>     Attrib V23    0.1294379959616256
#>     Attrib V24    -0.1339270860465975
#>     Attrib V25    0.02417800885035164
#>     Attrib V26    0.5945182279609328
#>     Attrib V27    1.1009164392775794
#>     Attrib V28    1.5514815726394697
#>     Attrib V29    1.0068921647297058
#>     Attrib V3    -0.018262005081554265
#>     Attrib V30    0.6137294084585172
#>     Attrib V31    -1.0026907134293779
#>     Attrib V32    -0.139526946218925
#>     Attrib V33    -0.11258454087236959
#>     Attrib V34    0.01009722806494649
#>     Attrib V35    0.0981738045323737
#>     Attrib V36    -0.19948388441935838
#>     Attrib V37    -0.019824212543083572
#>     Attrib V38    0.30476153890065577
#>     Attrib V39    0.3754070892095822
#>     Attrib V4    0.5644292747682527
#>     Attrib V40    -0.19277211860418159
#>     Attrib V41    0.3096653343482098
#>     Attrib V42    -0.08242593345492584
#>     Attrib V43    0.1607195565898676
#>     Attrib V44    -0.22790995054963753
#>     Attrib V45    0.29614669071032806
#>     Attrib V46    0.6819714767156728
#>     Attrib V47    0.3298531509107944
#>     Attrib V48    0.8985253968388763
#>     Attrib V49    0.7719555459275591
#>     Attrib V5    0.19077399962818617
#>     Attrib V50    -0.5857967903027188
#>     Attrib V51    0.6909353532888418
#>     Attrib V52    0.8204083791864456
#>     Attrib V53    0.5421660832874797
#>     Attrib V54    -0.18035344690959498
#>     Attrib V55    -0.7882471283349956
#>     Attrib V56    -0.27105203726123056
#>     Attrib V57    -0.36268533812326414
#>     Attrib V58    -0.501617371800727
#>     Attrib V59    0.1947966756883767
#>     Attrib V6    0.3147688948091635
#>     Attrib V60    0.5526409414401775
#>     Attrib V7    -0.42420976822734113
#>     Attrib V8    -0.6090542067713727
#>     Attrib V9    0.628199781769
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.24835293272826656
#>     Attrib V1    0.061396487412121836
#>     Attrib V10    -0.06860830103044305
#>     Attrib V11    0.21279003996461668
#>     Attrib V12    -0.042899561134536406
#>     Attrib V13    -0.30520208809863736
#>     Attrib V14    -0.25669678582160543
#>     Attrib V15    -0.015250062750496812
#>     Attrib V16    0.2795847715639846
#>     Attrib V17    0.30759445650225653
#>     Attrib V18    -0.0712262469860925
#>     Attrib V19    -0.004371439650876726
#>     Attrib V2    -0.01611872779853585
#>     Attrib V20    0.18331070243384764
#>     Attrib V21    0.27291781642542373
#>     Attrib V22    0.18677205470667277
#>     Attrib V23    0.2168350285962416
#>     Attrib V24    0.14262458882468332
#>     Attrib V25    -0.2311632031836555
#>     Attrib V26    -0.3940150634363246
#>     Attrib V27    -0.3529935681648834
#>     Attrib V28    -0.2950046979643948
#>     Attrib V29    -0.25275582107147165
#>     Attrib V3    -0.11167061498517877
#>     Attrib V30    0.2671337637769378
#>     Attrib V31    -0.7187716369155597
#>     Attrib V32    0.11411828958293083
#>     Attrib V33    0.4824723662017109
#>     Attrib V34    0.009682373497025663
#>     Attrib V35    -0.25178648978227774
#>     Attrib V36    -0.3997412546938589
#>     Attrib V37    -0.5879059208669268
#>     Attrib V38    0.21034623185901452
#>     Attrib V39    0.11402853475319323
#>     Attrib V4    0.4084964212164538
#>     Attrib V40    -0.2440330916672572
#>     Attrib V41    -0.1098534404173444
#>     Attrib V42    -0.0968090577664053
#>     Attrib V43    0.3830487718324862
#>     Attrib V44    0.0345646544875644
#>     Attrib V45    -0.1634001636865988
#>     Attrib V46    0.06934963067342263
#>     Attrib V47    -0.05174191852677883
#>     Attrib V48    0.49041951052187754
#>     Attrib V49    0.45720964193101066
#>     Attrib V5    0.13697119699282173
#>     Attrib V50    -0.5818969626575935
#>     Attrib V51    0.13964972271047058
#>     Attrib V52    -0.29529976616615483
#>     Attrib V53    0.2559459662603504
#>     Attrib V54    0.6226160183344789
#>     Attrib V55    -0.21052638172612026
#>     Attrib V56    0.0824563792927498
#>     Attrib V57    0.21980106862079252
#>     Attrib V58    0.19432938227906985
#>     Attrib V59    0.6910130384698377
#>     Attrib V6    -0.12399443605657022
#>     Attrib V60    0.2982740588225145
#>     Attrib V7    0.034419657072466
#>     Attrib V8    0.06558211265695914
#>     Attrib V9    0.28323834128235076
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.2232114852030961
#>     Attrib V1    0.05720868281578442
#>     Attrib V10    0.8463522093948017
#>     Attrib V11    1.322482611028392
#>     Attrib V12    1.3175137291059351
#>     Attrib V13    0.3444413254836724
#>     Attrib V14    -0.8120769392887813
#>     Attrib V15    -1.1014276906192153
#>     Attrib V16    -0.34738610937092457
#>     Attrib V17    0.14634256975389268
#>     Attrib V18    -0.09970422948150101
#>     Attrib V19    -0.0998384833996787
#>     Attrib V2    0.3738018481282262
#>     Attrib V20    -0.07455256097201082
#>     Attrib V21    0.18605427207221714
#>     Attrib V22    0.5116409236270643
#>     Attrib V23    0.798840066925051
#>     Attrib V24    0.38815964494050353
#>     Attrib V25    0.32123504652767243
#>     Attrib V26    0.6282460639276621
#>     Attrib V27    0.9449616220761149
#>     Attrib V28    1.0591331544375555
#>     Attrib V29    0.24054794052783546
#>     Attrib V3    -0.2694856379916042
#>     Attrib V30    0.6434000776699598
#>     Attrib V31    -0.9699203265318651
#>     Attrib V32    0.1344920408903909
#>     Attrib V33    0.1936094540514717
#>     Attrib V34    0.1987046272336624
#>     Attrib V35    0.08485783000910724
#>     Attrib V36    -0.4771815682830369
#>     Attrib V37    -0.6891967377647339
#>     Attrib V38    0.16491212535004077
#>     Attrib V39    0.5257233430324897
#>     Attrib V4    0.46347892602630125
#>     Attrib V40    -0.20642716755057877
#>     Attrib V41    0.07194478645150779
#>     Attrib V42    -0.21648276215505266
#>     Attrib V43    0.5171369718872173
#>     Attrib V44    -0.038538800626351656
#>     Attrib V45    0.29733139977615
#>     Attrib V46    0.709831129188155
#>     Attrib V47    0.4839730672397801
#>     Attrib V48    1.1794082757733226
#>     Attrib V49    1.140402216963892
#>     Attrib V5    0.09113073304908119
#>     Attrib V50    -0.889668745785803
#>     Attrib V51    0.8865568590208927
#>     Attrib V52    0.7940733408431176
#>     Attrib V53    0.5447983949959265
#>     Attrib V54    -0.2991036945167022
#>     Attrib V55    -0.8542413111760734
#>     Attrib V56    -0.24181352543475096
#>     Attrib V57    -0.9193567093216584
#>     Attrib V58    -0.5219600653671489
#>     Attrib V59    -0.13717364343897614
#>     Attrib V6    0.23159568915703024
#>     Attrib V60    -0.020115983852649046
#>     Attrib V7    -0.3985372599687078
#>     Attrib V8    -0.33136625059911823
#>     Attrib V9    1.0184930758786943
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.5412285517455501
#>     Attrib V1    -0.0023045240057821
#>     Attrib V10    -0.17422381749848226
#>     Attrib V11    -0.8100084285331016
#>     Attrib V12    -0.9764170141599365
#>     Attrib V13    0.027374197323988953
#>     Attrib V14    0.8292900799363977
#>     Attrib V15    0.7744941071223921
#>     Attrib V16    0.22731262084947795
#>     Attrib V17    -0.23249786783941156
#>     Attrib V18    0.24466259563264364
#>     Attrib V19    0.13644636864268683
#>     Attrib V2    -0.16474014223886982
#>     Attrib V20    -0.026230864021270842
#>     Attrib V21    -0.1284987226581172
#>     Attrib V22    -0.3481306073597814
#>     Attrib V23    -0.41002207785139144
#>     Attrib V24    -0.19434830323511165
#>     Attrib V25    7.486743210976245E-5
#>     Attrib V26    0.038545929869913974
#>     Attrib V27    -0.4275196836571352
#>     Attrib V28    -0.5994092355497815
#>     Attrib V29    -0.15947111849962806
#>     Attrib V3    0.21880240503140025
#>     Attrib V30    -0.4890184198948439
#>     Attrib V31    1.1862939678455846
#>     Attrib V32    -0.20030822738563148
#>     Attrib V33    -0.4020117883400699
#>     Attrib V34    -0.11675539315631302
#>     Attrib V35    0.040215287911551274
#>     Attrib V36    0.4432692932794111
#>     Attrib V37    0.5564417217008542
#>     Attrib V38    -0.23780519936125455
#>     Attrib V39    -0.3552274771852149
#>     Attrib V4    -0.5481087325576698
#>     Attrib V40    0.28531383970976104
#>     Attrib V41    -0.13147167797559892
#>     Attrib V42    0.07227271433193305
#>     Attrib V43    -0.5597101514785903
#>     Attrib V44    0.12764211220397423
#>     Attrib V45    0.0058873015637491855
#>     Attrib V46    -0.3923649316523664
#>     Attrib V47    -0.26713396322790206
#>     Attrib V48    -1.06591988487123
#>     Attrib V49    -0.8869909475466147
#>     Attrib V5    -0.12010179585232138
#>     Attrib V50    1.0955328933305897
#>     Attrib V51    -0.5084095212044222
#>     Attrib V52    -0.12470515643803878
#>     Attrib V53    -0.43277020274395794
#>     Attrib V54    -0.20970159933933022
#>     Attrib V55    1.0165327089599672
#>     Attrib V56    0.03246854163149555
#>     Attrib V57    0.3052446351851844
#>     Attrib V58    0.41934420782066034
#>     Attrib V59    -0.4831215231850467
#>     Attrib V6    -0.07010019366669805
#>     Attrib V60    -0.3309036502446203
#>     Attrib V7    0.49904974185324996
#>     Attrib V8    0.3581750874412121
#>     Attrib V9    -0.5322788132143981
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.08702505028153582
#>     Attrib V1    0.08619490271581313
#>     Attrib V10    -0.15340566671866515
#>     Attrib V11    0.04118714882174067
#>     Attrib V12    -0.11011036116019049
#>     Attrib V13    -0.31574483379709806
#>     Attrib V14    -0.0971408548650298
#>     Attrib V15    0.08044982562179663
#>     Attrib V16    0.21883852691959182
#>     Attrib V17    0.276299921102919
#>     Attrib V18    0.004176052915951338
#>     Attrib V19    -0.026479373120498213
#>     Attrib V2    -0.03865819087591349
#>     Attrib V20    0.23749013008590494
#>     Attrib V21    0.18760365632354192
#>     Attrib V22    0.08587600046151886
#>     Attrib V23    0.11875032624318713
#>     Attrib V24    0.03902792000023108
#>     Attrib V25    -0.21939401504301975
#>     Attrib V26    -0.41870952843287934
#>     Attrib V27    -0.3637570711644786
#>     Attrib V28    -0.31490232852503364
#>     Attrib V29    -0.29930240761037397
#>     Attrib V3    -0.08195778586183158
#>     Attrib V30    0.10027098314639014
#>     Attrib V31    -0.61589479730095
#>     Attrib V32    -0.028919515581477526
#>     Attrib V33    0.29622978542065326
#>     Attrib V34    0.048823399666490755
#>     Attrib V35    -0.10473999425272364
#>     Attrib V36    -0.2558971319876851
#>     Attrib V37    -0.4306533254157237
#>     Attrib V38    0.2020671731064862
#>     Attrib V39    0.09790572369938264
#>     Attrib V4    0.2821940887171864
#>     Attrib V40    -0.17659761907791058
#>     Attrib V41    -0.15841519590442626
#>     Attrib V42    -0.02472565596020563
#>     Attrib V43    0.28516406112491227
#>     Attrib V44    0.026850594735822644
#>     Attrib V45    -0.08303048350431588
#>     Attrib V46    0.033930279735367386
#>     Attrib V47    -0.034430420400480825
#>     Attrib V48    0.3012937352091644
#>     Attrib V49    0.2772536233277637
#>     Attrib V5    0.16488081624247938
#>     Attrib V50    -0.2788997314852987
#>     Attrib V51    0.15068302866784675
#>     Attrib V52    -0.2673618500804585
#>     Attrib V53    0.16825760509320983
#>     Attrib V54    0.570190389556285
#>     Attrib V55    -0.007844754637487843
#>     Attrib V56    0.14246250043589626
#>     Attrib V57    0.24377800334561028
#>     Attrib V58    0.277626791381619
#>     Attrib V59    0.5449293592778578
#>     Attrib V6    -0.08068079408803051
#>     Attrib V60    0.24103125444483392
#>     Attrib V7    0.015773566669743694
#>     Attrib V8    0.1643415719276228
#>     Attrib V9    0.16470220260022309
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.3288358351275253
#>     Attrib V1    -0.024787282422455533
#>     Attrib V10    -0.12968808074229377
#>     Attrib V11    0.3790835839284701
#>     Attrib V12    -0.016102149415336223
#>     Attrib V13    -0.4136242136394507
#>     Attrib V14    -0.3185367317610448
#>     Attrib V15    -0.059377013376625334
#>     Attrib V16    0.32326907204111055
#>     Attrib V17    0.4475958378273657
#>     Attrib V18    -0.055488440360902835
#>     Attrib V19    0.028468330851956797
#>     Attrib V2    -0.07551710909317115
#>     Attrib V20    0.166926973915685
#>     Attrib V21    0.2578810959618413
#>     Attrib V22    0.30370949461615715
#>     Attrib V23    0.3787918999382064
#>     Attrib V24    0.25392693355272533
#>     Attrib V25    -0.2114792422248663
#>     Attrib V26    -0.54630802473349
#>     Attrib V27    -0.4382425368163294
#>     Attrib V28    -0.4986099244513822
#>     Attrib V29    -0.41268498334451903
#>     Attrib V3    -0.2181500235979462
#>     Attrib V30    0.34414942395246073
#>     Attrib V31    -0.8710805526700147
#>     Attrib V32    0.2561097967200432
#>     Attrib V33    0.7562174102850397
#>     Attrib V34    0.031981012811686485
#>     Attrib V35    -0.420587833269081
#>     Attrib V36    -0.7174615504008625
#>     Attrib V37    -0.9596606610782675
#>     Attrib V38    0.1285618499995637
#>     Attrib V39    0.061981862684227736
#>     Attrib V4    0.47398617176048835
#>     Attrib V40    -0.2567888745986843
#>     Attrib V41    -0.09621892346505388
#>     Attrib V42    -0.0015573710892644434
#>     Attrib V43    0.6283120437084734
#>     Attrib V44    -0.01799926705022886
#>     Attrib V45    -0.2924813047144057
#>     Attrib V46    0.04692564035303397
#>     Attrib V47    -0.07057984942049278
#>     Attrib V48    0.687303679705196
#>     Attrib V49    0.5970714053115239
#>     Attrib V5    0.21584744524439975
#>     Attrib V50    -0.8504081835894338
#>     Attrib V51    0.2253640144772733
#>     Attrib V52    -0.43325867904321586
#>     Attrib V53    0.2979832447786087
#>     Attrib V54    0.8968031410310929
#>     Attrib V55    -0.2751671873172586
#>     Attrib V56    0.18716874721472437
#>     Attrib V57    0.2532091862689256
#>     Attrib V58    0.34169451504309256
#>     Attrib V59    0.9276047281541375
#>     Attrib V6    -0.19593449125897452
#>     Attrib V60    0.2850956214799456
#>     Attrib V7    0.04617693716498036
#>     Attrib V8    0.12538823878413105
#>     Attrib V9    0.3714521053075793
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.11182126868868603
#>     Attrib V1    0.037404011615986305
#>     Attrib V10    -0.11913951428692722
#>     Attrib V11    0.2097406518847612
#>     Attrib V12    -0.061381637232182554
#>     Attrib V13    -0.2839046835850313
#>     Attrib V14    -0.23802758777937144
#>     Attrib V15    -0.013213401854384804
#>     Attrib V16    0.2316658294835448
#>     Attrib V17    0.3904087523871766
#>     Attrib V18    -0.019452042646358768
#>     Attrib V19    0.0022959503735499125
#>     Attrib V2    -0.10816414525970401
#>     Attrib V20    0.2146960460135263
#>     Attrib V21    0.25822828768018535
#>     Attrib V22    0.23441680130557313
#>     Attrib V23    0.36171564501613107
#>     Attrib V24    0.26296482742619465
#>     Attrib V25    -0.12781709968256313
#>     Attrib V26    -0.5257821312501693
#>     Attrib V27    -0.42986273198876335
#>     Attrib V28    -0.5181207597599755
#>     Attrib V29    -0.40316830694261774
#>     Attrib V3    -0.062341230276504726
#>     Attrib V30    0.2440476936803601
#>     Attrib V31    -0.7430497643268701
#>     Attrib V32    0.19667364217661826
#>     Attrib V33    0.5643750966558165
#>     Attrib V34    0.04124399270872362
#>     Attrib V35    -0.3558703126633789
#>     Attrib V36    -0.5764056924852723
#>     Attrib V37    -0.7386568908403816
#>     Attrib V38    0.11402507980998643
#>     Attrib V39    0.15612205199898518
#>     Attrib V4    0.3971529917801821
#>     Attrib V40    -0.19527393060968426
#>     Attrib V41    -0.0731121099523068
#>     Attrib V42    0.015451716721824332
#>     Attrib V43    0.4187586298395783
#>     Attrib V44    0.006927067108605666
#>     Attrib V45    -0.30250511042792927
#>     Attrib V46    0.02548114342113059
#>     Attrib V47    -0.012814697799752667
#>     Attrib V48    0.4968766662425568
#>     Attrib V49    0.5293937601197923
#>     Attrib V5    0.20381133737426163
#>     Attrib V50    -0.6464243504128976
#>     Attrib V51    0.17028290402794186
#>     Attrib V52    -0.43278828166626715
#>     Attrib V53    0.20703938487750326
#>     Attrib V54    0.7215054208927504
#>     Attrib V55    -0.18873951618474852
#>     Attrib V56    0.17225766016839225
#>     Attrib V57    0.19575568509378352
#>     Attrib V58    0.30027660711399784
#>     Attrib V59    0.813547620051935
#>     Attrib V6    -0.09890821017005429
#>     Attrib V60    0.32162064070557933
#>     Attrib V7    0.11119070078771198
#>     Attrib V8    0.08908068186977845
#>     Attrib V9    0.2852359554251985
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.20584087293355174
#>     Attrib V1    0.08499560314121779
#>     Attrib V10    -0.18478569057593236
#>     Attrib V11    0.1930446271536196
#>     Attrib V12    -0.1235056600308471
#>     Attrib V13    -0.45890650150974
#>     Attrib V14    -0.2661835577292358
#>     Attrib V15    0.14175410706221053
#>     Attrib V16    0.33226417741588293
#>     Attrib V17    0.42819414580202186
#>     Attrib V18    -0.07047423883275167
#>     Attrib V19    -0.053380562637082365
#>     Attrib V2    -0.10460397909644677
#>     Attrib V20    0.20042484082360013
#>     Attrib V21    0.23665763912279608
#>     Attrib V22    0.20990810079972963
#>     Attrib V23    0.3106373373780542
#>     Attrib V24    0.21914026016249263
#>     Attrib V25    -0.21474040942556602
#>     Attrib V26    -0.5962387775223705
#>     Attrib V27    -0.623712843664873
#>     Attrib V28    -0.7166958346646229
#>     Attrib V29    -0.6344953360921518
#>     Attrib V3    -0.15669277840583798
#>     Attrib V30    0.207091310673434
#>     Attrib V31    -0.7549190716960592
#>     Attrib V32    0.18783489891357522
#>     Attrib V33    0.6826873097547412
#>     Attrib V34    -0.005138545996413465
#>     Attrib V35    -0.35305149169378375
#>     Attrib V36    -0.6845691385762669
#>     Attrib V37    -0.8452398252175748
#>     Attrib V38    0.05531776320002541
#>     Attrib V39    0.0605054446436703
#>     Attrib V4    0.4029572932706234
#>     Attrib V40    -0.22916033668961686
#>     Attrib V41    -0.09705013204657849
#>     Attrib V42    0.008687728467765474
#>     Attrib V43    0.5133614426382028
#>     Attrib V44    0.06372228987561239
#>     Attrib V45    -0.3724837932040493
#>     Attrib V46    -0.01934108435354651
#>     Attrib V47    -0.09637003589052823
#>     Attrib V48    0.5640775150268134
#>     Attrib V49    0.5372966396912663
#>     Attrib V5    0.15282016452189687
#>     Attrib V50    -0.6813502654920371
#>     Attrib V51    0.1073911782546422
#>     Attrib V52    -0.5707341268211267
#>     Attrib V53    0.2112331547896472
#>     Attrib V54    1.0317758962851191
#>     Attrib V55    -0.08356733816899461
#>     Attrib V56    0.2762861660152663
#>     Attrib V57    0.364104075649395
#>     Attrib V58    0.4469985040187447
#>     Attrib V59    0.9442833036832714
#>     Attrib V6    -0.1646670361627252
#>     Attrib V60    0.3956508228431322
#>     Attrib V7    0.12341363836118306
#>     Attrib V8    0.14757960701408776
#>     Attrib V9    0.2444236502934576
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.3888150511015075
#>     Attrib V1    0.09595150741265265
#>     Attrib V10    -0.12389030702474702
#>     Attrib V11    -0.7141612954848979
#>     Attrib V12    -0.5036133155386061
#>     Attrib V13    0.026804259737399486
#>     Attrib V14    0.3771455617832455
#>     Attrib V15    0.35775280386049046
#>     Attrib V16    -0.08001684919043726
#>     Attrib V17    -0.312351413019883
#>     Attrib V18    0.18668838603658763
#>     Attrib V19    0.05287090491849149
#>     Attrib V2    0.03157847366722275
#>     Attrib V20    0.10753188076362594
#>     Attrib V21    -0.14350180291382217
#>     Attrib V22    -0.3061167206593645
#>     Attrib V23    -0.4386546082349498
#>     Attrib V24    -0.3739003177115764
#>     Attrib V25    0.033164046476794
#>     Attrib V26    0.31103268629899933
#>     Attrib V27    0.13529812853904605
#>     Attrib V28    0.27253757467720446
#>     Attrib V29    0.17539277777465687
#>     Attrib V3    0.3063259001965036
#>     Attrib V30    -0.5476781924932769
#>     Attrib V31    0.6999713939004362
#>     Attrib V32    -0.5169573381012108
#>     Attrib V33    -0.7516203344616732
#>     Attrib V34    0.09907752380840508
#>     Attrib V35    0.7508123981231597
#>     Attrib V36    1.2151183006598731
#>     Attrib V37    1.3497116148688646
#>     Attrib V38    0.16364421897188877
#>     Attrib V39    -0.15871975052656506
#>     Attrib V4    -0.4541124432456596
#>     Attrib V40    0.14554649766660863
#>     Attrib V41    -0.17536567345156928
#>     Attrib V42    -0.019664488501580455
#>     Attrib V43    -0.4952378037068489
#>     Attrib V44    0.2119277658895215
#>     Attrib V45    0.5521308485219324
#>     Attrib V46    -0.020384169362743797
#>     Attrib V47    -0.12331191766870912
#>     Attrib V48    -1.0009781301108098
#>     Attrib V49    -0.8570457949674797
#>     Attrib V5    -0.24910314554438112
#>     Attrib V50    1.199522342028702
#>     Attrib V51    -0.5136603979291511
#>     Attrib V52    0.19043836967374655
#>     Attrib V53    -0.34107206367235154
#>     Attrib V54    -0.5342426962121358
#>     Attrib V55    0.4909953214669756
#>     Attrib V56    -0.008149445962618587
#>     Attrib V57    0.10100132934289205
#>     Attrib V58    -0.1595370232856564
#>     Attrib V59    -0.7451747709104956
#>     Attrib V6    -0.04407464795202004
#>     Attrib V60    -0.2339767424754071
#>     Attrib V7    0.08491474136433817
#>     Attrib V8    0.1334752698876988
#>     Attrib V9    -0.45380317390511
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.15381758595507386
#>     Attrib V1    0.0932605158343812
#>     Attrib V10    0.004137439838085936
#>     Attrib V11    0.017667880184056965
#>     Attrib V12    -0.04186753721173974
#>     Attrib V13    -0.03844134546287981
#>     Attrib V14    -0.0029921917930628562
#>     Attrib V15    0.01923682421729163
#>     Attrib V16    0.10519992714978812
#>     Attrib V17    0.10817134849769894
#>     Attrib V18    0.04940580546828232
#>     Attrib V19    -1.1460606245878525E-4
#>     Attrib V2    0.0308102019609769
#>     Attrib V20    -0.004451254838600632
#>     Attrib V21    -0.019000478391383226
#>     Attrib V22    -0.03001946081620743
#>     Attrib V23    -0.03756706860933159
#>     Attrib V24    0.005449442429469243
#>     Attrib V25    -0.053569943097603885
#>     Attrib V26    -0.10299641049759024
#>     Attrib V27    -0.08593439063619956
#>     Attrib V28    -0.05977458933105753
#>     Attrib V29    -0.09364151327484273
#>     Attrib V3    0.08435700791793417
#>     Attrib V30    -0.03381279299224421
#>     Attrib V31    -0.21287615628389658
#>     Attrib V32    -0.010503119060417362
#>     Attrib V33    0.0676354794721752
#>     Attrib V34    0.07024306516965147
#>     Attrib V35    0.03010110138010943
#>     Attrib V36    -0.010913230722105741
#>     Attrib V37    -0.0373122447925918
#>     Attrib V38    0.0874684951868774
#>     Attrib V39    0.08452742176303076
#>     Attrib V4    0.1880351745792857
#>     Attrib V40    -0.03733742939434016
#>     Attrib V41    -0.014882336951034528
#>     Attrib V42    0.028013595024308405
#>     Attrib V43    0.07086846662920832
#>     Attrib V44    -0.0075576286981059995
#>     Attrib V45    0.017975893388145533
#>     Attrib V46    0.10208367012869428
#>     Attrib V47    0.03398441990679536
#>     Attrib V48    0.0936217595452008
#>     Attrib V49    0.09400528962425785
#>     Attrib V5    0.122574839227181
#>     Attrib V50    0.0447515192828167
#>     Attrib V51    0.1419928780187263
#>     Attrib V52    0.04405459790112723
#>     Attrib V53    0.1447717403349853
#>     Attrib V54    0.13948990658852942
#>     Attrib V55    0.08634002004456343
#>     Attrib V56    0.07209477396003984
#>     Attrib V57    0.14298811900501557
#>     Attrib V58    0.180880670670094
#>     Attrib V59    0.1633218671150385
#>     Attrib V6    0.04269380932841545
#>     Attrib V60    0.17313056269424187
#>     Attrib V7    0.039745620779151905
#>     Attrib V8    0.037880193687519416
#>     Attrib V9    0.12564764749070173
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.16883330499720003
#>     Attrib V1    0.03431368984690494
#>     Attrib V10    0.06639167735561295
#>     Attrib V11    -0.13586531609773592
#>     Attrib V12    -0.17478290999910298
#>     Attrib V13    -0.02127266495173027
#>     Attrib V14    0.13952250840320704
#>     Attrib V15    0.21896553009437952
#>     Attrib V16    0.10557724955009647
#>     Attrib V17    0.07819879867573172
#>     Attrib V18    0.19892625826340504
#>     Attrib V19    0.1168756028598238
#>     Attrib V2    0.06386031996466696
#>     Attrib V20    -0.04869299095708733
#>     Attrib V21    -0.04824293121130078
#>     Attrib V22    0.0148119558418464
#>     Attrib V23    -0.11697962406542417
#>     Attrib V24    -0.0038763685873103517
#>     Attrib V25    0.05788194452570718
#>     Attrib V26    -0.00462007855371583
#>     Attrib V27    -0.09293559432441242
#>     Attrib V28    -0.1311363812070372
#>     Attrib V29    -0.06013622597132888
#>     Attrib V3    0.07656022648537325
#>     Attrib V30    -0.05403751052298305
#>     Attrib V31    0.4452053199166479
#>     Attrib V32    0.05495382090590099
#>     Attrib V33    0.011368969104129515
#>     Attrib V34    0.0014150210242298614
#>     Attrib V35    0.15639806249150767
#>     Attrib V36    0.1871996344637317
#>     Attrib V37    0.22912215278287842
#>     Attrib V38    0.003791413856082267
#>     Attrib V39    -0.02273119401151639
#>     Attrib V4    -0.0980750214819491
#>     Attrib V40    0.1645743373185789
#>     Attrib V41    0.13785650417211265
#>     Attrib V42    0.09904766352877543
#>     Attrib V43    -0.042309963256537055
#>     Attrib V44    0.1139393873362594
#>     Attrib V45    0.04689499746240648
#>     Attrib V46    -0.08854821827834464
#>     Attrib V47    -0.03889075971648602
#>     Attrib V48    -0.18681655319520715
#>     Attrib V49    -0.27346759144325283
#>     Attrib V5    0.021738925500945267
#>     Attrib V50    0.2663440757914236
#>     Attrib V51    -0.09054485424388352
#>     Attrib V52    -0.0050167186077464945
#>     Attrib V53    -0.0958297719256537
#>     Attrib V54    -0.12580175224232046
#>     Attrib V55    0.17483350235065476
#>     Attrib V56    0.05068953574987469
#>     Attrib V57    0.10708296106776978
#>     Attrib V58    -0.03868312937930085
#>     Attrib V59    -0.235038581958987
#>     Attrib V6    0.08077046824664655
#>     Attrib V60    -0.04844465793927377
#>     Attrib V7    0.05868459956980642
#>     Attrib V8    0.1043008686831862
#>     Attrib V9    -0.05356958750927066
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.002995813790567585
#>     Attrib V1    0.11753346198576523
#>     Attrib V10    -0.06585198006071874
#>     Attrib V11    0.05229957355626838
#>     Attrib V12    -0.12830203969545284
#>     Attrib V13    -0.20013916580153568
#>     Attrib V14    -0.03815323242007225
#>     Attrib V15    0.05485264184970278
#>     Attrib V16    0.17455382216863521
#>     Attrib V17    0.14708814654680716
#>     Attrib V18    0.048073059492336596
#>     Attrib V19    -0.03891943552007107
#>     Attrib V2    0.03248387647948549
#>     Attrib V20    0.17747389451780188
#>     Attrib V21    0.1982309166785518
#>     Attrib V22    0.10459346353394458
#>     Attrib V23    0.12079933022267123
#>     Attrib V24    0.03309037442324842
#>     Attrib V25    -0.14797117529043438
#>     Attrib V26    -0.24739507973595842
#>     Attrib V27    -0.24994259611762848
#>     Attrib V28    -0.2586664425746825
#>     Attrib V29    -0.2349937295805749
#>     Attrib V3    0.02776491836656725
#>     Attrib V30    0.028946836806003726
#>     Attrib V31    -0.49194894933582395
#>     Attrib V32    -0.041478074861487045
#>     Attrib V33    0.2137285500193696
#>     Attrib V34    0.03723718954737337
#>     Attrib V35    -0.11093187255636554
#>     Attrib V36    -0.12780835761239756
#>     Attrib V37    -0.3179791732788378
#>     Attrib V38    0.12751306518068842
#>     Attrib V39    0.13502910870135942
#>     Attrib V4    0.2280211186003331
#>     Attrib V40    -0.15375734396166396
#>     Attrib V41    -0.1259906667250521
#>     Attrib V42    -0.024922540576653725
#>     Attrib V43    0.21853274443583057
#>     Attrib V44    0.03342929775571912
#>     Attrib V45    -0.11938425038187818
#>     Attrib V46    0.03842676080890306
#>     Attrib V47    -0.004285037047469852
#>     Attrib V48    0.2344848877388281
#>     Attrib V49    0.27815191438505665
#>     Attrib V5    0.12267779307195362
#>     Attrib V50    -0.2473291886654796
#>     Attrib V51    0.1510670697255476
#>     Attrib V52    -0.17720227607653716
#>     Attrib V53    0.1524569438530191
#>     Attrib V54    0.3593500565286447
#>     Attrib V55    0.0390265847795824
#>     Attrib V56    0.12050188723700248
#>     Attrib V57    0.12623112086038105
#>     Attrib V58    0.22697133090284846
#>     Attrib V59    0.4991727071264471
#>     Attrib V6    -0.08374274883690527
#>     Attrib V60    0.26892627189797225
#>     Attrib V7    0.10534220056154903
#>     Attrib V8    0.16222692773416503
#>     Attrib V9    0.16901246461118838
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.2854170057165579
#>     Attrib V1    -0.07927516754769336
#>     Attrib V10    -0.01133630122335156
#>     Attrib V11    0.4881429487004472
#>     Attrib V12    0.3730320090826697
#>     Attrib V13    -0.16777776681876072
#>     Attrib V14    -0.35602748272248486
#>     Attrib V15    -0.17244116455317185
#>     Attrib V16    0.16287915026763755
#>     Attrib V17    0.4024193751159182
#>     Attrib V18    -0.09389957331309512
#>     Attrib V19    0.027865284644882547
#>     Attrib V2    -0.037436014451398
#>     Attrib V20    -0.0015313032112137415
#>     Attrib V21    0.14238433172267584
#>     Attrib V22    0.3535778066285513
#>     Attrib V23    0.46627559386124334
#>     Attrib V24    0.40880948593219996
#>     Attrib V25    -0.0039101483464027776
#>     Attrib V26    -0.3609898009789489
#>     Attrib V27    -0.24308239666870407
#>     Attrib V28    -0.2931715065888301
#>     Attrib V29    -0.2755679185262997
#>     Attrib V3    -0.25493333081307823
#>     Attrib V30    0.45961204160492575
#>     Attrib V31    -0.7008209249858979
#>     Attrib V32    0.36622450522646527
#>     Attrib V33    0.7037176910981225
#>     Attrib V34    -0.06047943744121025
#>     Attrib V35    -0.5220903767566554
#>     Attrib V36    -0.9109879563413786
#>     Attrib V37    -1.1174711517846494
#>     Attrib V38    -0.05042235608765364
#>     Attrib V39    0.11154840055531277
#>     Attrib V4    0.4629269816010186
#>     Attrib V40    -0.19947910287707585
#>     Attrib V41    0.012664388275445705
#>     Attrib V42    0.029551916960768372
#>     Attrib V43    0.521917285449429
#>     Attrib V44    -0.11265314947148708
#>     Attrib V45    -0.3373603423700889
#>     Attrib V46    0.034329050913548216
#>     Attrib V47    -0.009318250089979697
#>     Attrib V48    0.7700334840717208
#>     Attrib V49    0.7676789960784851
#>     Attrib V5    0.22105088223395505
#>     Attrib V50    -0.9997979002622239
#>     Attrib V51    0.3399860565390705
#>     Attrib V52    -0.28069457456340907
#>     Attrib V53    0.34787822926723194
#>     Attrib V54    0.7287513659411229
#>     Attrib V55    -0.3248460045552387
#>     Attrib V56    0.0707998597962889
#>     Attrib V57    -0.020950689029752632
#>     Attrib V58    0.24365602761923089
#>     Attrib V59    0.7456263613063521
#>     Attrib V6    -0.09018640597269956
#>     Attrib V60    0.22451319318735666
#>     Attrib V7    -0.05948261076866407
#>     Attrib V8    -0.0755349913439154
#>     Attrib V9    0.3717158852530282
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.3682526046180916
#>     Attrib V1    0.15733160081258418
#>     Attrib V10    0.25630571870090485
#>     Attrib V11    0.7582979926571356
#>     Attrib V12    0.8723167397261071
#>     Attrib V13    0.05270909793134773
#>     Attrib V14    -0.5723593545219281
#>     Attrib V15    -0.7074113497241488
#>     Attrib V16    -0.2250213709244736
#>     Attrib V17    0.21174164701572146
#>     Attrib V18    -0.09035348893525859
#>     Attrib V19    -0.025219669780805302
#>     Attrib V2    0.2149768321125352
#>     Attrib V20    0.15665861799038042
#>     Attrib V21    0.22462149514514299
#>     Attrib V22    0.385469639923883
#>     Attrib V23    0.6001297395484956
#>     Attrib V24    0.2628856351631208
#>     Attrib V25    0.06399113559853715
#>     Attrib V26    0.16474546283919386
#>     Attrib V27    0.5900452384683988
#>     Attrib V28    0.7245673845081572
#>     Attrib V29    0.31929475011073233
#>     Attrib V3    -0.2260295829084532
#>     Attrib V30    0.6116195477109835
#>     Attrib V31    -1.0512297596424653
#>     Attrib V32    -0.055910280667608454
#>     Attrib V33    0.20982147178905225
#>     Attrib V34    0.018601106503217762
#>     Attrib V35    0.05270777378381992
#>     Attrib V36    -0.2509774277392428
#>     Attrib V37    -0.3580966824955992
#>     Attrib V38    0.3708421850087454
#>     Attrib V39    0.3335188498528463
#>     Attrib V4    0.49950439174634637
#>     Attrib V40    -0.26796937469028664
#>     Attrib V41    0.05111242685590466
#>     Attrib V42    -0.11984141738710903
#>     Attrib V43    0.6484008704618982
#>     Attrib V44    0.06060544609072146
#>     Attrib V45    0.04880356916273642
#>     Attrib V46    0.3154071079073206
#>     Attrib V47    0.1791021896531813
#>     Attrib V48    0.9033442593722488
#>     Attrib V49    0.7985027560798051
#>     Attrib V5    0.17890865750688204
#>     Attrib V50    -0.8966735432513895
#>     Attrib V51    0.5743931627454706
#>     Attrib V52    0.20378199565653327
#>     Attrib V53    0.4755505341767044
#>     Attrib V54    0.2704664548045711
#>     Attrib V55    -0.8588015342578476
#>     Attrib V56    -0.010465759089531762
#>     Attrib V57    -0.4604847524012889
#>     Attrib V58    -0.36029093968945036
#>     Attrib V59    0.40814422307713594
#>     Attrib V6    0.051096833054912694
#>     Attrib V60    0.22205970976625855
#>     Attrib V7    -0.45469857357428006
#>     Attrib V8    -0.39216760177688803
#>     Attrib V9    0.5711763391514741
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.3214345229674746
#>     Attrib V1    0.08303010368752542
#>     Attrib V10    -0.10646459049515725
#>     Attrib V11    -0.6229022378835927
#>     Attrib V12    -0.5171682569903205
#>     Attrib V13    -0.002736818560640181
#>     Attrib V14    0.36460042530188924
#>     Attrib V15    0.3235792374807871
#>     Attrib V16    -0.03682475150282826
#>     Attrib V17    -0.22058538814796955
#>     Attrib V18    0.19989735339157336
#>     Attrib V19    0.029709262650496806
#>     Attrib V2    -0.007755133361050972
#>     Attrib V20    0.029312236229110302
#>     Attrib V21    -0.09310025945013325
#>     Attrib V22    -0.31563666705572524
#>     Attrib V23    -0.3906459811825558
#>     Attrib V24    -0.2644338358272478
#>     Attrib V25    0.09351926034687148
#>     Attrib V26    0.268354358538109
#>     Attrib V27    0.08870538592369712
#>     Attrib V28    0.0749804728006025
#>     Attrib V29    0.11459658723888366
#>     Attrib V3    0.2128523114325025
#>     Attrib V30    -0.42346600362188985
#>     Attrib V31    0.7380955042696706
#>     Attrib V32    -0.3629593167637762
#>     Attrib V33    -0.5488082877465537
#>     Attrib V34    0.024739162534364197
#>     Attrib V35    0.5007968894361915
#>     Attrib V36    0.8740490737168628
#>     Attrib V37    1.0182959879682902
#>     Attrib V38    7.992774824022833E-4
#>     Attrib V39    -0.20009244958630773
#>     Attrib V4    -0.3597716728654526
#>     Attrib V40    0.20693657392548598
#>     Attrib V41    -0.04410679603359053
#>     Attrib V42    0.015209614307201207
#>     Attrib V43    -0.39321167237131294
#>     Attrib V44    0.1902723744280891
#>     Attrib V45    0.2829683473155637
#>     Attrib V46    -0.12209361406082632
#>     Attrib V47    -0.12401889815965814
#>     Attrib V48    -0.8046924704337602
#>     Attrib V49    -0.7516822943850727
#>     Attrib V5    -0.15968532976413896
#>     Attrib V50    0.9706807280534863
#>     Attrib V51    -0.40400411877615755
#>     Attrib V52    0.1694589488204967
#>     Attrib V53    -0.2812924014311029
#>     Attrib V54    -0.3670079286619694
#>     Attrib V55    0.4122541955959367
#>     Attrib V56    -0.041805762027456936
#>     Attrib V57    0.1585870057119787
#>     Attrib V58    -0.10031627350165477
#>     Attrib V59    -0.5599434490027089
#>     Attrib V6    -0.03794163975165409
#>     Attrib V60    -0.1269952451672287
#>     Attrib V7    0.15373321352578787
#>     Attrib V8    0.03392121041285465
#>     Attrib V9    -0.3728954731194964
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.15979704665589956
#>     Attrib V1    0.15785123966435408
#>     Attrib V10    -0.19599356463108847
#>     Attrib V11    0.04638710277239008
#>     Attrib V12    -0.2230054146778007
#>     Attrib V13    -0.4149951622936333
#>     Attrib V14    -0.1036494118219935
#>     Attrib V15    0.13107206466807128
#>     Attrib V16    0.3838857974646979
#>     Attrib V17    0.3432339947412788
#>     Attrib V18    -0.05262825535587285
#>     Attrib V19    -0.041590055122499484
#>     Attrib V2    -0.02257515608273862
#>     Attrib V20    0.24111901214599782
#>     Attrib V21    0.24954585063341125
#>     Attrib V22    0.1415885695764344
#>     Attrib V23    0.11871486988522595
#>     Attrib V24    0.14128526477825792
#>     Attrib V25    -0.30749910354341914
#>     Attrib V26    -0.5937288175194291
#>     Attrib V27    -0.5677950603607077
#>     Attrib V28    -0.6079375042644094
#>     Attrib V29    -0.39252483233677415
#>     Attrib V3    -0.09436051618621098
#>     Attrib V30    0.12969753738430845
#>     Attrib V31    -0.637584106801988
#>     Attrib V32    0.0780239675678073
#>     Attrib V33    0.43232277013539705
#>     Attrib V34    -0.0481246015849424
#>     Attrib V35    -0.30633117017047384
#>     Attrib V36    -0.47909276233678627
#>     Attrib V37    -0.6099458808430255
#>     Attrib V38    0.1086049883075692
#>     Attrib V39    0.05827500820998674
#>     Attrib V4    0.37486608795951243
#>     Attrib V40    -0.17534635029836274
#>     Attrib V41    -0.13762856359590142
#>     Attrib V42    -0.00330568862843913
#>     Attrib V43    0.45861796549372513
#>     Attrib V44    0.002369441156334827
#>     Attrib V45    -0.3032915575207313
#>     Attrib V46    0.00883416448592599
#>     Attrib V47    -0.14270828296389543
#>     Attrib V48    0.3987175482328267
#>     Attrib V49    0.3693033641906528
#>     Attrib V5    0.18024387853026277
#>     Attrib V50    -0.47586783235071106
#>     Attrib V51    0.07438363306378942
#>     Attrib V52    -0.41454820543142423
#>     Attrib V53    0.20703030187267152
#>     Attrib V54    0.8095691958879857
#>     Attrib V55    -0.008768226110977778
#>     Attrib V56    0.23931696152610438
#>     Attrib V57    0.34252553157687127
#>     Attrib V58    0.430784597061888
#>     Attrib V59    0.814908670522537
#>     Attrib V6    -0.11193727961465609
#>     Attrib V60    0.36243597082442797
#>     Attrib V7    0.1122839626728467
#>     Attrib V8    0.11260356181359753
#>     Attrib V9    0.1772923005511716
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.2345761072706075
#>     Attrib V1    -0.0045411019610759286
#>     Attrib V10    -0.12202946579076485
#>     Attrib V11    0.42285453211247026
#>     Attrib V12    0.08205638301744271
#>     Attrib V13    -0.37803606696715775
#>     Attrib V14    -0.38995779636802974
#>     Attrib V15    -0.08131395205621844
#>     Attrib V16    0.2597824989520902
#>     Attrib V17    0.5369375630902674
#>     Attrib V18    -0.02809578754542275
#>     Attrib V19    0.032623542957618025
#>     Attrib V2    -0.20343469692559454
#>     Attrib V20    0.14864109998489566
#>     Attrib V21    0.20408142337666982
#>     Attrib V22    0.3379386315673571
#>     Attrib V23    0.529685124776174
#>     Attrib V24    0.4230223161533769
#>     Attrib V25    -0.07742676075769427
#>     Attrib V26    -0.5378113473903864
#>     Attrib V27    -0.5623846849592155
#>     Attrib V28    -0.6863095303732311
#>     Attrib V29    -0.6677562657898712
#>     Attrib V3    -0.13526613712856156
#>     Attrib V30    0.31970324510789333
#>     Attrib V31    -0.8310881728224939
#>     Attrib V32    0.33905026096040236
#>     Attrib V33    0.826571234751312
#>     Attrib V34    0.01344930022135939
#>     Attrib V35    -0.4173879857640708
#>     Attrib V36    -0.8290375249393434
#>     Attrib V37    -1.0808869819246094
#>     Attrib V38    0.0650403072023688
#>     Attrib V39    0.0797343073559667
#>     Attrib V4    0.5089127611455061
#>     Attrib V40    -0.33219887319002567
#>     Attrib V41    -0.12877576604537158
#>     Attrib V42    0.02399014496078407
#>     Attrib V43    0.7140338913958295
#>     Attrib V44    0.0854773436105741
#>     Attrib V45    -0.3250055104938668
#>     Attrib V46    -0.02057398546517631
#>     Attrib V47    0.004409993933160417
#>     Attrib V48    0.665629019092156
#>     Attrib V49    0.6683077946686601
#>     Attrib V5    0.22909660979796395
#>     Attrib V50    -0.931926723412811
#>     Attrib V51    0.22449615521806865
#>     Attrib V52    -0.5296866946460569
#>     Attrib V53    0.2849333098308581
#>     Attrib V54    1.04977055536963
#>     Attrib V55    -0.22972011243680415
#>     Attrib V56    0.28165729873569373
#>     Attrib V57    0.1516272677579203
#>     Attrib V58    0.3984602730800188
#>     Attrib V59    1.0091110391425229
#>     Attrib V6    -0.19484144016195679
#>     Attrib V60    0.26348184695387844
#>     Attrib V7    0.06498080263905334
#>     Attrib V8    0.10665276311357787
#>     Attrib V9    0.39159757979021753
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.3404314421082113
#>     Attrib V1    0.007721523002492539
#>     Attrib V10    -0.06050220214320755
#>     Attrib V11    -0.4767782576135413
#>     Attrib V12    -0.4531890935642882
#>     Attrib V13    -0.002077311005519521
#>     Attrib V14    0.39243143855353335
#>     Attrib V15    0.40037380166216135
#>     Attrib V16    0.06296563900785639
#>     Attrib V17    -0.023725260457729363
#>     Attrib V18    0.2425419465206036
#>     Attrib V19    0.12616599712375176
#>     Attrib V2    -0.042693550097101615
#>     Attrib V20    -0.01556243175667969
#>     Attrib V21    -0.11016427631665732
#>     Attrib V22    -0.2197087122482278
#>     Attrib V23    -0.20958194631881114
#>     Attrib V24    -0.12140076376906149
#>     Attrib V25    0.13579173945265022
#>     Attrib V26    0.16316063972351325
#>     Attrib V27    -0.13538821668443957
#>     Attrib V28    -0.17161536572021474
#>     Attrib V29    -0.03881804429195989
#>     Attrib V3    0.16261608240561823
#>     Attrib V30    -0.33772489038354647
#>     Attrib V31    0.7185740281577088
#>     Attrib V32    -0.03392652564244998
#>     Attrib V33    -0.32922351104034603
#>     Attrib V34    -0.042035645302562936
#>     Attrib V35    0.15161813994198428
#>     Attrib V36    0.4185754314295405
#>     Attrib V37    0.4176153063969754
#>     Attrib V38    -0.19317753960874645
#>     Attrib V39    -0.2738966436611631
#>     Attrib V4    -0.260910946098095
#>     Attrib V40    0.18756127953375784
#>     Attrib V41    0.00400657487314607
#>     Attrib V42    0.05594472472861666
#>     Attrib V43    -0.3130054594262816
#>     Attrib V44    0.038727356018907165
#>     Attrib V45    -0.010783496556966567
#>     Attrib V46    -0.16946154167214067
#>     Attrib V47    -0.039241527774270195
#>     Attrib V48    -0.5914567124531499
#>     Attrib V49    -0.5712906741423657
#>     Attrib V5    -0.08369279292206512
#>     Attrib V50    0.7626153467358023
#>     Attrib V51    -0.2290713898737207
#>     Attrib V52    0.1512575941945598
#>     Attrib V53    -0.21739566353693254
#>     Attrib V54    -0.21298911468682397
#>     Attrib V55    0.46614879041024837
#>     Attrib V56    0.048616612609902375
#>     Attrib V57    0.1387604863271184
#>     Attrib V58    0.05314593114972542
#>     Attrib V59    -0.4127337716496538
#>     Attrib V6    0.03487136430027238
#>     Attrib V60    -0.1586549749900799
#>     Attrib V7    0.15554187972646177
#>     Attrib V8    0.10231328021545029
#>     Attrib V9    -0.22215007387855323
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.20300245919674667
#>     Attrib V1    0.5629347620584708
#>     Attrib V10    0.9241881577004509
#>     Attrib V11    1.5709621029797967
#>     Attrib V12    1.85605739135549
#>     Attrib V13    0.5854489401262538
#>     Attrib V14    -0.6311554448380973
#>     Attrib V15    -1.2335013422764396
#>     Attrib V16    -0.5619812507952073
#>     Attrib V17    -0.251182401351197
#>     Attrib V18    -0.5872339948975728
#>     Attrib V19    -0.550832821920324
#>     Attrib V2    1.0802713346761168
#>     Attrib V20    -0.3807179220502887
#>     Attrib V21    0.05965811962066726
#>     Attrib V22    0.3251373494842925
#>     Attrib V23    0.3622817754452321
#>     Attrib V24    -0.03659195819433057
#>     Attrib V25    0.13319457221984932
#>     Attrib V26    1.0554727910259603
#>     Attrib V27    1.6077599527709505
#>     Attrib V28    2.102372907879809
#>     Attrib V29    1.5015716029377848
#>     Attrib V3    0.0768741057225542
#>     Attrib V30    0.8925627777453744
#>     Attrib V31    -1.3689062508821774
#>     Attrib V32    -0.16268277000553313
#>     Attrib V33    -0.3816353938439868
#>     Attrib V34    -0.09039640588845867
#>     Attrib V35    -0.07939145563576953
#>     Attrib V36    -0.5625714414038651
#>     Attrib V37    -0.21261900943237044
#>     Attrib V38    0.1451744587594652
#>     Attrib V39    0.6276464486146502
#>     Attrib V4    0.685355307144847
#>     Attrib V40    -0.0062601194884843135
#>     Attrib V41    0.6810590412896431
#>     Attrib V42    -0.12306966899778929
#>     Attrib V43    0.14378330102228928
#>     Attrib V44    -0.029495767009962367
#>     Attrib V45    0.6957718615898622
#>     Attrib V46    0.9807667637480165
#>     Attrib V47    0.3894659270984816
#>     Attrib V48    1.1502340080559723
#>     Attrib V49    1.0885821129341575
#>     Attrib V5    0.21686482311817096
#>     Attrib V50    -0.9551441848800402
#>     Attrib V51    1.0945936754032244
#>     Attrib V52    1.484714490416029
#>     Attrib V53    0.9477521418488285
#>     Attrib V54    -0.4979541155903929
#>     Attrib V55    -1.0762413584288442
#>     Attrib V56    -0.2956633068147154
#>     Attrib V57    -0.85348498627389
#>     Attrib V58    -0.6625637133612264
#>     Attrib V59    -0.07579728199555133
#>     Attrib V6    0.5925894766955214
#>     Attrib V60    0.36498340429961373
#>     Attrib V7    -0.7781856335388461
#>     Attrib V8    -0.7840650912613859
#>     Attrib V9    0.8946688869216507
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.20387466196941884
#>     Attrib V1    0.09330540635967755
#>     Attrib V10    0.003583915747454028
#>     Attrib V11    -0.017122502444165945
#>     Attrib V12    -0.015712622254994407
#>     Attrib V13    -0.05908254162955844
#>     Attrib V14    0.08992193633037124
#>     Attrib V15    0.03325026649753795
#>     Attrib V16    0.053636736156744316
#>     Attrib V17    0.09532632532001012
#>     Attrib V18    -0.004627392268218171
#>     Attrib V19    0.051546438700582065
#>     Attrib V2    0.0881011217392317
#>     Attrib V20    0.028741448205069815
#>     Attrib V21    0.012871458611516506
#>     Attrib V22    -0.012491179399830512
#>     Attrib V23    -0.004977469922656464
#>     Attrib V24    -0.03527569504880392
#>     Attrib V25    -0.046652921639017436
#>     Attrib V26    -0.0722492257959739
#>     Attrib V27    -0.01612099445183054
#>     Attrib V28    -0.021113461071531427
#>     Attrib V29    -0.038024664002179125
#>     Attrib V3    0.048256127262039844
#>     Attrib V30    -0.016432864705664168
#>     Attrib V31    -0.13355343774210257
#>     Attrib V32    -0.057262925215962934
#>     Attrib V33    0.06355032074269375
#>     Attrib V34    0.014614335580003732
#>     Attrib V35    0.1072714791070403
#>     Attrib V36    0.10043314872940239
#>     Attrib V37    0.08418678059097698
#>     Attrib V38    0.07173712045087795
#>     Attrib V39    0.09346431541530657
#>     Attrib V4    0.17218846276710634
#>     Attrib V40    0.02652761484832213
#>     Attrib V41    -0.012082167889709408
#>     Attrib V42    0.021670714532622235
#>     Attrib V43    0.07502404960174283
#>     Attrib V44    0.07006003264402434
#>     Attrib V45    0.021688314995070505
#>     Attrib V46    0.049210736326370866
#>     Attrib V47    0.01720949345012222
#>     Attrib V48    0.0994961791199476
#>     Attrib V49    0.05692144546336952
#>     Attrib V5    0.0620825172307984
#>     Attrib V50    0.061264679671893724
#>     Attrib V51    0.05533487170020196
#>     Attrib V52    0.012173386279348053
#>     Attrib V53    0.058677527819098456
#>     Attrib V54    0.09004110004668435
#>     Attrib V55    0.07165438987156755
#>     Attrib V56    0.08065467028409332
#>     Attrib V57    0.13465687252099362
#>     Attrib V58    0.11320952982300357
#>     Attrib V59    0.13577374579180715
#>     Attrib V6    0.07516753721611162
#>     Attrib V60    0.17006371191615677
#>     Attrib V7    0.012015300871803586
#>     Attrib V8    0.08230206228375841
#>     Attrib V9    0.06592760166535985
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.317390385640461
#>     Attrib V1    0.13730123151244855
#>     Attrib V10    -0.09866427554644149
#>     Attrib V11    0.24270096265783334
#>     Attrib V12    -0.06945164790509463
#>     Attrib V13    -0.38557635829038067
#>     Attrib V14    -0.30802877490009306
#>     Attrib V15    0.027211550352027086
#>     Attrib V16    0.2877024304172939
#>     Attrib V17    0.3423361539626335
#>     Attrib V18    -0.027755550032382052
#>     Attrib V19    -0.04738455091037171
#>     Attrib V2    -0.062328596297472165
#>     Attrib V20    0.17900253211828188
#>     Attrib V21    0.32593006636231636
#>     Attrib V22    0.25907037386632575
#>     Attrib V23    0.26758297855125956
#>     Attrib V24    0.24866036456683197
#>     Attrib V25    -0.21816519380260377
#>     Attrib V26    -0.4754258520223222
#>     Attrib V27    -0.5315153179159721
#>     Attrib V28    -0.5863056766051116
#>     Attrib V29    -0.484865618732765
#>     Attrib V3    -0.1573652578076174
#>     Attrib V30    0.25276360985222635
#>     Attrib V31    -0.7799470848828467
#>     Attrib V32    0.1837710097219069
#>     Attrib V33    0.5945496551643964
#>     Attrib V34    0.028522422043947126
#>     Attrib V35    -0.33315442586904187
#>     Attrib V36    -0.5876618282038462
#>     Attrib V37    -0.7967822872473556
#>     Attrib V38    0.14673993109429592
#>     Attrib V39    0.11081928895122968
#>     Attrib V4    0.41427065255298345
#>     Attrib V40    -0.3363919378860053
#>     Attrib V41    -0.11312544603143268
#>     Attrib V42    0.009856461664999417
#>     Attrib V43    0.4789816396538213
#>     Attrib V44    0.055894707530727665
#>     Attrib V45    -0.1737830886035729
#>     Attrib V46    -0.019716664468175
#>     Attrib V47    -0.14727516270265745
#>     Attrib V48    0.5519596280399982
#>     Attrib V49    0.47759539222123826
#>     Attrib V5    0.1752012484624631
#>     Attrib V50    -0.6561137461341736
#>     Attrib V51    0.15689048873144748
#>     Attrib V52    -0.4279929436660989
#>     Attrib V53    0.2626567799941995
#>     Attrib V54    0.8987649104628839
#>     Attrib V55    -0.13349822676758233
#>     Attrib V56    0.13871519480884734
#>     Attrib V57    0.2455662518140947
#>     Attrib V58    0.36363838057737236
#>     Attrib V59    0.8920626813433925
#>     Attrib V6    -0.10712187086914597
#>     Attrib V60    0.31575709302475835
#>     Attrib V7    0.0677450654347248
#>     Attrib V8    0.17877972305236747
#>     Attrib V9    0.3511601786948189
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.19005050937653567
#>     Attrib V1    -0.1166034712308525
#>     Attrib V10    -1.3359124116047005
#>     Attrib V11    -1.955068935496032
#>     Attrib V12    -2.242017729287905
#>     Attrib V13    -0.5517279125684749
#>     Attrib V14    1.3196494161467462
#>     Attrib V15    1.838619670208248
#>     Attrib V16    0.5329948686893823
#>     Attrib V17    -0.4754401046710404
#>     Attrib V18    -0.03610708073878511
#>     Attrib V19    -0.26032530761740047
#>     Attrib V2    -0.6409136573071923
#>     Attrib V20    0.31006172840332996
#>     Attrib V21    0.07185186960522437
#>     Attrib V22    -0.6732167001104727
#>     Attrib V23    -1.2403424907749414
#>     Attrib V24    -0.6419769415745338
#>     Attrib V25    -0.4044243113773126
#>     Attrib V26    -0.82695934528446
#>     Attrib V27    -1.3603109791941836
#>     Attrib V28    -1.5429260949176111
#>     Attrib V29    -0.13475723344439103
#>     Attrib V3    0.2916068500429972
#>     Attrib V30    -0.6591804321587253
#>     Attrib V31    1.0808934797194811
#>     Attrib V32    -0.2275679325298875
#>     Attrib V33    -0.05200864279479645
#>     Attrib V34    -0.35677454272176407
#>     Attrib V35    -0.2076860505049619
#>     Attrib V36    0.8264882053787269
#>     Attrib V37    1.0733463696503807
#>     Attrib V38    0.10377688388405466
#>     Attrib V39    -0.7722823746302641
#>     Attrib V4    -0.45390540243663585
#>     Attrib V40    -0.18674174276485855
#>     Attrib V41    -0.3950881504432407
#>     Attrib V42    0.4506920149531533
#>     Attrib V43    -0.28257312696688064
#>     Attrib V44    0.0030438345419166444
#>     Attrib V45    -0.4892358967821511
#>     Attrib V46    -1.0414659923545388
#>     Attrib V47    -0.8669569257687825
#>     Attrib V48    -1.7039872409953976
#>     Attrib V49    -1.6736891306204373
#>     Attrib V5    -0.02260619628088458
#>     Attrib V50    1.1390557066010498
#>     Attrib V51    -1.4908799442005622
#>     Attrib V52    -1.556401796039162
#>     Attrib V53    -0.8060736955251848
#>     Attrib V54    0.808683631842832
#>     Attrib V55    1.31320864278267
#>     Attrib V56    0.3166852189435188
#>     Attrib V57    1.4257292851911414
#>     Attrib V58    0.9348187836013766
#>     Attrib V59    0.47156382690402615
#>     Attrib V6    -0.4909166436092915
#>     Attrib V60    -0.05688840231254265
#>     Attrib V7    0.7020544812952695
#>     Attrib V8    0.8630623110491445
#>     Attrib V9    -1.2641462215488517
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.055522774438128246
#>     Attrib V1    0.08715259700152969
#>     Attrib V10    -0.12434463906415055
#>     Attrib V11    0.10071026756760286
#>     Attrib V12    -0.06141115691497158
#>     Attrib V13    -0.1845362324598121
#>     Attrib V14    0.013838149217670296
#>     Attrib V15    0.0780574501513556
#>     Attrib V16    0.13816012817028953
#>     Attrib V17    0.1461599823781045
#>     Attrib V18    -0.02417503922813583
#>     Attrib V19    -0.06824606421296693
#>     Attrib V2    0.026080272066461286
#>     Attrib V20    0.17130157890609926
#>     Attrib V21    0.18340676311897114
#>     Attrib V22    0.11938727867709861
#>     Attrib V23    0.06697366557922114
#>     Attrib V24    0.07451536641211635
#>     Attrib V25    -0.11979380435320948
#>     Attrib V26    -0.28501615373721423
#>     Attrib V27    -0.25815609586506
#>     Attrib V28    -0.2504388244170667
#>     Attrib V29    -0.1776285159142527
#>     Attrib V3    0.010478320077507876
#>     Attrib V30    0.002883518515416136
#>     Attrib V31    -0.4739126397783851
#>     Attrib V32    -0.02814552322945516
#>     Attrib V33    0.2030944216041864
#>     Attrib V34    0.017308683492765767
#>     Attrib V35    -0.06803361827795888
#>     Attrib V36    -0.2040379607489008
#>     Attrib V37    -0.3032424609997576
#>     Attrib V38    0.11362725408728143
#>     Attrib V39    0.10850477422559547
#>     Attrib V4    0.23603754013054043
#>     Attrib V40    -0.14476491152925292
#>     Attrib V41    -0.07985932781044863
#>     Attrib V42    -0.05066764849531364
#>     Attrib V43    0.2597997411661827
#>     Attrib V44    -0.0679183642018456
#>     Attrib V45    -0.02448274393574572
#>     Attrib V46    0.0829658922106762
#>     Attrib V47    -0.006541415661671181
#>     Attrib V48    0.23651636160895298
#>     Attrib V49    0.25178513154576654
#>     Attrib V5    0.10590289970944068
#>     Attrib V50    -0.17247406129337392
#>     Attrib V51    0.13561553222861603
#>     Attrib V52    -0.09238882019848102
#>     Attrib V53    0.1522082113230111
#>     Attrib V54    0.38760028716707234
#>     Attrib V55    0.08681496494657841
#>     Attrib V56    0.11728850388780188
#>     Attrib V57    0.17539532862601315
#>     Attrib V58    0.2113236099781746
#>     Attrib V59    0.45641526856368253
#>     Attrib V6    -0.033680881301438356
#>     Attrib V60    0.25312117967035075
#>     Attrib V7    0.044379092708276655
#>     Attrib V8    0.130049982252569
#>     Attrib V9    0.14086451704409222
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    0.10695479330264569
#>     Attrib V1    0.14946444879461157
#>     Attrib V10    -0.09071211563336438
#>     Attrib V11    0.08143414745386746
#>     Attrib V12    -0.05684502778195425
#>     Attrib V13    -0.1932037957953481
#>     Attrib V14    -0.09215115336767389
#>     Attrib V15    0.0716274490116752
#>     Attrib V16    0.19056048940623935
#>     Attrib V17    0.24196702931429598
#>     Attrib V18    -0.03703100790414899
#>     Attrib V19    -0.04279598901817871
#>     Attrib V2    0.03529683906363645
#>     Attrib V20    0.15538891739687255
#>     Attrib V21    0.2226827927440724
#>     Attrib V22    0.13244002563668283
#>     Attrib V23    0.16889317788254354
#>     Attrib V24    0.07445789379450919
#>     Attrib V25    -0.1508779792900343
#>     Attrib V26    -0.2925884095457346
#>     Attrib V27    -0.3304338121221133
#>     Attrib V28    -0.29737386827939094
#>     Attrib V29    -0.3103833827401231
#>     Attrib V3    -0.06957838325516617
#>     Attrib V30    0.12106589846344855
#>     Attrib V31    -0.515926044357465
#>     Attrib V32    -0.00920154457693538
#>     Attrib V33    0.2611123125917545
#>     Attrib V34    -0.0175766426832823
#>     Attrib V35    -0.12860982670754684
#>     Attrib V36    -0.3051057196625932
#>     Attrib V37    -0.4183299099136402
#>     Attrib V38    0.09553624035201772
#>     Attrib V39    0.14778493173053162
#>     Attrib V4    0.33084593441081395
#>     Attrib V40    -0.17026128328687717
#>     Attrib V41    -0.10292337858461836
#>     Attrib V42    0.02070310916972591
#>     Attrib V43    0.28332393362477426
#>     Attrib V44    -0.062424155116492644
#>     Attrib V45    -0.13350145004947933
#>     Attrib V46    0.035705124744711346
#>     Attrib V47    -0.09223251388396388
#>     Attrib V48    0.3223876253506442
#>     Attrib V49    0.2941298163343419
#>     Attrib V5    0.09444228696792996
#>     Attrib V50    -0.3322397153652023
#>     Attrib V51    0.10502043101600997
#>     Attrib V52    -0.2077769652426926
#>     Attrib V53    0.20730325570391578
#>     Attrib V54    0.5329482668491715
#>     Attrib V55    -0.03771785089010115
#>     Attrib V56    0.1624278257360295
#>     Attrib V57    0.1484208102145252
#>     Attrib V58    0.28676056706765163
#>     Attrib V59    0.6353295541576094
#>     Attrib V6    -0.07875880879311241
#>     Attrib V60    0.2962046910663655
#>     Attrib V7    0.0038862187838369904
#>     Attrib V8    0.09159023952963326
#>     Attrib V9    0.13659330422828703
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.0832669916946927
#>     Attrib V1    0.1454044266202835
#>     Attrib V10    -0.1601001519587154
#>     Attrib V11    0.06855529442192557
#>     Attrib V12    -0.2499638161515527
#>     Attrib V13    -0.31496165538913995
#>     Attrib V14    -0.07239955656738428
#>     Attrib V15    0.14945185580262613
#>     Attrib V16    0.26344673796022144
#>     Attrib V17    0.2858858211786611
#>     Attrib V18    -0.026910892604457788
#>     Attrib V19    -0.020028305111826718
#>     Attrib V2    0.03172937859796753
#>     Attrib V20    0.25763366787956576
#>     Attrib V21    0.1863117356051332
#>     Attrib V22    0.17127288216244105
#>     Attrib V23    0.18431655219930917
#>     Attrib V24    0.12855005796009966
#>     Attrib V25    -0.288729472158714
#>     Attrib V26    -0.4532347185414581
#>     Attrib V27    -0.5105300277512999
#>     Attrib V28    -0.5512709180820403
#>     Attrib V29    -0.4132938012309031
#>     Attrib V3    -0.0808921510446446
#>     Attrib V30    0.08532013073950746
#>     Attrib V31    -0.5564227646327928
#>     Attrib V32    0.01464530625928886
#>     Attrib V33    0.3972009714353413
#>     Attrib V34    0.02252574369146853
#>     Attrib V35    -0.1634661989591785
#>     Attrib V36    -0.3623641676799805
#>     Attrib V37    -0.4694838150029496
#>     Attrib V38    0.18887436271140565
#>     Attrib V39    0.07378162298015883
#>     Attrib V4    0.34038998089006717
#>     Attrib V40    -0.16842638852152084
#>     Attrib V41    -0.14974780617712719
#>     Attrib V42    -0.034668831085397575
#>     Attrib V43    0.362709437687803
#>     Attrib V44    0.058030687892888635
#>     Attrib V45    -0.19776712928740647
#>     Attrib V46    0.013594007453545429
#>     Attrib V47    -0.08750890770844459
#>     Attrib V48    0.2942717000147328
#>     Attrib V49    0.2852833652236508
#>     Attrib V5    0.1257004466583389
#>     Attrib V50    -0.39412356117156816
#>     Attrib V51    0.06272948948351603
#>     Attrib V52    -0.32092848639195964
#>     Attrib V53    0.19480051092006231
#>     Attrib V54    0.6654701799020621
#>     Attrib V55    0.021959705183964996
#>     Attrib V56    0.14449548488770186
#>     Attrib V57    0.2448893590923817
#>     Attrib V58    0.30030970987847766
#>     Attrib V59    0.6702920494590985
#>     Attrib V6    -0.10040513010177551
#>     Attrib V60    0.28069108101674134
#>     Attrib V7    0.1286408248261411
#>     Attrib V8    0.2072846587413816
#>     Attrib V9    0.22232965568819515
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.02897081677846376
#>     Attrib V1    0.16264601859173647
#>     Attrib V10    -0.1275544512842283
#>     Attrib V11    0.054027046104638266
#>     Attrib V12    -0.11652992244350772
#>     Attrib V13    -0.221239353123099
#>     Attrib V14    0.02368232212663134
#>     Attrib V15    0.09257336811389329
#>     Attrib V16    0.17940643119123875
#>     Attrib V17    0.12171988081837312
#>     Attrib V18    0.03983277590831144
#>     Attrib V19    -0.05237991641417156
#>     Attrib V2    0.036564012178852454
#>     Attrib V20    0.17331654759039308
#>     Attrib V21    0.19082290721556977
#>     Attrib V22    0.08620025315324677
#>     Attrib V23    0.12058534906078738
#>     Attrib V24    0.016969179450823733
#>     Attrib V25    -0.21783687837097235
#>     Attrib V26    -0.25946336332419645
#>     Attrib V27    -0.22833877407158396
#>     Attrib V28    -0.18028226015212673
#>     Attrib V29    -0.18385972990708926
#>     Attrib V3    0.020597381147074052
#>     Attrib V30    0.08889469809028049
#>     Attrib V31    -0.4971835339863959
#>     Attrib V32    -0.07660602430151144
#>     Attrib V33    0.20025245986606285
#>     Attrib V34    0.021898808290525824
#>     Attrib V35    -0.04887926099197997
#>     Attrib V36    -0.0971573230977838
#>     Attrib V37    -0.2539303907059399
#>     Attrib V38    0.11545410016019453
#>     Attrib V39    0.11673374021514249
#>     Attrib V4    0.2388402027540174
#>     Attrib V40    -0.15876714700587458
#>     Attrib V41    -0.12863557059520309
#>     Attrib V42    0.007181343166335173
#>     Attrib V43    0.17613087773254768
#>     Attrib V44    0.027694345635210782
#>     Attrib V45    -0.005126362884066557
#>     Attrib V46    0.08262374671823142
#>     Attrib V47    -0.04498786121715056
#>     Attrib V48    0.17768905212472022
#>     Attrib V49    0.2828673975561
#>     Attrib V5    0.13469545899079918
#>     Attrib V50    -0.19102795536948408
#>     Attrib V51    0.10609915811107067
#>     Attrib V52    -0.09118609722231523
#>     Attrib V53    0.16391464435227956
#>     Attrib V54    0.3409245354084707
#>     Attrib V55    0.019601710197814686
#>     Attrib V56    0.08124065877842475
#>     Attrib V57    0.15752039400620493
#>     Attrib V58    0.2774451020045286
#>     Attrib V59    0.43557669634769025
#>     Attrib V6    -0.025259136327944798
#>     Attrib V60    0.2113525762424726
#>     Attrib V7    0.06016091644705697
#>     Attrib V8    0.15098495480389532
#>     Attrib V9    0.16795717210802816
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
