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
#>     Threshold    -0.7444018321091728
#>     Node 2    2.0417963358929567
#>     Node 3    1.848751030501867
#>     Node 4    1.3975059363252917
#>     Node 5    -4.3149995200973965
#>     Node 6    0.39161217378918967
#>     Node 7    3.0307916397662105
#>     Node 8    0.9605960156264692
#>     Node 9    2.763476948363546
#>     Node 10    0.21610456485954857
#>     Node 11    2.15960865372609
#>     Node 12    1.809110935140801
#>     Node 13    -0.4046813515307259
#>     Node 14    2.087589394498169
#>     Node 15    -1.0835624528884473
#>     Node 16    0.2512277705035854
#>     Node 17    0.4780102702012554
#>     Node 18    -2.351092810833808
#>     Node 19    2.4905090659223577
#>     Node 20    1.4656343695801588
#>     Node 21    -1.6558906165038112
#>     Node 22    1.8712743236987286
#>     Node 23    1.721507546805181
#>     Node 24    -0.07854274542412092
#>     Node 25    3.491209929128222
#>     Node 26    0.09523308195310733
#>     Node 27    2.4092902941050074
#>     Node 28    -1.8238259566855914
#>     Node 29    1.2319703692830768
#>     Node 30    -0.42135102369441807
#>     Node 31    1.0346229397033337
#>     Node 32    0.7325419954750977
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.7620509977785335
#>     Node 2    -2.0860571473210556
#>     Node 3    -1.8243023027538379
#>     Node 4    -1.3507226269826644
#>     Node 5    4.313013750988687
#>     Node 6    -0.3662282061164992
#>     Node 7    -3.024815594622261
#>     Node 8    -0.9865989867001589
#>     Node 9    -2.751949535739105
#>     Node 10    -0.28484027644945686
#>     Node 11    -2.1170580835573336
#>     Node 12    -1.8808445445394033
#>     Node 13    0.44445035575760217
#>     Node 14    -2.012823856486995
#>     Node 15    1.054055053723453
#>     Node 16    -0.26543941943971755
#>     Node 17    -0.44026073417722006
#>     Node 18    2.3768119561255463
#>     Node 19    -2.488207371618236
#>     Node 20    -1.4482160978866612
#>     Node 21    1.697725960533841
#>     Node 22    -1.9146422338969191
#>     Node 23    -1.759715331918449
#>     Node 24    0.05814972005157316
#>     Node 25    -3.4793052064514494
#>     Node 26    -0.1804427699139161
#>     Node 27    -2.4438196100843297
#>     Node 28    1.753335027537704
#>     Node 29    -1.2551615008119452
#>     Node 30    0.48759928113110207
#>     Node 31    -0.9701129269556409
#>     Node 32    -0.7452900885533507
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.26561048296819106
#>     Attrib V1    -0.3132373915041989
#>     Attrib V10    0.0291700431876569
#>     Attrib V11    0.6493369218663385
#>     Attrib V12    0.530480596072723
#>     Attrib V13    -0.6770688171040888
#>     Attrib V14    -1.0457938014101937
#>     Attrib V15    -0.7101791605952031
#>     Attrib V16    -0.07708144454209732
#>     Attrib V17    0.34379902660346134
#>     Attrib V18    0.31627887783690817
#>     Attrib V19    0.4111235694370325
#>     Attrib V2    -0.10450009767479648
#>     Attrib V20    0.42200234868247066
#>     Attrib V21    0.5887555105890707
#>     Attrib V22    0.31286267711295107
#>     Attrib V23    0.3012316408991476
#>     Attrib V24    0.345818604455742
#>     Attrib V25    -0.22782569632982883
#>     Attrib V26    -0.4401490482575268
#>     Attrib V27    -0.10212149365704487
#>     Attrib V28    0.05636677580527112
#>     Attrib V29    -0.7241735887759465
#>     Attrib V3    0.004265745775152763
#>     Attrib V30    0.8484821259741431
#>     Attrib V31    -1.2518132353129348
#>     Attrib V32    -0.4298176473675749
#>     Attrib V33    0.491581941666879
#>     Attrib V34    0.053181367735315614
#>     Attrib V35    0.2508991876339095
#>     Attrib V36    -0.16088908696726478
#>     Attrib V37    0.11681617670562464
#>     Attrib V38    0.9600101124136127
#>     Attrib V39    0.30418132381031604
#>     Attrib V4    0.5014582088339944
#>     Attrib V40    -0.5884157288305355
#>     Attrib V41    -0.07710004753678044
#>     Attrib V42    0.061380112606718294
#>     Attrib V43    0.26748818146544073
#>     Attrib V44    0.8614814903047279
#>     Attrib V45    0.6304279912654728
#>     Attrib V46    0.032504361264326966
#>     Attrib V47    -0.0842268466458046
#>     Attrib V48    0.45503516835478924
#>     Attrib V49    0.7594107486373626
#>     Attrib V5    0.17321506937108916
#>     Attrib V50    -0.6229847004063083
#>     Attrib V51    -0.04441279643311056
#>     Attrib V52    0.22158145779794605
#>     Attrib V53    0.18849338567021778
#>     Attrib V54    0.5968219830139944
#>     Attrib V55    -0.6429347764092364
#>     Attrib V56    0.24388290185379868
#>     Attrib V57    0.004631706567113626
#>     Attrib V58    -0.03600628376431982
#>     Attrib V59    0.16658569970224402
#>     Attrib V6    -0.33543913563037653
#>     Attrib V60    -0.4411331821260127
#>     Attrib V7    -0.1779860659257577
#>     Attrib V8    -0.25607121009881517
#>     Attrib V9    0.8799528565147255
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.2570803419183742
#>     Attrib V1    0.14454136159351372
#>     Attrib V10    -0.29203551421662743
#>     Attrib V11    0.18980860376526765
#>     Attrib V12    0.16967695605072314
#>     Attrib V13    -0.49432453457051134
#>     Attrib V14    -0.1398994620076848
#>     Attrib V15    0.16609431085493565
#>     Attrib V16    0.297929515494698
#>     Attrib V17    0.1305715092499935
#>     Attrib V18    -0.07220250307494724
#>     Attrib V19    0.15378888334273505
#>     Attrib V2    0.23489609240265016
#>     Attrib V20    0.42453181062841094
#>     Attrib V21    0.5128039658849582
#>     Attrib V22    -0.04922165971055071
#>     Attrib V23    -0.3281091670813523
#>     Attrib V24    -0.3675498310497463
#>     Attrib V25    -1.0039644551798723
#>     Attrib V26    -1.1070734113472156
#>     Attrib V27    -0.5662066682449639
#>     Attrib V28    -0.28173351581610817
#>     Attrib V29    -0.44253383162044935
#>     Attrib V3    0.1956543593075894
#>     Attrib V30    0.7124172664871414
#>     Attrib V31    -0.6648118490062019
#>     Attrib V32    -0.07420041451380982
#>     Attrib V33    0.543664760874596
#>     Attrib V34    -0.24058942409241565
#>     Attrib V35    -0.5388081873447644
#>     Attrib V36    -0.8018893889768195
#>     Attrib V37    -0.47515123140135923
#>     Attrib V38    0.31514523429634983
#>     Attrib V39    0.10618262713532005
#>     Attrib V4    0.6040444914323341
#>     Attrib V40    -0.3922381167437627
#>     Attrib V41    0.013397501989493028
#>     Attrib V42    0.34982621103619965
#>     Attrib V43    0.19176705472648167
#>     Attrib V44    0.3030449860648645
#>     Attrib V45    0.008713362206025489
#>     Attrib V46    -0.3352962540082016
#>     Attrib V47    -0.38596072450231594
#>     Attrib V48    0.01643744306899435
#>     Attrib V49    0.3710737023984939
#>     Attrib V5    0.11650837189820966
#>     Attrib V50    -0.41888293701527557
#>     Attrib V51    -0.2637449588265075
#>     Attrib V52    0.057238446176917195
#>     Attrib V53    0.20753550326982334
#>     Attrib V54    0.6190555851346523
#>     Attrib V55    -0.18291676664060025
#>     Attrib V56    0.40108757373275283
#>     Attrib V57    0.32536062522512926
#>     Attrib V58    0.3597831339436375
#>     Attrib V59    0.541158689104825
#>     Attrib V6    -0.27197562632766736
#>     Attrib V60    -0.08072278289092304
#>     Attrib V7    -0.1880843975737328
#>     Attrib V8    0.18660594810972653
#>     Attrib V9    0.3815025810796411
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.1770017839794732
#>     Attrib V1    0.05477576567484742
#>     Attrib V10    -0.20255313548893208
#>     Attrib V11    0.22741018567363122
#>     Attrib V12    0.20894878458605876
#>     Attrib V13    -0.37096331157039975
#>     Attrib V14    -0.12492277212242843
#>     Attrib V15    0.07309036525905986
#>     Attrib V16    0.1796573762633093
#>     Attrib V17    0.0925464096647096
#>     Attrib V18    -0.024697621934494193
#>     Attrib V19    0.08696011769803924
#>     Attrib V2    0.12932953052879323
#>     Attrib V20    0.26623662793325903
#>     Attrib V21    0.42190865164184954
#>     Attrib V22    -0.08819253427615124
#>     Attrib V23    -0.2318659113751086
#>     Attrib V24    -0.213320357427654
#>     Attrib V25    -0.7306135193859482
#>     Attrib V26    -0.8100496828893154
#>     Attrib V27    -0.405032326524506
#>     Attrib V28    -0.10044844166123154
#>     Attrib V29    -0.2162894584942644
#>     Attrib V3    0.15507607306050034
#>     Attrib V30    0.5900254923042436
#>     Attrib V31    -0.5442241702184313
#>     Attrib V32    -0.0770902220657507
#>     Attrib V33    0.444496704995667
#>     Attrib V34    -0.15849452516675103
#>     Attrib V35    -0.39926806833653034
#>     Attrib V36    -0.6911087232412366
#>     Attrib V37    -0.42349545050681037
#>     Attrib V38    0.19417199257860546
#>     Attrib V39    0.08070913830138297
#>     Attrib V4    0.44679062070234427
#>     Attrib V40    -0.3151594917879591
#>     Attrib V41    0.01101847722318453
#>     Attrib V42    0.2574502753525801
#>     Attrib V43    0.09755084476921243
#>     Attrib V44    0.22360891284728948
#>     Attrib V45    0.07688039569900805
#>     Attrib V46    -0.27328149056894047
#>     Attrib V47    -0.3202861619746588
#>     Attrib V48    0.09940092025590687
#>     Attrib V49    0.36876668201905327
#>     Attrib V5    0.14820530015655384
#>     Attrib V50    -0.34788529550085445
#>     Attrib V51    -0.1253316517154146
#>     Attrib V52    0.07449178348938516
#>     Attrib V53    0.30423976113552464
#>     Attrib V54    0.4127127804117059
#>     Attrib V55    -0.21272155632875328
#>     Attrib V56    0.2873740485150327
#>     Attrib V57    0.2819707543840741
#>     Attrib V58    0.25284447446752445
#>     Attrib V59    0.3824115057126985
#>     Attrib V6    -0.18588202219326028
#>     Attrib V60    -0.07828271252538554
#>     Attrib V7    -0.1189557050214782
#>     Attrib V8    0.06682433561952586
#>     Attrib V9    0.44776652517242216
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.24583994912981327
#>     Attrib V1    0.3502453193157785
#>     Attrib V10    -0.8704041413663302
#>     Attrib V11    -1.3527131059795052
#>     Attrib V12    -2.164993381450302
#>     Attrib V13    -0.23481789226509836
#>     Attrib V14    0.9581383650215636
#>     Attrib V15    1.3329880803089769
#>     Attrib V16    1.0457915722668336
#>     Attrib V17    0.5608026915173175
#>     Attrib V18    -0.09981869675379627
#>     Attrib V19    0.0634405015201321
#>     Attrib V2    -0.29113572953018607
#>     Attrib V20    1.032848808027291
#>     Attrib V21    0.013443601776543248
#>     Attrib V22    -1.0062408992335992
#>     Attrib V23    -1.1103789911891808
#>     Attrib V24    -1.3920366023320627
#>     Attrib V25    -1.309869897693775
#>     Attrib V26    -0.7688008479682178
#>     Attrib V27    -0.9872668755084454
#>     Attrib V28    -1.3764798916177317
#>     Attrib V29    -0.11739798632677244
#>     Attrib V3    -0.03148848196686443
#>     Attrib V30    -0.8542144019449361
#>     Attrib V31    1.0854533902553773
#>     Attrib V32    0.25652328295787297
#>     Attrib V33    0.041743141704341055
#>     Attrib V34    -0.09092652618696473
#>     Attrib V35    -0.5953190871603972
#>     Attrib V36    0.7732490511395396
#>     Attrib V37    0.6666701072683853
#>     Attrib V38    0.5388950920118666
#>     Attrib V39    -0.7923171754025395
#>     Attrib V4    -0.38573797142073235
#>     Attrib V40    -0.34150582534060847
#>     Attrib V41    -1.1486863603263187
#>     Attrib V42    0.5891646386194385
#>     Attrib V43    0.5085738544293971
#>     Attrib V44    -0.04983302733154844
#>     Attrib V45    -0.47616230075698696
#>     Attrib V46    -0.6371072650095487
#>     Attrib V47    -1.1208671274187096
#>     Attrib V48    -1.4169857563009862
#>     Attrib V49    -1.684934623475746
#>     Attrib V5    -0.4979250766939146
#>     Attrib V50    0.35479443665072136
#>     Attrib V51    -0.8547191587419787
#>     Attrib V52    -1.0867010905107017
#>     Attrib V53    -1.2671408656270318
#>     Attrib V54    -0.47979963726463326
#>     Attrib V55    1.4003879198912244
#>     Attrib V56    0.295134349376414
#>     Attrib V57    0.33837538491500596
#>     Attrib V58    0.32774498815540226
#>     Attrib V59    0.606266771875101
#>     Attrib V6    -0.5640567689090453
#>     Attrib V60    0.30820482753073125
#>     Attrib V7    0.37376484527917675
#>     Attrib V8    1.2039697876031465
#>     Attrib V9    -1.8413482557770917
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.029483867727067542
#>     Attrib V1    0.0953864421247966
#>     Attrib V10    -0.008356952040370695
#>     Attrib V11    0.11996003143711022
#>     Attrib V12    0.17088747582903155
#>     Attrib V13    -0.048875612739541496
#>     Attrib V14    0.005324961388668335
#>     Attrib V15    0.016199397690664023
#>     Attrib V16    0.06890909521317018
#>     Attrib V17    -0.02509198787217789
#>     Attrib V18    0.00996291420604257
#>     Attrib V19    -0.020799677383726813
#>     Attrib V2    0.10436343137848887
#>     Attrib V20    -0.0019673154049975354
#>     Attrib V21    0.008669407660815035
#>     Attrib V22    -0.11871779439423645
#>     Attrib V23    -0.08342123838173053
#>     Attrib V24    0.0069571880263877795
#>     Attrib V25    -0.06118648428778317
#>     Attrib V26    -0.11899508087883837
#>     Attrib V27    0.013232054018475704
#>     Attrib V28    -0.010192574709394742
#>     Attrib V29    -0.09630202714031708
#>     Attrib V3    0.11410439965703574
#>     Attrib V30    0.0895590753309212
#>     Attrib V31    -0.14824049803143063
#>     Attrib V32    0.013786211417457887
#>     Attrib V33    0.10990794652503721
#>     Attrib V34    -0.02718567568058006
#>     Attrib V35    -0.018837561959341068
#>     Attrib V36    -0.2085851942200599
#>     Attrib V37    -0.11651701645421646
#>     Attrib V38    -0.01098071689679242
#>     Attrib V39    0.016475930231380876
#>     Attrib V4    0.20066570656594154
#>     Attrib V40    -0.07569986569693926
#>     Attrib V41    0.07119667235802542
#>     Attrib V42    0.04422088751000836
#>     Attrib V43    0.011733702940751276
#>     Attrib V44    0.04560706875731714
#>     Attrib V45    0.04612939043023149
#>     Attrib V46    0.009897491168119218
#>     Attrib V47    -0.02804281092370012
#>     Attrib V48    0.015238329476767837
#>     Attrib V49    0.06528080760257716
#>     Attrib V5    0.09043627906809963
#>     Attrib V50    -0.04713588608466498
#>     Attrib V51    0.02801618897347341
#>     Attrib V52    0.0959682385509529
#>     Attrib V53    0.22023410460429252
#>     Attrib V54    0.11748558410223732
#>     Attrib V55    7.526310177970445E-4
#>     Attrib V56    0.1039586003829512
#>     Attrib V57    0.17622290404549074
#>     Attrib V58    0.155126062587619
#>     Attrib V59    0.15251081287846158
#>     Attrib V6    0.03283580713195338
#>     Attrib V60    0.057135668472604983
#>     Attrib V7    -0.004338482945900379
#>     Attrib V8    0.0931098326855737
#>     Attrib V9    0.23957262706720012
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4961722203060662
#>     Attrib V1    0.14674998742245546
#>     Attrib V10    0.23377405296092554
#>     Attrib V11    0.8516296804706153
#>     Attrib V12    1.544485080673347
#>     Attrib V13    0.5550452656660388
#>     Attrib V14    0.06157866820647639
#>     Attrib V15    -0.4572935919149874
#>     Attrib V16    -0.7298462882109804
#>     Attrib V17    -0.5739013984601388
#>     Attrib V18    -0.1668062530572205
#>     Attrib V19    -0.136209589654874
#>     Attrib V2    0.5077821650795816
#>     Attrib V20    -0.5960627437872255
#>     Attrib V21    0.046401422879567014
#>     Attrib V22    0.42240271031846915
#>     Attrib V23    0.7760729229501646
#>     Attrib V24    0.691366660611624
#>     Attrib V25    0.2715382120877114
#>     Attrib V26    0.40650402450374884
#>     Attrib V27    1.077290860095967
#>     Attrib V28    1.81346578948502
#>     Attrib V29    1.4044317848830135
#>     Attrib V3    0.22290973169831496
#>     Attrib V30    0.685473505760671
#>     Attrib V31    -1.0748527564376358
#>     Attrib V32    -0.5184722796429944
#>     Attrib V33    -0.260415515030436
#>     Attrib V34    -0.11751432078751924
#>     Attrib V35    0.481418503628297
#>     Attrib V36    -0.6399469654277188
#>     Attrib V37    -0.02398194028057626
#>     Attrib V38    -0.4142257160847769
#>     Attrib V39    0.6014440430898053
#>     Attrib V4    0.17002237764046396
#>     Attrib V40    0.5056958392140117
#>     Attrib V41    1.2452193033883105
#>     Attrib V42    -0.2800777457942296
#>     Attrib V43    -0.3135148144908385
#>     Attrib V44    -0.1259185514037398
#>     Attrib V45    0.3402128056146884
#>     Attrib V46    0.44275559657840063
#>     Attrib V47    0.5966948575378591
#>     Attrib V48    0.7524194059121021
#>     Attrib V49    0.9546291662066277
#>     Attrib V5    0.5782902615152723
#>     Attrib V50    -0.19376612696280174
#>     Attrib V51    0.3884325616414296
#>     Attrib V52    0.9394304039018204
#>     Attrib V53    1.3356249946864982
#>     Attrib V54    0.11565777882256344
#>     Attrib V55    -0.9121558825000932
#>     Attrib V56    -0.5031879017357992
#>     Attrib V57    0.14477154357113686
#>     Attrib V58    0.010189731387820184
#>     Attrib V59    -0.2695923613058775
#>     Attrib V6    0.8843391574769204
#>     Attrib V60    -0.02546182877248379
#>     Attrib V7    -0.36792326021833766
#>     Attrib V8    -0.8727065929683274
#>     Attrib V9    1.082634112415664
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.16692975445538683
#>     Attrib V1    -0.028031691573099062
#>     Attrib V10    -0.08810508600504871
#>     Attrib V11    0.24436661563820222
#>     Attrib V12    0.23642702683961705
#>     Attrib V13    -0.2560971557333628
#>     Attrib V14    -0.2813182976376306
#>     Attrib V15    -0.08815425413550146
#>     Attrib V16    0.15884234613266812
#>     Attrib V17    0.11064175157571739
#>     Attrib V18    0.02972772676939222
#>     Attrib V19    0.1262395138727936
#>     Attrib V2    0.05955198634394189
#>     Attrib V20    0.11793268360470673
#>     Attrib V21    0.24022448055642937
#>     Attrib V22    -0.014768526733263666
#>     Attrib V23    -0.04267399206651037
#>     Attrib V24    0.06900294205241303
#>     Attrib V25    -0.31565665806949716
#>     Attrib V26    -0.43756874623443837
#>     Attrib V27    -0.20557503135586616
#>     Attrib V28    -0.09060058398108525
#>     Attrib V29    -0.3294653506211649
#>     Attrib V3    0.06321248314842479
#>     Attrib V30    0.3812965904308763
#>     Attrib V31    -0.4672408614637238
#>     Attrib V32    -0.053252959866768125
#>     Attrib V33    0.3517656187186619
#>     Attrib V34    -0.07759414595903494
#>     Attrib V35    -0.209215505932917
#>     Attrib V36    -0.4811267565698694
#>     Attrib V37    -0.3422302008341581
#>     Attrib V38    0.18020682302550592
#>     Attrib V39    0.011351945913035996
#>     Attrib V4    0.357446335822231
#>     Attrib V40    -0.2611552874075023
#>     Attrib V41    0.040500452540792486
#>     Attrib V42    0.05481352548937241
#>     Attrib V43    0.056071755567498695
#>     Attrib V44    0.19826711878722678
#>     Attrib V45    0.06462554485625721
#>     Attrib V46    -0.09712057329778383
#>     Attrib V47    -0.1386812390138583
#>     Attrib V48    0.1529119949039326
#>     Attrib V49    0.2980608390872894
#>     Attrib V5    0.07621257488023915
#>     Attrib V50    -0.30752383205065115
#>     Attrib V51    -0.08252792528998824
#>     Attrib V52    0.09420079563059207
#>     Attrib V53    0.3254663284292401
#>     Attrib V54    0.394021067819628
#>     Attrib V55    -0.20901984290202474
#>     Attrib V56    0.14906841069728433
#>     Attrib V57    0.25442592355729704
#>     Attrib V58    0.15518244018698335
#>     Attrib V59    0.25414368649569874
#>     Attrib V6    -0.14249498132174052
#>     Attrib V60    -0.0029036153166563075
#>     Attrib V7    -0.06453654627799425
#>     Attrib V8    0.00777288944563382
#>     Attrib V9    0.41436501880449794
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.2251669520276066
#>     Attrib V1    -0.18401599057884618
#>     Attrib V10    0.5053811202774742
#>     Attrib V11    0.88026630616666
#>     Attrib V12    1.5729387822073706
#>     Attrib V13    0.439167264059117
#>     Attrib V14    -0.5087708311036729
#>     Attrib V15    -0.8407084784076019
#>     Attrib V16    -0.8245933021768543
#>     Attrib V17    -0.41234503283667945
#>     Attrib V18    0.05982658422147741
#>     Attrib V19    -0.07296643089671197
#>     Attrib V2    0.24181784876451673
#>     Attrib V20    -0.7095667124785846
#>     Attrib V21    -0.047454527954053215
#>     Attrib V22    0.5154172303025883
#>     Attrib V23    0.8236647474432927
#>     Attrib V24    0.9869505191729248
#>     Attrib V25    0.8096170707098534
#>     Attrib V26    0.6602341269736881
#>     Attrib V27    0.8996811809206353
#>     Attrib V28    1.05905408932905
#>     Attrib V29    0.21128102404957888
#>     Attrib V3    0.08630885094141168
#>     Attrib V30    0.4983723409743383
#>     Attrib V31    -0.7532032595173577
#>     Attrib V32    -0.25564462567861135
#>     Attrib V33    -0.024992535731235496
#>     Attrib V34    0.1084822875100006
#>     Attrib V35    0.5390820371045726
#>     Attrib V36    -0.5620012988783417
#>     Attrib V37    -0.35476756395271847
#>     Attrib V38    -0.47428880866403883
#>     Attrib V39    0.4850361120541379
#>     Attrib V4    0.13969190283696548
#>     Attrib V40    0.3286120600332299
#>     Attrib V41    0.8813163844527658
#>     Attrib V42    -0.4602232547591516
#>     Attrib V43    -0.18897289329137384
#>     Attrib V44    0.02573201335631549
#>     Attrib V45    0.3555544370136265
#>     Attrib V46    0.4443258199905159
#>     Attrib V47    0.6801493105291394
#>     Attrib V48    0.9187835090496664
#>     Attrib V49    1.0369164843233039
#>     Attrib V5    0.3794492419366235
#>     Attrib V50    -0.2653254775646335
#>     Attrib V51    0.4994014997298675
#>     Attrib V52    0.8510857306608235
#>     Attrib V53    1.1884399491160935
#>     Attrib V54    0.17793311032298995
#>     Attrib V55    -0.9075940058208078
#>     Attrib V56    -0.38122271108420797
#>     Attrib V57    -0.090527412661489
#>     Attrib V58    -0.1483312791132904
#>     Attrib V59    -0.41468519330748127
#>     Attrib V6    0.5940034435245021
#>     Attrib V60    -0.20514644702368343
#>     Attrib V7    -0.2548861414539673
#>     Attrib V8    -0.7948297762194172
#>     Attrib V9    1.2269445247229074
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.13742732516545725
#>     Attrib V1    0.12774693027800268
#>     Attrib V10    0.0285895048427921
#>     Attrib V11    0.11492889723691024
#>     Attrib V12    0.13757926093090608
#>     Attrib V13    0.016871055662541577
#>     Attrib V14    0.051629689033935694
#>     Attrib V15    -0.020142994484994844
#>     Attrib V16    0.029507132400549637
#>     Attrib V17    -0.024996157757068923
#>     Attrib V18    0.028431231301691635
#>     Attrib V19    0.033885912252663096
#>     Attrib V2    0.10547407302618463
#>     Attrib V20    0.014995607847561208
#>     Attrib V21    0.0023375037065981063
#>     Attrib V22    -0.09612714359417351
#>     Attrib V23    -0.04341665023212195
#>     Attrib V24    -0.06654315201022658
#>     Attrib V25    -0.11630912256585321
#>     Attrib V26    -0.08878600482641726
#>     Attrib V27    -0.027266295852354815
#>     Attrib V28    -0.02252025909550429
#>     Attrib V29    -0.0989337935739613
#>     Attrib V3    0.09675902411150618
#>     Attrib V30    0.09006714910516844
#>     Attrib V31    -0.10670320089762582
#>     Attrib V32    -0.0932703453169519
#>     Attrib V33    0.09549649740111435
#>     Attrib V34    0.0363098442245279
#>     Attrib V35    0.024990294099288542
#>     Attrib V36    -0.08611936088675053
#>     Attrib V37    -0.04267724699224841
#>     Attrib V38    0.08088490281830923
#>     Attrib V39    0.04560837337190784
#>     Attrib V4    0.14688472674208444
#>     Attrib V40    0.005716698088124603
#>     Attrib V41    0.056414439649499167
#>     Attrib V42    0.003456802096265743
#>     Attrib V43    0.018112097907094598
#>     Attrib V44    0.09021165050019632
#>     Attrib V45    0.08255896472160403
#>     Attrib V46    -0.004104499182998418
#>     Attrib V47    -4.4048313212554605E-4
#>     Attrib V48    0.03632523936527339
#>     Attrib V49    0.0684031515393906
#>     Attrib V5    0.09077239997355416
#>     Attrib V50    0.008939111830843059
#>     Attrib V51    0.04298848727285724
#>     Attrib V52    0.0903141256273012
#>     Attrib V53    0.1811216172283736
#>     Attrib V54    0.12386743967499739
#>     Attrib V55    0.035859493105866495
#>     Attrib V56    0.0565882169227968
#>     Attrib V57    0.1100496476156211
#>     Attrib V58    0.09014781516918398
#>     Attrib V59    0.08639892071437985
#>     Attrib V6    0.04965617954535242
#>     Attrib V60    0.0052085148181260305
#>     Attrib V7    -8.41656388152002E-4
#>     Attrib V8    0.047695875694072985
#>     Attrib V9    0.12853966850967893
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.16931637531125165
#>     Attrib V1    -0.34015338989816457
#>     Attrib V10    0.08954976437441375
#>     Attrib V11    0.6078397330731589
#>     Attrib V12    0.44011276592214726
#>     Attrib V13    -0.7360143546704087
#>     Attrib V14    -1.119746030726276
#>     Attrib V15    -0.6911935625116036
#>     Attrib V16    0.026771997936906194
#>     Attrib V17    0.45316354166077516
#>     Attrib V18    0.37714459922616433
#>     Attrib V19    0.4676217139166973
#>     Attrib V2    -0.13067371877050737
#>     Attrib V20    0.46186941059168574
#>     Attrib V21    0.556391967029102
#>     Attrib V22    0.44998510621905985
#>     Attrib V23    0.5157831623881389
#>     Attrib V24    0.4961907620030247
#>     Attrib V25    0.013303623115445166
#>     Attrib V26    -0.35263496368413305
#>     Attrib V27    -0.025248168815916704
#>     Attrib V28    0.18398983748346923
#>     Attrib V29    -0.6650181559193724
#>     Attrib V3    -0.11193190116414428
#>     Attrib V30    0.6956079490766057
#>     Attrib V31    -1.2421383509624662
#>     Attrib V32    -0.4578503618740745
#>     Attrib V33    0.4069576169452415
#>     Attrib V34    0.14083170956844981
#>     Attrib V35    0.4231920413520008
#>     Attrib V36    -0.019019572284551853
#>     Attrib V37    0.18060969439114644
#>     Attrib V38    0.9347469068133437
#>     Attrib V39    0.2982583748743425
#>     Attrib V4    0.4291883872739242
#>     Attrib V40    -0.5558409242882361
#>     Attrib V41    -0.11748423759469982
#>     Attrib V42    -0.06274160136243288
#>     Attrib V43    0.18473367723653536
#>     Attrib V44    0.8739699297297961
#>     Attrib V45    0.7625123940172861
#>     Attrib V46    0.18373232451497967
#>     Attrib V47    0.12532631400774982
#>     Attrib V48    0.49878843310211335
#>     Attrib V49    0.7775399946662986
#>     Attrib V5    0.18710616802273028
#>     Attrib V50    -0.43422571899601264
#>     Attrib V51    0.0779067439981741
#>     Attrib V52    0.1690495806404215
#>     Attrib V53    0.1331789641848285
#>     Attrib V54    0.6944195792815929
#>     Attrib V55    -0.597287357449965
#>     Attrib V56    0.2610910278034761
#>     Attrib V57    0.05542983186783328
#>     Attrib V58    -0.04482680888140938
#>     Attrib V59    0.023806355612767123
#>     Attrib V6    -0.22196108362856912
#>     Attrib V60    -0.44073054155541314
#>     Attrib V7    -0.18549346738892164
#>     Attrib V8    -0.21489905193944556
#>     Attrib V9    0.9364926987535069
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.3677521645058551
#>     Attrib V1    0.06232762893410975
#>     Attrib V10    -0.33405461820970905
#>     Attrib V11    0.3606837299574219
#>     Attrib V12    0.21476324797450258
#>     Attrib V13    -0.6025010169506003
#>     Attrib V14    -0.2679741646988206
#>     Attrib V15    -0.02230315690663552
#>     Attrib V16    0.316028527968365
#>     Attrib V17    0.18650420353020603
#>     Attrib V18    0.019931852000498473
#>     Attrib V19    0.2175429140718596
#>     Attrib V2    0.18418671314378016
#>     Attrib V20    0.41353360874242256
#>     Attrib V21    0.5506534831904848
#>     Attrib V22    -0.010140231824610501
#>     Attrib V23    -0.2429988813312522
#>     Attrib V24    -0.2722589147411283
#>     Attrib V25    -0.9660087271175564
#>     Attrib V26    -1.0652960819090056
#>     Attrib V27    -0.430822115609537
#>     Attrib V28    -0.1933224999173495
#>     Attrib V29    -0.34050911778212845
#>     Attrib V3    0.09308632644383479
#>     Attrib V30    0.736697263504888
#>     Attrib V31    -0.8726385770116526
#>     Attrib V32    -0.1892188358959423
#>     Attrib V33    0.5618798588412122
#>     Attrib V34    -0.20106273282781162
#>     Attrib V35    -0.4865337497552193
#>     Attrib V36    -0.7624342515001311
#>     Attrib V37    -0.451450968307054
#>     Attrib V38    0.46346229837096475
#>     Attrib V39    0.0864541149805674
#>     Attrib V4    0.660111473982509
#>     Attrib V40    -0.44904436451369356
#>     Attrib V41    -0.004043043537078409
#>     Attrib V42    0.3339199531334327
#>     Attrib V43    0.2696269472761539
#>     Attrib V44    0.3267239784759099
#>     Attrib V45    0.09990625794464561
#>     Attrib V46    -0.23850986316200765
#>     Attrib V47    -0.3990297798245407
#>     Attrib V48    0.11862805191127894
#>     Attrib V49    0.4440263038689158
#>     Attrib V5    0.13358524962455748
#>     Attrib V50    -0.4718110450952878
#>     Attrib V51    -0.2148935723523794
#>     Attrib V52    0.08405780768474265
#>     Attrib V53    0.31202903862954384
#>     Attrib V54    0.664415123710225
#>     Attrib V55    -0.32507358377774515
#>     Attrib V56    0.3768902091199375
#>     Attrib V57    0.36959492335790356
#>     Attrib V58    0.33284722410776046
#>     Attrib V59    0.5560855253665868
#>     Attrib V6    -0.3178866197546485
#>     Attrib V60    -0.1135928340661493
#>     Attrib V7    -0.15773687120421673
#>     Attrib V8    0.13411830278523648
#>     Attrib V9    0.5044469839591766
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.22960601226920857
#>     Attrib V1    0.07364829290949473
#>     Attrib V10    0.02858374620269209
#>     Attrib V11    -0.1064351191669595
#>     Attrib V12    -0.1617768362919646
#>     Attrib V13    0.10445600065123688
#>     Attrib V14    0.11435329601675068
#>     Attrib V15    0.08181449403068612
#>     Attrib V16    0.031734218523615465
#>     Attrib V17    0.0911746870322811
#>     Attrib V18    0.12218601707732948
#>     Attrib V19    -0.053939423769128
#>     Attrib V2    0.02781499881792057
#>     Attrib V20    -0.05195609632558769
#>     Attrib V21    -0.06396834885212145
#>     Attrib V22    -0.032912303318833214
#>     Attrib V23    -0.00885298757784009
#>     Attrib V24    -0.06297621319013005
#>     Attrib V25    0.10285513583183895
#>     Attrib V26    0.04337180229621247
#>     Attrib V27    -0.03242001031749926
#>     Attrib V28    -0.15004674456757058
#>     Attrib V29    0.029901733802536846
#>     Attrib V3    0.11782651450464836
#>     Attrib V30    -0.01861891985122342
#>     Attrib V31    0.26785832492015293
#>     Attrib V32    0.19887238315697484
#>     Attrib V33    0.11260515653566634
#>     Attrib V34    0.1810763538552792
#>     Attrib V35    0.15752865500052454
#>     Attrib V36    0.25599597474950103
#>     Attrib V37    0.16299806763072877
#>     Attrib V38    -0.005195182524785998
#>     Attrib V39    0.08489753359378929
#>     Attrib V4    0.013096326641595596
#>     Attrib V40    0.2998643477823926
#>     Attrib V41    0.2023336907035579
#>     Attrib V42    0.25294284566402053
#>     Attrib V43    0.16799500613890078
#>     Attrib V44    0.10712488024585179
#>     Attrib V45    -0.01891570600785018
#>     Attrib V46    0.09795071559858048
#>     Attrib V47    0.10045312564193531
#>     Attrib V48    -0.05797013865789908
#>     Attrib V49    -0.07366681768416727
#>     Attrib V5    0.09376379099223843
#>     Attrib V50    0.1401659512324285
#>     Attrib V51    0.042891916295669436
#>     Attrib V52    -0.10453033311789113
#>     Attrib V53    -0.046756040766969674
#>     Attrib V54    -0.041077537066464456
#>     Attrib V55    0.11572419812754785
#>     Attrib V56    0.0585948279637609
#>     Attrib V57    0.04824263792842853
#>     Attrib V58    0.01821760239519483
#>     Attrib V59    0.08816535424962246
#>     Attrib V6    0.15394503277090024
#>     Attrib V60    0.20517383042039639
#>     Attrib V7    0.20392238802433182
#>     Attrib V8    0.08528919140016973
#>     Attrib V9    -0.1298363515460233
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.36210640313643305
#>     Attrib V1    0.08772499072788456
#>     Attrib V10    -0.2618334393531267
#>     Attrib V11    0.4428576654306544
#>     Attrib V12    0.35567033829141664
#>     Attrib V13    -0.7172259431294606
#>     Attrib V14    -0.48969690242663827
#>     Attrib V15    -0.05014661208788403
#>     Attrib V16    0.2812672025129093
#>     Attrib V17    0.20020488888671314
#>     Attrib V18    -0.0349610136824206
#>     Attrib V19    0.0923968007121589
#>     Attrib V2    0.13875433647626484
#>     Attrib V20    0.4032960305872677
#>     Attrib V21    0.5873243594533373
#>     Attrib V22    -0.0026300560985644907
#>     Attrib V23    -0.19580722427647515
#>     Attrib V24    -0.2275802679975568
#>     Attrib V25    -0.9616781471457595
#>     Attrib V26    -1.070539761197803
#>     Attrib V27    -0.5496952695874096
#>     Attrib V28    -0.3901075001113486
#>     Attrib V29    -0.7502975502759468
#>     Attrib V3    0.0750570800860359
#>     Attrib V30    0.7818486105902477
#>     Attrib V31    -0.8689819103714406
#>     Attrib V32    -0.1291770381908117
#>     Attrib V33    0.6898336119241123
#>     Attrib V34    -0.16060546481184243
#>     Attrib V35    -0.4744273855160548
#>     Attrib V36    -0.9143391229637259
#>     Attrib V37    -0.5618550587407608
#>     Attrib V38    0.39507341221990044
#>     Attrib V39    0.0641348742353503
#>     Attrib V4    0.6620149498795636
#>     Attrib V40    -0.5528580758212308
#>     Attrib V41    -0.04060149259976062
#>     Attrib V42    0.3349154762839196
#>     Attrib V43    0.20546822526456546
#>     Attrib V44    0.45779153925427934
#>     Attrib V45    0.08430262404789725
#>     Attrib V46    -0.25955301896732996
#>     Attrib V47    -0.4116902591370192
#>     Attrib V48    0.19119750411313513
#>     Attrib V49    0.6226727633454779
#>     Attrib V5    0.06881551921734264
#>     Attrib V50    -0.5123902138789299
#>     Attrib V51    -0.2857941212885553
#>     Attrib V52    -0.015694494620567892
#>     Attrib V53    0.1804968154384229
#>     Attrib V54    0.8190306241741742
#>     Attrib V55    -0.3512407905119496
#>     Attrib V56    0.46303871910429345
#>     Attrib V57    0.29597252317811057
#>     Attrib V58    0.3301765580475357
#>     Attrib V59    0.5144451001615176
#>     Attrib V6    -0.3479536150476321
#>     Attrib V60    -0.08213399106321756
#>     Attrib V7    -0.15288259933833856
#>     Attrib V8    0.07116001906741261
#>     Attrib V9    0.6101834268346471
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.30159346723971825
#>     Attrib V1    0.1491046520357764
#>     Attrib V10    0.09426473973784703
#>     Attrib V11    -0.2612974929573524
#>     Attrib V12    -0.3201709612431164
#>     Attrib V13    0.14121550150466766
#>     Attrib V14    0.366063710465913
#>     Attrib V15    0.3301841416738231
#>     Attrib V16    0.26453352984690137
#>     Attrib V17    0.30967022824869905
#>     Attrib V18    0.42079656231934975
#>     Attrib V19    0.06412447236228654
#>     Attrib V2    -0.04146043695571944
#>     Attrib V20    -0.015992539274229237
#>     Attrib V21    -0.006129339875297995
#>     Attrib V22    0.1695691667504332
#>     Attrib V23    -0.2924586269900415
#>     Attrib V24    -0.3579249810478278
#>     Attrib V25    0.3423039611085575
#>     Attrib V26    0.5453670050915859
#>     Attrib V27    0.043848247289136444
#>     Attrib V28    -0.20697486721993166
#>     Attrib V29    0.2292892220269179
#>     Attrib V3    0.020340448970621088
#>     Attrib V30    -0.07554597310558418
#>     Attrib V31    0.8389718437867185
#>     Attrib V32    0.3437605011190683
#>     Attrib V33    -0.09553248821307776
#>     Attrib V34    -0.029965401673819326
#>     Attrib V35    -0.03738654764171609
#>     Attrib V36    0.5573434989400425
#>     Attrib V37    0.28570198539278063
#>     Attrib V38    -0.0510675547538939
#>     Attrib V39    -0.054671761535561726
#>     Attrib V4    -0.08635441059193119
#>     Attrib V40    0.2690399927545628
#>     Attrib V41    -0.09271104578239373
#>     Attrib V42    0.22379263063435073
#>     Attrib V43    0.18189325119554578
#>     Attrib V44    0.029338191083536497
#>     Attrib V45    -0.05920756465651173
#>     Attrib V46    0.05789086420502688
#>     Attrib V47    0.08730274764420723
#>     Attrib V48    -0.15074121784280156
#>     Attrib V49    -0.3337002240914242
#>     Attrib V5    -0.036830692078155695
#>     Attrib V50    0.4518217150719857
#>     Attrib V51    -0.03233378887928809
#>     Attrib V52    -0.46327416000891136
#>     Attrib V53    -0.4161658834405516
#>     Attrib V54    -0.0997691202679124
#>     Attrib V55    0.2934605187312323
#>     Attrib V56    -0.020687316019481372
#>     Attrib V57    -0.06446132552060826
#>     Attrib V58    -0.17418158763484232
#>     Attrib V59    -0.033916446040493084
#>     Attrib V6    -0.02441942138518375
#>     Attrib V60    0.14788897208103785
#>     Attrib V7    0.24723277441127156
#>     Attrib V8    0.25236019112878555
#>     Attrib V9    -0.4512534717975899
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.13175516305737772
#>     Attrib V1    0.05804623703375822
#>     Attrib V10    0.034221112142673565
#>     Attrib V11    0.08648760120303672
#>     Attrib V12    0.09227027874099143
#>     Attrib V13    0.01906874503951754
#>     Attrib V14    -0.015969804677148352
#>     Attrib V15    -0.005988519678285826
#>     Attrib V16    0.06600260256482417
#>     Attrib V17    0.04632526058812317
#>     Attrib V18    0.03858257286675905
#>     Attrib V19    0.02889060469861371
#>     Attrib V2    0.04436195591561925
#>     Attrib V20    -0.03795391592079177
#>     Attrib V21    -0.06060731644530417
#>     Attrib V22    -0.10408212093573915
#>     Attrib V23    -0.09830834651556052
#>     Attrib V24    0.013433224010273317
#>     Attrib V25    -0.03088961038382249
#>     Attrib V26    -0.09026488376407836
#>     Attrib V27    -0.019429906366193687
#>     Attrib V28    0.014445897894475883
#>     Attrib V29    -0.07547070579136446
#>     Attrib V3    0.11771517466794473
#>     Attrib V30    0.010915684066778529
#>     Attrib V31    -0.13130696061630412
#>     Attrib V32    0.005223926523557615
#>     Attrib V33    0.054781863839816314
#>     Attrib V34    0.03204501380410575
#>     Attrib V35    -0.010638184882240692
#>     Attrib V36    -0.10907295709073961
#>     Attrib V37    -0.030472109664484354
#>     Attrib V38    0.03427994310968077
#>     Attrib V39    0.046490793428746506
#>     Attrib V4    0.15813870994327597
#>     Attrib V40    -0.043395750490933284
#>     Attrib V41    0.04204391861121402
#>     Attrib V42    0.05648547150117773
#>     Attrib V43    0.008711095256632924
#>     Attrib V44    0.02044112320623969
#>     Attrib V45    0.05500947064123503
#>     Attrib V46    0.043253643692746396
#>     Attrib V47    0.017947876434034456
#>     Attrib V48    0.03821386170798106
#>     Attrib V49    0.04292203373100466
#>     Attrib V5    0.09309977418754062
#>     Attrib V50    0.010196785916083953
#>     Attrib V51    0.0912263479524843
#>     Attrib V52    0.131044760586073
#>     Attrib V53    0.18954196505801615
#>     Attrib V54    0.09614538338986806
#>     Attrib V55    0.06520522820723483
#>     Attrib V56    0.08905799202107378
#>     Attrib V57    0.15911116156470498
#>     Attrib V58    0.1550832228848802
#>     Attrib V59    0.06329410281824276
#>     Attrib V6    0.02372402786362627
#>     Attrib V60    0.05583258627954135
#>     Attrib V7    -0.011072993845361888
#>     Attrib V8    0.012657588285024775
#>     Attrib V9    0.18094125895088628
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.014871102505062734
#>     Attrib V1    0.0888222544161254
#>     Attrib V10    0.04252071946915297
#>     Attrib V11    0.16786390020676895
#>     Attrib V12    0.11949508278991976
#>     Attrib V13    -0.09538699690626702
#>     Attrib V14    -0.048375627556623106
#>     Attrib V15    0.062051873745342816
#>     Attrib V16    0.03932806118256709
#>     Attrib V17    0.0075525881590244506
#>     Attrib V18    -0.01852568751471754
#>     Attrib V19    0.03904715510768307
#>     Attrib V2    0.15331285615467088
#>     Attrib V20    0.014822255741752841
#>     Attrib V21    0.020893345476885938
#>     Attrib V22    -0.030386819592734485
#>     Attrib V23    -0.10124532567965205
#>     Attrib V24    -0.017111252931940383
#>     Attrib V25    -0.19135324394553394
#>     Attrib V26    -0.2209012688579752
#>     Attrib V27    -0.059673813049011946
#>     Attrib V28    -0.0259464852413486
#>     Attrib V29    -0.1576435217661115
#>     Attrib V3    0.08859784245156538
#>     Attrib V30    0.14270016458445492
#>     Attrib V31    -0.15732958260398247
#>     Attrib V32    -0.06950860232696357
#>     Attrib V33    0.15564190872822387
#>     Attrib V34    -0.04508305399724244
#>     Attrib V35    -0.015989201817303705
#>     Attrib V36    -0.23617422826664938
#>     Attrib V37    -0.15769693445667027
#>     Attrib V38    0.09212965756352232
#>     Attrib V39    0.06799688742715898
#>     Attrib V4    0.2014496491509276
#>     Attrib V40    -0.11888958608300597
#>     Attrib V41    0.03285354420582107
#>     Attrib V42    -0.0065297128308937046
#>     Attrib V43    0.05236136632766937
#>     Attrib V44    0.09574087529126274
#>     Attrib V45    0.08400809466832679
#>     Attrib V46    -0.04414366581138871
#>     Attrib V47    -0.07874266921542762
#>     Attrib V48    0.09865793450939706
#>     Attrib V49    0.08669281305015253
#>     Attrib V5    0.08618866315298722
#>     Attrib V50    -0.08720227100696061
#>     Attrib V51    0.020886379220773195
#>     Attrib V52    0.09508681478636456
#>     Attrib V53    0.16113954424846186
#>     Attrib V54    0.15471506623972547
#>     Attrib V55    0.039193846243403
#>     Attrib V56    0.11305558545842898
#>     Attrib V57    0.2079969610168491
#>     Attrib V58    0.10949144373408229
#>     Attrib V59    0.09983947006258628
#>     Attrib V6    -0.013293508824267455
#>     Attrib V60    0.027218999420761315
#>     Attrib V7    -0.06494073205882345
#>     Attrib V8    0.09407151880919704
#>     Attrib V9    0.24180605008254816
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.21965569839626886
#>     Attrib V1    0.2616283305719258
#>     Attrib V10    0.06486655488866158
#>     Attrib V11    -0.5761714722740766
#>     Attrib V12    -0.42589993592964054
#>     Attrib V13    0.8733368969315592
#>     Attrib V14    1.117327681156925
#>     Attrib V15    0.449078910861366
#>     Attrib V16    -0.26491912823787267
#>     Attrib V17    -0.4700947273527792
#>     Attrib V18    -0.0987713273555795
#>     Attrib V19    -0.2262827686123417
#>     Attrib V2    0.12764975808462065
#>     Attrib V20    -0.3162556453718979
#>     Attrib V21    -0.5853613132800896
#>     Attrib V22    -0.44074631381125523
#>     Attrib V23    -0.4215131230257086
#>     Attrib V24    -0.6132188158899736
#>     Attrib V25    0.16110825268660817
#>     Attrib V26    0.6460561082768472
#>     Attrib V27    0.3868793777629341
#>     Attrib V28    0.32013233931099605
#>     Attrib V29    1.2127144352185713
#>     Attrib V3    0.08784428097391266
#>     Attrib V30    -0.798619818757457
#>     Attrib V31    1.0297382437362628
#>     Attrib V32    0.2003141031256446
#>     Attrib V33    -0.6844731611610325
#>     Attrib V34    0.07674288108802889
#>     Attrib V35    0.2111829566881246
#>     Attrib V36    0.7805770724218093
#>     Attrib V37    0.5021350216345455
#>     Attrib V38    -0.6678939610104597
#>     Attrib V39    0.0407546289567851
#>     Attrib V4    -0.6316004434817757
#>     Attrib V40    0.7708351207305475
#>     Attrib V41    0.0813433989986539
#>     Attrib V42    -0.23911465868311965
#>     Attrib V43    -0.24086537744686315
#>     Attrib V44    -0.6281206195965277
#>     Attrib V45    -0.433082034936373
#>     Attrib V46    -0.01833042027628423
#>     Attrib V47    0.09833554276077393
#>     Attrib V48    -0.44689756132903197
#>     Attrib V49    -0.8507224775894181
#>     Attrib V5    -0.11757626831402408
#>     Attrib V50    0.45107999368025936
#>     Attrib V51    0.0017882211434874409
#>     Attrib V52    -0.11522491310541012
#>     Attrib V53    -0.20970090280112863
#>     Attrib V54    -1.0711736789469468
#>     Attrib V55    0.50497864699743
#>     Attrib V56    -0.5052542883972628
#>     Attrib V57    -0.2602028738695905
#>     Attrib V58    -0.07048807401466509
#>     Attrib V59    -0.27610944412495225
#>     Attrib V6    0.36548074820947857
#>     Attrib V60    0.17840328336185277
#>     Attrib V7    0.020800867829760976
#>     Attrib V8    0.028293815436627085
#>     Attrib V9    -0.9423629473807306
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.36964318925804773
#>     Attrib V1    0.19494989848836697
#>     Attrib V10    0.06249411176303515
#>     Attrib V11    0.6367183933034233
#>     Attrib V12    1.3869208955934622
#>     Attrib V13    0.43539464351315604
#>     Attrib V14    0.3594416426863257
#>     Attrib V15    0.02913196679798368
#>     Attrib V16    -0.4198916451837531
#>     Attrib V17    -0.7849046987146066
#>     Attrib V18    -0.6545313550746246
#>     Attrib V19    -0.5052552652354715
#>     Attrib V2    0.559288170257098
#>     Attrib V20    -0.7406941233015236
#>     Attrib V21    -0.4755498046448573
#>     Attrib V22    -0.5916757468820787
#>     Attrib V23    -0.5206643921299766
#>     Attrib V24    -0.08764242041132417
#>     Attrib V25    -0.2856466999422142
#>     Attrib V26    -0.23611327963474704
#>     Attrib V27    0.3104435418688338
#>     Attrib V28    0.49401783298713814
#>     Attrib V29    0.2815390351671904
#>     Attrib V3    0.25375073737536585
#>     Attrib V30    0.5071734461027496
#>     Attrib V31    -0.08044313642745922
#>     Attrib V32    0.3982248716217597
#>     Attrib V33    0.5668166324106318
#>     Attrib V34    0.11308258135623446
#>     Attrib V35    -0.22302661518878145
#>     Attrib V36    -1.3312866358117308
#>     Attrib V37    -1.129797730451311
#>     Attrib V38    -0.9276444745131645
#>     Attrib V39    -0.05818562093291289
#>     Attrib V4    0.38036707520767565
#>     Attrib V40    0.1491189460118734
#>     Attrib V41    0.6248180545202321
#>     Attrib V42    0.04041950189020744
#>     Attrib V43    -0.35660798088023504
#>     Attrib V44    -0.5665633873365612
#>     Attrib V45    -0.07119979076071226
#>     Attrib V46    -0.006565709939388135
#>     Attrib V47    -0.007403996970493065
#>     Attrib V48    0.4366110399624495
#>     Attrib V49    0.615006888922992
#>     Attrib V5    0.35789335299835573
#>     Attrib V50    -0.42111754020422837
#>     Attrib V51    -0.061446681075064784
#>     Attrib V52    0.4675292930655718
#>     Attrib V53    0.7457875535207059
#>     Attrib V54    0.26924946610827993
#>     Attrib V55    -0.046324527317342816
#>     Attrib V56    -0.16438089061031078
#>     Attrib V57    0.19620247383662345
#>     Attrib V58    0.4780043005314128
#>     Attrib V59    0.06064040194892842
#>     Attrib V6    0.38823915814530086
#>     Attrib V60    0.14123444778029484
#>     Attrib V7    -0.1910416428107036
#>     Attrib V8    -0.1936706710901513
#>     Attrib V9    0.7663882828329642
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.2708904729739042
#>     Attrib V1    0.06451859391261454
#>     Attrib V10    -0.20907576769102731
#>     Attrib V11    0.3064560592076326
#>     Attrib V12    0.3045143098236605
#>     Attrib V13    -0.48236072787620576
#>     Attrib V14    -0.32747409524345356
#>     Attrib V15    -0.0947556648615606
#>     Attrib V16    0.16945833515237052
#>     Attrib V17    0.2192099333024418
#>     Attrib V18    0.10950194489675086
#>     Attrib V19    0.20867067589916624
#>     Attrib V2    0.0551420400441927
#>     Attrib V20    0.3688993238820546
#>     Attrib V21    0.5091642719232913
#>     Attrib V22    0.0464474431696084
#>     Attrib V23    -0.08072132810206681
#>     Attrib V24    -0.07580949146267751
#>     Attrib V25    -0.6455730784052963
#>     Attrib V26    -0.7266732204808692
#>     Attrib V27    -0.26304796635584987
#>     Attrib V28    -0.11952258223682252
#>     Attrib V29    -0.3138670538544701
#>     Attrib V3    0.03988303547150185
#>     Attrib V30    0.6862482797975147
#>     Attrib V31    -0.766862124413835
#>     Attrib V32    -0.25791995902398024
#>     Attrib V33    0.38441619595608945
#>     Attrib V34    -0.25234652887514386
#>     Attrib V35    -0.3576611014926142
#>     Attrib V36    -0.5264640639182919
#>     Attrib V37    -0.23333664885709635
#>     Attrib V38    0.4918818466667812
#>     Attrib V39    0.11489795873406494
#>     Attrib V4    0.4920210918672108
#>     Attrib V40    -0.4282800036480084
#>     Attrib V41    -0.0011587432755976327
#>     Attrib V42    0.2237042023892053
#>     Attrib V43    0.2438556680760102
#>     Attrib V44    0.41392453241278515
#>     Attrib V45    0.13132256435208178
#>     Attrib V46    -0.2328189938975721
#>     Attrib V47    -0.3347413798780369
#>     Attrib V48    0.13649886592254198
#>     Attrib V49    0.42656958680775336
#>     Attrib V5    0.1378382530035527
#>     Attrib V50    -0.3861864787265099
#>     Attrib V51    -0.07988508580195122
#>     Attrib V52    0.14058193808289443
#>     Attrib V53    0.29498432632837385
#>     Attrib V54    0.600935898360629
#>     Attrib V55    -0.2830843692328566
#>     Attrib V56    0.29131752413834877
#>     Attrib V57    0.23181682039083237
#>     Attrib V58    0.26563061349176426
#>     Attrib V59    0.42949058351183267
#>     Attrib V6    -0.22913149884278428
#>     Attrib V60    -0.09821324371734753
#>     Attrib V7    -0.07876874290796033
#>     Attrib V8    -9.971129806216421E-4
#>     Attrib V9    0.48408447449946973
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.14277369922468103
#>     Attrib V1    0.2451659357765333
#>     Attrib V10    0.03923635237901204
#>     Attrib V11    -0.46207689682209324
#>     Attrib V12    -0.42607639726212637
#>     Attrib V13    0.5249973651741022
#>     Attrib V14    0.7709380093455758
#>     Attrib V15    0.3807567589807452
#>     Attrib V16    -0.14616673074145597
#>     Attrib V17    -0.33430463960587853
#>     Attrib V18    -0.19016663001104442
#>     Attrib V19    -0.22902906406369425
#>     Attrib V2    0.07196478992983431
#>     Attrib V20    -0.18051475624120902
#>     Attrib V21    -0.3620403208586988
#>     Attrib V22    -0.3293196560384075
#>     Attrib V23    -0.3387501776290204
#>     Attrib V24    -0.46094711007104916
#>     Attrib V25    0.11911914045312272
#>     Attrib V26    0.5097220223008551
#>     Attrib V27    0.27503769464902417
#>     Attrib V28    0.22568995056599217
#>     Attrib V29    0.8963849576279668
#>     Attrib V3    0.016923997657751412
#>     Attrib V30    -0.5240662245394708
#>     Attrib V31    0.8598094148079681
#>     Attrib V32    0.12803458050458297
#>     Attrib V33    -0.5194069103537202
#>     Attrib V34    0.03776980636996705
#>     Attrib V35    0.15036412151300046
#>     Attrib V36    0.6008851412321398
#>     Attrib V37    0.47298509524378135
#>     Attrib V38    -0.41180905405926793
#>     Attrib V39    -0.007296063879741327
#>     Attrib V4    -0.3892233274797557
#>     Attrib V40    0.5474066469026402
#>     Attrib V41    0.011608348768729168
#>     Attrib V42    -0.19886698313399576
#>     Attrib V43    -0.16771655458733448
#>     Attrib V44    -0.4607182954141541
#>     Attrib V45    -0.33452111221960246
#>     Attrib V46    -0.0345632466118493
#>     Attrib V47    -0.015467306317278957
#>     Attrib V48    -0.3655066635116034
#>     Attrib V49    -0.7250480973685222
#>     Attrib V5    -0.10358142516370597
#>     Attrib V50    0.3820910382250806
#>     Attrib V51    -0.042381168780772
#>     Attrib V52    -0.12771706025189236
#>     Attrib V53    -0.2754257547078691
#>     Attrib V54    -0.6674424776595581
#>     Attrib V55    0.44955862354000264
#>     Attrib V56    -0.37730026084177043
#>     Attrib V57    -0.08697831816088185
#>     Attrib V58    -0.08702609419745423
#>     Attrib V59    -0.17114249208716562
#>     Attrib V6    0.1803156929088305
#>     Attrib V60    0.15694086787431868
#>     Attrib V7    0.049938545344686995
#>     Attrib V8    0.03098004372638227
#>     Attrib V9    -0.7215085429530073
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.21306204058890577
#>     Attrib V1    0.21955223153347456
#>     Attrib V10    -0.33171806863393066
#>     Attrib V11    0.1567089779092645
#>     Attrib V12    0.04637848081352736
#>     Attrib V13    -0.5798952290755076
#>     Attrib V14    -0.15749352993930485
#>     Attrib V15    0.10585488246171673
#>     Attrib V16    0.425273823272292
#>     Attrib V17    0.20604306744336215
#>     Attrib V18    -0.026085945323773663
#>     Attrib V19    0.12496415684290309
#>     Attrib V2    0.23399960870130612
#>     Attrib V20    0.48768085871179195
#>     Attrib V21    0.5437657482663955
#>     Attrib V22    -0.10256278333942527
#>     Attrib V23    -0.3825226886286474
#>     Attrib V24    -0.36646571898348596
#>     Attrib V25    -1.1191292382317661
#>     Attrib V26    -1.1709498891182601
#>     Attrib V27    -0.5993001374083684
#>     Attrib V28    -0.38414574287869085
#>     Attrib V29    -0.4124033901795369
#>     Attrib V3    0.1662715560788912
#>     Attrib V30    0.6189116360465146
#>     Attrib V31    -0.6409648846219754
#>     Attrib V32    -0.11386906979900999
#>     Attrib V33    0.5003574886103516
#>     Attrib V34    -0.18974154417365946
#>     Attrib V35    -0.5291057510336108
#>     Attrib V36    -0.769137026023778
#>     Attrib V37    -0.42504857610415825
#>     Attrib V38    0.374927026144998
#>     Attrib V39    0.061400875438360585
#>     Attrib V4    0.6274073857870369
#>     Attrib V40    -0.405728417636678
#>     Attrib V41    -0.07837642780709818
#>     Attrib V42    0.33286124176974885
#>     Attrib V43    0.2748462967868618
#>     Attrib V44    0.29747742974484126
#>     Attrib V45    -0.03900825294025681
#>     Attrib V46    -0.28074960839968305
#>     Attrib V47    -0.4626391095834316
#>     Attrib V48    0.055306597160468346
#>     Attrib V49    0.38842068068349833
#>     Attrib V5    0.1307530344144134
#>     Attrib V50    -0.4030609096381099
#>     Attrib V51    -0.247705577221287
#>     Attrib V52    0.013483991839650706
#>     Attrib V53    0.22020985173278596
#>     Attrib V54    0.6123508832262866
#>     Attrib V55    -0.1917618976537838
#>     Attrib V56    0.4605427432468585
#>     Attrib V57    0.35115308895624053
#>     Attrib V58    0.36993478425415566
#>     Attrib V59    0.5491118938585208
#>     Attrib V6    -0.26810290253067265
#>     Attrib V60    -0.037128265838871355
#>     Attrib V7    -0.1590513908726782
#>     Attrib V8    0.10676980979499609
#>     Attrib V9    0.3826464236924446
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.257308650792862
#>     Attrib V1    0.10915931856168465
#>     Attrib V10    -0.31950080050443996
#>     Attrib V11    0.2961352630645486
#>     Attrib V12    0.21347201826932474
#>     Attrib V13    -0.5429513881228364
#>     Attrib V14    -0.3200470609402327
#>     Attrib V15    -0.027629961974987693
#>     Attrib V16    0.28087749186335287
#>     Attrib V17    0.2895427814971593
#>     Attrib V18    0.05378304673567806
#>     Attrib V19    0.18988801296752716
#>     Attrib V2    0.09946966460826226
#>     Attrib V20    0.407488806547722
#>     Attrib V21    0.4738394920271637
#>     Attrib V22    -0.04897882803615305
#>     Attrib V23    -0.2333905621608712
#>     Attrib V24    -0.2985100897667418
#>     Attrib V25    -0.9383388269441617
#>     Attrib V26    -0.9956706118184888
#>     Attrib V27    -0.5195549641859134
#>     Attrib V28    -0.31644858456414726
#>     Attrib V29    -0.5216447332287921
#>     Attrib V3    0.1557095760087525
#>     Attrib V30    0.6363701555270357
#>     Attrib V31    -0.7859771599428392
#>     Attrib V32    -0.15683434843392374
#>     Attrib V33    0.519020508033083
#>     Attrib V34    -0.1902165515768824
#>     Attrib V35    -0.38810231397684414
#>     Attrib V36    -0.6568628870819205
#>     Attrib V37    -0.32376600409921213
#>     Attrib V38    0.4662673225468348
#>     Attrib V39    0.09451086619335049
#>     Attrib V4    0.6317233670254903
#>     Attrib V40    -0.5176276126210394
#>     Attrib V41    -0.08033285961719731
#>     Attrib V42    0.2888777199661255
#>     Attrib V43    0.2671375619205775
#>     Attrib V44    0.3734894164050062
#>     Attrib V45    0.12036646852926404
#>     Attrib V46    -0.2515624907279477
#>     Attrib V47    -0.3549946578374342
#>     Attrib V48    0.0250761889130748
#>     Attrib V49    0.42728769843207154
#>     Attrib V5    0.08194677387997691
#>     Attrib V50    -0.4505859936164641
#>     Attrib V51    -0.23138425617801903
#>     Attrib V52    0.08595663681789355
#>     Attrib V53    0.25121073336397315
#>     Attrib V54    0.621417903198292
#>     Attrib V55    -0.24174970885778616
#>     Attrib V56    0.4171774845812293
#>     Attrib V57    0.2807617341336996
#>     Attrib V58    0.2915253308508822
#>     Attrib V59    0.5394835532823616
#>     Attrib V6    -0.3245205230913754
#>     Attrib V60    -0.1157683891440564
#>     Attrib V7    -0.14710756620716664
#>     Attrib V8    0.08677776888827889
#>     Attrib V9    0.4487990214518573
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.1382269357918037
#>     Attrib V1    0.07098854212879192
#>     Attrib V10    0.029348582877009772
#>     Attrib V11    -0.005514759081217082
#>     Attrib V12    -0.027641033780481758
#>     Attrib V13    -0.0032023345070658193
#>     Attrib V14    0.06107727354440791
#>     Attrib V15    0.10518668622361299
#>     Attrib V16    0.034903948740569055
#>     Attrib V17    0.0943117400929536
#>     Attrib V18    0.025706272704423286
#>     Attrib V19    -0.012851406368586447
#>     Attrib V2    0.05699512263428241
#>     Attrib V20    -0.047653020055286675
#>     Attrib V21    -0.07818213307026095
#>     Attrib V22    -0.0953086091007183
#>     Attrib V23    -0.03535579734685306
#>     Attrib V24    -0.08744612403586398
#>     Attrib V25    -0.011093131682776565
#>     Attrib V26    0.040805471534731665
#>     Attrib V27    -0.055380069340126445
#>     Attrib V28    -0.0255029955458197
#>     Attrib V29    -0.011787404312536184
#>     Attrib V3    0.07407720009373885
#>     Attrib V30    -0.01531360918508836
#>     Attrib V31    0.053217203099742275
#>     Attrib V32    0.08941656256653469
#>     Attrib V33    0.006329889772762671
#>     Attrib V34    0.05271286048908449
#>     Attrib V35    0.07414256195215094
#>     Attrib V36    0.12089562248432395
#>     Attrib V37    0.04153590833800332
#>     Attrib V38    0.025233869653303667
#>     Attrib V39    0.043762924596350436
#>     Attrib V4    0.10738395809982974
#>     Attrib V40    0.14278265516172803
#>     Attrib V41    0.11197583643929332
#>     Attrib V42    0.06330896271317585
#>     Attrib V43    0.12345172830409898
#>     Attrib V44    0.049629403162684674
#>     Attrib V45    -0.001967056190776533
#>     Attrib V46    0.08158947975589799
#>     Attrib V47    0.1091789277942811
#>     Attrib V48    0.029925454542491157
#>     Attrib V49    -0.027276715103187098
#>     Attrib V5    0.04680389118837317
#>     Attrib V50    0.11122394648701261
#>     Attrib V51    0.09834791528587733
#>     Attrib V52    0.08579150900480027
#>     Attrib V53    0.011479821147323542
#>     Attrib V54    0.018137363890527215
#>     Attrib V55    0.10785276609645808
#>     Attrib V56    0.0891297025495226
#>     Attrib V57    0.12377217912944247
#>     Attrib V58    0.06699149505944924
#>     Attrib V59    0.07142481321267397
#>     Attrib V6    0.09198498850111783
#>     Attrib V60    0.05473461054972083
#>     Attrib V7    0.03838613430513691
#>     Attrib V8    0.08528471731381547
#>     Attrib V9    0.06673074525448609
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.620808973335544
#>     Attrib V1    0.21638737638653233
#>     Attrib V10    0.11974652886861126
#>     Attrib V11    0.8191082646197574
#>     Attrib V12    1.7713839596111185
#>     Attrib V13    0.6939389718667585
#>     Attrib V14    0.32379373422852786
#>     Attrib V15    -0.3742429339848774
#>     Attrib V16    -0.8323306279014511
#>     Attrib V17    -0.5819756530154847
#>     Attrib V18    -0.14993635253422444
#>     Attrib V19    -0.25566616485824684
#>     Attrib V2    0.6344908370361454
#>     Attrib V20    -0.6997613194420118
#>     Attrib V21    0.10133815537600796
#>     Attrib V22    0.5162711143259906
#>     Attrib V23    0.7444020029749067
#>     Attrib V24    0.5658966123780278
#>     Attrib V25    0.08234740554964798
#>     Attrib V26    0.45398950449246134
#>     Attrib V27    1.3113603843936155
#>     Attrib V28    2.015569160455349
#>     Attrib V29    1.5960637781764286
#>     Attrib V3    0.36571484009939254
#>     Attrib V30    0.7845998334036746
#>     Attrib V31    -1.1932090023170696
#>     Attrib V32    -0.6319592602895879
#>     Attrib V33    -0.4303309722497602
#>     Attrib V34    -0.28759097835526876
#>     Attrib V35    0.3483219770357502
#>     Attrib V36    -0.6723072598039119
#>     Attrib V37    -0.016143688697343936
#>     Attrib V38    -0.4536114223795482
#>     Attrib V39    0.8280135603923282
#>     Attrib V4    0.23926777529261511
#>     Attrib V40    0.5557369316838278
#>     Attrib V41    1.3260859561851168
#>     Attrib V42    -0.2232272842508853
#>     Attrib V43    -0.18376090337982215
#>     Attrib V44    -0.017364362271937644
#>     Attrib V45    0.36618260904090627
#>     Attrib V46    0.32088466672984206
#>     Attrib V47    0.44190980728390844
#>     Attrib V48    0.7041740251584784
#>     Attrib V49    1.1055222125114337
#>     Attrib V5    0.6536683579527433
#>     Attrib V50    -0.22409072996927693
#>     Attrib V51    0.35117886967961087
#>     Attrib V52    1.0173686098884072
#>     Attrib V53    1.6032029694165575
#>     Attrib V54    -0.049187684176163926
#>     Attrib V55    -1.0803721665012613
#>     Attrib V56    -0.5733784677088981
#>     Attrib V57    0.2684383797203748
#>     Attrib V58    0.050836920419979954
#>     Attrib V59    -0.1726299427523255
#>     Attrib V6    1.059522383857501
#>     Attrib V60    0.012680792709054192
#>     Attrib V7    -0.5153049467222723
#>     Attrib V8    -0.9370799699677594
#>     Attrib V9    0.9541464921718986
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.17784184456259616
#>     Attrib V1    0.08687829723296661
#>     Attrib V10    0.03169918368923049
#>     Attrib V11    0.04121290328786739
#>     Attrib V12    0.0715651895706143
#>     Attrib V13    -0.009106516195992351
#>     Attrib V14    0.07903948637002282
#>     Attrib V15    0.020871773686346684
#>     Attrib V16    0.023517419976301076
#>     Attrib V17    0.042828885584455155
#>     Attrib V18    -0.03155132062984238
#>     Attrib V19    0.05494443302115761
#>     Attrib V2    0.10913820351098612
#>     Attrib V20    -0.007273259007762758
#>     Attrib V21    -0.03046380482750142
#>     Attrib V22    -0.08224696132253592
#>     Attrib V23    -0.06249377992424467
#>     Attrib V24    -0.04918026501081322
#>     Attrib V25    -0.03632561397970172
#>     Attrib V26    -0.057472819803787996
#>     Attrib V27    0.02689151051233447
#>     Attrib V28    0.03523332045434858
#>     Attrib V29    -0.005400223334349912
#>     Attrib V3    0.07273606247410688
#>     Attrib V30    0.01937902881743779
#>     Attrib V31    -0.08294531868019304
#>     Attrib V32    -0.03796630956053817
#>     Attrib V33    0.06781569115169922
#>     Attrib V34    0.007554907699142541
#>     Attrib V35    0.0865391278724558
#>     Attrib V36    0.027474074059934135
#>     Attrib V37    0.052428564204894744
#>     Attrib V38    0.020566076321912635
#>     Attrib V39    0.07492074232689305
#>     Attrib V4    0.16069601347197693
#>     Attrib V40    0.02113211840582244
#>     Attrib V41    0.028283359627651022
#>     Attrib V42    0.05042345892423327
#>     Attrib V43    0.05454969600857477
#>     Attrib V44    0.08225180805694418
#>     Attrib V45    0.058090528402396764
#>     Attrib V46    0.03139825674002286
#>     Attrib V47    0.019669230452524576
#>     Attrib V48    0.08354072917319184
#>     Attrib V49    0.036999524891574063
#>     Attrib V5    0.05534476003843602
#>     Attrib V50    0.025387402263827318
#>     Attrib V51    0.03554726408293342
#>     Attrib V52    0.06397559217469341
#>     Attrib V53    0.09671077140371843
#>     Attrib V54    0.07891743561142497
#>     Attrib V55    0.0719439531404689
#>     Attrib V56    0.09050520905711347
#>     Attrib V57    0.15081715366284631
#>     Attrib V58    0.10305604998724194
#>     Attrib V59    0.10923881852155057
#>     Attrib V6    0.05944878864189317
#>     Attrib V60    0.10347896938454808
#>     Attrib V7    -0.014126905346187494
#>     Attrib V8    0.07325724644036397
#>     Attrib V9    0.09210368189631558
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.4209264612405178
#>     Attrib V1    -0.11200843510270028
#>     Attrib V10    0.5004089742716734
#>     Attrib V11    0.9242485934392088
#>     Attrib V12    1.557178688072108
#>     Attrib V13    0.42040930303020246
#>     Attrib V14    -0.5173244244840374
#>     Attrib V15    -0.7265154927355713
#>     Attrib V16    -0.7901056553303054
#>     Attrib V17    -0.5135563636138535
#>     Attrib V18    -0.09653991229179755
#>     Attrib V19    -0.13717369568379528
#>     Attrib V2    0.25874156713076996
#>     Attrib V20    -0.6940042036823832
#>     Attrib V21    -0.09850157717958376
#>     Attrib V22    0.34982169090665444
#>     Attrib V23    0.6493100481468799
#>     Attrib V24    0.8536353150761412
#>     Attrib V25    0.5019786102065283
#>     Attrib V26    0.4186860034653743
#>     Attrib V27    0.6122104525769959
#>     Attrib V28    0.8144174707007956
#>     Attrib V29    0.07418230929202388
#>     Attrib V3    0.007640490233071897
#>     Attrib V30    0.5094744815381547
#>     Attrib V31    -0.7843702945593732
#>     Attrib V32    -0.23549227957420768
#>     Attrib V33    0.16880705924642425
#>     Attrib V34    0.3013512251614772
#>     Attrib V35    0.6741570275653745
#>     Attrib V36    -0.5828492955130868
#>     Attrib V37    -0.322963660354062
#>     Attrib V38    -0.4242757954003307
#>     Attrib V39    0.2685502172571467
#>     Attrib V4    0.09534358000158827
#>     Attrib V40    0.10601434140114128
#>     Attrib V41    0.7464839678484649
#>     Attrib V42    -0.4863714955265679
#>     Attrib V43    -0.3939282905844899
#>     Attrib V44    -0.02036382200944272
#>     Attrib V45    0.49031540266672136
#>     Attrib V46    0.37740534103778167
#>     Attrib V47    0.5132301022257669
#>     Attrib V48    0.8768465512921773
#>     Attrib V49    0.8961078956532007
#>     Attrib V5    0.38653185299213827
#>     Attrib V50    -0.33364169936268545
#>     Attrib V51    0.34982705273024745
#>     Attrib V52    0.7061850626213211
#>     Attrib V53    0.8863355153089473
#>     Attrib V54    0.2527600278344441
#>     Attrib V55    -0.7022819332283038
#>     Attrib V56    -0.4689312307224756
#>     Attrib V57    -0.10086474819787045
#>     Attrib V58    -0.07666850370829417
#>     Attrib V59    -0.4182088481048891
#>     Attrib V6    0.5627338814417685
#>     Attrib V60    -0.18039534929352147
#>     Attrib V7    -0.23477381011074752
#>     Attrib V8    -0.7005656194551472
#>     Attrib V9    1.3266521095218595
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.16987026736398594
#>     Attrib V1    0.23568474774258846
#>     Attrib V10    0.0010621652436716724
#>     Attrib V11    -0.4995934709834627
#>     Attrib V12    -0.4699868783565488
#>     Attrib V13    0.6019568528444991
#>     Attrib V14    0.8559030907744458
#>     Attrib V15    0.4614438506164997
#>     Attrib V16    -0.09926223448491361
#>     Attrib V17    -0.39026968279290475
#>     Attrib V18    -0.1518272770724497
#>     Attrib V19    -0.23694646838848746
#>     Attrib V2    0.04476153914052706
#>     Attrib V20    -0.24020631093617809
#>     Attrib V21    -0.4616123470318042
#>     Attrib V22    -0.3754791136142041
#>     Attrib V23    -0.4207846300506767
#>     Attrib V24    -0.49126564903239917
#>     Attrib V25    0.0857857913051062
#>     Attrib V26    0.47864606543707783
#>     Attrib V27    0.282837210954437
#>     Attrib V28    0.19392336894484405
#>     Attrib V29    0.8937917831092249
#>     Attrib V3    0.0480707218540942
#>     Attrib V30    -0.609942100582273
#>     Attrib V31    0.8651039643316125
#>     Attrib V32    0.2353935873133267
#>     Attrib V33    -0.5395101312565742
#>     Attrib V34    0.06841390112914472
#>     Attrib V35    0.18204372807770342
#>     Attrib V36    0.6366998701784045
#>     Attrib V37    0.3801793452435657
#>     Attrib V38    -0.432474767050232
#>     Attrib V39    -0.00945858856620263
#>     Attrib V4    -0.42040379727896887
#>     Attrib V40    0.5444083555030005
#>     Attrib V41    -0.013444912548933147
#>     Attrib V42    -0.17047857154526155
#>     Attrib V43    -0.17895210517918286
#>     Attrib V44    -0.5444754057064702
#>     Attrib V45    -0.32544134992492
#>     Attrib V46    -0.0354299310232318
#>     Attrib V47    -0.06386449042504888
#>     Attrib V48    -0.43313894464831443
#>     Attrib V49    -0.8023625969284276
#>     Attrib V5    -0.16852626628158415
#>     Attrib V50    0.38966240504487454
#>     Attrib V51    -0.12839918129731323
#>     Attrib V52    -0.11685701888447708
#>     Attrib V53    -0.2933808230412546
#>     Attrib V54    -0.6671750864063719
#>     Attrib V55    0.5318243779236643
#>     Attrib V56    -0.38656575368376267
#>     Attrib V57    -0.1567726756542105
#>     Attrib V58    -0.03765023576306045
#>     Attrib V59    -0.18188394309786404
#>     Attrib V6    0.2270792278130368
#>     Attrib V60    0.14285162219597983
#>     Attrib V7    0.06369472307362245
#>     Attrib V8    0.1348453004044355
#>     Attrib V9    -0.745293015522698
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.33226302770874927
#>     Attrib V1    -0.14063065911041175
#>     Attrib V10    -0.0790570671051694
#>     Attrib V11    0.49807340375366055
#>     Attrib V12    0.5847722787686118
#>     Attrib V13    -0.33121162322229436
#>     Attrib V14    -0.4111484802690943
#>     Attrib V15    -0.25972598252244994
#>     Attrib V16    -0.015409541934802916
#>     Attrib V17    0.04142990998357479
#>     Attrib V18    0.01682881671074917
#>     Attrib V19    0.04499921182715567
#>     Attrib V2    0.0013646891444280182
#>     Attrib V20    0.11037457328765693
#>     Attrib V21    0.30460011935112913
#>     Attrib V22    0.07443947632386194
#>     Attrib V23    -0.024598685732922905
#>     Attrib V24    0.18237210626026923
#>     Attrib V25    -0.25700996459156006
#>     Attrib V26    -0.5107508368986753
#>     Attrib V27    -0.1680384155944697
#>     Attrib V28    -0.0852897771320511
#>     Attrib V29    -0.432006691538459
#>     Attrib V3    0.02449882743955408
#>     Attrib V30    0.5359486587290695
#>     Attrib V31    -0.6186281152199608
#>     Attrib V32    -0.054010604620934245
#>     Attrib V33    0.4668254894713618
#>     Attrib V34    -0.04173435138038417
#>     Attrib V35    -0.16308028655292148
#>     Attrib V36    -0.6655542664380188
#>     Attrib V37    -0.41685570142187195
#>     Attrib V38    0.1493301828350694
#>     Attrib V39    0.03029926959728177
#>     Attrib V4    0.31845897219554153
#>     Attrib V40    -0.35155474934341685
#>     Attrib V41    0.0910205487497072
#>     Attrib V42    0.053761409525799525
#>     Attrib V43    0.09762635083131033
#>     Attrib V44    0.18885711461274615
#>     Attrib V45    0.1972087202292743
#>     Attrib V46    -0.1191955221298817
#>     Attrib V47    -0.1350419245417338
#>     Attrib V48    0.24329061761744875
#>     Attrib V49    0.44635808267634797
#>     Attrib V5    0.06062374168358651
#>     Attrib V50    -0.41394134397039206
#>     Attrib V51    -0.0959119889967454
#>     Attrib V52    0.18255607758815193
#>     Attrib V53    0.288631416507715
#>     Attrib V54    0.45614846825527666
#>     Attrib V55    -0.31524354602610327
#>     Attrib V56    0.17856791030775215
#>     Attrib V57    0.15354984777686906
#>     Attrib V58    0.13619996158629816
#>     Attrib V59    0.15084944281454188
#>     Attrib V6    -0.09790432462603976
#>     Attrib V60    -0.12572917608885192
#>     Attrib V7    -0.10813627512569012
#>     Attrib V8    -0.04972783022546928
#>     Attrib V9    0.6525982785578037
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.15937025650163325
#>     Attrib V1    0.09659228331745391
#>     Attrib V10    0.10989708933884276
#>     Attrib V11    -0.06870688734697669
#>     Attrib V12    -0.09564454456350904
#>     Attrib V13    0.1018306327421019
#>     Attrib V14    0.1283403828963287
#>     Attrib V15    0.14431206003288413
#>     Attrib V16    0.13579011033572796
#>     Attrib V17    0.20477285856915622
#>     Attrib V18    0.18792108014044892
#>     Attrib V19    -0.030842165156248113
#>     Attrib V2    0.055583377056775574
#>     Attrib V20    -0.09755317893291313
#>     Attrib V21    -0.026314575137884336
#>     Attrib V22    0.03826176513833572
#>     Attrib V23    -0.05881359702079134
#>     Attrib V24    -0.13045973064745348
#>     Attrib V25    0.1250966638820319
#>     Attrib V26    0.149216544515067
#>     Attrib V27    -0.06018218834288557
#>     Attrib V28    -0.10786863660269012
#>     Attrib V29    0.0029797776370574024
#>     Attrib V3    0.022201536900985544
#>     Attrib V30    0.008334399605415427
#>     Attrib V31    0.36033895564510615
#>     Attrib V32    0.15501153671180584
#>     Attrib V33    0.0631184727977265
#>     Attrib V34    0.09006645641837158
#>     Attrib V35    0.1583756907889371
#>     Attrib V36    0.25579945823376143
#>     Attrib V37    0.18986764101605874
#>     Attrib V38    -0.05622186623154255
#>     Attrib V39    0.07637085370263191
#>     Attrib V4    0.01442213787773143
#>     Attrib V40    0.29194095604270015
#>     Attrib V41    0.1961230697699312
#>     Attrib V42    0.27896119709367106
#>     Attrib V43    0.15987406811448174
#>     Attrib V44    0.05268628734933426
#>     Attrib V45    0.020174280180072925
#>     Attrib V46    0.07706833296162201
#>     Attrib V47    0.06018886764018705
#>     Attrib V48    0.010336844122449493
#>     Attrib V49    -0.11269531616030129
#>     Attrib V5    0.023358321669149706
#>     Attrib V50    0.12511475972409652
#>     Attrib V51    0.013313077543901096
#>     Attrib V52    -0.11569634453450395
#>     Attrib V53    -0.09730428540163805
#>     Attrib V54    -0.024138707985396097
#>     Attrib V55    0.09297929487129857
#>     Attrib V56    0.07175331781081695
#>     Attrib V57    -0.0027385686539069254
#>     Attrib V58    0.018094528284456502
#>     Attrib V59    0.06959132957060511
#>     Attrib V6    0.12788172156121452
#>     Attrib V60    0.14061087157689156
#>     Attrib V7    0.10922471829294964
#>     Attrib V8    0.0968843450218714
#>     Attrib V9    -0.13819875728218695
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.06756514636205528
#>     Attrib V1    0.06480439643327252
#>     Attrib V10    -0.14145341246162188
#>     Attrib V11    0.2201216888234703
#>     Attrib V12    0.12921993799127685
#>     Attrib V13    -0.2510756901858882
#>     Attrib V14    -0.16585501005781478
#>     Attrib V15    -0.0011458466067004224
#>     Attrib V16    0.16815237188323692
#>     Attrib V17    0.16834620375761347
#>     Attrib V18    0.06576187167903057
#>     Attrib V19    0.09700679510670104
#>     Attrib V2    0.12552433638108268
#>     Attrib V20    0.22329015380850029
#>     Attrib V21    0.1917575583456547
#>     Attrib V22    -0.036523153645611414
#>     Attrib V23    -0.12579388624326146
#>     Attrib V24    -0.06956484995082587
#>     Attrib V25    -0.47515843495692467
#>     Attrib V26    -0.54457324070793
#>     Attrib V27    -0.33655595838233904
#>     Attrib V28    -0.2654476038543549
#>     Attrib V29    -0.43392216509468634
#>     Attrib V3    0.04863576734205684
#>     Attrib V30    0.29167406213518676
#>     Attrib V31    -0.41233044518313383
#>     Attrib V32    -0.08789370751918335
#>     Attrib V33    0.33865130009824446
#>     Attrib V34    -0.06455304730677569
#>     Attrib V35    -0.2009669970322824
#>     Attrib V36    -0.47227639310545755
#>     Attrib V37    -0.2605267669060087
#>     Attrib V38    0.26213627977930376
#>     Attrib V39    0.014958789740151765
#>     Attrib V4    0.376044292923993
#>     Attrib V40    -0.2784222751807014
#>     Attrib V41    -0.05752430974998458
#>     Attrib V42    0.11501196787250216
#>     Attrib V43    0.1241581538573228
#>     Attrib V44    0.21936373908037515
#>     Attrib V45    0.02279626769150255
#>     Attrib V46    -0.1493895649284398
#>     Attrib V47    -0.20903070855161027
#>     Attrib V48    0.06880578555044121
#>     Attrib V49    0.23245635074804355
#>     Attrib V5    0.05922616858273876
#>     Attrib V50    -0.2758069312214892
#>     Attrib V51    -0.10776049259008905
#>     Attrib V52    0.07699714556407994
#>     Attrib V53    0.24805945093023657
#>     Attrib V54    0.44545525736854696
#>     Attrib V55    -0.06626311313967162
#>     Attrib V56    0.21259105328179084
#>     Attrib V57    0.2267819240840208
#>     Attrib V58    0.18248381254925308
#>     Attrib V59    0.2959793387466801
#>     Attrib V6    -0.16132247183523005
#>     Attrib V60    0.012390821117396726
#>     Attrib V7    -0.04409838465890233
#>     Attrib V8    0.10411951829645795
#>     Attrib V9    0.37922281328848395
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.02134272144012884
#>     Attrib V1    0.11178885548600548
#>     Attrib V10    -0.1286580656488737
#>     Attrib V11    0.16649875394804314
#>     Attrib V12    0.15749362195928518
#>     Attrib V13    -0.18918378658609217
#>     Attrib V14    -0.017688769026882087
#>     Attrib V15    0.03949144072275151
#>     Attrib V16    0.12866045467077705
#>     Attrib V17    0.029291217223508123
#>     Attrib V18    0.07395778893814477
#>     Attrib V19    0.01705843119027495
#>     Attrib V2    0.09347602385991209
#>     Attrib V20    0.1190955069886161
#>     Attrib V21    0.1754675403569416
#>     Attrib V22    -0.07520166524954898
#>     Attrib V23    -0.11412962017494632
#>     Attrib V24    -0.10220784569129662
#>     Attrib V25    -0.36875050315538754
#>     Attrib V26    -0.4019325914131653
#>     Attrib V27    -0.1684430760083917
#>     Attrib V28    -0.04728351305043766
#>     Attrib V29    -0.18521741968548644
#>     Attrib V3    0.12760827745111386
#>     Attrib V30    0.27643498295993707
#>     Attrib V31    -0.3622117556826486
#>     Attrib V32    -0.08836731454510383
#>     Attrib V33    0.21679361660382934
#>     Attrib V34    -0.07230079745215208
#>     Attrib V35    -0.15340919402759995
#>     Attrib V36    -0.3073418487377854
#>     Attrib V37    -0.2175473054013892
#>     Attrib V38    0.0841866155350915
#>     Attrib V39    0.0633849872554823
#>     Attrib V4    0.266749767524122
#>     Attrib V40    -0.20062042145601539
#>     Attrib V41    -0.03233938652205443
#>     Attrib V42    0.10167395936108854
#>     Attrib V43    0.0192960958484347
#>     Attrib V44    0.13788981487355723
#>     Attrib V45    0.08079823176393111
#>     Attrib V46    -0.07608937563997027
#>     Attrib V47    -0.12555145948387705
#>     Attrib V48    0.03221320386772055
#>     Attrib V49    0.22653946448809956
#>     Attrib V5    0.09470656936086876
#>     Attrib V50    -0.18073462283214223
#>     Attrib V51    -0.026185814793783607
#>     Attrib V52    0.13135921417758167
#>     Attrib V53    0.242149190088233
#>     Attrib V54    0.2504438797362529
#>     Attrib V55    -0.06510674457715146
#>     Attrib V56    0.15140290159543965
#>     Attrib V57    0.20369492807936998
#>     Attrib V58    0.25023481409914533
#>     Attrib V59    0.21454051084210862
#>     Attrib V6    -0.05817929654802627
#>     Attrib V60    0.010875247654140236
#>     Attrib V7    -0.035331965560736436
#>     Attrib V8    0.11230581189201955
#>     Attrib V9    0.3070776494405547
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
