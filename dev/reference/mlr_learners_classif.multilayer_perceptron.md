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
#>     Threshold    -0.6131353814332872
#>     Node 2    1.8099883843116107
#>     Node 3    1.311726615620577
#>     Node 4    1.0419688153593256
#>     Node 5    -0.6888398456703233
#>     Node 6    0.9200120844888082
#>     Node 7    2.29032196895728
#>     Node 8    0.8249094587822234
#>     Node 9    4.6714808012154565
#>     Node 10    -0.7524910717794555
#>     Node 11    1.7211263586870607
#>     Node 12    1.1714487928513766
#>     Node 13    0.3554048938408932
#>     Node 14    1.7570386457950409
#>     Node 15    -1.9359868056635356
#>     Node 16    0.013821462959303334
#>     Node 17    0.375018093378525
#>     Node 18    -1.5592668951490984
#>     Node 19    2.1639681744165573
#>     Node 20    1.2925791085148097
#>     Node 21    -3.5648835005479422
#>     Node 22    1.4293360166501816
#>     Node 23    1.153713153615754
#>     Node 24    -0.558726403408837
#>     Node 25    5.316657212714554
#>     Node 26    -1.842117952197494
#>     Node 27    1.520504317764246
#>     Node 28    -3.5447538180032554
#>     Node 29    0.8499396384895688
#>     Node 30    -0.43477980791157966
#>     Node 31    1.9257556117296266
#>     Node 32    0.9471926644608512
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.6591934054575611
#>     Node 2    -1.8501966337474935
#>     Node 3    -1.296700195030379
#>     Node 4    -1.0095848266819698
#>     Node 5    0.6960065408139996
#>     Node 6    -0.8957336091178028
#>     Node 7    -2.287808838768312
#>     Node 8    -0.862209297733031
#>     Node 9    -4.673431162943544
#>     Node 10    0.6898790966739065
#>     Node 11    -1.6916188713292857
#>     Node 12    -1.253100254988176
#>     Node 13    -0.30282232813810156
#>     Node 14    -1.7061377568440381
#>     Node 15    1.9353218121159053
#>     Node 16    -0.0347697634340815
#>     Node 17    -0.3463120064868099
#>     Node 18    1.6110729710005876
#>     Node 19    -2.1698953962931826
#>     Node 20    -1.266134540341113
#>     Node 21    3.6227012855226675
#>     Node 22    -1.483036665726762
#>     Node 23    -1.188669432887104
#>     Node 24    0.5438490429507362
#>     Node 25    -5.315771776877768
#>     Node 26    1.7776414371162095
#>     Node 27    -1.5652829566881663
#>     Node 28    3.493820393197303
#>     Node 29    -0.8788639631988712
#>     Node 30    0.5078979666159119
#>     Node 31    -1.8624372029906275
#>     Node 32    -0.9611484582031334
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.042648199543007984
#>     Attrib V1    0.24168464208534257
#>     Attrib V10    -0.13542514061752206
#>     Attrib V11    0.292903767572564
#>     Attrib V12    0.20298029356530797
#>     Attrib V13    -0.1566012479713461
#>     Attrib V14    -0.09298237503410232
#>     Attrib V15    0.09324012812622144
#>     Attrib V16    -0.06564593464241626
#>     Attrib V17    0.2788468875404324
#>     Attrib V18    0.12639428039602255
#>     Attrib V19    -0.08625208788423266
#>     Attrib V2    0.13041122012263096
#>     Attrib V20    0.6413566758083994
#>     Attrib V21    0.6791690791387457
#>     Attrib V22    0.4667695153818308
#>     Attrib V23    0.6072150663027895
#>     Attrib V24    0.4616567948337599
#>     Attrib V25    -0.3738270117308337
#>     Attrib V26    -0.4643257123833835
#>     Attrib V27    -0.5881328533972705
#>     Attrib V28    -0.6219655967470222
#>     Attrib V29    -0.596916446035696
#>     Attrib V3    0.18215819263155084
#>     Attrib V30    0.5564426943625215
#>     Attrib V31    -1.0935347350846318
#>     Attrib V32    -0.12250049542831479
#>     Attrib V33    0.8722304064296964
#>     Attrib V34    0.1873210809427338
#>     Attrib V35    -0.3393643176275697
#>     Attrib V36    -0.6526816300716065
#>     Attrib V37    -0.8657635619891879
#>     Attrib V38    0.3119677937047367
#>     Attrib V39    0.4370313816363692
#>     Attrib V4    0.40509664249361593
#>     Attrib V40    -0.07082519525367159
#>     Attrib V41    -0.16196663534124175
#>     Attrib V42    0.43785093605151076
#>     Attrib V43    0.27919592009776917
#>     Attrib V44    0.3718574781487524
#>     Attrib V45    0.4921492382662067
#>     Attrib V46    -0.030094777210093324
#>     Attrib V47    -0.45713415849524563
#>     Attrib V48    -0.08711668410653739
#>     Attrib V49    0.5334065662545701
#>     Attrib V5    0.09703558072166157
#>     Attrib V50    -0.760577397040959
#>     Attrib V51    -0.10426232532152718
#>     Attrib V52    0.16900583342057104
#>     Attrib V53    0.3364680709039358
#>     Attrib V54    0.6821604472456615
#>     Attrib V55    -0.35153999512139184
#>     Attrib V56    0.12302514038051243
#>     Attrib V57    -0.03890138887685867
#>     Attrib V58    0.5114414911088815
#>     Attrib V59    0.42516989463621485
#>     Attrib V6    -0.3304617023410837
#>     Attrib V60    0.20313263892372574
#>     Attrib V7    0.2683278449101523
#>     Attrib V8    -0.007526731054671376
#>     Attrib V9    0.44990656615969377
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.09468956620676665
#>     Attrib V1    0.15253972112636596
#>     Attrib V10    -0.21473395025261388
#>     Attrib V11    0.09976070298953944
#>     Attrib V12    0.09217984540449499
#>     Attrib V13    -0.13862871985679867
#>     Attrib V14    -0.007755516431630158
#>     Attrib V15    0.2534230735662982
#>     Attrib V16    0.062008333640219966
#>     Attrib V17    0.20392628196278026
#>     Attrib V18    0.020554614739035165
#>     Attrib V19    -0.10287207420475702
#>     Attrib V2    0.17002601313290633
#>     Attrib V20    0.34620358631029297
#>     Attrib V21    0.33756159485264675
#>     Attrib V22    0.14541310031376334
#>     Attrib V23    0.14055745556747634
#>     Attrib V24    0.09383032266606599
#>     Attrib V25    -0.46986750304050207
#>     Attrib V26    -0.5258875119000107
#>     Attrib V27    -0.5405392711843899
#>     Attrib V28    -0.5431318907339577
#>     Attrib V29    -0.5293641812252342
#>     Attrib V3    0.13299841382897953
#>     Attrib V30    0.2782674850751186
#>     Attrib V31    -0.7662395167412588
#>     Attrib V32    -0.07152195035761032
#>     Attrib V33    0.6103502422028974
#>     Attrib V34    0.06452431030353867
#>     Attrib V35    -0.27697267068200837
#>     Attrib V36    -0.5128849988207319
#>     Attrib V37    -0.6406051950499045
#>     Attrib V38    0.10502239716744755
#>     Attrib V39    0.2951938178588574
#>     Attrib V4    0.2837939828808758
#>     Attrib V40    -0.050946010989268854
#>     Attrib V41    -0.16621456634092074
#>     Attrib V42    0.24493561780956866
#>     Attrib V43    0.11600676519828447
#>     Attrib V44    0.2428388262534567
#>     Attrib V45    0.36647320278069545
#>     Attrib V46    0.003837508282770206
#>     Attrib V47    -0.30868504150715204
#>     Attrib V48    -0.08736205447885283
#>     Attrib V49    0.3609294159928901
#>     Attrib V5    -0.01883342740892695
#>     Attrib V50    -0.4947543954043052
#>     Attrib V51    -0.17593067200788134
#>     Attrib V52    0.1357930791110673
#>     Attrib V53    0.261549569728781
#>     Attrib V54    0.6001745611466842
#>     Attrib V55    -0.0632735459242585
#>     Attrib V56    0.05971195961956967
#>     Attrib V57    0.14118149234841076
#>     Attrib V58    0.4534500462643482
#>     Attrib V59    0.3101709234025851
#>     Attrib V6    -0.23842070692710998
#>     Attrib V60    0.11310650859040026
#>     Attrib V7    0.14430168569020135
#>     Attrib V8    0.008561322332162731
#>     Attrib V9    0.1598132959124866
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.08776993044960907
#>     Attrib V1    -0.15432908579363064
#>     Attrib V10    0.1166047130920722
#>     Attrib V11    0.38528775020551603
#>     Attrib V12    0.3004303851110362
#>     Attrib V13    -0.10746869443699765
#>     Attrib V14    -0.16072886346169474
#>     Attrib V15    -0.057123631081833555
#>     Attrib V16    -0.16372103076536118
#>     Attrib V17    0.02943901842602992
#>     Attrib V18    -0.10803949105032945
#>     Attrib V19    -0.3227691897020763
#>     Attrib V2    -0.05886905217384677
#>     Attrib V20    0.017625687446854253
#>     Attrib V21    0.12957821733656955
#>     Attrib V22    -0.06126214844475912
#>     Attrib V23    -0.011916367721177108
#>     Attrib V24    -0.09949178045842462
#>     Attrib V25    -0.4478465266856212
#>     Attrib V26    -0.22327868725592187
#>     Attrib V27    -0.13579285022173437
#>     Attrib V28    0.04485608788192891
#>     Attrib V29    0.10968316471422739
#>     Attrib V3    -0.0038696147618464526
#>     Attrib V30    0.4797348008186659
#>     Attrib V31    -0.5359997931789601
#>     Attrib V32    0.07296412400589997
#>     Attrib V33    0.443629717741049
#>     Attrib V34    0.09292037003860452
#>     Attrib V35    -0.08985342863252373
#>     Attrib V36    -0.280043083510171
#>     Attrib V37    -0.41136674686147334
#>     Attrib V38    0.08922559660130837
#>     Attrib V39    0.1242442620736935
#>     Attrib V4    0.27605347376153155
#>     Attrib V40    -0.15705857612101562
#>     Attrib V41    -0.236520872358916
#>     Attrib V42    -0.008706644609436456
#>     Attrib V43    -0.04720584143250978
#>     Attrib V44    0.25140516613283526
#>     Attrib V45    0.47278290260065825
#>     Attrib V46    0.1814621877427415
#>     Attrib V47    -0.032821604787095456
#>     Attrib V48    0.26234552934045485
#>     Attrib V49    0.5772973695858372
#>     Attrib V5    0.035807865936134296
#>     Attrib V50    -0.4212039919215366
#>     Attrib V51    0.11448454035963407
#>     Attrib V52    0.17816147110910216
#>     Attrib V53    0.08556076343324998
#>     Attrib V54    0.15279822904345178
#>     Attrib V55    -0.26353629483942115
#>     Attrib V56    -0.24370277517699035
#>     Attrib V57    -0.028979077668052015
#>     Attrib V58    0.1856961559127436
#>     Attrib V59    0.08223897087497607
#>     Attrib V6    -0.21957157246531717
#>     Attrib V60    -0.20714766263932388
#>     Attrib V7    0.006932835443394698
#>     Attrib V8    -0.18164254092936855
#>     Attrib V9    0.2455773366601952
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.13724034372127575
#>     Attrib V1    0.018820978808896157
#>     Attrib V10    0.05635729363539894
#>     Attrib V11    -0.10345529822765444
#>     Attrib V12    -0.12984840957598068
#>     Attrib V13    -0.045506910541203094
#>     Attrib V14    0.07441032718316647
#>     Attrib V15    0.04618664355470971
#>     Attrib V16    0.12345103598350486
#>     Attrib V17    0.12191619842899429
#>     Attrib V18    0.22557804678567195
#>     Attrib V19    0.12020553075747203
#>     Attrib V2    0.07360680166728507
#>     Attrib V20    -0.1837871122062618
#>     Attrib V21    -0.03636931414163307
#>     Attrib V22    0.06120765165415777
#>     Attrib V23    0.01949172285549812
#>     Attrib V24    -0.08815481765677013
#>     Attrib V25    0.11070793113265869
#>     Attrib V26    -0.12587181974719616
#>     Attrib V27    -0.17605527292827491
#>     Attrib V28    -0.15665597929855263
#>     Attrib V29    -0.048246412392129547
#>     Attrib V3    0.023732181245123708
#>     Attrib V30    -0.07019086813779639
#>     Attrib V31    0.4515724606454557
#>     Attrib V32    0.21204261118432383
#>     Attrib V33    -0.08508128838139763
#>     Attrib V34    -0.04170514287457652
#>     Attrib V35    0.2172418288850396
#>     Attrib V36    0.42803138232127363
#>     Attrib V37    0.3670153629405891
#>     Attrib V38    -0.05082208674172915
#>     Attrib V39    -0.042010449835078185
#>     Attrib V4    -0.08031378512174114
#>     Attrib V40    0.2921674071115522
#>     Attrib V41    0.355293618238985
#>     Attrib V42    0.24097418779705596
#>     Attrib V43    0.19735851250174002
#>     Attrib V44    0.06174718711000531
#>     Attrib V45    -0.21243822884149657
#>     Attrib V46    -0.11367286438093567
#>     Attrib V47    0.12312023513325854
#>     Attrib V48    0.06638402878505612
#>     Attrib V49    -0.15040284341590443
#>     Attrib V5    0.036331803093732136
#>     Attrib V50    0.3501308008537705
#>     Attrib V51    0.08817419456791686
#>     Attrib V52    -0.043280717777046625
#>     Attrib V53    -0.0790045645878769
#>     Attrib V54    -0.12337568084372783
#>     Attrib V55    0.10987677011812695
#>     Attrib V56    0.13784679267688812
#>     Attrib V57    0.056974181247676205
#>     Attrib V58    -0.06141077424046835
#>     Attrib V59    0.03943957826710851
#>     Attrib V6    0.1673395622592247
#>     Attrib V60    0.2105458952848311
#>     Attrib V7    0.07221757405058492
#>     Attrib V8    0.20487338301970084
#>     Attrib V9    -0.06518285813379891
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.0836897839122576
#>     Attrib V1    0.133388317555473
#>     Attrib V10    -0.16445938729511814
#>     Attrib V11    0.1260743313481313
#>     Attrib V12    0.170127116834089
#>     Attrib V13    -0.09283756739508602
#>     Attrib V14    -0.04356724664946607
#>     Attrib V15    0.07244370967084755
#>     Attrib V16    0.0329220382826848
#>     Attrib V17    0.11078131570937949
#>     Attrib V18    0.0846644111261653
#>     Attrib V19    -0.098000904819788
#>     Attrib V2    0.11558868822343571
#>     Attrib V20    0.2747878874278966
#>     Attrib V21    0.3068164416952813
#>     Attrib V22    0.10588513874982958
#>     Attrib V23    0.15019810945681875
#>     Attrib V24    0.18398748458748818
#>     Attrib V25    -0.2001708149609181
#>     Attrib V26    -0.24944659214650722
#>     Attrib V27    -0.26181918766815865
#>     Attrib V28    -0.3474311179650883
#>     Attrib V29    -0.29678238858258704
#>     Attrib V3    0.10827368966588621
#>     Attrib V30    0.19106246621894982
#>     Attrib V31    -0.6211581783393857
#>     Attrib V32    -0.06238129933108766
#>     Attrib V33    0.42784026823125754
#>     Attrib V34    0.041300866931456355
#>     Attrib V35    -0.16857778188699057
#>     Attrib V36    -0.37137006835016384
#>     Attrib V37    -0.4467102946155898
#>     Attrib V38    0.10648952095888475
#>     Attrib V39    0.18256552270221255
#>     Attrib V4    0.28701848688676773
#>     Attrib V40    -0.08192034396527106
#>     Attrib V41    -0.08105831874125226
#>     Attrib V42    0.16939906876761224
#>     Attrib V43    0.0650571076624693
#>     Attrib V44    0.17239268000663802
#>     Attrib V45    0.31700452033539667
#>     Attrib V46    0.061438719842050696
#>     Attrib V47    -0.23460905611166458
#>     Attrib V48    -0.07729195701122886
#>     Attrib V49    0.2628799438702467
#>     Attrib V5    0.051978484033624366
#>     Attrib V50    -0.3328241332276225
#>     Attrib V51    -0.06352081085262419
#>     Attrib V52    0.09625000444866463
#>     Attrib V53    0.2916665912423442
#>     Attrib V54    0.37654274284201994
#>     Attrib V55    -0.14391115619934694
#>     Attrib V56    0.011987996013090673
#>     Attrib V57    0.10638788101992447
#>     Attrib V58    0.3134057417790878
#>     Attrib V59    0.27279712281875623
#>     Attrib V6    -0.07868035487576747
#>     Attrib V60    0.10594013652057294
#>     Attrib V7    0.14928926450900143
#>     Attrib V8    -0.013815277062994286
#>     Attrib V9    0.2001355974961432
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.1491019685292944
#>     Attrib V1    -0.056507755166183414
#>     Attrib V10    0.9879865234692169
#>     Attrib V11    1.3277699844363704
#>     Attrib V12    0.9729398895816055
#>     Attrib V13    0.07581547412521106
#>     Attrib V14    -0.4995529899609104
#>     Attrib V15    -0.6236636536374935
#>     Attrib V16    -0.532938980456492
#>     Attrib V17    -0.21477002319230462
#>     Attrib V18    -0.1464406384217509
#>     Attrib V19    -0.44010941447491375
#>     Attrib V2    -0.035685791351768296
#>     Attrib V20    -0.060608929459941605
#>     Attrib V21    0.2067623063078378
#>     Attrib V22    0.2114441428978118
#>     Attrib V23    0.3692837022159029
#>     Attrib V24    0.09576798469577416
#>     Attrib V25    -0.16857609863978534
#>     Attrib V26    0.4889683059228297
#>     Attrib V27    0.5051841517072124
#>     Attrib V28    0.681718900342705
#>     Attrib V29    0.8064786713490749
#>     Attrib V3    -0.07829338612463223
#>     Attrib V30    0.8306273829850962
#>     Attrib V31    -0.823578255092674
#>     Attrib V32    0.1037768712827473
#>     Attrib V33    0.2912759535235394
#>     Attrib V34    0.008356250347759064
#>     Attrib V35    0.17764788837014392
#>     Attrib V36    0.02228591577898838
#>     Attrib V37    -0.21099118070405654
#>     Attrib V38    0.2961480603919413
#>     Attrib V39    0.046734607849602476
#>     Attrib V4    0.5932362546535186
#>     Attrib V40    -0.207238948044259
#>     Attrib V41    -0.14111910651643708
#>     Attrib V42    -0.37096160158896224
#>     Attrib V43    -0.1507065974736127
#>     Attrib V44    0.40745968364122137
#>     Attrib V45    0.6681479389904121
#>     Attrib V46    0.7790479420523275
#>     Attrib V47    0.5162485223086282
#>     Attrib V48    0.5902992700654597
#>     Attrib V49    0.9649464773460845
#>     Attrib V5    0.25828632588957573
#>     Attrib V50    -0.3364148083794007
#>     Attrib V51    0.7209852011991001
#>     Attrib V52    0.5181710992586086
#>     Attrib V53    -0.004223661765646732
#>     Attrib V54    0.13297646915335035
#>     Attrib V55    -0.7208359204626713
#>     Attrib V56    -0.9341570568513802
#>     Attrib V57    -0.514807775534346
#>     Attrib V58    0.0010619527656587264
#>     Attrib V59    -0.059862850953676494
#>     Attrib V6    -0.004173086464538754
#>     Attrib V60    -0.32388889272001437
#>     Attrib V7    0.06563153574827181
#>     Attrib V8    -0.35663471252738144
#>     Attrib V9    0.6406553378643479
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.0996736781078538
#>     Attrib V1    -0.09514118359736486
#>     Attrib V10    0.10326560638201998
#>     Attrib V11    0.3317303918355832
#>     Attrib V12    0.26355134366134303
#>     Attrib V13    -0.03751011613508732
#>     Attrib V14    -0.19831421303408434
#>     Attrib V15    -0.11895961662555805
#>     Attrib V16    -0.11625412732335656
#>     Attrib V17    -0.01569816412491242
#>     Attrib V18    -0.1222836911284496
#>     Attrib V19    -0.24957344020377628
#>     Attrib V2    0.0023537377931476147
#>     Attrib V20    -0.019915607801687194
#>     Attrib V21    0.0705380657327353
#>     Attrib V22    -0.04576450729911436
#>     Attrib V23    -0.016978525679104444
#>     Attrib V24    -0.014952019788396166
#>     Attrib V25    -0.2740471723032152
#>     Attrib V26    -0.07782021901511971
#>     Attrib V27    -8.426660044659256E-4
#>     Attrib V28    0.09877458033895523
#>     Attrib V29    0.14676818008744041
#>     Attrib V3    0.014021016603323411
#>     Attrib V30    0.3858950692635852
#>     Attrib V31    -0.4468445810390388
#>     Attrib V32    0.03938525853489604
#>     Attrib V33    0.3309347828617835
#>     Attrib V34    0.07235445675556565
#>     Attrib V35    -0.04910537707338272
#>     Attrib V36    -0.13517851237311812
#>     Attrib V37    -0.27123581870726854
#>     Attrib V38    0.1636459723260886
#>     Attrib V39    0.10791114236630941
#>     Attrib V4    0.3035566244538368
#>     Attrib V40    -0.11172786428490215
#>     Attrib V41    -0.17917961715610886
#>     Attrib V42    -0.1280601791334366
#>     Attrib V43    -0.045699398532661376
#>     Attrib V44    0.24153610353906058
#>     Attrib V45    0.3743456252803069
#>     Attrib V46    0.24443512829151878
#>     Attrib V47    0.0408480119863833
#>     Attrib V48    0.21897798878100688
#>     Attrib V49    0.41725667252060133
#>     Attrib V5    0.018710381864731174
#>     Attrib V50    -0.36465505568123413
#>     Attrib V51    0.04463195322006943
#>     Attrib V52    0.13341259499459296
#>     Attrib V53    0.08090063322245998
#>     Attrib V54    0.1642639721691232
#>     Attrib V55    -0.23005415176278535
#>     Attrib V56    -0.25454807748967034
#>     Attrib V57    0.040795717916033016
#>     Attrib V58    0.10588535904744996
#>     Attrib V59    0.08923647529761275
#>     Attrib V6    -0.1452369406221867
#>     Attrib V60    -0.11630996276007431
#>     Attrib V7    0.01824454349318251
#>     Attrib V8    -0.1686237191246116
#>     Attrib V9    0.1640285099851074
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    -0.03874315982925647
#>     Attrib V1    -0.7783858762064154
#>     Attrib V10    1.6236237609449944
#>     Attrib V11    1.9499279934751628
#>     Attrib V12    2.1205957385480123
#>     Attrib V13    0.6693851612357462
#>     Attrib V14    -0.8200166289297262
#>     Attrib V15    -1.4783104411234202
#>     Attrib V16    -0.9907580468920568
#>     Attrib V17    -0.0060627350821620875
#>     Attrib V18    0.3277566012950477
#>     Attrib V19    -0.02256702013881049
#>     Attrib V2    -0.5222323359140892
#>     Attrib V20    -0.029174159926678794
#>     Attrib V21    0.2004144023852783
#>     Attrib V22    0.6537117555420212
#>     Attrib V23    1.4198571832180393
#>     Attrib V24    1.2014680688620774
#>     Attrib V25    0.9163620932245876
#>     Attrib V26    1.474672508030514
#>     Attrib V27    1.0198060553592112
#>     Attrib V28    0.9677132206148819
#>     Attrib V29    0.7787851182138801
#>     Attrib V3    -0.21938330912435539
#>     Attrib V30    0.8713424891583161
#>     Attrib V31    -1.351436827886323
#>     Attrib V32    -0.02415427740205454
#>     Attrib V33    0.05381079965052895
#>     Attrib V34    -0.12655345117943625
#>     Attrib V35    0.1745466417546521
#>     Attrib V36    -0.22426197139529414
#>     Attrib V37    -0.9648167552305698
#>     Attrib V38    -0.08672242184634167
#>     Attrib V39    -0.017757593766074352
#>     Attrib V4    1.024790500530943
#>     Attrib V40    0.07706092390973941
#>     Attrib V41    0.586764868190198
#>     Attrib V42    -0.35975735439856404
#>     Attrib V43    -0.04960264457031783
#>     Attrib V44    0.7357396444331026
#>     Attrib V45    0.9025260462358274
#>     Attrib V46    1.2311094160596723
#>     Attrib V47    1.0865381107683492
#>     Attrib V48    1.250347115669336
#>     Attrib V49    1.709574938310468
#>     Attrib V5    0.5925027913792593
#>     Attrib V50    -0.423026866418947
#>     Attrib V51    1.7032124024966957
#>     Attrib V52    1.2083841170795673
#>     Attrib V53    0.44419177053927833
#>     Attrib V54    -0.19693671810438573
#>     Attrib V55    -1.5485560979464654
#>     Attrib V56    -1.1023222444224388
#>     Attrib V57    -0.8419716189455205
#>     Attrib V58    -0.14914760747946687
#>     Attrib V59    0.2663244665707003
#>     Attrib V6    0.33608094879372336
#>     Attrib V60    -0.28018454508390833
#>     Attrib V7    0.027377947562782442
#>     Attrib V8    -0.45363574247586247
#>     Attrib V9    0.7391553937665404
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.22672157619649205
#>     Attrib V1    0.07173570809412107
#>     Attrib V10    -0.008655843954518544
#>     Attrib V11    -0.2985587578428229
#>     Attrib V12    -0.25711588694316706
#>     Attrib V13    -0.0768252360566031
#>     Attrib V14    0.13181419656747984
#>     Attrib V15    -0.06194387416004619
#>     Attrib V16    0.06560214859673978
#>     Attrib V17    -0.11429801671985103
#>     Attrib V18    0.1257149396567898
#>     Attrib V19    0.15095377526816958
#>     Attrib V2    0.04193066408603041
#>     Attrib V20    -0.09502400842001844
#>     Attrib V21    -0.05185860666367959
#>     Attrib V22    0.009010336121327836
#>     Attrib V23    0.0071206474386849156
#>     Attrib V24    -0.0960562009793087
#>     Attrib V25    0.06434106792447014
#>     Attrib V26    -0.08811943778384064
#>     Attrib V27    -0.12957309647699053
#>     Attrib V28    -0.1202834816405069
#>     Attrib V29    -0.11159719411388988
#>     Attrib V3    -0.005048165259774818
#>     Attrib V30    -0.18923722318388786
#>     Attrib V31    0.5206139193747912
#>     Attrib V32    0.11571221266830005
#>     Attrib V33    -0.15455035348368423
#>     Attrib V34    -0.06370596545530369
#>     Attrib V35    0.14711669466298583
#>     Attrib V36    0.38739339701395004
#>     Attrib V37    0.37405902663658586
#>     Attrib V38    -0.04166730615668917
#>     Attrib V39    -0.11956820113517376
#>     Attrib V4    -0.07866260223378026
#>     Attrib V40    0.2239161042782623
#>     Attrib V41    0.2856853932804291
#>     Attrib V42    0.0933569278332203
#>     Attrib V43    0.08509377082087967
#>     Attrib V44    -0.0735186481889024
#>     Attrib V45    -0.27545488068808116
#>     Attrib V46    -0.16499399874507903
#>     Attrib V47    0.09700407578169788
#>     Attrib V48    -3.1179797538359306E-4
#>     Attrib V49    -0.23166197694134394
#>     Attrib V5    -0.010927930796910536
#>     Attrib V50    0.5120992411285934
#>     Attrib V51    0.06673633293343514
#>     Attrib V52    -0.020225447878817703
#>     Attrib V53    -0.0023114851484543467
#>     Attrib V54    -0.17627681112748914
#>     Attrib V55    0.14250711444189743
#>     Attrib V56    0.1023530736320415
#>     Attrib V57    0.08686505140043312
#>     Attrib V58    -0.10850909101590867
#>     Attrib V59    -0.05702349881183577
#>     Attrib V6    0.0956764363199679
#>     Attrib V60    0.15775191947756978
#>     Attrib V7    0.008888865441634862
#>     Attrib V8    0.1841432035444377
#>     Attrib V9    -0.11595771131186623
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.04222991861459951
#>     Attrib V1    -0.2572528395066543
#>     Attrib V10    0.5970088675925513
#>     Attrib V11    0.8455222658429341
#>     Attrib V12    0.6814583741210223
#>     Attrib V13    -0.0770505516548698
#>     Attrib V14    -0.40772437589960075
#>     Attrib V15    -0.3887367767498246
#>     Attrib V16    -0.4137810570847382
#>     Attrib V17    0.014092117760877144
#>     Attrib V18    -0.09283569871394794
#>     Attrib V19    -0.3834251639501496
#>     Attrib V2    -0.1645997575220258
#>     Attrib V20    0.10743201227220572
#>     Attrib V21    0.2492847096242619
#>     Attrib V22    0.27851162246575
#>     Attrib V23    0.40583900434818
#>     Attrib V24    0.13624206293091656
#>     Attrib V25    -0.27013275304019796
#>     Attrib V26    0.06061676652568609
#>     Attrib V27    0.15843506882641006
#>     Attrib V28    0.27303925379597394
#>     Attrib V29    0.3010775790242389
#>     Attrib V3    -0.13370945950340132
#>     Attrib V30    0.8772027791749234
#>     Attrib V31    -0.8221697960696445
#>     Attrib V32    0.09696484818523399
#>     Attrib V33    0.5503207011869727
#>     Attrib V34    0.161337552194594
#>     Attrib V35    0.06280915470608125
#>     Attrib V36    -0.1416599762827099
#>     Attrib V37    -0.39292580406453453
#>     Attrib V38    0.34276148552111685
#>     Attrib V39    0.057445061371126864
#>     Attrib V4    0.4538817748217123
#>     Attrib V40    -0.3468893584379998
#>     Attrib V41    -0.3309638680997074
#>     Attrib V42    -0.14658285668650609
#>     Attrib V43    -0.0396880980536671
#>     Attrib V44    0.46528539610654024
#>     Attrib V45    0.705083026312668
#>     Attrib V46    0.42780061205785325
#>     Attrib V47    0.23007022943622438
#>     Attrib V48    0.480942993273473
#>     Attrib V49    0.8404160774592055
#>     Attrib V5    0.1470291622058383
#>     Attrib V50    -0.5854787725438086
#>     Attrib V51    0.503386782763012
#>     Attrib V52    0.29741657443125535
#>     Attrib V53    -0.13199188164031797
#>     Attrib V54    0.22972123022267754
#>     Attrib V55    -0.6425923567617322
#>     Attrib V56    -0.5244879632596003
#>     Attrib V57    -0.3263459993505844
#>     Attrib V58    0.12785325374766393
#>     Attrib V59    -0.04605604214403824
#>     Attrib V6    -0.17395638359596524
#>     Attrib V60    -0.3941434220772489
#>     Attrib V7    -0.037820197813011894
#>     Attrib V8    -0.27451750322136786
#>     Attrib V9    0.5612492973690265
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.2397824413102606
#>     Attrib V1    -0.11664717000554622
#>     Attrib V10    -0.024894180090919444
#>     Attrib V11    0.42133218265299116
#>     Attrib V12    0.29058835674067895
#>     Attrib V13    -0.12573834057581476
#>     Attrib V14    -0.1866470832365617
#>     Attrib V15    -0.08603688234763042
#>     Attrib V16    -0.1094615051174206
#>     Attrib V17    0.12341579644202957
#>     Attrib V18    -0.007412439894248242
#>     Attrib V19    -0.17967640911065044
#>     Attrib V2    0.0022596225072426005
#>     Attrib V20    0.1772036755579746
#>     Attrib V21    0.24892667889526346
#>     Attrib V22    0.1657867129534215
#>     Attrib V23    0.19942551472746978
#>     Attrib V24    0.08555270735567094
#>     Attrib V25    -0.41415941396682393
#>     Attrib V26    -0.2702499699285528
#>     Attrib V27    -0.153518021651951
#>     Attrib V28    -0.1618937348873321
#>     Attrib V29    -0.08569767235601292
#>     Attrib V3    -0.06565357604147304
#>     Attrib V30    0.5139167627639877
#>     Attrib V31    -0.7750322325767983
#>     Attrib V32    -0.030546491000447214
#>     Attrib V33    0.5933923594254555
#>     Attrib V34    0.09961819912773506
#>     Attrib V35    -0.20527939269012818
#>     Attrib V36    -0.41891370579842235
#>     Attrib V37    -0.5780345389921295
#>     Attrib V38    0.21754846470257713
#>     Attrib V39    0.21913141964989388
#>     Attrib V4    0.31994288387574066
#>     Attrib V40    -0.07493534649875104
#>     Attrib V41    -0.19035585424869392
#>     Attrib V42    0.07446436934894556
#>     Attrib V43    0.1095964895369004
#>     Attrib V44    0.23621101461143923
#>     Attrib V45    0.4520550800557609
#>     Attrib V46    0.17373687332320367
#>     Attrib V47    -0.19122360372968497
#>     Attrib V48    0.13569462264809656
#>     Attrib V49    0.5297798147380767
#>     Attrib V5    -0.011762423945117938
#>     Attrib V50    -0.6176660884776245
#>     Attrib V51    -0.005809937382280914
#>     Attrib V52    0.19108185923527327
#>     Attrib V53    0.20921093190380102
#>     Attrib V54    0.37589086855171866
#>     Attrib V55    -0.3581684174580082
#>     Attrib V56    -0.17821640925694923
#>     Attrib V57    0.003833323696731212
#>     Attrib V58    0.30591277699282604
#>     Attrib V59    0.2027117887058183
#>     Attrib V6    -0.28651755631146686
#>     Attrib V60    -0.08973970630224852
#>     Attrib V7    0.0523207084675603
#>     Attrib V8    -0.1350805868444994
#>     Attrib V9    0.2765968605326769
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.14555982570426051
#>     Attrib V1    0.07307401620260788
#>     Attrib V10    -0.017832674032432286
#>     Attrib V11    0.08055584151579487
#>     Attrib V12    0.08282081123844785
#>     Attrib V13    0.04574686063432037
#>     Attrib V14    0.0020615828642729537
#>     Attrib V15    -0.013745286423163427
#>     Attrib V16    -0.07658305380512351
#>     Attrib V17    0.009246007252311006
#>     Attrib V18    -0.02829105307518467
#>     Attrib V19    -0.08331979765091443
#>     Attrib V2    0.07536190137556467
#>     Attrib V20    0.11173105700492941
#>     Attrib V21    0.08778974783181803
#>     Attrib V22    -0.032604343593356386
#>     Attrib V23    0.046614208829451734
#>     Attrib V24    0.03171706193052585
#>     Attrib V25    -0.050708471918338875
#>     Attrib V26    -0.10139063799930621
#>     Attrib V27    -0.02947299678478957
#>     Attrib V28    -0.08015370791106283
#>     Attrib V29    -0.020358101712014035
#>     Attrib V3    0.15515596642120913
#>     Attrib V30    0.09274987439096172
#>     Attrib V31    -0.2588368686380003
#>     Attrib V32    -0.014414932823254564
#>     Attrib V33    0.12906567423359638
#>     Attrib V34    0.0917514994541366
#>     Attrib V35    -0.005895323821886943
#>     Attrib V36    -0.05883148744757361
#>     Attrib V37    -0.07186997611141198
#>     Attrib V38    0.08552100692767439
#>     Attrib V39    0.1524580046611103
#>     Attrib V4    0.1968467269242455
#>     Attrib V40    0.025570071210341216
#>     Attrib V41    -0.04618016862882317
#>     Attrib V42    0.025475116319073364
#>     Attrib V43    -0.02648985902229198
#>     Attrib V44    0.10870646497117896
#>     Attrib V45    0.1634635727737462
#>     Attrib V46    0.14656601504874164
#>     Attrib V47    0.05816367322592431
#>     Attrib V48    0.04916099974464033
#>     Attrib V49    0.17826233816438994
#>     Attrib V5    0.10799570860063037
#>     Attrib V50    -0.08506066173700054
#>     Attrib V51    0.01599026473806021
#>     Attrib V52    0.07046790977637306
#>     Attrib V53    0.07872615412228726
#>     Attrib V54    0.08619774232352528
#>     Attrib V55    -0.027130942114121672
#>     Attrib V56    -6.923578690730453E-4
#>     Attrib V57    0.09783577977360551
#>     Attrib V58    0.09410852956130511
#>     Attrib V59    0.12300931233118927
#>     Attrib V6    -4.0255531386705596E-4
#>     Attrib V60    0.049095044622678975
#>     Attrib V7    0.10188113057678073
#>     Attrib V8    -0.0454423406027433
#>     Attrib V9    0.08063335107796112
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.20859825033921575
#>     Attrib V1    0.005250815342203734
#>     Attrib V10    0.13093034449782567
#>     Attrib V11    0.5326266933481548
#>     Attrib V12    0.26873858466108513
#>     Attrib V13    -0.4074016035762714
#>     Attrib V14    -0.29539395387766254
#>     Attrib V15    0.048798762886800955
#>     Attrib V16    -0.0662598170775129
#>     Attrib V17    0.15687956589756874
#>     Attrib V18    -0.09113376166174669
#>     Attrib V19    -0.3853927092662672
#>     Attrib V2    -0.014181707011440716
#>     Attrib V20    0.11024548521399083
#>     Attrib V21    0.17860318898907268
#>     Attrib V22    -0.05389754142981003
#>     Attrib V23    0.05614743655037289
#>     Attrib V24    -0.12958124325320203
#>     Attrib V25    -0.7975424957090108
#>     Attrib V26    -0.5882374573754023
#>     Attrib V27    -0.4888850837318356
#>     Attrib V28    -0.5415936437170055
#>     Attrib V29    -0.4871688954224072
#>     Attrib V3    -0.08415963228149428
#>     Attrib V30    0.6281231335408755
#>     Attrib V31    -0.6885267812177908
#>     Attrib V32    0.28652570522566656
#>     Attrib V33    0.9217210222662054
#>     Attrib V34    0.16981977301463014
#>     Attrib V35    -0.33180937583109793
#>     Attrib V36    -0.7337702629669586
#>     Attrib V37    -0.9236263792332788
#>     Attrib V38    0.05911161563961107
#>     Attrib V39    0.21169547873732064
#>     Attrib V4    0.37090652939351
#>     Attrib V40    -0.26419564015062946
#>     Attrib V41    -0.3788507769011947
#>     Attrib V42    0.1156868622772483
#>     Attrib V43    0.04120498756317293
#>     Attrib V44    0.30883148256883053
#>     Attrib V45    0.4463227959132179
#>     Attrib V46    0.10757844191420758
#>     Attrib V47    -0.20856703656304312
#>     Attrib V48    0.3663652744451331
#>     Attrib V49    0.9005160674896264
#>     Attrib V5    -0.08908189004000261
#>     Attrib V50    -0.686140733236045
#>     Attrib V51    -0.032179661944079424
#>     Attrib V52    0.21206554298108665
#>     Attrib V53    0.06377600625580934
#>     Attrib V54    0.4792103804198366
#>     Attrib V55    -0.22009094548181754
#>     Attrib V56    -0.15409191569414277
#>     Attrib V57    -0.05371547076878302
#>     Attrib V58    0.4481651323157463
#>     Attrib V59    0.14510787568856257
#>     Attrib V6    -0.4115935510589294
#>     Attrib V60    -0.10743161307740724
#>     Attrib V7    0.06611043600055073
#>     Attrib V8    -0.11113127393914386
#>     Attrib V9    0.45341007950586537
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.2020297421976034
#>     Attrib V1    -0.03389633191176345
#>     Attrib V10    0.1883458877585655
#>     Attrib V11    -0.44593502201608104
#>     Attrib V12    -0.33220946876813984
#>     Attrib V13    0.15689298173388477
#>     Attrib V14    0.2018763571164227
#>     Attrib V15    0.011801867561205454
#>     Attrib V16    0.027593808235437053
#>     Attrib V17    -0.38455271843978067
#>     Attrib V18    -0.18423389609519292
#>     Attrib V19    0.17352711242701327
#>     Attrib V2    -0.041843667431812635
#>     Attrib V20    -0.36361952570799017
#>     Attrib V21    -0.4958052620811051
#>     Attrib V22    -0.3807096920285826
#>     Attrib V23    -0.5198293290283914
#>     Attrib V24    -0.35981498132046275
#>     Attrib V25    0.4807907079811034
#>     Attrib V26    0.40687699936957755
#>     Attrib V27    0.2936090552998259
#>     Attrib V28    0.43310078778554845
#>     Attrib V29    0.4464663663684035
#>     Attrib V3    0.010148822120771768
#>     Attrib V30    -0.6023417296362136
#>     Attrib V31    1.0896970423192827
#>     Attrib V32    0.04416830471581052
#>     Attrib V33    -0.8747646536717262
#>     Attrib V34    -0.015831950663730374
#>     Attrib V35    0.46029232546562576
#>     Attrib V36    0.7390210273167153
#>     Attrib V37    0.9813377698494758
#>     Attrib V38    -0.37088397330948847
#>     Attrib V39    -0.4036710816535261
#>     Attrib V4    -0.34398713100744777
#>     Attrib V40    0.1287342177023009
#>     Attrib V41    0.20377921861886633
#>     Attrib V42    -0.3655089540739845
#>     Attrib V43    -0.3697862369113562
#>     Attrib V44    -0.4656222650237118
#>     Attrib V45    -0.5034970420211824
#>     Attrib V46    -0.02285296942130284
#>     Attrib V47    0.47545932347955255
#>     Attrib V48    0.13900775546096136
#>     Attrib V49    -0.6843296130187888
#>     Attrib V5    -0.06512021560847725
#>     Attrib V50    0.8969133871155037
#>     Attrib V51    0.10324095001455619
#>     Attrib V52    -0.257542450745735
#>     Attrib V53    -0.4870934530396239
#>     Attrib V54    -0.7469452226588572
#>     Attrib V55    0.36652205677492616
#>     Attrib V56    0.10785870301449596
#>     Attrib V57    -0.04173839243773859
#>     Attrib V58    -0.6264906418181105
#>     Attrib V59    -0.40007168656927783
#>     Attrib V6    0.2690903313370207
#>     Attrib V60    -0.06521646180321229
#>     Attrib V7    -0.19235046632306582
#>     Attrib V8    0.11913584111832502
#>     Attrib V9    -0.40288490915242997
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1744868233941833
#>     Attrib V1    0.07595371258396903
#>     Attrib V10    0.043609849394599054
#>     Attrib V11    0.006218392782038864
#>     Attrib V12    0.018106828007192148
#>     Attrib V13    0.026485001194097812
#>     Attrib V14    0.005156759612251064
#>     Attrib V15    -0.0010528790410429013
#>     Attrib V16    0.05129959821188319
#>     Attrib V17    0.03275184612643289
#>     Attrib V18    0.032833499846662804
#>     Attrib V19    0.011039452123656864
#>     Attrib V2    0.04969052877029849
#>     Attrib V20    -0.010205844600192344
#>     Attrib V21    -0.027568352740029056
#>     Attrib V22    -0.0521480824727504
#>     Attrib V23    -0.06542786143627269
#>     Attrib V24    0.004647651040526898
#>     Attrib V25    -0.01984830141832151
#>     Attrib V26    -0.07940540849805477
#>     Attrib V27    -0.07519199248224738
#>     Attrib V28    -0.04006805466314128
#>     Attrib V29    -0.03836518119210916
#>     Attrib V3    0.12263275248378663
#>     Attrib V30    -0.018521727318286555
#>     Attrib V31    -0.038426712077792725
#>     Attrib V32    0.0372583986342688
#>     Attrib V33    0.03742435041743058
#>     Attrib V34    0.07394489445493357
#>     Attrib V35    0.04587319146172271
#>     Attrib V36    0.05119136555638758
#>     Attrib V37    0.07489243835907833
#>     Attrib V38    0.06582516585913376
#>     Attrib V39    0.08511101670365732
#>     Attrib V4    0.13152630457704645
#>     Attrib V40    0.04788871762357863
#>     Attrib V41    0.050456688528603306
#>     Attrib V42    0.08584419567771577
#>     Attrib V43    0.033746381283424685
#>     Attrib V44    0.043913377805530646
#>     Attrib V45    0.10516753247127547
#>     Attrib V46    0.10967980003662348
#>     Attrib V47    0.08214615697379234
#>     Attrib V48    0.06122904410377631
#>     Attrib V49    0.03835500793258271
#>     Attrib V5    0.09229126603581277
#>     Attrib V50    0.11226183814789953
#>     Attrib V51    0.1086478008387007
#>     Attrib V52    0.10200379611508809
#>     Attrib V53    0.07633256762158819
#>     Attrib V54    0.0033585776928528126
#>     Attrib V55    0.06373043758972068
#>     Attrib V56    0.07451589175091192
#>     Attrib V57    0.11794607199788272
#>     Attrib V58    0.10920078364983912
#>     Attrib V59    0.027585771735946122
#>     Attrib V6    0.0517405326252999
#>     Attrib V60    0.06932052982273833
#>     Attrib V7    0.04206001332153288
#>     Attrib V8    0.02173177751899941
#>     Attrib V9    0.09583062202956738
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.05716509144596652
#>     Attrib V1    0.09440531944479713
#>     Attrib V10    0.06158155447406368
#>     Attrib V11    0.1336083036527603
#>     Attrib V12    0.06586829769709936
#>     Attrib V13    -0.07225806412833724
#>     Attrib V14    -0.04202379820556133
#>     Attrib V15    0.05051642138303281
#>     Attrib V16    -0.05273967475924085
#>     Attrib V17    -0.01793918110511772
#>     Attrib V18    -0.059676640176223227
#>     Attrib V19    -0.08298182363805705
#>     Attrib V2    0.14402430784478615
#>     Attrib V20    0.047540574653066124
#>     Attrib V21    0.03681857914316008
#>     Attrib V22    0.012563351163397874
#>     Attrib V23    -0.037286033383446694
#>     Attrib V24    -0.008161175446631181
#>     Attrib V25    -0.1888134392501721
#>     Attrib V26    -0.13636108393431853
#>     Attrib V27    -0.07623086171292427
#>     Attrib V28    -0.06488493257387509
#>     Attrib V29    -0.062005680206723666
#>     Attrib V3    0.08671355365738931
#>     Attrib V30    0.1355345243219361
#>     Attrib V31    -0.19484347308267852
#>     Attrib V32    -0.034877408145484685
#>     Attrib V33    0.21314224346879168
#>     Attrib V34    0.043478306706975424
#>     Attrib V35    0.03904783002652942
#>     Attrib V36    -0.08110807191396079
#>     Attrib V37    -0.13328692127793162
#>     Attrib V38    0.13647652781460207
#>     Attrib V39    0.1344850321192643
#>     Attrib V4    0.19831173018147352
#>     Attrib V40    -0.05465213194611996
#>     Attrib V41    -0.0756744902147133
#>     Attrib V42    -0.01662462835803704
#>     Attrib V43    0.051471566792456416
#>     Attrib V44    0.15711485305114356
#>     Attrib V45    0.25684632582400313
#>     Attrib V46    0.10742511346904694
#>     Attrib V47    -0.015383635839984807
#>     Attrib V48    0.12567952516641884
#>     Attrib V49    0.1516038397839428
#>     Attrib V5    0.07535005888051402
#>     Attrib V50    -0.06716696852717628
#>     Attrib V51    0.048387637087538904
#>     Attrib V52    0.08273546302672301
#>     Attrib V53    0.02948191229971861
#>     Attrib V54    0.09962882020573192
#>     Attrib V55    0.020019186532121765
#>     Attrib V56    0.005022491036935823
#>     Attrib V57    0.12992695100596183
#>     Attrib V58    0.08204248286653475
#>     Attrib V59    0.04537429883574398
#>     Attrib V6    -0.04640915531920626
#>     Attrib V60    0.0010976350673779975
#>     Attrib V7    8.791790163718886E-4
#>     Attrib V8    0.012034706065196773
#>     Attrib V9    0.10978963139242325
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.4561680486111262
#>     Attrib V1    0.23324014761144685
#>     Attrib V10    0.054745328732992586
#>     Attrib V11    -0.5955391892631118
#>     Attrib V12    -0.7379172905145173
#>     Attrib V13    -0.19503153175162055
#>     Attrib V14    0.24497924262188223
#>     Attrib V15    0.125079727927285
#>     Attrib V16    0.3213791714519931
#>     Attrib V17    -0.10068262663701526
#>     Attrib V18    0.11025462670691438
#>     Attrib V19    0.45871063289964636
#>     Attrib V2    0.14570721373833811
#>     Attrib V20    0.058476935039644906
#>     Attrib V21    -0.15665887066113682
#>     Attrib V22    -0.13992445108065737
#>     Attrib V23    -0.21549170280592564
#>     Attrib V24    -0.27079161118350153
#>     Attrib V25    0.28336594003517296
#>     Attrib V26    0.1023670178148206
#>     Attrib V27    0.07372732446119849
#>     Attrib V28    -0.04220940077351283
#>     Attrib V29    -0.15694429422136255
#>     Attrib V3    0.19372261172940605
#>     Attrib V30    -0.6680777560635415
#>     Attrib V31    0.9580071958804132
#>     Attrib V32    0.05707682885007881
#>     Attrib V33    -0.6644021400984256
#>     Attrib V34    -0.1622797132294234
#>     Attrib V35    0.09087204929900651
#>     Attrib V36    0.49681118508655164
#>     Attrib V37    0.5594726492701453
#>     Attrib V38    -0.318601522047692
#>     Attrib V39    -0.2650983696297854
#>     Attrib V4    -0.23678817116786005
#>     Attrib V40    0.05623849055890968
#>     Attrib V41    0.0072561772852106545
#>     Attrib V42    -0.09609933320610962
#>     Attrib V43    -0.11871640936126372
#>     Attrib V44    -0.3916192903087772
#>     Attrib V45    -0.6437887786616183
#>     Attrib V46    -0.2570910687442939
#>     Attrib V47    0.27214367965222824
#>     Attrib V48    -0.05509382236452676
#>     Attrib V49    -0.5543429827696108
#>     Attrib V5    0.12589639881778192
#>     Attrib V50    0.8968134589725705
#>     Attrib V51    0.011612305319237357
#>     Attrib V52    -0.1138075494505368
#>     Attrib V53    -0.202360961222239
#>     Attrib V54    -0.5102364842029229
#>     Attrib V55    0.5573321340365442
#>     Attrib V56    0.36909467935765056
#>     Attrib V57    0.11867424038840763
#>     Attrib V58    -0.32660182466014415
#>     Attrib V59    -0.2420609164540537
#>     Attrib V6    0.03697535134064063
#>     Attrib V60    0.23083732476768545
#>     Attrib V7    -0.06536931403074835
#>     Attrib V8    0.3305993119829775
#>     Attrib V9    -0.16257065978862362
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.19114461443282413
#>     Attrib V1    -0.20892468522089372
#>     Attrib V10    0.9250306792906715
#>     Attrib V11    1.2137521105230704
#>     Attrib V12    1.027825771927287
#>     Attrib V13    0.05748630194348989
#>     Attrib V14    -0.5074780795361753
#>     Attrib V15    -0.5405433422807333
#>     Attrib V16    -0.548316985704431
#>     Attrib V17    -0.16754108471168763
#>     Attrib V18    -0.15655077233718104
#>     Attrib V19    -0.43191670984766944
#>     Attrib V2    -0.09518698497531031
#>     Attrib V20    -0.1464003716644042
#>     Attrib V21    0.10039352874072804
#>     Attrib V22    0.18567366384344153
#>     Attrib V23    0.22956362999379706
#>     Attrib V24    0.0936949591763908
#>     Attrib V25    -0.16130877232236066
#>     Attrib V26    0.3820548555799807
#>     Attrib V27    0.38096239411399696
#>     Attrib V28    0.43173566728236784
#>     Attrib V29    0.42205443347148724
#>     Attrib V3    -0.17026395722485138
#>     Attrib V30    0.787354325055732
#>     Attrib V31    -0.7719709291982639
#>     Attrib V32    0.21074363045498035
#>     Attrib V33    0.4723214581479667
#>     Attrib V34    0.10498480282983197
#>     Attrib V35    0.22826253942915287
#>     Attrib V36    -0.026646225753715093
#>     Attrib V37    -0.4136263920680553
#>     Attrib V38    0.22341604861569303
#>     Attrib V39    -0.020684718454872117
#>     Attrib V4    0.58598554834495
#>     Attrib V40    -0.2746355331135269
#>     Attrib V41    -0.23260576306545502
#>     Attrib V42    -0.3695541863264027
#>     Attrib V43    -0.18164482003479102
#>     Attrib V44    0.33951862576539743
#>     Attrib V45    0.7145438449943523
#>     Attrib V46    0.6596620485541994
#>     Attrib V47    0.33991074109359803
#>     Attrib V48    0.595431924971113
#>     Attrib V49    1.0988671581996847
#>     Attrib V5    0.18299817982901892
#>     Attrib V50    -0.5072680557281933
#>     Attrib V51    0.5917566839924465
#>     Attrib V52    0.4627011609553788
#>     Attrib V53    0.0553449127922869
#>     Attrib V54    0.15675158343869874
#>     Attrib V55    -0.628243134517431
#>     Attrib V56    -0.9432273053296978
#>     Attrib V57    -0.4983395641251441
#>     Attrib V58    0.1298924047448845
#>     Attrib V59    -0.050605928948279935
#>     Attrib V6    -0.07046161085185894
#>     Attrib V60    -0.37484651245310086
#>     Attrib V7    0.0753537915912054
#>     Attrib V8    -0.29730346360127285
#>     Attrib V9    0.6140520767420861
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.01975244610939179
#>     Attrib V1    0.10753151089499657
#>     Attrib V10    0.14378039594518421
#>     Attrib V11    0.42228323253373545
#>     Attrib V12    0.4133808834367154
#>     Attrib V13    0.04250045076053741
#>     Attrib V14    -0.1290255267179932
#>     Attrib V15    -0.10867134019987584
#>     Attrib V16    -0.2589462625749954
#>     Attrib V17    0.12245577627938094
#>     Attrib V18    0.08229889186733978
#>     Attrib V19    -0.053344516397846396
#>     Attrib V2    0.04874959591396937
#>     Attrib V20    0.4473468317622936
#>     Attrib V21    0.5931524615873759
#>     Attrib V22    0.59886084173069
#>     Attrib V23    0.6652207558235101
#>     Attrib V24    0.4527122655793249
#>     Attrib V25    -0.020295155186039467
#>     Attrib V26    0.09663953018938871
#>     Attrib V27    -0.00462328308262245
#>     Attrib V28    -0.12507287636360925
#>     Attrib V29    -0.02859586711183127
#>     Attrib V3    0.02631735439686911
#>     Attrib V30    0.5821474651564654
#>     Attrib V31    -0.7896308376557524
#>     Attrib V32    -0.16620727379263778
#>     Attrib V33    0.48574719580712206
#>     Attrib V34    0.04884718893497265
#>     Attrib V35    -0.054686444733435216
#>     Attrib V36    -0.09489219588607502
#>     Attrib V37    -0.21764268546992327
#>     Attrib V38    0.444046090966804
#>     Attrib V39    0.354660753174878
#>     Attrib V4    0.32238888020609985
#>     Attrib V40    -0.06301357159698674
#>     Attrib V41    -0.16267670138314266
#>     Attrib V42    0.05892644869783423
#>     Attrib V43    0.21439942935994383
#>     Attrib V44    0.4555181981675052
#>     Attrib V45    0.46843350876338974
#>     Attrib V46    0.12672829369128524
#>     Attrib V47    -0.22546110284695725
#>     Attrib V48    -0.05485362452254866
#>     Attrib V49    0.4302022621216689
#>     Attrib V5    0.1401561577188488
#>     Attrib V50    -0.5465933502870567
#>     Attrib V51    0.13684035534040162
#>     Attrib V52    0.18828858573311935
#>     Attrib V53    0.15311880441226608
#>     Attrib V54    0.4434001422392853
#>     Attrib V55    -0.4445265844169348
#>     Attrib V56    -0.11424895614632609
#>     Attrib V57    -0.19944017226367294
#>     Attrib V58    0.2846838012268864
#>     Attrib V59    0.19194666663468926
#>     Attrib V6    -0.14972481536131005
#>     Attrib V60    -0.06167029027193646
#>     Attrib V7    0.10287734343044477
#>     Attrib V8    -0.28389512773973996
#>     Attrib V9    0.3865480393085912
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.1516415512981703
#>     Attrib V1    0.008072968719112218
#>     Attrib V10    0.6385130900496132
#>     Attrib V11    -0.3852867548521542
#>     Attrib V12    -0.5944276390157903
#>     Attrib V13    0.013831834919122904
#>     Attrib V14    0.18710069062284423
#>     Attrib V15    -0.1165361514152334
#>     Attrib V16    0.10355345591780855
#>     Attrib V17    -0.3860832802117761
#>     Attrib V18    -0.0054146052459366715
#>     Attrib V19    0.250433947009318
#>     Attrib V2    -0.013445826214536685
#>     Attrib V20    -0.663243912995413
#>     Attrib V21    -0.7260451196362994
#>     Attrib V22    -0.7542133478000975
#>     Attrib V23    -0.9332596859759665
#>     Attrib V24    -0.8908946365701335
#>     Attrib V25    0.2514191107058621
#>     Attrib V26    0.4505016801368718
#>     Attrib V27    0.7867707295353864
#>     Attrib V28    1.2818393293867025
#>     Attrib V29    1.5204199142611245
#>     Attrib V3    -0.23454303780686656
#>     Attrib V30    -0.5651290015548052
#>     Attrib V31    1.407116682811086
#>     Attrib V32    0.04947485990329562
#>     Attrib V33    -1.488933584481886
#>     Attrib V34    -0.2927692546877098
#>     Attrib V35    0.8438088435233208
#>     Attrib V36    1.5205656529456864
#>     Attrib V37    2.018320181306604
#>     Attrib V38    0.10110153035925502
#>     Attrib V39    -0.24260924203200052
#>     Attrib V4    -0.5777053317044006
#>     Attrib V40    0.2244680152488375
#>     Attrib V41    -0.04317107428655097
#>     Attrib V42    -1.0490496049845217
#>     Attrib V43    -0.4692577868705063
#>     Attrib V44    -0.3539843674227021
#>     Attrib V45    -0.6926181831708529
#>     Attrib V46    0.19517250550049614
#>     Attrib V47    0.8251032832771826
#>     Attrib V48    0.15300312865341564
#>     Attrib V49    -0.8931905826508061
#>     Attrib V5    -0.19030095091309865
#>     Attrib V50    1.3373251561822797
#>     Attrib V51    0.3488502890940762
#>     Attrib V52    -0.1533802891165952
#>     Attrib V53    -0.7299758904822049
#>     Attrib V54    -1.4695267715719034
#>     Attrib V55    0.4140345835755656
#>     Attrib V56    -0.48261329758454297
#>     Attrib V57    -0.3134229220438792
#>     Attrib V58    -1.2033919646711242
#>     Attrib V59    -0.9187486700828463
#>     Attrib V6    0.22381521735476112
#>     Attrib V60    -0.3974106986180617
#>     Attrib V7    -0.41210173346384743
#>     Attrib V8    -0.3065345143186433
#>     Attrib V9    -0.686346612344935
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.10255086551094258
#>     Attrib V1    0.27414491239986827
#>     Attrib V10    -0.3028662044689326
#>     Attrib V11    0.058284141178877424
#>     Attrib V12    0.029994279893445157
#>     Attrib V13    -0.1880378822247698
#>     Attrib V14    0.015538508454880836
#>     Attrib V15    0.2348784770425715
#>     Attrib V16    0.16950552937002844
#>     Attrib V17    0.24145996701923997
#>     Attrib V18    0.05493894653964399
#>     Attrib V19    -0.1596236226333751
#>     Attrib V2    0.23201173310977025
#>     Attrib V20    0.4056770624015929
#>     Attrib V21    0.4090013022410174
#>     Attrib V22    0.09103412826655283
#>     Attrib V23    0.07148755528375735
#>     Attrib V24    0.13000248298333522
#>     Attrib V25    -0.5614148417979934
#>     Attrib V26    -0.6488319321600061
#>     Attrib V27    -0.6399064073293799
#>     Attrib V28    -0.6887540769067294
#>     Attrib V29    -0.5247911164437351
#>     Attrib V3    0.13592593820463816
#>     Attrib V30    0.17911748631837401
#>     Attrib V31    -0.7909847222474587
#>     Attrib V32    -0.14701671254024273
#>     Attrib V33    0.6051978134887515
#>     Attrib V34    0.13849796797727246
#>     Attrib V35    -0.2835440767589449
#>     Attrib V36    -0.5457239265711354
#>     Attrib V37    -0.6246075554721817
#>     Attrib V38    0.1453705199076443
#>     Attrib V39    0.296373706445824
#>     Attrib V4    0.2861724964130586
#>     Attrib V40    -0.029154921005961204
#>     Attrib V41    -0.24224064348345092
#>     Attrib V42    0.2353253475461212
#>     Attrib V43    0.18344595445594916
#>     Attrib V44    0.21748683641300764
#>     Attrib V45    0.3304859340521531
#>     Attrib V46    0.024423257443581578
#>     Attrib V47    -0.42932146072756094
#>     Attrib V48    -0.06863105251629922
#>     Attrib V49    0.34161618563866364
#>     Attrib V5    -0.024944166734662758
#>     Attrib V50    -0.5212389056287594
#>     Attrib V51    -0.22257114320492108
#>     Attrib V52    0.09051838325906757
#>     Attrib V53    0.3139496414192866
#>     Attrib V54    0.6552498844438902
#>     Attrib V55    -0.03201440051242313
#>     Attrib V56    0.15436062441787318
#>     Attrib V57    0.19622454174952894
#>     Attrib V58    0.4959031645261073
#>     Attrib V59    0.3216561928281366
#>     Attrib V6    -0.16106207648933166
#>     Attrib V60    0.19797985473364696
#>     Attrib V7    0.23145703461876002
#>     Attrib V8    -0.08466980885462948
#>     Attrib V9    0.1847349078850755
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.036216475026424985
#>     Attrib V1    0.2288034090299845
#>     Attrib V10    -0.26589318459844524
#>     Attrib V11    0.12603839623083468
#>     Attrib V12    0.15121221774763688
#>     Attrib V13    -0.032017280004733924
#>     Attrib V14    0.002277203220229551
#>     Attrib V15    0.1444644787146161
#>     Attrib V16    -0.023271131172670764
#>     Attrib V17    0.242774394831132
#>     Attrib V18    0.10355089796028602
#>     Attrib V19    -0.03959625739926939
#>     Attrib V2    0.1434266857949243
#>     Attrib V20    0.3954967976193129
#>     Attrib V21    0.40050204045533044
#>     Attrib V22    0.24867412716021836
#>     Attrib V23    0.3048250026520109
#>     Attrib V24    0.20735782761133542
#>     Attrib V25    -0.2800821131762266
#>     Attrib V26    -0.33576102526099444
#>     Attrib V27    -0.466788474960082
#>     Attrib V28    -0.507654553453015
#>     Attrib V29    -0.44574162103310355
#>     Attrib V3    0.18542623163398406
#>     Attrib V30    0.2044804359469787
#>     Attrib V31    -0.7813284216629587
#>     Attrib V32    -0.2000547585973987
#>     Attrib V33    0.5242256989562905
#>     Attrib V34    0.12544344683200123
#>     Attrib V35    -0.09798699455002677
#>     Attrib V36    -0.3366942321017974
#>     Attrib V37    -0.41736968697206767
#>     Attrib V38    0.20084889955910917
#>     Attrib V39    0.2926605057087133
#>     Attrib V4    0.34038666952314944
#>     Attrib V40    -0.08128767759074634
#>     Attrib V41    -0.1872961452550575
#>     Attrib V42    0.18450100802583466
#>     Attrib V43    0.1748729140287845
#>     Attrib V44    0.242961834356954
#>     Attrib V45    0.4026035733661868
#>     Attrib V46    0.028907730640222253
#>     Attrib V47    -0.2729910827605167
#>     Attrib V48    -0.15552908756464903
#>     Attrib V49    0.24703910597426104
#>     Attrib V5    0.029021389203272758
#>     Attrib V50    -0.4740014180057367
#>     Attrib V51    -0.14493065160389446
#>     Attrib V52    0.14141604579186456
#>     Attrib V53    0.2942836784994101
#>     Attrib V54    0.520900440055164
#>     Attrib V55    -0.10690697576755956
#>     Attrib V56    0.16020758493154041
#>     Attrib V57    0.08237952246078097
#>     Attrib V58    0.37244547871451755
#>     Attrib V59    0.323405218174815
#>     Attrib V6    -0.16723491760366088
#>     Attrib V60    0.16009141881517616
#>     Attrib V7    0.19860602200638713
#>     Attrib V8    -0.08905825166986407
#>     Attrib V9    0.18734726245122715
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.13676725194757258
#>     Attrib V1    0.026748342045827895
#>     Attrib V10    -0.0020878798771822387
#>     Attrib V11    -0.18630048934374505
#>     Attrib V12    -0.1460130671004041
#>     Attrib V13    -0.07943768718442837
#>     Attrib V14    0.06406792173568518
#>     Attrib V15    0.04175632675673405
#>     Attrib V16    0.0736557546673642
#>     Attrib V17    0.059584193540418724
#>     Attrib V18    0.09983322124267177
#>     Attrib V19    0.11239046711016704
#>     Attrib V2    0.02256695447009352
#>     Attrib V20    -0.08321721239445977
#>     Attrib V21    -0.04352869542020054
#>     Attrib V22    -0.003194530210896636
#>     Attrib V23    0.010066956168997433
#>     Attrib V24    -0.06960852357063821
#>     Attrib V25    0.06775779215325388
#>     Attrib V26    -0.060459288992245716
#>     Attrib V27    -0.1675779857446847
#>     Attrib V28    -0.10405671737042972
#>     Attrib V29    -0.08682884607708118
#>     Attrib V3    0.00910314444047013
#>     Attrib V30    -0.14214814027584116
#>     Attrib V31    0.3418225212985871
#>     Attrib V32    0.16319908200279176
#>     Attrib V33    -0.1625653396126044
#>     Attrib V34    -0.04515387820262563
#>     Attrib V35    0.1289218543594321
#>     Attrib V36    0.3582538150535795
#>     Attrib V37    0.2998796794912579
#>     Attrib V38    -0.014758536895008017
#>     Attrib V39    -0.03093971630622823
#>     Attrib V4    0.0010639521741653488
#>     Attrib V40    0.23688506365360304
#>     Attrib V41    0.2962964656269593
#>     Attrib V42    0.11006835112307896
#>     Attrib V43    0.15847459663844948
#>     Attrib V44    -0.027830418951028807
#>     Attrib V45    -0.21530298613350152
#>     Attrib V46    -0.055219463022583064
#>     Attrib V47    0.1398732473550267
#>     Attrib V48    0.030386194945932202
#>     Attrib V49    -0.17895310195393974
#>     Attrib V5    -0.011849098805868789
#>     Attrib V50    0.33430007532301415
#>     Attrib V51    0.09631403538397636
#>     Attrib V52    0.057287966185046876
#>     Attrib V53    -0.06812503758812828
#>     Attrib V54    -0.1645031693612575
#>     Attrib V55    0.09964676613122661
#>     Attrib V56    0.14009258282975742
#>     Attrib V57    0.13319744407999337
#>     Attrib V58    -0.03689605432903901
#>     Attrib V59    0.006416937791936319
#>     Attrib V6    0.12979806741012487
#>     Attrib V60    0.1251552400028578
#>     Attrib V7    -0.00943784191516778
#>     Attrib V8    0.169408897893429
#>     Attrib V9    0.018786989490753955
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.24843784677398706
#>     Attrib V1    -0.28195924932334054
#>     Attrib V10    1.3128402405903272
#>     Attrib V11    1.9083132943593055
#>     Attrib V12    2.1477923448525105
#>     Attrib V13    0.5528085637075448
#>     Attrib V14    -0.4371255470205856
#>     Attrib V15    -1.1093684504717118
#>     Attrib V16    -0.8108472977787998
#>     Attrib V17    0.15964090506367817
#>     Attrib V18    0.4914441736711415
#>     Attrib V19    -0.3357724568598839
#>     Attrib V2    -0.1641838156046295
#>     Attrib V20    -0.0029699757924073656
#>     Attrib V21    0.35140389894689594
#>     Attrib V22    0.6161896588835719
#>     Attrib V23    1.3904719842112285
#>     Attrib V24    0.6441312305449701
#>     Attrib V25    -0.0575431306740469
#>     Attrib V26    0.8844290947378975
#>     Attrib V27    1.290868514707472
#>     Attrib V28    1.8855120087440185
#>     Attrib V29    2.148609678412479
#>     Attrib V3    -0.0010453148619564967
#>     Attrib V30    1.2514385724124715
#>     Attrib V31    -1.876484595350429
#>     Attrib V32    -0.4376804227789584
#>     Attrib V33    -0.5684710528951967
#>     Attrib V34    -0.9795471801590984
#>     Attrib V35    -0.3542189886882916
#>     Attrib V36    -0.27585237293577974
#>     Attrib V37    -0.6758441280585992
#>     Attrib V38    0.03199485665133412
#>     Attrib V39    0.4866742500860528
#>     Attrib V4    1.499156887987944
#>     Attrib V40    0.24977706191119461
#>     Attrib V41    0.5897467213098272
#>     Attrib V42    0.025653569743815753
#>     Attrib V43    0.5429489367711916
#>     Attrib V44    1.2320271800963158
#>     Attrib V45    0.8345521738166509
#>     Attrib V46    1.175252569199729
#>     Attrib V47    0.83481892801298
#>     Attrib V48    0.7970372556958755
#>     Attrib V49    1.4550758929730538
#>     Attrib V5    0.9287099085263422
#>     Attrib V50    -0.36415543203997913
#>     Attrib V51    1.5319431304082902
#>     Attrib V52    1.4449254260825086
#>     Attrib V53    0.6755996981722762
#>     Attrib V54    -0.2194607417772775
#>     Attrib V55    -1.9439036369864484
#>     Attrib V56    -1.363750655050691
#>     Attrib V57    -0.6920072872392756
#>     Attrib V58    -0.10214476206830937
#>     Attrib V59    0.46754409013289266
#>     Attrib V6    0.1135475400871908
#>     Attrib V60    -0.019685824998541337
#>     Attrib V7    -0.4196139446062287
#>     Attrib V8    -1.0320215056766315
#>     Attrib V9    0.17455241784275088
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.3756694898291604
#>     Attrib V1    0.15343343461881373
#>     Attrib V10    0.002012629523736428
#>     Attrib V11    -0.6071948934367921
#>     Attrib V12    -0.546606281163932
#>     Attrib V13    0.028250793986759674
#>     Attrib V14    0.32488738624571517
#>     Attrib V15    0.04830305358899807
#>     Attrib V16    0.15955717486585883
#>     Attrib V17    -0.20079626114043997
#>     Attrib V18    -0.046702950004758714
#>     Attrib V19    0.4012420159475159
#>     Attrib V2    0.11555486563577459
#>     Attrib V20    -0.13757637059555808
#>     Attrib V21    -0.31214167343944316
#>     Attrib V22    -0.30649788506720016
#>     Attrib V23    -0.35427261892207307
#>     Attrib V24    -0.2999408060969797
#>     Attrib V25    0.413992542157517
#>     Attrib V26    0.17908412363650789
#>     Attrib V27    0.20589265841879809
#>     Attrib V28    0.25333074292374114
#>     Attrib V29    0.1974290079704899
#>     Attrib V3    0.0547034838092369
#>     Attrib V30    -0.7182585649826199
#>     Attrib V31    0.9132177245262076
#>     Attrib V32    -0.09877617629882716
#>     Attrib V33    -0.7575283131795595
#>     Attrib V34    -0.05050496893959078
#>     Attrib V35    0.4512317637081564
#>     Attrib V36    0.7506899359059563
#>     Attrib V37    0.9152691276749507
#>     Attrib V38    -0.3429928205220666
#>     Attrib V39    -0.32917262516030915
#>     Attrib V4    -0.2657527954521968
#>     Attrib V40    0.10693062333226998
#>     Attrib V41    0.12698395488742048
#>     Attrib V42    -0.17025626327932677
#>     Attrib V43    -0.11729532342610983
#>     Attrib V44    -0.3220297726725382
#>     Attrib V45    -0.50499314254221
#>     Attrib V46    -0.15927191303058355
#>     Attrib V47    0.28999704648563684
#>     Attrib V48    -0.002680114747829799
#>     Attrib V49    -0.7756246249919089
#>     Attrib V5    -0.058076279471540135
#>     Attrib V50    0.9715826603701094
#>     Attrib V51    -0.04766219897479992
#>     Attrib V52    -0.21295502843248817
#>     Attrib V53    -0.397029922215553
#>     Attrib V54    -0.6830620215448033
#>     Attrib V55    0.4718386178020184
#>     Attrib V56    0.28285619211014573
#>     Attrib V57    0.138981572747044
#>     Attrib V58    -0.4919600127923568
#>     Attrib V59    -0.2940742243030698
#>     Attrib V6    0.228876088885325
#>     Attrib V60    0.18591971277963518
#>     Attrib V7    -0.13497191729725083
#>     Attrib V8    0.24400022004089283
#>     Attrib V9    -0.3795352146515209
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.346150032560172
#>     Attrib V1    -0.159330286007555
#>     Attrib V10    0.3113247244885678
#>     Attrib V11    0.7061542190903692
#>     Attrib V12    0.5828892838495842
#>     Attrib V13    -0.033231786221029166
#>     Attrib V14    -0.35363840830186294
#>     Attrib V15    -0.20824699892188955
#>     Attrib V16    -0.3195929396605801
#>     Attrib V17    0.00813290012796259
#>     Attrib V18    -0.0316208638630102
#>     Attrib V19    -0.4150498847686904
#>     Attrib V2    -0.11905842515146098
#>     Attrib V20    0.01653884943942561
#>     Attrib V21    0.2658487652108767
#>     Attrib V22    0.20205839251372143
#>     Attrib V23    0.24134041487054206
#>     Attrib V24    0.19899216177868312
#>     Attrib V25    -0.37131713027784796
#>     Attrib V26    -0.019770002963337856
#>     Attrib V27    -0.016670747010224557
#>     Attrib V28    -0.0445036425511425
#>     Attrib V29    0.056914767239899626
#>     Attrib V3    -0.13513969503702022
#>     Attrib V30    0.751410953636323
#>     Attrib V31    -0.8585450744192262
#>     Attrib V32    0.05769577081929969
#>     Attrib V33    0.6072772721391595
#>     Attrib V34    0.05081989871478276
#>     Attrib V35    -0.23027076655198594
#>     Attrib V36    -0.45654048240854533
#>     Attrib V37    -0.6134208558983405
#>     Attrib V38    0.23645767901632173
#>     Attrib V39    0.19946258629932948
#>     Attrib V4    0.36731316168641437
#>     Attrib V40    -0.2566105015215232
#>     Attrib V41    -0.1892815237874772
#>     Attrib V42    3.0562586660982946E-5
#>     Attrib V43    -0.05042060929736201
#>     Attrib V44    0.3663714849334243
#>     Attrib V45    0.5826014559586147
#>     Attrib V46    0.183210967194153
#>     Attrib V47    -0.1661486579398635
#>     Attrib V48    0.27899460764545003
#>     Attrib V49    0.7588079721538692
#>     Attrib V5    -0.013831236978848258
#>     Attrib V50    -0.7431043209491441
#>     Attrib V51    0.17721841263389723
#>     Attrib V52    0.24194023299440995
#>     Attrib V53    0.15512669162096476
#>     Attrib V54    0.4625945803627809
#>     Attrib V55    -0.53715087444621
#>     Attrib V56    -0.5021741558364305
#>     Attrib V57    -0.20677317812345605
#>     Attrib V58    0.30666676987066377
#>     Attrib V59    0.16692548005187574
#>     Attrib V6    -0.14585380501685452
#>     Attrib V60    -0.21516640998307643
#>     Attrib V7    0.020051932497000737
#>     Attrib V8    -0.23915093174816274
#>     Attrib V9    0.4568083241593036
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.16409770068698418
#>     Attrib V1    0.10853464926797361
#>     Attrib V10    0.5930853854078721
#>     Attrib V11    -0.4503637751878992
#>     Attrib V12    -0.7616717503405053
#>     Attrib V13    0.04080839018959495
#>     Attrib V14    0.16394724273820813
#>     Attrib V15    -0.027403048845951634
#>     Attrib V16    0.14981757515340477
#>     Attrib V17    -0.5211420915024452
#>     Attrib V18    -0.06213646500249017
#>     Attrib V19    0.21477091536165469
#>     Attrib V2    0.0386473244835956
#>     Attrib V20    -0.5742274667851763
#>     Attrib V21    -0.6655957133271744
#>     Attrib V22    -0.746207247967205
#>     Attrib V23    -1.0980761135039703
#>     Attrib V24    -1.0357521195110733
#>     Attrib V25    0.060602120047417204
#>     Attrib V26    0.1980204381626949
#>     Attrib V27    0.5406165570346926
#>     Attrib V28    1.1017423625757727
#>     Attrib V29    1.3465282402649064
#>     Attrib V3    -0.16946727883255167
#>     Attrib V30    -0.655118548723707
#>     Attrib V31    1.2846497461960684
#>     Attrib V32    -0.020541408338478808
#>     Attrib V33    -1.3845417253098258
#>     Attrib V34    -0.01667898627869144
#>     Attrib V35    1.1113330372131756
#>     Attrib V36    1.648057897677441
#>     Attrib V37    2.046948486337781
#>     Attrib V38    0.20019391155364435
#>     Attrib V39    -0.2052592650292379
#>     Attrib V4    -0.6236630773994483
#>     Attrib V40    0.1651886798500411
#>     Attrib V41    -0.12272518106499984
#>     Attrib V42    -1.0258829246618806
#>     Attrib V43    -0.5400330780620186
#>     Attrib V44    -0.42041860862409774
#>     Attrib V45    -0.5534242038553008
#>     Attrib V46    0.2759255473348554
#>     Attrib V47    0.7731733421991694
#>     Attrib V48    0.06521945064242965
#>     Attrib V49    -1.0714389643656257
#>     Attrib V5    -0.3861026541359271
#>     Attrib V50    1.316661548783845
#>     Attrib V51    0.18471212001068296
#>     Attrib V52    -0.2768934768966054
#>     Attrib V53    -0.9321043413881381
#>     Attrib V54    -1.261309660827357
#>     Attrib V55    0.5687010797841938
#>     Attrib V56    -0.41060377270354564
#>     Attrib V57    -0.38440181961551206
#>     Attrib V58    -1.2257333043149363
#>     Attrib V59    -0.999738649309005
#>     Attrib V6    0.19592297385208196
#>     Attrib V60    -0.3827480945932921
#>     Attrib V7    -0.24658410632777875
#>     Attrib V8    -0.13686788397961805
#>     Attrib V9    -0.6441942481001692
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.09598154988358426
#>     Attrib V1    -0.04110159299491279
#>     Attrib V10    -0.03796165130915948
#>     Attrib V11    0.3071956588677238
#>     Attrib V12    0.2526183873520768
#>     Attrib V13    -0.07307785215573948
#>     Attrib V14    -0.0807468145045876
#>     Attrib V15    -0.016898617385315673
#>     Attrib V16    -0.11211591022106546
#>     Attrib V17    0.07943588503993661
#>     Attrib V18    0.007081115773613185
#>     Attrib V19    -0.18404909238989323
#>     Attrib V2    -0.0013234931496426282
#>     Attrib V20    0.22592013478226586
#>     Attrib V21    0.27837604973862284
#>     Attrib V22    0.1910384035206283
#>     Attrib V23    0.16212033941737572
#>     Attrib V24    0.17709960761700344
#>     Attrib V25    -0.18190282850605885
#>     Attrib V26    -0.20404731140903393
#>     Attrib V27    -0.1842750489415049
#>     Attrib V28    -0.18672791714255454
#>     Attrib V29    -0.09391001951599257
#>     Attrib V3    0.04607818578177512
#>     Attrib V30    0.29668890403963216
#>     Attrib V31    -0.5808557007115567
#>     Attrib V32    -0.01609222710468338
#>     Attrib V33    0.42152178226884524
#>     Attrib V34    0.06686615946123281
#>     Attrib V35    -0.12360184520929354
#>     Attrib V36    -0.3213908979763809
#>     Attrib V37    -0.3779271792267309
#>     Attrib V38    0.17858388804380554
#>     Attrib V39    0.21809742585378128
#>     Attrib V4    0.2075380728791185
#>     Attrib V40    -0.09283244515875448
#>     Attrib V41    -0.1483786164053302
#>     Attrib V42    0.025824804093508034
#>     Attrib V43    0.08442080110992291
#>     Attrib V44    0.17262733849482476
#>     Attrib V45    0.400434679501212
#>     Attrib V46    0.12753103344185188
#>     Attrib V47    -0.10598268240858465
#>     Attrib V48    0.046899355333800845
#>     Attrib V49    0.37811944902843886
#>     Attrib V5    -0.012201806154415672
#>     Attrib V50    -0.3917064694187372
#>     Attrib V51    0.012910833189493782
#>     Attrib V52    0.16042205478813865
#>     Attrib V53    0.1372994013064664
#>     Attrib V54    0.30306210638668957
#>     Attrib V55    -0.1869109354116544
#>     Attrib V56    -0.08681365379001384
#>     Attrib V57    -0.010937616070977162
#>     Attrib V58    0.2135821725952839
#>     Attrib V59    0.11529715239475063
#>     Attrib V6    -0.15057605838055765
#>     Attrib V60    -0.03242743379717877
#>     Attrib V7    0.05926745321997392
#>     Attrib V8    -0.12143847538975394
#>     Attrib V9    0.19762480058841728
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.17148344042440794
#>     Attrib V1    0.057911456304645954
#>     Attrib V10    0.08789863699174799
#>     Attrib V11    -0.0979883800933132
#>     Attrib V12    -0.049104226989801894
#>     Attrib V13    0.01518312955186471
#>     Attrib V14    0.07407769775886969
#>     Attrib V15    0.04363581547159417
#>     Attrib V16    0.12398431719635271
#>     Attrib V17    0.10136866695883126
#>     Attrib V18    0.12363621013356764
#>     Attrib V19    0.07185527193988801
#>     Attrib V2    0.07999044004791778
#>     Attrib V20    -0.1026243188426935
#>     Attrib V21    -0.0022081920955989115
#>     Attrib V22    0.0241304881519878
#>     Attrib V23    -0.03951145083001024
#>     Attrib V24    -0.0788626672092727
#>     Attrib V25    0.0863094752811287
#>     Attrib V26    -0.042234919099945575
#>     Attrib V27    -0.12290421966341174
#>     Attrib V28    -0.10069810524671698
#>     Attrib V29    -0.11372682493726159
#>     Attrib V3    0.02976315204971246
#>     Attrib V30    -0.054432998085434496
#>     Attrib V31    0.35838517101889744
#>     Attrib V32    0.09903410911151896
#>     Attrib V33    -0.09108935051905319
#>     Attrib V34    -0.026345667216966802
#>     Attrib V35    0.15862226743969363
#>     Attrib V36    0.2746563380888034
#>     Attrib V37    0.3340089043788806
#>     Attrib V38    -0.012073030820235907
#>     Attrib V39    0.08437531965582193
#>     Attrib V4    0.033695802824928636
#>     Attrib V40    0.255537415202802
#>     Attrib V41    0.2976513977001471
#>     Attrib V42    0.21630864659431956
#>     Attrib V43    0.12176120395248514
#>     Attrib V44    0.007382965072825611
#>     Attrib V45    -0.08602426613318544
#>     Attrib V46    -0.01295447121831895
#>     Attrib V47    0.09087640960613302
#>     Attrib V48    0.09020044889116643
#>     Attrib V49    -0.11278754453882453
#>     Attrib V5    0.011798617358977205
#>     Attrib V50    0.2061695657428621
#>     Attrib V51    0.0479303186135555
#>     Attrib V52    0.0050309660797964294
#>     Attrib V53    -0.03423549308206586
#>     Attrib V54    -0.1073649624043508
#>     Attrib V55    0.06302064299330928
#>     Attrib V56    0.15604519194416708
#>     Attrib V57    0.0865002892183341
#>     Attrib V58    0.015081142201351951
#>     Attrib V59    0.0705204967973313
#>     Attrib V6    0.1286046073775567
#>     Attrib V60    0.1516820205671463
#>     Attrib V7    -0.014543985060134032
#>     Attrib V8    0.13557227597679164
#>     Attrib V9    -0.002604927707299398
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.08642289158094626
#>     Attrib V1    0.3300541533918752
#>     Attrib V10    -0.48325309160023716
#>     Attrib V11    0.021045227731583318
#>     Attrib V12    -0.02014049306222672
#>     Attrib V13    -0.10866760082797898
#>     Attrib V14    0.07057026119404401
#>     Attrib V15    0.3748285813523353
#>     Attrib V16    0.12697362493758696
#>     Attrib V17    0.2991102518209848
#>     Attrib V18    0.07793909356723756
#>     Attrib V19    -0.16853503051083868
#>     Attrib V2    0.33876921284789757
#>     Attrib V20    0.5512707053353505
#>     Attrib V21    0.5037103358363147
#>     Attrib V22    0.22657619804364124
#>     Attrib V23    0.2021923080684286
#>     Attrib V24    0.1963696482091103
#>     Attrib V25    -0.6427217905510033
#>     Attrib V26    -0.7415358123265843
#>     Attrib V27    -0.830288808846314
#>     Attrib V28    -0.8841263085800175
#>     Attrib V29    -0.745071727689559
#>     Attrib V3    0.21267185372719238
#>     Attrib V30    0.17028544904873086
#>     Attrib V31    -1.007538562179582
#>     Attrib V32    -0.31537107568658995
#>     Attrib V33    0.7944601592113797
#>     Attrib V34    0.26129946363725237
#>     Attrib V35    -0.2783772246147102
#>     Attrib V36    -0.6806469529488334
#>     Attrib V37    -0.7377209283097266
#>     Attrib V38    0.23307036883906665
#>     Attrib V39    0.368102956212749
#>     Attrib V4    0.3333024325345507
#>     Attrib V40    -0.019293738975097348
#>     Attrib V41    -0.2204120156616812
#>     Attrib V42    0.3501573814529941
#>     Attrib V43    0.19409443275897797
#>     Attrib V44    0.280636545652912
#>     Attrib V45    0.4351005776083284
#>     Attrib V46    -0.026891879751589968
#>     Attrib V47    -0.5305988942233337
#>     Attrib V48    -0.19639566094644217
#>     Attrib V49    0.2847648523110591
#>     Attrib V5    -0.07779428205527573
#>     Attrib V50    -0.6750618742317941
#>     Attrib V51    -0.32176575340467184
#>     Attrib V52    0.0522571990748348
#>     Attrib V53    0.4234177482830323
#>     Attrib V54    0.8738109795534318
#>     Attrib V55    -0.0015072924448615724
#>     Attrib V56    0.22075126889130808
#>     Attrib V57    0.26285358792672864
#>     Attrib V58    0.5312103613899583
#>     Attrib V59    0.41509573355721574
#>     Attrib V6    -0.11882810060846091
#>     Attrib V60    0.2890244273093649
#>     Attrib V7    0.3630092059012907
#>     Attrib V8    0.02832357787331919
#>     Attrib V9    0.23359117471721338
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.009662411846964439
#>     Attrib V1    0.12136693478055209
#>     Attrib V10    -0.167306508357093
#>     Attrib V11    0.14857588839058763
#>     Attrib V12    0.1392941737268898
#>     Attrib V13    -0.11577425574381067
#>     Attrib V14    -0.027483172726532258
#>     Attrib V15    0.05964378671458042
#>     Attrib V16    -4.340782070420905E-4
#>     Attrib V17    0.14049347485473065
#>     Attrib V18    0.1307417455659475
#>     Attrib V19    -0.0997413518686692
#>     Attrib V2    0.0898504050873538
#>     Attrib V20    0.3220785984922781
#>     Attrib V21    0.35424530328767634
#>     Attrib V22    0.18556703886878972
#>     Attrib V23    0.2434138879385661
#>     Attrib V24    0.12932205769555785
#>     Attrib V25    -0.34634193726569534
#>     Attrib V26    -0.3193407117287432
#>     Attrib V27    -0.28485193810994647
#>     Attrib V28    -0.23618772141097688
#>     Attrib V29    -0.20665407152181078
#>     Attrib V3    0.12783789602535878
#>     Attrib V30    0.31146755421793176
#>     Attrib V31    -0.6817474205510892
#>     Attrib V32    -0.12805585130136696
#>     Attrib V33    0.4615671675973411
#>     Attrib V34    0.10785981269187381
#>     Attrib V35    -0.11315173139762331
#>     Attrib V36    -0.22184120166636148
#>     Attrib V37    -0.3479888101052667
#>     Attrib V38    0.20532561823064263
#>     Attrib V39    0.28443647843099634
#>     Attrib V4    0.24524112854709854
#>     Attrib V40    -0.0772821722893097
#>     Attrib V41    -0.21474157929581295
#>     Attrib V42    0.1452903863000129
#>     Attrib V43    0.0840785177689175
#>     Attrib V44    0.27954360829501645
#>     Attrib V45    0.3907135104374388
#>     Attrib V46    0.09228957621969372
#>     Attrib V47    -0.2091286529408517
#>     Attrib V48    -0.07205484667931582
#>     Attrib V49    0.3417425696597109
#>     Attrib V5    0.035051735543163084
#>     Attrib V50    -0.41490090261769313
#>     Attrib V51    -0.048772330528334365
#>     Attrib V52    0.14205980748772037
#>     Attrib V53    0.196202748694539
#>     Attrib V54    0.31778965370368567
#>     Attrib V55    -0.18691932055271726
#>     Attrib V56    -0.0016308959079996308
#>     Attrib V57    0.045079459913793106
#>     Attrib V58    0.31037880132016216
#>     Attrib V59    0.16972922273834715
#>     Attrib V6    -0.15297054348850753
#>     Attrib V60    0.04150474408552313
#>     Attrib V7    0.09035445418560985
#>     Attrib V8    -0.09818601293090252
#>     Attrib V9    0.190687026377033
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
#>  0.1014493 
```
