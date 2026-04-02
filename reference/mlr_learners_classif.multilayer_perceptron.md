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
#>     Threshold    0.1726546393755648
#>     Node 2    2.416018720994193
#>     Node 3    1.8960534358026664
#>     Node 4    1.1734453376099918
#>     Node 5    -3.0329294909287703
#>     Node 6    0.9912187738754215
#>     Node 7    2.9579489650504573
#>     Node 8    0.7383094567676666
#>     Node 9    2.431862691186379
#>     Node 10    -1.7108785821846282
#>     Node 11    1.5490222005457708
#>     Node 12    2.023551417679134
#>     Node 13    0.6098594224652705
#>     Node 14    1.564796026836585
#>     Node 15    -2.469486592620971
#>     Node 16    0.33119892207573076
#>     Node 17    0.14986028718699154
#>     Node 18    -0.21213382170301365
#>     Node 19    2.071479468527728
#>     Node 20    1.8599085844474117
#>     Node 21    -2.1908878734132253
#>     Node 22    0.9620192303973029
#>     Node 23    1.8079956535989294
#>     Node 24    -0.7244311716663335
#>     Node 25    3.1499961469037334
#>     Node 26    -1.1564982014526024
#>     Node 27    1.7832423184106234
#>     Node 28    -2.504810837400663
#>     Node 29    1.4235150903214915
#>     Node 30    -1.0234335937633705
#>     Node 31    1.1931518263303718
#>     Node 32    0.6227514889642813
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.1477981568158277
#>     Node 2    -2.444851633580613
#>     Node 3    -1.8663666371673324
#>     Node 4    -1.1294593804027833
#>     Node 5    3.045248327150825
#>     Node 6    -0.9714269340825844
#>     Node 7    -2.9673821879826257
#>     Node 8    -0.7836231548233301
#>     Node 9    -2.4317862376730637
#>     Node 10    1.661674686201618
#>     Node 11    -1.5092506310363378
#>     Node 12    -2.0889406065501657
#>     Node 13    -0.5638745010341139
#>     Node 14    -1.4916050833397925
#>     Node 15    2.4534188673754103
#>     Node 16    -0.35776104619602994
#>     Node 17    -0.13071845710775365
#>     Node 18    0.2453877076794767
#>     Node 19    -2.0525499450494964
#>     Node 20    -1.8550804248533008
#>     Node 21    2.239515715328767
#>     Node 22    -1.01562484823047
#>     Node 23    -1.8433546444512905
#>     Node 24    0.7153979764510848
#>     Node 25    -3.161138445501974
#>     Node 26    1.079174752935978
#>     Node 27    -1.8150632750849431
#>     Node 28    2.4593472079479257
#>     Node 29    -1.4468152748088103
#>     Node 30    1.1086886127289899
#>     Node 31    -1.13392034092274
#>     Node 32    -0.6474742188578465
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.37500488861563125
#>     Attrib V1    0.24332762579768483
#>     Attrib V10    -0.0036558093765011756
#>     Attrib V11    -0.052942989627309915
#>     Attrib V12    -0.011845408464357457
#>     Attrib V13    -0.4152953189157619
#>     Attrib V14    -0.22484172470899902
#>     Attrib V15    0.13343152440674616
#>     Attrib V16    0.05802691228315206
#>     Attrib V17    0.10377788207000659
#>     Attrib V18    -0.48227905683553285
#>     Attrib V19    0.4271397258238928
#>     Attrib V2    -0.10837828746850896
#>     Attrib V20    0.8412229756419222
#>     Attrib V21    0.5552524201552091
#>     Attrib V22    0.20795810918906926
#>     Attrib V23    0.06547536483247032
#>     Attrib V24    0.363353860927075
#>     Attrib V25    -0.7955704814042952
#>     Attrib V26    -0.9028333998386966
#>     Attrib V27    -0.5632561328826594
#>     Attrib V28    -0.4071609255013407
#>     Attrib V29    -1.0728641821654792
#>     Attrib V3    0.12362816671260292
#>     Attrib V30    0.11653346308942278
#>     Attrib V31    -0.9149955336516322
#>     Attrib V32    -0.26117087794688454
#>     Attrib V33    0.1025917337906735
#>     Attrib V34    0.03629898470813919
#>     Attrib V35    -0.2392087863488745
#>     Attrib V36    -0.9308339839627549
#>     Attrib V37    -1.0950444119025196
#>     Attrib V38    0.5537447007473189
#>     Attrib V39    0.6173170716670655
#>     Attrib V4    0.44014857228658294
#>     Attrib V40    -0.3343957178351184
#>     Attrib V41    -0.15773269076728488
#>     Attrib V42    0.6382213486386358
#>     Attrib V43    0.3652335263964414
#>     Attrib V44    0.4196418549137929
#>     Attrib V45    0.6864687493283822
#>     Attrib V46    0.3308420020882196
#>     Attrib V47    -0.27977902065881666
#>     Attrib V48    0.0982574476771248
#>     Attrib V49    0.44566166846444294
#>     Attrib V5    0.4493156746548445
#>     Attrib V50    -1.0004635067223604
#>     Attrib V51    -0.42627675807846155
#>     Attrib V52    -0.14530805709314967
#>     Attrib V53    0.2634631613857465
#>     Attrib V54    0.739478453548269
#>     Attrib V55    -0.5061219344488354
#>     Attrib V56    0.5969728744852337
#>     Attrib V57    0.16898458183080126
#>     Attrib V58    0.2841849071097556
#>     Attrib V59    0.9253158387912145
#>     Attrib V6    -0.14146854928290198
#>     Attrib V60    0.25032123844191845
#>     Attrib V7    0.2399055310645204
#>     Attrib V8    -0.14773222582534337
#>     Attrib V9    0.2756535218743517
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.3003361353736876
#>     Attrib V1    0.14961604481867305
#>     Attrib V10    -0.12096661310626539
#>     Attrib V11    -0.13843839210190423
#>     Attrib V12    0.0037531846468768395
#>     Attrib V13    -0.30842386751206824
#>     Attrib V14    -0.11968269259865251
#>     Attrib V15    0.25847243030760575
#>     Attrib V16    0.11412752158959343
#>     Attrib V17    0.10820788567213313
#>     Attrib V18    -0.4160443746079447
#>     Attrib V19    0.3235752567046129
#>     Attrib V2    -0.0729360174675164
#>     Attrib V20    0.5745645122676071
#>     Attrib V21    0.35044764517945304
#>     Attrib V22    0.15802430971355502
#>     Attrib V23    0.021972631253443543
#>     Attrib V24    0.261034009973264
#>     Attrib V25    -0.5751434699301732
#>     Attrib V26    -0.7436231156070324
#>     Attrib V27    -0.5003753963360698
#>     Attrib V28    -0.3975263322813396
#>     Attrib V29    -0.9262626087210828
#>     Attrib V3    0.06426785387688064
#>     Attrib V30    0.025766455712463863
#>     Attrib V31    -0.6312043239980609
#>     Attrib V32    -0.15904882854596103
#>     Attrib V33    0.13656221429755735
#>     Attrib V34    0.03594685767323957
#>     Attrib V35    -0.16194172317145047
#>     Attrib V36    -0.7450543143088041
#>     Attrib V37    -0.8664158974453383
#>     Attrib V38    0.29627843297548556
#>     Attrib V39    0.4461995296851417
#>     Attrib V4    0.32770926747237866
#>     Attrib V40    -0.22578360503450778
#>     Attrib V41    -0.12163309787850345
#>     Attrib V42    0.45880929489444244
#>     Attrib V43    0.2727188195597993
#>     Attrib V44    0.29193429164059415
#>     Attrib V45    0.4726816456083399
#>     Attrib V46    0.264015491810934
#>     Attrib V47    -0.16105704257223769
#>     Attrib V48    0.06813704655852627
#>     Attrib V49    0.2960848629382803
#>     Attrib V5    0.30710749138512783
#>     Attrib V50    -0.7298902589014599
#>     Attrib V51    -0.35218533535548796
#>     Attrib V52    -0.0836862068053254
#>     Attrib V53    0.17918569817475125
#>     Attrib V54    0.6461475196912595
#>     Attrib V55    -0.24201829332254327
#>     Attrib V56    0.4727476302415245
#>     Attrib V57    0.2799952994394876
#>     Attrib V58    0.31855599719454725
#>     Attrib V59    0.7897978180004032
#>     Attrib V6    -0.07736275066804846
#>     Attrib V60    0.2723054734964494
#>     Attrib V7    0.12974958413956003
#>     Attrib V8    -0.12436419231902718
#>     Attrib V9    0.08027260616380318
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.14944457906606193
#>     Attrib V1    0.032426338383153064
#>     Attrib V10    -0.07353217683692265
#>     Attrib V11    -0.046588907088099527
#>     Attrib V12    0.05640292061461928
#>     Attrib V13    -0.1545769555183109
#>     Attrib V14    -0.03576881270482923
#>     Attrib V15    0.1508160244339957
#>     Attrib V16    0.035813488527695975
#>     Attrib V17    0.057043352367867554
#>     Attrib V18    -0.26874649405948475
#>     Attrib V19    0.17809959701293232
#>     Attrib V2    -0.10393927119118547
#>     Attrib V20    0.3356812142423927
#>     Attrib V21    0.24988528814221464
#>     Attrib V22    0.051284670394611806
#>     Attrib V23    0.020871795894687874
#>     Attrib V24    0.1848199143381502
#>     Attrib V25    -0.3695639680517442
#>     Attrib V26    -0.4272945097854234
#>     Attrib V27    -0.3032032191453309
#>     Attrib V28    -0.18058130234635839
#>     Attrib V29    -0.4642431077214258
#>     Attrib V3    0.06114617044528687
#>     Attrib V30    0.005435845433494614
#>     Attrib V31    -0.38092628284780394
#>     Attrib V32    -0.13340180260856682
#>     Attrib V33    0.04958685325430338
#>     Attrib V34    0.08775757006334235
#>     Attrib V35    -0.025239290061518094
#>     Attrib V36    -0.4104118785227715
#>     Attrib V37    -0.4880361034877422
#>     Attrib V38    0.18145346495281867
#>     Attrib V39    0.27316048361027184
#>     Attrib V4    0.20843023124922658
#>     Attrib V40    -0.14623372941950177
#>     Attrib V41    -0.126515677789774
#>     Attrib V42    0.24514270852981881
#>     Attrib V43    0.13917138108988927
#>     Attrib V44    0.2023292379592228
#>     Attrib V45    0.378257989545286
#>     Attrib V46    0.17680630334068115
#>     Attrib V47    -0.1383131713323419
#>     Attrib V48    0.07850110382694345
#>     Attrib V49    0.23948087683286307
#>     Attrib V5    0.25483037905330896
#>     Attrib V50    -0.4514130640333127
#>     Attrib V51    -0.1482096304223364
#>     Attrib V52    -0.049875954052912654
#>     Attrib V53    0.1808268792073857
#>     Attrib V54    0.34093655900592684
#>     Attrib V55    -0.16330439919416984
#>     Attrib V56    0.29645740920630637
#>     Attrib V57    0.19171040865835673
#>     Attrib V58    0.15198563217524597
#>     Attrib V59    0.5055359333279548
#>     Attrib V6    -0.03990116300488464
#>     Attrib V60    0.16542597318916907
#>     Attrib V7    0.05532899421525977
#>     Attrib V8    -0.1451350795296836
#>     Attrib V9    0.0938641339275338
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.7717205358355174
#>     Attrib V1    -0.09037318643941655
#>     Attrib V10    -1.5336872836744249
#>     Attrib V11    -1.343051543721284
#>     Attrib V12    -0.7942396987489321
#>     Attrib V13    0.20361042699455587
#>     Attrib V14    0.6942852588595491
#>     Attrib V15    0.7878571424231748
#>     Attrib V16    0.6206419276292983
#>     Attrib V17    0.3827030274392283
#>     Attrib V18    0.8659574945446059
#>     Attrib V19    -0.3776260875175638
#>     Attrib V2    0.2003538784162495
#>     Attrib V20    -0.6746795184438724
#>     Attrib V21    -0.3830602705642214
#>     Attrib V22    -0.623842379808062
#>     Attrib V23    -0.5963318684915919
#>     Attrib V24    -0.6187656883672366
#>     Attrib V25    0.7453808741197546
#>     Attrib V26    -1.1291197852601176E-4
#>     Attrib V27    -0.28914424683268003
#>     Attrib V28    -0.3676043824270716
#>     Attrib V29    0.2400804307481627
#>     Attrib V3    0.054798012122719855
#>     Attrib V30    -0.8244046366753606
#>     Attrib V31    0.7526102271619892
#>     Attrib V32    0.17482565072597256
#>     Attrib V33    0.3708643660945278
#>     Attrib V34    0.3853995795047178
#>     Attrib V35    0.33673812062295955
#>     Attrib V36    0.7514525798031103
#>     Attrib V37    0.5124126494437578
#>     Attrib V38    -0.5895418263117946
#>     Attrib V39    -0.4024054175463537
#>     Attrib V4    -0.6078730312691771
#>     Attrib V40    0.7163154410678405
#>     Attrib V41    0.11966543102866695
#>     Attrib V42    -0.10385510444533153
#>     Attrib V43    0.0037748757729014724
#>     Attrib V44    -0.657917311514312
#>     Attrib V45    -0.9865043136694759
#>     Attrib V46    -0.6394364725902786
#>     Attrib V47    0.16229102408144452
#>     Attrib V48    -0.3206000625204586
#>     Attrib V49    -0.9690125718247075
#>     Attrib V5    -0.4818250438352255
#>     Attrib V50    1.1433411752818654
#>     Attrib V51    -0.10853323223380125
#>     Attrib V52    -0.7568013739237862
#>     Attrib V53    -0.146666603730846
#>     Attrib V54    -0.13805062890984846
#>     Attrib V55    1.4403354864317373
#>     Attrib V56    -0.20461972422046903
#>     Attrib V57    0.5217627332020015
#>     Attrib V58    -0.3019522590883234
#>     Attrib V59    -0.09060493954502973
#>     Attrib V6    -0.2939649656569788
#>     Attrib V60    0.9413633641876366
#>     Attrib V7    0.2494550318265882
#>     Attrib V8    -0.06539825658409122
#>     Attrib V9    -1.5243117898709075
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.17258651436921427
#>     Attrib V1    0.09270861381451728
#>     Attrib V10    -0.10516409839553734
#>     Attrib V11    -0.046366171016206936
#>     Attrib V12    0.09983678787018717
#>     Attrib V13    -0.17768982819926166
#>     Attrib V14    -0.05535235073798905
#>     Attrib V15    0.0959412655055774
#>     Attrib V16    0.08494897352905881
#>     Attrib V17    0.01754620653346928
#>     Attrib V18    -0.17261762065805444
#>     Attrib V19    0.10880895708329519
#>     Attrib V2    -0.04687645685459818
#>     Attrib V20    0.23965269185045032
#>     Attrib V21    0.15863414653314042
#>     Attrib V22    1.4355394458190189E-4
#>     Attrib V23    -0.011114050890176327
#>     Attrib V24    0.19866530665847035
#>     Attrib V25    -0.2182766489490739
#>     Attrib V26    -0.35808222761152086
#>     Attrib V27    -0.20299418423732737
#>     Attrib V28    -0.1978462579370939
#>     Attrib V29    -0.4060297418348784
#>     Attrib V3    0.04558153518724953
#>     Attrib V30    -0.005736847897655571
#>     Attrib V31    -0.32026038297907006
#>     Attrib V32    -0.08427653075420752
#>     Attrib V33    0.03894570194301984
#>     Attrib V34    0.0631428808697417
#>     Attrib V35    0.00986224445320743
#>     Attrib V36    -0.33928194480307106
#>     Attrib V37    -0.37927377051793915
#>     Attrib V38    0.1618863732113785
#>     Attrib V39    0.20941591619249267
#>     Attrib V4    0.22836286331718328
#>     Attrib V40    -0.14301244095419974
#>     Attrib V41    -0.04706078756000603
#>     Attrib V42    0.18844724456224568
#>     Attrib V43    0.11362032240421177
#>     Attrib V44    0.13208585584324117
#>     Attrib V45    0.25821673301660164
#>     Attrib V46    0.1798524218971465
#>     Attrib V47    -0.10331419773705343
#>     Attrib V48    0.005577434256324205
#>     Attrib V49    0.13279215273761458
#>     Attrib V5    0.19205802111542816
#>     Attrib V50    -0.34870060576315337
#>     Attrib V51    -0.143466839804743
#>     Attrib V52    -0.06062408227899419
#>     Attrib V53    0.18456819102927122
#>     Attrib V54    0.29720628080138306
#>     Attrib V55    -0.10338658699074757
#>     Attrib V56    0.25618651429240535
#>     Attrib V57    0.2048259713342212
#>     Attrib V58    0.17180092136768263
#>     Attrib V59    0.4918689140028476
#>     Attrib V6    0.05664708842975835
#>     Attrib V60    0.23732018054709383
#>     Attrib V7    0.07747760396700884
#>     Attrib V8    -0.057700500441297285
#>     Attrib V9    0.06885731100502479
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.6544161321763073
#>     Attrib V1    0.11694917879709105
#>     Attrib V10    1.4907324423101176
#>     Attrib V11    1.4648201628727677
#>     Attrib V12    0.9368518577056177
#>     Attrib V13    0.03137027631792063
#>     Attrib V14    -0.47192649210414706
#>     Attrib V15    -0.7999947759089265
#>     Attrib V16    -0.7410206549782641
#>     Attrib V17    -0.5945883568263224
#>     Attrib V18    -0.7663734503781354
#>     Attrib V19    0.28619555036984773
#>     Attrib V2    -0.18527830756691574
#>     Attrib V20    0.40228367914025775
#>     Attrib V21    0.2581722727876225
#>     Attrib V22    0.4432833058267728
#>     Attrib V23    0.6097789660853747
#>     Attrib V24    0.6454307862466184
#>     Attrib V25    -0.3328234217843888
#>     Attrib V26    0.34854730585628135
#>     Attrib V27    0.6010583808858388
#>     Attrib V28    0.5878394668188988
#>     Attrib V29    0.125237041593108
#>     Attrib V3    -0.0033804579591809824
#>     Attrib V30    0.635532918382829
#>     Attrib V31    -0.5201475170168679
#>     Attrib V32    -0.24321303772860373
#>     Attrib V33    -0.5557602358369308
#>     Attrib V34    -0.3396251459472519
#>     Attrib V35    -0.10482113102754795
#>     Attrib V36    -0.46774891750436737
#>     Attrib V37    -0.3604677519816128
#>     Attrib V38    0.26102557146996735
#>     Attrib V39    0.2310195174758839
#>     Attrib V4    0.532401460509073
#>     Attrib V40    -0.45646064382242363
#>     Attrib V41    -4.259802261691488E-4
#>     Attrib V42    0.002199540897707298
#>     Attrib V43    0.02245714438305401
#>     Attrib V44    0.6234003895726866
#>     Attrib V45    0.7619522660777475
#>     Attrib V46    0.6006758505032032
#>     Attrib V47    0.07104973857720956
#>     Attrib V48    0.4036447787486654
#>     Attrib V49    0.8412309440746967
#>     Attrib V5    0.46565734652326685
#>     Attrib V50    -0.7725528500528377
#>     Attrib V51    0.22168430659441296
#>     Attrib V52    0.7621611910264873
#>     Attrib V53    0.3431641529597405
#>     Attrib V54    0.17516421695375212
#>     Attrib V55    -1.1675854333778442
#>     Attrib V56    0.12948807128248485
#>     Attrib V57    -0.45586265045151003
#>     Attrib V58    0.24456096988186546
#>     Attrib V59    0.16355757765707407
#>     Attrib V6    0.2970479117630514
#>     Attrib V60    -0.6780695074667649
#>     Attrib V7    -0.22747161960898904
#>     Attrib V8    0.06433154097079917
#>     Attrib V9    1.337445956983016
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.1266083609041333
#>     Attrib V1    0.0029562925061415667
#>     Attrib V10    0.04437572299214215
#>     Attrib V11    0.06559938236645992
#>     Attrib V12    0.10113591248142793
#>     Attrib V13    -0.07454394251708192
#>     Attrib V14    -0.09282541531896958
#>     Attrib V15    0.005498432065674772
#>     Attrib V16    0.005719298738803393
#>     Attrib V17    -0.04685460800549158
#>     Attrib V18    -0.25688316528292077
#>     Attrib V19    0.023021155835907175
#>     Attrib V2    -0.05120853551994911
#>     Attrib V20    0.006536667138736843
#>     Attrib V21    -0.016527558972913414
#>     Attrib V22    -0.06395747923633055
#>     Attrib V23    -0.03664815040275087
#>     Attrib V24    0.17278260729678344
#>     Attrib V25    -0.1307562866907103
#>     Attrib V26    -0.13560062991568209
#>     Attrib V27    -0.05018245223449645
#>     Attrib V28    0.01324158336673277
#>     Attrib V29    -0.15314500052630658
#>     Attrib V3    0.026204378397066196
#>     Attrib V30    0.10161843401797054
#>     Attrib V31    -0.12615617762779877
#>     Attrib V32    -0.013962396356753181
#>     Attrib V33    0.02900565504639742
#>     Attrib V34    0.06890906739793495
#>     Attrib V35    0.0460033328240002
#>     Attrib V36    -0.11956871944792287
#>     Attrib V37    -0.21042033898354937
#>     Attrib V38    0.1744250190086773
#>     Attrib V39    0.14473398266430962
#>     Attrib V4    0.20766871391124778
#>     Attrib V40    -0.08838177778496453
#>     Attrib V41    -0.06568764312149988
#>     Attrib V42    -0.0060842808741182865
#>     Attrib V43    0.05088482164062164
#>     Attrib V44    0.18258358126419083
#>     Attrib V45    0.23031005992363818
#>     Attrib V46    0.19526872055539712
#>     Attrib V47    -0.016888999590602347
#>     Attrib V48    0.11542210649187823
#>     Attrib V49    0.17345852162650757
#>     Attrib V5    0.14800583790066363
#>     Attrib V50    -0.31056561491830326
#>     Attrib V51    -0.08416867374697272
#>     Attrib V52    -0.0040197920911976244
#>     Attrib V53    0.13928653808924854
#>     Attrib V54    0.205359280527105
#>     Attrib V55    -0.10794478057438439
#>     Attrib V56    0.11760936810422987
#>     Attrib V57    0.18553948536029616
#>     Attrib V58    0.080814103098705
#>     Attrib V59    0.3509212638639583
#>     Attrib V6    0.018648925545511605
#>     Attrib V60    0.174403454655093
#>     Attrib V7    0.0346117665884545
#>     Attrib V8    -0.075550649877122
#>     Attrib V9    0.07923045937819605
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.6652610898876491
#>     Attrib V1    0.06331172132553206
#>     Attrib V10    1.131865988711319
#>     Attrib V11    1.0497249929343024
#>     Attrib V12    0.8125550557387334
#>     Attrib V13    -0.0023466670021145574
#>     Attrib V14    -0.48284869099513855
#>     Attrib V15    -0.5628928228236141
#>     Attrib V16    -0.5386948441608801
#>     Attrib V17    -0.3494684550384837
#>     Attrib V18    -0.7203554356031692
#>     Attrib V19    0.2175218557679583
#>     Attrib V2    -0.21804098646116668
#>     Attrib V20    0.3636611090381302
#>     Attrib V21    0.21164367756324998
#>     Attrib V22    0.3391112057004366
#>     Attrib V23    0.4232668540185694
#>     Attrib V24    0.667569745553371
#>     Attrib V25    -0.3184449639818
#>     Attrib V26    0.09057910304900284
#>     Attrib V27    0.37981744869286954
#>     Attrib V28    0.41297459113798546
#>     Attrib V29    -0.13989166120347976
#>     Attrib V3    -0.06881987566580494
#>     Attrib V30    0.5783990747737515
#>     Attrib V31    -0.5347270613483464
#>     Attrib V32    -0.1844158100787607
#>     Attrib V33    -0.38596095794819946
#>     Attrib V34    -0.2233210766149595
#>     Attrib V35    -0.11630756983110511
#>     Attrib V36    -0.47959933559709683
#>     Attrib V37    -0.4320197911496466
#>     Attrib V38    0.43817382070325417
#>     Attrib V39    0.3852987769602759
#>     Attrib V4    0.457957299646267
#>     Attrib V40    -0.5248923301908638
#>     Attrib V41    -0.15469017387762166
#>     Attrib V42    0.008921802784950476
#>     Attrib V43    0.08640030461659093
#>     Attrib V44    0.5345655775870802
#>     Attrib V45    0.7205797646843426
#>     Attrib V46    0.5487853874379108
#>     Attrib V47    -0.05462983838503794
#>     Attrib V48    0.27773255718844564
#>     Attrib V49    0.7540911860258135
#>     Attrib V5    0.4036721545567859
#>     Attrib V50    -0.938655418399889
#>     Attrib V51    0.03693570904161219
#>     Attrib V52    0.522945146352552
#>     Attrib V53    0.32790483183597524
#>     Attrib V54    0.28468042504722796
#>     Attrib V55    -1.049242171098733
#>     Attrib V56    0.2333987143448304
#>     Attrib V57    -0.38835984327825046
#>     Attrib V58    0.1401801429280864
#>     Attrib V59    0.3294190373707106
#>     Attrib V6    0.20808157286559117
#>     Attrib V60    -0.5163884089582117
#>     Attrib V7    -0.1566859848092321
#>     Attrib V8    -0.0617149893635562
#>     Attrib V9    0.9824891942888332
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.7025833367099279
#>     Attrib V1    0.05640819944444634
#>     Attrib V10    -0.594553628586782
#>     Attrib V11    -0.5926010729915134
#>     Attrib V12    -0.5155137811611752
#>     Attrib V13    0.1910424693713396
#>     Attrib V14    0.36960344847440463
#>     Attrib V15    0.2863317888774501
#>     Attrib V16    0.3591873347377036
#>     Attrib V17    0.3365091321055264
#>     Attrib V18    0.713665251676416
#>     Attrib V19    0.02346385831023276
#>     Attrib V2    0.2778673420472075
#>     Attrib V20    0.029585434580536602
#>     Attrib V21    0.13500600712863794
#>     Attrib V22    0.035249977577627066
#>     Attrib V23    -0.008818635979304964
#>     Attrib V24    -0.46711635171735594
#>     Attrib V25    0.28842412372669873
#>     Attrib V26    0.0661036450866408
#>     Attrib V27    -0.24674926332742922
#>     Attrib V28    -0.36245500906763345
#>     Attrib V29    0.10837331446890502
#>     Attrib V3    0.14628798256032258
#>     Attrib V30    -0.27561064223805753
#>     Attrib V31    0.39487379440116116
#>     Attrib V32    -0.03776252800215757
#>     Attrib V33    0.225388186704756
#>     Attrib V34    0.12623088161690452
#>     Attrib V35    0.04845621074041982
#>     Attrib V36    0.4065906325574763
#>     Attrib V37    0.5609114011333781
#>     Attrib V38    -0.21827059022768427
#>     Attrib V39    -0.28767877960412075
#>     Attrib V4    -0.32608010874883836
#>     Attrib V40    0.37482624460176445
#>     Attrib V41    0.13103911937964982
#>     Attrib V42    -0.014982304646896911
#>     Attrib V43    -0.08673433352277626
#>     Attrib V44    -0.4201969936509926
#>     Attrib V45    -0.5320851173669444
#>     Attrib V46    -0.45372320468387145
#>     Attrib V47    0.0949179977807762
#>     Attrib V48    -0.27820543350978527
#>     Attrib V49    -0.5670544276894077
#>     Attrib V5    -0.30500540498693157
#>     Attrib V50    0.7377018365806784
#>     Attrib V51    0.030296800951355892
#>     Attrib V52    -0.3999187796643091
#>     Attrib V53    -0.1392500804876633
#>     Attrib V54    -0.21702728847189148
#>     Attrib V55    0.560932433420096
#>     Attrib V56    -0.08162533310533368
#>     Attrib V57    -0.021766400939437203
#>     Attrib V58    -0.2988439964076824
#>     Attrib V59    -0.5722087572577316
#>     Attrib V6    -0.1468378039662368
#>     Attrib V60    0.07653772467153892
#>     Attrib V7    -0.07156907209365286
#>     Attrib V8    -0.04250231784520042
#>     Attrib V9    -0.5830003825130448
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.25694488721698583
#>     Attrib V1    0.06047139402859142
#>     Attrib V10    -0.07874466513572984
#>     Attrib V11    -0.04241987371685679
#>     Attrib V12    0.09793291736069112
#>     Attrib V13    -0.3007769029659386
#>     Attrib V14    -0.15773201026162262
#>     Attrib V15    0.10809549410829997
#>     Attrib V16    0.06068887553578438
#>     Attrib V17    0.10906334302305948
#>     Attrib V18    -0.3219611563859215
#>     Attrib V19    0.23819575420868708
#>     Attrib V2    -0.15071140478714565
#>     Attrib V20    0.4872916537719089
#>     Attrib V21    0.25309273849048947
#>     Attrib V22    0.06321120345270907
#>     Attrib V23    0.015840727214691167
#>     Attrib V24    0.2667056317318467
#>     Attrib V25    -0.4216568661902329
#>     Attrib V26    -0.5886446256064501
#>     Attrib V27    -0.35746140383640046
#>     Attrib V28    -0.26932711344135213
#>     Attrib V29    -0.708968488699956
#>     Attrib V3    -0.016164793673425708
#>     Attrib V30    0.02326217337433605
#>     Attrib V31    -0.5654654565190568
#>     Attrib V32    -0.19612666085354816
#>     Attrib V33    0.04022320861267493
#>     Attrib V34    0.1206048806437455
#>     Attrib V35    -0.03937874445604516
#>     Attrib V36    -0.5428294107598116
#>     Attrib V37    -0.6981450691647644
#>     Attrib V38    0.339767503559324
#>     Attrib V39    0.3396846080917117
#>     Attrib V4    0.27189671466683973
#>     Attrib V40    -0.24633584580600626
#>     Attrib V41    -0.196672831096375
#>     Attrib V42    0.3046583358093177
#>     Attrib V43    0.19615635176185012
#>     Attrib V44    0.2817992169821144
#>     Attrib V45    0.4939560122242743
#>     Attrib V46    0.2589235778282485
#>     Attrib V47    -0.13086795742557447
#>     Attrib V48    0.11016885232925859
#>     Attrib V49    0.27218158917909335
#>     Attrib V5    0.3178473669958763
#>     Attrib V50    -0.6083912491734785
#>     Attrib V51    -0.19317054848647508
#>     Attrib V52    -0.09937508799305442
#>     Attrib V53    0.17112743546204418
#>     Attrib V54    0.5298884492736058
#>     Attrib V55    -0.23596782051034987
#>     Attrib V56    0.36735167146557396
#>     Attrib V57    0.21191396942893717
#>     Attrib V58    0.2124310147899061
#>     Attrib V59    0.5888703674062111
#>     Attrib V6    -0.0052744467274710915
#>     Attrib V60    0.21404942280181444
#>     Attrib V7    0.07749658863049762
#>     Attrib V8    -0.10682281265282764
#>     Attrib V9    0.14050587428899788
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.49880081343801663
#>     Attrib V1    0.09784332216887434
#>     Attrib V10    -0.031562169828110755
#>     Attrib V11    0.09811713998134358
#>     Attrib V12    0.09713094007475925
#>     Attrib V13    -0.33598644875181116
#>     Attrib V14    -0.21106236662965386
#>     Attrib V15    0.07863813998350157
#>     Attrib V16    0.031358266339084895
#>     Attrib V17    0.03285845689988966
#>     Attrib V18    -0.5210535953199783
#>     Attrib V19    0.4065203150712422
#>     Attrib V2    -0.13000845448202564
#>     Attrib V20    0.6178888457683811
#>     Attrib V21    0.3652548733001254
#>     Attrib V22    0.19847405578726132
#>     Attrib V23    0.08548781105872891
#>     Attrib V24    0.35754651863879017
#>     Attrib V25    -0.655961641967613
#>     Attrib V26    -0.7052898735768932
#>     Attrib V27    -0.3547325217619686
#>     Attrib V28    -0.29263589975803633
#>     Attrib V29    -0.8512927169468023
#>     Attrib V3    -0.028498677204643583
#>     Attrib V30    0.0876913844330013
#>     Attrib V31    -0.7734179458767348
#>     Attrib V32    -0.24990452626878584
#>     Attrib V33    0.055297428877081896
#>     Attrib V34    0.05322528637916538
#>     Attrib V35    -0.15857855073516494
#>     Attrib V36    -0.7822674345780721
#>     Attrib V37    -0.9772579699991559
#>     Attrib V38    0.4227700209636993
#>     Attrib V39    0.45449685489832814
#>     Attrib V4    0.42337086184974576
#>     Attrib V40    -0.32564401183560376
#>     Attrib V41    -0.20131358626843174
#>     Attrib V42    0.4413699367402726
#>     Attrib V43    0.3359847357412793
#>     Attrib V44    0.3167082198335322
#>     Attrib V45    0.638109410298499
#>     Attrib V46    0.4001979055888405
#>     Attrib V47    -0.22607168118971252
#>     Attrib V48    0.1609244743041933
#>     Attrib V49    0.42316156324327664
#>     Attrib V5    0.3975683227219879
#>     Attrib V50    -0.927480686208444
#>     Attrib V51    -0.35771119756458075
#>     Attrib V52    -0.026528051950570442
#>     Attrib V53    0.2689979870630869
#>     Attrib V54    0.6499941601886842
#>     Attrib V55    -0.47751881974671506
#>     Attrib V56    0.4744868140612408
#>     Attrib V57    0.20030346163153653
#>     Attrib V58    0.30059023433886056
#>     Attrib V59    0.8282391072413744
#>     Attrib V6    -0.0996983024571531
#>     Attrib V60    0.1767096667926014
#>     Attrib V7    0.1640990677858727
#>     Attrib V8    -0.12567989140175073
#>     Attrib V9    0.27334772209637354
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.047949785310535786
#>     Attrib V1    0.04839961916797294
#>     Attrib V10    -0.03183512608253828
#>     Attrib V11    0.003192993451246235
#>     Attrib V12    0.06405191677635998
#>     Attrib V13    -0.001222352777869163
#>     Attrib V14    9.605858448079532E-4
#>     Attrib V15    0.0317792220053069
#>     Attrib V16    -0.03604227495920408
#>     Attrib V17    0.009101665106485886
#>     Attrib V18    -0.13283492059836066
#>     Attrib V19    0.014113771322383136
#>     Attrib V2    -0.024340676814023826
#>     Attrib V20    0.09566249347079343
#>     Attrib V21    0.037388587263723835
#>     Attrib V22    -0.05173400353107257
#>     Attrib V23    0.01300456428826094
#>     Attrib V24    0.1108033170456089
#>     Attrib V25    -0.06804469400588574
#>     Attrib V26    -0.18322698140924484
#>     Attrib V27    -0.038350343307737476
#>     Attrib V28    -0.068743688256612
#>     Attrib V29    -0.14941695828587567
#>     Attrib V3    0.1116053731084316
#>     Attrib V30    0.029222840624673167
#>     Attrib V31    -0.17148972416575353
#>     Attrib V32    -0.04161833884651321
#>     Attrib V33    0.0033954397351951453
#>     Attrib V34    0.11537239256549767
#>     Attrib V35    0.04329972407822506
#>     Attrib V36    -0.12330160094819244
#>     Attrib V37    -0.12533563961206357
#>     Attrib V38    0.11532278613107211
#>     Attrib V39    0.18385227358726505
#>     Attrib V4    0.16278956369668796
#>     Attrib V40    -0.0046182092642943155
#>     Attrib V41    -0.019699229729030036
#>     Attrib V42    0.07976282474786868
#>     Attrib V43    0.02569253200179142
#>     Attrib V44    0.09149392758040634
#>     Attrib V45    0.1208691088224565
#>     Attrib V46    0.1554674129903563
#>     Attrib V47    0.02107602873645843
#>     Attrib V48    0.03419537976110258
#>     Attrib V49    0.13289996976290397
#>     Attrib V5    0.1649903887447859
#>     Attrib V50    -0.200788170883008
#>     Attrib V51    -0.06328572984760834
#>     Attrib V52    -0.0395157226597318
#>     Attrib V53    0.11054561019210539
#>     Attrib V54    0.15580661716382838
#>     Attrib V55    -0.02767474371975405
#>     Attrib V56    0.1545959149300601
#>     Attrib V57    0.14876533700033598
#>     Attrib V58    0.08922924181116475
#>     Attrib V59    0.3136354149438156
#>     Attrib V6    0.07375902276570366
#>     Attrib V60    0.21134194938688391
#>     Attrib V7    0.08059945818272826
#>     Attrib V8    -0.07264580863566017
#>     Attrib V9    0.03284040288780683
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.275729662487981
#>     Attrib V1    0.14616059428931794
#>     Attrib V10    -0.059246918829361964
#>     Attrib V11    0.021240487789093716
#>     Attrib V12    0.10869885110729677
#>     Attrib V13    -0.27832874367430177
#>     Attrib V14    -0.1672279882775867
#>     Attrib V15    0.1625801253083942
#>     Attrib V16    0.04216713849949056
#>     Attrib V17    0.0742835386743665
#>     Attrib V18    -0.3487181057657473
#>     Attrib V19    0.19481541918501238
#>     Attrib V2    -0.09851013049933804
#>     Attrib V20    0.4089589992025614
#>     Attrib V21    0.23266883947282438
#>     Attrib V22    0.07316843189722097
#>     Attrib V23    0.05605719985888236
#>     Attrib V24    0.25360124115175386
#>     Attrib V25    -0.4348032332882474
#>     Attrib V26    -0.5319800435963447
#>     Attrib V27    -0.37816307485728523
#>     Attrib V28    -0.3377192739352244
#>     Attrib V29    -0.7508584348053298
#>     Attrib V3    -0.04267297686788916
#>     Attrib V30    0.006448303267256647
#>     Attrib V31    -0.49492099195778266
#>     Attrib V32    -0.1376723866050595
#>     Attrib V33    0.09012176039819397
#>     Attrib V34    0.0513720517434581
#>     Attrib V35    -0.07164122195052254
#>     Attrib V36    -0.6105249282359627
#>     Attrib V37    -0.6863179366351415
#>     Attrib V38    0.228102557837394
#>     Attrib V39    0.3430797683477934
#>     Attrib V4    0.2652761612680073
#>     Attrib V40    -0.24104929846601753
#>     Attrib V41    -0.1792544957972325
#>     Attrib V42    0.25954717166591973
#>     Attrib V43    0.17346622701073386
#>     Attrib V44    0.2566012734449789
#>     Attrib V45    0.35778166988157506
#>     Attrib V46    0.2765414864089273
#>     Attrib V47    -0.15973044031253905
#>     Attrib V48    0.1324209188779552
#>     Attrib V49    0.3209440404621379
#>     Attrib V5    0.24015873619027914
#>     Attrib V50    -0.6245969784503489
#>     Attrib V51    -0.2716086213041887
#>     Attrib V52    -0.06118464150279323
#>     Attrib V53    0.1415381926817279
#>     Attrib V54    0.5438515314510096
#>     Attrib V55    -0.21280240834845032
#>     Attrib V56    0.3730180645368966
#>     Attrib V57    0.21947183417781468
#>     Attrib V58    0.24612148145830623
#>     Attrib V59    0.6405143984927835
#>     Attrib V6    -0.03409646902731226
#>     Attrib V60    0.2721422950429646
#>     Attrib V7    0.1022049875123743
#>     Attrib V8    -0.17295069292360324
#>     Attrib V9    0.11343534060512293
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.8619552793064972
#>     Attrib V1    -0.06309360907421412
#>     Attrib V10    -1.048366882669262
#>     Attrib V11    -1.0346910914555933
#>     Attrib V12    -0.62074562408696
#>     Attrib V13    0.2273429255785694
#>     Attrib V14    0.5527387596772765
#>     Attrib V15    0.5704232857549273
#>     Attrib V16    0.48970487040664545
#>     Attrib V17    0.27462747147272737
#>     Attrib V18    0.7862042049585205
#>     Attrib V19    -0.2941573378181828
#>     Attrib V2    0.21308708297683407
#>     Attrib V20    -0.5169730737524232
#>     Attrib V21    -0.26474984706442906
#>     Attrib V22    -0.3048761753473829
#>     Attrib V23    -0.40177298719270993
#>     Attrib V24    -0.625896180904398
#>     Attrib V25    0.6056880951577717
#>     Attrib V26    0.1868787505308651
#>     Attrib V27    -0.20244590990461164
#>     Attrib V28    -0.3062284759638523
#>     Attrib V29    0.30287023964824034
#>     Attrib V3    0.11540072580587958
#>     Attrib V30    -0.6556896079695519
#>     Attrib V31    0.6884714204567254
#>     Attrib V32    0.1217707711452525
#>     Attrib V33    0.2769245938470034
#>     Attrib V34    0.2968965603558639
#>     Attrib V35    0.18496661596477768
#>     Attrib V36    0.7114079730344642
#>     Attrib V37    0.704053803242826
#>     Attrib V38    -0.5615038228204521
#>     Attrib V39    -0.4292676083306653
#>     Attrib V4    -0.47472760470943426
#>     Attrib V40    0.6332913880453179
#>     Attrib V41    0.1986054425817816
#>     Attrib V42    -0.15500521310789545
#>     Attrib V43    -0.08768428015579062
#>     Attrib V44    -0.677143425712731
#>     Attrib V45    -0.8555327908776089
#>     Attrib V46    -0.5259291176177182
#>     Attrib V47    0.23633360523789276
#>     Attrib V48    -0.2216310780864535
#>     Attrib V49    -0.8200215148176079
#>     Attrib V5    -0.42744400449848274
#>     Attrib V50    1.1754893679100613
#>     Attrib V51    0.10773913218654452
#>     Attrib V52    -0.5998438690485353
#>     Attrib V53    -0.16585244583651612
#>     Attrib V54    -0.2858169816978745
#>     Attrib V55    1.1297910407889
#>     Attrib V56    -0.20746650425522686
#>     Attrib V57    0.3091504363702096
#>     Attrib V58    -0.291866535061832
#>     Attrib V59    -0.3814428661395932
#>     Attrib V6    -0.2305373364375595
#>     Attrib V60    0.6687883243306733
#>     Attrib V7    0.07760395877254779
#>     Attrib V8    0.006370943639133982
#>     Attrib V9    -1.0561634862468117
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.11095531356641414
#>     Attrib V1    0.05161046259754185
#>     Attrib V10    0.00810821318183935
#>     Attrib V11    -0.009275321227036098
#>     Attrib V12    0.029392649227833082
#>     Attrib V13    -0.009231522070974902
#>     Attrib V14    -0.014740740766071847
#>     Attrib V15    0.03172551511517828
#>     Attrib V16    0.06451791604905728
#>     Attrib V17    0.058245180247625795
#>     Attrib V18    -0.022279565381242327
#>     Attrib V19    0.011823676349584842
#>     Attrib V2    -0.00775721833374218
#>     Attrib V20    -0.029002502890025112
#>     Attrib V21    -0.054336180879872145
#>     Attrib V22    -0.061189552678908146
#>     Attrib V23    -0.07909819354944582
#>     Attrib V24    0.03987573614636563
#>     Attrib V25    -0.04707021217084926
#>     Attrib V26    -0.12027882539856039
#>     Attrib V27    -0.07268002654658914
#>     Attrib V28    -0.019643340529000908
#>     Attrib V29    -0.09602290513005265
#>     Attrib V3    0.10009928021328256
#>     Attrib V30    -0.014719478353285527
#>     Attrib V31    -0.07030353541042002
#>     Attrib V32    0.001774402086284828
#>     Attrib V33    0.016424237024015804
#>     Attrib V34    0.10337278092794251
#>     Attrib V35    0.05990353342515007
#>     Attrib V36    -0.02549068139391109
#>     Attrib V37    -7.594164244787754E-4
#>     Attrib V38    0.07918015899868423
#>     Attrib V39    0.08966995177484231
#>     Attrib V4    0.13155341333412054
#>     Attrib V40    -0.0038404668418051784
#>     Attrib V41    0.02071752447203586
#>     Attrib V42    0.0842110342599869
#>     Attrib V43    0.02358585076207066
#>     Attrib V44    0.02091435178103484
#>     Attrib V45    0.10106878992074719
#>     Attrib V46    0.10981559319794372
#>     Attrib V47    0.02696953146211153
#>     Attrib V48    0.040223005487933935
#>     Attrib V49    0.04387427366647605
#>     Attrib V5    0.11466990885086453
#>     Attrib V50    -0.018564071826636087
#>     Attrib V51    0.049479218666064445
#>     Attrib V52    0.02104260003346978
#>     Attrib V53    0.12037095231567378
#>     Attrib V54    0.09259799215118152
#>     Attrib V55    0.057064386467642426
#>     Attrib V56    0.13107539604894408
#>     Attrib V57    0.15280002476089166
#>     Attrib V58    0.12197526249808338
#>     Attrib V59    0.13849829159992053
#>     Attrib V6    0.07433421276436498
#>     Attrib V60    0.1699058294674111
#>     Attrib V7    0.023626192656073908
#>     Attrib V8    -0.04138043592969097
#>     Attrib V9    0.0596360669912834
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.1176499337066131
#>     Attrib V1    0.07108018646576868
#>     Attrib V10    0.028921896189635317
#>     Attrib V11    0.0092502158103068
#>     Attrib V12    -0.03614138462353565
#>     Attrib V13    -0.04661035243758808
#>     Attrib V14    0.024820355538997523
#>     Attrib V15    0.13482868287205618
#>     Attrib V16    0.060046354540373915
#>     Attrib V17    0.0628738258713984
#>     Attrib V18    0.00435661268671788
#>     Attrib V19    -0.009217146309643572
#>     Attrib V2    0.12299759889805666
#>     Attrib V20    -0.05382713232421492
#>     Attrib V21    -0.05449678231846695
#>     Attrib V22    0.015423444852796116
#>     Attrib V23    -0.062123891828941284
#>     Attrib V24    -0.02709442937013457
#>     Attrib V25    -0.040182140064813576
#>     Attrib V26    -0.05881382178021067
#>     Attrib V27    -0.04235219425212565
#>     Attrib V28    -0.042955734336149264
#>     Attrib V29    -0.05391542405806381
#>     Attrib V3    0.0876306618152732
#>     Attrib V30    0.03962283877522264
#>     Attrib V31    0.07990897486893767
#>     Attrib V32    -0.029823406401304344
#>     Attrib V33    0.08602871672705228
#>     Attrib V34    0.06456264725743636
#>     Attrib V35    0.13437365822397376
#>     Attrib V36    0.06304365729323362
#>     Attrib V37    0.08811466703368785
#>     Attrib V38    0.09092696565475551
#>     Attrib V39    0.06560419301342334
#>     Attrib V4    0.06981294200111916
#>     Attrib V40    0.059308733724459585
#>     Attrib V41    0.07986466803979904
#>     Attrib V42    0.0321384238544673
#>     Attrib V43    0.05336415480122012
#>     Attrib V44    0.02429750203969074
#>     Attrib V45    0.03634483284651798
#>     Attrib V46    0.013408321585498961
#>     Attrib V47    0.0024469071000324284
#>     Attrib V48    0.0618809103006405
#>     Attrib V49    -0.024213125587735675
#>     Attrib V5    0.07356227858597444
#>     Attrib V50    0.03342287131587875
#>     Attrib V51    0.027116960227678382
#>     Attrib V52    -0.07361406073244704
#>     Attrib V53    0.006529530443759837
#>     Attrib V54    0.020976646065197987
#>     Attrib V55    0.11172542420189774
#>     Attrib V56    0.10518218193875918
#>     Attrib V57    0.1592549212681706
#>     Attrib V58    0.0034429168040253683
#>     Attrib V59    0.023515064478019296
#>     Attrib V6    0.08410043164057504
#>     Attrib V60    0.134950052831123
#>     Attrib V7    -0.019272731991318903
#>     Attrib V8    0.046213446164453914
#>     Attrib V9    0.010117815461826326
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.2224665557633608
#>     Attrib V1    0.006385862554149563
#>     Attrib V10    -0.07918790437954655
#>     Attrib V11    -0.10050685210255939
#>     Attrib V12    -0.1338317246565081
#>     Attrib V13    -0.009399781640740762
#>     Attrib V14    0.06413739611887304
#>     Attrib V15    0.04668793940660727
#>     Attrib V16    0.08671693685789382
#>     Attrib V17    0.06564524974010166
#>     Attrib V18    0.1795896030892738
#>     Attrib V19    -0.054824686618512156
#>     Attrib V2    0.07249589716156156
#>     Attrib V20    -0.010392883947347071
#>     Attrib V21    0.03570547541608614
#>     Attrib V22    0.014747704483857718
#>     Attrib V23    0.006851126478464186
#>     Attrib V24    -0.10473858329362475
#>     Attrib V25    0.09687011070133587
#>     Attrib V26    0.058410648753598644
#>     Attrib V27    -0.013902005055577355
#>     Attrib V28    -0.0704517776458847
#>     Attrib V29    0.01305659645089125
#>     Attrib V3    0.10480280721016313
#>     Attrib V30    -0.09866152447933318
#>     Attrib V31    0.06334671761144864
#>     Attrib V32    9.395086171679668E-5
#>     Attrib V33    0.04694401975002418
#>     Attrib V34    0.08067160058386358
#>     Attrib V35    0.032625762027688986
#>     Attrib V36    0.20936293899509645
#>     Attrib V37    0.17925059963611548
#>     Attrib V38    -0.08670426201210933
#>     Attrib V39    -0.042388582417313525
#>     Attrib V4    -0.06479070339281827
#>     Attrib V40    0.08972058277322119
#>     Attrib V41    0.011702479769985783
#>     Attrib V42    0.001207132149340877
#>     Attrib V43    -0.03710187919568818
#>     Attrib V44    -0.05532581750678367
#>     Attrib V45    -0.17362839495525395
#>     Attrib V46    -0.09332740624680563
#>     Attrib V47    0.07767048500997224
#>     Attrib V48    -0.02259561182867665
#>     Attrib V49    -0.0698159480207651
#>     Attrib V5    -0.019522616676093417
#>     Attrib V50    0.0915295556068522
#>     Attrib V51    0.06173216586645244
#>     Attrib V52    -0.09426976537823677
#>     Attrib V53    -0.025757804383608356
#>     Attrib V54    -0.09256723317375481
#>     Attrib V55    0.1295906070599696
#>     Attrib V56    0.021204177843621722
#>     Attrib V57    0.004193183887112229
#>     Attrib V58    -0.042101667992741426
#>     Attrib V59    -0.07153013647799589
#>     Attrib V6    -0.020429896025431386
#>     Attrib V60    0.09205055154835733
#>     Attrib V7    0.001030887173990017
#>     Attrib V8    0.029887013531259016
#>     Attrib V9    -0.08127425518353856
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.4460771752206199
#>     Attrib V1    0.14885309539269145
#>     Attrib V10    -0.05437763671780063
#>     Attrib V11    -0.01319417730192927
#>     Attrib V12    0.16265681363021442
#>     Attrib V13    -0.3287792386759212
#>     Attrib V14    -0.1920426072876543
#>     Attrib V15    0.18135834730295608
#>     Attrib V16    0.017015197316109554
#>     Attrib V17    0.04466439453859119
#>     Attrib V18    -0.5169148873269583
#>     Attrib V19    0.36566254939360043
#>     Attrib V2    -0.11640176866577083
#>     Attrib V20    0.6156884665722056
#>     Attrib V21    0.34875814642403896
#>     Attrib V22    0.1713856463726644
#>     Attrib V23    0.04849999428034981
#>     Attrib V24    0.38362706178420464
#>     Attrib V25    -0.6001068567664756
#>     Attrib V26    -0.7170232249139896
#>     Attrib V27    -0.4186174082251151
#>     Attrib V28    -0.3197334047457975
#>     Attrib V29    -0.9083525409980694
#>     Attrib V3    -0.006810260637502604
#>     Attrib V30    0.05002761720998787
#>     Attrib V31    -0.7361603479477844
#>     Attrib V32    -0.26853903143661945
#>     Attrib V33    0.0697084821484452
#>     Attrib V34    0.04543616190687637
#>     Attrib V35    -0.12211822246326846
#>     Attrib V36    -0.7972472733384718
#>     Attrib V37    -0.9938790789202291
#>     Attrib V38    0.38152211638912875
#>     Attrib V39    0.4747719270897875
#>     Attrib V4    0.40845434890840115
#>     Attrib V40    -0.3117420736001917
#>     Attrib V41    -0.20239092337012718
#>     Attrib V42    0.49308147167238225
#>     Attrib V43    0.2855898677891754
#>     Attrib V44    0.2980776403973978
#>     Attrib V45    0.6448858078935287
#>     Attrib V46    0.37579862731025304
#>     Attrib V47    -0.2481410194132359
#>     Attrib V48    0.11788957476707464
#>     Attrib V49    0.4826544101205281
#>     Attrib V5    0.36440114769429105
#>     Attrib V50    -0.9045407060845359
#>     Attrib V51    -0.39675208265670453
#>     Attrib V52    -0.04238162621457672
#>     Attrib V53    0.26797167887381373
#>     Attrib V54    0.6856371347086552
#>     Attrib V55    -0.3992506926176921
#>     Attrib V56    0.426627283066161
#>     Attrib V57    0.14701383036309867
#>     Attrib V58    0.31852830974768087
#>     Attrib V59    0.7759681599142546
#>     Attrib V6    -0.07191093054171022
#>     Attrib V60    0.23103768002336986
#>     Attrib V7    0.1864875105642456
#>     Attrib V8    -0.20091936715757924
#>     Attrib V9    0.20477200236655657
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.7144816714485408
#>     Attrib V1    0.029819880668680347
#>     Attrib V10    0.4133948558994635
#>     Attrib V11    0.4495239714530415
#>     Attrib V12    0.5635528283521276
#>     Attrib V13    -0.13664405062374782
#>     Attrib V14    -0.30707043564301606
#>     Attrib V15    -0.24377678208780582
#>     Attrib V16    -0.3538576334227568
#>     Attrib V17    -0.25084581211141316
#>     Attrib V18    -0.696179608033716
#>     Attrib V19    0.1483330338509813
#>     Attrib V2    -0.293768539338815
#>     Attrib V20    0.2905262982610348
#>     Attrib V21    0.13687549295040846
#>     Attrib V22    0.12320129092904364
#>     Attrib V23    0.13366402794251633
#>     Attrib V24    0.5386316369884685
#>     Attrib V25    -0.38641335540552624
#>     Attrib V26    -0.20397727752728947
#>     Attrib V27    0.11769382492169823
#>     Attrib V28    0.21330781313076255
#>     Attrib V29    -0.24122308956323898
#>     Attrib V3    -0.1605584498016704
#>     Attrib V30    0.4277828745129037
#>     Attrib V31    -0.47401562734065067
#>     Attrib V32    -0.1782825071961628
#>     Attrib V33    -0.20279523273707173
#>     Attrib V34    -0.06704765822302064
#>     Attrib V35    0.015313689450412192
#>     Attrib V36    -0.4530690628958702
#>     Attrib V37    -0.5552844774356174
#>     Attrib V38    0.4327343549853224
#>     Attrib V39    0.3556776832850523
#>     Attrib V4    0.31557178754801596
#>     Attrib V40    -0.41383318803649133
#>     Attrib V41    -0.17121474078844695
#>     Attrib V42    0.11154625977072642
#>     Attrib V43    0.21900173055099803
#>     Attrib V44    0.5212994547928964
#>     Attrib V45    0.6108109040774313
#>     Attrib V46    0.39976849167968326
#>     Attrib V47    -0.22733125732736126
#>     Attrib V48    0.2082669016909547
#>     Attrib V49    0.5092021504657827
#>     Attrib V5    0.36664931370865544
#>     Attrib V50    -1.020175622989871
#>     Attrib V51    -0.16197278706158624
#>     Attrib V52    0.13856835049815275
#>     Attrib V53    0.15122251836221462
#>     Attrib V54    0.40331999257780726
#>     Attrib V55    -0.7319000950409125
#>     Attrib V56    0.2644431239984423
#>     Attrib V57    -0.1359950384410337
#>     Attrib V58    0.14474628287724506
#>     Attrib V59    0.6101111415067509
#>     Attrib V6    0.10707189254644923
#>     Attrib V60    -0.14075862262620836
#>     Attrib V7    -0.009439173431084575
#>     Attrib V8    -0.23536082166474692
#>     Attrib V9    0.46365800592244316
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.8775005997570995
#>     Attrib V1    0.037745979128031924
#>     Attrib V10    -0.698449484314746
#>     Attrib V11    -0.7985005141719205
#>     Attrib V12    -0.650583655596913
#>     Attrib V13    0.17574783001075295
#>     Attrib V14    0.4731321648217064
#>     Attrib V15    0.3659518049560876
#>     Attrib V16    0.3554818921015676
#>     Attrib V17    0.2200213331909177
#>     Attrib V18    0.7760713464096238
#>     Attrib V19    -0.2656014222319663
#>     Attrib V2    0.2827646239635048
#>     Attrib V20    -0.36123410428612374
#>     Attrib V21    -0.029567386140869584
#>     Attrib V22    -0.14182529144974687
#>     Attrib V23    -0.2555637184192623
#>     Attrib V24    -0.6814438556508057
#>     Attrib V25    0.5802284071678974
#>     Attrib V26    0.3530106224553676
#>     Attrib V27    -0.05388440216048328
#>     Attrib V28    -0.2866908372209027
#>     Attrib V29    0.42914831728575337
#>     Attrib V3    0.12510218101353798
#>     Attrib V30    -0.4774242264174638
#>     Attrib V31    0.6760104144077749
#>     Attrib V32    0.022473144275775507
#>     Attrib V33    0.20357247122082145
#>     Attrib V34    0.1397752942300531
#>     Attrib V35    0.049294385683892335
#>     Attrib V36    0.7144226440053981
#>     Attrib V37    0.8796656887616809
#>     Attrib V38    -0.5734975054617093
#>     Attrib V39    -0.469187651364259
#>     Attrib V4    -0.3540807994987925
#>     Attrib V40    0.6394083347725266
#>     Attrib V41    0.31547451878459926
#>     Attrib V42    -0.17444806923425218
#>     Attrib V43    -0.12117054262172133
#>     Attrib V44    -0.5573132433943646
#>     Attrib V45    -0.8575634820619702
#>     Attrib V46    -0.5482189431291735
#>     Attrib V47    0.2843310165964809
#>     Attrib V48    -0.1425915634340855
#>     Attrib V49    -0.7461917228538706
#>     Attrib V5    -0.3405129043010983
#>     Attrib V50    1.2140200750850538
#>     Attrib V51    0.23882437364671794
#>     Attrib V52    -0.3737405068333371
#>     Attrib V53    -0.19288899218791816
#>     Attrib V54    -0.4590872678589845
#>     Attrib V55    0.8611339524346857
#>     Attrib V56    -0.2359001727231453
#>     Attrib V57    0.2514580105682433
#>     Attrib V58    -0.338751389282465
#>     Attrib V59    -0.5109518409898575
#>     Attrib V6    -0.09487921931826176
#>     Attrib V60    0.5706088734000864
#>     Attrib V7    0.07595665931142852
#>     Attrib V8    0.00688168564692693
#>     Attrib V9    -0.6938377715828177
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.11935862080100276
#>     Attrib V1    0.10775814541897959
#>     Attrib V10    -0.07029151083350103
#>     Attrib V11    -0.036048856016933147
#>     Attrib V12    0.0630679155074762
#>     Attrib V13    -0.16882904174604962
#>     Attrib V14    -0.04544425277856366
#>     Attrib V15    0.060327995852477084
#>     Attrib V16    0.09723015961230559
#>     Attrib V17    0.056430310971230746
#>     Attrib V18    -0.20952361204337822
#>     Attrib V19    0.09004372078692542
#>     Attrib V2    -0.04182002559105494
#>     Attrib V20    0.22784777499479128
#>     Attrib V21    0.11104546722743762
#>     Attrib V22    -0.013406330816828693
#>     Attrib V23    -0.04769888469793231
#>     Attrib V24    0.21086589720906743
#>     Attrib V25    -0.25994657112945574
#>     Attrib V26    -0.38045415188847115
#>     Attrib V27    -0.2574165362545559
#>     Attrib V28    -0.2508251695749102
#>     Attrib V29    -0.4122101140737057
#>     Attrib V3    0.002230155487517435
#>     Attrib V30    -0.039779895432171364
#>     Attrib V31    -0.2519585219893126
#>     Attrib V32    -0.0827822377434291
#>     Attrib V33    0.014869851359975074
#>     Attrib V34    0.07863246056149036
#>     Attrib V35    -0.0016244124841945002
#>     Attrib V36    -0.31957105771109906
#>     Attrib V37    -0.3951472035745286
#>     Attrib V38    0.12914681782167808
#>     Attrib V39    0.1803008001505951
#>     Attrib V4    0.199266569429489
#>     Attrib V40    -0.10466046651570089
#>     Attrib V41    -0.1364380156778973
#>     Attrib V42    0.13759576205927024
#>     Attrib V43    0.17528940810943827
#>     Attrib V44    0.12922102539600958
#>     Attrib V45    0.19380551034229443
#>     Attrib V46    0.1994744124824664
#>     Attrib V47    -0.11820181304530475
#>     Attrib V48    0.09154327333572844
#>     Attrib V49    0.16882835802536883
#>     Attrib V5    0.20530220549476122
#>     Attrib V50    -0.37048957174234187
#>     Attrib V51    -0.15204476624207314
#>     Attrib V52    -0.03888291682893804
#>     Attrib V53    0.11274010412582859
#>     Attrib V54    0.3425564323144991
#>     Attrib V55    -0.05737159920561138
#>     Attrib V56    0.27430022051477143
#>     Attrib V57    0.20054374408794945
#>     Attrib V58    0.20172563384841127
#>     Attrib V59    0.45487444550669504
#>     Attrib V6    0.027648924013212107
#>     Attrib V60    0.25373614108434056
#>     Attrib V7    0.06433717782598455
#>     Attrib V8    -0.1627314402907923
#>     Attrib V9    0.038223329884390686
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.29670095053066303
#>     Attrib V1    0.16698681148926048
#>     Attrib V10    -0.21059106013440934
#>     Attrib V11    -0.11808619304182816
#>     Attrib V12    0.0359342107185181
#>     Attrib V13    -0.31550785318720775
#>     Attrib V14    -0.15492593226303258
#>     Attrib V15    0.17292069774492924
#>     Attrib V16    0.09031541302620988
#>     Attrib V17    0.15343157605502264
#>     Attrib V18    -0.35283904976654634
#>     Attrib V19    0.2961059647169691
#>     Attrib V2    -0.1161855071881739
#>     Attrib V20    0.529104401674416
#>     Attrib V21    0.33333837781861997
#>     Attrib V22    0.12390894569258272
#>     Attrib V23    0.03294958127459025
#>     Attrib V24    0.2412234312707675
#>     Attrib V25    -0.5534266667477248
#>     Attrib V26    -0.6706069109676385
#>     Attrib V27    -0.5024257515400515
#>     Attrib V28    -0.43968481824463834
#>     Attrib V29    -0.8836615120187927
#>     Attrib V3    0.0690062402797519
#>     Attrib V30    -0.03245037535969535
#>     Attrib V31    -0.6355774894750363
#>     Attrib V32    -0.21965178838316796
#>     Attrib V33    0.10105035406306999
#>     Attrib V34    0.0869949412650326
#>     Attrib V35    -0.07215385054984436
#>     Attrib V36    -0.6737492578995946
#>     Attrib V37    -0.7696976654174774
#>     Attrib V38    0.32854363838691386
#>     Attrib V39    0.4203160821468305
#>     Attrib V4    0.3661025659443651
#>     Attrib V40    -0.26504027681652115
#>     Attrib V41    -0.15664061371828802
#>     Attrib V42    0.3765531558875363
#>     Attrib V43    0.2825977050384673
#>     Attrib V44    0.2546604672002168
#>     Attrib V45    0.5032767988173769
#>     Attrib V46    0.28137497494995833
#>     Attrib V47    -0.14904079038324208
#>     Attrib V48    0.039949523397995956
#>     Attrib V49    0.29892559135269225
#>     Attrib V5    0.30773648186572117
#>     Attrib V50    -0.7031087850972837
#>     Attrib V51    -0.33625868375010703
#>     Attrib V52    -0.09425915023365936
#>     Attrib V53    0.238581810106932
#>     Attrib V54    0.5744449037311353
#>     Attrib V55    -0.2116990698609008
#>     Attrib V56    0.5023066289416145
#>     Attrib V57    0.23705121033745788
#>     Attrib V58    0.2442696645758362
#>     Attrib V59    0.8005869909412646
#>     Attrib V6    -0.018524922587681243
#>     Attrib V60    0.3187756817633398
#>     Attrib V7    0.19122669915897206
#>     Attrib V8    -0.18578207797605628
#>     Attrib V9    0.07416008651677973
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.26430585610086144
#>     Attrib V1    -0.009276369320543537
#>     Attrib V10    -0.23427169356959446
#>     Attrib V11    -0.23597236862748985
#>     Attrib V12    -0.23782341759350836
#>     Attrib V13    0.00597454088793623
#>     Attrib V14    0.13147366419341866
#>     Attrib V15    0.16350687589743015
#>     Attrib V16    0.14058114031604058
#>     Attrib V17    0.21424820052136365
#>     Attrib V18    0.30678302119499856
#>     Attrib V19    0.018483368193670944
#>     Attrib V2    0.08331004772391011
#>     Attrib V20    0.00977048505234372
#>     Attrib V21    0.07006644931190774
#>     Attrib V22    0.04185481042313032
#>     Attrib V23    0.04972030299159347
#>     Attrib V24    -0.21902664808402042
#>     Attrib V25    0.1585904693631372
#>     Attrib V26    0.1097517520399175
#>     Attrib V27    -0.08227567652744684
#>     Attrib V28    -0.1092140615767775
#>     Attrib V29    0.09026498765485261
#>     Attrib V3    0.03033130110418171
#>     Attrib V30    -0.14292638038766822
#>     Attrib V31    0.14481921546665222
#>     Attrib V32    0.025376825580251953
#>     Attrib V33    0.008785590526545657
#>     Attrib V34    0.017897115334241584
#>     Attrib V35    0.0059642536976881495
#>     Attrib V36    0.2716150402627499
#>     Attrib V37    0.28188637007236356
#>     Attrib V38    -0.18004425974041052
#>     Attrib V39    -0.19857974950562987
#>     Attrib V4    -0.10313735929759835
#>     Attrib V40    0.19469339247268774
#>     Attrib V41    0.08101909128309813
#>     Attrib V42    -0.07248707325836141
#>     Attrib V43    -0.03741848934668766
#>     Attrib V44    -0.22122517247246165
#>     Attrib V45    -0.32873643018294374
#>     Attrib V46    -0.2050385789843884
#>     Attrib V47    0.09815167615998457
#>     Attrib V48    -0.09429660912918772
#>     Attrib V49    -0.27208094617822753
#>     Attrib V5    -0.16466168966856415
#>     Attrib V50    0.3692176056037677
#>     Attrib V51    0.04836105657008731
#>     Attrib V52    -0.08702271420043804
#>     Attrib V53    -0.11535984651010384
#>     Attrib V54    -0.17919256273045786
#>     Attrib V55    0.2186731775831903
#>     Attrib V56    -0.04654949800733107
#>     Attrib V57    0.03951616580381891
#>     Attrib V58    -0.13911572398758615
#>     Attrib V59    -0.2662991255354011
#>     Attrib V6    -0.03682628099286569
#>     Attrib V60    0.01386623951735425
#>     Attrib V7    -0.08495173983381983
#>     Attrib V8    -3.722020450527856E-4
#>     Attrib V9    -0.16029043992272493
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.5854778499887914
#>     Attrib V1    0.10203588129404219
#>     Attrib V10    1.4962580446161537
#>     Attrib V11    1.4950476120658518
#>     Attrib V12    1.0580255312300473
#>     Attrib V13    0.10492558441044081
#>     Attrib V14    -0.34612505727143134
#>     Attrib V15    -0.8382647611566374
#>     Attrib V16    -0.8318606328806653
#>     Attrib V17    -0.6917888243277451
#>     Attrib V18    -0.7043150287884932
#>     Attrib V19    0.14598628247539983
#>     Attrib V2    -0.18943798948349366
#>     Attrib V20    0.19448198990505425
#>     Attrib V21    0.16604224980857077
#>     Attrib V22    0.45441197364953084
#>     Attrib V23    0.5824727952845272
#>     Attrib V24    0.6045718210203525
#>     Attrib V25    -0.1794951934343339
#>     Attrib V26    0.4975417206445539
#>     Attrib V27    0.766638974933086
#>     Attrib V28    0.7617837333169382
#>     Attrib V29    0.42249259387664484
#>     Attrib V3    0.008519271978154856
#>     Attrib V30    0.6687731249440194
#>     Attrib V31    -0.41539634370790685
#>     Attrib V32    -0.2074435240372267
#>     Attrib V33    -0.6709882949941406
#>     Attrib V34    -0.33928849798981675
#>     Attrib V35    -0.02471637919149832
#>     Attrib V36    -0.2970619644522094
#>     Attrib V37    -0.35470767437761636
#>     Attrib V38    0.0790099193085051
#>     Attrib V39    0.2546915934366595
#>     Attrib V4    0.5816169487382341
#>     Attrib V40    -0.39105436715618286
#>     Attrib V41    0.07221812184266345
#>     Attrib V42    -0.0937685471768393
#>     Attrib V43    0.05786515123228861
#>     Attrib V44    0.6928737173252771
#>     Attrib V45    0.7348709913724679
#>     Attrib V46    0.5774039260543242
#>     Attrib V47    0.12195655286672992
#>     Attrib V48    0.4452298492108952
#>     Attrib V49    0.9113857751400192
#>     Attrib V5    0.4872784613877296
#>     Attrib V50    -0.6123769150352658
#>     Attrib V51    0.318469275155471
#>     Attrib V52    0.8193577026835767
#>     Attrib V53    0.45101247479141005
#>     Attrib V54    0.16394075006443629
#>     Attrib V55    -0.9773735962617396
#>     Attrib V56    0.017370768074370293
#>     Attrib V57    -0.364473535215087
#>     Attrib V58    0.3541468102294932
#>     Attrib V59    0.26197616174994337
#>     Attrib V6    0.33743740437895337
#>     Attrib V60    -0.6318594935455983
#>     Attrib V7    -0.3073660914082625
#>     Attrib V8    0.1469226796628107
#>     Attrib V9    1.2438109731867266
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.5000135476694706
#>     Attrib V1    0.013202839870066561
#>     Attrib V10    -0.3451531523419963
#>     Attrib V11    -0.3831513509966608
#>     Attrib V12    -0.33464030445178694
#>     Attrib V13    0.07743862320026322
#>     Attrib V14    0.26968205036125636
#>     Attrib V15    0.16477904021491824
#>     Attrib V16    0.2061692691099834
#>     Attrib V17    0.23621923538369524
#>     Attrib V18    0.4296593330582995
#>     Attrib V19    0.052447051122224975
#>     Attrib V2    0.19075541804563614
#>     Attrib V20    0.0014773301350731118
#>     Attrib V21    0.10538120360078958
#>     Attrib V22    0.07244250511045615
#>     Attrib V23    0.007553157379321578
#>     Attrib V24    -0.31413484914876805
#>     Attrib V25    0.2691238083823752
#>     Attrib V26    0.11918543294867893
#>     Attrib V27    -0.038358898274800136
#>     Attrib V28    -0.14144239851615784
#>     Attrib V29    0.2019889250247175
#>     Attrib V3    0.06253641643962994
#>     Attrib V30    -0.21675726582786692
#>     Attrib V31    0.2291434441607891
#>     Attrib V32    -0.05375375872930023
#>     Attrib V33    0.09721169935959048
#>     Attrib V34    0.015672580576305422
#>     Attrib V35    0.06220683868093163
#>     Attrib V36    0.4096252632529871
#>     Attrib V37    0.519771476098072
#>     Attrib V38    -0.24930604531072256
#>     Attrib V39    -0.2280807811574978
#>     Attrib V4    -0.17051200598105548
#>     Attrib V40    0.2660402551765113
#>     Attrib V41    0.09584965673464556
#>     Attrib V42    -0.02222636134205803
#>     Attrib V43    -0.05943436591845215
#>     Attrib V44    -0.2695136105646147
#>     Attrib V45    -0.41314407185674235
#>     Attrib V46    -0.3151364091149524
#>     Attrib V47    0.09156945833558722
#>     Attrib V48    -0.10819160286090676
#>     Attrib V49    -0.38163241018804367
#>     Attrib V5    -0.2300067263810297
#>     Attrib V50    0.5714933889025725
#>     Attrib V51    0.04021994060942349
#>     Attrib V52    -0.20766639754887292
#>     Attrib V53    -0.10164136248683435
#>     Attrib V54    -0.2365921686556308
#>     Attrib V55    0.3616237952647981
#>     Attrib V56    -0.06857311923715047
#>     Attrib V57    0.03824217675692579
#>     Attrib V58    -0.19507474686949644
#>     Attrib V59    -0.37151509640141045
#>     Attrib V6    -0.059296423333656575
#>     Attrib V60    0.14808040588205582
#>     Attrib V7    -0.09662604812710314
#>     Attrib V8    0.021321063038050557
#>     Attrib V9    -0.3360762548143134
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.58966967994359
#>     Attrib V1    0.12520302817941698
#>     Attrib V10    0.2135310972059314
#>     Attrib V11    0.27313239715659465
#>     Attrib V12    0.3363576189170976
#>     Attrib V13    -0.20056873953628698
#>     Attrib V14    -0.3140428255519501
#>     Attrib V15    -0.05653470947032773
#>     Attrib V16    -0.15455353343314887
#>     Attrib V17    -0.12451197135217011
#>     Attrib V18    -0.5540114589056003
#>     Attrib V19    0.22471843050681495
#>     Attrib V2    -0.20784789050868893
#>     Attrib V20    0.39263332927374095
#>     Attrib V21    0.24029458513109223
#>     Attrib V22    0.14435884521848408
#>     Attrib V23    0.09924101382919742
#>     Attrib V24    0.5107638600863523
#>     Attrib V25    -0.47671072573344264
#>     Attrib V26    -0.4049239369269354
#>     Attrib V27    -0.17758480003388993
#>     Attrib V28    -0.061742427373791146
#>     Attrib V29    -0.5918387656791833
#>     Attrib V3    -0.07800316216688925
#>     Attrib V30    0.22568404781624696
#>     Attrib V31    -0.5648864270795653
#>     Attrib V32    -0.15314652646168056
#>     Attrib V33    -0.09217440857997997
#>     Attrib V34    0.01734476948443544
#>     Attrib V35    -0.0729717354233227
#>     Attrib V36    -0.6649790557812371
#>     Attrib V37    -0.8239682563463696
#>     Attrib V38    0.3799037016162618
#>     Attrib V39    0.43669973190709294
#>     Attrib V4    0.34391604617359506
#>     Attrib V40    -0.4623132538322158
#>     Attrib V41    -0.24443930405489775
#>     Attrib V42    0.25584474330613965
#>     Attrib V43    0.15416569950947304
#>     Attrib V44    0.35935058774225326
#>     Attrib V45    0.6138596368482517
#>     Attrib V46    0.34782408839872214
#>     Attrib V47    -0.2524567434664065
#>     Attrib V48    0.14316425561533297
#>     Attrib V49    0.43289535635130977
#>     Attrib V5    0.33286276100756523
#>     Attrib V50    -0.8809521876336733
#>     Attrib V51    -0.2747302625292845
#>     Attrib V52    0.03098987942295263
#>     Attrib V53    0.1923443190282958
#>     Attrib V54    0.5595812324574965
#>     Attrib V55    -0.507824825398097
#>     Attrib V56    0.28482919259749234
#>     Attrib V57    0.05269503931388407
#>     Attrib V58    0.2243126436680469
#>     Attrib V59    0.6764913227791423
#>     Attrib V6    0.027044859562678762
#>     Attrib V60    0.020243467233840233
#>     Attrib V7    0.037898183002649966
#>     Attrib V8    -0.17099263945699944
#>     Attrib V9    0.3429473757194721
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.6488180347054164
#>     Attrib V1    -0.057390766318518305
#>     Attrib V10    -1.3483760342620843
#>     Attrib V11    -1.1940407905811292
#>     Attrib V12    -0.770454498136293
#>     Attrib V13    0.1134471423849861
#>     Attrib V14    0.5047024137678757
#>     Attrib V15    0.6869913694244866
#>     Attrib V16    0.6313033380105425
#>     Attrib V17    0.38982256030618506
#>     Attrib V18    0.7764032038109019
#>     Attrib V19    -0.2811552480173003
#>     Attrib V2    0.15218170888595206
#>     Attrib V20    -0.41202426550896937
#>     Attrib V21    -0.22517904860935908
#>     Attrib V22    -0.41770598188323277
#>     Attrib V23    -0.510905588901235
#>     Attrib V24    -0.5432964032481664
#>     Attrib V25    0.42244508149723176
#>     Attrib V26    -0.13168568939364608
#>     Attrib V27    -0.37997306446083723
#>     Attrib V28    -0.43676572726720186
#>     Attrib V29    0.09120218637676267
#>     Attrib V3    0.07554012656023125
#>     Attrib V30    -0.6089214422537318
#>     Attrib V31    0.5532546171701272
#>     Attrib V32    0.18733541795956743
#>     Attrib V33    0.3537269075408949
#>     Attrib V34    0.31349645376652674
#>     Attrib V35    0.19331775774754717
#>     Attrib V36    0.5498320981491032
#>     Attrib V37    0.4233930028287839
#>     Attrib V38    -0.3702317889008762
#>     Attrib V39    -0.2907895134672141
#>     Attrib V4    -0.43808816726030736
#>     Attrib V40    0.5238664291431553
#>     Attrib V41    0.12056517154821099
#>     Attrib V42    -0.029265447884494488
#>     Attrib V43    0.004396227821176732
#>     Attrib V44    -0.5876708817894726
#>     Attrib V45    -0.7435928527537712
#>     Attrib V46    -0.5234147006592325
#>     Attrib V47    0.049383008697135425
#>     Attrib V48    -0.30646055284455415
#>     Attrib V49    -0.8188903653816271
#>     Attrib V5    -0.46059331879997517
#>     Attrib V50    0.8658113992748517
#>     Attrib V51    -0.17837452525497585
#>     Attrib V52    -0.6275581344916796
#>     Attrib V53    -0.22643563283498994
#>     Attrib V54    -0.10022617057906347
#>     Attrib V55    1.067402212049267
#>     Attrib V56    -0.11208954237553187
#>     Attrib V57    0.3922395267262159
#>     Attrib V58    -0.24780999243069177
#>     Attrib V59    -0.1721168629360856
#>     Attrib V6    -0.2731597403209466
#>     Attrib V60    0.6299070368879222
#>     Attrib V7    0.1391794234044593
#>     Attrib V8    -0.06268655145920966
#>     Attrib V9    -1.1501834900895662
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.2545981481163877
#>     Attrib V1    0.07999262060581494
#>     Attrib V10    -0.10610429926522462
#>     Attrib V11    0.006337353001502463
#>     Attrib V12    0.09778867876424152
#>     Attrib V13    -0.23445519370591308
#>     Attrib V14    -0.07280784542827849
#>     Attrib V15    0.1391047997519651
#>     Attrib V16    0.05587299856765252
#>     Attrib V17    0.057664323328464696
#>     Attrib V18    -0.3191234924130813
#>     Attrib V19    0.2059447803064012
#>     Attrib V2    -0.1023230089896829
#>     Attrib V20    0.4792602170071431
#>     Attrib V21    0.3091296815197204
#>     Attrib V22    0.12754188451062926
#>     Attrib V23    -0.010683280006116166
#>     Attrib V24    0.29111437148387115
#>     Attrib V25    -0.3940166850122716
#>     Attrib V26    -0.579384368241487
#>     Attrib V27    -0.34571091430734663
#>     Attrib V28    -0.30161539372045076
#>     Attrib V29    -0.6341401370947664
#>     Attrib V3    0.06042884958794975
#>     Attrib V30    -0.050114422150870676
#>     Attrib V31    -0.5007827264959209
#>     Attrib V32    -0.1500818268632252
#>     Attrib V33    0.05382172593850705
#>     Attrib V34    0.0721283275649694
#>     Attrib V35    -0.06952432908562776
#>     Attrib V36    -0.5703111078189474
#>     Attrib V37    -0.6266630151237751
#>     Attrib V38    0.2911080376614296
#>     Attrib V39    0.3647123487418011
#>     Attrib V4    0.24458721650761045
#>     Attrib V40    -0.20750233356229775
#>     Attrib V41    -0.12248306682017217
#>     Attrib V42    0.2651434909797598
#>     Attrib V43    0.23414964938938795
#>     Attrib V44    0.16997881837377654
#>     Attrib V45    0.44273533997618614
#>     Attrib V46    0.2499640194421725
#>     Attrib V47    -0.13260578452471533
#>     Attrib V48    0.056421140894167325
#>     Attrib V49    0.24088276924806842
#>     Attrib V5    0.23260444381504544
#>     Attrib V50    -0.573027895747292
#>     Attrib V51    -0.21899356817512106
#>     Attrib V52    -0.03450977451479196
#>     Attrib V53    0.1852647659025609
#>     Attrib V54    0.4756124150923133
#>     Attrib V55    -0.1695361366403152
#>     Attrib V56    0.37185666734939243
#>     Attrib V57    0.20717460098586354
#>     Attrib V58    0.19186273776625573
#>     Attrib V59    0.5961169510205264
#>     Attrib V6    -0.012213337546503542
#>     Attrib V60    0.2428609631598767
#>     Attrib V7    0.09938688894372255
#>     Attrib V8    -0.1300574488793229
#>     Attrib V9    0.10329918882400235
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.44100918057743266
#>     Attrib V1    0.029990637693426643
#>     Attrib V10    -0.2716484835746868
#>     Attrib V11    -0.3295765928185323
#>     Attrib V12    -0.31103749524189217
#>     Attrib V13    0.1315455334925114
#>     Attrib V14    0.21831983851862632
#>     Attrib V15    0.19252390104335645
#>     Attrib V16    0.216565713617481
#>     Attrib V17    0.25714902788662103
#>     Attrib V18    0.4551094345378175
#>     Attrib V19    -0.009231933109167818
#>     Attrib V2    0.18811694515607344
#>     Attrib V20    -0.00993943222079688
#>     Attrib V21    0.1364318962952304
#>     Attrib V22    0.10039089227395534
#>     Attrib V23    0.028974772653539604
#>     Attrib V24    -0.3116220771043321
#>     Attrib V25    0.27659206030671524
#>     Attrib V26    0.15522983486919079
#>     Attrib V27    -0.09075643290362513
#>     Attrib V28    -0.17498513011141698
#>     Attrib V29    0.11254531746029846
#>     Attrib V3    0.06351990449330987
#>     Attrib V30    -0.18626180756899344
#>     Attrib V31    0.30332574295531356
#>     Attrib V32    -0.036771770912218005
#>     Attrib V33    0.04834971721540233
#>     Attrib V34    0.015680437073545817
#>     Attrib V35    0.04228027898555536
#>     Attrib V36    0.3383776445177023
#>     Attrib V37    0.48879337512025783
#>     Attrib V38    -0.254114365884016
#>     Attrib V39    -0.18287113849635717
#>     Attrib V4    -0.17354962152220624
#>     Attrib V40    0.28291103450901833
#>     Attrib V41    0.10763392547454692
#>     Attrib V42    -0.0037117129019027056
#>     Attrib V43    -0.09213587147155694
#>     Attrib V44    -0.3216010883945507
#>     Attrib V45    -0.3983316701359327
#>     Attrib V46    -0.2889816862723421
#>     Attrib V47    0.07848902057066716
#>     Attrib V48    -0.12536094568049175
#>     Attrib V49    -0.3814138763716323
#>     Attrib V5    -0.23661989341588313
#>     Attrib V50    0.5133358144948197
#>     Attrib V51    0.03334989470932682
#>     Attrib V52    -0.1911025820400171
#>     Attrib V53    -0.08852071376478317
#>     Attrib V54    -0.2068035685194921
#>     Attrib V55    0.3234121811792772
#>     Attrib V56    -0.04677412640335837
#>     Attrib V57    -0.020561923627190778
#>     Attrib V58    -0.16693470300556185
#>     Attrib V59    -0.34770366576995093
#>     Attrib V6    -0.09215291865690538
#>     Attrib V60    0.10250642221158882
#>     Attrib V7    -0.1175124188277767
#>     Attrib V8    -0.020679574786818145
#>     Attrib V9    -0.32521291704536864
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.12239953682330222
#>     Attrib V1    0.09837447696512681
#>     Attrib V10    -0.13377110473013137
#>     Attrib V11    -0.06327673097363662
#>     Attrib V12    -0.00904341098861065
#>     Attrib V13    -0.16508785386682764
#>     Attrib V14    -0.04052972472582407
#>     Attrib V15    0.1549541973183422
#>     Attrib V16    0.08395856536378114
#>     Attrib V17    0.10638435470829787
#>     Attrib V18    -0.19973088969409544
#>     Attrib V19    0.15421832271681035
#>     Attrib V2    -0.010553891168747052
#>     Attrib V20    0.34371376758212296
#>     Attrib V21    0.15162414817334105
#>     Attrib V22    0.07201106125524133
#>     Attrib V23    0.0207339995730736
#>     Attrib V24    0.20392351794552463
#>     Attrib V25    -0.36530270245515445
#>     Attrib V26    -0.4490485954911894
#>     Attrib V27    -0.3523587473803084
#>     Attrib V28    -0.328181942304417
#>     Attrib V29    -0.5841235383519914
#>     Attrib V3    2.457808087623121E-4
#>     Attrib V30    -0.07085514277404728
#>     Attrib V31    -0.35530888012371564
#>     Attrib V32    -0.141824420968459
#>     Attrib V33    0.0935527035052189
#>     Attrib V34    0.13154262082398585
#>     Attrib V35    0.01720684992912062
#>     Attrib V36    -0.4117653134411244
#>     Attrib V37    -0.45675085393643755
#>     Attrib V38    0.2576538400868131
#>     Attrib V39    0.23405246664390028
#>     Attrib V4    0.2467012246775577
#>     Attrib V40    -0.14116669877761406
#>     Attrib V41    -0.13382848737101316
#>     Attrib V42    0.1905557454280645
#>     Attrib V43    0.17046792402083252
#>     Attrib V44    0.1835961636370842
#>     Attrib V45    0.2621910240510432
#>     Attrib V46    0.1813920474255165
#>     Attrib V47    -0.11858008876012802
#>     Attrib V48    0.04640438005822304
#>     Attrib V49    0.17184763493322694
#>     Attrib V5    0.19996721985398339
#>     Attrib V50    -0.44245308768524994
#>     Attrib V51    -0.20541918978713333
#>     Attrib V52    -0.08367907280364259
#>     Attrib V53    0.17811095635121396
#>     Attrib V54    0.43415650302402337
#>     Attrib V55    -0.056768067201696845
#>     Attrib V56    0.2670537572412175
#>     Attrib V57    0.22144318474833524
#>     Attrib V58    0.13580216264824105
#>     Attrib V59    0.5181674611175893
#>     Attrib V6    0.0065470501902089185
#>     Attrib V60    0.27072000002962304
#>     Attrib V7    0.11595814603552897
#>     Attrib V8    -0.11596321343584343
#>     Attrib V9    0.05303580761504403
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.019105911111445207
#>     Attrib V1    0.08746078747301049
#>     Attrib V10    -0.06924513058673695
#>     Attrib V11    0.005059668696194859
#>     Attrib V12    0.06205077035638314
#>     Attrib V13    -0.11809298824490622
#>     Attrib V14    0.022196580721473194
#>     Attrib V15    0.07003397011457488
#>     Attrib V16    0.030074835589132
#>     Attrib V17    -0.020060861752836428
#>     Attrib V18    -0.09824554161256194
#>     Attrib V19    -0.005662524760969497
#>     Attrib V2    -0.033461668539912594
#>     Attrib V20    0.09127735214566622
#>     Attrib V21    0.04630396049740903
#>     Attrib V22    -0.0316777581113204
#>     Attrib V23    0.010774759055118831
#>     Attrib V24    0.09651047742818183
#>     Attrib V25    -0.18647468054756322
#>     Attrib V26    -0.21612807900100314
#>     Attrib V27    -0.11774474229375155
#>     Attrib V28    -0.0479209300233178
#>     Attrib V29    -0.21228008155064113
#>     Attrib V3    0.08096086914643953
#>     Attrib V30    0.0513559955482337
#>     Attrib V31    -0.1847516218362652
#>     Attrib V32    -0.06733674306081998
#>     Attrib V33    0.042319990729820366
#>     Attrib V34    0.09667210882143325
#>     Attrib V35    0.06960386064920272
#>     Attrib V36    -0.07638826849081473
#>     Attrib V37    -0.16590497243691965
#>     Attrib V38    0.10078483652874656
#>     Attrib V39    0.1619055516878792
#>     Attrib V4    0.1395835274633221
#>     Attrib V40    -0.07349080269724298
#>     Attrib V41    -0.08194447376600879
#>     Attrib V42    0.10150171075877015
#>     Attrib V43    0.03612754304913888
#>     Attrib V44    0.13172362087588152
#>     Attrib V45    0.2109972997682153
#>     Attrib V46    0.13618020894255117
#>     Attrib V47    -0.04519743959790435
#>     Attrib V48    0.0142669348201884
#>     Attrib V49    0.15256804293267315
#>     Attrib V5    0.15566153738439562
#>     Attrib V50    -0.23715381044202324
#>     Attrib V51    -0.05076190290893385
#>     Attrib V52    0.007450816477276092
#>     Attrib V53    0.10841351912207083
#>     Attrib V54    0.1616168106082864
#>     Attrib V55    -0.040412983407561436
#>     Attrib V56    0.16527040560048342
#>     Attrib V57    0.14108613472849887
#>     Attrib V58    0.16773231868391467
#>     Attrib V59    0.2903332353346566
#>     Attrib V6    0.06809966962017312
#>     Attrib V60    0.17076029671577403
#>     Attrib V7    0.048525003072655594
#>     Attrib V8    -0.018437069688875738
#>     Attrib V9    0.061962120222337685
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
#>  0.2028986 
```
