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
#>     Threshold    0.13518392101585103
#>     Node 2    2.008877615225196
#>     Node 3    1.0696671698612559
#>     Node 4    0.5224764454096221
#>     Node 5    -2.3812549117680772
#>     Node 6    0.8369974726802588
#>     Node 7    2.549649160592789
#>     Node 8    0.6958631364849485
#>     Node 9    3.1507005750488455
#>     Node 10    -1.3567635665628945
#>     Node 11    0.7005257978340926
#>     Node 12    1.366671889658988
#>     Node 13    1.2895185043981585
#>     Node 14    1.461648728484198
#>     Node 15    -1.661712544863779
#>     Node 16    0.12760214447986382
#>     Node 17    -0.34700649296281255
#>     Node 18    0.4098817831533965
#>     Node 19    2.1542521404221486
#>     Node 20    2.001164539243859
#>     Node 21    -1.6712484210060274
#>     Node 22    0.681634526987127
#>     Node 23    2.082029520634558
#>     Node 24    -1.4011987421734406
#>     Node 25    3.3837341013532787
#>     Node 26    -0.3339840613912613
#>     Node 27    1.638773384724233
#>     Node 28    -3.9902744924959137
#>     Node 29    1.1234252413157733
#>     Node 30    0.7738981623235134
#>     Node 31    1.149834546985264
#>     Node 32    0.10042305856678867
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.11093303391336809
#>     Node 2    -2.058194742205014
#>     Node 3    -1.0531706651375197
#>     Node 4    -0.48409356876983917
#>     Node 5    2.405617609803939
#>     Node 6    -0.8162114019050906
#>     Node 7    -2.547474351398452
#>     Node 8    -0.732857223652736
#>     Node 9    -3.164669370344998
#>     Node 10    1.2934955665372834
#>     Node 11    -0.6689500617703609
#>     Node 12    -1.4428938009273036
#>     Node 13    -1.2338402591049833
#>     Node 14    -1.393466612634703
#>     Node 15    1.6519654520644618
#>     Node 16    -0.14483921024480617
#>     Node 17    0.3819757717263345
#>     Node 18    -0.372653012104858
#>     Node 19    -2.144506661240106
#>     Node 20    -1.9858498771567306
#>     Node 21    1.729315440523565
#>     Node 22    -0.7364556757689873
#>     Node 23    -2.1201585707173574
#>     Node 24    1.3898933948433532
#>     Node 25    -3.3854208525970098
#>     Node 26    0.2513414853264127
#>     Node 27    -1.6776995272188573
#>     Node 28    3.9628538972165477
#>     Node 29    -1.1559291398634925
#>     Node 30    -0.7010927355382811
#>     Node 31    -1.0923453357942357
#>     Node 32    -0.11921419143609348
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.01495514865363274
#>     Attrib V1    0.6715490761970644
#>     Attrib V10    -0.4570466663405974
#>     Attrib V11    0.06822776925290273
#>     Attrib V12    0.15519007396565773
#>     Attrib V13    0.13132796431900814
#>     Attrib V14    0.012775293300587345
#>     Attrib V15    0.008927002379069368
#>     Attrib V16    -0.23087848010332498
#>     Attrib V17    0.10703394938383277
#>     Attrib V18    0.7581691447351782
#>     Attrib V19    0.6152771474897671
#>     Attrib V2    0.34341566037377164
#>     Attrib V20    0.6327765512918413
#>     Attrib V21    0.3782392637102054
#>     Attrib V22    0.47591747654282796
#>     Attrib V23    0.5682214335202894
#>     Attrib V24    0.23786892999655557
#>     Attrib V25    -0.16734941430864295
#>     Attrib V26    -0.5444821851839877
#>     Attrib V27    -0.8115503378450567
#>     Attrib V28    -0.3213850045376265
#>     Attrib V29    0.22403997418974864
#>     Attrib V3    0.4200183437294634
#>     Attrib V30    -0.14638717440741528
#>     Attrib V31    -0.6683162841868682
#>     Attrib V32    0.16145448079585228
#>     Attrib V33    0.3068759516848312
#>     Attrib V34    -0.20177282415750675
#>     Attrib V35    -0.11865587031125588
#>     Attrib V36    -0.787365883964889
#>     Attrib V37    -0.9246516920797291
#>     Attrib V38    0.07425966437101097
#>     Attrib V39    0.07797632748301049
#>     Attrib V4    0.1453036892480042
#>     Attrib V40    -0.12126790666854653
#>     Attrib V41    -0.015670717272346205
#>     Attrib V42    0.21219636858324653
#>     Attrib V43    0.49883590273356554
#>     Attrib V44    0.09462120165739211
#>     Attrib V45    -0.03493637840020085
#>     Attrib V46    0.2461755409580096
#>     Attrib V47    0.2187955886405187
#>     Attrib V48    0.06609316123391845
#>     Attrib V49    0.5395673407020308
#>     Attrib V5    0.08654651774484615
#>     Attrib V50    0.13850380068583154
#>     Attrib V51    -0.04146465539690205
#>     Attrib V52    0.2952493412266215
#>     Attrib V53    0.8729419860082658
#>     Attrib V54    0.38037791336148347
#>     Attrib V55    -0.5608583799584297
#>     Attrib V56    0.7267615551357393
#>     Attrib V57    -0.15792784823096895
#>     Attrib V58    0.7367885175051697
#>     Attrib V59    0.523360519367398
#>     Attrib V6    -0.3608028257188881
#>     Attrib V60    -0.020501597746362128
#>     Attrib V7    -0.5796594069100228
#>     Attrib V8    -0.46092226165986067
#>     Attrib V9    -0.05134386188467374
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.04530881774478263
#>     Attrib V1    0.35089526595648235
#>     Attrib V10    -0.25649633913798303
#>     Attrib V11    -0.004609517914601625
#>     Attrib V12    0.08199041030545336
#>     Attrib V13    0.11920818469555165
#>     Attrib V14    0.039565904773613075
#>     Attrib V15    0.12405712565341523
#>     Attrib V16    -0.07856117763355037
#>     Attrib V17    0.09710123990133826
#>     Attrib V18    0.3770718343325035
#>     Attrib V19    0.38002098850389926
#>     Attrib V2    0.24675954518866922
#>     Attrib V20    0.34664402143336215
#>     Attrib V21    0.1419468817993071
#>     Attrib V22    0.2306577698951837
#>     Attrib V23    0.2607368918427348
#>     Attrib V24    0.08005822923749015
#>     Attrib V25    -0.08733116460964746
#>     Attrib V26    -0.32176577661658845
#>     Attrib V27    -0.5019439364237893
#>     Attrib V28    -0.23506819308921578
#>     Attrib V29    0.008377658886867076
#>     Attrib V3    0.25570267063351804
#>     Attrib V30    -0.10095232718125599
#>     Attrib V31    -0.3442519897529776
#>     Attrib V32    0.07593317905082475
#>     Attrib V33    0.1511730100547377
#>     Attrib V34    -0.15566423383184075
#>     Attrib V35    -0.003511283807015272
#>     Attrib V36    -0.38398938778793246
#>     Attrib V37    -0.42606339610259364
#>     Attrib V38    -0.011565703633780004
#>     Attrib V39    0.047233801647894785
#>     Attrib V4    0.11751505748715028
#>     Attrib V40    -0.09620555102258097
#>     Attrib V41    -0.07779073963399612
#>     Attrib V42    0.05056757847792316
#>     Attrib V43    0.20782788666533994
#>     Attrib V44    0.050378437543786195
#>     Attrib V45    -0.020653787196113448
#>     Attrib V46    0.12207582518528828
#>     Attrib V47    0.13535434115050815
#>     Attrib V48    -0.03448905811706172
#>     Attrib V49    0.21986301686890994
#>     Attrib V5    0.06344054579404251
#>     Attrib V50    0.05149684412711735
#>     Attrib V51    -0.040522603790841126
#>     Attrib V52    0.18650067068218024
#>     Attrib V53    0.4731746346246455
#>     Attrib V54    0.2649144118603253
#>     Attrib V55    -0.18819543555159482
#>     Attrib V56    0.4181855188750168
#>     Attrib V57    -0.023621089093925126
#>     Attrib V58    0.4603494358454795
#>     Attrib V59    0.2716473640912387
#>     Attrib V6    -0.21454617275001064
#>     Attrib V60    0.020103580181822765
#>     Attrib V7    -0.3478915354436016
#>     Attrib V8    -0.2506924526039578
#>     Attrib V9    -0.07389981163986196
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.09147967911886647
#>     Attrib V1    0.12445292068862404
#>     Attrib V10    -0.10298193426375352
#>     Attrib V11    0.03664224836851327
#>     Attrib V12    0.06159678487432481
#>     Attrib V13    0.09159632743022043
#>     Attrib V14    0.03940944607207625
#>     Attrib V15    0.07200367897564021
#>     Attrib V16    -0.037997006829411935
#>     Attrib V17    0.07756162271231411
#>     Attrib V18    0.18927559936858668
#>     Attrib V19    0.1551087802722595
#>     Attrib V2    0.08699659334277814
#>     Attrib V20    0.12424381215207551
#>     Attrib V21    0.058704251460380524
#>     Attrib V22    -0.01586117030456555
#>     Attrib V23    0.059209100480432444
#>     Attrib V24    -0.020221855284520654
#>     Attrib V25    -0.09368858407319512
#>     Attrib V26    -0.14049163676486617
#>     Attrib V27    -0.2516236219748611
#>     Attrib V28    -0.03654033807410538
#>     Attrib V29    0.07907743766981674
#>     Attrib V3    0.15328822175830814
#>     Attrib V30    -0.06590224572298456
#>     Attrib V31    -0.16041579920159296
#>     Attrib V32    0.043681167224746326
#>     Attrib V33    0.07636035348622427
#>     Attrib V34    -0.03301965525562361
#>     Attrib V35    0.05263290354088819
#>     Attrib V36    -0.1632256173765562
#>     Attrib V37    -0.14878519833061454
#>     Attrib V38    0.004913713709232701
#>     Attrib V39    0.06751888963783635
#>     Attrib V4    0.0580687371360181
#>     Attrib V40    -0.041742590423878935
#>     Attrib V41    -0.08846163763940686
#>     Attrib V42    0.003979647732306704
#>     Attrib V43    0.052334754905706056
#>     Attrib V44    0.03114933869998737
#>     Attrib V45    0.06481256954472502
#>     Attrib V46    0.034748170099492985
#>     Attrib V47    0.020922198659432026
#>     Attrib V48    0.033149224527507216
#>     Attrib V49    0.14721839156588296
#>     Attrib V5    0.09294684375670899
#>     Attrib V50    0.025849727568975966
#>     Attrib V51    0.037205341091978754
#>     Attrib V52    0.0874521596038157
#>     Attrib V53    0.28163913324810425
#>     Attrib V54    0.051834394810823976
#>     Attrib V55    -0.06540472281356506
#>     Attrib V56    0.1940893067122513
#>     Attrib V57    0.011085159196417593
#>     Attrib V58    0.19658457468145554
#>     Attrib V59    0.08302087494512968
#>     Attrib V6    -0.1122884553080294
#>     Attrib V60    -0.012075390538729695
#>     Attrib V7    -0.1490397046518368
#>     Attrib V8    -0.17155086493369892
#>     Attrib V9    0.03264415402091572
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.2869166810268884
#>     Attrib V1    -0.37702744387876574
#>     Attrib V10    -0.6438924449260292
#>     Attrib V11    -1.1453267445019482
#>     Attrib V12    -0.925258258626578
#>     Attrib V13    -0.49114866249984845
#>     Attrib V14    0.5251099132747811
#>     Attrib V15    0.5174078040953533
#>     Attrib V16    0.6778013111958335
#>     Attrib V17    0.5504684642031957
#>     Attrib V18    -0.18674451860708
#>     Attrib V19    -0.2907930317428804
#>     Attrib V2    -0.4153821149268481
#>     Attrib V20    0.22818947105552426
#>     Attrib V21    0.408873725879286
#>     Attrib V22    -0.08742066326398104
#>     Attrib V23    -0.7772011156326836
#>     Attrib V24    -0.4438307300040502
#>     Attrib V25    0.01260914780192784
#>     Attrib V26    -0.6163170600001375
#>     Attrib V27    -0.5414132385625751
#>     Attrib V28    -1.0344765885750253
#>     Attrib V29    -1.1266204525212418
#>     Attrib V3    0.011227574127206477
#>     Attrib V30    -0.17334751698760584
#>     Attrib V31    0.5923284318628945
#>     Attrib V32    -0.36920598602100596
#>     Attrib V33    0.1485544803274949
#>     Attrib V34    0.11945074752075367
#>     Attrib V35    -0.35602713451714924
#>     Attrib V36    0.673661354525369
#>     Attrib V37    0.4653909748602466
#>     Attrib V38    0.029387341913057547
#>     Attrib V39    -0.17123663105692496
#>     Attrib V4    -0.3132576726876483
#>     Attrib V40    -0.014926915685182665
#>     Attrib V41    -0.9605746604877381
#>     Attrib V42    0.022393004777384415
#>     Attrib V43    -0.06859411943414159
#>     Attrib V44    0.14291451432031654
#>     Attrib V45    -0.41532612631919397
#>     Attrib V46    -0.6918829594394807
#>     Attrib V47    -0.2865481586750557
#>     Attrib V48    -0.12420130355701628
#>     Attrib V49    -1.090405264381549
#>     Attrib V5    -0.3867676199772037
#>     Attrib V50    0.11499533741647139
#>     Attrib V51    -0.3424195986558931
#>     Attrib V52    -0.7974257809225113
#>     Attrib V53    -0.2681325701742217
#>     Attrib V54    -0.12104724987899891
#>     Attrib V55    0.45048020697542274
#>     Attrib V56    0.6693991057335931
#>     Attrib V57    0.8404815152579204
#>     Attrib V58    -0.6083975209228967
#>     Attrib V59    0.14047155969193062
#>     Attrib V6    0.18848233541119838
#>     Attrib V60    -0.13356900168987815
#>     Attrib V7    0.6449571357855743
#>     Attrib V8    0.514580601865322
#>     Attrib V9    -1.0278336736871818
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.013500442478906296
#>     Attrib V1    0.3152310090982107
#>     Attrib V10    -0.2217587316814369
#>     Attrib V11    0.036025552401447405
#>     Attrib V12    0.10821018385905724
#>     Attrib V13    0.03644863709758119
#>     Attrib V14    -0.011839381087989424
#>     Attrib V15    0.052924003734691104
#>     Attrib V16    0.012799575690544825
#>     Attrib V17    0.07795345981115814
#>     Attrib V18    0.3559074378564601
#>     Attrib V19    0.24726082984958334
#>     Attrib V2    0.18730980342741532
#>     Attrib V20    0.25180746348049116
#>     Attrib V21    0.1305499850571278
#>     Attrib V22    0.10225637662745245
#>     Attrib V23    0.1753802575697809
#>     Attrib V24    0.10553405049013344
#>     Attrib V25    -0.03761058951659791
#>     Attrib V26    -0.2262503846493289
#>     Attrib V27    -0.335721784665499
#>     Attrib V28    -0.18924442287350157
#>     Attrib V29    0.05147046988394454
#>     Attrib V3    0.18771512391373468
#>     Attrib V30    -0.10115972650753673
#>     Attrib V31    -0.3033888569563581
#>     Attrib V32    0.06523637706847644
#>     Attrib V33    0.10285162959367465
#>     Attrib V34    -0.11855981481950367
#>     Attrib V35    0.0211546348979198
#>     Attrib V36    -0.3270465473676228
#>     Attrib V37    -0.3043914829583358
#>     Attrib V38    0.00857100295200287
#>     Attrib V39    0.013594911079096057
#>     Attrib V4    0.12487743405304871
#>     Attrib V40    -0.12845471643122555
#>     Attrib V41    -0.04073692677119717
#>     Attrib V42    0.03889642386891064
#>     Attrib V43    0.139275083354038
#>     Attrib V44    0.012175679559420236
#>     Attrib V45    0.016017621972182195
#>     Attrib V46    0.11829059908971978
#>     Attrib V47    0.055571340779282545
#>     Attrib V48    -0.04570327873061226
#>     Attrib V49    0.15916545516749409
#>     Attrib V5    0.06427959271307258
#>     Attrib V50    0.03458619462187453
#>     Attrib V51    -0.0022398038361457076
#>     Attrib V52    0.11355414212726175
#>     Attrib V53    0.4426943769059855
#>     Attrib V54    0.12343431003325928
#>     Attrib V55    -0.1930540419673103
#>     Attrib V56    0.32572470552329835
#>     Attrib V57    -0.007391220589118936
#>     Attrib V58    0.3506208428151554
#>     Attrib V59    0.230914606116725
#>     Attrib V6    -0.1008715416318989
#>     Attrib V60    0.06880307315692166
#>     Attrib V7    -0.22861754427609654
#>     Attrib V8    -0.17278887888897454
#>     Attrib V9    0.03333949565557626
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4797656555284732
#>     Attrib V1    0.5085794790853588
#>     Attrib V10    0.33252961119026336
#>     Attrib V11    1.060902038756974
#>     Attrib V12    0.765201152566097
#>     Attrib V13    0.4227386468344209
#>     Attrib V14    -0.5594538391925856
#>     Attrib V15    -0.5175226241475659
#>     Attrib V16    -0.7799711754312934
#>     Attrib V17    -0.43606949269708695
#>     Attrib V18    0.4888755285080811
#>     Attrib V19    0.561077943088107
#>     Attrib V2    0.4809555261949375
#>     Attrib V20    -0.014768389022415528
#>     Attrib V21    -0.315135482540274
#>     Attrib V22    0.14338931849686348
#>     Attrib V23    1.0403759430870463
#>     Attrib V24    0.55792380329142
#>     Attrib V25    -0.10483620556106732
#>     Attrib V26    0.3147823670326421
#>     Attrib V27    0.20669831443667794
#>     Attrib V28    0.8615409815976874
#>     Attrib V29    1.3434051966477814
#>     Attrib V3    0.12241119560606725
#>     Attrib V30    0.18281210497599987
#>     Attrib V31    -0.6345101422975891
#>     Attrib V32    0.3806136590514629
#>     Attrib V33    -0.025465911260656837
#>     Attrib V34    -0.15528623440936637
#>     Attrib V35    0.37822993455288206
#>     Attrib V36    -0.9051853436821726
#>     Attrib V37    -0.6177104045185116
#>     Attrib V38    0.0036864745481361683
#>     Attrib V39    0.12813352924354957
#>     Attrib V4    0.1560639592267021
#>     Attrib V40    0.06832185670378324
#>     Attrib V41    0.9924884475945229
#>     Attrib V42    0.1337334735619915
#>     Attrib V43    0.24350519258699588
#>     Attrib V44    -0.07970763293924973
#>     Attrib V45    0.35320698647926724
#>     Attrib V46    0.7112206501791397
#>     Attrib V47    0.3148900207684515
#>     Attrib V48    0.09640352473391885
#>     Attrib V49    1.1783812111709269
#>     Attrib V5    0.4007855454440762
#>     Attrib V50    -0.12499794649532997
#>     Attrib V51    0.1328410524247872
#>     Attrib V52    0.8187073494854205
#>     Attrib V53    0.47711833731406894
#>     Attrib V54    0.07109365372678124
#>     Attrib V55    -0.8207468092543003
#>     Attrib V56    -0.4806403634046772
#>     Attrib V57    -0.8306496949548612
#>     Attrib V58    0.7663771278534011
#>     Attrib V59    -0.02562107746261593
#>     Attrib V6    -0.1876440429327902
#>     Attrib V60    -0.10987054100294366
#>     Attrib V7    -0.8182057046495775
#>     Attrib V8    -0.7605839307589278
#>     Attrib V9    0.9099614623726463
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.07796766490075882
#>     Attrib V1    0.20063252962749523
#>     Attrib V10    -0.08884101145819429
#>     Attrib V11    0.14077493231002738
#>     Attrib V12    0.1043421071579588
#>     Attrib V13    0.10894834176045524
#>     Attrib V14    -0.09527275167892908
#>     Attrib V15    -0.016292550296510586
#>     Attrib V16    -0.043350250239729035
#>     Attrib V17    0.031911443590690744
#>     Attrib V18    0.21980405546526288
#>     Attrib V19    0.22085161984522877
#>     Attrib V2    0.14661189066972055
#>     Attrib V20    0.11912578294187828
#>     Attrib V21    0.019331434648281742
#>     Attrib V22    0.0016957884294852622
#>     Attrib V23    0.1273899724885143
#>     Attrib V24    0.08271251784447729
#>     Attrib V25    -0.059684638038151785
#>     Attrib V26    -0.11496495217298575
#>     Attrib V27    -0.24795552622009318
#>     Attrib V28    -0.014106514195344162
#>     Attrib V29    0.1703161418498256
#>     Attrib V3    0.11153718961708656
#>     Attrib V30    -0.020587902789016337
#>     Attrib V31    -0.24086088396488853
#>     Attrib V32    0.09101152309564747
#>     Attrib V33    0.10405567983844008
#>     Attrib V34    -0.05859798575886692
#>     Attrib V35    0.07396546683379758
#>     Attrib V36    -0.20086820892969082
#>     Attrib V37    -0.2286837411042754
#>     Attrib V38    0.09269229321470318
#>     Attrib V39    0.0432714017855578
#>     Attrib V4    0.10729447675490433
#>     Attrib V40    -0.10793579354746012
#>     Attrib V41    -0.06481318242788923
#>     Attrib V42    -0.09592761038008862
#>     Attrib V43    0.09118278898014338
#>     Attrib V44    0.04909839991287387
#>     Attrib V45    0.052672058807388455
#>     Attrib V46    0.1294276217741249
#>     Attrib V47    0.05511174014481614
#>     Attrib V48    0.031500951422100826
#>     Attrib V49    0.21461388018915464
#>     Attrib V5    0.03835029677724472
#>     Attrib V50    -0.07300255596699921
#>     Attrib V51    -0.033736228108382546
#>     Attrib V52    0.11990820343258025
#>     Attrib V53    0.367651745354245
#>     Attrib V54    0.1105354686102739
#>     Attrib V55    -0.19675257404736568
#>     Attrib V56    0.12597585862793975
#>     Attrib V57    -0.062250607979928096
#>     Attrib V58    0.2360011910801248
#>     Attrib V59    0.10694708972700642
#>     Attrib V6    -0.19207118551573638
#>     Attrib V60    0.027946659121999572
#>     Attrib V7    -0.2402723903262538
#>     Attrib V8    -0.2505506642340238
#>     Attrib V9    0.06045878962426734
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.24996804898250705
#>     Attrib V1    0.3873470250897224
#>     Attrib V10    0.9264336320763406
#>     Attrib V11    1.4696211535762556
#>     Attrib V12    1.1662816507851959
#>     Attrib V13    0.6217890230529206
#>     Attrib V14    -0.7074435060494189
#>     Attrib V15    -0.643419105168895
#>     Attrib V16    -0.7961288292887677
#>     Attrib V17    -0.5539623817882603
#>     Attrib V18    0.23165035998980055
#>     Attrib V19    0.27065909282155626
#>     Attrib V2    0.48435577995511947
#>     Attrib V20    -0.4454182897999125
#>     Attrib V21    -0.4941713802659551
#>     Attrib V22    0.04394474050185351
#>     Attrib V23    0.9853040656482125
#>     Attrib V24    0.5743364968657217
#>     Attrib V25    0.14889509427043243
#>     Attrib V26    0.9155233025465825
#>     Attrib V27    0.8714198197463476
#>     Attrib V28    1.2762668159104964
#>     Attrib V29    1.2135415123712807
#>     Attrib V3    -0.02566429604324978
#>     Attrib V30    0.05347062012122744
#>     Attrib V31    -0.7080066115224184
#>     Attrib V32    0.4546568479658152
#>     Attrib V33    -0.2675052471655277
#>     Attrib V34    -0.19299626965022304
#>     Attrib V35    0.44559164450558303
#>     Attrib V36    -0.733401967151963
#>     Attrib V37    -0.4769031713617024
#>     Attrib V38    -0.13807603258336562
#>     Attrib V39    0.25162229772209194
#>     Attrib V4    0.3246164478345386
#>     Attrib V40    0.0856452025616445
#>     Attrib V41    1.2364967434567642
#>     Attrib V42    -0.03961540933934279
#>     Attrib V43    0.049264194459982764
#>     Attrib V44    -0.1919401406365848
#>     Attrib V45    0.42941023744698353
#>     Attrib V46    0.7467661249772624
#>     Attrib V47    0.31435453835368665
#>     Attrib V48    0.13750238953648977
#>     Attrib V49    1.2197603712171423
#>     Attrib V5    0.49413959124878465
#>     Attrib V50    -0.11001444572263386
#>     Attrib V51    0.48228250545206774
#>     Attrib V52    0.9448200368681132
#>     Attrib V53    0.31390284870740187
#>     Attrib V54    0.08327495763368067
#>     Attrib V55    -0.3014886636933355
#>     Attrib V56    -0.7669365730830136
#>     Attrib V57    -1.0210053398844874
#>     Attrib V58    0.6406455711105283
#>     Attrib V59    -0.15626323008723958
#>     Attrib V6    -0.12688782401620366
#>     Attrib V60    0.2869702052627813
#>     Attrib V7    -0.6629526860055035
#>     Attrib V8    -0.5574841207231878
#>     Attrib V9    1.2183531931507303
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.327473612853637
#>     Attrib V1    -0.2699940135701133
#>     Attrib V10    -0.23061359478364368
#>     Attrib V11    -0.6474309755309602
#>     Attrib V12    -0.4984561888103205
#>     Attrib V13    -0.298344974732087
#>     Attrib V14    0.3319869068316811
#>     Attrib V15    0.22886516324523457
#>     Attrib V16    0.4772595405437663
#>     Attrib V17    0.2801096019927092
#>     Attrib V18    -0.14263767572555508
#>     Attrib V19    -0.22693586297339557
#>     Attrib V2    -0.2726643040803799
#>     Attrib V20    0.018692139240044973
#>     Attrib V21    0.21322926963807645
#>     Attrib V22    -0.024822021337118364
#>     Attrib V23    -0.411470855721706
#>     Attrib V24    -0.2624564323432481
#>     Attrib V25    0.03089288614485905
#>     Attrib V26    -0.19586589967646958
#>     Attrib V27    -0.09272271670825802
#>     Attrib V28    -0.4758240085903134
#>     Attrib V29    -0.7790738900211674
#>     Attrib V3    -0.057668268602817714
#>     Attrib V30    -0.1620296606609572
#>     Attrib V31    0.3407108723850276
#>     Attrib V32    -0.3283052763210969
#>     Attrib V33    -0.012482223643131117
#>     Attrib V34    0.049090202029698646
#>     Attrib V35    -0.24461779553562965
#>     Attrib V36    0.46704573854980413
#>     Attrib V37    0.3674803405671516
#>     Attrib V38    -0.03198416850730695
#>     Attrib V39    -0.11632957887289101
#>     Attrib V4    -0.1196685240400827
#>     Attrib V40    0.05246135717778343
#>     Attrib V41    -0.4226923475500447
#>     Attrib V42    -0.043446506204155994
#>     Attrib V43    -0.17201929857716486
#>     Attrib V44    0.046237681924375953
#>     Attrib V45    -0.21411810407643386
#>     Attrib V46    -0.44646866996429646
#>     Attrib V47    -0.1830040466003055
#>     Attrib V48    -0.07500061132666778
#>     Attrib V49    -0.6912492352447914
#>     Attrib V5    -0.17916359011503216
#>     Attrib V50    0.14337527859198837
#>     Attrib V51    -0.10381775508052635
#>     Attrib V52    -0.4641912300824684
#>     Attrib V53    -0.2889063457863128
#>     Attrib V54    -0.08022907310764185
#>     Attrib V55    0.43035323081649995
#>     Attrib V56    0.22976867222287398
#>     Attrib V57    0.5388779991617347
#>     Attrib V58    -0.4526701334946398
#>     Attrib V59    0.005342727384137014
#>     Attrib V6    0.2465934778608464
#>     Attrib V60    0.017319538015415244
#>     Attrib V7    0.4894084068522675
#>     Attrib V8    0.40495641299463825
#>     Attrib V9    -0.5503593165279238
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.040877281035784
#>     Attrib V1    0.20833532321323936
#>     Attrib V10    -0.16953914914604318
#>     Attrib V11    0.04931220357736324
#>     Attrib V12    0.11601725235129623
#>     Attrib V13    0.037712887263881785
#>     Attrib V14    -0.018510432069230923
#>     Attrib V15    0.027648573381954533
#>     Attrib V16    -0.03217918304241692
#>     Attrib V17    0.13459655526402328
#>     Attrib V18    0.3029377369061624
#>     Attrib V19    0.21401608642201445
#>     Attrib V2    0.1066480572139885
#>     Attrib V20    0.2303299982674568
#>     Attrib V21    0.03955636059372606
#>     Attrib V22    0.009748347337218572
#>     Attrib V23    0.09041225225379733
#>     Attrib V24    0.014691114685705099
#>     Attrib V25    -0.05480819841059111
#>     Attrib V26    -0.24451738109162124
#>     Attrib V27    -0.33494665562368137
#>     Attrib V28    -0.11288098798610116
#>     Attrib V29    0.04631493877662368
#>     Attrib V3    0.11135348140915605
#>     Attrib V30    -0.07798151815924331
#>     Attrib V31    -0.2889312050623666
#>     Attrib V32    0.01971919120706504
#>     Attrib V33    0.07733363423215638
#>     Attrib V34    -0.023090815875180856
#>     Attrib V35    0.08461910019587031
#>     Attrib V36    -0.2040937768647061
#>     Attrib V37    -0.2481237620094599
#>     Attrib V38    0.09821895701979035
#>     Attrib V39    0.045256049855156064
#>     Attrib V4    0.06795616934232186
#>     Attrib V40    -0.1098990143113077
#>     Attrib V41    -0.1521059124338323
#>     Attrib V42    -0.020752902810532756
#>     Attrib V43    0.10931239428791291
#>     Attrib V44    0.05163247000319802
#>     Attrib V45    0.06215745053689652
#>     Attrib V46    0.07916093486841577
#>     Attrib V47    0.08372538809887127
#>     Attrib V48    0.03408757342730658
#>     Attrib V49    0.1430688788128236
#>     Attrib V5    0.08992739437129384
#>     Attrib V50    0.029706908223092746
#>     Attrib V51    0.05382833691284554
#>     Attrib V52    0.08049366617489341
#>     Attrib V53    0.33594043258236267
#>     Attrib V54    0.19839974442675468
#>     Attrib V55    -0.10635851174753838
#>     Attrib V56    0.2596177522871555
#>     Attrib V57    -0.012509767078792021
#>     Attrib V58    0.2961462151586824
#>     Attrib V59    0.09654467605026969
#>     Attrib V6    -0.10608604347290304
#>     Attrib V60    0.010416720278952686
#>     Attrib V7    -0.2416733104831236
#>     Attrib V8    -0.16424305697752892
#>     Attrib V9    0.006249486180347752
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.048503011591547324
#>     Attrib V1    0.42652137644462
#>     Attrib V10    -0.40531762867336946
#>     Attrib V11    0.05962147708654042
#>     Attrib V12    0.033131958764733016
#>     Attrib V13    0.07518793685171445
#>     Attrib V14    0.017596000772588074
#>     Attrib V15    0.04586734250791958
#>     Attrib V16    -0.0790544798821259
#>     Attrib V17    0.10817722954399964
#>     Attrib V18    0.507276441936751
#>     Attrib V19    0.4772177291374568
#>     Attrib V2    0.30687912627397845
#>     Attrib V20    0.4128381005215041
#>     Attrib V21    0.21717209856240405
#>     Attrib V22    0.3208297436699276
#>     Attrib V23    0.3812315129105544
#>     Attrib V24    0.11786134505301095
#>     Attrib V25    -0.16513601005750658
#>     Attrib V26    -0.4312516686489831
#>     Attrib V27    -0.5987301443010147
#>     Attrib V28    -0.3046114899238105
#>     Attrib V29    0.14401503968885326
#>     Attrib V3    0.24936741785951214
#>     Attrib V30    -0.16740734262477003
#>     Attrib V31    -0.5215780530673993
#>     Attrib V32    0.02272577000253015
#>     Attrib V33    0.22191546232554896
#>     Attrib V34    -0.11891679434994165
#>     Attrib V35    -0.022313082811593665
#>     Attrib V36    -0.4941355707041311
#>     Attrib V37    -0.5752360110650275
#>     Attrib V38    0.05396175641596926
#>     Attrib V39    -0.0016711530468590642
#>     Attrib V4    0.1561820657986622
#>     Attrib V40    -0.11348857050866112
#>     Attrib V41    -0.10704556846542664
#>     Attrib V42    0.047120914699348454
#>     Attrib V43    0.3340694133296023
#>     Attrib V44    0.009659871544910818
#>     Attrib V45    0.02135910810173753
#>     Attrib V46    0.235627003636598
#>     Attrib V47    0.1448990386501384
#>     Attrib V48    0.050260560278097444
#>     Attrib V49    0.3160649690852559
#>     Attrib V5    0.07552463026579881
#>     Attrib V50    0.056438097976093324
#>     Attrib V51    -0.02068366728063959
#>     Attrib V52    0.23494014486983547
#>     Attrib V53    0.6611026717685806
#>     Attrib V54    0.2992121841596363
#>     Attrib V55    -0.35168566802946216
#>     Attrib V56    0.5465953663746603
#>     Attrib V57    -0.01455406824211987
#>     Attrib V58    0.5724805642303163
#>     Attrib V59    0.379847881520504
#>     Attrib V6    -0.261140637915063
#>     Attrib V60    0.010818184397820823
#>     Attrib V7    -0.37676916847583697
#>     Attrib V8    -0.3058775271996945
#>     Attrib V9    -0.03840912253127992
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.06149897081537726
#>     Attrib V1    0.4118538311520941
#>     Attrib V10    -0.33684244694524784
#>     Attrib V11    0.03746196525210439
#>     Attrib V12    0.08937202946229074
#>     Attrib V13    0.15201398759442783
#>     Attrib V14    -0.008742534543929363
#>     Attrib V15    0.02946382069453003
#>     Attrib V16    -0.1274042327160508
#>     Attrib V17    0.12506216213619675
#>     Attrib V18    0.49433225777248635
#>     Attrib V19    0.3984473033744103
#>     Attrib V2    0.22737377391174868
#>     Attrib V20    0.4120689965125594
#>     Attrib V21    0.21834584017764275
#>     Attrib V22    0.2530401146939346
#>     Attrib V23    0.37557652760912913
#>     Attrib V24    0.15412801288719724
#>     Attrib V25    -0.07092027174042755
#>     Attrib V26    -0.37012054249692355
#>     Attrib V27    -0.5017878423866291
#>     Attrib V28    -0.2708857529094479
#>     Attrib V29    0.13631779977193856
#>     Attrib V3    0.3085769851625403
#>     Attrib V30    -0.12964111193737524
#>     Attrib V31    -0.4870249168779061
#>     Attrib V32    0.07135569552067458
#>     Attrib V33    0.1578346536177301
#>     Attrib V34    -0.10886908501593857
#>     Attrib V35    -0.04710626013766639
#>     Attrib V36    -0.4862577568004186
#>     Attrib V37    -0.504200626756562
#>     Attrib V38    0.03275703158848319
#>     Attrib V39    0.08299519215158353
#>     Attrib V4    0.13616004908623466
#>     Attrib V40    -0.09212386845129344
#>     Attrib V41    -0.04662309909680517
#>     Attrib V42    0.08140327447080424
#>     Attrib V43    0.22344974179209875
#>     Attrib V44    0.023766035714475338
#>     Attrib V45    -0.03896014236568103
#>     Attrib V46    0.19681649230272127
#>     Attrib V47    0.17032364413399756
#>     Attrib V48    -0.0033044224036251468
#>     Attrib V49    0.3512811847214548
#>     Attrib V5    0.09221135709039685
#>     Attrib V50    0.04210981720525104
#>     Attrib V51    -0.029440387212210508
#>     Attrib V52    0.1698827951948426
#>     Attrib V53    0.5936534640259473
#>     Attrib V54    0.2273669567801731
#>     Attrib V55    -0.3256169420153014
#>     Attrib V56    0.4722056969611449
#>     Attrib V57    -0.05238342540609441
#>     Attrib V58    0.496711574452703
#>     Attrib V59    0.35521000382007095
#>     Attrib V6    -0.1785136038098683
#>     Attrib V60    0.05965804848920592
#>     Attrib V7    -0.32441506291412014
#>     Attrib V8    -0.3467192933402816
#>     Attrib V9    -0.03402465316084426
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.02317973916240965
#>     Attrib V1    0.5211496103216711
#>     Attrib V10    -0.34294767758151
#>     Attrib V11    0.08803065822190732
#>     Attrib V12    0.10703056178562682
#>     Attrib V13    0.06393909987896722
#>     Attrib V14    -0.03917572742264189
#>     Attrib V15    0.0953220911735621
#>     Attrib V16    -0.1402338507839938
#>     Attrib V17    0.104420863471594
#>     Attrib V18    0.525630910362072
#>     Attrib V19    0.42351368601520034
#>     Attrib V2    0.29333460972391423
#>     Attrib V20    0.42895377663641676
#>     Attrib V21    0.2160049133778453
#>     Attrib V22    0.2997556136486758
#>     Attrib V23    0.4161294693444351
#>     Attrib V24    0.12092561481483552
#>     Attrib V25    -0.1293570014655649
#>     Attrib V26    -0.38567143730245673
#>     Attrib V27    -0.6655768296358286
#>     Attrib V28    -0.3391546558379613
#>     Attrib V29    0.08354405474298468
#>     Attrib V3    0.22657887783320466
#>     Attrib V30    -0.1358064442216983
#>     Attrib V31    -0.4698559219908987
#>     Attrib V32    0.04989885285454527
#>     Attrib V33    0.21465391090802907
#>     Attrib V34    -0.15431842379638183
#>     Attrib V35    0.012730193477907784
#>     Attrib V36    -0.531918204935536
#>     Attrib V37    -0.5569885554935624
#>     Attrib V38    0.019509779659948774
#>     Attrib V39    0.040031343568548754
#>     Attrib V4    0.11582030385958068
#>     Attrib V40    -0.15117263001870934
#>     Attrib V41    -0.11425041243902412
#>     Attrib V42    0.0351796698737111
#>     Attrib V43    0.28002638697885796
#>     Attrib V44    0.07778385459578754
#>     Attrib V45    -0.03829705326122698
#>     Attrib V46    0.22254228574182197
#>     Attrib V47    0.14756364906440927
#>     Attrib V48    0.04594240467150005
#>     Attrib V49    0.4114914439722737
#>     Attrib V5    0.029199768552455502
#>     Attrib V50    0.0926980528258949
#>     Attrib V51    -0.060086009575328767
#>     Attrib V52    0.19869596029508396
#>     Attrib V53    0.6158974156739127
#>     Attrib V54    0.3583758498898474
#>     Attrib V55    -0.33125540027004907
#>     Attrib V56    0.5356270058930831
#>     Attrib V57    -0.0759153713946877
#>     Attrib V58    0.5784577719846169
#>     Attrib V59    0.3382400141911381
#>     Attrib V6    -0.26481342412455494
#>     Attrib V60    0.07957962304254498
#>     Attrib V7    -0.41468973893442884
#>     Attrib V8    -0.37825182365910187
#>     Attrib V9    -0.02964704216604796
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.423669557524752
#>     Attrib V1    -0.4312187606760092
#>     Attrib V10    -0.15012397433356467
#>     Attrib V11    -0.7551660644103148
#>     Attrib V12    -0.5762969466826422
#>     Attrib V13    -0.41767425969153166
#>     Attrib V14    0.3325175133118324
#>     Attrib V15    0.3576675144947612
#>     Attrib V16    0.6054339902317278
#>     Attrib V17    0.3369810583095474
#>     Attrib V18    -0.35136426632886975
#>     Attrib V19    -0.35962003953647637
#>     Attrib V2    -0.3702263998360721
#>     Attrib V20    -0.07005392549033233
#>     Attrib V21    0.15364591638808542
#>     Attrib V22    -0.05309586868198669
#>     Attrib V23    -0.6340118454474969
#>     Attrib V24    -0.3718642352430719
#>     Attrib V25    0.034539933696688375
#>     Attrib V26    -0.1279621794423184
#>     Attrib V27    -0.023860386265891768
#>     Attrib V28    -0.4625806786781378
#>     Attrib V29    -0.8787166487571539
#>     Attrib V3    -0.06055031663841177
#>     Attrib V30    -0.19662934161782583
#>     Attrib V31    0.44730237001443246
#>     Attrib V32    -0.3254031986438334
#>     Attrib V33    -0.07019877335969278
#>     Attrib V34    0.09847118995674708
#>     Attrib V35    -0.3143633788520011
#>     Attrib V36    0.6499641479428876
#>     Attrib V37    0.56178618602629
#>     Attrib V38    -0.07647385323299147
#>     Attrib V39    -0.11864784363613208
#>     Attrib V4    -0.08088039872362537
#>     Attrib V40    0.013773841305698857
#>     Attrib V41    -0.5859334813413486
#>     Attrib V42    -0.10602670588823021
#>     Attrib V43    -0.28342114336125834
#>     Attrib V44    8.63613115538178E-4
#>     Attrib V45    -0.23705884554092427
#>     Attrib V46    -0.46668876262720616
#>     Attrib V47    -0.17741659319726644
#>     Attrib V48    -0.023505984530694874
#>     Attrib V49    -0.8460453480747645
#>     Attrib V5    -0.19241726338533827
#>     Attrib V50    0.18830167481454563
#>     Attrib V51    -0.019721645499782677
#>     Attrib V52    -0.5713072544541568
#>     Attrib V53    -0.4748771844718926
#>     Attrib V54    -0.13671339281825523
#>     Attrib V55    0.6634530963681297
#>     Attrib V56    0.2812548081323972
#>     Attrib V57    0.6453539059420721
#>     Attrib V58    -0.5915513332146736
#>     Attrib V59    -0.00989978678270341
#>     Attrib V6    0.2655030475704263
#>     Attrib V60    0.10886802765751827
#>     Attrib V7    0.6374814317089263
#>     Attrib V8    0.5895489928471174
#>     Attrib V9    -0.5708121302573556
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.16967246047179965
#>     Attrib V1    0.053210823240330093
#>     Attrib V10    0.013725100149127034
#>     Attrib V11    -0.003496947726428309
#>     Attrib V12    3.380060219212773E-4
#>     Attrib V13    0.030876526379611757
#>     Attrib V14    -0.008574980815571278
#>     Attrib V15    0.024415878626256007
#>     Attrib V16    0.0870815380434153
#>     Attrib V17    0.1127072968732629
#>     Attrib V18    0.11556439150387363
#>     Attrib V19    0.036878512832755776
#>     Attrib V2    0.015477006154079893
#>     Attrib V20    -0.0455658795395472
#>     Attrib V21    -0.07011118220231284
#>     Attrib V22    -0.06613960265133308
#>     Attrib V23    -0.0705135263256912
#>     Attrib V24    -0.0010699746826339032
#>     Attrib V25    -0.002327924898860916
#>     Attrib V26    -0.08296632574745164
#>     Attrib V27    -0.09948604087544327
#>     Attrib V28    -0.039097804979671046
#>     Attrib V29    -0.051759119322094996
#>     Attrib V3    0.1146998472833295
#>     Attrib V30    -0.09071161112165363
#>     Attrib V31    -0.07161712685873947
#>     Attrib V32    0.03055197548914125
#>     Attrib V33    -0.004881786021465895
#>     Attrib V34    0.011870233872458127
#>     Attrib V35    0.025422289726240926
#>     Attrib V36    -9.325612530527777E-4
#>     Attrib V37    0.05532613038500479
#>     Attrib V38    0.04160447151560043
#>     Attrib V39    0.06123864046768152
#>     Attrib V4    0.09313568517350264
#>     Attrib V40    -0.002125857524985934
#>     Attrib V41    -7.36711147137552E-4
#>     Attrib V42    0.02831871204454507
#>     Attrib V43    1.2718373647281807E-4
#>     Attrib V44    -0.004223807189755379
#>     Attrib V45    0.019204458381303836
#>     Attrib V46    0.041949349612616774
#>     Attrib V47    0.03711388959643655
#>     Attrib V48    0.016998022255281638
#>     Attrib V49    -0.003584794669882167
#>     Attrib V5    0.07523820092912886
#>     Attrib V50    0.05988004141917077
#>     Attrib V51    0.09742445147683375
#>     Attrib V52    0.07777696397708002
#>     Attrib V53    0.13625191962618433
#>     Attrib V54    -0.006129829596062353
#>     Attrib V55    0.06618283284656849
#>     Attrib V56    0.12552087632764528
#>     Attrib V57    0.12416403444788902
#>     Attrib V58    0.1555598458641603
#>     Attrib V59    0.027709697287529342
#>     Attrib V6    0.06058426694655871
#>     Attrib V60    0.055034918392854744
#>     Attrib V7    0.007615749658737793
#>     Attrib V8    -0.016384527408617715
#>     Attrib V9    0.059016740331688355
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.14400627740367358
#>     Attrib V1    -0.08866531046293423
#>     Attrib V10    0.07527687741727529
#>     Attrib V11    -0.13849869663311876
#>     Attrib V12    -0.1955472748465481
#>     Attrib V13    -0.16065349831247203
#>     Attrib V14    0.042217800523217976
#>     Attrib V15    0.13824715926877096
#>     Attrib V16    0.15696810189743923
#>     Attrib V17    0.09633961403768616
#>     Attrib V18    -0.072279502956532
#>     Attrib V19    -0.09874739285319808
#>     Attrib V2    -0.009507242051048434
#>     Attrib V20    -0.11658793434496224
#>     Attrib V21    -0.020755579710037643
#>     Attrib V22    0.03639112034269239
#>     Attrib V23    -0.11818349338919196
#>     Attrib V24    -0.03740513401606815
#>     Attrib V25    -0.02574342101651903
#>     Attrib V26    -0.06555999251227113
#>     Attrib V27    0.006771395307773384
#>     Attrib V28    -0.13297390131246425
#>     Attrib V29    -0.2931714018013496
#>     Attrib V3    0.005334661683287517
#>     Attrib V30    -0.08731114946267435
#>     Attrib V31    0.12594337609013795
#>     Attrib V32    -0.09022374022612054
#>     Attrib V33    0.03576945033575449
#>     Attrib V34    0.02700219947382843
#>     Attrib V35    0.019973069154143323
#>     Attrib V36    0.1806622362239449
#>     Attrib V37    0.18267145107006919
#>     Attrib V38    0.03568083695369798
#>     Attrib V39    0.021990227972009002
#>     Attrib V4    0.023591703319878282
#>     Attrib V40    0.0639907468433633
#>     Attrib V41    0.04978972322032538
#>     Attrib V42    0.04845976524856923
#>     Attrib V43    1.2212510480994764E-4
#>     Attrib V44    0.06139761636107684
#>     Attrib V45    -0.012265693848371955
#>     Attrib V46    -0.11652483158772627
#>     Attrib V47    -0.057694898261927245
#>     Attrib V48    0.03711023341523888
#>     Attrib V49    -0.21541134979469181
#>     Attrib V5    0.02201875834570077
#>     Attrib V50    0.04792456745360851
#>     Attrib V51    0.042319439105549674
#>     Attrib V52    -0.10523009741315258
#>     Attrib V53    -0.17264151210280476
#>     Attrib V54    -0.10434719530350842
#>     Attrib V55    0.1984381783329792
#>     Attrib V56    0.07152274050446676
#>     Attrib V57    0.2741806234828765
#>     Attrib V58    -0.1122759145712684
#>     Attrib V59    -0.020910737584947107
#>     Attrib V6    0.16896286475365496
#>     Attrib V60    0.04276327863767009
#>     Attrib V7    0.16012130708232014
#>     Attrib V8    0.21876817420314618
#>     Attrib V9    -0.0681740136557709
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.1292226258779568
#>     Attrib V1    0.15387753969105714
#>     Attrib V10    -0.0411536785404707
#>     Attrib V11    0.059338274106926735
#>     Attrib V12    0.0437448338017654
#>     Attrib V13    0.0500138653861947
#>     Attrib V14    0.002595855680267353
#>     Attrib V15    0.007473364856315251
#>     Attrib V16    -0.003955039980330176
#>     Attrib V17    0.038402302226261904
#>     Attrib V18    0.21629457941935526
#>     Attrib V19    0.07961040869173416
#>     Attrib V2    0.1158494615268175
#>     Attrib V20    0.09623005485029545
#>     Attrib V21    0.031234186917992353
#>     Attrib V22    -0.01239990337950358
#>     Attrib V23    0.03839071748244636
#>     Attrib V24    -0.024715313595228886
#>     Attrib V25    -0.03462980502228493
#>     Attrib V26    -0.09132541245059235
#>     Attrib V27    -0.15588809697000966
#>     Attrib V28    -0.07347056017813734
#>     Attrib V29    0.006852159217110813
#>     Attrib V3    0.16569873592229917
#>     Attrib V30    -0.10463649767336562
#>     Attrib V31    -0.1768771532726756
#>     Attrib V32    0.014929977385167917
#>     Attrib V33    0.03145063817614076
#>     Attrib V34    -0.02422601716342675
#>     Attrib V35    0.015397387657986868
#>     Attrib V36    -0.05786846532732752
#>     Attrib V37    -0.1180430217465844
#>     Attrib V38    0.021207130532798633
#>     Attrib V39    0.08199019661969634
#>     Attrib V4    0.06125699203038796
#>     Attrib V40    -0.0681066904779012
#>     Attrib V41    -0.10027424393662376
#>     Attrib V42    -0.026257385280202675
#>     Attrib V43    0.05079746101143846
#>     Attrib V44    0.060063443995114645
#>     Attrib V45    -0.019888420428385727
#>     Attrib V46    0.039575060487236656
#>     Attrib V47    0.07919919521656092
#>     Attrib V48    0.028168041887733142
#>     Attrib V49    0.1211972771547095
#>     Attrib V5    0.06904933438514967
#>     Attrib V50    -0.03097493755602221
#>     Attrib V51    0.08347508749130068
#>     Attrib V52    0.08137964224031928
#>     Attrib V53    0.21962186119426003
#>     Attrib V54    0.061031678809282355
#>     Attrib V55    0.0012818650747274708
#>     Attrib V56    0.18140610257072415
#>     Attrib V57    -0.029053513112724524
#>     Attrib V58    0.1938283848947469
#>     Attrib V59    0.1164701109685971
#>     Attrib V6    -0.07163488617522075
#>     Attrib V60    0.0736914694096765
#>     Attrib V7    -0.06084556649331731
#>     Attrib V8    -0.05545270979951246
#>     Attrib V9    0.041043570034927375
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.16064839895642882
#>     Attrib V1    0.6742653922276042
#>     Attrib V10    -0.41322129850775036
#>     Attrib V11    0.2419230910040398
#>     Attrib V12    0.3708894597703861
#>     Attrib V13    0.22399320263836303
#>     Attrib V14    -0.059677451217630496
#>     Attrib V15    -0.021909268361642097
#>     Attrib V16    -0.39541048932358647
#>     Attrib V17    -0.0018671628512698206
#>     Attrib V18    0.7671670356113462
#>     Attrib V19    0.7085681682771954
#>     Attrib V2    0.37890880104167735
#>     Attrib V20    0.5296383896901684
#>     Attrib V21    0.22918860123003712
#>     Attrib V22    0.5350046763682931
#>     Attrib V23    0.6928430521108333
#>     Attrib V24    0.30100246449095747
#>     Attrib V25    -0.10506659814250496
#>     Attrib V26    -0.39407486802034564
#>     Attrib V27    -0.7046384198777026
#>     Attrib V28    -0.23203512142709262
#>     Attrib V29    0.3640668436855176
#>     Attrib V3    0.3199863732521498
#>     Attrib V30    -0.14615675455801935
#>     Attrib V31    -0.7131650873990655
#>     Attrib V32    0.15412496230449232
#>     Attrib V33    0.3310077504406666
#>     Attrib V34    -0.25622460552664467
#>     Attrib V35    -0.07576718967807376
#>     Attrib V36    -0.8961342493924668
#>     Attrib V37    -1.0603034847136275
#>     Attrib V38    0.038240527146287666
#>     Attrib V39    0.09436497040038909
#>     Attrib V4    0.1991852845959338
#>     Attrib V40    -0.05996850664038252
#>     Attrib V41    0.13510674643219023
#>     Attrib V42    0.24399912126955037
#>     Attrib V43    0.4707112230544867
#>     Attrib V44    -0.04649444925584343
#>     Attrib V45    0.012690038740944194
#>     Attrib V46    0.324934716795569
#>     Attrib V47    0.21500570536624586
#>     Attrib V48    0.0365198125399944
#>     Attrib V49    0.7498142765746926
#>     Attrib V5    0.08329576807289607
#>     Attrib V50    0.050996035710374754
#>     Attrib V51    -0.06796474925305936
#>     Attrib V52    0.3998288752415044
#>     Attrib V53    0.8591935418346056
#>     Attrib V54    0.34173493018826256
#>     Attrib V55    -0.6858760167575588
#>     Attrib V56    0.6409983329343497
#>     Attrib V57    -0.2699454797469604
#>     Attrib V58    0.8871678440407155
#>     Attrib V59    0.5128243542851865
#>     Attrib V6    -0.39128934506935403
#>     Attrib V60    0.006686608617611358
#>     Attrib V7    -0.6654901871956748
#>     Attrib V8    -0.5861606119408536
#>     Attrib V9    0.053584139585691797
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.0669964718701598
#>     Attrib V1    0.6758924996818483
#>     Attrib V10    -0.4607792368960688
#>     Attrib V11    0.08153045566913261
#>     Attrib V12    0.2065924340099951
#>     Attrib V13    0.14355539126454467
#>     Attrib V14    0.025809774367980404
#>     Attrib V15    0.028435172626098747
#>     Attrib V16    -0.2606653870104656
#>     Attrib V17    0.0821166948760153
#>     Attrib V18    0.7415688700614587
#>     Attrib V19    0.642377874878061
#>     Attrib V2    0.3448267814321198
#>     Attrib V20    0.5950197544683601
#>     Attrib V21    0.3752298831541139
#>     Attrib V22    0.5233420467178891
#>     Attrib V23    0.6371319404024571
#>     Attrib V24    0.2807184542795259
#>     Attrib V25    -0.1456969790751503
#>     Attrib V26    -0.46941700079216614
#>     Attrib V27    -0.7372184607550276
#>     Attrib V28    -0.38011712522287233
#>     Attrib V29    0.25448821920504394
#>     Attrib V3    0.3411928734894949
#>     Attrib V30    -0.14559358019998686
#>     Attrib V31    -0.620193173590519
#>     Attrib V32    0.0746944752396878
#>     Attrib V33    0.2737791910126215
#>     Attrib V34    -0.2512639937980397
#>     Attrib V35    -0.10661117945125778
#>     Attrib V36    -0.7118378892636313
#>     Attrib V37    -0.8556148787427319
#>     Attrib V38    0.06479929942706118
#>     Attrib V39    0.03727504984189068
#>     Attrib V4    0.14896976686426364
#>     Attrib V40    -0.13490686613749633
#>     Attrib V41    -0.011279258294463032
#>     Attrib V42    0.14038217899340058
#>     Attrib V43    0.5163471954155975
#>     Attrib V44    0.12304065696228897
#>     Attrib V45    -0.014444770291583123
#>     Attrib V46    0.2396042371066287
#>     Attrib V47    0.18536092062917583
#>     Attrib V48    0.061480128820798535
#>     Attrib V49    0.5573481949240916
#>     Attrib V5    0.09277133073190946
#>     Attrib V50    0.13942696417478204
#>     Attrib V51    0.016894689103535015
#>     Attrib V52    0.32714492434187925
#>     Attrib V53    0.837717325917189
#>     Attrib V54    0.412034933981833
#>     Attrib V55    -0.5294253102265537
#>     Attrib V56    0.7277265526951386
#>     Attrib V57    -0.1438710611358375
#>     Attrib V58    0.8090854753624929
#>     Attrib V59    0.5420912761653066
#>     Attrib V6    -0.3163449175967901
#>     Attrib V60    -0.017517556684249293
#>     Attrib V7    -0.5473556415303505
#>     Attrib V8    -0.5300500728262424
#>     Attrib V9    -0.03017289213782248
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.42613068964101597
#>     Attrib V1    -0.3846185531903237
#>     Attrib V10    -0.11018845659984805
#>     Attrib V11    -0.7514820603932839
#>     Attrib V12    -0.6733229224840187
#>     Attrib V13    -0.48217260695496017
#>     Attrib V14    0.31980755746860895
#>     Attrib V15    0.30110732245986027
#>     Attrib V16    0.6034140904646997
#>     Attrib V17    0.3280647179225868
#>     Attrib V18    -0.36664460066136706
#>     Attrib V19    -0.44406260371794937
#>     Attrib V2    -0.32968090987789955
#>     Attrib V20    -0.09145943457708137
#>     Attrib V21    0.2372689508338047
#>     Attrib V22    -0.09018296089089202
#>     Attrib V23    -0.6314238474151354
#>     Attrib V24    -0.3812947041693557
#>     Attrib V25    0.06182016924306576
#>     Attrib V26    -0.10265532114492404
#>     Attrib V27    0.06975908201576263
#>     Attrib V28    -0.4350954448946289
#>     Attrib V29    -0.8638275053531339
#>     Attrib V3    -0.09635206182634704
#>     Attrib V30    -0.14699546813635753
#>     Attrib V31    0.49140838516746005
#>     Attrib V32    -0.3632316359996393
#>     Attrib V33    -0.08010702481199602
#>     Attrib V34    0.057397319356691366
#>     Attrib V35    -0.3361289627877671
#>     Attrib V36    0.6694654761838106
#>     Attrib V37    0.5971491171690684
#>     Attrib V38    -0.11437548357680181
#>     Attrib V39    -0.12321065960764692
#>     Attrib V4    -0.025572158363440643
#>     Attrib V40    0.06474626090934237
#>     Attrib V41    -0.5111417857576352
#>     Attrib V42    -0.10577356515145885
#>     Attrib V43    -0.2592308996611455
#>     Attrib V44    0.06580731249934099
#>     Attrib V45    -0.26969048261256146
#>     Attrib V46    -0.5086826686138464
#>     Attrib V47    -0.18588623776317467
#>     Attrib V48    0.011192674090299152
#>     Attrib V49    -0.8547934912741979
#>     Attrib V5    -0.18647514040083185
#>     Attrib V50    0.21220108055272516
#>     Attrib V51    0.009022288044868482
#>     Attrib V52    -0.5042480381714904
#>     Attrib V53    -0.5566769206336326
#>     Attrib V54    -0.13355330225964
#>     Attrib V55    0.6636407372681181
#>     Attrib V56    0.1669270524993842
#>     Attrib V57    0.7504122509736358
#>     Attrib V58    -0.6195635002456457
#>     Attrib V59    -0.0070431825125256
#>     Attrib V6    0.2833876070019344
#>     Attrib V60    0.14313561073473116
#>     Attrib V7    0.7293578940371738
#>     Attrib V8    0.5901575237132318
#>     Attrib V9    -0.5117522455010551
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.046616168430661686
#>     Attrib V1    0.2812113822055565
#>     Attrib V10    -0.14880566046341392
#>     Attrib V11    0.0496027759122338
#>     Attrib V12    0.06985870838717394
#>     Attrib V13    0.0507925491175195
#>     Attrib V14    0.02013891621569411
#>     Attrib V15    0.01652874455282671
#>     Attrib V16    0.024264641990527965
#>     Attrib V17    0.1112929248363961
#>     Attrib V18    0.2805072653873286
#>     Attrib V19    0.19992864838518992
#>     Attrib V2    0.16895144974354828
#>     Attrib V20    0.2069721308207484
#>     Attrib V21    0.05147468865996108
#>     Attrib V22    0.037371999639843945
#>     Attrib V23    0.07525755601884972
#>     Attrib V24    0.0711921944586845
#>     Attrib V25    -0.08294533965580353
#>     Attrib V26    -0.2266628184960756
#>     Attrib V27    -0.34780203468462784
#>     Attrib V28    -0.2176324767715929
#>     Attrib V29    0.043492922996816424
#>     Attrib V3    0.1357994231284845
#>     Attrib V30    -0.12513131592592197
#>     Attrib V31    -0.2078898765188507
#>     Attrib V32    0.018964831336958577
#>     Attrib V33    0.030253293944906313
#>     Attrib V34    -0.0891237634669868
#>     Attrib V35    0.03598663122968687
#>     Attrib V36    -0.21758234231137935
#>     Attrib V37    -0.22337151276263376
#>     Attrib V38    4.542045566131647E-4
#>     Attrib V39    -0.0041505112982680465
#>     Attrib V4    0.10241000841688248
#>     Attrib V40    -0.08401922491059051
#>     Attrib V41    -0.15319477066002873
#>     Attrib V42    -0.04272081109525065
#>     Attrib V43    0.1619718140241486
#>     Attrib V44    0.008762941720966078
#>     Attrib V45    -0.052990515189229384
#>     Attrib V46    0.10935720562809116
#>     Attrib V47    0.02177988334266159
#>     Attrib V48    0.03251346713669921
#>     Attrib V49    0.1503308419292612
#>     Attrib V5    0.08232331973017165
#>     Attrib V50    0.008428845031915794
#>     Attrib V51    -0.011676421813580811
#>     Attrib V52    0.11791319710376258
#>     Attrib V53    0.33668720284913617
#>     Attrib V54    0.1742520505137006
#>     Attrib V55    -0.09257810618140548
#>     Attrib V56    0.3040434678016489
#>     Attrib V57    -0.0018611044581679477
#>     Attrib V58    0.33375298702781586
#>     Attrib V59    0.15514383854827116
#>     Attrib V6    -0.09754342440426254
#>     Attrib V60    0.07729190021741593
#>     Attrib V7    -0.1917162376896738
#>     Attrib V8    -0.24625813430236135
#>     Attrib V9    -3.5439200229145243E-4
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.035233823007992784
#>     Attrib V1    0.653747194411239
#>     Attrib V10    -0.5834777741305186
#>     Attrib V11    -0.022038563093631836
#>     Attrib V12    0.09584593362155608
#>     Attrib V13    0.09043787881022643
#>     Attrib V14    0.03594935133015719
#>     Attrib V15    0.07672383711008313
#>     Attrib V16    -0.20021406879932088
#>     Attrib V17    0.15908383545239357
#>     Attrib V18    0.6968536121751898
#>     Attrib V19    0.601612174859592
#>     Attrib V2    0.31650739705150177
#>     Attrib V20    0.6209175951089223
#>     Attrib V21    0.38388071154371456
#>     Attrib V22    0.5301596837055707
#>     Attrib V23    0.5890618262196504
#>     Attrib V24    0.20992314452318545
#>     Attrib V25    -0.18827823442566394
#>     Attrib V26    -0.5867549644785318
#>     Attrib V27    -0.9089382610637518
#>     Attrib V28    -0.4807471771942978
#>     Attrib V29    0.12490773389733863
#>     Attrib V3    0.4363450597296853
#>     Attrib V30    -0.1976330338195257
#>     Attrib V31    -0.6062772529900397
#>     Attrib V32    0.05253456039226673
#>     Attrib V33    0.2822168622191068
#>     Attrib V34    -0.2088441522017098
#>     Attrib V35    -0.0736126410304304
#>     Attrib V36    -0.7425454825683261
#>     Attrib V37    -0.8310623658135543
#>     Attrib V38    -0.012506274526116624
#>     Attrib V39    0.014716142070437028
#>     Attrib V4    0.1926234218927117
#>     Attrib V40    -0.19218063869979712
#>     Attrib V41    -0.12403959270987971
#>     Attrib V42    0.13400520027425997
#>     Attrib V43    0.4883798022631179
#>     Attrib V44    0.08463600033165433
#>     Attrib V45    0.007658477176867966
#>     Attrib V46    0.2689451250610321
#>     Attrib V47    0.2812023260368087
#>     Attrib V48    0.016306496333338544
#>     Attrib V49    0.5018146703530028
#>     Attrib V5    0.04114000099164047
#>     Attrib V50    0.18032660181312943
#>     Attrib V51    -0.07355800756210691
#>     Attrib V52    0.30667799431661497
#>     Attrib V53    0.925818634172615
#>     Attrib V54    0.42951735985407574
#>     Attrib V55    -0.5127821586885304
#>     Attrib V56    0.850434449083156
#>     Attrib V57    -0.0723540166148346
#>     Attrib V58    0.7868565004981186
#>     Attrib V59    0.5667303610914466
#>     Attrib V6    -0.2636455942327658
#>     Attrib V60    -0.02135021277617954
#>     Attrib V7    -0.5081990695485877
#>     Attrib V8    -0.4470321314634691
#>     Attrib V9    -0.09973078887249129
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.38040284687977394
#>     Attrib V1    -0.38450394303730046
#>     Attrib V10    -0.1085240411913984
#>     Attrib V11    -0.6459560652193427
#>     Attrib V12    -0.5703239925912096
#>     Attrib V13    -0.42466365679315343
#>     Attrib V14    0.2699229252513625
#>     Attrib V15    0.27252799492557256
#>     Attrib V16    0.48139061829106383
#>     Attrib V17    0.3228133059892655
#>     Attrib V18    -0.31280800035862383
#>     Attrib V19    -0.35770027807112387
#>     Attrib V2    -0.3031876068305747
#>     Attrib V20    -0.10124327574256
#>     Attrib V21    0.1530209074982372
#>     Attrib V22    -0.06016279257046804
#>     Attrib V23    -0.4516656177740955
#>     Attrib V24    -0.3261397769401432
#>     Attrib V25    0.04111893602723114
#>     Attrib V26    -0.0849495706205879
#>     Attrib V27    0.05542476015612432
#>     Attrib V28    -0.3252573394791567
#>     Attrib V29    -0.7500395191938979
#>     Attrib V3    -0.08307332037594826
#>     Attrib V30    -0.15814065075608255
#>     Attrib V31    0.36157743150859734
#>     Attrib V32    -0.24798769145418992
#>     Attrib V33    -0.11969390238034006
#>     Attrib V34    0.027283662968016435
#>     Attrib V35    -0.2968774148925186
#>     Attrib V36    0.58431108703722
#>     Attrib V37    0.4287012305584681
#>     Attrib V38    -0.10299760447233224
#>     Attrib V39    -0.13696652630258277
#>     Attrib V4    -0.02060231437736185
#>     Attrib V40    0.06440873112852777
#>     Attrib V41    -0.3893621225070001
#>     Attrib V42    -0.06672082779125521
#>     Attrib V43    -0.1862131499374582
#>     Attrib V44    0.024914563150482207
#>     Attrib V45    -0.2559711770735573
#>     Attrib V46    -0.4076652688266929
#>     Attrib V47    -0.10718445025728589
#>     Attrib V48    -0.006322464515555507
#>     Attrib V49    -0.7228067030648573
#>     Attrib V5    -0.18567553392697167
#>     Attrib V50    0.2060567896635647
#>     Attrib V51    0.02300674374263735
#>     Attrib V52    -0.3749893174767451
#>     Attrib V53    -0.5231296389894106
#>     Attrib V54    -0.15042199859015795
#>     Attrib V55    0.5719949756270943
#>     Attrib V56    0.18462580496307335
#>     Attrib V57    0.6393845446256524
#>     Attrib V58    -0.48970614358801423
#>     Attrib V59    -0.018247315379671912
#>     Attrib V6    0.30434958626144054
#>     Attrib V60    0.07148692762233115
#>     Attrib V7    0.5653970233090637
#>     Attrib V8    0.5241586538468009
#>     Attrib V9    -0.4103348813000185
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.32686077266964547
#>     Attrib V1    0.36663396236900914
#>     Attrib V10    0.9215920622179749
#>     Attrib V11    1.5582188301973343
#>     Attrib V12    1.2006396483746418
#>     Attrib V13    0.5758931406679827
#>     Attrib V14    -0.6865988730584696
#>     Attrib V15    -0.7070385846003986
#>     Attrib V16    -0.8550508469575642
#>     Attrib V17    -0.5569210310043083
#>     Attrib V18    0.2905894252362331
#>     Attrib V19    0.3462760034613718
#>     Attrib V2    0.5250321432818021
#>     Attrib V20    -0.4474328184227735
#>     Attrib V21    -0.5606740717318309
#>     Attrib V22    0.1231469172253045
#>     Attrib V23    1.1272266050460147
#>     Attrib V24    0.5954894070953485
#>     Attrib V25    0.08829968841616441
#>     Attrib V26    0.9595156717072496
#>     Attrib V27    0.9561918458826593
#>     Attrib V28    1.3471046170827714
#>     Attrib V29    1.273703681390787
#>     Attrib V3    0.0389935303089769
#>     Attrib V30    0.05890364421471971
#>     Attrib V31    -0.7318684120637914
#>     Attrib V32    0.5014582669824785
#>     Attrib V33    -0.30830283859842944
#>     Attrib V34    -0.21944333284933018
#>     Attrib V35    0.4731609852415633
#>     Attrib V36    -0.8138037268145041
#>     Attrib V37    -0.5490519305128344
#>     Attrib V38    -0.18181641400473328
#>     Attrib V39    0.24883385400570668
#>     Attrib V4    0.34894569689853966
#>     Attrib V40    0.08635727296175195
#>     Attrib V41    1.3752695594141577
#>     Attrib V42    0.03800678475907769
#>     Attrib V43    -0.02379698116056376
#>     Attrib V44    -0.12946002116932356
#>     Attrib V45    0.4761549301700645
#>     Attrib V46    0.7251133910273629
#>     Attrib V47    0.25696022283880093
#>     Attrib V48    0.14224690319679367
#>     Attrib V49    1.3616473703661476
#>     Attrib V5    0.5928596636197682
#>     Attrib V50    -0.1238144629262973
#>     Attrib V51    0.48612314909873383
#>     Attrib V52    1.0381004286381101
#>     Attrib V53    0.25623630864679503
#>     Attrib V54    0.0516664865149598
#>     Attrib V55    -0.34703457467295795
#>     Attrib V56    -0.7981277483648126
#>     Attrib V57    -0.9976479150988372
#>     Attrib V58    0.7236268985405517
#>     Attrib V59    -0.11790376778159968
#>     Attrib V6    -0.10480719177948333
#>     Attrib V60    0.2861969694764572
#>     Attrib V7    -0.7637446588671531
#>     Attrib V8    -0.6852944236066913
#>     Attrib V9    1.2812337972011676
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.21882110754498102
#>     Attrib V1    -0.08008338075961971
#>     Attrib V10    0.00167225515712437
#>     Attrib V11    -0.1819359018158678
#>     Attrib V12    -0.129943229681546
#>     Attrib V13    -0.12670941379180853
#>     Attrib V14    0.09459355957673025
#>     Attrib V15    0.05010147213666838
#>     Attrib V16    0.1258137662743158
#>     Attrib V17    0.11446777005992675
#>     Attrib V18    -0.08167929421027721
#>     Attrib V19    -0.04990678130931623
#>     Attrib V2    -0.031204273397598924
#>     Attrib V20    -0.08015807500638855
#>     Attrib V21    0.0032741186724905657
#>     Attrib V22    -0.023782202062235563
#>     Attrib V23    -0.09465276430467615
#>     Attrib V24    -0.06947607866818155
#>     Attrib V25    0.009357845609909661
#>     Attrib V26    -0.058664180679163326
#>     Attrib V27    0.0329350391982071
#>     Attrib V28    -0.064263148009527
#>     Attrib V29    -0.19183186170033287
#>     Attrib V3    -0.010004470332142737
#>     Attrib V30    -0.09676286122522315
#>     Attrib V31    0.04400956816137575
#>     Attrib V32    -0.07177799395519403
#>     Attrib V33    0.017410559320388225
#>     Attrib V34    0.010147304073588513
#>     Attrib V35    0.021145112400932177
#>     Attrib V36    0.20807345390970633
#>     Attrib V37    0.21600195295827196
#>     Attrib V38    -0.03369823834254454
#>     Attrib V39    0.008292593093692258
#>     Attrib V4    0.06095345427576926
#>     Attrib V40    0.061148583715477156
#>     Attrib V41    -0.00980249243767273
#>     Attrib V42    0.05655260884518677
#>     Attrib V43    -0.030374217346516498
#>     Attrib V44    0.040366798325939715
#>     Attrib V45    -0.04923940938359967
#>     Attrib V46    -0.10847401572854992
#>     Attrib V47    -0.038109998503219875
#>     Attrib V48    0.04740866714401858
#>     Attrib V49    -0.16246311293914636
#>     Attrib V5    -0.021940606962191016
#>     Attrib V50    0.05336627033514088
#>     Attrib V51    0.01655441470255549
#>     Attrib V52    -0.08184182447660496
#>     Attrib V53    -0.12492578788553765
#>     Attrib V54    -0.07576837362568678
#>     Attrib V55    0.15323790307836277
#>     Attrib V56    0.08512707902637023
#>     Attrib V57    0.23793363120506217
#>     Attrib V58    -0.040921104016672004
#>     Attrib V59    0.04625791426191792
#>     Attrib V6    0.16308821276093283
#>     Attrib V60    0.09425698919312189
#>     Attrib V7    0.13155752319881506
#>     Attrib V8    0.17332225492359724
#>     Attrib V9    -0.08792555454764747
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.10486479053444962
#>     Attrib V1    0.6197199717868018
#>     Attrib V10    -0.36825790692623733
#>     Attrib V11    0.09813164635504568
#>     Attrib V12    0.14123223064616633
#>     Attrib V13    0.1402451666042205
#>     Attrib V14    -0.05671044262630187
#>     Attrib V15    0.03153121758866425
#>     Attrib V16    -0.19029086968874243
#>     Attrib V17    0.051686629749867624
#>     Attrib V18    0.6677905769065412
#>     Attrib V19    0.5253121365904257
#>     Attrib V2    0.3175492761739595
#>     Attrib V20    0.4611659112882953
#>     Attrib V21    0.2968714374947503
#>     Attrib V22    0.40479292692698815
#>     Attrib V23    0.474654986282536
#>     Attrib V24    0.22447601734852796
#>     Attrib V25    -0.1487569390609408
#>     Attrib V26    -0.3761816533029802
#>     Attrib V27    -0.7108991801988362
#>     Attrib V28    -0.35177645874162355
#>     Attrib V29    0.2066772726511602
#>     Attrib V3    0.2817543013011941
#>     Attrib V30    -0.148774480552662
#>     Attrib V31    -0.5656136645020052
#>     Attrib V32    0.07109731351550568
#>     Attrib V33    0.2118961992676077
#>     Attrib V34    -0.15287917648454802
#>     Attrib V35    -0.033437523889638825
#>     Attrib V36    -0.6084650409393361
#>     Attrib V37    -0.7047853314338995
#>     Attrib V38    0.06799749415996609
#>     Attrib V39    0.07515202550264653
#>     Attrib V4    0.14247518579253787
#>     Attrib V40    -0.20006792900683182
#>     Attrib V41    -0.0682378639161944
#>     Attrib V42    0.09787438569935096
#>     Attrib V43    0.34394613745592634
#>     Attrib V44    0.08954983757981837
#>     Attrib V45    0.058904749391038076
#>     Attrib V46    0.2091882058862392
#>     Attrib V47    0.14095793309298854
#>     Attrib V48    0.040121925984125444
#>     Attrib V49    0.43050611489971924
#>     Attrib V5    0.04920196842575453
#>     Attrib V50    0.1459080965197616
#>     Attrib V51    -0.029350868046229196
#>     Attrib V52    0.27092363808172903
#>     Attrib V53    0.7496172867308099
#>     Attrib V54    0.3790856501973985
#>     Attrib V55    -0.4227693965805195
#>     Attrib V56    0.5444116428327748
#>     Attrib V57    -0.12211595715370997
#>     Attrib V58    0.6644422650679275
#>     Attrib V59    0.43164346394486286
#>     Attrib V6    -0.2589214518305479
#>     Attrib V60    0.038246278277248816
#>     Attrib V7    -0.5119525859363626
#>     Attrib V8    -0.39928400084998106
#>     Attrib V9    0.012374602536594117
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.3183607802013583
#>     Attrib V1    -0.4091945554635112
#>     Attrib V10    -1.143226235761481
#>     Attrib V11    -1.7683059885412709
#>     Attrib V12    -1.3697593829607444
#>     Attrib V13    -0.686904619795514
#>     Attrib V14    0.7818209894532316
#>     Attrib V15    0.8289327176702433
#>     Attrib V16    0.9631622746100306
#>     Attrib V17    0.6951688537106557
#>     Attrib V18    -0.18311885573666317
#>     Attrib V19    -0.4297797705295553
#>     Attrib V2    -0.6883303800564131
#>     Attrib V20    0.47874175747925646
#>     Attrib V21    0.530178195689636
#>     Attrib V22    -0.2320024435435938
#>     Attrib V23    -1.3621324263898944
#>     Attrib V24    -0.809891466403537
#>     Attrib V25    -0.30726887654244645
#>     Attrib V26    -1.2196825372742246
#>     Attrib V27    -1.11725247971915
#>     Attrib V28    -1.5805488390958053
#>     Attrib V29    -1.3903869933379889
#>     Attrib V3    0.021792421190702863
#>     Attrib V30    0.008250883917169265
#>     Attrib V31    0.8435050927130501
#>     Attrib V32    -0.5459445328526011
#>     Attrib V33    0.33671867340021033
#>     Attrib V34    0.2546051749817021
#>     Attrib V35    -0.5270820227643732
#>     Attrib V36    0.9081256972343597
#>     Attrib V37    0.5881802461790377
#>     Attrib V38    0.2656759402443199
#>     Attrib V39    -0.23937491547242745
#>     Attrib V4    -0.3879763150482115
#>     Attrib V40    -0.25161902141085873
#>     Attrib V41    -1.7814331087953936
#>     Attrib V42    -0.009941740647227927
#>     Attrib V43    0.1690997734196034
#>     Attrib V44    0.24217713002801058
#>     Attrib V45    -0.5343970729725678
#>     Attrib V46    -0.8789807525768145
#>     Attrib V47    -0.415336389890015
#>     Attrib V48    -0.22487781134775509
#>     Attrib V49    -1.5986215771935355
#>     Attrib V5    -0.6903587977202365
#>     Attrib V50    0.07328324465796232
#>     Attrib V51    -0.686104325883203
#>     Attrib V52    -1.084915314190885
#>     Attrib V53    -0.29768717877170964
#>     Attrib V54    -0.06599608228690469
#>     Attrib V55    0.3812924259664109
#>     Attrib V56    0.9656783737908894
#>     Attrib V57    1.2300520352430182
#>     Attrib V58    -0.7103396521104584
#>     Attrib V59    0.1583281716466206
#>     Attrib V6    0.08720970193855522
#>     Attrib V60    -0.4207908035069484
#>     Attrib V7    0.7620723728295334
#>     Attrib V8    0.6460145299465634
#>     Attrib V9    -1.5241392357359023
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.006883636907216079
#>     Attrib V1    0.3585930423056046
#>     Attrib V10    -0.311539761076843
#>     Attrib V11    0.09337713518916647
#>     Attrib V12    0.12725152588326136
#>     Attrib V13    0.09305960695560489
#>     Attrib V14    0.03180123222813746
#>     Attrib V15    0.047475632659387965
#>     Attrib V16    -0.11178245401826141
#>     Attrib V17    0.07472163597355065
#>     Attrib V18    0.4369796960520363
#>     Attrib V19    0.33899395308767966
#>     Attrib V2    0.2178300700267775
#>     Attrib V20    0.39323515971145645
#>     Attrib V21    0.21477487785810878
#>     Attrib V22    0.266560482003577
#>     Attrib V23    0.26578800945375575
#>     Attrib V24    0.15023742298406534
#>     Attrib V25    -0.0660749688417006
#>     Attrib V26    -0.3573999633984564
#>     Attrib V27    -0.522917978771089
#>     Attrib V28    -0.23276964718202603
#>     Attrib V29    0.16298790407892785
#>     Attrib V3    0.24972901092591968
#>     Attrib V30    -0.1751340164884785
#>     Attrib V31    -0.39220894036806697
#>     Attrib V32    0.07657523696441511
#>     Attrib V33    0.1591385193216427
#>     Attrib V34    -0.10863723960070473
#>     Attrib V35    0.024663872734275356
#>     Attrib V36    -0.4238072961081914
#>     Attrib V37    -0.4323721948260567
#>     Attrib V38    0.048927444629726265
#>     Attrib V39    0.05815583527555405
#>     Attrib V4    0.08217321076295055
#>     Attrib V40    -0.1296971958598752
#>     Attrib V41    -0.07741858786575562
#>     Attrib V42    0.0012365161927326254
#>     Attrib V43    0.2815307146318529
#>     Attrib V44    -0.012834798222658813
#>     Attrib V45    0.051425838864063295
#>     Attrib V46    0.17927337691802311
#>     Attrib V47    0.1522073457740145
#>     Attrib V48    0.010003175623319196
#>     Attrib V49    0.28515264378806143
#>     Attrib V5    0.026919460147921428
#>     Attrib V50    0.0923412213371239
#>     Attrib V51    0.010836300208801105
#>     Attrib V52    0.2227153413652484
#>     Attrib V53    0.534279269051329
#>     Attrib V54    0.22648501424896647
#>     Attrib V55    -0.2193898492912107
#>     Attrib V56    0.4250455352243387
#>     Attrib V57    -0.06744052744737553
#>     Attrib V58    0.4276437999966909
#>     Attrib V59    0.23381789095404132
#>     Attrib V6    -0.18730971754574416
#>     Attrib V60    0.04384923576612033
#>     Attrib V7    -0.35364374619491296
#>     Attrib V8    -0.2943778003419165
#>     Attrib V9    -0.021036180892738118
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.018786629627329215
#>     Attrib V1    0.2920516431948459
#>     Attrib V10    -0.11344885164119724
#>     Attrib V11    0.08467493352113974
#>     Attrib V12    0.14090137556186966
#>     Attrib V13    0.13182851683102279
#>     Attrib V14    -0.0283461738260609
#>     Attrib V15    0.038366584297041414
#>     Attrib V16    -0.06448431928377772
#>     Attrib V17    0.1056152075927356
#>     Attrib V18    0.2829794372062389
#>     Attrib V19    0.20486704937873249
#>     Attrib V2    0.1818556366934443
#>     Attrib V20    0.1619671013414743
#>     Attrib V21    0.08099385670451137
#>     Attrib V22    0.0789237522508332
#>     Attrib V23    0.16405953735187653
#>     Attrib V24    0.04709531116898909
#>     Attrib V25    -0.027740372944098476
#>     Attrib V26    -0.12976015381321115
#>     Attrib V27    -0.30179703767367433
#>     Attrib V28    -0.10313900205627691
#>     Attrib V29    0.04644591804683295
#>     Attrib V3    0.13538058571627604
#>     Attrib V30    -0.06963539301095976
#>     Attrib V31    -0.22504399800465466
#>     Attrib V32    0.01926477413094675
#>     Attrib V33    0.03629973450106299
#>     Attrib V34    -0.11277570834805034
#>     Attrib V35    0.054628247769397086
#>     Attrib V36    -0.27844670450297543
#>     Attrib V37    -0.22562765295933346
#>     Attrib V38    0.007622002676590209
#>     Attrib V39    0.09053395693604133
#>     Attrib V4    0.11808666632758733
#>     Attrib V40    -0.0804023798733421
#>     Attrib V41    -0.0693994298080319
#>     Attrib V42    0.02143380616674661
#>     Attrib V43    0.10728261582497063
#>     Attrib V44    -0.033076109797919744
#>     Attrib V45    0.006691277707649308
#>     Attrib V46    0.09245362395701548
#>     Attrib V47    0.0251412240099956
#>     Attrib V48    0.01194913315656615
#>     Attrib V49    0.14538138129592473
#>     Attrib V5    0.021595128397705186
#>     Attrib V50    -0.027276879350885352
#>     Attrib V51    -0.017105573875852802
#>     Attrib V52    0.13325190016925068
#>     Attrib V53    0.3755093841233478
#>     Attrib V54    0.1517921524558251
#>     Attrib V55    -0.16718669435765512
#>     Attrib V56    0.2868286006488801
#>     Attrib V57    -0.08363777164398947
#>     Attrib V58    0.3289455204104275
#>     Attrib V59    0.19117801783438945
#>     Attrib V6    -0.1282163848192998
#>     Attrib V60    0.05875497979265458
#>     Attrib V7    -0.2790770998608541
#>     Attrib V8    -0.24353528464742322
#>     Attrib V9    -0.012594146068874684
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.05026983087244104
#>     Attrib V1    0.40312493339828903
#>     Attrib V10    -0.3259298626781832
#>     Attrib V11    0.008862686003465374
#>     Attrib V12    4.3421104741356726E-4
#>     Attrib V13    0.08509349508554145
#>     Attrib V14    0.050423687019291334
#>     Attrib V15    0.1102148576546385
#>     Attrib V16    -0.032122302357436114
#>     Attrib V17    0.148814177683055
#>     Attrib V18    0.4364614654647727
#>     Attrib V19    0.33987470354242544
#>     Attrib V2    0.2845857968624931
#>     Attrib V20    0.40223135829513473
#>     Attrib V21    0.15540131523767803
#>     Attrib V22    0.230640186836278
#>     Attrib V23    0.2660545339019836
#>     Attrib V24    0.13022072790161862
#>     Attrib V25    -0.1444289267900522
#>     Attrib V26    -0.3688931373604275
#>     Attrib V27    -0.5965396095971233
#>     Attrib V28    -0.33909362496443796
#>     Attrib V29    0.014562675493102278
#>     Attrib V3    0.21049901424464132
#>     Attrib V30    -0.16426280991064482
#>     Attrib V31    -0.3320896626081188
#>     Attrib V32    0.010103049762394773
#>     Attrib V33    0.1617627967662218
#>     Attrib V34    -0.08016942359951412
#>     Attrib V35    0.060795636208134426
#>     Attrib V36    -0.3571497266271886
#>     Attrib V37    -0.37729445707285236
#>     Attrib V38    0.09501428764450111
#>     Attrib V39    0.007240463551866809
#>     Attrib V4    0.13772345233459182
#>     Attrib V40    -0.1425549502022851
#>     Attrib V41    -0.19289318418181198
#>     Attrib V42    -0.009325441576644337
#>     Attrib V43    0.2506956934210922
#>     Attrib V44    0.08633328916753687
#>     Attrib V45    -0.022890479983286575
#>     Attrib V46    0.1354473875608444
#>     Attrib V47    0.10871868376428988
#>     Attrib V48    0.01435778562768582
#>     Attrib V49    0.23496168395609282
#>     Attrib V5    0.03293358362432179
#>     Attrib V50    0.056133285361643
#>     Attrib V51    -0.046683482308165374
#>     Attrib V52    0.14690802882357212
#>     Attrib V53    0.5777517179675001
#>     Attrib V54    0.31664633057216646
#>     Attrib V55    -0.17847560194829246
#>     Attrib V56    0.42522093846269243
#>     Attrib V57    -0.010654886018237327
#>     Attrib V58    0.40187840983810214
#>     Attrib V59    0.2760726379489505
#>     Attrib V6    -0.17690538620732055
#>     Attrib V60    0.05651500760626166
#>     Attrib V7    -0.27502402014193406
#>     Attrib V8    -0.25293237736348534
#>     Attrib V9    -0.034775353809770496
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.14961376169403184
#>     Attrib V1    0.08713933694454706
#>     Attrib V10    -0.03463516734356987
#>     Attrib V11    0.015621316333649028
#>     Attrib V12    0.0018648806201946523
#>     Attrib V13    -0.036895278720916476
#>     Attrib V14    0.0717366622285947
#>     Attrib V15    0.06620776397873554
#>     Attrib V16    0.07527349323935495
#>     Attrib V17    0.049658441614148875
#>     Attrib V18    0.11943382625555324
#>     Attrib V19    -0.030392039933537333
#>     Attrib V2    0.039016992444026656
#>     Attrib V20    -0.008440116329309381
#>     Attrib V21    -0.015457042801071373
#>     Attrib V22    -0.05087836732423792
#>     Attrib V23    0.005156209029115033
#>     Attrib V24    -0.02313089053360847
#>     Attrib V25    -0.06835390667128621
#>     Attrib V26    -0.09005730023616622
#>     Attrib V27    -0.09105171511690908
#>     Attrib V28    -0.03384468687808642
#>     Attrib V29    -0.05780303077892927
#>     Attrib V3    0.12382534865659887
#>     Attrib V30    -0.03274526277566569
#>     Attrib V31    -0.06712510635542596
#>     Attrib V32    -0.0064175285593755195
#>     Attrib V33    0.024481703325248547
#>     Attrib V34    -0.0024090217090831354
#>     Attrib V35    0.051624250008833264
#>     Attrib V36    0.08255529018364721
#>     Attrib V37    0.057802209900337555
#>     Attrib V38    9.48856574120581E-4
#>     Attrib V39    0.06309902967900935
#>     Attrib V4    0.06622995108081636
#>     Attrib V40    0.0021505926920925905
#>     Attrib V41    -0.04614131222722285
#>     Attrib V42    0.01765356590599206
#>     Attrib V43    -0.022284310226354208
#>     Attrib V44    0.06379757843044653
#>     Attrib V45    0.043714583758187105
#>     Attrib V46    0.02102636423718985
#>     Attrib V47    0.023951883940328187
#>     Attrib V48    -0.0018124731970245148
#>     Attrib V49    0.04754567594643171
#>     Attrib V5    0.08478577680809815
#>     Attrib V50    -0.008281295078767105
#>     Attrib V51    0.06689349648506082
#>     Attrib V52    0.08276563461897506
#>     Attrib V53    0.09020178468194985
#>     Attrib V54    -0.01896365489148875
#>     Attrib V55    0.0436594690867422
#>     Attrib V56    0.11489802622563361
#>     Attrib V57    0.1088072105664802
#>     Attrib V58    0.1668532313966607
#>     Attrib V59    0.05509281376113096
#>     Attrib V6    0.08874751899618565
#>     Attrib V60    0.031103084059810455
#>     Attrib V7    0.0382262230393603
#>     Attrib V8    0.07344605390184165
#>     Attrib V9    0.056302041220175125
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
#>  0.2898551 
```
