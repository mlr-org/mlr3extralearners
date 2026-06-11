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
#>     Threshold    -0.18238965766814708
#>     Node 2    2.1603635001066372
#>     Node 3    1.3997935200997427
#>     Node 4    1.361434029009719
#>     Node 5    -1.8306464086713286
#>     Node 6    1.054143001477531
#>     Node 7    2.0275997230715426
#>     Node 8    1.8112155797635323
#>     Node 9    2.739774638205387
#>     Node 10    -1.2282513883355708
#>     Node 11    1.3405572636969951
#>     Node 12    1.4807374041609842
#>     Node 13    -0.4924816428746668
#>     Node 14    1.7323518456792275
#>     Node 15    -2.4780111002222425
#>     Node 16    -0.9580875282122211
#>     Node 17    1.316305932271402
#>     Node 18    -0.15877895421005214
#>     Node 19    1.4625266441751397
#>     Node 20    1.491833822067679
#>     Node 21    -1.835616355896497
#>     Node 22    1.0458618974676628
#>     Node 23    0.7905003929016121
#>     Node 24    -1.7609421452397667
#>     Node 25    3.642721368115658
#>     Node 26    -1.0423867069069823
#>     Node 27    2.7924628696873164
#>     Node 28    -2.121484845849025
#>     Node 29    1.3147274716785753
#>     Node 30    -1.8956698641476353
#>     Node 31    1.6378354810184854
#>     Node 32    0.6802843078759099
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.21577958935288435
#>     Node 2    -2.2095554418043486
#>     Node 3    -1.3904187326029678
#>     Node 4    -1.3276147468789572
#>     Node 5    1.8390707731951168
#>     Node 6    -1.0358535207478938
#>     Node 7    -2.007264577530674
#>     Node 8    -1.8474120407156418
#>     Node 9    -2.7248460206991583
#>     Node 10    1.1604600979988586
#>     Node 11    -1.3102885687865076
#>     Node 12    -1.5642545482166568
#>     Node 13    0.5461328183000379
#>     Node 14    -1.6702288450029452
#>     Node 15    2.462569795799949
#>     Node 16    0.9429286114940892
#>     Node 17    -1.2928997900183816
#>     Node 18    0.19625777618253926
#>     Node 19    -1.458366132692799
#>     Node 20    -1.4824064336354037
#>     Node 21    1.8918275421802102
#>     Node 22    -1.0973122314424943
#>     Node 23    -0.8357389097764203
#>     Node 24    1.747653843473703
#>     Node 25    -3.6160955685127054
#>     Node 26    0.9615009823731671
#>     Node 27    -2.8351550471146507
#>     Node 28    2.0671327320405517
#>     Node 29    -1.3535931481300127
#>     Node 30    1.9712846026000308
#>     Node 31    -1.5954360116664907
#>     Node 32    -0.6997921131062411
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.15662373461816306
#>     Attrib V1    0.048826008512705896
#>     Attrib V10    0.6990888955751946
#>     Attrib V11    0.7184279711355848
#>     Attrib V12    0.4712657778896784
#>     Attrib V13    -0.08479501202597411
#>     Attrib V14    -0.5136508514826184
#>     Attrib V15    -0.4869472891843251
#>     Attrib V16    -0.3000408938526793
#>     Attrib V17    -0.5377172477496969
#>     Attrib V18    -0.3193586902721967
#>     Attrib V19    0.5320737973138124
#>     Attrib V2    0.06493497272594523
#>     Attrib V20    -0.0034334463876736854
#>     Attrib V21    0.821783694743024
#>     Attrib V22    1.0248146129204614
#>     Attrib V23    0.03607199196513084
#>     Attrib V24    0.1540381381617092
#>     Attrib V25    0.26459443115667797
#>     Attrib V26    -0.26632907462165656
#>     Attrib V27    0.48535160205828826
#>     Attrib V28    0.5445978784163762
#>     Attrib V29    0.4891728821929085
#>     Attrib V3    -0.11435317863581104
#>     Attrib V30    1.1901930064537105
#>     Attrib V31    -1.0258587670219619
#>     Attrib V32    -0.003730339377380169
#>     Attrib V33    0.256564403138577
#>     Attrib V34    -0.3113615998246665
#>     Attrib V35    -0.32675660462120487
#>     Attrib V36    -0.5484996414083733
#>     Attrib V37    -0.05486294945446877
#>     Attrib V38    0.42391299540430044
#>     Attrib V39    0.7180592408493465
#>     Attrib V4    -0.10255949786785537
#>     Attrib V40    -0.0819518355528448
#>     Attrib V41    0.6712774174720805
#>     Attrib V42    0.3537684630357428
#>     Attrib V43    0.42321934903026714
#>     Attrib V44    0.3701348424241575
#>     Attrib V45    0.045991762340758045
#>     Attrib V46    -0.09095892809645582
#>     Attrib V47    -0.123408669470594
#>     Attrib V48    0.4503376911174409
#>     Attrib V49    0.8516523530224046
#>     Attrib V5    -0.19431424284172535
#>     Attrib V50    -1.0442392924502382
#>     Attrib V51    0.5370510460450179
#>     Attrib V52    0.376949157242742
#>     Attrib V53    0.1656840869871678
#>     Attrib V54    -0.1265410623277682
#>     Attrib V55    -0.7945115924315647
#>     Attrib V56    0.10088214099490461
#>     Attrib V57    -0.9155554276068498
#>     Attrib V58    0.24499491371652343
#>     Attrib V59    0.1761409574183939
#>     Attrib V6    0.3027579629645907
#>     Attrib V60    0.4987798927643948
#>     Attrib V7    -0.23274979142601923
#>     Attrib V8    0.1848052563253108
#>     Attrib V9    0.821297537322223
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.004701632026455294
#>     Attrib V1    0.2616986243520635
#>     Attrib V10    0.26639751937212114
#>     Attrib V11    0.22360151418716498
#>     Attrib V12    0.06619301463393475
#>     Attrib V13    -0.11325902845484856
#>     Attrib V14    -0.10327364715828428
#>     Attrib V15    0.10284745676825352
#>     Attrib V16    0.028409334468670975
#>     Attrib V17    -0.04947004987169169
#>     Attrib V18    0.005211452859062016
#>     Attrib V19    0.44974368633008593
#>     Attrib V2    0.0818434213065679
#>     Attrib V20    0.3672556939983677
#>     Attrib V21    0.6719709851097458
#>     Attrib V22    0.5512883132297025
#>     Attrib V23    0.026402437045834594
#>     Attrib V24    -0.07616029907813904
#>     Attrib V25    -0.19185323868849216
#>     Attrib V26    -0.6899225801498183
#>     Attrib V27    -0.4559061047394012
#>     Attrib V28    -0.4096613466668954
#>     Attrib V29    -0.3345686938349096
#>     Attrib V3    -0.04536473992696969
#>     Attrib V30    0.36432671541057
#>     Attrib V31    -0.7220536240695897
#>     Attrib V32    -0.21691696521601164
#>     Attrib V33    0.1865351446118941
#>     Attrib V34    -0.20390790073333598
#>     Attrib V35    -0.2667028853161694
#>     Attrib V36    -0.45262711101921216
#>     Attrib V37    -0.2577431290333252
#>     Attrib V38    0.13879558249761892
#>     Attrib V39    0.23352656469793295
#>     Attrib V4    0.21125836518038443
#>     Attrib V40    -0.17774905139649666
#>     Attrib V41    0.14076129591374936
#>     Attrib V42    0.23408508491820706
#>     Attrib V43    0.23481439662638054
#>     Attrib V44    0.24238932471542243
#>     Attrib V45    0.0500238341247408
#>     Attrib V46    -0.14969102927353356
#>     Attrib V47    -0.19342022378897775
#>     Attrib V48    0.022233342407837104
#>     Attrib V49    0.13360492727928533
#>     Attrib V5    -0.0459505313585923
#>     Attrib V50    -0.2355886447487988
#>     Attrib V51    0.16812922151881227
#>     Attrib V52    0.09713788934649425
#>     Attrib V53    0.05897075611162051
#>     Attrib V54    0.18203882093665785
#>     Attrib V55    0.03620904199220114
#>     Attrib V56    0.21143976832547173
#>     Attrib V57    -0.05724792770209376
#>     Attrib V58    0.39698995390400255
#>     Attrib V59    0.3113947156578388
#>     Attrib V6    0.11208395713424812
#>     Attrib V60    0.4294011407359649
#>     Attrib V7    0.17083469780141547
#>     Attrib V8    0.21695639259713495
#>     Attrib V9    0.31300818013942916
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.005892687513825641
#>     Attrib V1    0.225310064753469
#>     Attrib V10    0.252664750267338
#>     Attrib V11    0.2349903496223216
#>     Attrib V12    0.028937384723484814
#>     Attrib V13    -0.13396745522784653
#>     Attrib V14    -0.10922290348192448
#>     Attrib V15    0.07065772455000886
#>     Attrib V16    0.030475197909591106
#>     Attrib V17    -0.02347960755492176
#>     Attrib V18    0.032726055071915235
#>     Attrib V19    0.43165348468891046
#>     Attrib V2    0.020462153384723476
#>     Attrib V20    0.34770235591575255
#>     Attrib V21    0.7348735942792036
#>     Attrib V22    0.5098268311798937
#>     Attrib V23    0.03181259096402734
#>     Attrib V24    -0.06376686356121941
#>     Attrib V25    -0.2166141852490188
#>     Attrib V26    -0.6650939587183358
#>     Attrib V27    -0.4581754310599642
#>     Attrib V28    -0.34045782068837466
#>     Attrib V29    -0.21016073453928344
#>     Attrib V3    -0.031050086522481733
#>     Attrib V30    0.3443208466178329
#>     Attrib V31    -0.7365253745906474
#>     Attrib V32    -0.23127680336508294
#>     Attrib V33    0.21530621258353635
#>     Attrib V34    -0.1358019011380754
#>     Attrib V35    -0.23571182659371911
#>     Attrib V36    -0.4334481424953454
#>     Attrib V37    -0.2346411896679739
#>     Attrib V38    0.15650224130162846
#>     Attrib V39    0.25430622303957734
#>     Attrib V4    0.193648111045118
#>     Attrib V40    -0.176770086674157
#>     Attrib V41    0.11643411711717794
#>     Attrib V42    0.24370941745111638
#>     Attrib V43    0.2147628723766849
#>     Attrib V44    0.255850611271281
#>     Attrib V45    0.12230188999661544
#>     Attrib V46    -0.16818256760603703
#>     Attrib V47    -0.25055187870160983
#>     Attrib V48    0.07607542203656266
#>     Attrib V49    0.20684705781913623
#>     Attrib V5    0.013967692035804419
#>     Attrib V50    -0.25923417722582615
#>     Attrib V51    0.2219603458879766
#>     Attrib V52    0.04372420775520303
#>     Attrib V53    0.11796813859532959
#>     Attrib V54    0.07205073855309968
#>     Attrib V55    -0.05812880353398102
#>     Attrib V56    0.19268505932770458
#>     Attrib V57    -0.07890273790352172
#>     Attrib V58    0.3333934852624708
#>     Attrib V59    0.2887977200984858
#>     Attrib V6    0.12922678066148321
#>     Attrib V60    0.4194971919878717
#>     Attrib V7    0.20033833736500617
#>     Attrib V8    0.1448837341537378
#>     Attrib V9    0.3650013934606082
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.21087914351098894
#>     Attrib V1    -0.04580100433340872
#>     Attrib V10    -0.5807502919831702
#>     Attrib V11    -0.6494331142863243
#>     Attrib V12    -0.534688632875552
#>     Attrib V13    -0.07960883886702066
#>     Attrib V14    0.3688637203194623
#>     Attrib V15    0.312479360000165
#>     Attrib V16    0.2100915689173284
#>     Attrib V17    0.5438533456525477
#>     Attrib V18    0.3121476775072127
#>     Attrib V19    -0.470091807817698
#>     Attrib V2    -0.03630435806686394
#>     Attrib V20    -0.054979602286581664
#>     Attrib V21    -0.7174493295317224
#>     Attrib V22    -0.8545525535270845
#>     Attrib V23    0.18005885791331513
#>     Attrib V24    0.020927009148620723
#>     Attrib V25    -0.04782119667012322
#>     Attrib V26    0.5476917030907833
#>     Attrib V27    -0.020269645480124457
#>     Attrib V28    -0.12603454607172265
#>     Attrib V29    -0.17396985377067375
#>     Attrib V3    0.10016341806017734
#>     Attrib V30    -0.8653377627700833
#>     Attrib V31    0.9336850634804484
#>     Attrib V32    -0.029368517489762096
#>     Attrib V33    -0.29699701762176767
#>     Attrib V34    0.31634033476925255
#>     Attrib V35    0.42527194606515073
#>     Attrib V36    0.7158159315632999
#>     Attrib V37    0.24699442895108298
#>     Attrib V38    -0.3522766266632961
#>     Attrib V39    -0.5137746061752677
#>     Attrib V4    -0.09287635680467707
#>     Attrib V40    0.25200483485528935
#>     Attrib V41    -0.49218391153071855
#>     Attrib V42    -0.1604391995061325
#>     Attrib V43    -0.2260252295148613
#>     Attrib V44    -0.11694412469289935
#>     Attrib V45    0.03235178962805018
#>     Attrib V46    0.13970938195021407
#>     Attrib V47    0.23445218837416149
#>     Attrib V48    -0.2691315351170008
#>     Attrib V49    -0.5053350417107944
#>     Attrib V5    0.23124982555010162
#>     Attrib V50    0.976788341927399
#>     Attrib V51    -0.40568607958160535
#>     Attrib V52    -0.287035029765083
#>     Attrib V53    -0.20810119353202372
#>     Attrib V54    0.09545636589314103
#>     Attrib V55    0.5567177198032216
#>     Attrib V56    -0.03650885036037379
#>     Attrib V57    0.5338970694373841
#>     Attrib V58    -0.2670567035740826
#>     Attrib V59    -0.12401371100502269
#>     Attrib V6    -0.20899527178047073
#>     Attrib V60    -0.3489294012424415
#>     Attrib V7    0.14153142530355053
#>     Attrib V8    -0.013068585782919775
#>     Attrib V9    -0.666096076150149
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.047861728716227556
#>     Attrib V1    0.25203560667303
#>     Attrib V10    0.11880900028309681
#>     Attrib V11    0.15133397475331561
#>     Attrib V12    0.08941686618322232
#>     Attrib V13    -0.0952171531798361
#>     Attrib V14    -0.04907831930333875
#>     Attrib V15    0.07286153900699589
#>     Attrib V16    0.13247439970067507
#>     Attrib V17    -5.9369559855623016E-5
#>     Attrib V18    0.10444557181701343
#>     Attrib V19    0.3205207001620558
#>     Attrib V2    0.07953121276150614
#>     Attrib V20    0.31768531984539083
#>     Attrib V21    0.5125731118832866
#>     Attrib V22    0.3123289469524807
#>     Attrib V23    -0.009394828285782654
#>     Attrib V24    -0.04723586696162622
#>     Attrib V25    -0.15184669614474336
#>     Attrib V26    -0.5180814306101335
#>     Attrib V27    -0.3130336937840702
#>     Attrib V28    -0.3589060781506942
#>     Attrib V29    -0.29896400447099003
#>     Attrib V3    0.004302964771504458
#>     Attrib V30    0.12145913838262606
#>     Attrib V31    -0.5605241687062573
#>     Attrib V32    -0.18684244232778624
#>     Attrib V33    0.09404785045121476
#>     Attrib V34    -0.0918537589853535
#>     Attrib V35    -0.10717384547729748
#>     Attrib V36    -0.29832186667515553
#>     Attrib V37    -0.16517087315500287
#>     Attrib V38    0.09984623914844688
#>     Attrib V39    0.14479023292875096
#>     Attrib V4    0.2013794199693256
#>     Attrib V40    -0.15777567995997774
#>     Attrib V41    0.11711480869686414
#>     Attrib V42    0.18805721069115358
#>     Attrib V43    0.16454371496422174
#>     Attrib V44    0.11283133064428062
#>     Attrib V45    0.059913242192822395
#>     Attrib V46    -0.06873826056579563
#>     Attrib V47    -0.17003333500648032
#>     Attrib V48    -0.030471978786764418
#>     Attrib V49    0.08555507864524377
#>     Attrib V5    0.0031581422279351305
#>     Attrib V50    -0.052938116354033816
#>     Attrib V51    0.1126994761531827
#>     Attrib V52    0.03223562910937189
#>     Attrib V53    0.13850899895384303
#>     Attrib V54    0.07916577847357517
#>     Attrib V55    0.060384127983831845
#>     Attrib V56    0.17177721494247472
#>     Attrib V57    0.04375931198840634
#>     Attrib V58    0.304382931632488
#>     Attrib V59    0.3008943050283072
#>     Attrib V6    0.169263843015402
#>     Attrib V60    0.35726732981955683
#>     Attrib V7    0.1899460223834948
#>     Attrib V8    0.17714661947546367
#>     Attrib V9    0.24091313777282666
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.17959202455585757
#>     Attrib V1    0.0745528836194351
#>     Attrib V10    0.468455199328492
#>     Attrib V11    0.6399754637735914
#>     Attrib V12    0.4578051864276735
#>     Attrib V13    0.0067330773792283315
#>     Attrib V14    -0.41469323800016505
#>     Attrib V15    -0.5103691881850677
#>     Attrib V16    -0.29075291106515977
#>     Attrib V17    -0.5235138275797135
#>     Attrib V18    -0.30858690625646484
#>     Attrib V19    0.4102431980321141
#>     Attrib V2    0.030979724318710815
#>     Attrib V20    -0.143915590722497
#>     Attrib V21    0.42135192821451817
#>     Attrib V22    0.6001804797344551
#>     Attrib V23    0.07343892305663544
#>     Attrib V24    0.32552143346060963
#>     Attrib V25    0.5144685493748342
#>     Attrib V26    0.3088392762470301
#>     Attrib V27    0.8106412222786901
#>     Attrib V28    0.90730928739635
#>     Attrib V29    0.7296008096456187
#>     Attrib V3    -0.016906342540079083
#>     Attrib V30    0.8772453047715646
#>     Attrib V31    -0.5880620233610279
#>     Attrib V32    -0.13059437324687032
#>     Attrib V33    -0.013840995846005101
#>     Attrib V34    -0.17302232825564712
#>     Attrib V35    -0.05440410272581524
#>     Attrib V36    -0.349351739189519
#>     Attrib V37    -0.021323181033344896
#>     Attrib V38    0.226782506654309
#>     Attrib V39    0.6341510131364297
#>     Attrib V4    0.06430859751104642
#>     Attrib V40    0.11234227161202186
#>     Attrib V41    0.7455279884504855
#>     Attrib V42    0.30504184189930805
#>     Attrib V43    0.3043869936341055
#>     Attrib V44    0.22263976545811698
#>     Attrib V45    0.121607558883925
#>     Attrib V46    0.24359876930494273
#>     Attrib V47    0.22211862210176958
#>     Attrib V48    0.5330202344831464
#>     Attrib V49    0.9740977624855488
#>     Attrib V5    0.01045275027776001
#>     Attrib V50    -0.7312787739298058
#>     Attrib V51    0.5470257357388403
#>     Attrib V52    0.39765011342724116
#>     Attrib V53    0.3244285930268913
#>     Attrib V54    -0.12567805804013074
#>     Attrib V55    -0.5179353926963022
#>     Attrib V56    -0.03418293695723982
#>     Attrib V57    -0.6676037732069157
#>     Attrib V58    0.2170089429689665
#>     Attrib V59    0.363190576908192
#>     Attrib V6    0.35118123706083926
#>     Attrib V60    0.5569451003155965
#>     Attrib V7    -0.1926296125450254
#>     Attrib V8    0.053347383276586835
#>     Attrib V9    0.6053571338392648
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.08532275722085333
#>     Attrib V1    0.07803871928060795
#>     Attrib V10    0.38026983898147604
#>     Attrib V11    0.49777749304929914
#>     Attrib V12    0.48442294070743835
#>     Attrib V13    0.11249723570066386
#>     Attrib V14    -0.3884790109608875
#>     Attrib V15    -0.43957129538707196
#>     Attrib V16    -0.2958006531247063
#>     Attrib V17    -0.5543184383830182
#>     Attrib V18    -0.4837558429864595
#>     Attrib V19    0.1042579348635535
#>     Attrib V2    0.07143500203162854
#>     Attrib V20    -0.37764891978229126
#>     Attrib V21    0.10214105856907817
#>     Attrib V22    0.23618850280797593
#>     Attrib V23    -0.22267430855854187
#>     Attrib V24    0.16267287690655022
#>     Attrib V25    0.41115491626959727
#>     Attrib V26    0.3662720926345195
#>     Attrib V27    0.747689164867568
#>     Attrib V28    0.8651098851359925
#>     Attrib V29    0.6227278540568596
#>     Attrib V3    0.04721730909124647
#>     Attrib V30    0.666536179944397
#>     Attrib V31    -0.4197271432095722
#>     Attrib V32    -0.05805561928506139
#>     Attrib V33    -0.13062064027097553
#>     Attrib V34    -0.15534461727808904
#>     Attrib V35    0.011696395735022997
#>     Attrib V36    -0.13680025555915257
#>     Attrib V37    0.04314700935862722
#>     Attrib V38    0.2901879200597881
#>     Attrib V39    0.567631204032162
#>     Attrib V4    0.2121706358352187
#>     Attrib V40    0.02239256939261765
#>     Attrib V41    0.4684550592449208
#>     Attrib V42    0.05452743426315571
#>     Attrib V43    0.19099023370465887
#>     Attrib V44    0.195859381164107
#>     Attrib V45    0.21954444789249425
#>     Attrib V46    0.3656158895350865
#>     Attrib V47    0.3387906326975167
#>     Attrib V48    0.5765265404522442
#>     Attrib V49    0.8662604994950293
#>     Attrib V5    0.09356985694812617
#>     Attrib V50    -0.5919597152948399
#>     Attrib V51    0.421476716137391
#>     Attrib V52    0.2775828614932909
#>     Attrib V53    0.3284569146660818
#>     Attrib V54    -0.15231886676164055
#>     Attrib V55    -0.3661954318202117
#>     Attrib V56    -0.08409243232102799
#>     Attrib V57    -0.3500012409012405
#>     Attrib V58    0.10517294141184311
#>     Attrib V59    0.45108526941097116
#>     Attrib V6    0.24541680944547534
#>     Attrib V60    0.5588625367060331
#>     Attrib V7    -0.1684129294533026
#>     Attrib V8    -0.07713787401897097
#>     Attrib V9    0.3557954291232032
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.038196342634850486
#>     Attrib V1    0.031802074953672474
#>     Attrib V10    0.6338611842244547
#>     Attrib V11    0.6940262064746354
#>     Attrib V12    0.6713916956516776
#>     Attrib V13    0.16171258737011943
#>     Attrib V14    -0.5166580304632108
#>     Attrib V15    -0.7294054584627878
#>     Attrib V16    -0.4214990498950943
#>     Attrib V17    -0.6039647904392612
#>     Attrib V18    -0.3662858463213642
#>     Attrib V19    0.4401345125098765
#>     Attrib V2    -0.12215128355706435
#>     Attrib V20    -0.28130606885407367
#>     Attrib V21    0.3525421360439162
#>     Attrib V22    0.6502244663937402
#>     Attrib V23    0.0918026584004007
#>     Attrib V24    0.5632458267497964
#>     Attrib V25    0.913308530954376
#>     Attrib V26    0.7161022425646886
#>     Attrib V27    1.0759329386211396
#>     Attrib V28    1.1030065297089195
#>     Attrib V29    0.7343522265323115
#>     Attrib V3    -0.08195486676405159
#>     Attrib V30    0.7816557593223586
#>     Attrib V31    -0.5192543705365336
#>     Attrib V32    0.04079924210107773
#>     Attrib V33    -0.1156541999054935
#>     Attrib V34    -0.13882826135235854
#>     Attrib V35    0.017768366741188625
#>     Attrib V36    -0.26689635275701185
#>     Attrib V37    -0.09882313751123478
#>     Attrib V38    0.19723415345294776
#>     Attrib V39    0.8900699331430658
#>     Attrib V4    0.21663694569428346
#>     Attrib V40    0.21963512995870985
#>     Attrib V41    0.9091980297916535
#>     Attrib V42    0.17169431067256638
#>     Attrib V43    0.23529118367972146
#>     Attrib V44    0.037311075246162784
#>     Attrib V45    0.033654844048754816
#>     Attrib V46    0.3555175134534426
#>     Attrib V47    0.44883299519501574
#>     Attrib V48    0.7765722723565339
#>     Attrib V49    1.3561125415298452
#>     Attrib V5    0.1202823484641599
#>     Attrib V50    -0.8389049418285325
#>     Attrib V51    0.8647340146265852
#>     Attrib V52    0.4796463188062235
#>     Attrib V53    0.5382831924939837
#>     Attrib V54    -0.23914190657022344
#>     Attrib V55    -0.5170450294847716
#>     Attrib V56    -0.14416570952433533
#>     Attrib V57    -0.7504078717432331
#>     Attrib V58    0.2045245199123669
#>     Attrib V59    0.6016487007041145
#>     Attrib V6    0.3678379255952597
#>     Attrib V60    0.6435948068402619
#>     Attrib V7    -0.2926181196480619
#>     Attrib V8    0.026185145046238114
#>     Attrib V9    0.6127294152091775
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.19757330185413172
#>     Attrib V1    9.783070757326332E-5
#>     Attrib V10    -0.3826532175796121
#>     Attrib V11    -0.429352117017972
#>     Attrib V12    -0.30185780440640003
#>     Attrib V13    0.025595644419882345
#>     Attrib V14    0.29938096032438366
#>     Attrib V15    0.12407790667836083
#>     Attrib V16    0.10796979925783194
#>     Attrib V17    0.2344382642596979
#>     Attrib V18    0.20102302679741757
#>     Attrib V19    -0.28038241436223904
#>     Attrib V2    -0.06524410944096304
#>     Attrib V20    0.002720622365331199
#>     Attrib V21    -0.4502882683926588
#>     Attrib V22    -0.5679227220518835
#>     Attrib V23    0.08113027847296685
#>     Attrib V24    -0.01950276701677645
#>     Attrib V25    -0.048913320861023575
#>     Attrib V26    0.44712350726069783
#>     Attrib V27    0.08244965993960636
#>     Attrib V28    -0.0027785909553636043
#>     Attrib V29    -0.09135745351507749
#>     Attrib V3    0.048073441290741765
#>     Attrib V30    -0.5320662244818262
#>     Attrib V31    0.6037676370188669
#>     Attrib V32    -0.09758092108791663
#>     Attrib V33    -0.1559248594374657
#>     Attrib V34    0.24376547832186293
#>     Attrib V35    0.3026822854638203
#>     Attrib V36    0.4732130263521128
#>     Attrib V37    0.20470333869590673
#>     Attrib V38    -0.16736609509013894
#>     Attrib V39    -0.3493501349384553
#>     Attrib V4    -0.0888015266678504
#>     Attrib V40    0.17130582384470308
#>     Attrib V41    -0.3041918966791447
#>     Attrib V42    -0.15540377186532955
#>     Attrib V43    -0.17389355743263882
#>     Attrib V44    -0.06414829305964188
#>     Attrib V45    0.0605102282629024
#>     Attrib V46    0.0720576167908963
#>     Attrib V47    0.15190468336817714
#>     Attrib V48    -0.1777720728956876
#>     Attrib V49    -0.3363738911822593
#>     Attrib V5    0.11763166651366394
#>     Attrib V50    0.6296723054461805
#>     Attrib V51    -0.2839387258322769
#>     Attrib V52    -0.20661920436775155
#>     Attrib V53    -0.060621844954916834
#>     Attrib V54    0.07432341545198273
#>     Attrib V55    0.3119718729757534
#>     Attrib V56    -0.06582526005927539
#>     Attrib V57    0.34278436001990126
#>     Attrib V58    -0.19146118399627257
#>     Attrib V59    -0.12696829056281506
#>     Attrib V6    -0.12163418347255865
#>     Attrib V60    -0.28573124420060886
#>     Attrib V7    0.06310945353410728
#>     Attrib V8    -0.062055445355823184
#>     Attrib V9    -0.454468810140676
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.16527416727151112
#>     Attrib V1    0.19115100667293816
#>     Attrib V10    0.2532528291938696
#>     Attrib V11    0.303130198158914
#>     Attrib V12    0.12770097979996586
#>     Attrib V13    -0.18131837799374906
#>     Attrib V14    -0.21436199566244019
#>     Attrib V15    -0.046062029099199875
#>     Attrib V16    0.007257868357985019
#>     Attrib V17    -0.02399064511404985
#>     Attrib V18    0.03938266928686506
#>     Attrib V19    0.39924854117739156
#>     Attrib V2    -0.011365493573570777
#>     Attrib V20    0.3134706124061961
#>     Attrib V21    0.6619582423069411
#>     Attrib V22    0.4953967777884764
#>     Attrib V23    -0.01981648309931553
#>     Attrib V24    -0.058873543379170105
#>     Attrib V25    -0.08831461150125769
#>     Attrib V26    -0.5686679342131933
#>     Attrib V27    -0.25537371186630814
#>     Attrib V28    -0.1903716603116463
#>     Attrib V29    -0.18525943247761772
#>     Attrib V3    -0.12125484973169368
#>     Attrib V30    0.4118874337618378
#>     Attrib V31    -0.8316953298654332
#>     Attrib V32    -0.2765810746903538
#>     Attrib V33    0.13639762004740053
#>     Attrib V34    -0.13940000348648585
#>     Attrib V35    -0.14918570177917634
#>     Attrib V36    -0.34549085612771935
#>     Attrib V37    -0.19571250519141245
#>     Attrib V38    0.271107909135892
#>     Attrib V39    0.2770120318357818
#>     Attrib V4    0.2737286747867488
#>     Attrib V40    -0.243904261683803
#>     Attrib V41    0.08244750730518074
#>     Attrib V42    0.1917811875018843
#>     Attrib V43    0.3030040750643122
#>     Attrib V44    0.34667772062176455
#>     Attrib V45    0.1686612081805251
#>     Attrib V46    -0.12424315284766135
#>     Attrib V47    -0.19888626568509368
#>     Attrib V48    0.09880245244839869
#>     Attrib V49    0.23376202372527108
#>     Attrib V5    0.06152917249664295
#>     Attrib V50    -0.29990828260349234
#>     Attrib V51    0.26015906637779546
#>     Attrib V52    0.012435485967595195
#>     Attrib V53    0.09676921750272963
#>     Attrib V54    0.11200060716161352
#>     Attrib V55    -0.13213540518678174
#>     Attrib V56    0.11193307361646382
#>     Attrib V57    -0.1610607711107719
#>     Attrib V58    0.29483818285183877
#>     Attrib V59    0.22060738795144144
#>     Attrib V6    0.17178667930402447
#>     Attrib V60    0.40468753119333684
#>     Attrib V7    0.10891088627271647
#>     Attrib V8    0.14943228478769321
#>     Attrib V9    0.3203338708878544
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.09826178990772699
#>     Attrib V1    0.2290992646332199
#>     Attrib V10    0.30272070134465506
#>     Attrib V11    0.4032685495977677
#>     Attrib V12    0.05405664368488127
#>     Attrib V13    -0.18958866753871262
#>     Attrib V14    -0.20582209127203632
#>     Attrib V15    -0.05537875206502342
#>     Attrib V16    0.024602521491030722
#>     Attrib V17    -0.07967709143194783
#>     Attrib V18    0.029979582408462515
#>     Attrib V19    0.5696542124585051
#>     Attrib V2    0.031281653746274694
#>     Attrib V20    0.28610329194372197
#>     Attrib V21    0.7795527816890009
#>     Attrib V22    0.7335842779426847
#>     Attrib V23    0.057522200179047155
#>     Attrib V24    -0.025373623885495578
#>     Attrib V25    -0.10069758292414804
#>     Attrib V26    -0.6618780937620186
#>     Attrib V27    -0.3085676258825351
#>     Attrib V28    -0.30814128732143004
#>     Attrib V29    -0.13091156429336998
#>     Attrib V3    -0.1571547747084845
#>     Attrib V30    0.5127946624372169
#>     Attrib V31    -0.9254978615556343
#>     Attrib V32    -0.25190915762082794
#>     Attrib V33    0.2853973470922866
#>     Attrib V34    -0.19463107115999964
#>     Attrib V35    -0.26559076801003123
#>     Attrib V36    -0.45303118222388417
#>     Attrib V37    -0.23199060926982243
#>     Attrib V38    0.2850654786166687
#>     Attrib V39    0.3083210359834768
#>     Attrib V4    0.23605302016247404
#>     Attrib V40    -0.19755130912596094
#>     Attrib V41    0.19348803972634637
#>     Attrib V42    0.22773099252425222
#>     Attrib V43    0.33833076761674835
#>     Attrib V44    0.27788453814327696
#>     Attrib V45    0.085999574780134
#>     Attrib V46    -0.1289400312339278
#>     Attrib V47    -0.26731481874566543
#>     Attrib V48    0.10973289409516876
#>     Attrib V49    0.18071450221407526
#>     Attrib V5    -0.018927643512594183
#>     Attrib V50    -0.4905469509624663
#>     Attrib V51    0.26268255252355444
#>     Attrib V52    0.08613684926149956
#>     Attrib V53    0.16076549945156945
#>     Attrib V54    0.11856910226194706
#>     Attrib V55    -0.22978108214309226
#>     Attrib V56    0.17655667723492238
#>     Attrib V57    -0.15277833095825671
#>     Attrib V58    0.3752292580154106
#>     Attrib V59    0.34711706073492715
#>     Attrib V6    0.1544547247655437
#>     Attrib V60    0.5179647263844057
#>     Attrib V7    0.18277112274588103
#>     Attrib V8    0.1900711815678094
#>     Attrib V9    0.44687429358382463
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.19469034479022468
#>     Attrib V1    -0.01008891748325301
#>     Attrib V10    -0.18694185818493125
#>     Attrib V11    -0.2061012786196588
#>     Attrib V12    -0.185945491819639
#>     Attrib V13    0.04720797866013086
#>     Attrib V14    0.1435872308095677
#>     Attrib V15    0.07712596081231489
#>     Attrib V16    0.02392357126938804
#>     Attrib V17    0.1509411005598024
#>     Attrib V18    0.08322068951376727
#>     Attrib V19    -0.13870137886201356
#>     Attrib V2    -0.06918162474464266
#>     Attrib V20    0.02365897318554429
#>     Attrib V21    -0.1975300330788872
#>     Attrib V22    -0.2737227003243681
#>     Attrib V23    0.059983149720809446
#>     Attrib V24    0.028161070382255557
#>     Attrib V25    0.05242847960196142
#>     Attrib V26    0.17647415462526309
#>     Attrib V27    0.09510775974775355
#>     Attrib V28    -0.021132310499958652
#>     Attrib V29    -3.161091195484943E-4
#>     Attrib V3    0.07438446822124965
#>     Attrib V30    -0.21196926038939293
#>     Attrib V31    0.22370947890908613
#>     Attrib V32    -0.0021397311447476502
#>     Attrib V33    -0.03539856846025299
#>     Attrib V34    0.1581245683289364
#>     Attrib V35    0.11128085845753247
#>     Attrib V36    0.18154791045560975
#>     Attrib V37    0.10757538362933074
#>     Attrib V38    -0.09599131896568952
#>     Attrib V39    -0.10952602782884885
#>     Attrib V4    -0.06548953282489717
#>     Attrib V40    0.0899635390234633
#>     Attrib V41    -0.1494040017632794
#>     Attrib V42    -0.014514961579957377
#>     Attrib V43    -0.12857960666368706
#>     Attrib V44    -0.07232617768970583
#>     Attrib V45    -0.04173049532306723
#>     Attrib V46    0.04457650678355325
#>     Attrib V47    0.10187421449124821
#>     Attrib V48    -0.10149635091255789
#>     Attrib V49    -0.171008583862143
#>     Attrib V5    0.07593512552284458
#>     Attrib V50    0.20603851628256184
#>     Attrib V51    -0.13510903456599418
#>     Attrib V52    -0.12027679918501132
#>     Attrib V53    -0.03755011912151694
#>     Attrib V54    0.012629713773805043
#>     Attrib V55    0.14913812467398113
#>     Attrib V56    0.00847121923409647
#>     Attrib V57    0.18999473412183662
#>     Attrib V58    -0.07390759406330294
#>     Attrib V59    0.006100312203317267
#>     Attrib V6    -0.04239020620108994
#>     Attrib V60    -0.05240259003036825
#>     Attrib V7    0.0772271932301322
#>     Attrib V8    -0.06473532077198221
#>     Attrib V9    -0.18154202825003576
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.11232480953543399
#>     Attrib V1    0.12620364282237978
#>     Attrib V10    0.3573994104479227
#>     Attrib V11    0.5363295902946411
#>     Attrib V12    0.5319831125289914
#>     Attrib V13    0.06922096509614696
#>     Attrib V14    -0.3697978212999168
#>     Attrib V15    -0.3737207115643259
#>     Attrib V16    -0.36853871146285344
#>     Attrib V17    -0.5352745569769928
#>     Attrib V18    -0.46407791672013726
#>     Attrib V19    -0.019909387480711735
#>     Attrib V2    0.10326443104379085
#>     Attrib V20    -0.40838816148142165
#>     Attrib V21    0.025940788928431165
#>     Attrib V22    0.15298446660406095
#>     Attrib V23    -0.28062609114537784
#>     Attrib V24    0.00535110523903786
#>     Attrib V25    0.3328785285198879
#>     Attrib V26    0.32122899209761313
#>     Attrib V27    0.6818868028505417
#>     Attrib V28    0.7367407528056024
#>     Attrib V29    0.48645386462316403
#>     Attrib V3    -9.646267744754749E-4
#>     Attrib V30    0.649504612546495
#>     Attrib V31    -0.3966711563888465
#>     Attrib V32    -0.07586401639767597
#>     Attrib V33    -0.11266464158866385
#>     Attrib V34    -0.17788207452390267
#>     Attrib V35    0.04907777821494828
#>     Attrib V36    -0.17648563040589313
#>     Attrib V37    0.08555896046636531
#>     Attrib V38    0.22408130008246732
#>     Attrib V39    0.516110848046869
#>     Attrib V4    0.19367836002995595
#>     Attrib V40    -0.02965231845208148
#>     Attrib V41    0.38891557504969265
#>     Attrib V42    0.05788633657539335
#>     Attrib V43    0.2188704677412329
#>     Attrib V44    0.23184410391958535
#>     Attrib V45    0.17263720046206188
#>     Attrib V46    0.3278796644029807
#>     Attrib V47    0.26600258158274337
#>     Attrib V48    0.561855973054886
#>     Attrib V49    0.8438255412400184
#>     Attrib V5    0.07168402729038185
#>     Attrib V50    -0.5208483085032042
#>     Attrib V51    0.4004310078628428
#>     Attrib V52    0.25915789034989967
#>     Attrib V53    0.23144695852305797
#>     Attrib V54    -0.10350667359797447
#>     Attrib V55    -0.2808181802102513
#>     Attrib V56    -0.011559168191719033
#>     Attrib V57    -0.3694936381567074
#>     Attrib V58    0.1292103301256916
#>     Attrib V59    0.3698064634398761
#>     Attrib V6    0.21267946114277303
#>     Attrib V60    0.5390801354519322
#>     Attrib V7    -0.20798187941560628
#>     Attrib V8    -0.10768579992823708
#>     Attrib V9    0.33376510001474785
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.20051954833540647
#>     Attrib V1    -0.08830172529763392
#>     Attrib V10    -0.8554832159177146
#>     Attrib V11    -1.0342832937811943
#>     Attrib V12    -0.64137372622216
#>     Attrib V13    -0.1704905008821728
#>     Attrib V14    0.45756001282946823
#>     Attrib V15    0.45475961209185467
#>     Attrib V16    0.35320211991172995
#>     Attrib V17    0.7057582670605004
#>     Attrib V18    0.3749993322452416
#>     Attrib V19    -0.6191747051108661
#>     Attrib V2    -0.1660999546731853
#>     Attrib V20    -0.0837770809422191
#>     Attrib V21    -1.0272792640995527
#>     Attrib V22    -1.1626095140310804
#>     Attrib V23    0.11161839642259794
#>     Attrib V24    0.0760689144405715
#>     Attrib V25    -0.1344396105692562
#>     Attrib V26    0.6320607903295966
#>     Attrib V27    -0.1843200719851734
#>     Attrib V28    -0.18238435668941602
#>     Attrib V29    -0.3038906764805711
#>     Attrib V3    0.09142629557813457
#>     Attrib V30    -1.2121607156338698
#>     Attrib V31    1.2154886329950276
#>     Attrib V32    -0.08488005990436782
#>     Attrib V33    -0.38968145492968465
#>     Attrib V34    0.4958812231622395
#>     Attrib V35    0.4833324664644018
#>     Attrib V36    0.8765635472917745
#>     Attrib V37    0.2983947031604642
#>     Attrib V38    -0.4575390879421498
#>     Attrib V39    -0.622465703504772
#>     Attrib V4    0.05839865723716116
#>     Attrib V40    0.32205099613904475
#>     Attrib V41    -0.5894419471353475
#>     Attrib V42    -0.26929262796946934
#>     Attrib V43    -0.3509549459645387
#>     Attrib V44    -0.28297433561916135
#>     Attrib V45    0.04974492940182405
#>     Attrib V46    0.2602727871958774
#>     Attrib V47    0.2841113352160525
#>     Attrib V48    -0.3541680840534169
#>     Attrib V49    -0.6554790178831107
#>     Attrib V5    0.37362587220292426
#>     Attrib V50    1.2730733639974243
#>     Attrib V51    -0.5582926661851202
#>     Attrib V52    -0.4994746691762292
#>     Attrib V53    -0.25717256478931416
#>     Attrib V54    0.07394106990147886
#>     Attrib V55    0.686823268863318
#>     Attrib V56    -0.046879461299062786
#>     Attrib V57    0.8207753910567851
#>     Attrib V58    -0.3217948087539663
#>     Attrib V59    -0.030616701716451193
#>     Attrib V6    -0.3045089489400497
#>     Attrib V60    -0.2891474299897722
#>     Attrib V7    0.1437141413149184
#>     Attrib V8    -0.05320809396488181
#>     Attrib V9    -0.8815953035386817
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.18093693772389588
#>     Attrib V1    -0.04286627987410691
#>     Attrib V10    -0.28911257136060814
#>     Attrib V11    -0.3616229992720028
#>     Attrib V12    -0.2856429346805014
#>     Attrib V13    0.01769528631061129
#>     Attrib V14    0.17822765500692594
#>     Attrib V15    0.11240225398093563
#>     Attrib V16    0.12132104596880233
#>     Attrib V17    0.25640349039868704
#>     Attrib V18    0.17117888367088707
#>     Attrib V19    -0.23235350188518755
#>     Attrib V2    -0.12096556209714121
#>     Attrib V20    -0.050084077329190436
#>     Attrib V21    -0.41686016980474405
#>     Attrib V22    -0.46739797572583824
#>     Attrib V23    0.014574080838258773
#>     Attrib V24    0.0558459614366224
#>     Attrib V25    0.035439409010041646
#>     Attrib V26    0.3527801332137853
#>     Attrib V27    0.06940400534046118
#>     Attrib V28    0.03339215827861253
#>     Attrib V29    -0.03379144712387791
#>     Attrib V3    0.06533758793875273
#>     Attrib V30    -0.45989173794015825
#>     Attrib V31    0.4582415246510679
#>     Attrib V32    -0.009044491336161838
#>     Attrib V33    -0.13735763882190877
#>     Attrib V34    0.20364133439131393
#>     Attrib V35    0.19176242247061093
#>     Attrib V36    0.3280104711647983
#>     Attrib V37    0.15660343629622675
#>     Attrib V38    -0.1828130894104928
#>     Attrib V39    -0.2846871641762379
#>     Attrib V4    -0.07167239515440471
#>     Attrib V40    0.08943542389780562
#>     Attrib V41    -0.25338394634789085
#>     Attrib V42    -0.06275547024874636
#>     Attrib V43    -0.1613576574273028
#>     Attrib V44    -0.13053359321622665
#>     Attrib V45    0.009717114118360837
#>     Attrib V46    0.08408049944138558
#>     Attrib V47    0.1332238430727827
#>     Attrib V48    -0.14475048540212598
#>     Attrib V49    -0.317288589215632
#>     Attrib V5    0.10199748489911667
#>     Attrib V50    0.4861249492418459
#>     Attrib V51    -0.15961452045342192
#>     Attrib V52    -0.12564376040374042
#>     Attrib V53    -0.037152584225958664
#>     Attrib V54    0.03182879652922246
#>     Attrib V55    0.2725889863741533
#>     Attrib V56    -0.01784260876001693
#>     Attrib V57    0.32076690833295884
#>     Attrib V58    -0.09299243465669631
#>     Attrib V59    -0.11922439215465333
#>     Attrib V6    -0.11707954282632947
#>     Attrib V60    -0.1921646932515466
#>     Attrib V7    0.03983565504913039
#>     Attrib V8    -0.08729890014536304
#>     Attrib V9    -0.2995381783906808
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.019698404524211104
#>     Attrib V1    0.28252143060855467
#>     Attrib V10    0.23501570783010423
#>     Attrib V11    0.2034823694906212
#>     Attrib V12    -0.001937643878761216
#>     Attrib V13    -0.15098325761965112
#>     Attrib V14    -0.09486965920615585
#>     Attrib V15    0.15147732030645858
#>     Attrib V16    0.08286606829022776
#>     Attrib V17    -0.012184735865605758
#>     Attrib V18    0.0324387820196814
#>     Attrib V19    0.39479387750767186
#>     Attrib V2    0.12002279024019379
#>     Attrib V20    0.3402829047379099
#>     Attrib V21    0.5900557239252188
#>     Attrib V22    0.4744708973539136
#>     Attrib V23    -0.014473978904992527
#>     Attrib V24    -0.0775404271785024
#>     Attrib V25    -0.29123345636021997
#>     Attrib V26    -0.6859185457648164
#>     Attrib V27    -0.45242097921224983
#>     Attrib V28    -0.45298619777376575
#>     Attrib V29    -0.34274958522717797
#>     Attrib V3    -0.06641549737202401
#>     Attrib V30    0.22043317366233942
#>     Attrib V31    -0.6254561280219338
#>     Attrib V32    -0.26488822904324577
#>     Attrib V33    0.17395022250483524
#>     Attrib V34    -0.13254109183654306
#>     Attrib V35    -0.16551390561803592
#>     Attrib V36    -0.3668107256402217
#>     Attrib V37    -0.2081232261287689
#>     Attrib V38    0.2271797853157511
#>     Attrib V39    0.22722040787892664
#>     Attrib V4    0.18154680432969422
#>     Attrib V40    -0.20653914278398702
#>     Attrib V41    0.06663293437106725
#>     Attrib V42    0.140093542506564
#>     Attrib V43    0.23139259336719925
#>     Attrib V44    0.2167739414803811
#>     Attrib V45    0.1172782303263635
#>     Attrib V46    -0.1296054740057553
#>     Attrib V47    -0.24915079291178036
#>     Attrib V48    0.0533211769115083
#>     Attrib V49    0.07554633515079676
#>     Attrib V5    -0.03633795958848649
#>     Attrib V50    -0.13227607593548343
#>     Attrib V51    0.1204534722606128
#>     Attrib V52    0.016154005984923874
#>     Attrib V53    0.0267848079207845
#>     Attrib V54    0.11470301122214947
#>     Attrib V55    0.10074665827046227
#>     Attrib V56    0.20059463958254253
#>     Attrib V57    0.04849993870052118
#>     Attrib V58    0.316941709497761
#>     Attrib V59    0.23576139305621555
#>     Attrib V6    0.16457349404916732
#>     Attrib V60    0.41006422320673713
#>     Attrib V7    0.2149947970719344
#>     Attrib V8    0.2124237958710641
#>     Attrib V9    0.2839931039493959
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.2050224878652389
#>     Attrib V1    0.03545660164555238
#>     Attrib V10    -0.03017117759658192
#>     Attrib V11    -0.07526071179410082
#>     Attrib V12    -0.09070711541775615
#>     Attrib V13    -0.014040875324494937
#>     Attrib V14    0.07134517078239863
#>     Attrib V15    0.02733725311466845
#>     Attrib V16    0.03830555036330716
#>     Attrib V17    0.033937235208751096
#>     Attrib V18    0.08164822326587258
#>     Attrib V19    -0.08852270599247809
#>     Attrib V2    0.011946815811153255
#>     Attrib V20    -0.010272874196203173
#>     Attrib V21    -0.08023111540283605
#>     Attrib V22    -0.11086435133230403
#>     Attrib V23    0.0071984825755030905
#>     Attrib V24    -0.019182348095091364
#>     Attrib V25    0.030187432743136122
#>     Attrib V26    0.09290973746376083
#>     Attrib V27    0.030323560518341657
#>     Attrib V28    -0.017447446732584474
#>     Attrib V29    -0.02583055498470346
#>     Attrib V3    0.08666807546136816
#>     Attrib V30    -0.123948394655197
#>     Attrib V31    0.07821544414613822
#>     Attrib V32    -0.0029668249342143026
#>     Attrib V33    0.016641235985170255
#>     Attrib V34    0.09400152018854978
#>     Attrib V35    0.053408377170803975
#>     Attrib V36    0.1653326323978546
#>     Attrib V37    0.06608451195188121
#>     Attrib V38    -0.026539126558613565
#>     Attrib V39    0.004783578382328598
#>     Attrib V4    -0.06617937805017371
#>     Attrib V40    0.034842152945636244
#>     Attrib V41    -0.07977191562215488
#>     Attrib V42    0.026377291977878723
#>     Attrib V43    -0.033112190540645625
#>     Attrib V44    0.019036054802818076
#>     Attrib V45    -0.03349278489228781
#>     Attrib V46    0.00615227948044863
#>     Attrib V47    0.09185562846321438
#>     Attrib V48    -0.01429805520397663
#>     Attrib V49    -0.05267559466240367
#>     Attrib V5    0.038488681511815406
#>     Attrib V50    0.051073265194227384
#>     Attrib V51    0.028131506678015037
#>     Attrib V52    -0.02568427604256191
#>     Attrib V53    0.03774972501224528
#>     Attrib V54    -8.358914709200751E-4
#>     Attrib V55    0.1101595115318004
#>     Attrib V56    0.07374070195334081
#>     Attrib V57    0.0655645175665714
#>     Attrib V58    0.01640647310678688
#>     Attrib V59    0.049933066614295106
#>     Attrib V6    -0.01951340876395756
#>     Attrib V60    0.0521410333597495
#>     Attrib V7    0.06783891178519222
#>     Attrib V8    0.04248321447750172
#>     Attrib V9    -0.03117770510435262
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.14595697259649773
#>     Attrib V1    0.05236553043251839
#>     Attrib V10    0.27734432498258216
#>     Attrib V11    0.4176256269863929
#>     Attrib V12    0.5122620705411998
#>     Attrib V13    0.07975343231408438
#>     Attrib V14    -0.2700881515648319
#>     Attrib V15    -0.30056017262004114
#>     Attrib V16    -0.2995901126536296
#>     Attrib V17    -0.44382848105004563
#>     Attrib V18    -0.35744938479484095
#>     Attrib V19    0.10226551687168894
#>     Attrib V2    0.06825468704361648
#>     Attrib V20    -0.31191123040779944
#>     Attrib V21    0.05334425092154111
#>     Attrib V22    0.19618785766510446
#>     Attrib V23    -0.2570095203446553
#>     Attrib V24    0.048595940271430334
#>     Attrib V25    0.3223131492271712
#>     Attrib V26    0.19871353466543631
#>     Attrib V27    0.5923998583452801
#>     Attrib V28    0.6719371115111771
#>     Attrib V29    0.44736309903506977
#>     Attrib V3    -0.028297074099703615
#>     Attrib V30    0.5782815302327963
#>     Attrib V31    -0.40313299700877675
#>     Attrib V32    -0.11896014377068446
#>     Attrib V33    -0.045685827919223515
#>     Attrib V34    -0.10827932069877207
#>     Attrib V35    0.0806138901347148
#>     Attrib V36    -0.14989497172646452
#>     Attrib V37    0.001610326796837889
#>     Attrib V38    0.19031464823948008
#>     Attrib V39    0.4401223551592273
#>     Attrib V4    0.20003070753787658
#>     Attrib V40    0.01198870648998513
#>     Attrib V41    0.3992776445183636
#>     Attrib V42    0.16177500252596425
#>     Attrib V43    0.24340427746620263
#>     Attrib V44    0.1848082034398701
#>     Attrib V45    0.2457030092696592
#>     Attrib V46    0.2577956707388545
#>     Attrib V47    0.13910803271010125
#>     Attrib V48    0.4027521835851777
#>     Attrib V49    0.7422733156069133
#>     Attrib V5    0.09586389339859458
#>     Attrib V50    -0.4993052281363244
#>     Attrib V51    0.2908742829616552
#>     Attrib V52    0.27014677781244695
#>     Attrib V53    0.2923150207315309
#>     Attrib V54    -0.08833666035049295
#>     Attrib V55    -0.23200995758528592
#>     Attrib V56    -0.0669086060913514
#>     Attrib V57    -0.3989638704957493
#>     Attrib V58    0.15870918680710883
#>     Attrib V59    0.31054157478332206
#>     Attrib V6    0.20282643945254325
#>     Attrib V60    0.4459920416004087
#>     Attrib V7    -0.12308299167244069
#>     Attrib V8    -0.06074642783863203
#>     Attrib V9    0.27716473615594656
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.1681650793640649
#>     Attrib V1    0.15035065864038322
#>     Attrib V10    0.4426821745028233
#>     Attrib V11    0.4861238254495139
#>     Attrib V12    0.344507554808154
#>     Attrib V13    -0.07395131616268319
#>     Attrib V14    -0.2852258002152617
#>     Attrib V15    -0.17138804311838904
#>     Attrib V16    -0.1278607335641122
#>     Attrib V17    -0.2612738771248285
#>     Attrib V18    -0.13502491924661741
#>     Attrib V19    0.4576498651156793
#>     Attrib V2    -0.02443367400738823
#>     Attrib V20    0.05606983993704119
#>     Attrib V21    0.6761376332570455
#>     Attrib V22    0.744218929998559
#>     Attrib V23    -0.04151955795335128
#>     Attrib V24    -0.01095153850141003
#>     Attrib V25    0.06718175492385146
#>     Attrib V26    -0.4371091319207345
#>     Attrib V27    0.008732622903132271
#>     Attrib V28    -0.00860483738254809
#>     Attrib V29    0.1370704670748641
#>     Attrib V3    -0.18203355400953208
#>     Attrib V30    0.7319230359999161
#>     Attrib V31    -0.8641030267421431
#>     Attrib V32    -0.16478270206967496
#>     Attrib V33    0.2128342634175237
#>     Attrib V34    -0.27969209074960955
#>     Attrib V35    -0.24783749828032328
#>     Attrib V36    -0.3725833310786679
#>     Attrib V37    -0.057394816879786016
#>     Attrib V38    0.34416845008038377
#>     Attrib V39    0.41944686574242784
#>     Attrib V4    0.045815811196440744
#>     Attrib V40    -0.22410364104566494
#>     Attrib V41    0.28359215771816587
#>     Attrib V42    0.11238650518592105
#>     Attrib V43    0.30775578825667377
#>     Attrib V44    0.3458310753733139
#>     Attrib V45    0.04653781010393804
#>     Attrib V46    -0.186278092246971
#>     Attrib V47    -0.29884102365033455
#>     Attrib V48    0.14109412858763154
#>     Attrib V49    0.28395322189326094
#>     Attrib V5    -0.05269026944765396
#>     Attrib V50    -0.7592427493520031
#>     Attrib V51    0.3508789682382301
#>     Attrib V52    0.13185268070933556
#>     Attrib V53    0.1253336166685711
#>     Attrib V54    -0.01808740185549248
#>     Attrib V55    -0.40355959413177267
#>     Attrib V56    0.04549212864210127
#>     Attrib V57    -0.4600027614455317
#>     Attrib V58    0.23307701081323132
#>     Attrib V59    0.21899491704094592
#>     Attrib V6    0.2070149445434367
#>     Attrib V60    0.44299225864683395
#>     Attrib V7    0.026159053428240483
#>     Attrib V8    -0.02055210100091086
#>     Attrib V9    0.475246983238379
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.05651976486298109
#>     Attrib V1    -0.09551559977477957
#>     Attrib V10    -0.6481947305040426
#>     Attrib V11    -0.7416676437036535
#>     Attrib V12    -0.49345467425806205
#>     Attrib V13    -0.0825180686982532
#>     Attrib V14    0.3263016033209804
#>     Attrib V15    0.22984592505879253
#>     Attrib V16    0.1802052222174914
#>     Attrib V17    0.46300751368509263
#>     Attrib V18    0.276538333607004
#>     Attrib V19    -0.49698026297786674
#>     Attrib V2    -0.14566342225721543
#>     Attrib V20    -0.05612711097712173
#>     Attrib V21    -0.7200754400619901
#>     Attrib V22    -0.9283320181100274
#>     Attrib V23    0.0341123667418034
#>     Attrib V24    0.005849097074005368
#>     Attrib V25    -0.0965423888674718
#>     Attrib V26    0.592437928395714
#>     Attrib V27    0.05894874699529437
#>     Attrib V28    -0.030050728115957475
#>     Attrib V29    -0.12449747604612642
#>     Attrib V3    0.015089746016279675
#>     Attrib V30    -0.889721402392094
#>     Attrib V31    0.9079147655609451
#>     Attrib V32    -0.09873226396220158
#>     Attrib V33    -0.3373635255294897
#>     Attrib V34    0.35139655147332227
#>     Attrib V35    0.47258125717675264
#>     Attrib V36    0.8185177222472007
#>     Attrib V37    0.4388589247329221
#>     Attrib V38    -0.27326402870111793
#>     Attrib V39    -0.46584478858262157
#>     Attrib V4    0.05551090754726119
#>     Attrib V40    0.2650408488767239
#>     Attrib V41    -0.41651471727118733
#>     Attrib V42    -0.27311790735234315
#>     Attrib V43    -0.1780878013575192
#>     Attrib V44    -0.040950440121359795
#>     Attrib V45    0.06769099392176804
#>     Attrib V46    0.17712015523971225
#>     Attrib V47    0.21335170328373423
#>     Attrib V48    -0.22206607709581763
#>     Attrib V49    -0.46150834783759587
#>     Attrib V5    0.28037205316861313
#>     Attrib V50    0.9354950536310076
#>     Attrib V51    -0.45670525388859834
#>     Attrib V52    -0.3121779398023213
#>     Attrib V53    -0.21543939993286285
#>     Attrib V54    0.049779592852383696
#>     Attrib V55    0.405974378210415
#>     Attrib V56    -0.13703050408471304
#>     Attrib V57    0.6361393530799366
#>     Attrib V58    -0.30065329204669566
#>     Attrib V59    -0.07676556886381067
#>     Attrib V6    -0.24959142493581352
#>     Attrib V60    -0.29447463797777723
#>     Attrib V7    0.13736045977831557
#>     Attrib V8    -0.11769734095258995
#>     Attrib V9    -0.6667244654439157
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.07771317511323084
#>     Attrib V1    0.2843190584920915
#>     Attrib V10    0.1785981432023212
#>     Attrib V11    0.24457760051674138
#>     Attrib V12    0.19776503018539582
#>     Attrib V13    0.0616644591788345
#>     Attrib V14    0.05340223038101489
#>     Attrib V15    0.07222283783003344
#>     Attrib V16    0.14310708065488342
#>     Attrib V17    0.022207124163179826
#>     Attrib V18    0.041342045633867425
#>     Attrib V19    0.2055138060909885
#>     Attrib V2    0.16068946655858657
#>     Attrib V20    0.1722503126098171
#>     Attrib V21    0.27592638622135446
#>     Attrib V22    0.05397887360396176
#>     Attrib V23    -0.2584393792192385
#>     Attrib V24    -0.1890690845206831
#>     Attrib V25    -0.27374588401351807
#>     Attrib V26    -0.47161531510250154
#>     Attrib V27    -0.25758241915010643
#>     Attrib V28    -0.2720605084401349
#>     Attrib V29    -0.25050436666005793
#>     Attrib V3    0.06479413712415699
#>     Attrib V30    0.07210745180289108
#>     Attrib V31    -0.4284073580860263
#>     Attrib V32    -0.27996805880776393
#>     Attrib V33    -0.06018593889699918
#>     Attrib V34    -0.0660200733709476
#>     Attrib V35    -0.015450442135220746
#>     Attrib V36    -0.22400467189157516
#>     Attrib V37    -0.14924590545384508
#>     Attrib V38    0.08605903584308337
#>     Attrib V39    0.11824959779528327
#>     Attrib V4    0.3151147459065428
#>     Attrib V40    -0.0936811953063615
#>     Attrib V41    0.06914579486237754
#>     Attrib V42    0.12779102120509514
#>     Attrib V43    0.2834688695674304
#>     Attrib V44    0.13728659482539063
#>     Attrib V45    0.07011361254133466
#>     Attrib V46    0.04761495364854853
#>     Attrib V47    -0.09436388737991706
#>     Attrib V48    0.14730693454989696
#>     Attrib V49    0.24744680406634068
#>     Attrib V5    0.16344841285994507
#>     Attrib V50    0.05462751321900515
#>     Attrib V51    0.1753878991808426
#>     Attrib V52    0.12243245350410531
#>     Attrib V53    0.20241902137304166
#>     Attrib V54    0.13720269089654893
#>     Attrib V55    0.2607846311173969
#>     Attrib V56    0.21595608256708718
#>     Attrib V57    0.09087366128895435
#>     Attrib V58    0.35759825938373385
#>     Attrib V59    0.39110045361729634
#>     Attrib V6    0.16580395117504526
#>     Attrib V60    0.43349083560029955
#>     Attrib V7    0.15824714230031647
#>     Attrib V8    0.017610108833435757
#>     Attrib V9    0.15532348523506234
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.015897980083523312
#>     Attrib V1    0.24966549649822561
#>     Attrib V10    0.10542370775336823
#>     Attrib V11    0.2500109902093899
#>     Attrib V12    0.24071462059736373
#>     Attrib V13    0.11154398500332045
#>     Attrib V14    0.06452292005686408
#>     Attrib V15    0.0774225457739943
#>     Attrib V16    0.0486005934267053
#>     Attrib V17    0.07656975133738605
#>     Attrib V18    0.07851471097971163
#>     Attrib V19    0.21843889700493802
#>     Attrib V2    0.1077609329435892
#>     Attrib V20    0.12011827993684077
#>     Attrib V21    0.1970870544628569
#>     Attrib V22    0.07685809555596629
#>     Attrib V23    -0.14465528424325852
#>     Attrib V24    -0.20451536269979648
#>     Attrib V25    -0.1803448882360041
#>     Attrib V26    -0.3013911094685033
#>     Attrib V27    -0.1948718617413476
#>     Attrib V28    -0.208676432872053
#>     Attrib V29    -0.24622756836316176
#>     Attrib V3    0.12211418889167815
#>     Attrib V30    0.036762885380652706
#>     Attrib V31    -0.3978144990952923
#>     Attrib V32    -0.22169656551474096
#>     Attrib V33    -0.018371793217735206
#>     Attrib V34    -0.04816514114558739
#>     Attrib V35    0.07268264223949053
#>     Attrib V36    -0.11808271890038538
#>     Attrib V37    -0.04009921996810282
#>     Attrib V38    0.08047266166276212
#>     Attrib V39    0.12041445505872976
#>     Attrib V4    0.26501627160244406
#>     Attrib V40    -0.11696591067940246
#>     Attrib V41    0.07674228939173369
#>     Attrib V42    0.12750550722864643
#>     Attrib V43    0.24362373140415625
#>     Attrib V44    0.13198140156544164
#>     Attrib V45    0.14302558144702118
#>     Attrib V46    0.027330016863297932
#>     Attrib V47    -4.050595377654279E-6
#>     Attrib V48    0.0398274947667632
#>     Attrib V49    0.1769650195677112
#>     Attrib V5    0.11730699314220072
#>     Attrib V50    0.019730628526610023
#>     Attrib V51    0.11382595981247377
#>     Attrib V52    0.16577550918105266
#>     Attrib V53    0.24458584781666642
#>     Attrib V54    0.10894280627355611
#>     Attrib V55    0.2111008123310205
#>     Attrib V56    0.21570788608826158
#>     Attrib V57    0.04911692712402892
#>     Attrib V58    0.26083043823552476
#>     Attrib V59    0.35688797002001
#>     Attrib V6    0.16231115378506636
#>     Attrib V60    0.3096435013636188
#>     Attrib V7    0.11778238328283501
#>     Attrib V8    0.06550941309079601
#>     Attrib V9    0.13270219915483855
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.15919106356358315
#>     Attrib V1    -0.0703932180261351
#>     Attrib V10    -0.618595037495712
#>     Attrib V11    -0.6685373572176717
#>     Attrib V12    -0.45562408008314803
#>     Attrib V13    -0.05957628070345065
#>     Attrib V14    0.34306546155827833
#>     Attrib V15    0.27432673555319254
#>     Attrib V16    0.16950229980204218
#>     Attrib V17    0.4790742449229306
#>     Attrib V18    0.25345426466517385
#>     Attrib V19    -0.4560455052838959
#>     Attrib V2    -0.0602517389263379
#>     Attrib V20    -0.0027854049923401727
#>     Attrib V21    -0.6811655000356588
#>     Attrib V22    -0.8454607806075793
#>     Attrib V23    0.1348041053926327
#>     Attrib V24    0.00863263412223758
#>     Attrib V25    -0.07427079605704437
#>     Attrib V26    0.5783222119779448
#>     Attrib V27    0.019605086792533383
#>     Attrib V28    -0.03193046739720065
#>     Attrib V29    -0.17751276339793273
#>     Attrib V3    0.08751853429215443
#>     Attrib V30    -0.8612275568954602
#>     Attrib V31    0.8527713890569694
#>     Attrib V32    -0.007992690432162481
#>     Attrib V33    -0.34516565384133474
#>     Attrib V34    0.29431078026955426
#>     Attrib V35    0.3624128289386073
#>     Attrib V36    0.6616620578070014
#>     Attrib V37    0.20714790274275577
#>     Attrib V38    -0.3251642229688227
#>     Attrib V39    -0.5064291164734902
#>     Attrib V4    -0.0035853716089785607
#>     Attrib V40    0.24696996766316154
#>     Attrib V41    -0.3991819162820493
#>     Attrib V42    -0.19923913519100714
#>     Attrib V43    -0.169271586424558
#>     Attrib V44    -0.18527659704688193
#>     Attrib V45    0.011128188377735592
#>     Attrib V46    0.19762450942103033
#>     Attrib V47    0.2819132267112741
#>     Attrib V48    -0.22813684255828182
#>     Attrib V49    -0.4524683368067564
#>     Attrib V5    0.1656421751093086
#>     Attrib V50    0.949132972659302
#>     Attrib V51    -0.37555850955675774
#>     Attrib V52    -0.19572352874697777
#>     Attrib V53    -0.1950515768451558
#>     Attrib V54    0.06789553810249266
#>     Attrib V55    0.5220462162851657
#>     Attrib V56    -0.040205941880610545
#>     Attrib V57    0.5973753662543871
#>     Attrib V58    -0.22256069831793177
#>     Attrib V59    -0.11857004690818365
#>     Attrib V6    -0.19901136626278973
#>     Attrib V60    -0.3866047563742928
#>     Attrib V7    0.048898755529353154
#>     Attrib V8    -0.028008114471148128
#>     Attrib V9    -0.5725430193233763
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.08838875381400144
#>     Attrib V1    0.01361989562126469
#>     Attrib V10    0.7029733157441123
#>     Attrib V11    0.8597150056397255
#>     Attrib V12    0.8798322363035914
#>     Attrib V13    0.22864810836357657
#>     Attrib V14    -0.5104558348231165
#>     Attrib V15    -0.95086911562682
#>     Attrib V16    -0.520317456709985
#>     Attrib V17    -0.68564034179893
#>     Attrib V18    -0.3876024924379735
#>     Attrib V19    0.6409232932165786
#>     Attrib V2    -0.24055676095102443
#>     Attrib V20    -0.33995890801812717
#>     Attrib V21    0.3360382280233842
#>     Attrib V22    0.8228143795041316
#>     Attrib V23    0.2058583335202711
#>     Attrib V24    0.7631532718069068
#>     Attrib V25    1.1578236148070324
#>     Attrib V26    0.9520177404130837
#>     Attrib V27    1.2933882571109165
#>     Attrib V28    1.3791132782529447
#>     Attrib V29    0.9057360128457762
#>     Attrib V3    -0.12622545209395056
#>     Attrib V30    0.828070850271388
#>     Attrib V31    -0.5606997197828816
#>     Attrib V32    0.1301561389258424
#>     Attrib V33    -0.24919733862174406
#>     Attrib V34    -0.2125346725185083
#>     Attrib V35    0.05678629134348505
#>     Attrib V36    -0.3147142719769161
#>     Attrib V37    -0.2070379418489893
#>     Attrib V38    0.18099835652015492
#>     Attrib V39    1.128889499177147
#>     Attrib V4    0.36508105607468044
#>     Attrib V40    0.30974042007663505
#>     Attrib V41    1.164896967626072
#>     Attrib V42    0.17079034748451075
#>     Attrib V43    0.14578299146377183
#>     Attrib V44    0.07772532252870624
#>     Attrib V45    0.019931557991638833
#>     Attrib V46    0.3936707902586902
#>     Attrib V47    0.5500380023065293
#>     Attrib V48    1.0091858416360537
#>     Attrib V49    1.7755237395407706
#>     Attrib V5    0.23452385909938964
#>     Attrib V50    -1.0383014441989276
#>     Attrib V51    1.1517610636758302
#>     Attrib V52    0.5976951944799748
#>     Attrib V53    0.6371549964701727
#>     Attrib V54    -0.3739116002157575
#>     Attrib V55    -0.6406961042398931
#>     Attrib V56    -0.23046474141624557
#>     Attrib V57    -0.7824787376198085
#>     Attrib V58    0.24571235067689665
#>     Attrib V59    0.8997697660719464
#>     Attrib V6    0.3739994593157282
#>     Attrib V60    0.8600992092472596
#>     Attrib V7    -0.4397038687907055
#>     Attrib V8    -0.09789228510809463
#>     Attrib V9    0.7037824682944741
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.18327441905553155
#>     Attrib V1    -0.037520911103056644
#>     Attrib V10    -0.3386767273817363
#>     Attrib V11    -0.4014604606289442
#>     Attrib V12    -0.2656542278780272
#>     Attrib V13    -0.020468587554457185
#>     Attrib V14    0.2562135877116684
#>     Attrib V15    0.11503565525359491
#>     Attrib V16    0.07084021329814034
#>     Attrib V17    0.2468113616790324
#>     Attrib V18    0.09637094476849403
#>     Attrib V19    -0.21226515560423595
#>     Attrib V2    -0.06509862495816537
#>     Attrib V20    -0.010576847702897497
#>     Attrib V21    -0.39187479189795466
#>     Attrib V22    -0.4717765215255757
#>     Attrib V23    0.04833672430033397
#>     Attrib V24    0.0061828823737098615
#>     Attrib V25    0.005616034403859864
#>     Attrib V26    0.3644207532235968
#>     Attrib V27    0.12437946193310415
#>     Attrib V28    0.05590762237386872
#>     Attrib V29    -0.022085041654627078
#>     Attrib V3    0.015000420295543654
#>     Attrib V30    -0.47929054862074144
#>     Attrib V31    0.44831705193492716
#>     Attrib V32    -0.07527219378537534
#>     Attrib V33    -0.12731159492952288
#>     Attrib V34    0.16993477181997957
#>     Attrib V35    0.2909502847362122
#>     Attrib V36    0.4431605630581111
#>     Attrib V37    0.22548204753714532
#>     Attrib V38    -0.19065756777186482
#>     Attrib V39    -0.2835836062566643
#>     Attrib V4    -0.04076863040326692
#>     Attrib V40    0.10676252065371251
#>     Attrib V41    -0.2829920099600116
#>     Attrib V42    -0.09204393973085445
#>     Attrib V43    -0.1285919469941847
#>     Attrib V44    -0.06584209469892181
#>     Attrib V45    0.01766264229682005
#>     Attrib V46    0.05257926290608258
#>     Attrib V47    0.10563883981942206
#>     Attrib V48    -0.11266436321684963
#>     Attrib V49    -0.32024657512026705
#>     Attrib V5    0.06666778541581347
#>     Attrib V50    0.4854928710646054
#>     Attrib V51    -0.2504355465068186
#>     Attrib V52    -0.1801964526060738
#>     Attrib V53    -0.09360190919385825
#>     Attrib V54    0.042999037398372034
#>     Attrib V55    0.26195654210144675
#>     Attrib V56    -0.022938030160758228
#>     Attrib V57    0.34243647650541603
#>     Attrib V58    -0.14547566151377514
#>     Attrib V59    -0.06262479442598272
#>     Attrib V6    -0.10751140595668249
#>     Attrib V60    -0.16573593552037844
#>     Attrib V7    0.010833277748070982
#>     Attrib V8    -0.05415587482772496
#>     Attrib V9    -0.3851250033653079
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.16905813672860656
#>     Attrib V1    0.12508450351087105
#>     Attrib V10    0.5942420196055517
#>     Attrib V11    0.6940370801521222
#>     Attrib V12    0.6920619630653565
#>     Attrib V13    0.17156902637150467
#>     Attrib V14    -0.5041326348510918
#>     Attrib V15    -0.6820719078005795
#>     Attrib V16    -0.4585712797520452
#>     Attrib V17    -0.6903634590372344
#>     Attrib V18    -0.39649375598637004
#>     Attrib V19    0.37175793530032153
#>     Attrib V2    -0.07367665545870694
#>     Attrib V20    -0.39136146064543237
#>     Attrib V21    0.33006464120050627
#>     Attrib V22    0.6398188111198434
#>     Attrib V23    -0.031665057958064936
#>     Attrib V24    0.511088050654343
#>     Attrib V25    0.849839193788097
#>     Attrib V26    0.7555143810109527
#>     Attrib V27    1.0688677531017703
#>     Attrib V28    1.1132993153856916
#>     Attrib V29    0.8122928652829674
#>     Attrib V3    -0.09997058445868943
#>     Attrib V30    0.8256293925596077
#>     Attrib V31    -0.5557250795133346
#>     Attrib V32    -0.05623335992725127
#>     Attrib V33    -0.26825584284006965
#>     Attrib V34    -0.26309772838133383
#>     Attrib V35    -0.012756162937445624
#>     Attrib V36    -0.2908527919390191
#>     Attrib V37    -0.07068485343383653
#>     Attrib V38    0.22156104353970335
#>     Attrib V39    0.8887611446271684
#>     Attrib V4    0.29045009040055797
#>     Attrib V40    0.15530118824805256
#>     Attrib V41    0.8457991861028082
#>     Attrib V42    0.1205683946222747
#>     Attrib V43    0.17998274786208088
#>     Attrib V44    0.13233104069452073
#>     Attrib V45    0.14075307449175006
#>     Attrib V46    0.35867628285115266
#>     Attrib V47    0.4493254077450712
#>     Attrib V48    0.8735617991543398
#>     Attrib V49    1.315875318196065
#>     Attrib V5    0.18269124896338002
#>     Attrib V50    -0.7876291583748244
#>     Attrib V51    0.8799025874824261
#>     Attrib V52    0.4361932621746577
#>     Attrib V53    0.5440830003855204
#>     Attrib V54    -0.21182584684422676
#>     Attrib V55    -0.5630842478675915
#>     Attrib V56    -0.21345292014398456
#>     Attrib V57    -0.6428581267503432
#>     Attrib V58    0.16474861049035314
#>     Attrib V59    0.6656271298738039
#>     Attrib V6    0.37936065519643547
#>     Attrib V60    0.7149041499882869
#>     Attrib V7    -0.31992196872738915
#>     Attrib V8    -0.057664008702321044
#>     Attrib V9    0.5785627185552394
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.08682188034478618
#>     Attrib V1    -0.08023181884445181
#>     Attrib V10    -0.8101193722182312
#>     Attrib V11    -0.8695071522327253
#>     Attrib V12    -0.6182214230583539
#>     Attrib V13    -0.10152669383807442
#>     Attrib V14    0.34689542068856494
#>     Attrib V15    0.28684158563114215
#>     Attrib V16    0.2308062937454403
#>     Attrib V17    0.45525961268436177
#>     Attrib V18    0.3221988936497409
#>     Attrib V19    -0.5816362124787154
#>     Attrib V2    -0.11979521920054657
#>     Attrib V20    -0.06871783348444677
#>     Attrib V21    -0.8353150781284348
#>     Attrib V22    -0.9964981681068659
#>     Attrib V23    0.07936539431258745
#>     Attrib V24    0.06140415709838166
#>     Attrib V25    -0.13549819726276222
#>     Attrib V26    0.5603916083022296
#>     Attrib V27    0.037474526084287994
#>     Attrib V28    -0.06428504297406562
#>     Attrib V29    -0.22156206842125062
#>     Attrib V3    0.09817005693523435
#>     Attrib V30    -1.0553699869236837
#>     Attrib V31    0.9310237687980132
#>     Attrib V32    -0.068880958674675
#>     Attrib V33    -0.42916161553401244
#>     Attrib V34    0.4018530515234194
#>     Attrib V35    0.5658800747238144
#>     Attrib V36    0.9514984356402155
#>     Attrib V37    0.3614819565339521
#>     Attrib V38    -0.2777237121156281
#>     Attrib V39    -0.5024773290290763
#>     Attrib V4    0.08302090510893835
#>     Attrib V40    0.2380947641691976
#>     Attrib V41    -0.48126117280743624
#>     Attrib V42    -0.23621991392805433
#>     Attrib V43    -0.18355050752778296
#>     Attrib V44    -0.1308429929529696
#>     Attrib V45    0.11928087070591696
#>     Attrib V46    0.2232841282865687
#>     Attrib V47    0.19761541445301628
#>     Attrib V48    -0.3393470214256467
#>     Attrib V49    -0.5300920798423449
#>     Attrib V5    0.253865356260548
#>     Attrib V50    1.1178355903785777
#>     Attrib V51    -0.5944756476301875
#>     Attrib V52    -0.3247909484976413
#>     Attrib V53    -0.2891124494977933
#>     Attrib V54    0.07842559940299872
#>     Attrib V55    0.5580326135921843
#>     Attrib V56    -0.11201029148992041
#>     Attrib V57    0.6546261113509872
#>     Attrib V58    -0.2594044315230118
#>     Attrib V59    -0.06694996890421337
#>     Attrib V6    -0.24659822774045703
#>     Attrib V60    -0.34959782757022106
#>     Attrib V7    0.14553130167062242
#>     Attrib V8    -0.01887596997777966
#>     Attrib V9    -0.7502892890838752
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.053069086607670714
#>     Attrib V1    0.2236560882504463
#>     Attrib V10    0.26532697041852044
#>     Attrib V11    0.3626956965149271
#>     Attrib V12    0.1289723962119469
#>     Attrib V13    -0.14033970654240072
#>     Attrib V14    -0.13795871868500265
#>     Attrib V15    -0.009741050291765207
#>     Attrib V16    0.002275369540991977
#>     Attrib V17    -0.05573190011075007
#>     Attrib V18    0.04231753082039582
#>     Attrib V19    0.4214276851711441
#>     Attrib V2    0.031566785852543036
#>     Attrib V20    0.3592494739037019
#>     Attrib V21    0.7456456819681623
#>     Attrib V22    0.6317083438409331
#>     Attrib V23    0.01227430529723439
#>     Attrib V24    0.009064313057931499
#>     Attrib V25    -0.06012222773321263
#>     Attrib V26    -0.6225264029160321
#>     Attrib V27    -0.35112147706314945
#>     Attrib V28    -0.33693397189705465
#>     Attrib V29    -0.1697347600873193
#>     Attrib V3    -0.0375797828108814
#>     Attrib V30    0.34788156727741576
#>     Attrib V31    -0.7728951760543734
#>     Attrib V32    -0.19413665776888636
#>     Attrib V33    0.20725054861018136
#>     Attrib V34    -0.1558041650910893
#>     Attrib V35    -0.20713377875929753
#>     Attrib V36    -0.41126381706219317
#>     Attrib V37    -0.1717913978039146
#>     Attrib V38    0.21782810198630126
#>     Attrib V39    0.296755099321514
#>     Attrib V4    0.1785201239273444
#>     Attrib V40    -0.20288511826955716
#>     Attrib V41    0.16444697239204634
#>     Attrib V42    0.1862794151222119
#>     Attrib V43    0.2946952092220146
#>     Attrib V44    0.19743527950973405
#>     Attrib V45    0.11481685608020326
#>     Attrib V46    -0.13066357894718458
#>     Attrib V47    -0.20708894655187257
#>     Attrib V48    0.045713579852573495
#>     Attrib V49    0.17395181221409345
#>     Attrib V5    -0.06660353355767322
#>     Attrib V50    -0.32612577832184836
#>     Attrib V51    0.23968452787770805
#>     Attrib V52    0.11144087717582675
#>     Attrib V53    0.08860228649450085
#>     Attrib V54    0.08336543733747583
#>     Attrib V55    -0.049645971857008364
#>     Attrib V56    0.1611071441098999
#>     Attrib V57    -0.1561629804685463
#>     Attrib V58    0.2977913565282958
#>     Attrib V59    0.2271666625987348
#>     Attrib V6    0.19682243907870536
#>     Attrib V60    0.44181947460410315
#>     Attrib V7    0.15093283104751878
#>     Attrib V8    0.18253035995251676
#>     Attrib V9    0.3793533383596665
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.2541242336513798
#>     Attrib V1    -0.04725711773454797
#>     Attrib V10    -0.594489625760861
#>     Attrib V11    -0.7419797371082939
#>     Attrib V12    -0.5326393971664408
#>     Attrib V13    -0.054453732294823684
#>     Attrib V14    0.4024478319927399
#>     Attrib V15    0.33771021946267005
#>     Attrib V16    0.2710927008723366
#>     Attrib V17    0.6031533712307182
#>     Attrib V18    0.3265732782155502
#>     Attrib V19    -0.5161134543542207
#>     Attrib V2    -0.09376256836805981
#>     Attrib V20    -0.04787633411011004
#>     Attrib V21    -0.7533069550053565
#>     Attrib V22    -0.9011763751197139
#>     Attrib V23    0.14263570336426437
#>     Attrib V24    0.036997139211143656
#>     Attrib V25    -0.02816735230731223
#>     Attrib V26    0.598054248882157
#>     Attrib V27    -0.06322134397805547
#>     Attrib V28    -0.11932859672567477
#>     Attrib V29    -0.24028024506853396
#>     Attrib V3    0.04607966309053355
#>     Attrib V30    -0.9034916794078812
#>     Attrib V31    1.0282570490478757
#>     Attrib V32    -0.08824382067877988
#>     Attrib V33    -0.32948450111935085
#>     Attrib V34    0.34451165319968646
#>     Attrib V35    0.4343812136828883
#>     Attrib V36    0.722244143491445
#>     Attrib V37    0.3136989896340248
#>     Attrib V38    -0.37358929317977985
#>     Attrib V39    -0.4859059795468593
#>     Attrib V4    -0.026689293082634177
#>     Attrib V40    0.2706447280974647
#>     Attrib V41    -0.46920325099692806
#>     Attrib V42    -0.1389418687196326
#>     Attrib V43    -0.29157474580387827
#>     Attrib V44    -0.20484362253404315
#>     Attrib V45    0.06565401201595414
#>     Attrib V46    0.19250714694920448
#>     Attrib V47    0.2249554185292801
#>     Attrib V48    -0.2741328201582369
#>     Attrib V49    -0.5834765903069369
#>     Attrib V5    0.20283887060799607
#>     Attrib V50    0.9445045614877791
#>     Attrib V51    -0.47046285533140264
#>     Attrib V52    -0.30837852281532335
#>     Attrib V53    -0.20776268025931963
#>     Attrib V54    0.07182515159914561
#>     Attrib V55    0.535769102589468
#>     Attrib V56    -0.024919946100321215
#>     Attrib V57    0.6280534466820085
#>     Attrib V58    -0.23085717029062722
#>     Attrib V59    -0.08354812158626301
#>     Attrib V6    -0.2323123831255241
#>     Attrib V60    -0.33469609176427406
#>     Attrib V7    0.08852747674861333
#>     Attrib V8    -0.04219247483456432
#>     Attrib V9    -0.6795821581534203
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.07085029821556604
#>     Attrib V1    0.349023152007232
#>     Attrib V10    0.2710292636618074
#>     Attrib V11    0.24766987888299455
#>     Attrib V12    -0.05222369293210115
#>     Attrib V13    -0.1526018167526548
#>     Attrib V14    -0.04611057142941695
#>     Attrib V15    0.16008301612876055
#>     Attrib V16    0.08108474345630522
#>     Attrib V17    -0.0066133681481285265
#>     Attrib V18    0.0485353098608103
#>     Attrib V19    0.40573734213127677
#>     Attrib V2    0.11530188191222973
#>     Attrib V20    0.47198366560551724
#>     Attrib V21    0.71461285840006
#>     Attrib V22    0.5717046086352996
#>     Attrib V23    0.0776570105957718
#>     Attrib V24    -0.07906079422173075
#>     Attrib V25    -0.37162793667839267
#>     Attrib V26    -0.8087939779456041
#>     Attrib V27    -0.6186542034980831
#>     Attrib V28    -0.6229191379952662
#>     Attrib V29    -0.3749159701456626
#>     Attrib V3    -0.09683581335421688
#>     Attrib V30    0.22409339796074482
#>     Attrib V31    -0.7902044201158431
#>     Attrib V32    -0.28469836571162555
#>     Attrib V33    0.2554143377347758
#>     Attrib V34    -0.09106778651542602
#>     Attrib V35    -0.2422984892630303
#>     Attrib V36    -0.4552836738532206
#>     Attrib V37    -0.20256983916254012
#>     Attrib V38    0.24759917229615602
#>     Attrib V39    0.19372589966042078
#>     Attrib V4    0.17734620854014893
#>     Attrib V40    -0.1882486327742212
#>     Attrib V41    0.02521016689666168
#>     Attrib V42    0.17323143303477845
#>     Attrib V43    0.2531792363684462
#>     Attrib V44    0.2980528130632798
#>     Attrib V45    0.06233225929623889
#>     Attrib V46    -0.15047927292353733
#>     Attrib V47    -0.2669123292977041
#>     Attrib V48    0.012653141235009685
#>     Attrib V49    0.051769980839684114
#>     Attrib V5    -0.10029155738225891
#>     Attrib V50    -0.22913848638398462
#>     Attrib V51    0.09768262156568752
#>     Attrib V52    0.03872153024567182
#>     Attrib V53    0.058375852269857934
#>     Attrib V54    0.25913587524939136
#>     Attrib V55    0.06617188518119407
#>     Attrib V56    0.20991647662611732
#>     Attrib V57    0.005864914487944166
#>     Attrib V58    0.41210300985056836
#>     Attrib V59    0.2781744753585603
#>     Attrib V6    0.19821597467832958
#>     Attrib V60    0.48090736665014616
#>     Attrib V7    0.34607066056204727
#>     Attrib V8    0.2518024355994128
#>     Attrib V9    0.41669625581679454
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.05226303706538311
#>     Attrib V1    0.2153425446025672
#>     Attrib V10    0.07607283613261896
#>     Attrib V11    0.17043286313663433
#>     Attrib V12    0.11075064110342456
#>     Attrib V13    -0.0017544891904219407
#>     Attrib V14    0.0730469069860514
#>     Attrib V15    0.1013038394398496
#>     Attrib V16    0.12180092237130824
#>     Attrib V17    0.028528389722246836
#>     Attrib V18    0.13350739527436367
#>     Attrib V19    0.19314402852039447
#>     Attrib V2    0.08786830710451894
#>     Attrib V20    0.18036664932945204
#>     Attrib V21    0.27733319755827407
#>     Attrib V22    0.13337111856452008
#>     Attrib V23    -0.06080629378625195
#>     Attrib V24    -0.12786731515746408
#>     Attrib V25    -0.19270309811642353
#>     Attrib V26    -0.3472622627735655
#>     Attrib V27    -0.1976002700708586
#>     Attrib V28    -0.1740703075968197
#>     Attrib V29    -0.207391987605903
#>     Attrib V3    0.08615776436704897
#>     Attrib V30    0.08131243305034802
#>     Attrib V31    -0.40154775961735684
#>     Attrib V32    -0.1964755466745521
#>     Attrib V33    0.037523738550287546
#>     Attrib V34    -0.024717632271410224
#>     Attrib V35    -3.1886875474559397E-4
#>     Attrib V36    -0.07738861882806206
#>     Attrib V37    -0.059846672703162906
#>     Attrib V38    0.07175484747502878
#>     Attrib V39    0.1405769066267382
#>     Attrib V4    0.132809513673938
#>     Attrib V40    -0.10374252294925779
#>     Attrib V41    0.01874563151760836
#>     Attrib V42    0.14395157671372955
#>     Attrib V43    0.11171009238907444
#>     Attrib V44    0.13062614374953943
#>     Attrib V45    0.1179807426296377
#>     Attrib V46    0.0013407940258168911
#>     Attrib V47    -0.062340287433796375
#>     Attrib V48    0.008208746800594031
#>     Attrib V49    0.1553486719117987
#>     Attrib V5    0.0780468453748435
#>     Attrib V50    -0.01851047297969809
#>     Attrib V51    0.10633178714018006
#>     Attrib V52    0.09460882546928823
#>     Attrib V53    0.156625770366459
#>     Attrib V54    0.056098269439823704
#>     Attrib V55    0.10924216463359745
#>     Attrib V56    0.14141496428526518
#>     Attrib V57    0.055729649613790275
#>     Attrib V58    0.27402402951533145
#>     Attrib V59    0.2149561650125429
#>     Attrib V6    0.15337379644407395
#>     Attrib V60    0.26050263556996145
#>     Attrib V7    0.12367411294114782
#>     Attrib V8    0.11591590638850627
#>     Attrib V9    0.15915666046946758
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
