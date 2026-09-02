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
#>     Threshold    -0.4725006870988961
#>     Node 2    2.5765530178894416
#>     Node 3    1.715581547736227
#>     Node 4    0.6658875907001919
#>     Node 5    -2.0058238118340004
#>     Node 6    1.33704222678807
#>     Node 7    2.0152117282222033
#>     Node 8    1.0255711196193646
#>     Node 9    3.570203307658924
#>     Node 10    -2.2452784478383485
#>     Node 11    1.1211078717049479
#>     Node 12    1.8476131635848176
#>     Node 13    0.6254155478556456
#>     Node 14    2.0273673173837934
#>     Node 15    -1.9013709095014522
#>     Node 16    -0.31398257976441013
#>     Node 17    0.4261434898351785
#>     Node 18    -0.08613913966936276
#>     Node 19    1.745049214920512
#>     Node 20    1.8836365310697092
#>     Node 21    -2.3611497019731336
#>     Node 22    1.3527706837990328
#>     Node 23    2.5407702156780605
#>     Node 24    -1.8187003620414632
#>     Node 25    4.902367157332125
#>     Node 26    -0.6845800978167924
#>     Node 27    2.069698121191508
#>     Node 28    -2.8069391282859013
#>     Node 29    1.2242458086331405
#>     Node 30    0.44386732013853425
#>     Node 31    1.7873305574750877
#>     Node 32    0.5203808080299984
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.5161856495271938
#>     Node 2    -2.6161410385972643
#>     Node 3    -1.6986303436037546
#>     Node 4    -0.6308942586343479
#>     Node 5    2.0254082913413356
#>     Node 6    -1.3205042360174593
#>     Node 7    -1.995499780177752
#>     Node 8    -1.0610454103616238
#>     Node 9    -3.5762386344455726
#>     Node 10    2.1979742454277535
#>     Node 11    -1.0897961599550825
#>     Node 12    -1.9218503207748359
#>     Node 13    -0.5805091519384412
#>     Node 14    -1.9584092060322948
#>     Node 15    1.9070452981723065
#>     Node 16    0.2933494111200427
#>     Node 17    -0.40072021154686255
#>     Node 18    0.11922340939254365
#>     Node 19    -1.7318989396929674
#>     Node 20    -1.8612751018976583
#>     Node 21    2.4156667584654463
#>     Node 22    -1.4102874789255806
#>     Node 23    -2.578562268380396
#>     Node 24    1.8139125038258632
#>     Node 25    -4.8955009779515954
#>     Node 26    0.6118426617168071
#>     Node 27    -2.107747289489403
#>     Node 28    2.7696264783465137
#>     Node 29    -1.2607351099187678
#>     Node 30    -0.37890677859662397
#>     Node 31    -1.729624412143115
#>     Node 32    -0.5453320387552694
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.051421678873912656
#>     Attrib V1    0.7275627617106115
#>     Attrib V10    -0.5259791785233116
#>     Attrib V11    -0.7023403453101154
#>     Attrib V12    -0.27290189152234234
#>     Attrib V13    -0.4949235347545132
#>     Attrib V14    0.41034507186086516
#>     Attrib V15    0.8779581737581778
#>     Attrib V16    0.07141061719179269
#>     Attrib V17    0.01134467587606301
#>     Attrib V18    0.002101527847937603
#>     Attrib V19    -0.08307421992913845
#>     Attrib V2    0.03085637855315534
#>     Attrib V20    0.8779355558706954
#>     Attrib V21    0.6739000890640016
#>     Attrib V22    -0.08029018660036141
#>     Attrib V23    -0.005719404685465745
#>     Attrib V24    0.14884130966345288
#>     Attrib V25    -0.7663266530494668
#>     Attrib V26    -1.0681808857464508
#>     Attrib V27    -0.8694686010739388
#>     Attrib V28    -0.7052917101103043
#>     Attrib V29    0.02734829625909861
#>     Attrib V3    0.30116968339678135
#>     Attrib V30    -0.38545318460301586
#>     Attrib V31    -1.6194418054413302
#>     Attrib V32    -0.16430585250586507
#>     Attrib V33    0.46709739868567807
#>     Attrib V34    0.11369617004347701
#>     Attrib V35    0.08475800758705404
#>     Attrib V36    -0.9332322594791046
#>     Attrib V37    -0.9619227070269285
#>     Attrib V38    0.021586011787055347
#>     Attrib V39    0.13101298039201692
#>     Attrib V4    0.5042413813811739
#>     Attrib V40    -0.5625176367941336
#>     Attrib V41    -0.36941397733252945
#>     Attrib V42    0.36871357969845114
#>     Attrib V43    0.2249483565507483
#>     Attrib V44    0.4002237027780128
#>     Attrib V45    0.5669946288793035
#>     Attrib V46    0.22633492091369228
#>     Attrib V47    -0.3328496238071067
#>     Attrib V48    0.366198173698789
#>     Attrib V49    0.4505253269543287
#>     Attrib V5    -0.436657231002341
#>     Attrib V50    -0.8733746429477273
#>     Attrib V51    -0.13197121576096021
#>     Attrib V52    -0.06368534953984616
#>     Attrib V53    0.26537733503966315
#>     Attrib V54    0.9409864775437522
#>     Attrib V55    0.010957618698313205
#>     Attrib V56    0.5836734083472486
#>     Attrib V57    0.3640164024798629
#>     Attrib V58    0.36044229832528085
#>     Attrib V59    1.1343132667812186
#>     Attrib V6    -0.1305341603184531
#>     Attrib V60    0.7192622699579442
#>     Attrib V7    -0.06877431292632763
#>     Attrib V8    -0.577696037098237
#>     Attrib V9    0.10512252137050954
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.012113840733483545
#>     Attrib V1    0.46739624923406914
#>     Attrib V10    -0.40594498548306035
#>     Attrib V11    -0.48381230349020465
#>     Attrib V12    -0.11020990927124198
#>     Attrib V13    -0.27844505281669973
#>     Attrib V14    0.314939933968529
#>     Attrib V15    0.6708537112026285
#>     Attrib V16    0.018576458739531596
#>     Attrib V17    0.0018665867535481227
#>     Attrib V18    -0.02280882847293256
#>     Attrib V19    0.0015256785618100385
#>     Attrib V2    0.04833668284582664
#>     Attrib V20    0.5725489999466221
#>     Attrib V21    0.4010379556109152
#>     Attrib V22    -0.053939547572211394
#>     Attrib V23    -0.043485993643761385
#>     Attrib V24    0.15479678188521348
#>     Attrib V25    -0.353892307416971
#>     Attrib V26    -0.5705500160954706
#>     Attrib V27    -0.5318118256460022
#>     Attrib V28    -0.5368635142094514
#>     Attrib V29    -0.12530614773748566
#>     Attrib V3    0.16365810668903077
#>     Attrib V30    -0.27974252891717133
#>     Attrib V31    -1.0488637379128483
#>     Attrib V32    -0.10704644113045672
#>     Attrib V33    0.259800012323124
#>     Attrib V34    -0.06416635156831679
#>     Attrib V35    0.03222014428570904
#>     Attrib V36    -0.6449373191788964
#>     Attrib V37    -0.6690328007031756
#>     Attrib V38    -0.05460003203630375
#>     Attrib V39    0.12044626346294633
#>     Attrib V4    0.3083993894660625
#>     Attrib V40    -0.3332120942035881
#>     Attrib V41    -0.2155029624305157
#>     Attrib V42    0.22872742992727324
#>     Attrib V43    0.07562514840036237
#>     Attrib V44    0.2161814406613473
#>     Attrib V45    0.3545201195627402
#>     Attrib V46    0.11111023691616818
#>     Attrib V47    -0.18086018118721367
#>     Attrib V48    0.2579430726147475
#>     Attrib V49    0.33552940274259846
#>     Attrib V5    -0.30200227146606695
#>     Attrib V50    -0.4967890545649698
#>     Attrib V51    -0.08858732822109512
#>     Attrib V52    0.00317335808758508
#>     Attrib V53    0.27147593733634223
#>     Attrib V54    0.7905156500720191
#>     Attrib V55    0.1453283003985449
#>     Attrib V56    0.4195483996672641
#>     Attrib V57    0.37480842915409623
#>     Attrib V58    0.3135851679506882
#>     Attrib V59    0.8328939501914363
#>     Attrib V6    -0.07524945166503234
#>     Attrib V60    0.4929944115658946
#>     Attrib V7    -0.0798345595312068
#>     Attrib V8    -0.37869500746577345
#>     Attrib V9    0.019405958165429116
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.04421434238134776
#>     Attrib V1    0.14981375705771074
#>     Attrib V10    -0.08674362970383284
#>     Attrib V11    -0.11059991040563075
#>     Attrib V12    0.0075537574025959335
#>     Attrib V13    -0.12968986792117485
#>     Attrib V14    0.0571440978332735
#>     Attrib V15    0.2036076753510681
#>     Attrib V16    -0.0655237259068162
#>     Attrib V17    0.006076894538277394
#>     Attrib V18    -0.0033375386745028175
#>     Attrib V19    -0.03977543687115262
#>     Attrib V2    -0.02587829405934177
#>     Attrib V20    0.19274244120315379
#>     Attrib V21    0.1485700162068881
#>     Attrib V22    -0.1420089196482953
#>     Attrib V23    -0.04007040530954565
#>     Attrib V24    0.01885645891254949
#>     Attrib V25    -0.2297630200085006
#>     Attrib V26    -0.18710707475561178
#>     Attrib V27    -0.12504179064581886
#>     Attrib V28    -0.07755090683164133
#>     Attrib V29    0.0271610244164602
#>     Attrib V3    0.10910128508488355
#>     Attrib V30    -0.08963518323370313
#>     Attrib V31    -0.39618361931561646
#>     Attrib V32    0.029733798204471616
#>     Attrib V33    0.13760338051366325
#>     Attrib V34    0.02844786781010434
#>     Attrib V35    0.11068182026764695
#>     Attrib V36    -0.2690843688368909
#>     Attrib V37    -0.24415434831432684
#>     Attrib V38    -0.04044265840716694
#>     Attrib V39    0.03998759037769469
#>     Attrib V4    0.14562663903155726
#>     Attrib V40    -0.12764343936362674
#>     Attrib V41    -0.06703361414338675
#>     Attrib V42    0.07279508534674493
#>     Attrib V43    -0.04952024513388522
#>     Attrib V44    0.07446181863068374
#>     Attrib V45    0.2175857985869052
#>     Attrib V46    0.06178851595904937
#>     Attrib V47    -0.07258108020220327
#>     Attrib V48    0.19040985965256405
#>     Attrib V49    0.24896297573581289
#>     Attrib V5    -0.03188098943351458
#>     Attrib V50    -0.18911814478851258
#>     Attrib V51    0.041417727399792506
#>     Attrib V52    0.051035207849096466
#>     Attrib V53    0.22098974605749483
#>     Attrib V54    0.16505658649221164
#>     Attrib V55    0.019218907703458618
#>     Attrib V56    0.09712548880878172
#>     Attrib V57    0.17326081296385595
#>     Attrib V58    0.10300072242458276
#>     Attrib V59    0.29305611045706237
#>     Attrib V6    -0.05314873078791301
#>     Attrib V60    0.19034991306753316
#>     Attrib V7    -0.0763315765728469
#>     Attrib V8    -0.21423394275182975
#>     Attrib V9    0.15206389007865914
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5967368273787341
#>     Attrib V1    -0.29316715821010403
#>     Attrib V10    -0.21922100374157116
#>     Attrib V11    -0.18335808456759453
#>     Attrib V12    -0.6467485146889681
#>     Attrib V13    0.165702654644866
#>     Attrib V14    0.4608921563729505
#>     Attrib V15    0.07970078031533279
#>     Attrib V16    0.6011260830058999
#>     Attrib V17    0.14458132628169051
#>     Attrib V18    -0.12280453317002668
#>     Attrib V19    0.08653931245593242
#>     Attrib V2    0.4129986637146461
#>     Attrib V20    -0.4991033701502523
#>     Attrib V21    -0.24951911712518018
#>     Attrib V22    0.22702404536990847
#>     Attrib V23    -0.31165838042672334
#>     Attrib V24    -0.4990224854752799
#>     Attrib V25    0.43472358548839213
#>     Attrib V26    0.14668222410096515
#>     Attrib V27    -0.3446675367409002
#>     Attrib V28    -0.5103457631725665
#>     Attrib V29    -0.46899712794444526
#>     Attrib V3    0.14355350237550726
#>     Attrib V30    -0.0700194762342666
#>     Attrib V31    0.9137379654425839
#>     Attrib V32    -0.5067800469723565
#>     Attrib V33    -0.370810836772647
#>     Attrib V34    0.08361394696625739
#>     Attrib V35    -0.4516172364926158
#>     Attrib V36    0.9425673820640343
#>     Attrib V37    0.62998711125027
#>     Attrib V38    -0.01688932668022476
#>     Attrib V39    0.038422779806757096
#>     Attrib V4    -0.43261491702777927
#>     Attrib V40    0.4851601072888167
#>     Attrib V41    -0.4466172988352812
#>     Attrib V42    -0.3900513959802022
#>     Attrib V43    0.09290711267863959
#>     Attrib V44    -0.1795683119463376
#>     Attrib V45    -0.7310020537750421
#>     Attrib V46    -0.5010797287653239
#>     Attrib V47    -0.020941817492031507
#>     Attrib V48    -0.6252495127041213
#>     Attrib V49    -0.9048614734856056
#>     Attrib V5    -0.07111690013557209
#>     Attrib V50    0.9096351573338969
#>     Attrib V51    -0.08275839502904565
#>     Attrib V52    -0.2867426801932417
#>     Attrib V53    -0.8765120399799736
#>     Attrib V54    -0.0963934727177221
#>     Attrib V55    0.24653413514803507
#>     Attrib V56    0.426876291030137
#>     Attrib V57    0.4296547254163867
#>     Attrib V58    0.04339040503841779
#>     Attrib V59    -0.4418727666838851
#>     Attrib V6    -0.047625120146273556
#>     Attrib V60    -0.21002972590759417
#>     Attrib V7    0.4059774639573434
#>     Attrib V8    0.7709109421688364
#>     Attrib V9    -0.7627730741601076
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.0641592677805655
#>     Attrib V1    0.39116094683763325
#>     Attrib V10    -0.34794239643816566
#>     Attrib V11    -0.3449593477522913
#>     Attrib V12    -0.019992223621193284
#>     Attrib V13    -0.28070546296499954
#>     Attrib V14    0.18558976878895622
#>     Attrib V15    0.4422198797024872
#>     Attrib V16    0.03879511887214433
#>     Attrib V17    -0.004573079538937916
#>     Attrib V18    0.06742980119994034
#>     Attrib V19    -0.01833948533385684
#>     Attrib V2    0.00917706338292849
#>     Attrib V20    0.45010475958292273
#>     Attrib V21    0.34227296588348255
#>     Attrib V22    -0.12155395965281449
#>     Attrib V23    -0.04593364039593231
#>     Attrib V24    0.19719974864286732
#>     Attrib V25    -0.20700235195243405
#>     Attrib V26    -0.37389096220458307
#>     Attrib V27    -0.3273048412927804
#>     Attrib V28    -0.44328186746514303
#>     Attrib V29    -0.060175951150163644
#>     Attrib V3    0.1202999715081223
#>     Attrib V30    -0.21346936310498604
#>     Attrib V31    -0.8533983826021709
#>     Attrib V32    -0.016490909124922803
#>     Attrib V33    0.24923832667658216
#>     Attrib V34    -0.021516848300854485
#>     Attrib V35    0.06655851212195794
#>     Attrib V36    -0.5438557117117323
#>     Attrib V37    -0.555672451680001
#>     Attrib V38    -0.05875756085020396
#>     Attrib V39    0.06423423514536665
#>     Attrib V4    0.2761686577839122
#>     Attrib V40    -0.2815821371848782
#>     Attrib V41    -0.07962621714203115
#>     Attrib V42    0.2209351174027163
#>     Attrib V43    0.026194924825124446
#>     Attrib V44    0.10488459792933591
#>     Attrib V45    0.249353404160149
#>     Attrib V46    0.09246155190009094
#>     Attrib V47    -0.19747310075480753
#>     Attrib V48    0.1903627396251988
#>     Attrib V49    0.2946252022113242
#>     Attrib V5    -0.23174690618062768
#>     Attrib V50    -0.39462461550667277
#>     Attrib V51    -0.03400654320898624
#>     Attrib V52    -0.026133634925689955
#>     Attrib V53    0.31919150460222523
#>     Attrib V54    0.5267799687811338
#>     Attrib V55    0.0551248559074672
#>     Attrib V56    0.3155417553543983
#>     Attrib V57    0.3190187254586039
#>     Attrib V58    0.24501871936519393
#>     Attrib V59    0.6947971381910596
#>     Attrib V6    0.02580857461650254
#>     Attrib V60    0.4650251722844345
#>     Attrib V7    -0.026529085959594433
#>     Attrib V8    -0.2626063427074956
#>     Attrib V9    0.13864814085987576
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4888346982950311
#>     Attrib V1    0.5270993384345556
#>     Attrib V10    0.7581951490218384
#>     Attrib V11    0.6574813475911568
#>     Attrib V12    0.6044910515156856
#>     Attrib V13    -0.166112385620541
#>     Attrib V14    -0.7337042257325506
#>     Attrib V15    -0.38863701889537244
#>     Attrib V16    -0.6403129947563331
#>     Attrib V17    -0.20470803473943994
#>     Attrib V18    -0.009098136802314754
#>     Attrib V19    -0.17098476769389712
#>     Attrib V2    -0.09300161050770475
#>     Attrib V20    0.28244620923145086
#>     Attrib V21    0.2179164284688902
#>     Attrib V22    -0.17868605067764767
#>     Attrib V23    0.341826279065983
#>     Attrib V24    0.21296382065633804
#>     Attrib V25    -0.5360129721130434
#>     Attrib V26    0.06888439840331557
#>     Attrib V27    0.7576619824017699
#>     Attrib V28    0.9070433218889973
#>     Attrib V29    0.6133534233146049
#>     Attrib V3    0.04862805677187465
#>     Attrib V30    0.22976736878063708
#>     Attrib V31    -0.5683713343528033
#>     Attrib V32    0.4145087166635552
#>     Attrib V33    0.12445118756830054
#>     Attrib V34    -0.09018109914343754
#>     Attrib V35    0.5946757102990256
#>     Attrib V36    -0.5792540042982363
#>     Attrib V37    -0.15787050057702604
#>     Attrib V38    0.06473900363524167
#>     Attrib V39    -0.191187268683526
#>     Attrib V4    0.31647057058214717
#>     Attrib V40    -0.35141610592030065
#>     Attrib V41    0.49343278738715246
#>     Attrib V42    0.19305242584674545
#>     Attrib V43    -0.23797461472698517
#>     Attrib V44    0.07024815506527232
#>     Attrib V45    0.6698573738175357
#>     Attrib V46    0.6920877300213563
#>     Attrib V47    0.3513265484840282
#>     Attrib V48    0.6322700961565667
#>     Attrib V49    0.7958125752521544
#>     Attrib V5    0.29494925741714495
#>     Attrib V50    -0.3383958340540724
#>     Attrib V51    0.24198481493389626
#>     Attrib V52    0.38999167444533084
#>     Attrib V53    0.7251502797427257
#>     Attrib V54    -0.12265309845842834
#>     Attrib V55    -0.3669744677089894
#>     Attrib V56    -0.7230183033322339
#>     Attrib V57    -0.5426744471257755
#>     Attrib V58    -0.2018829310528752
#>     Attrib V59    0.03228944718593015
#>     Attrib V6    0.11805544773537231
#>     Attrib V60    0.2352115147637828
#>     Attrib V7    -0.27677631164252453
#>     Attrib V8    -0.6595362848618895
#>     Attrib V9    0.992141994937416
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.2699821275237325
#>     Attrib V1    0.23087739398204188
#>     Attrib V10    0.05947446745465925
#>     Attrib V11    0.02349270925382189
#>     Attrib V12    0.1627726020202183
#>     Attrib V13    -0.21924982651028296
#>     Attrib V14    -0.22304387135520584
#>     Attrib V15    0.0339456938913053
#>     Attrib V16    -0.20369790688222034
#>     Attrib V17    -0.06093615866087997
#>     Attrib V18    -0.044353287234253934
#>     Attrib V19    -0.1214857147618517
#>     Attrib V2    -0.12279095130642896
#>     Attrib V20    0.20562821914365728
#>     Attrib V21    0.12152399332529946
#>     Attrib V22    -0.25096783018080326
#>     Attrib V23    -0.04622961520236648
#>     Attrib V24    0.08920111364708559
#>     Attrib V25    -0.3491904387333133
#>     Attrib V26    -0.17557632517587116
#>     Attrib V27    0.10126406131601978
#>     Attrib V28    0.14206336406070938
#>     Attrib V29    0.1956645637855536
#>     Attrib V3    -0.0034001310881429927
#>     Attrib V30    0.02613361406662294
#>     Attrib V31    -0.5722452751998872
#>     Attrib V32    0.18421153460094777
#>     Attrib V33    0.26152316434248946
#>     Attrib V34    0.04766360624461844
#>     Attrib V35    0.2527767221499954
#>     Attrib V36    -0.3998372437268692
#>     Attrib V37    -0.34248501295140316
#>     Attrib V38    0.0679816749553625
#>     Attrib V39    0.015588850267449375
#>     Attrib V4    0.2511029741524867
#>     Attrib V40    -0.27678054018575177
#>     Attrib V41    0.014867357352360059
#>     Attrib V42    0.015402887136417825
#>     Attrib V43    -0.10626270282298089
#>     Attrib V44    0.13585674720240404
#>     Attrib V45    0.39747183734269753
#>     Attrib V46    0.2482257155407575
#>     Attrib V47    -0.029535653767752374
#>     Attrib V48    0.40250006847433506
#>     Attrib V49    0.4678499795888741
#>     Attrib V5    -0.06656129407685793
#>     Attrib V50    -0.4581810564803971
#>     Attrib V51    -0.04301171064696573
#>     Attrib V52    0.05323812170409576
#>     Attrib V53    0.3629377628185629
#>     Attrib V54    0.14982437069223137
#>     Attrib V55    -0.1319467671307233
#>     Attrib V56    -0.17790006206319042
#>     Attrib V57    0.04589761427336551
#>     Attrib V58    -0.022734210157308296
#>     Attrib V59    0.33092944302238636
#>     Attrib V6    -0.05328322924624511
#>     Attrib V60    0.23935469072753499
#>     Attrib V7    -0.18792011694600952
#>     Attrib V8    -0.43034541362295586
#>     Attrib V9    0.34106089367674647
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.36373164661683177
#>     Attrib V1    0.12274287200291373
#>     Attrib V10    1.0038227653677618
#>     Attrib V11    1.081864882214125
#>     Attrib V12    1.1671984472985144
#>     Attrib V13    0.20289995462077617
#>     Attrib V14    -0.9772290251739071
#>     Attrib V15    -0.8877666547451963
#>     Attrib V16    -1.0167806893408662
#>     Attrib V17    -0.09182792676848481
#>     Attrib V18    0.33712456663244417
#>     Attrib V19    0.24522063285345377
#>     Attrib V2    -0.1904879228564744
#>     Attrib V20    0.4389509795187764
#>     Attrib V21    0.44724013033194826
#>     Attrib V22    0.2655606589840295
#>     Attrib V23    1.266833381903722
#>     Attrib V24    0.9774958747084332
#>     Attrib V25    0.12487872731743609
#>     Attrib V26    0.8287690310343085
#>     Attrib V27    1.3670826733743846
#>     Attrib V28    1.3863399403668741
#>     Attrib V29    0.8262225473019945
#>     Attrib V3    -0.06386794037475947
#>     Attrib V30    0.3133354675745773
#>     Attrib V31    -0.7030522602867328
#>     Attrib V32    0.6326533069615476
#>     Attrib V33    -0.19833642653542047
#>     Attrib V34    -0.5244884901117062
#>     Attrib V35    0.47257726756423896
#>     Attrib V36    -0.7684434369512768
#>     Attrib V37    -0.46887871214299215
#>     Attrib V38    -0.11484813303245879
#>     Attrib V39    0.16111850406229444
#>     Attrib V4    0.2714323315423834
#>     Attrib V40    0.0933543879291225
#>     Attrib V41    1.1340086362268693
#>     Attrib V42    0.39474968254629145
#>     Attrib V43    -0.25188355920245115
#>     Attrib V44    0.16666415418567973
#>     Attrib V45    0.7024180639512042
#>     Attrib V46    0.9400185679163674
#>     Attrib V47    0.8456893268395004
#>     Attrib V48    1.124370558522968
#>     Attrib V49    1.6443592181179392
#>     Attrib V5    0.5544373885095424
#>     Attrib V50    -0.09296987745742004
#>     Attrib V51    0.7497672716275119
#>     Attrib V52    0.9953186885047189
#>     Attrib V53    1.4553026728807086
#>     Attrib V54    -0.2550738834136119
#>     Attrib V55    -0.25423115054315004
#>     Attrib V56    -1.0673214596512544
#>     Attrib V57    -1.21815606999485
#>     Attrib V58    -0.1634878658855904
#>     Attrib V59    -0.1671121591502577
#>     Attrib V6    0.30215748159211375
#>     Attrib V60    -0.08832482658324622
#>     Attrib V7    -0.5804164167788373
#>     Attrib V8    -0.41132918462153506
#>     Attrib V9    1.386995075423629
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.6387977730268624
#>     Attrib V1    -0.2191691292092208
#>     Attrib V10    -0.6034217652797638
#>     Attrib V11    -0.5482113598269939
#>     Attrib V12    -0.8322884929824356
#>     Attrib V13    0.05265994175697352
#>     Attrib V14    0.680878105610829
#>     Attrib V15    0.2794983195889055
#>     Attrib V16    0.6568234934035339
#>     Attrib V17    0.07761358706371654
#>     Attrib V18    -0.13002665480291628
#>     Attrib V19    0.10959322192674148
#>     Attrib V2    0.35565700722746785
#>     Attrib V20    -0.14503345808751994
#>     Attrib V21    -0.037595320668623256
#>     Attrib V22    0.2306528178403931
#>     Attrib V23    -0.35480963574044894
#>     Attrib V24    -0.43969908484444903
#>     Attrib V25    0.34184260378326525
#>     Attrib V26    -0.0839791777280723
#>     Attrib V27    -0.7878849323223652
#>     Attrib V28    -0.9323410848461341
#>     Attrib V29    -0.5070228348095052
#>     Attrib V3    0.12194852579928872
#>     Attrib V30    -0.07653405753751905
#>     Attrib V31    0.5819367812504237
#>     Attrib V32    -0.7388567874248751
#>     Attrib V33    -0.2511906869424589
#>     Attrib V34    0.12905964395469038
#>     Attrib V35    -0.5103856662944415
#>     Attrib V36    0.7889484373454261
#>     Attrib V37    0.44144882770588595
#>     Attrib V38    0.0585295541675489
#>     Attrib V39    0.14407763119695785
#>     Attrib V4    -0.406245209023113
#>     Attrib V40    0.3736745591431081
#>     Attrib V41    -0.5861924154819026
#>     Attrib V42    -0.31261125994157823
#>     Attrib V43    0.1273966897289544
#>     Attrib V44    -0.06895099001275178
#>     Attrib V45    -0.5424901906907956
#>     Attrib V46    -0.5766553186977652
#>     Attrib V47    -0.2425002728070714
#>     Attrib V48    -0.6970483837229051
#>     Attrib V49    -0.9437126500240502
#>     Attrib V5    -0.32620969273316847
#>     Attrib V50    0.5443516531748525
#>     Attrib V51    -0.2568395096308452
#>     Attrib V52    -0.4018774260900024
#>     Attrib V53    -0.9668520453043535
#>     Attrib V54    0.08768359581136734
#>     Attrib V55    0.22215962200513764
#>     Attrib V56    0.6233530219372247
#>     Attrib V57    0.524880522397699
#>     Attrib V58    0.009559088835808792
#>     Attrib V59    -0.3565401788692664
#>     Attrib V6    -0.03996105840322186
#>     Attrib V60    -0.3993535042332966
#>     Attrib V7    0.39285756412025824
#>     Attrib V8    0.7105823970890662
#>     Attrib V9    -0.8715389032299004
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.040861196935059796
#>     Attrib V1    0.27055574181784225
#>     Attrib V10    -0.207608118173589
#>     Attrib V11    -0.23145248345476438
#>     Attrib V12    0.029973838933986117
#>     Attrib V13    -0.28325963013706085
#>     Attrib V14    0.07586219220765922
#>     Attrib V15    0.3042075188502858
#>     Attrib V16    -0.06999199609239347
#>     Attrib V17    0.040798578334675546
#>     Attrib V18    0.06287747570373486
#>     Attrib V19    -0.015087952748495082
#>     Attrib V2    -0.07464967640037802
#>     Attrib V20    0.4384821883850505
#>     Attrib V21    0.2645974924795119
#>     Attrib V22    -0.1304006126312467
#>     Attrib V23    -0.010451198503820362
#>     Attrib V24    0.11091762961005637
#>     Attrib V25    -0.2789608390997166
#>     Attrib V26    -0.37186175010629036
#>     Attrib V27    -0.2239831259982903
#>     Attrib V28    -0.22852649244355572
#>     Attrib V29    0.017931178338749267
#>     Attrib V3    0.03980785144708537
#>     Attrib V30    -0.13072779372638682
#>     Attrib V31    -0.7994250453987755
#>     Attrib V32    -0.03819642973182346
#>     Attrib V33    0.1895392467751898
#>     Attrib V34    0.01958933459323752
#>     Attrib V35    0.12866260504309432
#>     Attrib V36    -0.46080829575823123
#>     Attrib V37    -0.492300692247802
#>     Attrib V38    0.04437357473166997
#>     Attrib V39    0.06780299824075887
#>     Attrib V4    0.21889184212951393
#>     Attrib V40    -0.25858017186653454
#>     Attrib V41    -0.14544811853156903
#>     Attrib V42    0.1453128408322749
#>     Attrib V43    0.011904077037734787
#>     Attrib V44    0.16683971178299287
#>     Attrib V45    0.32695568963645755
#>     Attrib V46    0.11152923175630161
#>     Attrib V47    -0.10253321653440715
#>     Attrib V48    0.2742744729686971
#>     Attrib V49    0.3258232981052205
#>     Attrib V5    -0.15296304384792853
#>     Attrib V50    -0.3928825048922217
#>     Attrib V51    0.032290393256375824
#>     Attrib V52    0.003149705345735747
#>     Attrib V53    0.24681990393833064
#>     Attrib V54    0.4416866467063748
#>     Attrib V55    0.019543757896902787
#>     Attrib V56    0.18078149370098887
#>     Attrib V57    0.2169829713224826
#>     Attrib V58    0.17034243804256138
#>     Attrib V59    0.47952020875361107
#>     Attrib V6    -0.025242516766977315
#>     Attrib V60    0.31719590490786465
#>     Attrib V7    -0.1352485116530526
#>     Attrib V8    -0.29058940014465423
#>     Attrib V9    0.18039707698276755
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.05315726747282625
#>     Attrib V1    0.4810661937017835
#>     Attrib V10    -0.4750604488265731
#>     Attrib V11    -0.47303569291493514
#>     Attrib V12    -0.20601754736635128
#>     Attrib V13    -0.36843086172598427
#>     Attrib V14    0.3301703601983976
#>     Attrib V15    0.6544366396620545
#>     Attrib V16    0.07851785124161771
#>     Attrib V17    0.015310509468514241
#>     Attrib V18    0.015662054585057508
#>     Attrib V19    0.019922704486192447
#>     Attrib V2    0.061815376426091154
#>     Attrib V20    0.6130651781748261
#>     Attrib V21    0.4586753096293936
#>     Attrib V22    -0.048711173406145176
#>     Attrib V23    -0.03995563223087165
#>     Attrib V24    0.09217784927446644
#>     Attrib V25    -0.5265480071160656
#>     Attrib V26    -0.7219526591081858
#>     Attrib V27    -0.5693312958658088
#>     Attrib V28    -0.5857085869993847
#>     Attrib V29    0.003008072397833592
#>     Attrib V3    0.11894455158168353
#>     Attrib V30    -0.32447820906714675
#>     Attrib V31    -1.2041020776973093
#>     Attrib V32    -0.1692386568635679
#>     Attrib V33    0.33833869733908617
#>     Attrib V34    0.0385303210571369
#>     Attrib V35    0.05788968246850658
#>     Attrib V36    -0.6749707015213436
#>     Attrib V37    -0.7139438091985363
#>     Attrib V38    0.01683082831519217
#>     Attrib V39    0.0828859677709522
#>     Attrib V4    0.3861811022728844
#>     Attrib V40    -0.36408285301581805
#>     Attrib V41    -0.2837950663258086
#>     Attrib V42    0.19397453732752357
#>     Attrib V43    0.14838940364211745
#>     Attrib V44    0.20486852192129
#>     Attrib V45    0.4297199648127504
#>     Attrib V46    0.21017673130683331
#>     Attrib V47    -0.23324008974417318
#>     Attrib V48    0.34530036000667297
#>     Attrib V49    0.36110079799066425
#>     Attrib V5    -0.33197916820626877
#>     Attrib V50    -0.5820280614868809
#>     Attrib V51    -0.06327713856905375
#>     Attrib V52    0.008399471199301548
#>     Attrib V53    0.30071045304081107
#>     Attrib V54    0.7809079714279087
#>     Attrib V55    0.04171928083714848
#>     Attrib V56    0.43569147485574505
#>     Attrib V57    0.4318464524045091
#>     Attrib V58    0.30416574644923083
#>     Attrib V59    0.8858563691869847
#>     Attrib V6    -0.09798091292449293
#>     Attrib V60    0.5461262084156098
#>     Attrib V7    -0.03190894438280771
#>     Attrib V8    -0.42730980302610855
#>     Attrib V9    0.0876210395970224
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.08340251547265194
#>     Attrib V1    0.1933302723570295
#>     Attrib V10    -0.12281635318558194
#>     Attrib V11    -0.10897606259692086
#>     Attrib V12    0.012050813498260503
#>     Attrib V13    -0.07456202635552918
#>     Attrib V14    0.037350129064176764
#>     Attrib V15    0.1425360023253075
#>     Attrib V16    -0.07170837663624534
#>     Attrib V17    0.02804874809972441
#>     Attrib V18    0.029971011779474154
#>     Attrib V19    -0.025274328996450626
#>     Attrib V2    0.006325695014389671
#>     Attrib V20    0.21241230508012668
#>     Attrib V21    0.12216820498152872
#>     Attrib V22    -0.12671177276142415
#>     Attrib V23    0.0065145707503827775
#>     Attrib V24    0.0922294126973655
#>     Attrib V25    -0.08780638303317963
#>     Attrib V26    -0.17392033915054522
#>     Attrib V27    -0.05444316633615095
#>     Attrib V28    -0.16312985990763887
#>     Attrib V29    -0.023357592727964286
#>     Attrib V3    0.14570058740424618
#>     Attrib V30    -0.10269433434551122
#>     Attrib V31    -0.4253351539350616
#>     Attrib V32    0.016328466546183532
#>     Attrib V33    0.09329201588717746
#>     Attrib V34    0.06678851073271358
#>     Attrib V35    0.0980215911760289
#>     Attrib V36    -0.21837714881525386
#>     Attrib V37    -0.1894671276876347
#>     Attrib V38    0.0031808128748456706
#>     Attrib V39    0.08504526536297054
#>     Attrib V4    0.1728718437161637
#>     Attrib V40    -0.09122065013893811
#>     Attrib V41    -0.02451403401597601
#>     Attrib V42    0.061040570529183054
#>     Attrib V43    -0.06044908091841594
#>     Attrib V44    0.03918331478591059
#>     Attrib V45    0.09450795086550724
#>     Attrib V46    0.09701197356826975
#>     Attrib V47    -0.01883118377722833
#>     Attrib V48    0.12573790313866148
#>     Attrib V49    0.21458201044657585
#>     Attrib V5    -0.02503390871986941
#>     Attrib V50    -0.20286176456579502
#>     Attrib V51    -0.0045574230752383595
#>     Attrib V52    0.011814973323563075
#>     Attrib V53    0.18912450731067723
#>     Attrib V54    0.2012477705876505
#>     Attrib V55    0.032682459332764424
#>     Attrib V56    0.10962049099536884
#>     Attrib V57    0.18732040587436272
#>     Attrib V58    0.09817256064751594
#>     Attrib V59    0.3357498963113153
#>     Attrib V6    0.03011395009846842
#>     Attrib V60    0.28327753410316187
#>     Attrib V7    0.002109605969216964
#>     Attrib V8    -0.19175131478807236
#>     Attrib V9    0.09922702487803065
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.07634034871317913
#>     Attrib V1    0.5958203950759036
#>     Attrib V10    -0.4364519635003661
#>     Attrib V11    -0.44906393890496016
#>     Attrib V12    -0.08297986222903149
#>     Attrib V13    -0.38968180414116427
#>     Attrib V14    0.2802584254644936
#>     Attrib V15    0.7201040935635706
#>     Attrib V16    -1.5679901268467699E-4
#>     Attrib V17    0.013962092057240676
#>     Attrib V18    0.0033022284648754176
#>     Attrib V19    -0.061037584377291426
#>     Attrib V2    0.01302031216091494
#>     Attrib V20    0.6552594668706331
#>     Attrib V21    0.47241085571215413
#>     Attrib V22    -0.10063679740006809
#>     Attrib V23    -0.01202444741580705
#>     Attrib V24    0.15292873980999971
#>     Attrib V25    -0.47291030132427614
#>     Attrib V26    -0.6666280996475654
#>     Attrib V27    -0.6304754139938007
#>     Attrib V28    -0.6591481292308256
#>     Attrib V29    -0.11360181041786463
#>     Attrib V3    0.09643844981024892
#>     Attrib V30    -0.3256463177943313
#>     Attrib V31    -1.1911970016019366
#>     Attrib V32    -0.1351603745199577
#>     Attrib V33    0.3504724225218602
#>     Attrib V34    0.005617557394669692
#>     Attrib V35    0.09698254866324887
#>     Attrib V36    -0.749539474232047
#>     Attrib V37    -0.7231261811535092
#>     Attrib V38    -0.011613674832332891
#>     Attrib V39    0.1462636117215229
#>     Attrib V4    0.349534842518829
#>     Attrib V40    -0.42120157850915985
#>     Attrib V41    -0.3034432788398092
#>     Attrib V42    0.19803810737899216
#>     Attrib V43    0.07443682745007747
#>     Attrib V44    0.27166367889768056
#>     Attrib V45    0.4039266806654056
#>     Attrib V46    0.1730813973432738
#>     Attrib V47    -0.2580883272421241
#>     Attrib V48    0.4037959880900601
#>     Attrib V49    0.4801096903922519
#>     Attrib V5    -0.3868138226033679
#>     Attrib V50    -0.6197223777507473
#>     Attrib V51    -0.1136568916469454
#>     Attrib V52    -0.04735059848914393
#>     Attrib V53    0.2801239587175843
#>     Attrib V54    0.8899654002064399
#>     Attrib V55    0.10658007225764966
#>     Attrib V56    0.46279722175556126
#>     Attrib V57    0.384534136414535
#>     Attrib V58    0.30770074777169687
#>     Attrib V59    0.9328191537141846
#>     Attrib V6    -0.06185166200962026
#>     Attrib V60    0.6094125389833028
#>     Attrib V7    -0.060794812571905395
#>     Attrib V8    -0.5314767902963021
#>     Attrib V9    0.08984618874115842
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.4838403023642773
#>     Attrib V1    -0.3005072601200043
#>     Attrib V10    -0.017513884525122158
#>     Attrib V11    -0.100734129104306
#>     Attrib V12    -0.49885109757715906
#>     Attrib V13    0.1348802247545548
#>     Attrib V14    0.16800422227076953
#>     Attrib V15    -0.16205175071357603
#>     Attrib V16    0.46586707193861915
#>     Attrib V17    0.17037724634670473
#>     Attrib V18    -0.04741502606275389
#>     Attrib V19    0.09174466459837938
#>     Attrib V2    0.32032883497883036
#>     Attrib V20    -0.473067846027567
#>     Attrib V21    -0.36437438493099883
#>     Attrib V22    0.12378146458479374
#>     Attrib V23    -0.3812065769002989
#>     Attrib V24    -0.5699919710117924
#>     Attrib V25    0.25346192726732936
#>     Attrib V26    0.25705421427290454
#>     Attrib V27    0.027349546067661223
#>     Attrib V28    0.1177660347141083
#>     Attrib V29    -0.14639445405445242
#>     Attrib V3    0.1321198685665365
#>     Attrib V30    -0.01122596440874974
#>     Attrib V31    0.8345227346069504
#>     Attrib V32    -0.43994603291345474
#>     Attrib V33    -0.41893453133990455
#>     Attrib V34    0.22205833167650726
#>     Attrib V35    0.022390161628387983
#>     Attrib V36    1.2497224358680266
#>     Attrib V37    1.2069450256847787
#>     Attrib V38    0.3051955585124204
#>     Attrib V39    0.1104093586696299
#>     Attrib V4    -0.3671622940407475
#>     Attrib V40    0.4142175931183092
#>     Attrib V41    -0.31699153277999437
#>     Attrib V42    -0.5669934683357463
#>     Attrib V43    -0.10627061810332038
#>     Attrib V44    -0.11052818840790245
#>     Attrib V45    -0.3052279169209852
#>     Attrib V46    -0.18666118875630486
#>     Attrib V47    0.15818046005673403
#>     Attrib V48    -0.3288161386442364
#>     Attrib V49    -0.5774432745245109
#>     Attrib V5    0.04947503302820232
#>     Attrib V50    0.9136906960918407
#>     Attrib V51    -0.04210852350765889
#>     Attrib V52    -0.21598901383783298
#>     Attrib V53    -0.6782025533810292
#>     Attrib V54    -0.4447741932095783
#>     Attrib V55    -0.00615184579124577
#>     Attrib V56    0.09055604482766283
#>     Attrib V57    0.09185730259296461
#>     Attrib V58    -0.10833417941475788
#>     Attrib V59    -0.7492944843832632
#>     Attrib V6    -0.10450877987730539
#>     Attrib V60    -0.35837861686343
#>     Attrib V7    0.13119266045344408
#>     Attrib V8    0.40275786976917505
#>     Attrib V9    -0.54087016536687
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.2170014406263029
#>     Attrib V1    -0.06532103190647591
#>     Attrib V10    0.008910738620250425
#>     Attrib V11    -0.05224916317702522
#>     Attrib V12    -0.16309547929337373
#>     Attrib V13    0.022034265895489232
#>     Attrib V14    -0.024341208249492617
#>     Attrib V15    -0.051603765172477375
#>     Attrib V16    0.13998378183304802
#>     Attrib V17    0.09476864612267846
#>     Attrib V18    0.06454835376475088
#>     Attrib V19    0.04152835948468823
#>     Attrib V2    0.057091898518336966
#>     Attrib V20    -0.13172575325654026
#>     Attrib V21    -0.07555734319121565
#>     Attrib V22    0.06457329877036148
#>     Attrib V23    -0.04262028655342445
#>     Attrib V24    -0.04665333768663329
#>     Attrib V25    0.07397431621191372
#>     Attrib V26    -0.005391457212966655
#>     Attrib V27    -0.09791411277138805
#>     Attrib V28    -0.10138155198645687
#>     Attrib V29    -0.11241774942883369
#>     Attrib V3    0.0915841526286382
#>     Attrib V30    -0.02594524261688305
#>     Attrib V31    0.13643069091800653
#>     Attrib V32    -0.03883628834900186
#>     Attrib V33    -0.054075425341073874
#>     Attrib V34    0.05759287776880303
#>     Attrib V35    -0.006904493306403459
#>     Attrib V36    0.23483441200659338
#>     Attrib V37    0.24860687514452154
#>     Attrib V38    0.03595208590518642
#>     Attrib V39    -0.013555623606376134
#>     Attrib V4    -0.021852579394918456
#>     Attrib V40    0.11701773046706067
#>     Attrib V41    0.09008262025140361
#>     Attrib V42    0.08007983547250191
#>     Attrib V43    0.03330170598455466
#>     Attrib V44    -0.04190762905882422
#>     Attrib V45    -0.08820724675939554
#>     Attrib V46    0.00924041905562572
#>     Attrib V47    0.07813658433813864
#>     Attrib V48    -0.09143530370036222
#>     Attrib V49    -0.13890427068091415
#>     Attrib V5    0.07250544883976771
#>     Attrib V50    0.22139412175278403
#>     Attrib V51    0.0931290038776092
#>     Attrib V52    0.03117931398709982
#>     Attrib V53    -0.044988659290615185
#>     Attrib V54    -0.0932272967424854
#>     Attrib V55    0.011418452115755236
#>     Attrib V56    0.051457069528927736
#>     Attrib V57    0.07787465467853776
#>     Attrib V58    0.060607375963967924
#>     Attrib V59    -0.14470988863991122
#>     Attrib V6    0.054010890796560664
#>     Attrib V60    -0.02702179195531915
#>     Attrib V7    0.05363787082312857
#>     Attrib V8    0.11474161077918464
#>     Attrib V9    -0.03142663680447572
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.048561964463883375
#>     Attrib V1    0.18916076049088648
#>     Attrib V10    0.02812912171479072
#>     Attrib V11    -0.005995990519242368
#>     Attrib V12    -0.006113505560684211
#>     Attrib V13    -0.15377035061637642
#>     Attrib V14    -0.02982902092621823
#>     Attrib V15    0.14512012510488345
#>     Attrib V16    -0.03572431152889374
#>     Attrib V17    0.005717702161080718
#>     Attrib V18    -0.009722521888051725
#>     Attrib V19    -0.031325376876908374
#>     Attrib V2    0.09744831901048903
#>     Attrib V20    0.0701198538388127
#>     Attrib V21    -0.0017335458718827738
#>     Attrib V22    -0.0846163600608915
#>     Attrib V23    -0.08067099821461841
#>     Attrib V24    0.02766415647486809
#>     Attrib V25    -0.16363117248290346
#>     Attrib V26    -0.13780833276280932
#>     Attrib V27    -0.03729171717410764
#>     Attrib V28    -0.07414361167347518
#>     Attrib V29    -0.05202203359533957
#>     Attrib V3    0.09237969691515499
#>     Attrib V30    -0.02755815472495003
#>     Attrib V31    -0.19415041351939213
#>     Attrib V32    0.012130127128752983
#>     Attrib V33    0.13990995006643306
#>     Attrib V34    0.028892673814918616
#>     Attrib V35    0.15240052046778643
#>     Attrib V36    -0.13174654539494182
#>     Attrib V37    -0.12213523160766132
#>     Attrib V38    0.07856247173811112
#>     Attrib V39    0.06455579294387737
#>     Attrib V4    0.16400861795271077
#>     Attrib V40    -0.11577725954664082
#>     Attrib V41    -0.006627671238118815
#>     Attrib V42    -0.002637173758664705
#>     Attrib V43    0.01043329424696956
#>     Attrib V44    0.07231767704620716
#>     Attrib V45    0.15058396281881273
#>     Attrib V46    0.04502818497782426
#>     Attrib V47    -0.062370171497461255
#>     Attrib V48    0.17443125029304202
#>     Attrib V49    0.1350934662075151
#>     Attrib V5    0.006463570932287474
#>     Attrib V50    -0.10343028982828054
#>     Attrib V51    0.04224177544211872
#>     Attrib V52    0.04038016048744449
#>     Attrib V53    0.10992844704342604
#>     Attrib V54    0.12218698394550363
#>     Attrib V55    0.07949884576490382
#>     Attrib V56    0.07783573554254097
#>     Attrib V57    0.20068336170025486
#>     Attrib V58    0.05732269848519032
#>     Attrib V59    0.16936586455760788
#>     Attrib V6    0.025868223063416265
#>     Attrib V60    0.19781206324234826
#>     Attrib V7    -0.07668392859710717
#>     Attrib V8    -0.067426173549055
#>     Attrib V9    0.1324832050371326
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.23256348294689788
#>     Attrib V1    0.00969923405809256
#>     Attrib V10    0.02953222957140484
#>     Attrib V11    -0.018148796790605593
#>     Attrib V12    -0.10028254812505419
#>     Attrib V13    -0.02937994649977867
#>     Attrib V14    -0.0032535926688473512
#>     Attrib V15    -0.023871978555687037
#>     Attrib V16    0.048945966004959214
#>     Attrib V17    -0.0013517474152870933
#>     Attrib V18    0.05287258692255059
#>     Attrib V19    -0.045507477959909344
#>     Attrib V2    0.10918975833534157
#>     Attrib V20    -0.03480344511439372
#>     Attrib V21    -0.0038433970347860904
#>     Attrib V22    0.003399052255573846
#>     Attrib V23    -0.017599341871251357
#>     Attrib V24    -0.07584512168099913
#>     Attrib V25    -0.0030515785150271035
#>     Attrib V26    -0.008424772178513375
#>     Attrib V27    -0.05843908326919307
#>     Attrib V28    -0.10913211479512325
#>     Attrib V29    -0.08733615054974464
#>     Attrib V3    0.1491137326273899
#>     Attrib V30    -0.03381454140242012
#>     Attrib V31    0.041151552225802204
#>     Attrib V32    -0.024322198771444176
#>     Attrib V33    -3.5724435698306686E-4
#>     Attrib V34    0.07028411282733037
#>     Attrib V35    0.03722335933524194
#>     Attrib V36    0.20685005924380948
#>     Attrib V37    0.12188824516742178
#>     Attrib V38    0.019366648850672682
#>     Attrib V39    0.04973697513277053
#>     Attrib V4    0.01682476083469736
#>     Attrib V40    0.08086800300721736
#>     Attrib V41    0.04713719235503962
#>     Attrib V42    0.059700703406401046
#>     Attrib V43    0.04706186758607417
#>     Attrib V44    0.07696660291929536
#>     Attrib V45    -0.05324973486690957
#>     Attrib V46    0.021718715945581443
#>     Attrib V47    0.11130381356947368
#>     Attrib V48    0.007929986608769346
#>     Attrib V49    0.018666025954052663
#>     Attrib V5    0.08448244741959673
#>     Attrib V50    0.06367208226207655
#>     Attrib V51    0.12254717585675085
#>     Attrib V52    0.03960786241768609
#>     Attrib V53    0.014487928315088876
#>     Attrib V54    -0.0440117057086608
#>     Attrib V55    0.055484969282099825
#>     Attrib V56    0.07967396930840003
#>     Attrib V57    0.04666219730895786
#>     Attrib V58    0.053327652630521506
#>     Attrib V59    0.01654034836239336
#>     Attrib V6    0.037754889586360176
#>     Attrib V60    0.07441004966385187
#>     Attrib V7    0.07996601839880109
#>     Attrib V8    0.13884878677157222
#>     Attrib V9    0.030190931092065196
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.3846395238014296
#>     Attrib V1    0.4697559493123256
#>     Attrib V10    0.09632815474866395
#>     Attrib V11    0.040790397558669915
#>     Attrib V12    0.4548439087521368
#>     Attrib V13    -0.23168809101305185
#>     Attrib V14    -0.3256575305186567
#>     Attrib V15    0.08898493236948538
#>     Attrib V16    -0.6559808743481997
#>     Attrib V17    -0.21750354156071877
#>     Attrib V18    0.005326811810268401
#>     Attrib V19    0.024731409853359154
#>     Attrib V2    -0.13452555117464093
#>     Attrib V20    0.7610501021254298
#>     Attrib V21    0.5850943315937347
#>     Attrib V22    0.13311641099239982
#>     Attrib V23    0.48492819066288056
#>     Attrib V24    0.5012027586808769
#>     Attrib V25    -0.3124602980036205
#>     Attrib V26    -0.12933752263731713
#>     Attrib V27    0.09850686039411562
#>     Attrib V28    0.07598408871713577
#>     Attrib V29    0.3744602880376806
#>     Attrib V3    0.0013237247664822421
#>     Attrib V30    0.07988766551110928
#>     Attrib V31    -1.1285778529741233
#>     Attrib V32    0.10135087046286063
#>     Attrib V33    0.24755097662044281
#>     Attrib V34    -0.11306317141147913
#>     Attrib V35    0.46040141220368747
#>     Attrib V36    -0.7626239406062066
#>     Attrib V37    -0.6013727097742434
#>     Attrib V38    0.0333142741039272
#>     Attrib V39    0.024197188582853055
#>     Attrib V4    0.37451561384023363
#>     Attrib V40    -0.4407447841189328
#>     Attrib V41    0.15497941705670204
#>     Attrib V42    0.43069762805536
#>     Attrib V43    -0.005007681583574766
#>     Attrib V44    0.2101552700494518
#>     Attrib V45    0.7148590894971952
#>     Attrib V46    0.42953984847180177
#>     Attrib V47    -0.04706826421605993
#>     Attrib V48    0.511824921677759
#>     Attrib V49    0.8362194382099436
#>     Attrib V5    -0.19434158634098259
#>     Attrib V50    -0.8590797996693822
#>     Attrib V51    0.07234962976013129
#>     Attrib V52    0.18744131881977033
#>     Attrib V53    0.609835957663167
#>     Attrib V54    0.3216406486183505
#>     Attrib V55    -0.3209044495305976
#>     Attrib V56    -0.11780457939162552
#>     Attrib V57    -0.4042027364588233
#>     Attrib V58    -0.02177494191360981
#>     Attrib V59    0.4995897113971094
#>     Attrib V6    -0.044027599927080704
#>     Attrib V60    0.26713521594288675
#>     Attrib V7    -0.3786034153252069
#>     Attrib V8    -0.7128468208339738
#>     Attrib V9    0.6523352433551596
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.031102794658210524
#>     Attrib V1    0.5753429355136023
#>     Attrib V10    -0.03798591804412031
#>     Attrib V11    -0.25451662302942846
#>     Attrib V12    0.12293221911576087
#>     Attrib V13    -0.29149366178908453
#>     Attrib V14    -0.002452097006151222
#>     Attrib V15    0.23344881878014878
#>     Attrib V16    -0.523602909014194
#>     Attrib V17    -0.17038327058653038
#>     Attrib V18    0.060308658920546133
#>     Attrib V19    0.1080837247893853
#>     Attrib V2    -0.10329667457887672
#>     Attrib V20    1.001732366699339
#>     Attrib V21    0.8803944417765026
#>     Attrib V22    0.34739242519313973
#>     Attrib V23    0.5392282383140626
#>     Attrib V24    0.3825275021696644
#>     Attrib V25    -0.39032176400697627
#>     Attrib V26    -0.3108881254343152
#>     Attrib V27    -0.1597126102548079
#>     Attrib V28    -0.196768209780428
#>     Attrib V29    0.4000812883542795
#>     Attrib V3    0.11619065485238211
#>     Attrib V30    0.02531919672942704
#>     Attrib V31    -1.3671356598965885
#>     Attrib V32    -0.08457200980914203
#>     Attrib V33    0.4224268974499729
#>     Attrib V34    -0.0035455921618695744
#>     Attrib V35    0.3014502426531174
#>     Attrib V36    -0.521371018669159
#>     Attrib V37    -0.5104963084866553
#>     Attrib V38    0.27329649870139383
#>     Attrib V39    0.23310731163431547
#>     Attrib V4    0.4847230175064734
#>     Attrib V40    -0.44037689979569555
#>     Attrib V41    -0.051703660586875706
#>     Attrib V42    0.33670417674222447
#>     Attrib V43    0.12432360351268282
#>     Attrib V44    0.3739059576414914
#>     Attrib V45    0.5565207994379701
#>     Attrib V46    0.22371321694292262
#>     Attrib V47    -0.17341315465047033
#>     Attrib V48    0.5240603914364198
#>     Attrib V49    0.7360195231358626
#>     Attrib V5    -0.23790427145716142
#>     Attrib V50    -0.8265195416506733
#>     Attrib V51    0.09373027213713098
#>     Attrib V52    0.05165832131453319
#>     Attrib V53    0.20873253507729655
#>     Attrib V54    0.4583645882186086
#>     Attrib V55    -0.3045865749145363
#>     Attrib V56    0.2730567584570165
#>     Attrib V57    -0.20021493344031116
#>     Attrib V58    -0.01211843811735486
#>     Attrib V59    0.7716626699258635
#>     Attrib V6    -0.05440245611242181
#>     Attrib V60    0.4625704952409081
#>     Attrib V7    -0.2753418586701503
#>     Attrib V8    -0.7151919148065137
#>     Attrib V9    0.5263100405130239
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.32062014828972035
#>     Attrib V1    -0.34158610125860506
#>     Attrib V10    -0.5953815761896997
#>     Attrib V11    -0.4985767769454127
#>     Attrib V12    -0.6647932905864105
#>     Attrib V13    0.08083450549256721
#>     Attrib V14    0.6892544450929797
#>     Attrib V15    0.2991172823090513
#>     Attrib V16    0.8443620037213522
#>     Attrib V17    0.14012535079819868
#>     Attrib V18    -0.18387829525995542
#>     Attrib V19    -0.05621002682347175
#>     Attrib V2    0.21479849568029286
#>     Attrib V20    -0.7075549418139597
#>     Attrib V21    -0.44836212852769836
#>     Attrib V22    -0.054802853799009184
#>     Attrib V23    -0.791720083975522
#>     Attrib V24    -0.606759572104042
#>     Attrib V25    0.4109093983730046
#>     Attrib V26    0.002542362930914349
#>     Attrib V27    -0.5395585678461167
#>     Attrib V28    -0.7555754920298008
#>     Attrib V29    -0.7234316701537286
#>     Attrib V3    -0.05183621467757492
#>     Attrib V30    -0.34517571250625084
#>     Attrib V31    0.9058002461070657
#>     Attrib V32    -0.6118806608848566
#>     Attrib V33    -0.31305551636199597
#>     Attrib V34    0.23170145676088927
#>     Attrib V35    -0.5494475929627676
#>     Attrib V36    0.8848633408627792
#>     Attrib V37    0.5261460152194589
#>     Attrib V38    -0.11298307236887695
#>     Attrib V39    0.06711268433610908
#>     Attrib V4    -0.5123156120531276
#>     Attrib V40    0.6052300102169861
#>     Attrib V41    -0.4853414006535897
#>     Attrib V42    -0.5522910478386607
#>     Attrib V43    0.10475142557016058
#>     Attrib V44    -0.3361263215654525
#>     Attrib V45    -0.9100507629504899
#>     Attrib V46    -0.6235200233324628
#>     Attrib V47    -0.21972572216030897
#>     Attrib V48    -0.6922549541936859
#>     Attrib V49    -1.1092946021355037
#>     Attrib V5    -0.26499961574346864
#>     Attrib V50    0.9125526910260817
#>     Attrib V51    -0.30397629722114883
#>     Attrib V52    -0.5107644129236437
#>     Attrib V53    -0.8785883678994454
#>     Attrib V54    0.05305937267303612
#>     Attrib V55    0.3385171817500918
#>     Attrib V56    0.47347136860498873
#>     Attrib V57    0.9661926327772375
#>     Attrib V58    0.19596663785303722
#>     Attrib V59    -0.14686897749172648
#>     Attrib V6    -0.13935960176774514
#>     Attrib V60    0.08134105883650292
#>     Attrib V7    0.5223463042809068
#>     Attrib V8    0.733897117149972
#>     Attrib V9    -1.0508019573410519
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.016933294618326145
#>     Attrib V1    0.43668546208217585
#>     Attrib V10    -0.3240243988112387
#>     Attrib V11    -0.33636140146571375
#>     Attrib V12    -0.06195320881004803
#>     Attrib V13    -0.27596307410206244
#>     Attrib V14    0.24370231458403596
#>     Attrib V15    0.4672037304382684
#>     Attrib V16    0.10646042262246494
#>     Attrib V17    0.04813164188253572
#>     Attrib V18    0.03152185303828236
#>     Attrib V19    -0.044190241793763234
#>     Attrib V2    0.05336736504552725
#>     Attrib V20    0.42536295898131665
#>     Attrib V21    0.2687451914010664
#>     Attrib V22    -0.16461187677405145
#>     Attrib V23    -0.14328877793930211
#>     Attrib V24    0.15354362370180138
#>     Attrib V25    -0.30066519523191987
#>     Attrib V26    -0.4670169674308929
#>     Attrib V27    -0.4379872353511724
#>     Attrib V28    -0.535675658981015
#>     Attrib V29    -0.10882493281324408
#>     Attrib V3    0.09622234435085873
#>     Attrib V30    -0.30328029185703975
#>     Attrib V31    -0.7863800161861629
#>     Attrib V32    -0.11235939533583124
#>     Attrib V33    0.14806803584498607
#>     Attrib V34    2.501248267422998E-4
#>     Attrib V35    0.07000903267959764
#>     Attrib V36    -0.4765898250278957
#>     Attrib V37    -0.4860233608192625
#>     Attrib V38    -0.029346266689288223
#>     Attrib V39    0.06752407454445736
#>     Attrib V4    0.24845310694008885
#>     Attrib V40    -0.24008112203522952
#>     Attrib V41    -0.24739669607260367
#>     Attrib V42    0.09447328439614297
#>     Attrib V43    0.10584925637934903
#>     Attrib V44    0.12475857843000877
#>     Attrib V45    0.19705110295011127
#>     Attrib V46    0.11347062411544424
#>     Attrib V47    -0.2195238248571258
#>     Attrib V48    0.2486889357028851
#>     Attrib V49    0.2752291437688203
#>     Attrib V5    -0.22517883006901152
#>     Attrib V50    -0.3690372791303093
#>     Attrib V51    -0.05492899251936094
#>     Attrib V52    -0.008737495939791803
#>     Attrib V53    0.24869405468700548
#>     Attrib V54    0.638866738757397
#>     Attrib V55    0.13241137709679376
#>     Attrib V56    0.3694257448984969
#>     Attrib V57    0.38813174389033095
#>     Attrib V58    0.2886715664419779
#>     Attrib V59    0.6650037732272941
#>     Attrib V6    -0.019982255428682053
#>     Attrib V60    0.48998554543979284
#>     Attrib V7    -0.011914279919213932
#>     Attrib V8    -0.3868961525101589
#>     Attrib V9    0.05368595852907552
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.0586627187163042
#>     Attrib V1    0.7530494611697505
#>     Attrib V10    -0.6438477750182766
#>     Attrib V11    -0.6585949716249141
#>     Attrib V12    -0.16970911288314064
#>     Attrib V13    -0.4350690603269717
#>     Attrib V14    0.39501042112515894
#>     Attrib V15    0.88257825397339
#>     Attrib V16    0.04147003302655127
#>     Attrib V17    0.0308397121230693
#>     Attrib V18    -0.02354017741556424
#>     Attrib V19    -0.04890852892071025
#>     Attrib V2    0.036408729291970816
#>     Attrib V20    0.8191922014189975
#>     Attrib V21    0.5908051008131351
#>     Attrib V22    -0.08925986241299622
#>     Attrib V23    -0.038637030438945785
#>     Attrib V24    0.15364034679737706
#>     Attrib V25    -0.6239245794893089
#>     Attrib V26    -0.9281716381538179
#>     Attrib V27    -0.9394079318599368
#>     Attrib V28    -0.8959173012684963
#>     Attrib V29    -0.12546068330436153
#>     Attrib V3    0.25762325819239673
#>     Attrib V30    -0.44598869398353813
#>     Attrib V31    -1.4764689161360969
#>     Attrib V32    -0.25061484504468107
#>     Attrib V33    0.4281738637391043
#>     Attrib V34    0.14132931807564025
#>     Attrib V35    0.18565304574269942
#>     Attrib V36    -0.8347642582953274
#>     Attrib V37    -0.8477969416340846
#>     Attrib V38    -0.03173461878174162
#>     Attrib V39    0.12554555341602547
#>     Attrib V4    0.49964746992110537
#>     Attrib V40    -0.5976489182906085
#>     Attrib V41    -0.4203630601899541
#>     Attrib V42    0.24753685337458828
#>     Attrib V43    0.2031591560265369
#>     Attrib V44    0.30609245857144846
#>     Attrib V45    0.5839384586924385
#>     Attrib V46    0.193407011437086
#>     Attrib V47    -0.2935423800847894
#>     Attrib V48    0.3199397651649481
#>     Attrib V49    0.43516954336743424
#>     Attrib V5    -0.4577044437121583
#>     Attrib V50    -0.7650276322069937
#>     Attrib V51    -0.14504207023090565
#>     Attrib V52    -0.0520193800567088
#>     Attrib V53    0.30552118111461934
#>     Attrib V54    1.0589041493279034
#>     Attrib V55    0.12508616374965792
#>     Attrib V56    0.660159862062351
#>     Attrib V57    0.46143125729233536
#>     Attrib V58    0.3713367344848295
#>     Attrib V59    1.1658928319579374
#>     Attrib V6    -0.02716430918353815
#>     Attrib V60    0.6893482015006298
#>     Attrib V7    -0.005125638904762108
#>     Attrib V8    -0.6190389314214905
#>     Attrib V9    0.0332432710174798
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.4447774466025295
#>     Attrib V1    -0.3877834300257241
#>     Attrib V10    -0.09702442511922371
#>     Attrib V11    -0.07512691575583008
#>     Attrib V12    -0.5049114759676715
#>     Attrib V13    0.15490215808322236
#>     Attrib V14    0.30519792821758174
#>     Attrib V15    -0.06993067795112454
#>     Attrib V16    0.5587854799492454
#>     Attrib V17    0.21510976585529876
#>     Attrib V18    -0.10530517080313041
#>     Attrib V19    -0.018107042383849855
#>     Attrib V2    0.2754899070313367
#>     Attrib V20    -0.6383709577412311
#>     Attrib V21    -0.41254478843565195
#>     Attrib V22    -0.0032874227671112984
#>     Attrib V23    -0.44429175524845427
#>     Attrib V24    -0.5674878672054929
#>     Attrib V25    0.3061745217837088
#>     Attrib V26    0.17885344790507265
#>     Attrib V27    -0.12529461124693655
#>     Attrib V28    -0.12337743741133086
#>     Attrib V29    -0.4102710068635207
#>     Attrib V3    0.06384005632563575
#>     Attrib V30    -0.0450567857655055
#>     Attrib V31    0.9691632183327037
#>     Attrib V32    -0.2698333646098658
#>     Attrib V33    -0.30739300786838053
#>     Attrib V34    0.12565899698579508
#>     Attrib V35    -0.35993729899661064
#>     Attrib V36    0.8999392391133578
#>     Attrib V37    0.6632413006461441
#>     Attrib V38    -0.0028845928727666997
#>     Attrib V39    -0.05550662487444542
#>     Attrib V4    -0.32258573285491043
#>     Attrib V40    0.48468118033691415
#>     Attrib V41    -0.20986991719323445
#>     Attrib V42    -0.444440938069026
#>     Attrib V43    -9.866817417816325E-4
#>     Attrib V44    -0.24700485453695603
#>     Attrib V45    -0.6269558246454601
#>     Attrib V46    -0.3470800946109148
#>     Attrib V47    0.0855082904751246
#>     Attrib V48    -0.4688565476469823
#>     Attrib V49    -0.7660938265453101
#>     Attrib V5    0.0894358568967321
#>     Attrib V50    0.8779027489651742
#>     Attrib V51    -0.10422543900583074
#>     Attrib V52    -0.15122538832011012
#>     Attrib V53    -0.7059999967799261
#>     Attrib V54    -0.351168894902806
#>     Attrib V55    0.23428543134223034
#>     Attrib V56    0.12274510649253366
#>     Attrib V57    0.37335226806959254
#>     Attrib V58    0.05946109321043135
#>     Attrib V59    -0.5506745004069145
#>     Attrib V6    0.013386921997142158
#>     Attrib V60    -0.3259089394848282
#>     Attrib V7    0.30687626041319827
#>     Attrib V8    0.6882309027120537
#>     Attrib V9    -0.5496359930620702
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.21640549095238737
#>     Attrib V1    -0.038956648053179256
#>     Attrib V10    1.2391463739567454
#>     Attrib V11    1.2671066692212691
#>     Attrib V12    1.1344687216484308
#>     Attrib V13    0.12046636022805511
#>     Attrib V14    -1.001123155967687
#>     Attrib V15    -1.1979706004512072
#>     Attrib V16    -1.1731443036945202
#>     Attrib V17    -0.06703629918427763
#>     Attrib V18    0.4776052309524185
#>     Attrib V19    0.5019360892621437
#>     Attrib V2    -0.23733386350607477
#>     Attrib V20    0.6775349056190841
#>     Attrib V21    0.6673185951655339
#>     Attrib V22    0.6108674076837808
#>     Attrib V23    1.814585426396173
#>     Attrib V24    0.9683138516476304
#>     Attrib V25    -0.24942984995048081
#>     Attrib V26    0.5946192869797571
#>     Attrib V27    1.6043989602662503
#>     Attrib V28    1.8932328453546663
#>     Attrib V29    1.3497679114761305
#>     Attrib V3    -0.01739337210575853
#>     Attrib V30    0.5470172737765953
#>     Attrib V31    -1.0603472914641088
#>     Attrib V32    0.8905440579694557
#>     Attrib V33    -0.1889631190149851
#>     Attrib V34    -0.8921263976097131
#>     Attrib V35    0.24982637784400477
#>     Attrib V36    -0.9874222645013825
#>     Attrib V37    -0.8131815154233252
#>     Attrib V38    -0.2052356473641406
#>     Attrib V39    0.3349417821554259
#>     Attrib V4    0.4629168808800539
#>     Attrib V40    0.25446955328922655
#>     Attrib V41    1.3845778995406839
#>     Attrib V42    0.7960640096140398
#>     Attrib V43    -0.2669296045935807
#>     Attrib V44    0.5132615624011218
#>     Attrib V45    0.8618516464151479
#>     Attrib V46    1.1119620542873907
#>     Attrib V47    1.0353802283952913
#>     Attrib V48    1.4098617842422039
#>     Attrib V49    2.1815439039344082
#>     Attrib V5    0.6365982597016372
#>     Attrib V50    -0.2563928718917782
#>     Attrib V51    0.8848652124169373
#>     Attrib V52    1.4193397055675698
#>     Attrib V53    1.509929377067627
#>     Attrib V54    -0.5413826275354514
#>     Attrib V55    -0.47518941369165396
#>     Attrib V56    -1.3780615861103547
#>     Attrib V57    -1.7038047978123374
#>     Attrib V58    -0.13310149263146143
#>     Attrib V59    -0.3208189014689254
#>     Attrib V6    0.27788688970428643
#>     Attrib V60    -0.17471651474259395
#>     Attrib V7    -0.7867563274288564
#>     Attrib V8    -0.300948675711943
#>     Attrib V9    1.7775396683974123
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.2516135732166107
#>     Attrib V1    -0.125033245840053
#>     Attrib V10    -0.014060555296887298
#>     Attrib V11    -0.08468440661469526
#>     Attrib V12    -0.2077858166975483
#>     Attrib V13    0.004988244283273766
#>     Attrib V14    0.07732038694585114
#>     Attrib V15    -0.13028615772824506
#>     Attrib V16    0.09760356906096898
#>     Attrib V17    0.06224739516187916
#>     Attrib V18    -0.062970370259355
#>     Attrib V19    0.06260669503968305
#>     Attrib V2    0.09592436523822594
#>     Attrib V20    -0.13585980969540362
#>     Attrib V21    -0.05046986817397826
#>     Attrib V22    0.13170118056133617
#>     Attrib V23    -0.017880267802894458
#>     Attrib V24    -0.1278198909416392
#>     Attrib V25    0.15593809253033653
#>     Attrib V26    0.09519917190850544
#>     Attrib V27    0.01748345466139984
#>     Attrib V28    -0.024970007520259994
#>     Attrib V29    -0.11144983521873299
#>     Attrib V3    0.011514134735863376
#>     Attrib V30    0.007477803770697483
#>     Attrib V31    0.24774998510834448
#>     Attrib V32    -0.17090964876661405
#>     Attrib V33    -0.07317899230969166
#>     Attrib V34    0.011571049833910533
#>     Attrib V35    -0.038457624359169
#>     Attrib V36    0.42948199392395325
#>     Attrib V37    0.37333812202827704
#>     Attrib V38    0.03565717378878677
#>     Attrib V39    -0.023776868639958995
#>     Attrib V4    -0.06311776994667888
#>     Attrib V40    0.13945926792513275
#>     Attrib V41    -0.06146756010351379
#>     Attrib V42    -0.07673384078465982
#>     Attrib V43    -0.0031060758840727796
#>     Attrib V44    -0.07298449540677222
#>     Attrib V45    -0.2342580361681971
#>     Attrib V46    -0.17120526164983826
#>     Attrib V47    -0.017494395326269736
#>     Attrib V48    -0.13871253386531757
#>     Attrib V49    -0.25740774189255233
#>     Attrib V5    -0.007836104293834146
#>     Attrib V50    0.2707206786445657
#>     Attrib V51    -0.05539811511032565
#>     Attrib V52    -0.10747216060034287
#>     Attrib V53    -0.2776413347671997
#>     Attrib V54    -0.18453192447113845
#>     Attrib V55    -0.053371224006241315
#>     Attrib V56    0.05467461528059433
#>     Attrib V57    0.07431928380990704
#>     Attrib V58    -0.034817654816113874
#>     Attrib V59    -0.1824927204482301
#>     Attrib V6    0.014950129734527263
#>     Attrib V60    -0.05985432387387999
#>     Attrib V7    0.04570718234459277
#>     Attrib V8    0.21346239033932476
#>     Attrib V9    -0.19156576078571413
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.5523486254472456
#>     Attrib V1    0.5813647339830758
#>     Attrib V10    0.831474936461229
#>     Attrib V11    0.6301858639226079
#>     Attrib V12    0.6704320614721392
#>     Attrib V13    -0.16088605676256998
#>     Attrib V14    -0.8446768980948172
#>     Attrib V15    -0.45300056017500356
#>     Attrib V16    -0.7418539695638012
#>     Attrib V17    -0.23311851518026938
#>     Attrib V18    0.025943937737023175
#>     Attrib V19    -0.21408331798107588
#>     Attrib V2    -0.17762456263874912
#>     Attrib V20    0.1875953106020616
#>     Attrib V21    0.16612030763088256
#>     Attrib V22    -0.21488631997706106
#>     Attrib V23    0.20127738497861486
#>     Attrib V24    0.16418028701808796
#>     Attrib V25    -0.5752161760888103
#>     Attrib V26    0.07513630198923293
#>     Attrib V27    0.6865549162033243
#>     Attrib V28    0.7610156141152445
#>     Attrib V29    0.43617812199513883
#>     Attrib V3    -0.03455890254477283
#>     Attrib V30    0.2576475290513567
#>     Attrib V31    -0.5389439166526234
#>     Attrib V32    0.5662507126062952
#>     Attrib V33    0.35902504534679913
#>     Attrib V34    0.1892769503563977
#>     Attrib V35    0.7775940920703661
#>     Attrib V36    -0.5027584295786331
#>     Attrib V37    -0.22628185726882072
#>     Attrib V38    0.027156402649479792
#>     Attrib V39    -0.18117009239797946
#>     Attrib V4    0.35646088828102185
#>     Attrib V40    -0.43393091098063885
#>     Attrib V41    0.5067944384514128
#>     Attrib V42    0.1652012151075514
#>     Attrib V43    -0.3510063035680917
#>     Attrib V44    -0.018239183538835784
#>     Attrib V45    0.6596311870017137
#>     Attrib V46    0.5731016317408796
#>     Attrib V47    0.2312364072887655
#>     Attrib V48    0.71625880790471
#>     Attrib V49    0.8149274143658357
#>     Attrib V5    0.2647822046377844
#>     Attrib V50    -0.38251528335986007
#>     Attrib V51    0.26339437242530633
#>     Attrib V52    0.3167992520861827
#>     Attrib V53    0.6847574103684885
#>     Attrib V54    -0.2165498106601538
#>     Attrib V55    -0.33969848945022135
#>     Attrib V56    -0.7880359513110989
#>     Attrib V57    -0.6173115746587982
#>     Attrib V58    -0.18624215760751775
#>     Attrib V59    0.12756209655709605
#>     Attrib V6    0.13820780151520454
#>     Attrib V60    0.2884791217035312
#>     Attrib V7    -0.34443591023009407
#>     Attrib V8    -0.686249944020878
#>     Attrib V9    0.996424195464403
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.5114387794311664
#>     Attrib V1    -0.2018324488360903
#>     Attrib V10    -0.8485783617790678
#>     Attrib V11    -0.7906058372438602
#>     Attrib V12    -1.0129332936241568
#>     Attrib V13    -0.08595279520420558
#>     Attrib V14    0.809976933322629
#>     Attrib V15    0.5632213808880608
#>     Attrib V16    0.8615834843461198
#>     Attrib V17    0.05768608121867966
#>     Attrib V18    -0.2267024539575273
#>     Attrib V19    -0.14420127729564217
#>     Attrib V2    0.23710150515808937
#>     Attrib V20    -0.3711046633701723
#>     Attrib V21    -0.2578829552841024
#>     Attrib V22    -0.0269526479722534
#>     Attrib V23    -0.9458699706667861
#>     Attrib V24    -0.7401219229588896
#>     Attrib V25    0.16662954042527592
#>     Attrib V26    -0.3765337017507646
#>     Attrib V27    -1.0521617796847336
#>     Attrib V28    -1.2636831994833773
#>     Attrib V29    -0.7106223750098026
#>     Attrib V3    0.07413326570182308
#>     Attrib V30    -0.2305583472534682
#>     Attrib V31    0.6222986591000584
#>     Attrib V32    -0.6548114543970996
#>     Attrib V33    -0.1293096425161125
#>     Attrib V34    0.2827993029504257
#>     Attrib V35    -0.5739470514623187
#>     Attrib V36    0.8534149002041467
#>     Attrib V37    0.38300640242139883
#>     Attrib V38    0.05855462941550209
#>     Attrib V39    0.1252967715114427
#>     Attrib V4    -0.3685274607903162
#>     Attrib V40    0.24286363660547683
#>     Attrib V41    -0.8845199796090757
#>     Attrib V42    -0.42233521721740774
#>     Attrib V43    0.18308572753893146
#>     Attrib V44    -0.1961984456650683
#>     Attrib V45    -0.6642163479897901
#>     Attrib V46    -0.7169525104362029
#>     Attrib V47    -0.5056628497903448
#>     Attrib V48    -0.823219524134689
#>     Attrib V49    -1.2561575803089928
#>     Attrib V5    -0.5378816772558362
#>     Attrib V50    0.4586564408007058
#>     Attrib V51    -0.5208248451756015
#>     Attrib V52    -0.6409252727966762
#>     Attrib V53    -1.248576530117719
#>     Attrib V54    0.21919301030463778
#>     Attrib V55    0.2955365358349258
#>     Attrib V56    0.8152251780443839
#>     Attrib V57    0.8982095148695747
#>     Attrib V58    0.10325694185484843
#>     Attrib V59    -0.11726555804140604
#>     Attrib V6    -0.19285252916991039
#>     Attrib V60    -0.17059985084174478
#>     Attrib V7    0.4953680507218589
#>     Attrib V8    0.7088790347796392
#>     Attrib V9    -1.0738630933541748
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.07473712531694444
#>     Attrib V1    0.31260386984874944
#>     Attrib V10    -0.28066815268013307
#>     Attrib V11    -0.23073211308442185
#>     Attrib V12    0.024551838724406368
#>     Attrib V13    -0.24141764065172147
#>     Attrib V14    0.18485728076656813
#>     Attrib V15    0.39015901954974297
#>     Attrib V16    -0.0909628113664735
#>     Attrib V17    -0.02265745441189725
#>     Attrib V18    0.03208936872281555
#>     Attrib V19    -0.03856086120533176
#>     Attrib V2    -0.04682383601117703
#>     Attrib V20    0.492662901028637
#>     Attrib V21    0.38257694391706065
#>     Attrib V22    -0.02602870895873202
#>     Attrib V23    -0.016571978896825146
#>     Attrib V24    0.211672722030397
#>     Attrib V25    -0.23467567382727034
#>     Attrib V26    -0.3611932846841487
#>     Attrib V27    -0.2417000191044616
#>     Attrib V28    -0.31765999188704885
#>     Attrib V29    0.05337382516066047
#>     Attrib V3    0.11523683298710061
#>     Attrib V30    -0.24201479893383065
#>     Attrib V31    -0.8645736945641971
#>     Attrib V32    -0.05341917058266718
#>     Attrib V33    0.1801012502388529
#>     Attrib V34    -0.06238441161651742
#>     Attrib V35    0.08164898445327885
#>     Attrib V36    -0.5449662616854848
#>     Attrib V37    -0.5021955137633426
#>     Attrib V38    0.003973146188741544
#>     Attrib V39    0.09294671454500726
#>     Attrib V4    0.2169110793353335
#>     Attrib V40    -0.2755165088102141
#>     Attrib V41    -0.09627657096746733
#>     Attrib V42    0.15147500577425754
#>     Attrib V43    0.07797958447307717
#>     Attrib V44    0.09976425010285167
#>     Attrib V45    0.35178425469394164
#>     Attrib V46    0.13808067993356613
#>     Attrib V47    -0.11442599254600933
#>     Attrib V48    0.25957076165364357
#>     Attrib V49    0.33711936147161553
#>     Attrib V5    -0.2259039257078332
#>     Attrib V50    -0.4183459727297532
#>     Attrib V51    -0.01622921487818308
#>     Attrib V52    0.05310303353024231
#>     Attrib V53    0.3020271921902127
#>     Attrib V54    0.48000752196251595
#>     Attrib V55    0.09175908488148181
#>     Attrib V56    0.2629720948789809
#>     Attrib V57    0.23487873719414115
#>     Attrib V58    0.16423001182594232
#>     Attrib V59    0.5992994269062445
#>     Attrib V6    -0.011721300732512518
#>     Attrib V60    0.40371380947037483
#>     Attrib V7    -0.1032967484894643
#>     Attrib V8    -0.3421803561391326
#>     Attrib V9    0.14669420775058278
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.08762545166072958
#>     Attrib V1    0.21035079225490613
#>     Attrib V10    0.04474087963188062
#>     Attrib V11    -0.0035434459236730366
#>     Attrib V12    0.08541383723390057
#>     Attrib V13    -0.035588848428725
#>     Attrib V14    0.010676967787482276
#>     Attrib V15    0.104590188512261
#>     Attrib V16    -0.037649350230842774
#>     Attrib V17    0.03250919371251118
#>     Attrib V18    -0.014840872344006061
#>     Attrib V19    -0.09136097291346029
#>     Attrib V2    0.08024536243193386
#>     Attrib V20    0.03325434061746806
#>     Attrib V21    0.018998150812541487
#>     Attrib V22    -0.14238033655304785
#>     Attrib V23    -0.07322508331479709
#>     Attrib V24    -0.016619679444164072
#>     Attrib V25    -0.07641894524714513
#>     Attrib V26    -0.047091423312956
#>     Attrib V27    -0.02823155157124883
#>     Attrib V28    -0.044643819047500366
#>     Attrib V29    -0.07941359018235822
#>     Attrib V3    0.09068007649756722
#>     Attrib V30    -0.05591545239637404
#>     Attrib V31    -0.16804912080434048
#>     Attrib V32    0.009754773943083559
#>     Attrib V33    0.04173083703493868
#>     Attrib V34    0.013442704097261197
#>     Attrib V35    0.13336778579454042
#>     Attrib V36    -0.10387174188420682
#>     Attrib V37    -0.04582609905553326
#>     Attrib V38    0.007856144017496926
#>     Attrib V39    0.0868061078357033
#>     Attrib V4    0.19180675946914502
#>     Attrib V40    -0.05454194789280506
#>     Attrib V41    -0.015329078376518172
#>     Attrib V42    0.040979174313288756
#>     Attrib V43    -0.045784485785941624
#>     Attrib V44    -0.010058477762679895
#>     Attrib V45    0.09838250049501737
#>     Attrib V46    0.06412190269916392
#>     Attrib V47    -0.03727474644809396
#>     Attrib V48    0.15574136733916527
#>     Attrib V49    0.13255976346525997
#>     Attrib V5    -0.028401875737982626
#>     Attrib V50    -0.08669867942926504
#>     Attrib V51    0.032000810316216356
#>     Attrib V52    0.07497988900864416
#>     Attrib V53    0.1705110106366346
#>     Attrib V54    0.16199022083043854
#>     Attrib V55    0.03611549930909373
#>     Attrib V56    0.11510150851459183
#>     Attrib V57    0.14452801613631658
#>     Attrib V58    0.1382494547985496
#>     Attrib V59    0.25600760643295506
#>     Attrib V6    0.021018496197801106
#>     Attrib V60    0.23861010838173644
#>     Attrib V7    -0.06400686902211096
#>     Attrib V8    -0.11038083117249053
#>     Attrib V9    0.09778596729239039
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.01070877036786624
#>     Attrib V1    0.5107509003517126
#>     Attrib V10    -0.4573516746589833
#>     Attrib V11    -0.43599914943371354
#>     Attrib V12    -0.17300467996524302
#>     Attrib V13    -0.3227518911661635
#>     Attrib V14    0.301634444865805
#>     Attrib V15    0.6414042381852738
#>     Attrib V16    0.06976433481721411
#>     Attrib V17    0.061431625496363745
#>     Attrib V18    0.03157811750145322
#>     Attrib V19    -0.025107370446175496
#>     Attrib V2    0.0845008315671997
#>     Attrib V20    0.5994279199368219
#>     Attrib V21    0.3408119097448511
#>     Attrib V22    -0.11468315526867413
#>     Attrib V23    -0.06924679224619185
#>     Attrib V24    0.1463430289322419
#>     Attrib V25    -0.46844958704126066
#>     Attrib V26    -0.631995659402054
#>     Attrib V27    -0.6585416386164272
#>     Attrib V28    -0.7085251595327253
#>     Attrib V29    -0.14947675913552227
#>     Attrib V3    0.127635366213862
#>     Attrib V30    -0.3344962868302665
#>     Attrib V31    -1.0008888004727043
#>     Attrib V32    -0.15448031661781766
#>     Attrib V33    0.3333289449287334
#>     Attrib V34    0.14917777701068755
#>     Attrib V35    0.16565580358759666
#>     Attrib V36    -0.5905132767754125
#>     Attrib V37    -0.6106705342499946
#>     Attrib V38    0.020127354154805575
#>     Attrib V39    0.08809460942915899
#>     Attrib V4    0.3425451599711171
#>     Attrib V40    -0.3644399393367533
#>     Attrib V41    -0.3091066538163666
#>     Attrib V42    0.1446023906945665
#>     Attrib V43    0.11475418329914665
#>     Attrib V44    0.2214319158202366
#>     Attrib V45    0.31386555842833286
#>     Attrib V46    0.09853191110404161
#>     Attrib V47    -0.2541441538802541
#>     Attrib V48    0.2702710381881391
#>     Attrib V49    0.3277254214287702
#>     Attrib V5    -0.349046140077166
#>     Attrib V50    -0.5572802152765367
#>     Attrib V51    -0.08900154178393829
#>     Attrib V52    -0.036272547313769096
#>     Attrib V53    0.25504025144733244
#>     Attrib V54    0.7794118458203547
#>     Attrib V55    0.16168204894178081
#>     Attrib V56    0.42737908902471844
#>     Attrib V57    0.40670932366334506
#>     Attrib V58    0.2739395993536568
#>     Attrib V59    0.8332113906516047
#>     Attrib V6    -0.03680581694910871
#>     Attrib V60    0.5449399091510518
#>     Attrib V7    -0.018063837675721773
#>     Attrib V8    -0.39434755843808583
#>     Attrib V9    0.07508951706247316
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.06056701247893522
#>     Attrib V1    0.21068528646024084
#>     Attrib V10    -0.1145189743125431
#>     Attrib V11    -0.07487498450465724
#>     Attrib V12    0.0016526792989010096
#>     Attrib V13    -0.16420528494197073
#>     Attrib V14    0.06638648620211232
#>     Attrib V15    0.15919406516507414
#>     Attrib V16    0.004265912810016551
#>     Attrib V17    -0.006951775091931682
#>     Attrib V18    0.0790570505299805
#>     Attrib V19    -0.06583289300852414
#>     Attrib V2    0.01814400755465253
#>     Attrib V20    0.15273776624606358
#>     Attrib V21    0.09373403008440305
#>     Attrib V22    -0.12353282796000181
#>     Attrib V23    -0.03412229890902973
#>     Attrib V24    0.014202268791401882
#>     Attrib V25    -0.19391388457162448
#>     Attrib V26    -0.17697751234303358
#>     Attrib V27    -0.09976574623178937
#>     Attrib V28    -0.10007822420285704
#>     Attrib V29    -0.02462074227749815
#>     Attrib V3    0.1195544741985354
#>     Attrib V30    -0.050324747167841445
#>     Attrib V31    -0.3547086210354963
#>     Attrib V32    -0.0015192287427007378
#>     Attrib V33    0.11874413658304087
#>     Attrib V34    0.04343476652607823
#>     Attrib V35    0.11631151509439745
#>     Attrib V36    -0.11937905340900389
#>     Attrib V37    -0.15380101215115677
#>     Attrib V38    -0.020580166184312805
#>     Attrib V39    0.04911161183658064
#>     Attrib V4    0.13552448958748398
#>     Attrib V40    -0.13010232137897956
#>     Attrib V41    -0.08199618672070352
#>     Attrib V42    0.05508172106710525
#>     Attrib V43    -0.053299370525943614
#>     Attrib V44    0.07851246427576321
#>     Attrib V45    0.160308395633617
#>     Attrib V46    0.07795698507429656
#>     Attrib V47    -0.0487803254456275
#>     Attrib V48    0.10331541832679772
#>     Attrib V49    0.2094599236273192
#>     Attrib V5    -0.03378127399383534
#>     Attrib V50    -0.17533291390847403
#>     Attrib V51    0.03465767002627172
#>     Attrib V52    0.07750864138437864
#>     Attrib V53    0.16162427696676548
#>     Attrib V54    0.15338307599381049
#>     Attrib V55    0.020262783331957468
#>     Attrib V56    0.07999901164900698
#>     Attrib V57    0.16020548171974625
#>     Attrib V58    0.16504197471332463
#>     Attrib V59    0.23308174812138568
#>     Attrib V6    0.03135247166766061
#>     Attrib V60    0.20503748627251683
#>     Attrib V7    -0.027510480452428702
#>     Attrib V8    -0.09778791102549232
#>     Attrib V9    0.13653790206612396
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
