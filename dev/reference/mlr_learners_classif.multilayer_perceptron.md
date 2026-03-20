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
#>     Threshold    -0.08968192989693576
#>     Node 2    3.5123765527562574
#>     Node 3    1.6473420853444447
#>     Node 4    0.6665761346531791
#>     Node 5    -1.5405650274606342
#>     Node 6    1.061879365793848
#>     Node 7    2.4132919359252
#>     Node 8    0.4663468703693888
#>     Node 9    1.917552072807888
#>     Node 10    -2.8765177385865908
#>     Node 11    1.265419134222653
#>     Node 12    1.3405547049185205
#>     Node 13    0.14060887310666753
#>     Node 14    2.003912235708575
#>     Node 15    -2.880796559763035
#>     Node 16    0.8899684650349391
#>     Node 17    0.49644811447648984
#>     Node 18    0.10223666364458657
#>     Node 19    1.8223418831038358
#>     Node 20    1.6092638670493715
#>     Node 21    -3.778960773456821
#>     Node 22    1.8659833742352374
#>     Node 23    1.9666985052190982
#>     Node 24    -0.45544081676480375
#>     Node 25    4.672799097339498
#>     Node 26    0.06600568445308963
#>     Node 27    2.213947369694995
#>     Node 28    -2.0983646819245867
#>     Node 29    0.763938262425154
#>     Node 30    0.5622563025889876
#>     Node 31    1.18036770568663
#>     Node 32    0.447302006503651
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.13692961745147864
#>     Node 2    -3.566033776140374
#>     Node 3    -1.6342267358249665
#>     Node 4    -0.6310868321863098
#>     Node 5    1.557844656901327
#>     Node 6    -1.0404378502970706
#>     Node 7    -2.399468315449265
#>     Node 8    -0.5043235729615629
#>     Node 9    -1.907715482602684
#>     Node 10    2.8123754534976553
#>     Node 11    -1.2233861065889968
#>     Node 12    -1.411916293819932
#>     Node 13    -0.09306104861891532
#>     Node 14    -1.9466768195834656
#>     Node 15    2.8725880930046115
#>     Node 16    -0.9090643333537842
#>     Node 17    -0.47073846494671906
#>     Node 18    -0.06757537734454173
#>     Node 19    -1.8226729322387711
#>     Node 20    -1.5994169399769285
#>     Node 21    3.835176021289973
#>     Node 22    -1.9151674835535812
#>     Node 23    -2.0019010213857253
#>     Node 24    0.43902601875140435
#>     Node 25    -4.639883179661745
#>     Node 26    -0.15668181008820628
#>     Node 27    -2.2611269640995415
#>     Node 28    2.0547928527048662
#>     Node 29    -0.7994345144953351
#>     Node 30    -0.49316562689464144
#>     Node 31    -1.1236516411326198
#>     Node 32    -0.47284902865829015
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.7318244955797029
#>     Attrib V1    0.3839464028347456
#>     Attrib V10    0.5853366094214637
#>     Attrib V11    0.3758518125148271
#>     Attrib V12    0.8012869070545583
#>     Attrib V13    0.38020533922674576
#>     Attrib V14    -0.1924978038052789
#>     Attrib V15    -0.6698660213970684
#>     Attrib V16    -0.42953827362714164
#>     Attrib V17    -0.4754129122437849
#>     Attrib V18    -0.10173086277438097
#>     Attrib V19    -0.15785408801275164
#>     Attrib V2    0.3182154237528961
#>     Attrib V20    -0.2946509876335917
#>     Attrib V21    0.4502778536717189
#>     Attrib V22    1.2092285131977898
#>     Attrib V23    0.34623706075717336
#>     Attrib V24    0.023079442477939326
#>     Attrib V25    0.21585508366559553
#>     Attrib V26    0.15320257675915078
#>     Attrib V27    1.0099266331779884
#>     Attrib V28    2.2149246329316314
#>     Attrib V29    2.0231388004309974
#>     Attrib V3    -0.1365220109882856
#>     Attrib V30    0.993078029165253
#>     Attrib V31    -0.9944799431365237
#>     Attrib V32    -0.4570161517157502
#>     Attrib V33    -0.9782315128992518
#>     Attrib V34    -0.6998614992030683
#>     Attrib V35    -0.24781008996329218
#>     Attrib V36    -0.35374100927678126
#>     Attrib V37    -0.14508809579561152
#>     Attrib V38    -0.2255845636043584
#>     Attrib V39    0.6708943664849064
#>     Attrib V4    0.4956396862163197
#>     Attrib V40    0.22965411800152796
#>     Attrib V41    0.9621776602150124
#>     Attrib V42    0.5386725664399095
#>     Attrib V43    0.251357833926298
#>     Attrib V44    0.5767343879946107
#>     Attrib V45    0.42475301200054333
#>     Attrib V46    0.42166192515599465
#>     Attrib V47    0.23970188584359955
#>     Attrib V48    0.8972569712638779
#>     Attrib V49    0.6466331373267458
#>     Attrib V5    0.4877640955842167
#>     Attrib V50    -1.260585974402223
#>     Attrib V51    0.20338758346638502
#>     Attrib V52    0.7838020374585383
#>     Attrib V53    1.5002953490777429
#>     Attrib V54    0.0963917074513454
#>     Attrib V55    -1.4209914178023013
#>     Attrib V56    0.10056266599396939
#>     Attrib V57    -0.5122874743038686
#>     Attrib V58    0.21070015035545467
#>     Attrib V59    0.6804955156026001
#>     Attrib V6    0.6812931039431182
#>     Attrib V60    0.6664062186794463
#>     Attrib V7    -0.3090158833673362
#>     Attrib V8    -0.06577119448902077
#>     Attrib V9    0.5451985558783683
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.3672397366764012
#>     Attrib V1    0.12476162014461045
#>     Attrib V10    0.22779649368606827
#>     Attrib V11    0.2882749102284793
#>     Attrib V12    0.386832890206655
#>     Attrib V13    0.015185384497557419
#>     Attrib V14    -0.2916007178344773
#>     Attrib V15    -0.21323262561368614
#>     Attrib V16    0.06874465847390156
#>     Attrib V17    -0.07085237144427303
#>     Attrib V18    -0.19497769355044142
#>     Attrib V19    0.0025376087522273752
#>     Attrib V2    0.14786878149793034
#>     Attrib V20    -0.011661393638344921
#>     Attrib V21    0.18380544037131075
#>     Attrib V22    0.5606035678172236
#>     Attrib V23    -0.20004728274409855
#>     Attrib V24    -0.041294072497918215
#>     Attrib V25    0.2741593598048245
#>     Attrib V26    -0.3816585531972949
#>     Attrib V27    -0.5094103934956009
#>     Attrib V28    0.23029876343914638
#>     Attrib V29    -0.140562148585492
#>     Attrib V3    -0.2856220955556135
#>     Attrib V30    -0.027910852244125296
#>     Attrib V31    -0.6800560976259649
#>     Attrib V32    0.4854559619911769
#>     Attrib V33    0.3601744035355719
#>     Attrib V34    -0.09566054474068818
#>     Attrib V35    -0.21766250766348152
#>     Attrib V36    -0.7350573121914078
#>     Attrib V37    -1.0061031421417117
#>     Attrib V38    -0.5778349329118599
#>     Attrib V39    0.2756959417839621
#>     Attrib V4    0.1025486893465939
#>     Attrib V40    -0.13516701981171986
#>     Attrib V41    0.13391605353097852
#>     Attrib V42    0.29527212828346144
#>     Attrib V43    0.04049713988160614
#>     Attrib V44    0.15317821080626073
#>     Attrib V45    0.027781093946387017
#>     Attrib V46    -0.03572465716468989
#>     Attrib V47    -0.08757072682991236
#>     Attrib V48    0.5247738024284488
#>     Attrib V49    0.4124431739738
#>     Attrib V5    0.07880702788216577
#>     Attrib V50    -1.169728393608784
#>     Attrib V51    -0.2387864850105372
#>     Attrib V52    0.26937004101414613
#>     Attrib V53    0.5125022696423946
#>     Attrib V54    0.20379729869194063
#>     Attrib V55    -0.22769477643698827
#>     Attrib V56    0.4448189905503026
#>     Attrib V57    -0.11456697153595946
#>     Attrib V58    0.5945372355513251
#>     Attrib V59    0.35853969798444124
#>     Attrib V6    0.0020332309318637034
#>     Attrib V60    0.021084338081195454
#>     Attrib V7    -0.32504552106682955
#>     Attrib V8    0.05223103344163405
#>     Attrib V9    0.5690050044482866
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.02153933378568492
#>     Attrib V1    0.08296063454335435
#>     Attrib V10    -0.02638505067264352
#>     Attrib V11    0.039779800501535026
#>     Attrib V12    0.0835807233689187
#>     Attrib V13    -0.016193454528419065
#>     Attrib V14    -0.007914224084853596
#>     Attrib V15    0.023070138924395682
#>     Attrib V16    0.06309206658277576
#>     Attrib V17    -0.002436610004451819
#>     Attrib V18    -0.08921638779329663
#>     Attrib V19    -0.01201278730221746
#>     Attrib V2    0.06312116753767955
#>     Attrib V20    0.07199086098977185
#>     Attrib V21    0.17007352461059871
#>     Attrib V22    0.12256425988775407
#>     Attrib V23    -0.14588484602639532
#>     Attrib V24    -0.09545410653167694
#>     Attrib V25    -0.007287507269529516
#>     Attrib V26    -0.1472068683402616
#>     Attrib V27    -0.21443131377229066
#>     Attrib V28    0.04971454449976456
#>     Attrib V29    -0.03623898183426827
#>     Attrib V3    -0.016637541525574055
#>     Attrib V30    -0.02978860621677661
#>     Attrib V31    -0.2673018873608706
#>     Attrib V32    0.07277156961993407
#>     Attrib V33    0.09089235957254409
#>     Attrib V34    0.0563260268299359
#>     Attrib V35    0.04782805771875373
#>     Attrib V36    -0.12604168912198843
#>     Attrib V37    -0.23901821440847715
#>     Attrib V38    -0.11692949259996928
#>     Attrib V39    0.18606083618037733
#>     Attrib V4    0.07425300843098868
#>     Attrib V40    -0.015001739823711124
#>     Attrib V41    0.002975823458213178
#>     Attrib V42    0.14133158306468319
#>     Attrib V43    0.06149578759976449
#>     Attrib V44    0.16937124448612598
#>     Attrib V45    0.18921844331659934
#>     Attrib V46    0.035794911406750646
#>     Attrib V47    -0.025090133059087718
#>     Attrib V48    0.21320349170248926
#>     Attrib V49    0.17855443925846223
#>     Attrib V5    0.11239413996728316
#>     Attrib V50    -0.28964202435150443
#>     Attrib V51    -0.031138225471741998
#>     Attrib V52    0.08920710647002161
#>     Attrib V53    0.22515108743141402
#>     Attrib V54    0.03894348148266363
#>     Attrib V55    0.030358090119821136
#>     Attrib V56    0.2018781794615119
#>     Attrib V57    0.09730835516793022
#>     Attrib V58    0.2211612613916708
#>     Attrib V59    0.2310360067538345
#>     Attrib V6    -0.021275043872790073
#>     Attrib V60    0.09524658523669705
#>     Attrib V7    -0.10109586886002368
#>     Attrib V8    -0.02892861800412726
#>     Attrib V9    0.15718349641734222
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.3194571364905666
#>     Attrib V1    -0.04633579455548334
#>     Attrib V10    -0.14347556438829406
#>     Attrib V11    -0.34715266862696953
#>     Attrib V12    -0.3970346997076829
#>     Attrib V13    0.020132965695401905
#>     Attrib V14    0.4266770573685854
#>     Attrib V15    0.42504666514055456
#>     Attrib V16    -0.04685983521665808
#>     Attrib V17    0.19511078411638288
#>     Attrib V18    0.31829808787218344
#>     Attrib V19    0.012024686837840656
#>     Attrib V2    -0.09057713974625721
#>     Attrib V20    -0.1590896549589402
#>     Attrib V21    -0.3576228401598483
#>     Attrib V22    -0.623226446296678
#>     Attrib V23    0.2933678148392745
#>     Attrib V24    0.13512970920883888
#>     Attrib V25    -0.13802005288369606
#>     Attrib V26    0.31343986182381794
#>     Attrib V27    0.44358950703014827
#>     Attrib V28    -0.2626295321608894
#>     Attrib V29    0.17323478804930495
#>     Attrib V3    0.3879897620899768
#>     Attrib V30    0.16970736633657763
#>     Attrib V31    0.9950646021470609
#>     Attrib V32    -0.3118179579246845
#>     Attrib V33    -0.35670728355940634
#>     Attrib V34    0.02371005316409131
#>     Attrib V35    0.21943206513750313
#>     Attrib V36    0.5645590649541222
#>     Attrib V37    0.8390333168076662
#>     Attrib V38    0.39140199744275184
#>     Attrib V39    -0.47733701392790895
#>     Attrib V4    -0.19389350367998784
#>     Attrib V40    0.11769480785848288
#>     Attrib V41    -0.13815628408964664
#>     Attrib V42    -0.23671505743045093
#>     Attrib V43    -0.03713963090088545
#>     Attrib V44    -0.10008564970644135
#>     Attrib V45    -0.1483356073134151
#>     Attrib V46    -0.07662854966094748
#>     Attrib V47    0.10729117333795811
#>     Attrib V48    -0.49524236128069377
#>     Attrib V49    -0.48993957992611425
#>     Attrib V5    -0.008866676779809972
#>     Attrib V50    1.2183055630855264
#>     Attrib V51    0.1343638283821485
#>     Attrib V52    -0.2325405465186789
#>     Attrib V53    -0.3971478227312146
#>     Attrib V54    -0.15279477207125441
#>     Attrib V55    0.2292289723671599
#>     Attrib V56    -0.25043369404373983
#>     Attrib V57    -0.009162020284604774
#>     Attrib V58    -0.6175174472930384
#>     Attrib V59    -0.35272850446693205
#>     Attrib V6    0.14324466318938547
#>     Attrib V60    -0.0016839748367623566
#>     Attrib V7    0.3917796671053063
#>     Attrib V8    -0.10119048497805229
#>     Attrib V9    -0.5592677507970119
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.17226497513872746
#>     Attrib V1    0.13470472652686438
#>     Attrib V10    -0.05015733823515103
#>     Attrib V11    0.054213143496477434
#>     Attrib V12    0.11551974933897763
#>     Attrib V13    -0.1538592968799784
#>     Attrib V14    -0.19058728588143353
#>     Attrib V15    -0.061481027641891034
#>     Attrib V16    0.22612220464825972
#>     Attrib V17    0.04780607394264811
#>     Attrib V18    -0.018136738656783488
#>     Attrib V19    0.056526915161051454
#>     Attrib V2    0.07125265416290219
#>     Attrib V20    0.20303586353407208
#>     Attrib V21    0.2984376697356017
#>     Attrib V22    0.2831928742803149
#>     Attrib V23    -0.18175505697290018
#>     Attrib V24    -0.04748272232698869
#>     Attrib V25    0.11793273611420305
#>     Attrib V26    -0.29384145249541793
#>     Attrib V27    -0.4545129983910906
#>     Attrib V28    -0.185474179859998
#>     Attrib V29    -0.3691997894352011
#>     Attrib V3    -0.13950321651888545
#>     Attrib V30    -0.18104267860462253
#>     Attrib V31    -0.48659761763449644
#>     Attrib V32    0.26941126787235603
#>     Attrib V33    0.25478284318007927
#>     Attrib V34    0.04554553440659694
#>     Attrib V35    0.0011329547394543686
#>     Attrib V36    -0.31564489047425326
#>     Attrib V37    -0.5406205248697191
#>     Attrib V38    -0.26688158212185636
#>     Attrib V39    0.16601684752562676
#>     Attrib V4    0.13440114499313321
#>     Attrib V40    -0.14705509121233812
#>     Attrib V41    0.033407331289047694
#>     Attrib V42    0.25599247248768964
#>     Attrib V43    0.0983997849324494
#>     Attrib V44    0.1351219454628752
#>     Attrib V45    0.09767567348696757
#>     Attrib V46    0.05402992147428308
#>     Attrib V47    -0.06705831935544225
#>     Attrib V48    0.20847984541209655
#>     Attrib V49    0.18793290827654466
#>     Attrib V5    0.0730382015038467
#>     Attrib V50    -0.5067063450020186
#>     Attrib V51    -0.1535540621954698
#>     Attrib V52    0.0502024781258871
#>     Attrib V53    0.2642886113604449
#>     Attrib V54    0.13655530978012645
#>     Attrib V55    -0.004941457440409439
#>     Attrib V56    0.27902191299109397
#>     Attrib V57    0.0978500049316798
#>     Attrib V58    0.3909940841320963
#>     Attrib V59    0.2947486848542838
#>     Attrib V6    -0.003407469128808859
#>     Attrib V60    0.12129525351671178
#>     Attrib V7    -0.08664501149202028
#>     Attrib V8    0.07353922543091627
#>     Attrib V9    0.2979487120704456
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5525415699835227
#>     Attrib V1    0.380627668776831
#>     Attrib V10    0.3727992231635423
#>     Attrib V11    0.5288494333582531
#>     Attrib V12    0.7592184259797198
#>     Attrib V13    0.26753508749837246
#>     Attrib V14    -0.1464240930142172
#>     Attrib V15    -0.5251053497039995
#>     Attrib V16    -0.3849252807629012
#>     Attrib V17    -0.47339118760780596
#>     Attrib V18    -0.20833919911288767
#>     Attrib V19    -0.2535576465704935
#>     Attrib V2    0.3506769747799347
#>     Attrib V20    -0.3765435921658204
#>     Attrib V21    0.14491891637050977
#>     Attrib V22    0.6543540949362904
#>     Attrib V23    0.041518659148933955
#>     Attrib V24    0.004922306674020048
#>     Attrib V25    0.2781304846783483
#>     Attrib V26    0.375226993307378
#>     Attrib V27    0.9088672776508874
#>     Attrib V28    1.504604202527982
#>     Attrib V29    1.3399270659574414
#>     Attrib V3    -0.10099423981590308
#>     Attrib V30    0.6480520471328935
#>     Attrib V31    -0.6153369564839644
#>     Attrib V32    -0.34684956314938276
#>     Attrib V33    -0.6258438646338111
#>     Attrib V34    -0.4037388355343247
#>     Attrib V35    -0.09155904198492806
#>     Attrib V36    -0.15529681910436532
#>     Attrib V37    0.0692433826332612
#>     Attrib V38    -0.05551735327344584
#>     Attrib V39    0.4720669474188221
#>     Attrib V4    0.29770765171650604
#>     Attrib V40    0.1393497364480429
#>     Attrib V41    0.5174131816290817
#>     Attrib V42    0.10987115289055581
#>     Attrib V43    0.06390200854001842
#>     Attrib V44    0.32026574360632476
#>     Attrib V45    0.3132812040118231
#>     Attrib V46    0.24414498247913313
#>     Attrib V47    0.14863807703252274
#>     Attrib V48    0.7428441683015624
#>     Attrib V49    0.49785809842559486
#>     Attrib V5    0.21250727159488633
#>     Attrib V50    -0.8750207622577393
#>     Attrib V51    0.17342575901041443
#>     Attrib V52    0.6134117599017715
#>     Attrib V53    0.9970481775128895
#>     Attrib V54    0.20243811575348944
#>     Attrib V55    -0.8370722591846456
#>     Attrib V56    0.06593576712741056
#>     Attrib V57    -0.215047485064012
#>     Attrib V58    0.157999121658604
#>     Attrib V59    0.5925615631021175
#>     Attrib V6    0.44481490327799733
#>     Attrib V60    0.6296131029235249
#>     Attrib V7    -0.2629512529566405
#>     Attrib V8    -0.21757547997756993
#>     Attrib V9    0.4240196545103277
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.005557358530934721
#>     Attrib V1    0.08308326271332013
#>     Attrib V10    0.021971069257677195
#>     Attrib V11    0.06316455987756311
#>     Attrib V12    0.0632680303872387
#>     Attrib V13    -0.020691077900380914
#>     Attrib V14    -0.060126659437707765
#>     Attrib V15    -0.026962569249128043
#>     Attrib V16    0.07420739863773598
#>     Attrib V17    -0.040212611347430094
#>     Attrib V18    -0.11814558381066118
#>     Attrib V19    -0.0199172229069407
#>     Attrib V2    0.10715206697589119
#>     Attrib V20    -0.03104849727598042
#>     Attrib V21    0.033072997892089236
#>     Attrib V22    0.02389958544078854
#>     Attrib V23    -0.1319931820460957
#>     Attrib V24    -0.013095832288248052
#>     Attrib V25    0.051153155536131416
#>     Attrib V26    -0.018067163060992937
#>     Attrib V27    -0.07265333138751512
#>     Attrib V28    0.03206502167252
#>     Attrib V29    -0.03022138946040024
#>     Attrib V3    0.02190345416400135
#>     Attrib V30    0.010325356333823149
#>     Attrib V31    -0.15149095192885156
#>     Attrib V32    0.054521018891438525
#>     Attrib V33    0.056993643101306724
#>     Attrib V34    0.06649009861005857
#>     Attrib V35    0.08412227596041931
#>     Attrib V36    0.03395856135736789
#>     Attrib V37    -0.07622350387284389
#>     Attrib V38    0.0468016220134659
#>     Attrib V39    0.1452674578681428
#>     Attrib V4    0.14634689730344325
#>     Attrib V40    0.009059312111131111
#>     Attrib V41    0.03783116234128296
#>     Attrib V42    0.014771281861229571
#>     Attrib V43    0.0588201474546316
#>     Attrib V44    0.16763027779503475
#>     Attrib V45    0.16207442087554008
#>     Attrib V46    0.1314770913977156
#>     Attrib V47    0.08063275163380025
#>     Attrib V48    0.219603026216924
#>     Attrib V49    0.14803695663921404
#>     Attrib V5    0.08007656247234621
#>     Attrib V50    -0.16626304803376893
#>     Attrib V51    0.003571244519084148
#>     Attrib V52    0.10398508606334865
#>     Attrib V53    0.20646421228311132
#>     Attrib V54    0.09673211210454613
#>     Attrib V55    0.03315674327193946
#>     Attrib V56    0.1007601767668787
#>     Attrib V57    0.1531916652778702
#>     Attrib V58    0.13068484118697365
#>     Attrib V59    0.2195747978183046
#>     Attrib V6    0.00558198037896179
#>     Attrib V60    0.18719970554176169
#>     Attrib V7    -0.03965371824914236
#>     Attrib V8    -0.027553538121263845
#>     Attrib V9    0.08061668926342372
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.4137621714790885
#>     Attrib V1    0.293195614371878
#>     Attrib V10    0.43709790390973396
#>     Attrib V11    0.5851857713082086
#>     Attrib V12    0.7960515241705312
#>     Attrib V13    0.2784107442264625
#>     Attrib V14    -0.22011547947918614
#>     Attrib V15    -0.47413294807127104
#>     Attrib V16    -0.32855096584314464
#>     Attrib V17    -0.4069113748383264
#>     Attrib V18    -0.25497091462210686
#>     Attrib V19    -0.3122254763010244
#>     Attrib V2    0.2922138680514083
#>     Attrib V20    -0.43943895258332905
#>     Attrib V21    -0.010046972720563214
#>     Attrib V22    0.3977452595191253
#>     Attrib V23    -0.17914839643755656
#>     Attrib V24    -0.0012502123735265713
#>     Attrib V25    0.33449989979836586
#>     Attrib V26    0.2886179928462004
#>     Attrib V27    0.6994220322284396
#>     Attrib V28    1.149135551648887
#>     Attrib V29    0.8438896703758726
#>     Attrib V3    -0.1811015897284829
#>     Attrib V30    0.4418250892576229
#>     Attrib V31    -0.5395284546852755
#>     Attrib V32    -0.09311265247372631
#>     Attrib V33    -0.3233592661823192
#>     Attrib V34    -0.14188561526415464
#>     Attrib V35    0.05431156724503165
#>     Attrib V36    -0.05318945147059277
#>     Attrib V37    -0.03451397800457246
#>     Attrib V38    -0.034192119105934754
#>     Attrib V39    0.4659572616855597
#>     Attrib V4    0.185147896545757
#>     Attrib V40    0.01174226729794751
#>     Attrib V41    0.24447266568164883
#>     Attrib V42    -0.07586229310097538
#>     Attrib V43    0.07988375646081002
#>     Attrib V44    0.24940252851820396
#>     Attrib V45    0.3059189570005701
#>     Attrib V46    0.17105758723538667
#>     Attrib V47    0.0685689033901408
#>     Attrib V48    0.6614780611133855
#>     Attrib V49    0.5141446540493837
#>     Attrib V5    0.06253343857200515
#>     Attrib V50    -0.8608398025775188
#>     Attrib V51    0.11251665284640797
#>     Attrib V52    0.5164977669396874
#>     Attrib V53    0.8045915525180326
#>     Attrib V54    0.2117715155272397
#>     Attrib V55    -0.44707623069184654
#>     Attrib V56    0.13269511268345305
#>     Attrib V57    -0.22153744259693653
#>     Attrib V58    0.207218675564245
#>     Attrib V59    0.5203610422661291
#>     Attrib V6    0.25296691273868704
#>     Attrib V60    0.44753438417790076
#>     Attrib V7    -0.3419955144178924
#>     Attrib V8    -0.13306358136138915
#>     Attrib V9    0.42485431854014977
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.1820135633282966
#>     Attrib V1    -0.02675261692975535
#>     Attrib V10    -0.29452891464374775
#>     Attrib V11    -0.42847423338081075
#>     Attrib V12    -0.011464787897633945
#>     Attrib V13    0.44965038249163825
#>     Attrib V14    0.7525446263509126
#>     Attrib V15    0.2926282913015192
#>     Attrib V16    -0.44221007610158636
#>     Attrib V17    -0.1954403382164268
#>     Attrib V18    0.2885711672019048
#>     Attrib V19    -0.339287366652039
#>     Attrib V2    0.08078120092675922
#>     Attrib V20    -0.7198237488207045
#>     Attrib V21    -0.7706309925659308
#>     Attrib V22    -0.8832922360238896
#>     Attrib V23    0.3843963071363551
#>     Attrib V24    0.173284679298648
#>     Attrib V25    -0.25733455746175926
#>     Attrib V26    0.7317924604537807
#>     Attrib V27    1.381941416515247
#>     Attrib V28    0.3764012682783249
#>     Attrib V29    1.0230542029196588
#>     Attrib V3    0.4710090815177875
#>     Attrib V30    0.6341727020028481
#>     Attrib V31    1.441522758744782
#>     Attrib V32    -0.7489497195883509
#>     Attrib V33    -0.8810026809900923
#>     Attrib V34    -0.09825218842290183
#>     Attrib V35    0.05677592972325398
#>     Attrib V36    0.7988257616812813
#>     Attrib V37    1.6907679106983398
#>     Attrib V38    0.7961635453412725
#>     Attrib V39    -0.4552878366887931
#>     Attrib V4    -0.3529595309693624
#>     Attrib V40    0.30112288909221113
#>     Attrib V41    -9.936211929393566E-4
#>     Attrib V42    -0.9165760529263678
#>     Attrib V43    -0.4145035238206661
#>     Attrib V44    -0.44742918345482713
#>     Attrib V45    -0.285326006629403
#>     Attrib V46    -0.2558545398345678
#>     Attrib V47    -0.04524110581984012
#>     Attrib V48    -0.7125790932694251
#>     Attrib V49    -0.6481145912501375
#>     Attrib V5    -0.40406575247022203
#>     Attrib V50    1.5240532339920687
#>     Attrib V51    0.27399623049235433
#>     Attrib V52    -0.09588024041620156
#>     Attrib V53    -0.41858676676684875
#>     Attrib V54    -0.5236531081339355
#>     Attrib V55    0.09222967234991235
#>     Attrib V56    -0.7385895978589818
#>     Attrib V57    -0.14895438555931875
#>     Attrib V58    -1.026402946034026
#>     Attrib V59    -0.4849825639580089
#>     Attrib V6    0.34838921364686437
#>     Attrib V60    -0.005850985875168413
#>     Attrib V7    0.22494733518459845
#>     Attrib V8    -0.4735543166891754
#>     Attrib V9    -1.034088502185645
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.19387343325054726
#>     Attrib V1    0.015046345257190343
#>     Attrib V10    0.0786951043933819
#>     Attrib V11    0.20281901435407185
#>     Attrib V12    0.20601850747560563
#>     Attrib V13    -0.1873002623603999
#>     Attrib V14    -0.3928937066165548
#>     Attrib V15    -0.29036788141653436
#>     Attrib V16    0.10194923184382731
#>     Attrib V17    0.06923989791042122
#>     Attrib V18    -0.06572472643372751
#>     Attrib V19    0.08607526005819431
#>     Attrib V2    -0.02004646193259673
#>     Attrib V20    0.21228847826910438
#>     Attrib V21    0.280339240829752
#>     Attrib V22    0.46915114252552137
#>     Attrib V23    -0.16145313050960058
#>     Attrib V24    -0.04819909892030248
#>     Attrib V25    0.2933959884415404
#>     Attrib V26    -0.17528220547064827
#>     Attrib V27    -0.3146457695530642
#>     Attrib V28    0.18894560383797704
#>     Attrib V29    -0.17471525066149354
#>     Attrib V3    -0.33397665194148607
#>     Attrib V30    -0.07054493872582304
#>     Attrib V31    -0.7711169165375613
#>     Attrib V32    0.20769222264626075
#>     Attrib V33    0.21952450947597837
#>     Attrib V34    0.14574878972916114
#>     Attrib V35    0.24285618520543895
#>     Attrib V36    -0.052212759442904905
#>     Attrib V37    -0.4004531599714709
#>     Attrib V38    -0.0951679976869524
#>     Attrib V39    0.29388810254978837
#>     Attrib V4    0.07719643353815685
#>     Attrib V40    -0.19647993393147797
#>     Attrib V41    -0.059850063395880664
#>     Attrib V42    0.2581441088152155
#>     Attrib V43    0.18636756742495306
#>     Attrib V44    0.510038959615973
#>     Attrib V45    0.4187214175442082
#>     Attrib V46    0.17314191294312717
#>     Attrib V47    0.04235039943219066
#>     Attrib V48    0.44933782113092785
#>     Attrib V49    0.30874608687379257
#>     Attrib V5    0.11626490921741484
#>     Attrib V50    -0.8072867464195858
#>     Attrib V51    -0.10009884114738073
#>     Attrib V52    0.13607132719469
#>     Attrib V53    0.2709576691503111
#>     Attrib V54    0.159027263724082
#>     Attrib V55    -0.264209456052578
#>     Attrib V56    0.2335681355828245
#>     Attrib V57    -0.09139884066587009
#>     Attrib V58    0.3357343894077258
#>     Attrib V59    0.17566808369267736
#>     Attrib V6    -0.03194187753253135
#>     Attrib V60    0.05981959314986738
#>     Attrib V7    -0.2922061534572618
#>     Attrib V8    -0.020119832303748142
#>     Attrib V9    0.39171139296792784
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.370123561703603
#>     Attrib V1    0.049020011759387375
#>     Attrib V10    0.07004125991392306
#>     Attrib V11    0.26236815587870166
#>     Attrib V12    0.1913714996525483
#>     Attrib V13    -0.12550772970439328
#>     Attrib V14    -0.3810501502142881
#>     Attrib V15    -0.34119695736454025
#>     Attrib V16    0.05968896703296158
#>     Attrib V17    -0.0928398795327626
#>     Attrib V18    -0.2130212514395581
#>     Attrib V19    0.022637590548476555
#>     Attrib V2    0.09277396425748509
#>     Attrib V20    0.04592958225895771
#>     Attrib V21    0.24988961850847147
#>     Attrib V22    0.5570884712200572
#>     Attrib V23    -0.1711387997962435
#>     Attrib V24    -0.0836070886977413
#>     Attrib V25    0.22649654051589732
#>     Attrib V26    -0.20936763905374753
#>     Attrib V27    -0.2880955016120319
#>     Attrib V28    0.2606865718509594
#>     Attrib V29    -0.02491629849779648
#>     Attrib V3    -0.35562858329667985
#>     Attrib V30    -0.035970867564341535
#>     Attrib V31    -0.786439748747258
#>     Attrib V32    0.2808161736158038
#>     Attrib V33    0.3227169028619775
#>     Attrib V34    0.09399230077289061
#>     Attrib V35    0.07617138621269387
#>     Attrib V36    -0.2838494776490606
#>     Attrib V37    -0.5980536818372063
#>     Attrib V38    -0.2582417280520779
#>     Attrib V39    0.2765853747705318
#>     Attrib V4    0.09554396279921931
#>     Attrib V40    -0.12228351882461609
#>     Attrib V41    0.0736341673025349
#>     Attrib V42    0.28891602109956943
#>     Attrib V43    0.20757348498222314
#>     Attrib V44    0.32852712636315123
#>     Attrib V45    0.27927735739758786
#>     Attrib V46    0.17238151706679194
#>     Attrib V47    -0.0562070180888147
#>     Attrib V48    0.48529113982292044
#>     Attrib V49    0.3153715908054018
#>     Attrib V5    0.05276668950746928
#>     Attrib V50    -1.007399030944723
#>     Attrib V51    -0.21415552981141475
#>     Attrib V52    0.1935482956095253
#>     Attrib V53    0.3734140532995633
#>     Attrib V54    0.0742458603918732
#>     Attrib V55    -0.33845248378596504
#>     Attrib V56    0.28279675420831696
#>     Attrib V57    -0.06447910125752547
#>     Attrib V58    0.41767641462611593
#>     Attrib V59    0.2869004949761054
#>     Attrib V6    -0.07611713915652274
#>     Attrib V60    0.040587866328049296
#>     Attrib V7    -0.27233397998078296
#>     Attrib V8    -0.009518250968574414
#>     Attrib V9    0.442199420316022
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.211828373595007
#>     Attrib V1    0.06095354914138401
#>     Attrib V10    8.293072061668071E-4
#>     Attrib V11    -0.016009105021692102
#>     Attrib V12    -0.0019458439743486665
#>     Attrib V13    0.058475730905036445
#>     Attrib V14    0.06537849195074023
#>     Attrib V15    0.02882666198067688
#>     Attrib V16    -0.010562016410901195
#>     Attrib V17    0.016235930830973366
#>     Attrib V18    -0.018675927105374288
#>     Attrib V19    -0.06408183081462156
#>     Attrib V2    0.06866271441338884
#>     Attrib V20    -0.031656025426889306
#>     Attrib V21    -0.04591942367953388
#>     Attrib V22    -0.08339605295999783
#>     Attrib V23    -0.014867781306972359
#>     Attrib V24    -0.01359670821184338
#>     Attrib V25    0.046407338145606394
#>     Attrib V26    -0.04525256196372764
#>     Attrib V27    -0.011574308384558286
#>     Attrib V28    -0.05977034264833067
#>     Attrib V29    -0.0017890288621838079
#>     Attrib V3    0.16022103436901639
#>     Attrib V30    0.03001467759748544
#>     Attrib V31    -0.008514350315454878
#>     Attrib V32    0.0508605492751344
#>     Attrib V33    0.04455853866326046
#>     Attrib V34    0.12502291288430165
#>     Attrib V35    0.08066335159357226
#>     Attrib V36    0.0536170307994578
#>     Attrib V37    0.07672762874165337
#>     Attrib V38    0.042868522094402874
#>     Attrib V39    0.10037231382302596
#>     Attrib V4    0.09598725427612692
#>     Attrib V40    0.09966822579625043
#>     Attrib V41    0.09674133506200658
#>     Attrib V42    0.08825950041647253
#>     Attrib V43    0.021062316874860522
#>     Attrib V44    0.035671842811346194
#>     Attrib V45    0.03132991353529122
#>     Attrib V46    0.11482500758655466
#>     Attrib V47    0.12440686549091362
#>     Attrib V48    0.05221991324504265
#>     Attrib V49    0.07138285125349081
#>     Attrib V5    0.11041177173165971
#>     Attrib V50    0.04306909495854215
#>     Attrib V51    0.0476063630623706
#>     Attrib V52    0.04645289711485895
#>     Attrib V53    0.0734394499511862
#>     Attrib V54    0.010073533571432728
#>     Attrib V55    0.02832754537730603
#>     Attrib V56    0.07150236886966593
#>     Attrib V57    0.10651353966528397
#>     Attrib V58    0.044782860524742084
#>     Attrib V59    0.10177986666642827
#>     Attrib V6    0.11700843643595031
#>     Attrib V60    0.15372624056677187
#>     Attrib V7    0.11742378675354401
#>     Attrib V8    0.002533473754152818
#>     Attrib V9    0.014840494415023522
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.5156788662405292
#>     Attrib V1    0.44378419253259943
#>     Attrib V10    0.4448737018993197
#>     Attrib V11    0.6656262757128075
#>     Attrib V12    0.7907208042001479
#>     Attrib V13    0.18018025544166616
#>     Attrib V14    -0.2141785501800867
#>     Attrib V15    -0.38838933283532917
#>     Attrib V16    -0.40635768978210796
#>     Attrib V17    -0.50876934037651
#>     Attrib V18    -0.43490719757410445
#>     Attrib V19    -0.48419753335365073
#>     Attrib V2    0.38706141736465904
#>     Attrib V20    -0.5104722988449408
#>     Attrib V21    -0.05147492973399975
#>     Attrib V22    0.29843695806680687
#>     Attrib V23    -0.4198317986386217
#>     Attrib V24    -0.2805261652364419
#>     Attrib V25    0.04668274224983171
#>     Attrib V26    0.09985894466955303
#>     Attrib V27    0.5637442713489054
#>     Attrib V28    1.0646166788385398
#>     Attrib V29    0.8123265387279547
#>     Attrib V3    -0.23258171315995244
#>     Attrib V30    0.49947394064032175
#>     Attrib V31    -0.5871388175289223
#>     Attrib V32    -0.13428342656248377
#>     Attrib V33    -0.255263042577708
#>     Attrib V34    -0.14021041866346726
#>     Attrib V35    0.11673198806417907
#>     Attrib V36    -0.07927835021278652
#>     Attrib V37    0.009998507911350193
#>     Attrib V38    0.01375534510705754
#>     Attrib V39    0.46601666208019416
#>     Attrib V4    0.15235345514889098
#>     Attrib V40    -0.029194695852863203
#>     Attrib V41    0.10293210630807122
#>     Attrib V42    -0.1622772486976234
#>     Attrib V43    -0.02486312704862752
#>     Attrib V44    0.33813901747077896
#>     Attrib V45    0.37920238049238714
#>     Attrib V46    0.1647263601651667
#>     Attrib V47    -0.03367800896816376
#>     Attrib V48    0.7282220578303233
#>     Attrib V49    0.5246207041962346
#>     Attrib V5    0.0053213682790624155
#>     Attrib V50    -0.9245845802174941
#>     Attrib V51    -0.023795501372346074
#>     Attrib V52    0.38889438338129384
#>     Attrib V53    0.5814975575335792
#>     Attrib V54    0.17892649530809973
#>     Attrib V55    -0.3699525346904479
#>     Attrib V56    0.12357117893114986
#>     Attrib V57    -0.14572186045843066
#>     Attrib V58    0.24223782688361747
#>     Attrib V59    0.5398535496516669
#>     Attrib V6    0.20088570139468523
#>     Attrib V60    0.5005032173484789
#>     Attrib V7    -0.38726687621313266
#>     Attrib V8    -0.1299697978179013
#>     Attrib V9    0.4960423498061842
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.11068086052174034
#>     Attrib V1    -0.082118612949147
#>     Attrib V10    -0.3234198387037396
#>     Attrib V11    -0.5045713368162781
#>     Attrib V12    0.03589964569444032
#>     Attrib V13    0.4491536990474218
#>     Attrib V14    0.7324024426189584
#>     Attrib V15    0.38723138208684854
#>     Attrib V16    -0.4536578065323481
#>     Attrib V17    -0.20246595284202692
#>     Attrib V18    0.21620650197219224
#>     Attrib V19    -0.376852679033246
#>     Attrib V2    0.06233838084582244
#>     Attrib V20    -0.8104231021762329
#>     Attrib V21    -0.8699917800102317
#>     Attrib V22    -0.8786808331676506
#>     Attrib V23    0.2915521901270954
#>     Attrib V24    0.18533644195596646
#>     Attrib V25    -0.2778514105669712
#>     Attrib V26    0.7193340157599223
#>     Attrib V27    1.3512512839912505
#>     Attrib V28    0.3958960943141356
#>     Attrib V29    1.104066392017736
#>     Attrib V3    0.4847976501998517
#>     Attrib V30    0.603161910004101
#>     Attrib V31    1.4923841016373278
#>     Attrib V32    -0.6446993491952197
#>     Attrib V33    -0.8870252491343884
#>     Attrib V34    -0.05540340490121087
#>     Attrib V35    0.021420074693137992
#>     Attrib V36    0.7708028702772022
#>     Attrib V37    1.7205749082232225
#>     Attrib V38    0.7708527196201568
#>     Attrib V39    -0.4467294499437334
#>     Attrib V4    -0.3593015904717003
#>     Attrib V40    0.2913270249212936
#>     Attrib V41    -0.017479889288938323
#>     Attrib V42    -0.9849598875929511
#>     Attrib V43    -0.4791345685376205
#>     Attrib V44    -0.5281963802157467
#>     Attrib V45    -0.31690792452726074
#>     Attrib V46    -0.215467290634045
#>     Attrib V47    -0.051904261707138
#>     Attrib V48    -0.6823641167821377
#>     Attrib V49    -0.6460084255912099
#>     Attrib V5    -0.4157154135550655
#>     Attrib V50    1.499071507138032
#>     Attrib V51    0.2794876864548818
#>     Attrib V52    -0.1630592770312646
#>     Attrib V53    -0.4355839765153041
#>     Attrib V54    -0.5599431923078884
#>     Attrib V55    0.12141664597430893
#>     Attrib V56    -0.700791785850062
#>     Attrib V57    -0.1555395745898821
#>     Attrib V58    -1.036229521445011
#>     Attrib V59    -0.4392170715789302
#>     Attrib V6    0.34275733950952925
#>     Attrib V60    0.043667086157883825
#>     Attrib V7    0.21290299876758134
#>     Attrib V8    -0.5114048228958148
#>     Attrib V9    -1.0257350944068748
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    0.07614977621784903
#>     Attrib V1    0.09869129582789436
#>     Attrib V10    -0.04203126744427816
#>     Attrib V11    0.029687153502421768
#>     Attrib V12    0.07595555609376903
#>     Attrib V13    -0.0736826993387571
#>     Attrib V14    -0.18354947029451313
#>     Attrib V15    -0.06241353753378003
#>     Attrib V16    0.19982243026673646
#>     Attrib V17    0.0998238896864746
#>     Attrib V18    0.0019680402234787254
#>     Attrib V19    0.05798556853502898
#>     Attrib V2    0.012354795289620782
#>     Attrib V20    0.12571600227079066
#>     Attrib V21    0.19963030545254037
#>     Attrib V22    0.22952143314518275
#>     Attrib V23    -0.19876654161409918
#>     Attrib V24    -0.03105917810424179
#>     Attrib V25    0.09308716776836291
#>     Attrib V26    -0.2769578448680101
#>     Attrib V27    -0.42834215379659535
#>     Attrib V28    -0.1636976829320858
#>     Attrib V29    -0.34244029099348844
#>     Attrib V3    -0.1095635693489165
#>     Attrib V30    -0.20502073182510505
#>     Attrib V31    -0.42484451062572437
#>     Attrib V32    0.20932140333293867
#>     Attrib V33    0.1891211959752906
#>     Attrib V34    0.11104756791179918
#>     Attrib V35    0.012691403848146654
#>     Attrib V36    -0.22861014242134817
#>     Attrib V37    -0.40518781004133936
#>     Attrib V38    -0.16591071470581273
#>     Attrib V39    0.16990748692833318
#>     Attrib V4    0.09579792665906066
#>     Attrib V40    -0.12376379113990904
#>     Attrib V41    -0.008185316692482727
#>     Attrib V42    0.20254439434942878
#>     Attrib V43    0.08394132843631426
#>     Attrib V44    0.12136520153282988
#>     Attrib V45    0.1128959087464065
#>     Attrib V46    0.06008438890129825
#>     Attrib V47    -0.05189751605186372
#>     Attrib V48    0.18656048666396954
#>     Attrib V49    0.12673995841492133
#>     Attrib V5    0.062406436117607066
#>     Attrib V50    -0.4010724671594695
#>     Attrib V51    -0.0877506616807613
#>     Attrib V52    0.08007703581127913
#>     Attrib V53    0.24548590149726615
#>     Attrib V54    0.12410435938730291
#>     Attrib V55    0.05223934793909141
#>     Attrib V56    0.247561477354023
#>     Attrib V57    0.10079165713766063
#>     Attrib V58    0.33809593488715745
#>     Attrib V59    0.1894587282612331
#>     Attrib V6    -0.01952052815309071
#>     Attrib V60    0.10405220236199661
#>     Attrib V7    -0.09329232616922666
#>     Attrib V8    -0.02818756841143216
#>     Attrib V9    0.22184666586105772
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.004525215749016622
#>     Attrib V1    0.13262849423857156
#>     Attrib V10    0.04721923552789371
#>     Attrib V11    0.07186058912808915
#>     Attrib V12    0.04766924717873648
#>     Attrib V13    -0.0688488365613887
#>     Attrib V14    -0.028327722277449622
#>     Attrib V15    0.06339156559935864
#>     Attrib V16    0.05586465174606606
#>     Attrib V17    -0.022595566743191853
#>     Attrib V18    -0.08876604575876265
#>     Attrib V19    -0.01913603898554015
#>     Attrib V2    0.155026390562513
#>     Attrib V20    -0.00896325795229861
#>     Attrib V21    0.025002350352132722
#>     Attrib V22    0.08234169756618372
#>     Attrib V23    -0.1786677542771199
#>     Attrib V24    -0.06251232395668245
#>     Attrib V25    -0.023292052513910352
#>     Attrib V26    -0.10398322790170401
#>     Attrib V27    -0.10094840925007866
#>     Attrib V28    -0.01728844433682462
#>     Attrib V29    -0.09839600065675265
#>     Attrib V3    0.003991109700505855
#>     Attrib V30    0.006049283242347484
#>     Attrib V31    -0.12218190147115154
#>     Attrib V32    0.008253397156861974
#>     Attrib V33    0.06802318205728791
#>     Attrib V34    0.03039090217889906
#>     Attrib V35    0.11538753524568955
#>     Attrib V36    -0.04217319008401084
#>     Attrib V37    -0.12244718102139009
#>     Attrib V38    0.0348110886669514
#>     Attrib V39    0.1720588396364375
#>     Attrib V4    0.1053726938492309
#>     Attrib V40    -0.03089255779338553
#>     Attrib V41    0.043155489453867005
#>     Attrib V42    0.0560254955295822
#>     Attrib V43    0.11225057158655036
#>     Attrib V44    0.14837085024145164
#>     Attrib V45    0.18015502848634307
#>     Attrib V46    0.06452036735741191
#>     Attrib V47    0.00638739393826506
#>     Attrib V48    0.2199146409779827
#>     Attrib V49    0.09763199898923572
#>     Attrib V5    0.08490564728917951
#>     Attrib V50    -0.13845259574721672
#>     Attrib V51    0.01481407847435931
#>     Attrib V52    0.07810162646943584
#>     Attrib V53    0.12840489173551475
#>     Attrib V54    0.07231588435256978
#>     Attrib V55    0.11769483196058789
#>     Attrib V56    0.16622642753425698
#>     Attrib V57    0.15523814219807763
#>     Attrib V58    0.14195081548582766
#>     Attrib V59    0.1700510194778804
#>     Attrib V6    0.040212887991284106
#>     Attrib V60    0.16711431695236295
#>     Attrib V7    -0.08832858766276185
#>     Attrib V8    0.0439037039054412
#>     Attrib V9    0.09688316200724661
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.22238474223817778
#>     Attrib V1    0.058146065508452104
#>     Attrib V10    0.031097615073862737
#>     Attrib V11    -0.03874859882009599
#>     Attrib V12    -0.043639883378920524
#>     Attrib V13    -0.019010524863806298
#>     Attrib V14    0.056203101577751144
#>     Attrib V15    0.023312765862815776
#>     Attrib V16    0.01773913144156968
#>     Attrib V17    -0.03434205228595574
#>     Attrib V18    0.025009709312231256
#>     Attrib V19    -0.10614494366930678
#>     Attrib V2    0.08717603528938292
#>     Attrib V20    -0.06691141675007813
#>     Attrib V21    -0.048666410713986016
#>     Attrib V22    -0.06941197976675113
#>     Attrib V23    -0.031802424829041956
#>     Attrib V24    -0.04065242984823208
#>     Attrib V25    0.028941151251247688
#>     Attrib V26    0.019544890311158646
#>     Attrib V27    -0.032153517770382445
#>     Attrib V28    -0.05196947828512265
#>     Attrib V29    -0.027262572072839122
#>     Attrib V3    0.16646473372456247
#>     Attrib V30    -0.01158563747245508
#>     Attrib V31    0.04303320836075523
#>     Attrib V32    0.03256142145427315
#>     Attrib V33    0.05183928003855675
#>     Attrib V34    0.11791004870235654
#>     Attrib V35    0.07930594385624366
#>     Attrib V36    0.1474479309732207
#>     Attrib V37    0.07256880868755995
#>     Attrib V38    0.03127614313876823
#>     Attrib V39    0.06649409623923049
#>     Attrib V4    0.04718965441768126
#>     Attrib V40    0.0652617293398346
#>     Attrib V41    0.06114129827483945
#>     Attrib V42    0.074781989881042
#>     Attrib V43    0.05246612924965546
#>     Attrib V44    0.0628229094214125
#>     Attrib V45    0.005502697029607295
#>     Attrib V46    0.07070916549333875
#>     Attrib V47    0.13379255790875413
#>     Attrib V48    0.05861956148013734
#>     Attrib V49    0.058954794605962334
#>     Attrib V5    0.08274193532859225
#>     Attrib V50    0.05857149852155678
#>     Attrib V51    0.12261317627076485
#>     Attrib V52    0.055637083463255736
#>     Attrib V53    0.07194746976431046
#>     Attrib V54    -0.010796509560625622
#>     Attrib V55    0.04979853450527929
#>     Attrib V56    0.08400112662621129
#>     Attrib V57    0.055385915321119354
#>     Attrib V58    0.040978498125272836
#>     Attrib V59    0.06901029766491815
#>     Attrib V6    0.07017797366969851
#>     Attrib V60    0.14552179055682865
#>     Attrib V7    0.11995319140957007
#>     Attrib V8    0.06690653494260343
#>     Attrib V9    0.014550461703073614
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.5122249468268563
#>     Attrib V1    0.216084068479162
#>     Attrib V10    0.2517216195133432
#>     Attrib V11    0.42753211064869917
#>     Attrib V12    0.7064197421374268
#>     Attrib V13    0.1895891400405342
#>     Attrib V14    -0.1381671043679996
#>     Attrib V15    -0.3453076756628179
#>     Attrib V16    -0.28323653986504094
#>     Attrib V17    -0.3566540138815831
#>     Attrib V18    -0.23637980465735295
#>     Attrib V19    -0.20574290550825336
#>     Attrib V2    0.26037029386339144
#>     Attrib V20    -0.3883022202558271
#>     Attrib V21    -0.03372419360172306
#>     Attrib V22    0.43541821518073215
#>     Attrib V23    -0.197946772286132
#>     Attrib V24    -0.013846222626000954
#>     Attrib V25    0.2930730227510714
#>     Attrib V26    0.14681956395460902
#>     Attrib V27    0.546809104127592
#>     Attrib V28    1.1092635160056399
#>     Attrib V29    0.8228817700765872
#>     Attrib V3    -0.24963837100852204
#>     Attrib V30    0.40201444507156925
#>     Attrib V31    -0.5675750326945314
#>     Attrib V32    -0.08650301306457071
#>     Attrib V33    -0.21298131559666814
#>     Attrib V34    -0.14638000591612468
#>     Attrib V35    0.07705040303807628
#>     Attrib V36    -0.1494341995649786
#>     Attrib V37    -0.21891558838666964
#>     Attrib V38    -0.1338156369984487
#>     Attrib V39    0.3894128513724497
#>     Attrib V4    0.22692489362755472
#>     Attrib V40    0.02433401129122024
#>     Attrib V41    0.22230824420718412
#>     Attrib V42    0.08182197512023222
#>     Attrib V43    0.06516287271950177
#>     Attrib V44    0.30036288621746454
#>     Attrib V45    0.36426766861480764
#>     Attrib V46    0.17254264586595977
#>     Attrib V47    -0.02845382386021858
#>     Attrib V48    0.6281913709723432
#>     Attrib V49    0.5449744948309082
#>     Attrib V5    0.1373697056074136
#>     Attrib V50    -0.9332127377603449
#>     Attrib V51    -0.05184815765543067
#>     Attrib V52    0.48855552800709
#>     Attrib V53    0.8410608525005597
#>     Attrib V54    0.2422917604846856
#>     Attrib V55    -0.37410377653640675
#>     Attrib V56    0.09022385820106353
#>     Attrib V57    -0.16204504454476215
#>     Attrib V58    0.3484383448469275
#>     Attrib V59    0.49969101913250796
#>     Attrib V6    0.24933306298512942
#>     Attrib V60    0.3646630068577115
#>     Attrib V7    -0.2991634092296114
#>     Attrib V8    -0.10921955447555039
#>     Attrib V9    0.375985996657098
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.40649381868381457
#>     Attrib V1    0.2406397608845099
#>     Attrib V10    0.20770031266478117
#>     Attrib V11    0.25600158051291044
#>     Attrib V12    0.39408712138479146
#>     Attrib V13    0.040125158579135164
#>     Attrib V14    -0.16114441921930056
#>     Attrib V15    -0.30563259019283534
#>     Attrib V16    -0.17256066904486086
#>     Attrib V17    -0.23247716778108565
#>     Attrib V18    -0.1363111633485287
#>     Attrib V19    -0.013009956374333153
#>     Attrib V2    0.14818582530938854
#>     Attrib V20    -0.02024817903380731
#>     Attrib V21    0.28111478933353984
#>     Attrib V22    0.5941152586124228
#>     Attrib V23    -0.01580243475199045
#>     Attrib V24    0.033760520696446916
#>     Attrib V25    0.3273664509580433
#>     Attrib V26    0.22995136857633772
#>     Attrib V27    0.44560952973619566
#>     Attrib V28    0.9519969839884737
#>     Attrib V29    0.8028533964253518
#>     Attrib V3    -0.2659629300594906
#>     Attrib V30    0.4377799569513155
#>     Attrib V31    -0.5778481982283182
#>     Attrib V32    -0.17319299218479203
#>     Attrib V33    -0.3136963128696076
#>     Attrib V34    -0.18207212724838395
#>     Attrib V35    0.1356428958082463
#>     Attrib V36    0.046062798265163005
#>     Attrib V37    -0.06814228707483076
#>     Attrib V38    -0.013776367154140443
#>     Attrib V39    0.41336113518580686
#>     Attrib V4    0.1892219913072981
#>     Attrib V40    -0.03117620134656814
#>     Attrib V41    0.20769442845820213
#>     Attrib V42    0.13052380878648423
#>     Attrib V43    0.19901561026705183
#>     Attrib V44    0.5277723897502168
#>     Attrib V45    0.40507219921005244
#>     Attrib V46    0.20616845363911027
#>     Attrib V47    0.07970486712987948
#>     Attrib V48    0.6120812901936691
#>     Attrib V49    0.4467475840769949
#>     Attrib V5    0.259649167867393
#>     Attrib V50    -0.7414941196330376
#>     Attrib V51    0.05152190578180106
#>     Attrib V52    0.44739681196369385
#>     Attrib V53    0.7534093252368291
#>     Attrib V54    0.18862382733204633
#>     Attrib V55    -0.45266249590332824
#>     Attrib V56    0.2172430876887223
#>     Attrib V57    -0.20841562834376356
#>     Attrib V58    0.2688605674679314
#>     Attrib V59    0.4411920272712051
#>     Attrib V6    0.23774704104430802
#>     Attrib V60    0.29956746808993956
#>     Attrib V7    -0.20827506460132292
#>     Attrib V8    -0.18594450104778532
#>     Attrib V9    0.32821196377967066
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.04810752801591057
#>     Attrib V1    -0.02699201538952936
#>     Attrib V10    -0.3749437306835128
#>     Attrib V11    -0.5648542909142452
#>     Attrib V12    0.16562227243978142
#>     Attrib V13    0.6052426763551751
#>     Attrib V14    0.9819169746871448
#>     Attrib V15    0.4415572824972722
#>     Attrib V16    -0.7087381275587604
#>     Attrib V17    -0.35322251129987375
#>     Attrib V18    0.2675267205819322
#>     Attrib V19    -0.6034745168157318
#>     Attrib V2    0.07872439465067013
#>     Attrib V20    -1.1052184518160515
#>     Attrib V21    -0.9349492167172833
#>     Attrib V22    -1.050433273950515
#>     Attrib V23    0.2756246056187774
#>     Attrib V24    0.1972233886703386
#>     Attrib V25    -0.2999614212628081
#>     Attrib V26    0.8974842081144172
#>     Attrib V27    1.7367943725703199
#>     Attrib V28    0.4702420937482977
#>     Attrib V29    1.450195710644078
#>     Attrib V3    0.465359173663346
#>     Attrib V30    0.9377306852409426
#>     Attrib V31    1.958862521433539
#>     Attrib V32    -0.8743553110733443
#>     Attrib V33    -1.2243856546101644
#>     Attrib V34    -0.20823060406646568
#>     Attrib V35    -0.1359555596684883
#>     Attrib V36    0.8737580560793119
#>     Attrib V37    2.0862708343054086
#>     Attrib V38    0.93757843813662
#>     Attrib V39    -0.435260765086656
#>     Attrib V4    -0.3466367630795508
#>     Attrib V40    0.4085384615422108
#>     Attrib V41    0.029112590709932495
#>     Attrib V42    -1.296257237870237
#>     Attrib V43    -0.5752958849134568
#>     Attrib V44    -0.6962130783378909
#>     Attrib V45    -0.5929955303662002
#>     Attrib V46    -0.43592647551014585
#>     Attrib V47    -0.14602699939376557
#>     Attrib V48    -0.7645231497240197
#>     Attrib V49    -0.7841150624406008
#>     Attrib V5    -0.4440059068814027
#>     Attrib V50    1.7503686918746268
#>     Attrib V51    0.3684303720646187
#>     Attrib V52    -0.1148806694309654
#>     Attrib V53    -0.43702558451019935
#>     Attrib V54    -0.6581774821833494
#>     Attrib V55    -0.042641290778229486
#>     Attrib V56    -1.0034264627319434
#>     Attrib V57    -0.12154020606965947
#>     Attrib V58    -1.3530030734768985
#>     Attrib V59    -0.4357142178250587
#>     Attrib V6    0.49721922289320575
#>     Attrib V60    0.26224772464272583
#>     Attrib V7    0.3525308646005523
#>     Attrib V8    -0.764547312067259
#>     Attrib V9    -1.2280881013135674
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.18535031920041797
#>     Attrib V1    0.20921244401345634
#>     Attrib V10    0.1368507883913579
#>     Attrib V11    0.18402311377668992
#>     Attrib V12    0.116993011543509
#>     Attrib V13    -0.19647644791507285
#>     Attrib V14    -0.3103681776646767
#>     Attrib V15    -0.1150083131982092
#>     Attrib V16    0.3668506223984576
#>     Attrib V17    0.10366611314262472
#>     Attrib V18    -0.19353062138697716
#>     Attrib V19    0.05013004849542065
#>     Attrib V2    0.06687237985521682
#>     Attrib V20    0.2993665425587436
#>     Attrib V21    0.4121033066046504
#>     Attrib V22    0.4507732618899413
#>     Attrib V23    -0.4342250386861506
#>     Attrib V24    -0.15681748822795114
#>     Attrib V25    0.06520655281869847
#>     Attrib V26    -0.634180228109829
#>     Attrib V27    -1.0241573354859959
#>     Attrib V28    -0.4764911358572481
#>     Attrib V29    -0.7659284336049003
#>     Attrib V3    -0.3009324645038256
#>     Attrib V30    -0.4333720545529378
#>     Attrib V31    -0.7322605909688163
#>     Attrib V32    0.5597474450426932
#>     Attrib V33    0.575765969663229
#>     Attrib V34    0.13155449830525168
#>     Attrib V35    -0.053587809206360186
#>     Attrib V36    -0.5891921559395124
#>     Attrib V37    -1.0649451822975218
#>     Attrib V38    -0.5052640139636189
#>     Attrib V39    0.19045837660805212
#>     Attrib V4    0.1656288380634765
#>     Attrib V40    -0.244751155076879
#>     Attrib V41    -0.12060546082823143
#>     Attrib V42    0.39348771992497183
#>     Attrib V43    0.23606972179249724
#>     Attrib V44    0.2558839093023665
#>     Attrib V45    0.08379398139720061
#>     Attrib V46    0.0923787716344216
#>     Attrib V47    -0.1277307455140554
#>     Attrib V48    0.4984915666424266
#>     Attrib V49    0.3834981379428999
#>     Attrib V5    0.18421659778900382
#>     Attrib V50    -1.0123936908961937
#>     Attrib V51    -0.2985994167065195
#>     Attrib V52    0.015103292747412827
#>     Attrib V53    0.1948087201191852
#>     Attrib V54    0.29351743522181406
#>     Attrib V55    0.008094608238347546
#>     Attrib V56    0.5464201767806355
#>     Attrib V57    0.09586595631162263
#>     Attrib V58    0.6789541796866769
#>     Attrib V59    0.3952273851825813
#>     Attrib V6    -0.10609127773887556
#>     Attrib V60    0.1611316903624447
#>     Attrib V7    -0.12842358567482703
#>     Attrib V8    0.038652250805068546
#>     Attrib V9    0.6173983754225907
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.13365380214207148
#>     Attrib V1    0.10576747756975288
#>     Attrib V10    0.15489803121099616
#>     Attrib V11    0.27767810201134174
#>     Attrib V12    0.0756025324014332
#>     Attrib V13    -0.29525030721359274
#>     Attrib V14    -0.4639429644503773
#>     Attrib V15    -0.1703930746395509
#>     Attrib V16    0.349481300922759
#>     Attrib V17    0.21839017375279132
#>     Attrib V18    -0.11362864310608267
#>     Attrib V19    0.30407401398558326
#>     Attrib V2    -0.07823873975970076
#>     Attrib V20    0.5186055000145136
#>     Attrib V21    0.5621436212870842
#>     Attrib V22    0.6914721634204263
#>     Attrib V23    -0.2054599420928719
#>     Attrib V24    -0.1463141598422765
#>     Attrib V25    0.17998721035878862
#>     Attrib V26    -0.5266523518333481
#>     Attrib V27    -1.0854699012149007
#>     Attrib V28    -0.424677868754739
#>     Attrib V29    -0.8477618778989549
#>     Attrib V3    -0.33530997174464233
#>     Attrib V30    -0.47861603091442767
#>     Attrib V31    -1.0344352875090619
#>     Attrib V32    0.468268702206359
#>     Attrib V33    0.5385498738319139
#>     Attrib V34    0.15001567647421815
#>     Attrib V35    0.1853994433371474
#>     Attrib V36    -0.35094458443501864
#>     Attrib V37    -0.9365798941732074
#>     Attrib V38    -0.4344545534190594
#>     Attrib V39    0.2808879305620572
#>     Attrib V4    0.2696715389552776
#>     Attrib V40    -0.38584228357903383
#>     Attrib V41    -0.13750385407778606
#>     Attrib V42    0.5196538478924903
#>     Attrib V43    0.353238981859868
#>     Attrib V44    0.447869537801737
#>     Attrib V45    0.33388308337548556
#>     Attrib V46    0.21161903731375836
#>     Attrib V47    0.08381494014666475
#>     Attrib V48    0.5129283255805426
#>     Attrib V49    0.4248678317590048
#>     Attrib V5    0.27230813184437447
#>     Attrib V50    -1.0377995343322086
#>     Attrib V51    -0.22763259962561952
#>     Attrib V52    0.155775060319707
#>     Attrib V53    0.3135768778649427
#>     Attrib V54    0.36423591751801304
#>     Attrib V55    -0.061732970798619065
#>     Attrib V56    0.5672031306932305
#>     Attrib V57    0.02038180912282296
#>     Attrib V58    0.6737235874210639
#>     Attrib V59    0.41813931491384715
#>     Attrib V6    -0.18654903399640088
#>     Attrib V60    0.08531307132392832
#>     Attrib V7    -0.19334891153846068
#>     Attrib V8    0.13583244639500852
#>     Attrib V9    0.6387164265770154
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.1861371399989956
#>     Attrib V1    -0.010804715239733703
#>     Attrib V10    -0.058071690869367004
#>     Attrib V11    -0.20128113059793296
#>     Attrib V12    -0.20053178737996225
#>     Attrib V13    -0.057850276969167565
#>     Attrib V14    0.11700363810332945
#>     Attrib V15    0.14557079476118243
#>     Attrib V16    -0.04527778718654305
#>     Attrib V17    0.07779718883624408
#>     Attrib V18    0.06354351013355908
#>     Attrib V19    -0.127306113438373
#>     Attrib V2    -0.04738426951643741
#>     Attrib V20    -0.19296961449546546
#>     Attrib V21    -0.20203626178207557
#>     Attrib V22    -0.21182796659852096
#>     Attrib V23    0.14344273446425027
#>     Attrib V24    0.017415229735627556
#>     Attrib V25    -0.034522735371216924
#>     Attrib V26    0.06657723727364662
#>     Attrib V27    -0.026373542159488627
#>     Attrib V28    -0.05904719059424952
#>     Attrib V29    0.08971495083394262
#>     Attrib V3    0.14286338479068272
#>     Attrib V30    0.15779787523568764
#>     Attrib V31    0.4172898398481257
#>     Attrib V32    0.10882123748996683
#>     Attrib V33    0.022605813006348292
#>     Attrib V34    0.06602306284417923
#>     Attrib V35    0.09397946253329945
#>     Attrib V36    0.24681709152714204
#>     Attrib V37    0.2362342612400687
#>     Attrib V38    0.09991176757334828
#>     Attrib V39    -0.17083186662434205
#>     Attrib V4    0.024212860577982373
#>     Attrib V40    0.1434162572927233
#>     Attrib V41    0.14038602033111214
#>     Attrib V42    0.034566291972185824
#>     Attrib V43    0.1089895823645157
#>     Attrib V44    -0.03588985809743958
#>     Attrib V45    -0.11228130645431643
#>     Attrib V46    0.0235765481929126
#>     Attrib V47    0.11475976350172738
#>     Attrib V48    -0.15172036031310757
#>     Attrib V49    -0.17794460841124182
#>     Attrib V5    -0.009939479458254425
#>     Attrib V50    0.4215227339979265
#>     Attrib V51    0.08346042171364103
#>     Attrib V52    -0.006331536968529334
#>     Attrib V53    -0.13941248751580332
#>     Attrib V54    -0.11202870968782008
#>     Attrib V55    -0.050147524510779126
#>     Attrib V56    -0.035059941522199975
#>     Attrib V57    0.11010122446498777
#>     Attrib V58    -0.13847165765468308
#>     Attrib V59    -0.129500101913917
#>     Attrib V6    0.14279417179294784
#>     Attrib V60    -0.014826230823691052
#>     Attrib V7    0.2195262314127246
#>     Attrib V8    0.06771662693595994
#>     Attrib V9    -0.04580505383227315
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    1.0093486012047606
#>     Attrib V1    0.3505530018807424
#>     Attrib V10    0.6462336399139681
#>     Attrib V11    0.4322332673989033
#>     Attrib V12    1.0616408951164193
#>     Attrib V13    0.5516002015788264
#>     Attrib V14    -0.14935579493320533
#>     Attrib V15    -0.8244702757365459
#>     Attrib V16    -0.5235716833734322
#>     Attrib V17    -0.5512196854630852
#>     Attrib V18    -0.05907401388443215
#>     Attrib V19    -0.13951476267971363
#>     Attrib V2    0.3520000573067196
#>     Attrib V20    -0.4203590784525266
#>     Attrib V21    0.4751167443519295
#>     Attrib V22    1.4515948121218207
#>     Attrib V23    0.6289704334156969
#>     Attrib V24    0.16286830561286783
#>     Attrib V25    0.1441302113400456
#>     Attrib V26    0.21032183064900578
#>     Attrib V27    1.3140898486142856
#>     Attrib V28    2.54192939059391
#>     Attrib V29    2.427644184107605
#>     Attrib V3    -0.10058521336439162
#>     Attrib V30    1.100965656408217
#>     Attrib V31    -1.0826130420205191
#>     Attrib V32    -0.6708369801099571
#>     Attrib V33    -1.2537516740819525
#>     Attrib V34    -0.7864267107899988
#>     Attrib V35    -0.4054969494176297
#>     Attrib V36    -0.4941706093728532
#>     Attrib V37    -0.09063107441246071
#>     Attrib V38    -0.27379795188124656
#>     Attrib V39    0.8858374566754833
#>     Attrib V4    0.6106060820071852
#>     Attrib V40    0.45232029220875825
#>     Attrib V41    1.3752902785302212
#>     Attrib V42    0.6266664040131278
#>     Attrib V43    0.2481960469267512
#>     Attrib V44    0.7004842163728305
#>     Attrib V45    0.5095816106707235
#>     Attrib V46    0.5461759775058302
#>     Attrib V47    0.2388827136605732
#>     Attrib V48    0.987907589480836
#>     Attrib V49    0.8245438477002766
#>     Attrib V5    0.5210077026412021
#>     Attrib V50    -1.46841076057202
#>     Attrib V51    0.2791675098094227
#>     Attrib V52    0.9120730361219068
#>     Attrib V53    1.8301345856384261
#>     Attrib V54    0.09256532875730751
#>     Attrib V55    -1.781874483429841
#>     Attrib V56    0.030796702501347712
#>     Attrib V57    -0.48810445011822245
#>     Attrib V58    0.2476723461637052
#>     Attrib V59    0.8012605120850457
#>     Attrib V6    0.9998382184376625
#>     Attrib V60    0.8335463925977076
#>     Attrib V7    -0.24535390906126792
#>     Attrib V8    -0.14298594811963714
#>     Attrib V9    0.5723628590729555
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.21265185121760732
#>     Attrib V1    0.07202580932923643
#>     Attrib V10    0.009223042673079818
#>     Attrib V11    -0.05880541248419971
#>     Attrib V12    0.01292145612754968
#>     Attrib V13    -0.02190327232977615
#>     Attrib V14    0.10043779460720789
#>     Attrib V15    0.03638741415638928
#>     Attrib V16    0.013785974606889052
#>     Attrib V17    0.02624597296474684
#>     Attrib V18    -0.056878307323032375
#>     Attrib V19    -0.010172419175730604
#>     Attrib V2    0.09894810451631751
#>     Attrib V20    -0.067348702500669
#>     Attrib V21    -0.05811471196078052
#>     Attrib V22    -0.06370055095016444
#>     Attrib V23    -0.04712438336554664
#>     Attrib V24    -0.04128373758962649
#>     Attrib V25    0.016171599870778822
#>     Attrib V26    -0.026948980557449032
#>     Attrib V27    -0.021261196925443166
#>     Attrib V28    -0.004565835428613116
#>     Attrib V29    0.011761109795332207
#>     Attrib V3    0.08441392013978528
#>     Attrib V30    0.02504942093671547
#>     Attrib V31    0.021729986934321575
#>     Attrib V32    0.01169724726799524
#>     Attrib V33    0.07463827881659582
#>     Attrib V34    0.06972651998891458
#>     Attrib V35    0.14242651849918464
#>     Attrib V36    0.12232977984234014
#>     Attrib V37    0.12404742623115773
#>     Attrib V38    0.02978393291751547
#>     Attrib V39    0.05688182171024727
#>     Attrib V4    0.11481507575306112
#>     Attrib V40    0.07079778781663075
#>     Attrib V41    0.08285255449200997
#>     Attrib V42    0.09168243406537828
#>     Attrib V43    0.06579963672778173
#>     Attrib V44    0.039256686788101056
#>     Attrib V45    0.05122326397361526
#>     Attrib V46    0.0661122357872332
#>     Attrib V47    0.07153948755131576
#>     Attrib V48    0.10203733938445972
#>     Attrib V49    0.02819711660413696
#>     Attrib V5    0.043679734753890156
#>     Attrib V50    0.10526872976473323
#>     Attrib V51    0.04727091764578595
#>     Attrib V52    0.049065780420996935
#>     Attrib V53    0.05983490778308451
#>     Attrib V54    0.020093142537525657
#>     Attrib V55    0.03045084543107167
#>     Attrib V56    0.08931737237015906
#>     Attrib V57    0.13468441930702377
#>     Attrib V58    0.055485390733759014
#>     Attrib V59    0.07675839571198632
#>     Attrib V6    0.13303274770384443
#>     Attrib V60    0.16853622585601669
#>     Attrib V7    0.05820247487239527
#>     Attrib V8    0.05046943454507336
#>     Attrib V9    -0.003263681210012857
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.594028673832154
#>     Attrib V1    0.5002492679483831
#>     Attrib V10    0.4926221873987421
#>     Attrib V11    0.6015694820139801
#>     Attrib V12    0.8000271098041412
#>     Attrib V13    0.27906178287465566
#>     Attrib V14    -0.2065262811928522
#>     Attrib V15    -0.44775573345066233
#>     Attrib V16    -0.41270868847454945
#>     Attrib V17    -0.5369684465494025
#>     Attrib V18    -0.3182974920730086
#>     Attrib V19    -0.4206990464869741
#>     Attrib V2    0.39386043556651823
#>     Attrib V20    -0.506548662479852
#>     Attrib V21    0.09989809232402312
#>     Attrib V22    0.5175445015592621
#>     Attrib V23    -0.29835612757973173
#>     Attrib V24    -0.15884024408551348
#>     Attrib V25    0.11279545171017616
#>     Attrib V26    0.2539763320395657
#>     Attrib V27    0.7398565850652551
#>     Attrib V28    1.2878512273721696
#>     Attrib V29    1.109319014087054
#>     Attrib V3    -0.19524169494806437
#>     Attrib V30    0.6021390804952442
#>     Attrib V31    -0.6550354324414367
#>     Attrib V32    -0.26166382441546165
#>     Attrib V33    -0.4859239493640345
#>     Attrib V34    -0.2531447923195215
#>     Attrib V35    0.03216407783074793
#>     Attrib V36    -0.05951692862243426
#>     Attrib V37    0.07060270827889849
#>     Attrib V38    0.04325799901088822
#>     Attrib V39    0.5066014248443164
#>     Attrib V4    0.21559470408160497
#>     Attrib V40    -0.03595604340241895
#>     Attrib V41    0.2565790575166676
#>     Attrib V42    -0.08240904896465676
#>     Attrib V43    -0.030664982262748657
#>     Attrib V44    0.35483578598156534
#>     Attrib V45    0.46796487737008635
#>     Attrib V46    0.14582887912233525
#>     Attrib V47    -0.007540624527011664
#>     Attrib V48    0.7641314149442795
#>     Attrib V49    0.4737575509251905
#>     Attrib V5    0.09548661537336588
#>     Attrib V50    -0.8896941897516192
#>     Attrib V51    0.09846569471710974
#>     Attrib V52    0.4764688626500433
#>     Attrib V53    0.792118697258888
#>     Attrib V54    0.16158394178514526
#>     Attrib V55    -0.598842754090557
#>     Attrib V56    0.05238438349778398
#>     Attrib V57    -0.20235620304348828
#>     Attrib V58    0.18430221717466347
#>     Attrib V59    0.6007737414337686
#>     Attrib V6    0.3536181117061347
#>     Attrib V60    0.5626148860901496
#>     Attrib V7    -0.3653336136364738
#>     Attrib V8    -0.148301166957056
#>     Attrib V9    0.5061499891353385
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.18011453612110417
#>     Attrib V1    -0.10176957320213352
#>     Attrib V10    -0.37527529993374664
#>     Attrib V11    -0.5706400593769901
#>     Attrib V12    -0.33395869860937344
#>     Attrib V13    0.13953414315063192
#>     Attrib V14    0.4921920014805778
#>     Attrib V15    0.3626332528758179
#>     Attrib V16    -0.16988906289161343
#>     Attrib V17    -0.06403881310452604
#>     Attrib V18    0.28023540059371177
#>     Attrib V19    -0.09945643059759335
#>     Attrib V2    -0.11839789464666894
#>     Attrib V20    -0.3044861242675252
#>     Attrib V21    -0.5261950672831576
#>     Attrib V22    -0.8119577336946587
#>     Attrib V23    0.25380313937290394
#>     Attrib V24    0.22419339460903667
#>     Attrib V25    -0.3028337487839723
#>     Attrib V26    0.38082514559830727
#>     Attrib V27    0.8695018160436275
#>     Attrib V28    -0.04531116170000738
#>     Attrib V29    0.3598327511651317
#>     Attrib V3    0.4274617866005399
#>     Attrib V30    0.07356362218789791
#>     Attrib V31    0.9650780202151474
#>     Attrib V32    -0.5460486188873013
#>     Attrib V33    -0.6257609058310114
#>     Attrib V34    0.17932275849265708
#>     Attrib V35    0.4048062386514388
#>     Attrib V36    0.8937247971364368
#>     Attrib V37    1.3701759114635224
#>     Attrib V38    0.7619910563837721
#>     Attrib V39    -0.3950084078451109
#>     Attrib V4    -0.21719251646582072
#>     Attrib V40    0.1826813330609761
#>     Attrib V41    -0.03250044656567455
#>     Attrib V42    -0.5358108444044697
#>     Attrib V43    -0.12798303849759116
#>     Attrib V44    -0.15057687949702378
#>     Attrib V45    -0.053566438102684716
#>     Attrib V46    -0.019559369254570427
#>     Attrib V47    -0.016011705834833113
#>     Attrib V48    -0.6636886201152299
#>     Attrib V49    -0.6053040821837046
#>     Attrib V5    -0.2587322543963786
#>     Attrib V50    1.3968008308073911
#>     Attrib V51    0.08718119240291752
#>     Attrib V52    -0.13633343497545244
#>     Attrib V53    -0.4738754213465512
#>     Attrib V54    -0.2638206127194052
#>     Attrib V55    0.3350385512259551
#>     Attrib V56    -0.503730331219395
#>     Attrib V57    0.029939665232941233
#>     Attrib V58    -0.6994123737455612
#>     Attrib V59    -0.2977181795770846
#>     Attrib V6    0.2355394656740359
#>     Attrib V60    0.06992625388540635
#>     Attrib V7    0.30888005720434125
#>     Attrib V8    -0.2734181386248269
#>     Attrib V9    -0.8094752839480197
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.1235631493977705
#>     Attrib V1    0.07727731297419005
#>     Attrib V10    -0.06604971317436457
#>     Attrib V11    0.14052227201668882
#>     Attrib V12    0.16640894021819028
#>     Attrib V13    -0.06660399414415767
#>     Attrib V14    -0.07394517139999814
#>     Attrib V15    -0.055185617813616146
#>     Attrib V16    0.08297592637145446
#>     Attrib V17    0.014554118826420067
#>     Attrib V18    -0.055401596808250506
#>     Attrib V19    -0.027874425434231766
#>     Attrib V2    0.057339038330436104
#>     Attrib V20    0.12232921483560927
#>     Attrib V21    0.1835853437549368
#>     Attrib V22    0.22215837362286628
#>     Attrib V23    -0.2027830839849365
#>     Attrib V24    -0.015308263531858218
#>     Attrib V25    0.13941149640172518
#>     Attrib V26    -0.18684691150804428
#>     Attrib V27    -0.26038439617754483
#>     Attrib V28    -0.06943198210347634
#>     Attrib V29    -0.1681494492158609
#>     Attrib V3    -0.09505888725688472
#>     Attrib V30    -0.1513043002394155
#>     Attrib V31    -0.3511926917746218
#>     Attrib V32    0.14975761301489307
#>     Attrib V33    0.12990345146179377
#>     Attrib V34    0.07977444903285426
#>     Attrib V35    0.10194836683652961
#>     Attrib V36    -0.11488059357674131
#>     Attrib V37    -0.2527812842419468
#>     Attrib V38    -0.09698426441284522
#>     Attrib V39    0.20861296793081416
#>     Attrib V4    0.04523415153198645
#>     Attrib V40    -0.07061732289396001
#>     Attrib V41    -0.009995104362518681
#>     Attrib V42    0.08044548257192329
#>     Attrib V43    0.13725888839581665
#>     Attrib V44    0.14588839289162578
#>     Attrib V45    0.1946550983191805
#>     Attrib V46    0.061681809567526495
#>     Attrib V47    -0.00913045195173992
#>     Attrib V48    0.21797732330788083
#>     Attrib V49    0.1507191132656541
#>     Attrib V5    0.02381242169002223
#>     Attrib V50    -0.3920205142684864
#>     Attrib V51    -0.08109383373625319
#>     Attrib V52    0.12715454025434664
#>     Attrib V53    0.19898677450619653
#>     Attrib V54    0.10873118993026508
#>     Attrib V55    0.08946469173089741
#>     Attrib V56    0.23710524244304634
#>     Attrib V57    0.06780980068223526
#>     Attrib V58    0.23905111971157578
#>     Attrib V59    0.2126111598988075
#>     Attrib V6    -0.01037902211219765
#>     Attrib V60    0.1155258294938295
#>     Attrib V7    -0.14203891272155086
#>     Attrib V8    -0.015326307292603376
#>     Attrib V9    0.1600239981184552
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.01505006465258947
#>     Attrib V1    0.15545511821219643
#>     Attrib V10    0.040545694975188416
#>     Attrib V11    0.05873619373458708
#>     Attrib V12    0.1371002151949235
#>     Attrib V13    0.015563641466270602
#>     Attrib V14    -0.018349823941732915
#>     Attrib V15    0.002735122281819509
#>     Attrib V16    0.03870875067519633
#>     Attrib V17    0.0035721054467144275
#>     Attrib V18    -0.08797872967965963
#>     Attrib V19    -0.06942654712029056
#>     Attrib V2    0.12398972918258844
#>     Attrib V20    -0.013476057149529824
#>     Attrib V21    0.0759280723584324
#>     Attrib V22    0.0504701377230704
#>     Attrib V23    -0.14203549154209202
#>     Attrib V24    -0.08002850362602816
#>     Attrib V25    0.0677665720513867
#>     Attrib V26    -0.038938686651978346
#>     Attrib V27    -0.10951741430463104
#>     Attrib V28    0.01810087234956261
#>     Attrib V29    -0.1112659304972495
#>     Attrib V3    -0.01688891488399231
#>     Attrib V30    -0.007659659850053227
#>     Attrib V31    -0.1152826391414561
#>     Attrib V32    0.033737577237458544
#>     Attrib V33    0.010165900944908315
#>     Attrib V34    0.058088362683244396
#>     Attrib V35    0.11986370037535742
#>     Attrib V36    -0.02938344780115557
#>     Attrib V37    -0.07251646378655785
#>     Attrib V38    -0.03991320739843185
#>     Attrib V39    0.2134118756866896
#>     Attrib V4    0.12976065016723526
#>     Attrib V40    0.020275905521768833
#>     Attrib V41    0.03306045183235936
#>     Attrib V42    0.1114298302512259
#>     Attrib V43    0.05913990814110795
#>     Attrib V44    0.066521864922386
#>     Attrib V45    0.12245718321413152
#>     Attrib V46    0.0710577202005409
#>     Attrib V47    0.006326040912085972
#>     Attrib V48    0.20023670051562614
#>     Attrib V49    0.10618935280618995
#>     Attrib V5    0.037650915764261064
#>     Attrib V50    -0.18205539613993488
#>     Attrib V51    -0.02744455566520694
#>     Attrib V52    0.11310217023881522
#>     Attrib V53    0.19036987226176455
#>     Attrib V54    0.09282294827960662
#>     Attrib V55    0.04479377970667982
#>     Attrib V56    0.1990040164701155
#>     Attrib V57    0.0702380867140487
#>     Attrib V58    0.20442847773385633
#>     Attrib V59    0.24773411477745594
#>     Attrib V6    0.034043663021126346
#>     Attrib V60    0.18225388462859754
#>     Attrib V7    -0.10633066433017532
#>     Attrib V8    -0.030605934866174123
#>     Attrib V9    0.06735877018529565
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.06764701243907184
#>     Attrib V1    0.12857976987284836
#>     Attrib V10    -0.030403022957640042
#>     Attrib V11    0.11835296977165294
#>     Attrib V12    0.04111469779756104
#>     Attrib V13    -0.12257300333808158
#>     Attrib V14    -0.17741052092735946
#>     Attrib V15    -0.022748277402609016
#>     Attrib V16    0.23362552631688832
#>     Attrib V17    0.1364441374724634
#>     Attrib V18    -0.03381173041162698
#>     Attrib V19    0.07157243584899435
#>     Attrib V2    0.11310767417076528
#>     Attrib V20    0.2647008623773357
#>     Attrib V21    0.2439692929205415
#>     Attrib V22    0.31684599427507376
#>     Attrib V23    -0.19907270993528423
#>     Attrib V24    -0.06792461529855844
#>     Attrib V25    0.03246920497236087
#>     Attrib V26    -0.34853764894428063
#>     Attrib V27    -0.6607773871944983
#>     Attrib V28    -0.3959793890776193
#>     Attrib V29    -0.6039631074532356
#>     Attrib V3    -0.19895780957680043
#>     Attrib V30    -0.3305452669169589
#>     Attrib V31    -0.5033197540497264
#>     Attrib V32    0.2669060326687981
#>     Attrib V33    0.336420319956915
#>     Attrib V34    0.1559562500106794
#>     Attrib V35    0.10664645688493136
#>     Attrib V36    -0.23091283877722912
#>     Attrib V37    -0.49641396152668527
#>     Attrib V38    -0.1680332279779331
#>     Attrib V39    0.15180649194139223
#>     Attrib V4    0.14283439251221242
#>     Attrib V40    -0.17058350749357745
#>     Attrib V41    -0.104634124568977
#>     Attrib V42    0.20440720403068804
#>     Attrib V43    0.16557428051213902
#>     Attrib V44    0.250257799315056
#>     Attrib V45    0.12297899535692745
#>     Attrib V46    0.0673029567559488
#>     Attrib V47    -0.04331829330545264
#>     Attrib V48    0.2839476916776275
#>     Attrib V49    0.21411637484603663
#>     Attrib V5    0.06554111455000837
#>     Attrib V50    -0.5681639347532921
#>     Attrib V51    -0.16577540872866495
#>     Attrib V52    0.06429651787103159
#>     Attrib V53    0.19566133096410748
#>     Attrib V54    0.245916670271342
#>     Attrib V55    0.10343942657128509
#>     Attrib V56    0.28096930098773676
#>     Attrib V57    0.10554278121586284
#>     Attrib V58    0.35954994084001013
#>     Attrib V59    0.2647800306102924
#>     Attrib V6    -0.09036616684224875
#>     Attrib V60    0.11029229435908944
#>     Attrib V7    -0.09535042234265319
#>     Attrib V8    0.034288524360860384
#>     Attrib V9    0.3101845423780936
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.04629165115896732
#>     Attrib V1    0.14041730882479428
#>     Attrib V10    -0.054502312696869476
#>     Attrib V11    0.03452533551646337
#>     Attrib V12    0.058750389781750324
#>     Attrib V13    -0.057174057654727814
#>     Attrib V14    0.04979939602760307
#>     Attrib V15    0.039377418434363896
#>     Attrib V16    0.09348001033952888
#>     Attrib V17    -0.030392405752111752
#>     Attrib V18    -0.00606346724954874
#>     Attrib V19    -0.06009121088581237
#>     Attrib V2    0.07834885396656023
#>     Attrib V20    0.048763258034944676
#>     Attrib V21    0.08796901846535492
#>     Attrib V22    0.04748333622332822
#>     Attrib V23    -0.09440680291876165
#>     Attrib V24    -0.07007377977352183
#>     Attrib V25    -0.026911246122933725
#>     Attrib V26    -0.09874038697524186
#>     Attrib V27    -0.12093442997623717
#>     Attrib V28    0.0024606960990944493
#>     Attrib V29    -0.07010983096923155
#>     Attrib V3    0.04677574883080692
#>     Attrib V30    -0.005728515442299875
#>     Attrib V31    -0.2066168112041591
#>     Attrib V32    0.014892169734028484
#>     Attrib V33    0.05931194626411858
#>     Attrib V34    0.08059876310141442
#>     Attrib V35    0.09846551306107036
#>     Attrib V36    0.0377255338119727
#>     Attrib V37    -0.08741159328511157
#>     Attrib V38    -0.0499907518619262
#>     Attrib V39    0.14271956835077604
#>     Attrib V4    0.0788867782776367
#>     Attrib V40    -0.019104423164351035
#>     Attrib V41    -0.0032942886197597954
#>     Attrib V42    0.11612798700330294
#>     Attrib V43    0.04547916436884466
#>     Attrib V44    0.13553378060306792
#>     Attrib V45    0.16212174085111639
#>     Attrib V46    0.09695047001235214
#>     Attrib V47    0.04014184951299518
#>     Attrib V48    0.11838375988996082
#>     Attrib V49    0.14598771192804463
#>     Attrib V5    0.09076966410508773
#>     Attrib V50    -0.1506003315792028
#>     Attrib V51    0.010216129648525323
#>     Attrib V52    0.12034556769957362
#>     Attrib V53    0.1538369905431197
#>     Attrib V54    0.04738586805846336
#>     Attrib V55    0.05069284876513467
#>     Attrib V56    0.1338526640124296
#>     Attrib V57    0.09489032366524265
#>     Attrib V58    0.2159458218151009
#>     Attrib V59    0.16956374306521793
#>     Attrib V6    0.06112443058674516
#>     Attrib V60    0.13210383281186538
#>     Attrib V7    -0.02875041125162185
#>     Attrib V8    0.039147114503534954
#>     Attrib V9    0.09172652762648369
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
#>  0.1304348 
```
