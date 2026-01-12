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
#>     Threshold    -0.7237726983847638
#>     Node 2    3.1081880420415344
#>     Node 3    2.084266131278072
#>     Node 4    0.9148135336178316
#>     Node 5    -1.787640170253483
#>     Node 6    0.9113699569552839
#>     Node 7    3.03032523141163
#>     Node 8    0.31578179157625463
#>     Node 9    3.719245506060757
#>     Node 10    -0.41170018192398317
#>     Node 11    0.9412323241221828
#>     Node 12    1.3395607328560728
#>     Node 13    0.601185939457333
#>     Node 14    1.1389962661598398
#>     Node 15    -1.9450750928037213
#>     Node 16    -1.034487280347996
#>     Node 17    0.4321881796270109
#>     Node 18    -0.8776313453142673
#>     Node 19    1.7780135523108704
#>     Node 20    2.2017566901491756
#>     Node 21    -2.3138622137336844
#>     Node 22    0.8313695932656279
#>     Node 23    1.7818701990103443
#>     Node 24    -1.8277881607249946
#>     Node 25    4.616524976607456
#>     Node 26    -0.16428261688254167
#>     Node 27    1.389943487280692
#>     Node 28    -2.6847403346064094
#>     Node 29    1.1038444489099557
#>     Node 30    0.22895640233134093
#>     Node 31    0.653846911739006
#>     Node 32    0.558003376585205
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.7258512274504517
#>     Node 2    -3.136488290270358
#>     Node 3    -2.0529522408391734
#>     Node 4    -0.8773763147336031
#>     Node 5    1.7917103928920934
#>     Node 6    -0.8868563337093696
#>     Node 7    -3.0318273095506143
#>     Node 8    -0.3477509193689106
#>     Node 9    -3.7276985860828935
#>     Node 10    0.35335876786407544
#>     Node 11    -0.9045507741454109
#>     Node 12    -1.4083068394584206
#>     Node 13    -0.5472557919077543
#>     Node 14    -1.066551111600603
#>     Node 15    1.9368270507337806
#>     Node 16    1.0211710475375564
#>     Node 17    -0.3989985178988519
#>     Node 18    0.9208519167648631
#>     Node 19    -1.7821627314123687
#>     Node 20    -2.1800671850900493
#>     Node 21    2.3702548765687035
#>     Node 22    -0.879161703504817
#>     Node 23    -1.8096183821417988
#>     Node 24    1.8063406572679492
#>     Node 25    -4.616277833740604
#>     Node 26    0.08744592797398146
#>     Node 27    -1.4274432579772207
#>     Node 28    2.6337425938109456
#>     Node 29    -1.1348132834739069
#>     Node 30    -0.15033741064815442
#>     Node 31    -0.5920741766685964
#>     Node 32    -0.5753370775574876
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.25543641780785914
#>     Attrib V1    0.5226946999793585
#>     Attrib V10    -0.6604176442053047
#>     Attrib V11    -0.08022201923640157
#>     Attrib V12    -0.15415393805057087
#>     Attrib V13    -0.7701645317620918
#>     Attrib V14    0.11054590257680759
#>     Attrib V15    0.6441436015032121
#>     Attrib V16    0.6095205786316172
#>     Attrib V17    0.41381737040049044
#>     Attrib V18    -0.33886364117597134
#>     Attrib V19    0.47519504800723167
#>     Attrib V2    0.40405415774883996
#>     Attrib V20    0.9569278556455182
#>     Attrib V21    0.8270711710864591
#>     Attrib V22    0.2789680218099677
#>     Attrib V23    0.708806479729478
#>     Attrib V24    0.7462551363406065
#>     Attrib V25    -0.9319089823822557
#>     Attrib V26    -1.1102722147372124
#>     Attrib V27    -0.5611459630942672
#>     Attrib V28    -0.6838624206576551
#>     Attrib V29    0.012509534853113272
#>     Attrib V3    0.04944408705136847
#>     Attrib V30    0.47945073340526806
#>     Attrib V31    -1.606952448389895
#>     Attrib V32    -0.831646392992756
#>     Attrib V33    0.21270194053991018
#>     Attrib V34    -0.20848755699592367
#>     Attrib V35    -0.40226890823061956
#>     Attrib V36    -0.5767806291585489
#>     Attrib V37    -0.48850571346990485
#>     Attrib V38    0.7092423140922025
#>     Attrib V39    0.6094489168304497
#>     Attrib V4    -0.24344395028296667
#>     Attrib V40    -0.44226294216882855
#>     Attrib V41    -0.6005968830935053
#>     Attrib V42    0.6968314332427441
#>     Attrib V43    0.5934179396965742
#>     Attrib V44    0.885134247389368
#>     Attrib V45    0.923952253682827
#>     Attrib V46    0.4655442301916297
#>     Attrib V47    -0.019223623286919914
#>     Attrib V48    -0.04168193927873939
#>     Attrib V49    0.29065197660514513
#>     Attrib V5    -0.19537038671354628
#>     Attrib V50    -0.4189360646516723
#>     Attrib V51    -0.08239733189071963
#>     Attrib V52    0.6673149356413873
#>     Attrib V53    0.8440092338807152
#>     Attrib V54    0.8525320079594939
#>     Attrib V55    0.4455778318734352
#>     Attrib V56    0.6552217127748916
#>     Attrib V57    0.07018300590985194
#>     Attrib V58    0.5037309977070035
#>     Attrib V59    0.6113181399372122
#>     Attrib V6    -0.6858370403438857
#>     Attrib V60    0.01720429492608769
#>     Attrib V7    -0.6393983538945649
#>     Attrib V8    0.03290530550754173
#>     Attrib V9    -0.17600414331064673
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.15251364204970821
#>     Attrib V1    0.39916709442695764
#>     Attrib V10    -0.45691684219016115
#>     Attrib V11    -0.11965544580084553
#>     Attrib V12    -0.14571547815459318
#>     Attrib V13    -0.5726230998801496
#>     Attrib V14    0.06356978484689849
#>     Attrib V15    0.5298339992527291
#>     Attrib V16    0.480995200773212
#>     Attrib V17    0.34271244081621505
#>     Attrib V18    -0.24730511529227614
#>     Attrib V19    0.44409344142795554
#>     Attrib V2    0.3741043939050961
#>     Attrib V20    0.6773231679947284
#>     Attrib V21    0.49558461229669937
#>     Attrib V22    0.19733097435246283
#>     Attrib V23    0.480117317641892
#>     Attrib V24    0.4815044539565792
#>     Attrib V25    -0.7241811387419993
#>     Attrib V26    -0.8419877110803811
#>     Attrib V27    -0.517251089774696
#>     Attrib V28    -0.6976717857428198
#>     Attrib V29    -0.23661311738600221
#>     Attrib V3    0.08473056898159673
#>     Attrib V30    0.2658504548283028
#>     Attrib V31    -1.0467373941302234
#>     Attrib V32    -0.45474277090875465
#>     Attrib V33    0.2287708930650746
#>     Attrib V34    -0.18004355188445356
#>     Attrib V35    -0.26590389748335275
#>     Attrib V36    -0.4625012643853367
#>     Attrib V37    -0.4285296587962883
#>     Attrib V38    0.36084928242640607
#>     Attrib V39    0.3851171809248336
#>     Attrib V4    -0.13820653202287247
#>     Attrib V40    -0.2960738963869634
#>     Attrib V41    -0.3867937536590938
#>     Attrib V42    0.4400412505100308
#>     Attrib V43    0.3207842354866966
#>     Attrib V44    0.5388635530994949
#>     Attrib V45    0.6393124218699818
#>     Attrib V46    0.3219717656102226
#>     Attrib V47    0.03642607188644912
#>     Attrib V48    -0.016079593054874587
#>     Attrib V49    0.2588525660161423
#>     Attrib V5    -0.13500550778175582
#>     Attrib V50    -0.250352915155919
#>     Attrib V51    -0.06461673736640192
#>     Attrib V52    0.5086924969524548
#>     Attrib V53    0.5571289302474509
#>     Attrib V54    0.6180994367615734
#>     Attrib V55    0.31755748917650706
#>     Attrib V56    0.5276552459745747
#>     Attrib V57    0.0824643854498183
#>     Attrib V58    0.46892528573682046
#>     Attrib V59    0.42804910278207675
#>     Attrib V6    -0.5061563466461115
#>     Attrib V60    0.06957077391831343
#>     Attrib V7    -0.5552211705037217
#>     Attrib V8    0.006141950128631477
#>     Attrib V9    -0.1178072120128218
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.108089493211774
#>     Attrib V1    0.20025234474588624
#>     Attrib V10    -0.07532479430244005
#>     Attrib V11    0.1015099729250858
#>     Attrib V12    0.039450442261981016
#>     Attrib V13    -0.2761946711073372
#>     Attrib V14    -0.0700992569082904
#>     Attrib V15    0.13698766245640842
#>     Attrib V16    0.13497743126457068
#>     Attrib V17    0.08738001620391413
#>     Attrib V18    -0.2415428519123947
#>     Attrib V19    0.22883783376323816
#>     Attrib V2    0.18689969507664803
#>     Attrib V20    0.288474243604804
#>     Attrib V21    0.18317110899897973
#>     Attrib V22    0.02330269890746691
#>     Attrib V23    0.24115554318871069
#>     Attrib V24    0.23889208115157132
#>     Attrib V25    -0.4121502286684636
#>     Attrib V26    -0.23586643736502239
#>     Attrib V27    -0.07453257726614705
#>     Attrib V28    -0.175336425042431
#>     Attrib V29    0.0646751102058756
#>     Attrib V3    0.10383858757033858
#>     Attrib V30    0.2435402744116103
#>     Attrib V31    -0.457820562835702
#>     Attrib V32    -0.10726573860577165
#>     Attrib V33    0.10556830137857788
#>     Attrib V34    -0.09069773087576662
#>     Attrib V35    0.0033705113837638333
#>     Attrib V36    -0.23838346083607226
#>     Attrib V37    -0.2318197224993809
#>     Attrib V38    0.11987907393738581
#>     Attrib V39    0.1811755499979029
#>     Attrib V4    -0.0746176001286842
#>     Attrib V40    -0.1430566418047997
#>     Attrib V41    -0.10304078317360259
#>     Attrib V42    0.14029145291311423
#>     Attrib V43    0.09557162838955459
#>     Attrib V44    0.3489137297576744
#>     Attrib V45    0.5896463060235657
#>     Attrib V46    0.2352349837660824
#>     Attrib V47    0.04887728266779892
#>     Attrib V48    0.09175922530369184
#>     Attrib V49    0.2826189998750456
#>     Attrib V5    0.1014894862595081
#>     Attrib V50    -0.19499477844690224
#>     Attrib V51    -0.006801433590060497
#>     Attrib V52    0.2927439306108439
#>     Attrib V53    0.3013954663192149
#>     Attrib V54    0.08841773604354303
#>     Attrib V55    -0.03187699459082234
#>     Attrib V56    0.18988818387395184
#>     Attrib V57    -0.0758802776239668
#>     Attrib V58    0.17051737618414115
#>     Attrib V59    0.10890478422805243
#>     Attrib V6    -0.1777860115799128
#>     Attrib V60    0.004639053571075871
#>     Attrib V7    -0.3586851133516137
#>     Attrib V8    -0.15748590895281545
#>     Attrib V9    0.09425495030098201
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5003410891862066
#>     Attrib V1    -0.27278368753724014
#>     Attrib V10    0.0649680718869268
#>     Attrib V11    -0.34570786736840237
#>     Attrib V12    -0.42309047206734035
#>     Attrib V13    0.2826184364580854
#>     Attrib V14    0.1531778251170088
#>     Attrib V15    -0.17558207012779878
#>     Attrib V16    -0.3037202296723884
#>     Attrib V17    -0.0968367477742742
#>     Attrib V18    0.5078615471424803
#>     Attrib V19    -0.36088833396133907
#>     Attrib V2    -0.25692044004217884
#>     Attrib V20    -0.389972243808729
#>     Attrib V21    -0.03877751495295756
#>     Attrib V22    -6.505339661976328E-4
#>     Attrib V23    -0.40022221408283465
#>     Attrib V24    -0.4862942694238282
#>     Attrib V25    0.8311113254628517
#>     Attrib V26    0.49428805626637423
#>     Attrib V27    0.0801054478632319
#>     Attrib V28    0.31559268923978473
#>     Attrib V29    -0.1154986114642505
#>     Attrib V3    0.013402116820871387
#>     Attrib V30    -0.3388454546566897
#>     Attrib V31    0.873078090198623
#>     Attrib V32    0.06615529904924367
#>     Attrib V33    -0.23421312854017184
#>     Attrib V34    0.19679883394684472
#>     Attrib V35    0.22578600013795228
#>     Attrib V36    0.7226303645686075
#>     Attrib V37    0.6096261516333933
#>     Attrib V38    -0.16336674121874767
#>     Attrib V39    -0.2619476037659003
#>     Attrib V4    0.19626915852610938
#>     Attrib V40    0.2632590968189468
#>     Attrib V41    -0.03795129804104643
#>     Attrib V42    -0.2112330928442641
#>     Attrib V43    0.019538383434627857
#>     Attrib V44    -0.08687795122380196
#>     Attrib V45    -0.6864603155605487
#>     Attrib V46    -0.39983303025814404
#>     Attrib V47    -0.05965827074504293
#>     Attrib V48    -0.09842032814539277
#>     Attrib V49    -0.5046595705916542
#>     Attrib V5    -0.09282454931598451
#>     Attrib V50    0.5341132241214178
#>     Attrib V51    0.01577622704379958
#>     Attrib V52    -0.6213141639508531
#>     Attrib V53    -0.5440498976586813
#>     Attrib V54    -0.09640759208859909
#>     Attrib V55    0.04964947166055204
#>     Attrib V56    -0.242849451006041
#>     Attrib V57    0.3111369592026035
#>     Attrib V58    -0.41860521957989855
#>     Attrib V59    -0.10542987624434323
#>     Attrib V6    0.17700515195428204
#>     Attrib V60    -0.088185929281704
#>     Attrib V7    0.6846065861101226
#>     Attrib V8    0.2737365840543348
#>     Attrib V9    -0.13372192168715732
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.11150677017310064
#>     Attrib V1    0.28528411716212604
#>     Attrib V10    -0.19241021780853051
#>     Attrib V11    0.02349618610851638
#>     Attrib V12    0.03197973501339396
#>     Attrib V13    -0.3179133074353163
#>     Attrib V14    -0.03478122316510619
#>     Attrib V15    0.16990369052405233
#>     Attrib V16    0.257066984729944
#>     Attrib V17    0.12396131835387794
#>     Attrib V18    -0.10819837120515029
#>     Attrib V19    0.2183782293196075
#>     Attrib V2    0.2362152646829857
#>     Attrib V20    0.3197121909146081
#>     Attrib V21    0.21151796933458683
#>     Attrib V22    0.016893161513044087
#>     Attrib V23    0.17623955594964
#>     Attrib V24    0.22606154590216518
#>     Attrib V25    -0.374462235461834
#>     Attrib V26    -0.31831580691469574
#>     Attrib V27    -0.1265706307520254
#>     Attrib V28    -0.3878216298105828
#>     Attrib V29    -0.14536264838305551
#>     Attrib V3    0.09854257550473518
#>     Attrib V30    0.09228373877865162
#>     Attrib V31    -0.5563943560345701
#>     Attrib V32    -0.14438548385250774
#>     Attrib V33    0.09611912589936944
#>     Attrib V34    -0.13409211618551106
#>     Attrib V35    -0.06687811873561955
#>     Attrib V36    -0.2763262223524046
#>     Attrib V37    -0.24925827200648024
#>     Attrib V38    0.14947333396347176
#>     Attrib V39    0.15733497508768396
#>     Attrib V4    0.0014918479900495633
#>     Attrib V40    -0.18706190915383972
#>     Attrib V41    -0.09785354639314606
#>     Attrib V42    0.18586757375432958
#>     Attrib V43    0.1208983606423646
#>     Attrib V44    0.23142293988557025
#>     Attrib V45    0.42177708391818813
#>     Attrib V46    0.21587633549021995
#>     Attrib V47    0.015606976575237044
#>     Attrib V48    0.008071733987150269
#>     Attrib V49    0.16828799284434476
#>     Attrib V5    0.02683430000822025
#>     Attrib V50    -0.12810409801371248
#>     Attrib V51    -0.007129290030914566
#>     Attrib V52    0.2686745997376268
#>     Attrib V53    0.3567871783491675
#>     Attrib V54    0.21829199051001588
#>     Attrib V55    0.045804600830270215
#>     Attrib V56    0.25347453509271556
#>     Attrib V57    0.0030773943899122776
#>     Attrib V58    0.24165813129001093
#>     Attrib V59    0.19921694240375368
#>     Attrib V6    -0.16427653070700673
#>     Attrib V60    0.1050139204635995
#>     Attrib V7    -0.3158609753724769
#>     Attrib V8    -0.050583329537033525
#>     Attrib V9    0.06450745459206716
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.3927293429622924
#>     Attrib V1    0.41138563777585374
#>     Attrib V10    0.7518541230823494
#>     Attrib V11    1.0016633346649098
#>     Attrib V12    0.9266556682606643
#>     Attrib V13    0.07480327156978483
#>     Attrib V14    -0.5672834442775401
#>     Attrib V15    -0.5334958267177877
#>     Attrib V16    -0.45786312627227804
#>     Attrib V17    -0.5783183693557972
#>     Attrib V18    -0.7553764963463987
#>     Attrib V19    0.530648106210304
#>     Attrib V2    0.40557599487487983
#>     Attrib V20    0.149235779432042
#>     Attrib V21    -0.3132722758601085
#>     Attrib V22    0.16224553797038233
#>     Attrib V23    0.8537998576038842
#>     Attrib V24    0.8667585445644328
#>     Attrib V25    0.1628550315224534
#>     Attrib V26    1.1273788767553847
#>     Attrib V27    1.2292906719999848
#>     Attrib V28    0.9645771558054987
#>     Attrib V29    1.2773062602699732
#>     Attrib V3    0.3369324836092711
#>     Attrib V30    0.727984185180971
#>     Attrib V31    -0.31752843689486254
#>     Attrib V32    0.0834065394265914
#>     Attrib V33    -0.30856049733546115
#>     Attrib V34    -0.38108827400830475
#>     Attrib V35    0.3518630755380335
#>     Attrib V36    -0.6228427110576142
#>     Attrib V37    -0.3729123334725997
#>     Attrib V38    -0.13093616844095768
#>     Attrib V39    0.44381016516120286
#>     Attrib V4    0.028389507803615172
#>     Attrib V40    0.3790038931948415
#>     Attrib V41    1.054950517760364
#>     Attrib V42    -0.010060206648828058
#>     Attrib V43    -0.2566116167916677
#>     Attrib V44    0.15852754236604918
#>     Attrib V45    0.9721718578073295
#>     Attrib V46    0.814955218043115
#>     Attrib V47    0.577848013834523
#>     Attrib V48    0.357569005715248
#>     Attrib V49    0.8518720356491619
#>     Attrib V5    0.9573466551914068
#>     Attrib V50    -0.4677766000742979
#>     Attrib V51    0.25109502527138333
#>     Attrib V52    0.9559187627946133
#>     Attrib V53    0.8749202046932224
#>     Attrib V54    -0.1940091601763904
#>     Attrib V55    -0.4414299919124035
#>     Attrib V56    -0.4328734686748014
#>     Attrib V57    -0.8534378834148318
#>     Attrib V58    0.025739986399849507
#>     Attrib V59    -0.10934017948677949
#>     Attrib V6    0.8733871194208
#>     Attrib V60    0.16082930522546326
#>     Attrib V7    -0.3537958248555413
#>     Attrib V8    -0.6485626534339733
#>     Attrib V9    0.6442686814205809
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.05418250576279474
#>     Attrib V1    0.11449701357703271
#>     Attrib V10    0.038035933229536883
#>     Attrib V11    0.0745020222011286
#>     Attrib V12    0.007629090998763007
#>     Attrib V13    -0.08487640500145702
#>     Attrib V14    -0.08202837771980187
#>     Attrib V15    -0.011296236263289575
#>     Attrib V16    0.040708093822165094
#>     Attrib V17    -0.054216989906707404
#>     Attrib V18    -0.18272609627775344
#>     Attrib V19    0.0024234273932730167
#>     Attrib V2    0.1528260767222358
#>     Attrib V20    -0.0545940979671512
#>     Attrib V21    -0.0610822504748948
#>     Attrib V22    -0.08751472243242066
#>     Attrib V23    0.013828879747949838
#>     Attrib V24    0.08212661636536168
#>     Attrib V25    -0.10022111581515375
#>     Attrib V26    0.006828991038478365
#>     Attrib V27    0.04007435391268232
#>     Attrib V28    -0.020933005471754865
#>     Attrib V29    0.02954905842910175
#>     Attrib V3    0.12091304259895116
#>     Attrib V30    0.10594577007762365
#>     Attrib V31    -0.07123794485856648
#>     Attrib V32    0.061996010911189316
#>     Attrib V33    0.08588944711109398
#>     Attrib V34    -0.029374992308823705
#>     Attrib V35    0.02989468254265152
#>     Attrib V36    -0.008900576831542285
#>     Attrib V37    -0.05703375921010705
#>     Attrib V38    0.10605640762783708
#>     Attrib V39    0.08204773389088064
#>     Attrib V4    0.1286248776183471
#>     Attrib V40    -0.011129931912356622
#>     Attrib V41    0.025775748594299173
#>     Attrib V42    -0.011949691943890051
#>     Attrib V43    0.05436472696691983
#>     Attrib V44    0.18466301027168894
#>     Attrib V45    0.25699160346859234
#>     Attrib V46    0.19049977592271236
#>     Attrib V47    0.11767777008298666
#>     Attrib V48    0.1388501095427455
#>     Attrib V49    0.16052794498974826
#>     Attrib V5    0.09100044824918951
#>     Attrib V50    -0.04614193859105281
#>     Attrib V51    0.037168653641945576
#>     Attrib V52    0.15056829363083105
#>     Attrib V53    0.1621875535786229
#>     Attrib V54    0.07982468958351142
#>     Attrib V55    -0.006430274159644194
#>     Attrib V56    0.03142095977431983
#>     Attrib V57    0.10201673213474892
#>     Attrib V58    0.07813800994309383
#>     Attrib V59    0.0882921124983075
#>     Attrib V6    -0.03822738577924369
#>     Attrib V60    0.06755945398416298
#>     Attrib V7    -0.07690224653121372
#>     Attrib V8    -0.015982279371531995
#>     Attrib V9    0.08987201270171025
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.23265533998725835
#>     Attrib V1    0.39052719952841036
#>     Attrib V10    1.0841946624331031
#>     Attrib V11    1.2115343366785347
#>     Attrib V12    1.3168498072034898
#>     Attrib V13    0.4120426708322494
#>     Attrib V14    -0.6717845789534149
#>     Attrib V15    -0.6935766278368525
#>     Attrib V16    -0.6959157066472302
#>     Attrib V17    -0.8602548379436176
#>     Attrib V18    -1.0123981306417724
#>     Attrib V19    0.3588365091437805
#>     Attrib V2    0.5115146487934431
#>     Attrib V20    -0.10409161907205688
#>     Attrib V21    -0.525037210741499
#>     Attrib V22    0.11464167005983514
#>     Attrib V23    0.7416727080019269
#>     Attrib V24    0.7900638255009416
#>     Attrib V25    0.22661481716160517
#>     Attrib V26    1.3214640056305689
#>     Attrib V27    1.4409647984109755
#>     Attrib V28    1.1307842802369885
#>     Attrib V29    1.2679148419328579
#>     Attrib V3    0.44076170524690955
#>     Attrib V30    0.5725483797648001
#>     Attrib V31    -0.3451462668892327
#>     Attrib V32    0.33513998472758266
#>     Attrib V33    -0.29505680448286803
#>     Attrib V34    -0.2826041531007818
#>     Attrib V35    0.4828050821877367
#>     Attrib V36    -0.6510424816711616
#>     Attrib V37    -0.35637099061942556
#>     Attrib V38    -0.15745683757698337
#>     Attrib V39    0.5587568510845436
#>     Attrib V4    0.091272776964285
#>     Attrib V40    0.47454137453678513
#>     Attrib V41    1.2665299609754106
#>     Attrib V42    -0.26025411847741364
#>     Attrib V43    -0.3683216368145478
#>     Attrib V44    -0.025589488950624805
#>     Attrib V45    1.05482471332334
#>     Attrib V46    0.9023417240285618
#>     Attrib V47    0.6134790151842651
#>     Attrib V48    0.33610151753403883
#>     Attrib V49    0.949881913805977
#>     Attrib V5    1.091226363462238
#>     Attrib V50    -0.5952378409472017
#>     Attrib V51    0.3210504592808502
#>     Attrib V52    1.0431558312721891
#>     Attrib V53    0.9867125420053958
#>     Attrib V54    -0.2845092742297441
#>     Attrib V55    -0.3858655759518583
#>     Attrib V56    -0.5194529194999054
#>     Attrib V57    -1.101970485234278
#>     Attrib V58    0.011229889019583772
#>     Attrib V59    -0.22030839860996365
#>     Attrib V6    1.019444409307726
#>     Attrib V60    0.16944520822481368
#>     Attrib V7    -0.47889548034833973
#>     Attrib V8    -0.737662024830774
#>     Attrib V9    0.8350979560501417
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.16332318793473277
#>     Attrib V1    0.04874357042020006
#>     Attrib V10    0.01404424232141116
#>     Attrib V11    -0.06933440629921529
#>     Attrib V12    -0.0259958806726212
#>     Attrib V13    0.06980709017036772
#>     Attrib V14    0.09564724554059732
#>     Attrib V15    -0.015106980409649449
#>     Attrib V16    0.0061034037191797785
#>     Attrib V17    -0.01895893784406624
#>     Attrib V18    0.1539960719736236
#>     Attrib V19    -0.018632760073442896
#>     Attrib V2    0.0029618959133724783
#>     Attrib V20    -0.04573650905244848
#>     Attrib V21    -0.013343445600782529
#>     Attrib V22    -0.026825971861554377
#>     Attrib V23    3.97404254495492E-4
#>     Attrib V24    -0.10163685529759973
#>     Attrib V25    0.03475454816509233
#>     Attrib V26    -0.05902591726226294
#>     Attrib V27    -0.11812890813905799
#>     Attrib V28    -0.03816609506602855
#>     Attrib V29    -0.08531799439834596
#>     Attrib V3    0.03023706553679539
#>     Attrib V30    0.01660843319148881
#>     Attrib V31    0.18206043067389785
#>     Attrib V32    -0.0029796203420512117
#>     Attrib V33    0.12435156574497024
#>     Attrib V34    0.17216404697185408
#>     Attrib V35    0.14303029208687243
#>     Attrib V36    0.18728777056933776
#>     Attrib V37    0.13479161827653796
#>     Attrib V38    0.04880619933704712
#>     Attrib V39    0.03890867181119359
#>     Attrib V4    0.06616041482217457
#>     Attrib V40    0.22424613950476932
#>     Attrib V41    0.16237680678617347
#>     Attrib V42    0.0719499727426348
#>     Attrib V43    0.04611049394792761
#>     Attrib V44    -0.021394511298388014
#>     Attrib V45    -0.135539106204137
#>     Attrib V46    -0.10414011248270853
#>     Attrib V47    -0.013199209240069856
#>     Attrib V48    -0.04188059169895211
#>     Attrib V49    -0.10602379301469383
#>     Attrib V5    0.02029083477980012
#>     Attrib V50    0.16812316886354287
#>     Attrib V51    0.05648711994109536
#>     Attrib V52    -0.05016640103663124
#>     Attrib V53    0.019042196245424626
#>     Attrib V54    0.032828039342778594
#>     Attrib V55    0.04265995040161818
#>     Attrib V56    0.03327547125809169
#>     Attrib V57    0.12179020204199474
#>     Attrib V58    -0.016689929953852344
#>     Attrib V59    0.020341057262203983
#>     Attrib V6    0.18074557090430626
#>     Attrib V60    0.020035728037275463
#>     Attrib V7    0.20524556038177985
#>     Attrib V8    0.12198372438679655
#>     Attrib V9    -0.024219311191696784
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.06039742803091151
#>     Attrib V1    0.22736427991699268
#>     Attrib V10    -0.14871899950090267
#>     Attrib V11    0.053797926160490735
#>     Attrib V12    0.04378296703696338
#>     Attrib V13    -0.3174008072244314
#>     Attrib V14    -0.038020635400008974
#>     Attrib V15    0.1600486919328522
#>     Attrib V16    0.20517085169237287
#>     Attrib V17    0.1918843084815407
#>     Attrib V18    -0.12498419015870453
#>     Attrib V19    0.22402917182271914
#>     Attrib V2    0.18176093289485784
#>     Attrib V20    0.3575675280918345
#>     Attrib V21    0.1870038006863332
#>     Attrib V22    0.02707762886642928
#>     Attrib V23    0.2036049759210913
#>     Attrib V24    0.20715508217087478
#>     Attrib V25    -0.3887801209390122
#>     Attrib V26    -0.3542217396927591
#>     Attrib V27    -0.15293609483654946
#>     Attrib V28    -0.328823119168975
#>     Attrib V29    -0.12108124994988954
#>     Attrib V3    0.040506613950591165
#>     Attrib V30    0.14652037738506876
#>     Attrib V31    -0.5582127695775516
#>     Attrib V32    -0.17198022022796805
#>     Attrib V33    0.09001267635702523
#>     Attrib V34    -0.0585249524050841
#>     Attrib V35    -0.005674147653920651
#>     Attrib V36    -0.1917519488172297
#>     Attrib V37    -0.23874460267044595
#>     Attrib V38    0.22894804937829616
#>     Attrib V39    0.1635707126037829
#>     Attrib V4    -0.0541125969061304
#>     Attrib V40    -0.19700901745869226
#>     Attrib V41    -0.21916874644763243
#>     Attrib V42    0.13091737418121022
#>     Attrib V43    0.13373750357147182
#>     Attrib V44    0.32465521643385287
#>     Attrib V45    0.5070142184702768
#>     Attrib V46    0.21839743549028565
#>     Attrib V47    0.07181197555781693
#>     Attrib V48    0.07283792275433325
#>     Attrib V49    0.18841989635184256
#>     Attrib V5    0.044024733281047224
#>     Attrib V50    -0.1381218200870572
#>     Attrib V51    0.05156556012809486
#>     Attrib V52    0.24853046006584723
#>     Attrib V53    0.2613452472107455
#>     Attrib V54    0.2799043843465656
#>     Attrib V55    0.0654370472367412
#>     Attrib V56    0.22916838793365737
#>     Attrib V57    -0.006929513922135951
#>     Attrib V58    0.23133359940934325
#>     Attrib V59    0.09822519827647255
#>     Attrib V6    -0.20424419447965816
#>     Attrib V60    0.054688897552619166
#>     Attrib V7    -0.3770950792708992
#>     Attrib V8    -0.060697226506072156
#>     Attrib V9    0.045632857820252976
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.11334011860861891
#>     Attrib V1    0.28638685510957695
#>     Attrib V10    -0.3476741561590525
#>     Attrib V11    0.009981198073732923
#>     Attrib V12    -0.11352977538380558
#>     Attrib V13    -0.4091403889907549
#>     Attrib V14    0.047176865571343644
#>     Attrib V15    0.30693432088226313
#>     Attrib V16    0.3777391748733274
#>     Attrib V17    0.2832310318033829
#>     Attrib V18    -0.12230167494536305
#>     Attrib V19    0.3710635578861927
#>     Attrib V2    0.3225590867402571
#>     Attrib V20    0.4513789492132683
#>     Attrib V21    0.3266384875632208
#>     Attrib V22    0.14177825287922788
#>     Attrib V23    0.33308549999837134
#>     Attrib V24    0.2827988748727785
#>     Attrib V25    -0.5711398710734539
#>     Attrib V26    -0.5672417844156078
#>     Attrib V27    -0.30866405313406975
#>     Attrib V28    -0.5649618592283776
#>     Attrib V29    -0.16881064594029913
#>     Attrib V3    0.041284856128069834
#>     Attrib V30    0.11063177040412406
#>     Attrib V31    -0.8160635281351587
#>     Attrib V32    -0.33962716652931324
#>     Attrib V33    0.17570263386524457
#>     Attrib V34    -0.08668443479462062
#>     Attrib V35    -0.13586076458278326
#>     Attrib V36    -0.2796509605075502
#>     Attrib V37    -0.29593592945163155
#>     Attrib V38    0.2862565812084545
#>     Attrib V39    0.21594181628288153
#>     Attrib V4    -0.03840307701625585
#>     Attrib V40    -0.19523871031058862
#>     Attrib V41    -0.2703479120836813
#>     Attrib V42    0.2428584823611164
#>     Attrib V43    0.243778231397521
#>     Attrib V44    0.2925177902764233
#>     Attrib V45    0.49527768314875004
#>     Attrib V46    0.29139472535531635
#>     Attrib V47    0.003696262821463253
#>     Attrib V48    0.03921289636937438
#>     Attrib V49    0.16425028242503162
#>     Attrib V5    -0.04646204534837305
#>     Attrib V50    -0.20808750053031905
#>     Attrib V51    0.02282171419537275
#>     Attrib V52    0.3993016872105235
#>     Attrib V53    0.44218801721154827
#>     Attrib V54    0.3866551681376699
#>     Attrib V55    0.14113126092562153
#>     Attrib V56    0.37170434391578255
#>     Attrib V57    0.06764629223932363
#>     Attrib V58    0.3396598799076865
#>     Attrib V59    0.28887744855353753
#>     Attrib V6    -0.3710646260833247
#>     Attrib V60    0.10664316101184204
#>     Attrib V7    -0.3862595660617565
#>     Attrib V8    -0.017553831133263937
#>     Attrib V9    -0.009243964124226206
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.04708098284848751
#>     Attrib V1    0.19931723548262073
#>     Attrib V10    -0.08733138054196105
#>     Attrib V11    0.058934331241021445
#>     Attrib V12    0.034305227321480836
#>     Attrib V13    -0.12346400639505475
#>     Attrib V14    -0.03764657573961102
#>     Attrib V15    0.05691382322529736
#>     Attrib V16    0.058109617190039424
#>     Attrib V17    0.051830269361424486
#>     Attrib V18    -0.14641493809970718
#>     Attrib V19    0.1344795615839442
#>     Attrib V2    0.16866204575768923
#>     Attrib V20    0.20767541184078273
#>     Attrib V21    0.09637550500126975
#>     Attrib V22    -0.01574368127245901
#>     Attrib V23    0.16360269039747857
#>     Attrib V24    0.17532747594631412
#>     Attrib V25    -0.18789211053544547
#>     Attrib V26    -0.1646983362749513
#>     Attrib V27    0.021817189612991346
#>     Attrib V28    -0.19908992752988322
#>     Attrib V29    -0.02731687326418992
#>     Attrib V3    0.1544842148078618
#>     Attrib V30    0.09522289225949422
#>     Attrib V31    -0.38534591467216317
#>     Attrib V32    -0.07960500164589535
#>     Attrib V33    0.01952576560248673
#>     Attrib V34    -0.057516489054792105
#>     Attrib V35    -0.020019074643993905
#>     Attrib V36    -0.1652938416159086
#>     Attrib V37    -0.1418593045603425
#>     Attrib V38    0.12290986644027503
#>     Attrib V39    0.18645520370606383
#>     Attrib V4    0.034459006889681135
#>     Attrib V40    -0.06690155066203969
#>     Attrib V41    -0.04660628624092902
#>     Attrib V42    0.09704210795580359
#>     Attrib V43    0.05049031764302562
#>     Attrib V44    0.19675812940974596
#>     Attrib V45    0.31842659152677216
#>     Attrib V46    0.21395063509000117
#>     Attrib V47    0.097351944600651
#>     Attrib V48    0.042040404406411346
#>     Attrib V49    0.18844638043886042
#>     Attrib V5    0.09997770616919008
#>     Attrib V50    -0.13432916965405367
#>     Attrib V51    -0.004539932693644402
#>     Attrib V52    0.20773005443228715
#>     Attrib V53    0.24286098493803557
#>     Attrib V54    0.13236865403678383
#>     Attrib V55    0.002971737354567261
#>     Attrib V56    0.13800259111497679
#>     Attrib V57    -0.007873295997464773
#>     Attrib V58    0.1356958035394215
#>     Attrib V59    0.14609037719499815
#>     Attrib V6    -0.0731036303299218
#>     Attrib V60    0.09824280428169498
#>     Attrib V7    -0.1805801991488608
#>     Attrib V8    -0.1060163219633149
#>     Attrib V9    0.050521310130560264
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.03236218505244956
#>     Attrib V1    0.3368379476386348
#>     Attrib V10    -0.20069092576163558
#>     Attrib V11    0.050301852251603336
#>     Attrib V12    -0.014201106130211846
#>     Attrib V13    -0.35079667972929696
#>     Attrib V14    -0.012391311726105905
#>     Attrib V15    0.29367563843081224
#>     Attrib V16    0.2610736002357063
#>     Attrib V17    0.22196843365559066
#>     Attrib V18    -0.13058681284734477
#>     Attrib V19    0.21516530667704445
#>     Attrib V2    0.2732443098368773
#>     Attrib V20    0.34794017989248766
#>     Attrib V21    0.2236745190536254
#>     Attrib V22    0.042311925939183974
#>     Attrib V23    0.2319878484871613
#>     Attrib V24    0.18042688807841023
#>     Attrib V25    -0.48047030267016827
#>     Attrib V26    -0.41068682273063
#>     Attrib V27    -0.2891832621750457
#>     Attrib V28    -0.5355634034433286
#>     Attrib V29    -0.27230615262417673
#>     Attrib V3    0.048038256229570475
#>     Attrib V30    0.06962154302675969
#>     Attrib V31    -0.5860195221220542
#>     Attrib V32    -0.19702458067135603
#>     Attrib V33    0.13846892716348902
#>     Attrib V34    -0.12418108218259652
#>     Attrib V35    -0.07586741198036989
#>     Attrib V36    -0.2753915702803753
#>     Attrib V37    -0.24614861083456585
#>     Attrib V38    0.16450050833053126
#>     Attrib V39    0.18501588186830065
#>     Attrib V4    -0.043519516926852
#>     Attrib V40    -0.2235188363859594
#>     Attrib V41    -0.2758921496632161
#>     Attrib V42    0.09618003880607975
#>     Attrib V43    0.10174067930579926
#>     Attrib V44    0.29254498938888485
#>     Attrib V45    0.37298468635895954
#>     Attrib V46    0.2300292287327864
#>     Attrib V47    0.004781444392763982
#>     Attrib V48    0.06777615930616628
#>     Attrib V49    0.22772861599848773
#>     Attrib V5    -0.056620963694036935
#>     Attrib V50    -0.13518320966935554
#>     Attrib V51    -0.019892864756320648
#>     Attrib V52    0.29573115467728184
#>     Attrib V53    0.2828954108903193
#>     Attrib V54    0.3742220854622495
#>     Attrib V55    0.2100948158182714
#>     Attrib V56    0.32286613138447473
#>     Attrib V57    0.05689835743836616
#>     Attrib V58    0.318272240642405
#>     Attrib V59    0.19230161416707103
#>     Attrib V6    -0.2925250012892049
#>     Attrib V60    0.1526526246535944
#>     Attrib V7    -0.3757518304194084
#>     Attrib V8    -0.0888573031179715
#>     Attrib V9    0.01148267941872532
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.7719384718309634
#>     Attrib V1    -0.3114555142426537
#>     Attrib V10    -0.141406395390646
#>     Attrib V11    -0.7602075014895919
#>     Attrib V12    -0.7005339437291088
#>     Attrib V13    0.12362599982077992
#>     Attrib V14    0.23284899765074896
#>     Attrib V15    -0.047219017175144096
#>     Attrib V16    -0.04951487874827748
#>     Attrib V17    0.1426826451579978
#>     Attrib V18    0.8244548386140805
#>     Attrib V19    -0.2185996432441071
#>     Attrib V2    -0.343588620605161
#>     Attrib V20    -0.23308679653766048
#>     Attrib V21    0.08108881645398089
#>     Attrib V22    0.11783611693409901
#>     Attrib V23    -0.6763917004594089
#>     Attrib V24    -0.7783224429069274
#>     Attrib V25    0.7058921485352901
#>     Attrib V26    0.3088311208958909
#>     Attrib V27    -0.2501364363012138
#>     Attrib V28    0.057269441181020925
#>     Attrib V29    -0.39821114047326944
#>     Attrib V3    0.06975035859535154
#>     Attrib V30    -0.4614842578557341
#>     Attrib V31    1.013487542467289
#>     Attrib V32    -0.028305872205771056
#>     Attrib V33    -0.31625716245842667
#>     Attrib V34    0.22505387250760076
#>     Attrib V35    0.025860735593957723
#>     Attrib V36    0.8118815287425635
#>     Attrib V37    0.7097434844046022
#>     Attrib V38    -0.09492904627368949
#>     Attrib V39    -0.28115372925544624
#>     Attrib V4    0.35768933570050593
#>     Attrib V40    0.3383395402950942
#>     Attrib V41    -0.09430360218700323
#>     Attrib V42    -0.19142938117527483
#>     Attrib V43    0.02540959519564829
#>     Attrib V44    -0.16027930651224234
#>     Attrib V45    -0.7265448629615721
#>     Attrib V46    -0.345862965776092
#>     Attrib V47    0.04632099475522266
#>     Attrib V48    0.049464308138129263
#>     Attrib V49    -0.5164753655629023
#>     Attrib V5    -0.1685445341674323
#>     Attrib V50    0.786707603363323
#>     Attrib V51    0.1321909414877101
#>     Attrib V52    -0.6649694638107299
#>     Attrib V53    -0.4875521588024119
#>     Attrib V54    -0.14583635207867143
#>     Attrib V55    0.05096275208304331
#>     Attrib V56    -0.08029180179907563
#>     Attrib V57    0.5813461708195911
#>     Attrib V58    -0.5100754098679987
#>     Attrib V59    -0.0805677755829458
#>     Attrib V6    0.05402249381578687
#>     Attrib V60    -0.029689803397295506
#>     Attrib V7    0.7152067871864881
#>     Attrib V8    0.36631183288563873
#>     Attrib V9    -0.21357381648280818
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.2738643882308569
#>     Attrib V1    -0.16536880632337303
#>     Attrib V10    -0.11423734969778523
#>     Attrib V11    -0.35397772995262394
#>     Attrib V12    -0.3496526332410259
#>     Attrib V13    0.1106615419871707
#>     Attrib V14    0.10354614331384436
#>     Attrib V15    -0.07601265672464169
#>     Attrib V16    -0.04687634038462886
#>     Attrib V17    0.04106946555809429
#>     Attrib V18    0.4196110475497961
#>     Attrib V19    -0.0778166793441954
#>     Attrib V2    -0.2433002352234093
#>     Attrib V20    -0.11614143804297826
#>     Attrib V21    0.018131315961429795
#>     Attrib V22    -0.003815705031754515
#>     Attrib V23    -0.2011970670420063
#>     Attrib V24    -0.1234762675126877
#>     Attrib V25    0.5034726941224424
#>     Attrib V26    0.10855674221906188
#>     Attrib V27    -0.13976348664379445
#>     Attrib V28    0.0871670856404678
#>     Attrib V29    -0.1311681631346403
#>     Attrib V3    -0.01798098283940287
#>     Attrib V30    -0.24604879462273446
#>     Attrib V31    0.3356659571570294
#>     Attrib V32    -0.05942809510585868
#>     Attrib V33    -0.09193121038168779
#>     Attrib V34    0.20165190606507719
#>     Attrib V35    0.09750123662491703
#>     Attrib V36    0.3949715418097596
#>     Attrib V37    0.3291734736397705
#>     Attrib V38    -0.04264540628042875
#>     Attrib V39    -0.05659499184065374
#>     Attrib V4    0.11786844181612265
#>     Attrib V40    0.20588077055885004
#>     Attrib V41    0.026065513828893973
#>     Attrib V42    0.025279155022822998
#>     Attrib V43    0.03494967436127443
#>     Attrib V44    -0.08663202321773589
#>     Attrib V45    -0.41054022520257255
#>     Attrib V46    -0.24311662635965375
#>     Attrib V47    -0.08007687511448663
#>     Attrib V48    -0.12100061556422417
#>     Attrib V49    -0.3696409170681533
#>     Attrib V5    -0.11434522069411798
#>     Attrib V50    0.28460144571464097
#>     Attrib V51    0.03350617527578614
#>     Attrib V52    -0.3147881045949445
#>     Attrib V53    -0.20734378503813744
#>     Attrib V54    -0.05645255029511575
#>     Attrib V55    0.03600821083383655
#>     Attrib V56    -0.028588011506216413
#>     Attrib V57    0.26849561189982196
#>     Attrib V58    -0.18571173331432642
#>     Attrib V59    -0.005118620203167426
#>     Attrib V6    0.07684205290248246
#>     Attrib V60    -0.04387518405835049
#>     Attrib V7    0.41433670531528166
#>     Attrib V8    0.14392462080457236
#>     Attrib V9    -0.13831411023712775
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.030274919898532034
#>     Attrib V1    0.18462879517075495
#>     Attrib V10    0.029338219333784336
#>     Attrib V11    0.07747230301048487
#>     Attrib V12    -0.011461070945266225
#>     Attrib V13    -0.18064026370679112
#>     Attrib V14    -0.07224548702842393
#>     Attrib V15    0.07568723153539207
#>     Attrib V16    0.025098350066773096
#>     Attrib V17    -0.03776384692169678
#>     Attrib V18    -0.1807586736282922
#>     Attrib V19    0.028057496182735755
#>     Attrib V2    0.21402766131281845
#>     Attrib V20    -0.002403668944579787
#>     Attrib V21    -0.054156574025074594
#>     Attrib V22    -0.02855515738302655
#>     Attrib V23    -0.006506355295409718
#>     Attrib V24    0.0845044625383315
#>     Attrib V25    -0.18587769238413362
#>     Attrib V26    -0.07592888115139071
#>     Attrib V27    0.03327110719435433
#>     Attrib V28    -0.09450699472572771
#>     Attrib V29    -0.05225067204099454
#>     Attrib V3    0.10166609303158723
#>     Attrib V30    0.10413232380987246
#>     Attrib V31    -0.10329366166561445
#>     Attrib V32    -0.0057579658712240325
#>     Attrib V33    0.09702612663040867
#>     Attrib V34    -0.06747760928385312
#>     Attrib V35    0.0656305614155945
#>     Attrib V36    -0.0997685886628546
#>     Attrib V37    -0.11446394369816097
#>     Attrib V38    0.12380086004753896
#>     Attrib V39    0.12361428004717655
#>     Attrib V4    0.06550829326976108
#>     Attrib V40    -0.0780102162605372
#>     Attrib V41    3.722337533057116E-6
#>     Attrib V42    0.02540494293301205
#>     Attrib V43    0.11470639473358067
#>     Attrib V44    0.20245125898299252
#>     Attrib V45    0.3284591252831428
#>     Attrib V46    0.15135978242844708
#>     Attrib V47    0.04834796168904343
#>     Attrib V48    0.14461170602601062
#>     Attrib V49    0.1291752415533646
#>     Attrib V5    0.08255366340787845
#>     Attrib V50    -0.03721015800427935
#>     Attrib V51    0.03740257528797761
#>     Attrib V52    0.14491692011565627
#>     Attrib V53    0.1167539160015214
#>     Attrib V54    0.0735927314771801
#>     Attrib V55    0.05907123404901963
#>     Attrib V56    0.10742482196959671
#>     Attrib V57    0.0834581307504811
#>     Attrib V58    0.08625301798256266
#>     Attrib V59    0.03586817671782797
#>     Attrib V6    -0.04918864853835093
#>     Attrib V60    0.05409283951785334
#>     Attrib V7    -0.18611024732891393
#>     Attrib V8    0.008025981374369317
#>     Attrib V9    0.08287965923061026
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.24920160728673155
#>     Attrib V1    -0.12628227690460597
#>     Attrib V10    -0.11457223264264121
#>     Attrib V11    -0.3157748709219688
#>     Attrib V12    -0.3436485961114525
#>     Attrib V13    0.026724234100734892
#>     Attrib V14    0.10176299436616223
#>     Attrib V15    -0.07431030228569073
#>     Attrib V16    -0.07941565003070579
#>     Attrib V17    -0.050468950599348354
#>     Attrib V18    0.35183252000268417
#>     Attrib V19    -0.12201319299161635
#>     Attrib V2    -0.15203895284403382
#>     Attrib V20    -0.05736857366836828
#>     Attrib V21    0.055257701662765
#>     Attrib V22    -0.022126794294349474
#>     Attrib V23    -0.1274587575698636
#>     Attrib V24    -0.12968464932568113
#>     Attrib V25    0.40025944386599865
#>     Attrib V26    0.08067134185973106
#>     Attrib V27    -0.12345581218475687
#>     Attrib V28    0.03424575301240458
#>     Attrib V29    -0.12939926970311347
#>     Attrib V3    0.014872924249376092
#>     Attrib V30    -0.21733124879971544
#>     Attrib V31    0.2700628116553694
#>     Attrib V32    -0.0627502802955609
#>     Attrib V33    -0.03609496074437494
#>     Attrib V34    0.2014675927962117
#>     Attrib V35    0.10183781979433199
#>     Attrib V36    0.42169608709323364
#>     Attrib V37    0.24126455750098172
#>     Attrib V38    -0.05325921675047701
#>     Attrib V39    -0.0054584595016386505
#>     Attrib V4    0.056007841639089145
#>     Attrib V40    0.19479981477922434
#>     Attrib V41    -0.015710272934557824
#>     Attrib V42    0.00423187415590578
#>     Attrib V43    0.042443713557933145
#>     Attrib V44    -0.004300211663429658
#>     Attrib V45    -0.40169765333949214
#>     Attrib V46    -0.2534166473044661
#>     Attrib V47    -0.0449948820599527
#>     Attrib V48    -0.09065975017980352
#>     Attrib V49    -0.2654044196637281
#>     Attrib V5    -0.10790905616681179
#>     Attrib V50    0.1556600630559218
#>     Attrib V51    0.03721197583459707
#>     Attrib V52    -0.29066040835023793
#>     Attrib V53    -0.19361202278470924
#>     Attrib V54    -0.05016712361312622
#>     Attrib V55    0.04922921479634849
#>     Attrib V56    0.005974445002325949
#>     Attrib V57    0.15640862007128514
#>     Attrib V58    -0.1735566904488301
#>     Attrib V59    0.06763723105433934
#>     Attrib V6    0.017641589119525198
#>     Attrib V60    -0.013231002250256814
#>     Attrib V7    0.3918930106872211
#>     Attrib V8    0.18780705632096212
#>     Attrib V9    -0.14957395453689407
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.38538346957696096
#>     Attrib V1    0.2964288556768289
#>     Attrib V10    0.3374869040446994
#>     Attrib V11    0.5995098651905378
#>     Attrib V12    0.6208732338824128
#>     Attrib V13    -0.15995575481549004
#>     Attrib V14    -0.43303374257219657
#>     Attrib V15    -0.23254858384898028
#>     Attrib V16    -0.22522436567525317
#>     Attrib V17    -0.33214667467576575
#>     Attrib V18    -0.6551665625468535
#>     Attrib V19    0.29910239607362044
#>     Attrib V2    0.2995865237163461
#>     Attrib V20    0.08487223925211528
#>     Attrib V21    -0.28151774395075435
#>     Attrib V22    -0.0323561641525861
#>     Attrib V23    0.4306172713437324
#>     Attrib V24    0.5728979749825888
#>     Attrib V25    -0.12714847946063942
#>     Attrib V26    0.5053902664508995
#>     Attrib V27    0.8164185767776369
#>     Attrib V28    0.5580613474147846
#>     Attrib V29    0.7174606263718859
#>     Attrib V3    0.13660652238278764
#>     Attrib V30    0.5887718672936867
#>     Attrib V31    -0.29041187111406536
#>     Attrib V32    0.07948962603986849
#>     Attrib V33    -0.07480695452687741
#>     Attrib V34    -0.28842983664842986
#>     Attrib V35    0.24670076736455906
#>     Attrib V36    -0.4283047570867655
#>     Attrib V37    -0.38648502961653486
#>     Attrib V38    -0.010391362937726998
#>     Attrib V39    0.19357323900127912
#>     Attrib V4    0.0314329748990363
#>     Attrib V40    -0.023168118207329357
#>     Attrib V41    0.40022600400988145
#>     Attrib V42    -0.0015632385350138449
#>     Attrib V43    -0.0678742106726054
#>     Attrib V44    0.33679037265190925
#>     Attrib V45    0.9530587003549051
#>     Attrib V46    0.5831930375666677
#>     Attrib V47    0.2574673768592565
#>     Attrib V48    0.19663330462827802
#>     Attrib V49    0.623663713904933
#>     Attrib V5    0.5689941817336343
#>     Attrib V50    -0.46230582396407444
#>     Attrib V51    -0.02607755606679241
#>     Attrib V52    0.6479317808585232
#>     Attrib V53    0.6066664709153272
#>     Attrib V54    -0.07549674887069137
#>     Attrib V55    -0.16976193937468675
#>     Attrib V56    -0.27972213234306875
#>     Attrib V57    -0.448602334223983
#>     Attrib V58    0.2644955418894488
#>     Attrib V59    0.059326887037253126
#>     Attrib V6    0.454793962635645
#>     Attrib V60    0.011944099701627239
#>     Attrib V7    -0.3224263105000963
#>     Attrib V8    -0.35941586925785396
#>     Attrib V9    0.32819994963630034
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.173804527272278
#>     Attrib V1    0.5265899598147568
#>     Attrib V10    -0.03690091461910271
#>     Attrib V11    0.2717299658225428
#>     Attrib V12    0.1551145794435528
#>     Attrib V13    -0.33124708475473175
#>     Attrib V14    -0.04491046467103971
#>     Attrib V15    0.24391385719312825
#>     Attrib V16    0.1531300703330801
#>     Attrib V17    0.24666942322169216
#>     Attrib V18    -0.2373477947009032
#>     Attrib V19    0.5608800220434611
#>     Attrib V2    0.3457077548876803
#>     Attrib V20    0.8653267532641159
#>     Attrib V21    0.7798574058630099
#>     Attrib V22    0.6529568647905741
#>     Attrib V23    0.9754886749251193
#>     Attrib V24    0.7748195967602255
#>     Attrib V25    -0.40832118015565533
#>     Attrib V26    -0.20958574741586528
#>     Attrib V27    0.017925954704254135
#>     Attrib V28    -0.3040328901125352
#>     Attrib V29    0.38165749110034247
#>     Attrib V3    0.010778554498132241
#>     Attrib V30    0.7055933688897701
#>     Attrib V31    -1.1772911716633565
#>     Attrib V32    -0.7112437937409851
#>     Attrib V33    0.10062103293308158
#>     Attrib V34    -0.18730044567048423
#>     Attrib V35    0.10675626568218484
#>     Attrib V36    0.04405054569539049
#>     Attrib V37    0.16396372295587813
#>     Attrib V38    0.8100664484170431
#>     Attrib V39    0.5771867544512584
#>     Attrib V4    -0.11987214949267962
#>     Attrib V40    -0.28648316210833064
#>     Attrib V41    -0.2527994056145504
#>     Attrib V42    0.37079570792537064
#>     Attrib V43    0.52055328595375
#>     Attrib V44    0.9507473203219332
#>     Attrib V45    0.9863347650554687
#>     Attrib V46    0.47984727836094543
#>     Attrib V47    0.06414278263799122
#>     Attrib V48    -0.08902874179116987
#>     Attrib V49    0.2868550475539177
#>     Attrib V5    0.11421807805608852
#>     Attrib V50    -0.32127245135010885
#>     Attrib V51    0.10699644535246683
#>     Attrib V52    0.5083409616654161
#>     Attrib V53    0.4184035517863445
#>     Attrib V54    0.4605579552050078
#>     Attrib V55    -0.21336135628112401
#>     Attrib V56    0.3855721926353634
#>     Attrib V57    -0.5569611546834204
#>     Attrib V58    0.11347678396539827
#>     Attrib V59    0.21960100407037603
#>     Attrib V6    -0.36676851058176074
#>     Attrib V60    0.05171370194528684
#>     Attrib V7    -0.5336056888083492
#>     Attrib V8    -0.3560848094143411
#>     Attrib V9    0.18962144665376998
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.9339833873440283
#>     Attrib V1    -0.4166758030522654
#>     Attrib V10    0.025596918251378293
#>     Attrib V11    -0.8535138369631047
#>     Attrib V12    -0.9481424451321147
#>     Attrib V13    -0.24107135570567684
#>     Attrib V14    -0.13300420188478138
#>     Attrib V15    -0.21135384639048546
#>     Attrib V16    -0.006248766198222337
#>     Attrib V17    0.2493800180987126
#>     Attrib V18    0.8340602559759491
#>     Attrib V19    -0.3431845822521521
#>     Attrib V2    -0.36531003349775165
#>     Attrib V20    -0.21462897689193655
#>     Attrib V21    0.3649072582451687
#>     Attrib V22    0.5657542267927718
#>     Attrib V23    -0.7854441335032301
#>     Attrib V24    -1.2326047499446955
#>     Attrib V25    0.4422350525164917
#>     Attrib V26    0.1103431307911247
#>     Attrib V27    -0.3116514105706252
#>     Attrib V28    -0.2285661184628886
#>     Attrib V29    -0.9423145470153755
#>     Attrib V3    0.038248445300982405
#>     Attrib V30    -0.6897513351837702
#>     Attrib V31    1.074814585857109
#>     Attrib V32    -0.07514042375102659
#>     Attrib V33    -0.7253890078881955
#>     Attrib V34    -0.2555841962916959
#>     Attrib V35    -0.32011247702630186
#>     Attrib V36    0.9548965511420612
#>     Attrib V37    0.9970166757249604
#>     Attrib V38    0.07477401279641172
#>     Attrib V39    -0.42583642851506365
#>     Attrib V4    0.41880965234842793
#>     Attrib V40    0.2256747694028332
#>     Attrib V41    -0.10742947543606823
#>     Attrib V42    -0.2718754614950305
#>     Attrib V43    -0.008505953476735323
#>     Attrib V44    -0.34243629828797356
#>     Attrib V45    -0.8613701062096933
#>     Attrib V46    -0.3859976530299426
#>     Attrib V47    0.1667004832599958
#>     Attrib V48    0.22151916114615103
#>     Attrib V49    -0.4896682220302949
#>     Attrib V5    -0.1422982477680873
#>     Attrib V50    1.0465214979276216
#>     Attrib V51    0.24540525949986447
#>     Attrib V52    -0.5408893188760722
#>     Attrib V53    -0.4438111373869589
#>     Attrib V54    -0.07960695480833638
#>     Attrib V55    -0.24840352059391416
#>     Attrib V56    -0.23465337422465002
#>     Attrib V57    0.8151487203709181
#>     Attrib V58    -0.5924543219689535
#>     Attrib V59    -0.4168492973257792
#>     Attrib V6    -0.20757965909203832
#>     Attrib V60    0.14910764566454204
#>     Attrib V7    0.43711913290955867
#>     Attrib V8    0.30160027694990427
#>     Attrib V9    -0.057700973592580286
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.009664486195543989
#>     Attrib V1    0.2870409230056155
#>     Attrib V10    -0.1615389676737884
#>     Attrib V11    -0.005113993570383805
#>     Attrib V12    -0.037614829303963954
#>     Attrib V13    -0.2802409048025759
#>     Attrib V14    0.027269856613895506
#>     Attrib V15    0.169343501528863
#>     Attrib V16    0.2806971065091655
#>     Attrib V17    0.1736278259702332
#>     Attrib V18    -0.11436721585632906
#>     Attrib V19    0.16183449257161614
#>     Attrib V2    0.24511009441375448
#>     Attrib V20    0.2796632577638374
#>     Attrib V21    0.1614724323439386
#>     Attrib V22    -0.007019571149555835
#>     Attrib V23    0.08776595817678386
#>     Attrib V24    0.18089896034946829
#>     Attrib V25    -0.4060993236170034
#>     Attrib V26    -0.3829709647565063
#>     Attrib V27    -0.24982309531093938
#>     Attrib V28    -0.47616959514002827
#>     Attrib V29    -0.2033445975761726
#>     Attrib V3    0.07787661495331727
#>     Attrib V30    4.804399676094563E-6
#>     Attrib V31    -0.42363899958941714
#>     Attrib V32    -0.13903819932316544
#>     Attrib V33    0.04959405826872251
#>     Attrib V34    -0.09519825197061382
#>     Attrib V35    -0.07343117270126959
#>     Attrib V36    -0.1986144261551645
#>     Attrib V37    -0.21683412885077188
#>     Attrib V38    0.11404980324874833
#>     Attrib V39    0.10480415708388587
#>     Attrib V4    0.005136402086881852
#>     Attrib V40    -0.15838579813758258
#>     Attrib V41    -0.23986520150871227
#>     Attrib V42    0.07992959212546492
#>     Attrib V43    0.14974817325797618
#>     Attrib V44    0.18272603122067613
#>     Attrib V45    0.2833658563616567
#>     Attrib V46    0.2045822441832022
#>     Attrib V47    -0.0057516894095516954
#>     Attrib V48    0.08539502539246688
#>     Attrib V49    0.17251062980483406
#>     Attrib V5    0.015631911086733723
#>     Attrib V50    -0.10233231487047467
#>     Attrib V51    0.004715601636438915
#>     Attrib V52    0.25901832839018596
#>     Attrib V53    0.2407876232470642
#>     Attrib V54    0.2866495407751999
#>     Attrib V55    0.15625905725284014
#>     Attrib V56    0.28352899460719155
#>     Attrib V57    0.06528470672046865
#>     Attrib V58    0.2865817140093815
#>     Attrib V59    0.15867930357074328
#>     Attrib V6    -0.2074926685615371
#>     Attrib V60    0.12504727468312932
#>     Attrib V7    -0.29461719470787684
#>     Attrib V8    -0.10891580366767609
#>     Attrib V9    0.02550442755804499
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.09648956358140123
#>     Attrib V1    0.4022583729132732
#>     Attrib V10    -0.4905136492841547
#>     Attrib V11    -0.10498233162415425
#>     Attrib V12    -0.12193447793425857
#>     Attrib V13    -0.48059846282746416
#>     Attrib V14    0.08818481602029321
#>     Attrib V15    0.4318476476195065
#>     Attrib V16    0.40362989221234113
#>     Attrib V17    0.37108529839381443
#>     Attrib V18    -0.13433202607254352
#>     Attrib V19    0.33791018033031023
#>     Attrib V2    0.29653159754272507
#>     Attrib V20    0.5570005357952174
#>     Attrib V21    0.44588632421468866
#>     Attrib V22    0.15840761311046178
#>     Attrib V23    0.4039471270581995
#>     Attrib V24    0.3591978054646489
#>     Attrib V25    -0.630237604305431
#>     Attrib V26    -0.6842343529406575
#>     Attrib V27    -0.49157554400844494
#>     Attrib V28    -0.7300166622708943
#>     Attrib V29    -0.2930056472816658
#>     Attrib V3    0.10952099312999941
#>     Attrib V30    0.08659805054070505
#>     Attrib V31    -0.959490242165649
#>     Attrib V32    -0.4587430851022131
#>     Attrib V33    0.15819935437636376
#>     Attrib V34    -0.14867752540942492
#>     Attrib V35    -0.1802495979825563
#>     Attrib V36    -0.3199088978939761
#>     Attrib V37    -0.25831102500284114
#>     Attrib V38    0.35228837038689187
#>     Attrib V39    0.2936516831249451
#>     Attrib V4    -0.04836541820258724
#>     Attrib V40    -0.3298909174050914
#>     Attrib V41    -0.40265321180978225
#>     Attrib V42    0.3386046551392519
#>     Attrib V43    0.32311190800744444
#>     Attrib V44    0.3844884959824218
#>     Attrib V45    0.527150041150417
#>     Attrib V46    0.2620614647365213
#>     Attrib V47    0.017527298264989475
#>     Attrib V48    -0.05774122575687511
#>     Attrib V49    0.1793740058331811
#>     Attrib V5    -0.12668132446650218
#>     Attrib V50    -0.20399961770610178
#>     Attrib V51    -0.030441775984835048
#>     Attrib V52    0.46316798233032364
#>     Attrib V53    0.5585117964754885
#>     Attrib V54    0.5391514504709809
#>     Attrib V55    0.2751252439955589
#>     Attrib V56    0.5040814937112601
#>     Attrib V57    0.09933639048787953
#>     Attrib V58    0.38661679409924304
#>     Attrib V59    0.3864052220496154
#>     Attrib V6    -0.41422054162742195
#>     Attrib V60    0.09923253528241807
#>     Attrib V7    -0.4285303079305028
#>     Attrib V8    -0.022615280719878613
#>     Attrib V9    -0.07365251419091662
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.5691160884880614
#>     Attrib V1    -0.22618119291471442
#>     Attrib V10    -0.03882727678467639
#>     Attrib V11    -0.49541838046615766
#>     Attrib V12    -0.4956245137110659
#>     Attrib V13    0.23671844003940004
#>     Attrib V14    0.2484942423400626
#>     Attrib V15    -0.0788247157148055
#>     Attrib V16    -0.2329054661635767
#>     Attrib V17    -0.012359160249408922
#>     Attrib V18    0.5709566927942736
#>     Attrib V19    -0.3565181636185832
#>     Attrib V2    -0.2938240516591615
#>     Attrib V20    -0.3147594127152579
#>     Attrib V21    -0.0029253060823411334
#>     Attrib V22    -0.04538281290070977
#>     Attrib V23    -0.44128196784228824
#>     Attrib V24    -0.5301412540762532
#>     Attrib V25    0.7692933286396095
#>     Attrib V26    0.3877510645964251
#>     Attrib V27    -0.13820682071154033
#>     Attrib V28    0.19590177599324754
#>     Attrib V29    -0.2493479891462547
#>     Attrib V3    -0.0063557278304105565
#>     Attrib V30    -0.4500921857036479
#>     Attrib V31    0.773387043209832
#>     Attrib V32    0.016591585447611735
#>     Attrib V33    -0.24437427043639656
#>     Attrib V34    0.19487630516926446
#>     Attrib V35    0.05610050467940266
#>     Attrib V36    0.6373754258965046
#>     Attrib V37    0.5063418579532545
#>     Attrib V38    -0.1765500481950277
#>     Attrib V39    -0.23170957080446805
#>     Attrib V4    0.3095536441532827
#>     Attrib V40    0.3582451797804074
#>     Attrib V41    0.0179826346371123
#>     Attrib V42    -0.1895654779419527
#>     Attrib V43    0.03218070328042325
#>     Attrib V44    -0.2283699376165964
#>     Attrib V45    -0.8076069469556925
#>     Attrib V46    -0.3744370740738198
#>     Attrib V47    -0.010475173718076323
#>     Attrib V48    -0.07402751361492052
#>     Attrib V49    -0.5429691537112613
#>     Attrib V5    -0.17045807849052397
#>     Attrib V50    0.6163353116651968
#>     Attrib V51    0.09491536531092842
#>     Attrib V52    -0.5412045170230105
#>     Attrib V53    -0.5367723843312225
#>     Attrib V54    -0.08828838344424535
#>     Attrib V55    0.08212033401230268
#>     Attrib V56    -0.1336866691425053
#>     Attrib V57    0.45473491610310174
#>     Attrib V58    -0.37869552439609655
#>     Attrib V59    -0.05611319501250969
#>     Attrib V6    0.15458039249001862
#>     Attrib V60    -0.05334980664453907
#>     Attrib V7    0.7129969905246736
#>     Attrib V8    0.3568408149103769
#>     Attrib V9    -0.06711519869248693
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.47933709441273087
#>     Attrib V1    0.2093301158009014
#>     Attrib V10    0.8933311600461348
#>     Attrib V11    1.223164528556382
#>     Attrib V12    1.5651881233170872
#>     Attrib V13    0.46020291832035193
#>     Attrib V14    -0.5135990812445855
#>     Attrib V15    -0.623231100829522
#>     Attrib V16    -0.6043869604407042
#>     Attrib V17    -0.6035776361897885
#>     Attrib V18    -0.5971304869518437
#>     Attrib V19    1.034095777262681
#>     Attrib V2    0.6134771762784812
#>     Attrib V20    0.21808384534823338
#>     Attrib V21    -0.38470606445293964
#>     Attrib V22    0.5686053545684117
#>     Attrib V23    1.3998695725134538
#>     Attrib V24    1.4719201669572157
#>     Attrib V25    0.6441588245146439
#>     Attrib V26    1.6162104326176634
#>     Attrib V27    1.6052517497062049
#>     Attrib V28    1.312320926298182
#>     Attrib V29    1.539716324293187
#>     Attrib V3    0.4250035836236104
#>     Attrib V30    0.6009914436324851
#>     Attrib V31    -0.6504111106690941
#>     Attrib V32    -0.06056752955993338
#>     Attrib V33    -0.47873676893626005
#>     Attrib V34    -0.3360913313041197
#>     Attrib V35    0.45298927035492986
#>     Attrib V36    -0.8519781026315333
#>     Attrib V37    -0.5267822970526779
#>     Attrib V38    -0.30476157706443097
#>     Attrib V39    0.7575475306385248
#>     Attrib V4    -0.06776367411274993
#>     Attrib V40    0.6931203094623243
#>     Attrib V41    1.7242936273224758
#>     Attrib V42    0.1923431083263424
#>     Attrib V43    -0.3914820129324613
#>     Attrib V44    -0.029992147606697363
#>     Attrib V45    0.9983330842426705
#>     Attrib V46    0.8435231009143331
#>     Attrib V47    0.5174383446709238
#>     Attrib V48    0.29331252066517316
#>     Attrib V49    1.1674912343736492
#>     Attrib V5    1.3460490802774692
#>     Attrib V50    -0.7023566092971492
#>     Attrib V51    0.456907511853451
#>     Attrib V52    1.3901545801621038
#>     Attrib V53    1.518114624410828
#>     Attrib V54    0.10124280436848358
#>     Attrib V55    -0.585051816144467
#>     Attrib V56    -0.6496648170152011
#>     Attrib V57    -1.2927286006576706
#>     Attrib V58    -0.21355624152854502
#>     Attrib V59    -0.26258575153148866
#>     Attrib V6    1.4594310087835174
#>     Attrib V60    0.38190741922156834
#>     Attrib V7    -0.43413171677789464
#>     Attrib V8    -0.939119326942707
#>     Attrib V9    0.7452048229767405
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.188186367430187
#>     Attrib V1    0.057982855783900805
#>     Attrib V10    0.011628652725065811
#>     Attrib V11    -0.05101301624317419
#>     Attrib V12    0.004192752195091439
#>     Attrib V13    -0.01550457201829303
#>     Attrib V14    0.06735637086067595
#>     Attrib V15    0.0059624386377959285
#>     Attrib V16    6.644377823940777E-4
#>     Attrib V17    0.03911322918137777
#>     Attrib V18    -0.007830759659635148
#>     Attrib V19    0.016775349365336704
#>     Attrib V2    0.08180227009685992
#>     Attrib V20    -0.04635527440183153
#>     Attrib V21    -0.037482785129892254
#>     Attrib V22    -0.03648224714565425
#>     Attrib V23    -0.011003445919262604
#>     Attrib V24    -0.041786148579988906
#>     Attrib V25    0.012392740619877664
#>     Attrib V26    -0.06177066767133273
#>     Attrib V27    -0.025171719394312737
#>     Attrib V28    -0.006933396950863598
#>     Attrib V29    -0.027988543598841457
#>     Attrib V3    0.056924850154653116
#>     Attrib V30    -0.012074073566371525
#>     Attrib V31    0.01451696257218559
#>     Attrib V32    0.008200263735411778
#>     Attrib V33    0.08762824923030765
#>     Attrib V34    0.047314558441217354
#>     Attrib V35    0.1296762670395017
#>     Attrib V36    0.14938445095984934
#>     Attrib V37    0.1326221165910451
#>     Attrib V38    0.03071338111466829
#>     Attrib V39    0.08009495407188805
#>     Attrib V4    0.12719122435709415
#>     Attrib V40    0.1039767234219821
#>     Attrib V41    0.08166677745642265
#>     Attrib V42    0.10199421566496765
#>     Attrib V43    0.07493923923134782
#>     Attrib V44    0.035493809928416886
#>     Attrib V45    -0.007232601521489597
#>     Attrib V46    7.759258442654183E-4
#>     Attrib V47    0.020296445704874978
#>     Attrib V48    0.06786889610978636
#>     Attrib V49    -0.009330960943987098
#>     Attrib V5    0.024802685593499626
#>     Attrib V50    0.0869353219682961
#>     Attrib V51    0.04787053849070125
#>     Attrib V52    0.026386276653831003
#>     Attrib V53    0.0317586949045488
#>     Attrib V54    0.04101466354928861
#>     Attrib V55    0.02857389064822428
#>     Attrib V56    0.0822809115868318
#>     Attrib V57    0.1431126580285694
#>     Attrib V58    0.054902322912957255
#>     Attrib V59    0.07290325831634127
#>     Attrib V6    0.11502466158769858
#>     Attrib V60    0.1067427882831791
#>     Attrib V7    0.0617536519038062
#>     Attrib V8    0.09766585007928653
#>     Attrib V9    0.02906217698903754
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.265410186796116
#>     Attrib V1    0.4022767287755466
#>     Attrib V10    -0.18792146950982666
#>     Attrib V11    0.15096271517249182
#>     Attrib V12    0.07220193534291512
#>     Attrib V13    -0.3613761705712566
#>     Attrib V14    -0.08242431517538779
#>     Attrib V15    0.2415896898823836
#>     Attrib V16    0.27149622142381435
#>     Attrib V17    0.20070339202589121
#>     Attrib V18    -0.1552492699147149
#>     Attrib V19    0.37840585850456177
#>     Attrib V2    0.27629715285928735
#>     Attrib V20    0.46818747376565173
#>     Attrib V21    0.36067451388242766
#>     Attrib V22    0.15224575628424714
#>     Attrib V23    0.400488806694822
#>     Attrib V24    0.44486714109000935
#>     Attrib V25    -0.5417126030555529
#>     Attrib V26    -0.3449755523205388
#>     Attrib V27    -0.17293877779247085
#>     Attrib V28    -0.4916703366334418
#>     Attrib V29    -0.05436127214149911
#>     Attrib V3    0.024042156888521397
#>     Attrib V30    0.2500001396775208
#>     Attrib V31    -0.8589671551947564
#>     Attrib V32    -0.3346397524469112
#>     Attrib V33    0.11230142985009345
#>     Attrib V34    -0.11042404449301813
#>     Attrib V35    -0.029692366906364568
#>     Attrib V36    -0.24129564624986205
#>     Attrib V37    -0.23896531706563992
#>     Attrib V38    0.35614574062063326
#>     Attrib V39    0.32494079021500083
#>     Attrib V4    -0.11356256790300338
#>     Attrib V40    -0.3231811031531708
#>     Attrib V41    -0.2538725983183338
#>     Attrib V42    0.2166522800239641
#>     Attrib V43    0.19227821258909192
#>     Attrib V44    0.5230047534925063
#>     Attrib V45    0.7278383503033723
#>     Attrib V46    0.28718310558477195
#>     Attrib V47    -0.0248874283846526
#>     Attrib V48    0.015288935887949131
#>     Attrib V49    0.2207722363991907
#>     Attrib V5    -0.017010304441050055
#>     Attrib V50    -0.22382887174073052
#>     Attrib V51    -0.026546011132929644
#>     Attrib V52    0.41091860062983465
#>     Attrib V53    0.43832856958740546
#>     Attrib V54    0.36613175177029106
#>     Attrib V55    0.13021589652012155
#>     Attrib V56    0.2716593947966694
#>     Attrib V57    -0.11024339006070699
#>     Attrib V58    0.3003988866084962
#>     Attrib V59    0.24006711489911195
#>     Attrib V6    -0.2549151916280462
#>     Attrib V60    0.0923586762256072
#>     Attrib V7    -0.48795813306649316
#>     Attrib V8    -0.14111492038098036
#>     Attrib V9    0.0388003399020124
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -1.0583422766720778
#>     Attrib V1    -0.5441190553173837
#>     Attrib V10    -0.02628620329372679
#>     Attrib V11    -0.9668464174422089
#>     Attrib V12    -1.1087428256154892
#>     Attrib V13    -0.42698204330871264
#>     Attrib V14    -0.2814349480335125
#>     Attrib V15    -0.17943620539071942
#>     Attrib V16    0.09429716203841208
#>     Attrib V17    0.36700294920264714
#>     Attrib V18    0.9352502585739387
#>     Attrib V19    -0.3757597238008314
#>     Attrib V2    -0.42586089242196046
#>     Attrib V20    -0.2330760184290406
#>     Attrib V21    0.4338951062612263
#>     Attrib V22    0.861579889280938
#>     Attrib V23    -0.7272711426916435
#>     Attrib V24    -1.2871788217020488
#>     Attrib V25    0.3771460222718002
#>     Attrib V26    -0.10672746055615115
#>     Attrib V27    -0.488809237356956
#>     Attrib V28    -0.470593685860361
#>     Attrib V29    -1.2257359218250572
#>     Attrib V3    0.0399780304460173
#>     Attrib V30    -0.7428984113239295
#>     Attrib V31    0.980338879280325
#>     Attrib V32    -0.10338075593096821
#>     Attrib V33    -0.8472953949251565
#>     Attrib V34    -0.39700167244123813
#>     Attrib V35    -0.49239800838518416
#>     Attrib V36    1.0739150913904159
#>     Attrib V37    1.1252492091949182
#>     Attrib V38    0.2761484106247774
#>     Attrib V39    -0.41616895935362075
#>     Attrib V4    0.358455327081872
#>     Attrib V40    0.09163465001697285
#>     Attrib V41    -0.1994155497026922
#>     Attrib V42    -0.1317437775960807
#>     Attrib V43    0.014960303114003492
#>     Attrib V44    -0.4439066288778935
#>     Attrib V45    -0.8981138490680665
#>     Attrib V46    -0.4139561414784971
#>     Attrib V47    0.15443014220787937
#>     Attrib V48    0.20444617916620925
#>     Attrib V49    -0.5676214397996677
#>     Attrib V5    -0.2518729571675363
#>     Attrib V50    1.0975711292917487
#>     Attrib V51    0.22429481084070893
#>     Attrib V52    -0.5320788700121208
#>     Attrib V53    -0.42016749787783936
#>     Attrib V54    0.015327104151593699
#>     Attrib V55    -0.49601385973152196
#>     Attrib V56    -0.178082675953059
#>     Attrib V57    0.8286388253163319
#>     Attrib V58    -0.6908763673046456
#>     Attrib V59    -0.6269715445142136
#>     Attrib V6    -0.34804104824555354
#>     Attrib V60    0.17806724496074894
#>     Attrib V7    0.23949674744668564
#>     Attrib V8    0.3636486161816441
#>     Attrib V9    -0.022113150452198138
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.1751054218318177
#>     Attrib V1    0.26461557327907703
#>     Attrib V10    -0.1598802297324362
#>     Attrib V11    0.1801529908232934
#>     Attrib V12    0.10976132266898125
#>     Attrib V13    -0.31236280259397237
#>     Attrib V14    -0.01923925278029833
#>     Attrib V15    0.1760967114484489
#>     Attrib V16    0.18968404457214136
#>     Attrib V17    0.14577993926403188
#>     Attrib V18    -0.20798424809645027
#>     Attrib V19    0.2899553757611932
#>     Attrib V2    0.2229910510986218
#>     Attrib V20    0.45216158283425
#>     Attrib V21    0.29214410031558563
#>     Attrib V22    0.16850266220133647
#>     Attrib V23    0.3325249268109567
#>     Attrib V24    0.3999339644168392
#>     Attrib V25    -0.3955099039541828
#>     Attrib V26    -0.33171209407128666
#>     Attrib V27    -0.09667573622839332
#>     Attrib V28    -0.3495220623840016
#>     Attrib V29    0.023865517217939204
#>     Attrib V3    0.08997566768773252
#>     Attrib V30    0.1807597797455589
#>     Attrib V31    -0.69293008883586
#>     Attrib V32    -0.23152466114860668
#>     Attrib V33    0.09247696848466373
#>     Attrib V34    -0.12021807501401717
#>     Attrib V35    0.025634844049825436
#>     Attrib V36    -0.2135934588558978
#>     Attrib V37    -0.17004284045955598
#>     Attrib V38    0.28978721615531117
#>     Attrib V39    0.2728721910549392
#>     Attrib V4    -0.11573554413899548
#>     Attrib V40    -0.20759984524283437
#>     Attrib V41    -0.14738640234692707
#>     Attrib V42    0.1462590610177767
#>     Attrib V43    0.2306696787418332
#>     Attrib V44    0.36747773952202806
#>     Attrib V45    0.6503998499474515
#>     Attrib V46    0.30422069847976047
#>     Attrib V47    0.06990057959190592
#>     Attrib V48    0.007680482334614199
#>     Attrib V49    0.21651346769746121
#>     Attrib V5    0.013887992750068141
#>     Attrib V50    -0.23296922130076134
#>     Attrib V51    -0.003168070563486657
#>     Attrib V52    0.38856540198765194
#>     Attrib V53    0.34571563600156
#>     Attrib V54    0.22355242633278988
#>     Attrib V55    0.04948096694264508
#>     Attrib V56    0.24775687901094118
#>     Attrib V57    -0.13216196891199297
#>     Attrib V58    0.18612344810581816
#>     Attrib V59    0.1271930392376799
#>     Attrib V6    -0.2007422347650007
#>     Attrib V60    0.08004295292961011
#>     Attrib V7    -0.4341106336945057
#>     Attrib V8    -0.15586974958816002
#>     Attrib V9    0.04658886335800929
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.11670548363735095
#>     Attrib V1    0.16012835577471715
#>     Attrib V10    0.05242400876614087
#>     Attrib V11    0.04009584961786401
#>     Attrib V12    0.054518240799856156
#>     Attrib V13    -0.023548562810388002
#>     Attrib V14    -0.006028754871461676
#>     Attrib V15    0.034560773084382546
#>     Attrib V16    0.01012252743699072
#>     Attrib V17    0.006504623665987614
#>     Attrib V18    -0.1063383863257786
#>     Attrib V19    -0.026035450477320584
#>     Attrib V2    0.15886480905988729
#>     Attrib V20    -0.03083725849774149
#>     Attrib V21    -0.021192752400023253
#>     Attrib V22    -0.057861342890533615
#>     Attrib V23    0.015698587488397465
#>     Attrib V24    0.01527545386958078
#>     Attrib V25    -0.04452230472041111
#>     Attrib V26    0.011896636679070819
#>     Attrib V27    0.007571064933545254
#>     Attrib V28    -0.051167075511328514
#>     Attrib V29    -0.07631384183165961
#>     Attrib V3    0.09866325900321735
#>     Attrib V30    0.044661191412457175
#>     Attrib V31    -0.03871418137153205
#>     Attrib V32    -0.011543442029472436
#>     Attrib V33    0.0074862094857487006
#>     Attrib V34    -0.03622285200658255
#>     Attrib V35    0.07064865836968849
#>     Attrib V36    -0.020383469994317876
#>     Attrib V37    0.013147204579453713
#>     Attrib V38    0.03895575684490053
#>     Attrib V39    0.13981378248367946
#>     Attrib V4    0.1207191566390244
#>     Attrib V40    0.031421784635165685
#>     Attrib V41    0.03409034730220094
#>     Attrib V42    0.09179501252583987
#>     Attrib V43    0.05297660111381146
#>     Attrib V44    0.07404528251272587
#>     Attrib V45    0.18316857918945162
#>     Attrib V46    0.1202338457876397
#>     Attrib V47    0.05386814281474591
#>     Attrib V48    0.10482241040634262
#>     Attrib V49    0.08248567742719232
#>     Attrib V5    0.048804842709408325
#>     Attrib V50    -0.010930167567135732
#>     Attrib V51    0.03918198489722663
#>     Attrib V52    0.13870595130461105
#>     Attrib V53    0.1266315403595138
#>     Attrib V54    0.09459463021671632
#>     Attrib V55    0.004216885833134049
#>     Attrib V56    0.12006837948681119
#>     Attrib V57    0.03012605434300741
#>     Attrib V58    0.12142219322638893
#>     Attrib V59    0.11171002356730642
#>     Attrib V6    0.003465474169634177
#>     Attrib V60    0.07526673188623847
#>     Attrib V7    -0.09907918247433886
#>     Attrib V8    -0.0064934849493281
#>     Attrib V9    0.05271527664211893
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.039808603668107775
#>     Attrib V1    0.2156825331528283
#>     Attrib V10    -0.11440930259001768
#>     Attrib V11    0.053649524627473064
#>     Attrib V12    -0.03421073096516163
#>     Attrib V13    -0.15030348485594952
#>     Attrib V14    0.037529686364402154
#>     Attrib V15    0.14979570024367067
#>     Attrib V16    0.14409353493654914
#>     Attrib V17    0.12943973997444233
#>     Attrib V18    -0.07420262676365634
#>     Attrib V19    0.12768859590139944
#>     Attrib V2    0.24136924634665408
#>     Attrib V20    0.22122979074430332
#>     Attrib V21    0.08018306487819815
#>     Attrib V22    0.05366772724887986
#>     Attrib V23    0.1375368991172688
#>     Attrib V24    0.15448030794731868
#>     Attrib V25    -0.2973121351069987
#>     Attrib V26    -0.21382509802990207
#>     Attrib V27    -0.1630283626814897
#>     Attrib V28    -0.342107679184463
#>     Attrib V29    -0.18432094399523927
#>     Attrib V3    0.06003109703693271
#>     Attrib V30    -0.009387426315791727
#>     Attrib V31    -0.3330306619060674
#>     Attrib V32    -0.10988113863473374
#>     Attrib V33    0.07629053892099896
#>     Attrib V34    -0.04882481888800659
#>     Attrib V35    0.025039943322737967
#>     Attrib V36    -0.11750631386350846
#>     Attrib V37    -0.09064855995143338
#>     Attrib V38    0.19396840206119842
#>     Attrib V39    0.09600005736587046
#>     Attrib V4    0.04683757127847679
#>     Attrib V40    -0.14151721197824002
#>     Attrib V41    -0.164454835880807
#>     Attrib V42    0.059815225493678105
#>     Attrib V43    0.12579730791062838
#>     Attrib V44    0.21458743604479286
#>     Attrib V45    0.27564097466198056
#>     Attrib V46    0.15724135509893636
#>     Attrib V47    0.03873098615478296
#>     Attrib V48    0.056342275411627465
#>     Attrib V49    0.13596552448952084
#>     Attrib V5    0.012079073594697178
#>     Attrib V50    -0.09428173627842676
#>     Attrib V51    0.004465566516929918
#>     Attrib V52    0.21425651323234715
#>     Attrib V53    0.23492266817551652
#>     Attrib V54    0.2673219047367676
#>     Attrib V55    0.11322607516083073
#>     Attrib V56    0.14164564675822805
#>     Attrib V57    0.02836098874569539
#>     Attrib V58    0.13450759423895492
#>     Attrib V59    0.10315754736372736
#>     Attrib V6    -0.17001992460061305
#>     Attrib V60    0.08100612929725344
#>     Attrib V7    -0.23335498157506515
#>     Attrib V8    -0.05775490506711184
#>     Attrib V9    0.06178214022037175
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.02710948643304391
#>     Attrib V1    0.21947686210601122
#>     Attrib V10    -0.12040500058159695
#>     Attrib V11    0.044297796599018446
#>     Attrib V12    0.0029031987840015317
#>     Attrib V13    -0.2227395856617242
#>     Attrib V14    0.009592295660556324
#>     Attrib V15    0.10441600675870809
#>     Attrib V16    0.13301614767858697
#>     Attrib V17    0.029397912641458846
#>     Attrib V18    -0.08317382105696255
#>     Attrib V19    0.06548947820971286
#>     Attrib V2    0.16349741162516093
#>     Attrib V20    0.15775161938236304
#>     Attrib V21    0.09413530889280823
#>     Attrib V22    -0.01625917238656298
#>     Attrib V23    0.11324655866907239
#>     Attrib V24    0.09757664840875237
#>     Attrib V25    -0.297696408298875
#>     Attrib V26    -0.18929517908232069
#>     Attrib V27    -0.07139804974871115
#>     Attrib V28    -0.1878514046640199
#>     Attrib V29    -0.08461302886990879
#>     Attrib V3    0.1268541632652011
#>     Attrib V30    0.09263287319458514
#>     Attrib V31    -0.33652155449153487
#>     Attrib V32    -0.08161297785365443
#>     Attrib V33    0.0681779355202267
#>     Attrib V34    -0.05811447925249545
#>     Attrib V35    0.0040623548674264065
#>     Attrib V36    -0.06493076394413254
#>     Attrib V37    -0.12119251527037331
#>     Attrib V38    0.07920697952581929
#>     Attrib V39    0.12271877374115281
#>     Attrib V4    0.005287317031501537
#>     Attrib V40    -0.13408718833062813
#>     Attrib V41    -0.1341825306456103
#>     Attrib V42    0.0801860354896682
#>     Attrib V43    0.0404577065886611
#>     Attrib V44    0.20081717638132174
#>     Attrib V45    0.34813977653512584
#>     Attrib V46    0.17740526949031452
#>     Attrib V47    0.05142121530116519
#>     Attrib V48    0.039031550813041986
#>     Attrib V49    0.19003807326702754
#>     Attrib V5    0.054742722271685994
#>     Attrib V50    -0.10358158840286408
#>     Attrib V51    0.03336611623000991
#>     Attrib V52    0.24056984304597073
#>     Attrib V53    0.20210069870757588
#>     Attrib V54    0.11315559484695807
#>     Attrib V55    0.0279144630967756
#>     Attrib V56    0.1362346731304218
#>     Attrib V57    0.01554333249523938
#>     Attrib V58    0.21239123550729536
#>     Attrib V59    0.0727893566370648
#>     Attrib V6    -0.09192362696018067
#>     Attrib V60    0.04950209122788142
#>     Attrib V7    -0.2029280264700327
#>     Attrib V8    -0.016024845818452135
#>     Attrib V9    0.07572030514157248
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
#>  0.1594203 
```
